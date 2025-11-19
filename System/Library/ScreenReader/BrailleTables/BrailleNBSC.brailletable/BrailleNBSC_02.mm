uint64_t IsShortLen(unsigned __int16 *a1)
{
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  v3 = a1 + 1;
    ;
  }

  return result;
}

uint64_t IsLap(unsigned int a1, int a2)
{
  v3 = m_cStrBuf;
  v4 = IsMoji((m_cStrBuf + 4 * a1 - 4));
  v5 = m_sPinKeyBuf;
  v6 = m_iPinBlockCount * a2;
  v7 = (m_sPinKeyBuf + 2 * v6);
  if (*v7)
  {
    v8 = 0;
      ;
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v10 = *(m_sPinKeyBuf + 2 * (v8 + v6) - 2);
  v11 = IsMoji((v3 + 4 * *(m_sPinKeyBuf + 2 * (v8 + v6) - 2) - 4));
  if (v11 == 2 || (!v11 ? (v12 = (v4 & 5) == 1) : (v12 = 0), v12))
  {
    v22 = 0;
    v23 = 0;
    while (v8 + v22 >= 6)
    {
      v24 = *(2 * v6 + 2 * v8 + v5 - 4 + 2 * v22);
      ++v23;
      --v22;
      if (v10 != v24)
      {
        if (v8 - 5 == v23)
        {
          return 0;
        }

        if (IsMoji((v3 + 4 * *(v5 + 2 * (v8 + v6 - v23) - 2) - 4)) != 2)
        {
          return v8 - v23;
        }

        v25 = v8 - 1 - v23;
        while (*(v5 + 2 * (~v23 + v8 + v6) - 2) == v7[v25 - 1])
        {
          v26 = v25 - 1;
          v21 = v25-- <= 5;
          if (v21)
          {
            goto LABEL_53;
          }
        }

        v26 = v25;
LABEL_53:
        if (v26 >= 6)
        {
          return v26;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  if (v11 == 6)
  {
    if (v4 <= 6 && ((1 << v4) & 0x5A) != 0)
    {
      v28 = v8;
      v29 = v7 - 1;
      v16 = -v8;
      v30 = v7 - 2;
      while (v28 >= 6)
      {
        v31 = v28 - 1;
        v32 = IsMoji((v3 - 4 + 4 * v30[v28]));
        ++v16;
        v28 = v31;
        if (v32 != 6)
        {
          if (v31 == 5)
          {
            return 0;
          }

          v33 = *(v5 + 2 * (v6 - v16) - 2);
          if (IsMoji((v3 + 4 * v33 - 4)) != 2)
          {
            return -v16;
          }

          v34 = -v16;
          while (v33 == v29[v34])
          {
            v21 = v34-- <= 5;
            if (v21)
            {
              return 0;
            }
          }

          result = v34;
          if (v34 <= 5)
          {
            return 0;
          }

          return result;
        }
      }
    }

    return 0;
  }

  if (v11 != 5)
  {
    return 0;
  }

  result = 0;
  if (v4 <= 5 && ((1 << v4) & 0x3A) != 0)
  {
    v14 = v8;
    v15 = v7 - 1;
    v16 = -v8;
    v17 = v7 - 2;
    while (v14 >= 6)
    {
      v18 = v14 - 1;
      v19 = IsMoji((v3 - 4 + 4 * v17[v14]));
      ++v16;
      v14 = v18;
      if (v19 != 5)
      {
        if (v18 == 5)
        {
          return 0;
        }

        v20 = *(v5 + 2 * (v6 - v16) - 2);
        if (IsMoji((v3 + 4 * v20 - 4)) != 2)
        {
          return -v16;
        }

        result = -v16;
        while (v20 == v15[result])
        {
          v21 = result-- <= 5;
          if (v21)
          {
            return 0;
          }
        }

        if (result <= 5)
        {
          return 0;
        }

        return result;
      }
    }

    return 0;
  }

  return result;
}

_WORD *MyShortCpy(_WORD *result, unsigned __int16 *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2 + 1;
    do
    {
      *result++ = v2;
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  *result = 0;
  return result;
}

void SetPinDat(char *__s, __int16 a2)
{
  if ((a2 & 0x3FFF) == 0 || !*__s)
  {
    return;
  }

  v4 = m_iMaxCol;
  v5 = m_iMaxCol;
  v6 = &unk_BE000;
  v7 = m_sPinStrBuf;
  v234 = m_iPinBlockCount;
  v235 = a2 & 0x3FFF;
  v8 = m_iPinBlockCount * m_iMaxCol;
  v9 = (m_sPinStrBuf + 2 * v8);
  v10 = *v9;
  if (*v9)
  {
    v11 = 0;
      ;
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (strlen(__s) + v11 > m_iMaxCol)
  {
    m_iCurFlg = 0;
    if ((v11 & 0x80000000) == 0)
    {
      v13 = (m_sPinStrBuf + 2 * v11 + 2 * v8);
      v14 = v11 + 1;
      while (1)
      {
        v15 = *v13--;
        if ((v15 & 0x100) != 0)
        {
          break;
        }

        if (--v14 < 1)
        {
          goto LABEL_13;
        }
      }

      m_iCurFlg = 1;
      if (v8 >= 9601)
      {
        goto LABEL_20;
      }

      if (m_iWordLapFlg)
      {
        if (v10)
        {
          v20 = -2;
          v21 = -1;
          v22 = 2 * v8;
          do
          {
            v23 = *(m_sPinStrBuf + 2 + v22);
            v22 += 2;
            v20 += 2;
            ++v21;
          }

          while (v23);
          v24 = v8 + v21;
          v25 = *(m_sPinStrBuf + 2 * (v8 + v21));
          if (v25 == 64)
          {
            v26 = 1;
          }

          else
          {
            v52 = 0;
            v53 = (m_sPinKeyBuf + v22);
            while (1)
            {
              if (v9[v21] == 64)
              {
                v54 = *(v53 - 1);
                if (v54 != *(v53 - 2))
                {
                  break;
                }

                v55 = *v53;
                if (v54 != v55 && v55 != 0)
                {
                  break;
                }
              }

              if ((v9[v21] & 0x100) != 0)
              {
                v52 = 1;
              }

              --v53;
              v57 = v21-- <= 0;
              if (v57)
              {
                goto LABEL_108;
              }
            }

            v26 = v52 == 0;
          }

          if (v21 >= 1)
          {
            v63 = (m_sPinStrBuf + 2 * v8 + 2 * v21);
            v64 = v21 + 1;
            while (1)
            {
              v65 = *v63;
              v63 -= 2;
              if ((v65 | 0x80) != 0xC0)
              {
                break;
              }

              v57 = v64-- <= 1;
              if (v57)
              {
                goto LABEL_108;
              }
            }
          }

          if ((v21 - 1) < 0xFFFFFFFE)
          {
            if ((v25 & 0x1FF) == 0x140 && v235 == *(m_sPinKeyBuf + 2 * v24))
            {
              m_iBeforeCol = v235 - 1;
              v66 = ++m_iPinBlockCount;
              v67 = &unk_B4000;
              ++v234;
LABEL_266:
              v67[848] = v66;
              goto LABEL_267;
            }

            if (!v26)
            {
              if (v21 <= 0)
              {
                LODWORD(v171) = v21;
                v170 = v21;
              }

              else
              {
                v170 = v21;
                v171 = v21;
                while (*(m_sPinKeyBuf + 2 * (v8 + v21) + 2) == *(m_sPinKeyBuf + 2 * v8 + 2 * v171))
                {
                  v57 = v171-- <= 1;
                  if (v57)
                  {
                    LODWORD(v171) = 0;
                    break;
                  }
                }
              }

              m_iBeforeCol = *(m_sPinKeyBuf + 2 * (v171 + v8));
              v180 = m_iMaxCol + m_iMaxCol * m_iPinBlockCount;
              *(m_sPinKeyBuf + 2 * v180) = 0;
              *(v7 + 2 * v180) = 0;
              v181 = &v9[v170];
              v184 = v181[1];
              v182 = v181 + 1;
              v183 = v184;
              v185 = 2 * v170;
              if (v184)
              {
                v186 = (v185 + 2 * v8 + v7 + 4);
                v187 = &v236;
                do
                {
                  *v187++ = v183;
                  v188 = *v186++;
                  v183 = v188;
                }

                while (v188);
              }

              else
              {
                v187 = &v236;
              }

              *v187 = 0;
              v189 = v20 - 2 * v21;
              bzero(v182, v189);
              v190 = m_iPinBlockCount;
              v191 = (m_sPinStrBuf + 2 * (v4 + v4 * m_iPinBlockCount));
              v192 = v236;
              if (v236)
              {
                v193 = v237;
                do
                {
                  *v191++ = v192;
                  v194 = *v193++;
                  v192 = v194;
                }

                while (v194);
              }

              *v191 = 0;
              v195 = v190 * v5;
              v196 = m_sPinKeyBuf + 2 * v195 + 2 * v170;
              v199 = *(v196 + 2);
              v197 = (v196 + 2);
              v198 = v199;
              if (v199)
              {
                v200 = (v185 + 2 * v195 + m_sPinKeyBuf + 4);
                v201 = &v236;
                do
                {
                  *v201++ = v198;
                  v202 = *v200++;
                  v198 = v202;
                }

                while (v202);
              }

              else
              {
                v201 = &v236;
              }

              *v201 = 0;
              bzero(v197, v189);
              v234 = m_iPinBlockCount + 1;
              v203 = (m_sPinKeyBuf + 2 * (m_iPinBlockCount + 1) * v5);
              v204 = v236;
              if (v236)
              {
                v205 = v237;
                v6 = &unk_BE000;
                do
                {
                  *v203++ = v204;
                  v206 = *v205++;
                  v204 = v206;
                }

                while (v206);
              }

              else
              {
                v6 = &unk_BE000;
              }

              *v203 = 0;
              v66 = v234;
              m_iPinBlockCount = v234;
              v67 = &unk_B4000;
              goto LABEL_266;
            }

            v85 = *(m_sPinKeyBuf + 2 * (v8 + v21) + 2);
            if (!*(m_sPinKeyBuf + 2 * (v8 + v21) + 2))
            {
              v85 = v235;
            }

            m_iNextCol = v85;
            v83 = v20 - 2 * v21;
            bzero(&v9[v21 + 1], v83);
            v84 = (m_sPinKeyBuf + 2 * m_iPinBlockCount * v4 + 2 * v21 + 2);
            goto LABEL_239;
          }
        }

LABEL_108:
        m_iNextCol = v235;
LABEL_240:
        v18 = &unk_B4000;
        v19 = 1;
        goto LABEL_21;
      }

      v41 = IsLap(v235, m_iMaxCol);
      if (!v41)
      {
        if (strlen(__s) == 1 && *__s == 64)
        {
          return;
        }

        if (v10)
        {
          v59 = 0;
            ;
          }
        }

        else
        {
          LODWORD(v59) = 0;
        }

        v144 = v8 + v59 - 1;
        if (v235 == *(m_sPinKeyBuf + 2 * v144))
        {
          if (*(v7 + 2 * v144) != 64)
          {
            v172 = (v59 - 2);
            if (v59 >= 2)
            {
              while (v235 == *(m_sPinKeyBuf + 2 * v8 + 2 * v172) && LOBYTE(v9[v172]) != 64)
              {
                v57 = v172-- <= 0;
                if (v57)
                {
                  LODWORD(v172) = -1;
                  break;
                }
              }
            }

            if (*(v7 + 2 * (v172 + v8)) == 64)
            {
              v173 = v172 + 1;
            }

            else
            {
              v173 = v172;
            }

            v174 = &v9[v173];
            if ((a2 & 0x4000) != 0)
            {
              m_iBeforeCol = v235 - 1;
              v175 = v173;
              v176 = *v174;
              if (*v174)
              {
                v177 = (2 * v8 + 2 * v173 + v7 + 2);
                v178 = &v236;
                do
                {
                  *v178++ = v176;
                  v179 = *v177++;
                  v176 = v179;
                }

                while (v179);
              }

              else
              {
                v178 = &v236;
              }

              *v178 = 0;
              v216 = 4 * (v59 - v173);
              bzero(v174, v216);
              v217 = m_iPinBlockCount;
              v218 = (m_sPinStrBuf + 2 * (v4 + v4 * m_iPinBlockCount));
              v219 = v236;
              if (v236)
              {
                v220 = v237;
                do
                {
                  *v218++ = v219;
                  v221 = *v220++;
                  v219 = v221;
                }

                while (v221);
              }

              *v218 = 0;
              v222 = v217 * v5;
              v223 = (m_sPinKeyBuf + 2 * v222 + 2 * v175);
              v224 = *v223;
              if (*v223)
              {
                v225 = (2 * v222 + 2 * v175 + m_sPinKeyBuf + 2);
                v226 = &v236;
                do
                {
                  *v226++ = v224;
                  v227 = *v225++;
                  v224 = v227;
                }

                while (v227);
              }

              else
              {
                v226 = &v236;
              }

              *v226 = 0;
              bzero(v223, v216);
              v137 = m_iPinBlockCount + 1;
              v228 = (m_sPinKeyBuf + 2 * (m_iPinBlockCount + 1) * v5);
              v229 = v236;
              if (v236)
              {
                v230 = v237;
                v6 = &unk_BE000;
                do
                {
                  *v228++ = v229;
                  v231 = *v230++;
                  v229 = v231;
                }

                while (v231);
              }

              else
              {
                v6 = &unk_BE000;
              }

              *v228 = 0;
              m_iPinBlockCount = v137;
              v143 = &unk_B4000;
              v234 = v137;
LABEL_195:
              v143[848] = v137;
              goto LABEL_267;
            }

            m_iNextCol = v235;
            v83 = 4 * (v59 - v173);
            bzero(v174, v83);
            v84 = (m_sPinKeyBuf + 2 * m_iPinBlockCount * v4 + 2 * v173);
LABEL_239:
            bzero(v84, v83);
            goto LABEL_240;
          }

          if ((a2 & 0x4000) != 0)
          {
            m_iBeforeCol = v235 - 1;
            m_iPinBlockCount = ++v234;
            goto LABEL_267;
          }
        }

        m_iNextCol = v235;
        goto LABEL_240;
      }

      if (v10)
      {
        v42 = 0;
        v43 = v41;
        v44 = v7 + 2 * v8;
          ;
        }

        if (v41 <= v42)
        {
          if ((v9[v41] & 0x100) != 0)
          {
            v51 = 1;
          }

          else
          {
            v46 = v41 - v42;
            v47 = v44 + 2;
            v48 = v41;
            do
            {
              v49 = v48;
              if (!v46)
              {
                break;
              }

              v50 = *(v47 + 2 * v48);
              ++v46;
              ++v48;
            }

            while ((v50 & 0x100) == 0);
            v51 = v49 < v42;
          }

LABEL_114:
          v68 = 0;
          v69 = v43 + 1;
          v70 = 2 * v43 + 2 * v8;
          v71 = (v70 + v7 - 2);
          do
          {
            v72 = *v71--;
            if ((v72 & 0x100) != 0)
            {
              v68 = 1;
            }

            --v69;
          }

          while (v69 > 1);
          v73 = (m_sPinKeyBuf + 2 * (v41 + v8));
          v74 = (v68 != 0) & ~v51;
          v75 = &v9[v43];
          v76 = v43;
          if ((v74 & 1) == 0)
          {
            v233 = 2 * v43;
            m_iBeforeCol = *(v73 - 1);
            v77 = v5 + v5 * v234;
            *(m_sPinKeyBuf + 2 * v77) = 0;
            *(v7 + 2 * v77) = 0;
            v78 = *v75;
            v79 = v51;
            if (*v75)
            {
              v80 = (v70 + v7 + 2);
              v81 = &v236;
              do
              {
                *v81++ = v78;
                v82 = *v80++;
                v78 = v82;
              }

              while (v82);
            }

            else
            {
              v81 = &v236;
            }

            *v81 = 0;
            v125 = (2 * (v42 - v41));
            bzero(v75, v125);
            v126 = m_iPinBlockCount;
            v127 = (m_sPinStrBuf + 2 * (v5 + v5 * m_iPinBlockCount));
            v128 = v236;
            if (v236)
            {
              v129 = v237;
              do
              {
                *v127++ = v128;
                v130 = *v129++;
                v128 = v130;
              }

              while (v130);
            }

            *v127 = 0;
            v131 = v126 * v4;
            v132 = (m_sPinKeyBuf + 2 * v131 + 2 * v76);
            v133 = *v132;
            if (*v132)
            {
              v134 = (v233 + 2 * v131 + m_sPinKeyBuf + 2);
              v135 = &v236;
              do
              {
                *v135++ = v133;
                v136 = *v134++;
                v133 = v136;
              }

              while (v136);
            }

            else
            {
              v135 = &v236;
            }

            *v135 = 0;
            bzero(v132, v125);
            v137 = m_iPinBlockCount + 1;
            v138 = (m_sPinKeyBuf + 2 * (m_iPinBlockCount + 1) * v5);
            v139 = v236;
            if (v236)
            {
              v140 = v237;
              v6 = &unk_BE000;
              v141 = v79;
              do
              {
                *v138++ = v139;
                v142 = *v140++;
                v139 = v142;
              }

              while (v142);
            }

            else
            {
              v6 = &unk_BE000;
              v141 = v79;
            }

            *v138 = 0;
            m_iPinBlockCount = v137;
            v234 = v137;
            if (!v141)
            {
              goto LABEL_267;
            }

            v143 = &unk_B4000;
            goto LABEL_195;
          }

          m_iNextCol = *v73;
          v83 = (2 * (v42 - v41));
          bzero(&v9[v43], v83);
          v84 = (m_sPinKeyBuf + 2 * m_iPinBlockCount * v5 + 2 * v76);
          goto LABEL_239;
        }
      }

      else
      {
        LODWORD(v42) = 0;
      }

      v51 = 0;
      v43 = v41;
      goto LABEL_114;
    }

LABEL_13:
    if (v8 > 9600)
    {
LABEL_20:
      v18 = &unk_B4000;
      v19 = 2;
LABEL_21:
      v18[845] = v19;
      return;
    }

    if (m_iWordLapFlg)
    {
      if (v10)
      {
        v16 = 0;
          ;
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      v28 = m_iPinBlockCount;
      if ((*(m_sPinStrBuf + 2 * (v16 + v8) - 2) | 0x80) == 0xC0)
      {
        v29 = v16;
        if (v16 >= 1)
        {
          LODWORD(v16) = 1;
        }

        v30 = v16 - 1;
        while (v29 >= 2)
        {
          v31 = v29 - 1;
          v32 = *(m_sPinKeyBuf + 2 * v8 - 2 + 2 * v29--);
          if (v235 != v32)
          {
            v30 = v31;
            break;
          }
        }

        v33 = *(m_sPinKeyBuf + 2 * (v30 + v8));
        v34 = &unk_B4000;
LABEL_111:
        v34[850] = v33;
        ++v234;
        m_iPinBlockCount = v28 + 1;
        goto LABEL_267;
      }

      v34 = &unk_B4000;
      v35 = v16;
      v36 = v16 - 1;
      v37 = v16 - 1;
      if (v16 >= 1)
      {
        v38 = m_sPinStrBuf + 2 * v8 - 2;
        v39 = v16;
        while ((*(v38 + 2 * v39) | 0x80) != 0xC0)
        {
          if (v39-- <= 1)
          {
            goto LABEL_76;
          }
        }

        v37 = v39 - 1;
        if (v39 == 1)
        {
LABEL_76:
          if (v16 >= 2)
          {
            while (v235 == *(m_sPinKeyBuf + 2 * v8 - 2 + 2 * v35))
            {
              if (v35-- <= 2)
              {
                v36 = 0;
                goto LABEL_110;
              }
            }

            v36 = v35 - 1;
          }

LABEL_110:
          v33 = *(m_sPinKeyBuf + 2 * (v36 + v8));
          goto LABEL_111;
        }

        while ((*(v38 + 2 * v39) | 0x80) == 0xC0)
        {
          v57 = v39-- <= 1;
          if (v57)
          {
            goto LABEL_76;
          }
        }
      }

      if ((v37 + 1) >= 2)
      {
        if (v37 <= 0)
        {
          LODWORD(v62) = v37;
          v61 = v37;
        }

        else
        {
          v61 = v37;
          v62 = v37;
          while (*(m_sPinKeyBuf + 2 * v8 + 2 * v62) == *(m_sPinKeyBuf + 2 * v8 + 2 * v62 + 2))
          {
            v57 = v62-- <= 1;
            if (v57)
            {
              LODWORD(v62) = 0;
              break;
            }
          }
        }

        v145 = *(m_sPinKeyBuf + 2 * (v62 + v8));
        v146 = m_iMaxCol + m_iMaxCol * m_iPinBlockCount;
        *(m_sPinKeyBuf + 2 * v146) = 0;
        m_iBeforeCol = v145;
        *(v7 + 2 * v146) = 0;
        v147 = &v9[v61];
        v148 = v147[1];
        v149 = 2 * v61;
        if (v148)
        {
          v150 = (v149 + 2 * v8 + v7 + 4);
          v151 = &v236;
          do
          {
            *v151++ = v148;
            v152 = *v150++;
            v148 = v152;
          }

          while (v152);
        }

        else
        {
          v151 = &v236;
        }

        *v151 = 0;
        v153 = 2 * (v16 - v37);
        bzero(v147, v153);
        v154 = m_iPinBlockCount;
        v155 = (m_sPinStrBuf + 2 * (v5 + v5 * m_iPinBlockCount));
        v156 = v236;
        if (v236)
        {
          v157 = v237;
          do
          {
            *v155++ = v156;
            v158 = *v157++;
            v156 = v158;
          }

          while (v158);
        }

        *v155 = 0;
        v159 = v154 * v4;
        v160 = (m_sPinKeyBuf + 2 * v159 + 2 * v61);
        v161 = v160[1];
        if (v161)
        {
          v162 = (v149 + 2 * v159 + m_sPinKeyBuf + 4);
          v163 = &v236;
          do
          {
            *v163++ = v161;
            v164 = *v162++;
            v161 = v164;
          }

          while (v164);
        }

        else
        {
          v163 = &v236;
        }

        *v163 = 0;
        bzero(v160, v153);
        v165 = m_iPinBlockCount + 1;
        v166 = (m_sPinKeyBuf + 2 * (m_iPinBlockCount + 1) * v5);
        v167 = v236;
        if (v236)
        {
          v168 = v237;
          v6 = &unk_BE000;
          do
          {
            *v166++ = v167;
            v169 = *v168++;
            v167 = v169;
          }

          while (v169);
        }

        else
        {
          v6 = &unk_BE000;
        }

        *v166 = 0;
        v234 = v165;
        m_iPinBlockCount = v165;
        goto LABEL_267;
      }

      goto LABEL_76;
    }

    if ((m_PinInfo & 0x10000) == 0)
    {
      v232 = 0;
      v27 = m_iPinBlockCount;
      goto LABEL_142;
    }

    v27 = m_iPinBlockCount;
    if (m_iPinBlockCount)
    {
      v40 = dword_41128;
      if (!dword_41128)
      {
        v232 = 0;
        goto LABEL_142;
      }
    }

    else
    {
      if (m_iMaxCol < 1)
      {
        LODWORD(v58) = 0;
      }

      else
      {
        v58 = 0;
        while (*(m_sPinStrBuf + 2 * v58) == 64)
        {
          if (m_iMaxCol == ++v58)
          {
            goto LABEL_135;
          }
        }
      }

      if (v58 >= m_iMaxCol - 10)
      {
LABEL_135:
        v232 = 0;
        dword_41128 = 0;
        goto LABEL_142;
      }

      v40 = v58 + 2;
      dword_41128 = v40;
    }

    v86 = m_iPinBlockCount + 1;
    if (v40 < 1)
    {
      v40 = 0;
    }

    else
    {
      v87 = v40;
      v88 = (m_sPinStrBuf + 2 * v86 * m_iMaxCol);
      v89 = (m_sPinKeyBuf + 2 * v86 * m_iMaxCol);
      do
      {
        *v88++ = 64;
        *v89++ = v235;
        --v87;
      }

      while (v87);
    }

    if (m_cKanaBuf[v235] > 127 || m_cKanaBuf[v235 - 1] > 127)
    {
      --v40;
    }

    else
    {
      v90 = v40 + v86 * v4;
      *(v7 + 2 * v90) = 8;
      *(m_sPinKeyBuf + 2 * v90) = v235;
    }

    m_iPinBlockCount = v27;
    v232 = v40;
LABEL_142:
    v91 = IsLap(v235, v5);
    if (v91)
    {
      m_iBeforeCol = *(m_sPinKeyBuf + 2 * (v8 + v91) - 2);
      LODWORD(v92) = *v9;
      if (*v9)
      {
        v92 = 0;
          ;
        }
      }

      v94 = v5 + v5 * v27;
      *(m_sPinKeyBuf + 2 * v94) = 0;
      *(v7 + 2 * v94) = 0;
      v95 = v91;
      v96 = v9[v91];
      if (v96)
      {
        v97 = (2 * v8 + 2 * v91 + v7 + 2);
        v98 = &v236;
        do
        {
          *v98++ = v96;
          v99 = *v97++;
          v96 = v99;
        }

        while (v99);
      }

      else
      {
        v98 = &v236;
      }

      *v98 = 0;
      v103 = (2 * (v92 - v91));
      bzero(&v9[v91], v103);
      v104 = m_iPinBlockCount;
      v105 = (m_sPinStrBuf + 2 * (v4 + v4 * m_iPinBlockCount) + 2 * v232);
      v106 = v236;
      if (v236)
      {
        v107 = v237;
        do
        {
          *v105++ = v106;
          v108 = *v107++;
          v106 = v108;
        }

        while (v108);
      }

      *v105 = 0;
      v109 = v104 * v5;
      v110 = (m_sPinKeyBuf + 2 * v109 + 2 * v95);
      v111 = *v110;
      if (*v110)
      {
        v112 = (2 * v109 + 2 * v95 + m_sPinKeyBuf + 2);
        v113 = &v236;
        do
        {
          *v113++ = v111;
          v114 = *v112++;
          v111 = v114;
        }

        while (v114);
      }

      else
      {
        v113 = &v236;
      }

      *v113 = 0;
      bzero(v110, v103);
      v115 = m_iPinBlockCount + 1;
      v116 = (m_sPinKeyBuf + 2 * (m_iPinBlockCount + 1) * v5 + 2 * v232);
      v117 = v236;
      if (v236)
      {
        v118 = v237;
        v6 = &unk_BE000;
        do
        {
          *v116++ = v117;
          v119 = *v118++;
          v117 = v119;
        }

        while (v119);
      }

      else
      {
        v6 = &unk_BE000;
      }

      *v116 = 0;
      v234 = v115;
      m_iPinBlockCount = v115;
    }

    else
    {
      if (strlen(__s) == 1 && *__s == 64)
      {
        return;
      }

      if (*v9)
      {
        v100 = 0;
          ;
        }

        v102 = v100;
      }

      else
      {
        v102 = 0;
      }

      v120 = v234;
      v121 = v102;
      if (v102 >= 1)
      {
        v102 = 1;
      }

      v122 = v102 - 1;
      while (v121 >= 2)
      {
        v123 = v121 - 1;
        v124 = *(m_sPinKeyBuf + 2 * v8 - 2 + 2 * v121--);
        if (v235 != v124)
        {
          v122 = v123;
          break;
        }
      }

      m_iBeforeCol = *(m_sPinKeyBuf + 2 * (v122 + v8));
      ++v234;
      m_iPinBlockCount = v120 + 1;
    }
  }

LABEL_267:
  if (v5 < 1)
  {
    LODWORD(v207) = 0;
  }

  else
  {
    v207 = 0;
    while (*(v6[112] + 2 * v234 * v4 + 2 * v207))
    {
      if (v5 == ++v207)
      {
        LODWORD(v207) = v5;
        break;
      }
    }
  }

  if (strlen(__s) >= 1)
  {
    v208 = 0;
    v209 = v6[112];
    v210 = v234 * v5;
    v211 = m_sPinKeyBuf;
    v212 = m_iPinOutMode;
    do
    {
      if (1 - v207 == v208)
      {
        if ((*(v209 + 2 * v210) & 0x7F) == 0x40 && __s[v208] != 64)
        {
          LODWORD(v207) = v207 - (v235 == *(v211 + 2 * v210));
          v213 = v208 + v207;
        }

        else
        {
          v213 = 1;
        }
      }

      else
      {
        v213 = v207 + v208;
      }

      v214 = v213 + v210;
      *(v211 + 2 * v214) = v235;
      v215 = __s[v208];
      *(v209 + 2 * v214) = v215;
      if ((a2 & 0x4000) != 0)
      {
        v215 |= 0x100u;
        *(v209 + 2 * v214) = v215;
        if (v212 == 4)
        {
          m_iPinBlockCur = v234;
        }
      }

      if (a2 < 0)
      {
        *(v209 + 2 * v214) = v215 | 0x200;
      }

      ++v208;
    }

    while (v208 < strlen(__s));
  }

  m_iCurFarstFlg = 0;
}

uint64_t IsToziKako(int *a1)
{
  v1 = *a1;
  v2 = 12289;
  v3 = &dword_28D28;
  while (v1 != v2)
  {
    v4 = *v3++;
    v2 = v4;
    if (!v4)
    {
      v5 = 46;
      v6 = &dword_28D6C;
      while (v5 != v1)
      {
        v7 = *v6++;
        v5 = v7;
        if (!v7)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 1;
}

uint64_t IsInyou(int *a1)
{
  while (1)
  {
    v1 = *a1;
    if (*a1 != 9 && v1 != 32)
    {
      break;
    }

    ++a1;
  }

  if (!v1)
  {
    return 1;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = (v1 - 10241) < 0xFF && (m_PinInfo & 0x3880) == 10240;
    v7 = v6;
    v8 = &a1[v7];
    v9 = *v8;
    if (*v8 > 127)
    {
      break;
    }

    v10 = v3 + v6;
    if (v9 != 32 || v10 == 0)
    {
      v13 = v9 < 33 || v10 == 0 || (v9 - 58) > 0xFFFFFFF5;
      if (!v13 && *(v8 - 1) >= 128)
      {
        if (v4 > 1)
        {
          return v5 > 1 || v9 < 128;
        }

        ++v4;
      }
    }

    else if (*(v8 - 1) != 32)
    {
      ++v5;
    }

    v14 = v8[1];
    a1 = v8 + 1;
    v1 = v14;
    v3 = v10 + 1;
  }

  while (v14);
  return v5 > 1 || v9 < 128;
}

uint64_t IsInyou2(uint64_t a1, int a2)
{
  v2 = -4;
  if (!a2)
  {
    v2 = 0;
  }

  v3 = a1 + v2;
  v4 = *(a1 + v2);
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      if (a2 && v4 >= 129)
      {
        ZenToHan(v3, v17);
        v3 += 4;
        v10 = v17[0];
      }

      else
      {
        v10 = v4;
      }

      if ((m_PinInfo & 0x3880) == 0x2800 && (*v3 - 10241) <= 0xFE)
      {
        v3 += 4;
        ++v6;
      }

      if (v10 > 128)
      {
        break;
      }

      v12 = v9 != 32 && v6 != 0;
      if (v12 && v10 == 32)
      {
        v8 = 0;
      }

      v7 += v12 && v10 == 32;
      if (v7 > 2)
      {
        v7 = 3;
        break;
      }

      if ((v10 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        v8 = 1;
      }

      v13 = *(v3 + 4);
      v3 += 4;
      v4 = v13;
      ++v6;
      v9 = v10;
    }

    while (v13);
    v14 = v8 != 0;
  }

  else
  {
    v14 = 0;
    v7 = 0;
  }

  v15 = v7 == 1 && v14;
  if (v7 > 1)
  {
    return 1;
  }

  else
  {
    return v15;
  }
}

BOOL EijiStrSet(const __int32 *a1, _BYTE *a2, int a3)
{
  *a2 = 0;
  if (a3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    ZenToHan(a1, &v12);
    v5 = 0;
    v6 = a1 + 1;
    do
    {
      v7 = v12;
      if ((v12 - 65) > 0x19)
      {
        if ((v12 - 97) > 0x19)
        {
          break;
        }
      }

      else
      {
        v7 = v12 | 0x20;
      }

      a2[v5++] = v7;
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      ZenToHan(v6++, &v12);
    }

    while (v5 != 64);
    ZenToHan(a1 - 1, &v12);
    v8 = v12;
  }

  else
  {
    for (i = 0; i != 64; ++i)
    {
      v10 = a1[i];
      if ((v10 - 65) > 0x19)
      {
        if ((v10 - 97) > 0x19)
        {
          break;
        }
      }

      else
      {
        LOBYTE(v10) = v10 | 0x20;
      }

      a2[i] = v10;
    }

    v8 = *(a1 - 1);
  }

  return (v8 & 0xFFFFFFDF) - 91 < 0xFFFFFFE6;
}

uint64_t IsOomoji(uint64_t a1, int a2)
{
  v2 = (a1 + ((m_Zen >> 2) & 4) + 4 * (*(a1 + ((m_Zen >> 2) & 4)) != 10242));
  v3 = *v2;
  if (!*v2)
  {
    v4 = 0;
    v9 = 0;
    if (a2)
    {
LABEL_22:
      if (v4 == 1)
      {
        return v9 ^ 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
LABEL_26:
      if (v4)
      {
        return 0;
      }

      else
      {
        return v9;
      }
    }
  }

  v4 = 0;
  while (1)
  {
    if ((v3 - 97) < 0x1A)
    {
LABEL_19:
      v9 = 1;
      if (!a2)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (v3 == 10242)
    {
      break;
    }

    if ((v3 - 65) > 0x19)
    {
      goto LABEL_25;
    }

    v6 = 4;
LABEL_10:
    v2 = (v2 + v6);
    v7 = v4 + 1;
    v3 = *v2;
    if (*v2)
    {
      v8 = v4 > 1;
    }

    else
    {
      v8 = 1;
    }

    ++v4;
    if (v8)
    {
      v9 = 0;
      v4 = v7;
      if (!a2)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }
  }

  v5 = v2[1];
  if ((v5 - 10241) < 0x1A)
  {
    goto LABEL_19;
  }

  if ((v5 - 96) < 0x1A)
  {
    v6 = 8;
    goto LABEL_10;
  }

LABEL_25:
  v9 = 0;
  if (!a2)
  {
    goto LABEL_26;
  }

LABEL_20:
  if (v4 <= 1)
  {
    goto LABEL_22;
  }

  return 1;
}

uint64_t Init(char *a1)
{
  v10 = time(0);
  localtime(&v10);
  __dst[0] = 0;
  strcpy(__dst, a1);
  strcat(__dst, "6tenu.dat");
  v2 = fopen(__dst, "rb");
  Ten6File = v2;
  if (!v2)
  {
    return 15;
  }

  if (fread(&__ptr, 2uLL, 1uLL, v2))
  {
    if (__ptr == 255 && v9 == 254)
    {
      strcpy(__dst, a1);
      strcat(__dst, "8tenu.dat");
      v3 = fopen(__dst, "rb");
      Ten8File = v3;
      if (v3)
      {
        if (fread(&__ptr, 2uLL, 1uLL, v3))
        {
          if (__ptr == 255 && v9 == 254)
          {
            strcpy(__dst, a1);
            *&__dst[strlen(__dst)] = 0x5441442E465442;
            v4 = fopen(__dst, "rb");
            if (v4)
            {
              v5 = v4;
              if (fread(&m_pcBrDat, 0xBC7uLL, 1uLL, v4))
              {
                strcpy(__dst, a1);
                strcat(__dst, "DETAIL.TXT");
                v6 = fopen(__dst, "rb");
                DetailFile = v6;
                if (v6)
                {
                  if (fread(&__ptr, 2uLL, 1uLL, v6))
                  {
                    if (__ptr == 255 && v9 == 254)
                    {
                      result = ktoau::Init(&Ktoau, a1);
                      if (!result)
                      {
                        m_IsInit = 1;
                      }
                    }

                    else
                    {
                      fclose(Ten6File);
                      fclose(Ten8File);
                      fclose(DetailFile);
                      return 25;
                    }
                  }

                  else
                  {
                    fclose(DetailFile);
                    fclose(Ten8File);
                    return 24;
                  }
                }

                else
                {
                  fclose(0);
                  return 23;
                }
              }

              else
              {
                fclose(v5);
                return 22;
              }
            }

            else
            {
              fclose(0);
              return 21;
            }
          }

          else
          {
            fclose(Ten6File);
            fclose(Ten8File);
            return 20;
          }
        }

        else
        {
          fclose(Ten6File);
          fclose(Ten8File);
          return 19;
        }
      }

      else
      {
        fclose(Ten6File);
        return 18;
      }
    }

    else
    {
      fclose(Ten6File);
      return 17;
    }
  }

  else
  {
    fclose(Ten6File);
    return 16;
  }

  return result;
}

size_t KanjiTo6Ten(int a1, _BYTE *a2)
{
  fseek(Ten6File, 0, 0);
  fread(&__ptr, 2uLL, 1uLL, Ten6File);
  do
  {
    *a2 = 0;
    bzero(&__ptr, 0x400uLL);
    result = fread(&__ptr, 2uLL, 1uLL, Ten6File);
    if (!result)
    {
LABEL_14:
      *a2 = 0;
      return result;
    }

    p_ptr = &__ptr;
    while (*p_ptr != 13)
    {
      result = fread(++p_ptr, 2uLL, 1uLL, Ten6File);
      if (!result)
      {
        goto LABEL_14;
      }
    }

    result = fread(p_ptr, 2uLL, 1uLL, Ten6File);
  }

  while (__ptr != a1);
  *p_ptr = 0;
  v6 = v10;
  if (v10)
  {
    v7 = &v11;
    do
    {
      if ((v6 - 10241) <= 0xFE)
      {
        *a2 = v6;
      }

      v8 = *v7++;
      v6 = v8;
      ++a2;
    }

    while (v8);
  }

  return result;
}

size_t KanjiTo8Ten(int a1, _BYTE *a2)
{
  fseek(Ten8File, 0, 0);
  fread(&__ptr, 2uLL, 1uLL, Ten8File);
  *a2 = 0;
  do
  {
    bzero(&__ptr, 0x400uLL);
    result = fread(&__ptr, 2uLL, 1uLL, Ten8File);
    if (!result)
    {
LABEL_20:
      *a2 = 0;
      return result;
    }

    p_ptr = &__ptr;
    while (*p_ptr != 13)
    {
      result = fread(++p_ptr, 2uLL, 1uLL, Ten8File);
      if (!result)
      {
        goto LABEL_20;
      }
    }

    result = fread(p_ptr, 2uLL, 1uLL, Ten8File);
  }

  while (__ptr != a1);
  *p_ptr = 0;
  v6 = v14;
  if (v14)
  {
    v7 = &v15;
    v8 = a2;
    do
    {
      if ((v6 - 10241) <= 0xFE)
      {
        *v8 = v6;
      }

      v9 = *v7++;
      v6 = v9;
      ++v8;
    }

    while (v9);
  }

  if ((a1 - 19968) >> 8 <= 0xAC)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = 0;
      do
      {
        if (!v11)
        {
          *a2 = v10 | 0x40;
        }

        v12 = *++a2;
        v10 = v12;
        --v11;
      }

      while (v12);
    }

    *(a2 - 1) |= 0x80u;
  }

  return result;
}

size_t DetialYomiSet(int a1, const __int32 *a2)
{
  fseek(DetailFile, 0, 0);
  fread(&__ptr, 2uLL, 1uLL, DetailFile);
  *a2 = 0;
  do
  {
    bzero(&__ptr, 0x400uLL);
    if (!fread(&__ptr, 2uLL, 1uLL, DetailFile))
    {
LABEL_15:
      result = 0;
      *a2 = 0;
      return result;
    }

    p_ptr = &__ptr;
    while (*p_ptr != 13)
    {
      if (!fread(++p_ptr, 2uLL, 1uLL, DetailFile))
      {
        goto LABEL_15;
      }
    }

    fread(p_ptr, 2uLL, 1uLL, DetailFile);
  }

  while (__ptr != a1);
  *p_ptr = 0;
  v5 = v10;
  if (v10)
  {
    v6 = 0;
    do
    {
      if ((v5 - 32) < 0x60 || (v5 - 65377) <= 0x3E)
      {
        a2[v6] = v5;
      }

      v5 = v11[v6++];
    }

    while (v5);
    v7 = v6 + 2;
  }

  else
  {
    v7 = 2;
  }

  a2[v7 - 2] = 0;
  return wcslen(a2);
}

void DetailSet(int *a1)
{
  bzero(m_cKanaBuf, 0x9600uLL);
  bzero(&m_cCurBuf, 0x4B00uLL);
  v2 = *a1;
  if (*a1)
  {
    v3 = 0;
    v4 = 1;
    v5 = &m_cCurBuf;
    while (1)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      if ((v2 - 32) > 0x5F)
      {
        if ((v2 - 12353) <= 0x52)
        {
          if (v4 < 2 || v3 == 4)
          {
            if (v3 != 4)
            {
              goto LABEL_20;
            }
          }

          else
          {
            wcscat(m_cKanaBuf, dword_28D94);
            *v5 = v4;
            *(v5 + 1) = v4;
            v5 = (v5 + 4);
LABEL_20:
            wcscat(m_cKanaBuf, dword_28DB8);
            v7 = 6;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              --v7;
            }

            while (v7);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          ZenToHan(a1, &v26);
          wcscat(m_cKanaBuf, &v26);
          if (v26)
          {
            v8 = 1;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              v9 = wcslen(&v26) > v8++;
            }

            while (v9);
          }

          v3 = 4;
          goto LABEL_43;
        }

        if ((v2 - 12449) <= 0x52)
        {
          if (v4 < 2 || v3 == 5)
          {
            if (v3 != 5)
            {
              goto LABEL_37;
            }
          }

          else
          {
            wcscat(m_cKanaBuf, dword_28D94);
            *v5 = v4;
            *(v5 + 1) = v4;
            v5 = (v5 + 4);
LABEL_37:
            wcscat(m_cKanaBuf, dword_28DD4);
            v11 = 5;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              --v11;
            }

            while (v11);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          ZenToHan(a1, &v26);
          wcscat(m_cKanaBuf, &v26);
          if (v26)
          {
            v12 = 1;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              v9 = wcslen(&v26) > v12++;
            }

            while (v9);
          }

          v3 = 5;
          goto LABEL_43;
        }

        if ((v2 - 65377) <= 0x3E)
        {
          if (v4 >= 2 && v3 != 2)
          {
            wcscat(m_cKanaBuf, dword_28D94);
            *v5 = v4;
            *(v5 + 1) = v4;
            v5 = (v5 + 4);
          }

          if (v3 != 5)
          {
            wcscat(m_cKanaBuf, dword_28DEC);
            *v5++ = vdupq_n_s16(v4);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          ZenToHan(a1, &v26);
          wcscat(m_cKanaBuf, &v26);
          if (v26)
          {
            v10 = 1;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              v9 = wcslen(&v26) > v10++;
            }

            while (v9);
          }

          v3 = 2;
          goto LABEL_43;
        }

        if ((v2 - 65296) < 0xA || (v2 - 65345) < 0x1A || (v2 - 65313) <= 0x19)
        {
          if (v4 < 2 || v3 == 7)
          {
            if (v3 != 7)
            {
              goto LABEL_62;
            }
          }

          else
          {
            wcscat(m_cKanaBuf, dword_28D94);
            *v5 = v4;
            *(v5 + 1) = v4;
            v5 = (v5 + 4);
LABEL_62:
            wcscat(m_cKanaBuf, dword_28E10);
            v16 = 11;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              --v16;
            }

            while (v16);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          ZenToHan(a1, &v26);
          wcscat(m_cKanaBuf, &v26);
          if (v26)
          {
            v17 = 1;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              v9 = wcslen(&v26) > v17++;
              v3 = 7;
            }

            while (v9);
          }

          else
          {
            v3 = 7;
          }

          goto LABEL_43;
        }

        if ((v2 - 10241) > 0xFE)
        {
          v14 = ZenToHan(a1, &v26);
          v15 = *a1;
          if (!v14)
          {
            if (DetialYomiSet(v15, &v26))
            {
              if (v4 >= 2)
              {
                wcscat(m_cKanaBuf, dword_28D94);
                *v5 = v4;
                *(v5 + 1) = v4;
                v5 = (v5 + 4);
              }

              wcscat(m_cKanaBuf, &v26);
              if (v26)
              {
                v19 = 1;
                do
                {
                  *v5 = v4;
                  v5 = (v5 + 2);
                  v9 = wcslen(&v26) > v19++;
                  v3 = 6;
                }

                while (v9);
              }

              else
              {
                v3 = 6;
              }
            }

            else if (*a1 >= 129)
            {
              if (v4 >= 2)
              {
                wcscat(m_cKanaBuf, dword_28D94);
                *v5 = v4;
                *(v5 + 1) = v4;
                v5 = (v5 + 4);
              }

              if (v3 != 9)
              {
                wcscat(m_cKanaBuf, dword_28E78);
                v24 = 7;
                do
                {
                  *v5 = v4;
                  v5 = (v5 + 2);
                  --v24;
                }

                while (v24);
              }

              wcscat(m_cKanaBuf, &v26);
              if (v26)
              {
                v25 = 1;
                do
                {
                  *v5 = v4;
                  v5 = (v5 + 2);
                  v9 = wcslen(&v26) > v25++;
                  v3 = 9;
                }

                while (v9);
              }

              else
              {
                v3 = 9;
              }
            }

            goto LABEL_43;
          }

          if (v15 <= 12538)
          {
            if ((v15 - 12288) >= 3)
            {
              goto LABEL_88;
            }
          }

          else if ((v15 - 12539) >= 2 && v15 != 65311 && v15 != 65281)
          {
            goto LABEL_88;
          }

          if (v3 - 3 <= 3)
          {
            wcscat(m_cKanaBuf, &v26);
            wcscat(m_cKanaBuf, &unk_28E58);
            if (wcslen(&v26) != -1)
            {
              v20 = 0;
              v21 = 0;
              do
              {
                *(v5 + v21++) = v4;
                v20 += 2;
              }

              while (wcslen(&v26) + 1 > v21);
              v5 = (v5 + v20);
            }

            goto LABEL_43;
          }

LABEL_88:
          if (v4 < 2 || v3 == 3)
          {
            if (v3 != 3)
            {
              goto LABEL_92;
            }
          }

          else
          {
            wcscat(m_cKanaBuf, dword_28D94);
            *v5 = v4;
            *(v5 + 1) = v4;
            v5 = (v5 + 4);
LABEL_92:
            wcscat(m_cKanaBuf, dword_28E60);
            v22 = 11;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              --v22;
            }

            while (v22);
          }

          wcscat(m_cKanaBuf, &v26);
          if (v26)
          {
            v23 = 1;
            do
            {
              *v5 = v4;
              v5 = (v5 + 2);
              v9 = wcslen(&v26) > v23++;
              v3 = 3;
            }

            while (v9);
          }

          else
          {
            v3 = 3;
          }

          goto LABEL_43;
        }

        if (v4 < 2 || v3 == 8)
        {
          if (v3 != 8)
          {
            goto LABEL_70;
          }
        }

        else
        {
          wcscat(m_cKanaBuf, dword_28D94);
          *v5 = v4;
          *(v5 + 1) = v4;
          v5 = (v5 + 4);
LABEL_70:
          wcscat(m_cKanaBuf, dword_28E40);
          v18 = 5;
          do
          {
            *v5 = v4;
            v5 = (v5 + 2);
            --v18;
          }

          while (v18);
          v2 = *a1;
        }

        m_cKanaBuf[wcslen(m_cKanaBuf)] = v2;
        *v5 = v4;
        v5 = (v5 + 2);
        v3 = 8;
        goto LABEL_43;
      }

      if (v3 >= 2)
      {
        break;
      }

      if (v3 != 1)
      {
        goto LABEL_11;
      }

LABEL_14:
      m_cKanaBuf[wcslen(m_cKanaBuf)] = v2;
      *v5 = v4;
      v5 = (v5 + 2);
      v3 = 1;
LABEL_43:
      v13 = a1[1];
      ++a1;
      v2 = v13;
      ++v4;
      if (!v13)
      {
        return;
      }
    }

    wcscat(m_cKanaBuf, dword_28D94);
    *v5 = v4;
    *(v5 + 1) = v4;
    v5 = (v5 + 4);
LABEL_11:
    wcscat(m_cKanaBuf, dword_28DA0);
    v6 = 5;
    do
    {
      *v5 = v4;
      v5 = (v5 + 2);
      --v6;
    }

    while (v6);
    v2 = *a1;
    goto LABEL_14;
  }
}

uint64_t TextToBrl()
{
  v0 = __chkstk_darwin();
  if (!m_IsInit)
  {
    return 1;
  }

  v1 = v0;
  v2 = *(v0 + 8);
  m_cStrBuf = *v0;
  m_iMaxBuf = 8;
  v3 = &unk_C3000;
  m_PinInfo = 0;
  v4 = *(v0 + 52);
  v5 = *(v0 + 56);
  LODWORD(m_PinInfo) = ((*(v0 + 48) & 3) << 14) | ((*(v0 + 60) & 1) << 16);
  m_sPinStrBuf = v2;
  v6 = *(v0 + 16);
  m_sPinKeyBuf = v6;
  m_cStrBuf = *v0;
  v7 = *(v0 + 40);
  m_iMaxCol = *(v0 + 36);
  m_iWordLapFlg = v5;
  m_Kan = 0;
  v8 = m_PinInfo & 0xFFFFF9FF | ((v4 & 3) << 9);
  m_iIsListFlg = 0;
  if (v7 == 1)
  {
    v9 = 128;
  }

  else
  {
    if (v7 != 2)
    {
      goto LABEL_8;
    }

    v9 = 384;
  }

  v8 |= v9;
  m_iWordLapFlg = 0;
LABEL_8:
  v11 = *(v0 + 44);
  if (v11 <= 2)
  {
    if (v11 == 1)
    {
      v8 |= 0x2800u;
    }

    else if (v11 == 2)
    {
      v8 |= 0x2000u;
    }

    goto LABEL_17;
  }

  if (v11 == 3)
  {
    v8 |= 0x3000u;
    goto LABEL_17;
  }

  if (v11 != 4)
  {
LABEL_17:
    LODWORD(m_PinInfo) = v8;
    goto LABEL_18;
  }

  LODWORD(m_PinInfo) = v8 | 0x800;
  m_iWordLapFlg = 0;
  m_Kan = 4;
LABEL_18:
  m_iPinBlockCount = 0;
  m_iPinBlockCur = 0;
  m_iLoopFlg = 0;
  m_iCurFarstFlg = 0;
  m_iCurFlg = 0;
  m_iNextCol = 0;
  m_iBeforeCol = 0;
  m_Zen = 0;
  v12 = *(v0 + 24);
  v13 = *(v0 + 28);
  v259 = *(v0 + 32);
  *v2 = 0;
  *v6 = 0;
  *__s = 0;
  v278 = 0;
  v279 = 0;
  v275 = 0u;
  v276 = 0u;
  bzero(v281, 0x9600uLL);
  bzero(v280, 0x4B00uLL);
  if ((m_PinInfo & 0x680) != 0)
  {
    if ((m_PinInfo & 0x600) == 0 || (m_PinInfo & 0x80) != 0)
    {
      v257 = 0;
      if ((m_PinInfo & 0x80) != 0)
      {
        v14 = *v1;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      DetailSet(*v1);
      v14 = m_cKanaBuf;
      v257 = &m_cCurBuf;
    }

    v15 = v12;
    v16 = v13;
  }

  else
  {
    v257 = v282;
    ktoau::KToA(&Ktoau, *v1, v282, v283, 0);
    if ((m_PinInfo & 0x3800) == 0x2800)
    {
      v257 = v280;
      Eiji1To2(v283, v281, v282, v280);
      wcscpy(v283, v281);
      m_Kan = m_Kan & 0xF9 | (2 * IsInyou(v283));
    }

    v14 = v283;
    v15 = v12;
    v16 = v13;
    if (*(v1 + 40) == 3)
    {
      v253 = 0;
      *(v1 + 80) = v283;
      return v253;
    }
  }

  v17 = m_iLoopFlg;
  v253 = 2;
  if (m_iLoopFlg != 2)
  {
    v18 = 0;
    v254 = 0;
    v255 = 0;
    v19 = 0;
    v260 = 0;
    LODWORD(v20) = 0;
    v266 = 0;
    v21 = 0;
    v249 = v15 - 1;
    v250 = v259 - 1;
    v252 = v15 | 0x4000;
    v251 = v1;
    v256 = v15;
    v258 = v16;
    while (1)
    {
      if (v17 && v15)
      {
        v239 = m_iPinBlockCount;
        m_iPinBlockCur = m_iPinBlockCount;
        v240 = m_iPinBlockCount + 1;
        v241 = v251;
        v251[16] = m_iPinBlockCount + 1;
        v251[17] = v239;
        v242 = m_iNextCol;
LABEL_1002:
        v241[18] = v242;
        v243 = m_iBeforeCol;
        goto LABEL_1003;
      }

      v22 = v3[38];
      if (v21)
      {
        v23 = 0;
        v24 = v3[38] & 0x80;
        v25 = v21;
      }

      else
      {
        if ((v22 & 0x80) != 0)
        {
          v26 = v18 + 1;
        }

        else
        {
          v26 = v257->u16[v18];
        }

        v260 = v26;
        v25 = *v14;
        if (!*v14)
        {
          v247 = v15;
          SetPinDat(__s, v20);
          if (v247)
          {
            m_iPinBlockCur = m_iPinBlockCount;
          }

          v241 = v251;
          if (m_iLoopFlg != 1)
          {
            m_iNextCol = 0xFFFF;
          }

          v240 = m_iPinBlockCount + 1;
          v248 = m_iPinBlockCur;
          v251[16] = m_iPinBlockCount + 1;
          v251[17] = v248;
          if (v247)
          {
            v242 = m_iNextCol;
            goto LABEL_1002;
          }

          v243 = 0;
          v251[18] = 0;
LABEL_1003:
          v241[19] = v243;
          v244 = (v240 * m_iMaxCol);
          if (v244 >= 1)
          {
            v245 = m_sPinStrBuf;
            do
            {
              v246 = *v245;
              if (*v245 == 64)
              {
                v246 &= 0xFF00u;
                *v245 = v246;
              }

              if ((~v3[38] & 0x180) == 0)
              {
                *v245 = v246 & 0x300 | (2 * (v246 & 3)) & 0xE | (((v246 & 4) != 0) << 6) & 0x7E | (16 * ((v246 >> 3) & 3)) & 0x7E | (((v246 >> 5) & 1) << 7) | (v246 >> 6) & 1 | (v246 >> 4) & 8;
              }

              ++v245;
              --v244;
            }

            while (v244);
          }

          return 0;
        }

        v24 = v3[38] & 0x80;
        v23 = v266;
      }

      v264 = v18;
      v261 = v20;
      if (v24)
      {
        break;
      }

      if (v257->i16[v18])
      {
        v38 = v257 + v18 + 1;
        do
        {
          v40 = *v38++;
          v39 = v40;
        }

        while (v257->u16[v18] == v40);
        v36 = 0;
        if (v39)
        {
          v19 = v39;
        }

        else
        {
          v19 = v257->u16[v18];
        }

        if ((v25 - 32) < 0x60)
        {
          v266 = 0;
          goto LABEL_75;
        }

        v41 = v25 - 65376;
        v266 = 0;
      }

      else
      {
        v19 = 0;
        if ((v25 - 32) < 0x60)
        {
          v36 = 0;
          v266 = 0;
          goto LABEL_75;
        }

        v41 = v25 - 65376;
        v36 = 0;
        v266 = 0;
      }

      if (v41 >= 0x40)
      {
        goto LABEL_66;
      }

LABEL_75:
      v263 = v19;
      if ((v25 - 65345) < 0x1A || (v25 - 65313) <= 0x19)
      {
        ZenToHan(v14, &v275);
        v25 = v275;
        v46 = v3[38];
        if (m_iIsListFlg)
        {
          v47 = m_Zen;
          if ((v46 & 0x600) != 0)
          {
            if ((m_Zen & 0x10) == 0)
            {
              m_Kan = 0;
              v48 = &__s[strlen(__s)];
              if ((v46 & 0x100) == 0)
              {
                v262 = 0;
                goto LABEL_89;
              }

              v262 = 0;
LABEL_118:
              strcpy(v48, "8\a");
              goto LABEL_142;
            }

            if (!v18 || (m_Zen & 2) == 0)
            {
              v262 = 0;
              goto LABEL_142;
            }

LABEL_121:
            v47 &= ~2u;
            m_Kan = 0;
            v262 = 0;
            *&__s[strlen(__s)] = 6;
            goto LABEL_142;
          }
        }

        else
        {
          v47 = m_Zen;
          if ((v46 & 0x600) == 0 || !v18)
          {
            v262 = 0;
            goto LABEL_142;
          }

          if ((m_Zen & 0x10) == 0)
          {
            v262 = 0;
            strcat(__s, "\b4");
            goto LABEL_141;
          }

          if ((m_Zen & 2) != 0)
          {
            goto LABEL_121;
          }
        }

        v262 = 0;
        goto LABEL_142;
      }

      if ((v25 - 12353) <= 0x52)
      {
        v275 = 0u;
        v276 = 0u;
        ZenToHan(v14, &v275);
        v25 = v275;
        v262 = DWORD1(v275);
        if (m_iIsListFlg && (v43 = v3[38], (v43 & 0x600) != 0))
        {
          v44 = m_Zen;
          if (v18 && (m_Zen & 0x10) == 0)
          {
            v45 = &__s[strlen(__s)];
            if ((v43 & 0x100) != 0)
            {
              strcpy(v45, "8\a");
            }

            else
            {
              *v45 = 2368056;
            }

            m_Kan = 0;
          }
        }

        else
        {
          if (v18 && (m_Zen & 0x10) == 0 && (m_PinInfo & 0x600) != 0)
          {
            strcat(__s, "\b4");
            m_Kan &= 0xF8u;
          }

          v52 = m_Kan;
          if ((m_Kan & 6) == 2)
          {
            *&__s[strlen(__s)] = 52;
            m_Kan = v52 & 0xF8;
          }

          v44 = m_Zen;
        }

        if ((~v44 & 0x12) == 0)
        {
          *&__s[strlen(__s)] = 6;
        }

        v47 = v44 & 0xED;
        goto LABEL_142;
      }

      if ((v25 - 12449) <= 0x52)
      {
        v275 = 0u;
        v276 = 0u;
        ZenToHan(v14, &v275);
        v25 = v275;
        v49 = DWORD1(v275);
        v47 = m_Zen;
        if ((m_Zen & 0x10) == 0)
        {
          if (m_iIsListFlg)
          {
            v50 = v3[38];
            if ((v50 & 0x600) != 0)
            {
              v51 = &__s[strlen(__s)];
              if ((v50 & 0x100) != 0)
              {
                strcpy(v51, "8\a");
              }

              else
              {
                *v51 = 2368056;
              }
            }
          }
        }

        v262 = v49;
        if ((m_Kan & 6) != 2)
        {
          goto LABEL_142;
        }

        *&__s[strlen(__s)] = 52;
LABEL_141:
        m_Kan = 0;
LABEL_142:
        m_Zen = v47 | 0x10;
        v53 = v25 - 65377;
        v54 = (v25 - 65377) < 0x3F;
        goto LABEL_143;
      }

      if (v25 >= 128)
      {
        if (v25 > 12538)
        {
          if ((v25 - 65281) <= 0x1E && ((1 << (v25 - 1)) & 0x40000181) != 0 || v25 == 12539 || v25 == 65374)
          {
            goto LABEL_125;
          }
        }

        else if ((v25 - 12289) <= 0xC && ((1 << (v25 - 1)) & 0x1803) != 0 || (v25 - 8220) < 2)
        {
          goto LABEL_125;
        }

        if ((v25 - 65377) >= 0x3F)
        {
          v275 = 0u;
          v276 = 0u;
          v137 = v15;
          v138 = v16;
          v139 = ZenToHan(v14, &v275);
          v16 = v138;
          v15 = v137;
          if (v139)
          {
            v25 = v275;
            v47 = m_Zen;
            v262 = DWORD1(v275);
            if (v18)
            {
              if ((m_Zen & 0x10) == 0)
              {
                v140 = v3[38];
                if ((v140 & 0x600) != 0)
                {
                  if (m_iIsListFlg)
                  {
                    v48 = &__s[strlen(__s)];
                    if ((v140 & 0x100) != 0)
                    {
                      goto LABEL_118;
                    }

LABEL_89:
                    *v48 = 2368056;
                  }

                  else
                  {
                    strcat(__s, "\b4");
                  }
                }

                goto LABEL_142;
              }
            }

            else if ((m_Zen & 0x10) == 0)
            {
              goto LABEL_142;
            }

            if ((m_Zen & 2) != 0 && v275 != 65392 && v275 != 65381)
            {
              *&__s[strlen(__s)] = 6;
              v47 &= ~2u;
            }

            goto LABEL_142;
          }
        }
      }

LABEL_125:
      if (v25 >> 8 == 40 && v36)
      {
        v164 = v15;
        v165 = v16;
        SetPinDat(__s, v20);
        v16 = v165;
        v15 = v164;
        if (v25 <= 0x2800)
        {
          v166 = 64;
        }

        else
        {
          v166 = v25;
        }

        __s[0] = v166;
        __s[1] = 0;
        m_Zen |= 0x10u;
        m_Kan &= 0xF6u;
        LODWORD(v20) = v260;
        v25 = 0;
        v19 = v263;
        goto LABEL_906;
      }

      v262 = 0;
      v53 = v25 - 65377;
      v54 = (v25 - 65377) < 0x3F;
      if ((v25 - 65377) >= 0x3F && v25 > 127 && v36)
      {
        v55 = m_Zen;
        LODWORD(v18) = v264;
        if (!v264 || (m_Zen & 0x10) != 0 || m_iIsListFlg)
        {
          v56 = v256;
          v57 = v258;
          if (m_iIsListFlg)
          {
            if ((m_Zen & 0x10) == 0)
            {
              v176 = v3[38];
              if ((v176 & 0x600) != 0)
              {
                v177 = &__s[strlen(__s)];
                if ((v176 & 0x100) != 0)
                {
                  strcpy(v177, "8\a");
                }

                else
                {
                  *v177 = 2368056;
                }
              }
            }
          }
        }

        else
        {
          v56 = v256;
          v57 = v258;
          if ((m_PinInfo & 0x600) != 0)
          {
            strcat(__s, "\b4");
          }
        }

        if ((~v55 & 0x12) == 0 && (v25 - 12539) >= 2 && v25 != 65281 && v25 != 65311)
        {
          *&__s[strlen(__s)] = 6;
          LOBYTE(v55) = v55 & 0xFD;
        }

        v202 = m_Kan;
        if ((m_Kan & 6) == 2)
        {
          v203 = *(v14 - 1);
          if (((v203 - 8213) > 8 || ((1 << (v203 - 21)) & 0x199) == 0) && v203 != 65505)
          {
            *&__s[strlen(__s)] = 52;
            v202 &= 0xF9u;
          }
        }

        m_Zen = v55 | 0x10;
        m_Kan = v202 & 0xF6;
        SetPinDat(__s, v20);
        *__s = 0;
        v204 = v3[38];
        if ((v204 & 0x80) != 0)
        {
          if ((v204 & 0x100) != 0)
          {
            KanjiTo8Ten(v25, __s);
          }

          else
          {
            KanjiTo6Ten(v25, __s);
            if (wcschr(dword_40ED8, v25) && !wcschr(dword_40ED8, *(v14 - 1)))
            {
              __s[2] = __s[0];
              *__s = 15376;
              __s[3] = 0;
            }
          }
        }

        if (v25 <= 65280)
        {
          v19 = v263;
          v15 = v56;
          v16 = v57;
          if ((v25 - 12289) >= 2)
          {
            v205 = 12539;
            goto LABEL_757;
          }

          goto LABEL_758;
        }

        v19 = v263;
        v15 = v56;
        v16 = v57;
        if (v25 == 65311)
        {
          goto LABEL_758;
        }

        v205 = 65281;
LABEL_757:
        if (v25 == v205)
        {
LABEL_758:
          v206 = v14[1];
          v207 = 12289;
          v208 = &dword_28D28;
          while (v206 != v207)
          {
            v209 = *v208++;
            v207 = v209;
            if (!v209)
            {
              v210 = 46;
              v211 = &dword_28D6C;
              while (v210 != v206)
              {
                v212 = *v211++;
                v210 = v212;
                if (!v212)
                {
                  v213 = strlen(__s);
                  v16 = v57;
                  v15 = v56;
                  *&__s[v213] = 64;
                  v19 = v263;
                  goto LABEL_765;
                }
              }

              break;
            }
          }
        }

LABEL_765:
        v25 = 0;
        m_Zen |= 0x10u;
        LODWORD(v20) = v260;
        goto LABEL_906;
      }

LABEL_143:
      if (v25 == 32)
      {
        SetPinDat(__s, v20);
        __s[0] = 0;
        v18 = v264;
        v21 = v262;
        if ((m_Kan & 6) != 0 && !m_iIsListFlg)
        {
          v110 = (v3[38] >> 11) & 7;
          if ((v110 == 5 || !v110) && IsInyouTozi(v14))
          {
            v111 = (m_Kan >> 1) & 3;
            if (v111 == 1 || (v112 = (v3[38] >> 11) & 7, v112 == 5) || !v112)
            {
              v113 = 52;
              goto LABEL_343;
            }

            if (v111 == 2)
            {
              __s[2] = 0;
              v113 = 13344;
LABEL_343:
              *__s = v113;
            }

            m_Kan &= 0xF9u;
          }
        }

        v114 = m_Zen;
        v115 = v3[38];
        if (v266)
        {
          if ((m_Zen & 0x10) == 0 && (v115 & 0x600) != 0 && (v115 & 0x80) != 0)
          {
            strcat(__s, "\b4");
          }

          if ((v115 & 0x10000) != 0 && !v264)
          {
            strcat(__s, "@@");
            goto LABEL_450;
          }
        }

        else if ((m_Zen & 0x10) != 0 && (v115 & 0x600) != 0 && (v115 & 0x80) != 0)
        {
          strcat(__s, "\b&");
        }

        *&__s[strlen(__s)] = 64;
LABEL_450:
        v146 = m_Kan & 0xC6;
        if ((v115 & 0x3800) == 0x1800)
        {
          v146 = m_Kan & 0xC6 | 0x10;
        }

        m_Kan = v146;
        v19 = v263;
        v15 = v256;
        v16 = v258;
        if (v266)
        {
          if ((v114 & 0x10) == 0)
          {
            v147 = v114 | 0x10;
            goto LABEL_528;
          }
        }

        else if ((v114 & 0x10) != 0)
        {
          v266 = 0;
          v147 = v114 & 0xEF;
LABEL_528:
          m_Zen = v147;
        }

        else
        {
          v266 = 0;
        }

        v25 = 32;
        goto LABEL_963;
      }

      if (v25 == 9)
      {
        SetPinDat(__s, v20);
        v108 = v3[38];
        memset(__s, 64, (v108 >> 14) + 1);
        *(&dword_0 + (__s | (v108 >> 14)) + 2) = 0;
        v109 = m_Kan & 0x86;
        if ((v108 & 0x3800) == 0x1800)
        {
          v109 = m_Kan & 0x86 | 0x10;
        }

        m_Kan = v109;
        m_Zen &= ~0x10u;
        v25 = 9;
LABEL_366:
        LODWORD(v20) = v260;
        v15 = v256;
        v16 = v258;
LABEL_368:
        v21 = v262;
        v19 = v263;
        v18 = v264;
        if (v262)
        {
          goto LABEL_964;
        }

        goto LABEL_906;
      }

      if ((v25 - 10369) <= 0x7E)
      {
        v116 = *v14;
        v117 = v256;
        v118 = v258;
        v18 = v264;
        v21 = v262;
        if (*v14 == 10296)
        {
          if (v14[1] == 10292 && (v3[38] & 0x3800) == 0x800)
          {
            v119 = (m_Kan >> 1) & 3;
            if (v119)
            {
              if (v119 == 1)
              {
                *&__s[strlen(__s)] = 52;
              }

              else
              {
                strcat(__s, " 4");
              }
            }
          }

          v116 = *v14;
        }

        if (v116 == 10292)
        {
          if (v14[1] == 32 && (m_Kan & 6) != 0 && (v3[38] & 0x3800) == 0x2800)
          {
            v188 = m_Kan & 0xF9;
LABEL_669:
            m_Kan = v188;
          }
        }

        else if (v116 == 10278 && *(v14 - 1) == 32 && (m_Kan & 6) == 0 && (v3[38] & 0x3800) == 0x2800)
        {
          v188 = m_Kan | 2;
          goto LABEL_669;
        }

        SetPinDat(__s, v20);
        __s[0] = v25;
        __s[1] = 0;
        v170 = &unk_C3000;
        v169 = m_Kan | 0x40;
LABEL_671:
        v170[164] = v169;
LABEL_672:
        LODWORD(v20) = v260;
        v19 = v263;
        v15 = v117;
        v16 = v118;
        if (v21)
        {
          goto LABEL_964;
        }

        goto LABEL_906;
      }

      if ((v25 - 33) <= 0x5D && ((v3[38] >> 11) & 5 | 2) == 6)
      {
        SetPinDat(__s, v20);
        if (v25 <= 0x5F)
        {
          v120 = v25 - 32;
        }

        else
        {
          v120 = v25 - 64;
        }

        v121 = byte_28E98[v120] & 0x3F;
        __s[0] = v121;
        if ((v25 - 64) <= 0x1E && (v3[38] & 0x3800) == 0x3000)
        {
          __s[0] = v121 | 0x40;
        }

        __s[1] = 0;
        m_Zen &= ~2u;
        goto LABEL_366;
      }

      if (v25 != 63)
      {
        v72 = v25 - 48;
        if ((v25 - 48) <= 9 && v255 == 46)
        {
          if ((m_Kan & 8) != 0 && (m_Kan & 6) != 4)
          {
            __s[0] = 2;
            SetPinDat(__s, v20);
            strcpy(__s, &m_pcBrDat[3 * v25]);
            goto LABEL_366;
          }

LABEL_406:
          if ((v3[38] & 0x3800) == 0x1800)
          {
            v135 = m_Kan & 0xCF | 0x10;
          }

          else
          {
            v135 = m_Kan & 0xCF;
          }

          m_Kan = v135;
          SetPinDat(__s, v20);
          __s[0] = 0;
          v136 = v3[38];
          if ((v136 & 0x600) == 0)
          {
            goto LABEL_496;
          }

          if ((v136 & 0x80) == 0 || v266)
          {
            if ((v136 & 0x80) == 0 || !v266 || (m_Zen & 0x10) != 0)
            {
              goto LABEL_496;
            }

            strcpy(__s, "\b4<");
LABEL_495:
            v159 = m_Kan | 8;
          }

          else
          {
            if ((m_Zen & 0x10) != 0)
            {
              strcpy(__s, "\b<");
              goto LABEL_495;
            }

LABEL_496:
            v159 = m_Kan;
            if ((m_Kan & 8) == 0)
            {
              v159 = m_Kan | 8;
              strcpy(__s, "<");
            }
          }

          strcat(__s, &m_pcBrDat[3 * v25]);
          m_Kan = v159 & 0xBF;
          v160 = m_Zen;
          v15 = v256;
          v16 = v258;
          v18 = v264;
          v21 = v262;
          if (v266)
          {
            v19 = v263;
            goto LABEL_955;
          }

          v19 = v263;
LABEL_958:
          if ((v160 & 0x10) == 0)
          {
            v266 = 0;
            goto LABEL_963;
          }

          v266 = 0;
          goto LABEL_961;
        }

        if (v72 <= 9 && v255 == 44 && (m_Kan & 8) != 0)
        {
          if ((*v14 - 48) > 9 || (v14[1] - 48) > 9 || (v14[2] - 48) < 0xA || (v3[38] & 0x3800) != 0x2800 && (v3[38] & 0x3800) != 0)
          {
            __s[0] = 2;
            m_Kan &= ~8u;
          }

          else
          {
            __s[0] = 4;
          }

          v117 = v256;
          v118 = v258;
          v18 = v264;
          v21 = v262;
          __s[1] = 0;
          SetPinDat(__s, v20);
          __s[0] = 0;
          if (((v3[38] >> 11) & 7u) - 1 < 3 || (m_Kan & 8) == 0)
          {
            strcpy(__s, "<");
            m_Kan |= 8u;
          }

          strcat(__s, &m_pcBrDat[3 * v25]);
          goto LABEL_672;
        }

        if (v72 <= 9)
        {
          goto LABEL_406;
        }

        if ((v25 - 65393) <= 0x2A && ((1 << (v25 - 113)) & 0x7C00000001FLL) != 0)
        {
          if ((m_Kan & 8) != 0)
          {
            SetPinDat(__s, v20);
            __s[0] = 0;
            v142 = (m_Kan >> 1) & 3;
            if (v142 == 2)
            {
              __s[2] = 0;
              *__s = 1076;
              v117 = v256;
              v118 = v258;
              v18 = v264;
              v21 = v262;
            }

            else
            {
              v18 = v264;
              v21 = v262;
              if (v142 == 1)
              {
                v118 = v258;
                v117 = v256;
                v143 = 52;
                goto LABEL_552;
              }

              if ((*v14 - 12449) > 0x52 || (m_Zen & 2) != 0)
              {
                v118 = v258;
                v117 = v256;
                v143 = 36;
LABEL_552:
                *__s = v143;
              }

              else
              {
                if ((m_PinInfo & 0x100) != 0)
                {
                  v167 = 22;
                }

                else
                {
                  __s[2] = 0;
                  v167 = 9248;
                }

                *__s = v167;
                v118 = v258;
                v117 = v256;
                m_Zen |= 2u;
              }
            }

            strcat(__s, &loc_114F0 + (3 * v25));
            v169 = 64;
            v170 = &unk_C3000;
            goto LABEL_671;
          }

          v73 = v25 - 97;
LABEL_187:
          v265 = v25 - 65;
          v58 = v3[38];
          v60 = 1;
        }

        else
        {
          v73 = v25 - 97;
          if ((v25 - 97) <= 9)
          {
            if ((m_Kan & 8) != 0 && (m_Kan & 7) != 0)
            {
              m_Kan &= ~8u;
              SetPinDat(__s, v20);
              if (((v3[38] >> 11) & 7u) - 1 <= 2 && v255 == 44)
              {
                __s[0] = 0;
              }

              else
              {
                strcpy(__s, "0");
              }

              v117 = v256;
              v118 = v258;
              v18 = v264;
              v21 = v262;
              strcat(__s, &m_pcBrDat[3 * v25]);
              v170 = &unk_C3000;
              v169 = m_Kan & 0xBF;
              goto LABEL_671;
            }

            goto LABEL_187;
          }

          v60 = v25 > 64;
          v58 = v3[38];
          v265 = v25 - 65;
          if ((v25 - 65) <= 9 && (v3[38] & 0x3000) == 0x1000 && (m_Kan & 8) != 0 && (m_Kan & 7) != 0)
          {
            m_Kan = m_Kan & 0xC7 | 0x10;
            SetPinDat(__s, v261);
            v74 = 32;
LABEL_193:
            *__s = v74;
            strcat(__s, &m_pcBrDat[3 * v25]);
            m_Kan &= ~0x40u;
            LODWORD(v20) = v260;
            v15 = v256;
            v16 = v258;
            v18 = v264;
            v21 = v262;
            v19 = v263;
            if (v262)
            {
              goto LABEL_964;
            }

            goto LABEL_906;
          }
        }

        v61 = m_Kan;
        v59 = v73 < 0x1A;
        if ((m_Kan & 0x30) != 0 && v73 <= 0x19)
        {
          v59 = 1;
          if ((m_Kan & 7) != 0 && (v58 & 0x3000) == 0x1000)
          {
            m_Kan &= 0xC7u;
            SetPinDat(__s, v261);
            v74 = 48;
            goto LABEL_193;
          }
        }

        goto LABEL_151;
      }

      v58 = v3[38];
      if ((v58 & 0x3800) != 0x800)
      {
        SetPinDat(__s, v261);
        v134 = m_Kan;
        if ((m_Kan & 6) == 4)
        {
          v15 = v256;
          v16 = v258;
          v20 = v264;
          v21 = v262;
          if ((m_Kan & 0x40) != 0)
          {
            *__s = 2494480;
          }

          else
          {
            __s[2] = 0;
            *__s = 9744;
          }
        }

        else
        {
          v15 = v256;
          if ((v255 & 0xFFFFFFDF) - 65 >= 0x1A)
          {
            v155 = 34;
          }

          else
          {
            v155 = 38;
          }

          *__s = v155;
          v156 = v14[1];
          v16 = v258;
          v20 = v264;
          v21 = v262;
          if (v156 != 12288)
          {
            v157 = IsMoji(v14 + 1);
            if (v156 < 128 || (v16 = v258, v15 = v256, v157 != 3))
            {
              v158 = strlen(__s);
              v16 = v258;
              v15 = v256;
              *&__s[v158] = 64;
            }
          }
        }

        m_Kan = v134 & 0xBF;
        v168 = v134 & 0x8F;
        if ((v3[38] & 0x3800) == 0x1800)
        {
          v168 |= 0x10u;
        }

        m_Kan = v168;
        v25 = 63;
        v19 = v263;
        v18 = v20;
        LODWORD(v20) = v260;
        if (v21)
        {
LABEL_964:
          if ((v3[38] & 0x80) != 0)
          {
            if (v15 && v15 == v18)
            {
              if (!m_iCurFlg)
              {
                m_iPinBlockCur = m_iPinBlockCount;
              }

              m_iCurFlg = 1;
              m_iCurFarstFlg = 1;
              v18 = v15;
            }
          }

          else
          {
            v237 = v257->u16[v18 - 1];
            if (v16 > v237 || v259 < v237)
            {
              if (v16 < v19 && v259 >= v237)
              {
                LODWORD(v20) = v20 | 0xFFFF8000;
              }
            }

            else
            {
              LODWORD(v20) = v20 | 0xFFFF8000;
            }

            if (v15 && v257->u16[v18] == v15)
            {
              if (!m_iCurFlg)
              {
                m_iPinBlockCur = m_iPinBlockCount;
              }

              LODWORD(v20) = v20 | 0x4000;
              m_iCurFlg = 1;
              m_iCurFarstFlg = 1;
            }
          }

          goto LABEL_981;
        }

        goto LABEL_906;
      }

      v59 = 0;
      v60 = 0;
      v61 = m_Kan;
      v265 = -2;
LABEL_151:
      v62 = v3;
      v63 = (v58 >> 11) & 7;
      if (v63 == 2)
      {
        v64 = !v60;
        if (v25 > 90)
        {
          v64 = 1;
        }

        if ((v64 & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      else
      {
        if (v25 >= 91 || v63 != 3)
        {
          v60 = 0;
        }

        if (v60)
        {
LABEL_201:
          m_Kan = v61 & 0xF7;
          SetPinDat(__s, v261);
          __s[0] = 0;
          v76 = m_Kan;
          if ((m_Kan & 7) != 0)
          {
            v77 = v256;
            v78 = v258;
            v18 = v264;
            v21 = v262;
            if ((m_Kan & 0x46) == 0x44)
            {
              strcpy(__s, " ");
              v76 = m_Kan & 0xCD | 0x10;
            }
          }

          else
          {
            v148 = v3[38] & 0x3800;
            v149 = m_Kan & 0xC8;
            if (v148 == 6144)
            {
              v150 = v149 | 0x10;
            }

            else
            {
              v150 = m_Kan & 0xC8;
            }

            m_Kan = v150;
            v151 = IsInyou(v14);
            v77 = v256;
            v78 = v258;
            v18 = v264;
            v21 = v262;
            if (v151)
            {
              strcpy(__s, "&");
              if (v148)
              {
                v76 = v150 | 4;
              }

              else
              {
                v76 = v149 | 2;
              }
            }

            else
            {
              strcpy(__s, "0");
              v76 = v150 | 1;
            }
          }

          v125 = v78;
          v124 = v77;
          if ((v76 & 0x30) != 0)
          {
            strcat(__s, &m_pcBrDat[3 * v25]);
          }

          else
          {
            *&__s[strlen(__s)] = 32;
            strcat(__s, &m_pcBrDat[3 * v25]);
            v76 |= 0x10u;
          }

          v175 = v76 & 0xBF;
          goto LABEL_598;
        }
      }

      v65 = wcschr(dword_40F04, v25);
      if ((v58 & 0x3800) == 0x800 && v65)
      {
        SetPinDat(__s, v261);
        m_Kan &= 0x87u;
        __s[0] = 0;
        v122 = wcschr(dword_40F04, v25);
        strcpy(__s, &byte_40F88[2 * (v122 - dword_40F04) + ((v122 - dword_40F04) >> 2)]);
        LODWORD(v20) = v260;
        v15 = v256;
        v16 = v258;
        goto LABEL_368;
      }

      if (wcschr(dword_40FEC, v25))
      {
        SetPinDat(__s, v261);
        __s[0] = 0;
        if ((m_Kan & 6) != 0 || v25 > 127 || (m_Kan & 1) != 0 || (v255 - 48) <= 9 && v25 == 58 || (v25 - 34) <= 0x3D && ((1 << (v25 - 34)) & 0x200000001C000001) != 0)
        {
          v123 = m_Kan & 0xF7;
          v124 = v256;
          v125 = v258;
          v18 = v264;
          v21 = v262;
          if ((m_Kan & 0x46) == 0x44)
          {
            *__s = 16;
          }
        }

        else
        {
          v152 = m_Kan & 0xC0;
          if ((v3[38] & 0x3800) == 0x1800)
          {
            v152 |= 0x10u;
          }

          m_Kan = v152;
          v124 = v256;
          v125 = v258;
          v18 = v264;
          v21 = v262;
          if (IsInyou2(v14, v266))
          {
            v153 = v3[38];
            if ((v153 & 0x3800) != 0x2800 && (v153 & 0x3800) != 0)
            {
              strcpy(__s, "&");
              v123 = m_Kan & 0xF9 | 4;
            }

            else
            {
              if (!v266 && (m_Zen & 0x10) != 0 && (v153 & 0x600) != 0 && (v153 & 0x80) != 0)
              {
                __s[2] = 0;
                v154 = 9736;
              }

              else
              {
                v154 = 38;
              }

              *__s = v154;
              v123 = m_Kan & 0xF9 | 2;
            }

            m_Kan = v123;
          }

          else
          {
            strcpy(__s, "0");
            v123 = m_Kan | 1;
            m_Kan |= 1u;
          }
        }

        v126 = v123 & 0x8F;
        v127 = v123 | 0x10;
        if ((v3[38] & 0x3800) == 0x1800)
        {
          v128 = v127;
        }

        else
        {
          v128 = v126;
        }

        if (v25 > 61)
        {
          if (v25 > 95)
          {
            if (v25 == 96)
            {
              v129 = &__s[strlen(__s)];
              v130 = 4368;
            }

            else
            {
              if (v25 != 126)
              {
                goto LABEL_587;
              }

              v129 = &__s[strlen(__s)];
              v130 = 2320;
            }
          }

          else if (v25 == 62)
          {
            v129 = &__s[strlen(__s)];
            v130 = 8738;
          }

          else
          {
            if (v25 != 95)
            {
              goto LABEL_587;
            }

            v129 = &__s[strlen(__s)];
            v130 = 9232;
          }
        }

        else if (v25 > 59)
        {
          v129 = &__s[strlen(__s)];
          if (v25 == 60)
          {
            v130 = 5140;
          }

          else
          {
            v130 = 4626;
          }
        }

        else
        {
          if (v25 != 34)
          {
            if (v25 == 58)
            {
              v129 = &__s[strlen(__s)];
              v130 = 528;
              goto LABEL_585;
            }

LABEL_587:
            strcat(__s, &m_pcBrDat[3 * v25]);
LABEL_586:
            v175 = v128 & 0x9F;
LABEL_598:
            m_Kan = v175;
            LODWORD(v20) = v260;
            v19 = v263;
            v15 = v124;
LABEL_599:
            v16 = v125;
            if (v21)
            {
              goto LABEL_964;
            }

            goto LABEL_906;
          }

          v129 = &__s[strlen(__s)];
          v130 = 1056;
        }

LABEL_585:
        *v129 = v130;
        v129[2] = 0;
        goto LABEL_586;
      }

      if ((v58 & 0x80) != 0)
      {
        v66 = (v61 & 6) != 4 || m_iIsListFlg == 0;
        v67 = !v66;
        if (v67 && v54)
        {
          SetPinDat(__s, v261);
          *__s = 0;
          v278 = 0;
          v279 = 0;
          v141 = m_Kan;
          if ((m_Kan & 0x40) == 0)
          {
            __s[0] = 40;
          }

          v125 = v258;
          v21 = v262;
          if (v25 <= 65391)
          {
            strcat(__s, &byte_41014[3 * v53]);
            v15 = v256;
            goto LABEL_615;
          }

          if (v25 == 65439)
          {
            *&__s[strlen(__s)] = 6;
            v15 = v256;
LABEL_615:
            v18 = v264;
          }

          else
          {
            v18 = v264;
            if (v25 == 65438)
            {
              *&__s[strlen(__s)] = 2;
            }

            else
            {
              strcat(__s, &loc_114F0 + (3 * v25));
            }

            v15 = v256;
          }

          m_Kan = v141 & 0x87 | 0x40;
          LODWORD(v20) = v260;
          v19 = v263;
          goto LABEL_599;
        }
      }

      v68 = v265 < 0x1A || v59;
      if ((v68 & 1) != 0 || (v25 - 65391) < 0x2F || v53 <= 5)
      {
        *v271 = 0u;
        v272 = 0u;
        v273 = 0u;
        v274 = 0u;
        *v267 = 0u;
        v268 = 0u;
        v269 = 0u;
        v270 = 0u;
        v69 = (v61 >> 1) & 3;
        m_Kan = v61 & 0xF7;
        if ((v25 - 65440) >= 0xFFFFFFC0 && v69 && !m_iIsListFlg)
        {
          v70 = -15;
          if (v69 == 1)
          {
            v71 = 52;
            goto LABEL_219;
          }

          goto LABEL_220;
        }

        if ((v61 & 0x40) != 0)
        {
          v79 = (v58 & 0x80) == 0 && v69 == 2;
          v80 = !v79 || (v58 & 0x3800) == 10240;
          v81 = !v80;
          if (v81 && v59)
          {
            v70 = -73;
            v71 = 48;
            goto LABEL_219;
          }
        }

        if (v25 - 65383) <= 0x38 && (v61)
        {
          v70 = -10;
          v71 = 36;
LABEL_219:
          *&__s[strlen(__s)] = v71;
LABEL_220:
          m_Kan = v61 & v70;
          v3 = v62;
        }

        if (v266)
        {
          if ((m_Zen & 0x10) == 0 && (v58 & 0x600) != 0 && (v58 & 0x80) != 0)
          {
            strcat(__s, "\b4");
            m_Kan = 0;
          }

          if ((v58 & 0x3880) == 0x2880)
          {
            v82 = v68;
          }

          else
          {
            v82 = 0;
          }

          if ((v82 & 1) == 0)
          {
            goto LABEL_242;
          }

          v273 = 0u;
          v274 = 0u;
          v83 = v14 - 1;
          *v271 = 0u;
          v272 = 0u;
          v84 = 1;
        }

        else
        {
          v85 = v68 ^ 1;
          if ((v58 & 0x3880) != 0x2880)
          {
            v85 = 1;
          }

          if (v85)
          {
LABEL_242:
            v87 = 0;
            goto LABEL_248;
          }

          v273 = 0u;
          v274 = 0u;
          *v271 = 0u;
          v272 = 0u;
          v83 = v14;
          v84 = 0;
        }

        v86 = EijiStrSet(v83, v271, v84);
        v87 = IsEijiTo2(v271, v267, v86);
        if (!v87)
        {
          goto LABEL_248;
        }

        if (v86 && v254)
        {
          if (v87 == strlen(v271))
          {
            if (EChk7(v271))
            {
              v88 = strlen(__s) - 1;
              if (__s[v88] == 64)
              {
                __s[v88] = 0;
              }
            }
          }
        }

        else if (!v86)
        {
          goto LABEL_247;
        }

        if (v87 == strlen(v271) && EChk7(v271))
        {
          v254 = 1;
          goto LABEL_248;
        }

LABEL_247:
        v254 = 0;
LABEL_248:
        if (__s[0])
        {
          SetPinDat(__s, v261);
        }

        v89 = m_Kan;
        v90 = m_Kan & 0xF7;
        m_Kan &= ~8u;
        *__s = 0;
        v278 = 0;
        v279 = 0;
        if ((v89 & 6) != 0)
        {
          if (v266 || v25 > 127)
          {
            goto LABEL_273;
          }

LABEL_257:
          if ((m_Zen & 0x10) != 0 && (v89 & 6) != 0)
          {
            v93 = v3[38];
            if ((v93 & 0x600) != 0 && (v93 & 0x80) != 0)
            {
              strcat(__s, "\b&");
              goto LABEL_273;
            }
          }

          if ((v89 & 6) != 0)
          {
            goto LABEL_273;
          }

          goto LABEL_259;
        }

        if (!v266 && v25 <= 127 && (v89 & 1) != 0)
        {
          goto LABEL_257;
        }

LABEL_259:
        if (v25 <= 127 && (v89 & 1) == 0 && (v3[38] & 0x3880) != 0x2800)
        {
          if (IsInyou2(v14, v266))
          {
            v91 = v3[38];
            if ((v91 & 0x3800) != 0x2800 && (v91 & 0x3800) != 0)
            {
              strcpy(__s, "&");
              v90 = m_Kan & 0xF9 | 4;
            }

            else
            {
              if (!v266 && (m_Zen & 0x10) != 0 && (v91 & 0x600) != 0 && (v91 & 0x80) != 0)
              {
                __s[2] = 0;
                v92 = 9736;
              }

              else
              {
                v92 = 38;
              }

              *__s = v92;
              v90 = m_Kan & 0xF9 | 2;
            }
          }

          else
          {
            if (!v266 && (m_Zen & 0x10) != 0 && (v163 = v3[38], (v163 & 0x600) != 0) && (v163 & 0x80) != 0)
            {
              __s[2] = 0;
              v133 = 12296;
            }

            else
            {
              v133 = 48;
            }

            *__s = v133;
            v90 = m_Kan | 1;
          }

          goto LABEL_275;
        }

LABEL_273:
        if ((v89 & 0x46) == 68 && v59)
        {
          strcpy(__s, "0");
          v90 = v89 & 0xB5;
LABEL_275:
          m_Kan = v90;
        }

        if (v265 <= 0x19)
        {
          v94 = v3[38];
          if ((v94 & 0x3000) == 0)
          {
            goto LABEL_282;
          }

          v95 = (v3[38] & 0x80) == 0;
          if ((v94 & 0x600) == 0)
          {
            v95 = 0;
          }

          if ((v3[38] & 0x3880) == 0x2880 || v95)
          {
LABEL_282:
            if ((v90 & 0x30) != 0)
            {
              if (IsOomoji(v14, 0))
              {
                *&__s[strlen(__s)] = 32;
                v90 &= 0xCFu;
              }
            }

            else
            {
              v96 = IsOomoji(v14, 1);
              v97 = &__s[strlen(__s)];
              if (v96)
              {
                strcpy(v97, "  ");
                v90 |= 0x10u;
              }

              else
              {
                *v97 = 32;
              }
            }

            m_Kan = v90 & 0xBF;
          }
        }

        if (!v87)
        {
          if (!v266 && (v25 - 65440) >= 0xFFFFFFC1 && (m_Zen & 0x10) != 0)
          {
            v131 = v3[38];
            if ((v131 & 0x600) != 0 && (v131 & 0x80) != 0)
            {
              strcpy(__s, "\b$");
            }
          }

          v18 = v264;
          v21 = v262;
          if ((*v14 - 12449) <= 0x52 && (m_Zen & 2) == 0)
          {
            if ((m_PinInfo & 0x100) != 0)
            {
              v132 = 22;
            }

            else
            {
              __s[2] = 0;
              v132 = 9248;
            }

            *__s = v132;
            m_Zen |= 2u;
          }

          v173 = 3 * v25;
          if (v25 >= 128)
          {
            v173 = 3 * v25 - 195648;
          }

          strcat(__s, &m_pcBrDat[v173]);
          if ((v25 - 65377) <= 4 && ((1 << (v25 - 97)) & 0x19) != 0 && *(v14 + 2) != 32995)
          {
            v174 = IsMoji(v14 + 1);
            if (v14[1] != 32 && v174 != 3)
            {
              *&__s[strlen(__s)] = 64;
            }
          }

          v160 = m_Zen;
          if (v266)
          {
            v19 = v263;
            v15 = v256;
            v16 = v258;
            goto LABEL_955;
          }

          v19 = v263;
          v15 = v256;
          v16 = v258;
          if ((m_Zen & 0x10) == 0)
          {
LABEL_963:
            LODWORD(v20) = v260;
            if (v21)
            {
              goto LABEL_964;
            }

            goto LABEL_906;
          }

LABEL_961:
          v236 = v160 & 0xEF;
LABEL_962:
          m_Zen = v236;
          goto LABEL_963;
        }

        v98 = strlen(v267);
        if (v98 >= 1)
        {
          v99 = v98 & 0x7FFFFFFF;
          v100 = v267;
          do
          {
            v102 = *v100++;
            v101 = v102;
            v103 = v102 - 129;
            if (v102 <= 0xDF && v103 > 0x1E)
            {
              strcat(__s, &m_pcBrDat[3 * v101]);
            }

            else
            {
              __s[strlen(__s)] = v101 & 0x3F;
            }

            --v99;
          }

          while (v99);
        }

        if (*v271 == 25954 && (!wcsncmp(v14 - 3, dword_28ED8, 3uLL) || !wcsncmp(v14 - 3, dword_28EE8, 3uLL) || !wcsncmp(v14 - 3, dword_28EF8, 3uLL) || !wcsncmp(v14 - 3, dword_28F08, 3uLL) || !wcsncmp(v14 - 4, dword_28F18, 3uLL) || !wcsncmp(v14 - 4, dword_28F28, 3uLL) || !wcsncmp(v14 - 4, dword_28F38, 3uLL) || !wcsncmp(v14 - 3, dword_28F48, 3uLL) || !wcsncmp(v14 - 3, dword_28F58, 3uLL) || !wcsncmp(v14 - 3, dword_28F6C, 3uLL)))
        {
          __s[strlen(__s) - 1] = 3;
          __s[strlen(__s)] = 17;
        }

        v105 = -4;
        if (!v266)
        {
          v105 = 0;
        }

        v106 = v260;
        v15 = v256;
        v19 = v263;
        if (v256 == v260)
        {
          if (!m_iCurFlg)
          {
            m_iPinBlockCur = m_iPinBlockCount;
          }

          m_iCurFlg = 1;
          m_iCurFarstFlg = 1;
          v106 = v252;
        }

        v14 = (v14 + 4 * v87 + v105);
        v18 = (v264 + 2 * v87);
        v16 = v258;
        if (v259 >= v106 && v258 < 2 * v87 + v106)
        {
          LODWORD(v20) = v106 | 0xFFFF8000;
        }

        else
        {
          LODWORD(v20) = v106;
        }

        v17 = m_iLoopFlg;
        v21 = v262;
        if (m_iLoopFlg == 2)
        {
          return 2;
        }
      }

      else
      {
        v16 = v258;
        if ((v25 - 33) <= 0x5D)
        {
          v18 = v264;
          v21 = v262;
          if (v266 && (m_Zen & 0x10) == 0 && (v58 & 0x600) != 0 && (v58 & 0x80) != 0)
          {
            strcat(__s, "\b4");
            m_Kan = 0;
          }

          SetPinDat(__s, v261);
          __s[0] = 0;
          v144 = m_Kan;
          if ((m_Kan & 6) != 0)
          {
            v145 = v255;
            if (!v266)
            {
              goto LABEL_603;
            }

            goto LABEL_605;
          }

          v145 = v255;
          if (!v266 && (m_Kan & 1) != 0)
          {
LABEL_603:
            if ((m_Zen & 0x10) != 0)
            {
              v189 = v3[38];
              if ((v189 & 0x600) != 0 && (v189 & 0x80) != 0)
              {
                v190 = &__s[strlen(__s)];
                if ((m_Kan & 6) != 0)
                {
                  strcpy(v190, "\b&");
                  goto LABEL_605;
                }

                strcpy(v190, "\b0");
              }
            }
          }

          if ((v144 & 7) != 0)
          {
LABEL_605:
            if ((v144 & 0x46) == 0x44)
            {
              *__s = 16;
              v144 &= 0xBDu;
              m_Kan = v144;
            }
          }

          else
          {
            if ((v145 - 48) > 9)
            {
              if (v25 == 40)
              {
                goto LABEL_607;
              }
            }

            else if ((v25 & 0x7B) == 0x2A || (v25 - 40) <= 0x37 && ((1 << (v25 - 40)) & 0x800000002400A9) != 0)
            {
              goto LABEL_607;
            }

            if (v25 != 40 && (v25 & 0x77) != 0x21)
            {
              if ((v3[38] & 0x3800) == 0x1800)
              {
                v194 = v144 & 0xC8 | 0x10;
              }

              else
              {
                v194 = v144 & 0xC8;
              }

              m_Kan = v194;
              if (IsInyou2(v14, v266))
              {
                v195 = v3[38];
                if ((v195 & 0x3800) != 0x2800 && (v195 & 0x3800) != 0)
                {
                  strcpy(__s, " &");
                  v144 = m_Kan & 0xF9 | 4;
                }

                else
                {
                  if (!v266 && (m_Zen & 0x10) != 0 && (v195 & 0x600) != 0 && (v195 & 0x80) != 0)
                  {
                    __s[2] = 0;
                    v196 = 9736;
                  }

                  else
                  {
                    v196 = 38;
                  }

                  *__s = v196;
                  v144 = m_Kan & 0xF9 | 2;
                }
              }

              else
              {
                if (!v266 && (m_Zen & 0x10) != 0 && (v238 = v3[38], (v238 & 0x600) != 0) && (v238 & 0x80) != 0)
                {
                  __s[2] = 0;
                  v230 = 12296;
                }

                else
                {
                  v230 = 48;
                }

                *__s = v230;
                v144 = m_Kan | 1;
              }
            }
          }

LABEL_607:
          if ((v144 & 6) == 2)
          {
            if ((v3[38] & 0x3800) == 0x2800)
            {
              if (v25 == 93)
              {
                v180 = &__s[strlen(__s)];
                v181 = 1078;
              }

              else
              {
                if (v25 != 91)
                {
                  goto LABEL_623;
                }

                v180 = &__s[strlen(__s)];
                v181 = 13856;
              }

              *v180 = v181;
              v180[2] = 0;
              goto LABEL_624;
            }
          }

          else if ((v144 & 6) == 4 && (v25 == 43 || (v25 & 0x7E) == 0x28))
          {
            switch(v25)
            {
              case ')':
                v178 = strlen(__s);
                v179 = 52;
                goto LABEL_781;
              case '(':
                v178 = strlen(__s);
                v179 = 38;
                goto LABEL_781;
              case '+':
                v178 = strlen(__s);
                v179 = 44;
LABEL_781:
                *&__s[v178] = v179;
                break;
            }

LABEL_624:
            v182 = v144 & 0xCF;
            if ((v3[38] & 0x3800) == 0x1800)
            {
              v182 = v144 & 0xCF | 0x10;
            }

            v183 = v182 & 0x9F;
            m_Kan = v182 & 0x9F;
            v19 = v263;
            v15 = v256;
            v16 = v258;
            if (v25 == 41 && (v182 & 1) != 0 || v25 == 45 && (v182 & 1) != 0 && ((v145 - 48) < 0xA || v145 == 97 || (v145 - 65) <= 0x19))
            {
              v183 = v182 & 0x9E;
              m_Kan = v182 & 0x9E;
            }

            if ((v25 & 0x7D) != 0x2C && (v183 & 8) != 0)
            {
              m_Kan = v183 & 0x97;
            }

            v160 = m_Zen;
            if (!v266)
            {
              goto LABEL_958;
            }

            goto LABEL_955;
          }

LABEL_623:
          strcat(__s, &m_pcBrDat[3 * v25]);
          goto LABEL_624;
        }

        v15 = v256;
        v18 = v264;
        v21 = v262;
        if ((v25 - 65383) <= 4)
        {
          if ((v255 - 65504) <= 0xFFFFFF90)
          {
            if (__s[0])
            {
              SetPinDat(__s, v261);
            }

            *__s = 0;
            v278 = 0;
            v279 = 0;
            if (!v266 && (m_Zen & 0x10) != 0)
            {
              v161 = v3[38];
              if ((v161 & 0x600) != 0 && (v161 & 0x80) != 0)
              {
                strcpy(__s, "\b$");
              }
            }

            if ((*v14 - 12449) <= 0x52 && (m_Zen & 2) == 0)
            {
              if ((m_PinInfo & 0x100) != 0)
              {
                v162 = 22;
              }

              else
              {
                __s[2] = 0;
                v162 = 9248;
              }

              *__s = v162;
              m_Zen |= 2u;
            }

            v221 = (3 * v25);
            goto LABEL_880;
          }

          v184 = v255 - 65216;
          v185 = v255 - 64904;
          if (v255 >> 4 >= 0xFFD)
          {
            v185 = v255;
          }

          if (v255 >> 5 >= 0x7FD)
          {
            v184 = v185;
          }

          v186 = 3 * (v184 + 40 * v25 - 2615160);
          if (!m_pcBrDat[v186])
          {
            goto LABEL_696;
          }

          if (*__s == 9248 || *__s == 9224)
          {
            __s[2] = 0;
LABEL_716:
            strcat(__s, &m_pcBrDat[v186]);
          }

          else
          {
            if (__s[0] == 22)
            {
              __s[1] = 0;
              goto LABEL_716;
            }

            strcpy(__s, &m_pcBrDat[v186]);
          }

          v197 = v263;
          v198 = v256;
          v199 = v258;
          if ((v58 & 0x80) == 0)
          {
            if (v258)
            {
              v200 = v261;
              if (v258 < v257->u16[v264 - 1] || v259 > v257->u16[v264])
              {
                if (v258 < v263 && v259 >= v257->u16[v264])
                {
                  v200 = v261 | 0x8000;
                }

                goto LABEL_945;
              }

              goto LABEL_944;
            }

            goto LABEL_807;
          }

          goto LABEL_793;
        }

        if ((v25 - 65388) <= 2)
        {
          if (v255 <= 65392)
          {
            if (__s[0])
            {
              SetPinDat(__s, v261);
            }

            __s[0] = 0;
            if (!v266 && (m_Zen & 0x10) != 0)
            {
              v171 = v3[38];
              if ((v171 & 0x600) != 0 && (v171 & 0x80) != 0)
              {
                strcpy(__s, "\b$");
              }
            }

            if ((*v14 - 12449) <= 0x52 && (m_Zen & 2) == 0)
            {
              if ((m_PinInfo & 0x100) != 0)
              {
                v172 = 22;
              }

              else
              {
                __s[2] = 0;
                v172 = 9248;
              }

              *__s = v172;
              m_Zen |= 2u;
            }

            v221 = (3 * v25);
LABEL_880:
            strcat(__s, &loc_114F0 + v221);
LABEL_953:
            v160 = m_Zen;
            if (!v266)
            {
              v19 = v263;
              v15 = v256;
              v16 = v258;
              goto LABEL_958;
            }

            v19 = v263;
            v15 = v256;
            v16 = v258;
LABEL_955:
            if ((v160 & 0x10) != 0)
            {
              goto LABEL_963;
            }

            v236 = v160 | 0x10;
            goto LABEL_962;
          }

          if ((v255 - 65488) >= 0x20)
          {
            v191 = -65216;
          }

          else
          {
            v191 = -64632;
          }

          if ((v255 - 65440) >= 0x30)
          {
            v192 = v191;
          }

          else
          {
            v192 = -64904;
          }

          v193 = (3 * (v255 + v192 + 40 * v25) - 7846440);
          if (m_pcBrDat[v193])
          {
            if (*__s == 9248 || *__s == 9224)
            {
              __s[2] = 0;
LABEL_785:
              strcat(__s, &m_pcBrDat[v193]);
            }

            else
            {
              if (__s[0] == 22)
              {
                __s[1] = 0;
                goto LABEL_785;
              }

              strcpy(__s, &m_pcBrDat[v193]);
            }

            v197 = v263;
            v198 = v256;
            v199 = v258;
            if ((v58 & 0x80) == 0)
            {
              if (v258)
              {
                if (v258 < v257->u16[v264 - 1] || v259 > v257->u16[v264])
                {
                  v200 = v261;
                  if (v258 < v263 && v259 >= v257->u16[v264])
                  {
                    v200 = v261 | 0x8000;
                  }

LABEL_945:
                  if (v198)
                  {
                    if (v198 >= v257->u16[v264 - 1] && v198 <= v257->u16[v264])
                    {
                      v200 |= 0x4000u;
                    }

                    else if (v198 < v197 && v198 >= v257->u16[v264])
                    {
                      v200 |= 0x4000u;
                    }
                  }

LABEL_952:
                  SetPinDat(__s, v200);
                  v25 = 0;
                  *__s = 0;
                  v278 = 0;
                  v279 = 0;
                  goto LABEL_953;
                }

                v200 = v261;
LABEL_944:
                v200 |= 0x8000u;
                goto LABEL_945;
              }

LABEL_807:
              v200 = v261;
              goto LABEL_945;
            }

LABEL_793:
            v200 = v261;
            v216 = v261 | 0x8000;
            if (v264 < v250)
            {
              v216 = v261;
            }

            if (v199 > v264 && v199 != 0)
            {
              v200 = v216;
            }

            if (v198)
            {
              if (v264 >= v249 && v198 > v264)
              {
                v200 |= 0x4000u;
              }
            }

            goto LABEL_952;
          }

LABEL_696:
          SetPinDat(__s, v261);
          strcpy(__s, &loc_114F0 + (3 * v25));
          goto LABEL_953;
        }

        if (v25 == 65438)
        {
          LODWORD(v20) = v261;
          if (v255 < 65395)
          {
            if (__s[0])
            {
              SetPinDat(__s, v261);
            }

            __s[0] = 0;
            if (!v266 && (m_Zen & 0x10) != 0)
            {
              v219 = v3[38];
              if ((v219 & 0x600) != 0 && (v219 & 0x80) != 0)
              {
                strcpy(__s, "\b$");
              }
            }
          }

          else
          {
            v201 = (3 * v255 - 194568);
            if (m_pcBrDat[v201])
            {
              if (*__s == 9248 || *__s == 9224)
              {
                __s[2] = 0;
LABEL_852:
                strcat(__s, &m_pcBrDat[v201]);
              }

              else
              {
                if (__s[0] == 22)
                {
                  __s[1] = 0;
                  goto LABEL_852;
                }

                strcpy(__s, &m_pcBrDat[v201]);
              }

LABEL_857:
              v19 = v263;
              v15 = v256;
              v16 = v258;
              if ((v3[38] & 0x80) != 0)
              {
                v227 = v20 | 0xFFFF8000;
                if (v264 < v250)
                {
                  v227 = v20;
                }

                if (v258 > v264 && v258 != 0)
                {
                  LODWORD(v20) = v227;
                }

                if (v256)
                {
                  if (v264 >= v249 && v256 > v264)
                  {
                    LODWORD(v20) = v20 | 0x4000;
                  }
                }
              }

              else
              {
                if (v258)
                {
                  if (v258 >= v257->u16[v264 - 1] && v259 <= v257->u16[v264])
                  {
                    LODWORD(v20) = v20 | 0xFFFF8000;
                  }

                  else if (v258 < v263 && v259 >= v257->u16[v264])
                  {
                    LODWORD(v20) = v20 | 0xFFFF8000;
                  }
                }

                if (v256)
                {
                  if (v256 >= v257->u16[v264 - 1] && v256 <= v257->u16[v264])
                  {
                    LODWORD(v20) = v20 | 0x4000;
                  }

                  else if (v256 < v263 && v256 >= v257->u16[v264])
                  {
                    LODWORD(v20) = v20 | 0x4000;
                  }
                }
              }

              v25 = v255 + 48;
              if (v262)
              {
                goto LABEL_964;
              }

              goto LABEL_906;
            }

            if (__s[0])
            {
              SetPinDat(__s, v261);
            }

            __s[0] = 0;
          }

          v226 = &__s[strlen(__s)];
          *v226 = 536;
          v226[2] = 0;
          LODWORD(v20) = v260;
          goto LABEL_857;
        }

        LODWORD(v20) = v261;
        if (v25 == 65439)
        {
          if (v255 >= 65394 && (v187 = (3 * v255 - 193608), m_pcBrDat[v187]))
          {
            if (*__s == 9248 || *__s == 9224)
            {
              __s[2] = 0;
LABEL_830:
              strcat(__s, &m_pcBrDat[v187]);
            }

            else
            {
              if (__s[0] == 22)
              {
                __s[1] = 0;
                goto LABEL_830;
              }

              strcpy(__s, &m_pcBrDat[v187]);
            }
          }

          else
          {
            if (__s[0])
            {
              SetPinDat(__s, v261);
            }

            __s[0] = 0;
            if (!v266 && (m_Zen & 0x10) != 0)
            {
              v214 = v3[38];
              if ((v214 & 0x600) != 0 && (v214 & 0x80) != 0)
              {
                strcpy(__s, "\b$");
              }
            }

            v215 = &__s[strlen(__s)];
            *v215 = 1048;
            v215[2] = 0;
            LODWORD(v20) = v260;
          }

          v19 = v263;
          v15 = v256;
          v16 = v258;
          if ((v3[38] & 0x80) != 0)
          {
            v223 = v20 | 0xFFFF8000;
            if (v264 < v250)
            {
              v223 = v20;
            }

            if (v258 > v264 && v258 != 0)
            {
              LODWORD(v20) = v223;
            }

            if (v256)
            {
              if (v264 >= v249 && v256 > v264)
              {
                LODWORD(v20) = v20 | 0x4000;
              }
            }
          }

          else
          {
            v222 = v257 + 2 * v264;
            if (v258)
            {
              if (v258 >= *(v222 - 1) && v259 <= v257->u16[v264])
              {
                LODWORD(v20) = v20 | 0xFFFF8000;
              }

              else if (v258 < v263 && v259 >= v257->u16[v264])
              {
                LODWORD(v20) = v20 | 0xFFFF8000;
              }
            }

            if (v256)
            {
              if (v256 >= *(v222 - 1) && v256 <= v257->u16[v264])
              {
                LODWORD(v20) = v20 | 0x4000;
              }

              else if (v256 < v263 && v256 >= v257->u16[v264])
              {
                LODWORD(v20) = v20 | 0x4000;
              }
            }
          }

          v25 = v255 + 96;
          if (v262)
          {
            goto LABEL_964;
          }

          goto LABEL_906;
        }

        if ((v25 & 0xFFFFFFF8) != 0x18)
        {
          switch(v25)
          {
            case 1:
              SetPinDat(__s, v261);
              v16 = v258;
              v15 = v256;
              v220 = 128;
              break;
            case 12:
              SetPinDat(__s, v261);
              v16 = v258;
              v15 = v256;
              v220 = 88;
              break;
            case 13:
              SetPinDat(__s, v261);
              v16 = v258;
              v15 = v256;
              v220 = 184;
              break;
            default:
LABEL_893:
              v25 = v255;
              v19 = v263;
              if (v262)
              {
                goto LABEL_964;
              }

              goto LABEL_906;
          }

          *__s = v220;
          m_Zen = 0;
          LODWORD(v20) = v260;
          goto LABEL_893;
        }

        SetPinDat(__s, v261);
        if (v25 > 27)
        {
          if (v25 > 29)
          {
            strcpy(__s, byte_41391);
            if (v25 == 30)
            {
              v25 = 563;
            }

            else
            {
              v25 = 883;
            }
          }

          else if (v25 == 28)
          {
            strcpy(__s, byte_41379);
            v25 = 555;
          }

          else
          {
            strcpy(__s, byte_4137C);
            v25 = 556;
          }
        }

        else if (v25 > 25)
        {
          if (v25 == 26)
          {
            strcpy(__s, byte_41364);
            v25 = 548;
          }

          else
          {
            strcpy(__s, byte_41373);
            v25 = 553;
          }
        }

        else if (v25 == 24)
        {
          strcpy(__s, byte_41349);
          v25 = 539;
        }

        else
        {
          strcpy(__s, byte_41355);
          v25 = 543;
        }

        LODWORD(v20) = v260;
        v19 = v263;
        v15 = v256;
        v16 = v258;
        if (v262)
        {
          goto LABEL_964;
        }

LABEL_906:
        v231 = v18 + 1;
        if ((v3[38] & 0x80) != 0)
        {
          if (v18 < v259 && v231 >= v16)
          {
            LODWORD(v20) = v20 | 0xFFFF8000;
          }

          if (v18 >= v15 || v231 < v15)
          {
            goto LABEL_932;
          }
        }

        else
        {
          v232 = v257->u16[v18];
          if (v259 >= v232)
          {
            v233 = v20 | 0xFFFF8000;
          }

          else
          {
            v233 = v20;
          }

          if (v16 >= v19)
          {
            v233 = v20;
          }

          if (v16 <= v232 && v259 >= v232)
          {
            LODWORD(v20) = v20 | 0xFFFF8000;
          }

          else
          {
            LODWORD(v20) = v233;
          }

          if (v15 != v232 && (v15 >= v19 || v15 < v232))
          {
            goto LABEL_932;
          }
        }

        LODWORD(v20) = v20 | 0x4000;
        if (!m_iCurFlg)
        {
          m_iPinBlockCur = m_iPinBlockCount;
        }

        m_iCurFlg = 1;
        m_iCurFarstFlg = 1;
LABEL_932:
        v21 = 0;
        ++v14;
        v18 = (v18 + 1);
LABEL_981:
        v17 = m_iLoopFlg;
        v255 = v25;
        if (m_iLoopFlg == 2)
        {
          return 2;
        }
      }
    }

    v27 = v25 - 65376;
    if ((v25 - 32) < 0x60 || v27 <= 0x3F)
    {
      v28 = v14;
      v29 = m_Zen;
      if ((m_Zen & 0x10) != 0 && v27 <= 0x3F && (m_Zen & 2) != 0 && v18)
      {
        v30 = v19;
        v31 = v20;
        v20 = v3;
        v32 = v15;
        v33 = v25;
        v34 = v16;
        v35 = strlen(__s);
        v16 = v34;
        v25 = v33;
        v15 = v32;
        v3 = v20;
        LOWORD(v20) = v31;
        *&__s[v35] = 6;
        v19 = v30;
        LODWORD(v18) = v264;
      }

      v36 = 0;
      if ((v22 & 0x600) != 0 && v18)
      {
        v37 = v29 & 0x10;
        if ((v25 - 48) <= 9 && (v29 & 0x10) != 0)
        {
          v36 = 0;
          v266 = 0;
          strcat(__s, "\b<");
          m_Kan |= 8u;
          v14 = v28;
        }

        else
        {
          v36 = 0;
          v14 = v28;
          if (v27 <= 0x3F && v37)
          {
            v36 = 0;
            v266 = 0;
            strcat(__s, "\b$");
          }

          else
          {
            v266 = 0;
          }
        }

        LOWORD(v20) = v261;
      }

      else
      {
        v266 = 0;
        v14 = v28;
      }

      goto LABEL_75;
    }

LABEL_66:
    v42 = v25 > 127 && v24 != 0;
    if (v42)
    {
      v23 = 1;
    }

    v266 = v23;
    v36 = v21 == 0 || v42;
    goto LABEL_75;
  }

  return v253;
}

uint64_t sub_22244()
{
  ktoau::ktoau(&Ktoau);

  return __cxa_atexit(ktoau::~ktoau, &Ktoau, &dword_0);
}

__CFString *NBSCTrimmedString(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 isEqual:&stru_2C358])
  {
    v5 = &stru_2C358;
  }

  else
  {
    v6 = [v3 length];
    do
    {
      v7 = v6--;
      if (v6 < 0)
      {
        break;
      }

      v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 characterAtIndex:v6]);
      v9 = [v4 containsObject:v8];
    }

    while ((v9 & 1) != 0);
    v5 = [v3 substringToIndex:v7];
  }

  return v5;
}

__CFString *NBSCTrimmedStringFrom(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    if ([v3 length])
    {
      v5 = [v3 length];
      do
      {
        v6 = v5--;
        if (v5 < 0)
        {
          break;
        }

        v7 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 characterAtIndex:v5]);
        v8 = [v4 containsObject:v7];
      }

      while ((v8 & 1) != 0);
      v9 = [v3 substringToIndex:v6];
    }

    else
    {
      v9 = &stru_2C358;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_23478()
{
  sub_23444();
  sub_23438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_2355C()
{
  sub_23444();
  sub_23438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_235CC()
{
  sub_23444();
  sub_23438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void sub_2367C()
{
  sub_23444();
  sub_23438();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void operator delete[]()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}