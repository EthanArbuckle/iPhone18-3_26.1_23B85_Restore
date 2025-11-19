uint64_t sub_21D34AF50(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (v5)
  {
    v7 = 8;
  }

  else
  {
    v6 = 0;
    v7 = 9;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_17;
  }

  v9 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v7;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v11 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v11))
    {
      v12 = *(a1 + v9);
      if (v12)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    if (v11 > 0xFF)
    {
      v12 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }

    if (v11 < 2)
    {
      goto LABEL_17;
    }
  }

  v12 = *(a1 + v9);
  if (!*(a1 + v9))
  {
LABEL_17:
    if (v5 >= 2)
    {
      v15 = (*(v4 + 48))(a1, v5);
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

LABEL_11:
  v13 = (v12 - 1) << v10;
  if (v9 >= 4)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v6 + (v9 | v13) + 1;
}

void sub_21D34B0A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = v10 + 8;
  v12 = v10 + 9;
  if (v8)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = a3 >= v9;
  v15 = a3 - v9;
  if (v15 == 0 || !v14)
  {
LABEL_18:
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v9 < a2)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_18;
  }

  v6 = 4;
  if (v9 < a2)
  {
LABEL_19:
    v18 = ~v9 + a2;
    if (v13 >= 4)
    {
      bzero(a1, v13);
      v19 = 1;
      goto LABEL_45;
    }

    v19 = (v18 >> (8 * v13)) + 1;
    if (v13)
    {
      bzero(a1, v13);
      if (v13 != 1)
      {
        v18 = v18;
LABEL_45:
        *a1 = v18;
        if (v6 > 1)
        {
LABEL_46:
          if (v6 == 2)
          {
            *&a1[v13] = v19;
          }

          else
          {
            *&a1[v13] = v19;
          }

          return;
        }

        goto LABEL_25;
      }

      *a1 = v18;
    }

    if (v6 > 1)
    {
      goto LABEL_46;
    }

LABEL_25:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_28:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v13] = 0;
  }

  else if (v6)
  {
    a1[v13] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v8 >= 2)
  {
    v20 = a2 - v8;
    if (a2 >= v8)
    {
      if (v11)
      {
        bzero(a1, v11);
        *a1 = v20;
      }
    }

    else
    {
      v21 = *(v7 + 56);

      v21();
    }
  }
}

uint64_t sub_21D34B2C8(_DWORD *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if (*(v2 + 84))
  {
    return (*(v2 + 48))();
  }

  v4 = ((*(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (!*(a1 + v4))
  {
    return 0;
  }

  v5 = v4 & 0xFFFFFFF8;
  if ((v4 & 0xFFFFFFF8) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(a1 + v4) - 1;
  }

  if (v5)
  {
    v7 = *a1;
  }

  else
  {
    v7 = 0;
  }

  return (v7 | v6) + 1;
}

unsigned int *sub_21D34B36C(unsigned int *result, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (a2 <= v4)
  {
    if (v4)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      *(result + v5) = 0;
      if (!a2)
      {
        return result;
      }
    }

    v9 = *(v3 + 56);

    return v9();
  }

  else
  {
    if (((*(v3 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v6 = a2 - v4;
    }

    else
    {
      v6 = 1;
    }

    if (((*(v3 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v7 = ~v4 + a2;
      v8 = result;
      bzero(result, v5);
      result = v8;
      *v8 = v7;
    }

    if (!v4)
    {
      *(result + v5) = v6;
    }
  }

  return result;
}

void sub_21D34B470()
{
  type metadata accessor for TTRRemindersListInCellModule();
  sub_21DBFBA8C();
  if (v0 <= 0x3F)
  {
    sub_21D35645C();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

char *sub_21D34B548(char *a1, char *a2, uint64_t a3)
{
  v218 = *(a3 + 16);
  v3 = *(v218 - 8);
  v221 = *(v3 + 84);
  v227 = *(v3 + 64);
  v213 = sub_21DBF563C();
  v4 = *(v213 - 8);
  v225 = *(v4 + 80);
  v5 = v225 & 0xF8;
  v6 = v5 | 7;
  v211 = sub_21DBF6C1C();
  v7 = *(v211 - 8);
  v8 = v7;
  v223 = *(v7 + 80);
  v9 = sub_21DBF8D7C();
  v10 = *(*(v9 - 8) + 80);
  v11 = v223 | v10 | v5 | 7;
  v12 = *(v4 + 64);
  if (v12 <= 0x19)
  {
    v13 = 25;
  }

  else
  {
    v13 = *(v4 + 64);
  }

  v14 = (((v13 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v215 = v225 & 0xF8 | 7;
  v212 = v223;
  v15 = *(v7 + 64) + ((v223 + 8) & ~v223);
  v214 = v4;
  v16 = *(v4 + 84);
  if (v13 + 1 + ((v5 + 15) & ~v6) > v14)
  {
    v14 = v13 + 1 + ((v5 + 15) & ~v6);
  }

  if (v14 <= ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v14 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v14 <= (v12 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v14 = (v12 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v17 = *(*(v9 - 8) + 64) + ((v10 + 1) & ~v10);
  if (v14 > v17)
  {
    v17 = v14;
  }

  if (v17 <= 0x18)
  {
    v18 = 24;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v3 + 80);
  v20 = v19 & 0xF8 | v11;
  if (v20 == 7 && ((v223 | v225 | v10 | v19) & 0x100000) == 0)
  {
    v21 = ((v227 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
    v22 = v18 + 1;
    v23 = (((v18 + 1) & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8;
    if (((v23 + 31) & 0xFFFFFFFFFFFFFFF8) + 8 + ((v11 + v21) & ~v11) <= 0x18)
    {
      v24 = v3;
      v206 = v15;
      v207 = *(v8 + 84);
      v226 = v18;
      __n = v13 + 1;
      v210 = v13;
      v208 = v9;
      v25 = v16;
      v26 = v10;
      v27 = *(v9 - 8);
      if (v221 < 0x7FFFFFFF)
      {
        v31 = *((&a2[v227 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
        if (v31 >= 0xFFFFFFFF)
        {
          LODWORD(v31) = -1;
        }

        v28 = v31 + 1;
      }

      else
      {
        v28 = (*(v24 + 48))(a2);
      }

      v224 = v22;
      if (v28)
      {
        memcpy(a1, a2, v21);
        v32 = a1 + 7;
        v33 = a2 + 7;
      }

      else
      {
        (*(v24 + 16))(a1, a2, v218);
        v32 = a1 + 7;
        v33 = a2 + 7;
        v34 = *((&a2[v227 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
        *((&a1[v227 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) = v34;
        (**(v34 - 8))();
      }

      v35 = &v32[v21];
      v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
      v37 = &v33[v21];
      v38 = (&v33[v21] & 0xFFFFFFFFFFFFFFF8);
      v40 = v224;
      v39 = v226;
      v41 = &v38[v224] & 0xFFFFFFFFFFFFFFF8;
      if (*(v41 + 8) < 0xFFFFFFFFuLL)
      {
        memcpy((v35 & 0xFFFFFFFFFFFFFFF8), v38, ((v23 + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
        return a1;
      }

      v42 = v27;
      v43 = v38[v226];
      v44 = v43 - 9;
      if (v43 < 9)
      {
        v46 = v215;
        goto LABEL_45;
      }

      if (v226 <= 3)
      {
        v45 = v226;
      }

      else
      {
        v45 = 4;
      }

      v46 = v215;
      if (v45 <= 1)
      {
        if (!v45)
        {
          goto LABEL_45;
        }

        v47 = *v38;
      }

      else if (v45 == 2)
      {
        v47 = *v38;
      }

      else if (v45 == 3)
      {
        v47 = *v38 | (v38[2] << 16);
      }

      else
      {
        v47 = *v38;
      }

      if (v226 < 4)
      {
        v47 |= v44 << (8 * v226);
      }

      v43 = v47 + 9;
LABEL_45:
      v48 = ~v46;
      v228 = v35;
      v230 = v37;
      v222 = &v38[v224];
      if (v43 > 3)
      {
        if (v43 > 5)
        {
          if (v43 == 6)
          {
            v76 = ~v212;
            if ((v207 & 0x80000000) != 0)
            {
              v89 = v38;
              v90 = v36;
              v78 = (*(v8 + 48))(&v38[v212 + 8] & v76, v207, v211);
              v36 = v90;
              v38 = v89;
              v40 = v224;
            }

            else
            {
              v77 = *v38;
              if (*v38 >= 0xFFFFFFFFuLL)
              {
                LODWORD(v77) = -1;
              }

              v78 = v77 + 1;
            }

            if (v78)
            {
              v91 = v36;
              v92 = v206;
              memcpy(v36, v38, v206);
            }

            else
            {
              *v36 = *v38;
              v93 = v36 + v212 + 8;
              v91 = v36;
              v94 = &v38[v212 + 8];
              v95 = *(v8 + 16);
              sub_21DBF8E0C();
              v96 = v93 & v76;
              v40 = v224;
              v95(v96, v94 & v76, v211);
              v92 = v206;
            }

            v97 = v230;
            v98 = ((v228 | 7) + v92) & 0xFFFFFFFFFFFFFFF8;
            v99 = ((v230 | 7) + v92) & 0xFFFFFFFFFFFFFFF8;
            if (*(v99 + 8) < 0xFFFFFFFFuLL)
            {
              v102 = *v99;
              *(v98 + 16) = *(v99 + 16);
              *v98 = v102;
            }

            else
            {
              *v98 = *v99;
              *(v98 + 8) = *(v99 + 8);
              v100 = *(v99 + 16);
              *(v98 + 16) = v100;
              sub_21DBF8E0C();
              v101 = v100;
              v97 = v230;
            }

            v49 = v91;
            *(v91 + v226) = 6;
            goto LABEL_245;
          }

          if (v43 != 7)
          {
            if (v43 == 8)
            {
              *v36 = *v38;
              v49 = v35 & 0xFFFFFFFFFFFFFFF8;
              (*(v42 + 16))((v36 + v26 + 1) & ~v26, &v38[v26 + 1] & ~v26, v208);
              *((v35 & 0xFFFFFFFFFFFFFFF8) + v226) = 8;
LABEL_210:
              v97 = v230;
LABEL_245:
              *(v40 + v49) = *v222;
              v189 = (v40 + v49) & 0xFFFFFFFFFFFFFFF8;
              v190 = *(v41 + 8);
              *(v189 + 8) = v190;
              v191 = (v189 + 23) & 0xFFFFFFFFFFFFFFF8;
              v192 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
              v193 = *v192;
              *v191 = *v192;
              *(v191 + 8) = *(v192 + 8);
              v194 = (v189 + 39) & 0xFFFFFFFFFFFFFFF8;
              v195 = (v41 + 39) & 0xFFFFFFFFFFFFFFF8;
              v196 = *v195;
              *(v194 + 8) = *(v195 + 8);
              *v194 = v196;
              v197 = ((v41 + 55) & 0xFFFFFFFFFFFFFFF8);
              v198 = ((v189 + 55) & 0xFFFFFFFFFFFFFFF8);
              *v198 = *v197;
              v199 = (v198 + 15) & 0xFFFFFFFFFFFFFFF8;
              v200 = (v197 + 15) & 0xFFFFFFFFFFFFFFF8;
              v201 = *v200;
              *v199 = *v200;
              *(v199 + 8) = *(v200 + 8);
              *((v228 | 7) + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 9) = *((v97 | 7) + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8) + 9);
              v202 = v190;
              v203 = v193;
              sub_21DBF8E0C();
              v204 = v201;
              return a1;
            }

LABEL_97:
            v49 = v35 & 0xFFFFFFFFFFFFFFF8;
            memcpy((v35 & 0xFFFFFFFFFFFFFFF8), v38, v224);
            goto LABEL_210;
          }

          if (v25 < 0xFD)
          {
            v88 = v38[v12];
            if (v88 < 3)
            {
              goto LABEL_115;
            }

            v86 = v38;
            v87 = v88 - 2;
          }

          else
          {
            v86 = v38;
            v87 = (*(v214 + 48))(v38, v25, v213);
            v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
          }

          if (v87)
          {
            v49 = v36;
            memcpy(v36, v86, v12 + 1);
LABEL_116:
            v97 = v230;
            *(((v35 | 7) + v12 + 1) & 0xFFFFFFFFFFFFFFF8) = *(((v230 | 7) + v12 + 1) & 0xFFFFFFFFFFFFFFF8);
            v104 = 7;
            v105 = v226;
LABEL_244:
            *(v49 + v105) = v104;
            v40 = v224;
            goto LABEL_245;
          }

          v38 = v86;
LABEL_115:
          v103 = v38;
          v49 = v36;
          (*(v214 + 16))(v36);
          *(v12 + v49) = v103[v12];
          goto LABEL_116;
        }

        if (v43 != 4)
        {
          *v36 = *v38;
          *(v36 + 8) = v38[8];
          *(v36 + 9) = v38[9];
          *(v36 + 10) = v38[10];
          v63 = *(v38 + 2);
          v36[2] = v63;
          *(v36 + v226) = 5;
          v49 = v35 & 0xFFFFFFFFFFFFFFF8;
          v64 = v63;
          goto LABEL_210;
        }

        v79 = *v38;
        *v36 = *v38;
        v49 = v35 & 0xFFFFFFFFFFFFFFF8;
        v80 = ((v36 + v46 + 8) & v48);
        v81 = (&v38[v46 + 8] & v48);
        v82 = *(v81 + v210);
        v83 = v79;
        if (v82 <= 9)
        {
          if (v82 > 4)
          {
            v105 = v226;
            v97 = v230;
            v84 = v210;
            if (v82 <= 6)
            {
              (*(v214 + 16))(v80, v81, v213);
              if (v82 == 5)
              {
                v85 = 5;
              }

              else
              {
                v85 = 6;
              }

              goto LABEL_241;
            }

            if (v82 == 7)
            {
              v186 = *v81;
              *(v80 + 9) = *(v81 + 9);
              *v80 = v186;
              *(v80 + v210) = 7;
LABEL_243:
              v104 = 4;
              goto LABEL_244;
            }

            v110 = *v81;
            *v80 = *v81;
            if (v82 == 8)
            {
              v111 = 8;
            }

            else
            {
              v111 = 9;
            }
          }

          else
          {
            v84 = v210;
            if (v82 > 1)
            {
              if (v82 != 2)
              {
                (*(v214 + 16))(v80, v81, v213);
                if (v82 == 3)
                {
                  v85 = 3;
                }

                else
                {
                  v85 = 4;
                }

LABEL_241:
                *(v80 + v210) = v85;
                goto LABEL_242;
              }

              (*(v214 + 16))(v80, v81, v213);
              *(v80 + v210) = 2;
LABEL_242:
              v105 = v226;
              v97 = v230;
              goto LABEL_243;
            }

            if (!v82)
            {
              *v80 = *v81;
              *(v80 + v210) = 0;
              goto LABEL_242;
            }

            v110 = *v81;
            *v80 = *v81;
            v111 = 1;
          }

          *(v80 + v84) = v111;
          v188 = v110;
          goto LABEL_242;
        }

        memcpy(v80, v81, __n);
        goto LABEL_242;
      }

      if (v43 <= 1)
      {
        v50 = __n;
        if (v43)
        {
          if (v43 != 1)
          {
            goto LABEL_97;
          }

          v51 = __n;
          v52 = v38[v210];
          v53 = v52 - 10;
          if (v52 >= 0xA)
          {
            if (v210 <= 3)
            {
              v54 = v210;
            }

            else
            {
              v54 = 4;
            }

            if (v54 <= 1)
            {
              if (!v54)
              {
                goto LABEL_138;
              }

              v55 = *v38;
            }

            else if (v54 == 2)
            {
              v55 = *v38;
            }

            else if (v54 == 3)
            {
              v55 = *v38 | (v38[2] << 16);
            }

            else
            {
              v55 = *v38;
            }

            if (v210 < 4)
            {
              v55 |= v53 << (8 * v210);
            }

            v52 = v55 + 10;
          }

LABEL_138:
          if (v52 > 4)
          {
            if (v52 <= 6)
            {
              v112 = v35 & 0xFFFFFFFFFFFFFFF8;
              if (v52 == 5)
              {
                (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
                v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
                v113 = 5;
              }

              else
              {
                (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
                v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
                v113 = 6;
              }

              goto LABEL_163;
            }

            if (v52 != 7)
            {
              if (v52 == 8)
              {
                v114 = *v38;
                *v36 = *v38;
                v115 = 8;
              }

              else
              {
                v114 = *v38;
                *v36 = *v38;
                v115 = 9;
              }

              *(v36 + v210) = v115;
              v117 = v114;
              v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
              goto LABEL_164;
            }

            v116 = *v38;
            *(v36 + 9) = *(v38 + 9);
            *v36 = v116;
            *(v36 + v210) = 7;
          }

          else
          {
            if (v52 <= 1)
            {
              if (v52)
              {
                v118 = *v38;
                *v36 = *v38;
                *(v36 + v210) = 1;
                v119 = v118;
                v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
                v51 = __n;
                v37 = v230;
              }

              else
              {
                *v36 = *v38;
                *(v36 + v210) = 0;
              }

              goto LABEL_165;
            }

            if (v52 != 2)
            {
              v112 = v35 & 0xFFFFFFFFFFFFFFF8;
              if (v52 == 3)
              {
                (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
                v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
                v113 = 3;
              }

              else
              {
                (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
                v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
                v113 = 4;
              }

LABEL_163:
              *(v112 + v210) = v113;
LABEL_164:
              v37 = v230;
              v51 = __n;
              goto LABEL_165;
            }

            (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
            v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
            v51 = __n;
            v37 = v230;
            *((v35 & 0xFFFFFFFFFFFFFFF8) + v210) = 2;
          }

LABEL_165:
          v120 = ((v35 | 7) + v51) & 0xFFFFFFFFFFFFFFF8;
          v121 = ((v37 | 7) + v51) & 0xFFFFFFFFFFFFFFF8;
          if (*(v121 + 8) < 0xFFFFFFFFuLL)
          {
            v137 = *v121;
            v138 = *(v121 + 16);
            v139 = *(v121 + 48);
            *(v120 + 32) = *(v121 + 32);
            *(v120 + 48) = v139;
            *v120 = v137;
            *(v120 + 16) = v138;
            v140 = *(v121 + 64);
            v141 = *(v121 + 80);
            v142 = *(v121 + 96);
            *(v120 + 106) = *(v121 + 106);
            *(v120 + 80) = v141;
            *(v120 + 96) = v142;
            *(v120 + 64) = v140;
            v143 = v226;
          }

          else
          {
            v216 = v36;
            v219 = v23;
            *v120 = *v121;
            *(v120 + 8) = *(v121 + 8);
            v123 = *(v121 + 16);
            v122 = *(v121 + 24);
            v125 = *(v121 + 32);
            v124 = *(v121 + 40);
            v126 = *(v121 + 48);
            v127 = *(v121 + 56);
            v128 = *(v121 + 64);
            sub_21DBF8E0C();
            sub_21D2A7DB4(v123, v122, v125, v124, v126, v127, v128);
            *(v120 + 16) = v123;
            *(v120 + 24) = v122;
            *(v120 + 32) = v125;
            *(v120 + 40) = v124;
            *(v120 + 48) = v126;
            *(v120 + 56) = v127;
            *(v120 + 64) = v128;
            *(v120 + 65) = *(v121 + 65);
            *(v120 + 66) = *(v121 + 66);
            *(v120 + 67) = *(v121 + 67);
            *(v120 + 68) = *(v121 + 68);
            v129 = *(v121 + 120);
            if (v129 == 255)
            {
              v144 = *(v121 + 72);
              v145 = *(v121 + 88);
              v146 = *(v121 + 104);
              *(v120 + 120) = *(v121 + 120);
              *(v120 + 104) = v146;
              *(v120 + 88) = v145;
              *(v120 + 72) = v144;
            }

            else
            {
              v131 = *(v121 + 72);
              v130 = *(v121 + 80);
              v133 = *(v121 + 88);
              v132 = *(v121 + 96);
              v134 = *(v121 + 104);
              v135 = *(v121 + 112);
              v136 = v129 & 1;
              sub_21D0FB960(v131, v130, v133, v132, v134, v135, v129 & 1);
              *(v120 + 72) = v131;
              *(v120 + 80) = v130;
              *(v120 + 88) = v133;
              *(v120 + 96) = v132;
              *(v120 + 104) = v134;
              *(v120 + 112) = v135;
              *(v120 + 120) = v136;
            }

            v36 = v216;
            v23 = v219;
            v40 = v224;
            v143 = v226;
            *(v120 + 121) = *(v121 + 121);
          }

          *(v120 + 122) = *(v121 + 122);
          *(v120 + 123) = *(v121 + 123);
          *(v120 + 124) = *(v121 + 124);
          *(v120 + 125) = *(v121 + 125);
          *(v120 + 126) = *(v121 + 126);
          v147 = *((v121 + 134) & 0xFFFFFFFFFFFFFFF8);
          *((v120 + 134) & 0xFFFFFFFFFFFFFFF8) = v147;
          *(v36 + v143) = 1;
LABEL_209:
          v49 = v36;
          v182 = v147;
          goto LABEL_210;
        }

        v65 = v38[v210];
        v66 = v65 - 10;
        if (v65 >= 0xA)
        {
          if (v210 <= 3)
          {
            v67 = v210;
          }

          else
          {
            v67 = 4;
          }

          if (v67 <= 1)
          {
            if (!v67)
            {
              goto LABEL_176;
            }

            v68 = *v38;
          }

          else if (v67 == 2)
          {
            v68 = *v38;
          }

          else if (v67 == 3)
          {
            v68 = *v38 | (v38[2] << 16);
          }

          else
          {
            v68 = *v38;
          }

          if (v210 < 4)
          {
            v68 |= v66 << (8 * v210);
          }

          v65 = v68 + 10;
        }

LABEL_176:
        if (v65 > 4)
        {
          if (v65 <= 6)
          {
            v148 = v35 & 0xFFFFFFFFFFFFFFF8;
            if (v65 == 5)
            {
              (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
              v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
              v149 = 5;
            }

            else
            {
              (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
              v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
              v149 = 6;
            }

            goto LABEL_200;
          }

          if (v65 != 7)
          {
            if (v65 == 8)
            {
              v150 = *v38;
              *v36 = *v38;
              v151 = 8;
            }

            else
            {
              v150 = *v38;
              *v36 = *v38;
              v151 = 9;
            }

            *(v36 + v210) = v151;
            v153 = v150;
            v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
            goto LABEL_201;
          }

          v152 = *v38;
          *(v36 + 9) = *(v38 + 9);
          *v36 = v152;
          *(v36 + v210) = 7;
        }

        else
        {
          if (v65 <= 1)
          {
            if (v65)
            {
              v154 = *v38;
              *v36 = *v38;
              *(v36 + v210) = 1;
              v155 = v154;
              v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
              v50 = __n;
              v37 = v230;
              v39 = v226;
            }

            else
            {
              *v36 = *v38;
              *(v36 + v210) = 0;
            }

            goto LABEL_202;
          }

          if (v65 != 2)
          {
            v148 = v35 & 0xFFFFFFFFFFFFFFF8;
            if (v65 == 3)
            {
              (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
              v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
              v149 = 3;
            }

            else
            {
              (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
              v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
              v149 = 4;
            }

LABEL_200:
            *(v148 + v210) = v149;
LABEL_201:
            v39 = v226;
            v37 = v230;
            v50 = __n;
            goto LABEL_202;
          }

          (*(v214 + 16))(v35 & 0xFFFFFFFFFFFFFFF8);
          v36 = (v35 & 0xFFFFFFFFFFFFFFF8);
          v50 = __n;
          v37 = v230;
          v39 = v226;
          *((v35 & 0xFFFFFFFFFFFFFFF8) + v210) = 2;
        }

LABEL_202:
        v156 = ((v35 | 7) + v50) & 0xFFFFFFFFFFFFFFF8;
        v157 = ((v37 | 7) + v50) & 0xFFFFFFFFFFFFFFF8;
        if (*(v157 + 8) < 0xFFFFFFFFuLL)
        {
          v173 = *v157;
          v174 = *(v157 + 16);
          v175 = *(v157 + 48);
          *(v156 + 32) = *(v157 + 32);
          *(v156 + 48) = v175;
          *v156 = v173;
          *(v156 + 16) = v174;
          v176 = *(v157 + 64);
          v177 = *(v157 + 80);
          v178 = *(v157 + 96);
          *(v156 + 106) = *(v157 + 106);
          *(v156 + 80) = v177;
          *(v156 + 96) = v178;
          *(v156 + 64) = v176;
        }

        else
        {
          v217 = v36;
          v220 = v23;
          *v156 = *v157;
          *(v156 + 8) = *(v157 + 8);
          v159 = *(v157 + 16);
          v158 = *(v157 + 24);
          v161 = *(v157 + 32);
          v160 = *(v157 + 40);
          v162 = *(v157 + 48);
          v163 = *(v157 + 56);
          v164 = *(v157 + 64);
          sub_21DBF8E0C();
          sub_21D2A7DB4(v159, v158, v161, v160, v162, v163, v164);
          *(v156 + 16) = v159;
          *(v156 + 24) = v158;
          *(v156 + 32) = v161;
          *(v156 + 40) = v160;
          *(v156 + 48) = v162;
          *(v156 + 56) = v163;
          *(v156 + 64) = v164;
          *(v156 + 65) = *(v157 + 65);
          *(v156 + 66) = *(v157 + 66);
          *(v156 + 67) = *(v157 + 67);
          *(v156 + 68) = *(v157 + 68);
          v165 = *(v157 + 120);
          if (v165 == 255)
          {
            v179 = *(v157 + 72);
            v180 = *(v157 + 88);
            v181 = *(v157 + 104);
            *(v156 + 120) = *(v157 + 120);
            *(v156 + 104) = v181;
            *(v156 + 88) = v180;
            *(v156 + 72) = v179;
          }

          else
          {
            v167 = *(v157 + 72);
            v166 = *(v157 + 80);
            v169 = *(v157 + 88);
            v168 = *(v157 + 96);
            v170 = *(v157 + 104);
            v171 = *(v157 + 112);
            v172 = v165 & 1;
            sub_21D0FB960(v167, v166, v169, v168, v170, v171, v165 & 1);
            *(v156 + 72) = v167;
            *(v156 + 80) = v166;
            *(v156 + 88) = v169;
            *(v156 + 96) = v168;
            *(v156 + 104) = v170;
            *(v156 + 112) = v171;
            *(v156 + 120) = v172;
          }

          v36 = v217;
          v23 = v220;
          v40 = v224;
          v39 = v226;
          *(v156 + 121) = *(v157 + 121);
        }

        *(v156 + 122) = *(v157 + 122);
        *(v156 + 123) = *(v157 + 123);
        *(v156 + 124) = *(v157 + 124);
        *(v156 + 125) = *(v157 + 125);
        *(v156 + 126) = *(v157 + 126);
        v147 = *((v157 + 134) & 0xFFFFFFFFFFFFFFF8);
        *((v156 + 134) & 0xFFFFFFFFFFFFFFF8) = v147;
        *(v36 + v39) = 0;
        goto LABEL_209;
      }

      if (v43 != 2)
      {
        v56 = *v38;
        *v36 = *v38;
        v49 = v35 & 0xFFFFFFFFFFFFFFF8;
        v57 = ((v36 + v46 + 8) & v48);
        v58 = (&v38[v46 + 8] & v48);
        v59 = *(v58 + v210);
        v60 = v56;
        if (v59 <= 9)
        {
          if (v59 > 4)
          {
            v105 = v226;
            v97 = v230;
            v61 = v210;
            if (v59 <= 6)
            {
              (*(v214 + 16))(v57, v58, v213);
              if (v59 == 5)
              {
                v62 = 5;
              }

              else
              {
                v62 = 6;
              }

              goto LABEL_224;
            }

            if (v59 == 7)
            {
              v183 = *v58;
              *(v57 + 9) = *(v58 + 9);
              *v57 = v183;
              *(v57 + v210) = 7;
              v104 = 3;
              goto LABEL_244;
            }

            v106 = *v58;
            *v57 = *v58;
            if (v59 == 8)
            {
              v107 = 8;
            }

            else
            {
              v107 = 9;
            }
          }

          else
          {
            v61 = v210;
            if (v59 > 1)
            {
              if (v59 != 2)
              {
                (*(v214 + 16))(v57, v58, v213);
                if (v59 == 3)
                {
                  v62 = 3;
                }

                else
                {
                  v62 = 4;
                }

LABEL_224:
                *(v57 + v210) = v62;
                goto LABEL_225;
              }

              (*(v214 + 16))(v57, v58, v213);
              *(v57 + v210) = 2;
LABEL_225:
              v105 = v226;
              v97 = v230;
              v104 = 3;
              goto LABEL_244;
            }

            if (!v59)
            {
              *v57 = *v58;
              *(v57 + v210) = 0;
              goto LABEL_225;
            }

            v106 = *v58;
            *v57 = *v58;
            v107 = 1;
          }

          *(v57 + v61) = v107;
          v185 = v106;
          goto LABEL_225;
        }

        memcpy(v57, v58, __n);
        goto LABEL_225;
      }

      v69 = *v38;
      *v36 = *v38;
      v49 = v35 & 0xFFFFFFFFFFFFFFF8;
      v70 = ((v36 + v46 + 8) & v48);
      v71 = (&v38[v46 + 8] & v48);
      v72 = *(v71 + v210);
      v73 = v69;
      if (v72 <= 9)
      {
        if (v72 > 4)
        {
          v105 = v226;
          v97 = v230;
          v74 = v210;
          if (v72 <= 6)
          {
            (*(v214 + 16))(v70, v71, v213);
            if (v72 == 5)
            {
              v75 = 5;
            }

            else
            {
              v75 = 6;
            }

            goto LABEL_233;
          }

          if (v72 == 7)
          {
            v184 = *v71;
            *(v70 + 9) = *(v71 + 9);
            *v70 = v184;
            *(v70 + v210) = 7;
LABEL_235:
            v104 = 2;
            goto LABEL_244;
          }

          v108 = *v71;
          *v70 = *v71;
          if (v72 == 8)
          {
            v109 = 8;
          }

          else
          {
            v109 = 9;
          }
        }

        else
        {
          v74 = v210;
          if (v72 > 1)
          {
            if (v72 != 2)
            {
              (*(v214 + 16))(v70, v71, v213);
              if (v72 == 3)
              {
                v75 = 3;
              }

              else
              {
                v75 = 4;
              }

LABEL_233:
              *(v70 + v210) = v75;
              goto LABEL_234;
            }

            (*(v214 + 16))(v70, v71, v213);
            *(v70 + v210) = 2;
LABEL_234:
            v105 = v226;
            v97 = v230;
            goto LABEL_235;
          }

          if (!v72)
          {
            *v70 = *v71;
            *(v70 + v210) = 0;
            goto LABEL_234;
          }

          v108 = *v71;
          *v70 = *v71;
          v109 = 1;
        }

        *(v70 + v74) = v109;
        v187 = v108;
        goto LABEL_234;
      }

      memcpy(v70, v71, __n);
      goto LABEL_234;
    }
  }

  v29 = *a2;
  *a1 = *a2;
  v30 = v29 + ((v20 + 16) & ~v20);

  return v30;
}

void sub_21D34CB0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  if (*(v4 + 84) < 0x7FFFFFFFu)
  {
    v7 = *(((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v7 >= 0xFFFFFFFF)
    {
      LODWORD(v7) = -1;
    }

    v6 = v7 + 1;
  }

  else
  {
    v6 = (*(v4 + 48))(a1);
  }

  v50 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v6)
  {
    (*(v4 + 8))(a1, v3);
    __swift_destroy_boxed_opaque_existential_0((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v49 = sub_21DBF563C();
  v8 = *(v49 - 8);
  v9 = *(v8 + 80) & 0xF8;
  v10 = v9 | 7;
  v48 = sub_21DBF6C1C();
  v11 = *(v48 - 8);
  v12 = v11;
  v13 = *(v11 + 80);
  v14 = sub_21DBF8D7C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 80);
  v17 = (a1 + v50 + (v13 | v16 | v10) + 32) & ~(v13 | v16 | v10);
  v18 = *(v8 + 64);
  if (v18 <= 0x19)
  {
    v19 = 25;
  }

  else
  {
    v19 = *(v8 + 64);
  }

  v20 = v19 + 1;
  v21 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = *(v11 + 64) + ((v13 + 8) & ~v13);
  if (v19 + 1 + ((v9 + 15) & ~v10) > v21)
  {
    v21 = v19 + 1 + ((v9 + 15) & ~v10);
  }

  if (v21 <= ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v21 = ((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v21 <= (v18 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v21 = (v18 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v23 = *(*(v14 - 8) + 64) + ((v16 + 1) & ~v16);
  if (v21 > v23)
  {
    v23 = v21;
  }

  v24 = 24;
  if (v23 > 0x18)
  {
    v24 = v23;
  }

  v25 = ((v17 | 1) + v24) & 0xFFFFFFFFFFFFFFF8;
  if (*(v25 + 8) >= 0xFFFFFFFFuLL)
  {
    v26 = *(v17 + v24);
    v27 = v26 - 9;
    if (v26 < 9)
    {
      goto LABEL_37;
    }

    if (v24 <= 3)
    {
      v28 = v24;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_37;
      }

      v29 = *v17;
    }

    else if (v28 == 2)
    {
      v29 = *v17;
    }

    else if (v28 == 3)
    {
      v29 = *v17 | (*(v17 + 2) << 16);
    }

    else
    {
      v29 = *v17;
    }

    v30 = (v29 | (v27 << (8 * v24))) + 9;
    v26 = v29 + 9;
    if (v24 < 4)
    {
      v26 = v30;
    }

LABEL_37:
    if (v26 > 3)
    {
      if (v26 > 5)
      {
        if (v26 != 6)
        {
          if (v26 != 7)
          {
            if (v26 == 8)
            {
              (*(v15 + 8))(((v17 | 1) + v16) & ~v16, v14);
            }

            goto LABEL_123;
          }

          if (*(v8 + 84) < 0xFDu)
          {
            if (*(v17 + v18) < 3u)
            {
LABEL_83:
              (*(v8 + 8))(v17, v49);
            }
          }

          else if (!(*(v8 + 48))(v17, *(v8 + 84), v49))
          {
            goto LABEL_83;
          }

LABEL_123:

          v47 = *((((v25 + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);

          return;
        }

        v40 = ~v13;
        if ((*(v12 + 84) & 0x80000000) != 0)
        {
          if ((*(v12 + 48))((v17 + v13 + 8) & v40))
          {
LABEL_74:
            v42 = (v22 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
            if (*(v42 + 8) >= 0xFFFFFFFFuLL)
            {
            }

            goto LABEL_123;
          }
        }

        else
        {
          v41 = *v17;
          if (*v17 >= 0xFFFFFFFFuLL)
          {
            LODWORD(v41) = -1;
          }

          if (v41 != -1)
          {
            goto LABEL_74;
          }
        }

        (*(v12 + 8))((v17 + v13 + 8) & v40, v48);
        goto LABEL_74;
      }

      if (v26 != 4)
      {

        goto LABEL_123;
      }

LABEL_57:

      v35 = ((v17 + v10 + 8) & ~v10);
      v36 = *(v35 + v19);
      if (v36 > 9)
      {
        goto LABEL_123;
      }

      if (*(v35 + v19) > 4u)
      {
        if (*(v35 + v19) <= 6u)
        {
LABEL_88:
          (*(v8 + 8))(v35, v49);
          goto LABEL_123;
        }

        if (v36 == 7)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (*(v35 + v19) > 1u)
        {
          goto LABEL_88;
        }

        if (!*(v35 + v19))
        {
          goto LABEL_123;
        }
      }

      goto LABEL_123;
    }

    if (v26 > 1)
    {
      goto LABEL_57;
    }

    if (v26)
    {
      if (v26 != 1)
      {
        goto LABEL_123;
      }

      v31 = *(v17 + v19);
      v32 = v31 - 10;
      if (v31 >= 0xA)
      {
        if (v19 <= 3)
        {
          v33 = v19;
        }

        else
        {
          v33 = 4;
        }

        if (v33 <= 1)
        {
          if (!v33)
          {
            goto LABEL_98;
          }

          v34 = *v17;
        }

        else if (v33 == 2)
        {
          v34 = *v17;
        }

        else if (v33 == 3)
        {
          v34 = *v17 | (*(v17 + 2) << 16);
        }

        else
        {
          v34 = *v17;
        }

        if (v19 < 4)
        {
          v34 |= v32 << (8 * v19);
        }

        v31 = v34 + 10;
      }

LABEL_98:
      if (v31 <= 4)
      {
        if (v31 > 1)
        {
LABEL_100:
          if (v31 != 2)
          {
            v43 = v19 + 1;
LABEL_117:
            (*(v8 + 8))(v17, v49);
            goto LABEL_118;
          }

          v43 = v19 + 1;
          (*(v8 + 8))(v17, v49);
LABEL_118:
          v20 = v43;
LABEL_119:
          v45 = (v20 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (*(v45 + 8) >= 0xFFFFFFFFuLL)
          {

            sub_21D179EF0(*(v45 + 16), *(v45 + 24), *(v45 + 32), *(v45 + 40), *(v45 + 48), *(v45 + 56), *(v45 + 64));
            v46 = *(v45 + 120);
            if (v46 != 255)
            {
              sub_21D1078C0(*(v45 + 72), *(v45 + 80), *(v45 + 88), *(v45 + 96), *(v45 + 104), *(v45 + 112), v46 & 1);
            }
          }

          goto LABEL_123;
        }

        goto LABEL_110;
      }

      goto LABEL_112;
    }

    v31 = *(v17 + v19);
    v37 = v31 - 10;
    if (v31 >= 0xA)
    {
      if (v19 <= 3)
      {
        v38 = v19;
      }

      else
      {
        v38 = 4;
      }

      if (v38 <= 1)
      {
        if (!v38)
        {
          goto LABEL_108;
        }

        v39 = *v17;
      }

      else if (v38 == 2)
      {
        v39 = *v17;
      }

      else if (v38 == 3)
      {
        v39 = *v17 | (*(v17 + 2) << 16);
      }

      else
      {
        v39 = *v17;
      }

      if (v19 < 4)
      {
        v39 |= v37 << (8 * v19);
      }

      v31 = v39 + 10;
    }

LABEL_108:
    if (v31 <= 4)
    {
      if (v31 > 1)
      {
        goto LABEL_100;
      }

LABEL_110:
      if (!v31)
      {
        goto LABEL_119;
      }

      v44 = *v17;
      v43 = v19 + 1;
LABEL_115:

      goto LABEL_118;
    }

LABEL_112:
    if (v31 <= 6)
    {
      v43 = v19 + 1;
      goto LABEL_117;
    }

    if (v31 == 7)
    {
      goto LABEL_119;
    }

    v43 = v19 + 1;
    v44 = *v17;
    goto LABEL_115;
  }
}

char *sub_21D34D2A8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 84) < 0x7FFFFFFFu)
  {
    v10 = *((&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v9 = v8 + 32;
    if (v10 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = v8 + 32;
    if ((*(v6 + 48))(a2))
    {
LABEL_3:
      memcpy(a1, a2, v9);
      goto LABEL_8;
    }
  }

  (*(v6 + 16))(a1, a2, v5);
  v11 = *((&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
  *((&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) = v11;
  (**(v11 - 8))();
LABEL_8:
  v12 = &a1[v9];
  __dsta = &a2[v9];
  v219 = a1;
  v214 = sub_21DBF563C();
  v13 = *(v214 - 8);
  v14 = v13;
  v15 = *(v13 + 80) & 0xF8;
  v16 = v15 | 7;
  v207 = sub_21DBF6C1C();
  v17 = *(v207 - 8);
  v18 = v17;
  v19 = *(v17 + 80);
  v20 = sub_21DBF8D7C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v19 | v22 | v15 | 7;
  v24 = (&v12[v23] & ~v23);
  v25 = (&__dsta[v23] & ~v23);
  v26 = *(v13 + 64);
  if (v26 <= 0x19)
  {
    v27 = 25;
  }

  else
  {
    v27 = v26;
  }

  v28 = v27 + 1;
  v29 = (((v27 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v30 = v15 + 15;
  v31 = *(v17 + 84);
  v32 = *(v17 + 64) + ((v19 + 8) & ~v19);
  v209 = v14;
  v33 = *(v14 + 84);
  if (v27 + 1 + ((v15 + 15) & ~v16) > v29)
  {
    v29 = v27 + 1 + ((v15 + 15) & ~v16);
  }

  if (v29 <= ((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v29 = ((v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v34 = (v26 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v29 > v34)
  {
    v34 = v29;
  }

  v35 = *(*(v20 - 8) + 64) + ((v22 + 1) & ~v22);
  if (v34 > v35)
  {
    v35 = v34;
  }

  if (v35 <= 0x18)
  {
    v36 = 24;
  }

  else
  {
    v36 = v35;
  }

  v37 = v36 + 1;
  v38 = &v25[v36 + 1] & 0xFFFFFFFFFFFFFFF8;
  if (*(v38 + 8) >= 0xFFFFFFFFuLL)
  {
    v39 = v18;
    v40 = v25[v36];
    v41 = v40 - 9;
    if (v40 < 9)
    {
      goto LABEL_39;
    }

    if (v36 <= 3)
    {
      v42 = v36;
    }

    else
    {
      v42 = 4;
    }

    if (v42 <= 1)
    {
      if (!v42)
      {
        goto LABEL_39;
      }

      v43 = *v25;
      if (v36 < 4)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v42 != 2)
      {
        if (v42 == 3)
        {
          v43 = *v25 | (v25[2] << 16);
          if (v36 >= 4)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v43 = *v25;
          if (v36 >= 4)
          {
            goto LABEL_38;
          }
        }

        goto LABEL_37;
      }

      v43 = *v25;
      if (v36 < 4)
      {
LABEL_37:
        v43 |= v41 << (8 * v36);
      }
    }

LABEL_38:
    v40 = v43 + 9;
LABEL_39:
    v44 = ~v16;
    __dst = v24;
    __src = v25;
    if (v40 > 3)
    {
      if (v40 > 5)
      {
        if (v40 != 6)
        {
          if (v40 != 7)
          {
            if (v40 == 8)
            {
              *v24 = *v25;
              (*(v21 + 16))(&v24[v22 + 1] & ~v22, &v25[v22 + 1] & ~v22, v20);
              v45 = __src;
              v46 = __dst;
              __dst[v36] = 8;
LABEL_238:
              v46[v37] = v45[v37];
              v188 = &v46[v37] & 0xFFFFFFFFFFFFFFF8;
              v189 = *(v38 + 8);
              *(v188 + 8) = v189;
              v190 = (v188 + 23) & 0xFFFFFFFFFFFFFFF8;
              v191 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
              v192 = *v191;
              *v190 = *v191;
              *(v190 + 8) = *(v191 + 8);
              v193 = (v188 + 39) & 0xFFFFFFFFFFFFFFF8;
              v194 = (v38 + 39) & 0xFFFFFFFFFFFFFFF8;
              v195 = *v194;
              *(v193 + 8) = *(v194 + 8);
              *v193 = v195;
              v196 = ((v188 + 55) & 0xFFFFFFFFFFFFFFF8);
              v197 = ((v38 + 55) & 0xFFFFFFFFFFFFFFF8);
              *v196 = *v197;
              v198 = (v196 + 15) & 0xFFFFFFFFFFFFFFF8;
              v199 = (v197 + 15) & 0xFFFFFFFFFFFFFFF8;
              v200 = *v199;
              *v198 = *v199;
              *(v198 + 8) = *(v199 + 8);
              v201 = (((((v37 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
              *&v46[v201 + 7] = *&v45[v201 + 7];
              v202 = v189;
              v203 = v192;
              sub_21DBF8E0C();
              v204 = v200;
              return v219;
            }

            goto LABEL_95;
          }

          if (v33 < 0xFD)
          {
            v90 = v209;
            if (v25[v26] >= 3u)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v90 = v209;
            v91 = (*(v209 + 48))(v25, v33, v214);
            v24 = __dst;
            if (v91)
            {
LABEL_94:
              memcpy(v24, __src, v26 + 1);
              v45 = __src;
              v46 = __dst;
LABEL_104:
              *(&v46[v26 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&v45[v26 + 8] & 0xFFFFFFFFFFFFFFF8);
              v46[v36] = 7;
              goto LABEL_238;
            }

            v25 = __src;
          }

          (*(v90 + 16))(v24, v25, v214);
          v45 = __src;
          v46 = __dst;
          __dst[v26] = __src[v26];
          goto LABEL_104;
        }

        v76 = ~v19;
        v206 = v36;
        if (v31 < 0)
        {
          v92 = (*(v39 + 48))(&v25[v19 + 8] & v76);
          v25 = __src;
          v24 = __dst;
          v78 = v38;
          if (v92)
          {
LABEL_83:
            v79 = v24;
            v80 = v25;
            memcpy(v24, v25, v32);
LABEL_107:
            v96 = &v79[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
            v97 = &v80[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
            if (*(v97 + 8) < 0xFFFFFFFFuLL)
            {
              v46 = v79;
              v45 = v80;
              v100 = *v97;
              *(v96 + 16) = *(v97 + 16);
              *v96 = v100;
            }

            else
            {
              *v96 = *v97;
              *(v96 + 8) = *(v97 + 8);
              v98 = *(v97 + 16);
              *(v96 + 16) = v98;
              sub_21DBF8E0C();
              v99 = v98;
              v45 = __src;
              v46 = __dst;
            }

            v38 = v78;
            v46[v206] = 6;
            goto LABEL_238;
          }
        }

        else
        {
          v77 = *v25;
          if (*v25 >= 0xFFFFFFFFuLL)
          {
            LODWORD(v77) = -1;
          }

          v78 = &v25[v36 + 1] & 0xFFFFFFFFFFFFFFF8;
          if (v77 != -1)
          {
            goto LABEL_83;
          }
        }

        *v24 = *v25;
        v93 = &v24[v19 + 8];
        v94 = &v25[v19 + 8];
        v95 = *(v39 + 16);
        v79 = v24;
        v80 = v25;
        sub_21DBF8E0C();
        v95(v93 & v76, v94 & v76, v207);
        goto LABEL_107;
      }

      if (v40 != 4)
      {
        *v24 = *v25;
        v24[8] = v25[8];
        v24[9] = v25[9];
        v24[10] = v25[10];
        v61 = *(v25 + 2);
        *(v24 + 2) = v61;
        v24[v36] = 5;
        v62 = v61;
LABEL_96:
        v45 = __src;
        v46 = __dst;
        goto LABEL_238;
      }

      v81 = v27 + 1;
      v52 = &v25[v36 + 1] & 0xFFFFFFFFFFFFFFF8;
      v82 = *v25;
      *v24 = *v25;
      v83 = (&v24[v30] & v44);
      v84 = (&v25[v30] & v44);
      v85 = v27;
      v86 = *(v84 + v27);
      v87 = v82;
      if (v86 <= 9)
      {
        if (v86 > 4)
        {
          v46 = __dst;
          v45 = __src;
          if (v86 <= 6)
          {
            (*(v209 + 16))(v83, v84, v214);
            if (v86 == 5)
            {
              v89 = 5;
            }

            else
            {
              v89 = 6;
            }

            goto LABEL_234;
          }

          v88 = v85;
          if (v86 == 7)
          {
            v185 = *v84;
            *(v83 + 9) = *(v84 + 9);
            *v83 = v185;
            *(v83 + v85) = 7;
LABEL_236:
            v182 = 4;
            goto LABEL_237;
          }

          v105 = *v84;
          *v83 = *v84;
          if (v86 == 8)
          {
            v106 = 8;
          }

          else
          {
            v106 = 9;
          }
        }

        else
        {
          v88 = v85;
          if (v86 > 1)
          {
            if (v86 == 2)
            {
              (*(v209 + 16))(v83, v84, v214);
              v89 = 2;
            }

            else
            {
              (*(v209 + 16))(v83, v84, v214);
              if (v86 == 3)
              {
                v89 = 3;
              }

              else
              {
                v89 = 4;
              }
            }

LABEL_234:
            *(v83 + v85) = v89;
            goto LABEL_235;
          }

          if (!v86)
          {
            *v83 = *v84;
            *(v83 + v85) = 0;
            goto LABEL_235;
          }

          v105 = *v84;
          *v83 = *v84;
          v106 = 1;
        }

        *(v83 + v88) = v106;
        v187 = v105;
        goto LABEL_235;
      }

      memcpy(v83, v84, v81);
LABEL_235:
      v46 = __dst;
      v45 = __src;
      goto LABEL_236;
    }

    if (v40 <= 1)
    {
      if (v40)
      {
        if (v40 != 1)
        {
LABEL_95:
          memcpy(v24, v25, v36 + 1);
          goto LABEL_96;
        }

        v47 = v25[v27];
        v48 = v47 - 10;
        if (v47 >= 0xA)
        {
          if (v27 <= 3)
          {
            v49 = v27;
          }

          else
          {
            v49 = 4;
          }

          if (v49 <= 1)
          {
            if (!v49)
            {
              goto LABEL_132;
            }

            v50 = *v25;
          }

          else if (v49 == 2)
          {
            v50 = *v25;
          }

          else if (v49 == 3)
          {
            v50 = *v25 | (v25[2] << 16);
          }

          else
          {
            v50 = *v25;
          }

          if (v27 < 4)
          {
            v50 |= v48 << (8 * v27);
          }

          v47 = v50 + 10;
        }

LABEL_132:
        if (v47 > 4)
        {
          if (v47 <= 6)
          {
            v107 = v27;
            v108 = v27 + 1;
            if (v47 == 5)
            {
              (*(v209 + 16))(v24, v25, v214);
              v25 = __src;
              v24 = __dst;
              v109 = 5;
            }

            else
            {
              (*(v209 + 16))(v24, v25, v214);
              v25 = __src;
              v24 = __dst;
              v109 = 6;
            }

            goto LABEL_157;
          }

          if (v47 != 7)
          {
            v108 = v27 + 1;
            if (v47 == 8)
            {
              v110 = *v25;
              *v24 = *v25;
              v111 = 8;
            }

            else
            {
              v110 = *v25;
              *v24 = *v25;
              v111 = 9;
            }

            v24[v27] = v111;
            v115 = v110;
            v25 = __src;
            v24 = __dst;
            goto LABEL_158;
          }

          v114 = *v25;
          *(v24 + 9) = *(v25 + 9);
          *v24 = v114;
          v24[v27] = 7;
        }

        else
        {
          if (v47 <= 1)
          {
            if (v47)
            {
              v116 = *v25;
              *v24 = *v25;
              v24[v27] = 1;
              v117 = v27 + 1;
              v118 = v116;
              v28 = v117;
              v25 = __src;
              v24 = __dst;
            }

            else
            {
              *v24 = *v25;
              v24[v27] = 0;
            }

            goto LABEL_159;
          }

          if (v47 != 2)
          {
            v107 = v27;
            v108 = v27 + 1;
            if (v47 == 3)
            {
              (*(v209 + 16))(v24, v25, v214);
              v25 = __src;
              v24 = __dst;
              v109 = 3;
            }

            else
            {
              (*(v209 + 16))(v24, v25, v214);
              v25 = __src;
              v24 = __dst;
              v109 = 4;
            }

LABEL_157:
            v24[v107] = v109;
LABEL_158:
            v28 = v108;
            goto LABEL_159;
          }

          v112 = v27 + 1;
          v113 = v27;
          (*(v209 + 16))(v24, v25, v214);
          v28 = v112;
          v25 = __src;
          v24 = __dst;
          __dst[v113] = 2;
        }

LABEL_159:
        v119 = &v24[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
        v120 = &v25[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (*(v120 + 8) < 0xFFFFFFFFuLL)
        {
          v134 = *v120;
          v135 = *(v120 + 16);
          v136 = *(v120 + 48);
          *(v119 + 32) = *(v120 + 32);
          *(v119 + 48) = v136;
          *v119 = v134;
          *(v119 + 16) = v135;
          v137 = *(v120 + 64);
          v138 = *(v120 + 80);
          v139 = *(v120 + 96);
          *(v119 + 106) = *(v120 + 106);
          *(v119 + 80) = v138;
          *(v119 + 96) = v139;
          *(v119 + 64) = v137;
        }

        else
        {
          v215 = v38;
          *v119 = *v120;
          *(v119 + 8) = *(v120 + 8);
          v121 = *(v120 + 16);
          v122 = *(v120 + 24);
          v124 = *(v120 + 32);
          v123 = *(v120 + 40);
          v125 = *(v120 + 48);
          v210 = *(v120 + 56);
          v126 = *(v120 + 64);
          sub_21DBF8E0C();
          sub_21D2A7DB4(v121, v122, v124, v123, v125, v210, v126);
          *(v119 + 16) = v121;
          *(v119 + 24) = v122;
          *(v119 + 32) = v124;
          *(v119 + 40) = v123;
          *(v119 + 48) = v125;
          *(v119 + 56) = v210;
          *(v119 + 64) = v126;
          *(v119 + 65) = *(v120 + 65);
          *(v119 + 66) = *(v120 + 66);
          *(v119 + 67) = *(v120 + 67);
          *(v119 + 68) = *(v120 + 68);
          v127 = *(v120 + 120);
          if (v127 == 255)
          {
            v140 = *(v120 + 72);
            v141 = *(v120 + 88);
            v142 = *(v120 + 104);
            *(v119 + 120) = *(v120 + 120);
            *(v119 + 104) = v142;
            *(v119 + 88) = v141;
            *(v119 + 72) = v140;
          }

          else
          {
            v128 = *(v120 + 72);
            v129 = *(v120 + 80);
            v130 = *(v120 + 88);
            v131 = *(v120 + 96);
            v132 = *(v120 + 104);
            v211 = *(v120 + 112);
            v133 = v127 & 1;
            sub_21D0FB960(v128, v129, v130, v131, v132, v211, v127 & 1);
            *(v119 + 72) = v128;
            *(v119 + 80) = v129;
            *(v119 + 88) = v130;
            *(v119 + 96) = v131;
            *(v119 + 104) = v132;
            *(v119 + 112) = v211;
            *(v119 + 120) = v133;
          }

          v38 = v215;
          v24 = __dst;
          *(v119 + 121) = *(v120 + 121);
        }

        *(v119 + 122) = *(v120 + 122);
        *(v119 + 123) = *(v120 + 123);
        *(v119 + 124) = *(v120 + 124);
        *(v119 + 125) = *(v120 + 125);
        *(v119 + 126) = *(v120 + 126);
        v143 = *((v120 + 134) & 0xFFFFFFFFFFFFFFF8);
        *((v119 + 134) & 0xFFFFFFFFFFFFFFF8) = v143;
        v24[v36] = 1;
LABEL_203:
        v180 = v143;
        v46 = __dst;
        v45 = __src;
        goto LABEL_238;
      }

      v63 = v25[v27];
      v64 = v63 - 10;
      if (v63 >= 0xA)
      {
        if (v27 <= 3)
        {
          v65 = v27;
        }

        else
        {
          v65 = 4;
        }

        if (v65 <= 1)
        {
          if (!v65)
          {
            goto LABEL_170;
          }

          v66 = *v25;
        }

        else if (v65 == 2)
        {
          v66 = *v25;
        }

        else if (v65 == 3)
        {
          v66 = *v25 | (v25[2] << 16);
        }

        else
        {
          v66 = *v25;
        }

        if (v27 < 4)
        {
          v66 |= v64 << (8 * v27);
        }

        v63 = v66 + 10;
      }

LABEL_170:
      if (v63 > 4)
      {
        if (v63 <= 6)
        {
          v144 = v27;
          v145 = v27 + 1;
          if (v63 == 5)
          {
            (*(v209 + 16))(v24, v25, v214);
            v25 = __src;
            v24 = __dst;
            v146 = 5;
          }

          else
          {
            (*(v209 + 16))(v24, v25, v214);
            v25 = __src;
            v24 = __dst;
            v146 = 6;
          }

          goto LABEL_194;
        }

        if (v63 != 7)
        {
          v145 = v27 + 1;
          if (v63 == 8)
          {
            v147 = *v25;
            *v24 = *v25;
            v148 = 8;
          }

          else
          {
            v147 = *v25;
            *v24 = *v25;
            v148 = 9;
          }

          v24[v27] = v148;
          v152 = v147;
          v25 = __src;
          v24 = __dst;
          goto LABEL_195;
        }

        v151 = *v25;
        *(v24 + 9) = *(v25 + 9);
        *v24 = v151;
        v24[v27] = 7;
      }

      else
      {
        if (v63 <= 1)
        {
          if (v63)
          {
            v153 = *v25;
            *v24 = *v25;
            v24[v27] = 1;
            v154 = v27 + 1;
            v155 = v153;
            v28 = v154;
            v25 = __src;
            v24 = __dst;
          }

          else
          {
            *v24 = *v25;
            v24[v27] = 0;
          }

          goto LABEL_196;
        }

        if (v63 != 2)
        {
          v144 = v27;
          v145 = v27 + 1;
          if (v63 == 3)
          {
            (*(v209 + 16))(v24, v25, v214);
            v25 = __src;
            v24 = __dst;
            v146 = 3;
          }

          else
          {
            (*(v209 + 16))(v24, v25, v214);
            v25 = __src;
            v24 = __dst;
            v146 = 4;
          }

LABEL_194:
          v24[v144] = v146;
LABEL_195:
          v28 = v145;
          goto LABEL_196;
        }

        v149 = v27 + 1;
        v150 = v27;
        (*(v209 + 16))(v24, v25, v214);
        v28 = v149;
        v25 = __src;
        v24 = __dst;
        __dst[v150] = 2;
      }

LABEL_196:
      v156 = &v24[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
      v157 = &v25[v28 + 7] & 0xFFFFFFFFFFFFFFF8;
      if (*(v157 + 8) < 0xFFFFFFFFuLL)
      {
        v171 = *v157;
        v172 = *(v157 + 16);
        v173 = *(v157 + 48);
        *(v156 + 32) = *(v157 + 32);
        *(v156 + 48) = v173;
        *v156 = v171;
        *(v156 + 16) = v172;
        v174 = *(v157 + 64);
        v175 = *(v157 + 80);
        v176 = *(v157 + 96);
        *(v156 + 106) = *(v157 + 106);
        *(v156 + 80) = v175;
        *(v156 + 96) = v176;
        *(v156 + 64) = v174;
      }

      else
      {
        v216 = v38;
        *v156 = *v157;
        *(v156 + 8) = *(v157 + 8);
        v158 = *(v157 + 16);
        v159 = *(v157 + 24);
        v161 = *(v157 + 32);
        v160 = *(v157 + 40);
        v162 = *(v157 + 48);
        v212 = *(v157 + 56);
        v163 = *(v157 + 64);
        sub_21DBF8E0C();
        sub_21D2A7DB4(v158, v159, v161, v160, v162, v212, v163);
        *(v156 + 16) = v158;
        *(v156 + 24) = v159;
        *(v156 + 32) = v161;
        *(v156 + 40) = v160;
        *(v156 + 48) = v162;
        *(v156 + 56) = v212;
        *(v156 + 64) = v163;
        *(v156 + 65) = *(v157 + 65);
        *(v156 + 66) = *(v157 + 66);
        *(v156 + 67) = *(v157 + 67);
        *(v156 + 68) = *(v157 + 68);
        v164 = *(v157 + 120);
        if (v164 == 255)
        {
          v177 = *(v157 + 72);
          v178 = *(v157 + 88);
          v179 = *(v157 + 104);
          *(v156 + 120) = *(v157 + 120);
          *(v156 + 104) = v179;
          *(v156 + 88) = v178;
          *(v156 + 72) = v177;
        }

        else
        {
          v165 = *(v157 + 72);
          v166 = *(v157 + 80);
          v167 = *(v157 + 88);
          v168 = *(v157 + 96);
          v169 = *(v157 + 104);
          v213 = *(v157 + 112);
          v170 = v164 & 1;
          sub_21D0FB960(v165, v166, v167, v168, v169, v213, v164 & 1);
          *(v156 + 72) = v165;
          *(v156 + 80) = v166;
          *(v156 + 88) = v167;
          *(v156 + 96) = v168;
          *(v156 + 104) = v169;
          *(v156 + 112) = v213;
          *(v156 + 120) = v170;
        }

        v38 = v216;
        v24 = __dst;
        *(v156 + 121) = *(v157 + 121);
      }

      *(v156 + 122) = *(v157 + 122);
      *(v156 + 123) = *(v157 + 123);
      *(v156 + 124) = *(v157 + 124);
      *(v156 + 125) = *(v157 + 125);
      *(v156 + 126) = *(v157 + 126);
      v143 = *((v157 + 134) & 0xFFFFFFFFFFFFFFF8);
      *((v156 + 134) & 0xFFFFFFFFFFFFFFF8) = v143;
      v24[v36] = 0;
      goto LABEL_203;
    }

    if (v40 != 2)
    {
      v51 = v27 + 1;
      v52 = &v25[v36 + 1] & 0xFFFFFFFFFFFFFFF8;
      v53 = *v25;
      *v24 = *v25;
      v54 = (&v24[v30] & v44);
      v55 = (&v25[v30] & v44);
      v56 = v27;
      v57 = *(v55 + v27);
      v58 = v53;
      if (v57 <= 9)
      {
        if (v57 > 4)
        {
          v46 = __dst;
          v45 = __src;
          if (v57 <= 6)
          {
            (*(v209 + 16))(v54, v55, v214);
            if (v57 == 5)
            {
              v60 = 5;
            }

            else
            {
              v60 = 6;
            }

            goto LABEL_217;
          }

          v59 = v56;
          if (v57 == 7)
          {
            v181 = *v55;
            *(v54 + 9) = *(v55 + 9);
            *v54 = v181;
            *(v54 + v56) = 7;
            v182 = 3;
LABEL_237:
            v46[v36] = v182;
            v38 = v52;
            goto LABEL_238;
          }

          v101 = *v55;
          *v54 = *v55;
          if (v57 == 8)
          {
            v102 = 8;
          }

          else
          {
            v102 = 9;
          }
        }

        else
        {
          v59 = v56;
          if (v57 > 1)
          {
            if (v57 == 2)
            {
              (*(v209 + 16))(v54, v55, v214);
              v60 = 2;
            }

            else
            {
              (*(v209 + 16))(v54, v55, v214);
              if (v57 == 3)
              {
                v60 = 3;
              }

              else
              {
                v60 = 4;
              }
            }

LABEL_217:
            *(v54 + v56) = v60;
            goto LABEL_218;
          }

          if (!v57)
          {
            *v54 = *v55;
            *(v54 + v56) = 0;
            goto LABEL_218;
          }

          v101 = *v55;
          *v54 = *v55;
          v102 = 1;
        }

        *(v54 + v59) = v102;
        v184 = v101;
        goto LABEL_218;
      }

      memcpy(v54, v55, v51);
LABEL_218:
      v46 = __dst;
      v45 = __src;
      v182 = 3;
      goto LABEL_237;
    }

    v67 = v27 + 1;
    v52 = &v25[v36 + 1] & 0xFFFFFFFFFFFFFFF8;
    v68 = *v25;
    *v24 = *v25;
    v69 = (&v24[v30] & v44);
    v70 = (&v25[v30] & v44);
    v71 = v27;
    v72 = *(v70 + v27);
    v73 = v68;
    if (v72 <= 9)
    {
      if (v72 > 4)
      {
        v46 = __dst;
        v45 = __src;
        if (v72 <= 6)
        {
          (*(v209 + 16))(v69, v70, v214);
          if (v72 == 5)
          {
            v75 = 5;
          }

          else
          {
            v75 = 6;
          }

          goto LABEL_226;
        }

        v74 = v71;
        if (v72 == 7)
        {
          v183 = *v70;
          *(v69 + 9) = *(v70 + 9);
          *v69 = v183;
          *(v69 + v71) = 7;
LABEL_228:
          v182 = 2;
          goto LABEL_237;
        }

        v103 = *v70;
        *v69 = *v70;
        if (v72 == 8)
        {
          v104 = 8;
        }

        else
        {
          v104 = 9;
        }
      }

      else
      {
        v74 = v71;
        if (v72 > 1)
        {
          if (v72 == 2)
          {
            (*(v209 + 16))(v69, v70, v214);
            v75 = 2;
          }

          else
          {
            (*(v209 + 16))(v69, v70, v214);
            if (v72 == 3)
            {
              v75 = 3;
            }

            else
            {
              v75 = 4;
            }
          }

LABEL_226:
          *(v69 + v71) = v75;
          goto LABEL_227;
        }

        if (!v72)
        {
          *v69 = *v70;
          *(v69 + v71) = 0;
          goto LABEL_227;
        }

        v103 = *v70;
        *v69 = *v70;
        v104 = 1;
      }

      *(v69 + v74) = v104;
      v186 = v103;
      goto LABEL_227;
    }

    memcpy(v69, v70, v67);
LABEL_227:
    v46 = __dst;
    v45 = __src;
    goto LABEL_228;
  }

  memcpy(v24, v25, (((((v37 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
  return v219;
}

char *sub_21D34E7A4(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 < 0x7FFFFFFF)
  {
    v14 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    v15 = *((&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    v12 = v15 + 1;
    if (v14 < 0xFFFFFFFF)
    {
LABEL_3:
      if (!v12)
      {
        (*(v6 + 16))(a1, a2, v5);
        v13 = *((&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
        *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 24) = v13;
        (**(v13 - 8))();
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(v6 + 48);
    v11 = v10(a1, v7, v5);
    v12 = v10(a2, v7, v5);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  if (v12)
  {
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_0(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
LABEL_10:
    memcpy(a1, a2, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
    goto LABEL_12;
  }

  (*(v6 + 24))(a1, a2, v5);
  __swift_assign_boxed_opaque_existential_0((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8), (&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8));
LABEL_12:
  v16 = &a1[v9];
  v533 = a1;
  v534 = &a2[v9];
  v530 = sub_21DBF563C();
  v17 = *(v530 - 8);
  v18 = v17;
  v19 = *(v17 + 80) & 0xF8;
  v20 = v19 | 7;
  v529 = sub_21DBF6C1C();
  v21 = *(v529 - 8);
  v22 = *(v21 + 80);
  v23 = sub_21DBF8D7C();
  v24 = *(v23 - 8);
  v25 = v17;
  v26 = *(v24 + 80);
  v27 = v22 | v26 | v19 | 7;
  v28 = (&v16[v27] & ~v27);
  v29 = (&v534[v27] & ~v27);
  v30 = *(v25 + 64);
  if (v30 <= 0x19)
  {
    v31 = 25;
  }

  else
  {
    v31 = *(v25 + 64);
  }

  v32 = v31 + 1;
  v33 = (((v31 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v34 = ~v20;
  v35 = v19 + 15;
  v36 = (v19 + 15) & ~v20;
  v527 = v22;
  v528 = v21;
  v37 = *(v21 + 84);
  v38 = ~v22;
  v39 = v22 + 8;
  v40 = v28;
  v41 = *(v21 + 64) + ((v22 + 8) & ~v22);
  v531 = v18;
  v42 = *(v18 + 84);
  v43 = v31 + 1 + v36;
  if (v43 > v33)
  {
    v33 = v43;
  }

  if (v33 <= ((v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v33 = ((v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v33 <= (v30 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v33 = (v30 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v44 = ~v26;
  v45 = v26 + 1;
  v46 = *(*(v23 - 8) + 64) + ((v26 + 1) & ~v26);
  if (v33 > v46)
  {
    v46 = v33;
  }

  if (v46 <= 0x18)
  {
    v47 = 24;
  }

  else
  {
    v47 = v46;
  }

  v48 = 8 * v47;
  v49 = v47 + 1;
  v532 = &v40[v47 + 1] & 0xFFFFFFFFFFFFFFF8;
  v535 = v29;
  v50 = &v29[v47 + 1] & 0xFFFFFFFFFFFFFFF8;
  v51 = *(v50 + 8);
  if (*(v532 + 8) < 0xFFFFFFFFuLL)
  {
    if (v51 < 0xFFFFFFFF)
    {
      memcpy(v40, v29, (((((v49 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      return v533;
    }

    v56 = v29[v47];
    v57 = v56 - 9;
    if (v56 >= 9)
    {
      if (v47 <= 3)
      {
        v58 = v47;
      }

      else
      {
        v58 = 4;
      }

      if (v58 <= 1)
      {
        if (!v58)
        {
          goto LABEL_66;
        }

        v59 = *v29;
      }

      else if (v58 == 2)
      {
        v59 = *v29;
      }

      else if (v58 == 3)
      {
        v59 = *v29 | (v29[2] << 16);
      }

      else
      {
        v59 = *v29;
      }

      if (v47 < 4)
      {
        v59 |= v57 << v48;
      }

      v56 = v59 + 9;
    }

LABEL_66:
    __n = v47 + 1;
    v525 = &v29[v47 + 1] & 0xFFFFFFFFFFFFFFF8;
    if (v56 > 3)
    {
      if (v56 > 5)
      {
        if (v56 == 6)
        {
          if ((v37 & 0x80000000) != 0)
          {
            v163 = v47;
            v100 = (*(v528 + 48))(&v29[v39] & v38, v37, v529);
            v38 = ~v22;
            v47 = v163;
          }

          else
          {
            v99 = *v29;
            if (*v29 >= 0xFFFFFFFFuLL)
            {
              LODWORD(v99) = -1;
            }

            v100 = v99 + 1;
          }

          v80 = v532;
          v164 = v47;
          if (v100)
          {
            memcpy(v40, v535, v41);
          }

          else
          {
            *v40 = *v535;
            v167 = &v535[v39];
            v168 = *(v528 + 16);
            v169 = v38;
            sub_21DBF8E0C();
            v168(&v40[v22 + 8] & v169, v167 & v169, v529);
          }

          v64 = v533;
          v170 = &v40[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
          v171 = &v535[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (*(v171 + 8) < 0xFFFFFFFFuLL)
          {
            v174 = *v171;
            *(v170 + 16) = *(v171 + 16);
            *v170 = v174;
          }

          else
          {
            *v170 = *v171;
            *(v170 + 8) = *(v171 + 8);
            v172 = *(v171 + 16);
            *(v170 + 16) = v172;
            sub_21DBF8E0C();
            v173 = v172;
          }

          v40[v164] = 6;
          goto LABEL_662;
        }

        if (v56 != 7)
        {
          v64 = v533;
          if (v56 == 8)
          {
            *v40 = *v29;
            v66 = v47;
            (*(v24 + 16))(&v40[v45] & v44, &v29[v26 + 1] & v44, v23, v38, v34);
            v40[v66] = 8;
LABEL_163:
            v80 = v532;
LABEL_662:
            v40[__n] = v535[__n];
            v454 = *(v525 + 8);
            *(v80 + 8) = v454;
            v455 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
            v456 = (v525 + 23) & 0xFFFFFFFFFFFFFFF8;
            v457 = *v456;
            *v455 = *v456;
            *(v455 + 8) = *(v456 + 8);
            v458 = (v80 + 39) & 0xFFFFFFFFFFFFFFF8;
            v459 = (v525 + 39) & 0xFFFFFFFFFFFFFFF8;
            v460 = *v459;
            *(v458 + 8) = *(v459 + 8);
            *v458 = v460;
            v461 = ((v80 + 55) & 0xFFFFFFFFFFFFFFF8);
            v462 = ((v525 + 55) & 0xFFFFFFFFFFFFFFF8);
            *v461 = *v462;
            v463 = (v461 + 15) & 0xFFFFFFFFFFFFFFF8;
            v464 = (v462 + 15) & 0xFFFFFFFFFFFFFFF8;
            v465 = *v464;
            *v463 = *v464;
            *(v463 + 8) = *(v464 + 8);
            v466 = (((((__n & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
            *&v40[v466 + 7] = *&v535[v466 + 7];
            v467 = v454;
            v468 = v457;
            sub_21DBF8E0C();
            v469 = v465;
            return v64;
          }

LABEL_162:
          memcpy(v40, v29, __n);
          goto LABEL_163;
        }

        v124 = v47;
        v64 = v533;
        if (v42 < 0xFD)
        {
          v154 = v29[v30];
          v80 = &v40[v47 + 1] & 0xFFFFFFFFFFFFFFF8;
          if (v154 < 3)
          {
            goto LABEL_227;
          }

          v125 = v154 - 2;
        }

        else
        {
          v125 = (*(v531 + 48))(v29);
          v80 = v532;
        }

        if (v125)
        {
          v155 = v30 + 1;
          memcpy(v40, v535, v30 + 1);
LABEL_228:
          *(&v40[v155 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v535[v155 + 7] & 0xFFFFFFFFFFFFFFF8);
          v40[v124] = 7;
          goto LABEL_662;
        }

LABEL_227:
        (*(v531 + 16))(v40, v535, v530);
        v40[v30] = v535[v30];
        v155 = v30 + 1;
        goto LABEL_228;
      }

      if (v56 != 4)
      {
        v64 = v533;
        *v40 = *v29;
        v40[8] = v29[8];
        v40[9] = v29[9];
        v40[10] = v29[10];
        v83 = *(v29 + 2);
        *(v40 + 2) = v83;
        v40[v47] = 5;
        v84 = v83;
        goto LABEL_163;
      }

      v101 = v31 + 1;
      v102 = v47;
      v103 = *v29;
      *v40 = *v29;
      v74 = v40;
      v104 = (&v40[v35] & v34);
      v105 = (&v29[v35] & v34);
      v106 = v31;
      v107 = *(v105 + v31);
      v108 = v103;
      v64 = v533;
      if (v107 <= 9)
      {
        v80 = v532;
        if (v107 > 4)
        {
          if (v107 <= 6)
          {
            (*(v531 + 16))(v104, v105, v530);
            if (v107 == 5)
            {
              v110 = 5;
            }

            else
            {
              v110 = 6;
            }

            goto LABEL_658;
          }

          v109 = v106;
          if (v107 == 7)
          {
            v285 = v102;
            v295 = *v105;
            *(v104 + 9) = *(v105 + 9);
            *v104 = v295;
            *(v104 + v106) = 7;
LABEL_660:
            v287 = 4;
            goto LABEL_661;
          }

          v179 = *v105;
          *v104 = *v105;
          if (v107 == 8)
          {
            v180 = 8;
          }

          else
          {
            v180 = 9;
          }
        }

        else
        {
          v109 = v106;
          if (v107 > 1)
          {
            if (v107 != 2)
            {
              (*(v531 + 16))(v104, v105, v530);
              if (v107 == 3)
              {
                v110 = 3;
              }

              else
              {
                v110 = 4;
              }

LABEL_658:
              *(v104 + v106) = v110;
              goto LABEL_659;
            }

            (*(v531 + 16))(v104, v105, v530);
            *(v104 + v106) = 2;
LABEL_659:
            v285 = v102;
            goto LABEL_660;
          }

          if (!v107)
          {
            *v104 = *v105;
            *(v104 + v106) = 0;
            goto LABEL_659;
          }

          v179 = *v105;
          *v104 = *v105;
          v180 = 1;
        }

        *(v104 + v109) = v180;
        v453 = v179;
        goto LABEL_659;
      }

      memcpy(v104, v105, v101);
      v80 = v532;
      goto LABEL_659;
    }

    v64 = v533;
    if (v56 <= 1)
    {
      if (v56)
      {
        if (v56 != 1)
        {
          goto LABEL_162;
        }

        v67 = v29[v31];
        v68 = v67 - 10;
        if (v67 >= 0xA)
        {
          if (v31 <= 3)
          {
            v69 = v31;
          }

          else
          {
            v69 = 4;
          }

          if (v69 <= 1)
          {
            if (!v69)
            {
              goto LABEL_294;
            }

            v70 = *v29;
          }

          else if (v69 == 2)
          {
            v70 = *v29;
          }

          else if (v69 == 3)
          {
            v70 = *v29 | (v29[2] << 16);
          }

          else
          {
            v70 = *v29;
          }

          if (v31 < 4)
          {
            v70 |= v68 << (8 * v31);
          }

          v67 = v70 + 10;
        }

LABEL_294:
        if (v67 > 4)
        {
          if (v67 <= 6)
          {
            v194 = v31 + 1;
            v195 = v31;
            v196 = v47;
            if (v67 == 5)
            {
              (*(v531 + 16))(v40, v29, v530, v38, v34);
              v197 = 5;
            }

            else
            {
              (*(v531 + 16))(v40, v29, v530, v38, v34);
              v197 = 6;
            }

            goto LABEL_331;
          }

          if (v67 != 7)
          {
            v194 = v31 + 1;
            v196 = v47;
            if (v67 == 8)
            {
              v198 = *v29;
              *v40 = *v29;
              v199 = 8;
            }

            else
            {
              v198 = *v29;
              *v40 = *v29;
              v199 = 9;
            }

            v40[v31] = v199;
            v204 = v31;
            v205 = v198;
            v31 = v204;
            goto LABEL_332;
          }

          v196 = v47;
          v202 = *v29;
          *(v40 + 9) = *(v29 + 9);
          *v40 = v202;
          v40[v31] = 7;
        }

        else
        {
          if (v67 <= 1)
          {
            v196 = v47;
            if (v67)
            {
              v206 = *v29;
              *v40 = *v29;
              v40[v31] = 1;
              v207 = v31;
              v208 = v31 + 1;
              v209 = v206;
              v32 = v208;
              v31 = v207;
            }

            else
            {
              *v40 = *v29;
              v40[v31] = 0;
            }

            goto LABEL_333;
          }

          if (v67 != 2)
          {
            v194 = v31 + 1;
            v195 = v31;
            v196 = v47;
            if (v67 == 3)
            {
              (*(v531 + 16))(v40, v29, v530, v38, v34);
              v197 = 3;
            }

            else
            {
              (*(v531 + 16))(v40, v29, v530, v38, v34);
              v197 = 4;
            }

LABEL_331:
            v31 = v195;
            v40[v195] = v197;
LABEL_332:
            v32 = v194;
            goto LABEL_333;
          }

          v196 = v47;
          v200 = v31 + 1;
          v201 = v31;
          (*(v531 + 16))(v40, v29, v530, v38, v34);
          v32 = v200;
          v31 = v201;
          v40[v201] = 2;
        }

LABEL_333:
        v210 = &v40[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
        v211 = &v535[v31 + 8] & 0xFFFFFFFFFFFFFFF8;
        if (*(v211 + 8) < 0xFFFFFFFFuLL)
        {
          v227 = *v211;
          v228 = *(v211 + 16);
          v229 = *(v211 + 48);
          *(v210 + 32) = *(v211 + 32);
          *(v210 + 48) = v229;
          *v210 = v227;
          *(v210 + 16) = v228;
          v230 = *(v211 + 64);
          v231 = *(v211 + 80);
          v232 = *(v211 + 96);
          *(v210 + 106) = *(v211 + 106);
          *(v210 + 80) = v231;
          *(v210 + 96) = v232;
          *(v210 + 64) = v230;
        }

        else
        {
          v522 = v40;
          *v210 = *v211;
          *(v210 + 8) = *(v211 + 8);
          v212 = *(v211 + 16);
          v213 = *(v211 + 24);
          v214 = *(v211 + 32);
          v215 = *(v211 + 40);
          v216 = *(v211 + 48);
          v217 = *(v211 + 56);
          v218 = *(v211 + 64);
          sub_21DBF8E0C();
          sub_21D2A7DB4(v212, v213, v214, v215, v216, v217, v218);
          *(v210 + 16) = v212;
          *(v210 + 24) = v213;
          *(v210 + 32) = v214;
          *(v210 + 40) = v215;
          *(v210 + 48) = v216;
          *(v210 + 56) = v217;
          *(v210 + 64) = v218;
          *(v210 + 65) = *(v211 + 65);
          *(v210 + 66) = *(v211 + 66);
          *(v210 + 67) = *(v211 + 67);
          *(v210 + 68) = *(v211 + 68);
          v219 = *(v211 + 120);
          if (v219 == 255)
          {
            v233 = *(v211 + 72);
            v234 = *(v211 + 88);
            v235 = *(v211 + 104);
            *(v210 + 120) = *(v211 + 120);
            *(v210 + 104) = v235;
            *(v210 + 88) = v234;
            *(v210 + 72) = v233;
          }

          else
          {
            v220 = *(v211 + 72);
            v221 = *(v211 + 80);
            v222 = *(v211 + 88);
            v223 = *(v211 + 96);
            v224 = *(v211 + 104);
            v225 = *(v211 + 112);
            v226 = v219 & 1;
            sub_21D0FB960(v220, v221, v222, v223, v224, v225, v219 & 1);
            *(v210 + 72) = v220;
            *(v210 + 80) = v221;
            *(v210 + 88) = v222;
            *(v210 + 96) = v223;
            *(v210 + 104) = v224;
            *(v210 + 112) = v225;
            *(v210 + 120) = v226;
          }

          v64 = v533;
          *(v210 + 121) = *(v211 + 121);
          v40 = v522;
        }

        v80 = v532;
        *(v210 + 122) = *(v211 + 122);
        *(v210 + 123) = *(v211 + 123);
        *(v210 + 124) = *(v211 + 124);
        *(v210 + 125) = *(v211 + 125);
        *(v210 + 126) = *(v211 + 126);
        v236 = *((v211 + 134) & 0xFFFFFFFFFFFFFFF8);
        *((v210 + 134) & 0xFFFFFFFFFFFFFFF8) = v236;
        v40[v196] = 1;
        v237 = v236;
        goto LABEL_662;
      }

      v85 = v29[v31];
      v86 = v85 - 10;
      if (v85 >= 0xA)
      {
        if (v31 <= 3)
        {
          v87 = v31;
        }

        else
        {
          v87 = 4;
        }

        if (v87 <= 1)
        {
          if (!v87)
          {
            goto LABEL_344;
          }

          v88 = *v29;
        }

        else if (v87 == 2)
        {
          v88 = *v29;
        }

        else if (v87 == 3)
        {
          v88 = *v29 | (v29[2] << 16);
        }

        else
        {
          v88 = *v29;
        }

        if (v31 < 4)
        {
          v88 |= v86 << (8 * v31);
        }

        v85 = v88 + 10;
      }

LABEL_344:
      v512 = v47;
      if (v85 > 4)
      {
        if (v85 <= 6)
        {
          v238 = v31 + 1;
          v239 = v31;
          if (v85 == 5)
          {
            (*(v531 + 16))(v40, v29, v530, v38, v34);
            v240 = 5;
          }

          else
          {
            (*(v531 + 16))(v40, v29, v530, v38, v34);
            v240 = 6;
          }

          goto LABEL_390;
        }

        if (v85 != 7)
        {
          v238 = v31 + 1;
          if (v85 == 8)
          {
            v241 = *v29;
            *v40 = *v29;
            v242 = 8;
          }

          else
          {
            v241 = *v29;
            *v40 = *v29;
            v242 = 9;
          }

          v40[v31] = v242;
          v249 = v31;
          v250 = v241;
          v31 = v249;
          goto LABEL_391;
        }

        v245 = *v29;
        *(v40 + 9) = *(v29 + 9);
        *v40 = v245;
        v40[v31] = 7;
      }

      else
      {
        if (v85 <= 1)
        {
          if (v85)
          {
            v251 = *v29;
            *v40 = *v29;
            v40[v31] = 1;
            v252 = v31;
            v253 = v31 + 1;
            v254 = v251;
            v32 = v253;
            v31 = v252;
          }

          else
          {
            *v40 = *v29;
            v40[v31] = 0;
          }

          goto LABEL_392;
        }

        if (v85 != 2)
        {
          v238 = v31 + 1;
          v239 = v31;
          if (v85 == 3)
          {
            (*(v531 + 16))(v40, v29, v530, v38, v34);
            v240 = 3;
          }

          else
          {
            (*(v531 + 16))(v40, v29, v530, v38, v34);
            v240 = 4;
          }

LABEL_390:
          v31 = v239;
          v40[v239] = v240;
LABEL_391:
          v32 = v238;
          goto LABEL_392;
        }

        v243 = v31 + 1;
        v244 = v31;
        (*(v531 + 16))(v40, v29, v530, v38, v34);
        v32 = v243;
        v31 = v244;
        v40[v244] = 2;
      }

LABEL_392:
      v255 = &v40[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
      v256 = &v535[v31 + 8] & 0xFFFFFFFFFFFFFFF8;
      if (*(v256 + 8) < 0xFFFFFFFFuLL)
      {
        v273 = *v256;
        v274 = *(v256 + 16);
        v275 = *(v256 + 48);
        *(v255 + 32) = *(v256 + 32);
        *(v255 + 48) = v275;
        *v255 = v273;
        *(v255 + 16) = v274;
        v276 = *(v256 + 64);
        v277 = *(v256 + 80);
        v278 = *(v256 + 96);
        *(v255 + 106) = *(v256 + 106);
        *(v255 + 80) = v277;
        *(v255 + 96) = v278;
        *(v255 + 64) = v276;
        v80 = v532;
        v279 = v512;
      }

      else
      {
        v257 = v40;
        *v255 = *v256;
        *(v255 + 8) = *(v256 + 8);
        v258 = *(v256 + 16);
        v259 = *(v256 + 24);
        v260 = *(v256 + 32);
        v261 = *(v256 + 40);
        v262 = *(v256 + 48);
        v263 = *(v256 + 56);
        v264 = *(v256 + 64);
        sub_21DBF8E0C();
        sub_21D2A7DB4(v258, v259, v260, v261, v262, v263, v264);
        *(v255 + 16) = v258;
        *(v255 + 24) = v259;
        *(v255 + 32) = v260;
        *(v255 + 40) = v261;
        *(v255 + 48) = v262;
        *(v255 + 56) = v263;
        *(v255 + 64) = v264;
        *(v255 + 65) = *(v256 + 65);
        *(v255 + 66) = *(v256 + 66);
        *(v255 + 67) = *(v256 + 67);
        *(v255 + 68) = *(v256 + 68);
        v265 = *(v256 + 120);
        if (v265 == 255)
        {
          v280 = *(v256 + 72);
          v281 = *(v256 + 88);
          v282 = *(v256 + 104);
          *(v255 + 120) = *(v256 + 120);
          *(v255 + 104) = v282;
          *(v255 + 88) = v281;
          *(v255 + 72) = v280;
        }

        else
        {
          v266 = *(v256 + 72);
          v267 = *(v256 + 80);
          v268 = *(v256 + 88);
          v269 = *(v256 + 96);
          v270 = *(v256 + 104);
          v271 = *(v256 + 112);
          v272 = v265 & 1;
          sub_21D0FB960(v266, v267, v268, v269, v270, v271, v265 & 1);
          *(v255 + 72) = v266;
          *(v255 + 80) = v267;
          *(v255 + 88) = v268;
          *(v255 + 96) = v269;
          *(v255 + 104) = v270;
          *(v255 + 112) = v271;
          *(v255 + 120) = v272;
        }

        v279 = v512;
        *(v255 + 121) = *(v256 + 121);
        v40 = v257;
        v80 = v532;
        v64 = v533;
      }

      *(v255 + 122) = *(v256 + 122);
      *(v255 + 123) = *(v256 + 123);
      *(v255 + 124) = *(v256 + 124);
      *(v255 + 125) = *(v256 + 125);
      *(v255 + 126) = *(v256 + 126);
      v283 = *((v256 + 134) & 0xFFFFFFFFFFFFFFF8);
      *((v255 + 134) & 0xFFFFFFFFFFFFFFF8) = v283;
      v40[v279] = 0;
      v284 = v283;
      goto LABEL_662;
    }

    if (v56 != 2)
    {
      v71 = v31 + 1;
      v72 = v47;
      v73 = *v29;
      *v40 = *v29;
      v74 = v40;
      v75 = (&v40[v35] & v34);
      v76 = (&v29[v35] & v34);
      v77 = v31;
      v78 = *(v76 + v31);
      v79 = v73;
      if (v78 <= 9)
      {
        v80 = v532;
        if (v78 > 4)
        {
          if (v78 <= 6)
          {
            (*(v531 + 16))(v75, v76, v530);
            if (v78 == 5)
            {
              v82 = 5;
            }

            else
            {
              v82 = 6;
            }

            goto LABEL_438;
          }

          v81 = v77;
          if (v78 == 7)
          {
            v285 = v72;
            v286 = *v76;
            *(v75 + 9) = *(v76 + 9);
            *v75 = v286;
            *(v75 + v77) = 7;
            v287 = 3;
LABEL_661:
            v40 = v74;
            v74[v285] = v287;
            goto LABEL_662;
          }

          v175 = *v76;
          *v75 = *v76;
          if (v78 == 8)
          {
            v176 = 8;
          }

          else
          {
            v176 = 9;
          }
        }

        else
        {
          v81 = v77;
          if (v78 > 1)
          {
            if (v78 != 2)
            {
              (*(v531 + 16))(v75, v76, v530);
              if (v78 == 3)
              {
                v82 = 3;
              }

              else
              {
                v82 = 4;
              }

LABEL_438:
              *(v75 + v77) = v82;
              goto LABEL_439;
            }

            (*(v531 + 16))(v75, v76, v530);
            *(v75 + v77) = 2;
LABEL_439:
            v285 = v72;
            v287 = 3;
            goto LABEL_661;
          }

          if (!v78)
          {
            *v75 = *v76;
            *(v75 + v77) = 0;
            goto LABEL_439;
          }

          v175 = *v76;
          *v75 = *v76;
          v176 = 1;
        }

        *(v75 + v81) = v176;
        v294 = v175;
        goto LABEL_439;
      }

      memcpy(v75, v76, v71);
      v80 = v532;
      goto LABEL_439;
    }

    v89 = v31 + 1;
    v90 = v47;
    v91 = *v29;
    *v40 = *v29;
    v74 = v40;
    v92 = (&v40[v35] & v34);
    v93 = (&v29[v35] & v34);
    v94 = v31;
    v95 = *(v93 + v31);
    v96 = v91;
    if (v95 <= 9)
    {
      v80 = v532;
      if (v95 > 4)
      {
        if (v95 <= 6)
        {
          (*(v531 + 16))(v92, v93, v530);
          if (v95 == 5)
          {
            v98 = 5;
          }

          else
          {
            v98 = 6;
          }

          goto LABEL_632;
        }

        v97 = v94;
        if (v95 == 7)
        {
          v285 = v90;
          v293 = *v93;
          *(v92 + 9) = *(v93 + 9);
          *v92 = v293;
          *(v92 + v94) = 7;
LABEL_634:
          v287 = 2;
          goto LABEL_661;
        }

        v177 = *v93;
        *v92 = *v93;
        if (v95 == 8)
        {
          v178 = 8;
        }

        else
        {
          v178 = 9;
        }
      }

      else
      {
        v97 = v94;
        if (v95 > 1)
        {
          if (v95 != 2)
          {
            (*(v531 + 16))(v92, v93, v530);
            if (v95 == 3)
            {
              v98 = 3;
            }

            else
            {
              v98 = 4;
            }

LABEL_632:
            *(v92 + v94) = v98;
            goto LABEL_633;
          }

          (*(v531 + 16))(v92, v93, v530);
          *(v92 + v94) = 2;
LABEL_633:
          v285 = v90;
          goto LABEL_634;
        }

        if (!v95)
        {
          *v92 = *v93;
          *(v92 + v94) = 0;
          goto LABEL_633;
        }

        v177 = *v93;
        *v92 = *v93;
        v178 = 1;
      }

      *(v92 + v97) = v178;
      v422 = v177;
      goto LABEL_633;
    }

    memcpy(v92, v93, v89);
    v80 = v532;
    goto LABEL_633;
  }

  if (v51 >= 0xFFFFFFFF)
  {
    if (v40 == v29)
    {
LABEL_699:
      v40[v49] = v535[v49];
      v478 = *(v50 + 8);
      v479 = *(v532 + 8);
      *(v532 + 8) = v478;
      v480 = v50;
      v481 = v478;

      v482 = (v532 + 23) & 0xFFFFFFFFFFFFFFF8;
      v483 = (v480 + 23) & 0xFFFFFFFFFFFFFFF8;
      v484 = *v483;
      v485 = v49;
      v486 = *v482;
      *v482 = *v483;
      v487 = v484;

      *(v482 + 8) = *(v483 + 8);
      v488 = (v532 + 39) & 0xFFFFFFFFFFFFFFF8;
      v489 = (v480 + 39) & 0xFFFFFFFFFFFFFFF8;
      v490 = *v489;
      *(v488 + 8) = *(v489 + 8);
      *v488 = v490;
      v491 = ((v532 + 55) & 0xFFFFFFFFFFFFFFF8);
      v492 = ((v480 + 55) & 0xFFFFFFFFFFFFFFF8);
      *v491 = *v492;
      sub_21DBF8E0C();

      v493 = (v491 + 15) & 0xFFFFFFFFFFFFFFF8;
      v494 = (v492 + 15) & 0xFFFFFFFFFFFFFFF8;
      v495 = *v494;
      v496 = *v493;
      *v493 = *v494;
      v497 = v495;

      *(v493 + 8) = *(v494 + 8);
      v498 = (((((v485 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
      *&v40[v498 + 7] = *&v535[v498 + 7];
      return v533;
    }

    v52 = v40[v47];
    v53 = v52 - 9;
    if (v52 >= 9)
    {
      if (v47 <= 3)
      {
        v54 = v47;
      }

      else
      {
        v54 = 4;
      }

      if (v54 <= 1)
      {
        if (!v54)
        {
          goto LABEL_175;
        }

        v55 = *v40;
      }

      else if (v54 == 2)
      {
        v55 = *v40;
      }

      else if (v54 == 3)
      {
        v55 = *v40 | (v40[2] << 16);
      }

      else
      {
        v55 = *v40;
      }

      if (v47 < 4)
      {
        v55 |= v53 << v48;
      }

      v52 = v55 + 9;
    }

LABEL_175:
    v520 = v37;
    v510 = v23;
    __na = v47 + 1;
    v526 = &v29[v47 + 1] & 0xFFFFFFFFFFFFFFF8;
    v521 = v40;
    v519 = v31 + 1;
    v509 = *(v18 + 84);
    v515 = 8 * v47;
    if (v52 > 3)
    {
      if (v52 > 5)
      {
        v516 = v31;
        if (v52 != 6)
        {
          if (v52 != 7)
          {
            if (v52 != 8)
            {
              goto LABEL_464;
            }

            v127 = v47;
            v128 = ~v22;
            v129 = v34;
            v130 = *(v23 - 8);
            (*(v24 + 8))(&v521[v45] & v44, v23);
            v44 = ~v26;
            v37 = v520;
            v24 = v130;
            v34 = v129;
            v38 = v128;
            v31 = v516;
            goto LABEL_200;
          }

          if (v42 < 0xFD)
          {
            v181 = v40[v30];
            if (v181 < 3)
            {
LABEL_270:
              v500 = v34;
              v182 = v50;
              v183 = v47;
              v184 = v38;
              v185 = v24;
              (*(v531 + 8))(v521, v530);
              v44 = ~v26;
              v37 = v520;
              v24 = v185;
              v34 = v500;
              v38 = v184;
              v31 = v516;
              v47 = v183;
              v50 = v182;
              goto LABEL_464;
            }

            v162 = v181 - 2;
          }

          else
          {
            v157 = v40;
            v158 = v47;
            v159 = ~v22;
            v160 = v34;
            v161 = v24;
            v162 = (*(v531 + 48))(v157);
            v44 = ~v26;
            v37 = v520;
            v24 = v161;
            v34 = v160;
            v38 = v159;
            v31 = v516;
            v47 = v158;
            v50 = v526;
          }

          if (v162)
          {
            goto LABEL_464;
          }

          goto LABEL_270;
        }

        v511 = v47;
        if ((v37 & 0x80000000) != 0)
        {
          v186 = ~v22;
          v501 = v34;
          v187 = *(v23 - 8);
          v153 = (*(v528 + 48))(&v40[v527 + 8] & v38, v37, v529);
          v44 = ~v26;
          v37 = v520;
          v24 = v187;
          v34 = v501;
          v38 = v186;
          v31 = v516;
          v47 = v511;
          v50 = v526;
        }

        else
        {
          v152 = *v40;
          if (*v40 >= 0xFFFFFFFFuLL)
          {
            LODWORD(v152) = -1;
          }

          v153 = v152 + 1;
        }

        if (!v153)
        {
          v188 = v38;
          v502 = v34;
          v189 = v24;
          v190 = v44;

          (*(v528 + 8))(&v40[v527 + 8] & v188, v529);
          v44 = v190;
          v37 = v520;
          v24 = v189;
          v34 = v502;
          v38 = v188;
          v31 = v516;
          v47 = v511;
          v50 = v526;
        }

        v191 = &v40[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (*(v191 + 8) >= 0xFFFFFFFFuLL)
        {
          v503 = v38;
          v136 = v34;
          v192 = v24;
          v193 = v44;

          v44 = v193;
          v37 = v520;
          v24 = v192;
LABEL_284:
          v34 = v136;
          v38 = v503;
          v31 = v516;
          v47 = v511;
          v50 = v526;
        }

LABEL_464:
        v300 = v535[v47];
        v301 = v300 - 9;
        if (v300 < 9)
        {
          v40 = v521;
          v49 = __na;
          goto LABEL_481;
        }

        if (v47 <= 3)
        {
          v302 = v47;
        }

        else
        {
          v302 = 4;
        }

        v40 = v521;
        if (v302 <= 1)
        {
          v49 = __na;
          v303 = v515;
          if (!v302)
          {
            goto LABEL_481;
          }

          v304 = *v535;
        }

        else
        {
          v303 = v515;
          if (v302 == 2)
          {
            v304 = *v535;
          }

          else if (v302 == 3)
          {
            v304 = *v535 | (v535[2] << 16);
          }

          else
          {
            v304 = *v535;
          }

          v49 = __na;
        }

        if (v47 < 4)
        {
          v304 |= v301 << v303;
        }

        v300 = v304 + 9;
LABEL_481:
        if (v300 > 3)
        {
          if (v300 > 5)
          {
            if (v300 == 6)
            {
              if ((v37 & 0x80000000) != 0)
              {
                v352 = v50;
                v353 = v47;
                v354 = v38;
                v337 = (*(v528 + 48))(&v535[v39] & v38, v37, v529);
                v38 = v354;
                v47 = v353;
                v50 = v352;
              }

              else
              {
                v336 = *v535;
                if (*v535 >= 0xFFFFFFFFuLL)
                {
                  LODWORD(v336) = -1;
                }

                v337 = v336 + 1;
              }

              v355 = v47;
              v356 = v50;
              if (v337)
              {
                memcpy(v40, v535, v41);
              }

              else
              {
                *v40 = *v535;
                v357 = &v535[v39];
                v358 = v49;
                v359 = *(v528 + 16);
                v360 = v38;
                sub_21DBF8E0C();
                v359(&v40[v527 + 8] & v360, v357 & v360, v529);
                v49 = v358;
              }

              v361 = &v40[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
              v362 = &v535[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
              if (*(v362 + 8) < 0xFFFFFFFFuLL)
              {
                v365 = *v362;
                *(v361 + 16) = *(v362 + 16);
                *v361 = v365;
              }

              else
              {
                *v361 = *v362;
                *(v361 + 8) = *(v362 + 8);
                v363 = *(v362 + 16);
                *(v361 + 16) = v363;
                sub_21DBF8E0C();
                v364 = v363;
              }

              v50 = v356;
              v40[v355] = 6;
              goto LABEL_699;
            }

            if (v300 != 7)
            {
              if (v300 == 8)
              {
                *v40 = *v535;
                v305 = v47;
                (*(v24 + 16))(&v40[v45] & v44, &v535[v26 + 1] & v44, v510, v38, v34);
                v40[v305] = 8;
LABEL_652:
                v50 = v526;
                goto LABEL_699;
              }

LABEL_533:
              memcpy(v40, v535, v49);
              goto LABEL_652;
            }

            v347 = v47;
            v348 = v50;
            if (v509 < 0xFD)
            {
              v350 = v535[v30];
              if (v350 < 3)
              {
                goto LABEL_541;
              }

              v349 = v350 - 2;
            }

            else
            {
              v349 = (*(v531 + 48))(v535);
            }

            if (v349)
            {
              v351 = v30 + 1;
              memcpy(v40, v535, v30 + 1);
LABEL_542:
              *(&v40[v351 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v535[v351 + 7] & 0xFFFFFFFFFFFFFFF8);
              v40[v347] = 7;
              v50 = v348;
              goto LABEL_699;
            }

LABEL_541:
            (*(v531 + 16))(v40, v535, v530);
            v40[v30] = v535[v30];
            v351 = v30 + 1;
            goto LABEL_542;
          }

          if (v300 != 4)
          {
            *v40 = *v535;
            v40[8] = v535[8];
            v40[9] = v535[9];
            v40[10] = v535[10];
            v321 = *(v535 + 2);
            *(v40 + 2) = v321;
            v40[v47] = 5;
            v322 = v321;
            goto LABEL_652;
          }

          v338 = v47;
          v339 = *v535;
          *v40 = *v535;
          v313 = v40;
          v340 = (&v40[v35] & v34);
          v341 = (&v535[v35] & v34);
          v342 = v31;
          v343 = *(v341 + v31);
          v344 = v339;
          if (v343 <= 9)
          {
            if (v343 > 4)
            {
              v50 = v526;
              if (v343 <= 6)
              {
                (*(v531 + 16))(v340, v341, v530);
                if (v343 == 5)
                {
                  v346 = 5;
                }

                else
                {
                  v346 = 6;
                }

                goto LABEL_695;
              }

              v345 = v342;
              if (v343 == 7)
              {
                v470 = v338;
                v475 = *v341;
                *(v340 + 9) = *(v341 + 9);
                *v340 = v475;
                *(v340 + v342) = 7;
LABEL_697:
                v472 = 4;
                goto LABEL_698;
              }

              v370 = *v341;
              *v340 = *v341;
              if (v343 == 8)
              {
                v371 = 8;
              }

              else
              {
                v371 = 9;
              }
            }

            else
            {
              v345 = v342;
              if (v343 > 1)
              {
                if (v343 != 2)
                {
                  (*(v531 + 16))(v340, v341, v530);
                  if (v343 == 3)
                  {
                    v346 = 3;
                  }

                  else
                  {
                    v346 = 4;
                  }

LABEL_695:
                  *(v340 + v342) = v346;
                  goto LABEL_696;
                }

                (*(v531 + 16))(v340, v341, v530);
                *(v340 + v342) = 2;
LABEL_696:
                v50 = v526;
                v470 = v338;
                goto LABEL_697;
              }

              if (!v343)
              {
                *v340 = *v341;
                *(v340 + v342) = 0;
                goto LABEL_696;
              }

              v370 = *v341;
              *v340 = *v341;
              v371 = 1;
            }

            *(v340 + v345) = v371;
            v477 = v370;
            goto LABEL_696;
          }

          memcpy(v340, v341, v519);
          goto LABEL_696;
        }

        if (v300 <= 1)
        {
          if (v300)
          {
            if (v300 != 1)
            {
              goto LABEL_533;
            }

            v306 = v535[v31];
            v307 = v306 - 10;
            v308 = v519;
            if (v306 >= 0xA)
            {
              if (v31 <= 3)
              {
                v309 = v31;
              }

              else
              {
                v309 = 4;
              }

              if (v309 <= 1)
              {
                if (!v309)
                {
                  goto LABEL_572;
                }

                v310 = *v535;
              }

              else if (v309 == 2)
              {
                v310 = *v535;
              }

              else if (v309 == 3)
              {
                v310 = *v535 | (v535[2] << 16);
              }

              else
              {
                v310 = *v535;
              }

              if (v31 < 4)
              {
                v310 |= v307 << (8 * v31);
              }

              v306 = v310 + 10;
            }

LABEL_572:
            if (v306 > 4)
            {
              if (v306 <= 6)
              {
                v372 = v31;
                v373 = v47;
                if (v306 == 5)
                {
                  (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                  v374 = 5;
                }

                else
                {
                  (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                  v374 = 6;
                }

                goto LABEL_597;
              }

              if (v306 != 7)
              {
                v373 = v47;
                if (v306 == 8)
                {
                  v375 = *v535;
                  *v40 = *v535;
                  v376 = 8;
                }

                else
                {
                  v375 = *v535;
                  *v40 = *v535;
                  v376 = 9;
                }

                v40[v31] = v376;
                v380 = v31;
                v381 = v375;
                v31 = v380;
                goto LABEL_598;
              }

              v379 = *v535;
              *(v40 + 9) = *(v535 + 9);
              *v40 = v379;
              v40[v31] = 7;
            }

            else
            {
              if (v306 <= 1)
              {
                if (v306)
                {
                  v382 = *v535;
                  *v40 = *v535;
                  v40[v31] = 1;
                  v383 = v47;
                  v384 = v31;
                  v385 = v382;
                  v308 = v519;
                  v31 = v384;
                  v47 = v383;
                }

                else
                {
                  *v40 = *v535;
                  v40[v31] = 0;
                }

                goto LABEL_599;
              }

              if (v306 != 2)
              {
                v372 = v31;
                v373 = v47;
                if (v306 == 3)
                {
                  (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                  v374 = 3;
                }

                else
                {
                  (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                  v374 = 4;
                }

LABEL_597:
                v31 = v372;
                v40[v372] = v374;
LABEL_598:
                v47 = v373;
                v308 = v519;
                goto LABEL_599;
              }

              v377 = v47;
              v378 = v31;
              (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
              v308 = v519;
              v31 = v378;
              v47 = v377;
              v40[v378] = 2;
            }

LABEL_599:
            v386 = &v40[v308 + 7] & 0xFFFFFFFFFFFFFFF8;
            v387 = &v535[v31 + 8] & 0xFFFFFFFFFFFFFFF8;
            if (*(v387 + 8) < 0xFFFFFFFFuLL)
            {
              v404 = *v387;
              v405 = *(v387 + 16);
              v406 = *(v387 + 48);
              *(v386 + 32) = *(v387 + 32);
              *(v386 + 48) = v406;
              *v386 = v404;
              *(v386 + 16) = v405;
              v407 = *(v387 + 64);
              v408 = *(v387 + 80);
              v409 = *(v387 + 96);
              *(v386 + 106) = *(v387 + 106);
              *(v386 + 80) = v408;
              *(v386 + 96) = v409;
              *(v386 + 64) = v407;
            }

            else
            {
              v388 = v47;
              *v386 = *v387;
              *(v386 + 8) = *(v387 + 8);
              v389 = *(v387 + 16);
              v390 = *(v387 + 24);
              v391 = *(v387 + 32);
              v392 = *(v387 + 40);
              v393 = *(v387 + 48);
              v394 = *(v387 + 56);
              v395 = *(v387 + 64);
              sub_21DBF8E0C();
              sub_21D2A7DB4(v389, v390, v391, v392, v393, v394, v395);
              *(v386 + 16) = v389;
              *(v386 + 24) = v390;
              *(v386 + 32) = v391;
              *(v386 + 40) = v392;
              *(v386 + 48) = v393;
              *(v386 + 56) = v394;
              *(v386 + 64) = v395;
              *(v386 + 65) = *(v387 + 65);
              *(v386 + 66) = *(v387 + 66);
              *(v386 + 67) = *(v387 + 67);
              *(v386 + 68) = *(v387 + 68);
              v396 = *(v387 + 120);
              if (v396 == 255)
              {
                v410 = *(v387 + 72);
                v411 = *(v387 + 88);
                v412 = *(v387 + 104);
                *(v386 + 120) = *(v387 + 120);
                *(v386 + 104) = v412;
                *(v386 + 88) = v411;
                *(v386 + 72) = v410;
              }

              else
              {
                v397 = *(v387 + 72);
                v398 = *(v387 + 80);
                v399 = *(v387 + 88);
                v400 = *(v387 + 96);
                v401 = *(v387 + 104);
                v402 = *(v387 + 112);
                v403 = v396 & 1;
                sub_21D0FB960(v397, v398, v399, v400, v401, v402, v396 & 1);
                *(v386 + 72) = v397;
                *(v386 + 80) = v398;
                *(v386 + 88) = v399;
                *(v386 + 96) = v400;
                *(v386 + 104) = v401;
                *(v386 + 112) = v402;
                *(v386 + 120) = v403;
              }

              v47 = v388;
              *(v386 + 121) = *(v387 + 121);
              v40 = v521;
              v49 = __na;
            }

            *(v386 + 122) = *(v387 + 122);
            *(v386 + 123) = *(v387 + 123);
            *(v386 + 124) = *(v387 + 124);
            *(v386 + 125) = *(v387 + 125);
            *(v386 + 126) = *(v387 + 126);
            v413 = *((v387 + 134) & 0xFFFFFFFFFFFFFFF8);
            *((v386 + 134) & 0xFFFFFFFFFFFFFFF8) = v413;
            v40[v47] = 1;
LABEL_651:
            v452 = v413;
            goto LABEL_652;
          }

          v323 = v535[v31];
          v324 = v323 - 10;
          if (v323 >= 0xA)
          {
            if (v31 <= 3)
            {
              v325 = v31;
            }

            else
            {
              v325 = 4;
            }

            if (v325 <= 1)
            {
              if (!v325)
              {
                goto LABEL_611;
              }

              v326 = *v535;
            }

            else if (v325 == 2)
            {
              v326 = *v535;
            }

            else if (v325 == 3)
            {
              v326 = *v535 | (v535[2] << 16);
            }

            else
            {
              v326 = *v535;
            }

            if (v31 < 4)
            {
              v326 |= v324 << (8 * v31);
            }

            v323 = v326 + 10;
          }

LABEL_611:
          if (v323 > 4)
          {
            if (v323 <= 6)
            {
              v414 = v31;
              v415 = v47;
              if (v323 == 5)
              {
                (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                v416 = 5;
              }

              else
              {
                (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                v416 = 6;
              }

              goto LABEL_642;
            }

            if (v323 == 7)
            {
              v421 = *v535;
              *(v40 + 9) = *(v535 + 9);
              *v40 = v421;
              v40[v31] = 7;
              goto LABEL_644;
            }

            v415 = v47;
            if (v323 == 8)
            {
              v417 = *v535;
              *v40 = *v535;
              v418 = 8;
            }

            else
            {
              v417 = *v535;
              *v40 = *v535;
              v418 = 9;
            }

            v40[v31] = v418;
          }

          else
          {
            if (v323 > 1)
            {
              if (v323 != 2)
              {
                v414 = v31;
                v415 = v47;
                if (v323 == 3)
                {
                  (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                  v416 = 3;
                }

                else
                {
                  (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
                  v416 = 4;
                }

LABEL_642:
                v31 = v414;
                v40[v414] = v416;
                goto LABEL_643;
              }

              v419 = v47;
              v420 = v31;
              (*(v531 + 16))(v40, v535, v530, v38, v34, v24);
              v31 = v420;
              v47 = v419;
              v40[v420] = 2;
LABEL_644:
              v425 = &v40[v519 + 7] & 0xFFFFFFFFFFFFFFF8;
              v426 = &v535[v31 + 8] & 0xFFFFFFFFFFFFFFF8;
              if (*(v426 + 8) < 0xFFFFFFFFuLL)
              {
                v443 = *v426;
                v444 = *(v426 + 16);
                v445 = *(v426 + 48);
                *(v425 + 32) = *(v426 + 32);
                *(v425 + 48) = v445;
                *v425 = v443;
                *(v425 + 16) = v444;
                v446 = *(v426 + 64);
                v447 = *(v426 + 80);
                v448 = *(v426 + 96);
                *(v425 + 106) = *(v426 + 106);
                *(v425 + 80) = v447;
                *(v425 + 96) = v448;
                *(v425 + 64) = v446;
              }

              else
              {
                v427 = v47;
                *v425 = *v426;
                *(v425 + 8) = *(v426 + 8);
                v428 = *(v426 + 16);
                v429 = *(v426 + 24);
                v430 = *(v426 + 32);
                v431 = *(v426 + 40);
                v432 = *(v426 + 48);
                v433 = *(v426 + 56);
                v434 = *(v426 + 64);
                sub_21DBF8E0C();
                sub_21D2A7DB4(v428, v429, v430, v431, v432, v433, v434);
                *(v425 + 16) = v428;
                *(v425 + 24) = v429;
                *(v425 + 32) = v430;
                *(v425 + 40) = v431;
                *(v425 + 48) = v432;
                *(v425 + 56) = v433;
                *(v425 + 64) = v434;
                *(v425 + 65) = *(v426 + 65);
                *(v425 + 66) = *(v426 + 66);
                *(v425 + 67) = *(v426 + 67);
                *(v425 + 68) = *(v426 + 68);
                v435 = *(v426 + 120);
                if (v435 == 255)
                {
                  v449 = *(v426 + 72);
                  v450 = *(v426 + 88);
                  v451 = *(v426 + 104);
                  *(v425 + 120) = *(v426 + 120);
                  *(v425 + 104) = v451;
                  *(v425 + 88) = v450;
                  *(v425 + 72) = v449;
                }

                else
                {
                  v436 = *(v426 + 72);
                  v437 = *(v426 + 80);
                  v438 = *(v426 + 88);
                  v439 = *(v426 + 96);
                  v440 = *(v426 + 104);
                  v441 = *(v426 + 112);
                  v442 = v435 & 1;
                  sub_21D0FB960(v436, v437, v438, v439, v440, v441, v435 & 1);
                  *(v425 + 72) = v436;
                  *(v425 + 80) = v437;
                  *(v425 + 88) = v438;
                  *(v425 + 96) = v439;
                  *(v425 + 104) = v440;
                  *(v425 + 112) = v441;
                  *(v425 + 120) = v442;
                }

                v47 = v427;
                *(v425 + 121) = *(v426 + 121);
                v40 = v521;
                v49 = __na;
              }

              *(v425 + 122) = *(v426 + 122);
              *(v425 + 123) = *(v426 + 123);
              *(v425 + 124) = *(v426 + 124);
              *(v425 + 125) = *(v426 + 125);
              *(v425 + 126) = *(v426 + 126);
              v413 = *((v426 + 134) & 0xFFFFFFFFFFFFFFF8);
              *((v425 + 134) & 0xFFFFFFFFFFFFFFF8) = v413;
              v40[v47] = 0;
              goto LABEL_651;
            }

            if (!v323)
            {
              *v40 = *v535;
              v40[v31] = 0;
              goto LABEL_644;
            }

            v417 = *v535;
            *v40 = *v535;
            v40[v31] = 1;
            v415 = v47;
          }

          v423 = v31;
          v424 = v417;
          v31 = v423;
LABEL_643:
          v47 = v415;
          goto LABEL_644;
        }

        if (v300 != 2)
        {
          v311 = v47;
          v312 = *v535;
          *v40 = *v535;
          v313 = v40;
          v314 = (&v40[v35] & v34);
          v315 = (&v535[v35] & v34);
          v316 = v31;
          v317 = *(v315 + v31);
          v318 = v312;
          if (v317 <= 9)
          {
            if (v317 > 4)
            {
              v50 = v526;
              if (v317 <= 6)
              {
                (*(v531 + 16))(v314, v315, v530);
                if (v317 == 5)
                {
                  v320 = 5;
                }

                else
                {
                  v320 = 6;
                }

                goto LABEL_678;
              }

              v319 = v316;
              if (v317 == 7)
              {
                v470 = v311;
                v471 = *v315;
                *(v314 + 9) = *(v315 + 9);
                *v314 = v471;
                *(v314 + v316) = 7;
                v472 = 3;
LABEL_698:
                v40 = v313;
                v313[v470] = v472;
                goto LABEL_699;
              }

              v366 = *v315;
              *v314 = *v315;
              if (v317 == 8)
              {
                v367 = 8;
              }

              else
              {
                v367 = 9;
              }
            }

            else
            {
              v319 = v316;
              if (v317 > 1)
              {
                if (v317 != 2)
                {
                  (*(v531 + 16))(v314, v315, v530);
                  if (v317 == 3)
                  {
                    v320 = 3;
                  }

                  else
                  {
                    v320 = 4;
                  }

LABEL_678:
                  *(v314 + v316) = v320;
                  goto LABEL_679;
                }

                (*(v531 + 16))(v314, v315, v530);
                *(v314 + v316) = 2;
LABEL_679:
                v50 = v526;
                v470 = v311;
                v472 = 3;
                goto LABEL_698;
              }

              if (!v317)
              {
                *v314 = *v315;
                *(v314 + v316) = 0;
                goto LABEL_679;
              }

              v366 = *v315;
              *v314 = *v315;
              v367 = 1;
            }

            *(v314 + v319) = v367;
            v474 = v366;
            goto LABEL_679;
          }

          memcpy(v314, v315, v519);
          goto LABEL_679;
        }

        v327 = v47;
        v328 = *v535;
        *v40 = *v535;
        v313 = v40;
        v329 = (&v40[v35] & v34);
        v330 = (&v535[v35] & v34);
        v331 = v31;
        v332 = *(v330 + v31);
        v333 = v328;
        if (v332 <= 9)
        {
          if (v332 > 4)
          {
            v50 = v526;
            if (v332 <= 6)
            {
              (*(v531 + 16))(v329, v330, v530);
              if (v332 == 5)
              {
                v335 = 5;
              }

              else
              {
                v335 = 6;
              }

              goto LABEL_687;
            }

            v334 = v331;
            if (v332 == 7)
            {
              v470 = v327;
              v473 = *v330;
              *(v329 + 9) = *(v330 + 9);
              *v329 = v473;
              *(v329 + v331) = 7;
LABEL_689:
              v472 = 2;
              goto LABEL_698;
            }

            v368 = *v330;
            *v329 = *v330;
            if (v332 == 8)
            {
              v369 = 8;
            }

            else
            {
              v369 = 9;
            }
          }

          else
          {
            v334 = v331;
            if (v332 > 1)
            {
              if (v332 != 2)
              {
                (*(v531 + 16))(v329, v330, v530);
                if (v332 == 3)
                {
                  v335 = 3;
                }

                else
                {
                  v335 = 4;
                }

LABEL_687:
                *(v329 + v331) = v335;
                goto LABEL_688;
              }

              (*(v531 + 16))(v329, v330, v530);
              *(v329 + v331) = 2;
LABEL_688:
              v50 = v526;
              v470 = v327;
              goto LABEL_689;
            }

            if (!v332)
            {
              *v329 = *v330;
              *(v329 + v331) = 0;
              goto LABEL_688;
            }

            v368 = *v330;
            *v329 = *v330;
            v369 = 1;
          }

          *(v329 + v334) = v369;
          v476 = v368;
          goto LABEL_688;
        }

        memcpy(v329, v330, v519);
        goto LABEL_688;
      }

      if (v52 != 4)
      {
        v127 = v47;
        v140 = v31;
        v141 = ~v22;
        v142 = v34;
        v506 = *(v23 - 8);

        v44 = ~v26;
        v24 = v506;
        v37 = v520;
        v34 = v142;
        v38 = v141;
        v31 = v140;
LABEL_200:
        v47 = v127;
        v50 = v526;
        goto LABEL_464;
      }

      v147 = v47;
      v517 = v31;
      v504 = ~v22;
      v148 = v34;
      v507 = *(v23 - 8);
      v149 = ~v26;

      v44 = ~v26;
      v37 = v520;
      v24 = v507;
      v34 = v148;
      v38 = v504;
      v31 = v517;
      v47 = v147;
      v50 = v526;
      v150 = (&v40[v35] & v148);
      v151 = *(v150 + v517);
      if (v151 > 9)
      {
        goto LABEL_464;
      }

      if (*(v150 + v517) <= 4u)
      {
        if (*(v150 + v517) <= 1u)
        {
          goto LABEL_221;
        }

LABEL_212:
        if (v151 == 2)
        {
          (*(v531 + 8))();
LABEL_441:
          v44 = v149;
          v37 = v520;
          v24 = v507;
          v34 = v148;
          v38 = v504;
          v31 = v517;
          v47 = v147;
          v50 = v526;
          goto LABEL_464;
        }

        goto LABEL_399;
      }

      goto LABEL_260;
    }

    if (v52 <= 1)
    {
      if (v52)
      {
        if (v52 != 1)
        {
          goto LABEL_464;
        }

        v131 = v40[v31];
        v132 = v131 - 10;
        if (v131 < 0xA)
        {
          v134 = v31 + 1;
          goto LABEL_413;
        }

        if (v31 <= 3)
        {
          v133 = v31;
        }

        else
        {
          v133 = 4;
        }

        v134 = v31 + 1;
        if (v133 <= 1)
        {
          if (!v133)
          {
            goto LABEL_413;
          }

          v135 = *v40;
        }

        else if (v133 == 2)
        {
          v135 = *v40;
        }

        else if (v133 == 3)
        {
          v135 = *v40 | (v40[2] << 16);
        }

        else
        {
          v135 = *v40;
        }

        if (v31 < 4)
        {
          v135 |= v132 << (8 * v31);
        }

        v131 = v135 + 10;
LABEL_413:
        v513 = v47;
        v505 = ~v26;
        v508 = *(v23 - 8);
        v288 = v34;
        v289 = v38;
        v290 = v31;
        if (v131 > 4)
        {
          if (v131 <= 6)
          {
LABEL_421:
            (*(v531 + 8))(v40, v530);
            goto LABEL_422;
          }

          if (v131 == 7)
          {
            goto LABEL_423;
          }
        }

        else
        {
          if (v131 > 1)
          {
            goto LABEL_421;
          }

          if (!v131)
          {
            goto LABEL_423;
          }
        }

LABEL_422:
        v134 = v519;
LABEL_423:
        v291 = &v40[v134 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (*(v291 + 8) >= 0xFFFFFFFFuLL)
        {

          sub_21D179EF0(*(v291 + 16), *(v291 + 24), *(v291 + 32), *(v291 + 40), *(v291 + 48), *(v291 + 56), *(v291 + 64));
          v292 = *(v291 + 120);
          if (v292 != 255)
          {
            sub_21D1078C0(*(v291 + 72), *(v291 + 80), *(v291 + 88), *(v291 + 96), *(v291 + 104), *(v291 + 112), v292 & 1);
          }
        }

        v50 = v526;
        v47 = v513;
        v31 = v290;
        v38 = v289;
        v34 = v288;
LABEL_463:
        v44 = v505;
        v24 = v508;
        v37 = v520;
        goto LABEL_464;
      }

      v143 = v40[v31];
      v144 = v143 - 10;
      if (v143 >= 0xA)
      {
        if (v31 <= 3)
        {
          v145 = v31;
        }

        else
        {
          v145 = 4;
        }

        if (v145 <= 1)
        {
          if (!v145)
          {
            goto LABEL_449;
          }

          v146 = *v40;
        }

        else if (v145 == 2)
        {
          v146 = *v40;
        }

        else if (v145 == 3)
        {
          v146 = *v40 | (v40[2] << 16);
        }

        else
        {
          v146 = *v40;
        }

        if (v31 < 4)
        {
          v146 |= v144 << (8 * v31);
        }

        v143 = v146 + 10;
      }

LABEL_449:
      v514 = v47;
      v518 = v31;
      v505 = ~v26;
      v508 = *(v23 - 8);
      v296 = v34;
      v297 = ~v22;
      if (v143 > 4)
      {
        if (v143 <= 6)
        {
LABEL_457:
          (*(v531 + 8))(v40, v530);
          goto LABEL_458;
        }

        if (v143 == 7)
        {
          goto LABEL_459;
        }
      }

      else
      {
        if (v143 > 1)
        {
          goto LABEL_457;
        }

        if (!v143)
        {
          goto LABEL_459;
        }
      }

LABEL_458:
      v32 = v519;
LABEL_459:
      v298 = &v40[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
      if (*(v298 + 8) >= 0xFFFFFFFFuLL)
      {

        sub_21D179EF0(*(v298 + 16), *(v298 + 24), *(v298 + 32), *(v298 + 40), *(v298 + 48), *(v298 + 56), *(v298 + 64));
        v299 = *(v298 + 120);
        if (v299 != 255)
        {
          sub_21D1078C0(*(v298 + 72), *(v298 + 80), *(v298 + 88), *(v298 + 96), *(v298 + 104), *(v298 + 112), v299 & 1);
        }
      }

      v50 = v526;
      v47 = v514;
      v31 = v518;
      v38 = v297;
      v34 = v296;
      goto LABEL_463;
    }

    if (v52 == 2)
    {
      v147 = v47;
      v517 = v31;
      v504 = ~v22;
      v148 = v34;
      v507 = *(v23 - 8);
      v149 = ~v26;

      v44 = ~v26;
      v37 = v520;
      v24 = v507;
      v34 = v148;
      v38 = v504;
      v31 = v517;
      v47 = v147;
      v50 = v526;
      v150 = (&v40[v35] & v148);
      v151 = *(v150 + v517);
      if (v151 > 9)
      {
        goto LABEL_464;
      }

      if (*(v150 + v517) <= 4u)
      {
        if (*(v150 + v517) <= 1u)
        {
LABEL_221:
          if (!v151)
          {
            goto LABEL_464;
          }

          goto LABEL_441;
        }

        goto LABEL_212;
      }

LABEL_260:
      if (v151 > 6)
      {
        if (v151 == 7)
        {
          goto LABEL_464;
        }

        goto LABEL_400;
      }

LABEL_399:
      (*(v531 + 8))();
LABEL_400:
      v50 = v526;
      v47 = v147;
      v31 = v517;
      v38 = v504;
      v34 = v148;
      v24 = v507;
      v37 = v520;
      v44 = v149;
      goto LABEL_464;
    }

    v511 = v47;
    v516 = v31;
    v503 = ~v22;
    v136 = v34;
    v137 = *(v23 - 8);

    v44 = ~v26;
    v37 = v520;
    v24 = v137;
    v34 = v136;
    v38 = v503;
    v31 = v516;
    v47 = v511;
    v50 = v526;
    v138 = (&v40[v35] & v136);
    v139 = *(v138 + v516);
    if (v139 > 9)
    {
      goto LABEL_464;
    }

    if (*(v138 + v516) <= 4u)
    {
      if (*(v138 + v516) <= 1u)
      {
        if (!*(v138 + v516))
        {
          goto LABEL_464;
        }
      }

      else
      {
        if (v139 != 2)
        {
          goto LABEL_433;
        }

        (*(v531 + 8))();
      }

      v44 = ~v26;
      v37 = v520;
      v24 = v137;
      goto LABEL_284;
    }

    if (*(v138 + v516) > 6u)
    {
      if (v139 == 7)
      {
        goto LABEL_464;
      }

      goto LABEL_434;
    }

LABEL_433:
    (*(v531 + 8))();
LABEL_434:
    v50 = v526;
    v47 = v511;
    v31 = v516;
    v38 = v503;
    v34 = v136;
    v24 = v137;
    v37 = v520;
    v44 = ~v26;
    goto LABEL_464;
  }

  v60 = v47 + 1;
  v61 = v40[v47];
  v62 = v61 - 9;
  if (v61 < 9)
  {
    v64 = v533;
    goto LABEL_120;
  }

  if (v47 <= 3)
  {
    v63 = v47;
  }

  else
  {
    v63 = 4;
  }

  v64 = v533;
  if (v63 <= 1)
  {
    if (!v63)
    {
      goto LABEL_120;
    }

    v65 = *v40;
  }

  else if (v63 == 2)
  {
    v65 = *v40;
  }

  else if (v63 == 3)
  {
    v65 = *v40 | (v40[2] << 16);
  }

  else
  {
    v65 = *v40;
  }

  if (v47 < 4)
  {
    v65 |= v62 << v48;
  }

  v61 = v65 + 9;
LABEL_120:
  if (v61 <= 3)
  {
    if (v61 > 1)
    {
      goto LABEL_140;
    }

    if (v61)
    {
      if (v61 != 1)
      {
        goto LABEL_378;
      }

      v111 = v40[v31];
      v112 = v111 - 10;
      if (v111 >= 0xA)
      {
        if (v31 <= 3)
        {
          v113 = v31;
        }

        else
        {
          v113 = 4;
        }

        if (v113 <= 1)
        {
          if (!v113)
          {
            goto LABEL_313;
          }

          v114 = *v40;
        }

        else if (v113 == 2)
        {
          v114 = *v40;
        }

        else if (v113 == 3)
        {
          v114 = *v40 | (v40[2] << 16);
        }

        else
        {
          v114 = *v40;
        }

        if (v31 < 4)
        {
          v114 |= v112 << (8 * v31);
        }

        v111 = v114 + 10;
      }

LABEL_313:
      if (v111 <= 4)
      {
        if (v111 > 1)
        {
LABEL_315:
          if (v111 != 2)
          {
            v203 = v31 + 1;
LABEL_372:
            (*(v531 + 8))(v40, v530);
            goto LABEL_373;
          }

          v203 = v31 + 1;
          (*(v531 + 8))(v40, v530);
LABEL_373:
          v32 = v203;
LABEL_374:
          v247 = &v40[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (*(v247 + 8) >= 0xFFFFFFFFuLL)
          {

            sub_21D179EF0(*(v247 + 16), *(v247 + 24), *(v247 + 32), *(v247 + 40), *(v247 + 48), *(v247 + 56), *(v247 + 64));
            v248 = *(v247 + 120);
            if (v248 != 255)
            {
              sub_21D1078C0(*(v247 + 72), *(v247 + 80), *(v247 + 88), *(v247 + 96), *(v247 + 104), *(v247 + 112), v248 & 1);
            }
          }

          goto LABEL_378;
        }

        goto LABEL_365;
      }

      goto LABEL_367;
    }

    v111 = v40[v31];
    v119 = v111 - 10;
    if (v111 >= 0xA)
    {
      if (v31 <= 3)
      {
        v120 = v31;
      }

      else
      {
        v120 = 4;
      }

      if (v120 <= 1)
      {
        if (!v120)
        {
          goto LABEL_363;
        }

        v121 = *v40;
      }

      else if (v120 == 2)
      {
        v121 = *v40;
      }

      else if (v120 == 3)
      {
        v121 = *v40 | (v40[2] << 16);
      }

      else
      {
        v121 = *v40;
      }

      if (v31 < 4)
      {
        v121 |= v119 << (8 * v31);
      }

      v111 = v121 + 10;
    }

LABEL_363:
    if (v111 <= 4)
    {
      if (v111 > 1)
      {
        goto LABEL_315;
      }

LABEL_365:
      if (!v111)
      {
        goto LABEL_374;
      }

      v246 = *v40;
      v203 = v31 + 1;
LABEL_370:

      goto LABEL_373;
    }

LABEL_367:
    if (v111 <= 6)
    {
      v203 = v31 + 1;
      goto LABEL_372;
    }

    if (v111 == 7)
    {
      goto LABEL_374;
    }

    v203 = v31 + 1;
    v246 = *v40;
    goto LABEL_370;
  }

  if (v61 <= 5)
  {
    if (v61 != 4)
    {

      goto LABEL_378;
    }

LABEL_140:
    v115 = v31;
    v116 = v34;

    v117 = (&v40[v35] & v116);
    v118 = *(v117 + v115);
    if (v118 > 9)
    {
      goto LABEL_378;
    }

    if (*(v117 + v115) > 4u)
    {
      if (*(v117 + v115) <= 6u)
      {
LABEL_250:
        (*(v531 + 8))(v117, v530);
        goto LABEL_378;
      }

      if (v118 == 7)
      {
        goto LABEL_378;
      }
    }

    else
    {
      if (*(v117 + v115) > 1u)
      {
        goto LABEL_250;
      }

      if (!*(v117 + v115))
      {
        goto LABEL_378;
      }
    }

    goto LABEL_378;
  }

  if (v61 == 6)
  {
    if ((v37 & 0x80000000) != 0)
    {
      v123 = (*(v528 + 48))(&v40[v22 + 8] & v38, v37, v529);
      v38 = ~v22;
    }

    else
    {
      v122 = *v40;
      if (*v40 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v122) = -1;
      }

      v123 = v122 + 1;
    }

    if (!v123)
    {
      v165 = v38;

      (*(v528 + 8))(&v40[v22 + 8] & v165, v529);
    }

    v166 = &v40[v41 + 7] & 0xFFFFFFFFFFFFFFF8;
    if (*(v166 + 8) >= 0xFFFFFFFFuLL)
    {
    }

    goto LABEL_378;
  }

  if (v61 != 7)
  {
    if (v61 == 8)
    {
      (*(v24 + 8))(&v40[v45] & v44, v23);
    }

    goto LABEL_378;
  }

  if (v42 < 0xFD)
  {
    v156 = v40[v30];
    if (v156 < 3)
    {
LABEL_232:
      (*(v18 + 8))(v40, v530);
      goto LABEL_378;
    }

    v126 = v156 - 2;
  }

  else
  {
    v126 = (*(v18 + 48))(v40);
  }

  if (!v126)
  {
    goto LABEL_232;
  }

LABEL_378:

  memcpy(v40, v535, (((((v60 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
  return v64;
}

char *sub_21D351D1C(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v6 + 84) < 0x7FFFFFFFu)
  {
    v10 = *((&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v9 = v8 + 32;
    if (v10 != -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = v8 + 32;
    if ((*(v6 + 48))(a2))
    {
LABEL_3:
      memcpy(a1, a2, v9);
      goto LABEL_8;
    }
  }

  (*(v6 + 32))(a1, a2, v5);
  v11 = (&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
  v12 = v11[1];
  v13 = (&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
  *v13 = *v11;
  v13[1] = v12;
LABEL_8:
  v14 = &a1[v9];
  v166 = a1;
  v167 = &a2[v9];
  v165 = sub_21DBF563C();
  v15 = *(v165 - 8);
  v16 = v15;
  v17 = *(v15 + 80) & 0xF8;
  v164 = sub_21DBF6C1C();
  v18 = *(v164 - 8);
  v19 = v18;
  v20 = *(v18 + 80);
  v21 = sub_21DBF8D7C();
  v22 = v17 | 7;
  v23 = v15;
  v24 = v21;
  v25 = *(v21 - 8);
  v26 = *(v25 + 80);
  v27 = v20 | v26 | v17 | 7;
  v28 = (&v14[v27] & ~v27);
  v29 = (&v167[v27] & ~v27);
  v30 = *(v15 + 64);
  if (v30 <= 0x19)
  {
    v31 = 25;
  }

  else
  {
    v31 = v30;
  }

  v32 = v31 + 1;
  v33 = (((v31 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v34 = v17 + 15;
  v35 = *(v18 + 84);
  v36 = v20 + 8;
  v37 = *(v18 + 64) + ((v20 + 8) & ~v20);
  v38 = *(v16 + 84);
  if (v31 + 1 + ((v17 + 15) & ~(v17 | 7uLL)) > v33)
  {
    v33 = v31 + 1 + ((v17 + 15) & ~(v17 | 7));
  }

  if (v33 <= ((v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v33 = ((v37 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v39 = (v30 & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v33 > v39)
  {
    v39 = v33;
  }

  v40 = *(*(v21 - 8) + 64) + ((v26 + 1) & ~v26);
  if (v39 > v40)
  {
    v40 = v39;
  }

  if (v40 <= 0x18)
  {
    v41 = 24;
  }

  else
  {
    v41 = v40;
  }

  v42 = v41 + 1;
  v43 = &v29[v41 + 1] & 0xFFFFFFFFFFFFFFF8;
  if (*(v43 + 8) < 0xFFFFFFFFuLL)
  {
    memcpy(v28, v29, (((((v42 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
    return v166;
  }

  v44 = v19;
  v45 = v20;
  v46 = v29[v41];
  v47 = v46 - 9;
  if (v46 >= 9)
  {
    if (v41 <= 3)
    {
      v48 = v41;
    }

    else
    {
      v48 = 4;
    }

    if (v48 <= 1)
    {
      if (!v48)
      {
        goto LABEL_39;
      }

      v49 = *v29;
      if (v41 >= 4)
      {
        goto LABEL_38;
      }
    }

    else if (v48 == 2)
    {
      v49 = *v29;
      if (v41 >= 4)
      {
LABEL_38:
        v46 = v49 + 9;
        goto LABEL_39;
      }
    }

    else if (v48 == 3)
    {
      v49 = *v29 | (v29[2] << 16);
      if (v41 >= 4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v49 = *v29;
      if (v41 >= 4)
      {
        goto LABEL_38;
      }
    }

    v49 |= v47 << (8 * v41);
    goto LABEL_38;
  }

LABEL_39:
  v51 = ~v22;
  if (v46 <= 3)
  {
    result = v166;
    if (v46 <= 1)
    {
      if (v46)
      {
        if (v46 != 1)
        {
          goto LABEL_95;
        }

        v53 = v29[v31];
        v54 = v53 - 10;
        if (v53 >= 0xA)
        {
          if (v31 <= 3)
          {
            v55 = v31;
          }

          else
          {
            v55 = 4;
          }

          if (v55 <= 1)
          {
            if (!v55)
            {
              goto LABEL_137;
            }

            v56 = *v29;
          }

          else if (v55 == 2)
          {
            v56 = *v29;
          }

          else if (v55 == 3)
          {
            v56 = *v29 | (v29[2] << 16);
          }

          else
          {
            v56 = *v29;
          }

          if (v31 < 4)
          {
            v56 |= v54 << (8 * v31);
          }

          v53 = v56 + 10;
        }

LABEL_137:
        if (v53 > 4)
        {
          if (v53 > 6)
          {
            if (v53 == 7)
            {
              v120 = *v29;
              *(v28 + 9) = *(v29 + 9);
              *v28 = v120;
            }

            else
            {
              *v28 = *v29;
              if (v53 == 8)
              {
                LOBYTE(v53) = 8;
              }

              else
              {
                LOBYTE(v53) = 9;
              }
            }

            goto LABEL_162;
          }

          v112 = v31 + 1;
          v113 = v31;
          v114 = v166;
          v116 = v28;
          if (v53 == 5)
          {
            (*(v23 + 32))(v28, v29, v165);
            v28 = v116;
            LOBYTE(v53) = 5;
          }

          else
          {
            (*(v23 + 32))(v28, v29, v165);
            v28 = v116;
            LOBYTE(v53) = 6;
          }
        }

        else
        {
          if (v53 <= 1)
          {
            if (v53)
            {
              *v28 = *v29;
              LOBYTE(v53) = 1;
            }

            else
            {
              *v28 = *v29;
            }

            goto LABEL_162;
          }

          if (v53 == 2)
          {
            v117 = v28;
            v118 = v31;
            v119 = v31 + 1;
            (*(v23 + 32))(v28, v29, v165);
            v32 = v119;
            v31 = v118;
            v28 = v117;
            result = v166;
            LOBYTE(v53) = 2;
LABEL_162:
            *(v28 + v31) = v53;
            v123 = (v28 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
            v124 = &v29[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
            v125 = *v124;
            v126 = *(v124 + 16);
            v127 = *(v124 + 48);
            *(v123 + 32) = *(v124 + 32);
            *(v123 + 48) = v127;
            *v123 = v125;
            *(v123 + 16) = v126;
            v128 = *(v124 + 64);
            v129 = *(v124 + 80);
            v130 = *(v124 + 96);
            *(v123 + 106) = *(v124 + 106);
            *(v123 + 80) = v129;
            *(v123 + 96) = v130;
            *(v123 + 64) = v128;
            *(v123 + 122) = *(v124 + 122);
            *(v123 + 123) = *(v124 + 123);
            *(v123 + 124) = *(v124 + 124);
            *(v123 + 125) = *(v124 + 125);
            *(v123 + 126) = *(v124 + 126);
            *((v123 + 134) & 0xFFFFFFFFFFFFFFF8) = *((v124 + 134) & 0xFFFFFFFFFFFFFFF8);
            *(v28 + v41) = 1;
            goto LABEL_112;
          }

          v112 = v31 + 1;
          v113 = v31;
          v114 = v166;
          v115 = v28;
          if (v53 == 3)
          {
            (*(v23 + 32))(v28, v29, v165);
            v28 = v115;
            LOBYTE(v53) = 3;
          }

          else
          {
            (*(v23 + 32))(v28, v29, v165);
            v28 = v115;
            LOBYTE(v53) = 4;
          }
        }

        result = v114;
        v31 = v113;
        v32 = v112;
        goto LABEL_162;
      }

      v65 = v29[v31];
      v66 = v65 - 10;
      if (v65 >= 0xA)
      {
        if (v31 <= 3)
        {
          v67 = v31;
        }

        else
        {
          v67 = 4;
        }

        if (v67 <= 1)
        {
          if (!v67)
          {
            goto LABEL_167;
          }

          v68 = *v29;
        }

        else if (v67 == 2)
        {
          v68 = *v29;
        }

        else if (v67 == 3)
        {
          v68 = *v29 | (v29[2] << 16);
        }

        else
        {
          v68 = *v29;
        }

        if (v31 < 4)
        {
          v68 |= v66 << (8 * v31);
        }

        v65 = v68 + 10;
      }

LABEL_167:
      if (v65 > 4)
      {
        if (v65 > 6)
        {
          if (v65 == 7)
          {
            v139 = *v29;
            *(v28 + 9) = *(v29 + 9);
            *v28 = v139;
          }

          else
          {
            *v28 = *v29;
            if (v65 == 8)
            {
              LOBYTE(v65) = 8;
            }

            else
            {
              LOBYTE(v65) = 9;
            }
          }

          goto LABEL_191;
        }

        v131 = v31 + 1;
        v132 = v31;
        v133 = v166;
        v135 = v28;
        if (v65 == 5)
        {
          (*(v23 + 32))(v28, v29, v165);
          v28 = v135;
          LOBYTE(v65) = 5;
        }

        else
        {
          (*(v23 + 32))(v28, v29, v165);
          v28 = v135;
          LOBYTE(v65) = 6;
        }
      }

      else
      {
        if (v65 <= 1)
        {
          if (v65)
          {
            *v28 = *v29;
            LOBYTE(v65) = 1;
          }

          else
          {
            *v28 = *v29;
          }

          goto LABEL_191;
        }

        if (v65 == 2)
        {
          v136 = v28;
          v137 = v31;
          v138 = v31 + 1;
          (*(v23 + 32))(v28, v29, v165);
          v32 = v138;
          v31 = v137;
          v28 = v136;
          result = v166;
          LOBYTE(v65) = 2;
LABEL_191:
          *(v28 + v31) = v65;
          v142 = (v28 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
          v143 = &v29[v32 + 7] & 0xFFFFFFFFFFFFFFF8;
          v144 = *v143;
          v145 = *(v143 + 16);
          v146 = *(v143 + 48);
          *(v142 + 32) = *(v143 + 32);
          *(v142 + 48) = v146;
          *v142 = v144;
          *(v142 + 16) = v145;
          v147 = *(v143 + 64);
          v148 = *(v143 + 80);
          v149 = *(v143 + 96);
          *(v142 + 106) = *(v143 + 106);
          *(v142 + 80) = v148;
          *(v142 + 96) = v149;
          *(v142 + 64) = v147;
          *(v142 + 122) = *(v143 + 122);
          *(v142 + 123) = *(v143 + 123);
          *(v142 + 124) = *(v143 + 124);
          *(v142 + 125) = *(v143 + 125);
          *(v142 + 126) = *(v143 + 126);
          *((v142 + 134) & 0xFFFFFFFFFFFFFFF8) = *((v143 + 134) & 0xFFFFFFFFFFFFFFF8);
          *(v28 + v41) = 0;
          goto LABEL_112;
        }

        v131 = v31 + 1;
        v132 = v31;
        v133 = v166;
        v134 = v28;
        if (v65 == 3)
        {
          (*(v23 + 32))(v28, v29, v165);
          v28 = v134;
          LOBYTE(v65) = 3;
        }

        else
        {
          (*(v23 + 32))(v28, v29, v165);
          v28 = v134;
          LOBYTE(v65) = 4;
        }
      }

      result = v133;
      v31 = v132;
      v32 = v131;
      goto LABEL_191;
    }

    if (v46 != 2)
    {
      v57 = v166;
      *v28 = *v29;
      v58 = ((v28 + v34) & v51);
      v59 = (&v29[v34] & v51);
      v60 = *(v59 + v31);
      if (v60 > 9)
      {
        v62 = v28;
        memcpy(v58, v59, v31 + 1);
      }

      else if (*(v59 + v31) > 4u)
      {
        if (*(v59 + v31) > 6u)
        {
          if (v60 == 7)
          {
            v155 = *v59;
            *(((v28 + v34) & v51) + 9) = *((&v29[v34] & v51) + 9);
            *v58 = v155;
            *(v58 + v31) = 7;
          }

          else
          {
            *v58 = *v59;
            if (v60 == 8)
            {
              *(v58 + v31) = 8;
            }

            else
            {
              *(v58 + v31) = 9;
            }
          }

          goto LABEL_98;
        }

        v121 = v31;
        v62 = v28;
        v122 = (v28 + v34) & v51;
        if (v60 == 5)
        {
          (*(v23 + 32))();
          *(v122 + v121) = 5;
        }

        else
        {
          (*(v23 + 32))();
          *(v122 + v121) = 6;
        }
      }

      else
      {
        if (*(v59 + v31) <= 1u)
        {
          if (*(v59 + v31))
          {
            *v58 = *v59;
            *(v58 + v31) = 1;
          }

          else
          {
            *v58 = *v59;
            *(v58 + v31) = 0;
          }

          goto LABEL_98;
        }

        if (v60 == 2)
        {
          v152 = (v28 + v34) & v51;
          v153 = v28;
          v154 = v31;
          (*(v23 + 32))();
          v28 = v153;
          *(v152 + v154) = 2;
          goto LABEL_98;
        }

        v61 = v31;
        v62 = v28;
        v63 = (v28 + v34) & v51;
        if (v60 == 3)
        {
          (*(v23 + 32))();
          *(v63 + v61) = 3;
        }

        else
        {
          (*(v23 + 32))();
          *(v63 + v61) = 4;
        }
      }

      v28 = v62;
LABEL_98:
      v92 = 3;
LABEL_110:
      *(v28 + v41) = v92;
      goto LABEL_111;
    }

    v57 = v166;
    *v28 = *v29;
    v69 = ((v28 + v34) & v51);
    v70 = (&v29[v34] & v51);
    v71 = *(v70 + v31);
    if (v71 > 9)
    {
      v73 = v28;
      memcpy(v69, v70, v31 + 1);
    }

    else if (*(v70 + v31) > 4u)
    {
      if (*(v70 + v31) > 6u)
      {
        if (v71 == 7)
        {
          v159 = *v70;
          *(((v28 + v34) & v51) + 9) = *((&v29[v34] & v51) + 9);
          *v69 = v159;
          *(v69 + v31) = 7;
        }

        else
        {
          *v69 = *v70;
          if (v71 == 8)
          {
            *(v69 + v31) = 8;
          }

          else
          {
            *(v69 + v31) = 9;
          }
        }

        goto LABEL_101;
      }

      v140 = v31;
      v73 = v28;
      v141 = (v28 + v34) & v51;
      if (v71 == 5)
      {
        (*(v23 + 32))();
        *(v141 + v140) = 5;
      }

      else
      {
        (*(v23 + 32))();
        *(v141 + v140) = 6;
      }
    }

    else
    {
      if (*(v70 + v31) <= 1u)
      {
        if (*(v70 + v31))
        {
          *v69 = *v70;
          *(v69 + v31) = 1;
        }

        else
        {
          *v69 = *v70;
          *(v69 + v31) = 0;
        }

        goto LABEL_101;
      }

      if (v71 == 2)
      {
        v156 = (v28 + v34) & v51;
        v157 = v28;
        v158 = v31;
        (*(v23 + 32))();
        v28 = v157;
        *(v156 + v158) = 2;
        goto LABEL_101;
      }

      v72 = v31;
      v73 = v28;
      v74 = (v28 + v34) & v51;
      if (v71 == 3)
      {
        (*(v23 + 32))();
        *(v74 + v72) = 3;
      }

      else
      {
        (*(v23 + 32))();
        *(v74 + v72) = 4;
      }
    }

    v28 = v73;
LABEL_101:
    v92 = 2;
    goto LABEL_110;
  }

  if (v46 <= 5)
  {
    if (v46 != 4)
    {
      result = v166;
      v64 = *v29;
      *(v28 + 2) = *(v29 + 2);
      *v28 = v64;
      *(v28 + v41) = 5;
      goto LABEL_112;
    }

    *v28 = *v29;
    v78 = ((v28 + v34) & v51);
    v79 = (&v29[v34] & v51);
    v80 = *(v79 + v31);
    v57 = v166;
    if (v80 > 9)
    {
      v82 = v28;
      memcpy(v78, v79, v31 + 1);
    }

    else if (*(v79 + v31) > 4u)
    {
      if (*(v79 + v31) > 6u)
      {
        if (v80 == 7)
        {
          v163 = *v79;
          *(((v28 + v34) & v51) + 9) = *((&v29[v34] & v51) + 9);
          *v78 = v163;
          *(v78 + v31) = 7;
        }

        else
        {
          *v78 = *v79;
          if (v80 == 8)
          {
            *(v78 + v31) = 8;
          }

          else
          {
            *(v78 + v31) = 9;
          }
        }

        goto LABEL_104;
      }

      v150 = v31;
      v82 = v28;
      v151 = (v28 + v34) & v51;
      if (v80 == 5)
      {
        (*(v23 + 32))();
        *(v151 + v150) = 5;
      }

      else
      {
        (*(v23 + 32))();
        *(v151 + v150) = 6;
      }
    }

    else
    {
      if (*(v79 + v31) <= 1u)
      {
        if (*(v79 + v31))
        {
          *v78 = *v79;
          *(v78 + v31) = 1;
        }

        else
        {
          *v78 = *v79;
          *(v78 + v31) = 0;
        }

        goto LABEL_104;
      }

      if (v80 == 2)
      {
        v160 = (v28 + v34) & v51;
        v161 = v28;
        v162 = v31;
        (*(v23 + 32))();
        v28 = v161;
        *(v160 + v162) = 2;
        goto LABEL_104;
      }

      v81 = v31;
      v82 = v28;
      v83 = (v28 + v34) & v51;
      if (v80 == 3)
      {
        (*(v23 + 32))();
        *(v83 + v81) = 3;
      }

      else
      {
        (*(v23 + 32))();
        *(v83 + v81) = 4;
      }
    }

    v28 = v82;
LABEL_104:
    v92 = 4;
    goto LABEL_110;
  }

  if (v46 == 6)
  {
    v75 = ~v20;
    if (v35 < 0)
    {
      v105 = v28;
      v106 = (*(v44 + 48))(&v29[v45 + 8] & v75);
      v28 = v105;
      if (v106)
      {
LABEL_83:
        v77 = v28;
        memcpy(v28, v29, v37);
LABEL_115:
        v109 = (v77 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = &v29[v37 + 7] & 0xFFFFFFFFFFFFFFF8;
        v111 = *v110;
        *(v109 + 16) = *(v110 + 16);
        *v109 = v111;
        *(v77 + v41) = 6;
        result = v166;
        v28 = v77;
        goto LABEL_112;
      }
    }

    else
    {
      v76 = *v29;
      if (*v29 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v76) = -1;
      }

      if (v76 != -1)
      {
        goto LABEL_83;
      }
    }

    *v28 = *v29;
    v107 = (v28 + v36) & v75;
    v108 = &v29[v45 + 8] & v75;
    v77 = v28;
    (*(v44 + 32))(v107, v108, v164);
    goto LABEL_115;
  }

  if (v46 == 7)
  {
    v84 = v30 + 1;
    v57 = v166;
    if (v38 < 0xFD)
    {
      if (v29[v30] >= 3u)
      {
        v85 = &v29[v41 + 1] & 0xFFFFFFFFFFFFFFF8;
        goto LABEL_94;
      }
    }

    else
    {
      v85 = &v29[v41 + 1] & 0xFFFFFFFFFFFFFFF8;
      v86 = v23;
      v87 = v28;
      v88 = (*(v23 + 48))(v29, v38, v165);
      v28 = v87;
      if (v88)
      {
LABEL_94:
        v89 = v30 + 1;
        v90 = v28;
        memcpy(v28, v29, v89);
        v28 = v90;
        v43 = v85;
LABEL_109:
        *((v28 + v84 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&v29[v84 + 7] & 0xFFFFFFFFFFFFFFF8);
        v92 = 7;
        goto LABEL_110;
      }

      v23 = v86;
      v43 = &v29[v41 + 1] & 0xFFFFFFFFFFFFFFF8;
    }

    v93 = v28;
    (*(v23 + 32))(v28, v29, v165);
    v28 = v93;
    *(v93 + v30) = v29[v30];
    goto LABEL_109;
  }

  result = v166;
  if (v46 != 8)
  {
LABEL_95:
    v57 = result;
    v91 = v28;
    memcpy(v28, v29, v41 + 1);
    v28 = v91;
LABEL_111:
    result = v57;
    goto LABEL_112;
  }

  *v28 = *v29;
  v52 = v28;
  (*(v25 + 32))((v28 + v26 + 1) & ~v26, &v29[v26 + 1] & ~v26, v24);
  v28 = v52;
  result = v166;
  *(v52 + v41) = 8;
LABEL_112:
  *(v28 + v42) = v29[v42];
  v94 = (v28 + v42) & 0xFFFFFFFFFFFFFFF8;
  *(v94 + 8) = *(v43 + 8);
  v95 = (v94 + 23) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v95 = *v96;
  *(v95 + 8) = *(v96 + 8);
  v97 = (v94 + 39) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v43 + 39) & 0xFFFFFFFFFFFFFFF8;
  v99 = *v98;
  *(v97 + 8) = *(v98 + 8);
  *v97 = v99;
  v100 = ((v94 + 55) & 0xFFFFFFFFFFFFFFF8);
  v101 = ((v43 + 55) & 0xFFFFFFFFFFFFFFF8);
  *v100 = *v101;
  v102 = (v100 + 15) & 0xFFFFFFFFFFFFFFF8;
  v103 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v102 = *v103;
  *(v102 + 8) = *(v103 + 8);
  v104 = (((((v42 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  *(v28 + v104 + 7) = *&v29[v104 + 7];
  return result;
}

char *sub_21D352EC8(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 < 0x7FFFFFFF)
  {
    v16 = *((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    v17 = *((&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v12 = v17 + 1;
    if (v16 < 0xFFFFFFFF)
    {
LABEL_3:
      if (!v12)
      {
        (*(v6 + 32))(a1, a2, v5);
        v13 = (&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        v14 = v13[1];
        v15 = (&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        *v15 = *v13;
        v15[1] = v14;
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(v6 + 48);
    v11 = v10(a1, v7, v5);
    v12 = v10(a2, v7, v5);
    if (v11)
    {
      goto LABEL_3;
    }
  }

  if (v12)
  {
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_0(&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
LABEL_10:
    memcpy(a1, a2, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 32);
    goto LABEL_12;
  }

  (*(v6 + 40))(a1, a2, v5);
  v18 = (&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
  v19 = (&a2[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
  __swift_destroy_boxed_opaque_existential_0(v18);
  v20 = v19[1];
  *v18 = *v19;
  v18[1] = v20;
LABEL_12:
  v21 = &a1[v9];
  v389 = a1;
  v390 = &a2[v9];
  v383 = sub_21DBF563C();
  v22 = *(v383 - 8);
  v23 = v22;
  v24 = *(v22 + 80) & 0xF8;
  v25 = v24 | 7;
  v382 = sub_21DBF6C1C();
  v26 = *(v382 - 8);
  v27 = *(v26 + 80);
  v28 = sub_21DBF8D7C();
  v29 = *(v28 - 8);
  v30 = v22;
  v31 = *(v29 + 80);
  v32 = v27 | v31 | v24 | 7;
  v33 = (&v21[v32] & ~v32);
  v34 = (&v390[v32] & ~v32);
  v35 = *(v30 + 64);
  if (v35 <= 0x19)
  {
    v36 = 25;
  }

  else
  {
    v36 = *(v30 + 64);
  }

  v37 = v36 + 1;
  v38 = (((v36 & 0xFFFFFFFFFFFFFFF8) + 142) & 0xFFFFFFFFFFFFFFF8) + 8;
  v39 = ~v25;
  v40 = v24 + 15;
  v41 = (v24 + 15) & ~v25;
  v380 = v27;
  v381 = v26;
  v42 = *(v26 + 84);
  v43 = ~v27;
  v44 = v27 + 8;
  v45 = *(v26 + 64) + ((v27 + 8) & ~v27);
  v384 = v23;
  v46 = *(v23 + 84);
  v47 = v36 + 1 + v41;
  if (v47 > v38)
  {
    v38 = v47;
  }

  if (v38 <= ((v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 24)
  {
    v38 = ((v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (v38 <= (v35 & 0xFFFFFFFFFFFFFFF8) + 16)
  {
    v38 = (v35 & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  v48 = ~v31;
  v49 = v31 + 1;
  v50 = *(*(v28 - 8) + 64) + ((v31 + 1) & ~v31);
  if (v38 > v50)
  {
    v50 = v38;
  }

  if (v50 <= 0x18)
  {
    v51 = 24;
  }

  else
  {
    v51 = v50;
  }

  v52 = 8 * v51;
  v53 = v51 + 1;
  v391 = v34;
  v54 = *((&v34[v51 + 1] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (*((&v33[v51 + 1] & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
    v385 = &v33[v51 + 1] & 0xFFFFFFFFFFFFFFF8;
    v387 = v51 + 1;
    if (v54 >= 0xFFFFFFFF)
    {
      v378 = &v34[v51 + 1] & 0xFFFFFFFFFFFFFFF8;
      if (v33 == v34)
      {
LABEL_29:
        v33[v387] = v391[v387];
        v55 = *(v385 + 8);
        *(v385 + 8) = *(v378 + 8);
        v56 = v33;

        v57 = (v385 + 23) & 0xFFFFFFFFFFFFFFF8;
        v58 = (v378 + 23) & 0xFFFFFFFFFFFFFFF8;
        v59 = *v57;
        *v57 = *v58;

        *(v57 + 8) = *(v58 + 8);
        v60 = (v385 + 39) & 0xFFFFFFFFFFFFFFF8;
        v61 = (v378 + 39) & 0xFFFFFFFFFFFFFFF8;
        v62 = *v61;
        *(v60 + 8) = *(v61 + 8);
        *v60 = v62;
        v63 = ((v385 + 55) & 0xFFFFFFFFFFFFFFF8);
        v64 = ((v378 + 55) & 0xFFFFFFFFFFFFFFF8);
        *v63 = *v64;

        v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF8;
        v66 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
        v67 = *v65;
        *v65 = *v66;

        *(v65 + 8) = *(v66 + 8);
        v68 = (((((v387 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
        v69 = &v56[v68];
        v70 = &v391[v68];
LABEL_625:
        *(v69 + 7) = *(v70 + 7);
        return v389;
      }

      v81 = v33[v51];
      v82 = v81 - 9;
      if (v81 >= 9)
      {
        if (v51 <= 3)
        {
          v83 = v51;
        }

        else
        {
          v83 = 4;
        }

        if (v83 <= 1)
        {
          if (!v83)
          {
            goto LABEL_176;
          }

          v84 = *v33;
        }

        else if (v83 == 2)
        {
          v84 = *v33;
        }

        else if (v83 == 3)
        {
          v84 = *v33 | (v33[2] << 16);
        }

        else
        {
          v84 = *v33;
        }

        if (v51 < 4)
        {
          v84 |= v82 << v52;
        }

        v81 = v84 + 9;
      }

LABEL_176:
      v376 = v42;
      v369 = ~v31;
      v370 = v28;
      __n = v36 + 1;
      v375 = ~v27;
      v368 = *(v23 + 84);
      if (v81 > 3)
      {
        if (v81 > 5)
        {
          if (v81 != 6)
          {
            if (v81 != 7)
            {
              if (v81 != 8)
              {
                goto LABEL_452;
              }

              v144 = v33;
              v145 = v36;
              v146 = v39;
              v365 = *(v28 - 8);
              (*(v29 + 8))(&v33[v49] & v369, v28);
              goto LABEL_259;
            }

            v365 = *(v28 - 8);
            if (v46 < 0xFD)
            {
              v180 = v33[v35];
              if (v180 < 3)
              {
LABEL_258:
                v144 = v33;
                v145 = v36;
                v146 = v39;
                (*(v384 + 8))(v33, v383);
LABEL_259:
                v42 = v376;
                v29 = v365;
                v39 = v146;
                v36 = v145;
LABEL_260:
                v33 = v144;
                goto LABEL_452;
              }

              v172 = v180 - 2;
            }

            else
            {
              v169 = v33;
              v170 = v36;
              v171 = v39;
              v172 = (*(v384 + 48))(v33);
              v42 = v376;
              v29 = v365;
              v39 = v171;
              v36 = v170;
              v33 = v169;
            }

            if (v172)
            {
              goto LABEL_452;
            }

            goto LABEL_258;
          }

          if ((v42 & 0x80000000) != 0)
          {
            v181 = &v33[v27 + 8] & v43;
            v182 = v33;
            v183 = v36;
            v184 = v39;
            v366 = v29;
            v164 = (*(v381 + 48))(v181, v42, v382);
            v42 = v376;
            v29 = v366;
            v39 = v184;
            v36 = v183;
            v33 = v182;
          }

          else
          {
            v163 = *v33;
            if (*v33 >= 0xFFFFFFFFuLL)
            {
              LODWORD(v163) = -1;
            }

            v164 = v163 + 1;
          }

          if (!v164)
          {
            v185 = v33;
            v372 = v36;
            v186 = v39;
            v187 = v29;

            (*(v381 + 8))(&v185[v380 + 8] & v375, v382);
            v42 = v376;
            v29 = v187;
            v39 = v186;
            v36 = v372;
            v33 = v185;
          }

          v188 = &v33[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (*(v188 + 8) >= 0xFFFFFFFFuLL)
          {
            v363 = v33;
            v373 = v36;
            v189 = v39;
            v190 = v29;

            v42 = v376;
            v29 = v190;
            v39 = v189;
            v36 = v373;
            goto LABEL_274;
          }

LABEL_452:
          v254 = v391[v51];
          v255 = v254 - 9;
          if (v254 < 9)
          {
            v257 = __n;
            v258 = v375;
            goto LABEL_468;
          }

          if (v51 <= 3)
          {
            v256 = v51;
          }

          else
          {
            v256 = 4;
          }

          v257 = __n;
          if (v256 <= 1)
          {
            v258 = v375;
            v259 = 8 * v51;
            if (!v256)
            {
              goto LABEL_468;
            }

            v260 = *v391;
          }

          else
          {
            v258 = v375;
            v259 = 8 * v51;
            if (v256 == 2)
            {
              v260 = *v391;
            }

            else if (v256 == 3)
            {
              v260 = *v391 | (v391[2] << 16);
            }

            else
            {
              v260 = *v391;
            }
          }

          if (v51 < 4)
          {
            v260 |= v255 << v259;
          }

          v254 = v260 + 9;
LABEL_468:
          if (v254 > 3)
          {
            if (v254 > 5)
            {
              if (v254 == 6)
              {
                if ((v42 & 0x80000000) != 0)
                {
                  v304 = v33;
                  v286 = (*(v381 + 48))(&v391[v44] & v258, v42, v382, v39, v29);
                  v33 = v304;
                }

                else
                {
                  v285 = *v391;
                  if (*v391 >= 0xFFFFFFFFuLL)
                  {
                    LODWORD(v285) = -1;
                  }

                  v286 = v285 + 1;
                }

                if (v286)
                {
                  v297 = v33;
                  memcpy(v33, v391, v45);
                }

                else
                {
                  *v33 = *v391;
                  v297 = v33;
                  (*(v381 + 32))(&v33[v380 + 8] & v258, &v391[v44] & v258, v382, v39, v29);
                }

                v305 = &v297[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
                v306 = &v391[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
                v307 = *v306;
                *(v305 + 16) = *(v306 + 16);
                *v305 = v307;
                v297[v51] = 6;
                goto LABEL_535;
              }

              if (v254 != 7)
              {
                if (v254 == 8)
                {
                  *v33 = *v391;
                  v261 = v33;
                  (*(v29 + 32))(&v33[v49] & v369, &v391[v31 + 1] & v369, v370, v39);
                  v33 = v261;
                  v261[v51] = 8;
                  goto LABEL_29;
                }

                goto LABEL_520;
              }

              if (v368 < 0xFD)
              {
                v301 = v391[v35];
                v296 = v35 + 1;
                if (v301 < 3)
                {
                  goto LABEL_528;
                }

                v295 = v301 - 2;
              }

              else
              {
                v294 = v33;
                v295 = (*(v384 + 48))(v391);
                v33 = v294;
                v296 = v35 + 1;
              }

              if (v295)
              {
                v302 = v33;
                memcpy(v33, v391, v296);
                v33 = v302;
LABEL_529:
                *(&v33[v296 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&v391[v296 + 7] & 0xFFFFFFFFFFFFFFF8);
                v33[v51] = 7;
                goto LABEL_29;
              }

LABEL_528:
              v303 = v33;
              (*(v384 + 32))(v33, v391, v383);
              v33 = v303;
              v303[v35] = v391[v35];
              goto LABEL_529;
            }

            if (v254 != 4)
            {
              v273 = *v391;
              *(v33 + 2) = *(v391 + 2);
              *v33 = v273;
              v33[v51] = 5;
              goto LABEL_29;
            }

            *v33 = *v391;
            v287 = (&v33[v40] & v39);
            v288 = (&v391[v40] & v39);
            v289 = *(v288 + v36);
            if (v289 > 9)
            {
              v300 = v33;
              memcpy(v287, v288, v257);
              v33 = v300;
            }

            else
            {
              if (*(v288 + v36) > 4u)
              {
                if (*(v288 + v36) > 6u)
                {
                  if (v289 == 7)
                  {
                    v362 = *v288;
                    *((&v33[v40] & v39) + 9) = *((&v391[v40] & v39) + 9);
                    *v287 = v362;
                    *(v287 + v36) = 7;
                  }

                  else
                  {
                    *v287 = *v288;
                    if (v289 == 8)
                    {
                      *(v287 + v36) = 8;
                    }

                    else
                    {
                      *(v287 + v36) = 9;
                    }
                  }

                  goto LABEL_654;
                }

                v290 = v36;
                v291 = v33;
                v292 = &v33[v40] & v39;
                if (v289 == 5)
                {
                  (*(v384 + 32))();
                  v293 = 5;
                }

                else
                {
                  (*(v384 + 32))();
                  v293 = 6;
                }

                goto LABEL_653;
              }

              if (*(v288 + v36) <= 1u)
              {
                if (*(v288 + v36))
                {
                  *v287 = *v288;
                  *(v287 + v36) = 1;
                }

                else
                {
                  *v287 = *v288;
                  *(v287 + v36) = 0;
                }

                goto LABEL_654;
              }

              if (v289 != 2)
              {
                v290 = v36;
                v291 = v33;
                v292 = &v33[v40] & v39;
                if (v289 == 3)
                {
                  (*(v384 + 32))();
                  v293 = 3;
                }

                else
                {
                  (*(v384 + 32))();
                  v293 = 4;
                }

LABEL_653:
                *(v292 + v290) = v293;
                v33 = v291;
                goto LABEL_654;
              }

              v359 = &v33[v40] & v39;
              v360 = v33;
              v361 = v36;
              (*(v384 + 32))();
              v33 = v360;
              *(v359 + v361) = 2;
            }

LABEL_654:
            v33[v51] = 4;
            goto LABEL_29;
          }

          if (v254 <= 1)
          {
            if (v254)
            {
              if (v254 != 1)
              {
LABEL_520:
                v297 = v33;
                memcpy(v33, v391, v387);
LABEL_535:
                v33 = v297;
                goto LABEL_29;
              }

              v262 = v391[v36];
              v263 = v262 - 10;
              if (v262 >= 0xA)
              {
                if (v36 <= 3)
                {
                  v264 = v36;
                }

                else
                {
                  v264 = 4;
                }

                if (v264 <= 1)
                {
                  if (!v264)
                  {
                    goto LABEL_557;
                  }

                  v265 = *v391;
                }

                else if (v264 == 2)
                {
                  v265 = *v391;
                }

                else if (v264 == 3)
                {
                  v265 = *v391 | (v391[2] << 16);
                }

                else
                {
                  v265 = *v391;
                }

                if (v36 < 4)
                {
                  v265 |= v263 << (8 * v36);
                }

                v262 = v265 + 10;
              }

LABEL_557:
              if (v262 > 4)
              {
                if (v262 > 6)
                {
                  if (v262 == 7)
                  {
                    v315 = *v391;
                    *(v33 + 9) = *(v391 + 9);
                    *v33 = v315;
                    LOBYTE(v262) = 7;
                  }

                  else
                  {
                    *v33 = *v391;
                    if (v262 == 8)
                    {
                      LOBYTE(v262) = 8;
                    }

                    else
                    {
                      LOBYTE(v262) = 9;
                    }
                  }

                  goto LABEL_582;
                }

                v308 = v257;
                v309 = v36;
                v311 = v33;
                if (v262 == 5)
                {
                  (*(v384 + 32))(v33, v391, v383, v39, v29);
                  v33 = v311;
                  LOBYTE(v262) = 5;
                }

                else
                {
                  (*(v384 + 32))(v33, v391, v383, v39, v29);
                  v33 = v311;
                  LOBYTE(v262) = 6;
                }
              }

              else
              {
                if (v262 <= 1)
                {
                  if (v262)
                  {
                    *v33 = *v391;
                    LOBYTE(v262) = 1;
                  }

                  else
                  {
                    *v33 = *v391;
                  }

                  goto LABEL_582;
                }

                if (v262 == 2)
                {
                  v312 = v257;
                  v313 = v33;
                  v314 = v36;
                  (*(v384 + 32))(v33, v391, v383, v39, v29);
                  v257 = v312;
                  v36 = v314;
                  v33 = v313;
                  LOBYTE(v262) = 2;
LABEL_582:
                  v33[v36] = v262;
                  v316 = &v33[v257 + 7] & 0xFFFFFFFFFFFFFFF8;
                  v317 = &v391[v36 + 8] & 0xFFFFFFFFFFFFFFF8;
                  v318 = *v317;
                  v319 = *(v317 + 16);
                  v320 = *(v317 + 48);
                  *(v316 + 32) = *(v317 + 32);
                  *(v316 + 48) = v320;
                  *v316 = v318;
                  *(v316 + 16) = v319;
                  v321 = *(v317 + 64);
                  v322 = *(v317 + 80);
                  v323 = *(v317 + 96);
                  *(v316 + 106) = *(v317 + 106);
                  *(v316 + 80) = v322;
                  *(v316 + 96) = v323;
                  *(v316 + 64) = v321;
                  *(v316 + 122) = *(v317 + 122);
                  *(v316 + 123) = *(v317 + 123);
                  *(v316 + 124) = *(v317 + 124);
                  *(v316 + 125) = *(v317 + 125);
                  *(v316 + 126) = *(v317 + 126);
                  *((v316 + 134) & 0xFFFFFFFFFFFFFFF8) = *((v317 + 134) & 0xFFFFFFFFFFFFFFF8);
                  v33[v51] = 1;
                  goto LABEL_29;
                }

                v308 = v257;
                v309 = v36;
                v310 = v33;
                if (v262 == 3)
                {
                  (*(v384 + 32))(v33, v391, v383, v39, v29);
                  v33 = v310;
                  LOBYTE(v262) = 3;
                }

                else
                {
                  (*(v384 + 32))(v33, v391, v383, v39, v29);
                  v33 = v310;
                  LOBYTE(v262) = 4;
                }
              }

              v36 = v309;
              v257 = v308;
              goto LABEL_582;
            }

            v274 = v391[v36];
            v275 = v274 - 10;
            if (v274 >= 0xA)
            {
              if (v36 <= 3)
              {
                v276 = v36;
              }

              else
              {
                v276 = 4;
              }

              if (v276 <= 1)
              {
                if (!v276)
                {
                  goto LABEL_588;
                }

                v277 = *v391;
              }

              else if (v276 == 2)
              {
                v277 = *v391;
              }

              else if (v276 == 3)
              {
                v277 = *v391 | (v391[2] << 16);
              }

              else
              {
                v277 = *v391;
              }

              if (v36 < 4)
              {
                v277 |= v275 << (8 * v36);
              }

              v274 = v277 + 10;
            }

LABEL_588:
            if (v274 > 4)
            {
              if (v274 > 6)
              {
                if (v274 == 7)
                {
                  v331 = *v391;
                  *(v33 + 9) = *(v391 + 9);
                  *v33 = v331;
                  LOBYTE(v274) = 7;
                }

                else
                {
                  *v33 = *v391;
                  if (v274 == 8)
                  {
                    LOBYTE(v274) = 8;
                  }

                  else
                  {
                    LOBYTE(v274) = 9;
                  }
                }

                goto LABEL_616;
              }

              v324 = v257;
              v325 = v36;
              v327 = v33;
              if (v274 == 5)
              {
                (*(v384 + 32))(v33, v391, v383, v39, v29);
                v33 = v327;
                LOBYTE(v274) = 5;
              }

              else
              {
                (*(v384 + 32))(v33, v391, v383, v39, v29);
                v33 = v327;
                LOBYTE(v274) = 6;
              }
            }

            else
            {
              if (v274 <= 1)
              {
                if (v274)
                {
                  *v33 = *v391;
                  LOBYTE(v274) = 1;
                }

                else
                {
                  *v33 = *v391;
                }

                goto LABEL_616;
              }

              if (v274 == 2)
              {
                v328 = v257;
                v329 = v33;
                v330 = v36;
                (*(v384 + 32))(v33, v391, v383, v39, v29);
                v257 = v328;
                v36 = v330;
                v33 = v329;
                LOBYTE(v274) = 2;
LABEL_616:
                v33[v36] = v274;
                v332 = &v33[v257 + 7] & 0xFFFFFFFFFFFFFFF8;
                v333 = &v391[v36 + 8] & 0xFFFFFFFFFFFFFFF8;
                v334 = *v333;
                v335 = *(v333 + 16);
                v336 = *(v333 + 48);
                *(v332 + 32) = *(v333 + 32);
                *(v332 + 48) = v336;
                *v332 = v334;
                *(v332 + 16) = v335;
                v337 = *(v333 + 64);
                v338 = *(v333 + 80);
                v339 = *(v333 + 96);
                *(v332 + 106) = *(v333 + 106);
                *(v332 + 80) = v338;
                *(v332 + 96) = v339;
                *(v332 + 64) = v337;
                *(v332 + 122) = *(v333 + 122);
                *(v332 + 123) = *(v333 + 123);
                *(v332 + 124) = *(v333 + 124);
                *(v332 + 125) = *(v333 + 125);
                *(v332 + 126) = *(v333 + 126);
                *((v332 + 134) & 0xFFFFFFFFFFFFFFF8) = *((v333 + 134) & 0xFFFFFFFFFFFFFFF8);
                v33[v51] = 0;
                goto LABEL_29;
              }

              v324 = v257;
              v325 = v36;
              v326 = v33;
              if (v274 == 3)
              {
                (*(v384 + 32))(v33, v391, v383, v39, v29);
                v33 = v326;
                LOBYTE(v274) = 3;
              }

              else
              {
                (*(v384 + 32))(v33, v391, v383, v39, v29);
                v33 = v326;
                LOBYTE(v274) = 4;
              }
            }

            v36 = v325;
            v257 = v324;
            goto LABEL_616;
          }

          if (v254 != 2)
          {
            *v33 = *v391;
            v266 = (&v33[v40] & v39);
            v267 = (&v391[v40] & v39);
            v268 = *(v267 + v36);
            if (v268 > 9)
            {
              v298 = v33;
              memcpy(v266, v267, v257);
              v33 = v298;
            }

            else
            {
              if (*(v267 + v36) > 4u)
              {
                if (*(v267 + v36) > 6u)
                {
                  if (v268 == 7)
                  {
                    v354 = *v267;
                    *((&v33[v40] & v39) + 9) = *((&v391[v40] & v39) + 9);
                    *v266 = v354;
                    *(v266 + v36) = 7;
                  }

                  else
                  {
                    *v266 = *v267;
                    if (v268 == 8)
                    {
                      *(v266 + v36) = 8;
                    }

                    else
                    {
                      *(v266 + v36) = 9;
                    }
                  }

                  goto LABEL_640;
                }

                v269 = v36;
                v270 = v33;
                v271 = &v33[v40] & v39;
                if (v268 == 5)
                {
                  (*(v384 + 32))();
                  v272 = 5;
                }

                else
                {
                  (*(v384 + 32))();
                  v272 = 6;
                }

                goto LABEL_639;
              }

              if (*(v267 + v36) <= 1u)
              {
                if (*(v267 + v36))
                {
                  *v266 = *v267;
                  *(v266 + v36) = 1;
                }

                else
                {
                  *v266 = *v267;
                  *(v266 + v36) = 0;
                }

                goto LABEL_640;
              }

              if (v268 != 2)
              {
                v269 = v36;
                v270 = v33;
                v271 = &v33[v40] & v39;
                if (v268 == 3)
                {
                  (*(v384 + 32))();
                  v272 = 3;
                }

                else
                {
                  (*(v384 + 32))();
                  v272 = 4;
                }

LABEL_639:
                *(v271 + v269) = v272;
                v33 = v270;
                goto LABEL_640;
              }

              v351 = &v33[v40] & v39;
              v352 = v33;
              v353 = v36;
              (*(v384 + 32))();
              v33 = v352;
              *(v351 + v353) = 2;
            }

LABEL_640:
            v33[v51] = 3;
            goto LABEL_29;
          }

          *v33 = *v391;
          v278 = (&v33[v40] & v39);
          v279 = (&v391[v40] & v39);
          v280 = *(v279 + v36);
          if (v280 > 9)
          {
            v299 = v33;
            memcpy(v278, v279, v257);
            v33 = v299;
          }

          else
          {
            if (*(v279 + v36) > 4u)
            {
              if (*(v279 + v36) > 6u)
              {
                if (v280 == 7)
                {
                  v358 = *v279;
                  *((&v33[v40] & v39) + 9) = *((&v391[v40] & v39) + 9);
                  *v278 = v358;
                  *(v278 + v36) = 7;
                }

                else
                {
                  *v278 = *v279;
                  if (v280 == 8)
                  {
                    *(v278 + v36) = 8;
                  }

                  else
                  {
                    *(v278 + v36) = 9;
                  }
                }

                goto LABEL_648;
              }

              v281 = v36;
              v282 = v33;
              v283 = &v33[v40] & v39;
              if (v280 == 5)
              {
                (*(v384 + 32))();
                v284 = 5;
              }

              else
              {
                (*(v384 + 32))();
                v284 = 6;
              }

              goto LABEL_647;
            }

            if (*(v279 + v36) <= 1u)
            {
              if (*(v279 + v36))
              {
                *v278 = *v279;
                *(v278 + v36) = 1;
              }

              else
              {
                *v278 = *v279;
                *(v278 + v36) = 0;
              }

              goto LABEL_648;
            }

            if (v280 != 2)
            {
              v281 = v36;
              v282 = v33;
              v283 = &v33[v40] & v39;
              if (v280 == 3)
              {
                (*(v384 + 32))();
                v284 = 3;
              }

              else
              {
                (*(v384 + 32))();
                v284 = 4;
              }

LABEL_647:
              *(v283 + v281) = v284;
              v33 = v282;
              goto LABEL_648;
            }

            v355 = &v33[v40] & v39;
            v356 = v33;
            v357 = v36;
            (*(v384 + 32))();
            v33 = v356;
            *(v355 + v357) = 2;
          }

LABEL_648:
          v33[v51] = 2;
          goto LABEL_29;
        }

        if (v81 != 4)
        {
          v363 = v33;
          v152 = v36;
          v153 = v39;
          v154 = *(v28 - 8);

          v42 = v376;
          v29 = v154;
          v39 = v153;
          v36 = v152;
LABEL_274:
          v33 = v363;
          goto LABEL_452;
        }

LABEL_196:
        v144 = v33;
        v371 = v36;
        v155 = v39;
        v156 = *(v28 - 8);

        v42 = v376;
        v29 = v156;
        v39 = v155;
        v36 = v371;
        v33 = v144;
        v157 = (&v144[v40] & v155);
        v158 = *(v157 + v371);
        if (v158 > 9)
        {
          goto LABEL_452;
        }

        if (*(v157 + v371) <= 4u)
        {
          if (*(v157 + v371) <= 1u)
          {
            if (!*(v157 + v371))
            {
              goto LABEL_452;
            }
          }

          else
          {
            if (v158 != 2)
            {
              goto LABEL_277;
            }

            (*(v384 + 8))();
          }

          v42 = v376;
          v29 = v156;
          v39 = v155;
          v36 = v371;
          goto LABEL_260;
        }

        if (*(v157 + v371) > 6u)
        {
          if (v158 == 7)
          {
            goto LABEL_452;
          }

          goto LABEL_278;
        }

LABEL_277:
        (*(v384 + 8))();
LABEL_278:
        v33 = v144;
        v36 = v371;
        v39 = v155;
        v29 = v156;
LABEL_451:
        v42 = v376;
        goto LABEL_452;
      }

      if (v81 > 1)
      {
        goto LABEL_196;
      }

      if (v81)
      {
        if (v81 != 1)
        {
          goto LABEL_452;
        }

        v147 = v33[v36];
        v148 = v147 - 10;
        if (v147 < 0xA)
        {
          v150 = v36 + 1;
          goto LABEL_403;
        }

        if (v36 <= 3)
        {
          v149 = v36;
        }

        else
        {
          v149 = 4;
        }

        v150 = v36 + 1;
        if (v149 <= 1)
        {
          if (!v149)
          {
            goto LABEL_403;
          }

          v151 = *v33;
        }

        else if (v149 == 2)
        {
          v151 = *v33;
        }

        else if (v149 == 3)
        {
          v151 = *v33 | (v33[2] << 16);
        }

        else
        {
          v151 = *v33;
        }

        if (v36 < 4)
        {
          v151 |= v148 << (8 * v36);
        }

        v147 = v151 + 10;
LABEL_403:
        v374 = v36;
        v367 = *(v28 - 8);
        v236 = v39;
        if (v147 > 4)
        {
          if (v147 <= 6)
          {
LABEL_412:
            v237 = v33;
            (*(v384 + 8))(v33, v383);
            goto LABEL_413;
          }

          if (v147 != 7)
          {
            v237 = v33;

LABEL_413:
            v33 = v237;
            v150 = __n;
          }
        }

        else
        {
          if (v147 > 1)
          {
            if (v147 != 2)
            {
              goto LABEL_412;
            }

            v238 = v33;
            (*(v384 + 8))(v33, v383);
LABEL_415:
            v150 = __n;
            v33 = v238;
            goto LABEL_416;
          }

          if (v147)
          {
            v238 = v33;

            goto LABEL_415;
          }
        }

LABEL_416:
        v239 = v33;
        v240 = &v33[v150];
        goto LABEL_447;
      }

      v159 = v33[v36];
      v160 = v159 - 10;
      if (v159 >= 0xA)
      {
        if (v36 <= 3)
        {
          v161 = v36;
        }

        else
        {
          v161 = 4;
        }

        if (v161 <= 1)
        {
          if (!v161)
          {
            goto LABEL_432;
          }

          v162 = *v33;
        }

        else if (v161 == 2)
        {
          v162 = *v33;
        }

        else if (v161 == 3)
        {
          v162 = *v33 | (v33[2] << 16);
        }

        else
        {
          v162 = *v33;
        }

        if (v36 < 4)
        {
          v162 |= v160 << (8 * v36);
        }

        v159 = v162 + 10;
      }

LABEL_432:
      v374 = v36;
      v367 = *(v28 - 8);
      if (v159 > 4)
      {
        v236 = v39;
        if (v159 <= 6)
        {
          v249 = v36 + 1;
          v364 = v33;
          goto LABEL_442;
        }

        if (v159 != 7)
        {
          v249 = v36 + 1;
          v364 = v33;

LABEL_443:
          v33 = v364;
          v37 = v249;
        }
      }

      else
      {
        if (v159 > 1)
        {
          v364 = v33;
          v236 = v39;
          if (v159 != 2)
          {
            v249 = v36 + 1;
LABEL_442:
            (*(v384 + 8))(v33, v383);
            goto LABEL_443;
          }

          v250 = v36 + 1;
          (*(v384 + 8))(v33, v383);
LABEL_445:
          v37 = v250;
          v33 = v364;
          goto LABEL_446;
        }

        v236 = v39;
        if (v159)
        {
          v364 = v33;
          v250 = v36 + 1;

          goto LABEL_445;
        }
      }

LABEL_446:
      v239 = v33;
      v240 = &v33[v37];
LABEL_447:
      v251 = (v240 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (*(v251 + 8) >= 0xFFFFFFFFuLL)
      {
        v252 = (v240 + 7) & 0xFFFFFFFFFFFFFFF8;

        sub_21D179EF0(*(v252 + 16), *(v252 + 24), *(v252 + 32), *(v252 + 40), *(v252 + 48), *(v252 + 56), *(v252 + 64));
        v251 = v252;
        v253 = *(v252 + 120);
        if (v253 != 255)
        {
          sub_21D1078C0(*(v252 + 72), *(v252 + 80), *(v252 + 88), *(v252 + 96), *(v252 + 104), *(v252 + 112), v253 & 1);
          v251 = v252;
        }
      }

      v33 = v239;
      v36 = v374;
      v39 = v236;
      v29 = v367;
      goto LABEL_451;
    }

    v75 = v33[v51];
    v76 = v75 - 9;
    if (v75 >= 9)
    {
      if (v51 <= 3)
      {
        v77 = v51;
      }

      else
      {
        v77 = 4;
      }

      if (v77 <= 1)
      {
        if (!v77)
        {
          goto LABEL_120;
        }

        v78 = *v33;
      }

      else if (v77 == 2)
      {
        v78 = *v33;
      }

      else if (v77 == 3)
      {
        v78 = *v33 | (v33[2] << 16);
      }

      else
      {
        v78 = *v33;
      }

      if (v51 < 4)
      {
        v78 |= v76 << v52;
      }

      v75 = v78 + 9;
    }

LABEL_120:
    if (v75 > 3)
    {
      if (v75 > 5)
      {
        if (v75 == 6)
        {
          if ((v42 & 0x80000000) != 0)
          {
            v174 = v33;
            v136 = (*(v381 + 48))(&v33[v27 + 8] & v43, v42, v382, v39);
            v33 = v174;
          }

          else
          {
            v135 = *v33;
            if (*v33 >= 0xFFFFFFFFuLL)
            {
              LODWORD(v135) = -1;
            }

            v136 = v135 + 1;
          }

          if (!v136)
          {
            v175 = v33;

            (*(v381 + 8))(&v175[v27 + 8] & v43, v382);
            v33 = v175;
          }

          v119 = v33;
          v176 = &v33[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
          if (*(v176 + 8) >= 0xFFFFFFFFuLL)
          {
          }

          goto LABEL_375;
        }

        if (v75 != 7)
        {
          v119 = v33;
          if (v75 == 8)
          {
            (*(v29 + 8))(&v33[v49] & v48, v28);
          }

          goto LABEL_375;
        }

        if (v46 < 0xFD)
        {
          v119 = v33;
          v168 = v33[v35];
          if (v168 < 3)
          {
LABEL_222:
            (*(v23 + 8))(v119, v383);
            goto LABEL_375;
          }

          v139 = v168 - 2;
        }

        else
        {
          v119 = v33;
          v139 = (*(v23 + 48))(v33);
        }

        if (!v139)
        {
          goto LABEL_222;
        }

LABEL_375:

        v79 = (((((v387 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
        v80 = v119;
        goto LABEL_376;
      }

      if (v75 != 4)
      {
        v119 = v33;

        goto LABEL_375;
      }

      goto LABEL_141;
    }

    if (v75 > 1)
    {
      if (v75 != 2)
      {
        v119 = v33;
        v125 = v36;
        v126 = v39;

        v127 = &v119[v40];
        goto LABEL_142;
      }

LABEL_141:
      v128 = v33;
      v125 = v36;
      v126 = v39;

      v119 = v128;
      v127 = &v128[v40];
LABEL_142:
      v129 = (v127 & v126);
      v130 = *((v127 & v126) + v125);
      if (v130 > 9)
      {
        goto LABEL_375;
      }

      if (v130 > 4)
      {
        if (v130 <= 6)
        {
LABEL_241:
          (*(v23 + 8))(v129, v383);
          goto LABEL_375;
        }

        if (v130 == 7)
        {
          goto LABEL_375;
        }
      }

      else
      {
        if (v130 > 1)
        {
          goto LABEL_241;
        }

        if (!v130)
        {
          goto LABEL_375;
        }
      }

      goto LABEL_375;
    }

    if (v75)
    {
      v119 = v33;
      if (v75 != 1)
      {
        goto LABEL_375;
      }

      v120 = v33;
      v121 = v33[v36];
      v122 = v121 - 10;
      if (v121 >= 0xA)
      {
        if (v36 <= 3)
        {
          v123 = v36;
        }

        else
        {
          v123 = 4;
        }

        if (v123 <= 1)
        {
          if (!v123)
          {
            goto LABEL_304;
          }

          v124 = *v33;
        }

        else if (v123 == 2)
        {
          v124 = *v33;
        }

        else if (v123 == 3)
        {
          v124 = *v33 | (v33[2] << 16);
        }

        else
        {
          v124 = *v33;
        }

        if (v36 < 4)
        {
          v124 |= v122 << (8 * v36);
        }

        v121 = v124 + 10;
      }

LABEL_304:
      if (v121 > 4)
      {
        if (v121 <= 6)
        {
          v199 = v36 + 1;
          goto LABEL_314;
        }

        if (v121 != 7)
        {
          v199 = v36 + 1;

LABEL_315:
          v201 = &v119[v199];
          goto LABEL_371;
        }

        goto LABEL_318;
      }

      if (v121 <= 1)
      {
        if (!v121)
        {
LABEL_318:
          v201 = &v120[v37];
          goto LABEL_371;
        }

        v200 = v36 + 1;
      }

      else
      {
        if (v121 != 2)
        {
          v199 = v36 + 1;
LABEL_314:
          (*(v23 + 8))(v33, v383);
          goto LABEL_315;
        }

        v200 = v36 + 1;
        (*(v23 + 8))(v33, v383);
      }

      v37 = v200;
      v120 = v119;
      goto LABEL_318;
    }

    v131 = v33[v36];
    v132 = v131 - 10;
    if (v131 >= 0xA)
    {
      if (v36 <= 3)
      {
        v133 = v36;
      }

      else
      {
        v133 = 4;
      }

      if (v133 <= 1)
      {
        if (!v133)
        {
          goto LABEL_356;
        }

        v134 = *v33;
      }

      else if (v133 == 2)
      {
        v134 = *v33;
      }

      else if (v133 == 3)
      {
        v134 = *v33 | (v33[2] << 16);
      }

      else
      {
        v134 = *v33;
      }

      if (v36 < 4)
      {
        v134 |= v132 << (8 * v36);
      }

      v131 = v134 + 10;
    }

LABEL_356:
    if (v131 > 4)
    {
      if (v131 <= 6)
      {
        v218 = v36 + 1;
        goto LABEL_366;
      }

      if (v131 != 7)
      {
        v218 = v36 + 1;
        v219 = v33;

LABEL_367:
        v33 = v219;
        v37 = v218;
      }
    }

    else
    {
      if (v131 > 1)
      {
        if (v131 != 2)
        {
          v218 = v36 + 1;
LABEL_366:
          v219 = v33;
          (*(v23 + 8))(v33, v383);
          goto LABEL_367;
        }

        v220 = v33;
        v221 = v36 + 1;
        (*(v23 + 8))(v33, v383);
LABEL_369:
        v37 = v221;
        v33 = v220;
        goto LABEL_370;
      }

      if (v131)
      {
        v220 = v33;
        v221 = v36 + 1;

        goto LABEL_369;
      }
    }

LABEL_370:
    v119 = v33;
    v201 = &v33[v37];
LABEL_371:
    v222 = (v201 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*(v222 + 8) >= 0xFFFFFFFFuLL)
    {

      sub_21D179EF0(*(v222 + 16), *(v222 + 24), *(v222 + 32), *(v222 + 40), *(v222 + 48), *(v222 + 56), *(v222 + 64));
      v223 = *(v222 + 120);
      if (v223 != 255)
      {
        sub_21D1078C0(*(v222 + 72), *(v222 + 80), *(v222 + 88), *(v222 + 96), *(v222 + 104), *(v222 + 112), v223 & 1);
      }
    }

    goto LABEL_375;
  }

  if (v54 >= 0xFFFFFFFF)
  {
    v379 = &v34[v51 + 1] & 0xFFFFFFFFFFFFFFF8;
    v386 = &v33[v51 + 1] & 0xFFFFFFFFFFFFFFF8;
    v388 = v51 + 1;
    v71 = v34[v51];
    v72 = v71 - 9;
    if (v71 < 9)
    {
      goto LABEL_66;
    }

    if (v51 <= 3)
    {
      v73 = v51;
    }

    else
    {
      v73 = 4;
    }

    if (v73 <= 1)
    {
      if (!v73)
      {
        goto LABEL_66;
      }

      v74 = *v34;
    }

    else if (v73 == 2)
    {
      v74 = *v34;
    }

    else if (v73 == 3)
    {
      v74 = *v34 | (v34[2] << 16);
    }

    else
    {
      v74 = *v34;
    }

    if (v51 < 4)
    {
      v74 |= v72 << v52;
    }

    v71 = v74 + 9;
LABEL_66:
    if (v71 > 3)
    {
      if (v71 > 5)
      {
        if (v71 == 6)
        {
          if ((v42 & 0x80000000) != 0)
          {
            v173 = v33;
            v111 = (*(v381 + 48))(&v34[v44] & v43, v42, v382, v39);
            v33 = v173;
          }

          else
          {
            v110 = *v34;
            if (*v34 >= 0xFFFFFFFFuLL)
            {
              LODWORD(v110) = -1;
            }

            v111 = v110 + 1;
          }

          if (v111)
          {
            v140 = v33;
            memcpy(v33, v391, v45);
          }

          else
          {
            *v33 = *v391;
            v140 = v33;
            (*(v381 + 32))(&v33[v27 + 8] & v43, &v391[v44] & v43, v382, v39);
          }

          v177 = &v140[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
          v178 = &v391[v45 + 7] & 0xFFFFFFFFFFFFFFF8;
          v179 = *v178;
          *(v177 + 16) = *(v178 + 16);
          *v177 = v179;
          v140[v51] = 6;
          goto LABEL_238;
        }

        if (v71 != 7)
        {
          if (v71 == 8)
          {
            *v33 = *v34;
            v85 = v33;
            (*(v29 + 32))(&v33[v49] & v48, &v34[v31 + 1] & v48, v28, v39);
            v33 = v85;
            v85[v51] = 8;
LABEL_624:
            v33[v388] = v391[v388];
            *(v386 + 8) = *(v379 + 8);
            v340 = (v386 + 23) & 0xFFFFFFFFFFFFFFF8;
            v341 = (v379 + 23) & 0xFFFFFFFFFFFFFFF8;
            *v340 = *v341;
            *(v340 + 8) = *(v341 + 8);
            v342 = (v386 + 39) & 0xFFFFFFFFFFFFFFF8;
            v343 = (v379 + 39) & 0xFFFFFFFFFFFFFFF8;
            v344 = *v343;
            *(v342 + 8) = *(v343 + 8);
            *v342 = v344;
            v345 = ((v386 + 55) & 0xFFFFFFFFFFFFFFF8);
            v346 = ((v379 + 55) & 0xFFFFFFFFFFFFFFF8);
            *v345 = *v346;
            v347 = (v345 + 15) & 0xFFFFFFFFFFFFFFF8;
            v348 = (v346 + 15) & 0xFFFFFFFFFFFFFFF8;
            *v347 = *v348;
            *(v347 + 8) = *(v348 + 8);
            v349 = (((((v388 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
            v69 = &v33[v349];
            v70 = &v391[v349];
            goto LABEL_625;
          }

          goto LABEL_164;
        }

        if (v46 < 0xFD)
        {
          v165 = v34[v35];
          if (v165 < 3)
          {
            goto LABEL_217;
          }

          v138 = v165 - 2;
        }

        else
        {
          v137 = v33;
          v138 = (*(v23 + 48))(v34);
          v33 = v137;
        }

        if (v138)
        {
          v166 = v33;
          memcpy(v33, v391, v35 + 1);
          v33 = v166;
LABEL_218:
          *(&v33[v35 + 8] & 0xFFFFFFFFFFFFFFF8) = *(&v391[v35 + 8] & 0xFFFFFFFFFFFFFFF8);
          v98 = 7;
          goto LABEL_623;
        }

LABEL_217:
        v167 = v33;
        (*(v23 + 32))(v33, v391, v383);
        v33 = v167;
        v167[v35] = v391[v35];
        goto LABEL_218;
      }

      if (v71 != 4)
      {
        v97 = *v34;
        *(v33 + 2) = *(v34 + 2);
        *v33 = v97;
        v98 = 5;
LABEL_623:
        v33[v51] = v98;
        goto LABEL_624;
      }

      *v33 = *v34;
      v112 = (&v33[v40] & v39);
      v113 = (&v34[v40] & v39);
      v114 = *(v113 + v36);
      if (v114 > 9)
      {
        v143 = v33;
        memcpy(v112, v113, v37);
        v33 = v143;
      }

      else
      {
        if (*(v113 + v36) > 4u)
        {
          if (*(v113 + v36) > 6u)
          {
            if (v114 == 7)
            {
              v248 = *v113;
              *((&v33[v40] & v39) + 9) = *((&v34[v40] & v39) + 9);
              *v112 = v248;
              *(v112 + v36) = 7;
            }

            else
            {
              *v112 = *v113;
              if (v114 == 8)
              {
                *(v112 + v36) = 8;
              }

              else
              {
                *(v112 + v36) = 9;
              }
            }

            goto LABEL_622;
          }

          v115 = v36;
          v116 = v33;
          v117 = &v33[v40] & v39;
          if (v114 == 5)
          {
            (*(v23 + 32))();
            v118 = 5;
          }

          else
          {
            (*(v23 + 32))();
            v118 = 6;
          }

          goto LABEL_621;
        }

        if (*(v113 + v36) <= 1u)
        {
          if (*(v113 + v36))
          {
            *v112 = *v113;
            *(v112 + v36) = 1;
          }

          else
          {
            *v112 = *v113;
            *(v112 + v36) = 0;
          }

          goto LABEL_622;
        }

        if (v114 != 2)
        {
          v115 = v36;
          v116 = v33;
          v117 = &v33[v40] & v39;
          if (v114 == 3)
          {
            (*(v23 + 32))();
            v118 = 3;
          }

          else
          {
            (*(v23 + 32))();
            v118 = 4;
          }

LABEL_621:
          *(v117 + v115) = v118;
          v33 = v116;
          goto LABEL_622;
        }

        v245 = &v33[v40] & v39;
        v246 = v33;
        v247 = v36;
        (*(v23 + 32))();
        v33 = v246;
        *(v245 + v247) = 2;
      }

LABEL_622:
      v98 = 4;
      goto LABEL_623;
    }

    if (v71 <= 1)
    {
      if (v71)
      {
        if (v71 != 1)
        {
LABEL_164:
          v140 = v33;
          memcpy(v33, v34, v53);
LABEL_238:
          v33 = v140;
          goto LABEL_624;
        }

        v86 = v34[v36];
        v87 = v86 - 10;
        if (v86 >= 0xA)
        {
          if (v36 <= 3)
          {
            v88 = v36;
          }

          else
          {
            v88 = 4;
          }

          if (v88 <= 1)
          {
            if (!v88)
            {
              goto LABEL_285;
            }

            v89 = *v34;
          }

          else if (v88 == 2)
          {
            v89 = *v34;
          }

          else if (v88 == 3)
          {
            v89 = *v34 | (v34[2] << 16);
          }

          else
          {
            v89 = *v34;
          }

          if (v36 < 4)
          {
            v89 |= v87 << (8 * v36);
          }

          v86 = v89 + 10;
        }

LABEL_285:
        if (v86 > 4)
        {
          if (v86 > 6)
          {
            if (v86 == 7)
            {
              v198 = *v34;
              *(v33 + 9) = *(v34 + 9);
              *v33 = v198;
              LOBYTE(v86) = 7;
            }

            else
            {
              *v33 = *v34;
              if (v86 == 8)
              {
                LOBYTE(v86) = 8;
              }

              else
              {
                LOBYTE(v86) = 9;
              }
            }

            goto LABEL_332;
          }

          v191 = v36 + 1;
          v192 = v36;
          v194 = v33;
          if (v86 == 5)
          {
            (*(v23 + 32))(v33, v34, v383, v39);
            v33 = v194;
            LOBYTE(v86) = 5;
          }

          else
          {
            (*(v23 + 32))(v33, v34, v383, v39);
            v33 = v194;
            LOBYTE(v86) = 6;
          }
        }

        else
        {
          if (v86 <= 1)
          {
            if (v86)
            {
              *v33 = *v34;
              LOBYTE(v86) = 1;
            }

            else
            {
              *v33 = *v34;
            }

            goto LABEL_332;
          }

          if (v86 == 2)
          {
            v195 = v36 + 1;
            v196 = v33;
            v197 = v36;
            (*(v23 + 32))(v33, v34, v383, v39);
            v37 = v195;
            v36 = v197;
            v33 = v196;
            LOBYTE(v86) = 2;
LABEL_332:
            v33[v36] = v86;
            v202 = &v33[v37 + 7] & 0xFFFFFFFFFFFFFFF8;
            v203 = &v391[v36 + 8] & 0xFFFFFFFFFFFFFFF8;
            v204 = *v203;
            v205 = *(v203 + 16);
            v206 = *(v203 + 48);
            *(v202 + 32) = *(v203 + 32);
            *(v202 + 48) = v206;
            *v202 = v204;
            *(v202 + 16) = v205;
            v207 = *(v203 + 64);
            v208 = *(v203 + 80);
            v209 = *(v203 + 96);
            *(v202 + 106) = *(v203 + 106);
            *(v202 + 80) = v208;
            *(v202 + 96) = v209;
            *(v202 + 64) = v207;
            *(v202 + 122) = *(v203 + 122);
            *(v202 + 123) = *(v203 + 123);
            *(v202 + 124) = *(v203 + 124);
            *(v202 + 125) = *(v203 + 125);
            *(v202 + 126) = *(v203 + 126);
            *((v202 + 134) & 0xFFFFFFFFFFFFFFF8) = *((v203 + 134) & 0xFFFFFFFFFFFFFFF8);
            v98 = 1;
            goto LABEL_623;
          }

          v191 = v36 + 1;
          v192 = v36;
          v193 = v33;
          if (v86 == 3)
          {
            (*(v23 + 32))(v33, v34, v383, v39);
            v33 = v193;
            LOBYTE(v86) = 3;
          }

          else
          {
            (*(v23 + 32))(v33, v34, v383, v39);
            v33 = v193;
            LOBYTE(v86) = 4;
          }
        }

        v36 = v192;
        v37 = v191;
        goto LABEL_332;
      }

      v99 = v34[v36];
      v100 = v99 - 10;
      if (v99 >= 0xA)
      {
        if (v36 <= 3)
        {
          v101 = v36;
        }

        else
        {
          v101 = 4;
        }

        if (v101 <= 1)
        {
          if (!v101)
          {
            goto LABEL_337;
          }

          v102 = *v34;
        }

        else if (v101 == 2)
        {
          v102 = *v34;
        }

        else if (v101 == 3)
        {
          v102 = *v34 | (v34[2] << 16);
        }

        else
        {
          v102 = *v34;
        }

        if (v36 < 4)
        {
          v102 |= v100 << (8 * v36);
        }

        v99 = v102 + 10;
      }

LABEL_337:
      if (v99 > 4)
      {
        if (v99 > 6)
        {
          if (v99 == 7)
          {
            v217 = *v34;
            *(v33 + 9) = *(v34 + 9);
            *v33 = v217;
            LOBYTE(v99) = 7;
          }

          else
          {
            *v33 = *v34;
            if (v99 == 8)
            {
              LOBYTE(v99) = 8;
            }

            else
            {
              LOBYTE(v99) = 9;
            }
          }

          goto LABEL_388;
        }

        v210 = v36 + 1;
        v211 = v36;
        v213 = v33;
        if (v99 == 5)
        {
          (*(v23 + 32))(v33, v34, v383, v39);
          v33 = v213;
          LOBYTE(v99) = 5;
        }

        else
        {
          (*(v23 + 32))(v33, v34, v383, v39);
          v33 = v213;
          LOBYTE(v99) = 6;
        }
      }

      else
      {
        if (v99 <= 1)
        {
          if (v99)
          {
            *v33 = *v34;
            LOBYTE(v99) = 1;
          }

          else
          {
            *v33 = *v34;
          }

          goto LABEL_388;
        }

        if (v99 == 2)
        {
          v214 = v36 + 1;
          v215 = v33;
          v216 = v36;
          (*(v23 + 32))(v33, v34, v383, v39);
          v37 = v214;
          v36 = v216;
          v33 = v215;
          LOBYTE(v99) = 2;
LABEL_388:
          v33[v36] = v99;
          v224 = &v33[v37 + 7] & 0xFFFFFFFFFFFFFFF8;
          v225 = &v391[v36 + 8] & 0xFFFFFFFFFFFFFFF8;
          v226 = *v225;
          v227 = *(v225 + 16);
          v228 = *(v225 + 48);
          *(v224 + 32) = *(v225 + 32);
          *(v224 + 48) = v228;
          *v224 = v226;
          *(v224 + 16) = v227;
          v229 = *(v225 + 64);
          v230 = *(v225 + 80);
          v231 = *(v225 + 96);
          *(v224 + 106) = *(v225 + 106);
          *(v224 + 80) = v230;
          *(v224 + 96) = v231;
          *(v224 + 64) = v229;
          *(v224 + 122) = *(v225 + 122);
          *(v224 + 123) = *(v225 + 123);
          *(v224 + 124) = *(v225 + 124);
          *(v224 + 125) = *(v225 + 125);
          *(v224 + 126) = *(v225 + 126);
          *((v224 + 134) & 0xFFFFFFFFFFFFFFF8) = *((v225 + 134) & 0xFFFFFFFFFFFFFFF8);
          v33[v51] = 0;
          goto LABEL_624;
        }

        v210 = v36 + 1;
        v211 = v36;
        v212 = v33;
        if (v99 == 3)
        {
          (*(v23 + 32))(v33, v34, v383, v39);
          v33 = v212;
          LOBYTE(v99) = 3;
        }

        else
        {
          (*(v23 + 32))(v33, v34, v383, v39);
          v33 = v212;
          LOBYTE(v99) = 4;
        }
      }

      v36 = v211;
      v37 = v210;
      goto LABEL_388;
    }

    if (v71 != 2)
    {
      *v33 = *v34;
      v90 = (&v33[v40] & v39);
      v91 = (&v34[v40] & v39);
      v92 = *(v91 + v36);
      if (v92 > 9)
      {
        v141 = v33;
        memcpy(v90, v91, v37);
        v33 = v141;
      }

      else
      {
        if (*(v91 + v36) > 4u)
        {
          if (*(v91 + v36) > 6u)
          {
            if (v92 == 7)
            {
              v235 = *v91;
              *((&v33[v40] & v39) + 9) = *((&v34[v40] & v39) + 9);
              *v90 = v235;
              *(v90 + v36) = 7;
            }

            else
            {
              *v90 = *v91;
              if (v92 == 8)
              {
                *(v90 + v36) = 8;
              }

              else
              {
                *(v90 + v36) = 9;
              }
            }

            goto LABEL_424;
          }

          v93 = v36;
          v94 = v33;
          v95 = &v33[v40] & v39;
          if (v92 == 5)
          {
            (*(v23 + 32))();
            v96 = 5;
          }

          else
          {
            (*(v23 + 32))();
            v96 = 6;
          }

          goto LABEL_423;
        }

        if (*(v91 + v36) <= 1u)
        {
          if (*(v91 + v36))
          {
            *v90 = *v91;
            *(v90 + v36) = 1;
          }

          else
          {
            *v90 = *v91;
            *(v90 + v36) = 0;
          }

          goto LABEL_424;
        }

        if (v92 != 2)
        {
          v93 = v36;
          v94 = v33;
          v95 = &v33[v40] & v39;
          if (v92 == 3)
          {
            (*(v23 + 32))();
            v96 = 3;
          }

          else
          {
            (*(v23 + 32))();
            v96 = 4;
          }

LABEL_423:
          *(v95 + v93) = v96;
          v33 = v94;
          goto LABEL_424;
        }

        v232 = &v33[v40] & v39;
        v233 = v33;
        v234 = v36;
        (*(v23 + 32))();
        v33 = v233;
        *(v232 + v234) = 2;
      }

LABEL_424:
      v98 = 3;
      goto LABEL_623;
    }

    *v33 = *v34;
    v103 = (&v33[v40] & v39);
    v104 = (&v34[v40] & v39);
    v105 = *(v104 + v36);
    if (v105 > 9)
    {
      v142 = v33;
      memcpy(v103, v104, v37);
      v33 = v142;
    }

    else
    {
      if (*(v104 + v36) > 4u)
      {
        if (*(v104 + v36) > 6u)
        {
          if (v105 == 7)
          {
            v244 = *v104;
            *((&v33[v40] & v39) + 9) = *((&v34[v40] & v39) + 9);
            *v103 = v244;
            *(v103 + v36) = 7;
          }

          else
          {
            *v103 = *v104;
            if (v105 == 8)
            {
              *(v103 + v36) = 8;
            }

            else
            {
              *(v103 + v36) = 9;
            }
          }

          goto LABEL_608;
        }

        v106 = v36;
        v107 = v33;
        v108 = &v33[v40] & v39;
        if (v105 == 5)
        {
          (*(v23 + 32))();
          v109 = 5;
        }

        else
        {
          (*(v23 + 32))();
          v109 = 6;
        }

        goto LABEL_607;
      }

      if (*(v104 + v36) <= 1u)
      {
        if (*(v104 + v36))
        {
          *v103 = *v104;
          *(v103 + v36) = 1;
        }

        else
        {
          *v103 = *v104;
          *(v103 + v36) = 0;
        }

        goto LABEL_608;
      }

      if (v105 != 2)
      {
        v106 = v36;
        v107 = v33;
        v108 = &v33[v40] & v39;
        if (v105 == 3)
        {
          (*(v23 + 32))();
          v109 = 3;
        }

        else
        {
          (*(v23 + 32))();
          v109 = 4;
        }

LABEL_607:
        *(v108 + v106) = v109;
        v33 = v107;
        goto LABEL_608;
      }

      v241 = &v33[v40] & v39;
      v242 = v33;
      v243 = v36;
      (*(v23 + 32))();
      v33 = v242;
      *(v241 + v243) = 2;
    }

LABEL_608:
    v98 = 2;
    goto LABEL_623;
  }

  v79 = (((((v53 & 0xFFFFFFFFFFFFFFF8) + 55) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  v80 = v33;
LABEL_376:
  memcpy(v80, v391, v79);
  return v389;
}