uint64_t sub_19525051C(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 4);
  if (!v2)
  {
    return 65534;
  }

  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = (v2 + v4) >> 1;
      v6 = *(v3 + 8 * v5);
      if (v6 <= a2)
      {
        v4 = v5;
      }

      else
      {
        v4 = v4;
      }

      if (v6 > a2)
      {
        v2 = v5;
      }
    }

    while (v4 < v2 - 1);
  }

  v7 = (v3 + 8 * v4);
  if (*v7 == a2)
  {
    return v7[1];
  }

  else
  {
    return 65534;
  }
}

uint64_t sub_195250584(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  v4 = *(a1 + (a2 << 10) + 4 * a4);
  if ((v4 & 0x80000000) == 0)
  {
    return sub_195254264(a1, HIBYTE(v4));
  }

  v6 = (v4 >> 20) & 0xF;
  if (a3)
  {
    v7 = v6 == 8;
  }

  else
  {
    v7 = 0;
  }

  return !v7 && v6 != 7;
}

uint64_t sub_1952505B4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 - 1;
  if (a3 < 1)
  {
    return 0xFFFFLL;
  }

  v6 = 0;
  v7 = 0;
  v9 = *(a1 + 72);
  v10 = *(a1 + 49);
  while (1)
  {
    v11 = *(*(a1 + 56) + (v10 << 10) + 4 * *(a2 + v6));
    if ((v11 & 0x80000000) != 0)
    {
      break;
    }

    ++v6;
    v10 = HIBYTE(v11);
    v7 += v11 & 0xFFFFFF;
    if (a3 == v6)
    {
      return 0xFFFFLL;
    }
  }

  v12 = (v11 >> 20) & 0xF;
  result = 0xFFFFLL;
  if (v12 <= 2)
  {
    if (v12 != 1)
    {
      result = v11;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (((v11 >> 20) & 0xF) > 4)
  {
    if (v12 == 5)
    {
      v16 = v7 + v11;
      result = *(v9 + 2 * v16);
      if (result >> 11 < 0x1B)
      {
        goto LABEL_18;
      }

      v17 = v16 + 1;
      if (result >> 13 <= 6)
      {
        result = ((result & 0x3FF) << 10) + *(v9 + 2 * v17) + 9216;
        goto LABEL_18;
      }

      if ((result & 0xFFFE) == 0xE000)
      {
        result = *(v9 + 2 * v17);
        goto LABEL_18;
      }

      v18 = result == 0xFFFF;
      result = 0xFFFFLL;
      if (v18)
      {
        return result;
      }
    }

    else if (v12 != 6)
    {
      return result;
    }

    result = 65534;
    goto LABEL_18;
  }

  if (v12 == 3)
  {
LABEL_17:
    result = (v11 & 0xFFFFF) + 0x10000;
    goto LABEL_18;
  }

  if (v12 != 4)
  {
    return result;
  }

  v14 = v7 + v11;
  result = *(v9 + 2 * v14);
  if (result == 65534)
  {
    result = sub_19525051C(a1 + 48, v14);
  }

LABEL_18:
  if (v3 != v6)
  {
    return 0xFFFFLL;
  }

  if (result == 65534)
  {
    v15 = *(a1 + 288);
    if (v15)
    {

      return sub_19524227C(v15, a2, a3);
    }

    else
    {
      return 65534;
    }
  }

  return result;
}

uint64_t sub_195250778(uint64_t result, int *a2)
{
  v3 = result;
  v195 = 0;
  v196 = 0;
  v194 = 0;
  v4 = *(result + 8);
  if ((*(v4 + 208) & 0x80000000) == 0)
  {
    result = sub_195242A7C(*(result + 8), result, -1, a2);
    if (*a2 > 0 || *(v4 + 281) < 0)
    {
      return result;
    }
  }

  v5 = *(v4 + 48);
  v6 = *(v5 + 252);
  v7 = *(v5 + 253);
  if (v6 != 1)
  {
    if (!*(v5 + 252) && (*(v5 + 253) & 2) == 0)
    {
      if ((*(v5 + 253) & 1) == 0)
      {
        v9 = *(v3 + 8);
        v8 = *(v3 + 16);
        v10 = *(v3 + 24);
        v198 = *(v3 + 32);
        v199 = v8;
        v11 = *(v3 + 40) - v198;
        v197 = *(v3 + 48);
        v12 = *(v9 + 48);
        v13 = *(v12 + 88);
        v14 = 240;
        if ((*(v9 + 56) & 0x10) == 0)
        {
          v14 = 232;
        }

        v15 = *(v12 + v14);
        v16 = *(v12 + 260);
        v192 = *(v9 + 63);
        LODWORD(v17) = *(v9 + 84);
        if (v17)
        {
          v18 = -1;
        }

        else
        {
          v18 = 0;
        }

        v19 = (v10 - v8) >> 1;
        if (v19 >= v11)
        {
          LODWORD(v19) = v11;
        }

        if (!v17 || (v20 = v8, v19 <= 0))
        {
LABEL_77:
          if (v19 < 1)
          {
            goto LABEL_114;
          }

          if (v192)
          {
            v70 = 2048;
          }

          else
          {
            v70 = 3072;
          }

          v71 = v19 + 1;
          while (1)
          {
            v72 = v199;
            v73 = *v199;
            v17 = *v199++;
            if (v73 <= 0x7F && ((v16 >> (v17 >> 2)) & 1) != 0)
            {
              v74 = v198++;
              *v74 = v17;
            }

            else
            {
              v75 = *(v15 + 2 * ((v17 & 0xF) + *(v13 + 2 * (((v17 >> 4) & 0x3F) + *(v13 + ((v17 >> 9) & 0x7E))))));
              if (v70 > v75)
              {
                v20 = (v72 + 1);
                if ((v17 & 0xF800) == 0xD800)
                {
                  if ((v17 & 0x400) == 0)
                  {
                    break;
                  }

LABEL_115:
                  v86 = 12;
LABEL_118:
                  *a2 = v86;
                  goto LABEL_89;
                }

LABEL_103:
                if (v17 < 0x10000)
                {
                  v82 = 1;
                }

                else
                {
                  v82 = 2;
                }

                v83 = v197;
                if (v197)
                {
                  v84 = ((v20 - v8) >> 1) - v82;
                  if (v84 >= 1)
                  {
                    v85 = v84 + 1;
                    do
                    {
                      *v83++ = v18++;
                      --v85;
                    }

                    while (v85 > 1);
                    v197 = v83;
                  }
                }

                result = sub_195251B5C(v9, *(v9 + 48), v17, &v199, v10, &v198, *(v3 + 40), &v197, v18, *(v3 + 2), a2);
                LODWORD(v17) = result;
                v8 = v199;
                v18 += v82 + ((v199 - v20) >> 1);
                if (*a2 <= 0)
                {
                  v19 = (v10 - v199) >> 1;
                  if (v19 >= *(v3 + 40) - v198)
                  {
                    LODWORD(v19) = *(v3 + 40) - v198;
                  }

                  goto LABEL_77;
                }

LABEL_114:
                v20 = v8;
                goto LABEL_89;
              }

              v76 = v198++;
              *v76 = v75;
            }

            if (--v71 <= 1)
            {
              LODWORD(v17) = 0;
              v20 = v199;
              goto LABEL_89;
            }
          }
        }

        if (v20 < v10)
        {
          v81 = *v20;
          if ((v81 & 0xFC00) != 0xDC00)
          {
            goto LABEL_115;
          }

          v20 += 2;
          v199 = v20;
          v17 = ((v17 << 10) - 56613888 + v81);
          goto LABEL_103;
        }

        if (*(v3 + 2))
        {
          v86 = 11;
          goto LABEL_118;
        }

LABEL_89:
        v77 = *a2;
        if (*a2 <= 0 && v20 < v10 && v198 >= *(v3 + 40))
        {
          v77 = 15;
          *a2 = 15;
        }

        v78 = v197;
        if (v197)
        {
          v79 = v20 - v8;
          if (v79)
          {
            for (i = (v79 >> 1) - (v77 == 11); i; --i)
            {
              *v78++ = v18++;
            }
          }
        }

        *(v9 + 84) = v17;
        *(v3 + 16) = v20;
        *(v3 + 32) = v198;
        *(v3 + 48) = v78;
        return result;
      }

      v57 = 0;
      v59 = *(v3 + 8);
      v58 = *(v3 + 16);
      v60 = *(v3 + 24);
      v198 = *(v3 + 32);
      v199 = 0;
      v61 = *(v3 + 40) - v198;
      v197 = *(v3 + 48);
      v62 = *(v59 + 48);
      v63 = *(v62 + 88);
      v64 = 240;
      if ((*(v59 + 56) & 0x10) == 0)
      {
        v64 = 232;
      }

      v65 = *(v62 + v64);
      if (*(v59 + 63))
      {
        v66 = 2048;
      }

      else
      {
        v66 = 3072;
      }

      v67 = *(v62 + 253);
      LODWORD(v68) = *(v59 + 84);
      if (v68)
      {
        v69 = -1;
      }

      else
      {
        v69 = 0;
      }

      if (v68 && v61 > 0)
      {
        goto LABEL_123;
      }

      while (1)
      {
        if (v58 >= v60)
        {
LABEL_137:
          *(v59 + 84) = v68;
          *(v3 + 16) = v58;
          goto LABEL_138;
        }

        if (v61 < 1)
        {
          v92 = 15;
          goto LABEL_136;
        }

        v87 = *v58++;
        v68 = v87;
        v199 = v58;
        ++v57;
        if ((v87 & 0xF800) != 0xD800)
        {
          break;
        }

        if ((v68 & 0x400) != 0)
        {
          goto LABEL_134;
        }

LABEL_123:
        if (v58 >= v60)
        {
          goto LABEL_137;
        }

        v88 = *v58;
        if ((v88 & 0xFC00) != 0xDC00)
        {
LABEL_134:
          v92 = 12;
LABEL_136:
          *a2 = v92;
          goto LABEL_137;
        }

        v199 = ++v58;
        ++v57;
        v68 = ((v68 << 10) - 56613888 + v88);
        v89 = v198;
        if (v67)
        {
LABEL_128:
          v90 = *(v65 + 2 * ((v68 & 0xF) + *(v63 + 2 * (((v68 >> 4) & 0x3F) + *(v63 + 2 * (v68 >> 10))))));
          if (v66 > v90)
          {
            goto LABEL_129;
          }

          v198 = v89 + 1;
          *v89 = v90;
          v91 = v197;
          if (v197)
          {
            *v197 = v69;
            v197 = v91 + 1;
          }

          LODWORD(v68) = 0;
          --v61;
          v58 = v199;
          v69 = v57;
        }

        else
        {
LABEL_129:
          *(v3 + 16) = v58;
          result = sub_195251B5C(v59, *(v59 + 48), v68, &v199, v60, &v198, &v89[v61], &v197, v69, *(v3 + 2), a2);
          LODWORD(v68) = result;
          v58 = v199;
          if (*a2 > 0)
          {
            goto LABEL_137;
          }

          v69 = v57 + ((v199 - *(v3 + 16)) >> 1);
          v61 = *(v3 + 40) - v198;
          v57 = v69;
        }
      }

      v89 = v198;
      goto LABEL_128;
    }

    goto LABEL_34;
  }

  if (!*(v5 + 254))
  {
LABEL_34:
    v38 = *(v3 + 16);
    v37 = *(v3 + 24);
    v39 = *(v3 + 32);
    v195 = v39;
    v196 = v38;
    v40 = *(v3 + 40);
    v41 = *(v3 + 48);
    v194 = v41;
    if (*(v5 + 254))
    {
      v42 = *(v5 + 96);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(v4 + 56);
    v44 = 232;
    if ((v43 & 0x10) != 0)
    {
      v44 = 240;
    }

    LODWORD(v45) = *(v4 + 84);
    if (v6 == 12)
    {
      v46 = *(v4 + 80);
      if (v46 <= 1)
      {
        v46 = 1;
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = v40 - v39;
    v48 = *(v5 + 88);
    v189 = v48;
    v190 = *(v5 + v44);
    if (v45)
    {
      v49 = -1;
    }

    else
    {
      v49 = 0;
    }

    if ((v43 & 0x1000) != 0)
    {
      v185 = 0;
      v186 = 0x4100420000;
      v183 = 2;
      v187 = 2;
      v188 = 10;
      v184 = 10;
    }

    else if ((v43 & 0x2000) != 0)
    {
      v186 = 0;
      v183 = 1;
      v184 = 40;
      v187 = 1;
      v188 = 41;
      v185 = 1;
    }

    else
    {
      v50 = v43 << 17;
      if ((v43 & 0x4000) != 0)
      {
        v51 = 26;
      }

      else
      {
        v51 = 15;
      }

      if ((v43 & 0x4000) != 0)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }

      v98 = (*(v4 + 56) & 0x4000) == 0;
      if ((v43 & 0x4000) != 0)
      {
        v52 = 26;
      }

      else
      {
        v52 = 14;
      }

      v184 = v52;
      v187 = result;
      v188 = v51;
      v183 = result;
      if ((*(v4 + 56) & 0x4000) != 0)
      {
        v53 = 7340032;
      }

      else
      {
        v53 = 0;
      }

      v185 = (*(v4 + 56) & 0x4000) == 0;
      LODWORD(v186) = v53;
      HIDWORD(v186) = (v50 >> 31) & 0x71;
    }

    v54 = 0;
    v55 = *(v5 + 260);
    v56 = -1;
    v191 = v7;
    v193 = v55;
    if (v45 && v47 > 0)
    {
      goto LABEL_201;
    }

    while (1)
    {
      while (1)
      {
        if (v38 >= v37)
        {
LABEL_238:
          if (v6 == 12 && *a2 <= 0 && v46 == 2)
          {
            if (*(v3 + 2))
            {
              v46 = 2;
              if (v196 >= v37 && !v45)
              {
                if (v47 < 1)
                {
                  *(v4 + 104) = v188;
                  if (v187 == 2)
                  {
                    *(v4 + 105) = BYTE4(v186);
                  }

                  *(v4 + 91) = v183;
                  *a2 = 15;
                }

                else
                {
                  v135 = v195++;
                  *v135 = v188;
                  if (v187 == 2)
                  {
                    if (v47 == 1)
                    {
                      *(v4 + 104) = BYTE4(v186);
                      *(v4 + 91) = 1;
                      *a2 = 15;
                    }

                    else
                    {
                      v155 = v195++;
                      *v155 = BYTE4(v186);
                    }
                  }

                  v156 = v194;
                  if (v194)
                  {
                    *v194 = v56;
                    v194 = v156 + 1;
                  }
                }

                v46 = 1;
              }
            }

            else
            {
              v46 = 2;
            }
          }

          *(v4 + 80) = v46;
          *(v4 + 84) = v45;
          v157 = v195;
          *(v3 + 16) = v196;
          *(v3 + 32) = v157;
          v93 = v194;
          goto LABEL_341;
        }

        v107 = v47 & (v47 >> 31);
        if (v47 < 1)
        {
          goto LABEL_188;
        }

        ++v54;
        while (1)
        {
          v45 = *v38;
          v196 = (v38 + 1);
          if (v45 > 0x7F || ((v55 >> (v45 >> 2)) & 1) == 0)
          {
            break;
          }

          v108 = v195++;
          *v108 = v45;
          v41 = v194;
          if (v194)
          {
            *v194 = v49;
            v194 = ++v41;
            v56 = v49;
            v49 = v54;
          }

          --v47;
          v38 = v196;
          if (v196 >= v37)
          {
            LODWORD(v45) = 0;
            goto LABEL_238;
          }

          ++v54;
          if (v47 + 1 < 2)
          {
            goto LABEL_187;
          }
        }

        ++v38;
        if (v45 >> 11 > 0x1A || v42 == 0)
        {
          break;
        }

        v129 = *(v42 + ((v45 >> 5) & 0x7FE));
        if (v6 <= 7)
        {
          switch(v6)
          {
            case 1:
              v125 = *(v190 + 2 * ((v45 & 0x3F) + v129));
              v126 = 2;
              if (v125 > 0xFF)
              {
                goto LABEL_359;
              }

              break;
            case 2:
              v152 = (v190 + 3 * ((v45 & 0x3F) + v129));
              v153 = *v152;
              v154 = (v153 << 16) | (v152[1] << 8);
              v125 = v154 | v152[2];
              if (v154)
              {
                if (v153)
                {
                  v126 = 3;
                }

                else
                {
                  v126 = 2;
                }

                goto LABEL_359;
              }

              break;
            case 3:
              v125 = *(v190 + 4 * ((v45 & 0x3F) + v129));
              if (v125 > 0xFF)
              {
                if (HIBYTE(v125))
                {
                  v126 = 4;
                }

                else
                {
                  v126 = 3;
                }

                if (v125 < 0x10000)
                {
                  v126 = 2;
                }

                goto LABEL_359;
              }

              break;
            default:
              goto LABEL_310;
          }

          goto LABEL_335;
        }

        if (v6 > 11)
        {
          if (v6 == 12)
          {
            *(v4 + 80) = v46;
            v125 = *(v190 + 2 * ((v45 & 0x3F) + v129));
            if (v125 > 0xFF)
            {
              v158 = v184 << 16;
              if (v185)
              {
                v159 = 3;
              }

              else
              {
                v158 = v186 | (v184 << 24);
                v159 = 4;
              }

              v160 = v158 | v125;
              if (v46 == 2)
              {
                v126 = 2;
              }

              else
              {
                v125 = v160;
                v126 = v159;
              }

              v46 = 2;
              goto LABEL_359;
            }

            if (v125)
            {
              v149 = v188 << 8;
              if (v187 == 1)
              {
                v150 = 2;
              }

              else
              {
                v149 = (v188 << 16) | (HIDWORD(v186) << 8);
                v150 = 3;
              }

              v151 = v149 | v125;
              if (v46 < 2)
              {
                v126 = 1;
              }

              else
              {
                v125 = v151;
                v126 = v150;
              }

              if (v46 >= 2)
              {
                v46 = 1;
              }

              goto LABEL_359;
            }

            goto LABEL_205;
          }

          if (v6 != 219)
          {
LABEL_310:
            v126 = 0;
            v125 = 0;
            goto LABEL_361;
          }

          v125 = *(v190 + 2 * ((v45 & 0x3F) + v129));
          if (v125 < 0x100)
          {
            goto LABEL_205;
          }

          v126 = 2;
          goto LABEL_359;
        }

        if (v6 == 8)
        {
          v125 = *(v190 + 2 * ((v45 & 0x3F) + v129));
          if (v125 > 0xFF)
          {
            v147 = v125 | 0x8F0080;
            if ((v125 & 0x80) != 0)
            {
              v147 = v125;
              v126 = 2;
            }

            else
            {
              v126 = 3;
            }

            v148 = (v125 & 0x8000) == 0;
            if ((v125 & 0x8000) != 0)
            {
              v125 = v147;
            }

            else
            {
              v125 |= 0x8E8000u;
            }

            if (v148)
            {
              v126 = 3;
            }

            goto LABEL_359;
          }
        }

        else
        {
          if (v6 != 9)
          {
            goto LABEL_310;
          }

          v130 = (v190 + 3 * ((v45 & 0x3F) + v129));
          v131 = *v130;
          v132 = v130[1];
          v133 = (v131 << 16) | (v132 << 8);
          v125 = v133 | v130[2];
          if (v133)
          {
            v134 = v131;
            v126 = 2;
            if (v134)
            {
              if (v134 < 0)
              {
                if ((v132 & 0x80u) != 0)
                {
                  v126 = 3;
                }

                else
                {
                  v125 -= 1895792640;
                  v126 = 4;
                }
              }

              else
              {
                v125 |= 0x8E800000;
                v126 = 4;
              }
            }

            goto LABEL_359;
          }
        }

LABEL_335:
        v126 = 1;
LABEL_358:
        if (v125)
        {
          goto LABEL_359;
        }

LABEL_205:
        *(v3 + 16) = v38;
        v113 = *(v4 + 48);
        v182 = *(v3 + 2);
        v114 = v4;
        v115 = v4;
        v116 = v3;
        v117 = v37;
        result = sub_195251B5C(v114, v113, v45, &v196, v37, &v195, &v195[v47], &v194, v49, v182, a2);
        v37 = v117;
        v3 = v116;
        v4 = v115;
        v7 = v191;
        v55 = v193;
        LODWORD(v45) = result;
        v46 = *(v115 + 80);
        if (*a2 > 0)
        {
          goto LABEL_238;
        }

        v38 = v196;
        v54 += (v196 - *(v3 + 16)) >> 1;
        v47 = *(v3 + 40) - v195;
        v41 = v194;
        if (v194)
        {
          v56 = v49;
          v49 = v54;
        }
      }

      if ((v45 & 0xF800) == 0xD800 && (v7 & 2) == 0)
      {
        if ((v45 & 0x400) != 0)
        {
          goto LABEL_307;
        }

LABEL_201:
        if (v38 >= v37)
        {
          goto LABEL_238;
        }

        v112 = *v38;
        if ((v112 & 0xFC00) != 0xDC00)
        {
LABEL_307:
          v109 = 12;
          v107 = v47;
          goto LABEL_189;
        }

        v196 = ++v38;
        ++v54;
        v45 = ((v45 << 10) - 56613888 + v112);
        if ((v7 & 1) == 0)
        {
          *(v4 + 80) = v46;
          goto LABEL_205;
        }
      }

      v118 = *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10))));
      if (v6 <= 7)
      {
        switch(v6)
        {
          case 1:
            v119 = v45 & 0xF;
            v125 = *(v190 + 2 * (v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))))));
            if (v125 < 0x100)
            {
              v126 = 1;
            }

            else
            {
              v126 = 2;
            }

            break;
          case 2:
            v119 = v45 & 0xF;
            v141 = v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))));
            v142 = (v190 + v141 + 2 * v141);
            v143 = *v142;
            v144 = (v143 << 16) | (v142[1] << 8);
            v125 = v144 | v142[2];
            if (v143)
            {
              v126 = 3;
            }

            else
            {
              v126 = 2;
            }

            if (!v144)
            {
              v126 = 1;
            }

            break;
          case 3:
            v119 = v45 & 0xF;
            v125 = *(v190 + 4 * (v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))))));
            if (HIBYTE(v125))
            {
              v127 = 4;
            }

            else
            {
              v127 = 3;
            }

            if (v125 >= 0x10000)
            {
              v128 = v127;
            }

            else
            {
              v128 = 2;
            }

            if (v125 >= 0x100)
            {
              v126 = v128;
            }

            else
            {
              v126 = 1;
            }

            break;
          default:
            goto LABEL_267;
        }
      }

      else if (v6 > 11)
      {
        if (v6 == 12)
        {
          *(v4 + 80) = v46;
          v119 = v45 & 0xF;
          v138 = *(v190 + 2 * (v45 & 0xF | (16 * v118)));
          if (v138 > 0xFF)
          {
            result = v184;
            v145 = v184 << 16;
            if (v185)
            {
              v146 = 3;
            }

            else
            {
              v145 = v186 | (v184 << 24);
              v146 = 4;
            }

            v125 = v145 | v138;
            if (v46 == 2)
            {
              v125 = *(v190 + 2 * (v45 & 0xF | (16 * v118)));
              v126 = 2;
            }

            else
            {
              v126 = v146;
            }

            v46 = 2;
          }

          else if (*(v190 + 2 * (v45 & 0xF | (16 * v118))) || ((v118 >> v119) & 0x10000) != 0)
          {
            v139 = v188 << 8;
            result = HIDWORD(v186);
            if (v187 == 1)
            {
              v140 = 2;
            }

            else
            {
              v139 = (v188 << 16) | (HIDWORD(v186) << 8);
              v140 = 3;
            }

            v125 = v139 | v138;
            if (v46 >= 2)
            {
              v126 = v140;
            }

            else
            {
              v125 = *(v190 + 2 * (v45 & 0xF | (16 * v118)));
              v126 = 1;
            }

            if (v46 >= 2)
            {
              v46 = 1;
            }
          }

          else
          {
            v125 = 0;
            v126 = 0;
          }
        }

        else
        {
          if (v6 != 219)
          {
LABEL_267:
            v118 = 0;
            v125 = 0;
            v126 = 0;
            v119 = v45 & 0xF;
            goto LABEL_354;
          }

          v119 = v45 & 0xF;
          v125 = *(v190 + 2 * (v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))))));
          if (v125 >= 0x100)
          {
            v126 = 2;
          }

          else
          {
            v118 = 0;
            v125 = 0;
            v126 = 0;
          }
        }
      }

      else if (v6 == 8)
      {
        v119 = v45 & 0xF;
        v125 = *(v190 + 2 * (v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))))));
        v136 = v125 | 0x8F0080;
        if ((v125 & 0x80) != 0)
        {
          v136 = *(v190 + 2 * (v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))))));
          v137 = 2;
        }

        else
        {
          v137 = 3;
        }

        result = 3;
        if ((v125 & 0x8000) == 0)
        {
          v136 = v125 | 0x8E8000;
          v137 = 3;
        }

        if (v125 < 0x100)
        {
          v126 = 1;
        }

        else
        {
          v125 = v136;
          v126 = v137;
        }
      }

      else
      {
        if (v6 != 9)
        {
          goto LABEL_267;
        }

        v119 = v45 & 0xF;
        v120 = v45 & 0xF | (16 * *(v189 + 4 * (((v45 >> 4) & 0x3F) + *(v189 + 2 * (v45 >> 10)))));
        v121 = (v190 + v120 + 2 * v120);
        v122 = *v121;
        v123 = v121[1];
        v124 = (v122 << 16) | (v123 << 8);
        v125 = v124 | v121[2];
        v126 = 1;
        if (v124)
        {
          v126 = 2;
          if (v122)
          {
            if (v122 < 0)
            {
              if ((v123 & 0x80u) != 0)
              {
                v126 = 3;
              }

              else
              {
                v125 -= 1895792640;
                v126 = 4;
              }
            }

            else
            {
              v125 |= 0x8E800000;
              v126 = 4;
            }
          }
        }
      }

LABEL_354:
      if (((v118 >> v119) & 0x10000) == 0)
      {
        if (!*(v4 + 63) && (v45 - 57344) >> 8 >= 0x19 && (v45 - 983040) >> 17)
        {
          goto LABEL_205;
        }

        goto LABEL_358;
      }

LABEL_359:
      v161 = v126 - v47;
      if (v126 > v47)
      {
        v174 = (v4 + 104);
        switch(v161)
        {
          case 1:
            goto LABEL_388;
          case 2:
            goto LABEL_387;
          case 3:
            v174 = (v4 + 105);
            *(v4 + 104) = BYTE2(v125);
LABEL_387:
            *v174++ = BYTE1(v125);
LABEL_388:
            *v174 = v125;
            break;
        }

        *(v4 + 91) = v161;
        v175 = v125 >> (8 * v161);
        if (v47 != 1)
        {
          if (v47 != 2)
          {
            v176 = v195++;
            *v176 = BYTE2(v175);
            v177 = v194;
            if (v194)
            {
              *v194 = v49;
              v194 = v177 + 1;
            }
          }

          v178 = v195++;
          *v178 = BYTE1(v175);
          v179 = v194;
          if (v194)
          {
            *v194 = v49;
            v194 = v179 + 1;
          }
        }

        v180 = v195++;
        *v180 = v175;
        v181 = v194;
        if (v194)
        {
          v107 = 0;
          LODWORD(v45) = 0;
          *v194 = v49;
          v194 = v181 + 1;
        }

        else
        {
          v107 = 0;
LABEL_187:
          LODWORD(v45) = 0;
        }

LABEL_188:
        v109 = 15;
LABEL_189:
        *a2 = v109;
        v47 = v107;
        goto LABEL_238;
      }

      v55 = v193;
LABEL_361:
      if (v41)
      {
        if (v126 > 2)
        {
          if (v126 != 3)
          {
            v162 = v195++;
            *v162 = HIBYTE(v125);
            v163 = v194;
            *v194 = v49;
            v194 = v163 + 1;
          }

          v164 = v195++;
          *v164 = BYTE2(v125);
          v165 = v194;
          *v194 = v49;
          v194 = v165 + 1;
LABEL_373:
          v166 = v195++;
          *v166 = BYTE1(v125);
          v167 = v194;
          *v194 = v49;
          v194 = v167 + 1;
LABEL_374:
          v168 = v195++;
          *v168 = v125;
          v169 = v194;
          *v194 = v49;
          v41 = v169 + 1;
          v194 = v41;
          goto LABEL_380;
        }

        if (v126 == 1)
        {
          goto LABEL_374;
        }

        if (v126 == 2)
        {
          goto LABEL_373;
        }
      }

      else
      {
        if (v126 > 2)
        {
          if (v126 != 3)
          {
            v170 = v195++;
            *v170 = HIBYTE(v125);
          }

          v171 = v195++;
          *v171 = BYTE2(v125);
LABEL_378:
          v172 = v195++;
          *v172 = BYTE1(v125);
LABEL_379:
          v173 = v195++;
          *v173 = v125;
          v41 = v194;
          goto LABEL_380;
        }

        if (v126 == 1)
        {
          goto LABEL_379;
        }

        if (v126 == 2)
        {
          goto LABEL_378;
        }
      }

LABEL_380:
      LODWORD(v45) = 0;
      v47 -= v126;
      if (v41)
      {
        v56 = v49;
        v49 = v54;
      }

      v38 = v196;
    }
  }

  v21 = 0;
  v23 = *(v3 + 8);
  v22 = *(v3 + 16);
  v24 = *(v23 + 48);
  v25 = *(v24 + 253);
  v26 = *(v3 + 24);
  v198 = *(v3 + 32);
  v199 = 0;
  v27 = *(v3 + 40) - v198;
  v197 = *(v3 + 48);
  v28 = *(v24 + 88);
  v29 = *(v24 + 96);
  v30 = 240;
  if ((*(v23 + 56) & 0x10) == 0)
  {
    v30 = 232;
  }

  v31 = *(v24 + v30);
  v32 = *(v24 + 260);
  LODWORD(v33) = *(v23 + 84);
  if (v33)
  {
    v34 = -1;
  }

  else
  {
    v34 = 0;
  }

  if (!v33 || v27 <= 0)
  {
    goto LABEL_139;
  }

LABEL_26:
  if (v22 >= v26)
  {
    goto LABEL_174;
  }

  v35 = *v22;
  if ((v35 & 0xFC00) != 0xDC00)
  {
LABEL_159:
    v97 = 12;
    goto LABEL_151;
  }

  v199 = ++v22;
  ++v21;
  v33 = ((v33 << 10) - 56613888 + v35);
  if ((v25 & 1) == 0)
  {
    goto LABEL_166;
  }

  while (1)
  {
    v36 = *(v31 + 2 * (v33 & 0xF | (16 * *(v28 + 4 * (((v33 >> 4) & 0x3F) + *(v28 + 2 * (v33 >> 10)))))));
    if (((*(v28 + 4 * (((v33 >> 4) & 0x3F) + *(v28 + 2 * (v33 >> 10)))) >> (v33 & 0xF)) & 0x10000) != 0)
    {
      break;
    }

    if (*(v23 + 63) || (v33 - 57344) >> 8 < 0x19 || !((v33 - 983040) >> 17))
    {
LABEL_162:
      if (v36)
      {
        break;
      }
    }

LABEL_166:
    *(v3 + 16) = v22;
    result = sub_195251B5C(v23, *(v23 + 48), v33, &v199, v26, &v198, &v198[v27], &v197, v34, *(v3 + 2), a2);
    LODWORD(v33) = result;
    v22 = v199;
    if (*a2 > 0)
    {
      goto LABEL_174;
    }

    v34 = v21 + ((v199 - *(v3 + 16)) >> 1);
    v27 = *(v3 + 40) - v198;
    v21 = v34;
LABEL_139:
    if (v22 >= v26)
    {
      goto LABEL_174;
    }

    if (v27 < 1)
    {
LABEL_150:
      v97 = 15;
LABEL_151:
      *a2 = v97;
      goto LABEL_174;
    }

    ++v21;
    while (1)
    {
      v33 = *v22;
      v199 = v22 + 1;
      if (v33 > 0x7F)
      {
        break;
      }

      if (((v32 >> (v33 >> 2)) & 1) == 0)
      {
        ++v22;
        goto LABEL_161;
      }

      v94 = v198++;
      *v94 = v33;
      v95 = v197;
      if (v197)
      {
        *v197 = v34;
        v197 = v95 + 1;
        v34 = v21;
      }

      v22 = v199;
      if (v199 >= v26)
      {
        LODWORD(v33) = 0;
        goto LABEL_174;
      }

      ++v21;
      if (v27-- < 2)
      {
        LODWORD(v33) = 0;
        goto LABEL_150;
      }
    }

    ++v22;
    if (v33 >> 11 < 0x1B)
    {
LABEL_161:
      v36 = *(v31 + 2 * ((v33 & 0x3F) + *(v29 + ((v33 >> 5) & 0x7FE))));
      goto LABEL_162;
    }

    v98 = (v33 & 0xF800) == 0xD800 && (v25 & 2) == 0;
    if (v98)
    {
      if ((v33 & 0x400) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_159;
    }
  }

  if (v36 <= 0xFF)
  {
    v99 = v198++;
    *v99 = v36;
    v100 = v197;
    v101 = -1;
    if (v197)
    {
      v102 = v197 + 1;
LABEL_171:
      v197 = v102;
      *v100 = v34;
      goto LABEL_172;
    }

    goto LABEL_172;
  }

  v103 = v198++;
  *v103 = BYTE1(v36);
  if (v27 >= 2)
  {
    v104 = v198++;
    *v104 = v36;
    v105 = v197;
    v101 = -2;
    if (v197)
    {
      v100 = v197 + 1;
      *v197 = v34;
      v102 = v105 + 2;
      goto LABEL_171;
    }

LABEL_172:
    LODWORD(v33) = 0;
    v27 += v101;
    v22 = v199;
    v34 = v21;
    goto LABEL_139;
  }

  v106 = v197;
  if (v197)
  {
    *v197 = v34;
    v197 = v106 + 1;
  }

  LODWORD(v33) = 0;
  *(v23 + 104) = v36;
  *(v23 + 91) = 1;
  *a2 = 15;
  v22 = v199;
LABEL_174:
  *(v23 + 84) = v33;
  *(v3 + 16) = v22;
LABEL_138:
  *(v3 + 32) = v198;
  v93 = v197;
LABEL_341:
  *(v3 + 48) = v93;
  return result;
}

uint64_t sub_195251B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, unint64_t a7, void *a8, int a9, char a10, _DWORD *a11)
{
  v14 = a3;
  *(a1 + 95) = 0;
  v16 = *(a2 + 288);
  if (v16 && sub_195242514(a1, v16, a3, a4, a5, a6, a7, a8, a9, a10, a11))
  {
    return 0;
  }

  if ((*(a1 + 57) & 0x80) != 0)
  {
    v17 = 14;
    v18 = &dword_19547B4A4;
    while (1)
    {
      v19 = *(v18 - 2);
      v20 = v14 >= v19;
      v21 = v14 - v19;
      if (v20 && *(v18 - 1) >= v14)
      {
        break;
      }

      v18 += 4;
      if (!--v17)
      {
        goto LABEL_9;
      }
    }

    v22 = v21 + *v18 - 1687218;
    v24[3] = (v22 % 0xA) | 0x30;
    v24[2] = v22 / 0xA - 126 * ((545392673 * (v22 / 0xA)) >> 36) - 127;
    v24[1] = (v22 / 0x4EC - 10 * ((429496730 * (v22 / 0x4EC)) >> 32)) | 0x30;
    v24[0] = v22 / 0x3138 - 127;
    sub_195240168(a1, v24, 4, a6, a7, a8, a9, a11);
    return 0;
  }

LABEL_9:
  *a11 = 10;
  return v14;
}

uint64_t sub_195251CF8(uint64_t a1, int a2, int *a3, int a4)
{
  if (a2 < 0x10000 || (*(a1 + 253) & 1) != 0)
  {
    v4 = *(a1 + 88);
    if (*(a1 + 252) != 1)
    {
      if (*(a1 + 252))
      {
        return 0xFFFFFFFFLL;
      }

      v5 = *(*(a1 + 232) + 2 * ((a2 & 0xF) + *(v4 + 2 * (((a2 >> 4) & 0x3F) + *(v4 + 2 * (a2 >> 10))))));
      if (a4)
      {
        if (v5 <= 0x7FF)
        {
          goto LABEL_20;
        }
      }

      else if (v5 < 0xC00)
      {
        goto LABEL_20;
      }

      *a3 = v5;
      return 1;
    }

    v6 = *(v4 + 4 * (((a2 >> 4) & 0x3F) + *(v4 + 2 * (a2 >> 10))));
    v7 = v6 >> (a2 & 0xF);
    v8 = *(*(a1 + 232) + 2 * (a2 & 0xF | (16 * v6)));
    if (v8 < 0x100)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    if ((v7 & 0x10000) != 0 || (a4 || (a2 - 57344) >> 8 < 0x19 || !((a2 - 983040) >> 17)) && v8)
    {
      *a3 = v8;
      return v9;
    }
  }

LABEL_20:
  v10 = *(a1 + 288);
  if (!v10)
  {
    return 0;
  }

  LODWORD(result) = sub_1952429FC(v10, a2, a3, a4);
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

uint64_t sub_195251E20(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(v1 + 48) == 1)
  {
    return 0;
  }

  if (*(v1 + 252) == 12)
  {
    return 9;
  }

  v3 = *(v1 + 16);
  if (*(v3 + 70) == 2 && *(v3 + 71) == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_195251E78(uint64_t a1, uint64_t a2, unsigned __int8 *a3, UErrorCode *a4)
{
  v97 = *MEMORY[0x1E69E9840];
  v8 = *a3;
  if (v8 == 5)
  {
    if (a3[1] < 3u)
    {
      goto LABEL_32;
    }

    v21 = *(a3 + 8);
    if ((v21 & 0xFF80) != 0)
    {
      goto LABEL_32;
    }

    v11 = (*(a3 + 8) & 0x40) == 0;
    v12 = 4 * (v21 & 0x3F);
    v9 = *(a3 + 6);
    *(a1 + 252) = v9;
    v10 = (a1 + 252);
    if ((v21 & 0x40) != 0 && !v9)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v8 != 4)
    {
      goto LABEL_32;
    }

    v9 = *(a3 + 6);
    *(a1 + 252) = v9;
    v10 = (a1 + 252);
    v11 = 1;
    v12 = 32;
  }

  if (v9 >= 0x100)
  {
    *(a1 + 288) = &a3[v9 >> 8];
  }

  v88 = 0;
  v89 = 0;
  v90 = 0;
  if (v9 > 0xEu)
  {
    goto LABEL_32;
  }

  if (((1 << v9) & 0x130F) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_34;
    }

    v13 = *(a3 + 1);
    *(a1 + 48) = v13;
    *(a1 + 52) = *(a3 + 2);
    v14 = &a3[v12];
    *(a1 + 56) = v14;
    *(a1 + 80) = &v14[1024 * v13];
    *(a1 + 72) = &a3[*(a3 + 3)];
    *(a1 + 88) = &a3[*(a3 + 4)];
    *(a1 + 232) = &a3[*(a3 + 5)];
    *(a1 + 248) = *(a3 + 7);
    LOWORD(v88) = 20;
    udata_getInfo(*(a1 + 8), &v88);
    if (BYTE4(v89) > 6u || BYTE4(v89) == 6 && BYTE5(v89))
    {
      v15 = *(*(a1 + 16) + 79) & 3;
      *(a1 + 253) = v15;
      if (a3[1] >= 3u && v15 < 2)
      {
        v16 = a3[2];
        if (*(a1 + 48) == 1)
        {
          if (v16 > 0xE)
          {
            v17 = 0;
            v18 = 0;
            *(a1 + 254) = 1;
            v19 = *(a1 + 88);
            do
            {
              *(a1 + 104 + 2 * v18) = *(v19 + 2 * (v17 & 0x3C) + 2 * *(v19 + 2 * (v18 >> 4)));
              ++v18;
              v17 += 4;
            }

            while (v18 != 64);
            v20 = 4095;
LABEL_42:
            *(a1 + 256) = v20;
          }
        }

        else if (v16 > 0xD6)
        {
          *(a1 + 254) = 1;
          if (v11)
          {
            v28 = *(a1 + 248);
          }

          else
          {
            v28 = 0;
          }

          *(a1 + 96) = *(a1 + 232) + v28;
          v20 = (a3[2] << 8) | 0xFF;
          goto LABEL_42;
        }
      }
    }

    else
    {
      LOBYTE(v15) = 3;
      *(a1 + 253) = 3;
    }

    v29 = 0;
    v30 = xmmword_19544D5E0;
    v31 = xmmword_19544D5F0;
    v32 = xmmword_19547B440;
    v33 = vdupq_n_s64(4uLL);
    v34.i64[0] = -1;
    v34.i64[1] = -1;
    *&v35.f64[0] = 0x8000000080000000;
    *&v35.f64[1] = 0x8000000080000000;
    v36 = vnegq_f64(v35);
    v37.i64[0] = 0x100000001;
    v37.i64[1] = 0x100000001;
    v38.i64[0] = 0x400000004;
    v38.i64[1] = 0x400000004;
    do
    {
      v39 = *(*(a1 + 56) + v29);
      v40.i64[0] = v39;
      v40.i64[1] = DWORD1(v39);
      v41 = v40;
      v40.i64[0] = DWORD2(v39);
      v40.i64[1] = HIDWORD(v39);
      v34 = vandq_s8(vornq_s8(vuzp1q_s32(vceqq_s64(vorrq_s8(v31, v36), v41), vceqq_s64(vorrq_s8(v30, v36), v40)), vshlq_u32(v37, vshrq_n_u32(v32, 2uLL))), v34);
      v30 = vaddq_s64(v30, v33);
      v31 = vaddq_s64(v31, v33);
      v32 = vaddq_s32(v32, v38);
      v29 += 16;
    }

    while (v29 != 512);
    v42 = vand_s8(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
    *(a1 + 260) = v42.i32[0] & v42.i32[1];
    if (!v11)
    {
      if (v15)
      {
        v43 = 1088;
      }

      else
      {
        v43 = 64;
      }

      v45 = *(a3 + 4);
      v44 = *(a3 + 5);
      v46 = *(a3 + 9);
      v47 = 4 * v46 + 2 * v43 + *(a1 + 248);
      v48 = malloc_type_malloc(v47, 0x100004077774924uLL);
      *(a1 + 264) = v48;
      if (v48)
      {
        bzero(v48, v47);
        v49 = *(a1 + 264);
        memcpy(v49, *(a1 + 88), 2 * v43);
        v50 = &v49[2 * v43];
        memcpy(&v50[4 * (v46 - (((v44 - v45) >> 2) - (v43 >> 1)))], (*(a1 + 88) + 2 * v43), 4 * (((v44 - v45) >> 2) - (v43 >> 1)));
        *(a1 + 88) = v49;
        *(a1 + 232) = &v50[4 * v46];
        v51 = *(a1 + 256);
        if (v51 >= 0x3F)
        {
          v52 = 0;
          v53 = 0;
          v54 = (v51 + 1) >> 6;
          do
          {
            v55 = *&v49[2 * v52];
            if (v43 >> 1 == v55)
            {
              v53 += 16;
            }

            else
            {
              v56 = 0;
              v57 = (*(a1 + 96) + 2 * v53);
              v58 = &v49[4 * v55];
              do
              {
                v60 = *v57++;
                v59 = v60;
                if (v60)
                {
                  v61 = v59 >> 4;
                  *v58 = v61;
                  *(v58 + 4) = vadd_s32(vdup_n_s32(v61), 0x200000001);
                  *(v58 + 3) = v61 + 3;
                }

                --v56;
                v58 += 16;
              }

              while (v56 != -16);
              v53 += 16;
            }

            ++v52;
          }

          while (v53 < v54);
        }

        *&v62 = -1;
        *(&v62 + 1) = -1;
        v95 = v62;
        v96 = v62;
        v93 = v62;
        v94 = v62;
        *&v91[32] = v62;
        v92 = v62;
        *v91 = v62;
        *&v91[16] = v62;
        sub_1952531B0(*(a1 + 56), v91, 0);
        v63 = *(a1 + 48);
        if (*(a1 + 48))
        {
          v64 = 0;
          do
          {
            if (v91[v64] >= 64)
            {
              sub_19525338C(a1 + 48, v91, v64, 0, 0, a1 + 48);
              v63 = *(a1 + 48);
            }

            ++v64;
          }

          while (v64 < v63);
        }
      }

      else
      {
        *a4 = U_MEMORY_ALLOCATION_ERROR;
      }
    }

    goto LABEL_67;
  }

  if (v9 != 14)
  {
    goto LABEL_32;
  }

  memset(&v91[8], 0, 32);
  v22 = *(a1 + 288);
  if (!v22)
  {
    goto LABEL_32;
  }

  if (*(a2 + 4) != 1)
  {
    v26 = 14;
    goto LABEL_33;
  }

  v23 = &a3[v12];
  if (!strcmp(&a3[v12], (*(a1 + 16) + 4)))
  {
LABEL_32:
    v26 = 13;
LABEL_33:
    *a4 = v26;
    goto LABEL_34;
  }

  *v91 = 0x200000028;
  v91[8] = *(a2 + 8);
  *&v91[10] = *(a2 + 10);
  *&v91[12] = *(a2 + 12);
  *&v91[16] = *(a2 + 16);
  *&v91[24] = v23;
  v24 = ucnv_load(v91, a4);
  if (*a4 > 0)
  {
    goto LABEL_34;
  }

  v25 = v24;
  if (*(*(v24 + 2) + 69) != 2 || *(v24 + 35))
  {
    ucnv_unload(v24);
    goto LABEL_32;
  }

  if (*(a2 + 8))
  {
    ucnv_unload(v24);
    goto LABEL_34;
  }

  v67 = *(v24 + 3);
  *(a1 + 64) = *(v24 + 4);
  v68 = *(v24 + 5);
  v69 = *(v24 + 6);
  v70 = *(v24 + 8);
  *(a1 + 112) = *(v24 + 7);
  *(a1 + 128) = v70;
  *(a1 + 80) = v68;
  *(a1 + 96) = v69;
  v71 = *(v24 + 9);
  v72 = *(v24 + 10);
  v73 = *(v24 + 12);
  *(a1 + 176) = *(v24 + 11);
  *(a1 + 192) = v73;
  *(a1 + 144) = v71;
  *(a1 + 160) = v72;
  v74 = *(v24 + 13);
  v75 = *(v24 + 15);
  v76 = *(v24 + 32);
  *(a1 + 224) = *(v24 + 14);
  *(a1 + 240) = v75;
  *(a1 + 208) = v74;
  *(a1 + 48) = v67;
  *(a1 + 280) = v24;
  *(a1 + 288) = v22;
  *(a1 + 64) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = v76;
  v77 = *(a1 + 16);
  v78 = *(v77 + 69);
  if (v78 == 1 || v78 == 2 && *(v77 + 70) >= 2)
  {
    if (v24[252] == 12)
    {
      v79 = *(*(a1 + 56) + 56);
      if ((v79 & 0x80F00000) != 0x80800000)
      {
        goto LABEL_67;
      }

      v80 = HIBYTE(v79) & 0x7F;
      if (!v80)
      {
        goto LABEL_67;
      }

      *(a1 + 49) = v80;
    }

    else
    {
      v81 = *(v24 + 2);
      if (v81[69] != 2)
      {
        goto LABEL_67;
      }

      if (v81[70] != 1)
      {
        goto LABEL_67;
      }

      if (v81[71] != 2)
      {
        goto LABEL_67;
      }

      v82 = *(a1 + 48);
      if (v82 < 0)
      {
        goto LABEL_67;
      }

      v83 = malloc_type_malloc((*(a1 + 48) + 1) << 10, 0x1000040D7EB2065uLL);
      if (!v83)
      {
        ucnv_unload(v25);
        v26 = 7;
        goto LABEL_33;
      }

      v84 = v83;
      memcpy(v83, *(a1 + 56), v82 << 10);
      v85 = 0;
      v86 = v82 << 24;
      do
      {
        v87 = vmovn_s32(vcltzq_s32(*&v84[v85]));
        if (v87.i8[0])
        {
          *&v84[v85] = v86;
        }

        if (v87.i8[2])
        {
          *&v84[v85 + 4] = v86;
        }

        if (v87.i8[4])
        {
          *&v84[v85 + 8] = v86;
        }

        if (v87.i8[6])
        {
          *&v84[v85 + 12] = v86;
        }

        v85 += 16;
      }

      while (v85 != 1024);
      memset_pattern16(&v84[1024 * v82], &unk_19547B450, 0x400uLL);
      *(a1 + 56) = v84;
      *(a1 + 48) = v82 + 1;
      *(a1 + 50) = 1;
    }

    *v10 = -37;
  }

LABEL_67:
  if (*(a1 + 254))
  {
    if (*(a1 + 48) != 1)
    {
      v65 = *v10;
      if (v65 == 1)
      {
        *(a1 + 32) = &unk_1F0935468;
        goto LABEL_34;
      }

      goto LABEL_71;
    }

    *(a1 + 32) = &unk_1F09353D8;
  }

  v65 = *v10;
LABEL_71:
  if (v65 == 219 || v65 == 12)
  {
    *(a1 + 260) = 0;
  }

LABEL_34:
  v27 = *MEMORY[0x1E69E9840];
}

void sub_195252600(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    free(v2);
  }

  if (*(a1 + 50))
  {
    free(*(a1 + 56));
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    ucnv_unload(v3);
  }

  v4 = *(a1 + 264);
  if (v4)
  {

    free(v4);
  }
}

void sub_19525266C(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a2 + 8))
  {
    return;
  }

  v5 = *(a1 + 48);
  v6 = *(v5 + 252);
  v7 = *(a2 + 12);
  if (v6 == 219)
  {
    goto LABEL_3;
  }

  if ((v7 & 0x10) != 0)
  {
    umtx_lock(0);
    v10 = *(v5 + 64);
    umtx_unlock(0);
    if (!v10)
    {
      v15 = *(a1 + 48);
      v16 = *(v15 + 252);
      if (v16 != 12 && v16 != 0)
      {
        goto LABEL_47;
      }

      v18 = *(v15 + 56);
      if (*(v18 + 148) != -2147483638 || *(v18 + 84) != -2147483515)
      {
        goto LABEL_47;
      }

      v19 = *(v15 + 88);
      v20 = *(v15 + 232);
      v21 = *v19;
      if (*(v15 + 252))
      {
        v22 = &v19[2 * v21];
        if ((*v22 & 0x4000000) == 0 || v20[16 * *v22 + 10] != 37 || (v23 = *(v22 + 8), (v23 & 0x200000) == 0) || v20[16 * v23 + 5] != 21)
        {
LABEL_47:
          if (*a3 > 0)
          {
            return;
          }

          v7 = *(a2 + 12);
LABEL_3:
          v8 = v7 & 0xFFFFFFEF;
          *(a2 + 12) = v8;
          *(a1 + 56) = v8;
          goto LABEL_6;
        }
      }

      else
      {
        v24 = &v19[v21];
        if (v20[*v24 + 10] != 3877 || v20[v24[8] + 5] != 3861)
        {
          goto LABEL_47;
        }
      }

      v25 = *(v15 + 248);
      if (v25)
      {
        v26 = malloc_type_malloc(v25 + (*(v15 + 48) << 10) + 80, 0x100004077774924uLL);
        if (v26)
        {
          v27 = v26;
          memcpy(v26, *(v15 + 56), *(v15 + 48) << 10);
          v27[37] = -2147483515;
          v27[21] = -2147483638;
          v28 = v27;
          v29 = &v27[256 * *(v15 + 48)];
          memcpy(v29, v20, v25);
          v30 = *v19;
          if (*(v15 + 252))
          {
            *&v29[32 * *&v19[2 * v30] + 20] = 21;
            v31 = &v29[32 * *&v19[2 * *v19 + 16]];
            v32 = 37;
          }

          else
          {
            *&v29[2 * v19[v30] + 20] = 3861;
            v31 = &v29[2 * v19[*v19 + 8]];
            v32 = 3877;
          }

          *(v31 + 5) = v32;
          v34 = strcpy(&v29[v25], (*(v15 + 16) + 4));
          strcpy(&v29[v25 + strlen(v34)], ",swaplfnl");
          umtx_lock(0);
          if (*(v15 + 64))
          {
            umtx_unlock(0);
            free(v28);
          }

          else
          {
            *(v15 + 64) = v28;
            *(v15 + 240) = v29;
            *(v15 + 272) = &v29[v25];
            umtx_unlock(0);
          }

          goto LABEL_6;
        }

        v33 = 7;
      }

      else
      {
        v33 = 3;
      }

      *a3 = v33;
      return;
    }
  }

LABEL_6:
  v11 = *(a2 + 24);
  if (strstr(v11, "18030"))
  {
    if (!strstr(v11, "gb18030") && !strstr(v11, "GB18030"))
    {
      goto LABEL_14;
    }

    v12 = 0x8000;
  }

  else if (strstr(v11, "KEIS") || strstr(v11, "keis"))
  {
    v12 = 4096;
  }

  else if (strstr(v11, "JEF") || strstr(v11, "jef"))
  {
    v12 = 0x2000;
  }

  else
  {
    if (!strstr(v11, "JIPS") && !strstr(v11, "jips"))
    {
      goto LABEL_14;
    }

    v12 = 0x4000;
  }

  *(a1 + 56) |= v12;
LABEL_14:
  if (v6 == 12)
  {
    *(a1 + 88) = 3;
  }

  v13 = *(v5 + 288);
  if (v13)
  {
    v14 = *(v13 + 68);
    if (v6 == 12)
    {
      ++v14;
    }

    if (v14 > *(a1 + 88))
    {
      *(a1 + 88) = v14;
    }
  }
}

uint64_t sub_195252A38(void *a1, int *a2)
{
  v2 = a1[1];
  if (*(v2 + 282) > 0)
  {
    return 4294967287;
  }

  v3 = *(v2 + 48);
  if ((*(v3 + 253) & 2) != 0)
  {
    return 4294967287;
  }

  v6 = a1[2];
  v7 = a1[3];
  if (*(v3 + 48) == 1)
  {
    v8 = 64;
    if ((*(v2 + 56) & 0x10) == 0)
    {
      v8 = 56;
    }

    v9 = *(v3 + v8);
    while (1)
    {
      if (v6 >= v7)
      {
        goto LABEL_42;
      }

      v10 = *v6++;
      v11 = *(v9 + 4 * v10);
      a1[2] = v6;
      if (v11 < -2146435072)
      {
        return v11;
      }

      if ((v11 & 0xD00000) == 0x100000)
      {
        return (v11 & 0xFFFFFu) + 0x10000;
      }

      v12 = (v11 >> 20) & 0xF;
      if (v12 == 7)
      {
        goto LABEL_42;
      }

      if (v12 == 6)
      {
        break;
      }

      if (v12 == 2)
      {
        return v11;
      }
    }

    if (*a2 > 0)
    {
LABEL_42:
      *a2 = 8;
      return 0xFFFFLL;
    }

    a1[2] = v6 - 1;
    return 4294967287;
  }

  v14 = 64;
  if ((*(v2 + 56) & 0x10) == 0)
  {
    v14 = 56;
  }

  v15 = *(v3 + v14);
  v16 = *(v3 + 72);
  v17 = *(v2 + 72);
  v18 = *(v2 + 76);
  if (!*(v2 + 76))
  {
    v18 = *(v3 + 49);
  }

  result = 0xFFFFFFFFLL;
  while (2)
  {
    while (2)
    {
      v19 = v6;
      if (v6 >= v7)
      {
        v21 = 0;
        goto LABEL_57;
      }

      v20 = 0;
      v21 = v7 - v6;
      v22 = v18;
      while (1)
      {
        v23 = &v19[v20 + 1];
        v24 = *(v15 + (v22 << 10) + 4 * v19[v20]);
        if ((v24 & 0x80000000) != 0)
        {
          break;
        }

        v22 = v24 >> 24;
        v17 += v24 & 0xFFFFFF;
        if (v23 < v7)
        {
          v25 = *(v15 + (v22 << 10) + 4 * *v23);
          if ((v25 & 0x80F00000) == 0x80400000)
          {
            result = *(v16 + 2 * (v17 + v25));
            if (result <= 0xFFFD)
            {
              v27 = &v19[v20 + 2];
              LODWORD(v18) = HIBYTE(v25) & 0x7F;
              goto LABEL_74;
            }
          }
        }

        if (v21 == ++v20)
        {
          goto LABEL_56;
        }
      }

      *(v2 + 76) = v22;
      v18 = BYTE3(v24) & 0x7F;
      v26 = (v24 >> 20) & 0xF;
      switch(v26)
      {
        case 5u:
          v28 = v17 + v24;
          result = *(v16 + 2 * v28);
          v27 = &v19[v20 + 1];
          if (result >> 11 < 0x1B)
          {
            goto LABEL_74;
          }

          v29 = v28 + 1;
          if (result >> 13 <= 6)
          {
            result = ((result & 0x3FF) << 10) + *(v16 + 2 * v29) + 9216;
            goto LABEL_74;
          }

          if ((result & 0xFFFE) == 0xE000)
          {
            result = *(v16 + 2 * v29);
            goto LABEL_74;
          }

          if (result != 0xFFFF)
          {
            goto LABEL_90;
          }

LABEL_89:
          *a2 = 12;
          v27 = &v19[v20 + 1];
          goto LABEL_73;
        case 4u:
          v30 = v17 + v24;
          result = *(v16 + 2 * v30);
          v21 = v20 + 1;
          if (result < 0xFFFE)
          {
            v27 = &v19[v21];
            goto LABEL_74;
          }

          if (result == 65534)
          {
            v43 = sub_19525051C(v3 + 48, v30);
            v18 = BYTE3(v24) & 0x7F;
            v44 = v43;
            result = 65534;
            if (v44 != 65534)
            {
              result = v44;
              goto LABEL_57;
            }

            goto LABEL_90;
          }

          goto LABEL_89;
        case 0u:
LABEL_46:
          result = v24;
LABEL_53:
          v27 = &v19[v20 + 1];
          goto LABEL_74;
      }

      if ((v24 & 0xD00000) == 0x100000)
      {
        result = (v24 & 0xFFFFF) + 0x10000;
        goto LABEL_53;
      }

      v17 = 0;
      v6 = &v19[v20 + 1];
      if (((v24 >> 20) & 0xF) <= 6)
      {
        if (v26 != 2)
        {
          if (v26 != 6)
          {
            continue;
          }

LABEL_90:
          if (*a2 > 0)
          {
            v21 = v20 + 1;
            goto LABEL_57;
          }

          *(v2 + 72) = 0;
          *(v2 + 76) = BYTE3(v24) & 0x7F;
          a1[2] = v19;
          return 4294967287;
        }

        goto LABEL_46;
      }

      break;
    }

    if (v26 == 7)
    {
      v22 = BYTE3(v24) & 0x7F;
    }

    else
    {
      if (v26 != 8)
      {
        continue;
      }

      if (!*(v3 + 49))
      {
        goto LABEL_90;
      }
    }

    break;
  }

  *a2 = 12;
  v21 = v20 + 1;
LABEL_56:
  v18 = v22;
LABEL_57:
  v27 = &v19[v21];
  if ((result & 0x80000000) != 0)
  {
    if (*a2 > 0 || v27 != v7 || v21 < 1)
    {
      if (*a2 >= 1)
      {
        v33 = *(v3 + 49) != 0;
        *(v2 + 65) = *v19;
        if (v21 != 1)
        {
          v37 = v19 + 1;
          if (v21 < 2)
          {
            v39 = 1;
          }

          else
          {
            v38 = (v2 + 66);
            v39 = 1;
            while (1)
            {
              v40 = v27;
              v41 = *v37;
              v42 = v18;
              if (sub_195250584(v15, v18, v33, *v37))
              {
                break;
              }

              ++v37;
              *v38++ = v41;
              ++v39;
              v27 = v40;
              v18 = v42;
              if (v37 >= v40)
              {
                goto LABEL_82;
              }
            }

            LOBYTE(v18) = v42;
          }

LABEL_82:
          *(v2 + 64) = v39;
          result = 0xFFFFLL;
          v27 = v37;
          goto LABEL_74;
        }

        *(v2 + 64) = 1;
        goto LABEL_73;
      }

      v36 = 8;
    }

    else
    {
      v34 = (v2 + 65);
      *(v2 + 64) = v21;
      do
      {
        v35 = *v19++;
        *v34++ = v35;
      }

      while (v19 < v7);
      v36 = 11;
    }

    *a2 = v36;
LABEL_73:
    result = 0xFFFFLL;
  }

LABEL_74:
  *(v2 + 72) = 0;
  *(v2 + 76) = v18;
  a1[2] = v27;
  return result;
}

uint64_t sub_195252EB8(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(*(result + 48) + 56) + (*(*(result + 48) + 49) << 10);
  do
  {
    *(a2 + v2) = *(v3 + 4 * v2) >= 0;
    ++v2;
  }

  while (v2 != 256);
  return result;
}

uint64_t sub_195252EEC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if ((*(a1 + 56) & 0x10) == 0)
  {
    return *(v1 + 16) + 4;
  }

  result = *(v1 + 272);
  if (!result)
  {
    return *(v1 + 16) + 4;
  }

  return result;
}

void *sub_195252F10(void *result, int a2, int *a3)
{
  v7 = result[1];
  v8 = (v7 + 94);
  v9 = *(v7 + 48);
  if (*(v7 + 94))
  {
    if (*(v9 + 288))
    {
      if (*(v7 + 95))
      {
LABEL_4:
        v10 = 1;
        goto LABEL_7;
      }
    }

    else if (*(v7 + 140) < 0x100u)
    {
      goto LABEL_4;
    }
  }

  v8 = *(v7 + 40);
  v10 = *(v7 + 89);
LABEL_7:
  v15[0] = v3;
  v15[1] = v4;
  v14 = 0;
  *(v7 + 95) = 0;
  if (*(v9 + 252) == 12)
  {
    if (v10 == 2)
    {
      v13 = &v14;
      if (*(v7 + 80) <= 1u)
      {
        *(v7 + 80) = 2;
        v13 = &v14 + 1;
        LOBYTE(v14) = 14;
      }

      *v13 = *v8;
      v12 = v13 + 2;
      v13[1] = v8[1];
    }

    else
    {
      if (v10 != 1)
      {
        *a3 = 1;
        return result;
      }

      v11 = &v14;
      if (*(v7 + 80) == 2)
      {
        *(v7 + 80) = 1;
        v11 = &v14 + 1;
        LOBYTE(v14) = 15;
      }

      *v11 = *v8;
      v12 = v11 + 1;
    }

    v8 = &v14;
    v10 = v12 - (v15 - 4);
  }

  return ucnv_cbFromUWriteBytes(result, v8, v10, a2, a3);
}

uint64_t sub_19525301C(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4)
{
  if ((*(a1 + 57) & 0x80) != 0)
  {
    (a2[2])(*a2, 0, 55295);
    v9 = a2[2];
    v10 = *a2;

    return v9(v10, 57344, 1114111);
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = *(v6 + 252) == 219;

    return sub_19524F140(v6, a2, a3, v7, a4);
  }
}

uint64_t sub_1952530AC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 184);
  v6 = a2 & 0xFF7FFF;
  if (HIBYTE(a2) <= 0x8Eu)
  {
    v6 = a2 & 0x7FFFFF;
  }

  if (HIBYTE(a2))
  {
    v7 = v6;
  }

  else
  {
    v7 = a2;
  }

  v8 = a2 & 0xFF7F;
  if (HIWORD(a2) <= 0x8Eu)
  {
    v8 = a2 & 0x7FFF;
  }

  v9 = *(a1 + 204);
  if (a2 < 0x10000)
  {
    v8 = a2;
  }

  if (v9 != 8)
  {
    v8 = a2;
  }

  if (v9 != 9)
  {
    v7 = v8;
  }

  do
  {
    v10 = *(a3 + v3);
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    v11 = v4 + 4 * *(v4 + ((v10 >> 9) & 0x7FFFFE));
    v12 = (v10 >> 4) & 0x3F;
    v13 = *(a3 + v3) & 0xF;
    v14 = v13 | (16 * *(v11 + 4 * v12));
    v15 = *(a1 + 204);
    if (v15 != 9)
    {
      if (v15 == 3)
      {
        *(v5 + 4 * v14) = v7;
        goto LABEL_21;
      }

      if (v15 != 2)
      {
        *(v5 + 2 * v14) = v7;
        goto LABEL_21;
      }
    }

    v16 = (v5 + 3 * v14);
    *v16 = BYTE2(v7);
    v16[1] = BYTE1(v7);
    v16[2] = v7;
LABEL_21:
    *(v11 + 4 * v12) |= 0x10000 << v13;
LABEL_22:
    v3 += 4;
    ++v7;
  }

  while (v3 != 128);
  return 1;
}

uint64_t sub_1952531B0(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v21 = a3;
  v7 = result + (a3 << 10);
  v8 = a3 << 10;
  *(a2 + a3) = 0;
  while (1)
  {
    v9 = *(v4 + v8);
    v10 = (v9 >> 24) & 0x7F;
    if (*(a2 + v10) == 255)
    {
      break;
    }

    if ((v9 & 0x80000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_4:
    if ((*(a2 + v10) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    if (v5 == -255)
    {
      *(a2 + v21) = -64;
      return result;
    }

    ++v6;
    v8 += 4;
    --v5;
  }

  result = sub_1952531B0(v4, a2, (v9 >> 24) & 0x7F);
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  if ((v9 & 0xE00000) >= 0x600000)
  {
    goto LABEL_8;
  }

LABEL_10:
  v11 = -v5;
  v12 = *(a2 + v21) | (-v5 >> 2) & 0xF8;
  *(a2 + v21) = v12;
  v13 = 255;
  if (-v5 > 0xFE)
  {
    v16 = v21;
    goto LABEL_22;
  }

  while (2)
  {
    v14 = *(v7 + 4 * v13);
    v15 = (v14 >> 24) & 0x7F;
    if (*(a2 + v15) == 255)
    {
      result = sub_1952531B0(v4, a2, (v14 >> 24) & 0x7F);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
LABEL_13:
      if ((*(a2 + v15) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if ((v14 & 0xE00000) < 0x600000)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (v11 < --v13)
    {
      continue;
    }

    break;
  }

  v13 = -v5;
LABEL_19:
  v16 = v21;
  v12 = *(a2 + v21);
LABEL_22:
  *(a2 + v16) = v12 | (v13 >> 5);
  if (v13 >= v11)
  {
    if (v13 <= v6)
    {
      v17 = v6;
    }

    else
    {
      v17 = v13;
    }

    for (i = v17 + v5 + 1; i; --i)
    {
      v19 = *(v4 + v8);
      v20 = (v19 >> 24) & 0x7F;
      if (*(a2 + v20) == 255)
      {
        result = sub_1952531B0(v4, a2, (v19 >> 24) & 0x7F);
        if ((v19 & 0x80000000) != 0)
        {
LABEL_31:
          *(a2 + v20) |= 0x40u;
          if ((v19 & 0xC00000) == 0)
          {
            *(a2 + v16) |= 0x40u;
          }
        }
      }

      else if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_31;
      }

      v8 += 4;
    }
  }

  return result;
}

uint64_t sub_19525338C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  memset(v29, 0, sizeof(v29));
  v9 = *(a1 + 8);
  v27 = *(a1 + 24);
  v10 = *(a2 + a3);
  v11 = (4 * v10) & 0xE0;
  if (v11)
  {
LABEL_4:
    v12 = 32 * (v10 & 7) + 32;
    if (v11 >= v12)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (v10 > 63)
  {
    LODWORD(v29[0]) = -1;
    v11 = 1;
    goto LABEL_4;
  }

  v11 = 0;
  v12 = 32 * (v10 & 7) + 32;
LABEL_8:
  v15 = v9 + (a3 << 10);
  v16 = a5 << 8;
  v17 = v11 - 31;
  v18 = -1;
  v19 = v11;
  v20 = v12;
  do
  {
    v21 = *(v15 + 4 * v19);
    if ((v21 & 0x80000000) != 0)
    {
      v22 = (v21 >> 20) & 0xF;
      v23 = -1;
      if (v22 > 3)
      {
        if (v22 == 4)
        {
          v23 = *(v27 + 2 * (a4 + v21));
          if (v23 >= 0xFFFE)
          {
            v23 = -1;
          }
        }

        else if (v22 == 5)
        {
          v25 = a4 + v21;
          v23 = *(v27 + 2 * v25);
          if (v23 >> 11 >= 0x1B)
          {
            v26 = v25 + 1;
            if (v23 >> 10 > 0x36)
            {
              if (v23 == 57344)
              {
                v23 = *(v27 + 2 * v26);
              }

              else
              {
                v23 = -1;
              }
            }

            else
            {
              v23 = ((v23 & 0x3FF) << 10) + 9216 + *(v27 + 2 * v26);
            }
          }
        }
      }

      else
      {
        v24 = (v21 & 0xFFFFF) + 0x10000;
        if (v22 == 1)
        {
          v23 = v24;
        }

        else
        {
          v23 = -1;
        }

        if (!v22)
        {
          v23 = *(v15 + 4 * v19);
        }
      }

      *(v29 + (v19 & 0x1F)) = v23;
      v18 &= v23;
    }

    else
    {
      if ((*(a2 + (v21 >> 24)) & 0x80000000) == 0)
      {
        result = sub_19525338C(a1, a2);
        if (!result)
        {
          goto LABEL_6;
        }
      }

      *(v29 + (v19 & 0x1F)) = -1;
    }

    if ((++v19 & 0x1F) == 0 && (v18 & 0x80000000) == 0)
    {
      result = sub_1952530AC(a6, v17 | v16, v29);
      if (!result)
      {
        goto LABEL_6;
      }

      v18 = -1;
    }

    ++v17;
  }

  while (v19 < v20);
LABEL_5:
  result = 1;
LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952535E8(uint64_t result, void *a2, int *a3)
{
  v4 = *(result + 8);
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = *(result + 32);
  v66 = v8;
  v9 = *(v4 + 48);
  if ((*(v4 + 56) & 0x10) != 0)
  {
    v10 = 240;
  }

  else
  {
    v10 = 232;
  }

  if (*(v4 + 63))
  {
    v11 = 2048;
  }

  else
  {
    v11 = 3072;
  }

  v12 = *(v5 + 64);
  if (v12 < 1)
  {
    v12 = 0;
    LOBYTE(v14) = 0;
    LODWORD(v13) = 0;
  }

  else
  {
    LODWORD(v13) = *(v5 + 72);
    v14 = *(v5 + 76);
  }

  v15 = *(result + 40) - v8;
  v16 = *(v9 + 88);
  v17 = *(v9 + v10);
  v18 = v7 - v6 - v14 + v12;
  if (v18 >= 1 && *(v7 - 1) < 0)
  {
    v19 = *(v7 - 1);
    if (v18 == 1 || v19 > 0xBF)
    {
      if (v19 - 194 < 0x2E)
      {
        --v7;
      }
    }

    else
    {
      v20 = *(v7 - 2);
      if (v20 & 0xF0) == 0xE0 && ((a00000000000000[v20 & 0xF] >> (*(v7 - 1) >> 5)))
      {
        v7 -= 2;
      }
    }
  }

  v21 = (v9 + 104);
  v22 = *(v9 + 260);
  v23 = *(v9 + 253);
  if (v13 && v15 > 0)
  {
    *(v5 + 72) = 0;
    *(v5 + 64) = 0;
    v24 = v12;
    goto LABEL_66;
  }

  v25 = v6;
  while (1)
  {
    if (v25 >= v7)
    {
      v6 = v25;
      goto LABEL_39;
    }

    while (1)
    {
      v26 = v15 - 1;
      if (v15 < 1)
      {
        *a3 = 15;
        goto LABEL_59;
      }

      v6 = (v25 + 1);
      LOBYTE(v27) = *v25;
      v13 = *v25;
      if ((*v25 & 0x80) == 0)
      {
        if (((v22 >> (*v25 >> 2)) & 1) == 0)
        {
          v27 = *(v17 + 2 * (*v21 + v13));
LABEL_63:
          v25 = v6;
          goto LABEL_89;
        }

        goto LABEL_38;
      }

      v28 = *v25;
      if (v13 <= 0xDF)
      {
        if (v28 < 0xC2)
        {
          LOBYTE(v12) = 0;
          LOBYTE(v14) = 0;
LABEL_65:
          v24 = 1;
          goto LABEL_66;
        }

        v29 = *v6 ^ 0x80;
        if (v29 > 0x3F)
        {
          goto LABEL_60;
        }

        LODWORD(v30) = v13 & 0x1F;
        v6 = (v25 + 2);
        v31 = v21[v13 & 0x1F];
        goto LABEL_37;
      }

      if (v28 != 224)
      {
        break;
      }

      v30 = *v6 ^ 0x80;
      if ((v30 & 0xE0) != 0x20 || (v29 = v25[2] ^ 0x80, v29 > 0x3F))
      {
LABEL_60:
        v43 = *v25 > 0xDFu;
        v44 = 2;
        goto LABEL_61;
      }

      v6 = (v25 + 3);
      v31 = v21[v30];
LABEL_37:
      v27 = *(v17 + 2 * (v31 + v29));
      if (v27 < v11)
      {
        v13 = v29 | (v30 << 6);
        goto LABEL_63;
      }

LABEL_38:
      v32 = v66++;
      *v32 = v27;
      v25 = v6;
      v15 = v26;
      if (v6 >= v7)
      {
        goto LABEL_39;
      }
    }

    v24 = 1;
    if ((v27 + 62) < 0x33u)
    {
      if (*v25 <= 0xEFu)
      {
        v44 = 2;
      }

      else
      {
        v44 = 3;
      }

      v43 = 1;
LABEL_61:
      LOBYTE(v12) = 0;
      LOBYTE(v14) = v44 + v43;
      goto LABEL_65;
    }

    LOBYTE(v12) = 0;
    LOBYTE(v14) = 0;
LABEL_66:
    if (v24 < v14)
    {
      break;
    }

LABEL_83:
    if (v24 != v14)
    {
      v60 = v12 - v24;
      if (v12 < v24)
      {
        v61 = (v12 + v5 + 65);
        do
        {
          *v61++ = *(v6 + v60);
        }

        while (!__CFADD__(v60++, 1));
      }

      *(v5 + 64) = v24;
      a2[2] = v6 + v60;
      *(result + 32) = v66;
      *a3 = 12;
      return result;
    }

    v25 = v6;
LABEL_85:
    v13 = (v13 - dword_19547B470[v14]);
    if (v14 < 4 || (v23 & 1) != 0)
    {
      v27 = *(v17 + 2 * ((v13 & 0xF) + *(v16 + 2 * (((v13 >> 4) & 0x3F) + *(v16 + 2 * (v13 >> 10))))));
    }

    else
    {
      v27 = 0;
    }

LABEL_89:
    if (v11 <= v27)
    {
      v59 = v66++;
      *v59 = v27;
      --v15;
    }

    else
    {
      v63 = v23;
      v64 = v22;
      v52 = v11;
      v53 = v17;
      v54 = a2;
      v55 = v5;
      v65 = &unk_19547B484;
      v56 = result;
      v57 = a3;
      v58 = sub_195251B5C(v4, *(v4 + 48), v13, &v65, &unk_19547B484, &v66, &v66[v15], 0, -1, *(result + 2), a3);
      a3 = v57;
      if (*v57 >= 1)
      {
        *(v4 + 84) = v58;
        v6 = v25;
        v5 = v55;
        a2 = v54;
        result = v56;
        goto LABEL_39;
      }

      v5 = v55;
      a2 = v54;
      if ((*(v4 + 208) & 0x80000000) == 0)
      {
        *v57 = -127;
        v6 = v25;
        result = v56;
LABEL_39:
        if (*a3 <= 0 && (*(v4 + 208) & 0x80000000) != 0 && (v33 = a2[3], v6 < v33))
        {
          v34 = *v6;
          v35 = *v6;
          *(v5 + 65) = *v6;
          if (v35 <= 0xEF)
          {
            v36 = 2;
          }

          else
          {
            v36 = 3;
          }

          if (v35 > 0xDF)
          {
            ++v36;
          }

          if (v35 - 194 <= 0x32)
          {
            v37 = v36;
          }

          else
          {
            v37 = 0;
          }

          if (v34 < 0)
          {
            v38 = v37;
          }

          else
          {
            v38 = 1;
          }

          v25 = (v6 + 1);
          if (v6 + 1 >= v33)
          {
            v42 = 1;
          }

          else
          {
            v39 = ~v6 + v33;
            v40 = 1;
            do
            {
              v41 = *v25++;
              v42 = v40 + 1;
              *(v5 + 65 + v40) = v41;
              v35 = v41 + (v35 << 6);
              ++v40;
              --v39;
            }

            while (v39);
          }

          *(v5 + 64) = v42;
          *(v5 + 72) = v35;
          *(v5 + 76) = v38;
        }

        else
        {
          v25 = v6;
        }

LABEL_59:
        a2[2] = v25;
        goto LABEL_96;
      }

      result = v56;
      v15 = *(v56 + 40) - v66;
      v17 = v53;
      v11 = v52;
      v23 = v63;
      v22 = v64;
    }
  }

  v25 = v6;
  LOBYTE(v45) = v24;
  while (v25 < a2[3])
  {
    v46 = *v25;
    if (v14 < 3u || v45 >= 2u)
    {
      if (v46 >= -64)
      {
        goto LABEL_82;
      }
    }

    else
    {
      if (v14 == 3)
      {
        v47 = a00000000000000[v13 & 0xF];
        v48 = v46 >> 5;
      }

      else
      {
        v47 = byte_19547B486[v46 >> 4];
        LOBYTE(v48) = v13 & 7;
      }

      if ((v47 & (1 << v48)) == 0)
      {
LABEL_82:
        v24 = v45;
        v6 = v25;
        goto LABEL_83;
      }
    }

    v45 = (v45 + 1);
    ++v25;
    LODWORD(v13) = v46 + (v13 << 6);
    if (v45 >= v14)
    {
      goto LABEL_85;
    }
  }

  v49 = v12;
  if (v12 >= v45)
  {
    v51 = &v25[v12 - v45];
  }

  else
  {
    do
    {
      v50 = v49 + 1;
      *(v5 + 65 + v49) = *(v6 - v24 + v49);
      v49 = v50;
    }

    while (v50 < v45);
    v51 = (v6 - v24 + v50);
  }

  *(v5 + 64) = v45;
  *(v5 + 72) = v13;
  *(v5 + 76) = v14;
  a2[2] = v51;
LABEL_96:
  *(result + 32) = v66;
  return result;
}

unsigned __int8 *sub_195253C0C(unsigned __int8 *result, void *a2, int *a3)
{
  v5 = result;
  v6 = *(result + 1);
  v8 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v10 = *(result + 4);
  v65 = v10;
  v11 = *(v6 + 48);
  if ((*(v6 + 56) & 0x10) != 0)
  {
    v12 = 240;
  }

  else
  {
    v12 = 232;
  }

  v13 = *(v8 + 64);
  if (v13 < 1)
  {
    v13 = 0;
    LOBYTE(v15) = 0;
    LODWORD(v14) = 0;
  }

  else
  {
    LODWORD(v14) = *(v8 + 72);
    v15 = *(v8 + 76);
  }

  v16 = *(result + 10) - v10;
  v62 = *(v11 + 96);
  v63 = *(v11 + 88);
  v17 = *(v11 + v12);
  v18 = v9 - v7 - v15 + v13;
  if (v18 >= 1 && *(v9 - 1) < 0)
  {
    v19 = *(v9 - 1);
    if (v18 == 1 || v19 > 0xBF)
    {
      if (v19 - 194 < 0x2E)
      {
        --v9;
      }
    }

    else
    {
      v20 = *(v9 - 2);
      if (v20 & 0xF0) == 0xE0 && ((a00000000000000[v20 & 0xF] >> (*(v9 - 1) >> 5)))
      {
        v9 -= 2;
      }
    }
  }

  v21 = *(v11 + 260);
  v22 = *(v11 + 253);
  if (v14 && v16 >= 1)
  {
    *(v8 + 72) = 0;
    *(v8 + 64) = 0;
    v23 = v13;
    goto LABEL_46;
  }

  v24 = v7;
  while (1)
  {
    while (1)
    {
      if (v24 >= v9)
      {
        goto LABEL_87;
      }

      v28 = 0;
      while (1)
      {
        v25 = v16 - 1;
        if (v16 < 1)
        {
          *a3 = 15;
          v24 += v28;
          goto LABEL_113;
        }

        v26 = *(v24 + v28);
        v14 = *(v24 + v28);
        if (v26 < 0)
        {
          break;
        }

        if (((v21 >> (*(v24 + v28) >> 2)) & 1) == 0)
        {
          v33 = *(v17 + 2 * (*v62 + v14));
          v24 += v28 + 1;
          goto LABEL_72;
        }

        v27 = v65++;
        *v27 = v14;
        ++v28;
        v16 = v25;
        if (v9 - v24 == v28)
        {
          v24 += v28;
          goto LABEL_87;
        }
      }

      v29 = *(v24 + v28);
      v7 = (v24 + v28 + 1);
      if (v14 < 0xE0)
      {
        break;
      }

      if (v14 > 0xED)
      {
        v23 = 1;
        if ((v14 - 194) > 0x32)
        {
LABEL_45:
          LOBYTE(v13) = 0;
          LOBYTE(v15) = 0;
          goto LABEL_46;
        }

        goto LABEL_39;
      }

      if (((a00000000000000[v26 & 0xF] >> (*v7 >> 5)) & 1) == 0)
      {
        goto LABEL_39;
      }

      v30 = (v24 + v28);
      v31 = *(v24 + v28 + 2) ^ 0x80;
      if (v31 > 0x3F)
      {
        goto LABEL_39;
      }

      v32 = *v7 & 0x3F | ((v26 & 0xF) << 6);
      v24 = (v30 + 3);
      v33 = *(v17 + 2 * (v62[v32] + v31));
      if (*(v17 + 2 * (v62[v32] + v31)))
      {
        goto LABEL_73;
      }

      v14 = v31 | (v32 << 6);
LABEL_78:
      v64 = &unk_19547B498;
      result = sub_195251B5C(v6, *(v6 + 48), v14, &v64, &unk_19547B498, &v65, &v65[v16], 0, -1, v5[2], a3);
      if (*a3 >= 1)
      {
        *(v6 + 84) = result;
        goto LABEL_87;
      }

      if ((*(v6 + 208) & 0x80000000) == 0)
      {
        *a3 = -127;
LABEL_87:
        if (*a3 <= 0 && (*(v6 + 208) & 0x80000000) != 0)
        {
          v48 = a2[3];
          if (v24 < v48)
          {
            v49 = *v24;
            v50 = *v24;
            *(v8 + 65) = *v24;
            if (v50 <= 0xEF)
            {
              v51 = 2;
            }

            else
            {
              v51 = 3;
            }

            if (v50 > 0xDF)
            {
              ++v51;
            }

            if (v50 - 194 <= 0x32)
            {
              v52 = v51;
            }

            else
            {
              v52 = 0;
            }

            if (v49 < 0)
            {
              v53 = v52;
            }

            else
            {
              v53 = 1;
            }

            v54 = (v24 + 1);
            if (v24 + 1 >= v48)
            {
              v58 = 1;
            }

            else
            {
              v55 = ~v24 + v48;
              v56 = 1;
              do
              {
                v57 = *v54++;
                v58 = v56 + 1;
                *(v8 + 65 + v56) = v57;
                v50 = v57 + (v50 << 6);
                ++v56;
                --v55;
              }

              while (v55);
            }

            *(v8 + 64) = v58;
            v24 = v54;
            *(v8 + 72) = v50;
            *(v8 + 76) = v53;
          }
        }

LABEL_113:
        a2[2] = v24;
LABEL_114:
        *(v5 + 4) = v65;
        return result;
      }

      v16 = *(v5 + 10) - v65;
    }

    v23 = 1;
    if (v14 < 0xC2)
    {
      goto LABEL_45;
    }

    v34 = *v7 ^ 0x80;
    if (v34 <= 0x3F)
    {
      v24 += v28 + 2;
      v33 = *(v17 + 2 * (v62[v29 & 0x1F] + v34));
      if (!*(v17 + 2 * (v62[v29 & 0x1F] + v34)))
      {
        v14 = v34 | ((v29 & 0x1F) << 6);
        goto LABEL_78;
      }

      goto LABEL_73;
    }

LABEL_39:
    LOBYTE(v13) = 0;
    if (v14 <= 0xEF)
    {
      LOBYTE(v15) = 2;
    }

    else
    {
      LOBYTE(v15) = 3;
    }

    if (v14 > 0xDF)
    {
      LOBYTE(v15) = v15 + 1;
    }

    v23 = 1;
LABEL_46:
    if (v23 < v15)
    {
      v24 = v7;
      LOBYTE(v35) = v23;
      result = byte_19547B486;
      while (v24 < a2[3])
      {
        v36 = *v24;
        if (v15 < 3u || v35 >= 2u)
        {
          if (v36 >= -64)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if (v15 == 3)
          {
            v37 = a00000000000000[v14 & 0xF];
            v38 = v36 >> 5;
          }

          else
          {
            v37 = byte_19547B486[v36 >> 4];
            LOBYTE(v38) = v14 & 7;
          }

          if ((v37 & (1 << v38)) == 0)
          {
LABEL_62:
            v23 = v35;
            v7 = v24;
            goto LABEL_63;
          }
        }

        v35 = (v35 + 1);
        ++v24;
        LODWORD(v14) = v36 + (v14 << 6);
        if (v35 >= v15)
        {
          goto LABEL_65;
        }
      }

      v39 = v13;
      if (v13 >= v35)
      {
        v41 = (v24 + v13 - v35);
      }

      else
      {
        do
        {
          v40 = v39 + 1;
          *(v8 + 65 + v39) = v7[v39 - v23];
          v39 = v40;
        }

        while (v40 < v35);
        v41 = &v7[v40 - v23];
      }

      *(v8 + 64) = v35;
      *(v8 + 72) = v14;
      *(v8 + 76) = v15;
      a2[2] = v41;
      goto LABEL_114;
    }

LABEL_63:
    if (v23 != v15)
    {
      break;
    }

    v24 = v7;
LABEL_65:
    v14 = (v14 - dword_19547B470[v15]);
    if (v15 < 4 || (v42 = 0, (v22 & 1) != 0))
    {
      v42 = *(v63 + 4 * (((v14 >> 4) & 0x3F) + *(v63 + 2 * (v14 >> 10))));
    }

    v43 = v42 >> (v14 & 0xF);
    v33 = *(v17 + 2 * (v14 & 0xF | (16 * v42)));
    if ((v43 & 0x10000) == 0)
    {
      if (!*(v6 + 63) && (v14 - 57344) >> 8 >= 0x19 && (v14 - 983040) >> 17)
      {
        goto LABEL_78;
      }

LABEL_72:
      if (!v33)
      {
        goto LABEL_78;
      }
    }

LABEL_73:
    if (v33 > 0xFF)
    {
      v46 = v65++;
      *v46 = BYTE1(v33);
      if (v16 < 2)
      {
        *(v6 + 104) = v33;
        *(v6 + 91) = 1;
        *a3 = 15;
        goto LABEL_113;
      }

      v47 = v65++;
      *v47 = v33;
      v45 = -2;
    }

    else
    {
      v44 = v65++;
      *v44 = v33;
      v45 = -1;
    }

    v16 += v45;
  }

  v59 = v13 - v23;
  if (v13 < v23)
  {
    v60 = (v13 + v8 + 65);
    do
    {
      *v60++ = v7[v59];
    }

    while (!__CFADD__(v59++, 1));
  }

  *(v8 + 64) = v23;
  a2[2] = &v7[v59];
  *(v5 + 4) = v65;
  *a3 = 12;
  return result;
}

uint64_t sub_195254264(uint64_t a1, unsigned int a2)
{
  v3 = a1 + (a2 << 10);
  v4 = *(v3 + 644);
  if ((v4 & 0x80000000) == 0 || (v4 & 0xF00000) == 0x700000)
  {
    v5 = *(v3 + 260);
    if ((v5 & 0x80000000) == 0 || (v5 & 0xF00000) == 0x700000)
    {
      v7 = 0;
      while (1)
      {
        v8 = *(v3 + v7);
        if (v8 < 0 && (v8 & 0xF00000) != 0x700000)
        {
          break;
        }

        v7 += 4;
        if (v7 == 1024)
        {
          v9 = 0;
          while (1)
          {
            v10 = *(v3 + v9);
            if ((v10 & 0x80000000) == 0)
            {
              if (sub_195254264(a1, HIBYTE(v10)))
              {
                break;
              }
            }

            v9 += 4;
            if (v9 == 1024)
            {
              return 0;
            }
          }

          return 1;
        }
      }
    }
  }

  return 1;
}

char *sub_195254314(char *result, uint64_t a2, _DWORD *a3)
{
  if (!*(a2 + 8))
  {
    v4 = result;
    v5 = *(a2 + 32);
    result = malloc_type_malloc(0x54uLL, 0x10000405C84B8F7uLL);
    *(v4 + 2) = result;
    if (result)
    {
      if (!v5 || *v5 != 106 || v5[1] != 97 || (v6 = 0x605070001040203, v7 = 1, v5[2]) && v5[2] != 95)
      {
        v7 = 0;
        v6 = 0x106050402030007;
      }

      result[74] = v7;
      *result = xmmword_19547B5E0;
      *(result + 1) = unk_19547B5F0;
      result[64] = 1;
      *(result + 65) = 0;
      v4[64] = 0;
      *(result + 2) = xmmword_19547B5E0;
      *(result + 3) = unk_19547B5F0;
      *(result + 36) = 1;
      result[75] = 0;
      *(result + 76) = v6;
      *(v4 + 21) = 0;
    }

    else
    {
      *a3 = 7;
    }

    *(v4 + 68) = -3;
    v4[89] = -1;
  }

  return result;
}

void sub_19525441C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 62))
    {
      free(v2);
    }

    *(a1 + 16) = 0;
  }
}

uint64_t sub_195254454(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (a2 > 1 || (*v2 = xmmword_19547B5E0, *(v2 + 16) = unk_19547B5F0, *(v2 + 64) = 1, *(v2 + 65) = 0, *(result + 64) = 0, a2 != 1))
  {
    *(v2 + 32) = xmmword_19547B5E0;
    *(v2 + 48) = unk_19547B5F0;
    *(v2 + 72) = 1;
    *(v2 + 75) = 0;
    v3 = 0x106050402030007;
    if (*(v2 + 74) == 1)
    {
      v3 = 0x605070001040203;
    }

    *(v2 + 76) = v3;
    *(result + 84) = 0;
  }

  return result;
}

void *sub_1952544D4(void *result, int *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *(v2 + 16);
  v6 = result[3];
  v5 = result[4];
  v7 = result[5];
  LOBYTE(v8) = v4[64];
  v9 = v4[65];
  v10 = v4[66];
  v11 = v4[67];
  v12 = v4[68];
  if (!v8)
  {
    v15 = v4[66];
    if (v4[65])
    {
      goto LABEL_86;
    }

    goto LABEL_78;
  }

  v13 = result[2];
  v14 = v4[68];
  v15 = v4[66];
  v16 = v4[67];
  if (v4[65])
  {
    goto LABEL_20;
  }

LABEL_6:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v9 = 0;
        if (v3 < v6 && v5 < v7)
        {
          do
          {
            v17 = *v3;
            if (v17 < 0x20)
            {
              break;
            }

            v3 = (v3 + 1);
            if ((v17 & 0x80) != 0)
            {
              v18 = *&v4[4 * v11] + (v17 & 0x7F);
              if (HIWORD(v18))
              {
                *v5 = (v18 >> 10) - 10304;
                v19 = v18 & 0x3FF | 0xDC00;
                if ((v5 + 1) >= v7)
                {
                  v9 = 0;
                  *(v2 + 144) = v19;
                  *(v2 + 93) = 1;
                  *a2 = 15;
                  ++v5;
                  goto LABEL_106;
                }

                v5[1] = v19;
                v5 += 2;
              }

              else
              {
                *v5++ = v18;
              }
            }

            else
            {
              *v5++ = v17;
            }
          }

          while (v3 < v6 && v5 < v7);
          v9 = 0;
        }

        v13 = v3;
        v14 = v12;
        v15 = v10;
LABEL_19:
        v16 = v11;
LABEL_20:
        if (v13 >= v6)
        {
          goto LABEL_49;
        }

        v20 = v6 - v13;
        v21 = (v13 + 1);
        v11 = v16;
        v10 = v15;
        v12 = v14;
        v22 = v9;
        while (1)
        {
          if (v5 >= v7)
          {
            *a2 = 15;
LABEL_49:
            v3 = v13;
            LOBYTE(v12) = v14;
            LOBYTE(v10) = v15;
            LOBYTE(v11) = v16;
            goto LABEL_106;
          }

          v3 = v21;
          v23 = *(v21 - 1);
          if (v22 <= 1)
          {
            break;
          }

          if (v22 <= 3)
          {
            if (v22 == 2)
            {
              LOWORD(v26) = v23 | (v12 << 8);
LABEL_63:
              *v5++ = v26;
              goto LABEL_6;
            }

            if ((v23 & 0x80) == 0)
            {
              v26 = dword_19547B600[v10] + v23;
              goto LABEL_63;
            }

            v26 = *&v4[4 * v10] + (v23 & 0x7F);
            if (!HIWORD(v26))
            {
              goto LABEL_63;
            }

            *v5 = (v26 >> 10) - 10304;
            v29 = v26 & 0x3FF | 0xDC00;
            if ((v5 + 1) >= v7)
            {
              *(v2 + 144) = v29;
              *(v2 + 93) = 1;
              *a2 = 15;
              v9 = 3;
              ++v5;
              goto LABEL_106;
            }

            v5[1] = v29;
            v5 += 2;
            goto LABEL_6;
          }

          switch(v22)
          {
            case 4:
              v11 = v23 >> 5;
              v12 = v23 & 0x1F;
              v22 = 5;
              v24 = 2;
              v25 = (v2 + 66);
              goto LABEL_45;
            case 5:
              v27 = ((v23 << 7) & 0xFF807FFF | (v12 << 15)) + 0x10000;
              v28 = v11;
              goto LABEL_67;
            case 6:
              if (!v23)
              {
                *(v2 + 66) = 0;
LABEL_73:
                *(v2 + 64) = 2;
                v9 = 6;
                goto LABEL_106;
              }

              if (v23 <= 0x67)
              {
                v27 = v23 << 7;
                goto LABEL_66;
              }

              if ((v23 - 104) <= 0x3Fu)
              {
                v27 = (v23 << 7) + 44032;
                goto LABEL_66;
              }

              if (v23 < 0xF9)
              {
                *(v2 + 66) = v23;
                goto LABEL_73;
              }

              v27 = dword_19547B620[(v23 - 249)];
LABEL_66:
              v28 = v11;
LABEL_67:
              *&v4[4 * v28] = v27;
              goto LABEL_6;
          }

LABEL_46:
          v21 = (v3 + 1);
          if (!--v20)
          {
            v9 = v22;
            goto LABEL_106;
          }
        }

        if (v22)
        {
          v24 = 2;
          v25 = (v2 + 66);
          v22 = 2;
          v12 = v23;
LABEL_45:
          *v25 = v23;
          *(v2 + 64) = v24;
          goto LABEL_46;
        }

        if (((1 << v23) & 0x2601) != 0)
        {
          *v5++ = v23;
          continue;
        }

        break;
      }

      if (v23 >= 0x10)
      {
        if (v23 <= 0x17)
        {
          v11 = (v23 - 16);
          continue;
        }

        v11 = (v23 - 24);
        v22 = 6;
LABEL_44:
        v24 = 1;
        v25 = (v2 + 65);
        goto LABEL_45;
      }

      break;
    }

    if (v23 <= 8)
    {
      v10 = (v23 - 1);
      v22 = 3;
      goto LABEL_44;
    }

    if (v23 == 11)
    {
      v22 = 4;
      goto LABEL_44;
    }

    if (v23 == 14)
    {
      v24 = 1;
      v25 = (v2 + 65);
      v22 = 1;
      goto LABEL_45;
    }

    if (v23 != 15)
    {
      v9 = 0;
      *a2 = 12;
      *(v2 + 65) = v23;
      *(v2 + 64) = 1;
      goto LABEL_106;
    }

LABEL_78:
    v9 = 0;
    if (v3 + 1 < v6 && v5 < v7)
    {
      while (*v3 - 243 <= 0xFFFFFFEC)
      {
        *v5++ = _byteswap_ushort(*v3);
        v30 = v3 + 1;
        if (v3 + 3 < v6)
        {
          ++v3;
          if (v5 < v7)
          {
            continue;
          }
        }

        v9 = 0;
        v3 = v30;
        goto LABEL_85;
      }

      v9 = 0;
    }

LABEL_85:
    v15 = v10;
LABEL_86:
    if (v3 >= v6)
    {
      LOBYTE(v8) = 0;
      goto LABEL_105;
    }

    v8 = v6 - v3;
    v31 = (v3 + 1);
    v14 = v12;
    v32 = v9;
    while (1)
    {
      if (v5 >= v7)
      {
        LOBYTE(v8) = 0;
        *a2 = 15;
        goto LABEL_105;
      }

      v13 = v31;
      v33 = *(v31 - 1);
      if (!v32)
      {
        break;
      }

      if (v32 == 1)
      {
        *(v2 + 66) = v33;
        v34 = 2;
        v32 = 2;
LABEL_100:
        *(v2 + 64) = v34;
        v14 = v33;
        goto LABEL_101;
      }

      if (v32 == 2)
      {
        *v5++ = v33 | (v14 << 8);
        v3 = v13;
        v12 = v14;
        v10 = v15;
        goto LABEL_78;
      }

LABEL_101:
      v31 = (v13 + 1);
      if (!--v8)
      {
        v3 = v13;
        v9 = v32;
        goto LABEL_103;
      }
    }

    if ((v33 + 32) >= 0x13u)
    {
      *(v2 + 65) = v33;
      v32 = 2;
      v34 = 1;
      goto LABEL_100;
    }

    if (v33 < 0xE8)
    {
      LOBYTE(v8) = 1;
      v3 = v13;
      v12 = v14;
      v10 = v15;
      v11 = (v33 + 32);
      continue;
    }

    break;
  }

  if (v33 <= 0xEF)
  {
    v11 = (v33 + 24);
    v9 = 6;
    goto LABEL_77;
  }

  if (v33 == 240)
  {
    *(v2 + 65) = -16;
    v34 = 1;
    v32 = 1;
    v33 = v14;
    goto LABEL_100;
  }

  if (v33 == 241)
  {
    v9 = 4;
LABEL_77:
    *(v2 + 65) = v33;
    LOBYTE(v8) = 1;
    *(v2 + 64) = 1;
    goto LABEL_19;
  }

  LOBYTE(v8) = 0;
  v9 = 0;
  *a2 = 12;
  *(v2 + 65) = v33;
  *(v2 + 64) = 1;
  v3 = v13;
LABEL_103:
  LOBYTE(v12) = v14;
LABEL_105:
  LOBYTE(v10) = v15;
LABEL_106:
  if (*a2 < 1 || *a2 == 15)
  {
    if (!v9)
    {
      *(v2 + 64) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  v4[64] = v8;
  v4[65] = v9;
  v4[66] = v10;
  v4[67] = v11;
  v4[68] = v12;
  result[2] = v3;
  result[4] = v5;
  return result;
}

void *sub_195254A94(void *result, int *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = *(v2 + 16);
  v6 = result[3];
  v5 = result[4];
  v8 = result[5];
  v7 = result[6];
  LOBYTE(v9) = v4[64];
  v10 = v4[65];
  v11 = v4[66];
  v12 = v4[67];
  v13 = v4[68];
  v14 = 0;
  if (v9)
  {
    if (v4[65])
    {
      v15 = -1;
      goto LABEL_7;
    }

    v16 = result[2];
    v17 = v4[68];
    v18 = v4[66];
    v19 = v4[67];
    goto LABEL_71;
  }

  if (v4[65])
  {
    v15 = -1;
    v16 = result[2];
    v17 = v4[68];
  }

  else
  {
LABEL_93:
    v16 = v3;
    v17 = v13;
LABEL_94:
    v10 = 0;
    if ((v16 + 1) >= v6 || v5 >= v8)
    {
      v15 = v14;
    }

    else
    {
      v36 = 0;
      v15 = v14;
      while (v16[v36] - 243 <= 0xFFFFFFEC)
      {
        v5[v36 / 2] = _byteswap_ushort(*&v16[v36]);
        v37 = &v5[v36 / 2 + 1];
        if (v7)
        {
          *v7++ = v15;
        }

        v38 = v36 + 2;
        if (&v16[v36 + 3] < v6)
        {
          v15 = v14 + v36;
          v36 += 2;
          if (v37 < v8)
          {
            continue;
          }
        }

        v10 = 0;
        v14 += v38;
        v15 = v14 - 2;
        v5 = (v5 + v38);
        v16 += v38;
        goto LABEL_105;
      }

      v10 = 0;
      v14 += v36;
      v5 = (v5 + v36);
      v16 += v36;
    }
  }

LABEL_105:
  if (v16 >= v6)
  {
    LOBYTE(v9) = 0;
    goto LABEL_124;
  }

  v9 = v6 - v16;
  ++v14;
  v39 = v16 + 1;
  v13 = v17;
  v40 = v10;
  while (1)
  {
    if (v5 >= v8)
    {
      LOBYTE(v9) = 0;
      *a2 = 15;
      goto LABEL_124;
    }

    v3 = v39;
    v41 = *(v39 - 1);
    if (!v40)
    {
      break;
    }

    if (v40 == 1)
    {
      *(v2 + 66) = v41;
      v42 = 2;
      v40 = 2;
LABEL_119:
      *(v2 + 64) = v42;
      v13 = v41;
      goto LABEL_120;
    }

    if (v40 == 2)
    {
      *v5++ = v41 | (v13 << 8);
      if (v7)
      {
        *v7++ = v15;
      }

      goto LABEL_93;
    }

LABEL_120:
    ++v14;
    v39 = v3 + 1;
    if (!--v9)
    {
      v16 = v3;
      v10 = v40;
LABEL_122:
      LOBYTE(v17) = v13;
LABEL_124:
      LOBYTE(v18) = v11;
      LOBYTE(v19) = v12;
      goto LABEL_125;
    }
  }

  v19 = (v41 + 32);
  if ((v41 + 32) >= 0x13u)
  {
    *(v2 + 65) = v41;
    v40 = 2;
    v42 = 1;
    goto LABEL_119;
  }

  if (v41 < 0xE8)
  {
    LOBYTE(v9) = 1;
    v16 = v3;
    v17 = v13;
    v18 = v11;
    goto LABEL_71;
  }

  if (v41 <= 0xEF)
  {
    v12 = (v41 + 24);
    v10 = 6;
    goto LABEL_92;
  }

  if (v41 == 240)
  {
    *(v2 + 65) = -16;
    v42 = 1;
    v40 = 1;
    v41 = v13;
    goto LABEL_119;
  }

  if (v41 != 241)
  {
    LOBYTE(v9) = 0;
    v10 = 0;
    *a2 = 12;
    *(v2 + 65) = v41;
    *(v2 + 64) = 1;
    goto LABEL_36;
  }

  v10 = 4;
LABEL_92:
  *(v2 + 65) = v41;
  LOBYTE(v9) = 1;
  *(v2 + 64) = 1;
LABEL_7:
  if (v3 >= v6)
  {
LABEL_36:
    v16 = v3;
    goto LABEL_122;
  }

  v20 = v6 - v3;
  ++v14;
  v21 = v3 + 1;
  v19 = v12;
  v18 = v11;
  v17 = v13;
  v22 = v10;
  while (1)
  {
    if (v5 >= v8)
    {
      *a2 = 15;
      goto LABEL_36;
    }

    v16 = v21;
    v23 = *(v21 - 1);
    if (v22 <= 1)
    {
      if (v22)
      {
        v24 = 2;
        v25 = (v2 + 66);
        v22 = 2;
        v17 = v23;
      }

      else
      {
        if (((1 << v23) & 0x2601) != 0)
        {
          *v5++ = v23;
          if (!v7)
          {
            goto LABEL_71;
          }

          goto LABEL_46;
        }

        if (v23 < 0x10)
        {
          if (v23 > 8)
          {
            if (v23 != 11)
            {
              if (v23 != 14)
              {
                if (v23 != 15)
                {
                  v10 = 0;
                  *a2 = 12;
                  *(v2 + 65) = v23;
                  *(v2 + 64) = 1;
                  goto LABEL_125;
                }

                v11 = v18;
                v12 = v19;
                goto LABEL_94;
              }

              v24 = 1;
              v25 = (v2 + 65);
              v22 = 1;
              goto LABEL_32;
            }

            v22 = 4;
          }

          else
          {
            v18 = (v23 - 1);
            v22 = 3;
          }
        }

        else
        {
          if (v23 <= 0x17)
          {
            v19 = (v23 - 16);
            goto LABEL_71;
          }

          v19 = (v23 - 24);
          v22 = 6;
        }

        v24 = 1;
        v25 = (v2 + 65);
      }

LABEL_32:
      *v25 = v23;
      *(v2 + 64) = v24;
      goto LABEL_33;
    }

    if (v22 <= 3)
    {
      break;
    }

    switch(v22)
    {
      case 4:
        v19 = v23 >> 5;
        v17 = v23 & 0x1F;
        v22 = 5;
        v24 = 2;
        v25 = (v2 + 66);
        goto LABEL_32;
      case 5:
        v26 = ((v23 << 7) & 0xFF807FFF | (v17 << 15)) + 0x10000;
        v28 = v19;
        goto LABEL_58;
      case 6:
        if (v23)
        {
          if (v23 <= 0x67)
          {
            v26 = v23 << 7;
            goto LABEL_57;
          }

          if ((v23 - 104) <= 0x3Fu)
          {
            v26 = (v23 << 7) + 44032;
            goto LABEL_57;
          }

          if (v23 >= 0xF9)
          {
            v26 = dword_19547B620[(v23 - 249)];
LABEL_57:
            v28 = v19;
LABEL_58:
            *&v4[4 * v28] = v26;
LABEL_71:
            v10 = 0;
            if (v16 >= v6 || v5 >= v8)
            {
LABEL_87:
              v3 = v16;
              v13 = v17;
              v11 = v18;
              v12 = v19;
              v15 = v14;
              goto LABEL_7;
            }

            while (2)
            {
              v33 = *v16;
              if (v33 < 0x20)
              {
LABEL_86:
                v10 = 0;
                goto LABEL_87;
              }

              ++v16;
              if ((v33 & 0x80) != 0 && (v33 = *&v4[4 * v19] + (v33 & 0x7F), HIWORD(v33)))
              {
                *v5 = (v33 >> 10) - 10304;
                if ((v5 + 1) >= v8)
                {
                  if (v7)
                  {
                    *v7++ = v14;
                  }

                  v10 = 0;
                  *(v2 + 144) = v33 & 0x3FF | 0xDC00;
                  *(v2 + 93) = 1;
                  *a2 = 15;
                  ++v5;
                  goto LABEL_125;
                }

                v5[1] = v33 & 0x3FF | 0xDC00;
                if (v7)
                {
                  *v7 = v14;
                  v35 = v7 + 1;
                  v34 = 8;
                  v5 += 2;
LABEL_78:
                  v7 = (v7 + v34);
                  *v35 = v14;
                }

                else
                {
                  v5 += 2;
                }
              }

              else
              {
                *v5++ = v33;
                if (v7)
                {
                  v34 = 4;
                  v35 = v7;
                  goto LABEL_78;
                }
              }

              ++v14;
              if (v16 >= v6 || v5 >= v8)
              {
                goto LABEL_86;
              }

              continue;
            }
          }

          *(v2 + 66) = v23;
        }

        else
        {
          *(v2 + 66) = 0;
        }

        *(v2 + 64) = 2;
        v10 = 6;
        goto LABEL_125;
    }

LABEL_33:
    ++v14;
    v21 = v16 + 1;
    if (!--v20)
    {
      v10 = v22;
      goto LABEL_125;
    }
  }

  if (v22 == 2)
  {
    *v5++ = v23 | (v17 << 8);
    if (!v7)
    {
      goto LABEL_71;
    }

LABEL_46:
    *v7++ = v15;
    goto LABEL_71;
  }

  if ((v23 & 0x80) == 0)
  {
    v27 = dword_19547B600[v18] + v23;
    goto LABEL_51;
  }

  v27 = *&v4[4 * v18] + (v23 & 0x7F);
  if (!HIWORD(v27))
  {
LABEL_51:
    *v5++ = v27;
    v29 = 4;
    if (!v7)
    {
      goto LABEL_71;
    }

    v30 = v7;
    v31 = v5;
LABEL_53:
    v7 = (v7 + v29);
    *v30 = v15;
    goto LABEL_54;
  }

  *v5 = (v27 >> 10) - 10304;
  if ((v5 + 1) < v8)
  {
    v32 = v27 & 0x3FF | 0xDC00;
    v31 = v5 + 2;
    v5[1] = v32;
    if (v7)
    {
      *v7 = v15;
      v30 = v7 + 1;
      v29 = 8;
      goto LABEL_53;
    }

LABEL_54:
    v5 = v31;
    goto LABEL_71;
  }

  if (v7)
  {
    *v7++ = v15;
  }

  *(v2 + 144) = v27 & 0x3FF | 0xDC00;
  *(v2 + 93) = 1;
  *a2 = 15;
  v10 = 3;
  ++v5;
LABEL_125:
  if (*a2 < 1 || *a2 == 15)
  {
    if (!v10)
    {
      *(v2 + 64) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  v4[64] = v9;
  v4[65] = v10;
  v4[66] = v18;
  v4[67] = v19;
  v4[68] = v17;
  result[2] = v16;
  result[4] = v5;
  result[6] = v7;
  return result;
}

uint64_t sub_195255164(uint64_t result, int *a2)
{
  v93 = 0;
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(v2 + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v89 = v2;
  v90 = result;
  v7 = *(result + 40) - v6;
  v8 = *(v4 + 72);
  v88 = v4 + 32;
  v9 = *(v4 + 32 + 4 * *(v4 + 73));
  v87 = v4 + 76;
  v10 = *(v2 + 84);
  v91 = v5;
  v92 = *(v4 + 73);
  while (1)
  {
    if (v10)
    {
      v11 = v7 <= 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    if (!v8)
    {
      if (v12)
      {
        v18 = v3;
LABEL_20:
        if (v18 >= v5)
        {
          LOBYTE(v8) = 0;
          v3 = v18;
          goto LABEL_149;
        }

        v19 = *v18;
        if ((v19 & 0xFC00) != 0xDC00)
        {
          LOBYTE(v8) = 0;
          v83 = 12;
          v3 = v18;
          goto LABEL_174;
        }

        v20 = 0;
        v3 = v18 + 1;
        v21 = v19 + (v10 << 10) - 56613888;
        v22 = 57472;
        while (1)
        {
          v23 = v4 + 4 * v20;
          if (v21 - *(v23 + 32) < 0x80)
          {
            break;
          }

          ++v20;
          v22 += 256;
          if (v20 == 8)
          {
            goto LABEL_47;
          }
        }

        if ((v20 & 0x80) == 0 && (v3 >= v5 || (*v3 - 13312) >> 10 >= 0x29))
        {
          v48 = *(v23 + 32);
          v92 = v20;
          result = sub_1952567D8(v4, v20);
          v9 = v48;
          v10 = v22 | (v21 - v48);
          v37 = 2;
          goto LABEL_60;
        }

LABEL_47:
        if (v3 >= v5 || *v3 != v10 || (v41 = v9, result = sub_195256848(v21, &v93), v9 = v41, (result & 0x80000000) != 0))
        {
          v8 = 0;
          v10 = v19 | (v10 << 16);
          v37 = 4;
          goto LABEL_101;
        }

        v42 = result;
        v43 = *(v4 + 75);
        v44 = *(v87 + v43);
        if ((v43 + 1) == 8)
        {
          v45 = 0;
        }

        else
        {
          v45 = v43 + 1;
        }

        *(v4 + 75) = v45;
        v46 = v93;
        *(v88 + 4 * v44) = v93;
        result = sub_1952567D8(v4, v44);
        v9 = v46;
        v92 = v44;
        v10 = ((v42 << 8) + 268304384) | (v44 << 21) | (v21 - v46) | 0xF1000080;
        v37 = 4;
LABEL_60:
        v8 = 1;
        goto LABEL_101;
      }

      if (v3 >= v5)
      {
        LOBYTE(v8) = 0;
        goto LABEL_149;
      }

      if (v7 < 1)
      {
        LOBYTE(v8) = 0;
        goto LABEL_150;
      }

      v38 = 0;
      v39 = 2;
      while (1)
      {
        v10 = v3[v38 / 2];
        if ((v10 - 13312) >> 10 > 0x28)
        {
          break;
        }

        if (v7 - 1 == v38)
        {
          LOBYTE(v8) = 0;
          v3 = (v3 + v38 + 2);
          v6 += v38;
          v7 = 1;
          v37 = 2;
LABEL_144:
          v78 = v37 - v7;
          v80 = v89;
          v79 = v90;
          v81 = v89 + 104;
          v82 = a2;
          if (v78 <= 2)
          {
            if (v78 != 1)
            {
              if (v78 != 2)
              {
LABEL_157:
                v89[91] = v78;
                if (v78 == 4)
                {
                  v84 = 0;
                }

                else
                {
                  v84 = v10 >> (8 * v78);
                }

                switch(v7)
                {
                  case 1:
                    goto LABEL_165;
                  case 2:
                    goto LABEL_164;
                  case 3:
                    *v6++ = BYTE2(v84);
LABEL_164:
                    *v6++ = BYTE1(v84);
LABEL_165:
                    v10 = 0;
                    *v6++ = v84;
                    break;
                  default:
                    v10 = 0;
                    break;
                }

                v83 = 15;
                goto LABEL_175;
              }

LABEL_155:
              *v81++ = BYTE1(v10);
            }

            *v81 = v10;
            goto LABEL_157;
          }

          if (v78 != 3)
          {
            if (v78 != 4)
            {
              goto LABEL_157;
            }

            v81 = v89 + 105;
            v89[104] = HIBYTE(v10);
          }

          *v81++ = BYTE2(v10);
          goto LABEL_155;
        }

        v40 = &v6[v38];
        *v40 = BYTE1(v10);
        v40[1] = v10;
        if (&v3[v38 / 2 + 1] >= v5)
        {
          LOBYTE(v8) = 0;
          v10 = 0;
          v3 = (v3 + v38 + 2);
          v6 = v40 + 2;
          goto LABEL_149;
        }

        v38 += 2;
        v39 -= 2;
        if (v7 + v39 < 3)
        {
          LOBYTE(v8) = 0;
          v10 = 0;
          v3 = (v3 + v38);
          v6 += v38;
LABEL_150:
          v83 = 15;
          goto LABEL_174;
        }
      }

      v18 = &v3[v38 / 2 + 1];
      v47 = &v6[v38];
      v7 -= v38;
      if ((v10 - 13312) >> 8 < 0xBF)
      {
        if (v10 >> 13 <= 6)
        {
          if ((v10 & 0x400) != 0)
          {
            LOBYTE(v8) = 0;
            v3 = (v3 + v38 + 2);
            v6 += v38;
            goto LABEL_173;
          }

          v6 += v38;
          goto LABEL_20;
        }

        v8 = 0;
        v10 |= 0xF00000u;
        v37 = 3;
      }

      else if (v18 >= v5 || (*v18 - 13312) >> 10 > 0x28)
      {
        if (v10 - 48 >= 0xA && v10 - 97 >= 0x1A && v10 - 65 >= 0x1A)
        {
          v51 = 0;
          v52 = 57472;
          while (1)
          {
            v53 = v4 + 4 * v51;
            if (v10 - *(v53 + 32) < 0x80)
            {
              break;
            }

            ++v51;
            v52 += 256;
            if (v51 == 8)
            {
              goto LABEL_80;
            }
          }

          if ((v51 & 0x80) == 0)
          {
            v54 = *(v53 + 32);
            v92 = v51;
            result = sub_1952567D8(v4, v51);
            v9 = v54;
            v10 = v52 | (v10 - v54);
            goto LABEL_79;
          }

LABEL_80:
          v55 = v9;
          result = sub_195256848(v10, &v93);
          if ((result & 0x80000000) != 0)
          {
            v8 = 0;
            v37 = 2;
            v3 = v18;
            v6 = v47;
            v9 = v55;
            goto LABEL_101;
          }

          v56 = result;
          v57 = *(v4 + 75);
          v58 = *(v87 + v57);
          v59 = *(v87 + v57);
          if ((v57 + 1) == 8)
          {
            v60 = 0;
          }

          else
          {
            v60 = v57 + 1;
          }

          *(v4 + 75) = v60;
          v61 = v93;
          *(v88 + 4 * v58) = v93;
          v92 = v58;
          result = sub_1952567D8(v4, v59);
          v9 = v61;
          v10 = ((v58 << 16) + 15204352) | (v56 << 8) | (v10 - v61) | 0x80;
          v37 = 3;
        }

        else
        {
          v10 += (v92 << 8) + 57344;
LABEL_79:
          v37 = 2;
        }

        v8 = 1;
      }

      else
      {
        v8 = 0;
        v37 = 2;
      }

      v3 = v18;
      v6 = v47;
      goto LABEL_101;
    }

    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_10:
    if (v3 >= v5)
    {
LABEL_149:
      v80 = v89;
      v79 = v90;
      goto LABEL_176;
    }

    v13 = *v3;
    if ((v13 & 0xFC00) != 0xDC00)
    {
      goto LABEL_173;
    }

    ++v3;
    v14 = (v10 << 10) - 56613888 + v13;
    v15 = v13 - v9;
    if ((v14 - v9) < 0x80)
    {
LABEL_13:
      *v6 = v15 | 0x80;
      goto LABEL_88;
    }

    v16 = 0;
    while (1)
    {
      v17 = v4 + 4 * v16;
      if ((v14 - *(v17 + 32)) < 0x80)
      {
        break;
      }

      if (++v16 == 8)
      {
        goto LABEL_29;
      }
    }

    if ((v16 & 0x80) != 0)
    {
LABEL_29:
      v29 = v9;
      v30 = v8;
      result = sub_195256848((v10 << 10) - 56613888 + v13, &v93);
      if ((result & 0x80000000) != 0)
      {
        v8 = 0;
        *v6++ = 15;
        --v7;
        v37 = 4;
        v10 = v13 | (v10 << 16);
        v9 = v29;
      }

      else
      {
        v31 = result;
        v32 = *(v4 + 75);
        v33 = *(v87 + v32);
        v34 = *(v87 + v32);
        if ((v32 + 1) == 8)
        {
          v35 = 0;
        }

        else
        {
          v35 = v32 + 1;
        }

        *(v4 + 75) = v35;
        v36 = v93;
        *(v88 + 4 * v33) = v93;
        v92 = v33;
        result = sub_1952567D8(v4, v34);
        v9 = v36;
        v10 = ((v31 << 8) - 0x20000) | (v33 << 21) | (v14 - v36) | 0xB000080;
        v37 = 4;
        v8 = v30;
      }

      v5 = v91;
      goto LABEL_101;
    }

    v24 = v16;
    v25 = *(v17 + 32);
    v26 = v8;
    result = sub_1952567D8(v4, v16);
    v9 = v25;
    v5 = v91;
    v8 = v26;
    v92 = v24;
    v27 = (v24 + 16);
    v28 = v14 - v9;
LABEL_28:
    v10 = v28 | (v27 << 8) | 0x80;
LABEL_100:
    v37 = 2;
LABEL_101:
    if (v7 < v37)
    {
      goto LABEL_144;
    }

    if (v37 != 2)
    {
      if (v37 != 3)
      {
        *v6++ = HIBYTE(v10);
      }

      *v6++ = BYTE2(v10);
    }

    *v6 = bswap32(v10) >> 16;
    v6 += 2;
    v7 -= v37;
    v10 = 0;
  }

  while (1)
  {
    if (v3 >= v5)
    {
      goto LABEL_149;
    }

    if (v7 < 1)
    {
      goto LABEL_150;
    }

    v62 = *v3++;
    v10 = v62;
    if (v62 - 32 <= 0x5F)
    {
      goto LABEL_94;
    }

    if (v10 > 0x1F)
    {
      break;
    }

    if (((1 << v10) & 0x2601) == 0)
    {
      v10 |= 0x100u;
      goto LABEL_100;
    }

LABEL_94:
    *v6 = v10;
LABEL_88:
    v10 = 0;
    ++v6;
    --v7;
  }

  v15 = v10 - v9;
  if (v10 - v9 < 0x80)
  {
    goto LABEL_13;
  }

  if ((v10 & 0xF800) != 0xD800)
  {
    if (v10 > 0x9F)
    {
      if (v10 == 65279 || v10 >> 4 > 0xFFE)
      {
        v10 |= 0xE0000u;
LABEL_116:
        v37 = 3;
      }

      else
      {
        v63 = 0;
        while (1)
        {
          v64 = v4 + 4 * v63;
          if (v10 - *(v64 + 32) < 0x80)
          {
            break;
          }

          if (++v63 == 8)
          {
            goto LABEL_121;
          }
        }

        if ((v63 & 0x80) == 0)
        {
          v65 = v63;
          if (v3 < v5)
          {
            v66 = *(v64 + 32);
            v67 = *v3;
            if (v66 + 127 < v67 || v66 > v67 && (v67 > 0x7F || v67 <= 0x1F && ((1 << v67) & 0x2601) == 0))
            {
              v27 = (v65 + 1);
              v28 = v10 - v66;
              goto LABEL_28;
            }
          }

          v76 = *(v64 + 32);
          v77 = v8;
          result = sub_1952567D8(v4, v65);
          v9 = v76;
          v5 = v91;
          v8 = v77;
          v10 = (v10 - v9) | ((v65 + 16) << 8) | 0x80;
          v37 = 2;
          v92 = v65;
          goto LABEL_101;
        }

LABEL_121:
        v68 = 0;
        while (v10 - dword_19547B600[v68] >= 0x80)
        {
          if (++v68 == 8)
          {
            goto LABEL_127;
          }
        }

        if ((v68 & 0x80) == 0)
        {
          v10 = (v10 - dword_19547B600[v68]) | ((v68 + 1) << 8);
          goto LABEL_100;
        }

LABEL_127:
        v69 = v9;
        v85 = v8;
        result = sub_195256848(v10, &v93);
        if ((result & 0x80000000) != 0)
        {
          v9 = v69;
          if ((v10 - 13312) >> 10 <= 0x28 && (v3 >= v5 || (*v3 - 13312) >> 10 <= 0x28))
          {
            v8 = 0;
            v10 |= 0xF0000u;
            goto LABEL_116;
          }

          v10 |= 0xE0000u;
        }

        else
        {
          v70 = result;
          v71 = *(v4 + 75);
          v72 = *(v87 + v71);
          v73 = *(v87 + v71);
          if ((v71 + 1) == 8)
          {
            v74 = 0;
          }

          else
          {
            v74 = v71 + 1;
          }

          *(v4 + 75) = v74;
          v75 = v93;
          *(v88 + 4 * v72) = v93;
          v92 = v72;
          result = sub_1952567D8(v4, v73);
          v9 = v75;
          v10 = ((v72 << 16) + 1572864) | (v70 << 8) | (v10 - v75) | 0x80;
        }

        v37 = 3;
        v8 = v85;
      }
    }

    else
    {
      v37 = 2;
      v10 = v10 & 0x7F | 0x200;
    }

    goto LABEL_101;
  }

  if ((v10 & 0x400) == 0)
  {
    goto LABEL_10;
  }

LABEL_173:
  v83 = 12;
LABEL_174:
  v80 = v89;
  v79 = v90;
  v82 = a2;
LABEL_175:
  *v82 = v83;
LABEL_176:
  *(v4 + 72) = v8;
  *(v4 + 73) = v92;
  *(v80 + 21) = v10;
  *(v79 + 16) = v3;
  *(v79 + 32) = v6;
  return result;
}

uint64_t sub_195255B28(uint64_t result, int *a2)
{
  v2 = 0;
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(v3 + 16);
  v6 = *(result + 24);
  v7 = *(result + 32);
  v8 = *(result + 40) - v7;
  v9 = *(v5 + 73);
  v109 = v5 + 32;
  v110 = result;
  v10 = *(v5 + 32 + 4 * v9);
  v115 = v3;
  v116 = v6;
  v11 = *(v3 + 84);
  v118 = 0;
  v12 = *(result + 48);
  if (v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 0;
  }

  v108 = v5 + 76;
  v14 = *(v5 + 72);
  v117 = v9;
  while (1)
  {
    if (v11)
    {
      v15 = v8 <= 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = !v15;
    if (!v14)
    {
      if (v16)
      {
        v19 = v4;
        v17 = v7;
        v20 = v2;
      }

      else
      {
        if (v4 >= v6)
        {
          LOBYTE(v14) = 0;
          break;
        }

        if (v8 < 1)
        {
          LOBYTE(v14) = 0;
          v102 = 15;
          goto LABEL_161;
        }

        v45 = 0;
        v20 = v2 + 1;
        v46 = 2;
        while (1)
        {
          v11 = v4[v45 / 2];
          if ((v11 - 13312) >> 10 > 0x28)
          {
            break;
          }

          if (v8 - 1 == v45)
          {
            LOBYTE(v14) = 0;
            v4 = (v4 + v45 + 2);
            v17 = &v7[v45];
            v8 = 1;
            v37 = 2;
            goto LABEL_163;
          }

          v47 = &v7[v45];
          *v47 = BYTE1(v11);
          v47[1] = v11;
          if (v12)
          {
            *v12 = v13;
            v12[1] = v13;
            v12 += 2;
          }

          if (&v4[v45 / 2 + 1] >= v6)
          {
            LOBYTE(v14) = 0;
            v11 = 0;
            v4 = (v4 + v45 + 2);
            v7 += v45 + 2;
            goto LABEL_188;
          }

          v45 += 2;
          ++v20;
          v46 -= 2;
          v13 = ++v2;
          if (v8 + v46 < 3)
          {
            LOBYTE(v14) = 0;
            v11 = 0;
            v4 = (v4 + v45);
            v17 = &v7[v45];
            goto LABEL_185;
          }
        }

        v19 = &v4[v45 / 2 + 1];
        v17 = &v7[v45];
        v8 -= v45;
        if ((v11 - 13312) >> 8 >= 0xBF)
        {
          if (v19 < v6 && (*v19 - 13312) >> 10 <= 0x28)
          {
            v14 = 0;
LABEL_108:
            v37 = 2;
            goto LABEL_119;
          }

          if (v11 - 48 < 0xA || v11 - 97 < 0x1A || v11 - 65 < 0x1A)
          {
            v11 += (v117 << 8) + 57344;
          }

          else
          {
            v59 = 0;
            v60 = 57472;
            while (1)
            {
              v61 = v5 + 4 * v59;
              if (v11 - *(v61 + 32) < 0x80)
              {
                break;
              }

              ++v59;
              v60 += 256;
              if (v59 == 8)
              {
                goto LABEL_85;
              }
            }

            if ((v59 & 0x80) != 0)
            {
LABEL_85:
              v112 = v19;
              v67 = v8;
              v68 = v10;
              result = sub_195256848(v11, &v118);
              if ((result & 0x80000000) != 0)
              {
                v14 = 0;
                v37 = 2;
                v6 = v116;
                v10 = v68;
              }

              else
              {
                v69 = result;
                v70 = *(v5 + 75);
                v71 = *(v108 + v70);
                v72 = *(v108 + v70);
                if ((v70 + 1) == 8)
                {
                  v73 = 0;
                }

                else
                {
                  v73 = v70 + 1;
                }

                *(v5 + 75) = v73;
                v74 = v118;
                *(v109 + 4 * v71) = v118;
                v117 = v71;
                result = sub_1952567D8(v5, v72);
                v10 = v74;
                v11 = ((v71 << 16) + 15204352) | (v69 << 8) | (v11 - v74) | 0x80;
                v37 = 3;
                v14 = 1;
                v6 = v116;
              }

              v8 = v67;
LABEL_37:
              v19 = v112;
              goto LABEL_119;
            }

            v62 = *(v61 + 32);
            v63 = v5;
            v117 = v59;
            v64 = v8;
            v65 = v5;
            v66 = v19;
            result = sub_1952567D8(v63, v59);
            v19 = v66;
            v5 = v65;
            v8 = v64;
            v10 = v62;
            v6 = v116;
            v11 = v60 | (v11 - v62);
          }

          v37 = 2;
          v14 = 1;
          goto LABEL_119;
        }

        if (v11 >> 13 > 6)
        {
          v14 = 0;
          v11 |= 0xF00000u;
          goto LABEL_118;
        }

        if ((v11 & 0x400) != 0)
        {
          LOBYTE(v14) = 0;
          v4 = (v4 + v45 + 2);
          v17 = &v7[v45];
          v102 = 12;
          goto LABEL_186;
        }
      }

      if (v19 >= v6)
      {
        LOBYTE(v14) = 0;
        v4 = v19;
        goto LABEL_187;
      }

      v25 = *v19;
      if ((v25 & 0xFC00) != 0xDC00)
      {
        LOBYTE(v14) = 0;
LABEL_191:
        v102 = 12;
        v4 = v19;
        goto LABEL_186;
      }

      v26 = v8;
      v27 = 0;
      ++v19;
      ++v20;
      v28 = v25 + (v11 << 10) - 56613888;
      v29 = 57472;
      while (1)
      {
        v30 = v5 + 4 * v27;
        if (v28 - *(v30 + 32) < 0x80)
        {
          break;
        }

        ++v27;
        v29 += 256;
        if (v27 == 8)
        {
          goto LABEL_55;
        }
      }

      if ((v27 & 0x80) != 0 || v19 < v6 && (*v19 - 13312) >> 10 < 0x29)
      {
LABEL_55:
        if (v19 >= v6 || *v19 != v11 || (v49 = v10, v113 = v19, result = sub_195256848(v28, &v118), v19 = v113, v10 = v49, v6 = v116, (result & 0x80000000) != 0))
        {
          v14 = 0;
          v11 = v25 | (v11 << 16);
          v37 = 4;
LABEL_69:
          v8 = v26;
          goto LABEL_119;
        }

        v50 = result;
        v51 = *(v5 + 75);
        v52 = *(v108 + v51);
        if ((v51 + 1) == 8)
        {
          v53 = 0;
        }

        else
        {
          v53 = v51 + 1;
        }

        *(v5 + 75) = v53;
        v54 = v118;
        *(v109 + 4 * v52) = v118;
        result = sub_1952567D8(v5, v52);
        v19 = v113;
        v10 = v54;
        v6 = v116;
        v117 = v52;
        v11 = ((v50 << 8) + 268304384) | (v52 << 21) | (v28 - v54) | 0xF1000080;
        v37 = 4;
      }

      else
      {
        v55 = *(v30 + 32);
        v56 = v5;
        v117 = v27;
        v57 = v5;
        v58 = v19;
        result = sub_1952567D8(v56, v27);
        v19 = v58;
        v5 = v57;
        v10 = v55;
        v6 = v116;
        v11 = v29 | (v28 - v55);
        v37 = 2;
      }

      v14 = 1;
      goto LABEL_69;
    }

    v17 = v7;
    if (v16)
    {
      goto LABEL_13;
    }

    while (1)
    {
      if (v4 >= v6)
      {
        goto LABEL_187;
      }

      if (v8 < 1)
      {
        goto LABEL_185;
      }

      v75 = *v4++;
      v11 = v75;
      v19 = v4;
      v20 = v2 + 1;
      if (v75 - 32 <= 0x5F)
      {
        goto LABEL_98;
      }

      if (v11 <= 0x1F)
      {
        if (((1 << v11) & 0x2601) == 0)
        {
          v11 |= 0x100u;
          goto LABEL_108;
        }

LABEL_98:
        *v17 = v11;
        if (v12)
        {
          goto LABEL_99;
        }

        goto LABEL_103;
      }

      if (v11 - v10 > 0x7F)
      {
        break;
      }

      *v17 = (v11 - v10) | 0x80;
      if (v12)
      {
LABEL_99:
        *v12 = v13;
        v22 = v12 + 1;
LABEL_100:
        result = v22;
        goto LABEL_92;
      }

LABEL_103:
      result = 0;
LABEL_92:
      v11 = 0;
      ++v17;
      --v8;
      v4 = v19;
      v12 = result;
      v13 = v20;
      v2 = v20;
    }

    if ((v11 & 0xF800) != 0xD800)
    {
      if (v11 <= 0x9F)
      {
        v37 = 2;
        v11 = v11 & 0x7F | 0x200;
        goto LABEL_119;
      }

      if (v11 != 65279 && v11 >> 4 <= 0xFFE)
      {
        v76 = 0;
        while (1)
        {
          v77 = v5 + 4 * v76;
          if (v11 - *(v77 + 32) < 0x80)
          {
            break;
          }

          if (++v76 == 8)
          {
            goto LABEL_136;
          }
        }

        if ((v76 & 0x80) != 0)
        {
LABEL_136:
          v83 = 0;
          while (v11 - dword_19547B600[v83] >= 0x80)
          {
            if (++v83 == 8)
            {
              goto LABEL_142;
            }
          }

          if ((v83 & 0x80) == 0)
          {
            v11 = (v11 - dword_19547B600[v83]) | ((v83 + 1) << 8);
            goto LABEL_108;
          }

LABEL_142:
          v84 = v4;
          v106 = v8;
          v85 = v10;
          v104 = v14;
          result = sub_195256848(v11, &v118);
          if ((result & 0x80000000) != 0)
          {
            v6 = v116;
            v10 = v85;
            v19 = v4;
            if ((v11 - 13312) >> 10 > 0x28 || v4 < v116 && (*v4 - 13312) >> 10 > 0x28)
            {
              v11 |= 0xE0000u;
              v37 = 3;
              v14 = v104;
            }

            else
            {
              v14 = 0;
              v11 |= 0xF0000u;
              v37 = 3;
            }

            v8 = v106;
          }

          else
          {
            v86 = result;
            v87 = *(v5 + 75);
            v88 = *(v108 + v87);
            v89 = *(v108 + v87);
            if ((v87 + 1) == 8)
            {
              v90 = 0;
            }

            else
            {
              v90 = v87 + 1;
            }

            *(v5 + 75) = v90;
            v91 = v118;
            *(v109 + 4 * v88) = v118;
            v117 = v88;
            result = sub_1952567D8(v5, v89);
            v10 = v91;
            v11 = ((v88 << 16) + 1572864) | (v86 << 8) | (v11 - v91) | 0x80;
            v37 = 3;
            v6 = v116;
            v14 = v104;
            v8 = v106;
            v19 = v84;
          }

          goto LABEL_119;
        }

        v80 = v76;
        if (v4 < v6)
        {
          v81 = *(v77 + 32);
          v82 = *v4;
          if (v81 + 127 < v82 || v81 > v82 && (v82 > 0x7F || v82 <= 0x1F && ((1 << v82) & 0x2601) == 0))
          {
            v11 = (v11 - v81) | ((v80 + 1) << 8) | 0x80;
            goto LABEL_108;
          }
        }

        v114 = *(v77 + 32);
        v92 = v5;
        v93 = v80;
        v94 = v14;
        v95 = v8;
        v96 = v5;
        v97 = v19;
        result = sub_1952567D8(v92, v80);
        v19 = v97;
        v5 = v96;
        v8 = v95;
        v10 = v114;
        v14 = v94;
        v6 = v116;
        v11 = (v11 - v114) | ((v93 + 16) << 8) | 0x80;
        v37 = 2;
        v117 = v93;
        goto LABEL_119;
      }

      v11 |= 0xE0000u;
LABEL_118:
      v37 = 3;
      goto LABEL_119;
    }

    if ((v11 & 0x400) != 0)
    {
      goto LABEL_191;
    }

    v7 = v17;
    ++v2;
LABEL_13:
    v103 = v14;
    v105 = v8;
    if (v4 >= v6)
    {
      break;
    }

    v18 = *v4;
    if ((v18 & 0xFC00) != 0xDC00)
    {
      v102 = 12;
LABEL_161:
      v17 = v7;
      goto LABEL_186;
    }

    v19 = v4 + 1;
    v20 = v2 + 1;
    v21 = (v11 << 10) - 56613888 + v18;
    if ((v21 - v10) < 0x80)
    {
      *v7 = (v18 - v10) | 0x80;
      if (!v12)
      {
        result = 0;
        v17 = v7;
        goto LABEL_92;
      }

      *v12 = v13;
      v22 = v12 + 1;
      v17 = v7;
      goto LABEL_100;
    }

    v23 = 0;
    while (1)
    {
      v24 = v5 + 4 * v23;
      if ((v21 - *(v24 + 32)) < 0x80)
      {
        break;
      }

      if (++v23 == 8)
      {
        goto LABEL_32;
      }
    }

    if ((v23 & 0x80) == 0)
    {
      v31 = v23;
      v111 = *(v24 + 32);
      v32 = v5;
      v33 = v14;
      v34 = v8;
      v35 = v5;
      v36 = v19;
      result = sub_1952567D8(v32, v23);
      v19 = v36;
      v5 = v35;
      v8 = v34;
      v10 = v111;
      v14 = v33;
      v6 = v116;
      v117 = v31;
      v11 = (v21 - v111) | ((v31 + 16) << 8) | 0x80;
      v37 = 2;
      v17 = v7;
      goto LABEL_119;
    }

LABEL_32:
    v112 = v4 + 1;
    v38 = v10;
    result = sub_195256848((v11 << 10) - 56613888 + v18, &v118);
    if ((result & 0x80000000) == 0)
    {
      v39 = result;
      v40 = *(v5 + 75);
      v41 = *(v108 + v40);
      v42 = *(v108 + v40);
      if ((v40 + 1) == 8)
      {
        v43 = 0;
      }

      else
      {
        v43 = v40 + 1;
      }

      *(v5 + 75) = v43;
      v44 = v118;
      *(v109 + 4 * v41) = v118;
      v117 = v41;
      result = sub_1952567D8(v5, v42);
      v10 = v44;
      v11 = ((v39 << 8) - 0x20000) | (v41 << 21) | (v21 - v44) | 0xB000080;
      v37 = 4;
      v17 = v7;
      v6 = v116;
      v14 = v103;
      v8 = v105;
      goto LABEL_37;
    }

    *v7 = 15;
    v48 = v7 + 1;
    if (v12)
    {
      *v12++ = v13;
    }

    v6 = v116;
    v10 = v38;
    v19 = v4 + 1;
    v14 = 0;
    v8 = v105 - 1;
    v37 = 4;
    v17 = v48;
    v11 = v18 | (v11 << 16);
LABEL_119:
    v78 = v8 - v37;
    if (v8 < v37)
    {
      v4 = v19;
LABEL_163:
      v98 = v37 - v8;
      v99 = (v115 + 104);
      if (v98 <= 2)
      {
        if (v98 != 1)
        {
          if (v98 != 2)
          {
LABEL_173:
            *(v115 + 91) = v98;
            v100 = v11 >> (8 * v98);
            switch(v8)
            {
              case 1:
                *v17++ = v100;
                if (!v12)
                {
                  goto LABEL_182;
                }

                break;
              case 2:
                *v17 = BYTE1(v100);
                v101 = v17 + 1;
                if (!v12)
                {
                  goto LABEL_184;
                }

LABEL_179:
                *v12++ = v13;
                *v101 = v100;
                v17 = v101 + 1;
                break;
              case 3:
                *v17 = BYTE2(v100);
                if (v12)
                {
                  *v12++ = v13;
                  v17[1] = BYTE1(v100);
                  v101 = v17 + 2;
                  goto LABEL_179;
                }

                v17[1] = BYTE1(v100);
                v101 = v17 + 2;
LABEL_184:
                v12 = 0;
                v11 = 0;
                *v101 = v100;
                v17 = v101 + 1;
LABEL_185:
                v102 = 15;
LABEL_186:
                *a2 = v102;
LABEL_187:
                v7 = v17;
                goto LABEL_188;
              default:
LABEL_182:
                v11 = 0;
                goto LABEL_185;
            }

            v11 = 0;
            *v12++ = v13;
            goto LABEL_185;
          }

LABEL_171:
          *v99++ = BYTE1(v11);
        }

        *v99 = v11;
        goto LABEL_173;
      }

      if (v98 != 3)
      {
        if (v98 != 4)
        {
          goto LABEL_173;
        }

        v99 = (v115 + 105);
        *(v115 + 104) = HIBYTE(v11);
      }

      *v99++ = BYTE2(v11);
      goto LABEL_171;
    }

    if (v12)
    {
      if (v37 != 2)
      {
        if (v37 != 3)
        {
          *v17++ = HIBYTE(v11);
          *v12++ = v13;
        }

        *v17++ = BYTE2(v11);
        *v12++ = v13;
      }

      *v17 = BYTE1(v11);
      *v12 = v13;
      v17[1] = v11;
      v79 = v12 + 2;
      v12[1] = v13;
    }

    else
    {
      if (v37 != 2)
      {
        if (v37 != 3)
        {
          *v17++ = HIBYTE(v11);
        }

        *v17++ = BYTE2(v11);
      }

      v79 = 0;
      *v17 = bswap32(v11) >> 16;
    }

    v11 = 0;
    v7 = v17 + 2;
    v4 = v19;
    v8 = v78;
    v12 = v79;
    v13 = v20;
    v2 = v20;
  }

LABEL_188:
  *(v5 + 72) = v14;
  *(v5 + 73) = v117;
  *(v115 + 84) = v11;
  v110[2] = v4;
  v110[4] = v7;
  v110[6] = v12;
  return result;
}

const char *sub_19525674C(uint64_t a1)
{
  if (*(*(a1 + 16) + 74) == 1)
  {
    return "SCSU,locale=ja";
  }

  else
  {
    return "SCSU";
  }
}

uint64_t sub_195256770(uint64_t a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (*a3)
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 16);
    *(a2 + 288) = *v4;
    *(a2 + 304) = v5;
    v6 = *(v4 + 32);
    v7 = *(v4 + 48);
    v8 = *(v4 + 64);
    *(a2 + 368) = *(v4 + 80);
    *(a2 + 336) = v7;
    *(a2 + 352) = v8;
    *(a2 + 320) = v6;
    *(a2 + 16) = a2 + 288;
    *(a2 + 62) = 1;
  }

  else
  {
    a2 = 0;
    *a3 = 376;
  }

  return a2;
}

uint64_t sub_1952567D8(uint64_t result, unsigned __int8 a2)
{
  v2 = result + 76;
  v3 = *(result + 75);
  do
  {
    v4 = __OFSUB__(v3--, 1);
    if (v3 < 0 != v4)
    {
      v3 = 7;
    }
  }

  while (*(v2 + v3) != a2);
  if (v3 == 7)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 + 1;
  }

  while (v5 != *(result + 75))
  {
    v6 = v3;
    v3 = v5;
    *(v2 + v6) = *(v2 + v5);
    if (v5 == 7)
    {
      v5 = 0;
    }

    else
    {
      ++v5;
    }
  }

  *(v2 + v3) = a2;
  return result;
}

uint64_t sub_195256848(unsigned int a1, unsigned int *a2)
{
  for (i = 0; i != 7; ++i)
  {
    v3 = dword_19547B620[i];
    if (a1 - v3 <= 0x7F)
    {
      *a2 = v3;
      return (i + 249);
    }
  }

  if (a1 < 0x80)
  {
    return 0xFFFFFFFFLL;
  }

  if (a1 - 118784 < 0x3000 || a1 >> 10 < 0xD || (a1 & 0xFFFFC000) == 0x10000)
  {
    *a2 = a1 & 0x1FF80;
    return a1 >> 7;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
    if (a1 != 65279 && (a1 - 57344) >> 4 <= 0x1FE)
    {
      *a2 = a1 & 0xFF80;
      return (a1 - 44032) >> 7;
    }
  }

  return v4;
}

uint64_t ucnvsel_open(uint64_t a1, int a2, icu::UnicodeSet *a3, uint64_t a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v7 = a2;
  if (a2 < 0 || (v10 = a1) == 0 && a2)
  {
    v5 = 0;
    v11 = 1;
LABEL_7:
    *a5 = v11;
    return v5;
  }

  v13 = malloc_type_malloc(0x38uLL, 0x10B0040EFBCB93DuLL);
  v5 = v13;
  if (!v13)
  {
    v11 = 7;
    goto LABEL_7;
  }

  v13[6] = 0;
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *v13 = 0u;
  if (!v7)
  {
    v7 = ucnv_countAvailable();
    v10 = 0;
  }

  v14 = malloc_type_malloc(8 * v7, 0x10040436913F5uLL);
  *(v5 + 24) = v14;
  if (!v14)
  {
    goto LABEL_41;
  }

  *v14 = 0;
  if (v7 < 1)
  {
    v16 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    do
    {
      if (v10)
      {
        AvailableName = *(v10 + 8 * v15);
      }

      else
      {
        AvailableName = ucnv_getAvailableName(v15);
      }

      v16 += strlen(AvailableName) + 1;
      ++v15;
    }

    while (v7 != v15);
  }

  v30 = v16 & 3;
  v18 = (v16 & 3) != 0 ? 4 - (v16 & 3) : 0;
  v19 = v18 + v16;
  *(v5 + 36) = v19;
  v20 = malloc_type_malloc(v19, 0x100004077774924uLL);
  if (!v20)
  {
LABEL_41:
    *a5 = 7;
LABEL_42:
    ucnvsel_close(v5);
    return 0;
  }

  v21 = v20;
  v29 = 4 - (v16 & 3);
  if (v7 >= 1)
  {
    v22 = 0;
    v23 = *(v5 + 24);
    do
    {
      *(v23 + 8 * v22) = v21;
      v24 = *(*(v5 + 24) + 8 * v22);
      if (v10)
      {
        v25 = *(v10 + 8 * v22);
      }

      else
      {
        v25 = ucnv_getAvailableName(v22);
      }

      strcpy(v24, v25);
      v23 = *(v5 + 24);
      v21 += strlen(*(v23 + 8 * v22++)) + 1;
    }

    while (v7 != v22);
  }

  if (v30)
  {
    if (v29 >= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v29;
    }

    bzero(v21, (v29 - v26) + 1);
  }

  *(v5 + 49) = 1;
  *(v5 + 32) = v7;
  v27 = v7 + 31;
  if (v7 < -31)
  {
    v27 = v7 + 62;
  }

  v28 = upvec_open(v27 >> 5, a5);
  sub_195256BE0(v5, v28, a3, a4, a5);
  upvec_close(v28);
  if (*a5 >= 1)
  {
    goto LABEL_42;
  }

  return v5;
}

void ucnvsel_close(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 49))
    {
      free(**(a1 + 24));
    }

    free(*(a1 + 24));
    if (*(a1 + 48))
    {
      free(*(a1 + 8));
    }

    utrie2_close(*a1);
    free(*(a1 + 40));

    free(a1);
  }
}

_DWORD *sub_195256BE0(_DWORD *result, uint64_t a2, icu::UnicodeSet *a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    v8 = result;
    v9 = result[8];
    v10 = v9 + 31;
    if (v9 < -31)
    {
      v10 = v9 + 62;
    }

    v18 = v10 >> 5;
    if (v9 < 1)
    {
      goto LABEL_24;
    }

    v11 = 0;
    v12 = v18 <= 1 ? 1 : v10 >> 5;
    do
    {
      upvec_setValue(a2, 1114113, 1114113, v11++, -1, -1, a5);
    }

    while (v12 != v11);
    if (v8[8] < 1)
    {
LABEL_24:
      if (a3)
      {
        ItemCount = uset_getItemCount(a3);
        if (ItemCount >= 1)
        {
          v14 = ItemCount;
          v15 = 0;
          if (v18 <= 1)
          {
            v16 = 1;
          }

          else
          {
            v16 = v18;
          }

          do
          {
            v19 = 0;
            uset_getItem(a3, v15, &v19 + 1, &v19, 0, 0, a5);
            if (v9 >= 1)
            {
              for (i = 0; i != v16; ++i)
              {
                upvec_setValue(a2, SHIDWORD(v19), v19, i, -1, -1, a5);
              }
            }

            ++v15;
          }

          while (v15 != v14);
        }
      }

      *v8 = upvec_compactToUTrie2WithRowIndexes(a2, a5);
      result = upvec_cloneArray(a2, v8 + 4, 0, a5);
      *(v8 + 1) = result;
      v8[4] *= v18;
      *(v8 + 48) = 1;
    }

    else
    {
      result = ucnv_open(**(v8 + 3), a5);
      if (*a5 <= 0)
      {
        uset_open();
      }
    }
  }

  return result;
}

uint64_t ucnvsel_serialize(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 0 || a3 && (!a2 || (a2 & 3) != 0))
  {
    v4 = 0;
    v13 = 1;
LABEL_12:
    *a4 = v13;
    return v4;
  }

  v9 = utrie2_serialize(*a1, 0, 0, a4);
  v10 = v9;
  if (*a4 == 15 || *a4 <= 0)
  {
    *a4 = 0;
    v11 = *(a1 + 16);
    v12 = *(a1 + 36);
    v4 = (v9 + 4 * v11 + v12 + 96);
    if (v4 <= a3)
    {
      v15 = *(a1 + 32);
      *a2 = 668598304;
      *(a2 + 20) = 0;
      *(a2 + 4) = xmmword_19547B63C;
      *(a2 + 24) = 0;
      *(a2 + 32) = v9;
      *(a2 + 36) = v11;
      *(a2 + 40) = v15;
      *(a2 + 44) = v12;
      *(a2 + 48) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 76) = 0u;
      *(a2 + 92) = v9 + 4 * v11 + v12 + 64;
      v16 = (a2 + 96);
      utrie2_serialize(*a1, v16, v9, a4);
      v17 = &v16[v10];
      v18 = *(a1 + 16);
      memcpy(v17, *(a1 + 8), 4 * v18);
      memcpy(&v17[4 * v18], **(a1 + 24), *(a1 + 36));
      return v4;
    }

    v13 = 15;
    goto LABEL_12;
  }

  return 0;
}

_OWORD *ucnvsel_openFromSerialized(unsigned __int16 *a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = a1;
  if (!a1 || a2 < 1 || (a1 & 3) != 0)
  {
    v3 = 0;
    v7 = 1;
    goto LABEL_21;
  }

  if (a2 <= 0x1F)
  {
LABEL_7:
    v3 = 0;
    v7 = 8;
LABEL_21:
    *a3 = v7;
    return v3;
  }

  if (*(a1 + 2) != 218 || *(a1 + 3) != 39 || *(a1 + 12) != 67 || *(a1 + 13) != 83 || *(a1 + 14) != 101 || *(a1 + 15) != 108)
  {
    v3 = 0;
    v7 = 3;
    goto LABEL_21;
  }

  if (*(a1 + 16) != 1)
  {
    v3 = 0;
    v7 = 16;
    goto LABEL_21;
  }

  if (*(a1 + 8) || *(a1 + 9))
  {
    v8 = udata_openSwapperForInputData(a1, a2, 0, 0, a3);
    v12 = sub_195257328(v8, v5, 0xFFFFFFFFLL, 0, a3, v9, v10, v11);
    if (*a3 >= 1)
    {
      udata_closeSwapper(v8);
      return 0;
    }

    if (v12 > a2)
    {
      udata_closeSwapper(v8);
      goto LABEL_7;
    }

    v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
    if (!v14)
    {
      udata_closeSwapper(v8);
LABEL_40:
      v3 = 0;
      v7 = 7;
      goto LABEL_21;
    }

    v18 = v5;
    v5 = v14;
    sub_195257328(v8, v18, a2, v14, a3, v15, v16, v17);
    udata_closeSwapper(v8);
    if (*a3 >= 1)
    {
      free(v5);
      return 0;
    }

    v19 = v5;
  }

  else
  {
    v19 = 0;
  }

  v20 = *v5;
  if (v20 + 64 > a2 || (v29 = v19, v21 = (v5 + *v5), a2 - v20 < v21[15]))
  {
    free(v19);
    goto LABEL_7;
  }

  v3 = malloc_type_malloc(0x38uLL, 0x10B0040EFBCB93DuLL);
  v22 = malloc_type_malloc(8 * v21[2], 0x10040436913F5uLL);
  v23 = v22;
  if (!v3 || !v22)
  {
    free(v29);
    free(v3);
    free(v23);
    goto LABEL_40;
  }

  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  *(v3 + 6) = 0;
  *(v3 + 4) = v21[1];
  *(v3 + 3) = v22;
  *(v3 + 8) = v21[2];
  *(v3 + 9) = v21[3];
  *(v3 + 5) = v29;
  *v3 = utrie2_openFromSerialized(0, (v21 + 16), *v21, 0, a3);
  if (*a3 >= 1)
  {
    ucnvsel_close(v3);
    return 0;
  }

  v24 = v21 + *v21 + 64;
  *(v3 + 1) = v24;
  v25 = *(v3 + 8);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = (v24 + 4 * *(v3 + 4));
    v28 = 8 * v25;
    do
    {
      *(*(v3 + 3) + v26) = v27;
      v27 += strlen(v27) + 1;
      v26 += 8;
    }

    while (v28 != v26);
  }

  return v3;
}

uint64_t sub_195257328(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v44 = *MEMORY[0x1E69E9840];
  v13 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*a5 <= 0)
  {
    v21 = *(a2 + 12);
    if (__PAIR64__(*(a2 + 13), v21) == 0x5300000043 && *(a2 + 14) == 101 && *(a2 + 15) == 108)
    {
      if (*(a2 + 16) == 1)
      {
        v22 = v13;
        if (v10 < 0)
        {
          v23 = 0xFFFFFFFFLL;
        }

        else
        {
          v23 = (v10 - v13);
          if (v23 <= 63)
          {
            udata_printError(a1, "ucnvsel_swap(): too few bytes (%d after header) for UConverterSelector data\n", v14, v15, v16, v17, v18, v19, (v10 - v13));
LABEL_20:
            result = 0;
            v24 = 8;
            goto LABEL_11;
          }
        }

        v26 = 0;
        v27 = v13;
        *__n = 0u;
        v28 = a2 + v13;
        memset(v42, 0, sizeof(v42));
        do
        {
          *(v42 + v26) = udata_readInt32(a1, *(v28 + v26));
          v26 += 4;
        }

        while (v26 != 64);
        v35 = HIDWORD(__n[1]);
        if ((v23 & 0x80000000) == 0)
        {
          if (v23 < SHIDWORD(__n[1]))
          {
            udata_printError(a1, "ucnvsel_swap(): too few bytes (%d after header) for all of UConverterSelector data\n", v29, v30, v31, v32, v33, v34, v23);
            goto LABEL_20;
          }

          v36 = a4 + v22;
          if (a2 != a4)
          {
            memcpy(a4 + v27, (a2 + v22), SHIDWORD(__n[1]));
          }

          (*(a1 + 56))(a1, a2 + v22, 64, a4 + v27, a5);
          v37 = SLODWORD(v42[0]);
          utrie2_swap(a1, (v28 + 64), v42[0], (v36 + 64), a5);
          v38 = v37 + 64;
          v39 = 4 * SDWORD1(v42[0]);
          (*(a1 + 56))(a1, v28 + v38, v39, &v36[v38], a5);
          (*(a1 + 72))(a1, v28 + v39 + v38, HIDWORD(v42[0]), &v36[v39 + v38], a5);
        }

        result = (v35 + v22);
        goto LABEL_12;
      }

      udata_printError(a1, "ucnvsel_swap(): format version %02x is not supported\n", v14, v15, v16, v17, v18, v19, *(a2 + 16));
      result = 0;
      v24 = 16;
    }

    else
    {
      v40 = *(a2 + 14);
      v41 = *(a2 + 15);
      udata_printError(a1, "ucnvsel_swap(): data format %02x.%02x.%02x.%02x is not recognized as UConverterSelector data\n", v14, v15, v16, v17, v18, v19, v21);
      result = 0;
      v24 = 3;
    }

LABEL_11:
    *a5 = v24;
    goto LABEL_12;
  }

  result = 0;
LABEL_12:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

void *ucnvsel_selectForString(uint64_t a1, unsigned __int16 *a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!a1 || (v7 = a2) == 0 && a3)
  {
    v8 = 1;
LABEL_6:
    *a4 = v8;
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = v10 + 31;
  if (v10 < -31)
  {
    v11 = v10 + 62;
  }

  v12 = (v11 >> 5);
  v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
  if (!v13)
  {
    v8 = 7;
    goto LABEL_6;
  }

  v14 = v13;
  memset(v13, 255, 4 * v12);
  if (v7)
  {
    v15 = &v7[a3];
    if (a3 < 0)
    {
      v15 = 0;
    }

    while (1)
    {
      if (v15)
      {
        if (v7 == v15)
        {
          break;
        }

        v16 = *v7;
      }

      else
      {
        v16 = *v7;
        if (!*v7)
        {
          break;
        }
      }

      v17 = v7 + 1;
      if ((v16 & 0xFC00) == 0xD800)
      {
        if (v17 == v15)
        {
          v19 = *a1;
        }

        else
        {
          v18 = *v17;
          v19 = *a1;
          if ((v18 & 0xFC00) == 0xDC00)
          {
            v20 = v18 + (v16 << 10) - 56613888;
            v21 = *v19;
            if (v20 >= *(v19 + 11))
            {
              v22 = *(v19 + 12);
            }

            else
            {
              v22 = (v18 & 0x1F) + 4 * *(v21 + 2 * (((v20 >> 5) & 0x3F) + *(v21 + 2 * (v20 >> 11) + 4160)));
            }

            v17 = v7 + 2;
            v25 = (v21 + 2 * v22);
            goto LABEL_27;
          }
        }

        v23 = *v19;
        v24 = *(*v19 + 2 * (v16 >> 5) + 640);
      }

      else
      {
        v23 = **a1;
        v24 = *(v23 + 2 * (v16 >> 5));
      }

      v25 = (v23 + 2 * ((v16 & 0x1F) + 4 * v24));
LABEL_27:
      if (v10 >= 1)
      {
        v26 = 0;
        v27 = (*(a1 + 8) + 4 * *v25);
        v28 = v14;
        v29 = v12;
        do
        {
          v30 = *v27++;
          v31 = *v28 & v30;
          *v28++ = v31;
          v26 |= v31;
          --v29;
        }

        while (v29);
        v7 = v17;
        if (v26)
        {
          continue;
        }
      }

      break;
    }
  }

  return sub_1952577A0(a1, v14, a4);
}

void *sub_1952577A0(uint64_t a1, __int32 *a2, _DWORD *a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x1070040B0F4761BuLL);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
    *(v6 + 2) = 0;
    *(v6 + 2) = a1;
    v8 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    v9 = v8;
    if (v8)
    {
      v10 = *&off_1F0935598;
      *v8 = xmmword_1F0935588;
      v8[1] = v10;
      v11.i32[1] = DWORD1(xmmword_1F09355A8);
      v8[2] = xmmword_1F09355A8;
      *(v8 + 6) = off_1F09355B8;
      v12 = *(a1 + 32);
      v13 = v12 + 31;
      if (v12 < -31)
      {
        v13 = v12 + 62;
      }

      if (v12 >= 1)
      {
        v14 = 0;
        v15 = (v13 >> 5);
        v16 = a2;
        v17 = v15;
        do
        {
          v19 = *v16++;
          v18 = v19;
          if (v19)
          {
            v11.i32[0] = v18;
            v11 = vcnt_s8(v11);
            v14 += vaddlv_u8(v11);
          }

          --v17;
        }

        while (v17);
        if (v14 >= 1)
        {
          v20 = malloc_type_malloc(2 * (v14 & 0x7FFF), 0x1000040BDFB0063uLL);
          *v7 = v20;
          if (!v20)
          {
            *a3 = 7;
            v8 = v9;
            v9 = 0;
            goto LABEL_24;
          }

          v21 = 0;
          v22 = 0;
          v23 = *(a1 + 32);
          if (v15 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v15;
          }

          do
          {
            v25 = a2[v21];
            v26 = 32;
            do
            {
              if (v23 <= v22)
              {
                break;
              }

              if (v25)
              {
                v27 = v7[4];
                v7[4] = v27 + 1;
                v20[v27] = v22;
              }

              v25 >>= 1;
              ++v22;
              --v26;
            }

            while (v26);
            ++v21;
          }

          while (v21 != v24);
        }
      }

      v8 = 0;
      v9[1] = v7;
      v7 = 0;
    }

    else
    {
      *a3 = 7;
    }

LABEL_24:
    free(v8);
    goto LABEL_25;
  }

  v9 = 0;
  *a3 = 7;
LABEL_25:
  free(v7);
  free(a2);
  return v9;
}

void *ucnvsel_selectForUTF8(_DWORD *a1, char *a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!a1 || (v6 = a3, (v7 = a2) == 0) && a3)
  {
    v8 = 1;
LABEL_6:
    *a4 = v8;
    return 0;
  }

  v10 = a1[8];
  v11 = v10 + 31;
  if (v10 < -31)
  {
    v11 = v10 + 62;
  }

  v12 = (v11 >> 5);
  v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
  if (!v13)
  {
    v8 = 7;
    goto LABEL_6;
  }

  v14 = v13;
  memset(v13, 255, 4 * v12);
  if (v6 < 0)
  {
    v6 = strlen(v7);
  }

  if (v7)
  {
    v15 = &v7[v6];
    while (v7 != v15)
    {
      v17 = v7 + 1;
      v16 = *v7;
      v18 = *v7;
      if ((v16 & 0x80000000) == 0)
      {
        v19 = (*(*a1 + 8) + 2 * v18);
        ++v7;
        goto LABEL_30;
      }

      v20 = *v7;
      if ((v16 & 0xF0) == 0xE0)
      {
        if (v7 + 2) < v15 && ((a00000000000000[v18 & 0xF] >> (*v17 >> 5)))
        {
          v21 = v7[2] ^ 0x80;
          if (v21 <= 0x3F)
          {
            v7 += 3;
            v19 = (**a1 + 2 * ((v21 & 0x1F) + 4 * *(**a1 + 2 * (((2 * (*v17 & 0x3F)) | (v20 << 7)) + (v21 >> 5) - 28672))));
            goto LABEL_30;
          }
        }
      }

      else if ((v20 - 194) <= 0x1D && v17 < v15)
      {
        v23 = *v17 ^ 0x80;
        if (v23 <= 0x3F)
        {
          v7 += 2;
          v19 = (**a1 + 2 * *(**a1 + 2 * v18 + 3776) + 2 * v23);
          goto LABEL_30;
        }
      }

      Index = utrie2_internalU8NextIndex(*a1, v20, v7 + 1, v15);
      v7 = &v17[Index & 7];
      v19 = (**a1 + 2 * (Index >> 3));
LABEL_30:
      if (v10 >= 1)
      {
        v25 = 0;
        v26 = (*(a1 + 1) + 4 * *v19);
        v27 = v14;
        v28 = v12;
        do
        {
          v29 = *v26++;
          v30 = *v27 & v29;
          *v27++ = v30;
          v25 |= v30;
          --v28;
        }

        while (v28);
        if (v25)
        {
          continue;
        }
      }

      break;
    }
  }

  return sub_1952577A0(a1, v14, a4);
}

void sub_195257BC4(void ***a1)
{
  free(*a1[1]);
  free(a1[1]);

  free(a1);
}

uint64_t sub_195257C0C(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return *(*(a1 + 8) + 8);
  }

  else
  {
    return 0;
  }
}

const char *sub_195257C2C(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(v3 + 10);
  if (v4 >= *(v3 + 8))
  {
    return 0;
  }

  v5 = *(*(*(v3 + 16) + 24) + 8 * *(*v3 + 2 * *(v3 + 10)));
  *(v3 + 10) = v4 + 1;
  if (a2)
  {
    *a2 = strlen(v5);
  }

  return v5;
}

uint64_t sub_195257CA8(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    *(*(result + 8) + 10) = 0;
  }

  return result;
}

BOOL ucol_looksLikeCollationBinary(unsigned __int8 *a1, unsigned __int16 *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2 && a3 >= -1)
  {
    v12 = 0;
    udata_swapDataHeader(a1, a2, 0xFFFFFFFFLL, 0, &v12, a6, a7, a8);
    if (v12 <= 0 && *(a2 + 12) == 85 && *(a2 + 13) == 67 && *(a2 + 14) == 111 && *(a2 + 15) == 108)
    {
      return 1;
    }

    if (a3 < 0)
    {
      udata_readInt32(a1, *a2);
    }

    else if (a3 < 0xA8 || udata_readInt32(a1, *a2) > a3)
    {
      return 0;
    }

    if ((*(a1 + 2))(*(a2 + 4)) == 537069080 && *(a2 + 80) == 3 && *(a2 + 65) == *a1)
    {
      return *(a2 + 66) == a1[1];
    }

    return 0;
  }

  return result;
}

uint64_t ucol_swap(unsigned __int8 *a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v14 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (*a5 < 1)
  {
    v21 = *(a2 + 12);
    if (__PAIR64__(*(a2 + 13), v21) == 0x4300000055 && *(a2 + 14) == 111 && *(a2 + 15) == 108 && (v22 = *(a2 + 16), v22 - 3 < 3))
    {
      v23 = v14;
      v24 = (a2 + v14);
      if (a3 >= 0)
      {
        v25 = v14;
      }

      else
      {
        v25 = 0;
      }

      v26 = (a3 - v25);
      if (a4)
      {
        v27 = (a4 + v14);
      }

      else
      {
        v27 = 0;
      }

      if (v22 < 4)
      {
        v28 = sub_195257F68(a1, v24, v26, v27, a5, v18, v19, v20);
      }

      else
      {
        v28 = sub_1952583EC(a1, v24, v26, v27, a5, v18, v19, v20);
      }

      if (*a5 <= 0)
      {
        return (v28 + v23);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v31 = *(a2 + 16);
      v32 = *(a2 + 17);
      v29 = *(a2 + 14);
      v30 = *(a2 + 15);
      udata_printError(a1, "ucol_swap(): data format %02x.%02x.%02x.%02x (format version %02x.%02x) is not recognized as collation data\n", v15, v16, v17, v18, v19, v20, v21);
      result = 0;
      *a5 = 16;
    }
  }

  else
  {
    *a5 = 0;

    return sub_195257F68(a1, a2, a3, a4, a5, v18, v19, v20);
  }

  return result;
}

uint64_t sub_195257F68(unsigned __int8 *a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1 || !a2 || a3 < -1 || a3 >= 1 && !a4)
  {
    Int32 = 0;
    v14 = 1;
LABEL_9:
    *a5 = v14;
    return Int32;
  }

  if ((a3 & 0x80000000) != 0)
  {
    Int32 = udata_readInt32(a1, *a2);
  }

  else if (a3 < 0xA8 || (Int32 = udata_readInt32(a1, *a2), Int32 > a3))
  {
    udata_printError(a1, "ucol_swap(formatVersion=3): too few bytes (%d after header) for collation data\n", a3, a4, a5, a6, a7, a8, a3);
    Int32 = 0;
    v14 = 8;
    goto LABEL_9;
  }

  v16 = (*(a1 + 2))(a2[4]);
  if (v16 != 537069080 || *(a2 + 80) != 3)
  {
    v35 = *(a2 + 80);
    v36 = *(a2 + 81);
    udata_printError(a1, "ucol_swap(formatVersion=3): magic 0x%08x or format version %02x.%02x is not a collation binary\n", v17, v18, v19, v20, v21, v22, v16);
    Int32 = 0;
    v14 = 16;
    goto LABEL_9;
  }

  v23 = *(a2 + 65);
  if (v23 != *a1 || *(a2 + 66) != a1[1])
  {
    udata_printError(a1, "ucol_swap(formatVersion=3): endianness %d or charset %d does not match the swapper\n", v17, v18, v19, v20, v21, v22, v23);
    Int32 = 0;
    v14 = 3;
    goto LABEL_9;
  }

  if ((a3 & 0x80000000) == 0)
  {
    if (a2 != a4)
    {
      memcpy(a4, a2, Int32);
    }

    v24 = (*(a1 + 2))(a2[1]);
    v43 = (*(a1 + 2))(a2[2]);
    v44 = (*(a1 + 2))(a2[3]);
    v25 = (*(a1 + 2))(a2[5]);
    v26 = (*(a1 + 2))(a2[6]);
    v45 = (*(a1 + 2))(a2[7]);
    v37 = (*(a1 + 2))(a2[8]);
    v27 = (*(a1 + 2))(a2[9]);
    v39 = (*(a1 + 2))(a2[10]);
    (*(a1 + 2))(a2[11]);
    v38 = udata_readInt32(a1, a2[12]);
    v40 = udata_readInt32(a1, a2[15]);
    v41 = (*(a1 + 2))(a2[21]);
    v42 = (*(a1 + 2))(a2[22]);
    (*(a1 + 7))(a1, a2, 64, a4, a5);
    (*(a1 + 7))(a1, a2 + 21, 8, a4 + 84, a5);
    *(a4 + 65) = *(a1 + 1);
    if (v24)
    {
      (*(a1 + 7))(a1, a2 + v24, v26 - v24, a4 + v24, a5);
    }

    if (v25 && v26)
    {
      v28 = v45;
      if (!v45)
      {
        v28 = v25;
      }

      (*(a1 + 7))(a1, a2 + v26, v28 - v26, a4 + v26, a5);
    }

    if (v27)
    {
      (*(a1 + 6))(a1, a2 + v45, (2 * v27), a4 + v45, a5);
      (*(a1 + 7))(a1, a2 + v37, (4 * v27), a4 + v37, a5);
    }

    if (v25)
    {
      utrie_swap(a1, (a2 + v25), v39 - v25, a4 + v25, a5);
    }

    if (v38)
    {
      (*(a1 + 7))(a1, a2 + v39, (4 * v38), a4 + v39, a5);
    }

    if (v43)
    {
      (*(a1 + 7))(a1, a2 + v43, v44 - v43, a4 + v43, a5);
    }

    if (v40)
    {
      (*(a1 + 6))(a1, a2 + v44, 2 * v40 * *(a2 + 67), a4 + v44, a5);
    }

    if (v41)
    {
      v29 = (a2 + v41);
      v30 = (*(a1 + 1))(*v29);
      v31 = (*(a1 + 1))(v29[1]);
      (*(a1 + 6))(a1, v29, (4 * v30 + 2 * v31 + 4), a4 + v41, a5);
    }

    if (v42)
    {
      v32 = (a2 + v42);
      v33 = (*(a1 + 1))(*v32);
      v34 = (*(a1 + 1))(v32[1]);
      (*(a1 + 6))(a1, v32, (2 * (v34 + v33) + 4), a4 + v42, a5);
    }
  }

  return Int32;
}

uint64_t sub_1952583EC(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned int *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v8 = 0;
    goto LABEL_20;
  }

  memset(v45, 0, sizeof(v45));
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  if (a3 <= 7)
  {
    goto LABEL_18;
  }

  Int32 = udata_readInt32(a1, *a2);
  v15 = Int32;
  v41 = Int32;
  v16 = (4 * Int32);
  if ((a3 & 0x80000000) == 0 && v16 > a3)
  {
    goto LABEL_18;
  }

  v17 = (Int32 - 2);
  if (Int32 < 2)
  {
    goto LABEL_12;
  }

  v18 = &v42;
  v19 = a2 + 1;
  if (v17 >= 0x12)
  {
    v17 = 18;
  }

  v20 = v17 + 1;
  do
  {
    v21 = *v19++;
    *v18 = udata_readInt32(a1, v21);
    v18 = (v18 + 4);
    --v20;
  }

  while (v20);
  if (v15 >= 20)
  {
    v22 = &v45[6];
  }

  else
  {
LABEL_12:
    memset(&v41 + v15, 255, 4 * (19 - v15) + 4);
    v8 = v16;
    if (v15 < 6)
    {
      goto LABEL_16;
    }

    v22 = &v41 + (v15 - 1);
  }

  v8 = *v22;
LABEL_16:
  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (v8 > a3)
  {
LABEL_18:
    udata_printError(a1, "ucol_swap(formatVersion=4): too few bytes (%d after header) for collation data\n", a3, a4, a5, a6, a7, a8, a3);
    v23 = 8;
LABEL_19:
    v8 = 0;
    *a5 = v23;
    goto LABEL_20;
  }

  if (a2 != a4)
  {
    memcpy(a4, a2, v8);
  }

  (*(a1 + 56))(a1, a2, v16, a4, a5);
  if (DWORD1(v43) - v43 >= 1)
  {
    (*(a1 + 56))(a1, a2 + v43);
  }

  v31 = HIDWORD(v43);
  v32 = (HIDWORD(v43) - DWORD2(v43));
  if (v32 >= 1)
  {
    utrie2_swap(a1, (a2 + SDWORD2(v43)), v32, a4 + SDWORD2(v43), a5);
  }

  if (v44 - v31 >= 1)
  {
    udata_printError(a1, "ucol_swap(formatVersion=4): unknown data at IX_RESERVED8_OFFSET\n", v32, v26, v27, v28, v29, v30, (v44 - v31));
LABEL_47:
    v23 = 16;
    goto LABEL_19;
  }

  v33 = DWORD1(v44);
  v34 = (DWORD1(v44) - v44);
  if (v34 >= 1)
  {
    (*(a1 + 64))(a1, a2 + v44);
  }

  if (DWORD2(v44) - v33 >= 1)
  {
    udata_printError(a1, "ucol_swap(formatVersion=4): unknown data at IX_RESERVED10_OFFSET\n", v34, v26, v27, v28, v29, v30, (DWORD2(v44) - v33));
    goto LABEL_47;
  }

  v35 = SHIDWORD(v44);
  if (HIDWORD(v44) - DWORD2(v44) >= 1)
  {
    (*(a1 + 56))(a1, a2 + SDWORD2(v44));
  }

  v36 = v45[0];
  if (v45[0] - v35 >= 1)
  {
    (*(a1 + 56))(a1, a2 + v35);
  }

  v37 = v45[1];
  if (v45[1] - v36 >= 1)
  {
    (*(a1 + 48))(a1, a2 + v36);
  }

  v38 = v45[2];
  if (v45[2] - v37 >= 1)
  {
    (*(a1 + 48))(a1, a2 + v37);
  }

  v39 = v45[3];
  if (v45[3] - v38 >= 1)
  {
    (*(a1 + 48))(a1, a2 + v38);
  }

  v40 = (v45[4] - v39);
  if (v40 >= 1)
  {
    (*(a1 + 48))(a1, a2 + v39);
  }

  if (v45[6] - v45[5] >= 1)
  {
    udata_printError(a1, "ucol_swap(formatVersion=4): unknown data at IX_RESERVED18_OFFSET\n", v40, v26, v27, v28, v29, v30, (v45[6] - v45[5]));
    goto LABEL_47;
  }

LABEL_20:
  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ucol_swapInverseUCA(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a5 || *a5 > 0)
  {
    return 0;
  }

  v21 = *(a2 + 12);
  if (__PAIR64__(*(a2 + 13), v21) != 0x6E00000049 || *(a2 + 14) != 118 || *(a2 + 15) != 67 || *(a2 + 16) != 2 || !*(a2 + 17))
  {
    v35 = *(a2 + 16);
    v36 = *(a2 + 17);
    v33 = *(a2 + 14);
    v34 = *(a2 + 15);
    udata_printError(a1, "ucol_swapInverseUCA(): data format %02x.%02x.%02x.%02x (format version %02x.%02x) is not an inverse UCA collation file\n", v14, v15, v16, v17, v18, v19, v21);
    result = 0;
    v26 = 16;
    goto LABEL_14;
  }

  v22 = v13;
  v23 = (a2 + v13);
  if ((a3 & 0x80000000) != 0)
  {
    Int32 = udata_readInt32(a1, *v23);
  }

  else
  {
    v24 = a3 - v13;
    if (a3 - v13 < 32 || (v25 = udata_readInt32(a1, *v23), v24 < v25))
    {
      udata_printError(a1, "ucol_swapInverseUCA(): too few bytes (%d after header) for inverse UCA collation data\n", v14, v15, v16, v17, v18, v19, a3);
      result = 0;
      v26 = 8;
LABEL_14:
      *a5 = v26;
      return result;
    }

    Int32 = v25;
    v28 = a4 + v22;
    if (a2 != a4)
    {
      memcpy(a4 + v22, v23, v25);
    }

    v29 = (*(a1 + 16))(v23[1]);
    v30 = (*(a1 + 16))(v23[2]);
    v31 = (*(a1 + 16))(v23[3]);
    v32 = (*(a1 + 16))(v23[4]);
    (*(a1 + 56))(a1, v23, 20, v28, a5);
    (*(a1 + 56))(a1, v23 + v31, (12 * v29), &v28[v31], a5);
    (*(a1 + 48))(a1, v23 + v32, (2 * v30), &v28[v32], a5);
  }

  return (Int32 + v22);
}

_DWORD *ucptrie_openFromBinary(int a1, int a2, uint64_t a3, int a4, unsigned int *a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  if (a4 < 1 || (a2 - 3) < 0xFFFFFFFC || (a1 - 2) < 0xFFFFFFFD || (a3 & 3) != 0)
  {
    result = 0;
    v20 = 1;
LABEL_32:
    *a6 = v20;
    return result;
  }

  if (a4 <= 0xF)
  {
    goto LABEL_31;
  }

  if (*a3 != 1416784179)
  {
    goto LABEL_31;
  }

  v9 = *(a3 + 4);
  if ((v9 & 0x38) != 0)
  {
    goto LABEL_31;
  }

  v10 = v9 & 7;
  if (v10 > 2)
  {
    goto LABEL_31;
  }

  v11 = v9 >> 6;
  if (v11 >= 2)
  {
    goto LABEL_31;
  }

  v12 = a1 < 0 || v11 == a1;
  v13 = v12;
  v14 = v10 == a2 || a2 <= -1;
  if (!v14 || !v13 || ((v16 = *(a3 + 6), v17 = *(a3 + 8) | (v9 >> 12 << 16), v18 = 2 * v16 + 16, v10 == 1) ? (v19 = v18 + 4 * v17) : (v9 & 7) != 0 ? (v19 = v18 + v17) : (v19 = 2 * (v17 + v16) + 16), v19 > a4))
  {
LABEL_31:
    result = 0;
    v20 = 3;
    goto LABEL_32;
  }

  v27 = v19;
  v21 = *(a3 + 12);
  v22 = *(a3 + 14);
  v28 = *(a3 + 10);
  result = malloc_type_malloc(0x30uLL, 0x10D2040A3589E58uLL);
  if (!result)
  {
    v20 = 7;
    goto LABEL_32;
  }

  result[5] = v17;
  result[6] = v22 << 9;
  result[4] = v16;
  *(result + 14) = ((v22 << 9) + 4095) >> 12;
  v23 = v21 & 0xFFF0FFFF | (((v9 >> 8) & 0xF) << 16);
  *(result + 30) = v11;
  *(result + 31) = v10;
  result[8] = 0;
  *(result + 18) = 0;
  *(result + 19) = v28;
  *(result + 5) = v23;
  v24 = a3 + 16 + 2 * v16;
  v25 = v17 - 2;
  if (v23 < v17)
  {
    v25 = v23;
  }

  *result = a3 + 16;
  *(result + 1) = v24;
  if (v10 == 2)
  {
    v26 = *(v24 + v25);
  }

  else if (v10 == 1)
  {
    v26 = *(v24 + 4 * v25);
  }

  else
  {
    v26 = *(v24 + 2 * v25);
  }

  result[11] = v26;
  if (a5)
  {
    *a5 = v27;
  }

  return result;
}

uint64_t ucptrie_internalSmallIndex(uint64_t *a1, unsigned int a2)
{
  if (*(a1 + 30))
  {
    v2 = 64;
  }

  else
  {
    v2 = 1020;
  }

  v3 = v2 + (a2 >> 14);
  v4 = *a1;
  v5 = *(*a1 + 2 * (((a2 >> 9) & 0x1F) + *(*a1 + 2 * v3)));
  v6 = *(*a1 + 2 * (((a2 >> 9) & 0x1F) + *(*a1 + 2 * v3)));
  v7 = (a2 >> 4) & 0x1F;
  if (v5 < 0)
  {
    v9 = ((a2 >> 4) & 0x18 | (v7 >> 3)) + (v6 & 0x7FFF);
    v8 = (*(v4 + 2 * v9) << (2 * ((a2 >> 4) & 7) + 2)) & 0x30000 | *(v4 + 2 * (((a2 >> 4) & 7) + v9 + 1));
  }

  else
  {
    v8 = *(v4 + 2 * (v7 + v6));
  }

  return v8 + (a2 & 0xF);
}

uint64_t ucptrie_internalSmallU8Index(uint64_t a1, int a2, int a3, int a4)
{
  v4 = (a3 << 6) | (a2 << 12) | a4;
  if (v4 >= *(a1 + 24))
  {
    return (*(a1 + 20) - 2);
  }

  else
  {
    return ucptrie_internalSmallIndex(a1, v4);
  }
}

uint64_t ucptrie_internalU8PrevIndex(uint64_t a1, UChar32 c, const uint8_t *a3, uint64_t a4)
{
  if (a4 - a3 >= 8)
  {
    v5 = 7;
  }

  else
  {
    v5 = a4 - a3;
  }

  if (a4 - a3 >= 8)
  {
    v6 = (a4 - 7);
  }

  else
  {
    v6 = a3;
  }

  pi = v5;
  v7 = utf8_prevCharSafeBody(v6, 0, &pi, c, -1);
  v8 = v5 - pi;
  pi = v8;
  if (HIWORD(v7))
  {
    if (HIWORD(v7) > 0x10u)
    {
      v9 = *(a1 + 20) - 1;
    }

    else if (v7 >= *(a1 + 24))
    {
      v9 = *(a1 + 20) - 2;
    }

    else
    {
      v9 = ucptrie_internalSmallIndex(a1, v7);
    }
  }

  else
  {
    v9 = (v7 & 0x3F) + *(*a1 + 2 * (v7 >> 6));
  }

  return v8 | (8 * v9);
}

uint64_t ucptrie_get(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0x80)
  {
    if (*(a1 + 30))
    {
      v3 = 4095;
    }

    else
    {
      v3 = 0xFFFF;
    }

    if (v3 >= a2)
    {
      a2 = (a2 & 0x3F) + *(*a1 + 2 * (a2 >> 6));
    }

    else if (HIWORD(a2) > 0x10u)
    {
      a2 = *(a1 + 20) - 1;
    }

    else if (*(a1 + 24) <= a2)
    {
      a2 = *(a1 + 20) - 2;
    }

    else
    {
      a2 = ucptrie_internalSmallIndex(a1, a2);
    }
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 31);
  if (v5 == 2)
  {
    return *(v4 + a2);
  }

  if (v5 == 1)
  {
    return *(v4 + 4 * a2);
  }

  if (*(a1 + 31))
  {
    return 0xFFFFFFFFLL;
  }

  return *(v4 + 2 * a2);
}

uint64_t sub_195258E0C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, int *), uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, int *a8)
{
  v10 = a3;
  if (a4)
  {
    v20 = 0;
    if (a8)
    {
      v13 = a8;
    }

    else
    {
      v13 = &v20;
    }

    if (a4 == 2)
    {
      v14 = 57343;
    }

    else
    {
      v14 = 56319;
    }

    result = a1(a2, a3, a6, a7, v13);
    if (v14 >= v10 && result >= 55295)
    {
      if (*v13 == a5)
      {
        v16 = a1;
        if (result >= v14)
        {
          return result;
        }

        goto LABEL_19;
      }

      v16 = a1;
      if (v10 < 55296)
      {
        return 55295;
      }

      *v13 = a5;
      v17 = result > v14;
      result = v14;
      if (!v17)
      {
LABEL_19:
        v19 = 0;
        LODWORD(result) = v16(a2, (v14 + 1), a6, a7, &v19);
        if (v19 == a5)
        {
          return result;
        }

        else
        {
          return v14;
        }
      }
    }
  }

  else
  {

    return a1(a2, a3, a6, a7, a8);
  }

  return result;
}

uint64_t sub_195258F90(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, _DWORD *a5)
{
  if (WORD1(a2) > 0x10u)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a5;
  v7 = a2;
  v5 = 1114111;
  v9 = *(a1 + 31);
  if (*(a1 + 6) <= a2)
  {
    if (a5)
    {
      v42 = *(a1 + 5) - 2;
      v43 = a1[1];
      if (v9 == 2)
      {
        v44 = *(v43 + v42);
      }

      else if (v9 == 1)
      {
        v44 = *(v43 + 4 * v42);
      }

      else if (*(a1 + 31))
      {
        v44 = 0xFFFFFFFFLL;
      }

      else
      {
        v44 = *(v43 + 2 * v42);
      }

      if (a3)
      {
        LODWORD(v44) = a3(a4, v44);
      }

      *v6 = v44;
    }

    return v5;
  }

  v10 = *(a1 + 11);
  v60 = a3;
  if (a3)
  {
    v11 = a3(a4, v10);
    a3 = v60;
    v10 = v11;
  }

  v12 = 0;
  v13 = 0;
  v55 = *a1;
  v14 = -1;
  v15 = v10;
  v5 = v7;
  v16 = 0xFFFFFFFFLL;
  v56 = v10;
  v52 = v7;
  v51 = v6;
  while (1)
  {
    v17 = *(a1 + 30);
    if (v5 < 0x10000 && (v5 < 4096 || !*(a1 + 30)))
    {
      break;
    }

    if (*(a1 + 30))
    {
      v18 = 64;
    }

    else
    {
      v18 = 1020;
    }

    v19 = *(*a1 + 2 * (((v5 >> 9) & 0x1F) + *(*a1 + 2 * (v18 + (v5 >> 14)))));
    if (v16 == v19 && v5 - v7 >= 512)
    {
      v5 = (v5 + 512);
      v19 = v16;
    }

    else
    {
      if (v19 != *(a1 + 19))
      {
        v20 = (v5 >> 4) & 0x1F;
        v21 = 16;
        v57 = 32;
        v50 = v19;
        goto LABEL_25;
      }

      if (v12)
      {
        if (v10 != v15)
        {
          return (v5 - 1);
        }
      }

      else
      {
        v13 = *(a1 + 11);
        if (v6)
        {
          *v6 = v10;
        }
      }

      v14 = *(a1 + 10);
      v5 = (v5 & 0xFFFFFE00) + 512;
      v12 = 1;
      v15 = v10;
    }

LABEL_88:
    v16 = v19;
    if (v5 >= *(a1 + 6))
    {
      v39 = *(a1 + 5) - 2;
      v40 = a1[1];
      if (v9 == 2)
      {
        v41 = *(v40 + v39);
      }

      else if (v9 == 1)
      {
        v41 = *(v40 + 4 * v39);
      }

      else if (v9)
      {
        v41 = -1;
      }

      else
      {
        v41 = *(v40 + 2 * v39);
      }

      v46 = *(a1 + 11);
      if (v41 == v46)
      {
        v47 = v10;
      }

      else
      {
        v47 = v41;
      }

      if (a3 && v41 != v46)
      {
        v48 = v15;
        v47 = (a3)(a4);
        LODWORD(v15) = v48;
      }

      if (v47 == v15)
      {
        return 1114111;
      }

      else
      {
        return (v5 - 1);
      }
    }
  }

  v50 = v16;
  LODWORD(v19) = 0;
  v20 = v5 >> 6;
  v21 = 64;
  if (*(a1 + 30))
  {
    v22 = 64;
  }

  else
  {
    v22 = 1024;
  }

  v57 = v22;
LABEL_25:
  v54 = v19 & 0x7FFF;
  v23 = v21 - 1;
  v24 = v20;
  v58 = v19 >> 15;
  v53 = v55 + 2 * v19;
  while (1)
  {
    v25 = v58 ? (*(v55 + 2 * ((v24 & 0xFFFFFFF8) + v54 + (v24 >> 3))) << (2 * (v24 & 7) + 2)) & 0x30000 | *(v55 + 2 * ((v24 & 7) + (v24 & 0xFFFFFFF8) + v54 + (v24 >> 3) + 1)) : *(v53 + 2 * v24);
    if (v25 != v14 || v5 - v7 < v21)
    {
      break;
    }

    v5 = (v5 + v21);
LABEL_83:
    if (++v24 >= v57)
    {
      v19 = v50;
      goto LABEL_88;
    }
  }

  if (v25 == *(a1 + 10))
  {
    if (v12)
    {
      if (v10 != v15)
      {
        return (v5 - 1);
      }
    }

    else
    {
      v13 = *(a1 + 11);
      if (v6)
      {
        *v6 = v10;
      }
    }

    v5 = (v5 + v21) & -v21;
    v12 = 1;
    v15 = v10;
    v14 = v25;
    goto LABEL_83;
  }

  v27 = v25 + (v5 & v23);
  v28 = a1[1];
  if (v9 == 2)
  {
    v29 = *(v28 + v27);
    if (v12)
    {
      goto LABEL_49;
    }

    goto LABEL_57;
  }

  if (v9 == 1)
  {
    v29 = *(v28 + 4 * v27);
    if ((v12 & 1) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_49;
  }

  if (v9)
  {
    v29 = 0xFFFFFFFFLL;
    if (v12)
    {
      goto LABEL_49;
    }

LABEL_57:
    v31 = *(a1 + 11);
    if (v29 == v31)
    {
      v15 = v10;
    }

    else
    {
      v15 = v29;
    }

    if (a3 && v29 != v31)
    {
      v32 = v60(a4, v29);
      v10 = v56;
      a3 = v60;
      v15 = v32;
    }

    if (v6)
    {
      *v6 = v15;
    }

    goto LABEL_65;
  }

  v29 = *(v28 + 2 * v27);
  if ((v12 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_49:
  if (v29 == v13)
  {
    v29 = v13;
  }

  else
  {
    if (!a3)
    {
      return (v5 - 1);
    }

    v30 = v10;
    if (v29 != *(a1 + 11))
    {
      v49 = v15;
      v30 = v60(a4, v29);
      v15 = v49;
      v10 = v56;
      a3 = v60;
    }

    if (v30 != v15)
    {
      return (v5 - 1);
    }
  }

LABEL_65:
  if (((v5 + 1) & v23) == 0)
  {
    v12 = 1;
    v13 = v29;
    v5 = (v5 + 1);
    v14 = v25;
LABEL_82:
    LODWORD(v7) = v52;
    goto LABEL_83;
  }

  v33 = v27 + 1;
  while (1)
  {
    v34 = a1[1];
    if (v9 == 2)
    {
      v35 = *(v34 + v33);
    }

    else if (v9 == 1)
    {
      v35 = *(v34 + 4 * v33);
    }

    else
    {
      v35 = v9 ? 0xFFFFFFFFLL : *(v34 + 2 * v33);
    }

    if (v35 != v29)
    {
      if (!a3)
      {
        return v5;
      }

      v36 = v10;
      if (v35 != *(a1 + 11))
      {
        v37 = v15;
        v36 = v60(a4, v35);
        v15 = v37;
        v10 = v56;
        a3 = v60;
      }

      v29 = v35;
      if (v36 != v15)
      {
        return v5;
      }
    }

    v38 = v5 + 2;
    ++v33;
    v5 = (v5 + 1);
    if ((v38 & v23) == 0)
    {
      v5 = (v5 + 1);
      v12 = 1;
      v13 = v29;
      v14 = v25;
      v6 = v51;
      goto LABEL_82;
    }
  }
}

uint64_t ucptrie_toBinary(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a3 < 0 || ((v6 = *(a1 + 30), v7 = *(a1 + 31), v6 <= 1) ? (v8 = v7 > 2) : (v8 = 1), v8 || a3 && (!a2 || (a2 & 3) != 0)))
  {
    v4 = 0;
    v12 = 1;
LABEL_19:
    *a4 = v12;
    return v4;
  }

  v9 = *(a1 + 16);
  v10 = 2 * v9 + 16;
  if (v7 == 2)
  {
    v11 = *(a1 + 20);
    v4 = v11 + v10;
  }

  else
  {
    v11 = *(a1 + 20);
    if (v7 == 1)
    {
      v4 = v10 + 4 * v11;
    }

    else
    {
      v4 = 2 * (v11 + v9) + 16;
    }
  }

  if (v4 > a3)
  {
    v12 = 15;
    goto LABEL_19;
  }

  *a2 = 1416784179;
  v14 = *(a1 + 40);
  *(a2 + 4) = (v11 >> 4) & 0xF000 | v7 | (v6 << 6) | (v14 >> 8) & 0xF00;
  *(a2 + 6) = v9;
  *(a2 + 8) = v11;
  *(a2 + 10) = *(a1 + 38);
  *(a2 + 12) = v14;
  *(a2 + 14) = *(a1 + 24) >> 9;
  v15 = a2 + 16;
  memcpy((a2 + 16), *a1, 2 * v9);
  if (v7 == 2)
  {
    v16 = *(a1 + 8);
    v17 = *(a1 + 20);
  }

  else
  {
    v16 = *(a1 + 8);
    if (v7 == 1)
    {
      v17 = 4 * *(a1 + 20);
    }

    else
    {
      v17 = 2 * *(a1 + 20);
    }
  }

  memcpy((v15 + 2 * *(a1 + 16)), v16, v17);
  return v4;
}

uint64_t sub_195259644(uint64_t a1)
{
  v2 = uhash_get(**a1, *(a1 + 16));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 8);
    v5 = *(v2 + 8);
    if (v5)
    {
      if (*(v4 + 8))
      {
        return 0;
      }
    }

    else
    {
      if ((v5 & 0x8000) != 0)
      {
        v6 = *(v2 + 12);
      }

      else
      {
        v6 = v5 >> 5;
      }

      v7 = *(v4 + 8);
      if ((v7 & 0x8000u) == 0)
      {
        v8 = v7 >> 5;
      }

      else
      {
        v8 = *(v4 + 12);
      }

      if ((v7 & 1) == 0 && v6 == v8)
      {
        v9 = v4 + 10;
        v10 = *(v4 + 24);
        v11 = ((v7 & 2) != 0 ? v9 : v10);
        if (icu::UnicodeString::doEquals(v2, v11, v6))
        {
          return 0;
        }
      }
    }

    *(a1 + 16) = v3;
  }

  return v3;
}

uint64_t ucurr_forLocale(char *a1, UChar *a2, uint64_t a3, UErrorCode *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
    goto LABEL_55;
  }

  if ((a3 & 0x80000000) != 0 || !a2 && a3)
  {
    v4 = 0;
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_55;
  }

  v28 = U_ZERO_ERROR;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  ulocimp_getKeywordValue(a1, "currency", 8, &v28, &v37);
  v27 = DWORD2(v40);
  if (v28 > U_ZERO_ERROR || DWORD2(v40) != 3 || !uprv_isInvariantString(v37, 3))
  {
    v35 = 0u;
    v36 = 0u;
    *__s = 0u;
    v34 = 0u;
    ulocimp_getRegionForSupplementalData(a1, a4, 0, __s);
    v4 = 0;
    if (*a4 > 0)
    {
LABEL_51:
      if (BYTE4(__s[1]))
      {
        free(__s[0]);
      }

      goto LABEL_53;
    }

    v9 = __s[0];
    v10 = strchr(__s[0], 95);
    if (v10)
    {
      icu::CharString::truncate(__s, v10 - v9);
    }

    if (!DWORD2(v36))
    {
      v16 = 0;
      v15 = U_MISSING_RESOURCE_ERROR;
      v28 = U_MISSING_RESOURCE_ERROR;
      goto LABEL_41;
    }

    v28 = U_ZERO_ERROR;
    v11 = ures_openDirect("icudt76l-curr", "supplementalData", &v28);
    v12 = ures_getByKey(v11, "CurrencyMap", v11, &v28);
    v13 = ures_getByKey(v11, __s[0], v12, &v28);
    v14 = v13;
    v15 = v28;
    if (v28 > U_ZERO_ERROR)
    {
      v16 = 0;
      goto LABEL_38;
    }

    Size = ures_getSize(v13);
    if (Size < 1)
    {
      v16 = 0;
LABEL_35:
      v15 = v28;
      if (v28 <= U_ZERO_ERROR && !v16)
      {
        v15 = U_MISSING_RESOURCE_ERROR;
        v28 = U_MISSING_RESOURCE_ERROR;
      }

LABEL_38:
      if (v14)
      {
        ures_close(v14);
        v15 = v28;
      }

      if (v15 < U_ILLEGAL_ARGUMENT_ERROR)
      {
        if (v15 == U_ZERO_ERROR)
        {
          v23 = *a4;
          if (*a4)
          {
            goto LABEL_47;
          }
        }

        goto LABEL_46;
      }

LABEL_41:
      if (strchr(__s[0], 95))
      {
        v31 = 0u;
        v32 = 0u;
        *v29 = 0u;
        v30 = 0u;
        ulocimp_getParent(a1, a4, v29);
        *a4 = U_USING_FALLBACK_WARNING;
        v4 = ucurr_forLocale(v29[0], a2, a3, a4);
        if (BYTE4(v29[1]))
        {
          free(v29[0]);
        }

        goto LABEL_51;
      }

LABEL_46:
      *a4 = v15;
      v23 = v15;
LABEL_47:
      v24 = v27;
      if (v23 <= U_ZERO_ERROR && v27 < a3)
      {
        u_strcpy(a2, v16);
        v24 = v27;
      }

      v4 = u_terminateUChars(a2, a3, v24, a4);
      goto LABEL_51;
    }

    v18 = Size;
    v19 = 0;
    v16 = 0;
    while (1)
    {
      v20 = ures_getByIndex(v14, v19, 0, &v28);
      LODWORD(v29[0]) = v28;
      StringByKey = ures_getStringByKey(v20, "tender", 0, v29);
      if (SLODWORD(v29[0]) < 1)
      {
        v22 = u_strcmp(StringByKey, L"false");
        if (!v22 && v16)
        {
          v22 = 4;
          goto LABEL_29;
        }

        v16 = ures_getStringByKey(v20, "id", &v27, &v28);
        if (!v22)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = ures_getStringByKey(v20, "id", &v27, &v28);
      }

      v22 = 2;
LABEL_29:
      if (v20)
      {
        ures_close(v20);
      }

      if ((v22 | 4) == 4 && v18 != ++v19)
      {
        continue;
      }

      goto LABEL_35;
    }
  }

  if (a3 >= 4)
  {
    T_CString_toUpperCase(v37);
    u_charsToUChars(v37, a2, 3);
  }

  v4 = u_terminateUChars(a2, a3, 3, a4);
LABEL_53:
  if (BYTE12(v37))
  {
    free(v37);
  }

LABEL_55:
  v25 = *MEMORY[0x1E69E9840];
  return v4;
}

const UChar *ucurr_getName(const UChar *a1, char *a2, unsigned int a3, _BYTE *a4, int *a5, int *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    v6 = 0;
    goto LABEL_68;
  }

  v8 = a3;
  if (a3 >= 5)
  {
    v6 = 0;
    *a6 = 1;
    goto LABEL_68;
  }

  v34 = U_ZERO_ERROR;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  *v38 = 0u;
  ulocimp_getName(a2, &v34, v38);
  if (v34 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    *__s = 0;
    u_UCharsToChars(a1, __s, 3);
    __s[3] = 0;
    T_CString_toUpperCase(__s);
    v34 = U_ZERO_ERROR;
    v32 = 0;
    v12 = ures_open("icudt76l-curr", v38[0], &v34);
    v13 = ures_openWithCountryFallback("icudt76l-curr", v38[0], &v32, &v34);
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    if (v32)
    {
      uscript_getCode(v38[0], v36, 5, &v34);
      if (v34 >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        LODWORD(v36[0]) = 0;
      }
    }

    if (v8 != 4 && (v8 & 6) != 2)
    {
      goto LABEL_36;
    }

    memset(&v35[1], 0, 56);
    v35[0] = &v35[1] + 5;
    LODWORD(v35[1]) = 40;
    if (v8 == 4)
    {
      v14 = "Currencies%variant";
    }

    else if (v8 == 3)
    {
      v14 = "Currencies%formal";
    }

    else
    {
      v14 = "Currencies%narrow";
    }

    icu::StringPiece::StringPiece(&v30, v14);
    icu::CharString::append(v35, v30, v31, &v34);
    icu::StringPiece::StringPiece(&v30, "/");
    icu::CharString::append(v35, v30, v31, &v34);
    icu::StringPiece::StringPiece(&v30, __s);
    icu::CharString::append(v35, v30, v31, &v34);
    if (v32)
    {
      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v13, v35[0], a5, &v34);
      v6 = StringByKeyWithFallback;
      v16 = v34;
      if (v34 > U_ZERO_ERROR)
      {
        goto LABEL_20;
      }

      v17 = *StringByKeyWithFallback;
      if ((v17 & 0xFC00) == 0xD800 && u_strlen(StringByKeyWithFallback) != 1)
      {
        v18 = v6[1];
        if ((v18 & 0xFC00) == 0xDC00)
        {
          v17 = v18 + (v17 << 10) - 56613888;
        }
      }

      Script = uscript_getScript(v17, &v34);
      if (v34 > U_ZERO_ERROR)
      {
        goto LABEL_30;
      }

      v28 = Script;
      v29 = u_isalpha(v17);
      v16 = v34;
      if (!v29 || v28 == 25 || v28 == LODWORD(v36[0]))
      {
LABEL_20:
        if (v16 != U_MISSING_RESOURCE_ERROR && v6)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v16 = v34;
    }

    if (v16 < U_ILLEGAL_ARGUMENT_ERROR)
    {
LABEL_31:
      v6 = ures_getStringByKeyWithFallback(v12, v35[0], a5, &v34);
      if (v34 == U_MISSING_RESOURCE_ERROR)
      {
        v8 = 0;
        *a6 = -128;
        v34 = U_ZERO_ERROR;
      }

LABEL_33:
      if (BYTE4(v35[1]))
      {
        free(v35[0]);
      }

      if (v6)
      {
        goto LABEL_53;
      }

LABEL_36:
      if (v8 != 1 && v32)
      {
        ures_getByKey(v13, "Currencies", v13, &v34);
        ures_getByKeyWithFallback(v13, __s, v13, &v34);
        StringByIndex = ures_getStringByIndex(v13, v8, a5, &v34);
        v6 = StringByIndex;
        if (v34 <= U_ZERO_ERROR)
        {
          v21 = *StringByIndex;
          if ((v21 & 0xFC00) == 0xD800 && u_strlen(StringByIndex) != 1)
          {
            v22 = v6[1];
            if ((v22 & 0xFC00) == 0xDC00)
            {
              v21 = v22 + (v21 << 10) - 56613888;
            }
          }

          v23 = uscript_getScript(v21, &v34);
          if (v34 > U_ZERO_ERROR)
          {
            goto LABEL_51;
          }

          v24 = v23;
          if (u_isalpha(v21) && v24 != 25 && v24 != LODWORD(v36[0]))
          {
            goto LABEL_50;
          }
        }

        else if (!StringByIndex)
        {
          goto LABEL_51;
        }

        if (u_strcmp(v6, a1))
        {
          goto LABEL_53;
        }
      }

LABEL_50:
      if (v34 < U_ILLEGAL_ARGUMENT_ERROR)
      {
LABEL_52:
        ures_getByKey(v12, "Currencies", v12, &v34);
        ures_getByKeyWithFallback(v12, __s, v12, &v34);
        v6 = ures_getStringByIndex(v12, v8, a5, &v34);
LABEL_53:
        v25 = v34;
        if (v34 <= U_ZERO_ERROR && (v34 == U_USING_DEFAULT_WARNING || v34 == U_USING_FALLBACK_WARNING && *a6 != -127))
        {
          *a6 = v34;
        }

        if (a4)
        {
          *a4 = 0;
        }

        if (v25 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          *a5 = u_strlen(a1);
          *a6 = -127;
          v6 = a1;
        }

        if (v13)
        {
          ures_close(v13);
        }

        if (v12)
        {
          ures_close(v12);
        }

        goto LABEL_66;
      }

LABEL_51:
      v34 = U_ZERO_ERROR;
      goto LABEL_52;
    }

LABEL_30:
    v34 = U_ZERO_ERROR;
    goto LABEL_31;
  }

  v6 = 0;
  *a6 = 1;
LABEL_66:
  if (BYTE4(v38[1]))
  {
    free(v38[0]);
  }

LABEL_68:
  v26 = *MEMORY[0x1E69E9840];
  return v6;
}