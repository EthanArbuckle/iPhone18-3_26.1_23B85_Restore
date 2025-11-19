uint64_t fastParse64(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 96) = 0;
  v3 = *v2;
  if ((v3 - 48) >= 0xA)
  {
    v4 = __locale_key;
    ++v2;
    while (1)
    {
      if (v3 != 32)
      {
        if (v3 == 43)
        {
          goto LABEL_16;
        }

        if (v3 == 45)
        {
          *(a1 + 96) = 1;
          goto LABEL_16;
        }

        if ((v3 & 0x80) != 0)
        {
          v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
          if (!v6)
          {
            v6 = &__global_locale;
          }

          runetype = (*(v6[166] + 120) + 60);
        }

        else
        {
          runetype = _DefaultRuneLocale.__runetype;
        }

        if ((runetype[v3] & 0x4000) == 0)
        {
          break;
        }
      }

      v7 = *v2++;
      v3 = v7;
      if ((v7 - 48) < 0xA)
      {
        --v2;
        goto LABEL_17;
      }
    }

    --v2;
LABEL_16:
    v3 = *v2;
  }

LABEL_17:
  if (v3 > 77)
  {
    if (v3 == 78)
    {
LABEL_21:
      if ((v2[1] | 0x20) == 0x61 && (v2[2] | 0x20) == 0x6E)
      {
        *path = 0;
        v151 = 0;
        v152 = 0;
        v8 = v2 + 3;
        if (v2[3] == 40)
        {
          v10 = v2 + 4;
          v9 = v2[4];
          if (v9 == 48)
          {
            v11 = 5;
            if (v2[5] == 120)
            {
              v11 = 6;
              v10 = v2 + 6;
            }

            else
            {
              v10 = v2 + 5;
            }

            if (v2[5] == 120)
            {
              v12 = 16;
            }

            else
            {
              v12 = 8;
            }

            v9 = v2[v11];
          }

          else
          {
            v12 = 10;
          }

          v148 = path;
          v149 = &v152;
          if (v12 > hexdigit[v9])
          {
            do
            {
              v55 = v148;
              if (v148 < &v152)
              {
                v56 = 0;
                do
                {
                  v57 = v56 + *v55 * v12;
                  *v55 = v57;
                  v55 += 4;
                  v56 = HIDWORD(v57);
                }

                while (v55 < &v152);
                if (v56)
                {
                  v152 = v56;
                  v149 = &v153;
                }
              }

              addToMP(&v148, hexdigit[*v10]);
              v149 = &v152;
              v58 = *++v10;
              v9 = v58;
            }

            while (v12 > hexdigit[v58]);
          }

          if (v9 == 41)
          {
            v8 = v10 + 1;
          }

          else
          {
            *path = 0;
            v151 = 0;
            v59 = v10 + 1;
            v152 = 0;
            while (1)
            {
              v60 = *(v59 - 1);
              if (!*(v59 - 1) || v60 == 41)
              {
                break;
              }

              ++v59;
            }

            if (v60 == 41)
            {
              v8 = v59;
            }
          }
        }

        j__mkdtempat_np(*(a1 + 32), path);
        v61 = *(a1 + 12);
        switch(v61)
        {
          case 8:
            *(*(a1 + 32) + 6) |= 0xF8u;
            if (*(a1 + 96))
            {
              v64 = -1;
            }

            else
            {
              v64 = 127;
            }

            *(*(a1 + 32) + 7) = v64;
            break;
          case 4:
            *(*(a1 + 32) + 2) |= 0xC0u;
            if (*(a1 + 96))
            {
              v63 = -1;
            }

            else
            {
              v63 = 127;
            }

            *(*(a1 + 32) + 3) = v63;
            break;
          case 2:
            if (*(a1 + 96))
            {
              v62 = -2;
            }

            else
            {
              v62 = 126;
            }

            *(*(a1 + 32) + 1) |= v62;
            break;
        }

        v65 = *(a1 + 48);
        if (v65)
        {
          *v65 = v8;
        }

        return 0;
      }

LABEL_168:
      v82 = *(a1 + 48);
      if (v82)
      {
        *v82 = *(a1 + 40);
      }

      MEMORY[0x193AD5FD0](*(a1 + 32), *(a1 + 12));
      return 0;
    }

    if (v3 != 105)
    {
      if (v3 == 110)
      {
        goto LABEL_21;
      }

      goto LABEL_62;
    }

    goto LABEL_34;
  }

  if (v3 != 48)
  {
    if (v3 != 73)
    {
LABEL_62:
      if ((v3 - 58) <= 0xF5u)
      {
        v31 = *(a1 + 56);
        if (v31)
        {
          v32 = localeconv_l(v31);
          v33 = *v32->decimal_point;
          if (v32->decimal_point[1])
          {
            if (*v32->decimal_point)
            {
              v34 = (v32->decimal_point + 1);
              v35 = 1;
              do
              {
                v36 = *v2++;
                if (v36 != v33)
                {
                  v35 = 0;
                }

                v37 = *v34++;
                v33 = v37;
              }

              while (v37);
              if (!v35)
              {
                goto LABEL_168;
              }
            }

            v38 = *v2;
            goto LABEL_159;
          }

          if (v33 != *v2)
          {
            goto LABEL_168;
          }
        }

        else if (v3 != 46)
        {
          goto LABEL_168;
        }

        v75 = *++v2;
        v38 = v75;
LABEL_159:
        if ((v38 - 48) >= 0xA)
        {
          goto LABEL_168;
        }

        v41 = 0;
        goto LABEL_161;
      }

      v39 = v2;
LABEL_75:
      if ((v3 - 48) > 9)
      {
        v45 = 0;
        v41 = 0;
        v42 = v39;
      }

      else
      {
        v41 = (v3 - 48);
        v42 = v39 + 1;
        v3 = v39[1];
        v43 = v3 - 48;
        if ((v3 - 48) <= 9)
        {
          do
          {
            v41 = 10 * v41 + v43;
            v44 = *++v42;
            v3 = v44;
            v43 = v44 - 48;
          }

          while ((v44 - 48) < 0xA);
        }

        v45 = v42 - v39;
      }

      v46 = *(a1 + 56);
      if (v46)
      {
        v47 = 0;
        if (v3 > 68)
        {
          if (v3 == 69 || v3 == 101)
          {
            goto LABEL_228;
          }
        }

        else if (!v3 || v3 == 32)
        {
          goto LABEL_228;
        }

        v50 = localeconv_l(v46);
        v51 = *v50->decimal_point;
        if (v50->decimal_point[1])
        {
          if (*v50->decimal_point)
          {
            v52 = (v50->decimal_point + 1);
            v47 = 1;
            v2 = v42;
            do
            {
              v53 = *v2++;
              if (v53 != v51)
              {
                v47 = 0;
              }

              v54 = *v52++;
              v51 = v54;
            }

            while (v54);
            if (!v47)
            {
              v3 = *v42;
LABEL_228:
              if ((v3 | 0x20) == 0x65 && ((v115 = v42 + 1, v116 = v42[1], v116 == 45) ? (v117 = v42 + 2) : (v117 = v42 + 1), v116 == 45 ? (v118 = -1) : (v118 = 1), v116 != 43 ? (v119 = v117) : (v119 = v42 + 2), v116 != 43 ? (v120 = v118) : (v120 = 1), *v119 - 48 <= 9))
              {
                v121 = (*v119 - 48);
                v123 = v119[1];
                v122 = v119 + 1;
                v124 = v123 - 48;
                if ((v123 - 48) <= 9)
                {
                  do
                  {
                    v121 = 10 * v121 + v124;
                    v125 = *++v122;
                    v124 = v125 - 48;
                  }

                  while ((v125 - 48) < 0xA);
                }

                if (v122 - v42 >= 10)
                {
                  if (v116 == 45 || v116 == 43)
                  {
                    v115 = v42 + 2;
                  }

                  v126 = v122 - v115 + 1;
                  do
                  {
                    v127 = *v115++;
                    --v126;
                  }

                  while (v127 == 48);
                  if (v126 > 8)
                  {
                    v121 = 99999999;
                  }
                }

                v47 += v121 * v120;
              }

              else
              {
                v122 = v42;
              }

              v128 = *(a1 + 48);
              if (v128)
              {
                *v128 = v122;
              }

              if (!v45)
              {
                MEMORY[0x193AD5FD0](*(a1 + 32), *(a1 + 12));
                result = 0;
                if (*(a1 + 96))
                {
                  v133 = 0x80;
                }

                else
                {
                  v133 = 0;
                }

                *(*(a1 + 32) + *(a1 + 12) - 1) = v133;
                return result;
              }

              if (v47 + v45 >= *(a1 + 16))
              {
                if (v47 + v45 <= *(a1 + 20))
                {
                  if (v45 < 20)
                  {
                    v39 = 0;
                    v132 = 0;
                  }

                  else
                  {
                    v129 = 0;
                    v41 = 0;
                    do
                    {
                      v130 = *v39++;
                      v131 = (v130 - 48);
                      if (v131 < 0xA)
                      {
                        v41 = v131 + 10 * v41;
                        ++v129;
                      }
                    }

                    while (v129 < 0x13);
                    v132 = v45 - 19;
                  }

                  *(a1 + 72) = v45;
                  *(a1 + 80) = v39;
                  *(a1 + 64) = v41;
                  result = 1;
                  *(a1 + 88) = v132;
                  *(a1 + 92) = v47;
                  return result;
                }

                goto LABEL_304;
              }

              goto LABEL_313;
            }
          }

          else
          {
            v2 = v42;
          }
        }

        else if (v51 == *v42)
        {
          v2 = v42 + 1;
        }

        else
        {
          v2 = v42;
        }
      }

      else
      {
        if (v3 != 46)
        {
          v47 = 0;
          goto LABEL_228;
        }

        v2 = v42 + 1;
      }

      if (v45)
      {
        v3 = *v2;
        if ((v3 - 48) > 9)
        {
          v42 = v2;
        }

        else
        {
          v41 = 10 * v41 + (v3 - 48);
          v42 = v2 + 1;
          v3 = v2[1];
          v48 = v3 - 48;
          if ((v3 - 48) <= 9)
          {
            do
            {
              v41 = 10 * v41 + v48;
              v49 = *++v42;
              v3 = v49;
              v48 = v49 - 48;
            }

            while ((v49 - 48) < 0xA);
          }
        }

        v45 += v42 - v2;
        goto LABEL_227;
      }

LABEL_161:
      v76 = v2 - 1;
      v77 = v2;
      do
      {
        v78 = *v77++;
        v3 = v78;
        ++v76;
        v79 = (v78 - 48);
      }

      while (v78 == 48);
      v39 = v77 - 1;
      v42 = v77 - 1;
      if (v79 <= 9)
      {
        v3 = *v77;
        v80 = v3 - 48;
        if ((v3 - 48) <= 9)
        {
          do
          {
            v79 = 10 * v79 + v80;
            v81 = *++v77;
            v3 = v81;
            v80 = v81 - 48;
          }

          while ((v81 - 48) < 0xA);
        }

        v41 = v79;
        v42 = v77;
      }

      v45 = v42 - v76;
LABEL_227:
      v47 = v2 - v42;
      goto LABEL_228;
    }

LABEL_34:
    if ((v2[1] | 0x20) == 0x6E && (v2[2] | 0x20) == 0x66)
    {
      v13 = v2 + 3;
      if ((v2[3] | 0x20) == 0x69 && (v2[4] | 0x20) == 0x6E && (v2[5] | 0x20) == 0x69 && (v2[6] | 0x20) == 0x74 && (v2[7] | 0x20) == 0x79)
      {
        v13 = v2 + 8;
      }

      v14 = *(a1 + 48);
      if (v14)
      {
        *v14 = v13;
      }

      infinity(a1);
      return 0;
    }

    goto LABEL_168;
  }

  v15 = v2 + 1;
  if ((v2[1] | 0x20) != 0x78)
  {
    v39 = v2 - 1;
    do
    {
      v40 = *++v39;
      v3 = v40;
    }

    while (v40 == 48);
    goto LABEL_75;
  }

  v18 = v2[2];
  v17 = v2 + 2;
  v16 = v18;
  v19 = hexdigit[v18];
  if (v19 > 0xF)
  {
    v20 = 0;
    v24 = 0;
    v29 = 0;
    v28 = 0;
    v21 = v17;
    goto LABEL_140;
  }

  v20 = 0;
  v21 = v17;
  do
  {
    v22 = *++v21;
    v16 = v22;
    v20 = 16 * v20 + v19;
    v19 = hexdigit[v22];
  }

  while (v19 <= 0xF && v20 >> 60 == 0);
  if (v19 > 0xF)
  {
    v24 = 0;
LABEL_139:
    v29 = 0;
    v28 = 0;
    goto LABEL_140;
  }

  v24 = 0;
  do
  {
    *(&v25 + 1) = v24;
    *&v25 = v20;
    v24 = v25 >> 60;
    v26 = *++v21;
    v16 = v26;
    v20 = 16 * v20 + v19;
    v19 = hexdigit[v26];
  }

  while (v19 <= 0xF && v24 >> 59 == 0);
  if (v19 > 0xF)
  {
    goto LABEL_139;
  }

  v28 = 0;
  v29 = 0;
  do
  {
    v28 |= v19;
    v29 += 4;
    v30 = *++v21;
    v16 = v30;
    v19 = hexdigit[v30];
  }

  while (v19 < 0x10);
LABEL_140:
  v66 = v21 - v17;
  v67 = *(a1 + 56);
  if (!v67)
  {
    if (v16 != 46)
    {
      goto LABEL_186;
    }

    v71 = v21 + 1;
    goto LABEL_149;
  }

  v68 = localeconv_l(v67);
  v69 = *v68->decimal_point;
  if (!*v68->decimal_point)
  {
    v71 = v21;
LABEL_149:
    v16 = *v71;
    v73 = hexdigit[*v71];
    if (!v24 && (v73 <= 0xF ? (v74 = v20 >> 60 == 0) : (v74 = 0), v74))
    {
      v21 = v71;
      do
      {
        v84 = *++v21;
        v16 = v84;
        v20 = 16 * v20 + v73;
        v73 = hexdigit[v84];
      }

      while (v73 <= 0xF && v20 >> 60 == 0);
    }

    else
    {
      v21 = v71;
    }

    while (v73 <= 0xF && v24 >> 59 == 0)
    {
      *(&v86 + 1) = v24;
      *&v86 = v20;
      v24 = v86 >> 60;
      v87 = *++v21;
      v16 = v87;
      v20 = 16 * v20 + v73;
      v73 = hexdigit[v87];
    }

    v29 += 4 * (v71 - v21);
    v89 = v21;
    if (v73 <= 0xF)
    {
      do
      {
        v28 |= v73;
        v90 = *++v21;
        v16 = v90;
        v73 = hexdigit[v90];
        ++v89;
      }

      while (v73 < 0x10);
    }

    v66 = v66 - v71 + v89;
    goto LABEL_186;
  }

  v70 = (v68->decimal_point + 1);
  v71 = v21;
  while (*v71 == v69)
  {
    ++v71;
    v72 = *v70++;
    v69 = v72;
    if (!v72)
    {
      goto LABEL_149;
    }
  }

  v16 = *v21;
LABEL_186:
  if ((v16 | 0x20) == 0x70)
  {
    v91 = v21[1];
    v92 = v91 == 45 || v91 == 43;
    v93 = 1;
    if (v92)
    {
      v93 = 2;
      v94 = v21 + 2;
    }

    else
    {
      v94 = v21 + 1;
    }

    v95 = v21[v93];
    if ((v95 - 58) >= 0xFFFFFFF6)
    {
      v96 = 0;
      v97 = v95 - 48;
      v21 = v94;
      do
      {
        v98 = v97 + 10 * v96;
        if (v96 <= 99999999)
        {
          v96 = v98;
        }

        else
        {
          v96 = 99999999;
        }

        v99 = *++v21;
        v97 = v99 - 48;
      }

      while ((v99 - 48) < 0xA);
      if (v91 == 45)
      {
        v100 = -v96;
      }

      else
      {
        v100 = v96;
      }

      v29 += v100;
    }
  }

  if (!(v20 | v24))
  {
    v101 = 0;
    if (!v66)
    {
      v21 = v15;
    }

    v102 = *(a1 + 4);
    goto LABEL_301;
  }

  if (!v24)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      v107 = v20 >> 1;
      v108 = v20 << 63;
      v106 = v29 - 63;
      goto LABEL_216;
    }

    v29 -= 64;
    v24 = v20;
    v20 = 0;
  }

  v103 = __clz(v24);
  v104 = (v24 << (v103 - 1)) | (v20 >> (65 - v103));
  v105 = v20 << (v103 - 1);
  v106 = v29 - (v103 - 1);
  if (v24 >> 62)
  {
    v106 = v29;
    v107 = v24;
  }

  else
  {
    v107 = v104;
  }

  if (v24 >> 62)
  {
    v108 = v20;
  }

  else
  {
    v108 = v105;
  }

LABEL_216:
  v102 = v106 + 127;
  v101 = v108 | (v28 != 0);
  if (v106 + 127 > *(a1 + 8))
  {
    goto LABEL_301;
  }

  v110 = *a1;
  v109 = *(a1 + 4);
  if (v102 <= v109 - *a1)
  {
    goto LABEL_301;
  }

  v111 = v109 - (v106 + v110);
  if (v102 <= v109)
  {
    v112 = v111 + 1;
  }

  else
  {
    v112 = 127 - v110;
  }

  if (v102 <= v109)
  {
    v102 = *(a1 + 4);
  }

  if (v112 > 63)
  {
    v114 = 0;
    v113 = ((2 * v107) << ~(v112 - 64)) | (v101 >> (v112 - 64)) | (v101 << -v112 != 0);
    v101 = v107 >> v112;
  }

  else
  {
    v113 = v101 << -v112;
    v101 = ((2 * v107) << ~v112) | (v101 >> v112);
    v114 = v107 >> v112;
  }

  HIDWORD(v135) = fegetround();
  LODWORD(v135) = HIDWORD(v135);
  v134 = v135 >> 22;
  switch(v134)
  {
    case 1:
      if (*(a1 + 96))
      {
        goto LABEL_290;
      }

      break;
    case 3:
      goto LABEL_290;
    case 2:
      if (*(a1 + 96) != 1)
      {
        goto LABEL_290;
      }

      break;
    default:
      if (v113 <= 0x8000000000000000 && (v113 != 0x8000000000000000 || (v101 & 1) == 0))
      {
        goto LABEL_290;
      }

      goto LABEL_288;
  }

  if (!v113)
  {
    goto LABEL_290;
  }

LABEL_288:
  if (__CFADD__(v101++, 1))
  {
    ++v114;
  }

LABEL_290:
  v137 = *(a1 + 4);
  v138 = *a1 - (v102 == v137);
  if (v138 >= 65)
  {
    if (!(v114 >> v138))
    {
      goto LABEL_298;
    }

LABEL_295:
    v101 >>= v102++ > v137;
    goto LABEL_301;
  }

  if (v138 == 64 && v114 || v138 != 64 && v114 | (v101 >> v138))
  {
    goto LABEL_295;
  }

LABEL_298:
  if (v102 == v137 && v113)
  {
    *__error() = 34;
  }

LABEL_301:
  v139 = *(a1 + 48);
  if (v139)
  {
    *v139 = v21;
  }

  if (v102 > *(a1 + 8))
  {
LABEL_304:
    overflow(a1);
    return 0;
  }

  v140 = *(a1 + 4);
  if (v102 <= v140 - *a1)
  {
LABEL_313:
    underflow(a1);
    return 0;
  }

  v141 = *(a1 + 12);
  if (v141 != 8)
  {
    if (v141 == 4)
    {
      result = 0;
      v144 = v101 & 0x7FFFFF | ((v102 - v140) << 23);
      if (*(a1 + 96))
      {
        v145 = 0x80000000;
      }

      else
      {
        v145 = 0;
      }

      **(a1 + 32) = v144 | v145;
      return result;
    }

    if (v141 == 2)
    {
      result = 0;
      v142 = v102 - v140;
      if (*(a1 + 96))
      {
        v143 = 0x8000;
      }

      else
      {
        v143 = 0;
      }

      **(a1 + 32) = v143 & 0xFC00 | (v142 << 10) | v101 & 0x3FF;
      return result;
    }

    return 0;
  }

  result = 0;
  v146 = v102 - v140;
  v147 = 0x8000000000000000;
  if (!*(a1 + 96))
  {
    v147 = 0;
  }

  **(a1 + 32) = v147 | v101 & 0xFFFFFFFFFFFFFLL | (v146 << 52);
  return result;
}

int sprintf(char *a1, const char *a2, ...)
{
  va_start(va, a2);
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

  return vsprintf_l(a1, v5, a2, va);
}

int posix_spawnp(pid_t *a1, const char *a2, const posix_spawn_file_actions_t *a3, const posix_spawnattr_t *a4, char *const __argv[], char *const __envp[])
{
  v36 = a4;
  v37 = __envp;
  v35 = a3;
  memset(&v38, 0, sizeof(v38));
  j__strmode(a2, 0x2F);
  if (v9)
  {
    v33 = 0;
    v10 = 0;
    v11 = 0;
    v34 = 0;
    v12 = a2;
    while (1)
    {
      v23 = posix_spawn(a1, v12, v35, v36, __argv, v37);
      v18 = v23;
      if (v23 <= 0x3F)
      {
        if (((1 << v23) & 0xC000000000100004) != 0)
        {
          goto LABEL_23;
        }

        if (((1 << v23) & 0x4001080) != 0)
        {
          return v18;
        }

        if (v23 == 8)
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = __argv[v25];
            --v26;
            ++v25;
          }

          while (v27);
          if (-v26 != 1 && v26 != 0)
          {
            v28 = -v26;
          }

          else
          {
            v28 = 1;
          }

          MEMORY[0x1EEE9AC00](v23, 8 * (v28 + 2));
          v30 = &v32 - v29;
          MEMORY[0x193AD5FD0](&v32 - v29);
          if (v26)
          {
            v31 = *__argv;
            j__mkdtempat_np(v30 + 16, __argv + 8);
          }

          else
          {
            *(v30 + 2) = 0;
            v31 = "sh";
          }

          *v30 = v31;
          *(v30 + 1) = v12;
          return posix_spawn(a1, "/bin/sh", v35, v36, v30, v37);
        }
      }

      if (stat(v12, &v38))
      {
LABEL_23:
        v17 = v18;
        goto LABEL_9;
      }

      v34 = 1;
      v17 = 13;
      if (v18 != 13)
      {
        return v18;
      }

LABEL_9:
      if (!v10)
      {
        if (v33)
        {
          v17 = 2;
        }

        if (v34)
        {
          return 13;
        }

        else
        {
          return v17;
        }
      }

      v19 = strchrnul(v10, 0x3A, v16);
      if (v19 == v10)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19 - v10;
      }

      if ((v20 + v11 - 1023) < 0xFFFFFFFFFFFFFBFFLL)
      {
        return 63;
      }

      if (*v19)
      {
        v21 = v19 + 1;
      }

      else
      {
        v21 = 0;
      }

      if (v19 == v10)
      {
        v22 = ".";
      }

      else
      {
        LODWORD(v22) = v10;
      }

      j__mkostemp(v39, v22);
      v39[v20] = 47;
      j__mkdtempat_np(&v39[v20] + 1, a2);
      v39[v20 + 1 + v11] = 0;
      v10 = v21;
    }
  }

  v13 = getenv("PATH");
  if (*a2)
  {
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = "/usr/bin:/bin";
    }

    v11 = j__strsignal_r(a2, v14, v15);
    v17 = 0;
    v34 = 0;
    v12 = v39;
    v33 = v10;
    goto LABEL_9;
  }

  return 2;
}

void gdtoa_freelist_free(void **a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = a1;
    do
    {
      v4 = *v3;
      if (*v3)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
      }

      ++v3;
      ++v2;
    }

    while (v2 != 10);

    free(a1);
  }
}

char *__strncpy_chk(char *a1, const char *a2, size_t a3, size_t a4)
{
  if (a4 < a3)
  {
    __chk_fail_overflow();
  }

  __strncpy_chk_cold_1(a1, a2, a3);
  return a1;
}

char *__cdecl strtok_r(char *__str, const char *__sep, char **__lasts)
{
  if (__str || (__str = *__lasts) != 0)
  {
    v3 = __str;
LABEL_4:
    v5 = *v3++;
    v4 = v5;
    v6 = __sep;
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      ++v6;
      if (v4 == v7)
      {
        __str = v3;
        goto LABEL_4;
      }
    }

    if (v4)
    {
      v8 = v3;
LABEL_10:
      v10 = *v8++;
      v9 = v10;
      v11 = __sep;
      while (1)
      {
        v12 = *v11;
        if (v12 == v9)
        {
          break;
        }

        ++v11;
        if (!v12)
        {
          v3 = v8;
          goto LABEL_10;
        }
      }

      if (v9)
      {
        *v3 = 0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      __str = 0;
    }

    *__lasts = v8;
  }

  return __str;
}

int strncasecmp(const char *a1, const char *a2, size_t a3)
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

  return strncasecmp_l(a1, a2, a3, v5);
}

int strncasecmp_l(const char *a1, const char *a2, size_t a3, locale_t a4)
{
  v4 = &__global_locale;
  if (a4 != -1)
  {
    v4 = a4;
  }

  if (a4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__c_locale;
  }

  if (!a3)
  {
    return 0;
  }

  v8 = a3 - 1;
  while (1)
  {
    v9 = v8;
    v10 = *a1;
    v11 = v10 < 0 ? ___tolower_l(*a1, v5) : _DefaultRuneLocale.__maplower[v10];
    v12 = *a2;
    v13 = v12 < 0 ? ___tolower_l(*a2, v5) : _DefaultRuneLocale.__maplower[v12];
    v14 = *a1;
    if (v11 != v13)
    {
      break;
    }

    result = 0;
    if (*a1)
    {
      ++a1;
      v8 = v9 - 1;
      ++a2;
      if (v9)
      {
        continue;
      }
    }

    return result;
  }

  if ((v14 & 0x80) != 0)
  {
    v16 = ___tolower_l(*a1, v5);
  }

  else
  {
    v16 = _DefaultRuneLocale.__maplower[v14];
  }

  v17 = *a2;
  if (v17 < 0)
  {
    v18 = ___tolower_l(*a2, v5);
  }

  else
  {
    v18 = _DefaultRuneLocale.__maplower[v17];
  }

  return v16 - v18;
}

__darwin_ct_rune_t ___tolower_l(__darwin_ct_rune_t result, locale_t a2)
{
  if ((result & 0x80000000) == 0)
  {
    v2 = &__c_locale;
    v3 = &__global_locale;
    if (a2 != -1)
    {
      v3 = a2;
    }

    if (a2)
    {
      v2 = v3;
    }

    v4 = *(*(v2 + 166) + 120);
    if (result > 0xFF)
    {
      v5 = *(v4 + 3152);
      if (v5)
      {
        v6 = *(v4 + 3160);
        while (1)
        {
          v7 = &v6[6 * (v5 >> 1)];
          v8 = v7[1];
          if (result >= *v7 && v8 >= result)
          {
            break;
          }

          v10 = v8 < result;
          v11 = v7 + 6;
          if (v8 < result)
          {
            v6 = v11;
          }

          v12 = v5 - v10;
          v5 = (v5 - v10) >> 1;
          if (v12 <= 1)
          {
            return result;
          }
        }

        return result - *v7 + v7[2];
      }
    }

    else
    {
      return *(v4 + 4 * result + 1084);
    }
  }

  return result;
}

time_t mktime(tm *a1)
{
  v2 = *__error();
  pthread_rwlock_rdlock(&lcl_rwlock);
  _st_tzset_basic(1);
  v3 = _st_time1(a1, _st_localsub, 0, 1);
  pthread_rwlock_unlock(&lcl_rwlock);
  *__error() = v2;
  return v3;
}

uint64_t _st_time1(_DWORD *a1, uint64_t (*a2)(uint64_t *a1, uint64_t a2, uint64_t a3), uint64_t a3, int a4)
{
  if (!a1)
  {
    *__error() = 22;
    return -1;
  }

  if (a1[8] >= 2)
  {
    a1[8] = 1;
  }

  v29 = 0;
  result = time2(a1, a2, a3, &v29, a4);
  if (v29)
  {
    return result;
  }

  v9 = a1[8];
  if (v9 < 0)
  {
    v9 = 0;
    a1[8] = 0;
  }

  v10 = &lclptr;
  if (a2 != _st_localsub)
  {
    v10 = &gmtptr;
  }

  v11 = *v10;
  if (!*v10)
  {
    return -1;
  }

  v12 = *(v11 + 8);
  if (v12 >= 1)
  {
    MEMORY[0x193AD5FD0](v31, 4 * v12);
  }

  v13 = *(v11 + 4);
  if (v13 < 1)
  {
    return -1;
  }

  v14 = 0;
  v15 = v13 + 1;
  v16 = (v13 + v11 + 9623);
  do
  {
    v18 = *v16--;
    v17 = v18;
    if (!v31[v18])
    {
      v31[v17] = 1;
      v30[v14++] = v17;
    }

    --v15;
  }

  while (v15 > 1);
  if (v14 < 1)
  {
    return -1;
  }

  v28 = a4;
  v19 = 0;
  v20 = v11 + 10824;
  v26 = v14;
  v27 = a3;
  do
  {
    v21 = (v20 + 24 * v30[v19]);
    if (v21[2] == v9)
    {
      v22 = v30;
      v23 = v26;
      do
      {
        v24 = *v22++;
        v25 = (v20 + 24 * v24);
        if (v25[2] != v9)
        {
          *a1 += *v25 - *v21;
          a1[8] = v9 == 0;
          result = time2(a1, a2, v27, &v29, v28);
          if (v29)
          {
            return result;
          }

          *a1 += *v21 - *v25;
          v9 = a1[8] == 0;
          a1[8] = v9;
        }

        --v23;
      }

      while (v23);
    }

    ++v19;
    result = -1;
  }

  while (v19 != v26);
  return result;
}

uint64_t time2(uint64_t a1, uint64_t (*a2)(uint64_t *a1, uint64_t a2, uint64_t a3), uint64_t a3, _DWORD *a4, int a5)
{
  result = time2sub(a1, a2, a3, a4, 0, a5);
  if (!*a4)
  {

    return time2sub(a1, a2, a3, a4, 1, a5);
  }

  return result;
}

uint64_t time2sub(uint64_t a1, uint64_t (*a2)(uint64_t *a1, uint64_t a2, uint64_t a3), uint64_t a3, _DWORD *a4, int a5, int a6)
{
  v7 = a4;
  v65 = 0;
  v59 = 0;
  v58 = 0u;
  memset(v57, 0, sizeof(v57));
  *a4 = 0;
  v11 = *(a1 + 16);
  v60 = *a1;
  v61 = v11;
  v62 = *(a1 + 32);
  v63 = *(a1 + 48);
  if (a5)
  {
    if (v60 < 0)
    {
      v12 = ~(~v60 / 0x3Cu);
    }

    else
    {
      v12 = v60 / 0x3C;
    }

    LODWORD(v60) = v60 - 60 * v12;
    v13 = DWORD1(v60) + v12;
  }

  else
  {
    v13 = DWORD1(v60);
  }

  if (v13 < 0)
  {
    v14 = ~(~v13 / 0x3Cu);
  }

  else
  {
    v14 = v13 / 0x3Cu;
  }

  v15 = v13 - 60 * v14;
  v17 = DWORD2(v60) + v14;
  v16 = (DWORD2(v60) + v14) < 0;
  v18 = ~(DWORD2(v60) + v14) / 0x18;
  if (v16)
  {
    v19 = ~v18;
  }

  else
  {
    v19 = v17 / 0x18;
  }

  v20 = v17 - 24 * v19;
  v21 = HIDWORD(v60) + v19;
  v22 = v61 / 0xC;
  if (v61 < 0)
  {
    v22 = ~(~v61 / 0xCu);
  }

  v23 = v61 - 12 * v22;
  v24 = SDWORD1(v61) + v22 + 1900;
  *(&v60 + 4) = __PAIR64__(v20, v15);
  if (v21 <= 0)
  {
    do
    {
      v25 = (v23 > 1) + v24 - 1;
      if ((v25 & 3) != 0)
      {
        v26 = 0;
      }

      else
      {
        v26 = __ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v25, 2) > 0x28F5C28F5C28F5CuLL || __ROR8__(0x51EB851EB851EB0 - 0x70A3D70A3D70A3D7 * v25, 4) < 0xA3D70A3D70A3D7uLL;
      }

      v21 += year_lengths[v26];
      --v24;
    }

    while (v21 < 1);
  }

  if (v21 >= 0x16F)
  {
    if (v23 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v24 + 1;
    }

    do
    {
      if ((v27 & 3) != 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = __ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v27, 2) > 0x28F5C28F5C28F5CuLL || __ROR8__(0x51EB851EB851EB0 - 0x70A3D70A3D70A3D7 * v27, 4) < 0xA3D70A3D70A3D7uLL;
      }

      v21 -= year_lengths[v28];
      ++v24;
      ++v27;
    }

    while (v21 > 366);
  }

  while (1)
  {
    v29 = (v24 & 3) == 0 && (__ROR8__(0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v24, 2) > 0x28F5C28F5C28F5CuLL || __ROR8__(0x51EB851EB851EB0 - 0x70A3D70A3D70A3D7 * v24, 4) < 0xA3D70A3D70A3D7uLL);
    v30 = mon_lengths[12 * v29 + v23];
    v31 = __OFSUB__(v21, v30);
    v32 = v21 - v30;
    if ((v32 < 0) ^ v31 | (v32 == 0))
    {
      break;
    }

    v33 = v23 <= 10;
    if (v23 <= 10)
    {
      ++v23;
    }

    else
    {
      v23 = 0;
    }

    if (!v33)
    {
      ++v24;
    }

    v21 = v32;
  }

  HIDWORD(v60) = v21;
  LODWORD(v61) = v23;
  DWORD1(v61) = v24 - 1900;
  result = -1;
  if ((v24 - 2147485548) < 0xFFFFFFFF00000000 || v24 - 1900 < 0)
  {
    return result;
  }

  v35 = v60;
  if (v60 >= 0x3C)
  {
    if (v24 > 1969)
    {
      LODWORD(v60) = 0;
    }

    else
    {
      v35 = v60 - 59;
      LODWORD(v60) = 59;
    }
  }

  else
  {
    v35 = 0;
  }

  v64 = 0;
  v36 = 0x7FFFFFFFFFFFFFFFLL;
  v37 = 0x8000000000000000;
  while (1)
  {
    v38 = v36 / 2 + v37 / 2;
    v64 = v38;
    if (v38 >= v37)
    {
      if (v38 > v36)
      {
        v64 = v36;
      }
    }

    else
    {
      v64 = v37;
    }

    if (a2(&v64, a3, v57))
    {
      break;
    }

    v40 = v64;
    v41 = v64 <= 0;
LABEL_60:
    v42 = !v41;
    if (v40 == v37)
    {
      v40 = v37 + 1;
      v64 = ++v37;
    }

    else if (v40 == v36)
    {
      v40 = v36 - 1;
      v64 = --v36;
    }

    if (v37 > v36)
    {
      return -1;
    }

    if (v42)
    {
      v36 = v40;
    }

    else
    {
      v37 = v40;
    }
  }

  v39 = tmcomp(v57, &v60);
  if (v39)
  {
    v40 = v64;
    v41 = v39 <= 0;
    goto LABEL_60;
  }

  v43 = &lclptr;
  if (a2 != _st_localsub)
  {
    v43 = &gmtptr;
  }

  v44 = *v43;
  if (!a6)
  {
    v45 = v62;
    if ((v62 & 0x80000000) == 0)
    {
      goto LABEL_80;
    }

LABEL_96:
    v64 += v35;
    v65 = v64;
    if (a2(&v64, a3, a1))
    {
      *v7 = 1;
      return v64;
    }

    return -1;
  }

  if (*(v44 + 8) == 1)
  {
    v45 = v62 & (v62 >> 31);
  }

  else
  {
    v45 = v62;
  }

  LODWORD(v62) = v45;
  if (v45 < 0)
  {
    goto LABEL_96;
  }

LABEL_80:
  if (v58 == v45)
  {
    goto LABEL_96;
  }

  if (v44)
  {
    v46 = *(v44 + 8);
    if (v46 >= 1)
    {
      v55 = v44;
      v56 = v44 + 10824;
      v53 = v7;
      v54 = v44 + 10808;
      while (1)
      {
        v47 = v56 + 24 * (v46 - 1);
        if (*(v47 + 8) == v45)
        {
          v48 = *(v55 + 8);
          if (v48 >= 1)
          {
            break;
          }
        }

LABEL_92:
        result = -1;
        v33 = v46-- <= 1;
        if (v33)
        {
          return result;
        }
      }

      v49 = v48 + 1;
      v50 = (v54 + 24 * v48);
      v51 = v50;
      while (1)
      {
        v52 = *v51;
        v51 -= 6;
        if (v52 != v45)
        {
          v65 = *(v50 - 1) + v64 - *v47;
          if (a2(&v65, a3, v57))
          {
            if (!tmcomp(v57, &v60) && v58 == v45)
            {
              break;
            }
          }
        }

        --v49;
        v50 = v51;
        if (v49 <= 1)
        {
          goto LABEL_92;
        }
      }

      v64 = v65;
      v7 = v53;
      goto LABEL_96;
    }
  }

  return -1;
}

uint64_t tmcomp(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[5];
  v3 = a2[5];
  if (v2 == v3)
  {
    v5 = a1[4];
    v6 = a2[4];
    result = (v5 - v6);
    if (v5 == v6)
    {
      v8 = a1[3];
      v9 = a2[3];
      result = (v8 - v9);
      if (v8 == v9)
      {
        v10 = a1[2];
        v11 = a2[2];
        result = (v10 - v11);
        if (v10 == v11)
        {
          v12 = a1[1];
          v13 = a2[1];
          result = (v12 - v13);
          if (v12 == v13)
          {
            return (*a1 - *a2);
          }
        }
      }
    }
  }

  else if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t __fflush(uint64_t a1)
{
  if (!a1)
  {
    return _fwalk(sflush_locked);
  }

  if ((*(a1 + 16) & 0x18) != 0)
  {
    return __sflush(a1);
  }

  return 0;
}

unint64_t strtouq(const char *__str, char **__endptr, int __base)
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

  return strtoull_l(__str, __endptr, __base, v5);
}

char *__cdecl strcasestr_l(const char *a1, const char *a2, locale_t a3)
{
  v4 = &__global_locale;
  if (a3 != -1)
  {
    v4 = a3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = &__c_locale;
  }

  v7 = a2 + 1;
  v6 = *a2;
  if (!*a2)
  {
    return a1;
  }

  if ((v6 & 0x80) != 0)
  {
    LOBYTE(v8) = ___tolower_l(v6, v5);
  }

  else
  {
    v8 = _DefaultRuneLocale.__maplower[v6];
  }

  v10 = j__strsignal_r(v7, a2, a3);
  while (1)
  {
    v9 = a1;
    v12 = *a1++;
    v11 = v12;
    if (!v12)
    {
      break;
    }

    if ((v11 & 0x80) != 0)
    {
      LOBYTE(v13) = ___tolower_l(v11, v5);
    }

    else
    {
      v13 = _DefaultRuneLocale.__maplower[v11];
    }

    if (v13 == v8 && !strncasecmp_l(a1, v7, v10, v5))
    {
      return v9;
    }
  }

  return 0;
}

char *__cdecl strcasestr(const char *__big, const char *__little)
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

  return strcasestr_l(__big, __little, v4);
}

size_t strcspn(const char *__s, const char *__charset)
{
  if (!*__s)
  {
    return 0;
  }

  v8[0] = 1;
  memset(&v8[1], 0, 24);
  v2 = *__charset;
  if (*__charset)
  {
    v3 = __charset + 1;
    do
    {
      v8[v2 >> 6] |= 1 << v2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  v5 = 0;
  do
  {
    v6 = __s[v5++];
  }

  while (((*(v8 + ((v6 >> 3) & 0x18)) >> v6) & 1) == 0);
  return v5 - 1;
}

int rand_r(unsigned int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    v1 = 123459876;
  }

  v2 = 16807 * (v1 % 0x1F31D) - 2836 * (v1 / 0x1F31D);
  if (v2 < 0)
  {
    LODWORD(v2) = v2 + 0x7FFFFFFF;
  }

  *a1 = v2;
  return v2 & 0x7FFFFFFF;
}

uint64_t sleep_NOCANCEL(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x80000000) != 0)
  {
    return a1 - 0x7FFFFFFF + sleep_NOCANCEL(0x7FFFFFFFLL);
  }

  v3 = 0;
  v4 = 0;
  v5[0] = a1;
  v5[1] = 0;
  if (nanosleep_NOCANCEL(v5, &v3) != -1)
  {
    return 0;
  }

  if (*__error() == 4)
  {
    if (v4)
    {
      return (v3 + 1);
    }

    else
    {
      return v3;
    }
  }

  return v1;
}

uint64_t nanosleep_NOCANCEL(void *a1, void *a2)
{
  if (!*MEMORY[0x1E69E9B90])
  {
    *MEMORY[0x1E69E9B90] = 1;
  }

  cur_time = 0;
  v19 = 0;
  if (!a1 || (*a1 & 0x8000000000000000) != 0 || a1[1] >= 0x3B9ACA00uLL)
  {
    goto LABEL_9;
  }

  if (a2)
  {
    time = clock_get_time(clock_port, &cur_time);
    if (time)
    {
      v5 = __stderrp;
      v6 = mach_error_string(time);
      fprintf(v5, "clock_get_time() failed: %s\n", v6);
      goto LABEL_9;
    }
  }

  if ((__semwait_signal_nocancel() & 0x80000000) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*__error() != 60)
  {
    if (*__error() == 4)
    {
      if (a2)
      {
        v8 = clock_get_time(clock_port, &v19);
        if (!v8)
        {
          v11 = cur_time.tv_nsec + *(a1 + 2);
          if (v11 <= 999999999)
          {
            tv_sec = cur_time.tv_sec;
          }

          else
          {
            v11 -= 1000000000;
            tv_sec = cur_time.tv_sec + 1;
          }

          v13 = tv_sec + *a1;
          if (v13 <= v19.tv_sec)
          {
            if (v13 < v19.tv_sec || (tv_nsec = v19.tv_nsec, v11 <= v19.tv_nsec))
            {
              *a2 = 0;
              a2[1] = 0;
              return 0xFFFFFFFFLL;
            }
          }

          else
          {
            tv_nsec = v19.tv_nsec;
          }

          v15 = __OFSUB__(v11, tv_nsec);
          v16 = v11 - tv_nsec;
          if (v16 < 0 != v15)
          {
            v17 = v16 + 1000000000;
          }

          else
          {
            v17 = v16;
          }

          *a2 = v13 + (v16 >> 31) - v19.tv_sec;
          a2[1] = v17;
          return 0xFFFFFFFFLL;
        }

        v9 = __stderrp;
        v10 = mach_error_string(v8);
        fprintf(v9, "clock_get_time() failed: %s\n", v10);
      }

      return 0xFFFFFFFFLL;
    }

LABEL_9:
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sranddev(void)
{
  if ((open_NOCANCEL() & 0x80000000) != 0 || (NOCANCEL = read_NOCANCEL(), close_NOCANCEL(), NOCANCEL != 8))
  {
    v1.tv_sec = 0;
    *&v1.tv_usec = 0;
    gettimeofday(&v1, 0);
    next = LODWORD(v1.tv_sec) ^ (getpid() << 16) ^ v1.tv_usec;
  }
}

void abort_report_np(uint64_t a1)
{
  if (_simple_salloc())
  {
    _simple_vsprintf();
    a1 = _simple_string();
  }

  qword_1EAC9CAC0 = a1;
  abort();
}

int rand(void)
{
  v0 = next;
  if (!next)
  {
    v0 = 123459876;
  }

  v1 = 16807 * (v0 % 0x1F31D) - 2836 * (v0 / 0x1F31D);
  next = v1 + (v1 < 0 ? 0x7FFFFFFFuLL : 0);
  return next & 0x7FFFFFFF;
}

tm *__cdecl localtime(const time_t *a1)
{
  pthread_once(&localtime_once, localtime_key_init);
  v2 = localtime_key_error;
  if (localtime_key_error)
  {
    *__error() = v2;
    return 0;
  }

  if (localtime_key)
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  v5 = pthread_getspecific(v4);
  if (!v5)
  {
    v6 = malloc_type_malloc(0x38uLL, 0x10100404E507D7FuLL);
    if (!v6)
    {
      return 0;
    }

    v5 = v6;
    if (localtime_key)
    {
      v7 = 12;
    }

    else
    {
      v7 = 0;
    }

    pthread_setspecific(v7, v5);
  }

  pthread_rwlock_rdlock(&lcl_rwlock);
  _st_tzset_basic(1);
  v8 = _st_localsub(a1, 0, v5);
  pthread_rwlock_unlock(&lcl_rwlock);
  return v8;
}

size_t strftime(char *a1, size_t a2, const char *a3, const tm *a4)
{
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

  return strftime_l(a1, a2, a3, a4, v6);
}

char *__private_getcwd(char *a1, uint64_t a2, int a3)
{
  memset(&v43, 0, sizeof(v43));
  if (a1)
  {
    if (a2 == 1)
    {
      v4 = __error();
      v5 = 0;
      v6 = 34;
      goto LABEL_9;
    }

    if (!a2)
    {
      v4 = __error();
      v5 = 0;
      v6 = 22;
LABEL_9:
      *v4 = v6;
      return v5;
    }

    v5 = a1;
    v9 = 0;
    v8 = &a1[a2];
    if (!a3)
    {
LABEL_14:
      *(v8 - 1) = 0;
      v10 = v8 - 1;
      if (stat("/", &v43))
      {
LABEL_15:
        v11 = 0;
        goto LABEL_16;
      }

      st_dev = v43.st_dev;
      st_ino = v43.st_ino;
      v11 = 0;
      v16 = 0;
      *__error() = 0;
      v41 = st_dev;
      v40 = st_ino;
LABEL_23:
      v42 = v16;
      if (v11)
      {
        v17 = dirfd(v11);
        if (fstat(v17, &v43))
        {
          goto LABEL_16;
        }

        v18 = v43.st_ino;
        v19 = v43.st_dev;
        if (st_dev == v43.st_dev && st_ino == v43.st_ino)
        {
          *(v10 - 1) = 47;
          j__mkostemp(v5, v10 - 1);
          closedir(v11);
          return v5;
        }

        dirfd(v11);
        v21 = openat_NOCANCEL();
        if (v21 == -1)
        {
          goto LABEL_16;
        }

        v22 = v21;
        closedir(v11);
      }

      else
      {
        if (lstat(".", &v43))
        {
          goto LABEL_15;
        }

        v18 = v43.st_ino;
        v19 = v43.st_dev;
        if (st_dev == v43.st_dev && st_ino == v43.st_ino)
        {
          *(v10 - 1) = 47;
          j__mkostemp(v5, v10 - 1);
          return v5;
        }

        v24 = openat_NOCANCEL();
        if (v24 == -1)
        {
          goto LABEL_15;
        }

        v22 = v24;
      }

      v25 = fdopendir(v22);
      v11 = v25;
      if (!v25 || (v26 = dirfd(v25), fstat(v26, &v43)))
      {
        close_NOCANCEL();
      }

      else
      {
        v27 = v43.st_dev;
        v28 = readdir(v11);
        v29 = v28;
        if (v27 == v19)
        {
          if (v28)
          {
            v30 = 0;
            while (v29->d_ino != v18)
            {
              if ((v29->d_name[0] != 46 || v29->d_name[1] && (v29->d_name[1] != 46 || v29->d_name[2])) && v29->d_type == 4)
              {
                v31 = dirfd(v11);
                if (fstatat(v31, v29->d_name, &v43, 32))
                {
                  if (!v30)
                  {
                    v30 = *__error();
                  }

                  *__error() = 0;
                }

                else if (v43.st_dev == v19 && v43.st_ino == v18)
                {
                  break;
                }
              }

              v29 = readdir(v11);
              if (!v29)
              {
                goto LABEL_88;
              }
            }

LABEL_73:
            if (v42)
            {
              v34 = 2;
            }

            else
            {
              v34 = 1;
            }

            for (i = v10 - v5; ; i = v9 - v38)
            {
              d_namlen = v29->d_namlen;
              if (i >= v34 + d_namlen)
              {
                st_dev = v41;
                if (v42)
                {
                  *--v10 = 47;
                  d_namlen = v29->d_namlen;
                }

                v10 -= d_namlen;
                j__mkostemp(v10, v29 + 21);
                v16 = 1;
                st_ino = v40;
                goto LABEL_23;
              }

              if (!v9)
              {
                break;
              }

              v9 *= 2;
              v37 = reallocf(v5, v9);
              v5 = v37;
              if (!v37)
              {
                goto LABEL_16;
              }

              v38 = v8 - v10;
              v8 = &v37[v9];
              v10 = &v37[v9 - v38];
              j__mkostemp(v10, v37 + i);
            }

            *__error() = 34;
            v12 = *__error();
            if (v11)
            {
              goto LABEL_19;
            }

            goto LABEL_20;
          }
        }

        else if (v28)
        {
          v30 = 0;
          while (1)
          {
            if (v29->d_name[0] != 46 || v29->d_name[1] && (v29->d_name[1] != 46 || v29->d_name[2]))
            {
              v32 = dirfd(v11);
              if (fstatat(v32, v29->d_name, &v43, 32))
              {
                if (!v30)
                {
                  v30 = *__error();
                }

                *__error() = 0;
              }

              else if (v43.st_dev == v19 && v43.st_ino == v18)
              {
                goto LABEL_73;
              }
            }

            v29 = readdir(v11);
            if (!v29)
            {
              goto LABEL_88;
            }
          }
        }

        v30 = 0;
LABEL_88:
        if (!*__error())
        {
          if (v30)
          {
            v39 = v30;
          }

          else
          {
            v39 = 2;
          }

          *__error() = v39;
        }
      }

LABEL_16:
      v12 = *__error();
      if (v9)
      {
        free(v5);
      }

      if (v11)
      {
LABEL_19:
        closedir(v11);
      }

LABEL_20:
      v5 = 0;
      *__error() = v12;
      return v5;
    }

LABEL_11:
    if (!__getcwd(v5, v8 - v5))
    {
      return v5;
    }

    if (*__error() == 34)
    {
      return 0;
    }

    goto LABEL_14;
  }

  v7 = malloc_type_malloc(0x400uLL, 0xE3E24E42uLL);
  v5 = v7;
  if (v7)
  {
    v8 = v7 + 1024;
    v9 = 1024;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  return v5;
}

uint64_t __getcwd(const char *a1, unint64_t a2)
{
  v4 = open_NOCANCEL();
  if (v4 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  memset(&v20, 0, sizeof(v20));
  memset(&v19, 0, sizeof(v19));
  v5 = fstat(v4, &v20);
  if ((v5 & 0x80000000) != 0)
  {
    v11 = *__error();
    close_NOCANCEL();
    *__error() = v11;
    return 0xFFFFFFFFLL;
  }

  if (!v20.st_dev || !v20.st_ino)
  {
    close_NOCANCEL();
    goto LABEL_11;
  }

  v7 = a1;
  if (a2 <= 0x3FF)
  {
    MEMORY[0x1EEE9AC00](v5, v6);
    v7 = v18;
    MEMORY[0x193AD5FD0](v18, 1024);
  }

  v8 = fcntl_NOCANCEL();
  if (!v8)
  {
    close_NOCANCEL();
    if (stat(v7, &v19) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (v20.st_dev == v19.st_dev && v20.st_ino == v19.st_ino)
    {
      if (a2 > 0x3FF)
      {
        return 0;
      }

      if (j__strsignal_r(v7, v15, v16) < a2)
      {
        j__strnstr(a1, v7, v17);
        return 0;
      }

      v12 = __error();
      v13 = 34;
      goto LABEL_12;
    }

LABEL_11:
    v12 = __error();
    v13 = 22;
LABEL_12:
    *v12 = v13;
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = *__error();
  close_NOCANCEL();
  *__error() = v10;
  return v9;
}

char *__cdecl ctime(const time_t *a1)
{
  result = localtime(a1);
  if (result)
  {

    return asctime(result);
  }

  return result;
}

char *__cdecl strcat(char *__s1, const char *__s2)
{
  v5 = j__strsignal_r(__s1, __s2, v2);
  j__strsignal_r(__s2, v6, v7);
  j__mkdtempat_np(__s1 + v5, __s2);
  return __s1;
}

int killpg(pid_t a1, int a2)
{
  if (a1 == 1)
  {
    *__error() = 1;
    return -1;
  }

  else
  {
    v4 = -a1;

    return MEMORY[0x1EEE72148](v4, *&a2, 1);
  }
}

uint64_t tzload(const char *a1, uint64_t a2, const char *a3, int a4)
{
  v7 = a1;
  *(a2 + 16) = 0;
  if (a1 && issetugid())
  {
    if ((v8 = *v7, v8 == 47) || v8 == 58 && v7[1] == 47 || (j__strmode(v7, 0x2E), v9))
    {
      v7 = 0;
    }
  }

  if (a3)
  {
    *a3 = 0;
  }

  memset(&v114, 0, sizeof(v114));
  v10 = malloc_type_malloc(0x401uLL, 0x550840uLL);
  if (!v10)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v13 = v10;
  v14 = "/var/db/timezone/localtime";
  if (v7)
  {
    v14 = v7;
  }

  if (*v14 == 58)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = v14;
  }

  if (*v15 == 47)
  {
    v16 = 0;
    if (!a3)
    {
LABEL_18:
      if (v16)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else
  {
    if ((j__strsignal_r(v15, v11, v12) - 998) <= 0xFFFFFFFFFFFFFBFFLL)
    {
      goto LABEL_116;
    }

    strcpy(v13, "/var/db/timezone/zoneinfo");
    *&v13[j__strsignal_r(v13, v19, v20)] = 47;
    strcat(v13, v15);
    j__strmode(v15, 0x2E);
    v16 = v21 == 0;
    v15 = v13;
    if (!a3)
    {
      goto LABEL_18;
    }
  }

  if (j__strsignal_r(v15, v11, v12) > 0x400)
  {
    return 0xFFFFFFFFLL;
  }

  j__strnstr(a3, v15, v22);
  if (!v16)
  {
LABEL_27:
    if (!access(v15, 4))
    {
      goto LABEL_28;
    }

LABEL_116:
    free(v13);
    return 0xFFFFFFFFLL;
  }

LABEL_28:
  v23 = open_NOCANCEL();
  if (v23 == -1)
  {
    goto LABEL_116;
  }

  if (fstat(v23, &v114) < 0 || (v114.st_mode & 0xF000) != 0x8000)
  {
    free(v13);
    close_NOCANCEL();
    return 0xFFFFFFFFLL;
  }

  free(v13);
  v17 = malloc_type_malloc(0xA1E8uLL, 0x1000040BE76E700uLL);
  if (v17)
  {
    NOCANCEL = read_NOCANCEL();
    v18 = 0xFFFFFFFFLL;
    if ((close_NOCANCEL() & 0x80000000) != 0 || NOCANCEL < 1)
    {
      goto LABEL_22;
    }

    v25 = a2 + 24;
    v26 = 4;
LABEL_35:
    v27 = v17[24] >> 7;
      ;
    }

    v29 = v17[20] >> 7;
      ;
    }

    v31 = v17[28] >> 7;
    for (k = 28; k != 32; ++k)
    {
      v33 = v17[k];
      v31 = v33 | (v31 << 8);
    }

    *a2 = v31;
    LODWORD(v34) = v17[32] >> 7;
      ;
    }

    *(a2 + 4) = v34;
    LODWORD(v36) = v17[36] >> 7;
      ;
    }

    *(a2 + 8) = v36;
    v38 = v17[40] >> 7;
    for (ii = 40; ii != 44; ++ii)
    {
      v40 = v17[ii];
      v38 = v40 | (v38 << 8);
    }

    *(a2 + 12) = v38;
    v18 = 0xFFFFFFFFLL;
    if (v31 > 0x32 || (v36 - 257) < 0xFFFFFF00 || v34 > 0x4B0 || v38 > 0x32 || v27 && v36 != v27)
    {
      goto LABEL_22;
    }

    if (v29 && v36 != v29)
    {
      goto LABEL_22;
    }

    if (NOCANCEL - 44 >= (v29 + v27 + v31 * (v26 + 4) + v34 * (v26 | 1) + 6 * v36 + v38))
    {
      v41 = (v17 + 44);
      if (v34)
      {
        v42 = 0;
        v41 = (v17 + 44);
        do
        {
          v43 = *v41 >> 7;
          if (v26 == 4)
          {
            for (jj = 0; jj != 4; ++jj)
            {
              v43 = v41[jj] | (v43 << 8);
            }
          }

          else
          {
            for (kk = 0; kk != 8; ++kk)
            {
              v43 = v41[kk] | (v43 << 8);
            }
          }

          *(v25 + 8 * v42) = v43;
          v41 += v26;
          ++v42;
        }

        while (v42 != v34);
        v46 = v34;
        v47 = (a2 + 9624);
        while (1)
        {
          v48 = *v41;
          *v47 = v48;
          if (v36 <= v48)
          {
            break;
          }

          ++v41;
          ++v47;
          if (!--v46)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
LABEL_68:
        v49 = 0;
        while (1)
        {
          v50 = 0;
          v51 = *v41 >> 7;
          do
          {
            v51 = v41[v50++] | (v51 << 8);
          }

          while (v50 != 4);
          v52 = a2 + 10824 + 24 * v49;
          *v52 = v51;
          v53 = v41[4];
          *(v52 + 8) = v53;
          if (v53 > 1)
          {
            break;
          }

          v54 = v41[5];
          *(v52 + 12) = v54;
          if (v38 < v54)
          {
            break;
          }

          v41 += 6;
          if (++v49 == v36)
          {
            if (v38 < 1)
            {
              v40 = 0;
            }

            else
            {
              v55 = v40;
              v56 = (a2 + 16968);
              do
              {
                v57 = *v41++;
                *v56++ = v57;
                --v55;
              }

              while (v55);
            }

            *(a2 + 16968 + v40) = 0;
            if (v31 >= 1)
            {
              v58 = 0;
              v59 = &v41[v26];
              do
              {
                v60 = *v41 >> 7;
                if (v26 == 4)
                {
                  for (mm = 0; mm != 4; ++mm)
                  {
                    v60 = v41[mm] | (v60 << 8);
                  }
                }

                else
                {
                  for (nn = 0; nn != 8; ++nn)
                  {
                    v60 = v41[nn] | (v60 << 8);
                  }
                }

                v63 = 0;
                v64 = (a2 + 17480 + 16 * v58);
                *v64 = v60;
                v65 = &v41[v26];
                v66 = *v65 >> 7;
                do
                {
                  v66 = v59[v63++] | (v66 << 8);
                }

                while (v63 != 4);
                v64[1] = v66;
                v41 = (v65 + 4);
                ++v58;
                v59 += v26 + 4;
              }

              while (v58 != v33);
            }

            v67 = v36;
            v68 = 10840;
            do
            {
              if (v27)
              {
                v69 = *v41++;
                *(a2 + v68) = v69;
                if (v69 > 1)
                {
                  goto LABEL_21;
                }
              }

              else
              {
                *(a2 + v68) = 0;
              }

              v68 += 24;
              v67 = (v67 - 1);
            }

            while (v67);
            v70 = 10844;
            do
            {
              if (v29)
              {
                v71 = *v41++;
                v67 = v71;
                *(a2 + v70) = v71;
                if (v71 > 1)
                {
                  goto LABEL_21;
                }
              }

              else
              {
                *(a2 + v70) = 0;
              }

              v70 += 24;
              v36 = (v36 - 1);
            }

            while (v36);
            v72 = 0;
            if (v34 <= 2)
            {
              v73 = 2;
            }

            else
            {
              v73 = v34;
            }

            v74 = (v73 - 2);
            while (v74 != v72)
            {
              v75 = a2 + 8 * v72++;
              if (*(v75 + 24) > *(v75 + 32))
              {
                *(a2 + 4) = v72;
                break;
              }
            }

            if (v17[4])
            {
              v76 = NOCANCEL + v17 - v41;
              if (v76 >= 1)
              {
                v77 = (NOCANCEL + v17 - v41);
                v78 = v17;
                do
                {
                  v79 = *v41++;
                  *v78++ = v79;
                  --v77;
                }

                while (v77);
              }

              NOCANCEL = v76;
              v80 = v26 == 8;
              v26 *= 2;
              if (!v80)
              {
                goto LABEL_35;
              }
            }

            else
            {
              v76 = NOCANCEL;
            }

            v112 = a2 + 10824;
            v113 = (a2 + 9624);
            if (a4)
            {
              if (v76 > 2 && *v17 == 10)
              {
                v82 = v76 - 1;
                if (v17[v76 - 1] == 10 && *(a2 + 8) <= 254)
                {
                  v83 = malloc_type_malloc(0x4768uLL, 0x10000402151C985uLL);
                  if (!v83)
                  {
                    break;
                  }

                  v84 = v83;
                  v17[v82] = 0;
                  if (!tzparse((v17 + 1), v83, 0) && v84[2] == 2)
                  {
                    v85 = *(a2 + 12);
                    v86 = v84[3];
                    if (v86 + v85 <= 50)
                    {
                      v84[2709] += v85;
                      v84[2715] += v85;
                      if (v86 >= 1)
                      {
                        v87 = 0;
                        do
                        {
                          v88 = *(v84 + v87 + 16968);
                          v89 = *(a2 + 12);
                          *(a2 + 12) = v89 + 1;
                          *(a2 + 16968 + v89) = v88;
                          ++v87;
                        }

                        while (v87 < v84[3]);
                      }

                      v90 = (v84 + 6);
                      v91 = v84[1];
                      if (v91 < 1)
                      {
                        LODWORD(v92) = 0;
                      }

                      else
                      {
                        v92 = 0;
                        while (*&v90[8 * v92] <= *(v25 + 8 * *(a2 + 4) - 8))
                        {
                          if (v91 == ++v92)
                          {
                            goto LABEL_143;
                          }
                        }
                      }

                      if (v92 < v91)
                      {
                        v92 = v92;
                        v93 = *(a2 + 4);
                        do
                        {
                          if (v93 > 1199)
                          {
                            break;
                          }

                          *(v25 + 8 * v93) = *&v90[8 * v92];
                          v113[v93] = *(v84 + v92 + 9624) + *(a2 + 8);
                          v93 = *(a2 + 4) + 1;
                          *(a2 + 4) = v93;
                          ++v92;
                        }

                        while (v84[1] > v92);
                      }

LABEL_143:
                      v94 = *(a2 + 8);
                      *(a2 + 8) = v94 + 1;
                      v95 = v112 + 24 * v94;
                      v96 = *(v84 + 2706);
                      *(v95 + 16) = *(v84 + 1355);
                      *v95 = v96;
                      v97 = *(a2 + 8);
                      *(a2 + 8) = v97 + 1;
                      v98 = v112 + 24 * v97;
                      v99 = *(v84 + 678);
                      *(v98 + 16) = *(v84 + 1358);
                      *v98 = v99;
                    }
                  }

                  free(v84);
                }
              }
            }

            v100 = *(a2 + 4);
            if (v100 < 2)
            {
LABEL_156:
              v18 = 0;
            }

            else
            {
              v101 = *(a2 + 4);
              v102 = *v113;
              v103 = v100 - 1;
              v104 = 32;
              v105 = 9625;
              while (!typesequiv(a2, *(a2 + v105), v102, v67) || *(a2 + v104) - *(a2 + 24) != 0x2F0605980)
              {
                v104 += 8;
                ++v105;
                if (!--v103)
                {
                  goto LABEL_152;
                }
              }

              *(a2 + 16) = 1;
LABEL_152:
              v106 = v100 - 1;
              v107 = v113[v106];
              v108 = (v100 - 2);
              v109 = v100 - 1;
              v110 = 8 * (v101 - 2) + 24;
              v111 = v108 + 9624;
              while (!typesequiv(a2, v107, *(a2 + v111), v67) || *(v25 + 8 * v106) - *(a2 + v110) != 0x2F0605980)
              {
                --v109;
                v110 -= 8;
                --v111;
                if (v109 <= 0)
                {
                  goto LABEL_156;
                }
              }

              v18 = 0;
              *(a2 + 20) = 1;
            }

            goto LABEL_22;
          }
        }
      }
    }
  }

LABEL_21:
  v18 = 0xFFFFFFFFLL;
LABEL_22:
  free(v17);
  return v18;
}

int atexit(void (*a1)(void))
{
  *(&v2 + 1) = a1;
  *&v2 = 1;
  v3 = 0;
  v4 = 0;
  return atexit_register(&v2);
}

uint64_t tzparse(char **__mode, uint64_t a2, size_t a3)
{
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v53 = 0;
  if (a3)
  {
    v57 = __mode;
    v5 = j__strsignal_r(__mode, a2, a3);
    v6 = (__mode + v5);
    v7 = 511;
    if (v5 < 0x1FF)
    {
      v7 = v5;
    }

    v55 = v7;
    v53 = 0;
  }

  else
  {
    v10 = getzname(__mode, &v57, &v55);
    if (!*v10)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = getoffset(v10, &v53);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v8 = tzload("posixrules", a2, 0, 0);
  if (v8)
  {
    *a2 = 0;
  }

  v54 = 0;
  v52 = 0;
  if (!*v6)
  {
    v54 = 0;
    *(a2 + 4) = 0x100000000;
    *(a2 + 10824) = -v53;
    *(a2 + 10832) = 0;
    v11 = v55;
    v12 = v55 + 1;
    goto LABEL_67;
  }

  if (*v6 == 60)
  {
    v9 = 0;
    v56 = (v6 + 1);
    while (*(v6 + v9 + 1))
    {
      if (*(v6 + v9 + 1) == 62)
      {
        v54 = v9;
        v13 = v6 + v9 + 2;
        goto LABEL_19;
      }

      ++v9;
    }

    return 0xFFFFFFFFLL;
  }

  v56 = v6;
  v13 = getzname(v6, &v56, &v54);
LABEL_19:
  v14 = *v13;
  v15 = v14 > 0x3B;
  v16 = (1 << v14) & 0x800100000000001;
  if (v15 || v16 == 0)
  {
    v13 = getoffset(v13, &v52);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v52 = v53 - 3600;
  }

  if (*v13)
  {
    v18 = 1;
  }

  else
  {
    v18 = v8 == 0;
  }

  v19 = ",M4.1.0,M10.5.0";
  if (v18)
  {
    v19 = v13;
  }

  v20 = *v19;
  if (*v19)
  {
    if (v20 == 59 || v20 == 44)
    {
      memset(v51, 0, sizeof(v51));
      memset(v50, 0, sizeof(v50));
      v21 = getrule(v19 + 1, v51);
      if (v21)
      {
        if (*v21 == 44)
        {
          v22 = getrule(v21 + 1, v50);
          if (v22)
          {
            if (!*v22)
            {
              v23 = 0;
              v24 = v52;
              v25 = v53;
              *(a2 + 10824) = -v52;
              *(a2 + 10832) = 1;
              v11 = v55;
              v12 = v55 + 1;
              *(a2 + 10836) = v55 + 1;
              *(a2 + 10848) = -v25;
              *(a2 + 10856) = 0;
              v26 = (a2 + 24);
              v27 = (a2 + 9624);
              *(a2 + 4) = 0x200000000;
              v28 = 1970;
              do
              {
                v29 = transtime(v23, v28, v51, v25);
                v30 = transtime(v23, v28, v50, v24);
                if (v29 <= v30)
                {
                  v31 = v29;
                }

                else
                {
                  v31 = v30;
                }

                if (v29 <= v30)
                {
                  v32 = v30;
                }

                else
                {
                  v32 = v29;
                }

                *v26 = v31;
                *v27 = v29 > v30;
                v26[1] = v32;
                v27[1] = v29 <= v30;
                v33 = *(a2 + 4);
                *(a2 + 4) = v33 + 2;
                if ((v28 & 3) != 0)
                {
                  v34 = 0;
                }

                else
                {
                  v34 = 100 * (v28 / 0x64) != v28 || 400 * (v28 / 0x190) == v28;
                }

                v23 += 86400 * *(&year_lengths + v34);
                ++v28;
                v26 += 2;
                v27 += 2;
              }

              while (v33 < 1197);
              goto LABEL_67;
            }
          }
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v35 = *(a2 + 4);
  if (v35 <= 0)
  {
    v42 = v53;
  }

  else
  {
    v36 = (a2 + 9624);
    v37 = a2 + 10824;
    v38 = *(a2 + 4);
    v39 = (a2 + 9624);
    while (1)
    {
      v40 = *v39++;
      v41 = v37 + 24 * v40;
      if (!*(v41 + 8))
      {
        break;
      }

      if (!--v38)
      {
        goto LABEL_60;
      }
    }

    v38 = -*v41;
LABEL_60:
    v42 = v53;
    v43 = (a2 + 24);
    do
    {
      v44 = v37 + 24 * *v36;
      *v36 = *(v44 + 8);
      if (!*(v44 + 20))
      {
        *v43 += v42 - v38;
      }

      if (!*(v44 + 8))
      {
        v38 = -*v44;
      }

      ++v43;
      ++v36;
      --v35;
    }

    while (v35);
  }

  *(a2 + 10824) = -v42;
  *(a2 + 10832) = 0;
  *(a2 + 10848) = -v52;
  *(a2 + 10856) = 1;
  v11 = v55;
  v12 = v55 + 1;
  *(a2 + 10860) = v55 + 1;
  *(a2 + 8) = 2;
LABEL_67:
  *(a2 + 12) = v12;
  v45 = v54;
  if (v54)
  {
    v12 = v11 + v54 + 2;
    *(a2 + 12) = v12;
  }

  if (v12 > 0x200)
  {
    return 0xFFFFFFFFLL;
  }

  j__strtod((a2 + 16968), v57);
  v48 = v47 + v11;
  *(v47 + v11) = 0;
  if (!v45)
  {
    return 0;
  }

  v49 = v48 + 1;
  j__strtod((v48 + 1), v56);
  result = 0;
  *(v49 + v45) = 0;
  return result;
}

char *getoffset(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = v3 == 43 || v3 == 45;
  result = getsecs(&a1[v4], a2);
  if (v3 == 45 && result != 0)
  {
    *a2 = -*a2;
  }

  return result;
}

uint64_t getzname(uint64_t __mode, uint64_t *a2, void *a3)
{
  if (*__mode == 60 && (j__strmode(__mode, 0x3E), v6))
  {
    *a2 = __mode + 1;
    *a3 = v6 + ~__mode;
    return v6 + 1;
  }

  else
  {
    *a2 = __mode;
    v8 = *__mode;
    result = __mode;
    if (*__mode)
    {
      result = __mode;
      do
      {
        if ((v8 - 46) > 0xFCu || (v8 - 58) > 0xFFFFFFF5)
        {
          break;
        }

        v10 = *++result;
        v8 = v10;
      }

      while (v10);
    }

    *a3 = result - __mode;
  }

  return result;
}

size_t confstr(int a1, char *a2, size_t a3)
{
  v17 = 0;
  if (a1 >= 0x10000)
  {
    if (a1 != 0x10000)
    {
      if (a1 == 65537)
      {
        MEMORY[0x1EEE9AC00](*&a1, a2);
        v5 = v16;
        MEMORY[0x193AD5FD0](v16, 1024);
        if (__dirhelper_func && __dirhelper_func(1, v16, 1024))
        {
          goto LABEL_30;
        }

        v10 = *__error();
        v11 = getenv("TMPDIR");
        if (v11)
        {
          v5 = v11;
          if (!access(v11, 2))
          {
            goto LABEL_30;
          }
        }

        v5 = "/var/tmp/";
        if (!access("/var/tmp/", 2))
        {
          goto LABEL_30;
        }

        v12 = __error();
        if (v10 != 12)
        {
LABEL_37:
          result = 0;
          v13 = 5;
          goto LABEL_38;
        }

        result = 0;
        v13 = 12;
      }

      else
      {
        if (a1 == 65538)
        {
          MEMORY[0x1EEE9AC00](*&a1, a2);
          v5 = v16;
          MEMORY[0x193AD5FD0](v16, 1024);
          v6 = __dirhelper_func;
          if (__dirhelper_func)
          {
            v7 = 2;
            goto LABEL_20;
          }

          goto LABEL_21;
        }

LABEL_35:
        v12 = __error();
        result = 0;
        v13 = 22;
      }

LABEL_38:
      *v12 = v13;
      return result;
    }

    MEMORY[0x1EEE9AC00](*&a1, a2);
    v5 = v16;
    MEMORY[0x193AD5FD0](v16, 1024);
    v6 = __dirhelper_func;
    if (__dirhelper_func)
    {
      v7 = 0;
LABEL_20:
      if (!v6(v7, v16, 1024))
      {
        goto LABEL_21;
      }

LABEL_30:
      if (a2 && a3)
      {
        MEMORY[0x193AD6A30](a2, v5, a3);
      }

      return j__strsignal_r(v5, a2, a3) + 1;
    }

LABEL_21:
    if (*__error() == 12)
    {
      return 0;
    }

    v12 = __error();
    goto LABEL_37;
  }

  v5 = "";
  switch(a1)
  {
    case 1:
      *v18 = 0x100000008;
      if (sysctl(v18, 2u, 0, &v17, 0, 0) == -1)
      {
        return 0;
      }

      if (!a2 || !a3)
      {
        goto LABEL_17;
      }

      result = malloc_type_malloc(v17, 0x7D7F62A8uLL);
      if (result)
      {
        v9 = result;
        if (sysctl(v18, 2u, result, &v17, 0, 0) == -1)
        {
          v14 = *__error();
          free(v9);
          v15 = __error();
          result = 0;
          *v15 = v14;
        }

        else
        {
          j__strtod(a2, v9);
          a2[a3 - 1] = 0;
          free(v9);
LABEL_17:
          result = v17;
        }
      }

      break;
    case 2:
    case 3:
    case 4:
    case 7:
    case 10:
    case 13:
    case 20:
    case 21:
    case 22:
    case 23:
    case 26:
    case 27:
    case 30:
    case 31:
    case 34:
    case 35:
      goto LABEL_30;
    case 5:
    case 6:
    case 24:
    case 25:
      v5 = "-W 32";
      goto LABEL_30;
    case 8:
    case 9:
    case 11:
    case 12:
    case 28:
    case 29:
    case 32:
    case 33:
      v5 = "-W 64";
      goto LABEL_30;
    case 14:
      v5 = "_POSIX_V6_LP64_OFF64";
      goto LABEL_30;
    default:
      goto LABEL_35;
  }

  return result;
}

char *getsecs(char *result, uint64_t *a2)
{
  if (result)
  {
    if ((*result - 48) <= 9)
    {
      v2 = 0;
      v3 = *result;
      while (1)
      {
        v2 = 10 * v2 + v3 - 48;
        if (v2 > 167)
        {
          break;
        }

        v4 = *++result;
        v3 = v4;
        if ((v4 - 48) >= 0xA)
        {
          if (v2 < 0)
          {
            return 0;
          }

          v5 = 3600 * v2;
          *a2 = v5;
          if (*result == 58)
          {
            if ((result[1] - 48) <= 9)
            {
              v6 = 0;
              v7 = result + 2;
              v8 = result[1];
              while (1)
              {
                v6 = 10 * v6 + v8 - 48;
                if (v6 > 59)
                {
                  break;
                }

                v9 = *v7++;
                v8 = v9;
                if ((v9 - 48) >= 0xA)
                {
                  if (v6 < 0)
                  {
                    return 0;
                  }

                  result = v7 - 1;
                  v10 = v5 + (60 * v6);
                  *a2 = v10;
                  if (*(v7 - 1) == 58)
                  {
                    if ((*v7 - 48) <= 9)
                    {
                      v11 = 0;
                      v12 = *v7;
                      while (1)
                      {
                        v11 = 10 * v11 + v12 - 48;
                        if (v11 > 60)
                        {
                          break;
                        }

                        v13 = *++v7;
                        v12 = v13;
                        if ((v13 - 48) >= 0xA)
                        {
                          if (v11 < 0)
                          {
                            return 0;
                          }

                          *a2 = v10 + v11;
                          return v7;
                        }
                      }
                    }

                    return 0;
                  }

                  return result;
                }
              }
            }

            return 0;
          }

          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

BOOL typesequiv(_BOOL8 result, int a2, size_t a3, _xlocale *a4)
{
  if (result)
  {
    v4 = *(result + 8);
    v5 = v4 <= a2 || v4 <= a3;
    if (!v5 && (v6 = result + 10824 + 24 * a2, v7 = result + 10824 + 24 * a3, *v6 == *v7) && *(v6 + 8) == *(v7 + 8) && *(v6 + 16) == *(v7 + 16) && *(v6 + 20) == *(v7 + 20))
    {
      return j__strncasecmp_l((result + 16968 + *(v6 + 12)), (result + 16968 + *(v7 + 12)), a3, a4) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *__cdecl setlocale(int a1, const char *a2)
{
  if (a1 >= 7)
  {
    v2 = __error();
    result = 0;
    *v2 = 22;
    return result;
  }

  v4 = a2;
  if (a2)
  {
    os_unfair_lock_lock(&unk_1ED3F17A0);
    v7 = "C";
    v8 = 6;
    v9 = &word_1ED3F1988;
    do
    {
      v10 = j__strnstr(v9, v7, v6);
      v7 += 32;
      v9 = v10 + 32;
      --v8;
    }

    while (v8);
    if (*v4)
    {
      LODWORD(v12) = v4;
      if (!a1)
      {
        j__strmode(v4, 0x2F);
        if (v13)
        {
          v16 = (v13 - 1);
          do
          {
            v17 = *(v16++ + 2);
          }

          while (v17 == 47);
          if (v17)
          {
            v18 = &word_1ED3F1988;
            v19 = 1;
            v20 = 5;
            while (1)
            {
              v21 = v19;
              if (v16 - v4 >= 32)
              {
                break;
              }

              v22 = v18;
              v23 = v20;
              MEMORY[0x193AD6A30](&new_categories[32 * v19], v4, v16 - v4 + 1);
              v4 = v16 - 1;
              do
              {
                v26 = *++v4;
                v25 = v26;
              }

              while (v26 == 47);
              v19 = v21 + 1;
              v27 = v25;
              v16 = v4;
              if (v25)
              {
                do
                {
                  if (v27 == 47)
                  {
                    break;
                  }

                  v28 = *++v16;
                  v27 = v28;
                }

                while (v28);
              }

              if (v25)
              {
                v18 = (v22 + 32);
                v20 = v23 - 1;
                if (v21 != 6)
                {
                  continue;
                }
              }

              if (v21 <= 5)
              {
                do
                {
                  v22 = j__strnstr(v22 + 32, v22, v24);
                  --v23;
                }

                while (v23);
              }

              goto LABEL_44;
            }
          }
        }

        else if (j__strsignal_r(v4, v14, v15) <= 0x1F)
        {
          v37 = &word_1ED3F1988;
          v38 = 6;
          do
          {
            v37 = j__strnstr(v37, v4, v24) + 32;
            --v38;
          }

          while (v38);
LABEL_44:
          v39 = byte_1ED3F17B6;
          v40 = off_1ED3F17E8;
          if (off_1ED3F17E8)
          {
            atomic_fetch_add(off_1ED3F17E8, 1u);
          }

          v41 = "C";
          v42 = 1;
          v43 = &unk_1ED3F1898;
          while (1)
          {
            j__strnstr(v43, v41, v24);
            if (!loadlocale(v42))
            {
              break;
            }

            ++v42;
            v41 += 32;
            v43 += 32;
            if (v42 == 7)
            {
              if (v40)
              {
                if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
                {
                  v44 = *(v40 + 1);
                  if (v44)
                  {
                    v44(v40);
                  }
                }
              }

              os_unfair_lock_unlock(&unk_1ED3F17A0);
              goto LABEL_54;
            }
          }

          v46 = *__error();
          if (v42 >= 2)
          {
            v47 = v42 - 1;
            v48 = 1;
            v49 = &unk_1ED3F1898;
            v50 = &word_1ED3F1988;
            do
            {
              j__strnstr(v50, v49, v45);
              if (!loadlocale(v48))
              {
                *v50 = 67;
                loadlocale(v48);
              }

              ++v48;
              v49 += 32;
              v50 += 32;
              --v47;
            }

            while (v47);
          }

          byte_1ED3F17B6 = v39;
          off_1ED3F17E8 = v40;
          if (v40)
          {
            if (atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
            {
              v51 = *(v40 + 1);
              if (v51)
              {
                v51(v40);
              }
            }
          }

          *__error() = v46;
          goto LABEL_30;
        }

LABEL_29:
        *__error() = 22;
LABEL_30:
        os_unfair_lock_unlock(&unk_1ED3F17A0);
        return 0;
      }
    }

    else
    {
      if (!a1)
      {
        v30 = -6;
        v31 = &word_1ED3F1988;
        while (1)
        {
          locale_env = __get_locale_env(v30 + 7);
          if (j__strsignal_r(locale_env, v33, v34) >= 0x20)
          {
            goto LABEL_29;
          }

          j__strnstr(v31, locale_env, v35);
          v31 += 32;
          if (__CFADD__(v30++, 1))
          {
            goto LABEL_44;
          }
        }
      }

      v12 = __get_locale_env(a1);
      v4 = v12;
    }

    if (j__strsignal_r(v12, v11, v6) >= 0x20)
    {
      goto LABEL_29;
    }

    j__strnstr(&new_categories[32 * a1], v4, v29);
    os_unfair_lock_unlock(&unk_1ED3F17A0);

    return loadlocale(a1);
  }

  else if (a1)
  {
    return &current_categories + 32 * a1;
  }

  else
  {
LABEL_54:

    return currentlocale();
  }
}

char *getrule(char *result, uint64_t a2)
{
  v2 = *result;
  if (v2 == 77)
  {
    *a2 = 2;
    if ((result[1] - 48) <= 9)
    {
      v8 = 0;
      v9 = result[1];
      result += 3;
      while (1)
      {
        v8 = 10 * v8 + v9 - 48;
        if (v8 > 12)
        {
          break;
        }

        v9 = *(result++ - 1);
        if ((v9 - 48) >= 0xA)
        {
          if (v8 >= 1)
          {
            *(a2 + 12) = v8;
            if (*(result - 2) == 46 && (*(result - 1) - 48) <= 9)
            {
              v10 = 0;
              v11 = *(result - 1);
              while (1)
              {
                v10 = 10 * v10 + v11 - 48;
                if (v10 > 5)
                {
                  break;
                }

                v12 = *result++;
                v11 = v12;
                if ((v12 - 48) >= 0xA)
                {
                  if (v10 >= 1)
                  {
                    *(a2 + 8) = v10;
                    if (*(result - 1) == 46 && (*result - 48) <= 9)
                    {
                      v5 = 0;
                      v13 = *result;
                      while (1)
                      {
                        v5 = 10 * v5 + v13 - 48;
                        if (v5 > 6)
                        {
                          break;
                        }

                        v14 = *++result;
                        v13 = v14;
                        if ((v14 - 48) >= 0xA)
                        {
LABEL_31:
                          if (v5 < 0)
                          {
                            return 0;
                          }

LABEL_32:
                          *(a2 + 4) = v5;
                          if (*result == 47)
                          {
                            return getsecs(result + 1, (a2 + 16));
                          }

                          *(a2 + 16) = 7200;
                          return result;
                        }
                      }
                    }
                  }

                  return 0;
                }
              }
            }
          }

          return 0;
        }
      }
    }
  }

  else if (v2 == 74)
  {
    *a2 = 0;
    v4 = *++result;
    v3 = v4;
    if ((v4 - 48) <= 9)
    {
      v5 = 0;
      v6 = v3;
      while (1)
      {
        v5 = 10 * v5 + v6 - 48;
        if (v5 > 365)
        {
          break;
        }

        v7 = *++result;
        v6 = v7;
        if ((v7 - 48) >= 0xA)
        {
          if (v5 >= 1)
          {
            goto LABEL_32;
          }

          return 0;
        }
      }
    }
  }

  else if ((v2 - 48) <= 9)
  {
    *a2 = 1;
    if ((*result - 48) <= 9)
    {
      v5 = 0;
      v15 = *result;
      while (1)
      {
        v5 = 10 * v5 + v15 - 48;
        if (v5 > 365)
        {
          break;
        }

        v16 = *++result;
        v15 = v16;
        if ((v16 - 48) >= 0xA)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return 0;
}

uint64_t transtime(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  HIDWORD(v5) = -1030792151 * a2 + 85899344;
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 2;
  LODWORD(v5) = HIDWORD(v5);
  v6 = (v5 >> 4) < 0xA3D70B;
  if (v4 > 0x28F5C28)
  {
    v6 = 1;
  }

  v7 = (a2 & 3) == 0 && v6;
  v8 = *a3;
  if (*a3)
  {
    if (v8 == 1)
    {
      v27 = a1 + 86400 * a3[1];
    }

    else if (v8 == 2)
    {
      v9 = a3[3];
      v10 = v9 - 1;
      if (v9 >= 2)
      {
        v11 = &mon_lengths[12 * v7];
        v12 = (v9 - 1);
        do
        {
          v13 = *v11++;
          a1 += 86400 * v13;
          --v12;
        }

        while (v12);
      }

      v14 = (v9 + 9) % 12;
      v15 = a2 - (v9 < 3);
      v16 = 1374389535 * v15;
      v17 = HIDWORD(v16);
      v16 >>= 63;
      v18 = (((26215 * (26 * v14 + 24)) >> 18) + ((26215 * (26 * v14 + 24)) >> 31) + v16 + (v17 >> 7) + v15 - 100 * (v16 + (v17 >> 5)) + 2 * (v15 / -100) + ((v15 - 100 * (v16 + (v17 >> 5)) + (((v15 - 100 * (v16 + (v17 >> 5))) >> 13) & 3)) >> 2) + 1) % 7;
      v19 = v18 + (v18 < 0 ? 7 : 0);
      v21 = a3[1];
      v20 = a3[2];
      v22 = __OFSUB__(v21, v19);
      v23 = v21 - v19;
      if (v23 < 0 != v22)
      {
        v23 += 7;
      }

      if (v20 >= 2)
      {
        v24 = mon_lengths[12 * v7 + v10];
        v25 = v23 - v20 + 8 * v20 - 7;
        v26 = v20 - 1;
        while (v23 + 7 < v24)
        {
          v23 += 7;
          if (!--v26)
          {
            v23 = v25;
            break;
          }
        }
      }

      v27 = a1 + 86400 * v23;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v28 = a3[1];
    if (v7 && v28 > 59)
    {
      v27 = a1 + 86400 * (v28 - 1) + 86400;
    }

    else
    {
      v27 = a1 + 86400 * (v28 - 1);
    }
  }

  return v27 + a4 + *(a3 + 2);
}

double strtod(const char *a1, char **a2)
{
  v6 = 0.0;
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

  _ffpp_strtoencf64_l(&v6, a1, a2, v4);
  return v6;
}

unint64_t notify_register_tz(unint64_t result, int *a2, size_t a3, _xlocale *a4)
{
  if (*MEMORY[0x1E69E99F8])
  {
    v5 = result;
    result = *a2;
    if ((result & 0x80000000) == 0)
    {
      result = notify_cancel(result);
    }

    if (!v5 || !*v5)
    {
      *a2 = -1;
      return result;
    }

    HIDWORD(v16) = 0;
    if (j__strncasecmp_l(v5, "/var/db/timezone/localtime", a3, a4))
    {
      v8 = j__strsignal_r(v5, v6, v7);
      v10 = MEMORY[0x1EEE9AC00](v8, v9);
      v11 = &v16 - ((v10 + 42) & 0xFFFFFFFFFFFFFFF0);
      if (v10 <= 0xFFFFFFFFFFFFFFE4)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x193AD5FD0](v11 + 26, v12);
      strcpy(v11, "com.apple.system.timezone");
      *&v11[j__strsignal_r(v11, v13, v14)] = 46;
      v15 = strcat(v11, v5);
      result = notify_register_check(v15, a2);
      if (result)
      {
        goto LABEL_16;
      }

      if (v11 != "com.apple.system.timezone" && notify_monitor_file())
      {
        result = notify_cancel(*a2);
LABEL_16:
        *a2 = 0xFFFFFFFFLL;
        return result;
      }
    }

    else
    {
      result = notify_register_check("com.apple.system.timezone", a2);
      if (result)
      {
        goto LABEL_16;
      }
    }

    return notify_check(*a2, &v16 + 1);
  }

  return result;
}

unint64_t settzname()
{
  v0 = lclptr;
  tzname[0] = &wildabbr;
  off_1ED3F0C18 = &wildabbr;
  daylight = 0;
  result = _st_set_timezone(0);
  __darwin_altzone = 0;
  if (!v0)
  {
    tzname[0] = &gmt;
    off_1ED3F0C18 = &gmt;
    return result;
  }

  v4 = v0[1];
  if (v4)
  {
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      v7 = (v0 + 2406);
      goto LABEL_8;
    }
  }

  else if (v0[2] == 1)
  {
    v6 = 0;
    v7 = "";
LABEL_8:
    v8 = v0 + 4242;
    v9 = 7;
    v10 = v6;
    while (1)
    {
      v11 = &v0[6 * v7[v10] + 2706];
      if ((v9 & 4) != 0 && *(v11 + 8))
      {
        v9 &= ~4u;
        daylight = 1;
      }

      if (*(v11 + 8))
      {
        if ((v9 & 2) != 0)
        {
          v9 &= ~2u;
          off_1ED3F0C18 = (v8 + *(v11 + 12));
          __darwin_altzone = -*v11;
        }
      }

      else if (v9)
      {
        v9 &= ~1u;
        tzname[0] = v8 + *(v11 + 12);
        result = _st_set_timezone(-*v11);
      }

      if (!v10)
      {
        break;
      }

      v12 = v10-- < 1;
      if (v12 || !v9)
      {
        goto LABEL_25;
      }
    }

    if ((v9 & 2) != 0)
    {
      __darwin_altzone = -*v11;
    }

    if (v9)
    {
      result = _st_set_timezone(-*v11);
    }
  }

LABEL_25:
  v13 = v0[3];
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = v0 + 4242;
    do
    {
      result = j__mkdirx_np("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 :+-._", *(v15 + v14));
      if (!result)
      {
        *(v15 + v14) = 95;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  v16 = v0[2];
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = v0 + 4242;
    v19 = v0 + 2709;
    do
    {
      v20 = *v19;
      v19 += 6;
      v21 = v18 + v20;
      result = j__strsignal_r(v18 + v20, v2, v3);
      if (result >= 0x100)
      {
        result = j__strncasecmp_l(v21, "Local time zone must be set--see zic manual page", v3, v22);
        if (result)
        {
          *(v21 + 255) = 0;
          v16 = v0[2];
        }
      }

      ++v17;
    }

    while (v17 < v16);
  }

  return result;
}

uint64_t _mkpath(int a1, char *a2, mode_t a3, char **a4)
{
  v8 = *__error();
  memset(&v31, 0, sizeof(v31));
  if (!mkdirat(a1, a2, a3))
  {
    if (!a4)
    {
      v10 = 0;
      v11 = 0;
      goto LABEL_27;
    }

    v13 = strdup(a2);
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

  v9 = *__error();
  switch(v9)
  {
    case 2:
      v14 = strdup(a2);
      v10 = v14;
      if (!v14)
      {
        v11 = 0;
LABEL_29:
        v12 = 12;
        break;
      }

      v17 = &v14[j__strsignal_r(v14, v15, v16)];
      v18 = -1;
      v19 = -1;
      do
      {
        v20 = &v17[v18 - 1];
        if (v20 > v10)
        {
          v19 = v18;
          if (v17[v18] == 46)
          {
            if (*v20 == 47)
            {
              v19 = v18 - 2;
            }

            else
            {
              v19 = v18;
            }
          }
        }

        if (&v17[v19] > v10)
        {
          v19 -= v17[v19] == 47;
        }

        v21 = v19 < v18;
        v18 = v19;
      }

      while (v21);
      if (v19 > -2)
      {
        v11 = 0;
      }

      else
      {
        v17[v19 + 1] = 0;
        a2 = strdup(v10);
        v11 = a2;
        if (!a2)
        {
          goto LABEL_29;
        }
      }

      if (mkdirat(a1, a2, a3))
      {
        v23 = 1;
        while (1)
        {
          v24 = strrchr(v10, 47);
          if (!v24)
          {
            goto LABEL_68;
          }

          *v24 = 0;
          if (!mkdirat(a1, v10, 0x1FFu))
          {
            break;
          }

          if (*__error() == 17)
          {
            if (fstatat(a1, v10, &v31, 0) || (v31.st_mode & 0xF000) != 0x4000)
            {
              v12 = 20;
              goto LABEL_69;
            }

            if (a4)
            {
              v28 = strdup(v10);
              v27 = 0;
              goto LABEL_54;
            }

            v27 = 0;
            goto LABEL_55;
          }

          ++v23;
          if (*__error() != 2)
          {
LABEL_40:
            v22 = __error();
            goto LABEL_25;
          }
        }

        memset(&v30, 0, sizeof(v30));
        if (fstatat(a1, v10, &v30, 0) != -1)
        {
          if ((~v30.st_mode & 0xC0) == 0)
          {
            v27 = 0;
            goto LABEL_52;
          }

          v27 = v30.st_mode | 0xC0;
          if (fchmodat(a1, v10, v30.st_mode | 0xC0, 0) != -1)
          {
LABEL_52:
            if (a4)
            {
              v28 = strdup(v10);
LABEL_54:
              *a4 = v28;
            }

LABEL_55:
            if (v23 >= 2)
            {
              do
              {
                v10[j__strsignal_r(v10, v25, v26)] = 47;
                if (mkdirat(a1, v10, 0x1FFu) == -1)
                {
                  if (*__error() != 17)
                  {
                    goto LABEL_40;
                  }
                }

                else if (v27 && fchmodat(a1, v10, v27, 0) == -1)
                {
                  goto LABEL_68;
                }

                --v23;
              }

              while (v23 > 1);
            }

            if (mkdirat(a1, a2, a3) == -1)
            {
              v12 = *__error();
              if (*__error() == 17 && !fstatat(a1, a2, &v31, 0))
              {
                if ((v31.st_mode & 0xF000) == 0x4000)
                {
                  v12 = v12;
                }

                else
                {
                  v12 = 20;
                }
              }

              break;
            }

LABEL_27:
            v12 = 0;
            break;
          }
        }

LABEL_68:
        v12 = 2;
        break;
      }

      if (!a4)
      {
        goto LABEL_27;
      }

      v13 = strdup(a2);
LABEL_9:
      v12 = 0;
      *a4 = v13;
      break;
    case 21:
      v10 = 0;
      v11 = 0;
      v12 = 17;
      break;
    case 17:
      v10 = 0;
      v11 = 0;
      if (fstatat(a1, a2, &v31, 0))
      {
        v12 = 5;
      }

      else if ((v31.st_mode & 0xF000) == 0x4000)
      {
        v12 = 17;
      }

      else
      {
        v12 = 20;
      }

      break;
    default:
      v22 = __error();
      v10 = 0;
      v11 = 0;
LABEL_25:
      v12 = *v22;
      break;
  }

LABEL_69:
  free(v10);
  free(v11);
  *__error() = v8;
  return v12;
}

intmax_t strtoimax_l(const char *nptr, char **endptr, int base, locale_t a4)
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
    v7 = &__c_locale;
  }

  if (v7 != -1)
  {
    v6 = v7;
  }

  if (!v7)
  {
    v6 = &__c_locale;
  }

  v8 = nptr;
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

  if ((base & 0xFFFFFFEF) != 0 || v12 != 48)
  {
    v16 = base == 0;
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

    v16 = base == 0;
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
    v15 = base;
  }

  if (v15 - 37 < 0xFFFFFFDD)
  {
    v18 = 0;
LABEL_59:
    *__error() = 22;
    v25 = 1;
    v20 = v18;
    if (!endptr)
    {
      return v20;
    }

    goto LABEL_60;
  }

LABEL_35:
  v18 = 0;
  v19 = 0;
  if (v9 == 45)
  {
    v20 = 0x8000000000000000;
  }

  else
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v21 = v20 / v15;
  while (1)
  {
    v22 = v12 - 48;
    if ((v12 - 48) >= 0xAu)
    {
      if ((v12 - 65) > 0x19u)
      {
        if ((v12 - 97) > 0x19u)
        {
          break;
        }

        v22 = v12 - 87;
      }

      else
      {
        v22 = v12 - 55;
      }
    }

    if (v15 <= v22)
    {
      break;
    }

    v23 = -1;
    if ((v19 & 0x80000000) == 0 && v18 <= v21)
    {
      if (v18 == v21 && v22 > (v20 % v15))
      {
        v18 = v20 / v15;
      }

      else
      {
        v18 = v18 * v15 + v22;
        v23 = 1;
      }
    }

    v24 = *v8++;
    v12 = v24;
    v19 = v23;
  }

  if ((v19 & 0x80000000) == 0)
  {
    if (v19)
    {
      v25 = 0;
      if (v9 == 45)
      {
        v20 = -v18;
      }

      else
      {
        v20 = v18;
      }

      if (!endptr)
      {
        return v20;
      }

      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v28 = __error();
  v25 = 0;
  *v28 = 34;
  if (!endptr)
  {
    return v20;
  }

LABEL_60:
  v26 = (v8 - 1);
  if (v25)
  {
    v26 = nptr;
  }

  *endptr = v26;
  return v20;
}

int getmntinfo_r_np(statfs **a1, int a2)
{
  memset(v6, 0, sizeof(v6));
  v3 = getmntinfo_internal(v6, a2);
  if (v3)
  {
    *a1 = v6[0];
  }

  else
  {
    v4 = *__error();
    free(v6[0]);
    *__error() = v4;
  }

  return v3;
}

int backtrace(void **a1, int a2)
{
  v5 = 0;
  backtrace_get_pcs_func(a1, a2, &v5, 1, 0);
  result = v5;
  if (v5)
  {
    while (1)
    {
      v4 = (result - 1);
      if (a1[v4])
      {
        break;
      }

      --result;
      if (!v4)
      {
        return 0;
      }
    }
  }

  return result;
}

statfs *getmntinfo_internal(uint64_t a1, int a2)
{
  result = *(a1 + 8);
  if (result <= 0)
  {
    result = getfsstat(0, 0, 2);
    *(a1 + 8) = result;
    if ((result & 0x80000000) != 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    result = getfsstat(*a1, v5, a2);
    *(a1 + 8) = result;
    if ((result & 0x80000000) != 0)
    {
      return 0;
    }
  }

  while (*(a1 + 16) <= 2168 * result)
  {
    if (*a1)
    {
      free(*a1);
      LODWORD(result) = *(a1 + 8);
    }

    v6 = 2168 * (result + 1);
    *(a1 + 16) = v6;
    result = malloc_type_malloc(v6, 0x100004087E0324AuLL);
    *a1 = result;
    if (!result)
    {
      break;
    }

    result = getfsstat(result, *(a1 + 16), a2);
    *(a1 + 8) = result;
    if ((result & 0x80000000) != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getopt_internal(uint64_t a1, uint64_t a2, unsigned __int8 *a3, const char **a4, int *a5, unsigned int a6)
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a3;
  v11 = optind;
  v12 = &optreset;
  if (optind)
  {
    v13 = optreset;
    v14 = getopt_internal_posixly_correct;
    if (getopt_internal_posixly_correct != -1 && optreset == 0)
    {
      v13 = 0;
      v16 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 1;
    optreset = 1;
    optind = 1;
    v13 = 1;
  }

  v14 = getenv("POSIXLY_CORRECT") != 0;
  getopt_internal_posixly_correct = v14;
  v16 = v13 == 0;
LABEL_11:
  v17 = *v8;
  if (v17 == 45)
  {
    v18 = a6 | 2;
LABEL_20:
    ++v8;
    goto LABEL_22;
  }

  if (v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = v17 == 43;
  }

  v18 = a6 & 0xFFFFFFFE;
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = a6;
  }

  if (v17 == 43)
  {
    goto LABEL_20;
  }

  v18 = v20;
LABEL_22:
  v57 = a4;
  v58 = v8;
  optarg = 0;
  v21 = &off_1EAC9D000;
  v22 = &off_1EAC9D000;
  if (v16)
  {
    v23 = nonopt_start;
    v24 = nonopt_end;
  }

  else
  {
    v24 = -1;
    nonopt_end = -1;
    nonopt_start = -1;
    v23 = 0xFFFFFFFFLL;
  }

  v25 = 0x1EAC9C000uLL;
  v26 = place;
  v27 = &EMSG_0;
  if (!v13)
  {
LABEL_26:
    v28 = *v26;
    if (!*v26)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

  while (1)
  {
LABEL_27:
    *v12 = 0;
    if (v11 >= a1)
    {
      *(v25 + 3488) = v27;
      if (v24 == -1)
      {
        if (v23 == -1)
        {
LABEL_58:
          v43 = 0xFFFFFFFFLL;
          *(v22 + 27) = -1;
          *(v21 + 28) = -1;
          return v43;
        }
      }

      else
      {
        v40 = a2;
        v41 = v21;
        v42 = v22;
        permute_args(v23, v24, v11, v40);
        v22 = v42;
        v21 = v41;
        LODWORD(v23) = v23 - v24 + optind;
      }

      optind = v23;
      goto LABEL_58;
    }

    v29 = *(a2 + 8 * v11);
    *(v25 + 3488) = v29;
    if (*v29 == 45)
    {
      v28 = v29[1];
      if (v29[1])
      {
        break;
      }
    }

    *(v25 + 3488) = v27;
    if ((v18 & 2) != 0)
    {
      optind = v11 + 1;
      optarg = v29;
      return 1;
    }

    if ((v18 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    if (v23 == -1)
    {
      v30 = 0;
      *(v21 + 28) = v11;
      v23 = v11;
    }

    else if (v24 == -1)
    {
      v30 = 0;
    }

    else
    {
      v31 = v11;
      v32 = a2;
      v11 = v21;
      v33 = v18;
      v34 = v25;
      v35 = v12;
      v36 = a2;
      v37 = v27;
      v38 = a1;
      v39 = v22;
      permute_args(v23, v24, v31, v32);
      v22 = v39;
      a1 = v38;
      v27 = v37;
      a2 = v36;
      v12 = v35;
      v25 = v34;
      v18 = v33;
      v21 = v11;
      LODWORD(v11) = optind;
      v23 = (v23 - v24 + optind);
      *(v21 + 28) = v23;
      *(v22 + 27) = -1;
      v30 = *v12;
      v24 = -1;
    }

    v11 = (v11 + 1);
    optind = v11;
    v26 = v27;
    if (!v30)
    {
      goto LABEL_26;
    }
  }

  v26 = v29 + 1;
  if (v23 != -1 && v24 == -1)
  {
    *(v22 + 27) = v11;
    v24 = v11;
  }

  *(v25 + 3488) = v26;
  if (v28 == 45)
  {
    if (v29[2])
    {
      v28 = 45;
      goto LABEL_48;
    }

    optind = v11 + 1;
    *(v25 + 3488) = v27;
    if (v24 != -1)
    {
      v45 = a2;
      v46 = v21;
      v47 = v22;
      permute_args(v23, v24, v11 + 1, v45);
      v22 = v47;
      v21 = v46;
      optind += v23 - v24;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (!v57 || v26 == *(a2 + 8 * v11) || (v18 & 4) == 0 && v28 != 45)
  {
    goto LABEL_66;
  }

  dash_prefix = 0;
  if (v28 == 58)
  {
    v44 = 0;
LABEL_63:
    v49 = parse_long_options(a2, v58, v57, a5, v44, v18);
    if (v49 != -1)
    {
      v43 = v49;
      *(v25 + 3488) = v27;
      return v43;
    }

    v26 = *(v25 + 3488);
LABEL_66:
    v50 = v26 + 1;
    *(v25 + 3488) = v26 + 1;
    v51 = *v26;
    v43 = v51;
    if (v51 != 58)
    {
      if (v51 == 45)
      {
        if (!*v50)
        {
          j__strmode(v58, v43);
          if (!v52)
          {
            return 0xFFFFFFFFLL;
          }

LABEL_79:
          if (*(v52 + 1) == 58)
          {
            optarg = 0;
            if (*v50)
            {
              optarg = v50;
              v55 = optind;
            }

            else
            {
              v55 = optind;
              if (*(v52 + 2) != 58)
              {
                v55 = optind + 1;
                optind = v55;
                if (v55 >= a1)
                {
                  *(v25 + 3488) = v27;
                  if (opterr && *v58 != 58)
                  {
                    warnx("option requires an argument -- %c", v43);
                  }

                  optopt = v43;
                  goto LABEL_106;
                }

                optarg = *(a2 + 8 * v55);
              }
            }

            *(v25 + 3488) = v27;
            optind = v55 + 1;
          }

          else if (!*v50)
          {
            ++optind;
          }

          return v43;
        }

LABEL_88:
        if (opterr && *v58 != 58)
        {
          getopt_internal_cold_1();
        }

        optopt = v43;
        return 63;
      }

      j__strmode(v58, v51);
      if (v52)
      {
        if (v57 && v43 == 87 && *(v52 + 1) == 59)
        {
          if (!*v50)
          {
            v53 = optind + 1;
            optind = v53;
            if (v53 >= a1)
            {
              *(v25 + 3488) = v27;
              if (opterr && *v58 != 58)
              {
                warnx("option requires an argument -- %c", 87);
              }

              optopt = 87;
              goto LABEL_106;
            }

            *(v25 + 3488) = *(a2 + 8 * v53);
          }

          dash_prefix = 2;
          result = parse_long_options(a2, v58, v57, a5, 0, v18);
          *(v25 + 3488) = v27;
          return result;
        }

        goto LABEL_79;
      }

      if (v43 == 45)
      {
        if (!*v50)
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_88;
      }
    }

    if (!*v50)
    {
      ++optind;
    }

    goto LABEL_88;
  }

  if (v28 != 45)
  {
    j__strmode(v58, v28);
    v44 = v48 != 0;
    goto LABEL_63;
  }

  *(v25 + 3488) = v26 + 1;
  if (v26[1])
  {
    v44 = 0;
    dash_prefix = 1;
    goto LABEL_63;
  }

LABEL_106:
  if (*v58 == 58)
  {
    return 58;
  }

  else
  {
    return 63;
  }
}

void qsort_b(void *__base, size_t __nel, size_t __width, void *__compar)
{
  if (*(__compar + 2))
  {
    v4 = *(__compar + 2);
  }

  else
  {
    v4 = 0;
  }

  qsort_r(__base, __nel, __width, __compar, v4);
}

void qsort_r(void *__base, size_t __nel, size_t __width, void *a4, int (__cdecl *__compar)(void *, const void *, const void *))
{
  v10 = 2 * flsl(__nel) - 2;

  _qsort_0(__base, __nel, __width, a4, __compar, v10);
}

char *_os_assumes_log(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_1(a1, a2, a3, a4, a5, a6, a7, a8, v34, v36, v38, v40, v42, v44, v46.dli_fname, v46.dli_fbase, v46.dli_sname, v46.dli_saddr, v47, v48[0]);
  MEMORY[0x193AD5FD0](v10);
  OUTLINED_FUNCTION_0_0();
  v11 = dladdr(v9, &v46);
  if (v11)
  {
    OUTLINED_FUNCTION_4(v11, v12, v13, v14, v15, v16, v17, v18, v35, v37, v39, v41, v43, v45, v46.dli_fname, v46.dli_fbase);
    uuid_unparse(uu, out);
    dli_fname = v46.dli_fname;
    strrchr(v46.dli_fname, 47);
    OUTLINED_FUNCTION_3();
  }

  else
  {
    v8 = 0;
    dli_fname = 0;
  }

  v20 = OUTLINED_FUNCTION_5(v11, v12, "%s:%lu");
  OUTLINED_FUNCTION_6(v20, v21, "0x%llx");
  build = _os_get_build(v49);
  v29 = OUTLINED_FUNCTION_1(build, v23, "assertion failed: %s: %s + %lu [%s]: %s", v24, v25, v26, v27, v28, v49, dli_fname, v8, out, v50, v45, v46.dli_fname, v46.dli_fbase, v46.dli_sname, v46.dli_saddr, v47, v48[0]);
  snprintf(v29, v30, v31);
  if ((_os_log_redirect(v46.dli_fbase, v48) & 1) == 0)
  {
    _os_debug_log_error_offset(v48, v9);
  }

  if (getpid() == 1)
  {
    v32 = "OS_ASSUMES_FATAL_PID1";
  }

  else
  {
    v32 = "OS_ASSUMES_FATAL";
  }

  result = getenv(v32);
  if (result)
  {
    qword_1EAC9CAC0 = v48;
    if (_os_crash_callback)
    {
      _os_crash_callback(v48);
    }

    __break(1u);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0()
{

  return _os_alloc_once();
}

double OUTLINED_FUNCTION_0_0()
{
  result = 0.0;
  *(v0 - 83) = 0;
  *(v0 - 112) = 0u;
  *(v0 - 96) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(int a1@<W8>, uint64_t a2, int a3, sigset_t a4, uint64_t a5, int a6)
{
  a6 = a1;
  a4 = -1;

  return sigprocmask(3, &a4, 0);
}

void OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 - 176) = 0;
  *(v16 - 168) = 0;

  _os_get_image_uuid(a16, (v16 - 176));
}

void _os_get_image_uuid(uint64_t a1, uuid_t uu)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = 32;
    while (1)
    {
      v7 = v6 + a1;
      if (*(v6 + a1) == 27)
      {
        break;
      }

      v6 += *(v7 + 4);
      if (v3 == ++v5)
      {
        goto LABEL_9;
      }
    }

    uuid_copy(uu, (v7 + 8));
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = 0;
    v5 = 0;
  }

  if (v5 == v8)
  {
LABEL_9:

    uuid_clear(uu);
  }
}

void uuid_unparse(const uuid_t uu, uuid_string_t out)
{
  v2 = 0;
  do
  {
    if (v2 <= 0xA && ((1 << v2) & 0x550) != 0)
    {
      *out++ = 45;
    }

    *out = a0123456789abcd_0[uu[v2] >> 4];
    out[1] = a0123456789abcd_0[uu[v2] & 0xF];
    out += 2;
    ++v2;
  }

  while (v2 != 16);
  *out = 0;
}

uint64_t OUTLINED_FUNCTION_5(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 - 176), 0x40uLL, a3);
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, const char *a3)
{

  return snprintf((v3 - 200), 0x18uLL, a3);
}

uint64_t _os_get_build(void *a1)
{
  v3 = 32;
  *v4 = 0x4100000001;
  result = sysctl(v4, 2u, a1, &v3, 0, 0);
  if (!result && v3 == 1)
  {
    strcpy(a1, "99Z999");
  }

  return result;
}

uint64_t _os_log_redirect(const mach_header_64 *a1, uint64_t a2)
{
  size = 0;
  v3 = getsectiondata(a1, "__DATA", "__os_assumes_log", &size);
  if (v3)
  {
    v4 = size > 7;
  }

  else
  {
    v4 = 0;
  }

  if (v4 && *v3)
  {
    return (*v3)(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t _os_debug_log_write(int a1, char *__sig, size_t a3)
{
  if (*(MEMORY[0x1E69E99F0] + 192) == -1)
  {
    v4 = *(MEMORY[0x1E69E99F0] + 200);
  }

  else
  {
    v4 = _os_alloc_once();
  }

  v5 = *(v4 + 16);
  v6 = *(v4 + 8);
  if (v6)
  {
    result = v6(__sig);
    if (result)
    {
      return result;
    }
  }

  if (v5 < 0)
  {
    goto LABEL_13;
  }

  v8 = j__strsignal_r(__sig, __sig, a3);
  v9 = 0;
  v10 = v8 + 1;
  __sig[v8] = 10;
  while (1)
  {
    result = write_NOCANCEL();
    if (result == -1)
    {
      break;
    }

LABEL_10:
    v9 += result;
    if (v9 >= v10)
    {
      return result;
    }
  }

  if (*__error() == 4)
  {
    result = 0;
    goto LABEL_10;
  }

  _os_debug_log_write_error();
  *(v4 + 16) = -1;
LABEL_13:
  dyld_image_header_containing_address();
  _dyld_get_image_uuid();
  if (_dyld_get_shared_cache_uuid())
  {
    _dyld_get_shared_cache_range();
  }

  os_log_simple_type_from_asl();
  return __os_log_simple_offset();
}

double atof(const char *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return strtod_l(a1, 0, v3);
}

uint64_t _os_debug_log_init(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(a1 + 20) = v2 & 0xFD;
  if (_os_debug_log_redirect_func < snprintf_l || _os_debug_log_redirect_func >= _Block_copy)
  {
    *(a1 + 8) = _os_debug_log_redirect_func;
  }

  result = getenv("LIBDISPATCH_LOG");
  if (!result && (result = getenv("OS_DEBUG_LOG")) == 0 || (v7 = result, result = j__strncasecmp_l(result, "YES", v5, v6), !result))
  {
    v7 = "syslog";
  }

  if (*v7 == 78 && v7[1] == 79 && !v7[2])
  {
    *(a1 + 16) = -1;
    v15 = v2 | 2;
    goto LABEL_33;
  }

  result = j__strncasecmp_l(v7, "syslog", v5, v6);
  if (!result)
  {
    *(a1 + 16) = -1;
    return result;
  }

  result = j__strncasecmp_l(v7, "stderr", v8, v9);
  if (result)
  {
    result = j__strncasecmp_l(v7, "stdout", v10, v11);
    if (result)
    {
      if (j__strncasecmp_l(v7, "file", v12, v13))
      {
        result = open_NOCANCEL();
      }

      else
      {
        result = _os_debug_log_open_file(0);
      }

      *(a1 + 16) = result;
      if (result != -1)
      {
        if ((result & 0x80000000) != 0)
        {
          return result;
        }

        goto LABEL_27;
      }

      v15 = *(a1 + 20) | 2;
LABEL_33:
      *(a1 + 20) = v15;
      return result;
    }

    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  *(a1 + 16) = v14;
LABEL_27:
  if (!*(a1 + 8))
  {
    *(a1 + 20) |= 1u;
    v20.tv_sec = 0;
    *&v20.tv_usec = 0;
    gettimeofday(&v20, 0);
    *a1 = mach_absolute_time();
    v16 = *(a1 + 16);
    v17 = getprogname();
    v18 = getpid();
    dprintf(v16, "=== os_debug_log log file opened for %s[%u] at %ld.%06u", v17, v18, v20.tv_sec, v20.tv_usec);
    if (*(a1 + 20))
    {
      info = 0;
      if (!mach_timebase_info(&info))
      {
        dprintf(*(a1 + 16), " [ns=ticks*%u/%u]", info.numer, info.denom);
      }
    }

    return dprintf(*(a1 + 16), " ===\n");
  }

  return result;
}

uint64_t atoll(const char *a1)
{
  v1 = __locale_key;
  v2 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v1);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = &__global_locale;
  }

  return strtoll_l(a1, 0, 10, v3);
}

const char *__cdecl fmtcheck(const char *a1, const char *a2)
{
  if (!a1)
  {
    return a2;
  }

  v3 = a1;
  v4 = 0;
  v9 = a2;
  v10 = a1;
  while (1)
  {
    next_format = get_next_format(&v10, v4);
    if (next_format == 23)
    {
      break;
    }

    v6 = next_format;
    if (next_format != 24)
    {
      v7 = get_next_format(&v9, v4);
      v4 = v6;
      if (v6 == v7)
      {
        continue;
      }
    }

    return a2;
  }

  return v3;
}

int __snprintf_chk(char *a1, size_t a2, int a3, size_t a4, const char *a5, ...)
{
  va_start(va, a5);
  if (a4 < a2)
  {
    __chk_fail_overflow();
  }

  return vsnprintf(a1, a2, a5, va);
}

uint64_t get_next_format(unsigned __int8 **a1, int a2)
{
  v3 = *a1;
  if (a2 == 21)
  {
    *a1 = v3 + 1;
  }

  else
  {
    if (a2 == 22)
    {
      *a1 = v3 + 1;

      return get_next_format_from_precision(a1);
    }

    while (1)
    {
      j__strmode(v3, 0x25);
      if (!v3)
      {
        *a1 = 0;
        return 23;
      }

      v5 = v3[1];
      if (v5 != 37)
      {
        break;
      }

      LODWORD(v3) = v3 + 2;
    }

    if (!v3[1])
    {
      *a1 = v3 + 1;
      return 24;
    }

    v6 = v3 + 1;
    while (j__mkdirx_np("#'0- +", v5))
    {
      v7 = *++v6;
      LOBYTE(v5) = v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }

    if (v5 == 42)
    {
      *a1 = v6;
      return 21;
    }

LABEL_22:
    v8 = v6 - 1;
    do
    {
      v10 = *++v8;
      v9 = v10;
    }

    while ((v10 - 48) < 0xA);
    *a1 = v8;
    if (!v9)
    {
      return 24;
    }
  }

  return get_next_format_from_width(a1);
}

uint64_t get_next_format_from_precision(unsigned __int8 **a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = **a1;
  v5 = 1;
  if (v4 > 0x6B)
  {
    if (**a1 > 0x73u)
    {
      if (v4 == 116)
      {
        v2 = 7;
      }

      else
      {
        if (v4 != 122)
        {
          goto LABEL_20;
        }

        v2 = 8;
      }
    }

    else
    {
      if (v4 == 108)
      {
        v6 = *++v3;
        v4 = v6;
        if (v6 != 108)
        {
          if (v4)
          {
            LODWORD(v5) = 0;
            v2 = 3;
            goto LABEL_21;
          }

          goto LABEL_48;
        }

        v2 = 4;
        v5 = 2;
        goto LABEL_19;
      }

      if (v4 != 113)
      {
        goto LABEL_20;
      }

      v2 = 4;
    }

    goto LABEL_18;
  }

  if (v4 == 76)
  {
    v2 = 6;
LABEL_18:
    v5 = 1;
LABEL_19:
    v3 = &(*a1)[v5];
    LODWORD(v5) = 0;
    v4 = *v3;
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_48:
    *a1 = v3;
    return 24;
  }

  if (v4 != 104)
  {
    if (v4 != 106)
    {
      goto LABEL_20;
    }

    v2 = 5;
    goto LABEL_19;
  }

  v8 = *++v3;
  v4 = v8;
  v5 = 2;
  if (v8 == 104)
  {
    v2 = 1;
    goto LABEL_19;
  }

  if (!v4)
  {
    goto LABEL_48;
  }

  LODWORD(v5) = 0;
  v2 = 2;
LABEL_21:
  if (!j__mkdirx_np("diouxX", v4))
  {
    if (v4 == 110)
    {
      *a1 = v3;
      return *&asc_18E98A774[4 * v2];
    }

    if (j__mkdirx_np("DOU", v4))
    {
      *a1 = v3;
      if (v5)
      {
        return 4;
      }

      else
      {
        return 24;
      }
    }

    if (j__mkdirx_np("aAeEfFgG", v4))
    {
      if (!v2 || v2 == 3)
      {
        *a1 = v3;
        return 17;
      }

      if (v2 == 6)
      {
        *a1 = v3;
        return 18;
      }

      goto LABEL_48;
    }

    *a1 = v3;
    result = 24;
    if (v4 <= 98)
    {
      if (v4 == 67)
      {
        v10 = v5 == 0;
        v11 = 3;
      }

      else
      {
        if (v4 != 83)
        {
          return result;
        }

        v10 = v5 == 0;
        v11 = 20;
      }
    }

    else
    {
      if (v4 == 115)
      {
        if (v2)
        {
          v12 = 24;
        }

        else
        {
          v12 = 19;
        }

        if (v2 == 3)
        {
          return 20;
        }

        else
        {
          return v12;
        }
      }

      if (v4 != 112)
      {
        if (v4 == 99)
        {
          if (v2)
          {
            v9 = 24;
          }

          else
          {
            v9 = 2;
          }

          if (v2 == 3)
          {
            return 3;
          }

          else
          {
            return v9;
          }
        }

        return result;
      }

      v10 = v5 == 0;
      v11 = 4;
    }

    if (v10)
    {
      return 24;
    }

    else
    {
      return v11;
    }
  }

  if (v2 <= 3)
  {
    *a1 = v3;
    if (v2 >= 3)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }

  if (v2 <= 6)
  {
    if (v2 == 4)
    {
      *a1 = v3;
      return 5;
    }

    if (v2 == 5)
    {
      *a1 = v3;
      return 6;
    }

    goto LABEL_48;
  }

  *a1 = v3;
  if (v2 == 7)
  {
    return 7;
  }

  else
  {
    return 8;
  }
}

void *__fts_open(void *a1, uint64_t a2, size_t a3)
{
  v3 = a2;
  v5 = *(a2 + 64);
  if ((v5 & 2) != 0)
  {
    *(a2 + 64) = v5 | 4;
  }

  v6 = *a1;
  if (!*a1)
  {
    goto LABEL_9;
  }

  v7 = 0;
  v8 = a1 + 1;
  v9 = *a1;
  do
  {
    v10 = j__strsignal_r(v9, a2, a3);
    if (v10 > v7)
    {
      v7 = v10;
    }

    v11 = *v8++;
    LODWORD(v9) = v11;
  }

  while (v11);
  if (v7 + 1 >= 0x401)
  {
    v13 = 0;
    v14 = a1 + 1;
    do
    {
      v15 = j__strsignal_r(v6, a2, a3);
      if (v15 > v13)
      {
        v13 = v15;
      }

      v16 = *v14++;
      LODWORD(v6) = v16;
    }

    while (v16);
    v12 = v13 + 1;
  }

  else
  {
LABEL_9:
    v12 = 1024;
  }

  if (fts_palloc(v3, v12))
  {
    goto LABEL_50;
  }

  v17 = fts_alloc(v3, "", 0);
  if (!v17)
  {
LABEL_49:
    free(v3[4]);
LABEL_50:
    free(v3);
    return 0;
  }

  v20 = v17;
  *(v17 + 43) = -1;
  v21 = *a1;
  if (*a1)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = a1 + 1;
    v26 = *a1;
    while (1)
    {
      v27 = j__strsignal_r(v26, v18, v19);
      v28 = fts_alloc(v3, v26, v27);
      if (!v28)
      {
        break;
      }

      v29 = v28;
      *(v28 + 43) = 0;
      *(v28 + 1) = v20;
      *(v28 + 5) = v28 + 26;
      if ((v3[8] & 0x400) != 0)
      {
        v30 = -1;
      }

      else
      {
        v30 = v3[8] & 1;
      }

      v31 = fts_stat2(v3, v28, v30, -1, 0);
      if (v31 == 5)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      *(v29 + 44) = v32;
      if (v3[7])
      {
        *(v29 + 2) = v24;
        v24 = v29;
      }

      else
      {
        *(v29 + 2) = 0;
        if (v24)
        {
          *(v23 + 2) = v29;
        }

        else
        {
          v24 = v29;
        }

        v23 = v29;
      }

      v26 = v25[v22++];
      if (!v26)
      {
        if (v3[7] && v22 != 1)
        {
          v24 = fts_sort(v3, v24, v22);
        }

        goto LABEL_37;
      }
    }

LABEL_46:
    if (v24)
    {
      do
      {
        v36 = *(v24 + 16);
        fts_free(v24);
        v24 = v36;
      }

      while (v36);
    }

    fts_free(v20);
    goto LABEL_49;
  }

  v24 = 0;
LABEL_37:
  v33 = fts_alloc(v3, "", 0);
  *v3 = v33;
  if (!v33)
  {
    goto LABEL_46;
  }

  *(v33 + 2) = v24;
  *(v33 + 44) = 9;
  v34 = *(v3 + 16);
  if ((v34 & 4) == 0)
  {
    v35 = open_NOCANCEL();
    *(v3 + 10) = v35;
    v34 = *(v3 + 16);
    if (v35 < 0)
    {
      v34 |= 4u;
      *(v3 + 16) = v34;
    }
  }

  if ((v34 & 4) == 0 && getenv("FTS_USE_THREAD_FCHDIR"))
  {
    *(v3 + 16) = v34 | 0x400;
  }

  if (!v21)
  {
    fts_free(v20);
  }

  return v3;
}

uint64_t get_next_format_from_width(unsigned __int8 **a1)
{
  v1 = *a1;
  if (**a1 != 46)
  {
    goto LABEL_7;
  }

  v3 = *++v1;
  v2 = v3;
  if (v3 == 42)
  {
    *a1 = v1;
    return 22;
  }

  if ((v2 - 48) <= 9)
  {
    do
    {
      v5 = *++v1;
      LOBYTE(v2) = v5;
    }

    while ((v5 - 48) < 0xA);
  }

  if (!v2)
  {
    *a1 = v1;
    return 24;
  }

  else
  {
LABEL_7:
    *a1 = v1;
    return get_next_format_from_precision(a1);
  }
}

FTS *__cdecl fts_open(char *const *a1, int a2, int (__cdecl *a3)(const FTSENT **, const FTSENT **))
{
  if ((a2 & 0xFFFFF300) != 0)
  {
    *__error() = 22;
    return 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B0040C1B4BCF7uLL);
  if (!v7)
  {
    return 0;
  }

  v9 = a2 | 8;
  if (a2 < 0x800)
  {
    v9 = a2;
  }

  v7[7] = a3;
  *(v7 + 16) = v9;

  return __fts_open(a1, v7, v8);
}

uint64_t fts_palloc(uint64_t a1, int a2)
{
  v3 = (a2 + *(a1 + 44) + 256);
  *(a1 + 44) = v3;
  v4 = *(a1 + 32);
  if (v3 < 0xFFFF)
  {
    v5 = malloc_type_realloc(v4, v3, 0x8AC4C6AEuLL);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *(a1 + 32) = v6;
      return result;
    }

    free(*(a1 + 32));
    *(a1 + 32) = 0;
  }

  else
  {
    free(v4);
    *(a1 + 32) = 0;
    *__error() = 63;
  }

  return 1;
}

_DWORD *fts_alloc(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = 112;
  if ((*(a1 + 64) & 8) == 0)
  {
    v6 = 263;
  }

  v7 = malloc_type_calloc(1uLL, v6 + a3, 0xFF558929uLL);
  v8 = v7;
  if (v7)
  {
    v7[15] = -1;
    *(v7 + 6) = *(a1 + 32);
    *(v7 + 33) = a3;
    *(v7 + 46) = 3;
    if ((*(a1 + 64) & 8) == 0)
    {
      *(v7 + 12) = (v7 + a3 + 113) & 0xFFFFFFFFFFFFFFF8;
    }

    j__mkdtempat_np(v7 + 104, a2);
  }

  return v8;
}

uint64_t fts_stat2(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (a4 == -1)
  {
    v8 = *(a2 + 40);
    v7 = -2;
  }

  else
  {
    v7 = a4;
    v8 = (a2 + 104);
  }

  if ((*(a1 + 64) & 8) != 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = *(a2 + 96);
  }

  v10 = *(a1 + 64) & 2;
  memset(v23, 0, sizeof(v23));
  if (!a3 && a5)
  {
    if (!v10 || (~*(a5 + 4) & 0xA000) != 0)
    {
      *&v9->st_dev = *a5;
      v13 = *(a5 + 16);
      v14 = *(a5 + 32);
      v15 = *(a5 + 64);
      v9->st_mtimespec = *(a5 + 48);
      v9->st_ctimespec = v15;
      *&v9->st_uid = v13;
      v9->st_atimespec = v14;
      v16 = *(a5 + 80);
      v17 = *(a5 + 96);
      v18 = *(a5 + 128);
      *&v9->st_blksize = *(a5 + 112);
      *v9->st_qspare = v18;
      v9->st_birthtimespec = v16;
      *&v9->st_size = v17;
      goto LABEL_24;
    }

    v10 = 1;
  }

  if (!(v10 | a3))
  {
    goto LABEL_44;
  }

  if (fstatat(v7, v8, v9, 0))
  {
    v11 = *__error();
    if (!fstatat(v7, v8, v9, 32))
    {
      if (v11 == 62)
      {
        *(a2 + 56) = 62;
      }

      *__error() = 0;
      return 13;
    }

LABEL_23:
    *(a2 + 56) = v11;
    *&v9->st_blksize = 0u;
    *v9->st_qspare = 0u;
    v9->st_birthtimespec = 0u;
    *&v9->st_size = 0u;
    v9->st_mtimespec = 0u;
    v9->st_ctimespec = 0u;
    *&v9->st_uid = 0u;
    v9->st_atimespec = 0u;
    result = 10;
    *&v9->st_dev = 0u;
    return result;
  }

  if (a3 == -1 && (v9->st_mode & 0xF000) != 0x4000)
  {
LABEL_44:
    if (fstatat(v7, v8, v9, 32))
    {
      v11 = *__error();
      goto LABEL_23;
    }
  }

LABEL_24:
  v19 = v9->st_mode & 0xF000;
  if (v19 == 40960)
  {
    return 12;
  }

  if (v19 == 0x8000)
  {
    return 8;
  }

  if (v19 != 0x4000)
  {
    return 3;
  }

  st_dev = v9->st_dev;
  *(a2 + 80) = v9->st_dev;
  st_ino = v9->st_ino;
  *(a2 + 72) = st_ino;
  *(a2 + 84) = v9->st_nlink;
  if (*(a2 + 104) == 46 && (!*(a2 + 105) || *(a2 + 105) == 46 && !*(a2 + 106)))
  {
    return 5;
  }

  for (i = *(a2 + 8); ; i = *(i + 8))
  {
    if (*(i + 86) < 0)
    {
      return 1;
    }

    if (st_ino == *(i + 72) && st_dev == *(i + 80))
    {
      break;
    }
  }

  *a2 = i;
  return 2;
}

void fts_free(_DWORD *a1)
{
  if ((a1[15] & 0x80000000) == 0)
  {
    v2 = *__error();
    close_NOCANCEL();
    *__error() = v2;
  }

  free(a1);
}

FTSENT *__cdecl fts_read(FTS *a1)
{
  fts_cur = a1->fts_cur;
  if (!a1->fts_cur)
  {
    return fts_cur;
  }

  fts_options = a1->fts_options;
  if ((fts_options & 0x200) != 0)
  {
    return 0;
  }

  fts_instr = fts_cur->fts_instr;
  fts_cur->fts_instr = 3;
  if (fts_instr == 2)
  {
    p_fts_info = &fts_cur->fts_info;
    fts_info = fts_cur->fts_info;
    if ((fts_info & 0xFFFE) == 0xC)
    {
      v7 = fts_stat2(a1, fts_cur, 1, -1, 0);
      fts_cur->fts_info = v7;
      if (v7 == 1 && (a1->fts_options & 4) == 0)
      {
        v8 = open_NOCANCEL();
        fts_cur->fts_symfd = v8;
        if (v8 < 0)
        {
          fts_cur->fts_errno = *__error();
          fts_cur->fts_info = 7;
        }

        else
        {
          fts_cur->fts_flags |= 2u;
        }
      }

      return fts_cur;
    }

    if (fts_info == 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (fts_instr == 1)
    {
      fts_cur->fts_info = fts_stat2(a1, fts_cur, 0, -1, 0);
      return fts_cur;
    }

    p_fts_info = &fts_cur->fts_info;
    if (fts_cur->fts_info == 1)
    {
      if (fts_instr == 4)
      {
LABEL_33:
        if ((fts_cur->fts_flags & 2) != 0)
        {
          close_NOCANCEL();
          fts_cur->fts_symfd = -1;
        }

        fts_child = a1->fts_child;
        if (fts_child)
        {
          do
          {
            fts_link = fts_child->fts_link;
            fts_free(fts_child);
            fts_child = fts_link;
          }

          while (fts_link);
          a1->fts_child = 0;
        }

        *p_fts_info = 6;
        return fts_cur;
      }

LABEL_15:
      if ((fts_options & 0x40) != 0 && fts_cur->fts_dev != a1->fts_dev)
      {
        goto LABEL_33;
      }

      v9 = a1->fts_child;
      if (v9)
      {
        if ((fts_options & 0x100) == 0)
        {
          if (fts_safe_changedir(a1, fts_cur, -1, fts_cur->fts_accpath))
          {
            fts_cur->fts_errno = *__error();
            fts_cur->fts_flags |= 1u;
            v10 = a1->fts_child;
            if (v10)
            {
              v11 = a1->fts_child;
              do
              {
                v11->fts_accpath = v11->fts_parent->fts_accpath;
                v11 = v11->fts_link;
              }

              while (v11);
            }
          }

          else
          {
            v10 = a1->fts_child;
          }

          goto LABEL_62;
        }

        a1->fts_options = fts_options & 0xFFFFFCFF;
        do
        {
          v19 = v9->fts_link;
          fts_free(v9);
          v9 = v19;
        }

        while (v19);
        a1->fts_child = 0;
      }

      v10 = fts_build(a1, 3);
      a1->fts_child = v10;
      if (!v10)
      {
        if ((a1->fts_options & 0x200) != 0)
        {
          return 0;
        }

        return fts_cur;
      }

LABEL_62:
      a1->fts_child = 0;
      goto LABEL_76;
    }
  }

  v12 = fts_cur;
  do
  {
    v10 = v12->fts_link;
    if (!v10)
    {
      fts_cur = v12->fts_parent;
      fts_free(v12);
      if (fts_cur->fts_level == -1)
      {
        fts_free(fts_cur);
        fts_cur = 0;
        *__error() = 0;
        a1->fts_cur = 0;
        return fts_cur;
      }

      a1->fts_path[fts_cur->fts_pathlen] = 0;
      if (fts_cur->fts_level)
      {
        fts_flags = fts_cur->fts_flags;
        if ((fts_flags & 2) != 0)
        {
          if ((a1->fts_options & 4) != 0 || !fts_fchdir(a1, fts_cur->fts_symfd))
          {
            close_NOCANCEL();
            fts_cur->fts_symfd = -1;
            goto LABEL_70;
          }

          v20 = *__error();
          close_NOCANCEL();
          fts_cur->fts_symfd = -1;
          *__error() = v20;
        }

        else if ((fts_flags & 1) != 0 || !fts_safe_changedir(a1, fts_cur, -1, ".."))
        {
          goto LABEL_70;
        }
      }

      else if ((a1->fts_options & 4) != 0 || !fts_fchdir(a1, a1->fts_rfd))
      {
LABEL_70:
        if (fts_cur->fts_errno)
        {
          v22 = 7;
        }

        else
        {
          v22 = 6;
        }

        fts_cur->fts_info = v22;
        a1->fts_cur = fts_cur;
        return fts_cur;
      }

      a1->fts_options |= 0x200u;
      a1->fts_cur = fts_cur;
      return 0;
    }

    fts_free(v12);
    if (!v10->fts_level)
    {
      a1->fts_cur = v10;
      if ((a1->fts_options & 4) != 0 || !fts_fchdir(a1, a1->fts_rfd))
      {
        fts_load(a1, v10);
        return a1->fts_cur;
      }

      else
      {
        fts_cur = 0;
        a1->fts_options |= 0x200u;
      }

      return fts_cur;
    }

    v13 = v10->fts_instr;
    v12 = v10;
  }

  while (v13 == 4);
  if (v13 == 2)
  {
    v14 = fts_stat2(a1, v10, 1, -1, 0);
    v10->fts_info = v14;
    if (v14 == 1 && (a1->fts_options & 4) == 0)
    {
      v15 = open_NOCANCEL();
      v10->fts_symfd = v15;
      if (v15 < 0)
      {
        v10->fts_errno = *__error();
        v10->fts_info = 7;
      }

      else
      {
        v10->fts_flags |= 2u;
      }
    }

    v10->fts_instr = 3;
  }

LABEL_76:
  fts_parent = v10->fts_parent;
  fts_path = fts_parent->fts_path;
  fts_pathlen = fts_parent->fts_pathlen;
  if (fts_path[fts_pathlen - 1] == 47)
  {
    LODWORD(fts_pathlen) = fts_pathlen - 1;
  }

  v26 = &a1->fts_path[fts_pathlen];
  *v26 = 47;
  j__mkostemp(v26 + 1, v10 + 104);
  a1->fts_cur = v10;
  return v10;
}

char *fts_load(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = *(a2 + 66);
  v4 = (a2 + 104);
  j__mkostemp(*(a1 + 32), a2 + 104);
  result = strrchr(v4, 47);
  if (result)
  {
    v8 = result;
    if (result != v4 || result[1])
    {
      v9 = j__strsignal_r(result + 1, v6, v7);
      result = j__mkostemp(v4, v8 + 1);
      *(a2 + 66) = v9;
    }
  }

  v10 = *(a1 + 32);
  *(a2 + 40) = v10;
  *(a2 + 48) = v10;
  *(a1 + 24) = *(a2 + 80);
  return result;
}

int fts_close(FTS *a1)
{
  fts_cur = a1->fts_cur;
  if (fts_cur)
  {
    if (fts_cur->fts_level < 0)
    {
      fts_link = fts_cur;
    }

    else
    {
      do
      {
        fts_link = fts_cur->fts_link;
        if (!fts_link)
        {
          fts_link = fts_cur->fts_parent;
        }

        fts_free(fts_cur);
        fts_cur = fts_link;
      }

      while ((fts_link->fts_level & 0x80000000) == 0);
    }

    fts_free(fts_link);
  }

  if ((a1->fts_options & 4) != 0)
  {
    fts_rfd = -1;
  }

  else
  {
    fts_rfd = a1->fts_rfd;
  }

  fts_child = a1->fts_child;
  if (fts_child)
  {
    do
    {
      v6 = fts_child->fts_link;
      fts_free(fts_child);
      fts_child = v6;
    }

    while (v6);
  }

  free(a1->fts_array);
  a1->fts_array = 0;
  free(a1->fts_path);
  a1->fts_path = 0;
  if (a1->fts_options < 0)
  {
    fts_compar = a1->fts_compar;
    if (fts_compar)
    {
      _Block_release(fts_compar);
    }
  }

  if (fts_rfd == -1)
  {
    v9 = 0;
  }

  else
  {
    v8 = *__error();
    if (fts_fchdir(a1, fts_rfd))
    {
      v8 = *__error();
      v9 = -1;
    }

    else
    {
      v9 = 0;
    }

    if (close_NOCANCEL())
    {
      v8 = *__error();
      v9 = -1;
    }

    *__error() = v8;
  }

  free(a1);
  return v9;
}

_DWORD *__diff_D2A(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  v3 = *(a1 + 20) - v2;
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
        result = __Balloc_D2A(0);
        *(result + 5) = 1;
        return result;
      }
    }

    if (v5 < v6)
    {
      v3 = -1;
    }

    else
    {
      v3 = 1;
    }
  }

  if (v3 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
  }

  if (v3 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a1;
  }

  v11 = v3 >> 31;
  result = __Balloc_D2A(*(v9 + 8));
  v12 = 0;
  v13 = 0;
  v14 = result + 6;
  result[4] = v11;
  v15 = *(v9 + 20);
  v16 = v10 + 24;
  v17 = v10 + 24 + 4 * *(v10 + 20);
  do
  {
    v18 = *(v9 + v12 + 24) - (v13 + *(v16 + v12));
    v13 = HIDWORD(v18) & 1;
    v14[v12 / 4] = v18;
    v12 += 4;
  }

  while (v16 + v12 < v17);
  v19 = v9 + 24 + 4 * v15;
  if (v9 + v12 + 24 >= v19)
  {
    v24 = &v14[v12 / 4];
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = *(v9 + v20 + v12 + 24) - v13;
      v14[v20 / 4 + v12 / 4] = v21;
      v13 = HIDWORD(v21) & 1;
      v22 = v20 + 4;
      v23 = v9 + v12 + v20 + 28;
      v20 += 4;
    }

    while (v23 < v19);
    v24 = &v14[v12 / 4] + v22;
  }

  v25 = v15 + 1;
  v26 = v24 - 4;
  do
  {
    v27 = *v26;
    v26 -= 4;
    --v25;
  }

  while (!v27);
  result[5] = v25;
  return result;
}

size_t rb_tree_count(size_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void *__cdecl rb_tree_iterate(rb_tree_t *a1, void *a2, const unsigned int a3)
{
  v3 = a1->opaque[1];
  if (!a2)
  {
    if (a1->opaque[0])
    {
      return a1->opaque[(a3 == 0) + 2] - v3[2];
    }

    return 0;
  }

  v4 = a3 ^ 1;
  v5 = v3[2];
  v6 = a2 + v5;
  v7 = *(a2 + 8 * a3 + v5);
  if (!v7)
  {
    while (a1->opaque[0] != v6)
    {
      v9 = v6[2];
      v10 = (v9 >> 1) & 1;
      v6 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v4 == v10)
      {
        return v6 - v5;
      }
    }

    return 0;
  }

  do
  {
    v6 = v7;
    v7 = v7[v4];
  }

  while (v7);
  return v6 - v5;
}

locale_t newlocale(int a1, const char *a2, locale_t a3)
{
  v3 = a3;
  v5 = a1;
  if (a2)
  {
    if (j__strsignal_r(a2, a2, a3) > 0x1F || *a2 == 46 && (!a2[1] || a2[1] == 46 && !a2[2]))
    {
      goto LABEL_28;
    }

    j__strmode(a2, 0x2F);
    if (v6)
    {
      goto LABEL_28;
    }
  }

  v7 = v5 & 0x3F;
  if (v7 == 63)
  {
    v3 = __c_locale;
    goto LABEL_11;
  }

  if (v3 + 1 >= 2 && *(v3 + 163) != 0x786C6F63616C6530)
  {
LABEL_28:
    v8 = 0;
    *__error() = 22;
    return v8;
  }

LABEL_11:
  v8 = _duplocale(v3);
  if (!v8)
  {
    return v8;
  }

  v9 = v7 == 63 && a2 == 0;
  v10 = v9;
  if ((v5 & 0x3F) == 0 || v10)
  {
    return v8;
  }

  if (a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = &C;
  }

  v12 = __detect_path_locale();
  if (v12)
  {
LABEL_24:
    v15 = v12;
LABEL_25:
    *__error() = v15;
LABEL_26:
    freelocale(v8);
    return 0;
  }

  if (*v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0;
  }

  v18 = 1;
  while (1)
  {
    if ((v18 & v7) == 0)
    {
      goto LABEL_123;
    }

    if (v18 <= 7)
    {
      switch(v18)
      {
        case 1:
          if (!*v11)
          {
            locale_env = __get_locale_env(1);
            v17 = locale_env;
            if (locale_env)
            {
              if (j__strsignal_r(locale_env, v30, v13) > 0x1F)
              {
                goto LABEL_135;
              }

              if (*v17 == 46)
              {
                v31 = v17[1];
                if (v31 == 46)
                {
                  v31 = v17[2];
                }

                if (!v31)
                {
                  goto LABEL_135;
                }
              }

              j__strmode(v17, 0x2F);
              if (v32)
              {
                goto LABEL_135;
              }
            }
          }

          v33 = *(v8 + 165);
          if (*(v33 + 64))
          {
            v34 = &C;
          }

          else
          {
            v34 = (v33 + 16);
          }

          if (!j__strncasecmp_l(v17, v34, v13, v14))
          {
            goto LABEL_75;
          }

          if (__collate_load_tables(v17, v8, v35, v36, v37, v38, v39, v40) == -1)
          {
            goto LABEL_26;
          }

          v33 = *(v8 + 165);
          if (v33)
          {
LABEL_75:
            v41 = v33 + 16;
LABEL_112:
            MEMORY[0x193AD6A30](v41, v17, 32);
            goto LABEL_123;
          }

          break;
        case 2:
          if (!*v11)
          {
            v42 = __get_locale_env(2);
            v17 = v42;
            if (v42)
            {
              if (j__strsignal_r(v42, v43, v13) > 0x1F)
              {
                goto LABEL_135;
              }

              if (*v17 == 46)
              {
                v44 = v17[1];
                if (v44 == 46)
                {
                  v44 = v17[2];
                }

                if (!v44)
                {
                  goto LABEL_135;
                }
              }

              j__strmode(v17, 0x2F);
              if (v45)
              {
                goto LABEL_135;
              }
            }
          }

          if (j__strncasecmp_l(v17, (*(v8 + 166) + 16), v13, v14))
          {
            v12 = __setrunelocale(v17, v8, v13, v14);
            if (v12)
            {
              goto LABEL_24;
            }

            v46 = *(v8 + 166);
            if (v46)
            {
              MEMORY[0x193AD6A30](v46 + 16, v17, 32);
            }

            if (*(v8 + 1318) == 1)
            {
              *(v8 + 1318) = 0;
            }
          }

          break;
        case 4:
          if (!*v11)
          {
            v19 = __get_locale_env(6);
            v17 = v19;
            if (v19)
            {
              if (j__strsignal_r(v19, v20, v13) > 0x1F)
              {
                goto LABEL_135;
              }

              if (*v17 == 46)
              {
                v21 = v17[1];
                if (v21 == 46)
                {
                  v21 = v17[2];
                }

                if (!v21)
                {
                  goto LABEL_135;
                }
              }

              j__strmode(v17, 0x2F);
              if (v22)
              {
                goto LABEL_135;
              }
            }
          }

          if (*(v8 + 1312))
          {
            v23 = *(*(v8 + 170) + 64);
          }

          else
          {
            v23 = &C;
          }

          if (j__strncasecmp_l(v17, v23, v13, v14) && __messages_load_locale(v17, v8, v13, v14) == -1)
          {
            goto LABEL_26;
          }

          v52 = *(v8 + 170);
          if (v52)
          {
            goto LABEL_111;
          }

          break;
      }

      goto LABEL_123;
    }

    if (v18 != 8)
    {
      break;
    }

    if (!*v11)
    {
      v47 = __get_locale_env(3);
      v17 = v47;
      if (v47)
      {
        if (j__strsignal_r(v47, v48, v13) > 0x1F)
        {
          goto LABEL_135;
        }

        if (*v17 == 46)
        {
          v49 = v17[1];
          if (v49 == 46)
          {
            v49 = v17[2];
          }

          if (!v49)
          {
            goto LABEL_135;
          }
        }

        j__strmode(v17, 0x2F);
        if (v50)
        {
          goto LABEL_135;
        }
      }
    }

    if (*(v8 + 1313))
    {
      v51 = *(*(v8 + 167) + 64);
    }

    else
    {
      v51 = &C;
    }

    if (j__strncasecmp_l(v17, v51, v13, v14) && __monetary_load_locale(v17, v8, v13, v14) == -1)
    {
      goto LABEL_26;
    }

    v52 = *(v8 + 167);
    if (v52)
    {
LABEL_111:
      v41 = v52 + 16;
      goto LABEL_112;
    }

LABEL_123:
    v18 *= 2;
    if (v18 >= 33)
    {
      return v8;
    }
  }

  if (v18 == 16)
  {
    if (!*v11)
    {
      v24 = __get_locale_env(4);
      v17 = v24;
      if (v24)
      {
        if (j__strsignal_r(v24, v25, v13) > 0x1F)
        {
          goto LABEL_135;
        }

        if (*v17 == 46)
        {
          v26 = v17[1];
          if (v26 == 46)
          {
            v26 = v17[2];
          }

          if (!v26)
          {
            goto LABEL_135;
          }
        }

        j__strmode(v17, 0x2F);
        if (v27)
        {
          goto LABEL_135;
        }
      }
    }

    if (*(v8 + 1314))
    {
      v28 = *(*(v8 + 168) + 64);
    }

    else
    {
      v28 = &C;
    }

    if (j__strncasecmp_l(v17, v28, v13, v14))
    {
      if (__numeric_load_locale(v17, v8, v13, v14) == -1)
      {
        goto LABEL_26;
      }

      v53 = *(v8 + 168);
      if (v53)
      {
        MEMORY[0x193AD6A30](v53 + 16, v17, 32);
      }

      *(v8 + 1318) = 0;
      v54 = *(v8 + 171);
      if (v54)
      {
        if (atomic_fetch_add(v54, 0xFFFFFFFF) == 1)
        {
          v55 = *(v54 + 8);
          if (v55)
          {
            v55();
          }
        }
      }

      *(v8 + 171) = 0;
    }

    goto LABEL_123;
  }

  if (v18 != 32)
  {
    goto LABEL_123;
  }

  if (!*v11)
  {
    v57 = __get_locale_env(5);
    v17 = v57;
    if (v57)
    {
      if (j__strsignal_r(v57, v58, v13) > 0x1F || *v17 == 46 && (!v17[1] || v17[1] == 46 && !v17[2]) || (j__strmode(v17, 0x2F), v59))
      {
LABEL_135:
        v15 = 22;
        goto LABEL_25;
      }
    }
  }

  if (*(v8 + 1315))
  {
    v56 = *(*(v8 + 169) + 64);
  }

  else
  {
    v56 = &C;
  }

  if (j__strncasecmp_l(v17, v56, v13, v14) && __time_load_locale(v17, v8, v60, v61) == -1)
  {
    goto LABEL_26;
  }

  v62 = *(v8 + 169);
  if (v62)
  {
    MEMORY[0x193AD6A30](v62 + 16, v17, 32);
  }

  return v8;
}

void rb_tree_init(rb_tree_t *a1, const rb_tree_ops_t *a2)
{
  a1->opaque[0] = 0;
  a1->opaque[1] = a2;
  a1->opaque[3] = 0;
  a1->opaque[4] = 0;
  a1->opaque[2] = 0;
}

void rb_tree_remove_node(rb_tree_t *a1, void *a2)
{
  v2 = a1;
  v3 = *(a1->opaque[1] + 2);
  v4 = a2 + v3;
  if (!(a2 + v3))
  {
    v18 = MEMORY[0x10];
    v19 = MEMORY[0];
    goto LABEL_18;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!*v4)
  {
    if (v5)
    {
LABEL_25:
      v23 = v4[2];
      v24 = v4[v6 == 0];
      v25 = a1->opaque[0];
      v26 = (v23 >> 1) & 1;
      *((v23 & 0xFFFFFFFFFFFFFFFCLL) + 8 * v26) = v24;
      v24[2] = v23;
      --a1->opaque[4];
      v27 = &a1->opaque[2];
      if (v25 == v4)
      {
        v28 = &v27[v6 != 0];
      }

      else
      {
        v28 = &v27[v26];
        if (*v28 != v4)
        {
LABEL_28:
          v4[2] = v23 & 3;
          return;
        }
      }

      *v28 = v24;
      goto LABEL_28;
    }

    v18 = v4[2];
    if (v18)
    {
      v19 = 0;
      v21 = 0;
      v20 = a1->opaque[0];
      goto LABEL_19;
    }

    v19 = 0;
LABEL_18:
    v20 = a1->opaque[0];
    v21 = a1->opaque[0] != v4;
LABEL_19:
    LODWORD(v10) = (v18 >> 1) & 1;
    v12 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
    *((v18 & 0xFFFFFFFFFFFFFFFCLL) + 8 * v10) = v19;
    --a1->opaque[4];
    v22 = (v18 >> 1) & 1;
    if (a1->opaque[v22 + 2] == v4)
    {
      a1->opaque[v22 + 2] = v12;
      if (v20 == v4)
      {
        a1->opaque[3] = v12;
      }
    }

    v4[2] = v18 & 3;
    if (v21)
    {
      goto LABEL_41;
    }

    return;
  }

  if (!v5)
  {
    goto LABEL_25;
  }

  v7 = rb_tree_iterate(a1, a2, ((*(v4 + 4) >> 1) & 1) == 0);
  v8 = &v7[v3];
  v9 = *&v7[v3 + 16];
  v10 = (v9 >> 1) & 1;
  v11 = (v9 & 2) == 0;
  v12 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
  v14 = (v9 & 1) == 0 || v8 == 0;
  if (v12 == v4)
  {
    v15 = (v9 >> 1) & 1;
  }

  else
  {
    v15 = (v9 & 2) == 0;
  }

  v16 = *(v8 + 8 * v15);
  if (!v16 || (v17 = *(v16 + 16), (v17 & 1) == 0))
  {
    if (v12 != v4)
    {
      goto LABEL_36;
    }

LABEL_33:
    v12 = &v7[v3];
    goto LABEL_37;
  }

  *(v16 + 16) = v17 & 0xFFFFFFFFFFFFFFFELL;
  if (v12 == v4)
  {
    v14 = 0;
    goto LABEL_33;
  }

  v14 = 0;
  *(v16 + 16) = v9 & 0xFFFFFFFFFFFFFFFELL;
LABEL_36:
  *&v12[8 * v10] = v16;
  v29 = v4[v11];
  *(v8 + 8 * v11) = v29;
  *(v29 + 16) = *(v29 + 16) & 3 | v8;
  v11 = (v9 >> 1) & 1;
LABEL_37:
  v30 = v4[v11];
  *(v8 + 8 * v11) = v30;
  *(v30 + 16) = *(v30 + 16) & 3 | v8;
  v31 = v4[2];
  *(v8 + 16) = *(v8 + 16) & 0xFFFFFFFFFFFFFFFCLL | v31 & 3;
  v32 = v4[2] & 0xFFFFFFFFFFFFFFFCLL;
  *(v8 + 16) = v32 | v31 & 3;
  *(v32 + 8 * ((v31 >> 1) & 1)) = v8;
  --v2->opaque[4];
  v33 = v4[2];
  v34 = (v33 >> 1) & 1;
  if (v2->opaque[v34 + 2] == v4)
  {
    v2->opaque[v34 + 2] = (v33 & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4[2] = v33 & 3;
  if (v14)
  {
    a1 = v2;
LABEL_41:

    rb_tree_removal_rebalance(a1, v12, v10);
  }
}

uint64_t __heapsort_r(_BYTE *a1, unint64_t a2, size_t size, uint64_t a4, uint64_t (*a5)(uint64_t, char *, char *))
{
  if (a2 < 2)
  {
    return 0;
  }

  if (!size)
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  v11 = malloc_type_malloc(size, 0x8AC643EFuLL);
  if (!v11)
  {
    return 0xFFFFFFFFLL;
  }

  v49 = v11;
  v51 = a4;
  v47 = a1;
  v12 = &a1[-size];
  v13 = v9 >> 1;
  do
  {
    v48 = v13;
    v14 = 2 * v13;
    if (2 * v13 <= v9)
    {
      v15 = v13;
      do
      {
        v16 = v12;
        v17 = &v12[v14 * size];
        v18 = v9;
        if (v14 >= v9)
        {
          v21 = v14;
          v19 = v51;
        }

        else
        {
          v19 = v51;
          v20 = a5(v51, v17, &v17[size]);
          v21 = v14 | (v20 >> 31);
          if (v20 < 0)
          {
            v17 += size;
          }
        }

        v22 = &v16[v15 * size];
        v23 = a5(v19, v17, v22);
        v9 = v18;
        v12 = v16;
        if (v23 < 1)
        {
          break;
        }

        v24 = size;
        do
        {
          v25 = *v22;
          *v22++ = *v17;
          *v17++ = v25;
          --v24;
        }

        while (v24);
        v14 = 2 * v21;
        v15 = v21;
      }

      while (2 * v21 <= v9);
    }

    v13 = v48 - 1;
  }

  while (v48 != 1);
  i = v47;
  v27 = &v47[size * (v9 - 1)];
  v28 = v49;
  v50 = a5;
  do
  {
    v29 = 0;
    do
    {
      v28[v29] = v27[v29];
      ++v29;
    }

    while (size != v29);
    v30 = 0;
    do
    {
      v27[v30] = i[v30];
      ++v30;
    }

    while (size != v30);
    v31 = v9 - 1;
    v32 = i;
    if (v9 >= 3)
    {
      v33 = 2;
      v34 = 1;
      do
      {
        v35 = &v12[v33 * size];
        if (v33 >= v31)
        {
          v37 = v33;
        }

        else
        {
          v36 = v50(v51, &v12[v33 * size], &v35[size]);
          v37 = v33 | (v36 >> 31);
          if (v36 < 0)
          {
            v35 += size;
          }
        }

        v38 = &v12[v34 * size];
        v39 = size;
        do
        {
          v40 = *v35++;
          *v38++ = v40;
          --v39;
        }

        while (v39);
        v33 = 2 * v37;
        v34 = v37;
      }

      while (2 * v37 <= v31);
      v32 = &v12[v37 * size];
      v41 = v32;
      for (i = v47; v37 != 1; v32 = &v12[v37 * size])
      {
        v32 = v41;
        v37 >>= 1;
        v41 = &v12[v37 * size];
        v42 = v50(v51, v49, v41);
        v43 = size;
        v44 = v41;
        if (v42 < 0)
        {
          break;
        }

        do
        {
          v45 = *v44++;
          *v32++ = v45;
          --v43;
        }

        while (v43);
      }
    }

    v46 = 0;
    v28 = v49;
    do
    {
      v32[v46] = v49[v46];
      ++v46;
    }

    while (size != v46);
    v27 -= size;
    v9 = v31;
  }

  while (v31 > 1);
  free(v49);
  return 0;
}

int fseeko(FILE *__stream, off_t a2, int __whence)
{
  v3 = *&__whence;
  v6 = *__error();
  pthread_once(&__sdidinit, __sinit);
  flockfile(__stream);
  _fseeko(__stream, a2, v3);
  v8 = v7;
  funlockfile(__stream);
  if (!v8)
  {
    *__error() = v6;
  }

  return v8;
}

void *_duplocale(char *a1)
{
  v2 = malloc_type_malloc(0x5C0uLL, 0x10B0040F94CF6B0uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 1;
    v2[1] = destruct_locale;
    *(v2 + 324) = 0;
    if (a1 == -1)
    {
      a1 = &__global_locale;
    }

    else if (a1)
    {
      if (a1 == __c_locale)
      {
        j__mkdtempat_np(v2, __c_locale);
        *v3 = 1;
        v3[1] = destruct_locale;
        *(v3 + 324) = 0;
        return v3;
      }
    }

    else
    {
      v4 = __locale_key;
      v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
      if (v5)
      {
        a1 = v5;
      }

      else
      {
        a1 = &__global_locale;
      }
    }

    os_unfair_lock_lock(a1 + 324);
    v6 = *(a1 + 1304);
    v7 = *(a1 + 1336);
    *(v3 + 165) = *(a1 + 1320);
    *(v3 + 167) = v7;
    *(v3 + 163) = v6;
    v8 = *(a1 + 1352);
    v9 = *(a1 + 1368);
    v10 = *(a1 + 1400);
    *(v3 + 173) = *(a1 + 1384);
    *(v3 + 175) = v10;
    *(v3 + 169) = v8;
    *(v3 + 171) = v9;
    v11 = *(a1 + 1416);
    v12 = *(a1 + 1432);
    v13 = *(a1 + 1448);
    v3[183] = *(a1 + 183);
    *(v3 + 179) = v12;
    *(v3 + 181) = v13;
    *(v3 + 177) = v11;
    os_unfair_lock_unlock(a1 + 324);
    MEMORY[0x193AD5FD0](v3 + 2, 1288);
    for (i = 0; i != 6; ++i)
    {
      v15 = v3[i + 165];
      if (v15)
      {
        atomic_fetch_add(v15, 1u);
      }
    }

    v16 = v3[171];
    if (v16)
    {
      atomic_fetch_add(v16, 1u);
    }
  }

  return v3;
}

__darwin_ct_rune_t __toupper(__darwin_ct_rune_t a1)
{
  if (a1 >= 0x100)
  {
    return ___toupper(a1);
  }

  v2 = __locale_key;
  v3 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v2);
  if (!v3)
  {
    v3 = &__global_locale;
  }

  return *(*(v3[166] + 120) + 4 * a1 + 2108);
}

void *rb_tree_removal_rebalance(void *result, unint64_t a2, unsigned int a3)
{
  v5 = result;
  while (1)
  {
    v6 = *(a2 + 8 * a3);
    if (v6)
    {
      if (*(v6 + 16))
      {
        return result;
      }
    }

    v7 = a3 ^ 1;
    result = *(a2 + 8 * v7);
    v8 = *(a2 + 16);
    if (v8)
    {
      v12 = (a2 + 8 * v7);
      goto LABEL_15;
    }

    if (*result && (*(*result + 16) & 1) != 0 || (v9 = result[1]) != 0 && (*(v9 + 16) & 1) != 0)
    {
      v12 = (a2 + 8 * v7);
      goto LABEL_23;
    }

    v10 = result[2];
    if (v10)
    {
      v12 = (a2 + 8 * v7);
      rb_tree_reparent_nodes(a2, a3 ^ 1);
      result = *v12;
      v8 = *(a2 + 16);
      if ((v8 & 1) == 0)
      {
LABEL_23:
        v14 = result[v7];
        if (!v14 || (v15 = *(v14 + 16), (v15 & 1) == 0))
        {
          rb_tree_reparent_nodes(result, a3);
          v14 = (*v12)[v7];
          v15 = *(v14 + 16);
        }

        *(v14 + 16) = v15 & 0xFFFFFFFFFFFFFFFELL;

        return rb_tree_reparent_nodes(a2, a3 ^ 1);
      }

LABEL_15:
      if ((!result || (result[2] & 1) == 0) && (!*result || (*(*result + 16) & 1) == 0))
      {
        v13 = result[1];
        if (!v13 || (*(v13 + 16) & 1) == 0)
        {
          *(a2 + 16) = v8 & 0xFFFFFFFFFFFFFFFELL;
          result[2] |= 1uLL;
          return result;
        }
      }

      goto LABEL_23;
    }

    result[2] = v10 | 1;
    if (*v5 == a2)
    {
      return result;
    }

    v11 = *(a2 + 16);
    a3 = (v11 >> 1) & 1;
    a2 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  }
}

int inet_pton(int a1, const char *a2, void *a3)
{
  v4 = a2;
  if (a1 != 30)
  {
    if (a1 == 2)
    {

      return inet_pton4(a2, a3);
    }

    v9 = __error();
    v10 = 47;
LABEL_11:
    *v9 = v10;
    return -1;
  }

  if (a2 && (v6 = strrchr(a2, 37)) != 0)
  {
    v7 = v6;
    v8 = strdup(v4);
    if (!v8)
    {
      v9 = __error();
      v10 = 12;
      goto LABEL_11;
    }

    v33 = 0;
    v31 = v7;
    v8[v7 - v4] = 0;
    v4 = v8;
  }

  else
  {
    v31 = 0;
    v33 = 1;
  }

  v34 = 0uLL;
  v11 = *v4;
  if (!*v4 || (v12 = v4, v11 == 58) && (v12 = v4 + 1, v4[1] != 58))
  {
LABEL_54:
    if ((v33 & 1) == 0)
    {
      free(v4);
    }

    return 0;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = &v34;
  while (2)
  {
    v29 = v12;
    v30 = v14;
    v32 = v15;
    v17 = &v34 + v15;
    ++v12;
    v18 = 1;
    v19 = v16;
    while (1)
    {
      v20 = v11;
      v21 = j__mkdirx_np("0123456789abcdef", v20);
      if (!v21)
      {
        break;
      }

      v22 = "0123456789abcdef";
LABEL_22:
      v13 = (v21 - v22) | (16 * v13);
      if (HIWORD(v13))
      {
        goto LABEL_54;
      }

      v18 = 0;
      v23 = *v12++;
      LOBYTE(v11) = v23;
      v19 = v17;
      if (!v23)
      {
        if (v32 > 14)
        {
          goto LABEL_54;
        }

        *(&v34 + v32) = BYTE1(v13);
        v15 = v32 + 2;
        v17[1] = v13;
LABEL_36:
        v19 = v30;
        goto LABEL_37;
      }
    }

    v21 = j__mkdirx_np("0123456789ABCDEF", v20);
    if (v21)
    {
      v22 = "0123456789ABCDEF";
      goto LABEL_22;
    }

    if (v20 != 58)
    {
      if (v20 != 46 || v32 > 12 || inet_pton4(v29, v19) <= 0)
      {
        goto LABEL_54;
      }

      v15 = v32 + 4;
      goto LABEL_36;
    }

    if (v18)
    {
      if (v30)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!*v12 || v32 > 14)
      {
        goto LABEL_54;
      }

      v32 += 2;
      *v19 = bswap32(v13) >> 16;
      v19 = v30;
      v13 = 0;
    }

    v15 = v32;
    v16 = &v34 + v32;
    LOBYTE(v11) = *v12;
    v14 = v19;
    if (*v12)
    {
      continue;
    }

    break;
  }

LABEL_37:
  if (v19)
  {
    if (v15 == 16)
    {
      goto LABEL_54;
    }

    v24 = (&v34 + v15 - v19);
    if (v24 >= 1)
    {
      v25 = v24 & 0x7FFFFFFF;
      v26 = (v24 + 1) - 1;
      v27 = &v34 + 15;
      v28 = &v19[v25 - 1];
      do
      {
        *v27-- = *v28;
        *v28-- = 0;
        --v26;
      }

      while (v26);
    }
  }

  else if (v15 != 16)
  {
    goto LABEL_54;
  }

  *a3 = v34;
  if ((v33 & 1) == 0)
  {
    free(v4);
    if (*a3 == 254 && (*(a3 + 1) & 0xC0) == 0x80)
    {
      *(a3 + 1) = bswap32(if_nametoindex(v31 + 1)) >> 16;
    }
  }

  return 1;
}

uint64_t __detect_path_locale()
{
  if (_PathLocale)
  {
    return 0;
  }

  v1 = getenv("PATH_LOCALE");
  if (v1 && (v2 = v1, !issetugid()))
  {
    if ((j__strsignal_r(v2, v3, v4) - 980) >= 0xFFFFFFFFFFFFFC00)
    {
      _PathLocale = strdup(v2);
      if (_PathLocale)
      {
        return 0;
      }

      if (*__error())
      {
        return *__error();
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 63;
    }
  }

  else
  {
    result = 0;
    _PathLocale = "/usr/share/locale";
  }

  return result;
}

uint64_t inet_pton4(_BYTE *a1, _DWORD *a2)
{
  LOBYTE(v11) = 0;
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  LOBYTE(v4) = 0;
  v5 = 0;
  v6 = 0;
  v7 = a1 + 1;
  v8 = &v11;
  do
  {
    result = j__mkdirx_np("0123456789", v2);
    if (result)
    {
      v4 = result - "0123456789" + 10 * v4;
      if ((v4 & 0xFFFFFF00) != 0)
      {
        return 0;
      }

      *v8 = v4;
      if (!v6)
      {
        if (v5 > 3)
        {
          return 0;
        }

        ++v5;
      }

      v6 = 1;
    }

    else
    {
      if (!v6 || v2 != 46 || v5 == 4)
      {
        return result;
      }

      LOBYTE(v4) = 0;
      v6 = 0;
      *(v8 + 1) = 0;
      v8 = (v8 + 1);
    }

    v10 = *v7++;
    v2 = v10;
  }

  while (v10);
  if (v5 < 4)
  {
    return 0;
  }

  *a2 = v11;
  return 1;
}

int setlogin(const char *a1)
{
  pthread_mutex_lock(&__logname_mutex);
  v1 = __setlogin();
  if (!v1 && __logname)
  {
    *__logname = 0;
  }

  pthread_mutex_unlock(&__logname_mutex);
  return v1;
}

int feof(FILE *a1)
{
  flockfile(a1);
  v2 = (a1->_flags >> 5) & 1;
  funlockfile(a1);
  return v2;
}

int strerror_r(int __errnum, char *__strerrbuf, size_t __buflen)
{
  if (__errnum < 0 || __errnum >= 108)
  {
    __errstr(__errnum, "Unknown error", __strerrbuf, __buflen);
    return 22;
  }

  else if (MEMORY[0x193AD6A30](__strerrbuf, sys_errlist[__errnum], __buflen) >= __buflen)
  {
    return 34;
  }

  else
  {
    return 0;
  }
}

int vprintf(const char *a1, va_list a2)
{
  v4 = __stdoutp;
  v5 = __locale_key;
  v6 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v5);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__global_locale;
  }

  return vfprintf_l(v4, v7, a1, a2);
}

int __sprintf_chk(char *a1, int a2, size_t a3, const char *a4, ...)
{
  va_start(va, a4);
  if (a3 >> 31)
  {
    return vsprintf(a1, a4, va);
  }

  result = vsnprintf(a1, a3, a4, va);
  if ((result & 0x80000000) == 0 && result >= a3)
  {
    __chk_fail_overflow();
  }

  return result;
}

size_t mbrtowc(__int32 *a1, const char *a2, size_t a3, mbstate_t *a4)
{
  v4 = __locale_key;
  v5 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8 * v4);
  if (!v5)
  {
    v5 = &__global_locale;
  }

  if (v5 == -1)
  {
    v6 = &__global_locale;
  }

  else
  {
    v6 = v5;
  }

  if (!a4)
  {
    a4 = (v6 + 272);
  }

  return (*(*(v6 + 166) + 72))(a1, a2, a3, a4);
}

void rewind(FILE *a1)
{
  v2 = *__error();
  pthread_once(&__sdidinit, __sinit);
  flockfile(a1);
  _fseeko(a1, 0, 0);
  if (!v3)
  {
    *__error() = v2;
  }

  a1->_flags &= 0xFF9Fu;

  funlockfile(a1);
}

uint64_t _none_mbrtowc(_DWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return -2;
  }

  v3 = *a2;
  if (a1)
  {
    *a1 = v3;
  }

  return v3 != 0;
}

size_t wcslen(const __int32 *a1)
{
  v1 = 0;
    ;
  }

  return (v1 * 4 - 4) >> 2;
}

BOOL remove(const std::__fs::filesystem::path *__p, std::error_code *__ec)
{
  memset(&v4, 0, sizeof(v4));
  if (lstat(__p, &v4) < 0)
  {
    return -1;
  }

  if ((v4.st_mode & 0xF000) == 0x4000)
  {
    return rmdir(__p);
  }

  return unlink(__p);
}

uint64_t inet_ntop4(unsigned __int8 *a1, uint64_t a2, unsigned int a3)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      *__str = 0;
      v19 = 0;
      v6 = __str;
      snprintf(__str, 4uLL, "%d", *a1);
      v9 = j__strsignal_r(__str, v7, v8);
      v10 = v9 + 4;
      v11 = 1;
      do
      {
        v12 = &v6[v9];
        *v12 = 46;
        v6 = v12 + 1;
        snprintf(v6, 4uLL, "%d", a1[v11]);
        v9 = j__strsignal_r(v6, v13, v14);
        v10 += v9;
        ++v11;
      }

      while (v11 != 4);
      if (v10 <= a3)
      {
        j__mkdtempat_np(v3, __str);
        return v3;
      }

      v15 = __error();
      v3 = 0;
    }

    else
    {
      v15 = __error();
    }

    v16 = 28;
  }

  else
  {
    v15 = __error();
    v3 = 0;
    v16 = 47;
  }

  *v15 = v16;
  return v3;
}

uint64_t localtime_key_init()
{
  localtime_key = 1;
  result = pthread_key_init_np();
  localtime_key_error = result;
  return result;
}

char *_os_assumes_log_ctx(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = OUTLINED_FUNCTION_1(a1, a2, a3, a4, a5, a6, a7, a8, v35, v37, v39, v41, v43, v45, v47.dli_fname, v47.dli_fbase, v47.dli_sname, v47.dli_saddr, v48, v49[0]);
  MEMORY[0x193AD5FD0](v11);
  OUTLINED_FUNCTION_0_0();
  v12 = dladdr(v8, &v47);
  if (v12)
  {
    OUTLINED_FUNCTION_4(v12, v13, v14, v15, v16, v17, v18, v19, v36, v38, v40, v42, v44, v46, v47.dli_fname, v47.dli_fbase);
    uuid_unparse(uu, out);
    dli_fname = v47.dli_fname;
    strrchr(v47.dli_fname, 47);
    OUTLINED_FUNCTION_2();
  }

  else
  {
    v9 = 0;
    dli_fname = 0;
  }

  v21 = OUTLINED_FUNCTION_5(v12, v13, "%s:%lu");
  OUTLINED_FUNCTION_6(v21, v22, "0x%llx");
  build = _os_get_build(v50);
  v30 = OUTLINED_FUNCTION_1(build, v24, "assertion failed: %s: %s + %lu [%s]: %s", v25, v26, v27, v28, v29, v50, dli_fname, v9, out, v51, v46, v47.dli_fname, v47.dli_fbase, v47.dli_sname, v47.dli_saddr, v48, v49[0]);
  snprintf(v30, v31, v32);
  _simple_asl_msg_new();
  a1();
  _simple_sfree();
  if (getpid() == 1)
  {
    v33 = "OS_ASSUMES_FATAL_PID1";
  }

  else
  {
    v33 = "OS_ASSUMES_FATAL";
  }

  result = getenv(v33);
  if (result)
  {
    qword_1EAC9CAC0 = v49;
    if (_os_crash_callback)
    {
      _os_crash_callback(v49);
    }

    __break(1u);
  }

  return result;
}

const char *__cdecl inet_ntop(int a1, const void *a2, char *a3, socklen_t a4)
{
  if (a1 == 30 && a2)
  {

    return inet_ntop6(a2, a3, a4);
  }

  else if (a1 == 2 && a2)
  {

    return inet_ntop4(a2, a3, a4);
  }

  else
  {
    *__error() = 47;
    return 0;
  }
}

uint64_t _inet_aton_check(unsigned __int8 *a1, _DWORD *a2, int a3)
{
  v3 = *a1;
  if ((v3 - 48) > 9)
  {
    return 0;
  }

  v4 = 0;
  while (2)
  {
    if (v3 == 48)
    {
      v3 = a1[1];
      if ((v3 & 0xFFFFFFDF) == 0x58)
      {
        v5 = 0;
        v6 = a1[2];
        a1 += 2;
        LOBYTE(v3) = v6;
        v7 = 1;
        v8 = 16;
        v9 = 1;
      }

      else
      {
        v7 = 0;
        v9 = 0;
        v5 = 1;
        ++a1;
        v8 = 8;
      }
    }

    else
    {
      v7 = 0;
      v5 = 0;
      v9 = 1;
      v8 = 10;
    }

    v10 = v3;
    v11 = 0;
    if ((v3 & 0x80) != 0)
    {
      v17 = 0;
      goto LABEL_26;
    }

    v12 = v9;
    v13 = v3;
    while (v13 - 48 <= 9)
    {
      if ((v13 & 0x7E) == 0x38)
      {
        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      if (v14)
      {
        return 0;
      }

      v11 = v11 * v8 + v10 - 48;
LABEL_22:
      v12 = 0;
      v9 = 0;
      v17 = 0;
      v18 = *++a1;
      v10 = v18;
      v13 = v18;
      LOBYTE(v3) = v18;
      if (v18 < 0)
      {
        goto LABEL_26;
      }
    }

    if (v7)
    {
      v15 = _DefaultRuneLocale.__runetype[v13];
      if ((v15 & 0x10000) != 0)
      {
        if ((v15 & 0x1000) != 0)
        {
          v16 = -97;
        }

        else
        {
          v16 = -65;
        }

        v11 = (v10 + v16 + 10) | (16 * v11);
        goto LABEL_22;
      }
    }

    v17 = 1;
    LOBYTE(v3) = v13;
    v9 = v12;
LABEL_26:
    if (v3 != 46)
    {
      if (v3)
      {
        v21 = v17 ^ 1;
        if (a3)
        {
          v21 = 1;
        }

        if ((v21 & 1) != 0 || v9 & 1 | ((_DefaultRuneLocale.__runetype[v10] & 0x4000) == 0))
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 0;
      }

      if (v4 == 3)
      {
        if (v11 > 0xFF)
        {
          return 0;
        }

        v22 = (v24 << 24) | (v25 << 16) | (v26 << 8);
      }

      else
      {
        if (v4 != 2)
        {
          if (v4 == 1)
          {
            if (v11 >> 24)
            {
              return 0;
            }

            LODWORD(v11) = v11 | (v24 << 24);
          }

          goto LABEL_51;
        }

        if (v11 >> 16)
        {
          return 0;
        }

        v22 = (v24 << 24) | (v25 << 16);
      }

      LODWORD(v11) = v11 | v22;
LABEL_51:
      if (a2)
      {
        *a2 = bswap32(v11);
      }

      return 1;
    }

    v19 = 0;
    if (v4 <= 2 && v11 <= 0xFF)
    {
      *(&v24 + v4++) = v11;
      v20 = *++a1;
      LOBYTE(v3) = v20;
      if ((v20 - 48) >= 0xA)
      {
        return 0;
      }

      continue;
    }

    return v19;
  }
}

int atexit_b(void *a1)
{
  *&v2 = 3;
  v3 = 0;
  v4 = 0;
  *(&v2 + 1) = _Block_copy(a1);
  return atexit_register(&v2);
}

unint64_t __strcpy_chk(unint64_t a1, const char *a2, unint64_t a3)
{
  v6 = &stpcpy(a1, a2)[-a1 + 1];
  if (v6 > a3)
  {
    __chk_fail_overflow();
  }

  if (__chk_assert_no_overlap)
  {
    __chk_overlap(a1, v6, a2, v6);
  }

  return a1;
}

uint64_t random(void)
{
  if (rand_type)
  {
    v0 = fptr;
    v1 = rptr[0] + 1;
    v2 = *fptr + *rptr[0];
    *fptr = v2;
    v3 = v0 + 1;
    v4 = v2 >> 1;
    if (v1 >= end_ptr)
    {
      v5 = state;
    }

    else
    {
      v5 = v1;
    }

    if (v3 < end_ptr)
    {
      v1 = v5;
    }

    else
    {
      v3 = state;
    }

    fptr = v3;
    rptr[0] = v1;
  }

  else
  {
    v6 = *state;
    if (!*state)
    {
      v6 = 123459876;
    }

    v7 = -2147483647 * (v6 / 127773) + 16807 * v6;
    if (v7 < 0)
    {
      --v7;
    }

    v4 = v7 & 0x7FFFFFFF;
    *state = v4;
  }

  return v4;
}

uint64_t fts_build(uint64_t a1, int a2)
{
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v4 = *a1;
  v5 = *(*a1 + 40);
  *dirp = 0u;
  v78 = 0u;
  *v79 = 0u;
  *v80 = 0u;
  v6 = *(a1 + 64);
  BYTE1(v80[1]) = (v6 & 8) != 0;
  HIBYTE(v80[1]) = (v6 & 0x20) != 0;
  BYTE2(v80[1]) = HIBYTE(v80[1]);
  v80[0] = open_NOCANCEL();
  if (v80[0] != -1)
  {
    v79[0] = malloc_type_malloc(0x8000uLL, 0x7CCF441DuLL);
    if (!v79[0])
    {
      goto LABEL_11;
    }

    LOWORD(dirp[1]) = 5;
    if ((v6 >> 3))
    {
      v7 = -2113929205;
    }

    else
    {
      v7 = -2113430005;
    }

    if ((v6 >> 3))
    {
      v8 = 1;
    }

    else
    {
      v8 = 557;
    }

    HIDWORD(dirp[1]) = v7;
    DWORD2(v78) = v8;
    if (advance_directory(dirp))
    {
LABEL_13:
      if (a2 == 2)
      {
        v69 = 0;
        v70 = 0;
        v76 = 0;
      }

      else
      {
        v9 = *(a1 + 64);
        if ((v9 & 0x800) != 0)
        {
          v10 = *(a1 + 64) & 0x10 ^ 0x50;
        }

        else if ((v9 & 8) != 0)
        {
          if ((v9 & 0x10) != 0)
          {
            v10 = 48;
          }

          else
          {
            v10 = 16;
          }
        }

        else
        {
          v10 = 32;
        }

        v70 = v10;
        v69 = a2 == 3;
        if (dirp[0])
        {
          v12 = dirfd(dirp[0]);
        }

        else
        {
          v12 = v80[0];
        }

        if (!fts_safe_changedir(a1, v4, v12, 0))
        {
          v76 = 0;
          v71 = 0;
          goto LABEL_32;
        }

        if (a2 == 3)
        {
          *(v4 + 56) = *__error();
        }

        *(v4 + 90) |= 1u;
        v76 = *__error();
        close_directory(dirp);
      }

      v71 = 1;
LABEL_32:
      v13 = *(v4 + 64);
      if (*(*(v4 + 48) + v13 - 1) == 47)
      {
        v14 = v13 - 1;
      }

      else
      {
        v14 = *(v4 + 64);
      }

      if ((*(a1 + 64) & 4) != 0)
      {
        v15 = (*(a1 + 32) + v14);
        *v15 = 47;
        path = v15 + 1;
      }

      else
      {
        path = 0;
      }

      v11 = 0;
      v16 = 0;
      v17 = 0;
      v18 = (v14 + 1);
      v19 = *(a1 + 44) - v18;
      v74 = 0;
      v75 = *(v4 + 86) + 1;
      v72 = v14 + 2;
      while (1)
      {
        if (dirp[0])
        {
          v20 = readdir(dirp[0]);
          if (!v20)
          {
            goto LABEL_135;
          }

          d_name = v20->d_name;
          d_namlen = v20->d_namlen;
          *&v81 = v20->d_name;
          *(&v81 + 1) = d_namlen;
          d_type = v20->d_type;
          goto LABEL_42;
        }

        if (v80[0] == -1)
        {
          goto LABEL_135;
        }

        if (BYTE2(v80[1]) == 1)
        {
          BYTE2(v80[1]) = 0;
          *&v81 = ".";
          *(&v81 + 1) = 1;
          LODWORD(v91) = 4;
          LODWORD(d_namlen) = 1;
          d_name = ".";
          goto LABEL_87;
        }

        if (HIBYTE(v80[1]) == 1)
        {
          HIBYTE(v80[1]) = 0;
          d_name = "..";
          *&v81 = "..";
          *(&v81 + 1) = 2;
          LODWORD(v91) = 4;
          LODWORD(d_namlen) = 2;
          goto LABEL_87;
        }

        v24 = v80[3];
        if (v80[3] == v80[2])
        {
          if (v80[1] & 1) != 0 || !advance_directory(dirp) || (v80[1])
          {
LABEL_135:
            close_directory(dirp);
            if (v74)
            {
              v59 = *(a1 + 32);
              for (i = *(a1 + 8); i; i = i[2])
              {
                v61 = i[5];
                if (v61 != i + 13)
                {
                  i[5] = v61 + v59 - i[6];
                }

                i[6] = v59;
              }

              if ((*(v11 + 86) & 0x80000000) == 0)
              {
                v62 = v11;
                do
                {
                  v63 = v62[5];
                  if (v63 != v62 + 13)
                  {
                    v62[5] = v63 + v59 - v62[6];
                  }

                  v62[6] = v59;
                  v64 = v62[2];
                  if (!v64)
                  {
                    v64 = v62[1];
                  }

                  v62 = v64;
                }

                while ((*(v64 + 86) & 0x80000000) == 0);
              }
            }

            if ((*(a1 + 64) & 4) != 0)
            {
              *(*(a1 + 32) + *(v4 + 64)) = 0;
            }

            if (v71)
            {
LABEL_150:
              if (!v16)
              {
                if (!v69)
                {
                  return 0;
                }

                v11 = 0;
                *(v4 + 88) = 6;
                return v11;
              }
            }

            else if (a2 == 1 || !v16)
            {
              if (*(v4 + 86))
              {
                if (!fts_safe_changedir(a1, v4, -1, ".."))
                {
                  goto LABEL_150;
                }
              }

              else if ((*(a1 + 64) & 4) != 0 || !fts_fchdir(a1, *(a1 + 40)))
              {
                goto LABEL_150;
              }

              v11 = 0;
              *(v4 + 88) = 7;
              *(a1 + 64) |= 0x200u;
              return v11;
            }

            if (*(a1 + 56) && v16 >= 2)
            {
              return fts_sort(a1, v11, v16);
            }

            return v11;
          }

          v24 = v80[3];
        }

        v91 = 0;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v25 = v79[1];
        v26 = v24 + 1;
        v80[3] = v26;
        if ((v80[1] & 0x100) != 0)
        {
          v27 = (v79[1] + *v79[1]);
          v79[1] = v27;
          if (v26 != v80[2] && v27 + *v27 > v79[0] + 0x8000)
          {
            fts_build_cold_1();
          }

          v28 = v25[7];
          if (!v28)
          {
            fts_build_cold_1();
          }

          d_name = v25 + v25[6] + 24;
          LODWORD(d_namlen) = v28 - 1;
          *&v81 = d_name;
          *(&v81 + 1) = (v28 - 1);
          if (&d_name[v28] > v79[0] + 0x8000)
          {
            fts_build_cold_1();
          }

          v29 = 0;
        }

        else
        {
          v30 = (v79[1] + *v79[1]);
          v79[1] = v30;
          if (v26 != v80[2] && v30 + *v30 > v79[0] + 0x8000)
          {
            fts_build_cold_1();
          }

          v31 = v25[7];
          if (!v31)
          {
            fts_build_cold_1();
          }

          d_name = v25 + v25[6] + 24;
          LODWORD(d_namlen) = v31 - 1;
          *&v81 = d_name;
          *(&v81 + 1) = (v31 - 1);
          v32 = &d_name[v31];
          v29 = v25;
          if (v32 > v79[0] + 0x8000)
          {
            fts_build_cold_1();
          }
        }

        v33 = v25[9];
        if (v33 <= 3)
        {
          switch(v33)
          {
            case 1:
              v34 = 0x8000;
              v35 = 8;
              break;
            case 2:
              d_type = 4;
              goto LABEL_42;
            case 3:
              v34 = 24576;
              v35 = 6;
              break;
            default:
              goto LABEL_75;
          }
        }

        else if (v33 > 5)
        {
          if (v33 == 6)
          {
            v34 = -16384;
            v35 = 12;
          }

          else
          {
            if (v33 != 7)
            {
LABEL_75:
              d_type = 0;
LABEL_42:
              LODWORD(v91) = d_type;
              goto LABEL_87;
            }

            v34 = 4096;
            v35 = 1;
          }
        }

        else if (v33 == 4)
        {
          v34 = 0x2000;
          v35 = 2;
        }

        else
        {
          v34 = -24576;
          v35 = 10;
        }

        LODWORD(v91) = v35;
        if ((v80[1] & 0x100) == 0)
        {
          BYTE4(v91) = 1;
          v36 = DWORD2(v78);
          if ((v35 | 4) != 6)
          {
            v29[36] = 0;
            v36 &= ~0x20u;
          }

          v37 = HIDWORD(dirp[1]);
          v38 = v29[1];
          if ((v38 & 0x200) == 0)
          {
            v37 = HIDWORD(dirp[1]) & 0xFFFFFDFF;
            *(v29 + 5) = 0;
            *(v29 + 6) = 0;
          }

          if ((v37 & ~v38) == 0 && (v36 & ~v29[4]) == 0)
          {
            LODWORD(v82) = v29[8];
            WORD3(v82) = v29[32];
            *(&v82 + 1) = *(v29 + 15);
            *&v83 = *(v29 + 13);
            v39 = v29[35];
            DWORD2(v83) = v29[36];
            v84 = *(v29 + 22);
            v85 = *(v29 + 14);
            v86 = *(v29 + 18);
            v40 = *(v29 + 10);
            *&v88 = *(v29 + 37);
            v41 = v29[28];
            *&v89 = __PAIR64__(v29[29], v39);
            v87 = v40;
            WORD2(v82) = v41 & 0xFFF | v34;
            v42 = *(v29 + 33);
            if ((v42 & 0x1FF) != 0)
            {
              v43 = v42 / 512 + 1;
            }

            else
            {
              v43 = v42 >> 9;
            }

            *(&v88 + 1) = v43;
            goto LABEL_88;
          }
        }

LABEL_87:
        BYTE4(v91) = 0;
LABEL_88:
        if ((*(a1 + 64) & 0x20) != 0 || *d_name != 46 || d_name[1] && (d_name[1] != 46 || d_name[2]))
        {
          v44 = fts_alloc(a1, d_name, d_namlen);
          if (!v44)
          {
            goto LABEL_163;
          }

          v45 = *(&v81 + 1);
          if (*(&v81 + 1) >= v19)
          {
            v46 = *(a1 + 32);
            if (fts_palloc(a1, v72 + DWORD2(v81)))
            {
LABEL_163:
              v65 = *__error();
              fts_free(v44);
              if (v11)
              {
                do
                {
                  v66 = *(v11 + 16);
                  fts_free(v11);
                  v11 = v66;
                }

                while (v66);
              }

              close_directory(dirp);
              *(v4 + 88) = 7;
              *(a1 + 64) |= 0x200u;
              v11 = 0;
              *__error() = v65;
              return v11;
            }

            v47 = *(a1 + 32);
            if (v46 != v47)
            {
              v48 = (v47 + v18);
              v49 = path;
              if ((*(a1 + 64) & 4) != 0)
              {
                v49 = v48;
              }

              path = v49;
              v74 = 1;
            }

            v19 = *(a1 + 44) - v18;
            v45 = *(&v81 + 1);
          }

          v50 = v45 + v18;
          if (v50 >= 0xFFFF)
          {
            fts_free(v44);
            if (v11)
            {
              do
              {
                v67 = *(v11 + 16);
                fts_free(v11);
                v11 = v67;
              }

              while (v67);
            }

            close_directory(dirp);
            *(v4 + 88) = 7;
            *(a1 + 64) |= 0x200u;
            v11 = 0;
            *__error() = 63;
            return v11;
          }

          *(v44 + 43) = v75;
          *(v44 + 1) = *a1;
          *(v44 + 32) = v50;
          if (v76)
          {
            if (a2 == 2)
            {
              v51 = 11;
            }

            else
            {
              v44[14] = v76;
              v51 = 10;
            }

            *(v44 + 44) = v51;
            v57 = *(v4 + 40);
          }

          else
          {
            v52 = 3;
            switch(v91 | v70)
            {
              case 0x10u:
              case 0x14u:
              case 0x1Au:
              case 0x20u:
              case 0x21u:
              case 0x22u:
              case 0x24u:
              case 0x26u:
              case 0x28u:
              case 0x2Au:
              case 0x2Cu:
              case 0x2Eu:
              case 0x30u:
              case 0x34u:
              case 0x40u:
              case 0x44u:
              case 0x50u:
              case 0x54u:
              case 0x5Au:
                if ((*(a1 + 64) & 4) != 0)
                {
                  *(v44 + 5) = *(v44 + 6);
                  j__mkostemp(path, v44 + 104);
                  if (dirp[0])
                  {
                    v56 = dirfd(dirp[0]);
                  }

                  else
                  {
                    v56 = v80[0];
                  }

                  if (BYTE4(v91))
                  {
                    v53 = &v82;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v54 = a1;
                  v55 = v44;
                }

                else
                {
                  *(v44 + 5) = v44 + 26;
                  if (BYTE4(v91))
                  {
                    v53 = &v82;
                  }

                  else
                  {
                    v53 = 0;
                  }

                  v54 = a1;
                  v55 = v44;
                  v56 = -1;
                }

                *(v44 + 44) = fts_stat2(v54, v55, 0, v56, v53);
                goto LABEL_123;
              case 0x41u:
              case 0x42u:
              case 0x46u:
              case 0x4Cu:
              case 0x51u:
              case 0x52u:
              case 0x56u:
              case 0x5Cu:
                goto LABEL_132;
              case 0x48u:
              case 0x58u:
                v52 = 8;
                goto LABEL_132;
              case 0x4Au:
                v52 = 12;
                goto LABEL_132;
              case 0x4Eu:
              case 0x5Eu:
                v52 = 14;
                goto LABEL_132;
              default:
                v52 = 11;
LABEL_132:
                *(v44 + 44) = v52;
                if ((*(a1 + 64) & 4) != 0)
                {
                  v57 = *(v44 + 6);
                }

                else
                {
                  v57 = v44 + 26;
                }

                break;
            }
          }

          *(v44 + 5) = v57;
LABEL_123:
          *(v44 + 2) = 0;
          v58 = v44;
          if (v11)
          {
            *(v17 + 2) = v44;
            v58 = v11;
          }

          ++v16;
          v11 = v58;
          v17 = v44;
        }
      }
    }

    if (v80[0] != -1)
    {
LABEL_11:
      close_NOCANCEL();
    }
  }

  v80[0] = -1;
  free(v79[0]);
  v79[0] = 0;
  dirp[0] = opendir(v5);
  if (dirp[0])
  {
    goto LABEL_13;
  }

  if (a2 != 3)
  {
    return 0;
  }

  *(v4 + 88) = 4;
  v11 = 0;
  *(v4 + 56) = *__error();
  return v11;
}