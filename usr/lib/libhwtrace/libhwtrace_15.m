__n128 sub_298BA29F0(uint64_t a1, int a2)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 88);
  v6 = a2;
  if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_13;
  }

  if (a2 > 0x7Fu)
  {
    if (!__maskrune(a2, 0x100uLL))
    {
      goto LABEL_13;
    }

    if (!__maskrune(v6, 0x8000uLL))
    {
      v10 = __maskrune(v6, 0x1000uLL);
      v8 = a2;
      if (!v10)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    v8 = __tolower(v6);
    goto LABEL_12;
  }

  v7 = *(MEMORY[0x29EDCA600] + 4 * a2 + 60);
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_13;
  }

  if ((v7 & 0x8000) != 0)
  {
    goto LABEL_9;
  }

  v8 = a2;
  if ((v7 & 0x1000) != 0)
  {
LABEL_11:
    v8 = __toupper(v6);
  }

LABEL_12:
  if (a2 != v8)
  {
    v21 = a2;
    v22 = 93;
    v20 = *a1;
    *a1 = &v21;
    *(a1 + 8) = &v22 + 1;
    sub_298BA1398(a1);
    result = v20;
    *a1 = v20;
    return result;
  }

LABEL_13:
  if (*(a1 + 16))
  {
    if (*(v5 + a2))
    {
      return result;
    }

LABEL_21:
    v17 = *(a1 + 56);
    v18 = *(v17 + 84);
    *(v17 + 84) = v18 + 1;
    *(v5 + a2) = v18;
    return result;
  }

  v11 = *(a1 + 32);
  v12 = (v11 + 1) / 2;
  v13 = ((v11 + 1 + ((v11 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v12;
  if (*(a1 + 40) >= v11 && v11 < v13)
  {
    if (v13 >> 61)
    {
      goto LABEL_24;
    }

    v19 = malloc_type_realloc(*(a1 + 24), 24 * v12, 0x100004000313F17uLL);
    if (v19)
    {
      *(a1 + 24) = v19;
      *(a1 + 32) = v13;
      goto LABEL_20;
    }

    if (!*(a1 + 16))
    {
LABEL_24:
      *(a1 + 16) = 12;
    }

    *a1 = &byte_2A13C2DD8;
    *(a1 + 8) = &byte_2A13C2DD8;
  }

LABEL_20:
  v15 = *(a1 + 24);
  v16 = *(a1 + 40);
  *(a1 + 40) = v16 + 1;
  *(v15 + 8 * v16) = v6 | 0x10000000u;
  if (!*(v5 + a2))
  {
    goto LABEL_21;
  }

  return result;
}

_DWORD *sub_298BA2BE4(_DWORD *result, uint64_t a2, int a3, uint64_t a4)
{
  if (result[4])
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 5);
LABEL_3:
  while (2)
  {
    while (1)
    {
      v8 = a4 == 256 ? 3 : 2;
      v9 = a4 >= 2 ? v8 : a4;
      v10 = a3 - 1;
      v11 = a2;
      while (1)
      {
        v13 = v11;
        v11 = v7;
        if (a3 == 256)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        if (a3 < 2)
        {
          v14 = a3;
        }

        v15 = v9 + 8 * v14;
        if (v15 != 19)
        {
          if (v15 <= 8)
          {
            if ((v15 - 1) >= 3)
            {
              if (v15)
              {
                goto LABEL_165;
              }

              v11 = v13;
LABEL_162:
              *(v6 + 5) = v11;
              return result;
            }

LABEL_155:
            v69 = *(v6 + 4);
            if (v11 >= v69)
            {
              v70 = (v69 + 1) / 2;
              v71 = ((v69 + 1 + ((v69 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v70;
              if (v69 < v71)
              {
                if (v71 >> 61)
                {
LABEL_158:
                  v6[4] = 12;
LABEL_159:
                  *v6 = &byte_2A13C2DD8;
                  *(v6 + 1) = &byte_2A13C2DD8;
                  goto LABEL_168;
                }

                v72 = malloc_type_realloc(*(v6 + 3), 24 * v70, 0x100004000313F17uLL);
                if (!v72)
                {
                  if (v6[4])
                  {
                    goto LABEL_159;
                  }

                  goto LABEL_158;
                }

                *(v6 + 3) = v72;
                *(v6 + 4) = v71;
              }
            }

LABEL_168:
            v73 = *(v6 + 3);
            v74 = *(v6 + 5);
            *(v6 + 5) = v74 + 1;
            *(v73 + 8 * v74) = (v11 - v13 + 1) | 0x78000000;
            v75 = *(v73 + 8 * v11);
            v76 = *(v6 + 9);
            if (v76 >= v13)
            {
              *(v6 + 9) = v76 + 1;
              v77 = *(v6 + 19);
              if (v77 < v13)
              {
LABEL_170:
                v78 = *(v6 + 10);
                if (v78 < v13)
                {
                  goto LABEL_171;
                }

                goto LABEL_195;
              }
            }

            else
            {
              v77 = *(v6 + 19);
              if (v77 < v13)
              {
                goto LABEL_170;
              }
            }

            *(v6 + 19) = v77 + 1;
            v78 = *(v6 + 10);
            if (v78 < v13)
            {
LABEL_171:
              v79 = *(v6 + 20);
              if (v79 < v13)
              {
                goto LABEL_172;
              }

              goto LABEL_196;
            }

LABEL_195:
            *(v6 + 10) = v78 + 1;
            v79 = *(v6 + 20);
            if (v79 < v13)
            {
LABEL_172:
              v80 = *(v6 + 11);
              if (v80 < v13)
              {
                goto LABEL_173;
              }

              goto LABEL_197;
            }

LABEL_196:
            *(v6 + 20) = v79 + 1;
            v80 = *(v6 + 11);
            if (v80 < v13)
            {
LABEL_173:
              v81 = *(v6 + 21);
              if (v81 < v13)
              {
                goto LABEL_174;
              }

              goto LABEL_198;
            }

LABEL_197:
            *(v6 + 11) = v80 + 1;
            v81 = *(v6 + 21);
            if (v81 < v13)
            {
LABEL_174:
              v82 = *(v6 + 12);
              if (v82 < v13)
              {
                goto LABEL_175;
              }

              goto LABEL_199;
            }

LABEL_198:
            *(v6 + 21) = v81 + 1;
            v82 = *(v6 + 12);
            if (v82 < v13)
            {
LABEL_175:
              v83 = *(v6 + 22);
              if (v83 < v13)
              {
                goto LABEL_176;
              }

              goto LABEL_200;
            }

LABEL_199:
            *(v6 + 12) = v82 + 1;
            v83 = *(v6 + 22);
            if (v83 < v13)
            {
LABEL_176:
              v84 = *(v6 + 13);
              if (v84 < v13)
              {
                goto LABEL_177;
              }

              goto LABEL_201;
            }

LABEL_200:
            *(v6 + 22) = v83 + 1;
            v84 = *(v6 + 13);
            if (v84 < v13)
            {
LABEL_177:
              v85 = *(v6 + 23);
              if (v85 < v13)
              {
                goto LABEL_178;
              }

              goto LABEL_202;
            }

LABEL_201:
            *(v6 + 13) = v84 + 1;
            v85 = *(v6 + 23);
            if (v85 < v13)
            {
LABEL_178:
              v86 = *(v6 + 14);
              if (v86 < v13)
              {
                goto LABEL_179;
              }

              goto LABEL_203;
            }

LABEL_202:
            *(v6 + 23) = v85 + 1;
            v86 = *(v6 + 14);
            if (v86 < v13)
            {
LABEL_179:
              v87 = *(v6 + 24);
              if (v87 < v13)
              {
                goto LABEL_180;
              }

              goto LABEL_204;
            }

LABEL_203:
            *(v6 + 14) = v86 + 1;
            v87 = *(v6 + 24);
            if (v87 < v13)
            {
LABEL_180:
              v88 = *(v6 + 15);
              if (v88 < v13)
              {
                goto LABEL_181;
              }

              goto LABEL_205;
            }

LABEL_204:
            *(v6 + 24) = v87 + 1;
            v88 = *(v6 + 15);
            if (v88 < v13)
            {
LABEL_181:
              v89 = *(v6 + 25);
              if (v89 < v13)
              {
                goto LABEL_182;
              }

              goto LABEL_206;
            }

LABEL_205:
            *(v6 + 15) = v88 + 1;
            v89 = *(v6 + 25);
            if (v89 < v13)
            {
LABEL_182:
              v90 = *(v6 + 16);
              if (v90 < v13)
              {
                goto LABEL_183;
              }

              goto LABEL_207;
            }

LABEL_206:
            *(v6 + 25) = v89 + 1;
            v90 = *(v6 + 16);
            if (v90 < v13)
            {
LABEL_183:
              v91 = *(v6 + 26);
              if (v91 < v13)
              {
                goto LABEL_184;
              }

              goto LABEL_208;
            }

LABEL_207:
            *(v6 + 16) = v90 + 1;
            v91 = *(v6 + 26);
            if (v91 < v13)
            {
LABEL_184:
              v92 = *(v6 + 17);
              if (v92 < v13)
              {
                goto LABEL_185;
              }

              goto LABEL_209;
            }

LABEL_208:
            *(v6 + 26) = v91 + 1;
            v92 = *(v6 + 17);
            if (v92 < v13)
            {
LABEL_185:
              v93 = *(v6 + 27);
              if (v93 < v13)
              {
                goto LABEL_187;
              }

              goto LABEL_186;
            }

LABEL_209:
            *(v6 + 17) = v92 + 1;
            v93 = *(v6 + 27);
            if (v93 < v13)
            {
LABEL_187:
              memmove((v73 + 8 * v13 + 8), (v73 + 8 * v13), 8 * (*(v6 + 5) + ~v13));
              *(*(v6 + 3) + 8 * v13) = v75;
              result = sub_298BA2BE4(v6, v13 + 1, 1, a4);
              if (v6[4])
              {
                return result;
              }

              v95 = *(v6 + 4);
              v94 = *(v6 + 5);
              v96 = v94 - v13;
              if (v94 < v95 || (v97 = (v95 + 1) / 2, v98 = ((v95 + 1 + ((v95 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v97, v95 >= v98))
              {
                result = *(v6 + 3);
                *(v6 + 5) = v94 + 1;
                *&result[2 * v94] = v96 | 0x80000000;
              }

              else
              {
                if (v98 >> 61)
                {
LABEL_191:
                  v6[4] = 12;
LABEL_192:
                  *v6 = &byte_2A13C2DD8;
                  *(v6 + 1) = &byte_2A13C2DD8;
                  v99 = *(v6 + 3);
                  v100 = *(v6 + 5);
                  *(v6 + 5) = v100 + 1;
                  *(v99 + 8 * v100) = v96 | 0x80000000;
                  return result;
                }

                result = malloc_type_realloc(*(v6 + 3), 24 * v97, 0x100004000313F17uLL);
                if (!result)
                {
                  if (v6[4])
                  {
                    goto LABEL_192;
                  }

                  goto LABEL_191;
                }

                *(v6 + 3) = result;
                *(v6 + 4) = v98;
                v108 = v6[4];
                v109 = *(v6 + 5);
                *(v6 + 5) = v109 + 1;
                *&result[2 * v109] = v96 | 0x80000000;
                if (v108)
                {
                  return result;
                }
              }

              *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (*(v6 + 5) - v13);
              v102 = *(v6 + 4);
              v101 = *(v6 + 5);
              if (v101 < v102 || (v103 = (v102 + 1) / 2, v104 = ((v102 + 1 + ((v102 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v103, v102 >= v104))
              {
                *(v6 + 5) = v101 + 1;
                *&result[2 * v101] = 2281701376;
              }

              else
              {
                if (v104 >> 61)
                {
                  v6[4] = 12;
                  *v6 = &byte_2A13C2DD8;
                  *(v6 + 1) = &byte_2A13C2DD8;
LABEL_290:
                  *(v6 + 5) = v101 + 1;
                  *&result[2 * v101] = 2281701376;
                  return result;
                }

                result = malloc_type_realloc(result, 24 * v103, 0x100004000313F17uLL);
                if (!result)
                {
                  if (!v6[4])
                  {
                    v6[4] = 12;
                  }

                  *v6 = &byte_2A13C2DD8;
                  *(v6 + 1) = &byte_2A13C2DD8;
                  result = *(v6 + 3);
                  v101 = *(v6 + 5);
                  goto LABEL_290;
                }

                *(v6 + 3) = result;
                *(v6 + 4) = v104;
                v110 = v6[4];
                v111 = *(v6 + 5);
                *(v6 + 5) = v111 + 1;
                *&result[2 * v111] = 2281701376;
                if (v110)
                {
                  return result;
                }
              }

              *&result[2 * *(v6 + 5) - 2] = *&result[2 * *(v6 + 5) - 2] & 0xF8000000 | 1;
              v105 = *(v6 + 4);
              if (*(v6 + 5) >= v105)
              {
                v106 = (v105 + 1) / 2;
                v107 = ((v105 + 1 + ((v105 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v106;
                if (v105 < v107)
                {
                  if (v107 >> 61)
                  {
                    v6[4] = 12;
                    *v6 = &byte_2A13C2DD8;
                    *(v6 + 1) = &byte_2A13C2DD8;
                  }

                  else
                  {
                    result = malloc_type_realloc(result, 24 * v106, 0x100004000313F17uLL);
                    if (result)
                    {
                      *(v6 + 3) = result;
                      *(v6 + 4) = v107;
                    }

                    else
                    {
                      if (!v6[4])
                      {
                        v6[4] = 12;
                      }

                      *v6 = &byte_2A13C2DD8;
                      *(v6 + 1) = &byte_2A13C2DD8;
                      result = *(v6 + 3);
                    }
                  }
                }
              }

              v142 = *(v6 + 5);
              *(v6 + 5) = v142 + 1;
              *&result[2 * v142] = 2415919106;
              return result;
            }

LABEL_186:
            *(v6 + 27) = v93 + 1;
            goto LABEL_187;
          }

          if (v15 <= 10)
          {
            if (v15 == 9)
            {
              return result;
            }

            goto LABEL_29;
          }

          if (v15 == 11)
          {
            goto LABEL_230;
          }

          if (v15 != 18)
          {
            goto LABEL_165;
          }

          v7 = v11;
          v24 = v11 - v13;
          if (v11 == v13)
          {
            goto LABEL_58;
          }

          if (v24 >= 1)
          {
            v25 = *(v6 + 4) + v24;
            if (v25 >> 61)
            {
              goto LABEL_50;
            }

            v26 = malloc_type_realloc(*(v6 + 3), 8 * v25, 0x100004000313F17uLL);
            if (v26)
            {
              *(v6 + 3) = v26;
              *(v6 + 4) = v25;
              goto LABEL_57;
            }

            if (!v6[4])
            {
LABEL_50:
              v6[4] = 12;
            }

            *v6 = &byte_2A13C2DD8;
            *(v6 + 1) = &byte_2A13C2DD8;
          }

LABEL_57:
          result = memmove((*(v6 + 3) + 8 * *(v6 + 5)), (*(v6 + 3) + 8 * v13), 8 * v24);
          v7 = *(v6 + 5) + v24;
          *(v6 + 5) = v7;
LABEL_58:
          --a3;
          a2 = v11;
          a4 = (a4 - 1);
          if (!v6[4])
          {
            goto LABEL_3;
          }

          return result;
        }

        v16 = v11 - v13;
        if (v11 == v13)
        {
          break;
        }

        if (v16 >= 1)
        {
          v17 = *(v6 + 4) + v16;
          if (v17 >> 61)
          {
            goto LABEL_22;
          }

          v12 = malloc_type_realloc(*(v6 + 3), 8 * v17, 0x100004000313F17uLL);
          if (!v12)
          {
            if (!v6[4])
            {
LABEL_22:
              v6[4] = 12;
            }

            *v6 = &byte_2A13C2DD8;
            *(v6 + 1) = &byte_2A13C2DD8;
            goto LABEL_12;
          }

          *(v6 + 3) = v12;
          *(v6 + 4) = v17;
        }

LABEL_12:
        result = memmove((*(v6 + 3) + 8 * *(v6 + 5)), (*(v6 + 3) + 8 * v13), 8 * v16);
        v7 = *(v6 + 5) + v16;
        *(v6 + 5) = v7;
        --a3;
        --v10;
        if (v6[4])
        {
          return result;
        }
      }

      do
      {
        if (v10 == 256)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        if (v10 + 1 >= 3)
        {
          v22 = v21;
        }

        else
        {
          v22 = v10;
        }

        v23 = v9 + 8 * v22;
        --v10;
      }

      while (v23 == 19);
      if (v23 <= 8)
      {
        v13 = v11;
        if ((v23 - 1) >= 3)
        {
          if (v23)
          {
            goto LABEL_165;
          }

          goto LABEL_162;
        }

        goto LABEL_155;
      }

      if (v23 > 10)
      {
        if (v23 != 11)
        {
          if (v23 == 18)
          {
            a3 = v10 + 1;
            v7 = v11;
            goto LABEL_58;
          }

LABEL_165:
          v6[4] = 15;
          *v6 = &byte_2A13C2DD8;
          *(v6 + 1) = &byte_2A13C2DD8;
          return result;
        }

        v13 = v11;
LABEL_230:
        v112 = *(v6 + 4);
        if (v11 >= v112)
        {
          v113 = (v112 + 1) / 2;
          v114 = ((v112 + 1 + ((v112 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v113;
          if (v112 < v114)
          {
            if (v114 >> 61)
            {
LABEL_233:
              v6[4] = 12;
LABEL_234:
              *v6 = &byte_2A13C2DD8;
              *(v6 + 1) = &byte_2A13C2DD8;
              goto LABEL_237;
            }

            v115 = malloc_type_realloc(*(v6 + 3), 24 * v113, 0x100004000313F17uLL);
            if (!v115)
            {
              if (v6[4])
              {
                goto LABEL_234;
              }

              goto LABEL_233;
            }

            *(v6 + 3) = v115;
            *(v6 + 4) = v114;
          }
        }

LABEL_237:
        v116 = *(v6 + 3);
        v117 = *(v6 + 5);
        *(v6 + 5) = v117 + 1;
        *(v116 + 8 * v117) = (v11 - v13 + 1) | 0x48000000;
        v118 = *(v116 + 8 * v11);
        v119 = *(v6 + 9);
        if (v119 >= v13)
        {
          *(v6 + 9) = v119 + 1;
          v120 = *(v6 + 19);
          if (v120 < v13)
          {
LABEL_239:
            v121 = *(v6 + 10);
            if (v121 < v13)
            {
              goto LABEL_240;
            }

            goto LABEL_263;
          }
        }

        else
        {
          v120 = *(v6 + 19);
          if (v120 < v13)
          {
            goto LABEL_239;
          }
        }

        *(v6 + 19) = v120 + 1;
        v121 = *(v6 + 10);
        if (v121 < v13)
        {
LABEL_240:
          v122 = *(v6 + 20);
          if (v122 < v13)
          {
            goto LABEL_241;
          }

          goto LABEL_264;
        }

LABEL_263:
        *(v6 + 10) = v121 + 1;
        v122 = *(v6 + 20);
        if (v122 < v13)
        {
LABEL_241:
          v123 = *(v6 + 11);
          if (v123 < v13)
          {
            goto LABEL_242;
          }

          goto LABEL_265;
        }

LABEL_264:
        *(v6 + 20) = v122 + 1;
        v123 = *(v6 + 11);
        if (v123 < v13)
        {
LABEL_242:
          v124 = *(v6 + 21);
          if (v124 < v13)
          {
            goto LABEL_243;
          }

          goto LABEL_266;
        }

LABEL_265:
        *(v6 + 11) = v123 + 1;
        v124 = *(v6 + 21);
        if (v124 < v13)
        {
LABEL_243:
          v125 = *(v6 + 12);
          if (v125 < v13)
          {
            goto LABEL_244;
          }

          goto LABEL_267;
        }

LABEL_266:
        *(v6 + 21) = v124 + 1;
        v125 = *(v6 + 12);
        if (v125 < v13)
        {
LABEL_244:
          v126 = *(v6 + 22);
          if (v126 < v13)
          {
            goto LABEL_245;
          }

          goto LABEL_268;
        }

LABEL_267:
        *(v6 + 12) = v125 + 1;
        v126 = *(v6 + 22);
        if (v126 < v13)
        {
LABEL_245:
          v127 = *(v6 + 13);
          if (v127 < v13)
          {
            goto LABEL_246;
          }

          goto LABEL_269;
        }

LABEL_268:
        *(v6 + 22) = v126 + 1;
        v127 = *(v6 + 13);
        if (v127 < v13)
        {
LABEL_246:
          v128 = *(v6 + 23);
          if (v128 < v13)
          {
            goto LABEL_247;
          }

          goto LABEL_270;
        }

LABEL_269:
        *(v6 + 13) = v127 + 1;
        v128 = *(v6 + 23);
        if (v128 < v13)
        {
LABEL_247:
          v129 = *(v6 + 14);
          if (v129 < v13)
          {
            goto LABEL_248;
          }

          goto LABEL_271;
        }

LABEL_270:
        *(v6 + 23) = v128 + 1;
        v129 = *(v6 + 14);
        if (v129 < v13)
        {
LABEL_248:
          v130 = *(v6 + 24);
          if (v130 < v13)
          {
            goto LABEL_249;
          }

          goto LABEL_272;
        }

LABEL_271:
        *(v6 + 14) = v129 + 1;
        v130 = *(v6 + 24);
        if (v130 < v13)
        {
LABEL_249:
          v131 = *(v6 + 15);
          if (v131 < v13)
          {
            goto LABEL_250;
          }

          goto LABEL_273;
        }

LABEL_272:
        *(v6 + 24) = v130 + 1;
        v131 = *(v6 + 15);
        if (v131 < v13)
        {
LABEL_250:
          v132 = *(v6 + 25);
          if (v132 < v13)
          {
            goto LABEL_251;
          }

          goto LABEL_274;
        }

LABEL_273:
        *(v6 + 15) = v131 + 1;
        v132 = *(v6 + 25);
        if (v132 < v13)
        {
LABEL_251:
          v133 = *(v6 + 16);
          if (v133 < v13)
          {
            goto LABEL_252;
          }

          goto LABEL_275;
        }

LABEL_274:
        *(v6 + 25) = v132 + 1;
        v133 = *(v6 + 16);
        if (v133 < v13)
        {
LABEL_252:
          v134 = *(v6 + 26);
          if (v134 < v13)
          {
            goto LABEL_253;
          }

          goto LABEL_276;
        }

LABEL_275:
        *(v6 + 16) = v133 + 1;
        v134 = *(v6 + 26);
        if (v134 < v13)
        {
LABEL_253:
          v135 = *(v6 + 17);
          if (v135 < v13)
          {
            goto LABEL_254;
          }

          goto LABEL_277;
        }

LABEL_276:
        *(v6 + 26) = v134 + 1;
        v135 = *(v6 + 17);
        if (v135 < v13)
        {
LABEL_254:
          v136 = *(v6 + 27);
          if (v136 < v13)
          {
            goto LABEL_256;
          }

          goto LABEL_255;
        }

LABEL_277:
        *(v6 + 17) = v135 + 1;
        v136 = *(v6 + 27);
        if (v136 < v13)
        {
LABEL_256:
          memmove((v116 + 8 * v13 + 8), (v116 + 8 * v13), 8 * (*(v6 + 5) + ~v13));
          result = *(v6 + 3);
          *&result[2 * v13] = v118;
          if (!v6[4])
          {
            v137 = *(v6 + 4);
            v138 = *(v6 + 5);
            v139 = v138 - v13;
            if (v138 >= v137)
            {
              v140 = (v137 + 1) / 2;
              v141 = ((v137 + 1 + ((v137 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v140;
              if (v137 < v141)
              {
                if (v141 >> 61)
                {
                  v6[4] = 12;
                  *v6 = &byte_2A13C2DD8;
                  *(v6 + 1) = &byte_2A13C2DD8;
                }

                else
                {
                  result = malloc_type_realloc(result, 24 * v140, 0x100004000313F17uLL);
                  if (result)
                  {
                    *(v6 + 3) = result;
                    *(v6 + 4) = v141;
                  }

                  else
                  {
                    if (!v6[4])
                    {
                      v6[4] = 12;
                    }

                    *v6 = &byte_2A13C2DD8;
                    *(v6 + 1) = &byte_2A13C2DD8;
                    result = *(v6 + 3);
                  }
                }
              }
            }

            v143 = *(v6 + 5);
            *(v6 + 5) = v143 + 1;
            *&result[2 * v143] = v139 | 0x50000000;
          }

          return result;
        }

LABEL_255:
        *(v6 + 27) = v136 + 1;
        goto LABEL_256;
      }

      if (v23 == 9)
      {
        return result;
      }

      v13 = v11;
LABEL_29:
      v18 = *(v6 + 4);
      if (v11 >= v18)
      {
        v19 = (v18 + 1) / 2;
        v20 = ((v18 + 1 + ((v18 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v19;
        if (v18 < v20)
        {
          if (v20 >> 61)
          {
            goto LABEL_32;
          }

          v27 = malloc_type_realloc(*(v6 + 3), 24 * v19, 0x100004000313F17uLL);
          if (v27)
          {
            *(v6 + 3) = v27;
            *(v6 + 4) = v20;
          }

          else
          {
            if (!v6[4])
            {
LABEL_32:
              v6[4] = 12;
            }

            *v6 = &byte_2A13C2DD8;
            *(v6 + 1) = &byte_2A13C2DD8;
          }
        }
      }

      v28 = v11 - v13;
      v29 = *(v6 + 3);
      v30 = *(v6 + 5);
      *(v6 + 5) = v30 + 1;
      *(v29 + 8 * v30) = (v11 - v13 + 1) | 0x78000000;
      v31 = *(v29 + 8 * v11);
      v32 = *(v6 + 9);
      if (v32 >= v13)
      {
        *(v6 + 9) = v32 + 1;
        v33 = *(v6 + 19);
        if (v33 >= v13)
        {
          goto LABEL_87;
        }

LABEL_64:
        v34 = *(v6 + 10);
        if (v34 < v13)
        {
          goto LABEL_65;
        }

LABEL_88:
        *(v6 + 10) = v34 + 1;
        v35 = *(v6 + 20);
        if (v35 >= v13)
        {
          goto LABEL_89;
        }

LABEL_66:
        v36 = *(v6 + 11);
        if (v36 < v13)
        {
          goto LABEL_67;
        }

LABEL_90:
        *(v6 + 11) = v36 + 1;
        v37 = *(v6 + 21);
        if (v37 >= v13)
        {
          goto LABEL_91;
        }

LABEL_68:
        v38 = *(v6 + 12);
        if (v38 < v13)
        {
          goto LABEL_69;
        }

LABEL_92:
        *(v6 + 12) = v38 + 1;
        v39 = *(v6 + 22);
        if (v39 >= v13)
        {
          goto LABEL_93;
        }

LABEL_70:
        v40 = *(v6 + 13);
        if (v40 < v13)
        {
          goto LABEL_71;
        }

LABEL_94:
        *(v6 + 13) = v40 + 1;
        v41 = *(v6 + 23);
        if (v41 >= v13)
        {
          goto LABEL_95;
        }

LABEL_72:
        v42 = *(v6 + 14);
        if (v42 < v13)
        {
          goto LABEL_73;
        }

LABEL_96:
        *(v6 + 14) = v42 + 1;
        v43 = *(v6 + 24);
        if (v43 >= v13)
        {
          goto LABEL_97;
        }

LABEL_74:
        v44 = *(v6 + 15);
        if (v44 < v13)
        {
          goto LABEL_75;
        }

LABEL_98:
        *(v6 + 15) = v44 + 1;
        v45 = *(v6 + 25);
        if (v45 >= v13)
        {
          goto LABEL_99;
        }

LABEL_76:
        v46 = *(v6 + 16);
        if (v46 < v13)
        {
          goto LABEL_77;
        }

LABEL_100:
        *(v6 + 16) = v46 + 1;
        v47 = *(v6 + 26);
        if (v47 >= v13)
        {
          goto LABEL_101;
        }

LABEL_78:
        v48 = *(v6 + 17);
        if (v48 < v13)
        {
          goto LABEL_79;
        }

LABEL_102:
        *(v6 + 17) = v48 + 1;
        v49 = *(v6 + 27);
        if (v49 >= v13)
        {
LABEL_80:
          *(v6 + 27) = v49 + 1;
        }
      }

      else
      {
        v33 = *(v6 + 19);
        if (v33 < v13)
        {
          goto LABEL_64;
        }

LABEL_87:
        *(v6 + 19) = v33 + 1;
        v34 = *(v6 + 10);
        if (v34 >= v13)
        {
          goto LABEL_88;
        }

LABEL_65:
        v35 = *(v6 + 20);
        if (v35 < v13)
        {
          goto LABEL_66;
        }

LABEL_89:
        *(v6 + 20) = v35 + 1;
        v36 = *(v6 + 11);
        if (v36 >= v13)
        {
          goto LABEL_90;
        }

LABEL_67:
        v37 = *(v6 + 21);
        if (v37 < v13)
        {
          goto LABEL_68;
        }

LABEL_91:
        *(v6 + 21) = v37 + 1;
        v38 = *(v6 + 12);
        if (v38 >= v13)
        {
          goto LABEL_92;
        }

LABEL_69:
        v39 = *(v6 + 22);
        if (v39 < v13)
        {
          goto LABEL_70;
        }

LABEL_93:
        *(v6 + 22) = v39 + 1;
        v40 = *(v6 + 13);
        if (v40 >= v13)
        {
          goto LABEL_94;
        }

LABEL_71:
        v41 = *(v6 + 23);
        if (v41 < v13)
        {
          goto LABEL_72;
        }

LABEL_95:
        *(v6 + 23) = v41 + 1;
        v42 = *(v6 + 14);
        if (v42 >= v13)
        {
          goto LABEL_96;
        }

LABEL_73:
        v43 = *(v6 + 24);
        if (v43 < v13)
        {
          goto LABEL_74;
        }

LABEL_97:
        *(v6 + 24) = v43 + 1;
        v44 = *(v6 + 15);
        if (v44 >= v13)
        {
          goto LABEL_98;
        }

LABEL_75:
        v45 = *(v6 + 25);
        if (v45 < v13)
        {
          goto LABEL_76;
        }

LABEL_99:
        *(v6 + 25) = v45 + 1;
        v46 = *(v6 + 16);
        if (v46 >= v13)
        {
          goto LABEL_100;
        }

LABEL_77:
        v47 = *(v6 + 26);
        if (v47 < v13)
        {
          goto LABEL_78;
        }

LABEL_101:
        *(v6 + 26) = v47 + 1;
        v48 = *(v6 + 17);
        if (v48 >= v13)
        {
          goto LABEL_102;
        }

LABEL_79:
        v49 = *(v6 + 27);
        if (v49 >= v13)
        {
          goto LABEL_80;
        }
      }

      memmove((v29 + 8 * v13 + 8), (v29 + 8 * v13), 8 * (*(v6 + 5) + ~v13));
      result = *(v6 + 3);
      *&result[2 * v13] = v31;
      a2 = *(v6 + 5);
      if (v6[4])
      {
        goto LABEL_129;
      }

      v50 = a2 - v13;
      v51 = *(v6 + 4);
      if (a2 < v51 || (v52 = (v51 + 1) / 2, v53 = ((v51 + 1 + ((v51 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v52, v51 >= v53))
      {
        *(v6 + 5) = a2 + 1;
        *&result[2 * a2] = v50 | 0x80000000;
        a2 = *(v6 + 5);
LABEL_105:
        *&result[2 * v13] = *&result[2 * v13] & 0xF8000000 | (a2 - v13);
        v56 = *(v6 + 4);
        v55 = *(v6 + 5);
        if (v55 < v56 || (v57 = (v56 + 1) / 2, v58 = ((v56 + 1 + ((v56 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v57, v56 >= v58))
        {
          *(v6 + 5) = v55 + 1;
          *&result[2 * v55] = 2281701376;
          a2 = *(v6 + 5);
          goto LABEL_110;
        }

        if (v58 >> 61)
        {
          v6[4] = 12;
          v54 = 2281701376;
          goto LABEL_114;
        }

        result = malloc_type_realloc(result, 24 * v57, 0x100004000313F17uLL);
        if (!result)
        {
          if (!v6[4])
          {
            v6[4] = 12;
          }

          *v6 = &byte_2A13C2DD8;
          *(v6 + 1) = &byte_2A13C2DD8;
          v54 = 2281701376;
          result = *(v6 + 3);
          goto LABEL_128;
        }

        *(v6 + 3) = result;
        *(v6 + 4) = v58;
        v64 = v6[4];
        v65 = *(v6 + 5);
        *(v6 + 5) = v65 + 1;
        *&result[2 * v65] = 2281701376;
        a2 = *(v6 + 5);
        if (v64)
        {
          goto LABEL_129;
        }

LABEL_110:
        *&result[2 * a2 - 2] = *&result[2 * a2 - 2] & 0xF8000000 | 1;
        v59 = *(v6 + 4);
        if (*(v6 + 5) >= v59)
        {
          v60 = (v59 + 1) / 2;
          v61 = ((v59 + 1 + ((v59 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + v60;
          if (v59 < v61)
          {
            if (v61 >> 61)
            {
              v6[4] = 12;
              v54 = 2415919106;
LABEL_114:
              *v6 = &byte_2A13C2DD8;
              *(v6 + 1) = &byte_2A13C2DD8;
LABEL_128:
              v66 = *(v6 + 5);
              *(v6 + 5) = v66 + 1;
              *&result[2 * v66] = v54;
              a2 = *(v6 + 5);
              goto LABEL_129;
            }

            result = malloc_type_realloc(result, 24 * v60, 0x100004000313F17uLL);
            if (!result)
            {
              if (!v6[4])
              {
                v6[4] = 12;
              }

              *v6 = &byte_2A13C2DD8;
              *(v6 + 1) = &byte_2A13C2DD8;
              v54 = 2415919106;
              result = *(v6 + 3);
              goto LABEL_128;
            }

            *(v6 + 3) = result;
            *(v6 + 4) = v61;
          }
        }

        v54 = 2415919106;
        goto LABEL_128;
      }

      if (v53 >> 61)
      {
        v6[4] = 12;
        *v6 = &byte_2A13C2DD8;
        *(v6 + 1) = &byte_2A13C2DD8;
        v54 = v50 | 0x80000000;
        goto LABEL_128;
      }

      result = malloc_type_realloc(result, 24 * v52, 0x100004000313F17uLL);
      if (!result)
      {
        if (!v6[4])
        {
          v6[4] = 12;
        }

        *v6 = &byte_2A13C2DD8;
        *(v6 + 1) = &byte_2A13C2DD8;
        result = *(v6 + 3);
        v54 = v50 | 0x80000000;
        goto LABEL_128;
      }

      *(v6 + 3) = result;
      *(v6 + 4) = v53;
      v62 = v6[4];
      v63 = *(v6 + 5);
      *(v6 + 5) = v63 + 1;
      *&result[2 * v63] = v50 | 0x80000000;
      a2 = *(v6 + 5);
      if (!v62)
      {
        goto LABEL_105;
      }

LABEL_129:
      if (v11 == v13)
      {
        break;
      }

      if (v28 < 1)
      {
        v68 = a2;
      }

      else
      {
        v67 = *(v6 + 4) + v28;
        v68 = a2;
        if (v67 >> 61)
        {
          if (!v6[4])
          {
            v6[4] = 12;
          }

          *v6 = &byte_2A13C2DD8;
          *(v6 + 1) = &byte_2A13C2DD8;
        }

        else
        {
          result = malloc_type_realloc(result, 8 * v67, 0x100004000313F17uLL);
          if (result)
          {
            *(v6 + 3) = result;
            *(v6 + 4) = v67;
          }

          else
          {
            if (!v6[4])
            {
              v6[4] = 12;
            }

            *v6 = &byte_2A13C2DD8;
            *(v6 + 1) = &byte_2A13C2DD8;
            result = *(v6 + 3);
          }
        }
      }

      result = memmove(&result[2 * *(v6 + 5)], &result[2 * v13 + 2], 8 * v28);
      v7 = *(v6 + 5) + v28;
      *(v6 + 5) = v7;
      a3 = 1;
      a2 = v68;
      a4 = (a4 - 1);
      if (v6[4])
      {
        return result;
      }
    }

    a3 = 1;
    v7 = a2;
    a4 = (a4 - 1);
    if (!v6[4])
    {
      continue;
    }

    return result;
  }
}

size_t sub_298BA3E78(int a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v72 = *MEMORY[0x29EDCA608];
  if (a1 == 255)
  {
    v6 = *(a2 + 16);
    if (!strcmp("REG_NOMATCH", v6))
    {
      v14 = 1;
    }

    else if (!strcmp("REG_BADPAT", v6))
    {
      v14 = 2;
    }

    else if (!strcmp("REG_ECOLLATE", v6))
    {
      v14 = 3;
    }

    else if (!strcmp("REG_ECTYPE", v6))
    {
      v14 = 4;
    }

    else if (!strcmp("REG_EESCAPE", v6))
    {
      v14 = 5;
    }

    else if (!strcmp("REG_ESUBREG", v6))
    {
      v14 = 6;
    }

    else if (!strcmp("REG_EBRACK", v6))
    {
      v14 = 7;
    }

    else if (!strcmp("REG_EPAREN", v6))
    {
      v14 = 8;
    }

    else if (!strcmp("REG_EBRACE", v6))
    {
      v14 = 9;
    }

    else if (!strcmp("REG_BADBR", v6))
    {
      v14 = 10;
    }

    else if (!strcmp("REG_ERANGE", v6))
    {
      v14 = 11;
    }

    else if (!strcmp("REG_ESPACE", v6))
    {
      v14 = 12;
    }

    else if (!strcmp("REG_BADRPT", v6))
    {
      v14 = 13;
    }

    else if (!strcmp("REG_EMPTY", v6))
    {
      v14 = 14;
    }

    else if (!strcmp("REG_ASSERT", v6))
    {
      v14 = 15;
    }

    else
    {
      if (strcmp("REG_INVARG", v6))
      {
        p_str = "0";
        goto LABEL_98;
      }

      v14 = 16;
    }

    v21 = v14;
    v15 = "%d";
    goto LABEL_97;
  }

  v8 = &dword_29EEB5F20;
  do
  {
    v10 = *v8;
    v8 += 6;
    v9 = v10;
    if (v10)
    {
      v11 = v9 == (a1 & 0xFFFFFEFF);
    }

    else
    {
      v11 = 1;
    }
  }

  while (!v11);
  if ((a1 & 0x100) == 0)
  {
    p_str = *(v8 - 1);
    goto LABEL_98;
  }

  if (!v9)
  {
    v21 = a1 & 0xFFFFFEFF;
    v15 = "REG_0x%x";
LABEL_97:
    p_str = &__str;
    snprintf(&__str, 0x32uLL, v15, v21);
    goto LABEL_98;
  }

  v12 = *(v8 - 2);
  __str = *v12;
  if (!__str)
  {
    goto LABEL_79;
  }

  if (!v12[1])
  {
    goto LABEL_79;
  }

  if (!v12[2])
  {
    goto LABEL_79;
  }

  if (!v12[3])
  {
    goto LABEL_79;
  }

  if (!v12[4])
  {
    goto LABEL_79;
  }

  if (!v12[5])
  {
    goto LABEL_79;
  }

  if (!v12[6])
  {
    goto LABEL_79;
  }

  if (!v12[7])
  {
    goto LABEL_79;
  }

  if (!v12[8])
  {
    goto LABEL_79;
  }

  if (!v12[9])
  {
    goto LABEL_79;
  }

  if (!v12[10])
  {
    goto LABEL_79;
  }

  if (!v12[11])
  {
    goto LABEL_79;
  }

  if (!v12[12])
  {
    goto LABEL_79;
  }

  if (!v12[13])
  {
    goto LABEL_79;
  }

  if (!v12[14])
  {
    goto LABEL_79;
  }

  if (!v12[15])
  {
    goto LABEL_79;
  }

  if (!v12[16])
  {
    goto LABEL_79;
  }

  if (!v12[17])
  {
    goto LABEL_79;
  }

  if (!v12[18])
  {
    goto LABEL_79;
  }

  if (!v12[19])
  {
    goto LABEL_79;
  }

  if (!v12[20])
  {
    goto LABEL_79;
  }

  if (!v12[21])
  {
    goto LABEL_79;
  }

  if (!v12[22])
  {
    goto LABEL_79;
  }

  if (!v12[23])
  {
    goto LABEL_79;
  }

  if (!v12[24])
  {
    goto LABEL_79;
  }

  if (!v12[25])
  {
    goto LABEL_79;
  }

  if (!v12[26])
  {
    goto LABEL_79;
  }

  if (!v12[27])
  {
    goto LABEL_79;
  }

  if (!v12[28])
  {
    goto LABEL_79;
  }

  if (!v12[29])
  {
    goto LABEL_79;
  }

  if (!v12[30])
  {
    goto LABEL_79;
  }

  if (!v12[31])
  {
    goto LABEL_79;
  }

  if (!v12[32])
  {
    goto LABEL_79;
  }

  if (!v12[33])
  {
    goto LABEL_79;
  }

  if (!v12[34])
  {
    goto LABEL_79;
  }

  if (!v12[35])
  {
    goto LABEL_79;
  }

  if (!v12[36])
  {
    goto LABEL_79;
  }

  if (!v12[37])
  {
    goto LABEL_79;
  }

  if (!v12[38])
  {
    goto LABEL_79;
  }

  if (!v12[39])
  {
    goto LABEL_79;
  }

  if (!v12[40])
  {
    goto LABEL_79;
  }

  if (!v12[41])
  {
    goto LABEL_79;
  }

  if (!v12[42])
  {
    goto LABEL_79;
  }

  v65 = v12[43];
  if (v65 && (v66 = v12[44]) != 0 && (v67 = v12[45]) != 0 && (v68 = v12[46]) != 0 && (v69 = v12[47]) != 0 && (v13 = v12[48], v70 = v13, v13))
  {
    v71 = 0;
    p_str = &__str;
  }

  else
  {
LABEL_79:
    p_str = &__str;
  }

LABEL_98:
  v16 = strlen(p_str);
  if (a4)
  {
    v17 = a4 - 1;
    while (v17)
    {
      v18 = *p_str++;
      *a3++ = v18;
      --v17;
      if (!v18)
      {
        goto LABEL_104;
      }
    }

    *a3 = 0;
  }

LABEL_104:
  v19 = *MEMORY[0x29EDCA608];
  return v16 + 1;
}

uint64_t sub_298BA4398(uint64_t a1, char *__s, unint64_t a3, void *a4, char a5)
{
  if (*a1 != 62053)
  {
    return 2;
  }

  v134 = v5;
  v135 = v6;
  v7 = *(a1 + 24);
  if (*v7 != 53829 || (*(v7 + 72) & 4) != 0)
  {
    return 2;
  }

  v8 = a5 & 7;
  v9 = *(v7 + 48);
  v10 = __s;
  if (v9 > 64)
  {
    v20 = *(v7 + 56);
    v19 = *(v7 + 64);
    if ((*(v7 + 40) & 4) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = a3;
    }

    if ((a5 & 4) != 0)
    {
      v23 = a4[1];
      v24 = &__s[*a4];
      v25 = &__s[v23];
      if (&__s[v23] < v24)
      {
        return 16;
      }
    }

    else
    {
      v22 = a4;
      v23 = strlen(__s);
      a4 = v22;
      __s = v10;
      v24 = v10;
      v25 = &v10[v23];
      if (&v10[v23] < v10)
      {
        return 16;
      }
    }

    v116 = a4;
    v129 = 0u;
    v128 = 0u;
    v127 = 0u;
    v34 = *(v7 + 96);
    v120 = v21;
    v124 = v25;
    if (v34)
    {
      v35 = v24;
      if (v24 < v25)
      {
        __dsta = v20;
        v113 = v8;
        v36 = v7;
        v37 = *v34;
        v38 = (__s - v24 + v23);
        v110 = &__s[v23];
        v39 = (&__s[v23] - v24);
        v35 = v24;
        do
        {
          if (*v35 == v37)
          {
            v40 = *(v36 + 104);
            if (v39 >= v40)
            {
              v41 = memcmp(v35, v34, v40);
              __s = v10;
              if (!v41)
              {
                goto LABEL_154;
              }
            }
          }

          ++v35;
          --v39;
          --v38;
        }

        while (v38);
        v35 = v110;
LABEL_154:
        v7 = v36;
        v20 = __dsta;
        v25 = v124;
        v8 = v113;
      }

      if (v35 == v25)
      {
        return 1;
      }
    }

    v126 = v7;
    LODWORD(v127) = v8;
    *&v128 = __s;
    *(&v128 + 1) = v24;
    *&v130 = 0;
    *&v129 = v25;
    v74 = malloc_type_malloc(4 * v9, 0xD100C61FuLL);
    v131[0] = v74;
    if (!v74)
    {
      return 12;
    }

    v75 = v20 + 1;
    v131[1] = v74;
    v76 = *(v7 + 48);
    *&v132 = &v74[v76];
    *(&v132 + 1) = &v74[2 * v76];
    *(&v130 + 1) = 4;
    v133 = &v74[2 * v76 + v76];
    bzero(v133, v76);
    v118 = v7;
LABEL_159:
    if (*(&v128 + 1) == v24)
    {
      v77 = 128;
    }

    else
    {
      v77 = *(v24 - 1);
    }

    v78 = v132;
    v79 = v131[1];
    bzero(v131[1], *(v126 + 48));
    v79[v75] = 1;
    sub_298BA6F48(v126, v75, v19, v79, 132, v79);
    memmove(v78, v79, *(v126 + 48));
    v80 = 0;
    if (v24 != v129)
    {
LABEL_163:
      v81 = *v24;
      goto LABEL_165;
    }

    while (1)
    {
      v81 = 128;
LABEL_165:
      v82 = v126;
      if (!memcmp(v79, v78, *(v126 + 48)))
      {
        v80 = v24;
      }

      if (v77 == 128)
      {
        if (v127)
        {
          goto LABEL_170;
        }
      }

      else if (v77 != 10 || (*(v82 + 40) & 8) == 0)
      {
LABEL_170:
        v83 = 0;
        v84 = 0;
        v85 = 130;
        if (v81 == 128)
        {
          goto LABEL_177;
        }

        goto LABEL_171;
      }

      v84 = *(v82 + 76);
      v83 = 129;
      v85 = 131;
      if (v81 == 128)
      {
LABEL_177:
        if ((v127 & 2) != 0)
        {
          goto LABEL_173;
        }

        goto LABEL_178;
      }

LABEL_171:
      if (v81 != 10 || (*(v82 + 40) & 8) == 0)
      {
LABEL_173:
        v85 = v83;
        if (v84 < 1)
        {
          goto LABEL_181;
        }

        goto LABEL_179;
      }

LABEL_178:
      v84 += *(v82 + 80);
      if (v84 < 1)
      {
        goto LABEL_181;
      }

LABEL_179:
      v86 = v84 + 1;
      do
      {
        sub_298BA6F48(v126, v75, v19, v79, v85, v79);
        --v86;
      }

      while (v86 > 1);
LABEL_181:
      if (v85 == 129)
      {
        if (v81 == 128)
        {
          v85 = 129;
          if (v77 == 128)
          {
            goto LABEL_212;
          }
        }

        else
        {
LABEL_192:
          if (v81 > 0x7Fu)
          {
            v89 = __maskrune(v81, 0x500uLL);
            if (v81 == 95 || v89 != 0)
            {
              v85 = 133;
            }

            if (v77 == 128)
            {
              goto LABEL_212;
            }
          }

          else
          {
            if (v81 == 95 || (*(MEMORY[0x29EDCA600] + 4 * v81 + 60) & 0x500) != 0)
            {
              v85 = 133;
            }

            if (v77 == 128)
            {
              goto LABEL_212;
            }
          }
        }

        v87 = v77;
        goto LABEL_207;
      }

      if (v77 == 128)
      {
        goto LABEL_212;
      }

      v87 = v77;
      if (v77 > 0x7Fu)
      {
        if (__maskrune(v77, 0x500uLL))
        {
          goto LABEL_207;
        }
      }

      else if ((*(MEMORY[0x29EDCA600] + 4 * v77 + 60) & 0x500) != 0)
      {
        goto LABEL_207;
      }

      if (v77 != 95 && v81 != 128)
      {
        goto LABEL_192;
      }

LABEL_207:
      if (v87 > 0x7F)
      {
        if (!__maskrune(v87, 0x500uLL))
        {
LABEL_211:
          if (v77 != 95)
          {
            goto LABEL_212;
          }
        }
      }

      else if ((*(MEMORY[0x29EDCA600] + 4 * v87 + 60) & 0x500) == 0)
      {
        goto LABEL_211;
      }

      if (v85 == 130 || v81 != 128 && (v81 > 0x7Fu ? (v91 = __maskrune(v81, 0x500uLL)) : (v91 = *(MEMORY[0x29EDCA600] + 4 * v81 + 60) & 0x500), !v91 && v81 != 95))
      {
        v85 = 134;
LABEL_216:
        sub_298BA6F48(v126, v75, v19, v79, v85, v79);
        goto LABEL_217;
      }

LABEL_212:
      if ((v85 - 133) <= 1)
      {
        goto LABEL_216;
      }

LABEL_217:
      if (v24 == v124 || v79[v19])
      {
        *(&v129 + 1) = v80;
        if (!v79[v19])
        {
          free(*(&v127 + 1));
          free(v130);
          v109 = 1;
          goto LABEL_269;
        }

        if (!v120 && !*(v118 + 120))
        {
          goto LABEL_264;
        }

        v92 = sub_298BA64D4(&v126, v80, v124, v75, v19);
        if (!v92)
        {
          v94 = v118;
          do
          {
            ++*(&v129 + 1);
            v95 = sub_298BA64D4(&v126, *(&v129 + 1), v124, v75, v19);
          }

          while (!v95);
          v93 = v95;
          if (v120 == 1)
          {
            goto LABEL_237;
          }

          goto LABEL_238;
        }

        v93 = v92;
        v94 = v118;
        if (v120 != 1)
        {
          goto LABEL_238;
        }

LABEL_237:
        if (!*(v94 + 120))
        {
          goto LABEL_259;
        }

LABEL_238:
        v96 = *(&v127 + 1);
        if (!*(&v127 + 1))
        {
          v96 = malloc_type_malloc(16 * *(v126 + 112) + 16, 0x1000040451B5BE8uLL);
          *(&v127 + 1) = v96;
          if (!v96)
          {
            v109 = 12;
            goto LABEL_269;
          }
        }

        v97 = *(v126 + 112);
        if (v97)
        {
          if ((v97 + 1) > 2)
          {
            v98 = v97 + 1;
          }

          else
          {
            v98 = 2;
          }

          memset(v96 + 16, 255, 16 * v98 - 16);
        }

        if (*(v94 + 120) || (BYTE1(v127) & 4) != 0)
        {
          v100 = *(v94 + 128);
          v101 = v130;
          if (v100 >= 1 && !v130)
          {
            v101 = malloc_type_malloc(8 * v100 + 8, 0x10040436913F5uLL);
            *&v130 = v101;
            v100 = *(v94 + 128);
          }

          if (v100 < 1 || v101)
          {
            v99 = sub_298BA5CC4(&v126, *(&v129 + 1), v93, v75, v19, 0, 0);
            goto LABEL_254;
          }

          free(*(&v127 + 1));
          v109 = 12;
          goto LABEL_269;
        }

        v99 = sub_298BA6928(&v126, *(&v129 + 1), v93, v75, v19);
LABEL_254:
        if (v99)
        {
          goto LABEL_258;
        }

        while (1)
        {
          v102 = *(&v129 + 1);
          if (v93 <= *(&v129 + 1))
          {
            break;
          }

          v93 = sub_298BA64D4(&v126, *(&v129 + 1), v93 - 1, v75, v19);
          v102 = *(&v129 + 1);
          if (!v93)
          {
            break;
          }

          if (sub_298BA5CC4(&v126, *(&v129 + 1), v93, v75, v19, 0, 0))
          {
            goto LABEL_258;
          }
        }

        v24 = v102 + 1;
        if (v102 == v124)
        {
LABEL_258:
          if (v120)
          {
LABEL_259:
            v103 = &v93[-v128];
            *v116 = *(&v129 + 1) - v128;
            v116[1] = v103;
            if (v120 >= 2)
            {
              v104 = v126;
              v105 = (*(&v127 + 1) + 16);
              v106 = v116 + 2;
              for (i = 1; i != v120; ++i)
              {
                while (i > *(v104 + 112))
                {
                  *v106 = -1;
                  v106[1] = -1;
                  v106 += 2;
                  ++i;
                  ++v105;
                  if (v120 == i)
                  {
                    goto LABEL_264;
                  }
                }

                v108 = *v105++;
                *v106 = v108;
                v106 += 2;
              }
            }
          }

LABEL_264:
          if (*(&v127 + 1))
          {
            free(*(&v127 + 1));
          }

          if (v130)
          {
            free(v130);
          }

          v109 = 0;
LABEL_269:
          free(v131[0]);
          return v109;
        }

        goto LABEL_159;
      }

      memmove(*(&v78 + 1), v79, *(v126 + 48));
      memmove(v79, v78, *(v126 + 48));
      sub_298BA6F48(v126, v75, v19, *(&v78 + 1), v81, v79);
      ++v24;
      v77 = v81;
      if (v24 != v129)
      {
        goto LABEL_163;
      }
    }
  }

  v12 = *(v7 + 56);
  v11 = *(v7 + 64);
  if ((*(v7 + 40) & 4) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3;
  }

  if ((a5 & 4) == 0)
  {
    v14 = a4;
    v15 = strlen(__s);
    a4 = v14;
    __s = v10;
    v16 = v10;
    v17 = &v10[v15];
    if (&v10[v15] >= v10)
    {
      goto LABEL_21;
    }

    return 16;
  }

  v15 = a4[1];
  v16 = &__s[*a4];
  v17 = &__s[v15];
  if (&__s[v15] < v16)
  {
    return 16;
  }

LABEL_21:
  v115 = a4;
  v130 = 0u;
  v129 = 0u;
  v128 = 0u;
  v127 = 0u;
  v26 = *(v7 + 96);
  __dst = v17;
  if (v26)
  {
    v27 = v16;
    if (v16 < v17)
    {
      v123 = v12;
      v112 = v8;
      v28 = v7;
      v29 = *v26;
      v30 = (__s - v16 + v15);
      v119 = &__s[v15];
      v31 = (&__s[v15] - v16);
      v27 = v16;
      while (1)
      {
        if (*v27 == v29)
        {
          v32 = *(v28 + 104);
          if (v31 >= v32)
          {
            v33 = memcmp(v27, v26, v32);
            __s = v10;
            if (!v33)
            {
              break;
            }
          }
        }

        ++v27;
        --v31;
        if (!--v30)
        {
          v27 = v119;
          break;
        }
      }

      v7 = v28;
      v17 = __dst;
      v12 = v123;
      v8 = v112;
    }

    if (v27 == v17)
    {
      return 1;
    }
  }

  v42 = v12 + 1;
  v126 = v7;
  LODWORD(v127) = v8;
  *&v128 = __s;
  *(&v128 + 1) = v16;
  v111 = v13;
  v114 = 1 << (v12 + 1);
  *&v129 = v17;
  v117 = v7;
  *v131 = 0u;
  v132 = 0u;
  while (2)
  {
    if (*(&v128 + 1) == v16)
    {
      v43 = 128;
    }

    else
    {
      v43 = *(v16 - 1);
    }

    v44 = v126;
    v45 = sub_298BA62B0(v126, v42, v11, v114, 132, v114);
    v46 = 0;
    v125 = v45;
    if (v16 != v129)
    {
LABEL_48:
      v47 = *v16;
      if (v45 == v125)
      {
        v48 = v16;
      }

      else
      {
        v48 = v46;
      }

      if (v43 == 128)
      {
        goto LABEL_63;
      }

LABEL_52:
      if (v43 == 10 && (*(v44 + 40) & 8) != 0)
      {
        goto LABEL_64;
      }

LABEL_54:
      v49 = 0;
      v50 = 0;
      v51 = 130;
      if (v47 == 128)
      {
        goto LABEL_65;
      }

LABEL_55:
      if (v47 == 10 && (*(v44 + 40) & 8) != 0)
      {
        goto LABEL_66;
      }

LABEL_57:
      v51 = v49;
      if (v50 >= 1)
      {
LABEL_67:
        v52 = v50 + 1;
        do
        {
          v45 = sub_298BA62B0(v44, v42, v11, v45, v51, v45);
          --v52;
        }

        while (v52 > 1);
      }

      goto LABEL_69;
    }

    while (1)
    {
      v47 = 128;
      if (v45 == v125)
      {
        v48 = v16;
      }

      else
      {
        v48 = v46;
      }

      if (v43 != 128)
      {
        goto LABEL_52;
      }

LABEL_63:
      if (v127)
      {
        goto LABEL_54;
      }

LABEL_64:
      v50 = *(v44 + 76);
      v49 = 129;
      v51 = 131;
      if (v47 != 128)
      {
        goto LABEL_55;
      }

LABEL_65:
      if ((v127 & 2) != 0)
      {
        goto LABEL_57;
      }

LABEL_66:
      v50 += *(v44 + 80);
      if (v50 >= 1)
      {
        goto LABEL_67;
      }

LABEL_69:
      if (v51 == 129)
      {
        if (v47 == 128)
        {
          v51 = 129;
          if (v43 == 128)
          {
            goto LABEL_100;
          }
        }

        else
        {
LABEL_80:
          if (v47 > 0x7Fu)
          {
            v55 = __maskrune(v47, 0x500uLL);
            if (v47 == 95 || v55 != 0)
            {
              v51 = 133;
            }

            if (v43 == 128)
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (v47 == 95 || (*(MEMORY[0x29EDCA600] + 4 * v47 + 60) & 0x500) != 0)
            {
              v51 = 133;
            }

            if (v43 == 128)
            {
              goto LABEL_100;
            }
          }
        }

        v53 = v43;
        goto LABEL_95;
      }

      if (v43 == 128)
      {
        goto LABEL_100;
      }

      v53 = v43;
      if (v43 > 0x7Fu)
      {
        if (__maskrune(v43, 0x500uLL))
        {
          goto LABEL_95;
        }
      }

      else if ((*(MEMORY[0x29EDCA600] + 4 * v43 + 60) & 0x500) != 0)
      {
        goto LABEL_95;
      }

      if (v43 != 95 && v47 != 128)
      {
        goto LABEL_80;
      }

LABEL_95:
      if (v53 > 0x7F)
      {
        if (!__maskrune(v53, 0x500uLL))
        {
LABEL_99:
          if (v43 != 95)
          {
            goto LABEL_100;
          }
        }
      }

      else if ((*(MEMORY[0x29EDCA600] + 4 * v53 + 60) & 0x500) == 0)
      {
        goto LABEL_99;
      }

      if (v51 == 130 || v47 != 128 && (v47 > 0x7Fu ? (v58 = __maskrune(v47, 0x500uLL)) : (v58 = *(MEMORY[0x29EDCA600] + 4 * v47 + 60) & 0x500), !v58 && v47 != 95))
      {
        v51 = 134;
LABEL_104:
        v45 = sub_298BA62B0(v126, v42, v11, v45, v51, v45);
        goto LABEL_105;
      }

LABEL_100:
      if ((v51 - 133) <= 1)
      {
        goto LABEL_104;
      }

LABEL_105:
      v46 = v48;
      v57 = v45 & (1 << v11);
      if (v16 == __dst || v57)
      {
        break;
      }

      v44 = v126;
      v45 = sub_298BA62B0(v126, v42, v11, v45, v47, v125);
      ++v16;
      v43 = v47;
      if (v16 != v129)
      {
        goto LABEL_48;
      }
    }

    *(&v129 + 1) = v48;
    if (!v57)
    {
      free(*(&v127 + 1));
      free(v130);
      return 1;
    }

    if (!v111 && !*(v117 + 120))
    {
      goto LABEL_149;
    }

    for (j = sub_298BA5298(&v126, v48, __dst, v42, v11); !j; j = sub_298BA5298(&v126, *(&v129 + 1), __dst, v42, v11))
    {
      ++*(&v129 + 1);
    }

    v60 = j;
    if (v111 == 1 && !*(v117 + 120))
    {
      goto LABEL_144;
    }

    v61 = *(&v127 + 1);
    if (!*(&v127 + 1))
    {
      v61 = malloc_type_malloc(16 * *(v126 + 112) + 16, 0x1000040451B5BE8uLL);
      *(&v127 + 1) = v61;
      if (!v61)
      {
        return 12;
      }
    }

    v62 = *(v126 + 112);
    if (v62)
    {
      if ((v62 + 1) > 2)
      {
        v63 = v62 + 1;
      }

      else
      {
        v63 = 2;
      }

      memset(v61 + 16, 255, 16 * v63 - 16);
    }

    if (*(v117 + 120) || (BYTE1(v127) & 4) != 0)
    {
      v65 = *(v117 + 128);
      v66 = v130;
      if (v65 >= 1 && !v130)
      {
        v66 = malloc_type_malloc(8 * v65 + 8, 0x10040436913F5uLL);
        *&v130 = v66;
        v65 = *(v117 + 128);
      }

      if (v65 >= 1 && !v66)
      {
        free(*(&v127 + 1));
        return 12;
      }

      v64 = sub_298BA5CC4(&v126, *(&v129 + 1), v60, v42, v11, 0, 0);
    }

    else
    {
      v64 = sub_298BA56A4(&v126, *(&v129 + 1), v60, v42, v11);
    }

    if (!v64)
    {
      while (1)
      {
        v67 = *(&v129 + 1);
        if (v60 <= *(&v129 + 1))
        {
          break;
        }

        v60 = sub_298BA5298(&v126, *(&v129 + 1), v60 - 1, v42, v11);
        v67 = *(&v129 + 1);
        if (!v60)
        {
          break;
        }

        if (sub_298BA5CC4(&v126, *(&v129 + 1), v60, v42, v11, 0, 0))
        {
          goto LABEL_143;
        }
      }

      v16 = v67 + 1;
      if (v67 != __dst)
      {
        continue;
      }
    }

    break;
  }

LABEL_143:
  if (!v111)
  {
    goto LABEL_149;
  }

LABEL_144:
  v68 = &v60[-v128];
  *v115 = *(&v129 + 1) - v128;
  v115[1] = v68;
  if (v111 >= 2)
  {
    v69 = v126;
    v70 = (*(&v127 + 1) + 16);
    v71 = v115 + 2;
    for (k = 1; k != v111; ++k)
    {
      while (k > *(v69 + 112))
      {
        *v71 = -1;
        v71[1] = -1;
        v71 += 2;
        ++k;
        ++v70;
        if (v111 == k)
        {
          goto LABEL_149;
        }
      }

      v73 = *v70++;
      *v71 = v73;
      v71 += 2;
    }
  }

LABEL_149:
  if (*(&v127 + 1))
  {
    free(*(&v127 + 1));
  }

  result = v130;
  if (v130)
  {
    free(v130);
    return 0;
  }

  return result;
}

char *sub_298BA5298(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v8 = *(*(*a1 + 8) + 8 * v6);
    v9 = v8 & 0xF8000000;
    if ((v8 & 0xF8000000) == 0x70000000 || v9 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v9 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v8)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v26 = a1[12];
      if (a2 == a1[4])
      {
        v13 = 128;
      }

      else
      {
        v13 = *(a2 - 1);
      }

      v14 = *a1;
      v15 = sub_298BA62B0(*a1, v6, a5, 1 << v6, 132, 1 << v6);
      v11 = 0;
      v27 = 1 << a5;
      v16 = a1;
      if (a2 == a1[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      v17 = *a2;
      if (v13 != 128)
      {
LABEL_20:
        if (v13 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_29;
        }

LABEL_22:
        v18 = 0;
        v19 = 0;
        v20 = 130;
        if (v17 == 128)
        {
          goto LABEL_30;
        }

LABEL_23:
        if (v17 == 10 && (*(v14 + 40) & 8) != 0)
        {
          goto LABEL_31;
        }

LABEL_25:
        v20 = v18;
        if (v19 >= 1)
        {
LABEL_32:
          v21 = v19 + 1;
          do
          {
            v15 = sub_298BA62B0(v14, v6, a5, v15, v20, v15);
            --v21;
          }

          while (v21 > 1);
        }

        goto LABEL_34;
      }

      while (1)
      {
        if (v16[1])
        {
          goto LABEL_22;
        }

LABEL_29:
        v19 = *(v14 + 76);
        v18 = 129;
        v20 = 131;
        if (v17 != 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if ((v16[1] & 2) != 0)
        {
          goto LABEL_25;
        }

LABEL_31:
        v19 += *(v14 + 80);
        if (v19 >= 1)
        {
          goto LABEL_32;
        }

LABEL_34:
        if (v20 == 129)
        {
          v16 = a1;
          if (v17 == 128)
          {
            v20 = 129;
            if (v13 == 128)
            {
              goto LABEL_65;
            }
          }

          else
          {
LABEL_45:
            if (v17 > 0x7Fu)
            {
              v24 = __maskrune(v17, 0x500uLL);
              if (v17 == 95 || v24 != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }

            else
            {
              if (v17 == 95 || (*(MEMORY[0x29EDCA600] + 4 * v17 + 60) & 0x500) != 0)
              {
                v20 = 133;
              }

              if (v13 == 128)
              {
                goto LABEL_65;
              }
            }
          }

          v22 = v13;
          goto LABEL_60;
        }

        v16 = a1;
        if (v13 == 128)
        {
          goto LABEL_65;
        }

        v22 = v13;
        if (v13 > 0x7Fu)
        {
          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_60;
          }
        }

        else if ((*(MEMORY[0x29EDCA600] + 4 * v13 + 60) & 0x500) != 0)
        {
          goto LABEL_60;
        }

        if (v13 != 95 && v17 != 128)
        {
          goto LABEL_45;
        }

LABEL_60:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_70;
          }
        }

        else if ((*(MEMORY[0x29EDCA600] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_70;
        }

        if (v13 != 95)
        {
          goto LABEL_65;
        }

LABEL_70:
        if (v20 == 130)
        {
          goto LABEL_71;
        }

        if (v17 != 128)
        {
          if (v17 > 0x7Fu)
          {
            if (__maskrune(v17, 0x500uLL))
            {
              goto LABEL_65;
            }
          }

          else if ((*(MEMORY[0x29EDCA600] + 4 * v17 + 60) & 0x500) != 0)
          {
            goto LABEL_65;
          }

          if (v17 != 95)
          {
LABEL_71:
            v20 = 134;
            goto LABEL_72;
          }
        }

LABEL_65:
        if ((v20 - 133) > 1)
        {
          if ((v15 & v27) != 0)
          {
            v11 = a2;
          }

          if (a2 == a3)
          {
            return v11;
          }

          goto LABEL_75;
        }

LABEL_72:
        v15 = sub_298BA62B0(*v16, v6, a5, v15, v20, v15);
        if ((v15 & v27) != 0)
        {
          v11 = a2;
        }

        if (a2 == a3)
        {
          return v11;
        }

LABEL_75:
        if (v15 == v26)
        {
          return v11;
        }

        v14 = *v16;
        v15 = sub_298BA62B0(*v16, v6, a5, v15, v17, v26);
        ++a2;
        v13 = v17;
        if (a2 != v16[5])
        {
          goto LABEL_19;
        }

LABEL_27:
        v17 = 128;
        if (v13 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sub_298BA56A4(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sub_298BA5298(a1, v5, a3, v11, v16 + 1); sub_298BA5298(a1, i, a3, v16 + 1, a5) != a3; i = sub_298BA5298(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 < a5)
            {
              v22 = (*(*a1 + 8) + 8 * v16 + 16);
              v23 = v56 - v16;
              v24 = -2 - v16;
              while (1)
              {
                v25 = *(v22 - 2);
                if ((v25 & 0xF8000000) != 0x70000000)
                {
                  break;
                }

                ++v22;
                --v24;
                if (!--v23)
                {
                  goto LABEL_28;
                }
              }

              if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
              {
                v26 = -v24;
                v27 = v25;
                if (v26 >= a5)
                {
                  while (v25 != *v21)
                  {
                    if (--v21 == v5)
                    {
LABEL_38:
                      v21 = v5;
                      break;
                    }
                  }
                }

                else
                {
                  v28 = i;
                  while (1)
                  {
                    if (v27 == *(v28 - 1))
                    {
                      if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                      {
                        goto LABEL_28;
                      }

                      if (*v28 == *v22)
                      {
                        break;
                      }
                    }

                    --v21;
                    v29 = v28 - 2;
                    --v28;
                    if (v29 == v5)
                    {
                      goto LABEL_38;
                    }
                  }

                  v21 = v28 - 1;
                }
              }
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sub_298BA5298(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sub_298BA56A4(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_87:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sub_298BA5298(a1, v5, v31, v11, v16 + 1);
            v32 = sub_298BA5298(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sub_298BA5298(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sub_298BA56A4(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sub_298BA5298(a1, v5, a3, v11, v16 + 1); sub_298BA5298(a1, i, a3, v16 + 1, a5) != a3; i = sub_298BA5298(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 < a5)
          {
            v41 = -2 - v16;
            v42 = (*(*a1 + 8) + 8 * v16 + 16);
            v43 = v56 - v16;
            while (1)
            {
              v44 = *(v42 - 2);
              if ((v44 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v42;
              --v41;
              if (!--v43)
              {
                goto LABEL_67;
              }
            }

            if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
            {
              v45 = -v41;
              v46 = v44;
              if (v45 >= a5)
              {
                while (v44 != *v40)
                {
                  if (--v40 == v5)
                  {
LABEL_77:
                    v40 = v5;
                    break;
                  }
                }
              }

              else
              {
                v47 = i;
                while (1)
                {
                  if (v46 == *(v47 - 1))
                  {
                    if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                    {
                      goto LABEL_67;
                    }

                    if (*v47 == *v42)
                    {
                      break;
                    }
                  }

                  --v40;
                  v48 = v47 - 2;
                  --v47;
                  if (v48 == v5)
                  {
                    goto LABEL_77;
                  }
                }

                v40 = v47 - 1;
              }
            }
          }

LABEL_67:
          ;
        }

        if (sub_298BA5298(a1, v5, i, v11 + 1, v16))
        {
          sub_298BA56A4(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_87;
  }

  return a2;
}

uint64_t sub_298BA5CC4(uint64_t *a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 < a5)
  {
    v12 = a4;
LABEL_3:
    v14 = v12;
    do
    {
      v15 = *a1;
      v16 = *(*a1 + 8);
      v17 = *(v16 + 8 * v14);
      v18 = ((v17 & 0xF8000000) - 0x10000000) >> 27;
      if (v18 > 9)
      {
        if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 0xF)
        {
          if (v18 == 10)
          {
            goto LABEL_5;
          }

          if (v18 == 14)
          {
            ++v14;
            v31 = *(v16 + 8 * v14);
            do
            {
              v14 += v31 & 0x7FFFFFF;
              v31 = *(v16 + 8 * v14);
            }

            while ((v31 & 0xF8000000) != 0x90000000);
            goto LABEL_5;
          }
        }

        else
        {
          switch(v18)
          {
            case 0x10uLL:
              goto LABEL_5;
            case 0x11uLL:
              v34 = a1[4];
              if (a2 != v34 || (a1[1]) && (a2 >= a1[5] || *(a2 - 1) != 10 || (*(v15 + 40) & 8) == 0))
              {
                if (a2 <= v34)
                {
                  return 0;
                }

                v35 = *(a2 - 1);
                if (v35 < 0)
                {
                  v36 = __maskrune(*(a2 - 1), 0x500uLL);
                }

                else
                {
                  v36 = *(MEMORY[0x29EDCA600] + 4 * v35 + 60) & 0x500;
                }

                result = 0;
                if (v35 == 95 || v36)
                {
                  return result;
                }
              }

              if (a2 >= a1[5])
              {
                return 0;
              }

              v38 = *a2;
              if ((v38 & 0x8000000000000000) == 0)
              {
                goto LABEL_76;
              }

LABEL_82:
              v39 = __maskrune(v38, 0x500uLL);
              if (v38 == 95)
              {
                goto LABEL_5;
              }

LABEL_83:
              if (!v39)
              {
                return 0;
              }

              goto LABEL_5;
            case 0x12uLL:
              v21 = a1[5];
              if (a2 == v21 && (a1[1] & 2) == 0)
              {
                goto LABEL_80;
              }

              if (a2 >= v21)
              {
                return 0;
              }

              v22 = *a2;
              if (v22 == 10)
              {
                if ((*(v15 + 40) & 8) != 0)
                {
LABEL_80:
                  if (a2 <= a1[4])
                  {
                    return 0;
                  }

                  v38 = *(a2 - 1);
                  if (v38 < 0)
                  {
                    goto LABEL_82;
                  }

LABEL_76:
                  v39 = *(MEMORY[0x29EDCA600] + 4 * v38 + 60) & 0x500;
                  if (v38 == 95)
                  {
                    goto LABEL_5;
                  }

                  goto LABEL_83;
                }

LABEL_69:
                v37 = *(MEMORY[0x29EDCA600] + 4 * v22 + 60) & 0x500;
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              else
              {
                if ((v22 & 0x80) == 0)
                {
                  goto LABEL_69;
                }

                v37 = __maskrune(*a2, 0x500uLL);
                result = 0;
                if (v22 == 95)
                {
                  return result;
                }
              }

              if (v37)
              {
                return result;
              }

              goto LABEL_80;
          }
        }
      }

      else if (((v17 & 0xF8000000) - 0x10000000) >> 27 <= 1)
      {
        if (!v18)
        {
          if (a2 == a3)
          {
            return 0;
          }

          v33 = *a2++;
          if (v33 != v17)
          {
            return 0;
          }

          goto LABEL_5;
        }

        if (v18 == 1)
        {
          if (a2 != a1[4] || (a1[1] & 1) != 0)
          {
            if (a2 >= a1[5] || *(a2 - 1) != 10)
            {
              return 0;
            }

LABEL_4:
            if ((*(v15 + 40) & 8) == 0)
            {
              return 0;
            }
          }

LABEL_5:
          ++v14;
          continue;
        }
      }

      else
      {
        switch(v18)
        {
          case 2uLL:
            v32 = a1[5];
            if (a2 != v32 || (a1[1] & 2) != 0)
            {
              if (a2 >= v32 || *a2 != 10)
              {
                return 0;
              }

              goto LABEL_4;
            }

            goto LABEL_5;
          case 3uLL:
            if (a2 == a3)
            {
              return 0;
            }

            ++a2;
            goto LABEL_5;
          case 4uLL:
            if (a2 == a3)
            {
              return 0;
            }

            v19 = *(v15 + 24) + 32 * (v17 & 0x7FFFFFF);
            v20 = *a2++;
            if ((*(v19 + 8) & *(*v19 + v20)) == 0)
            {
              return 0;
            }

            goto LABEL_5;
        }
      }

      v12 = v14 + 1;
      v23 = ((v17 & 0xF8000000) - 939524096) >> 27;
      if (v23 == 4)
      {
        result = sub_298BA5CC4(a1, a2, a3, v14 + 1, a5, a6, a7);
        if (result)
        {
          return result;
        }

        v14 = (v17 & 0x7FFFFFF) + v12;
      }

      else
      {
        if (((v17 & 0xF8000000) - 939524096) >> 27 > 5)
        {
          if (v23 == 6)
          {
            v47 = 16 * (v17 & 0x7FFFFFF);
            v48 = a1[2];
            v49 = *(v48 + v47);
            *(v48 + v47) = &a2[-a1[3]];
            result = sub_298BA5CC4(a1, a2, a3, v12, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF)) = v49;
            }
          }

          else if (v23 == 7)
          {
            v50 = a1[2] + 16 * (v17 & 0x7FFFFFF);
            v51 = *(v50 + 8);
            *(v50 + 8) = &a2[-a1[3]];
            result = sub_298BA5CC4(a1, a2, a3, v14 + 1, a5, a6, a7);
            if (!result)
            {
              *(a1[2] + 16 * (v17 & 0x7FFFFFF) + 8) = v51;
            }
          }

          else
          {
            result = 0;
            if (v23 == 8)
            {
              result = sub_298BA5CC4(a1, a2, a3, v14 + 1, a5, a6, a7);
              if (!result)
              {
                v41 = v14 + (v17 & 0x7FFFFFF) - 1;
                while (1)
                {
                  v42 = *(*a1 + 8);
                  if ((*(v42 + 8 * v41) & 0xF8000000) == 0x90000000)
                  {
                    break;
                  }

                  v43 = *(v42 + 8 * (v41 + 1)) & 0x7FFFFFFLL;
                  v44 = v43 + v41 + 1;
                  v45 = v43 + v41;
                  if ((*(v42 + 8 * v44) & 0xF8000000) == 0x88000000)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = v44;
                  }

                  result = sub_298BA5CC4(a1, a2, a3, v41 + 2, a5, a6, a7);
                  v41 = v46;
                  if (result)
                  {
                    return result;
                  }
                }

                return 0;
              }
            }
          }

          return result;
        }

        if (v23)
        {
          if (v23 == 2)
          {
            ++a6;
            *(a1[7] + 8 * a6) = a2;
            if (v12 < a5)
            {
              goto LABEL_3;
            }
          }

          else
          {
            result = 0;
            if (v23 != 3)
            {
              return result;
            }

            v40 = a1[7];
            if (a2 == *(v40 + 8 * a6))
            {
              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }

            else
            {
              *(v40 + 8 * a6) = a2;
              result = sub_298BA5CC4(a1, a2, a3, v12 - (v17 & 0x7FFFFFF), a5, a6, a7);
              if (result)
              {
                return result;
              }

              --a6;
              if (v12 < a5)
              {
                goto LABEL_3;
              }
            }
          }

          break;
        }

        v25 = v17 & 0x7FFFFFF;
        v26 = (a1[2] + 16 * v25);
        v27 = v26[1];
        if (v27 == -1)
        {
          return 0;
        }

        v28 = *v26;
        v29 = v27 - v28;
        if (v27 == v28)
        {
          if (a7 > 100)
          {
            return 0;
          }

          a7 = (a7 + 1);
        }

        if (a2 > &a3[-v29] || memcmp(a2, (a1[3] + v28), v29))
        {
          return 0;
        }

        do
        {
          v30 = *(v16 + 8 * v14++);
        }

        while (v30 != (v25 | 0x40000000));
        a2 += v29;
      }
    }

    while (v14 < a5);
  }

  if (a2 == a3)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_298BA62B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  if (a2 != a3)
  {
    v6 = 1 << a2;
    do
    {
      v8 = (*(a1 + 8) + 8 * a2);
      v9 = *v8;
      switch(((*v8 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          v7 = a5 == v9;
          goto LABEL_4;
        case 2uLL:
          v7 = (a5 & 0xFFFFFFFD) == 129;
          goto LABEL_4;
        case 3uLL:
          v7 = (a5 & 0xFFFFFFFE) == 130;
          goto LABEL_4;
        case 4uLL:
          if (a5 <= 127)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        case 5uLL:
          if (a5 > 127)
          {
            break;
          }

          v11 = *(a1 + 24) + 32 * (*v8 & 0x7FFFFFF);
          if ((*(v11 + 8) & *(*v11 + a5)) == 0)
          {
            break;
          }

          v10 = v6 & a4;
LABEL_10:
          a6 |= 2 * v10;
          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          v10 = a6 & v6;
          goto LABEL_10;
        case 9uLL:
          v12 = a6 | (2 * (a6 & v6));
          a6 = ((v12 & v6) >> v9) | v12;
          if (((v6 >> v9) & v12) == 0 && (a6 & (v6 >> v9)) != 0)
          {
            a2 += ~(*v8 & 0x7FFFFFF);
            v6 = 1 << a2;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          a6 |= (((a6 | (2 * (a6 & v6))) & v6) << v9) | (2 * (a6 & v6));
          break;
        case 0xFuLL:
          if ((a6 & v6) != 0)
          {
            v14 = v8[1];
            if ((v14 & 0xF8000000) == 0x90000000)
            {
              LOBYTE(v15) = 1;
            }

            else
            {
              v15 = 1;
              do
              {
                v15 += v14 & 0x7FFFFFF;
                v14 = v8[v15];
              }

              while ((v14 & 0xF8000000) != 0x90000000);
            }

            a6 |= (a6 & v6) << v15;
          }

          break;
        case 0x10uLL:
          a6 |= 2 * (a6 & v6);
          if ((v8[*v8 & 0x7FFFFFF] & 0xF8000000) != 0x90000000)
          {
            a6 |= (a6 & v6) << v9;
          }

          break;
        case 0x12uLL:
          v7 = a5 == 133;
          goto LABEL_4;
        case 0x13uLL:
          v7 = a5 == 134;
LABEL_4:
          if (v7)
          {
            a6 |= 2 * (v6 & a4);
          }

          break;
        default:
          break;
      }

      ++a2;
      v6 *= 2;
    }

    while (a2 != a3);
  }

  return a6;
}

char *sub_298BA64D4(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  if (a4 >= a5)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v9 = *(*(*a1 + 8) + 8 * v6);
    v10 = v9 & 0xF8000000;
    if ((v9 & 0xF8000000) == 0x70000000 || v10 == 1744830464)
    {
      goto LABEL_4;
    }

    if (v10 != 0x10000000)
    {
      goto LABEL_15;
    }

    if (a2 == a3 || *a2 != v9)
    {
      return 0;
    }

    ++a2;
LABEL_4:
    if (a5 == ++v6)
    {
      v6 = a5;
LABEL_15:
      v14 = a1[10];
      __dst = a1[12];
      __s2 = a1[13];
      if (a2 == a1[4])
      {
        v15 = 128;
      }

      else
      {
        v15 = *(a2 - 1);
      }

      bzero(v14, *(*a1 + 48));
      *(v14 + v6) = 1;
      sub_298BA6F48(*a1, v6, a5, v14, 132, v14);
      v12 = 0;
      if (a2 == a1[5])
      {
        goto LABEL_25;
      }

LABEL_19:
      v16 = *a2;
      if (v15 != 128)
      {
LABEL_20:
        if (v15 == 10 && (*(*a1 + 40) & 8) != 0)
        {
          v17 = *(*a1 + 76);
          v18 = 129;
          v19 = 131;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_29:
          v18 = 0;
          v17 = 0;
          v19 = 130;
          if (v16 != 128)
          {
            goto LABEL_30;
          }
        }

LABEL_23:
        if ((a1[1] & 2) != 0)
        {
          goto LABEL_32;
        }

        v20 = *a1;
LABEL_34:
        v17 += *(v20 + 80);
        if (v17 < 1)
        {
          goto LABEL_37;
        }

LABEL_35:
        v21 = v17 + 1;
        do
        {
          sub_298BA6F48(*a1, v6, a5, v14, v19, v14);
          --v21;
        }

        while (v21 > 1);
        goto LABEL_37;
      }

      while (1)
      {
        if (a1[1])
        {
          goto LABEL_29;
        }

        v17 = *(*a1 + 76);
        v18 = 129;
        v19 = 131;
        if (v16 == 128)
        {
          goto LABEL_23;
        }

LABEL_30:
        if (v16 == 10)
        {
          v20 = *a1;
          if ((*(*a1 + 40) & 8) != 0)
          {
            goto LABEL_34;
          }
        }

LABEL_32:
        v19 = v18;
        if (v17 >= 1)
        {
          goto LABEL_35;
        }

LABEL_37:
        if (v19 == 129)
        {
          if (v16 == 128)
          {
            v19 = 129;
            if (v15 == 128)
            {
              goto LABEL_68;
            }
          }

          else
          {
LABEL_48:
            if (v16 > 0x7Fu)
            {
              v24 = __maskrune(v16, 0x500uLL);
              if (v16 == 95 || v24 != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
LABEL_68:
                v26 = __s2;
LABEL_69:
                if ((v19 - 133) > 1)
                {
                  goto LABEL_74;
                }

                goto LABEL_73;
              }
            }

            else
            {
              if (v16 == 95 || (*(MEMORY[0x29EDCA600] + 4 * v16 + 60) & 0x500) != 0)
              {
                v19 = 133;
              }

              if (v15 == 128)
              {
                goto LABEL_68;
              }
            }
          }

          v22 = v15;
          goto LABEL_63;
        }

        if (v15 == 128)
        {
          goto LABEL_68;
        }

        v22 = v15;
        if (v15 > 0x7Fu)
        {
          if (__maskrune(v15, 0x500uLL))
          {
            goto LABEL_63;
          }
        }

        else if ((*(MEMORY[0x29EDCA600] + 4 * v15 + 60) & 0x500) != 0)
        {
          goto LABEL_63;
        }

        if (v15 != 95 && v16 != 128)
        {
          goto LABEL_48;
        }

LABEL_63:
        if (v22 > 0x7F)
        {
          if (__maskrune(v22, 0x500uLL))
          {
            goto LABEL_71;
          }
        }

        else if ((*(MEMORY[0x29EDCA600] + 4 * v22 + 60) & 0x500) != 0)
        {
          goto LABEL_71;
        }

        if (v15 != 95)
        {
          goto LABEL_68;
        }

LABEL_71:
        if (v19 == 130)
        {
          v19 = 134;
          v26 = __s2;
        }

        else
        {
          v26 = __s2;
          if (v16 == 128)
          {
            goto LABEL_69;
          }

          if (v16 > 0x7Fu)
          {
            if (__maskrune(v16, 0x500uLL))
            {
              goto LABEL_69;
            }
          }

          else if ((*(MEMORY[0x29EDCA600] + 4 * v16 + 60) & 0x500) != 0)
          {
            goto LABEL_69;
          }

          if (v16 == 95)
          {
            goto LABEL_69;
          }

          v19 = 134;
        }

LABEL_73:
        sub_298BA6F48(*a1, v6, a5, v14, v19, v14);
LABEL_74:
        if (*(v14 + a5))
        {
          v12 = a2;
        }

        v27 = *(*a1 + 48);
        v28 = memcmp(v14, v26, v27);
        if (a2 == a3 || !v28)
        {
          return v12;
        }

        memmove(__dst, v14, v27);
        memmove(v14, v26, *(*a1 + 48));
        sub_298BA6F48(*a1, v6, a5, __dst, v16, v14);
        ++a2;
        v15 = v16;
        if (a2 != a1[5])
        {
          goto LABEL_19;
        }

LABEL_25:
        v16 = 128;
        if (v15 != 128)
        {
          goto LABEL_20;
        }
      }
    }
  }
}

char *sub_298BA6928(uint64_t *a1, char *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a4 < a5)
  {
    v7 = a4;
    v56 = a5 - 1;
    while (1)
    {
      v11 = v7;
      v12 = *(*a1 + 8);
      v13 = *(v12 + 8 * v7);
      v14 = v13 & 0xF8000000;
      if ((v13 & 0xF8000000) == 0x48000000 || v14 == 1476395008)
      {
        v16 = (v13 & 0x7FFFFFF) + v7;
      }

      else
      {
        v17 = v14 != 2013265920 || (v13 & 0xF8000000) == 2415919104;
        v16 = v7;
        if (!v17)
        {
          v18 = *(v12 + 8 * v7);
          v16 = v7;
          do
          {
            v16 += v18 & 0x7FFFFFF;
            v18 = *(v12 + 8 * v16);
          }

          while ((v18 & 0xF8000000) != 0x90000000);
        }
      }

      v7 = v16 + 1;
      v19 = ((v13 & 0xF8000000) - 0x8000000) >> 27;
      if (v19 > 9)
      {
        break;
      }

      if (v19 - 4 >= 2 && v19 != 1)
      {
        if (v19 == 8)
        {
          for (i = sub_298BA64D4(a1, v5, a3, v11, v16 + 1); sub_298BA64D4(a1, i, a3, v16 + 1, a5) != a3; i = sub_298BA64D4(a1, v5, v21, v11, v16 + 1))
          {
            v21 = i - 1;
            if (v7 < a5)
            {
              v22 = (*(*a1 + 8) + 8 * v16 + 16);
              v23 = v56 - v16;
              v24 = -2 - v16;
              while (1)
              {
                v25 = *(v22 - 2);
                if ((v25 & 0xF8000000) != 0x70000000)
                {
                  break;
                }

                ++v22;
                --v24;
                if (!--v23)
                {
                  goto LABEL_28;
                }
              }

              if ((v25 & 0xF8000000) == 0x10000000 && v21 != v5)
              {
                v26 = -v24;
                v27 = v25;
                if (v26 >= a5)
                {
                  while (v25 != *v21)
                  {
                    if (--v21 == v5)
                    {
LABEL_38:
                      v21 = v5;
                      break;
                    }
                  }
                }

                else
                {
                  v28 = i;
                  while (1)
                  {
                    if (v27 == *(v28 - 1))
                    {
                      if ((*v22 & 0xF8000000) != 0x10000000 || v28 >= i)
                      {
                        goto LABEL_28;
                      }

                      if (*v28 == *v22)
                      {
                        break;
                      }
                    }

                    --v21;
                    v29 = v28 - 2;
                    --v28;
                    if (v29 == v5)
                    {
                      goto LABEL_38;
                    }
                  }

                  v21 = v28 - 1;
                }
              }
            }

LABEL_28:
            ;
          }

          v50 = v5;
          do
          {
            v51 = v50;
            v50 = v5;
            v52 = sub_298BA64D4(a1, v5, i, v11 + 1, v16);
            v5 = v52;
          }

          while (v52 && v52 != v50);
          if (v52)
          {
            v53 = v50;
          }

          else
          {
            v53 = v51;
          }

          if (v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v50;
          }

          sub_298BA6928(a1, v53, v54, v11 + 1, v16);
          goto LABEL_4;
        }

LABEL_87:
        i = v5;
        goto LABEL_4;
      }

      i = v5 + 1;
LABEL_4:
      v5 = i;
      if (v7 >= a5)
      {
        return i;
      }
    }

    if (((v13 & 0xF8000000) - 0x8000000) >> 27 > 0xC)
    {
      if (v19 != 13)
      {
        v31 = a3;
        if (v19 == 14)
        {
          do
          {
            i = sub_298BA64D4(a1, v5, v31, v11, v16 + 1);
            v32 = sub_298BA64D4(a1, i, a3, v16 + 1, a5);
            v31 = i - 1;
          }

          while (v32 != a3);
          v33 = v11 + (*(*(*a1 + 8) + 8 * v11) & 0x7FFFFFFLL) - 1;
          v34 = v11 + 1;
          while (sub_298BA64D4(a1, v5, i, v34, v33) != i)
          {
            v35 = *(*a1 + 8);
            v36 = *(v35 + 8 * (v33 + 1)) & 0x7FFFFFFLL;
            v37 = v36 + v33 + 1;
            v38 = v36 + v33;
            v34 = v33 + 2;
            if ((*(v35 + 8 * v37) & 0xF8000000) == 0x88000000)
            {
              v33 = v38;
            }

            else
            {
              v33 = v37;
            }
          }

          sub_298BA6928(a1, v5, i, v34, v33);
        }

        else
        {
          i = v5;
        }

        goto LABEL_4;
      }

      *(a1[2] + 16 * (v13 & 0x7FFFFFF) + 8) = &v5[-a1[3]];
    }

    else
    {
      if (v19 == 10)
      {
        for (i = sub_298BA64D4(a1, v5, a3, v11, v16 + 1); sub_298BA64D4(a1, i, a3, v16 + 1, a5) != a3; i = sub_298BA64D4(a1, v5, v40, v11, v16 + 1))
        {
          v40 = i - 1;
          if (v7 < a5)
          {
            v41 = -2 - v16;
            v42 = (*(*a1 + 8) + 8 * v16 + 16);
            v43 = v56 - v16;
            while (1)
            {
              v44 = *(v42 - 2);
              if ((v44 & 0xF8000000) != 0x70000000)
              {
                break;
              }

              ++v42;
              --v41;
              if (!--v43)
              {
                goto LABEL_67;
              }
            }

            if ((v44 & 0xF8000000) == 0x10000000 && v40 != v5)
            {
              v45 = -v41;
              v46 = v44;
              if (v45 >= a5)
              {
                while (v44 != *v40)
                {
                  if (--v40 == v5)
                  {
LABEL_77:
                    v40 = v5;
                    break;
                  }
                }
              }

              else
              {
                v47 = i;
                while (1)
                {
                  if (v46 == *(v47 - 1))
                  {
                    if ((*v42 & 0xF8000000) != 0x10000000 || v47 >= i)
                    {
                      goto LABEL_67;
                    }

                    if (*v47 == *v42)
                    {
                      break;
                    }
                  }

                  --v40;
                  v48 = v47 - 2;
                  --v47;
                  if (v48 == v5)
                  {
                    goto LABEL_77;
                  }
                }

                v40 = v47 - 1;
              }
            }
          }

LABEL_67:
          ;
        }

        if (sub_298BA64D4(a1, v5, i, v11 + 1, v16))
        {
          sub_298BA6928(a1, v5, i, v11 + 1, v16);
        }

        goto LABEL_4;
      }

      if (v19 == 12)
      {
        *(a1[2] + 16 * (v13 & 0x7FFFFFF)) = &v5[-a1[3]];
      }
    }

    goto LABEL_87;
  }

  return a2;
}

uint64_t sub_298BA6F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = (*(a1 + 8) + 8 * v6);
      v8 = *v7;
      switch(((*v7 & 0xF8000000uLL) - 0x8000000) >> 27)
      {
        case 1uLL:
          if (a5 == v8)
          {
            goto LABEL_3;
          }

          break;
        case 2uLL:
          if ((a5 & 0xFFFFFFFD) == 0x81)
          {
            goto LABEL_3;
          }

          break;
        case 3uLL:
          if ((a5 & 0xFFFFFFFE) == 0x82)
          {
            goto LABEL_3;
          }

          break;
        case 4uLL:
          if (a5 <= 127)
          {
            goto LABEL_3;
          }

          break;
        case 5uLL:
          if (a5 <= 127)
          {
            v12 = *(a1 + 24) + 32 * (*v7 & 0x7FFFFFF);
            if ((*(v12 + 8) & *(*v12 + a5)) != 0)
            {
              goto LABEL_3;
            }
          }

          break;
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 0xBuLL:
        case 0xCuLL:
        case 0xDuLL:
        case 0x11uLL:
          *(a6 + a2 + 1) |= *(a6 + a2);
          break;
        case 9uLL:
          v13 = *(a6 + a2);
          *(a6 + a2 + 1) |= v13;
          v14 = v8 & 0x7FFFFFF;
          v15 = *(a6 + a2 - v14);
          v16 = v15 | v13;
          *(a6 + a2 - v14) = v16;
          if (v15)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16 == 0;
          }

          if (!v17)
          {
            v6 += ~v14;
            a2 = v6;
          }

          break;
        case 0xAuLL:
        case 0xEuLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          goto LABEL_8;
        case 0xFuLL:
          if (*(a6 + a2))
          {
            v18 = v7[1];
            if ((v18 & 0xF8000000) == 0x90000000)
            {
              v19 = 1;
            }

            else
            {
              v19 = 1;
              do
              {
                v19 += v18 & 0x7FFFFFF;
                v18 = v7[v19];
              }

              while ((v18 & 0xF8000000) != 0x90000000);
            }

            *(a6 + a2 + v19) |= *(a6 + a2);
          }

          break;
        case 0x10uLL:
          v9 = a6 + a2;
          v10 = *(a6 + a2);
          *(a6 + a2 + 1) |= v10;
          v11 = v8 & 0x7FFFFFF;
          if ((*(*(a1 + 8) + 8 * v6 + 8 * v11) & 0xF8000000) != 0x90000000)
          {
LABEL_8:
            *(v9 + v11) |= v10;
          }

          break;
        case 0x12uLL:
          if (a5 != 133)
          {
            break;
          }

          goto LABEL_3;
        case 0x13uLL:
          if (a5 != 134)
          {
            break;
          }

LABEL_3:
          *(a6 + 1 + a2) |= *(a4 + a2);
          break;
        default:
          break;
      }

      ++v6;
      ++a2;
    }

    while (v6 != a3);
  }

  return a6;
}

void sub_298BA71B0(uint64_t a1)
{
  if (*a1 == 62053)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      if (*v1 == 53829)
      {
        *a1 = 0;
        *v1 = 0;
        v2 = v1[1];
        if (v2)
        {
          free(v2);
        }

        v3 = v1[3];
        if (v3)
        {
          free(v3);
        }

        v4 = v1[4];
        if (v4)
        {
          free(v4);
        }

        v5 = v1[12];
        if (v5)
        {
          free(v5);
        }

        free(v1);
      }
    }
  }
}

uint64_t sub_298BA724C(int8x16_t *a1, unint64_t a2)
{
  if (a2 <= 0x10)
  {
    if (a2 < 9)
    {
      if (a2 >= 4)
      {
        v9 = (*(&a1->u32[-1] + a2) | (a1->u32[0] << 32)) ^ 0xC73AB174C5ECD5A2;
        v10 = 0x9FB21C651E98DF25 * (__ROR8__(v9, 40) ^ __ROR8__(v9, 15) ^ v9);
        return (0x9FB21C651E98DF25 * ((a2 + (v10 >> 35)) ^ v10)) ^ ((0x9FB21C651E98DF25 * ((a2 + (v10 >> 35)) ^ v10)) >> 28);
      }

      if (!a2)
      {
        return 0x2D06800538D394C2;
      }

      v11 = 0xC2B2AE3D27D4EB4FLL * (((a1->u8[0] << 16) | (a2 << 8) | (a1->u8[a2 >> 1] << 24) | a1->u8[a2 - 1]) ^ 0x87275A9B);
      v7 = v11 ^ (v11 >> 29);
      v8 = 0x67B19E3779F9;
      return (v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) ^ ((v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) >> 32);
    }

    v3 = bswap64(a1->i64[0] ^ 0x6782737BEA4239B9) + a2 + (*(&a1->i64[-1] + a2) ^ 0xAF56BC3B0996523ALL) + ((((*(&a1->i64[-1] + a2) ^ 0xAF56BC3B0996523ALL) * (a1->i64[0] ^ 0x6782737BEA4239B9uLL)) >> 64) ^ ((*(&a1->i64[-1] + a2) ^ 0xAF56BC3B0996523ALL) * (a1->i64[0] ^ 0x6782737BEA4239B9)));
LABEL_13:
    v7 = v3 ^ (v3 >> 37);
    v8 = 0x67919E3779F9;
    return (v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) ^ ((v7 * (v8 & 0xFFFFFFFFFFFFLL | 0x1656000000000000)) >> 32);
  }

  if (a2 <= 0x80)
  {
    v4 = ((((a1->i64[1] ^ 0x1CAD21F72C81017CuLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((a1->i64[1] ^ 0x1CAD21F72C81017CLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2;
    v5 = &a1->i8[a2];
    v6 = (((*(&a1->i64[-1] + a2) ^ 0x1F67B3B7A4A44072uLL) * (*(a1[-1].i64 + a2) ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((*(&a1->i64[-1] + a2) ^ 0x1F67B3B7A4A44072) * (*(a1[-1].i64 + a2) ^ 0xDB979083E96DD4DELL));
    if (a2 >= 0x21)
    {
      v4 += (((a1[1].i64[1] ^ 0x2172FFCC7DD05A82uLL) * (a1[1].i64[0] ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((a1[1].i64[1] ^ 0x2172FFCC7DD05A82) * (a1[1].i64[0] ^ 0x78E5C0CC4EE679CBLL));
      v6 += (((*(v5 - 3) ^ 0x4C263A81E69035E0uLL) * (*(v5 - 4) ^ 0x8E2443F7744608B8)) >> 64) ^ ((*(v5 - 3) ^ 0x4C263A81E69035E0) * (*(v5 - 4) ^ 0x8E2443F7744608B8));
      if (a2 >= 0x41)
      {
        v4 += (((a1[2].i64[1] ^ 0xA32E531B8B65D088) * (a1[2].i64[0] ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((a1[2].i64[1] ^ 0xA32E531B8B65D088) * (a1[2].i64[0] ^ 0xCB00C391BB52283CLL));
        v6 += (((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((*(v5 - 5) ^ 0xD8ACDEA946EF1938) * (*(v5 - 6) ^ 0x4EF90DA297486471));
        if (a2 >= 0x61)
        {
          v4 += (((a1[3].i64[1] ^ 0x1D4F0BC7C7BBDCF9uLL) * (a1[3].i64[0] ^ 0x3F349CE33F76FAA8uLL)) >> 64) ^ ((a1[3].i64[1] ^ 0x1D4F0BC7C7BBDCF9) * (a1[3].i64[0] ^ 0x3F349CE33F76FAA8));
          v6 += (((*(v5 - 7) ^ 0x647378D9C97E9FC8uLL) * (*(v5 - 8) ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((*(v5 - 7) ^ 0x647378D9C97E9FC8) * (*(v5 - 8) ^ 0x3159B4CD4BE0518ALL));
        }
      }
    }

    v3 = v6 + v4;
    goto LABEL_13;
  }

  if (a2 > 0xF0)
  {
    return sub_298BA7878(a1, a2);
  }

  else
  {
    return sub_298BA75C4(a1, a2);
  }
}

unint64_t sub_298BA75C4(int8x16_t *a1, unint64_t a2)
{
  v2 = a1[6].i64[0] ^ 0x3F349CE33F76FAA8;
  v3 = a1[6].i64[1] ^ 0x1D4F0BC7C7BBDCF9;
  v4 = ((((a1->i64[1] ^ 0x1CAD21F72C81017CuLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8)) >> 64) ^ ((a1->i64[1] ^ 0x1CAD21F72C81017CLL) * (a1->i64[0] ^ 0xBE4BA423396CFEB8))) - 0x61C8864E7A143579 * a2 + ((((a1[1].i64[1] ^ 0x1F67B3B7A4A44072uLL) * (a1[1].i64[0] ^ 0xDB979083E96DD4DELL)) >> 64) ^ ((a1[1].i64[1] ^ 0x1F67B3B7A4A44072) * (a1[1].i64[0] ^ 0xDB979083E96DD4DELL))) + ((((a1[2].i64[1] ^ 0x2172FFCC7DD05A82uLL) * (a1[2].i64[0] ^ 0x78E5C0CC4EE679CBuLL)) >> 64) ^ ((a1[2].i64[1] ^ 0x2172FFCC7DD05A82) * (a1[2].i64[0] ^ 0x78E5C0CC4EE679CBLL))) + ((((a1[3].i64[1] ^ 0x4C263A81E69035E0uLL) * (a1[3].i64[0] ^ 0x8E2443F7744608B8)) >> 64) ^ ((a1[3].i64[1] ^ 0x4C263A81E69035E0) * (a1[3].i64[0] ^ 0x8E2443F7744608B8))) + ((((a1[4].i64[1] ^ 0xA32E531B8B65D088) * (a1[4].i64[0] ^ 0xCB00C391BB52283CLL)) >> 64) ^ ((a1[4].i64[1] ^ 0xA32E531B8B65D088) * (a1[4].i64[0] ^ 0xCB00C391BB52283CLL))) + ((((a1[5].i64[1] ^ 0xD8ACDEA946EF1938) * (a1[5].i64[0] ^ 0x4EF90DA297486471uLL)) >> 64) ^ ((a1[5].i64[1] ^ 0xD8ACDEA946EF1938) * (a1[5].i64[0] ^ 0x4EF90DA297486471))) + (((v3 * v2) >> 64) ^ (v3 * v2));
  v5 = (((a1[7].i64[1] ^ 0x647378D9C97E9FC8uLL) * (a1[7].i64[0] ^ 0x3159B4CD4BE0518AuLL)) >> 64) ^ ((a1[7].i64[1] ^ 0x647378D9C97E9FC8) * (a1[7].i64[0] ^ 0x3159B4CD4BE0518ALL));
  v6 = 0x165667919E3779F9 * ((v4 + v5) ^ ((v4 + v5) >> 37));
  v7 = v6 ^ HIDWORD(v6);
  if (a2 >= 0x90)
  {
    v8 = a2 >> 4;
    if ((a2 >> 4) <= 9)
    {
      v8 = 9;
    }

    else
    {
      v8 = v8;
    }

    v9 = v8 - 8;
    v10 = a1 + 8;
    v11 = &unk_298D1AD04;
    do
    {
      v12 = *v10++;
      v13 = veorq_s8(v12, *(v11 - 125));
      v7 += ((v13.u64[1] * v13.u64[0]) >> 64) ^ (v13.i64[1] * v13.i64[0]);
      v11 += 16;
      --v9;
    }

    while (v9);
  }

  v14 = (((*(&a1->i64[-1] + a2) ^ 0xEBD33483ACC5EA64) * (*(a1[-1].i64 + a2) ^ 0x7378D9C97E9FC831uLL)) >> 64) ^ ((*(&a1->i64[-1] + a2) ^ 0xEBD33483ACC5EA64) * (*(a1[-1].i64 + a2) ^ 0x7378D9C97E9FC831));
  v15 = 0x165667919E3779F9 * ((v7 + v14) ^ ((v7 + v14) >> 37));
  return v15 ^ HIDWORD(v15);
}

unint64_t sub_298BA7878(void *a1, uint64_t a2)
{
  v2 = 0xC2B2AE3D27D4EB4FLL;
  v3 = 0x9E3779B185EBCA87;
  v4 = 0x85EBCA77C2B2AE63;
  v5 = 0x27D4EB2F165667C5;
  v6 = 0x165667B19E3779F9;
  v7 = 3266489917;
  v8 = 2246822519;
  v57 = a2 - 1;
  if ((a2 - 1) >= 0x400)
  {
    v10 = 0;
    v11 = (a2 - 1) >> 10;
    v12 = a1;
    v9 = 2654435761;
    do
    {
      v13 = 0;
      v14 = v12;
      do
      {
        v15 = v14[1];
        v3 += *v14 + (*(&unk_298D1AC84 + v13 + 8) ^ v15) * ((*(&unk_298D1AC84 + v13 + 8) ^ v15) >> 32);
        v16 = v14[2];
        v17 = v14[3];
        v18 = v2 + (*(&unk_298D1AC84 + v13 + 16) ^ v16) * ((*(&unk_298D1AC84 + v13 + 16) ^ v16) >> 32);
        v6 += v16 + (*(&unk_298D1AC84 + v13 + 24) ^ v17) * ((*(&unk_298D1AC84 + v13 + 24) ^ v17) >> 32);
        v19 = v14[4];
        v20 = v14[5];
        v21 = v4 + (*(&unk_298D1AC84 + v13 + 32) ^ v19) * ((*(&unk_298D1AC84 + v13 + 32) ^ v19) >> 32);
        v8 += v19 + (*(&unk_298D1AC84 + v13 + 40) ^ v20) * ((*(&unk_298D1AC84 + v13 + 40) ^ v20) >> 32);
        v22 = v14[6];
        v23 = v14[7];
        v7 += (*(&unk_298D1AC84 + v13) ^ *v14) * ((*(&unk_298D1AC84 + v13) ^ *v14) >> 32) + v15;
        v2 = v18 + v17;
        v4 = v21 + v20;
        v5 += (*(&unk_298D1AC84 + v13 + 48) ^ v22) * ((*(&unk_298D1AC84 + v13 + 48) ^ v22) >> 32) + v23;
        v9 += v22 + (*(&unk_298D1AC84 + v13 + 56) ^ v23) * ((*(&unk_298D1AC84 + v13 + 56) ^ v23) >> 32);
        v13 += 8;
        v14 += 8;
      }

      while (v13 != 128);
      v7 = 2654435761u * (v7 ^ (v7 >> 47) ^ 0xC3EBD33483ACC5EALL);
      v3 = 2654435761u * (v3 ^ (v3 >> 47) ^ 0xEB6313FAFFA081C5);
      v2 = 2654435761u * (v2 ^ (v2 >> 47) ^ 0x49DAF0B751DD0D17);
      v6 = 2654435761u * (v6 ^ (v6 >> 47) ^ 0x9E68D429265516D3);
      v4 = 2654435761u * (v4 ^ (v4 >> 47) ^ 0xFCA1477D58BE162BLL);
      v8 = 2654435761u * (v8 ^ (v8 >> 47) ^ 0xCE31D07AD1B8F88FLL);
      v5 = 2654435761u * (v5 ^ (v5 >> 47) ^ 0x280416958F3ACB45);
      v9 = 2654435761u * (v9 ^ (v9 >> 47) ^ 0x7E404BBBCAFBD7AFLL);
      ++v10;
      v12 += 128;
    }

    while (v10 != v11);
  }

  else
  {
    v9 = 2654435761;
  }

  v24 = (v57 >> 6) & 0xF;
  if (v24)
  {
    v25 = 0;
    v26 = a1;
    v27 = (a1 + (v57 & 0xFFFFFFFFFFFFFC00));
    v28 = 8 * v24;
    do
    {
      v29 = v27[1];
      v3 += *v27 + (*(&unk_298D1AC84 + v25 + 8) ^ v29) * ((*(&unk_298D1AC84 + v25 + 8) ^ v29) >> 32);
      v30 = v27[2];
      v31 = v27[3];
      v32 = v2 + (*(&unk_298D1AC84 + v25 + 16) ^ v30) * ((*(&unk_298D1AC84 + v25 + 16) ^ v30) >> 32);
      v6 += v30 + (*(&unk_298D1AC84 + v25 + 24) ^ v31) * ((*(&unk_298D1AC84 + v25 + 24) ^ v31) >> 32);
      v33 = v27[4];
      v34 = v27[5];
      v35 = v4 + (*(&unk_298D1AC84 + v25 + 32) ^ v33) * ((*(&unk_298D1AC84 + v25 + 32) ^ v33) >> 32);
      v8 += v33 + (*(&unk_298D1AC84 + v25 + 40) ^ v34) * ((*(&unk_298D1AC84 + v25 + 40) ^ v34) >> 32);
      v36 = v27[6];
      v37 = v27[7];
      v7 += (*(&unk_298D1AC84 + v25) ^ *v27) * ((*(&unk_298D1AC84 + v25) ^ *v27) >> 32) + v29;
      v2 = v32 + v31;
      v4 = v35 + v34;
      v5 += (*(&unk_298D1AC84 + v25 + 48) ^ v36) * ((*(&unk_298D1AC84 + v25 + 48) ^ v36) >> 32) + v37;
      v9 += v36 + (*(&unk_298D1AC84 + v25 + 56) ^ v37) * ((*(&unk_298D1AC84 + v25 + 56) ^ v37) >> 32);
      v25 += 8;
      v27 += 8;
    }

    while (v28 != v25);
  }

  else
  {
    v26 = a1;
  }

  v38 = v26 + a2;
  v39 = *(v26 + a2 - 64);
  v40 = *(v26 + a2 - 56);
  v41 = v7 + (v39 ^ 0xD9C97E9F) * ((v39 ^ 0xEA647378D9C97E9FLL) >> 32);
  v42 = v3 + v39 + (v40 ^ 0x3483ACC5) * ((v40 ^ 0xC5C3EBD33483ACC5) >> 32);
  v43 = *(v26 + a2 - 48);
  v44 = *(v26 + a2 - 40);
  v45 = v2 + (v43 ^ 0xFAFFA081) * ((v43 ^ 0x17EB6313FAFFA081uLL) >> 32);
  v46 = v6 + v43 + (v44 ^ 0xB751DD0D) * ((v44 ^ 0xD349DAF0B751DD0DLL) >> 32);
  v47 = *(v26 + a2 - 32);
  v48 = *(v26 + a2 - 24);
  v49 = *(v26 + a2 - 16);
  v50 = *(v38 - 8);
  v51 = (v4 + (v47 ^ 0x29265516) * ((v47 ^ 0x2B9E68D429265516uLL) >> 32) + v48) ^ 0x4608B82172FFCC7DLL;
  v52 = (v8 + v47 + (v48 ^ 0x7D58BE16) * ((v48 ^ 0x8FFCA1477D58BE16) >> 32)) ^ 0x9035E08E2443F774;
  v53 = (v5 + (v49 ^ 0x7AD1B8F8) * ((v49 ^ 0x45CE31D07AD1B8F8uLL) >> 32) + v50) ^ 0x52283C4C263A81E6;
  v54 = (v9 + v49 + (v50 ^ 0x958F3ACB) * ((v50 ^ 0xAF280416958F3ACBLL) >> 32)) ^ 0x65D088CB00C391BBLL;
  v55 = ((((v42 ^ 0xA44072DB979083E9) * ((v41 + v40) ^ 0x6DD4DE1CAD21F72CLL)) >> 64) ^ ((v42 ^ 0xA44072DB979083E9) * ((v41 + v40) ^ 0x6DD4DE1CAD21F72CLL))) - 0x61C8864E7A143579 * a2 + ((((v46 ^ 0xD05A8278E5C0CC4ELL) * ((v45 + v44) ^ 0xE679CB1F67B3B7A4)) >> 64) ^ ((v46 ^ 0xD05A8278E5C0CC4ELL) * ((v45 + v44) ^ 0xE679CB1F67B3B7A4))) + (((v52 * v51) >> 64) ^ (v52 * v51)) + (((v54 * v53) >> 64) ^ (v54 * v53));
  return (0x165667919E3779F9 * (v55 ^ (v55 >> 37))) ^ ((0x165667919E3779F9 * (v55 ^ (v55 >> 37))) >> 32);
}

unsigned __int8 *sub_298BA7E68(unsigned __int8 *result, unint64_t a2, unsigned int a3)
{
  v25[0] = result;
  v25[1] = a2;
  if (!a2)
  {
    return result;
  }

  if (a3 >= 2)
  {
    v3 = *result;
    if (a2 == 1)
    {
      goto LABEL_40;
    }

    if ((v3 & 0x80) != 0)
    {
      v21 = result;
      v22 = a2;
      v23 = a3;
      v24 = __maskrune(*result, 0x100uLL);
      a3 = v23;
      a2 = v22;
      v4 = v24;
      result = v21;
    }

    else
    {
      v4 = *(MEMORY[0x29EDCA600] + 4 * v3 + 60) & 0x100;
    }

    if (v4 && result[1] == 58)
    {
      return result;
    }
  }

  LODWORD(v3) = *result;
  if (a2 >= 3)
  {
    v5 = a3 > 1 && v3 == 92;
    v6 = v5;
    v7 = v3 != 47 && !v6;
    if (!v7 && v3 == result[1])
    {
      v8 = result[2];
      v9 = a3 > 1 && v8 == 92;
      v10 = v9;
      if (v8 != 47 && !v10)
      {
        v11 = "/";
        if (a3 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        if (a3 > 1)
        {
          v11 = "\\/";
        }

        memset(v26, 0, sizeof(v26));
        do
        {
          v13 = *v11++;
          *(v26 + ((v13 >> 3) & 0x18)) |= 1 << v13;
          --v12;
        }

        while (v12);
        for (i = 2; i != a2; ++i)
        {
          if ((*(v26 + ((result[i] >> 3) & 0x18)) >> result[i]))
          {
            break;
          }
        }

        return result;
      }
    }
  }

LABEL_40:
  v16 = a3 > 1 && v3 == 92;
  if (v3 != 47 && !v16)
  {
    v17 = a3 > 1;
    if (a3 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = 2;
    }

    v19 = "/";
    if (v17)
    {
      v19 = "\\/";
    }

    v20 = result;
    sub_298B96C28(v25, v19, v18, 0);
    return v20;
  }

  return result;
}

uint64_t *sub_298BA8060(uint64_t *result)
{
  v1 = result[3];
  v2 = result[4] + v1;
  result[4] = v2;
  v3 = result[1];
  if (v2 == v3)
  {
    result[2] = 0;
    result[3] = 0;
    return result;
  }

  if (v1 <= 2)
  {
    v10 = 0;
    v6 = *(result + 10);
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = result[2];
    v5 = *v4;
    v6 = *(result + 10);
    if (v5 == 47 || (v5 == 92 ? (v7 = v6 >= 2) : (v7 = 0), v7))
    {
      if (v4[1] == v5)
      {
        v8 = v4[2];
        v10 = v6 < 2 || v8 != 92;
        if (v8 == 47)
        {
          v10 = 0;
        }

        v11 = *result;
        v12 = *(*result + v2);
        if (v12 == 47)
        {
          goto LABEL_26;
        }

LABEL_24:
        if (v6 < 2 || v12 != 92)
        {
          goto LABEL_49;
        }

        goto LABEL_26;
      }
    }

    v10 = 0;
    v11 = *result;
    v12 = *(*result + v2);
    if (v12 != 47)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  if (v10 || v1 && v6 > 1 && *(result[2] + v1 - 1) == 58)
  {
    v13 = v3 > v2;
    if (v3 >= v2)
    {
      v3 = v2;
    }

    v14 = v11 + v3;
    v15 = v13;
    result[2] = v14;
    result[3] = v15;
    return result;
  }

  while (1)
  {
    v16 = *(v11 + v2);
    v17 = v6 > 1 && v16 == 92;
    v18 = v17;
    if (v16 != 47 && !v18)
    {
      break;
    }

    result[4] = ++v2;
    if (v3 == v2)
    {
      if (v1 != 1 || (v2 = v3, *result[2] != 47))
      {
        result[4] = v3 - 1;
        result[2] = ".";
        result[3] = 1;
        return result;
      }

      break;
    }
  }

LABEL_49:
  v20 = "/";
  if (v6 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  if (v6 > 1)
  {
    v20 = "\\/";
  }

  memset(v25, 0, sizeof(v25));
  do
  {
    v22 = *v20++;
    *(v25 + ((v22 >> 3) & 0x18)) |= 1 << v22;
    --v21;
  }

  while (v21);
  if (v3 <= v2)
  {
LABEL_60:
    v23 = -1;
  }

  else
  {
    v23 = v2;
    while (((*(v25 + ((*(v11 + v23) >> 3) & 0x18)) >> *(v11 + v23)) & 1) == 0)
    {
      if (v3 == ++v23)
      {
        goto LABEL_60;
      }
    }
  }

  if (v3 >= v2)
  {
    v24 = v2;
  }

  else
  {
    v24 = v3;
  }

  if (v24 <= v23)
  {
    v2 = v23;
  }

  if (v2 < v3)
  {
    v3 = v2;
  }

  result[2] = v11 + v24;
  result[3] = v3 - v24;
  return result;
}

unsigned __int8 **sub_298BA8288(unsigned __int8 **result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(result + 10);
  *&v45[0] = *result;
  *(&v45[0] + 1) = v2;
  if (v3 >= 2)
  {
    if (v2 < 3)
    {
LABEL_7:
      if (!v2)
      {
LABEL_8:
        v5 = -1;
        goto LABEL_9;
      }

      v33 = *v1;
      goto LABEL_120;
    }

    if (v1[1] == 58)
    {
      v4 = v1[2];
      v5 = 2;
      if (v4 == 47 || v4 == 92)
      {
        goto LABEL_9;
      }
    }
  }

  if (v2 < 4)
  {
    goto LABEL_7;
  }

  v33 = *v1;
  v35 = v3 > 1 && v33 == 92;
  v36 = v33 != 47 && !v35;
  if (!v36 && v33 == v1[1])
  {
    v37 = v1[2];
    v38 = v3 > 1 && v37 == 92;
    v39 = v38;
    if (v37 != 47 && !v39)
    {
      if (v3 <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      if (v3 <= 1)
      {
        v41 = "/";
      }

      else
      {
        v41 = "\\/";
      }

      v44 = result;
      v5 = sub_298B96C28(v45, v41, v40, 2uLL);
      result = v44;
      goto LABEL_9;
    }
  }

LABEL_120:
  v5 = 0;
  v43 = v3 > 1 && v33 == 92;
  if (v33 != 47 && !v43)
  {
    goto LABEL_8;
  }

LABEL_9:
  v6 = result[4];
  if (v6)
  {
    v7 = result[4];
    while ((v5 + 1) != v7)
    {
      v8 = v7[(v1 - 1)];
      v10 = v3 > 1 && v8 == 92;
      if (v8 != 47 && !v10)
      {
        v12 = v7;
        goto LABEL_24;
      }

      v12 = 0;
      if (!--v7)
      {
        goto LABEL_24;
      }
    }

    v12 = v5 + 1;
  }

  else
  {
    v12 = 0;
  }

LABEL_24:
  if (v2 && v6 == v2)
  {
    v13 = v1[v2 - 1];
    v14 = v3 > 1 && v13 == 92;
    v15 = v14;
    v16 = v13 != 47 && !v15;
    if (!v16 && (v5 == -1 || v12 - 1 > v5))
    {
      result[2] = ".";
      result[3] = 1;
      result[4] = (v2 - 1);
      return result;
    }
  }

  if (v2 >= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v2;
  }

  if (!v17)
  {
    v18 = -1;
    goto LABEL_50;
  }

  v18 = v17 - 1;
  v19 = v1[v17 - 1];
  v21 = v3 > 1 && v19 == 92;
  if (v19 != 47 && !v21)
  {
LABEL_50:
    v22 = "/";
    if (v3 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    if (v3 > 1)
    {
      v22 = "\\/";
    }

    memset(v45, 0, sizeof(v45));
    do
    {
      v24 = *v22++;
      *(v45 + ((v24 >> 3) & 0x18)) |= 1 << v24;
      --v23;
    }

    while (v23);
    if (v17 >= v18)
    {
      v25 = v18;
    }

    else
    {
      v25 = v17;
    }

    while (v25)
    {
      v26 = v25 - 1;
      v27 = *(v45 + ((v1[v25 - 1] >> 3) & 0x18)) >> v1[v25 - 1];
      --v25;
      if (v27)
      {
LABEL_62:
        if (v26 != 1 || ((v18 = 0, v28 = *v1, v3 > 1) ? (v29 = v28 == 92) : (v29 = 0), !v29 ? (v30 = 0) : (v30 = 1), v28 != 47 && (v30 & 1) == 0))
        {
          v18 = v26 + 1;
        }

        goto LABEL_72;
      }
    }

    if (v3 >= 2)
    {
      if (v17 >= v17 - 1)
      {
        --v17;
      }

      while (v17)
      {
        v26 = v17 - 1;
        v32 = v1[--v17];
        if (v32 == 58)
        {
          goto LABEL_62;
        }
      }
    }

    v18 = 0;
  }

LABEL_72:
  if (v2 >= v18)
  {
    v31 = v18;
  }

  else
  {
    v31 = v2;
  }

  if (v31 > v12)
  {
    v12 = v18;
  }

  if (v12 >= v2)
  {
    v12 = v2;
  }

  result[2] = &v1[v31];
  result[3] = (v12 - v31);
  result[4] = v18;
  return result;
}

uint64_t sub_298BA85C4(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v18[0] = a1;
  v18[1] = a2;
  if (a3 >= 2)
  {
    if (a2 < 3)
    {
LABEL_7:
      if (!a2)
      {
        return -1;
      }

      v6 = *a1;
      goto LABEL_37;
    }

    if (a1[1] == 58)
    {
      v3 = a1[2];
      v4 = 2;
      if (v3 == 47 || v3 == 92)
      {
        return v4;
      }
    }
  }

  if (a2 < 4)
  {
    goto LABEL_7;
  }

  v6 = *a1;
  v8 = a3 > 1 && v6 == 92;
  v9 = v6 != 47 && !v8;
  if (!v9 && v6 == a1[1])
  {
    v10 = a1[2];
    v11 = a3 > 1 && v10 == 92;
    v12 = v11;
    if (v10 != 47 && !v12)
    {
      v13 = a3 > 1;
      if (a3 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13)
      {
        v15 = "\\/";
      }

      else
      {
        v15 = "/";
      }

      return sub_298B96C28(v18, v15, v14, 2uLL);
    }
  }

LABEL_37:
  v4 = 0;
  v17 = a3 > 1 && v6 == 92;
  if (v6 != 47 && !v17)
  {
    return -1;
  }

  return v4;
}

unint64_t sub_298BA86D4(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2 - 1;
    v4 = a1[a2 - 1];
    if (v4 == 47 || a3 >= 2 && v4 == 92)
    {
      return v3;
    }
  }

  else
  {
    v3 = -1;
  }

  v5 = "/";
  if (a3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (a3 > 1)
  {
    v5 = "\\/";
  }

  memset(v17, 0, sizeof(v17));
  do
  {
    v7 = *v5++;
    *(v17 + ((v7 >> 3) & 0x18)) |= 1 << v7;
    --v6;
  }

  while (v6);
  if (a2 >= v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = a2;
  }

  while (v8)
  {
    v9 = v8 - 1;
    v10 = *(v17 + ((a1[v8 - 1] >> 3) & 0x18)) >> a1[v8 - 1];
    --v8;
    if (v10)
    {
LABEL_17:
      if (v9 != 1)
      {
        return v9 + 1;
      }

      v3 = 0;
      v11 = *a1;
      v12 = a3 > 1 && v11 == 92;
      v13 = v12;
      if (v11 != 47 && !v13)
      {
        return v9 + 1;
      }

      return v3;
    }
  }

  if (a3 >= 2)
  {
    if (a2 >= a2 - 1)
    {
      v15 = a2 - 1;
    }

    else
    {
      v15 = a2;
    }

    while (v15)
    {
      v9 = v15 - 1;
      v16 = a1[--v15];
      if (v16 == 58)
      {
        goto LABEL_17;
      }
    }
  }

  return 0;
}

unsigned __int8 *sub_298BA8800(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v6 = sub_298BA7E68(a1, a2, a3);
  v20[0] = a1;
  v20[1] = a2;
  v21 = v6;
  v22 = v7;
  v23 = 0;
  v24 = a3;
  if (!a2)
  {
    return 0;
  }

  v8 = v6;
  if (v7 >= 3)
  {
    v19 = *v6;
    if (v19 == 47 || (v9 = 0, a3 >= 2) && v19 == 92)
    {
      v9 = v6[1] == v19;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (a3 >= 2 && v7)
  {
    v10 = v6[v7 - 1] == 58;
  }

  if (!v9 && !v10 || (sub_298BA8060(v20), v20[0] == a1) && v23 == a2 || ((result = v21, v12 = *v21, a3 > 1) ? (v13 = v12 == 92) : (v13 = 0), !v13 ? (v14 = 0) : (v14 = 1), v12 != 47 ? (v15 = v14 == 0) : (v15 = 0), v15))
  {
    if (!v9)
    {
      v16 = *v8;
      if (a3 > 1 && v16 == 92 || v16 == 47)
      {
        return v8;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  return result;
}

void sub_298BA8944(size_t a1, unsigned int a2, void **a3, void **a4, void ***a5, void ***a6)
{
  v8 = a1;
  v95[4] = *MEMORY[0x29EDCA608];
  v93 = v95;
  v94 = xmmword_298D1A0C0;
  v90 = v92;
  v91 = xmmword_298D1A0C0;
  v87 = v89;
  v88 = xmmword_298D1A0C0;
  v84 = v86;
  v85 = xmmword_298D1A0C0;
  v81 = v83;
  v82 = 0x400000000;
  v9 = *(a3 + 32);
  if (v9 >= 2)
  {
    if (*(a3 + 33) == 1)
    {
      if (v9 - 5 < 2)
      {
        v13 = 0;
        v12 = *a3;
        a1 = a3[1];
        goto LABEL_21;
      }

      if (v9 == 4)
      {
        v13 = 0;
        v18 = *(*a3 + 23);
        if (v18 >= 0)
        {
          v12 = *a3;
        }

        else
        {
          v12 = **a3;
        }

        if (v18 >= 0)
        {
          a1 = *(*a3 + 23);
        }

        else
        {
          a1 = (*a3)[1];
        }

        goto LABEL_21;
      }

      if (v9 == 3)
      {
        v12 = *a3;
        if (*a3)
        {
          v62 = a5;
          v63 = a4;
          a1 = strlen(*a3);
          a4 = v63;
          a5 = v62;
        }

        else
        {
          a1 = 0;
        }

        v13 = 0;
        goto LABEL_21;
      }
    }

    v14 = a4;
    v15 = a5;
    DWORD2(v74) = 0;
    v77 = 0;
    v78 = 0;
    v80 = &v93;
    v79 = 0;
    *&v74 = &unk_2A1F1E0B8;
    v75 = 0uLL;
    v76 = 0;
    sub_298B99BA4(a1, &v74, *a3, a3[1], v9);
    sub_298B99BA4(v17, &v74, a3[2], a3[3], *(a3 + 33));
    sub_298B9AE14(&v74);
    v12 = v93;
    a1 = v94;
    v13 = v82;
    if (v82 >= HIDWORD(v82))
    {
      v69 = v94;
      sub_298B90A44(&v81, v83, v82 + 1, 16);
      a1 = v69;
      v13 = v82;
    }

    a5 = v15;
    a4 = v14;
LABEL_21:
    v19 = v81 + 16 * v13;
    *v19 = v12;
    v19[1] = a1;
    v10 = v82 + 1;
    LODWORD(v82) = v82 + 1;
    v11 = *(a4 + 32);
    if (v11 < 2)
    {
      goto LABEL_41;
    }

LABEL_22:
    if (*(a4 + 33) == 1)
    {
      if (v11 - 5 < 2)
      {
        v20 = *a4;
        a1 = a4[1];
        if (v10 >= HIDWORD(v82))
        {
          goto LABEL_146;
        }

        goto LABEL_40;
      }

      if (v11 == 4)
      {
        v24 = *(*a4 + 23);
        if (v24 >= 0)
        {
          v20 = *a4;
        }

        else
        {
          v20 = **a4;
        }

        if (v24 >= 0)
        {
          a1 = *(*a4 + 23);
        }

        else
        {
          a1 = (*a4)[1];
        }

        if (v10 < HIDWORD(v82))
        {
          goto LABEL_40;
        }

        goto LABEL_146;
      }

      if (v11 == 3)
      {
        v20 = *a4;
        if (*a4)
        {
          v64 = a5;
          a1 = strlen(*a4);
          a5 = v64;
          if (v10 >= HIDWORD(v82))
          {
LABEL_146:
            v65 = a1;
            v66 = a5;
            sub_298B90A44(&v81, v83, v10 + 1, 16);
            a1 = v65;
            a5 = v66;
            v10 = v82;
          }
        }

        else
        {
          a1 = 0;
          if (v10 >= HIDWORD(v82))
          {
            goto LABEL_146;
          }
        }

LABEL_40:
        v25 = v81 + 16 * v10;
        *v25 = v20;
        v25[1] = a1;
        v10 = v82 + 1;
        LODWORD(v82) = v82 + 1;
        goto LABEL_41;
      }
    }

    DWORD2(v74) = 0;
    v77 = 0;
    v78 = 0;
    v80 = &v90;
    v79 = 0;
    *&v74 = &unk_2A1F1E0B8;
    v75 = 0uLL;
    v76 = 0;
    v21 = a4;
    v22 = a5;
    sub_298B99BA4(a1, &v74, *a4, a4[1], v11);
    sub_298B99BA4(v23, &v74, v21[2], v21[3], *(v21 + 33));
    sub_298B9AE14(&v74);
    a5 = v22;
    v20 = v90;
    a1 = v91;
    v10 = v82;
    if (v82 >= HIDWORD(v82))
    {
      goto LABEL_146;
    }

    goto LABEL_40;
  }

  v10 = 0;
  v11 = *(a4 + 32);
  if (v11 >= 2)
  {
    goto LABEL_22;
  }

LABEL_41:
  v26 = *(a5 + 32);
  if (v26 < 2)
  {
    v27 = *(a6 + 32);
    if (v27 < 2)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

  if (*(a5 + 33) != 1)
  {
LABEL_64:
    DWORD2(v74) = 0;
    v77 = 0;
    v78 = 0;
    v80 = &v87;
    v79 = 0;
    *&v74 = &unk_2A1F1E0B8;
    v75 = 0uLL;
    v76 = 0;
    v31 = a5;
    sub_298B99BA4(a1, &v74, *a5, a5[1], v26);
    sub_298B99BA4(v32, &v74, v31[2], v31[3], *(v31 + 33));
    sub_298B9AE14(&v74);
    v30 = v87;
    a1 = v88;
    v10 = v82;
    if (v82 < HIDWORD(v82))
    {
      goto LABEL_73;
    }

    goto LABEL_148;
  }

  if (v26 - 5 < 2)
  {
    v30 = *a5;
    a1 = a5[1];
    if (v10 < HIDWORD(v82))
    {
      goto LABEL_73;
    }

    goto LABEL_148;
  }

  if (v26 != 4)
  {
    if (v26 == 3)
    {
      v30 = *a5;
      if (*a5)
      {
        a1 = strlen(*a5);
        if (v10 < HIDWORD(v82))
        {
          goto LABEL_73;
        }
      }

      else
      {
        a1 = 0;
        if (v10 < HIDWORD(v82))
        {
          goto LABEL_73;
        }
      }

      goto LABEL_148;
    }

    goto LABEL_64;
  }

  v33 = *(*a5 + 23);
  if (v33 >= 0)
  {
    v30 = *a5;
  }

  else
  {
    v30 = **a5;
  }

  if (v33 >= 0)
  {
    a1 = *(*a5 + 23);
  }

  else
  {
    a1 = (*a5)[1];
  }

  if (v10 >= HIDWORD(v82))
  {
LABEL_148:
    v67 = a1;
    sub_298B90A44(&v81, v83, v10 + 1, 16);
    a1 = v67;
    v10 = v82;
  }

LABEL_73:
  v34 = v81 + 16 * v10;
  *v34 = v30;
  v34[1] = a1;
  v10 = v82 + 1;
  LODWORD(v82) = v82 + 1;
  v27 = *(a6 + 32);
  if (v27 < 2)
  {
LABEL_43:
    v28 = v81;
    if (!v10)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_74:
  if (*(a6 + 33) != 1)
  {
LABEL_83:
    DWORD2(v74) = 0;
    v77 = 0;
    v78 = 0;
    v80 = &v84;
    v79 = 0;
    *&v74 = &unk_2A1F1E0B8;
    v75 = 0uLL;
    v76 = 0;
    sub_298B99BA4(a1, &v74, *a6, a6[1], v27);
    sub_298B99BA4(v37, &v74, a6[2], a6[3], *(a6 + 33));
    sub_298B9AE14(&v74);
    v35 = v84;
    v36 = v85;
    v10 = v82;
    if (v82 < HIDWORD(v82))
    {
      goto LABEL_92;
    }

    goto LABEL_150;
  }

  if (v27 - 5 < 2)
  {
    v35 = *a6;
    v36 = a6[1];
    if (v10 < HIDWORD(v82))
    {
      goto LABEL_92;
    }

    goto LABEL_150;
  }

  if (v27 != 4)
  {
    if (v27 == 3)
    {
      v35 = *a6;
      if (*a6)
      {
        v36 = strlen(*a6);
        if (v10 < HIDWORD(v82))
        {
          goto LABEL_92;
        }
      }

      else
      {
        v36 = 0;
        if (v10 < HIDWORD(v82))
        {
          goto LABEL_92;
        }
      }

      goto LABEL_150;
    }

    goto LABEL_83;
  }

  v38 = *(*a6 + 23);
  if (v38 >= 0)
  {
    v35 = *a6;
  }

  else
  {
    v35 = **a6;
  }

  if (v38 >= 0)
  {
    v36 = *(*a6 + 23);
  }

  else
  {
    v36 = (*a6)[1];
  }

  if (v10 >= HIDWORD(v82))
  {
LABEL_150:
    v68 = v36;
    sub_298B90A44(&v81, v83, v10 + 1, 16);
    v36 = v68;
    v10 = v82;
  }

LABEL_92:
  v39 = v81 + 16 * v10;
  *v39 = v35;
  v39[1] = v36;
  v10 = v82 + 1;
  LODWORD(v82) = v10;
  v28 = v81;
  if (!v10)
  {
LABEL_44:
    if (v28 == v83)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_93:
  if (a2 == 3)
  {
    v40 = 92;
  }

  else
  {
    v40 = 47;
  }

  v70 = v40;
  v71 = a2;
  if (a2 <= 1)
  {
    v41 = 1;
  }

  else
  {
    v41 = 2;
  }

  v42 = "/";
  v43 = v8[1];
  if (a2 > 1)
  {
    v42 = "\\/";
  }

  v72 = v42;
  v73 = v41;
  v44 = &v28[2 * v10];
  do
  {
    if (!v43 || ((v45 = *(*v8 + v43 - 1), a2 > 1) ? (v46 = v45 == 92) : (v46 = 0), !v46 ? (v47 = 0) : (v47 = 1), v45 != 47 ? (v48 = v47 == 0) : (v48 = 0), v48))
    {
      v58 = v28[1];
      if (!v58 || (v59 = **v28, v59 != 47) && (a2 < 2 || v59 != 92))
      {
        if (v43)
        {
          LOWORD(v76) = 261;
          *&v74 = *v28;
          *(&v74 + 1) = v58;
          v60 = sub_298BA933C(&v74, a2);
          v43 = v8[1];
          if (!v60)
          {
            if ((v43 + 1) > v8[2])
            {
              sub_298B90C08(v8, v8 + 3, v43 + 1, 1);
              v43 = v8[1];
            }

            *(*v8 + v43) = v70;
            v43 = v8[1] + 1;
            v8[1] = v43;
          }
        }
      }

      v61 = *v28;
      v56 = v28[1];
      if (v8[2] < v56 + v43)
      {
        sub_298B90C08(v8, v8 + 3, v56 + v43, 1);
        v43 = v8[1];
      }

      if (v56)
      {
        memcpy((*v8 + v43), v61, v56);
        v43 = v8[1];
      }
    }

    else
    {
      v74 = 0u;
      v75 = 0u;
      v50 = v72;
      v49 = v73;
      do
      {
        v51 = *v50++;
        *(&v74 + ((v51 >> 3) & 0x18)) |= 1 << v51;
        --v49;
      }

      while (v49);
      v52 = *v28;
      v53 = v28[1];
      if (v53)
      {
        v54 = 0;
        while (((*(&v74 + ((v52[v54] >> 3) & 0x18)) >> v52[v54]) & 1) != 0)
        {
          if (v53 == ++v54)
          {
            goto LABEL_121;
          }
        }
      }

      else
      {
LABEL_121:
        v54 = -1;
      }

      if (v53 >= v54)
      {
        v55 = v54;
      }

      else
      {
        v55 = v28[1];
      }

      v56 = v53 - v55;
      v57 = v43 + v53 - v55;
      if (v8[2] < v57)
      {
        sub_298B90C08(v8, v8 + 3, v57, 1);
        v43 = v8[1];
      }

      if (v53 > v54)
      {
        memcpy((*v8 + v43), &v55[v52], v53 - v55);
        v43 = v8[1];
      }

      a2 = v71;
    }

    v43 += v56;
    v8[1] = v43;
    v28 += 2;
  }

  while (v28 != v44);
  v28 = v81;
  if (v81 != v83)
  {
LABEL_45:
    free(v28);
  }

LABEL_46:
  if (v84 != v86)
  {
    free(v84);
  }

  if (v87 != v89)
  {
    free(v87);
  }

  if (v90 != v92)
  {
    free(v90);
  }

  if (v93 != v95)
  {
    free(v93);
  }

  v29 = *MEMORY[0x29EDCA608];
}

const char *sub_298BA9284(const char **a1, const char **a2)
{
  if (*(a1 + 33) != 1)
  {
    goto LABEL_11;
  }

  v2 = *(a1 + 32);
  if (v2 > 4)
  {
    if (v2 - 5 < 2)
    {
      v5 = a1[1];
      return *a1;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v2 == 3)
  {
    v8 = *a1;
    if (*a1)
    {
      strlen(*a1);
      return v8;
    }

    return 0;
  }

  if (v2 != 4)
  {
LABEL_11:
    sub_298B99A14(a1, a2);
    result = *a2;
    v7 = a2[1];
    return result;
  }

  v3 = *(*a1 + 1);
  if ((*a1)[23] >= 0)
  {
    return *a1;
  }

  else
  {
    return **a1;
  }
}

BOOL sub_298BA933C(void **a1, unsigned int a2)
{
  v33[16] = *MEMORY[0x29EDCA608];
  v31 = v33;
  v32 = xmmword_298D1A050;
  v3 = *(a1 + 32);
  if (*(a1 + 33) != 1)
  {
LABEL_17:
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v30 = &v31;
    v29 = 0;
    v22 = &unk_2A1F1E0B8;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_298B99BA4(a1, &v22, *a1, a1[1], v3);
    sub_298B99BA4(v12, &v22, a1[2], a1[3], *(a1 + 33));
    sub_298B9AE14(&v22);
    v13 = v32;
    v8 = sub_298BA7E68(v31, v32, a2);
    if (v13)
    {
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (*(a1 + 32) > 4u)
  {
    if ((v3 - 5) < 2)
    {
      v10 = a1[1];
      v8 = sub_298BA7E68(*a1, v10, a2);
      if (v10)
      {
        goto LABEL_21;
      }

      goto LABEL_31;
    }

    goto LABEL_17;
  }

  if (v3 == 1)
  {
LABEL_20:
    sub_298BA7E68(0, 0, a2);
    goto LABEL_31;
  }

  if (v3 == 3)
  {
    v14 = *a1;
    if (*a1)
    {
      v21 = strlen(*a1);
      v8 = sub_298BA7E68(v14, v21, a2);
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_31:
      v15 = 0;
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  if (v3 != 4)
  {
    goto LABEL_17;
  }

  v4 = *(*a1 + 23);
  v5 = (*a1)[1];
  if (v4 >= 0)
  {
    v6 = *a1;
  }

  else
  {
    v6 = **a1;
  }

  if (v4 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  v8 = sub_298BA7E68(v6, v7, a2);
  if (!v7)
  {
    goto LABEL_31;
  }

LABEL_21:
  v15 = v9;
  if (v9 < 3)
  {
    v17 = 0;
  }

  else
  {
    v16 = *v8;
    if (v16 == 47 || (v17 = 0, a2 >= 2) && v16 == 92)
    {
      v17 = v8[1] == v16;
    }
  }

  v18 = 0;
  if (a2 >= 2 && v9)
  {
    v18 = v8[v9 - 1] == 58;
  }

  if (!v17 && !v18)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (v31 != v33)
  {
    free(v31);
  }

  result = v15 != 0;
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

unsigned __int8 *sub_298BA9584(unsigned __int8 *a1, unint64_t a2, unsigned int a3)
{
  v6 = sub_298BA86D4(a1, a2, a3);
  v7 = v6;
  if (a2)
  {
    v8 = a1[v6];
    v10 = a3 > 1 && v8 == 92;
    v11 = v8 == 47 || v10;
    v12 = sub_298BA85C4(a1, a2, a3);
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v11 = 0;
    v12 = sub_298BA85C4(a1, 0, a3);
    if (!v7)
    {
LABEL_42:
      v13 = 0;
      goto LABEL_44;
    }
  }

  if (v12 == -1)
  {
    while (1)
    {
      v18 = a1[v7 - 1];
      v19 = a3 > 1 && v18 == 92;
      v20 = v19;
      if (v18 != 47 && !v20)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_42;
      }
    }

LABEL_43:
    v13 = v7;
  }

  else
  {
    if (v12 >= v7)
    {
      v13 = v7;
    }

    else
    {
      v13 = v12;
    }

    while (v7 > v12)
    {
      v14 = a1[v7 - 1];
      v16 = a3 > 1 && v14 == 92;
      if (v14 != 47 && !v16)
      {
        goto LABEL_43;
      }

      if (!--v7)
      {
        goto LABEL_42;
      }
    }
  }

LABEL_44:
  if (v13 == v12)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v13 = v12 + 1;
  }

  if (v13 == -1)
  {
    return 0;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_298BA96BC(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = sub_298BA86D4(*a1, v5, a2);
  v7 = v6;
  if (v5)
  {
    v8 = v4[v6];
    v10 = a2 > 1 && v8 == 92;
    v11 = v8 == 47 || v10;
    result = sub_298BA85C4(v4, v5, a2);
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v11 = 0;
    result = sub_298BA85C4(v4, 0, a2);
    if (!v7)
    {
LABEL_42:
      v13 = 0;
      goto LABEL_43;
    }
  }

  if (result == -1)
  {
    while (1)
    {
      v18 = v4[v7 - 1];
      v19 = a2 > 1 && v18 == 92;
      v20 = v19;
      if (v18 != 47 && !v20)
      {
        break;
      }

      if (!--v7)
      {
        goto LABEL_42;
      }
    }

LABEL_51:
    if (v7 == result)
    {
      v23 = v11;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      v13 = v7;
    }

    else
    {
      v13 = result + 1;
    }

    if (v13 != -1)
    {
      goto LABEL_49;
    }

    return result;
  }

  if (result >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = result;
  }

  while (v7 > result)
  {
    v14 = v4[v7 - 1];
    v16 = a2 > 1 && v14 == 92;
    if (v14 != 47 && !v16)
    {
      goto LABEL_51;
    }

    if (!--v7)
    {
      goto LABEL_42;
    }
  }

LABEL_43:
  if (v13 == result)
  {
    v22 = v11;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v13 = result + 1;
  }

  if (v13 != -1)
  {
LABEL_49:
    *(a1 + 8) = v13;
  }

  return result;
}

uint64_t sub_298BA980C(uint64_t a1, unsigned __int8 *a2, size_t a3, const void *a4, unint64_t a5, unsigned int a6)
{
  v37[32] = *MEMORY[0x29EDCA608];
  if (!(a3 | a5))
  {
    goto LABEL_2;
  }

  v8 = *a1;
  v9 = *(a1 + 8);
  if (a6 < 2)
  {
    if (v9 >= a3)
    {
      if (!a3)
      {
        goto LABEL_33;
      }

      v18 = a5;
      v19 = a4;
      v20 = a1;
      v21 = a3;
      if (!memcmp(*a1, a2, a3))
      {
        a5 = v18;
        a3 = v21;
        a1 = v20;
        a4 = v19;
        if (v21 == v18)
        {
          goto LABEL_35;
        }

        goto LABEL_36;
      }
    }
  }

  else if (v9 >= a3)
  {
    if (a3)
    {
      v10 = *a1;
      for (i = a3; i; --i)
      {
        v13 = *v10++;
        v12 = v13;
        v15 = *a2++;
        v14 = v15;
        if (v15 == 47)
        {
          if (v12 != 47 && v12 != 92)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v17 = v12 == 47 || v12 == 92;
          if ((v17 ^ (v14 == 92)))
          {
            goto LABEL_2;
          }

          if (v12 != 47 && v12 != 92)
          {
            if ((v12 - 65) < 0x1A)
            {
              v12 += 32;
            }

            if ((v14 - 65) < 0x1A)
            {
              v14 += 32;
            }

            if (v12 != v14)
            {
              goto LABEL_2;
            }
          }
        }
      }
    }

LABEL_33:
    if (a3 == a5)
    {
      if (!a3)
      {
LABEL_41:
        result = 1;
        v25 = *MEMORY[0x29EDCA608];
        return result;
      }

LABEL_35:
      memmove(v8, a4, a3);
      goto LABEL_41;
    }

LABEL_36:
    v34 = &v35;
    v35 = v37;
    if (v9 >= a3)
    {
      v22 = a3;
    }

    else
    {
      v22 = v9;
    }

    v36 = xmmword_298D1A100;
    v27 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v26 = &unk_2A1F1E0B8;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v23 = a1;
    sub_298B99BA4(a1, &v26, a4, a5, 5);
    sub_298B99BA4(v24, &v26, v8 + v22, v9 - v22, 5);
    sub_298B9AE14(&v26);
    sub_298BA9A54(v23, &v35);
    if (v35 != v37)
    {
      free(v35);
    }

    goto LABEL_41;
  }

LABEL_2:
  result = 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BA9A54(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return;
  }

  v4 = *a1;
  if (*a1 != a1 + 3 && *a2 != a2 + 3)
  {
    v5 = a1[1];
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    *a2 = v4;
    a2[1] = v5;
    v7 = a1[2];
    a1[2] = a2[2];
    a2[2] = v7;
    return;
  }

  v8 = a2[1];
  if (a1[2] < v8)
  {
    sub_298B90C08(a1, a1 + 3, v8, 1);
    v9 = a1[1];
    if (a2[2] >= v9)
    {
LABEL_7:
      v10 = a2[1];
      if (v9 >= v10)
      {
        v11 = a2[1];
      }

      else
      {
        v11 = v9;
      }

      if (!v11)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v9 = a1[1];
    if (a2[2] >= v9)
    {
      goto LABEL_7;
    }
  }

  sub_298B90C08(a2, a2 + 3, v9, 1);
  v9 = a1[1];
  v10 = a2[1];
  if (v9 >= v10)
  {
    v11 = a2[1];
  }

  else
  {
    v11 = a1[1];
  }

  if (!v11)
  {
LABEL_11:
    v12 = v9 - v10;
    if (v9 > v10)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_20:
  for (i = 0; i != v11; ++i)
  {
    v15 = *a2;
    v16 = *(*a1 + i);
    *(*a1 + i) = *(*a2 + i);
    *(v15 + i) = v16;
  }

  v9 = a1[1];
  v10 = a2[1];
  v12 = v9 - v10;
  if (v9 > v10)
  {
LABEL_12:
    v13 = v9 - v11;
    if (v13)
    {
      memcpy((*a2 + v10), (*a1 + v11), v13);
      v10 = a2[1];
    }

    a2[1] = v12 + v10;
    a1[1] = v11;
    return;
  }

LABEL_23:
  v17 = v10 - v9;
  if (v10 > v9)
  {
    v18 = v10 - v11;
    if (v18)
    {
      memcpy((*a1 + v9), (*a2 + v11), v18);
      v9 = a1[1];
    }

    a1[1] = v17 + v9;
    a2[1] = v11;
  }
}

BOOL sub_298BA9BE8(const char **a1, unsigned int a2)
{
  v15[16] = *MEMORY[0x29EDCA608];
  v13 = v15;
  v14 = xmmword_298D1A050;
  if (*(a1 + 33) != 1)
  {
LABEL_17:
    sub_298B99A14(a1, &v13);
    v6 = v13;
    v7 = v14;
    goto LABEL_14;
  }

  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v7 = a1[1];
      v6 = *a1;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v3 == 1)
  {
    goto LABEL_19;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      v4 = (*a1)[23];
      v5 = *(*a1 + 1);
      if (v4 >= 0)
      {
        v6 = *a1;
      }

      else
      {
        v6 = **a1;
      }

      if (v4 >= 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = v5;
      }

      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v12 = *a1;
  if (*a1)
  {
    v7 = strlen(*a1);
    v6 = v12;
  }

  else
  {
LABEL_19:
    v7 = 0;
    v6 = 0;
  }

LABEL_14:
  sub_298BA8800(v6, v7, a2);
  v9 = v8;
  if (v13 != v15)
  {
    free(v13);
  }

  result = v9 != 0;
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BA9D1C(void **a1, unsigned int a2)
{
  v16[16] = *MEMORY[0x29EDCA608];
  v14 = v16;
  v15 = xmmword_298D1A050;
  if (*(a1 + 33) != 1)
  {
    goto LABEL_20;
  }

  v3 = *(a1 + 32);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      v5 = *a1;
      v6 = a1[1];
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (v3 == 1)
  {
    v6 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  if (v3 == 3)
  {
    v5 = *a1;
    if (*a1)
    {
      v6 = strlen(*a1);
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_14;
  }

  if (v3 != 4)
  {
LABEL_20:
    sub_298B99A14(a1, &v14);
    v5 = v14;
    v6 = v15;
    goto LABEL_14;
  }

  v4 = *(*a1 + 23);
  if (v4 >= 0)
  {
    v5 = *a1;
  }

  else
  {
    v5 = **a1;
  }

  if (v4 >= 0)
  {
    v6 = *(*a1 + 23);
  }

  else
  {
    v6 = (*a1)[1];
  }

LABEL_14:
  v13 = 261;
  v11 = v5;
  v12 = v6;
  v7 = sub_298BA9BE8(&v11, a2);
  if (a2 >= 2)
  {
    v13 = 261;
    v11 = v5;
    v12 = v6;
    v8 = sub_298BA933C(&v11, a2);
  }

  else
  {
    v8 = 1;
  }

  if (v14 != v16)
  {
    free(v14);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v7 & v8;
}

uint64_t sub_298BA9E94(uint64_t a1, uint64_t a2, int a3)
{
  v13[16] = *MEMORY[0x29EDCA608];
  v11 = v13;
  v12 = xmmword_298D1A050;
  v5 = sub_298B99AEC(a1, &v11);
  if (a3)
  {
    v6 = MEMORY[0x29EDCA6B8](v5, v10);
  }

  else
  {
    v6 = MEMORY[0x29EDCA6A8](v5, v10);
  }

  result = sub_298BAB580(v6, v10, a2);
  if (v11 != v13)
  {
    v8 = result;
    free(v11);
    result = v8;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298BA9F70(uint64_t a1)
{
  *(a1 + 8) = 0;
  v2 = getenv("TMPDIR");
  v3 = v2 != 0;
  if (v2 || (v2 = getenv("TMP"), v3 = v2 != 0, v2) || (v2 = getenv("TEMP"), v3 = v2 != 0, v2))
  {
    if (v3)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v2 = getenv("TEMPDIR");
    if (v2)
    {
LABEL_5:
      v4 = v2;
      v5 = strlen(v2);
      v6 = v5;
      if (*(a1 + 16) >= v5)
      {
        v7 = 0;
        v8 = 0;
        if (!v5)
        {
LABEL_9:
          *(a1 + 8) = v8 + v6;
          return;
        }
      }

      else
      {
        sub_298B90C08(a1, (a1 + 24), v5, 1);
        v7 = *(a1 + 8);
      }

      memcpy((*a1 + v7), v4, v6);
      v8 = *(a1 + 8);
      goto LABEL_9;
    }
  }

  v9 = confstr(65537, 0, 0);
  v10 = *(a1 + 8);
  if (!v9)
  {
    goto LABEL_25;
  }

  v11 = v9;
  while (v10 == v11)
  {
    v12 = confstr(65537, *a1, v10);
    if (!v12)
    {
      goto LABEL_24;
    }

LABEL_22:
    v11 = v12;
    v10 = *(a1 + 8);
    if (v12 == v10)
    {
      *(a1 + 8) = v12 - 1;
      return;
    }
  }

  if (v10 <= v11)
  {
    if (*(a1 + 16) < v11)
    {
      sub_298B90C08(a1, (a1 + 24), v11, 1);
      v10 = *(a1 + 8);
    }

    if (v11 != v10)
    {
      bzero((*a1 + v10), v11 - v10);
    }
  }

  *(a1 + 8) = v11;
  v12 = confstr(65537, *a1, v11);
  if (v12)
  {
    goto LABEL_22;
  }

LABEL_24:
  v10 = 0;
  *(a1 + 8) = 0;
LABEL_25:
  if (*(a1 + 16) < v10 + 9)
  {
    sub_298B90C08(a1, (a1 + 24), v10 + 9, 1);
    v10 = *(a1 + 8);
  }

  v13 = *a1 + v10;
  *v13 = *"/var/tmp/";
  *(v13 + 8) = 47;
  *(a1 + 8) += 9;
}

unint64_t sub_298BAA184(uint64_t a1, int *a2, uint64_t a3, int a4, int a5, int a6, unsigned int a7)
{
  v60 = *MEMORY[0x29EDCA608];
  v10 = std::system_category();
  v11 = 128;
  while (1)
  {
    v55 = &v57;
    v56 = xmmword_298D1A050;
    LODWORD(v48) = 0;
    v51 = 0;
    v52 = 0;
    v47 = &unk_2A1F1E0B8;
    v54 = &v55;
    v53 = 0;
    v49 = 0;
    v50 = 0;
    *(&v48 + 1) = 0;
    sub_298B99BA4(v10, &v47, *a1, *(a1 + 8), *(a1 + 32));
    sub_298B99BA4(v12, &v47, *(a1 + 16), *(a1 + 24), *(a1 + 33));
    sub_298B9AE14(&v47);
    if (a4)
    {
      LOWORD(v50) = 261;
      v47 = v55;
      *&v48 = v56;
      if ((sub_298BA9D1C(&v47, 0) & 1) == 0)
      {
        v47 = &v49;
        v48 = xmmword_298D1A050;
        sub_298BA9F70(&v47);
        v46 = 261;
        v45[0] = v55;
        v45[1] = v56;
        v44 = 257;
        v42 = 257;
        v40 = 257;
        sub_298BA8944(&v47, 0, v45, &v43, &v41, &v39);
        sub_298BA9A54(&v55, &v47);
        if (v47 != &v49)
        {
          free(v47);
        }
      }
    }

    if (&v55 == a3)
    {
      v13 = *(a3 + 8);
    }

    else
    {
      v13 = v56;
      v14 = *(a3 + 8);
      if (v14 >= v56)
      {
        if (v56)
        {
          memmove(*a3, v55, v56);
        }
      }

      else
      {
        if (*(a3 + 16) >= v56)
        {
          if (v14)
          {
            memmove(*a3, v55, *(a3 + 8));
          }
        }

        else
        {
          *(a3 + 8) = 0;
          sub_298B90C08(a3, (a3 + 24), v13, 1);
          v14 = 0;
        }

        if (v56 != v14)
        {
          memcpy((*a3 + v14), &v55[v14], v56 - v14);
        }
      }

      *(a3 + 8) = v13;
    }

    if (v13 + 1 > *(a3 + 16))
    {
      sub_298B90C08(a3, (a3 + 24), v13 + 1, 1);
      v13 = *(a3 + 8);
    }

    *(*a3 + v13) = 0;
    v15 = v56;
    if (v56)
    {
      v16 = 0;
      do
      {
        if (v55[v16] == 37)
        {
          *(*a3 + v16) = a0123456789abcd_0[arc4random() & 0xF];
        }

        ++v16;
      }

      while (v15 != v16);
    }

    if (v55 != &v57)
    {
      free(v55);
    }

    if (a5 != 1)
    {
      break;
    }

    v17 = *a3;
    v18 = 1;
    v59 = 1;
    if (*v17)
    {
      v55 = v17;
      v18 = 3;
    }

    v58 = v18;
    v20 = sub_298BABA40(&v55, a2, 1, 3, a6, a7);
    if (!v20)
    {
      goto LABEL_51;
    }

    v21 = v19;
    v10 = std::generic_category();
    if (v20 == 17 && v10 == v21)
    {
      v22 = 17;
    }

    else
    {
      if (v20 != 13 || v10 != v21)
      {
        v32 = v20 & 0xFFFFFFFF00000000;
        goto LABEL_50;
      }

      v22 = 13;
    }

LABEL_34:
    v23 = v11-- != 0;
    if (v11 == 0 || !v23)
    {
      v32 = v20 & 0xFFFFFFFF00000000;
      LODWORD(v20) = v22;
      goto LABEL_50;
    }
  }

  if (a5)
  {
    v28 = *a3;
    v29 = 1;
    v59 = 1;
    if (*v28)
    {
      v55 = v28;
      v29 = 3;
    }

    v58 = v29;
    v20 = sub_298BAB3F0(&v55, 0);
    v31 = v30;
    v10 = std::generic_category();
    if (v10 == v31 && v20 == 2)
    {
LABEL_51:
      LODWORD(v20) = 0;
      v32 = 0;
      goto LABEL_50;
    }

    if (v20)
    {
      goto LABEL_55;
    }

    v22 = 0;
    goto LABEL_34;
  }

  v24 = *a3;
  v25 = 1;
  v59 = 1;
  if (*v24)
  {
    v55 = v24;
    v25 = 3;
  }

  v58 = v25;
  v20 = sub_298BAAAB4(&v55, 0, 0x1F8u);
  if (!v20)
  {
    goto LABEL_51;
  }

  v27 = v26;
  v10 = std::generic_category();
  if (v20 == 17 && v10 == v27)
  {
    v22 = 17;
    goto LABEL_34;
  }

LABEL_55:
  v32 = v20 & 0xFFFFFFFF00000000;
LABEL_50:
  v33 = *MEMORY[0x29EDCA608];
  return v32 | v20;
}

unint64_t sub_298BAA5F0(uint64_t *a1, __int128 *a2, uint64_t a3, int *a4, uint64_t a5, int a6, int a7)
{
  v38[16] = *MEMORY[0x29EDCA608];
  v11 = "-%%%%%%";
  if (a3)
  {
    v11 = "-%%%%%%.";
  }

  if (*v11)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(a1 + 32);
  if (v13 == 1)
  {
    *&v25 = v11;
    LOBYTE(v27) = v12;
    BYTE1(v27) = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      LOWORD(v27) = 256;
LABEL_26:
      v18 = 256;
      goto LABEL_27;
    }

    if (*v11)
    {
      v14 = *a1;
      v15 = a1[1];
      v16 = *(a1 + 33) == 1;
      BYTE1(v27) = v12;
      if (v16)
      {
        v12 = v13;
      }

      else
      {
        v12 = 2;
      }

      if (v16)
      {
        v17 = v14;
      }

      else
      {
        v17 = a1;
      }

      *&v25 = v17;
      *(&v25 + 1) = v15;
      *&v26 = v11;
      LOBYTE(v27) = v12;
    }

    else
    {
      v20 = *(a1 + 1);
      v25 = *a1;
      v26 = v20;
      v27 = a1[4];
      v12 = v27;
      if (!v27)
      {
        goto LABEL_26;
      }
    }
  }

  if (v12 == 1)
  {
    v28 = a2;
    v29 = a3;
    v18 = 261;
LABEL_27:
    v32 = v18;
    goto LABEL_28;
  }

  if (BYTE1(v27) != 1)
  {
    LOBYTE(v12) = 2;
  }

  v19 = &v25;
  if (BYTE1(v27) == 1)
  {
    v19 = v25;
  }

  v28 = v19;
  v29 = *(&v25 + 1);
  v30 = a2;
  v31 = a3;
  LOBYTE(v32) = v12;
  HIBYTE(v32) = 5;
LABEL_28:
  v36 = v38;
  v37 = xmmword_298D1A050;
  sub_298B99A14(&v28, &v36);
  sub_298B8CB34(&v36, 0);
  *&v37 = v37 - 1;
  v21 = 1;
  v35 = 1;
  if (*v36)
  {
    v33 = v36;
    v21 = 3;
  }

  v34 = v21;
  result = sub_298BAA184(&v33, a4, a5, 1, a6, a7, 0x1B6u);
  if (v36 != v38)
  {
    v23 = result;
    free(v36);
    result = v23;
  }

  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298BAA7F0(const char **a1, uint64_t a2, uint64_t a3)
{
  v28[16] = *MEMORY[0x29EDCA608];
  v26 = v28;
  v27 = xmmword_298D1A050;
  v5 = sub_298BA9284(a1, &v26);
  v7 = v6;
  v25 = 261;
  v21 = v5;
  v22 = v6;
  v8 = sub_298BAAAB4(&v21, a2, a3);
  if (std::generic_category() != v9 || v8 != 2)
  {
    goto LABEL_44;
  }

  v21 = v5;
  v22 = v7;
  if (!v7)
  {
    v10 = -1;
    goto LABEL_5;
  }

  v10 = v7 - 1;
  if (v5[v7 - 1] != 47)
  {
LABEL_5:
    v11 = sub_298B96D28(&v21, "/", 1, v10);
    if (v11 == -1 || v11 == 1 && *v5 == 47)
    {
      v10 = 0;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = v11 + 1;
      if (v7)
      {
LABEL_9:
        v12 = v5[v10] == 47;
        v13 = *v5;
        if (v7 < 4)
        {
          goto LABEL_10;
        }

        goto LABEL_50;
      }
    }

    v12 = 0;
    goto LABEL_23;
  }

  v12 = 1;
  v13 = *v5;
  if (v7 < 4)
  {
LABEL_10:
    if (v13 == 47)
    {
LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

LABEL_23:
    if (!v10)
    {
      v15 = 0;
LABEL_29:
      v14 = -1;
      goto LABEL_30;
    }

LABEL_24:
    v15 = v10;
    do
    {
      if (v5[v15 - 1] != 47)
      {
        break;
      }

      --v15;
    }

    while (v15);
    goto LABEL_29;
  }

LABEL_50:
  if (v13 != 47)
  {
    goto LABEL_23;
  }

  if (v5[1] != 47 || v5[2] == 47)
  {
    goto LABEL_11;
  }

  v23 = 0;
  v24 = 0;
  v21 = 0x800000000000;
  v22 = 0;
  v14 = 2;
  while (((*(&v21 + ((v5[v14] >> 3) & 0x18)) >> v5[v14]) & 1) == 0)
  {
    if (v7 == ++v14)
    {
      v14 = -1;
      break;
    }
  }

LABEL_12:
  if (v10)
  {
    if (v14 != -1)
    {
      if (v10 >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v10;
      }

      while (v10 > v14)
      {
        if (v5[v10 - 1] != 47)
        {
          v15 = v10;
          goto LABEL_30;
        }

        if (!--v10)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

LABEL_20:
  v15 = 0;
LABEL_30:
  if (v15 != v14)
  {
    v12 = 1;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v7 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v7;
  }

  if (v16 != -1 && v17 != 0)
  {
    v25 = 261;
    v21 = v5;
    v22 = v17;
    v8 = sub_298BAA7F0(&v21, a2, a3);
    if (!v8)
    {
      v25 = 261;
      v21 = v5;
      v22 = v7;
      v8 = sub_298BAAAB4(&v21, a2, a3);
    }
  }

LABEL_44:
  if (v26 != v28)
  {
    free(v26);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v8;
}

uint64_t sub_298BAAAB4(const char *a1, char a2, mode_t a3)
{
  v12[16] = *MEMORY[0x29EDCA608];
  v10 = v12;
  v11 = xmmword_298D1A050;
  if (a1[33] != 1)
  {
    goto LABEL_17;
  }

  v4 = *(a1 + 32);
  if (v4 < 2)
  {
    goto LABEL_17;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      a1 = *a1;
      if ((a1[23] & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (v4 != 6)
    {
LABEL_17:
      v9 = a3;
      sub_298B99A14(a1, &v10);
      sub_298B8CB34(&v10, 0);
      a3 = v9;
      a1 = v10;
      *&v11 = v11 - 1;
      goto LABEL_5;
    }
  }

LABEL_4:
  a1 = *a1;
LABEL_5:
  if (mkdir(a1, a3) == -1 && (*__error() != 17 || (a2 & 1) == 0))
  {
    v5 = *__error();
    std::generic_category();
    v6 = v10;
    if (v10 == v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  std::system_category();
  v5 = 0;
  v6 = v10;
  if (v10 != v12)
  {
LABEL_9:
    free(v6);
  }

LABEL_10:
  v7 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t sub_298BAAC00()
{
  v0 = *__error();
  std::generic_category();
  return v0;
}

uint64_t sub_298BAAC30(uint64_t a1, BOOL *a2)
{
  memset(v5, 0, 44);
  result = sub_298BA9E94(a1, v5, 1);
  if (!result)
  {
    *a2 = DWORD2(v5[2]) == 3;
    v4 = result;
    std::system_category();
    return v4;
  }

  return result;
}

void sub_298BAAC94(uint64_t a1, void **a2, int a3, __int128 *a4)
{
  v33[16] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  v31 = v9;
  *&v32 = v10;
  if (!v10)
  {
    v11 = -1;
    goto LABEL_9;
  }

  v11 = v10 - 1;
  if (v9[v10 - 1] != 47)
  {
LABEL_9:
    v12 = sub_298B96D28(&v31, "/", 1, v11);
    if (v12 == -1 || v12 == 1 && *v9 == 47)
    {
      v11 = 0;
      if (v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v11 = v12 + 1;
      if (v10)
      {
LABEL_13:
        v13 = v9[v11] == 47;
        v14 = *v9;
        if (v10 < 4)
        {
          goto LABEL_14;
        }

        goto LABEL_60;
      }
    }

    v13 = 0;
    goto LABEL_27;
  }

  v13 = 1;
  v14 = *v9;
  if (v10 < 4)
  {
LABEL_14:
    if (v14 == 47)
    {
LABEL_15:
      v15 = 0;
      goto LABEL_16;
    }

LABEL_27:
    if (!v11)
    {
      v16 = 0;
LABEL_33:
      v15 = -1;
      goto LABEL_34;
    }

LABEL_28:
    v16 = v11;
    do
    {
      if (v9[v16 - 1] != 47)
      {
        break;
      }

      --v16;
    }

    while (v16);
    goto LABEL_33;
  }

LABEL_60:
  if (v14 != 47)
  {
    goto LABEL_27;
  }

  if (v9[1] != 47 || v9[2] == 47)
  {
    goto LABEL_15;
  }

  v33[0] = 0;
  v31 = 0x800000000000;
  v32 = 0uLL;
  v15 = 2;
  while (((*(&v31 + ((v9[v15] >> 3) & 0x18)) >> v9[v15]) & 1) == 0)
  {
    if (v10 == ++v15)
    {
      v15 = -1;
      break;
    }
  }

LABEL_16:
  if (!v11)
  {
LABEL_24:
    v16 = 0;
    goto LABEL_34;
  }

  if (v15 == -1)
  {
    goto LABEL_28;
  }

  if (v11 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  while (v11 > v15)
  {
    if (v9[v11 - 1] != 47)
    {
      v16 = v11;
      break;
    }

    if (!--v11)
    {
      goto LABEL_24;
    }
  }

LABEL_34:
  v17 = 0;
  if (v16 != v15)
  {
    v13 = 1;
  }

  if (v13)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15 + 1;
  }

  if (v10 >= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v10;
  }

  if (v18 == -1)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  if (v18 == -1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v9;
  }

  v31 = v33;
  v32 = xmmword_298D1A050;
  if (v20 >= 0x81)
  {
    sub_298B90C08(&v31, v33, v20, 1);
    v17 = v32;
  }

  if (v20)
  {
    memcpy(v31 + v17, v21, v20);
    v17 = v32;
  }

  *&v32 = v17 + v20;
  v30 = 257;
  v28 = 257;
  v26 = 257;
  sub_298BA8944(&v31, 0, a2, &v29, &v27, &v25);
  std::string::__init(&v29, v31, v32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v29;
  *(a1 + 24) = a3;
  v22 = *a4;
  v23 = a4[2];
  *(a1 + 48) = a4[1];
  *(a1 + 64) = v23;
  *(a1 + 32) = v22;
  if (v31 != v33)
  {
    free(v31);
  }

  v24 = *MEMORY[0x29EDCA608];
}

ssize_t sub_298BAAF8C@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFFLL;
  }

  else
  {
    v7 = a3;
  }

  do
  {
    *__error() = 0;
    result = read(a1, a2, v7);
    if (result != -1)
    {
      v9 = *(a4 + 8) & 0xFE;
      goto LABEL_10;
    }
  }

  while (*__error() == 4);
  if (*__error())
  {
    std::generic_category();
    operator new();
  }

  result = 0;
  v9 = *(a4 + 8) | 1;
LABEL_10:
  *(a4 + 8) = v9;
  *a4 = result;
  return result;
}

unint64_t sub_298BAB094(unsigned __int8 *a1, char a2)
{
  v15[16] = *MEMORY[0x29EDCA608];
  v13 = v15;
  v14 = xmmword_298D1A050;
  if (a1[33] != 1 || (v3 = a1[32], v3 < 2))
  {
LABEL_23:
    sub_298B99A14(a1, &v13);
    sub_298B8CB34(&v13, 0);
    v4 = v13;
    *&v14 = v14 - 1;
    goto LABEL_5;
  }

  if (v3 == 3)
  {
LABEL_4:
    v4 = *a1;
    goto LABEL_5;
  }

  if (v3 != 4)
  {
    if (v3 == 6)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  v4 = *a1;
  if (*(*a1 + 23) < 0)
  {
    v4 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

LABEL_5:
  if (!lstat(v4, &v12))
  {
    v6 = v12.st_mode & 0xF000;
    if (v6 != 0x4000 && v6 != 0x8000 && v6 != 40960)
    {
      v7 = 1;
      std::generic_category();
      goto LABEL_11;
    }

    if (remove(v4, v5) != -1)
    {
      goto LABEL_10;
    }
  }

  if (*__error() == 2 && (a2 & 1) != 0)
  {
LABEL_10:
    std::system_category();
    v7 = 0;
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v11 = sub_298BAAC00();
  v7 = v11;
  v8 = v11 & 0xFFFFFFFF00000000;
LABEL_12:
  if (v13 != v15)
  {
    free(v13);
  }

  v9 = *MEMORY[0x29EDCA608];
  return v8 | v7;
}

uint64_t sub_298BAB220(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  v17[16] = *MEMORY[0x29EDCA608];
  v15 = v17;
  v16 = xmmword_298D1A050;
  v12 = v14;
  v13 = xmmword_298D1A050;
  if (a1[1].__pn_.__r_.__value_.__s.__data_[9] != 1)
  {
    goto LABEL_24;
  }

  v3 = a1[1].__pn_.__r_.__value_.__s.__data_[8];
  if (v3 < 2)
  {
    goto LABEL_24;
  }

  if (v3 != 3)
  {
    if (v3 == 4)
    {
      a1 = a1->__pn_.__r_.__value_.__r.__words[0];
      if ((SHIBYTE(a1->__pn_.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (v3 != 6)
    {
LABEL_24:
      v10 = a2;
      sub_298B99A14(a1, &v15);
      sub_298B8CB34(&v15, 0);
      a2 = v10;
      a1 = v15;
      *&v16 = v16 - 1;
      goto LABEL_5;
    }
  }

LABEL_4:
  a1 = a1->__pn_.__r_.__value_.__r.__words[0];
LABEL_5:
  if (a2[1].__pn_.__r_.__value_.__s.__data_[9] != 1 || (v4 = a2[1].__pn_.__r_.__value_.__s.__data_[8], v4 < 2))
  {
LABEL_26:
    v11 = a1;
    sub_298B99A14(a2, &v12);
    sub_298B8CB34(&v12, 0);
    a1 = v11;
    a2 = v12;
    *&v13 = v13 - 1;
    goto LABEL_9;
  }

  if (v4 == 3)
  {
LABEL_8:
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
    goto LABEL_9;
  }

  if (v4 != 4)
  {
    if (v4 == 6)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  rename(a1, a2, a3);
  if (v5 != -1)
  {
    std::system_category();
    v6 = 0;
    v7 = v12;
    if (v12 == v14)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v6 = *__error();
  std::generic_category();
  v7 = v12;
  if (v12 != v14)
  {
LABEL_11:
    free(v7);
  }

LABEL_12:
  if (v15 != v17)
  {
    free(v15);
  }

  v8 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t sub_298BAB3F0(const char *a1, int a2)
{
  v12[16] = *MEMORY[0x29EDCA608];
  v10 = v12;
  v11 = xmmword_298D1A050;
  if (a1[33] != 1 || (v2 = *(a1 + 32), v2 < 2))
  {
LABEL_23:
    v8 = a2;
    sub_298B99A14(a1, &v10);
    sub_298B8CB34(&v10, 0);
    a2 = v8;
    a1 = v10;
    *&v11 = v11 - 1;
    goto LABEL_5;
  }

  if (v2 == 3)
  {
LABEL_4:
    a1 = *a1;
    goto LABEL_5;
  }

  if (v2 != 4)
  {
    if (v2 == 6)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  a1 = *a1;
  if (a1[23] < 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (!a2)
  {
    goto LABEL_13;
  }

  if (a2 != 2)
  {
    a2 = 2;
LABEL_13:
    if (access(a1, a2) != -1)
    {
      goto LABEL_14;
    }

LABEL_17:
    v4 = *__error();
    std::generic_category();
    v5 = v10;
    if (v10 == v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v3 = a1;
  if (access(a1, 5) == -1)
  {
    goto LABEL_17;
  }

  if (stat(v3, &v9) || (v9.st_mode & 0xF000) != 0x8000)
  {
    std::generic_category();
    v4 = 13;
    v5 = v10;
    if (v10 == v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  std::system_category();
  v4 = 0;
  v5 = v10;
  if (v10 != v12)
  {
LABEL_15:
    free(v5);
  }

LABEL_16:
  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t sub_298BAB580(int a1, int *a2, uint64_t a3)
{
  if (a1)
  {
    v19 = sub_298BAAC00();
    v20 = v19;
    v22 = v21;
    v17 = HIDWORD(v19);
    v23 = std::generic_category();
    v16 = v20;
    if (v23 == v22 && v20 == 2)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0xFFFF00000001;
      *(a3 + 48) = 0;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
      v16 = 2;
    }

    else
    {
      *(a3 + 28) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 44) = 0xFFFFLL;
      *(a3 + 52) = 0;
      *(a3 + 56) = 0;
    }
  }

  else
  {
    v5 = *(a2 + 5);
    v6 = *(a2 + 7);
    v7 = *(a2 + 2);
    v8 = v7 & 0xFFF;
    v9 = sub_298BAC434(v7);
    v10 = *a2;
    v11 = *(a2 + 3);
    v12 = *(a2 + 1);
    v13 = *(a2 + 6);
    v14 = *(a2 + 12);
    v15 = *(a2 + 2);
    *a3 = *(a2 + 4);
    *(a3 + 8) = v13;
    *(a3 + 16) = v5;
    *(a3 + 20) = v6;
    *(a3 + 24) = v15;
    *(a3 + 32) = v14;
    *(a3 + 40) = v9;
    *(a3 + 44) = v8;
    *(a3 + 48) = v10;
    *(a3 + 52) = v11;
    *(a3 + 56) = v12;
    std::system_category();
    v16 = 0;
    v17 = 0;
  }

  return v16 | (v17 << 32);
}

unint64_t sub_298BAB6D0(uint64_t a1, const void *a2, unint64_t a3, char a4)
{
  v26[16] = *MEMORY[0x29EDCA608];
  v24 = v26;
  v25 = xmmword_298D1A050;
  if (a3 < 0x81)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = a2;
  sub_298B90C08(&v24, v26, a3, 1);
  a2 = v7;
  v8 = v25;
  if (a3)
  {
LABEL_5:
    memcpy(v24 + v8, a2, a3);
    v8 = v25;
  }

LABEL_6:
  *&v25 = v8 + a3;
  sub_298B8CB34(&v24, 0);
  *&v25 = v25 - 1;
  v9 = opendir(v24);
  if (!v9)
  {
    v11 = *__error();
    std::generic_category();
    v12 = v24;
    if (v24 == v26)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *a1 = v9;
  *&v15 = ".";
  *&v17[8] = 259;
  v23 = 257;
  v21 = 257;
  v19 = 257;
  sub_298BA8944(&v24, 0, &v15, v22, &v20, &v18);
  v23 = 261;
  v22[0] = v24;
  v22[1] = v25;
  sub_298B996A4(v22, &v15);
  *v17 = 9;
  v17[4] = a4;
  memset(&v17[8], 0, 44);
  *&v17[52] = 0xFFFF;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *(a1 + 8) = v15;
  *(a1 + 24) = v16;
  v10 = *&v17[16];
  *(a1 + 32) = *v17;
  *(a1 + 48) = v10;
  *(a1 + 64) = *&v17[32];
  *(a1 + 80) = *&v17[48];
  v11 = sub_298BAB8D4(a1);
  v12 = v24;
  if (v24 != v26)
  {
LABEL_10:
    free(v12);
  }

LABEL_11:
  v13 = *MEMORY[0x29EDCA608];
  return v11;
}

unint64_t sub_298BAB8D4(uint64_t a1)
{
  *__error() = 0;
  v2 = readdir(*a1);
  if (!v2)
  {
    if (*__error())
    {
      v6 = *__error();
      std::generic_category();
LABEL_18:
      v8 = 0;
      return v8 | v6;
    }

    if (*a1)
    {
      closedir(*a1);
    }

    *a1 = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 9;
    *(a1 + 36) = 1;
    *(a1 + 37) = 0u;
    *(a1 + 53) = 0u;
    *(a1 + 68) = 0u;
    *(a1 + 84) = 0xFFFF;
LABEL_17:
    std::system_category();
    v6 = 0;
    goto LABEL_18;
  }

  v3 = v2;
  d_name = v2->d_name;
  v5 = strlen(v2->d_name);
  if (v5 == 2)
  {
    if (*d_name != 46 || v3->d_name[1] != 46)
    {
      goto LABEL_11;
    }
  }

  else if (v5 != 1 || *d_name != 46)
  {
LABEL_11:
    v14 = 261;
    v13[0] = d_name;
    v13[1] = v5;
    v9 = sub_298BAC434((v3->d_type & 0xF) << 12);
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    HIDWORD(v12) = 0xFFFF;
    sub_298BAAC94(a1 + 8, v13, v9, v11);
    goto LABEL_17;
  }

  v7 = sub_298BAB8D4(a1);
  v6 = v7;
  v8 = v7 & 0xFFFFFFFF00000000;
  return v8 | v6;
}

uint64_t sub_298BABA40(unsigned __int8 *a1, int *a2, int a3, int a4, int a5, uint64_t a6)
{
  v23[16] = *MEMORY[0x29EDCA608];
  v8 = 2 * (a4 == 3);
  if (a4 == 2)
  {
    v8 = 1;
  }

  if (a4 == 1)
  {
    v8 = 0;
  }

  if ((a5 & 4) != 0)
  {
    a3 = 3;
  }

  v10 = v8 | 0xA00;
  v11 = v8 | 0x600;
  if (a3 == 3)
  {
    v8 |= 0x200u;
  }

  if (!a3)
  {
    v8 = v11;
  }

  if (a3 == 1)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  v13 = (a5 << 20) & 0x1000000 | (2 * (a5 & 4));
  v21 = v23;
  v22 = xmmword_298D1A050;
  if (a1[33] != 1)
  {
    goto LABEL_33;
  }

  v14 = a1[32];
  if (v14 < 2)
  {
    goto LABEL_33;
  }

  switch(v14)
  {
    case 3u:
      goto LABEL_18;
    case 4u:
      v15 = *a1;
      if (*(*a1 + 23) < 0)
      {
        v15 = *v15;
      }

      break;
    case 6u:
LABEL_18:
      v15 = *a1;
      break;
    default:
LABEL_33:
      sub_298B99A14(a1, &v21);
      sub_298B8CB34(&v21, 0);
      v15 = v21;
      *&v22 = v22 - 1;
      break;
  }

  v16 = v13 ^ 0x1000000;
  while (1)
  {
    *__error() = 0;
    v17 = open(v15, v12 | v16, a6);
    if (v17 != -1)
    {
      break;
    }

    if (*__error() != 4)
    {
      *a2 = -1;
LABEL_23:
      v18 = *__error();
      std::generic_category();
      goto LABEL_24;
    }
  }

  *a2 = v17;
  if (v17 < 0)
  {
    goto LABEL_23;
  }

  std::system_category();
  v18 = 0;
LABEL_24:
  if (v21 != v23)
  {
    free(v21);
  }

  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

ssize_t sub_298BABC08@<X0>(int a1@<W0>, void *a2@<X1>, unint64_t a3@<X2>, off_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a3 >= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFFLL;
  }

  else
  {
    v9 = a3;
  }

  do
  {
    *__error() = 0;
    result = pread(a1, a2, v9, a4);
    if (result != -1)
    {
      v11 = *(a5 + 8) & 0xFE;
      goto LABEL_10;
    }
  }

  while (*__error() == 4);
  if (*__error())
  {
    std::generic_category();
    operator new();
  }

  result = 0;
  v11 = *(a5 + 8) | 1;
LABEL_10:
  *(a5 + 8) = v11;
  *a5 = result;
  return result;
}

uint64_t sub_298BABD20(uint64_t a1, uint64_t a2)
{
  sub_298B996A4(a1, v12);
  sub_298B996A4(a2, __p);
  if (v13 >= 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v12[0];
  }

  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (clonefile(v3, v4, 0))
  {
    v5 = *__error();
    if (v5 > 0x2D || ((1 << v5) & 0x200000060000) == 0)
    {
LABEL_20:
      std::generic_category();
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    if (v13 >= 0)
    {
      v7 = v12;
    }

    else
    {
      v7 = v12[0];
    }

    if (v11 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if (copyfile(v7, v8, 0, 8u))
    {
      v5 = *__error();
      goto LABEL_20;
    }
  }

  std::system_category();
  v5 = 0;
  if (v11 < 0)
  {
LABEL_21:
    operator delete(__p[0]);
  }

LABEL_23:
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  return v5;
}

__n128 sub_298BABE44(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 8));
    a1 = v3;
  }

  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  *a2 = 1;
  *(a2 + 32) = -1;
  return result;
}

uint64_t sub_298BABEB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = 1;
  v4 = *(a1 + 32);
  if (v4 == -1 || close(v4) != -1)
  {
    *(a1 + 32) = -1;
    v6 = *(a1 + 31);
    if (v6 < 0)
    {
      v6 = *(a1 + 16);
    }

    if (v6)
    {
      v17 = 260;
      v14 = (a1 + 8);
      v7 = sub_298BAB094(&v14, 1);
      v9 = v8;
      v10 = *(a1 + 31);
      v11 = v10 >= 0 ? (a1 + 8) : *(a1 + 8);
      v12 = v10 >= 0 ? *(a1 + 31) : *(a1 + 16);
      sub_298BB01B0(v11, v12);
      if (v7)
      {
        v14 = &unk_2A1F1DB10;
        v15 = v7;
        v16 = v9;
LABEL_5:
        operator new();
      }
    }

    MEMORY[0x29C294300](a1 + 8, "");
  }

  else
  {
    v5 = *__error();
    if (v5)
    {
      v14 = &unk_2A1F1DB10;
      v15 = v5;
      v16 = std::generic_category();
      goto LABEL_5;
    }
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_298BAC020@<X0>(uint64_t a1@<X0>, const std::__fs::filesystem::path *a2@<X1>, std::error_code *a3@<X2>, void *a4@<X8>)
{
  *a1 = 1;
  v7 = a1 + 8;
  v18 = 260;
  v17.__pn_.__r_.__value_.__r.__words[0] = a1 + 8;
  v9 = sub_298BAB220(&v17, a2, a3);
  if (v9)
  {
    v18 = 260;
    v17.__pn_.__r_.__value_.__r.__words[0] = v7;
    v9 = sub_298BABD20(&v17, a2);
    v11 = v10;
    if (v9)
    {
      v18 = 260;
      v17.__pn_.__r_.__value_.__r.__words[0] = v7;
      sub_298BAB094(&v17, 1);
    }
  }

  else
  {
    v11 = v8;
  }

  v12 = *(a1 + 31);
  if (v12 >= 0)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(a1 + 8);
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 31);
  }

  else
  {
    v14 = *(a1 + 16);
  }

  sub_298BB01B0(v13, v14);
  if (v9)
  {
    if (close(*(a1 + 32)) != -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    MEMORY[0x29C294300](v7, "");
    if (close(*(a1 + 32)) != -1)
    {
LABEL_13:
      *(a1 + 32) = -1;
      if (v9)
      {
        goto LABEL_14;
      }

      goto LABEL_17;
    }
  }

  v15 = *__error();
  v11 = std::generic_category();
  v9 = v15;
  if (v15)
  {
LABEL_14:
    v17.__pn_.__r_.__value_.__r.__words[0] = &unk_2A1F1DB10;
    v17.__pn_.__r_.__value_.__l.__size_ = v9;
    v17.__pn_.__r_.__value_.__r.__words[2] = v11;
    operator new();
  }

LABEL_17:
  result = 0;
  *a4 = 0;
  return result;
}

void sub_298BAC1B4(uint64_t a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v16[16] = *MEMORY[0x29EDCA608];
  v13 = 0;
  v14 = v16;
  v15 = xmmword_298D1A050;
  v5 = sub_298BAA184(a1, &v13, &v14, 0, 1, a3 | 8u, a2);
  if (!v5)
  {
    v7 = v15;
    v8 = v13;
    if (v15 < 0x7FFFFFFFFFFFFFF8)
    {
      if (v15 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v10) = v15;
      if (v15)
      {
        memmove(&__p, v14, v15);
      }

      *(&__p + v7) = 0;
      v11 = v8;
      sub_298BB0030(v14, v15);
    }

    sub_298ADDDA0();
  }

  sub_298B85574(v5, &v12);
  *(a4 + 40) |= 1u;
  *a4 = v12;
  if (v14 != v16)
  {
    free(v14);
  }

  v6 = *MEMORY[0x29EDCA608];
}