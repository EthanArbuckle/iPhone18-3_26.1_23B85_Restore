uint64_t sub_10001AD08(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 56) + 32);
  v3 = *(a1 + 376);
  if ((v2 & 4) != 0)
  {
    v4 = (v3 + 4 * a2 + 2);
    v5 = *(a1 + 400) >> 23;
  }

  else
  {
    v5 = v3 + 8 * a2;
    v4 = (v5 + 4);
    LOWORD(v5) = *(v5 + 6);
  }

  v6 = *v4;
  if (v6 == 0xFFFF)
  {
    LOWORD(v5) = 0;
  }

  else if (v6 == 65534)
  {
    LOWORD(v5) = -2;
  }

  else if ((v2 & 2) == 0)
  {
    LOWORD(v5) = (*(a1 + 407) & 0x7F) + 8;
  }

  return v5;
}

uint64_t sub_10001AD80(uint64_t a1, unsigned int a2, void *a3, _WORD *a4)
{
  if (!a1)
  {
    return 22;
  }

  v5 = *(a1 + 56);
  if (*(v5 + 36) <= a2)
  {
    return 22;
  }

  v8 = *(v5 + 32);
  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  if ((v8 & 4) == 0)
  {
    v10 = (v9 + 8 * a2);
  }

  v11 = *v10;
  if ((v8 & 4) != 0)
  {
    v12 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v12 = *(v9 + 8 * a2 + 2);
  }

  result = sub_10001AE44(a1, *v10, v12);
  if (!result)
  {
    *a3 = *(a1 + 384) + v11;
    result = 0;
    if (a4)
    {
      *a4 = v12;
    }
  }

  return result;
}

uint64_t sub_10001AE44(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(*(a1 + 56) + 44);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (v5 == 0 || !v4)
  {
    return sub_1000048F4(*(*a1 + 392));
  }

  v6 = (a3 + 7) & 0x1FFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v6 = a3;
  }

  if (v6 <= v5)
  {
    return 0;
  }

  else
  {
    return sub_1000048F4(*(*a1 + 392));
  }
}

uint64_t sub_10001AE98(void *a1, unsigned int a2, void *a3, __int16 *a4)
{
  v4 = a1[7];
  if (*(v4 + 36) <= a2)
  {
    return 22;
  }

  v8 = a1[47];
  v9 = v8 + 4 * a2 + 2;
  v10 = v8 + 8 * a2 + 4;
  if ((*(v4 + 32) & 4) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11;
  v13 = sub_10001AD08(a1, a2);
  v14 = v13;
  result = sub_10001AF70(a1, v12, v13);
  if (!result)
  {
    if (v12 >= 0xFFFE)
    {
      *a3 = 0;
      if (!a4)
      {
        return 0;
      }

      if (v12 == 0xFFFF)
      {
        v14 = 0;
      }

      else
      {
        v14 = -2;
      }
    }

    else
    {
      *a3 = a1[49] - v12;
      if (!a4)
      {
        return 0;
      }
    }

    result = 0;
    *a4 = v14;
  }

  return result;
}

uint64_t sub_10001AF70(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 < 0xFFFE)
  {
    if (!a3 || a3 == 65534)
    {
      goto LABEL_16;
    }

    v6 = sub_100048054(a1);
    v7 = *(a1 + 56);
    v8 = (*(v7 + 32) & 1) != 0 ? -96 : -56;
    if (a2 > (v6 - *(v7 + 42) + v8 - (*(v7 + 46) + *(v7 + 44))))
    {
      goto LABEL_16;
    }

    v9 = (a3 + 7) & 0x1FFF8;
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v9 = a3;
    }

    if (v9 > a2)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if ((*(a1 + 400) & 4) != 0 && (!a3 || a3 == 65534))
  {
    return 0;
  }

LABEL_16:
  v10 = *(*a1 + 392);

  return sub_1000048F4(v10);
}

uint64_t sub_10001B084(uint64_t a1, unsigned int a2, void *a3)
{
  if ((*(*(a1 + 56) + 32) & 2) != 0)
  {
    return 22;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v8 = -21846;
  result = sub_10001AE98(a1, a2, &v9, &v8);
  if (result)
  {
    return result;
  }

  if ((*(a1 + 407) & 0x7F) + 8 == v8)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = sub_1000048F4(*(*a1 + 392));
    if (!a3)
    {
      return result;
    }
  }

  if (!result)
  {
    v6 = v9;
    v7 = *v9;
    *a3 = *v9;
    if ((*(*(a1 + 56) + 32) & 8) != 0)
    {
      *a3 = *(a1 + 408) + v7;
      memcpy(a3 + 1, v6 + 1, v8 - 8);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10001B164(uint64_t a1, unsigned int a2, void *a3)
{
  v6 = *(a1 + 400);
  __chkstk_darwin(a1);
  v8 = (&v11 - v7);
  bzero(&v11 - v7, v9);
  result = sub_10001B084(a1, a2, v8);
  if (!result)
  {
    *a3 = *v8;
  }

  return result;
}

uint64_t sub_10001B234(void *a1, uint64_t a2, unint64_t *a3, int a4, void *a5, unsigned int a6, uint64_t a7)
{
  LODWORD(v10) = a4;
  v14 = a1[50];
  __chkstk_darwin(a1);
  v16 = (&v188 - v15);
  bzero(&v188 - v15, v17);
  v221 = 0u;
  v222 = 0u;
  v220 = 0u;
  v218 = 0;
  v219 = 0;
  v217 = 0xAAAAAAAAAAAAAAAALL;
  v216 = 0;
  v212 = -1431655766;
  v211 = -1431655766;
  if (!a1[52])
  {
    return 22;
  }

  v215 = -21846;
  v214 = v10;
  if (a6 == 65534)
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  v213 = v18;
  v19 = sub_10001A12C(a1, v10, a6);
  if (v19)
  {
    v20 = v19;
    v21 = a1[1];
    if (v21)
    {
      v22 = (v21 + 4040);
      if ((v14 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = (v18 + 7) & 0x1FFF8;
      }

      v25 = (v14 >> 27) & 0x1F000;
      v26 = (v14 >> 23);
      v27 = (v14 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    else
    {
      v22 = (*(*(*a1 + 392) + 384) + 212);
      if ((v14 & 0x40) != 0)
      {
        v23 = v10;
      }

      else
      {
        v23 = (v10 + 7) & 0xFFFFFFF8;
      }

      if ((v14 & 0x40) != 0)
      {
        v24 = v18;
      }

      else
      {
        v24 = (v18 + 7) & 0x1FFF8;
      }

      v25 = (v14 >> 27) & 0x1F000;
      v26 = (v14 >> 23);
      v27 = (v14 >> 9) & 0x3FFF;
      if (v27)
      {
        v28 = (v14 >> 9) & 0x3FFF;
      }

      else
      {
        v28 = (((v25 - 160) & 0xFFE0) >> 2) - 72;
      }
    }

    v30 = sub_10001A0B8(v14, v25, v27, v26);
    sub_10003E5FC("%s:%d: %s request to insert entry %d (%d) %d (%d) = (%d), max size is %d key %d, error %d\n", "bt_insert", 3392, v22, v10, v23, v18, v24, v23 + v24, v30, v28, v20);
    return v20;
  }

  v203 = a6;
  sub_10004B8D4(a1, 2);
  v29 = sub_10004B964(a1, (*(a1 + 100) >> 3) & 2, a7);
  if (v29)
  {
    v20 = v29;
    sub_10004BE88(a1, 2);
    return v20;
  }

  *&v220 = a1;
  sub_10004C19C(a1);
  v32 = a1[49];
  v33 = *(v32 + 16);
  v34 = *(v32 + 20) >= v18;
  if (v33 < v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = v33;
  }

  if (v33 < v10)
  {
    v34 = 0;
  }

  v205 = v34;
  v36 = a1[54];
  v202 = a2;
  if (v36)
  {
    v37 = a1[53];
    if (v37)
    {
      v38 = a1[1];
      if (!v38)
      {
        v38 = *(*a1 + 392);
      }

      if (v37(v38, a3, v10))
      {
        v221 = v220;
        *&v220 = 0;
        v39 = a1[54];
        *v16 = v39;
        if (v39 != sub_100047D10(a1) && !sub_10001A958(a1, v16, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 61455, a7, &v220))
        {
          v40 = v35;
          v41 = v220;
          if ((*(*(v220 + 56) + 32) & 2) != 0 && a1[54] == *(v220 + 112))
          {
            v42 = sub_10001CFF8(v220, a3, v10, &v220 + 4, (&v220 | 0xA));
            v41 = v220;
            if (!v42)
            {
              if (WORD4(v220))
              {
                if (BYTE10(v220))
                {
                  v43 = (sub_10001D1CC)(v220);
                }

                else
                {
                  v43 = (sub_10001DB30)(v220);
                }

                if (!v43)
                {
                  v198 = 0;
                  v46 = 0;
                  v20 = 0;
                  v200 = 0;
                  v204 = 0;
                  goto LABEL_362;
                }

                v41 = v220;
              }
            }
          }

          sub_10004BE88(v41, 2);
          sub_100046D50(v41);
          v35 = v40;
        }

        v220 = v221;
        *&v221 = 0;
      }
    }
  }

  v44 = *(*(v220 + 56) + 32);
  v45 = sub_10001CFF8(v220, a3, v10, &v220 + 4, (&v220 | 0xA));
  v20 = v45;
  if ((v44 & 2) != 0)
  {
    if (v45)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v45)
    {
      goto LABEL_59;
    }

    if ((BYTE10(v220) & 1) == 0 && WORD4(v220))
    {
      --WORD4(v220);
    }
  }

  v192 = v35;
  v46 = v220;
  v53 = *(v220 + 56);
  v54 = *(v53 + 36);
  v55 = *(v53 + 32);
  v206 = (__PAIR64__(v54, v55 & 2) - 1) >> 32 == WORD4(v220);
  if (WORD4(v220) || (BYTE10(v220) & 1) != 0 || (v55 & 2) != 0)
  {
    v56 = 0;
    v46 = 0;
    v57 = v203;
    if ((v55 & 2) == 0)
    {
      goto LABEL_103;
    }

    v198 = 0;
    v204 = 0;
LABEL_89:
    v58 = v222;
    if (v222)
    {
      if ((v222 != a1 || v205) && v222 != v46 && v222 != v198)
      {
        sub_10004BE88(v222, 2);
        sub_100046D50(v58);
      }

      *&v222 = 0;
    }

    if (v206)
    {
      v59 = a1[54];
      v60 = *(v220 + 112);
      if (v59 != v60)
      {
        v61 = a1[50];
        if (v59)
        {
          if ((v61 & 0x10) == 0)
          {
            panic("btree rightmost leaf mismatch! (expected %lld found %lld)\n", *(v220 + 112), v59);
          }

          panic("btree rightmost leaf field is set for physical tree!\n");
        }

        if ((v61 & 0x10) == 0)
        {
          a1[54] = v60;
        }
      }
    }

    v200 = v56;
    v10 = v214;
    if (BYTE10(v220) == 1)
    {
      v145 = sub_10001D1CC(v220, WORD4(v220), a3, v214, a5, v57, a7);
    }

    else
    {
      v145 = sub_10001DB30(v220, WORD4(v220), a3, v214, a5, v57, a7);
    }

    v20 = v145;
    if (v145 != 28)
    {
      goto LABEL_357;
    }

    v146 = sub_10001E2CC(a1, v221, WORD4(v221), v220, WORD4(v220), a3, v10, 1u, &v214, &v213, 0, a2, a7, &v219);
    if (v146)
    {
      v20 = v146;
      v147 = a1[1];
      if (v147)
      {
        v148 = (v147 + 4040);
      }

      else
      {
        v148 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3878, v148, v146);
      goto LABEL_357;
    }

    v149 = v219;
    if (!v219)
    {
      v149 = v220;
      goto LABEL_352;
    }

    if (v221)
    {
      ++WORD4(v221);
      v150 = v220;
      if (v220 && (v220 != a1 || v205) && v220 != v46 && v220 != v198)
      {
        sub_10004BE88(v220, 2);
        sub_100046D50(v150);
      }

      v219 = 0;
      *&v220 = v149;
LABEL_352:
      v20 = sub_1000203B4(v149, a3, v10, a5, v203, a7, &v220 + 4, (&v220 | 0xA));
      if (!v20)
      {
        goto LABEL_357;
      }

      goto LABEL_353;
    }

    v168 = v220;
    *&v221 = v220;
    if (*(v219[7] + 36))
    {
      v169 = sub_10001AD80(v219, 0, &v217, &v215);
      if (v169)
      {
        v20 = v169;
        v219 = 0;
        *&v220 = v149;
        goto LABEL_353;
      }

      v168 = v221;
      v182 = v217;
      v183 = v215;
    }

    else
    {
      v182 = a3;
      v183 = v10;
    }

    v20 = sub_10001DFA8(v168, v182, v183, &v221 + 4, &v221 + 10);
    v219 = 0;
    *&v220 = v149;
    if (!v20)
    {
      goto LABEL_352;
    }

LABEL_353:
    v151 = a1[1];
    if (v151)
    {
      v152 = (v151 + 4040);
    }

    else
    {
      v152 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3915, v152, v20);
LABEL_357:
    if (!v20 && !WORD4(v220) && v221)
    {
      v153 = sub_10001AD80(v221, WORD4(v221), &v217, &v215);
      if (v153)
      {
        v20 = v153;
      }

      else
      {
        v164 = a1[1];
        if (!v164)
        {
          v164 = *(*a1 + 392);
        }

        v20 = (a1[52])(v164, a3, v10, v217, v215, &v216);
        if (!v20)
        {
          if (v216)
          {
            v165 = sub_10001D1CC(v221, WORD4(v221), a3, v10, 0, 0, a7);
            v20 = v165;
            if (v165)
            {
              v166 = a1[1];
              if (v166)
              {
                v167 = (v166 + 4040);
              }

              else
              {
                v167 = (*(*(*a1 + 392) + 384) + 212);
              }

              sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3929, v167, v165);
            }
          }
        }
      }
    }

LABEL_362:
    v154 = v221;
    if (v221)
    {
      if ((v221 != a1 || v205) && v221 != v46 && v221 != v198)
      {
        sub_10004BE88(v221, 2);
        sub_100046D50(v154);
      }

      *&v221 = 0;
    }

    v155 = v220;
    if (v220)
    {
      if ((v220 != a1 || v205) && v220 != v46 && v220 != v218)
      {
        sub_10004BE88(v220, 2);
        sub_100046D50(v155);
      }

      *&v220 = 0;
    }

    if (v20)
    {
      goto LABEL_60;
    }

    v156 = a1[49];
    v157 = *(v156 + 16);
    v158 = v157 >= v10;
    v159 = v157 < v10;
    if (!v158)
    {
      *(v156 + 16) = v10;
    }

    v160 = v200;
    if (*(v156 + 20) < v213)
    {
      *(v156 + 20) = v213;
      v159 = 1;
    }

    if (BYTE10(v220))
    {
      if ((((a1[50] & 0x80) == 0) & ~v159) != 0)
      {
        goto LABEL_384;
      }
    }

    else
    {
      atomic_fetch_add_explicit((v156 + 24), 1uLL, memory_order_relaxed);
    }

    sub_10004C7D8(a1, a7, 0);
LABEL_384:
    if ((v204 & (WORD4(v220) == 0)) != 1)
    {
      v20 = 0;
      goto LABEL_60;
    }

    if (v46)
    {
      v161 = sub_10001D1CC(v46, v160, a3, v10, 0, 0, a7);
      v20 = v161;
      if (v161)
      {
        v162 = a1[1];
        if (v162)
        {
          v163 = (v162 + 4040);
        }

        else
        {
          v163 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3969, v163, v161);
      }

      if (v46 != v222 && v46 != v221 && (v46 != a1 || v205))
      {
        sub_10004BE88(v46, 2);
        sub_100046D50(v46);
      }
    }

    else
    {
      v20 = 0;
    }

    v170 = v218;
    v171 = v218 + 56;
    if (*(*(v218 + 56) + 34) < 2u)
    {
LABEL_445:
      if (v170 != v222 && v170 != v221 && (v170 != a1 || v205))
      {
        sub_10004BE88(v170, 2);
        sub_100046D50(v170);
      }

      v46 = 0;
      v218 = 0;
      goto LABEL_60;
    }

    v172 = v214;
    while (1)
    {
      v209 = -21846;
      LOBYTE(v207) = -86;
      v173 = sub_10001DFA8(v170, a3, v172, &v209, &v207);
      if (v173)
      {
        v20 = v173;
        goto LABEL_59;
      }

      v174 = v207;
      v175 = v209;
      if ((v207 & 1) != 0 || v209)
      {
        v180 = a1[1];
        if (v180)
        {
          v181 = (v180 + 4040);
        }

        else
        {
          v181 = (*(*(*a1 + 392) + 384) + 212);
        }

        v186 = sub_100047D10(v170);
        v187 = sub_100048044(v170);
        sub_10003E5FC("%s:%d: %s minkey update traversal unexpectedly found the key (%d) or a non-zero index (%d); oid %llu subtype 0x%x level %d\n", "bt_insert", 3987, v181, v174, v175, v186, v187, *(*v171 + 34));
LABEL_444:
        v20 = 0;
        goto LABEL_445;
      }

      v176 = sub_10001D1CC(v170, 0, a3, v172, 0, 0, a7);
      v20 = v176;
      if (v176)
      {
        v177 = a1[1];
        if (v177)
        {
          v178 = (v177 + 4040);
        }

        else
        {
          v178 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_insert", 3992, v178, v176);
      }

      v179 = *(*v171 + 34);
      if (v179 == 2)
      {
        goto LABEL_445;
      }

      v20 = sub_10001B084(v170, 0, v16);
      v218 = 0;
      if (!v20)
      {
        v20 = sub_10001A958(a1, v16, v202, 3u, v179 - 1, a7, &v218);
      }

      if (v170 != v222 && v170 != v221 && (v170 != a1 || v205))
      {
        sub_10004BE88(v170, 2);
        sub_100046D50(v170);
      }

      v170 = v218;
      if (v20)
      {
        break;
      }

      v171 = v218 + 56;
      if (*(*(v218 + 56) + 34) <= 1u)
      {
        goto LABEL_444;
      }
    }

    if (v218)
    {
      goto LABEL_445;
    }

LABEL_59:
    v46 = 0;
    goto LABEL_60;
  }

  v218 = v220;
  v56 = 1;
LABEL_103:
  v62 = v46;
  v46 = 0;
  v195 = v62;
  v196 = v62;
  v197 = v62;
  v201 = v62;
  v198 = v62;
  v199 = v62;
  v204 = v56;
  v56 = 0;
  v193 = a5;
  while (2)
  {
    v200 = v56;
    v63 = v222;
    if (v222 && (v222 != a1 || v205))
    {
      v64 = v222 == v46 || v222 == v199;
      if (!v64)
      {
        sub_10004BE88(v222, 2);
        sub_100046D50(v63);
      }
    }

    v65 = v221;
    v221 = v220;
    v222 = v65;
    *&v220 = 0;
    v66 = sub_10001B084(v221, WORD4(v221), v16);
    if (v66)
    {
LABEL_330:
      v20 = v66;
      goto LABEL_60;
    }

    v67 = *(*(v221 + 56) + 34) - 1;
    v68 = a1;
    v69 = v16;
    for (i = a2; ; i = v85)
    {
      v66 = sub_10001A958(v68, v69, i, 3u, v67, a7, &v220);
      if (v66)
      {
        goto LABEL_330;
      }

      v71 = v220;
      if ((a1[50] & 0x10) != 0 && *(v220 + 112) != *v16)
      {
        sub_10001DFEC(v221, WORD4(v221), (v220 + 112), a7);
        v71 = v220;
      }

      v72 = *(*(v71 + 56) + 32);
      v73 = sub_10001CFF8(v71, a3, v214, &v220 + 4, (&v220 | 0xA));
      v20 = v73;
      if ((v72 & 2) != 0)
      {
        if (v73)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v73)
        {
          goto LABEL_60;
        }

        if ((BYTE10(v220) & 1) == 0 && WORD4(v220))
        {
          --WORD4(v220);
        }
      }

      v74 = a7;
      v75 = a3;
      v76 = v46;
      v77 = v220;
      if (!v206)
      {
        v206 = 0;
        v79 = *(v220 + 56);
        LOWORD(v80) = *(v79 + 32);
        v78 = WORD4(v220);
        if ((v80 & 2) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_132;
      }

      v78 = WORD4(v220);
      v79 = *(v220 + 56);
      v80 = *(v79 + 32);
      if (((v80 >> 1) & 1) + *(v79 + 36) - 1 == WORD4(v220))
      {
        break;
      }

      v206 = 0;
      if ((v80 & 2) == 0)
      {
        goto LABEL_152;
      }

LABEL_132:
      if (*(v79 + 36) != v78)
      {
        goto LABEL_152;
      }

      v81 = WORD4(v221);
      v82 = v221;
      if (*(*(v221 + 56) + 36) - 1 <= WORD4(v221) || sub_10001E0C4(v77, 1u, &v214, &v213, 0, 0, 0))
      {
        goto LABEL_152;
      }

      v66 = sub_10001B084(v82, (v81 + 1), v16);
      v46 = v76;
      if (v66)
      {
        goto LABEL_330;
      }

      v83 = v220;
      sub_10004BE88(v220, 2);
      sub_100046D50(v83);
      *&v220 = 0;
      v84 = WORD4(v221)++;
      if ((v204 & (v84 == 0)) == 1)
      {
        v85 = v202;
        a3 = v75;
        if (v46)
        {
          a7 = v74;
          v86 = v201;
          if (v46 != v222 && v46 != v221 && (v46 != a1 || v205))
          {
            sub_10004BE88(v46, 2);
            sub_100046D50(v46);
            v86 = v218;
            v195 = v218;
            v196 = v218;
            v197 = v218;
            v198 = v218;
          }
        }

        else
        {
          a7 = v74;
          v86 = v201;
        }

        if (v86)
        {
          if (v86 != v222 && v86 != v221 && (v86 != a1 || v205))
          {
            sub_10004BE88(v86, 2);
            sub_100046D50(v86);
          }

          v198 = 0;
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v201 = 0;
          v199 = 0;
          v46 = 0;
          v200 = 0;
          v204 = 0;
          v218 = 0;
        }

        else
        {
          v201 = 0;
          v199 = 0;
          v46 = 0;
          v200 = 0;
          v204 = 0;
        }
      }

      else
      {
        v85 = v202;
        a3 = v75;
        a7 = v74;
      }

      v67 = *(*(v221 + 56) + 34) - 1;
      v68 = a1;
      v69 = v16;
    }

    if (a1[54] == *(v221 + 112))
    {
      a1[54] = *(v220 + 112);
    }

    v206 = 1;
    if ((v80 & 2) != 0)
    {
      goto LABEL_132;
    }

LABEL_152:
    v87 = v78 != 0;
    if (!(v204 & 1 | v87))
    {
      v204 = 0;
      a2 = v202;
      v46 = v76;
      if ((v80 & 2) == 0)
      {
        a3 = v75;
        a7 = v74;
        a5 = v193;
        if ((BYTE10(v220) & 1) == 0)
        {
          v46 = v221;
          v204 = 1;
          v198 = v77;
          v195 = v77;
          v200 = WORD4(v221);
          v196 = v77;
          v197 = v77;
          v218 = v77;
          v201 = v77;
          v199 = v77;
        }

        goto LABEL_172;
      }

      goto LABEL_162;
    }

    a2 = v202;
    v46 = v76;
    if ((v204 & v87) != 1)
    {
LABEL_162:
      a3 = v75;
      a7 = v74;
      a5 = v193;
      goto LABEL_172;
    }

    a3 = v75;
    if (!v46)
    {
      a7 = v74;
      goto LABEL_164;
    }

    a7 = v74;
    if (v46 == v222)
    {
LABEL_164:
      a5 = v193;
      goto LABEL_165;
    }

    a5 = v193;
    if (v46 != v221 && (v46 != a1 || v205))
    {
      sub_10004BE88(v46, 2);
      sub_100046D50(v46);
      v195 = v218;
      v196 = v218;
      v198 = v218;
      v197 = v218;
    }

LABEL_165:
    v88 = v197;
    if (v197)
    {
      if (v197 != v222 && v197 != v221 && (v197 != a1 || v205))
      {
        sub_10004BE88(v197, 2);
        sub_100046D50(v88);
      }

      v198 = 0;
      v195 = 0;
      v196 = 0;
      v197 = 0;
      v201 = 0;
      v199 = 0;
      v46 = 0;
      v200 = 0;
      v204 = 0;
      v218 = 0;
    }

    else
    {
      v197 = 0;
      v201 = 0;
      v199 = 0;
      v46 = 0;
      v200 = 0;
      v204 = 0;
    }

LABEL_172:
    v89 = sub_10001E250(v220);
    v194 = v46;
    if (WORD4(v220) || (BYTE10(v220) & 1) != 0)
    {
      goto LABEL_179;
    }

    v66 = sub_10001AD80(v221, WORD4(v221), &v217, &v215);
    if (v66)
    {
      goto LABEL_330;
    }

    v90 = a1[1];
    if (!v90)
    {
      v90 = *(*a1 + 392);
    }

    v91 = v214;
    v66 = (a1[52])(v90, a3, v214, v217, v215, &v216);
    if (v66)
    {
      goto LABEL_330;
    }

    if ((v216 & 0x80000000) == 0)
    {
LABEL_179:
      v92 = 0;
      v93 = 0;
    }

    else
    {
      v109 = *(v220 + 400);
      if ((v109 & 0x40) != 0)
      {
        v110 = v91;
      }

      else
      {
        v110 = (v91 + 7) & 0x1FFF8;
      }

      if ((v109 & 0x40) != 0)
      {
        v111 = v215;
      }

      else
      {
        v111 = (v215 + 7) & 0x1FFF8;
      }

      if (v110 <= v111)
      {
        v92 = 0;
      }

      else
      {
        v64 = (*(v220 + 400) & 0x40) == 0;
        if ((v109 & 0x40) != 0)
        {
          v112 = v91;
        }

        else
        {
          v112 = (v91 + 7) & 0x1FFF8;
        }

        if ((*(v220 + 400) & 0x40) != 0)
        {
          v113 = v215;
        }

        else
        {
          v113 = (v215 + 7) & 0x1FFF8;
        }

        v92 = v112 - v113;
      }

      v93 = 1;
    }

    v94 = v221;
    v95 = *(*(v221 + 56) + 34);
    if (v95 < 2)
    {
      LOWORD(v212) = v89;
      v97 = *(v221 + 400);
      v98 = (HIBYTE(v97) & 0x7F) + 8;
      LOWORD(v211) = v98;
      if ((v93 & 1) == 0)
      {
        v96 = v214;
        goto LABEL_188;
      }

      goto LABEL_186;
    }

    v96 = v214;
    if (v89 > v214)
    {
      v96 = v89;
    }

    LOWORD(v212) = v96;
    v97 = *(v221 + 400);
    v98 = (HIBYTE(v97) & 0x7F) + 8;
    LOWORD(v211) = v98;
    if (v93)
    {
LABEL_186:
      v99 = 1;
      goto LABEL_189;
    }

LABEL_188:
    HIWORD(v212) = v96;
    HIWORD(v211) = v98;
    v99 = 2;
LABEL_189:
    LODWORD(v191) = v92;
    LODWORD(v189) = v99;
    LODWORD(v190) = v92;
    if (sub_10001E0C4(v221, v99, &v212, &v211, v92, 0, 0))
    {
      v46 = v194;
      goto LABEL_249;
    }

    if (v95 < 2)
    {
      v101 = v220;
      if (BYTE10(v220) == 1)
      {
        if ((*(*(v220 + 56) + 32) & 4) != 0)
        {
          v103 = *(v220 + 400);
          v102 = (v103 >> 9) & 0x3FFF;
        }

        else
        {
          v102 = *(*(v220 + 376) + 8 * WORD4(v220) + 2);
          v103 = *(v220 + 400);
        }

        v215 = v102;
        v114 = sub_10001AD08(v220, WORD4(v220));
        v115 = 0;
        if (v114 == 65534)
        {
          v116 = 0;
        }

        else
        {
          v116 = v114;
        }

        if ((v103 & 0x40) != 0)
        {
          v117 = v214;
        }

        else
        {
          v117 = (v214 + 7) & 0x1FFF8;
        }

        if ((v103 & 0x40) != 0)
        {
          v118 = v102;
        }

        else
        {
          v118 = (v102 + 7) & 0x1FFF8;
        }

        if (v117 > v118)
        {
          if ((v103 & 0x40) != 0)
          {
            v119 = v214;
          }

          else
          {
            v119 = (v214 + 7) & 0xFFF8;
          }

          if ((v103 & 0x40) != 0)
          {
            v120 = v102;
          }

          else
          {
            v120 = (v102 + 7) & 0xFFF8;
          }

          v115 = v119 - v120;
        }

        v121 = v213;
        if ((v103 & 0x40) != 0)
        {
          v122 = v213;
        }

        else
        {
          v122 = (v213 + 7) & 0x1FFF8;
        }

        if ((v103 & 0x40) != 0)
        {
          v123 = v116;
        }

        else
        {
          v123 = (v116 + 7) & 0x1FFF8;
        }

        if (v122 <= v123)
        {
          v124 = 0;
        }

        else
        {
          if ((v103 & 0x40) == 0)
          {
            v121 = (v213 + 7) & 0xFFF8;
            LOWORD(v116) = (v116 + 7) & 0xFFF8;
          }

          v124 = v121 - v116;
        }

        v46 = v194;
        if (v115 | v124 && !sub_10001E0C4(v101, 0, 0, 0, v115, v124, 0))
        {
          goto LABEL_253;
        }
      }

      else
      {
        v108 = sub_10001E0C4(v220, 1u, &v214, &v213, 0, 0, 0);
        v46 = v194;
        if (!v108)
        {
          goto LABEL_253;
        }
      }

      if (v191)
      {
        v105 = v94;
        v100 = 0;
        v106 = 0;
        v107 = 0;
        v104 = v190;
        goto LABEL_248;
      }

LABEL_249:
      v57 = v203;
LABEL_250:
      v56 = v200;
      goto LABEL_251;
    }

    v210 = -21846;
    v208 = -21846;
    v209 = v192;
    v207 = (HIBYTE(v97) & 0x7F) + 8;
    if (v93)
    {
      v100 = 1;
    }

    else
    {
      v210 = v192;
      v208 = (HIBYTE(v97) & 0x7F) + 8;
      v100 = 2;
    }

    v46 = v194;
    v104 = v190;
    v105 = v220;
    v106 = &v209;
    v107 = &v207;
LABEL_248:
    if (sub_10001E0C4(v105, v100, v106, v107, v104, 0, 0))
    {
      goto LABEL_249;
    }

LABEL_253:
    v125 = v214;
    v126 = sub_10001E2CC(a1, v222, WORD4(v222), v94, (WORD4(v221) + ((BYTE10(v221) & 1) == 0)), a3, v214, v189, &v212, &v211, v191, a2, a7, &v219);
    if (v126)
    {
      v20 = v126;
      v184 = a1[1];
      if (v184)
      {
        v185 = (v184 + 4040);
      }

      else
      {
        v185 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s bt_shift_or_split failed with error: %d\n", "bt_insert", 3679, v185, v126);
      goto LABEL_60;
    }

    v127 = v219;
    v57 = v203;
    v56 = v200;
    if (!v219)
    {
      goto LABEL_251;
    }

    v128 = v221;
    v191 = v221;
    if (v222)
    {
      ++WORD4(v222);
      if (v221)
      {
        if (v221 != a1 || v205)
        {
          if (v46 == v221)
          {
            v129 = v196;
          }

          else
          {
            v129 = v196;
            if (v221 != v196)
            {
              v130 = v196;
              v189 = v219;
              sub_10004BE88(v221, 2);
              sub_100046D50(v191);
              v127 = v189;
              v190 = 0;
              v197 = v130;
              v201 = v130;
              v199 = v130;
              goto LABEL_273;
            }
          }

          v197 = v129;
          v201 = v129;
          v199 = v129;
        }

        v190 = v221;
      }

      else
      {
        v190 = 0;
      }

LABEL_273:
      if (v46 == v222 && v46 != 0)
      {
        v56 = WORD4(v222);
      }

      v200 = v56;
      *&v221 = v127;
      v219 = 0;
      v135 = v125;
      v66 = sub_10001DFA8(v127, a3, v125, &v221 + 4, &v221 + 10);
      if (v66)
      {
        goto LABEL_330;
      }

      v136 = v220;
      sub_10004BE88(v220, 2);
      sub_100046D50(v136);
      *&v220 = 0;
      v66 = sub_10001B084(v221, WORD4(v221), v16);
      if (v66)
      {
        goto LABEL_330;
      }

      v66 = sub_10001A958(a1, v16, a2, 3u, *(*(v221 + 56) + 34) - 1, a7, &v220);
      if (v66)
      {
        goto LABEL_330;
      }

      v137 = v220;
      if ((a1[50] & 0x10) != 0 && *(v220 + 112) != *v16)
      {
        sub_10001DFEC(v221, WORD4(v221), (v220 + 112), a7);
        v137 = v220;
      }

      if ((*(*(v137 + 56) + 32) & 2) != 0)
      {
        v138 = sub_10001CFF8(v137, a3, v135, &v220 + 4, (&v220 | 0xA));
      }

      else
      {
        v138 = sub_10001DFA8(v137, a3, v135, &v220 + 4, (&v220 | 0xA));
      }

      v20 = v138;
      v139 = v190;
      if (v138)
      {
        goto LABEL_60;
      }

      if (v46 == v191)
      {
        v141 = WORD4(v221);
        v57 = v203;
        v56 = v200;
        if (v46 == a1 && !WORD4(v221))
        {
          v195 = v221;
          v218 = v221;
          v196 = v221;
          v197 = v221;
          v201 = v221;
          v198 = v221;
          v199 = v221;
          goto LABEL_251;
        }

        if (!WORD4(v221))
        {
          v46 = v222;
          v142 = v221;
          goto LABEL_319;
        }

        v46 = v221;
        v142 = v220;
        v195 = v220;
      }

      else
      {
        v57 = v203;
        if ((v204 & 1) == 0)
        {
          v141 = v200;
          v140 = v201;
          goto LABEL_306;
        }

        v140 = v201;
        if (!(WORD4(v221) | WORD4(v220)))
        {
          v204 = 1;
          v141 = v200;
          goto LABEL_321;
        }

        if (v46 && v46 != v222 && v46 != v221 && (v46 != a1 || v205))
        {
          sub_10004BE88(v46, 2);
          sub_100046D50(v46);
          v139 = v190;
          v198 = v218;
          v195 = v218;
        }

        v46 = v195;
        if (v195)
        {
          if (v195 != v222 && v195 != v221 && (v195 != a1 || v205))
          {
            sub_10004BE88(v195, 2);
            sub_100046D50(v46);
            v139 = v190;
          }

          v198 = 0;
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v140 = 0;
          v199 = 0;
          v46 = 0;
          v141 = 0;
          v218 = 0;
        }

        else
        {
          v195 = 0;
          v196 = 0;
          v197 = 0;
          v140 = 0;
          v199 = 0;
          v141 = 0;
        }

LABEL_306:
        if (WORD4(v220))
        {
LABEL_307:
          v204 = 0;
          goto LABEL_321;
        }

        if (WORD4(v221) || (BYTE10(v221) & 1) != 0)
        {
          if ((BYTE10(v220) & 1) != 0 || (*(*(v220 + 56) + 32) & 2) != 0)
          {
            goto LABEL_307;
          }

          v46 = v221;
          v204 = 1;
          v198 = v220;
          v195 = v220;
          v196 = v220;
          v218 = v220;
          v197 = v220;
          v140 = v220;
          v199 = v220;
          v141 = WORD4(v221);
LABEL_321:
          if (v139)
          {
            if (v139 == a1 && !v205 || v139 == v46)
            {
              v195 = v198;
              v196 = v198;
              v197 = v198;
              v201 = v198;
              v199 = v198;
            }

            else
            {
              v143 = v198;
              if (v139 != v198)
              {
                v144 = v139;
                v200 = v141;
                sub_10004BE88(v139, 2);
                sub_100046D50(v144);
                v195 = v143;
                v196 = v143;
                v197 = v143;
                v201 = v143;
                v199 = v143;
                goto LABEL_250;
              }

              v195 = v198;
              v196 = v198;
              v197 = v198;
              v201 = v198;
              v199 = v198;
            }
          }

          else
          {
            v201 = v140;
          }

          v56 = v141;
LABEL_251:
          if ((*(*(v220 + 56) + 32) & 2) == 0)
          {
            continue;
          }

          goto LABEL_89;
        }

        v46 = v222;
        v142 = v221;
        v204 = 1;
LABEL_319:
        v195 = v142;
        v141 = WORD4(v222);
      }

      v218 = v142;
      v196 = v142;
      v197 = v142;
      v140 = v142;
      v198 = v142;
      v199 = v142;
      goto LABEL_321;
    }

    break;
  }

  *&v222 = v221;
  if (*(v219[7] + 36))
  {
    v131 = v219;
    v66 = sub_10001AD80(v219, 0, &v217, &v215);
    if (v66)
    {
      goto LABEL_330;
    }

    v128 = v222;
    v132 = v217;
    v133 = v215;
  }

  else
  {
    v131 = v219;
    v132 = a3;
    v133 = v125;
  }

  v20 = sub_10001DFA8(v128, v132, v133, &v222 + 4, &v222 + 10);
  if (!v20)
  {
    v190 = 0;
    v56 = v200;
    v127 = v131;
    goto LABEL_273;
  }

LABEL_60:
  v47 = v222;
  v48 = v218;
  if (v222 && v222 != v46 && v222 != v218)
  {
    sub_10004BE88(v222, 2);
    sub_100046D50(v47);
  }

  v49 = v221;
  if (v221 && v221 != v46 && v221 != v48)
  {
    sub_10004BE88(v221, 2);
    sub_100046D50(v49);
  }

  v50 = v220;
  if (v220 && v220 != v46 && v220 != v48)
  {
    sub_10004BE88(v220, 2);
    sub_100046D50(v50);
  }

  if (v46)
  {
    sub_10004BE88(v46, 2);
    sub_100046D50(v46);
    v48 = v218;
  }

  if (v48)
  {
    sub_10004BE88(v48, 2);
    sub_100046D50(v48);
  }

  v51 = v219;
  if (v219)
  {
    sub_10004BE88(v219, 2);
    sub_100046D50(v51);
  }

  v52 = v205;
  if (v222 == a1)
  {
    v52 = 1;
  }

  if (v48 != a1 && (v52 & 1) == 0 && v221 != a1 && v220 != a1 && v46 != a1)
  {
    sub_10004BE88(a1, 2);
    sub_100046D50(a1);
  }

  return v20;
}

uint64_t sub_10001CFF8(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  v21 = -1431655766;
  v10 = *(*(a1 + 56) + 36) - 1;
  v20 = -21846;
  if ((*(a1 + 400) & 1) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      v11 = 0;
      v23 = 0xAAAAAAAAAAAAAAAALL;
      while (1)
      {
        v12 = (v10 + v11) / 2;
        result = sub_10001AD80(a1, v12, &v23, &v20);
        if (result)
        {
          return result;
        }

        v14 = *(a1 + 8);
        if (!v14)
        {
          v14 = *(*a1 + 392);
        }

        result = (*(a1 + 416))(v14, a2, a3, v23, v20, &v21);
        if (result)
        {
          return result;
        }

        v15 = v21 == 0;
        if (!v21)
        {
          v11 = (v10 + v11) / 2;
          goto LABEL_34;
        }

        if (v21 < 0)
        {
          v10 = v12 - 1;
        }

        else
        {
          v11 = v12 + 1;
        }

        if (v11 > v10)
        {
          goto LABEL_34;
        }
      }
    }

    v15 = 0;
    LOWORD(v11) = 0;
LABEL_34:
    result = 0;
    *a4 = v11;
LABEL_37:
    *a5 = v15;
    return result;
  }

  if (a3 != 8)
  {
    return 22;
  }

  if (v10 < 0)
  {
    v15 = 0;
    LOWORD(v16) = 0;
LABEL_36:
    result = 0;
    *a4 = v16;
    goto LABEL_37;
  }

  v16 = 0;
  v17 = *a2;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v22 = -21846;
  while (1)
  {
    v18 = (v16 + v10) / 2;
    LODWORD(result) = sub_10001AD80(a1, v18, &v23, &v22);
    v19 = v22 != 8 && result == 0;
    result = v19 ? 22 : result;
    if (result)
    {
      return result;
    }

    v15 = *v23 == v17;
    if (*v23 == v17)
    {
      v16 = (v16 + v10) / 2;
      goto LABEL_36;
    }

    if (*v23 > v17)
    {
      v10 = v18 - 1;
    }

    else
    {
      v16 = v18 + 1;
    }

    if (v16 > v10)
    {
      goto LABEL_36;
    }
  }
}

uint64_t sub_10001D1CC(uint64_t a1, unsigned int a2, void *__src, size_t __n, void *a5, unsigned int a6, uint64_t a7)
{
  v7 = a7;
  v8 = a5;
  v9 = __n;
  v10 = __src;
  v11 = a2;
  v104 = -21846;
  v103 = -21846;
  v102 = -21846;
  v101 = -21846;
  v13 = *(a1 + 56);
  v14 = *(v13 + 32);
  if (a6 == 65534)
  {
    v15 = 0;
  }

  else
  {
    v15 = a6;
  }

  v100 = *(v13 + 32);
  if (*(v13 + 36) <= a2)
  {
    v24 = 0;
    v23 = 0;
    LOWORD(v25) = 0;
    v97 = 0;
    v18 = 0xFFFF;
    v20 = 0xFFFF;
  }

  else
  {
    v16 = *(a1 + 376);
    if ((v14 & 4) != 0)
    {
      v17 = (v16 + 4 * a2);
    }

    else
    {
      v17 = (v16 + 8 * a2);
    }

    v18 = *v17;
    v19 = (v16 + 4 * a2 + 2);
    if ((v14 & 4) == 0)
    {
      v19 = (v16 + 8 * a2 + 4);
    }

    v20 = *v19;
    v21 = __n;
    v22 = v15;
    if (v18 == 0xFFFF)
    {
      v23 = 0;
    }

    else if ((v14 & 4) != 0)
    {
      v23 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v23 = *(v16 + 8 * a2 + 2);
    }

    if (v20 > 0xFFFD)
    {
      v25 = 0;
    }

    else
    {
      v35 = v23;
      v36 = sub_10001AD08(a1, a2);
      v23 = v35;
      v25 = v36;
    }

    v97 = v23 != 0;
    if (v23)
    {
      v37 = v23;
      v38 = sub_10001AE44(a1, v18, v23);
      v23 = v37;
      if (v38)
      {
        return v38;
      }
    }

    if (v25)
    {
      v93 = v11;
      v39 = v23;
      v38 = sub_10001AF70(a1, v20, v25);
      if (v38)
      {
        return v38;
      }

      v24 = 1;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v23 = v39;
      v11 = v93;
      v10 = __src;
    }

    else
    {
      v24 = 0;
      v7 = a7;
      v8 = a5;
      v15 = v22;
      v9 = v21;
      v10 = __src;
    }
  }

  v104 = v18;
  v103 = v20;
  v26 = v9 - v23;
  if (!v10)
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = v15 - v25;
  if (!v8)
  {
    v28 = 0;
  }

  v29 = v28;
  if (v26 | v28)
  {
    if (v10)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v30 = v9;
      }

      else
      {
        v30 = (v9 + 7) & 0xFFF8;
      }

      v31 = (v23 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v31 = v23;
      }

      v32 = (v30 - v31);
    }

    else
    {
      v32 = 0;
    }

    v91 = v24;
    v92 = v18;
    v90 = v8;
    v96 = v29;
    v94 = v27;
    v41 = v23;
    if (v8)
    {
      v42 = v7;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v43 = v15;
      }

      else
      {
        v43 = (v15 + 7) & 0xFFF8;
      }

      v44 = (v25 + 7) & 0xFFF8;
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v44 = v25;
      }

      v45 = (v43 - v44);
    }

    else
    {
      v42 = v7;
      v45 = 0;
    }

    if (v45 + v32 > sub_100025FE8(a1))
    {
      return 28;
    }

    v46 = 0;
    v101 = -1;
    v102 = -1;
    v47 = v42;
    if (v9)
    {
      v29 = v96;
      v48 = v92;
      v27 = v94;
      v23 = v41;
      if (!v94)
      {
LABEL_61:
        if (v15 && v29)
        {
          v49 = v46;
          sub_100026068(a1, 2, v15, &v101, &v103);
          if (v103 == -1)
          {
            v29 = v96;
            v48 = v92;
            v27 = v94;
            v23 = v41;
            v46 = v49;
            if (v96 < 0)
            {
              v103 = v20;
              v101 = -1;
            }

            else
            {
              if ((*(a1 + 400) & 0x40) != 0)
              {
                v50 = v15;
              }

              else
              {
                v50 = (v15 + 7) & 0xFFF8;
              }

              v46 = v50 + v49;
            }
          }

          else
          {
            v29 = v96;
            v48 = v92;
            v27 = v94;
            v23 = v41;
            v46 = v49;
          }
        }

        v51 = *(a1 + 56);
        v52 = *(v51 + 46);
        if (v27)
        {
          v53 = v97;
        }

        else
        {
          v53 = 0;
        }

        if (v53)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v54 = v23;
          }

          else
          {
            v54 = (v23 + 7) & 0xFFF8;
          }

          v55 = (v54 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v55 = v23;
          }

          if (v55 >= 4u)
          {
            v56 = (*(a1 + 384) + v48);
            v56[1] = v55;
            *v56 = *(v51 + 48);
            *(v51 + 48) = v48;
          }

          *(v51 + 50) += v55;
          if (v104 != 0xFFFF && v102 == 0xFFFF && v104 != v48 && *(v51 + 48) == v48)
          {
            v102 = v48;
          }
        }

        if (v29)
        {
          v57 = v91;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v58 = v25;
          }

          else
          {
            v58 = (v25 + 7) & 0xFFF8;
          }

          v59 = (v58 + 7) & 0xFFF8;
          if ((*(a1 + 400) & 0x40) != 0)
          {
            v59 = v25;
          }

          if (v59 >= 4u)
          {
            v60 = (*(a1 + 392) - v20);
            v60[1] = v59;
            *v60 = *(v51 + 52);
            *(v51 + 52) = v20;
          }

          *(v51 + 54) += v59;
          if (v103 != 0xFFFF && v101 == 0xFFFF && v103 != v20 && *(v51 + 52) == v20)
          {
            v101 = v20;
          }
        }

        if (v52 < v46)
        {
          if ((v100 & 0x8000) == 0)
          {
            *(v51 + 32) |= 0x8000u;
          }

          if (*(v51 + 36) > v11)
          {
            v61 = *(v51 + 32);
            v62 = *(a1 + 376);
            if ((v61 & 4) != 0)
            {
              if (v53)
              {
                *(v62 + 4 * v11) = -1;
              }

              if (v57)
              {
                *(v62 + 4 * v11 + 2) = -1;
              }
            }

            else
            {
              if (v53)
              {
                *(v62 + 8 * v11) = 0xFFFF;
              }

              if (v57)
              {
                *(v62 + 8 * v11 + 4) = 0xFFFF;
              }
            }
          }

          v98 = v57;
          v63 = sub_100026288(a1, 0, v47);
          if (v63)
          {
            v40 = v63;
            if (v53)
            {
              v64 = (*(a1 + 400) & 0x40) != 0 ? v9 : (v9 + 7) & 0xFFF8;
              v65 = sub_10002666C(a1, 1, v64, 0xFFFF, v92);
              if (v65)
              {
                v66 = *(a1 + 8);
                if (v66)
                {
                  v67 = (v66 + 4040);
                }

                else
                {
                  v67 = (*(*(*a1 + 392) + 384) + 212);
                }

                sub_10003E5FC("%s:%d: %s unable to reclaim just-freed key space on error path: %d\n", "btree_node_entry_update", 1772, v67, v65);
              }
            }

            if (v98)
            {
              v88 = (*(a1 + 400) & 0x40) != 0 ? v25 : (v25 + 7) & 0xFFF8;
              if (sub_10002666C(a1, 2, v88, 0xFFFF, v20))
              {
                if (!*(a1 + 8))
                {
                  v89 = *(*(*a1 + 392) + 384) + 212;
                }

                sub_10003E5FC("%s:%d: %s unable to reclaim just-freed val space on error path: %d\n");
              }
            }

            return v40;
          }

          v101 = -1;
          v102 = -1;
          v104 = -1;
          v103 = -1;
          v29 = v96;
          v27 = v94;
          v23 = v41;
        }

        v68 = v10;
        v69 = v47;
        if (v27)
        {
          v8 = v90;
          if (v104 == 0xFFFF)
          {
            v70 = sub_10002675C(a1, 1, v9, &v104);
          }

          else
          {
            v70 = sub_10002666C(a1, 1, v9, v102, v104);
          }

          v40 = v70;
          v29 = v96;
          v27 = v94;
          v23 = v41;
          if (v70)
          {
            if (!*(a1 + 8))
            {
              v80 = *(*(*a1 + 392) + 384) + 212;
            }

LABEL_185:
            sub_10003E5FC("%s:%d: %s unable allocate space that should be there: %d\n");
            return v40;
          }
        }

        else
        {
          v71 = *(a1 + 376);
          v72 = (v71 + 4 * v11);
          v73 = (v71 + 8 * v11);
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v74 = v72;
          }

          else
          {
            v74 = v73;
          }

          v104 = *v74;
          v8 = v90;
        }

        if (v29)
        {
          v7 = v69;
          if (!v15)
          {
            if (a6 == 65534)
            {
              LOWORD(v20) = -2;
            }

            else
            {
              LOWORD(v20) = -1;
            }

            v103 = v20;
            goto LABEL_155;
          }

          if (v103 == 0xFFFF)
          {
            v75 = sub_10002675C(a1, 2, v15, &v103);
          }

          else
          {
            v75 = sub_10002666C(a1, 2, v15, v101, v103);
          }

          v40 = v75;
          v29 = v96;
          v27 = v94;
          if (v75)
          {
            if (!*(a1 + 8))
            {
              v87 = *(*(*a1 + 392) + 384) + 212;
            }

            goto LABEL_185;
          }

          v23 = v41;
          LOWORD(v20) = v103;
        }

        else
        {
          v76 = *(a1 + 376);
          v77 = v76 + 4 * v11 + 2;
          v78 = v76 + 8 * v11 + 4;
          if ((*(*(a1 + 56) + 32) & 4) != 0)
          {
            v79 = v77;
          }

          else
          {
            v79 = v78;
          }

          LOWORD(v20) = *v79;
          v103 = *v79;
        }

        v7 = v69;
LABEL_155:
        v10 = v68;
        goto LABEL_156;
      }

      sub_100026068(a1, 1, v9, &v102, &v104);
      if (v104 == -1)
      {
        v48 = v92;
        v27 = v94;
        if (v94 < 0)
        {
          v46 = 0;
          v104 = v92;
          v102 = -1;
        }

        else if ((*(a1 + 400) & 0x40) != 0)
        {
          v46 = v9;
        }

        else
        {
          v46 = (v9 + 7) & 0xFFF8;
        }

        v29 = v96;
        goto LABEL_60;
      }

      v46 = 0;
    }

    v29 = v96;
    v48 = v92;
    v27 = v94;
LABEL_60:
    v23 = v41;
    goto LABEL_61;
  }

LABEL_156:
  if (a6 == 65534 && v20 != 65534)
  {
    LOWORD(v20) = -2;
    v103 = -2;
    v29 = 1;
  }

  v81 = *(a1 + 56);
  v82 = *(a1 + 376);
  if ((*(v81 + 32) & 4) != 0)
  {
    if (v27)
    {
      *(v82 + 4 * v11) = v104;
    }

    if (v29)
    {
      *(v82 + 4 * v11 + 2) = v20;
    }
  }

  else
  {
    v83 = (v82 + 8 * v11);
    if (v27)
    {
      *v83 = v104;
      v83[1] = v9;
    }

    if (v29)
    {
      v83[2] = v20;
      v83[3] = a6;
    }
  }

  if ((v100 & 0x8000) == 0)
  {
    *(v81 + 32) &= ~0x8000u;
  }

  v84 = *(a1 + 440);
  if (!*(a1 + 440) || (v85 = v9, v84 >= v9))
  {
    if (v9 >= v23 || v84 > v23)
    {
      goto LABEL_176;
    }

    v85 = 0;
  }

  *(a1 + 440) = v85;
LABEL_176:
  if (v10 && v9)
  {
    memcpy((*(a1 + 384) + v104), v10, v9);
  }

  if (v8 && v15)
  {
    memcpy((*(a1 + 392) - v103), v8, v15);
  }

  sub_10004C7D8(a1, v7, 0);
  return 0;
}

uint64_t sub_10001DB30(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, const void *a5, unsigned int a6, uint64_t a7)
{
  v48 = a4;
  if (a6 == 65534)
  {
    v11 = 0;
  }

  else
  {
    v11 = a6;
  }

  v42 = v11;
  if (a3)
  {
    v12 = a4;
    if (a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = 0;
    }

    if (a5)
    {
      goto LABEL_9;
    }

LABEL_13:
    v11 = 0;
    v14 = 0;
    v42 = 0;
    goto LABEL_14;
  }

  v12 = 0;
  v13 = 0;
  v48 = 0;
  if (!a5)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v11)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

LABEL_14:
  v47 = -21846;
  v46 = -21846;
  v45 = -21846;
  v44 = -21846;
  v43 = -21846;
  if (!sub_10001E0C4(a1, 1u, &v48, &v42, 0, 0, &v47))
  {
    return 28;
  }

  v43 = -1;
  v44 = -1;
  v45 = -1;
  v46 = -1;
  if (v13)
  {
    sub_100026068(a1, 1, v12, &v46, &v45);
  }

  if (v14)
  {
    sub_100026068(a1, 2, v11, &v44, &v43);
  }

  if (v45 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = (v12 + 7) & 0xFFF8;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v43 == -1)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = (v11 + 7) & 0xFFF8;
    }

    v15 += v17;
  }

  v18 = v47 + v15;
  v19 = *(a1 + 56);
  if (v18 <= *(v19 + 46))
  {
    if (v47)
    {
      memmove((*(a1 + 384) + v47), *(a1 + 384), *(v19 + 44));
      bzero(*(a1 + 384), v47);
      v20 = v47;
      *(a1 + 384) += v47;
      v21 = *(a1 + 56);
      *(v21 + 46) -= v20;
      *(v21 + 42) += v20;
    }
  }

  else
  {
    v16 = sub_100026288(a1, 1, a7);
    if (v16)
    {
      return v16;
    }

    v43 = -1;
    v45 = -1;
    v47 = 0;
  }

  if (!v13)
  {
LABEL_38:
    if (!v14)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  if (v45 != 0xFFFF)
  {
    v16 = sub_10002666C(a1, 1, v12, v46, v45);
    if (!v16)
    {
      goto LABEL_38;
    }

LABEL_47:
    v25 = *(a1 + 8);
    if (v25)
    {
      v26 = (v25 + 4040);
    }

    else
    {
      v26 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2193, v26, v16);
    return v16;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v22 = v12;
  }

  else
  {
    v22 = (v12 + 7) & 0xFFF8;
  }

  v23 = *(a1 + 56);
  v24 = *(v23 + 46);
  if (v24 < v22)
  {
    v16 = 28;
    goto LABEL_47;
  }

  v32 = *(v23 + 44);
  *(v23 + 44) = v32 + v22;
  *(v23 + 46) = v24 - v22;
  v45 = v32;
  if (!v14)
  {
    goto LABEL_62;
  }

LABEL_39:
  if (v43 != 0xFFFF)
  {
    v16 = sub_10002666C(a1, 2, v11, v44, v43);
    if (!v16)
    {
      goto LABEL_62;
    }

LABEL_53:
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = (v30 + 4040);
    }

    else
    {
      v31 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s unable allocate space that should be there: %d\n", "btree_node_insert_internal", 2205, v31, v16);
    return v16;
  }

  v27 = (v11 + 7) & 0xFFF8;
  if ((*(a1 + 400) & 0x40) != 0)
  {
    v27 = v11;
  }

  v28 = *(a1 + 56);
  v29 = *(v28 + 46);
  if (v29 < v27)
  {
    v16 = 28;
    goto LABEL_53;
  }

  v33 = v29 - v27;
  *(v28 + 46) = v33;
  v43 = *(a1 + 392) - (v33 + *(a1 + 384) + *(v28 + 44));
LABEL_62:
  if (!v11)
  {
    if (a6 == 65534)
    {
      v34 = -2;
    }

    else
    {
      v34 = -1;
    }

    v43 = v34;
  }

  v35 = *(a1 + 56);
  v36 = *(v35 + 36);
  if (v36 > a2)
  {
    sub_10002691C(a1, a2, 1);
    v35 = *(a1 + 56);
    v36 = *(v35 + 36);
  }

  *(v35 + 36) = v36 + 1;
  v37 = v43;
  v38 = *(a1 + 376);
  if ((*(v35 + 32) & 4) != 0)
  {
    v40 = (v38 + 4 * a2);
    *v40 = v45;
    v40[1] = v37;
  }

  else
  {
    v39 = (v38 + 8 * a2);
    *v39 = v45;
    v39[1] = v12;
    v39[2] = v37;
    v39[3] = a6;
  }

  if (*(a1 + 440) && *(a1 + 440) < v12)
  {
    *(a1 + 440) = v12;
  }

  if (v13)
  {
    memcpy((*(a1 + 384) + v45), v13, v12);
  }

  if (v14)
  {
    memcpy((*(a1 + 392) - v43), v14, v11);
  }

  sub_10004C7D8(a1, a7, 0);
  return 0;
}

uint64_t sub_10001DFA8(uint64_t a1, unint64_t *a2, uint64_t a3, _WORD *a4, BOOL *a5)
{
  result = sub_10001CFF8(a1, a2, a3, a4, a5);
  if (!result && !*a5)
  {
    if (*a4)
    {
      --*a4;
    }
  }

  return result;
}

uint64_t sub_10001DFEC(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(*(a1 + 56) + 32);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) != 0)
    {
      v8 = (*(a1 + 400) >> 9) & 0x3FFF;
    }

    else
    {
      v8 = *(*(a1 + 376) + 8 * a2 + 2);
    }

    return sub_100020E0C(a1, a2, 0, v8, v5, 8, 0, a4, sub_10002698C, 0);
  }

  v7 = *(a1 + 408);
  if (*a3 > v7)
  {
    v12 = *a3 - v7;
    v5 = &v12;
    goto LABEL_4;
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v11 = (v10 + 4040);
  }

  else
  {
    v11 = (*(*(*a1 + 392) + 384) + 212);
  }

  sub_10003E5FC("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_child_id_update", 1961, v11, *a3, v7);
  return 22;
}

BOOL sub_10001E0C4(uint64_t a1, unsigned int a2, __int16 *a3, __int16 *a4, __int16 a5, __int16 a6, _WORD *a7)
{
  v12 = *(a1 + 56);
  v13 = v12[16];
  v14 = v12[18];
  v15 = v12[21];
  if ((v13 & 4) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v39 = v16;
  if ((v13 & 4) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  v18 = sub_10001ABEC(a1, 0);
  if ((v13 & 4) == 0 || (*(a1 + 400) & 4) != 0 || v14 + a2 <= v18)
  {
    v20 = v18;
    v21 = sub_10001ABEC(a1, a2);
    if (a7)
    {
      if ((v13 & 4) != 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      v23 = v21 << v22;
      v24 = v23 >= v15;
      v25 = v23 - v15;
      if (v25 == 0 || !v24)
      {
        LOWORD(v25) = 0;
      }

      *a7 = v25;
    }

    v26 = v15 >> v17;
    v27 = 0;
    if (a2)
    {
      v28 = a2;
      do
      {
        v30 = *a3++;
        v29 = v30;
        if ((*(a1 + 400) & 0x40) != 0)
        {
          v31 = *a4;
        }

        else
        {
          v29 = (v29 + 7) & 0xFFF8;
          v31 = (*a4 + 7) & 0xFFF8;
        }

        v27 += v29 + v31;
        ++a4;
        --v28;
      }

      while (v28);
    }

    v32 = a6 + a5 + v27;
    if ((v13 & 4) != 0)
    {
      v33 = 2;
    }

    else
    {
      v33 = 3;
    }

    v34 = ((v21 - v20) << v33) & 0xFFFC;
    if (v21 <= v20)
    {
      v34 = 0;
    }

    v35 = v26 > v20;
    v36 = (v26 - v20) << v39;
    if (!v35)
    {
      LOWORD(v36) = 0;
    }

    return v34 + v32 <= (v12[23] + v36 + v12[25] + v12[27]);
  }

  else
  {
    result = 0;
    if (a7)
    {
      *a7 = -1;
    }
  }

  return result;
}

uint64_t sub_10001E250(uint64_t a1)
{
  v1 = (*(a1 + 400) >> 9) & 0x3FFF;
  if (!v1)
  {
    LOWORD(v1) = *(a1 + 440);
    if (!v1)
    {
      v2 = *(a1 + 56);
      v3 = *(v2 + 36);
      if (v3)
      {
        v4 = 0;
        LOWORD(v1) = 0;
        v5 = *(v2 + 32);
        do
        {
          if ((v5 & 4) == 0)
          {
            v6 = *(*(a1 + 376) + 8 * v4 + 2);
            v7 = v1;
            if (v6 > v1)
            {
              v7 = *(*(a1 + 376) + 8 * v4 + 2);
            }

            if (v6 != 0xFFFF)
            {
              LOWORD(v1) = v7;
            }
          }

          ++v4;
        }

        while (v3 != v4);
      }

      else
      {
        LOWORD(v1) = 0;
      }

      *(a1 + 440) = v1;
    }
  }

  return v1;
}

uint64_t sub_10001E2CC(void *a1, void *a2, unsigned int a3, void *a4, unsigned int a5, unint64_t *a6, size_t a7, unsigned int a8, __int16 *a9, __int16 *a10, unsigned __int16 a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v270 = a8;
  v20 = a13;
  v277 = a1;
  v21 = a1[50];
  __chkstk_darwin(a1);
  v23 = &v247[-v22];
  bzero(&v247[-v22], v24);
  memset(v284, 0, sizeof(v284));
  v282 = 0;
  v283 = 0;
  v281 = 0;
  memset(v280, 170, sizeof(v280));
  v279 = -21846;
  v278 = -21846;
  LODWORD(v273) = (*(a4[7] + 32) & 4) != 0 && (a4[50] & 4) == 0;
  *a14 = 0;
  LODWORD(v272) = a5;
  v251 = a14;
  v252 = v23;
  if (a2 && *(a2[7] + 36) - 1 > a3)
  {
    if (sub_10001B084(a2, (a3 + 1), v23) || sub_10001A958(v277, v23, a12, 3u, *(a2[7] + 34) - 1, a13, &v283) || !v283)
    {
      v283 = 0;
      v25 = 1;
    }

    else
    {
      if ((v277[50] & 0x10) != 0 && v283[14] != *v23)
      {
        sub_10001DFEC(a2, (a3 + 1), v283 + 14, a13);
      }

      v25 = 0;
    }

    a5 = v272;
  }

  else
  {
    v25 = 1;
  }

  v26 = v270;
  *(v284 + 8) = *(v277 + 25);
  *(&v284[1] + 1) = a4[52];
  LODWORD(v284[0]) = 2123139;
  v27 = a4[7];
  WORD2(v284[0]) = *(v27 + 32) & 0x1A;
  WORD3(v284[0]) = *(v27 + 34);
  if (v270)
  {
    v28 = 0;
    v31 = v270;
    do
    {
      v33 = *a9++;
      v32 = v33;
      if ((a4[50] & 0x40) != 0)
      {
        v34 = *a10;
      }

      else
      {
        v32 = (v32 + 7) & 0xFFF8;
        v34 = (*a10 + 7) & 0xFFF8;
      }

      v28 += v32 + v34;
      ++a10;
      --v31;
    }

    while (v31);
    v260 = v28;
  }

  else
  {
    v260 = 0;
  }

  v35 = *(v27 + 36);
  v256 = a3;
  v254 = a6;
  if (v35 > a5)
  {
    v36 = sub_10001AD80(a4, a5, &v280[3], &v279);
    if (v36)
    {
      return v36;
    }

    v37 = v277[1];
    if (!v37)
    {
      v37 = *(*v277 + 392);
    }

    v36 = (v277[52])(v37, a6, a7, *&v280[3], v279, v280);
    if (v36)
    {
      return v36;
    }

    if (v280[0])
    {
      v264 = 0;
      v271 = 0;
      v38 = 0;
      v261 = 0;
      v26 = v270;
    }

    else
    {
      v26 = v270;
      if ((*(a4[7] + 32) & 2) != 0)
      {
        v106 = sub_10001AD08(a4, v272);
        if (v106 == 65534)
        {
          v107 = 0;
        }

        else
        {
          v107 = v106;
        }

        v278 = v107;
        if ((a4[50] & 0x40) != 0)
        {
          v108 = v279;
        }

        else
        {
          v108 = (v279 + 7) & 0xFFFFFFF8;
        }

        if ((a4[50] & 0x40) == 0)
        {
          v107 = (v107 + 7) & 0x1FFF8;
        }

        v264 = v108 + v107;
        v271 = 1;
        v38 = 1;
        v261 = 1;
      }

      else
      {
        v264 = 0;
        v271 = 0;
        v261 = 0;
        v38 = 1;
      }
    }
  }

  else
  {
    v264 = 0;
    v271 = 0;
    v38 = 0;
    v261 = 0;
  }

  v266 = a13;
  v269 = a4;
  v257 = a2;
  v253 = a7;
  if (v25)
  {
    v39 = sub_10004804C(a4);
    v40 = v277[1];
    if (!v40)
    {
      v40 = *(*v277 + 392);
    }

    v41 = sub_100048044(a4);
    v36 = sub_1000244B4(v40, v39 & 0xFFFFFC00, v41, v284, a13, &v283);
    if (v36)
    {
      return v36;
    }

    v43 = v277;
    atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
    sub_10004C7D8(v43, a13, 0);
    v26 = v270;
    if ((v43[50] & 2) != 0 || v277[54] == a4[14])
    {
      v44 = a4[7];
      if (*(v44 + 36) == v272)
      {
        v45 = 0;
        v46 = v272;
        v47 = v272 + ((*(v44 + 32) >> 1) & 1) - 1;
        v271 = 1;
        v274 = 1;
        goto LABEL_142;
      }
    }
  }

  v48 = a4[7];
  v49 = *(v48 + 32);
  v259 = sub_10001ABEC(a4, 0);
  if ((v49 & 4) != 0)
  {
    v50 = 2;
  }

  else
  {
    v50 = 3;
  }

  v47 = *(v48 + 36);
  if (((v47 - 1) & 0x8000) != 0)
  {
    v276 = v26;
LABEL_121:
    v274 = v25;
    v45 = 0;
LABEL_141:
    v271 = v276 == 0;
    a2 = v257;
    a7 = v253;
    v46 = v272;
    goto LABEL_142;
  }

  v51 = v260 + a11;
  v250 = v38 + v272;
  v52 = (v47 - 1);
  v53 = v26;
  v54 = v283;
  LODWORD(v268) = sub_100025FE8(v283);
  v55 = sub_10001ABEC(v54, 0);
  *(&v272 + 1) = v50;
  v265 = v55 << v50;
  v258 = sub_100025FE8(a4);
  LOWORD(v50) = 0;
  LODWORD(v267) = 0;
  DWORD1(v272) = 0;
  v255 = v261 ^ 1;
  v249 = v51;
  v276 = v53;
  v248 = v51;
  LODWORD(v275) = v51;
  v56 = v271;
  while (1)
  {
    v57 = v20;
    v262 = v47;
    v58 = v276;
    v59 = v276 - v56;
    v60 = sub_10001ABEC(a4, (v276 - v56));
    v61 = v258 + v264 + ((v259 - v60) << SBYTE8(v272));
    v62 = v275;
    v263 = (v258 + v264 + ((v259 - v60) << SBYTE8(v272)) - v275);
    v274 = v25;
    v271 = v56;
    if (((v61 >= v275) & v273) == 1)
    {
      v63 = *(a4[7] + 36) - v56 + v58;
      if (v63 >= sub_10001ABEC(a4, 0))
      {
        goto LABEL_48;
      }
    }

    else if (v61 < v275)
    {
LABEL_48:
      v64 = v267;
      goto LABEL_57;
    }

    if ((v25 & 1) == 0)
    {
      v20 = v57;
LABEL_140:
      v45 = 0;
      LOWORD(v47) = v52 + 1;
      goto LABEL_141;
    }

    v20 = v57;
    v64 = v267;
    if ((v277[50] & 2) != 0 || v277[54] == a4[14])
    {
      if ((*(a4[7] + 32) & 2) != 0)
      {
        goto LABEL_140;
      }

      if (!v52)
      {
        goto LABEL_140;
      }

      if ((v267 + *(*(v54 + 56) + 36)) > 1u)
      {
        goto LABEL_140;
      }

      v65 = sub_10001ABEC(v54, v267);
      v66 = v268 + v265 + v50 - (v65 << SBYTE8(v272));
      if (v263 >= (v66 + ((v66 >> 29) & 3)) >> 2)
      {
        goto LABEL_140;
      }
    }

    else if (v273)
    {
      if (!v52 || (v59 + *(a4[7] + 36)) <= (v267 + *(*(v54 + 56) + 36)))
      {
        goto LABEL_140;
      }
    }

    else
    {
      v105 = sub_10001ABEC(v54, v267);
      if (!v52 || v263 >= (v268 + v265 + v50 - (v105 << SBYTE8(v272))))
      {
        goto LABEL_140;
      }
    }

LABEL_57:
    v67 = a4[7];
    v68 = *(v67 + 32);
    if ((v68 & 2) == 0 || v255 + v52 != v272)
    {
      v267 = a4[7];
      v82 = v276;
      goto LABEL_83;
    }

    v69 = v270;
    v70 = v64 + v270;
    v71 = sub_10001ABEC(v54, (v64 + v270));
    v72 = (v71 << SBYTE8(v272)) - v265;
    v73 = v260 + WORD2(v272) + ((v71 << SBYTE8(v272)) - v265);
    if (((v73 <= v268) & v273) == 1)
    {
      v74 = v69 + v64 + *(*(v54 + 56) + 36);
      v75 = v74 >= sub_10001ABEC(v54, 0);
      a4 = v269;
      if (v75)
      {
        goto LABEL_62;
      }
    }

    else if (v73 > v268)
    {
LABEL_62:
      if ((v274 & 1) == 0)
      {
        v76 = sub_10004804C(a4);
        sub_10004BE88(v54, 2);
        sub_100046D50(v54);
        v283 = 0;
        v77 = v277[1];
        if (!v77)
        {
          v77 = *(*v277 + 392);
        }

        v78 = sub_100048044(a4);
        v79 = v77;
        v20 = v266;
        v36 = sub_1000244B4(v79, v76 & 0xFFFFFC00, v78, v284, v266, &v283);
        v56 = v271;
        v80 = BYTE8(v272);
        if (v36)
        {
          return v36;
        }

        v81 = v277;
        v25 = 1;
        atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
        sub_10004C7D8(v81, v20, 0);
        v54 = v283;
        v265 = sub_10001ABEC(v283, 0) << v80;
        LODWORD(v268) = sub_100025FE8(v54);
        goto LABEL_109;
      }

      if (v261)
      {
        v52 = v262 - 2;
      }

      if (v263 < 0)
      {
        v47 = v52 + 1;
        v210 = v276 == 0;
        v45 = 2843;
        a2 = v257;
        a7 = v253;
        v46 = v272;
        goto LABEL_280;
      }

LABEL_124:
      v274 = 1;
      goto LABEL_139;
    }

    v267 = v67;
    v82 = v276 - v270;
    if ((v274 & 1) == 0)
    {
      v276 -= v270;
      v274 = 0;
      if (v261)
      {
        LOWORD(v52) = v262 - 2;
      }

LABEL_139:
      v20 = v266;
      goto LABEL_140;
    }

    if ((v277[50] & 2) != 0 || v277[54] == a4[14])
    {
LABEL_122:
      v276 -= v270;
      if (v261)
      {
        LOWORD(v52) = v262 - 2;
      }

      goto LABEL_124;
    }

    LODWORD(v275) = v275 - v248;
    DWORD1(v272) += v248;
    if (v273)
    {
      if (!v52 || (v82 - v271 + *(v267 + 36)) <= (v70 + *(*(v54 + 56) + 36)))
      {
        goto LABEL_122;
      }
    }

    else if (!v52 || v263 >= (v268 - WORD2(v272) - v72))
    {
      goto LABEL_122;
    }

    v64 = (v64 + v69);
    v62 = v275;
LABEL_83:
    LODWORD(v275) = v62;
    if ((v68 & 4) != 0)
    {
      v85 = a4[50];
      v83 = a4;
      v84 = (v85 >> 9) & 0x3FFF;
    }

    else
    {
      v83 = a4;
      v84 = *(a4[47] + 8 * v52 + 2);
      v85 = *(v83 + 400);
    }

    v279 = v84;
    v86 = sub_10001AD08(v83, v52);
    if (v86 == 65534)
    {
      v87 = 0;
    }

    else
    {
      v87 = v86;
    }

    v278 = v87;
    v88 = (v84 + 7) & 0x1FFF8;
    if ((v85 & 0x40) != 0)
    {
      v88 = v84;
    }

    else
    {
      v87 = (v87 + 7) & 0x1FFF8;
    }

    v89 = v261;
    if (v52 != v272)
    {
      v89 = 0;
    }

    if ((v89 & 1) == 0)
    {
      break;
    }

    LODWORD(v267) = v64;
    v276 = v82;
    v52 = v272;
    v20 = v266;
    a4 = v269;
    v25 = v274;
    v56 = v271;
LABEL_115:
    v47 = v52;
    LODWORD(v50) = -DWORD1(v272);
    v104 = v52 - 1;
    v52 = (v52 - 1);
    if (v104 < 0)
    {
      goto LABEL_121;
    }
  }

  v90 = v88 + v87;
  if (v82 != 0 && v250 > v52)
  {
    v91 = v270;
  }

  else
  {
    v91 = 0;
  }

  if (v82 != 0 && v250 > v52)
  {
    v92 = v249;
  }

  else
  {
    v92 = 0;
  }

  v93 = (v64 + v91 + 1);
  v94 = sub_10001ABEC(v54, v93);
  v95 = v92 + WORD2(v272) + v90 + ((v94 << SBYTE8(v272)) - v265);
  if (((v95 <= v268) & v273) == 1)
  {
    v96 = v91 + v64 + *(*(v54 + 56) + 36) + 1;
    if (v96 < sub_10001ABEC(v54, 0))
    {
      goto LABEL_111;
    }
  }

  else if (v95 <= v268)
  {
LABEL_111:
    DWORD1(v272) += v92 + v90;
    v276 = v82 - v91;
    if (v91)
    {
      v103 = v92;
    }

    else
    {
      v103 = 0;
    }

    LODWORD(v275) = v275 - v103;
    v56 = v271 + 1;
    v264 += v90;
    LODWORD(v267) = v93;
    v20 = v266;
    a4 = v269;
    v25 = v274;
    goto LABEL_115;
  }

  v276 = v82;
  if ((v274 & 1) == 0)
  {
    LODWORD(v267) = v64;
    a4 = v269;
    v97 = sub_10004804C(v269);
    sub_10004BE88(v54, 2);
    sub_100046D50(v54);
    v283 = 0;
    v98 = v277[1];
    v99 = BYTE8(v272);
    if (!v98)
    {
      v98 = *(*v277 + 392);
    }

    v100 = sub_100048044(a4);
    v101 = v98;
    v20 = v266;
    v36 = sub_1000244B4(v101, v97 & 0xFFFFFC00, v100, v284, v266, &v283);
    v56 = v271;
    if (v36)
    {
      return v36;
    }

    v102 = v277;
    atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
    sub_10004C7D8(v102, v20, 0);
    v54 = v283;
    v265 = sub_10001ABEC(v283, 0) << v99;
    LODWORD(v268) = sub_100025FE8(v54);
    v25 = 1;
LABEL_109:
    v52 = v262;
    goto LABEL_115;
  }

  a4 = v269;
  if ((v263 & 0x80000000) == 0)
  {
    v25 = 1;
    v20 = v266;
    LOWORD(v47) = v262;
    goto LABEL_121;
  }

  v210 = v82 == 0;
  v47 = v262;
  v45 = 2917;
  if (v262 > 1)
  {
    a2 = v257;
    a7 = v253;
    v46 = v272;
    v67 = v267;
LABEL_280:
    v271 = v210;
    if (*(v67 + 36) == v47 && v54)
    {
      v274 = 0;
      v281 = v54;
      v283 = 0;
      goto LABEL_312;
    }

    v262 = v47;
    v218 = sub_10004804C(a4);
    v219 = v277[1];
    v20 = v266;
    if (!v219)
    {
      v219 = *(*v277 + 392);
    }

    v220 = sub_100048044(a4);
    v221 = sub_1000244B4(v219, v218 & 0xFFFFFC00, v220, v284, v20, &v281);
    if (!v221)
    {
      v246 = v277;
      atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
      sub_10004C7D8(v246, v20, 0);
      v274 = 1;
      v46 = v272;
      a2 = v257;
      a7 = v253;
      LOWORD(v47) = v262;
      goto LABEL_142;
    }

    v42 = v221;
    v275 = 0;
    v273 = 0;
    *(&v272 + 4) = 0;
    LODWORD(v115) = 0;
    LOWORD(v116) = 0;
    v117 = 0;
    v276 = 0;
    v118 = 0;
    LODWORD(v272) = 0;
    v119 = 0;
    v160 = 1;
    goto LABEL_296;
  }

  a2 = v257;
  a7 = v253;
  v46 = v272;
  v67 = v267;
  if ((v68 & 2) != 0)
  {
    goto LABEL_280;
  }

  v271 = v210;
  v45 = 0;
  v274 = 1;
LABEL_312:
  v20 = v266;
LABEL_142:
  if (!a2 && (v45 != 0) | v274 & 1)
  {
    v109 = v45;
    v110 = v47;
    v111 = sub_10004804C(a4);
    v112 = v277[1];
    if (!v112)
    {
      v112 = *(*v277 + 392);
    }

    v113 = sub_100048044(a4);
    v114 = sub_1000244B4(v112, v111 & 0xFFFFFC00, v113, v284, v20, &v282);
    if (v114)
    {
      v42 = v114;
      v275 = 0;
      v273 = 0;
      *(&v272 + 4) = 0;
      LODWORD(v115) = 0;
      LOWORD(v116) = 0;
      v117 = 0;
      v276 = 0;
      v118 = 0;
      LODWORD(v272) = 0;
      v119 = 0;
      v257 = 0;
      goto LABEL_195;
    }

    v120 = v277;
    atomic_fetch_add_explicit((v277[49] + 32), 1uLL, memory_order_relaxed);
    sub_10004C7D8(v120, v20, 0);
    LOWORD(v47) = v110;
    v45 = v109;
  }

  v121 = v47;
  if (v46 >= v47)
  {
    v122 = v261;
  }

  else
  {
    v122 = 0;
  }

  v123 = a4[7];
  v276 = v122;
  if (v122 != 1)
  {
    v275 = 0;
    v131 = 0;
    v125 = 0;
    DWORD1(v272) = 0;
    goto LABEL_158;
  }

  v124 = *(v123 + 36);
  v125 = v124 + ~v46;
  v126 = (v124 + ~v46);
  if (v126 < 1)
  {
    goto LABEL_175;
  }

  v127 = v283;
  v128 = sub_1000269AC(a4, v283, v126, v20);
  if (!v128)
  {
    if ((v274 & 1) == 0)
    {
      v209 = sub_10001AD80(v127, 0, &v280[3], &v279);
      if (v209)
      {
        v42 = v209;
        DWORD2(v272) = v125;
        v138 = v256;
      }

      else
      {
        v138 = v256;
        v215 = sub_10001D1CC(a2, (v256 + 1), *&v280[3], v279, 0);
        if (!v215)
        {
          DWORD1(v272) = 1;
          goto LABEL_176;
        }

        v42 = v215;
        DWORD2(v272) = v125;
      }

      v216 = v277[1];
      if (v216)
      {
        v217 = (v216 + 4040);
      }

      else
      {
        v217 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3031, v217, v42);
      v160 = 0;
      v275 = 0;
      v273 = 0;
      LODWORD(v115) = 0;
      LOWORD(v116) = 0;
      v117 = 0;
      *&v272 = 0;
      v276 = 0;
      v118 = 0;
      goto LABEL_305;
    }

LABEL_175:
    DWORD1(v272) = 0;
    v138 = v256;
LABEL_176:
    v150 = sub_10001AE98(a4, v46, &v280[1], &v278);
    if (v150)
    {
      v42 = v150;
      DWORD2(v272) = v125;
      v275 = 0;
      v273 = 0;
      LODWORD(v115) = 0;
      LOWORD(v116) = 0;
      v117 = 0;
      v276 = 0;
      v118 = 0;
      LODWORD(v272) = 0;
      v119 = 0;
      goto LABEL_196;
    }

    v275 = 0;
    if (v278)
    {
      v131 = v278;
      if (v278 != 65534)
      {
        v159 = sub_10003FB98(v278, 0xC5E0E89uLL);
        if (!v159)
        {
          DWORD2(v272) = v125;
          v275 = 0;
          v273 = 0;
          LODWORD(v115) = 0;
          LOWORD(v116) = 0;
          v117 = 0;
          v276 = 0;
          v118 = 0;
          LODWORD(v272) = 0;
          v119 = 0;
          v42 = 12;
          goto LABEL_196;
        }

        v275 = v159;
        memcpy(v159, *&v280[1], v278);
        v131 = v278;
      }
    }

    else
    {
      v131 = 0;
    }

    sub_100022060(a4, v272, v20);
    v211 = v277;
    atomic_fetch_add_explicit((v277[49] + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_10004C7D8(v211, v20, 0);
    v123 = a4[7];
LABEL_158:
    v273 = v131;
    v132 = *(v123 + 36) - v121;
    v115 = v132;
    DWORD2(v272) = v125;
    if (v115 < 1)
    {
      v270 = 0;
    }

    else
    {
      v133 = v283;
      v134 = sub_1000269AC(v269, v283, v132, v20);
      if (v134)
      {
        v42 = v134;
        v135 = v277[1];
        if (v135)
        {
          v136 = (v135 + 4040);
        }

        else
        {
          v136 = (*(*(*v277 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3068, v136, v115, v134);
        LODWORD(v115) = 0;
        LOWORD(v116) = 0;
        v117 = 0;
        goto LABEL_194;
      }

      v145 = v254;
      v146 = v274;
      if ((v274 & 1) == 0)
      {
        v203 = sub_10001AD80(v133, 0, &v280[3], &v279);
        if (v203 || (v203 = sub_10001D1CC(a2, (v256 + 1), *&v280[3], v279, 0), v146 = v274, v203))
        {
          v42 = v203;
          v204 = v277[1];
          if (v204)
          {
            v205 = (v204 + 4040);
          }

          else
          {
            v205 = (*(*(*v277 + 392) + 384) + 212);
          }

          sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3076, v205, v203);
          v160 = 0;
          LOWORD(v116) = 0;
          v117 = 0;
          v118 = 0;
          LODWORD(v272) = 0;
          v119 = 0;
LABEL_296:
          v138 = v256;
          goto LABEL_197;
        }
      }

      v270 = v146 ^ 1;
      if (a2 && !*(v269[7] + 36))
      {
        v138 = v256;
        v147 = sub_10001D1CC(a2, v256, v145, a7, 0);
        if (v147)
        {
          v42 = v147;
          v148 = v277[1];
          if (v148)
          {
            v149 = (v148 + 4040);
          }

          else
          {
            v149 = (*(*(*v277 + 392) + 384) + 212);
          }

          sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_shift_or_split", 3087, v149, v147);
          LOWORD(v116) = 0;
          v117 = 0;
          LODWORD(v272) = 0;
          v119 = 0;
          goto LABEL_370;
        }

        v137 = 1;
LABEL_164:
        v139 = v282;
        LODWORD(v272) = v137;
        if (v282)
        {
          v268 = v115;
          v140 = v269;
          v141 = v269[7];
          v116 = *(v141 + 36);
          v142 = sub_1000269AC(v282, v269, -*(v141 + 36), v20);
          if (v142)
          {
            v42 = v142;
            v143 = v277[1];
            if (v143)
            {
              v144 = (v143 + 4040);
            }

            else
            {
              v144 = (*(*(*v277 + 392) + 384) + 212);
            }

            sub_10003E5FC("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3103, v144, -v116, v142);
            LOWORD(v116) = 0;
            v117 = 0;
            v119 = 0;
            v160 = v274;
            LODWORD(v115) = v268;
            goto LABEL_371;
          }

          sub_100026F14(v140, (*(v140[7] + 34) + 1), v20);
          if (*(*(v139 + 56) + 36))
          {
            v206 = sub_10001AD80(v139, 0, &v280[3], &v279);
            if (v206)
            {
LABEL_291:
              v42 = v206;
              v213 = v277[1];
              v160 = v274;
              LODWORD(v115) = v268;
              v118 = v270;
              if (v213)
              {
                v214 = (v213 + 4040);
              }

              else
              {
                v214 = (*(*(*v277 + 392) + 384) + 212);
              }

              sub_10003E5FC("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3126, v214, v206);
              v117 = 0;
LABEL_305:
              v119 = 0;
              goto LABEL_197;
            }

            v207 = *&v280[3];
            v208 = v279;
          }

          else
          {
            v207 = v254;
            *&v280[3] = v254;
            v208 = v253;
            v279 = v253;
          }

          v212 = v252;
          *v252 = *(v139 + 112);
          v115 = v269;
          v206 = sub_1000203B4(v269, v207, v208, v212, (*(v269 + 407) & 0x7Fu) + 8, v20, 0, 0);
          if (v206)
          {
            goto LABEL_291;
          }

          v257 = v115;
          LODWORD(v115) = v268;
        }

        else
        {
          LOWORD(v116) = 0;
        }

        if (v274)
        {
          v151 = v115;
          v152 = v138;
          v153 = v283;
          if (v283)
          {
            v154 = v283[7];
            if (*(v154 + 36))
            {
              v155 = sub_10001AD80(v283, 0, &v280[3], &v279);
              if (v155 || (v156 = v252, *v252 = v153[14], v155 = sub_1000203B4(v257, *&v280[3], v279, v156, (*(v257 + 407) & 0x7Fu) + 8, v20, 0, 0), v155))
              {
                v42 = v155;
                v138 = v152;
                v157 = v277[1];
                LODWORD(v115) = v151;
                v118 = v270;
                if (v157)
                {
                  v158 = (v157 + 4040);
                }

                else
                {
                  v158 = (*(*(*v277 + 392) + 384) + 212);
                }

                sub_10003E5FC("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3142, v158, v155);
                v117 = 0;
                v119 = 0;
                v160 = 1;
                goto LABEL_197;
              }

              v119 = 1;
            }

            else
            {
              if ((*(v154 + 32) & 2) != 0)
              {
                v281 = v283;
                v45 = 1;
              }

              else
              {
                atomic_fetch_add_explicit((v277[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
                sub_100049B88(v153, v20);
                sub_10004BE88(v153, 2);
                sub_100046D50(v153);
              }

              v119 = 0;
              v283 = 0;
            }
          }

          else
          {
            v119 = 0;
          }

          v138 = v152;
          LODWORD(v115) = v151;
        }

        else
        {
          v119 = 0;
        }

        if (v45)
        {
          v222 = v138;
          if (v139)
          {
            v223 = v139;
          }

          else
          {
            v223 = v269;
          }

          if ((*(v223[7] + 32) & 2) != 0)
          {
            v117 = 0;
            *&v280[3] = v254;
            v235 = v253;
            v279 = v253;
            v236 = v254;
            v224 = v281;
          }

          else
          {
            v224 = v281;
            v225 = sub_1000269AC(v223, v281, 1, v20);
            if (v225)
            {
              v42 = v225;
              v226 = v277[1];
              if (v226)
              {
                v227 = (v226 + 4040);
              }

              else
              {
                v227 = (*(*(*v277 + 392) + 384) + 212);
              }

              sub_10003E5FC("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3169, v227, 1, v225);
LABEL_368:
              v117 = 0;
LABEL_369:
              v138 = v222;
LABEL_370:
              v160 = v274;
LABEL_371:
              v118 = v270;
              goto LABEL_197;
            }

            v241 = sub_10001AD80(v224, 0, &v280[3], &v279);
            if (v241)
            {
              v42 = v241;
              v242 = v277[1];
              if (v242)
              {
                v243 = (v242 + 4040);
              }

              else
              {
                v243 = (*(*(*v277 + 392) + 384) + 212);
              }

              sub_10003E5FC("%s:%d: %s failed to get newnode minkey: %d\n", "bt_shift_or_split", 3174, v243, v241);
              goto LABEL_368;
            }

            v236 = *&v280[3];
            v117 = 1;
            v235 = v279;
          }

          v237 = v252;
          *v252 = *(v224 + 112);
          v238 = sub_1000203B4(v257, v236, v235, v237, (*(v257 + 407) & 0x7Fu) + 8, v266, 0, 0);
          if (v238)
          {
            v42 = v238;
            v239 = v277[1];
            if (v239)
            {
              v240 = (v239 + 4040);
            }

            else
            {
              v240 = (*(*(*v277 + 392) + 384) + 212);
            }

            sub_10003E5FC("%s:%d: %s btree_node_insert failed: %d\n", "bt_shift_or_split", 3186, v240, v238);
            goto LABEL_369;
          }

          v228 = v283;
          v283 = v224;
          v229 = v277;
          v230 = v269;
          v231 = v257;
          v234 = v251;
          v233 = v273;
        }

        else
        {
          if (v271)
          {
            v228 = 0;
            v229 = v277;
            v230 = v269;
            v231 = v257;
            v233 = v273;
            v232 = v274;
            v234 = v251;
          }

          else
          {
            v228 = v283;
            v229 = v277;
            v230 = v269;
            v231 = v257;
            v233 = v273;
            v232 = v274;
            v234 = v251;
            if (v139)
            {
              v283 = v139;
            }

            else
            {
              v283 = 0;
            }
          }

          if ((v232 & 1) == 0)
          {
            goto LABEL_351;
          }
        }

        sub_100026FD8(v229, v231, v230);
LABEL_351:
        if (v275)
        {
          sub_10003FB5C(v275, v233);
        }

        if (v228)
        {
          sub_10004BE88(v228, 2);
          sub_100046D50(v228);
        }

        v244 = v282;
        v245 = v283;
        if (v282 && v283 != v282)
        {
          sub_10004BE88(v282, 2);
          sub_100046D50(v244);
        }

        v42 = 0;
        *v234 = v245;
        return v42;
      }
    }

    v137 = 0;
    v138 = v256;
    goto LABEL_164;
  }

  v42 = v128;
  v129 = v277[1];
  if (v129)
  {
    v130 = (v129 + 4040);
  }

  else
  {
    v130 = (*(*(*v277 + 392) + 384) + 212);
  }

  sub_10003E5FC("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3023, v130, 0, v128);
  v275 = 0;
  v273 = 0;
  *(&v272 + 4) = 0;
  LODWORD(v115) = 0;
  LOWORD(v116) = 0;
  v117 = 0;
  v276 = 0;
LABEL_194:
  v118 = 0;
  LODWORD(v272) = 0;
  v119 = 0;
LABEL_195:
  v138 = v256;
LABEL_196:
  v160 = v274;
LABEL_197:
  v161 = v277[1];
  if (v161)
  {
    v162 = (v161 + 4040);
  }

  else
  {
    v162 = (*(*(*v277 + 392) + 384) + 212);
  }

  sub_10003E5FC("%s:%d: %s reverting on error: %d\n", "bt_shift_or_split", 3222, v162, v42);
  if (v119)
  {
    sub_100022060(v257, (v138 + 1), v266);
  }

  v163 = v275;
  if (v117)
  {
    v164 = sub_1000269AC(v269, v281, -1, v266);
    v42 = v164;
    if (v164)
    {
      v165 = v277[1];
      if (v165)
      {
        v166 = (v165 + 4040);
      }

      else
      {
        v166 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s bt_move_entries %d failed: %d\n", "bt_shift_or_split", 3229, v166, -1, v164);
    }
  }

  v167 = v116;
  v168 = v266;
  v169 = v257;
  if (v167 >= 1)
  {
    v170 = v118;
    v171 = v115;
    v172 = v269;
    sub_100026F14(v269, (*(v269[7] + 34) - 1), v266);
    v173 = sub_1000269AC(v282, v172, v167, v168);
    if (v173)
    {
      v174 = v277[1];
      if (v174)
      {
        v175 = (v174 + 4040);
      }

      else
      {
        v175 = (*(*(*v277 + 392) + 384) + 212);
      }

      LODWORD(v115) = v171;
      sub_10003E5FC("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3239, v175, v173, v42);
      v169 = 0;
    }

    else
    {
      v169 = 0;
      LODWORD(v115) = v171;
    }

    v118 = v170;
  }

  if (v115 >= 1)
  {
    v176 = v283;
    v177 = sub_1000269AC(v269, v283, -v115, v168);
    if (v177)
    {
      v178 = v277[1];
      if (v178)
      {
        v179 = (v178 + 4040);
      }

      else
      {
        v179 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3246, v179, v177, v42);
    }

    if (!(v160 & 1 | ((v118 & 1) == 0)))
    {
      v180 = sub_10001AD80(v176, 0, &v280[3], &v279);
      if (v180 || (v180 = sub_10001D1CC(v169, (v256 + 1), *&v280[3], v279, 0)) != 0)
      {
        v181 = v277[1];
        if (v181)
        {
          v182 = (v181 + 4040);
        }

        else
        {
          v182 = (*(*(*v277 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3254, v182, v180, v42);
      }
    }

    if (v272)
    {
      v183 = sub_10001AD80(v269, 0, &v280[3], &v279);
      if (v183 || (v183 = sub_10001D1CC(v169, v256, *&v280[3], v279, 0)) != 0)
      {
        v184 = v277[1];
        if (v184)
        {
          v185 = (v184 + 4040);
        }

        else
        {
          v185 = (*(*(*v277 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3263, v185, v183, v42);
      }
    }
  }

  v186 = v269;
  v187 = v273;
  if (v276)
  {
    v188 = sub_1000203B4(v269, v254, v253, v163, v273, v168, 0, 0);
    if (v188)
    {
      v189 = v277[1];
      if (v189)
      {
        v190 = (v189 + 4040);
      }

      else
      {
        v190 = (*(*(*v277 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s btree_node_insert() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3270, v190, v188, v42);
    }

    if (v163)
    {
      sub_10003FB5C(v163, v187);
    }
  }

  v191 = v277;
  if (SWORD4(v272) >= 1)
  {
    v192 = v283;
    v193 = sub_1000269AC(v186, v283, -WORD4(v272), v168);
    if (v193)
    {
      v194 = v191[1];
      if (v194)
      {
        v195 = (v194 + 4040);
      }

      else
      {
        v195 = (*(*(*v191 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s bt_move_entries() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3279, v195, v193, v42);
    }

    if (!(v160 & 1 | ((BYTE4(v272) & 1) == 0)))
    {
      v196 = sub_10001AD80(v192, 0, &v280[3], &v279);
      if (v196 || (v196 = sub_10001D1CC(v169, (v256 + 1), *&v280[3], v279, 0)) != 0)
      {
        v197 = v191[1];
        if (v197)
        {
          v198 = (v197 + 4040);
        }

        else
        {
          v198 = (*(*(*v191 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s btree_node_key_update() failed (%d) while trying to revert changes due to error: %d\n", "bt_shift_or_split", 3287, v198, v196, v42);
      }
    }
  }

  v199 = v283;
  if (v283)
  {
    if (!*(v283[7] + 36))
    {
      atomic_fetch_add_explicit((v191[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      sub_100049B88(v199, v168);
    }

    sub_10004BE88(v199, 2);
    sub_100046D50(v199);
  }

  v200 = v281;
  if (v281)
  {
    atomic_fetch_add_explicit((v191[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_100049B88(v200, v168);
    sub_10004BE88(v200, 2);
    sub_100046D50(v200);
  }

  v201 = v282;
  if (v282)
  {
    atomic_fetch_add_explicit((v191[49] + 32), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    sub_100049B88(v201, v168);
    sub_10004BE88(v201, 2);
    sub_100046D50(v201);
  }

  return v42;
}

uint64_t sub_1000203B4(void *a1, unint64_t *a2, size_t a3, void *a4, unsigned int a5, uint64_t a6, unsigned __int16 *a7, char *a8)
{
  v16 = a1[50];
  __chkstk_darwin();
  v18 = &v24[-v17];
  bzero(&v24[-v17], v19);
  v26 = -21846;
  v25 = -86;
  result = sub_10001CFF8(a1, a2, a3, &v26, &v25);
  if (!result)
  {
    if (a8)
    {
      *a8 = v25;
    }

    if (a7)
    {
      *a7 = v26;
    }

    if ((*(a1[7] + 32) & 0xA) != 8)
    {
      goto LABEL_9;
    }

    v21 = a1[51];
    if (*a4 > v21)
    {
      *v18 = *a4 - v21;
      a4 = v18;
LABEL_9:
      if (v25 == 1)
      {
        return sub_10001D1CC(a1, v26, a2, a3, a4);
      }

      else
      {
        return sub_10001DB30(a1, v26, a2, a3, a4, a5, a6);
      }
    }

    v22 = a1[1];
    if (v22)
    {
      v23 = (v22 + 4040);
    }

    else
    {
      v23 = (*(*(*a1 + 392) + 384) + 212);
    }

    sub_10003E5FC("%s:%d: %s invalid relative OID: %llu < root OID: %llu\n", "btree_node_insert", 2273, v23, *a4, v21);
    return 22;
  }

  return result;
}

uint64_t sub_100020594(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, void *a5, unsigned int a6, unint64_t a7, uint64_t *a8)
{
  v44 = a3;
  v15 = a1[50];
  __chkstk_darwin(a1);
  v17 = (&v41 - v16);
  bzero(&v41 - v16, v18);
  v50 = 0;
  v49 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v19 = sub_10001A12C(a1, a4, a6);
  if (v19)
  {
    return v19;
  }

  v19 = sub_10004B964(a1, (v15 >> 3) & 2, a7);
  if (v19)
  {
    return v19;
  }

  v22 = a1[49];
  v23 = *(v22 + 16) < a4 || *(v22 + 20) < a6;
  v43 = v23;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v48 = -86;
  v41 = a5;
  v42 = a8;
  if (a8)
  {
    v24 = *a8;
    if (*a8)
    {
      if (a8[1] == a1 && ((v43 | ((a1[50] & 0x10) >> 4)) & 1) == 0)
      {
        *v17 = v24;
        if (v24 != sub_100047D10(a1) && !sub_10001A958(a1, v17, a2, (a7 != 0) | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, a7, &v51))
        {
          v25 = v51;
          if (*(v51[7] + 32) & 2) != 0 && !sub_10001DFA8(v51, v44, a4, &v49, &v48) && (v48)
          {
            if ((*(v25[7] + 32) & 2) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_45;
          }

          sub_10004BE88(v25, 2);
          sub_100046D50(v25);
        }
      }
    }
  }

  v20 = 2;
  sub_10004B8D4(a1, 2);
  sub_10004C19C(a1);
  v27 = a1 + 7;
  v26 = a1[7];
  if ((*(v26 + 32) & 2) == 0)
  {
    v28 = 0;
    v29 = 2;
    v25 = a1;
    while (1)
    {
      if (!*(v26 + 36))
      {
        v20 = v29;
        goto LABEL_40;
      }

      v30 = sub_10001CFF8(v25, v44, a4, &v49, &v48);
      if (v30)
      {
        goto LABEL_57;
      }

      v31 = v49;
      if ((v48 & 1) == 0 && v49)
      {
        v31 = --v49;
      }

      v30 = sub_10001B084(v25, v31, v17);
      if (v30 || (v30 = sub_10001A958(a1, v17, a2, 3u, *(*v27 + 34) - 1, a7, &v50), v30))
      {
LABEL_57:
        v20 = v30;
        v51 = v25;
        goto LABEL_62;
      }

      if ((a1[50] & 0x10) != 0 && v50[14] != *v17)
      {
        sub_10001DFEC(v25, v31, v50 + 14, a7);
      }

      if (v25 != a1 || !v43)
      {
        sub_10004BE88(v25, 2);
        sub_100046D50(v25);
      }

      v25 = v50;
      if (!v50)
      {
        break;
      }

      v29 = 0;
      v20 = 0;
      v27 = v50 + 7;
      v26 = v50[7];
      v28 = 1;
      if ((*(v26 + 32) & 2) != 0)
      {
        goto LABEL_40;
      }
    }

    v51 = 0;
    goto LABEL_60;
  }

  v28 = 0;
  v25 = a1;
LABEL_40:
  v51 = v25;
  if ((*(v25[7] + 32) & 2) == 0)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v20 = sub_10001DFA8(v25, v44, a4, &v49, &v48);
  if (!v20)
  {
    if (v48 != 1)
    {
LABEL_60:
      v20 = 2;
      goto LABEL_61;
    }

LABEL_45:
    v47 = 0xAAAAAAAAAAAAAAAALL;
    v46 = 0;
    v45 = -21846;
    v32 = v49;
    v33 = sub_10001AD80(v25, v49, &v47, &v45);
    v35 = v41;
    v34 = v42;
    if (!v33)
    {
      v36 = v47;
      v37 = a1[1];
      if (!v37)
      {
        v37 = *(*a1 + 392);
      }

      if (!(a1[52])(v37, v47, v45, v44, a4, &v46) && v46)
      {
        panic("you can't change a key here!  (ekey %p eklen %d; key %p klen %d; n %p bt %p)\n", v36, v45, v44, a4, v25, a1);
      }
    }

    v20 = sub_10001D1CC(v25, v32, v44, a4, v35, a6, a7);
    if (v20)
    {
      goto LABEL_61;
    }

    v38 = a1[49];
    v39 = *(v38 + 16);
    if (v39 < a4)
    {
      *(v38 + 16) = a4;
    }

    if (*(v38 + 20) >= a6)
    {
      if (v39 >= a4 && (a1[50] & 0x80) == 0)
      {
LABEL_69:
        if (v34)
        {
          *v34 = sub_100047D10(v25);
          v34[1] = a1;
        }

        goto LABEL_61;
      }
    }

    else
    {
      *(v38 + 20) = a6;
    }

    sub_10004C7D8(a1, a7, 0);
    goto LABEL_69;
  }

LABEL_61:
  v25 = v51;
  if (v51)
  {
LABEL_62:
    sub_10004BE88(v25, 2);
    sub_100046D50(v25);
  }

  v40 = !v43;
  if (v25 == a1)
  {
    v40 = 1;
  }

  if ((v40 & 1) == 0)
  {
    sub_10004BE88(a1, 2);
    sub_100046D50(a1);
  }

  return v20;
}

uint64_t sub_100020AD8(void *a1, uint64_t a2, unint64_t *a3, unsigned int a4, uint64_t a5, unsigned int a6, int a7, unint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v35 = a3;
  v17 = a1[50];
  __chkstk_darwin(a1);
  v19 = (&v31 - v18);
  bzero(&v31 - v18, v20);
  v38 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v33 = a5;
  v34 = a7;
  v21 = sub_10001A12C(a1, a4, a6);
  if (!v21)
  {
    sub_10004B8D4(a1, 2);
    v22 = sub_10004B964(a1, (*(a1 + 100) >> 3) & 2, a8);
    if (v22)
    {
      v21 = v22;
      sub_10004BE88(a1, 2);
    }

    else
    {
      v31 = a9;
      v32 = a10;
      v37 = -21846;
      v36 = -86;
      sub_10004C19C(a1);
      v24 = 0;
      v25 = 2;
      v26 = a1;
      while (1)
      {
        v27 = v26;
        v28 = v26[7];
        if ((*(v28 + 32) & 2) != 0)
        {
          v25 = sub_10001DFA8(v26, v35, a4, &v37, &v36);
          if (v25)
          {
            goto LABEL_27;
          }

          if (v36 == 1)
          {
            v25 = sub_100020E0C(v26, v37, v35, a4, v33, a6, v34, a8, v31, v32);
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        if (!*(v28 + 36))
        {
          break;
        }

        v29 = sub_10001CFF8(v26, v35, a4, &v37, &v36);
        if (v29)
        {
          goto LABEL_21;
        }

        v30 = v37;
        if ((v36 & 1) == 0 && v37)
        {
          v30 = --v37;
        }

        v29 = sub_10001B084(v26, v30, v19);
        if (v29 || (v29 = sub_10001A958(a1, v19, a2, 3u, *(v26[7] + 34) - 1, a8, &v38), v29))
        {
LABEL_21:
          v21 = v29;
          sub_10004BE88(v26, 2);
          sub_100046D50(v26);
          return v21;
        }

        v26 = v38;
        if ((a1[50] & 0x10) != 0 && *(v38 + 112) != *v19)
        {
          sub_10001DFEC(v27, v30, (v38 + 112), a8);
        }

        v21 = 2;
        sub_10004BE88(v27, 2);
        sub_100046D50(v27);
        v25 = 0;
        v24 = 1;
        if (!v26)
        {
          return v21;
        }
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_26:
      v25 = 2;
LABEL_27:
      sub_10004BE88(v26, 2);
      sub_100046D50(v26);
      v21 = v25;
      if (!v25)
      {
        if ((a1[50] & 0x80) != 0)
        {
          sub_10004C7D8(a1, a8, 0);
        }

        return 0;
      }
    }
  }

  return v21;
}

uint64_t sub_100020E0C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a10)
{
  v10 = *(a1 + 56);
  if (*(v10 + 36) <= a2)
  {
    return 22;
  }

  v17 = *(v10 + 32);
  v18 = *(a1 + 376);
  if ((v17 & 4) != 0)
  {
    v19 = (v18 + 4 * a2);
  }

  else
  {
    v19 = (v18 + 8 * a2);
  }

  v20 = *v19;
  v21 = (v18 + 4 * a2 + 2);
  if ((v17 & 4) == 0)
  {
    v21 = (v18 + 8 * a2 + 4);
  }

  v22 = *v21;
  v23 = *v19 == 0xFFFFLL;
  if (v20 == 0xFFFF)
  {
    v24 = 0;
  }

  else if ((v17 & 4) != 0)
  {
    v24 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v24 = *(v18 + 8 * a2 + 2);
  }

  if (v22 > 0xFFFD)
  {
    v25 = 0;
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v25 = sub_10001AD08(a1, a2);
    if (!v24)
    {
      goto LABEL_17;
    }
  }

  result = sub_10001AE44(a1, v20, v24);
  if (result)
  {
    return result;
  }

LABEL_17:
  if (!v25)
  {
    if (v20 != 0xFFFF)
    {
LABEL_27:
      if (v25 >= a6)
      {
        v29 = 1;
      }

      else
      {
        v29 = a7;
      }

      result = 22;
      if (v24 == a4 && v29)
      {
        result = a9(*(a1 + 384) + v20, v24, a3, a4, *(a1 + 392) - v22, v25, a5, a6, a10);
        if (!result)
        {
          sub_10004C7D8(a1, a8, 0);
          return 0;
        }
      }

      return result;
    }

    return 22;
  }

  LODWORD(result) = sub_10001AF70(a1, v22, v25);
  v27 = result;
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (v20 != 0xFFFF && v27 == 0)
  {
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100020FC4(uint64_t a1, uint64_t a2, char a3, unint64_t *a4, unsigned int a5, void *a6, unsigned int *a7, void *a8, unsigned int *a9, uint64_t a10)
{
  v18 = (*(a1 + 400) & 0x7F00000000000000uLL) > 0x4000000000000000;
  v123 = 0u;
  v124 = 0u;
  v122 = 0u;
  v121 = 0;
  __chkstk_darwin(a1);
  v20 = (&v99 - v19);
  bzero(&v99 - v19, v21);
  memset(v120, 170, sizeof(v120));
  v119 = a5;
  v118 = -21846;
  v117 = -21846;
  v116 = -21846;
  if (!*(a1 + 416))
  {
    return 22;
  }

  v22 = *(a1 + 400);
  v23 = (v22 >> 9) & 0x3FFF;
  if (!v23)
  {
    if ((((((v22 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72 >= a5)
    {
      goto LABEL_4;
    }

    return 22;
  }

  if (v23 != a5)
  {
    return 22;
  }

LABEL_4:
  v107 = *(*(a1 + 392) + 16);
  v106 = a8;
  v112 = a2;
  sub_10004B8D4(a1, 2);
  v24 = sub_10004B964(a1, (*(a1 + 400) >> 3) & 2, a10);
  if (v24)
  {
    v25 = v24;
    sub_10004BE88(a1, 2);
    return v25;
  }

  v110 = a10;
  v105 = &v99;
  *&v122 = a1;
  sub_10004C19C(a1);
  v27 = sub_100021F64(v122, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
  if (v27)
  {
LABEL_10:
    v25 = v27;
    goto LABEL_11;
  }

  v28 = 0;
  v108 = 0;
  v104 = 0;
  v30 = 0;
  v102 = a9;
  v103 = (v107 + 7) & 0x1FFF8;
  v109 = a4;
  while (1)
  {
    if (v30)
    {
      v111 = 1;
      v31 = v123;
      if (!v123)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v31 = v123;
      if (BYTE10(v122) == 1 && WORD4(v122) == 0)
      {
        v104 = WORD4(v123);
        v111 = 1;
        v28 = v122;
        v108 = v123;
        if (!v123)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v111 = 0;
        if (!v123)
        {
          goto LABEL_44;
        }
      }
    }

    if ((*(a1 + 401) & 0x7FFE) != 0)
    {
      goto LABEL_44;
    }

    v115 = 0;
    if (BYTE10(v122) == 1)
    {
      v33 = sub_10001AD80(v31, WORD4(v123), &v120[2], &v116);
      if (v33)
      {
        goto LABEL_97;
      }

      v34 = v107;
      if ((*(v123 + 400) & 0x40) == 0)
      {
        v34 = v103;
      }

      v35 = v116;
      if ((*(v123 + 400) & 0x40) == 0)
      {
        v35 = (v116 + 7) & 0xFFF8;
      }

      v36 = v34 - v35;
      if (v36 < 0)
      {
        v37 = 0;
      }

      else
      {
        v37 = v36;
      }
    }

    else
    {
      v37 = 0;
    }

    v114 = sub_10001E250(v122);
    v38 = v123;
    v113 = (*(v122 + 407) & 0x7F) + 8;
    if (sub_10001E0C4(v123, 1u, &v114, &v113, v37, 0, 0))
    {
      goto LABEL_43;
    }

    v33 = sub_10001E2CC(a1, v124, WORD4(v124), v38, (WORD4(v123) + ((BYTE10(v123) & 1) == 0)), v109, v119, 1u, &v114, &v113, v37, v112, v110, &v115);
    if (v33)
    {
      goto LABEL_97;
    }

    v39 = v115;
    if (!v115)
    {
LABEL_43:
      a4 = v109;
      goto LABEL_44;
    }

    v40 = v123;
    v101 = v123;
    if (v124)
    {
      ++WORD4(v124);
      if (v123)
      {
        if (v108 == v123 || v123 == v28)
        {
          v100 = v123;
          goto LABEL_64;
        }

        sub_10004BE88(v123, 2);
        sub_100046D50(v40);
      }
    }

    else
    {
      *&v124 = v123;
      if (*(*(v115 + 56) + 36))
      {
        v33 = sub_10001AD80(v115, 0, &v120[2], &v116);
        if (v33)
        {
          goto LABEL_97;
        }

        v44 = sub_10001DFA8(v124, v120[2], v116, &v124 + 4, &v124 + 10);
      }

      else
      {
        v44 = sub_100021F64(v123, a3, 0, v109, &v119, a5, &v124 + 4, &v124 + 10);
      }

      v25 = v44;
      if (v44)
      {
        goto LABEL_98;
      }
    }

    v100 = 0;
LABEL_64:
    v45 = v108 != v124 || v108 == 0;
    v46 = v104;
    if (!v45)
    {
      v46 = WORD4(v124);
    }

    v104 = v46;
    *&v123 = v39;
    v33 = sub_100021F64(v39, a3, 0, v109, &v119, a5, &v123 + 4, &v123 + 10);
    if (v33)
    {
      goto LABEL_97;
    }

    v47 = v122;
    sub_10004BE88(v122, 2);
    sub_100046D50(v47);
    *&v122 = 0;
    v33 = sub_10001B084(v123, WORD4(v123), v20);
    if (v33)
    {
      goto LABEL_97;
    }

    v33 = sub_10001A958(a1, v20, v112, 3u, *(*(v123 + 56) + 34) - 1, v110, &v122);
    if (v33)
    {
      goto LABEL_97;
    }

    v48 = v122;
    if ((*(a1 + 400) & 0x10) != 0)
    {
      a4 = v109;
      if (*(v122 + 112) != *v20)
      {
        sub_10001DFEC(v123, WORD4(v123), (v122 + 112), v110);
        v48 = v122;
      }
    }

    else
    {
      a4 = v109;
    }

    v33 = sub_100021F64(v48, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
    if (v33)
    {
LABEL_97:
      v25 = v33;
LABEL_98:
      v121 = v28;
LABEL_99:
      v29 = v108;
      goto LABEL_100;
    }

    if (v108 == v101)
    {
      v51 = WORD4(v123);
      v49 = v100;
      if (v108 == a1 && !WORD4(v123))
      {
        v28 = v123;
        goto LABEL_44;
      }

      v50 = v111;
      if (WORD4(v123))
      {
        goto LABEL_92;
      }

      v104 = WORD4(v124);
      goto LABEL_88;
    }

    v49 = v100;
    if (v111)
    {
      v50 = 1;
      goto LABEL_93;
    }

    v51 = WORD4(v123);
    if (BYTE10(v123) == 1 && !WORD4(v123))
    {
      v104 = WORD4(v124);
      v50 = 1;
LABEL_88:
      v108 = v124;
      v28 = v123;
      goto LABEL_93;
    }

    v50 = 0;
    if (BYTE10(v122) == 1 && !WORD4(v122))
    {
      v50 = 1;
LABEL_92:
      v108 = v123;
      v28 = v122;
      v104 = v51;
    }

LABEL_93:
    v111 = v50;
    if (v49 && v49 != v108 && v49 != v28)
    {
      sub_10004BE88(v49, 2);
      sub_100046D50(v49);
    }

LABEL_44:
    if ((*(*(v122 + 56) + 32) & 2) != 0)
    {
      break;
    }

    v41 = v124;
    if (v124 && v124 != v108 && v124 != v28)
    {
      sub_10004BE88(v124, 2);
      sub_100046D50(v41);
    }

    v42 = v123;
    v123 = v122;
    v124 = v42;
    *&v122 = 0;
    v33 = sub_10001B084(v123, WORD4(v123), v20);
    if (!v33)
    {
      v33 = sub_10001A958(a1, v20, v112, 3u, *(*(v123 + 56) + 34) - 1, v110, &v122);
      if (!v33)
      {
        v43 = v122;
        if ((*(a1 + 400) & 0x10) != 0)
        {
          a4 = v109;
          if (*(v122 + 112) != *v20)
          {
            sub_10001DFEC(v123, WORD4(v123), (v122 + 112), v110);
            v43 = v122;
          }
        }

        else
        {
          a4 = v109;
        }

        v33 = sub_100021F64(v43, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
        v30 = v111;
        if (!v33)
        {
          continue;
        }
      }
    }

    goto LABEL_97;
  }

  v121 = v28;
  v56 = sub_100021F64(v122, a3, 1, a4, &v119, a5, &v122 + 4, (&v122 | 0xA));
  if (v56)
  {
LABEL_127:
    v25 = v56;
    goto LABEL_99;
  }

  if (BYTE10(v122) != 1)
  {
    v25 = 2;
    goto LABEL_99;
  }

  if (a6)
  {
    v56 = sub_10001AD80(v122, 0, &v120[1], &v118);
    if (v56)
    {
      goto LABEL_127;
    }

    v57 = v118;
    v58 = *a7;
    if (*a7 >= v118)
    {
      v59 = v118;
    }

    else
    {
      v59 = v58;
    }

    memcpy(a6, v120[1], v59);
    *a7 = v57;
    if (v58 < v57)
    {
      v25 = 34;
      goto LABEL_99;
    }
  }

  v29 = v108;
  if (v106)
  {
    v60 = sub_10001AE98(v122, 0, v120, &v117);
    if (v60)
    {
      goto LABEL_139;
    }

    v61 = v117;
    v62 = v117 == 65534 ? 0 : v117;
    v63 = v102;
    v64 = *v102;
    v65 = *v102 >= v62 ? v62 : v64;
    memcpy(v106, v120[0], v65);
    *v63 = v61;
    if (v64 < v62)
    {
      v25 = 34;
      goto LABEL_100;
    }
  }

  v66 = v110;
  sub_100022060(v122, WORD4(v122), v110);
  atomic_fetch_add_explicit((*(a1 + 392) + 24), 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  sub_10004C7D8(a1, v66, 0);
  if (WORD4(v122))
  {
    v25 = 0;
    goto LABEL_160;
  }

  v25 = 0;
  if (*(*(v122 + 56) + 36) && v123)
  {
    v67 = sub_10001AD80(v122, 0, &v120[2], &v116);
    if (v67)
    {
      v25 = v67;
      goto LABEL_155;
    }

    v25 = sub_10001D1CC(v123, WORD4(v123), v120[2], v116, 0);
    if (v25)
    {
LABEL_155:
      v68 = *(a1 + 8);
      if (v68)
      {
        v69 = (v68 + 4040);
      }

      else
      {
        v69 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5068, v69, v25);
    }

    v29 = v108;
  }

LABEL_160:
  v70 = sub_100022334(a1, v122);
  v71 = v124;
  v72 = v111;
  if (v124)
  {
    if (v124 != v29 && v124 != v28)
    {
      sub_10004BE88(v124, 2);
      sub_100046D50(v71);
      v72 = v111;
    }

    *&v124 = 0;
  }

  v73 = v123;
  if (v123)
  {
    if (v123 != v29 && v123 != v28)
    {
      sub_10004BE88(v123, 2);
      sub_100046D50(v73);
      v72 = v111;
    }

    *&v123 = 0;
  }

  if (v72 && *(*(v122 + 56) + 36))
  {
    v60 = sub_10001AD80(v122, 0, &v120[2], &v116);
    if (v60)
    {
LABEL_139:
      v25 = v60;
      goto LABEL_100;
    }

    if (v29)
    {
      v74 = sub_10001D1CC(v108, v104, v120[2], v116, 0);
      v25 = v74;
      if (v74)
      {
        v75 = *(a1 + 8);
        if (v75)
        {
          v76 = (v75 + 4040);
        }

        else
        {
          v76 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5094, v76, v74);
      }

      if (v108 != v124 && v108 != v123 && v108 != v122)
      {
        v77 = v108;
        sub_10004BE88(v108, 2);
        sub_100046D50(v77);
      }
    }

    else
    {
      v25 = 0;
    }

    v78 = v121;
    v79 = v121 + 56;
    v80 = v109;
    if ((*(*(v121 + 56) + 32) & 2) == 0)
    {
      v81 = v119;
      v82 = v120[2];
      while (1)
      {
        LOWORD(v115) = -21846;
        LOBYTE(v114) = -86;
        v28 = v78;
        v83 = sub_10001DFA8(v78, v80, v81, &v115, &v114);
        if (v83)
        {
          v25 = v83;
          goto LABEL_12;
        }

        if (v114 != 1)
        {
          break;
        }

        if (*(*v79 + 34) == 1)
        {
          v89 = *(a1 + 8);
          if (v89)
          {
            v90 = (v89 + 4040);
          }

          else
          {
            v90 = (*(*(*a1 + 392) + 384) + 212);
          }

          v91 = sub_100047D10(v28);
          v92 = sub_100048044(v28);
          sub_10003E5FC("%s:%d: %s minkey update traversal unexpectedly found the removed key in level 1 node; oid %llu subtype 0x%x level %d\n", "bt_remove_internal", 5117, v90, v91, v92, *(*v79 + 34));
          break;
        }

        v84 = v115;
        v85 = sub_10001D1CC(v28, v115, v82, v116, 0);
        if (v85)
        {
          v86 = *(a1 + 8);
          if (v86)
          {
            v87 = (v86 + 4040);
          }

          else
          {
            v87 = (*(*(*a1 + 392) + 384) + 212);
          }

          sub_10003E5FC("%s:%d: %s btree_node_key_update failed: %d\n", "bt_remove_internal", 5123, v87, v85);
        }

        v25 = sub_10001B084(v28, v84, v20);
        v88 = *(*v79 + 34);
        v121 = 0;
        if (!v25)
        {
          v25 = sub_10001A958(a1, v20, v112, 3u, v88 - 1, v110, &v121);
        }

        v80 = v109;
        if (v28 != v124 && v28 != v123 && v28 != v122)
        {
          sub_10004BE88(v28, 2);
          sub_100046D50(v28);
        }

        if (!v25)
        {
          v78 = v121;
          v79 = v121 + 56;
          if ((*(*(v121 + 56) + 32) & 2) == 0)
          {
            continue;
          }
        }

        goto LABEL_213;
      }

      v25 = 0;
    }
  }

  else if (v29 && v29 != v124 && v29 != v122)
  {
    sub_10004BE88(v29, 2);
    sub_100046D50(v29);
  }

LABEL_213:
  v93 = v121;
  if (v121)
  {
    if (v121 != v124 && v121 != v123 && v121 != v122)
    {
      sub_10004BE88(v121, 2);
      sub_100046D50(v93);
    }

    v121 = 0;
  }

  if (!v70)
  {
    v94 = 0;
    v96 = 0;
    goto LABEL_226;
  }

  if (WORD4(v122) || !*(*(v122 + 56) + 36))
  {
    v94 = 0;
    v95 = 0;
    goto LABEL_222;
  }

  v27 = sub_10001AD80(v122, 0, &v120[2], &v116);
  if (v27)
  {
    goto LABEL_10;
  }

  v95 = v116;
  v98 = sub_10003FB98(v116, 0x144C515AuLL);
  v94 = v98;
  if (v98)
  {
    memcpy(v98, v120[2], v116);
  }

  v25 = 0;
LABEL_222:
  if (v94)
  {
    v96 = v95;
  }

  else
  {
    v94 = v109;
    v96 = v119;
  }

LABEL_226:
  v97 = v122;
  sub_10004BE88(v122, 2);
  sub_100046D50(v97);
  *&v122 = 0;
  if (v70)
  {
    sub_1000223E0(a1, v112, v94, v96, v110);
    if (v94 != v109)
    {
      sub_10003FB5C(v94, v96);
    }
  }

LABEL_11:
  v28 = 0;
LABEL_12:
  v29 = 0;
LABEL_100:
  v52 = v124;
  if (v124)
  {
    if (v124 != v29 && v124 != v28)
    {
      sub_10004BE88(v124, 2);
      sub_100046D50(v52);
    }

    *&v124 = 0;
  }

  v54 = v123;
  if (v123)
  {
    if (v123 != v29 && v123 != v28)
    {
      sub_10004BE88(v123, 2);
      sub_100046D50(v54);
    }

    *&v123 = 0;
  }

  v55 = v122;
  if (v122)
  {
    if (v122 != v29 && v122 != v28)
    {
      sub_10004BE88(v122, 2);
      sub_100046D50(v55);
    }

    *&v122 = 0;
  }

  if (v29 && v29 != v124 && v29 != v123)
  {
    sub_10004BE88(v29, 2);
    sub_100046D50(v29);
    v28 = v121;
  }

  if (v28 && v28 != v124 && v28 != v123 && v28 != v122)
  {
    sub_10004BE88(v28, 2);
    sub_100046D50(v28);
  }

  return v25;
}

uint64_t sub_100021F64(uint64_t a1, char a2, int a3, unint64_t *a4, _WORD *a5, unsigned int a6, _WORD *a7, BOOL *a8)
{
  if ((a2 & 1) == 0)
  {
    v13 = sub_10001CFF8(a1, a4, *a5, a7, a8);
    if (v13)
    {
      return v13;
    }

    if (!*a8 && *a7)
    {
      v13 = 0;
      --*a7;
      return v13;
    }

    return 0;
  }

  if (!*(*(a1 + 56) + 36))
  {
    return 2;
  }

  *a7 = 0;
  *a8 = 1;
  if (!a3)
  {
    return 0;
  }

  __src = 0xAAAAAAAAAAAAAAAALL;
  v16 = -21846;
  v13 = sub_10001AD80(a1, 0, &__src, &v16);
  if (!v13)
  {
    if (v16 >= a6)
    {
      v14 = a6;
    }

    else
    {
      v14 = v16;
    }

    *a5 = v14;
    memcpy(a4, __src, v14);
  }

  return v13;
}

void sub_100022060(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v7 = *(v6 + 32) & 4;
  if (v7)
  {
    v8 = (*(a1 + 400) >> 9) & 0x3FFF;
  }

  else
  {
    v8 = *(*(a1 + 376) + 8 * a2 + 2);
  }

  if (*(a1 + 440) <= v8)
  {
    *(a1 + 440) = 0;
    v7 = *(v6 + 32) & 4;
  }

  v9 = *(a1 + 376);
  v10 = (v9 + 4 * a2);
  v11 = (v9 + 8 * a2);
  if (v7)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *v12;
  v14 = *(a1 + 400);
  if ((v14 & 0x40) != 0)
  {
    v15 = v8;
  }

  else
  {
    v15 = (v8 + 7) & 0xFFF8;
  }

  if (v13 != 0xFFFF)
  {
    v16 = sub_10001AE44(a1, v13, v15);
    v6 = *(a1 + 56);
    v14 = *(a1 + 400);
    if (!v16)
    {
      v17 = (v15 + 7) & 0xFFF8;
      if ((v14 & 0x40) != 0)
      {
        v17 = v15;
      }

      if (v17 >= 4u)
      {
        v18 = (*(a1 + 384) + v13);
        v18[1] = v17;
        *v18 = *(v6 + 48);
        *(v6 + 48) = v13;
      }

      *(v6 + 50) += v17;
      v14 = *(a1 + 400);
    }
  }

  v19 = *(a1 + 376);
  v20 = v19 + 4 * a2 + 2;
  v21 = v19 + 8 * a2 + 4;
  if ((*(v6 + 32) & 4) != 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *v22;
  v24 = sub_10001AD08(a1, a2);
  if ((v14 & 0x40) != 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = (v24 + 7) & 0xFFF8;
  }

  if (v23 <= 0xFFFD)
  {
    v26 = sub_10001AF70(a1, v23, v25);
    v6 = *(a1 + 56);
    if (!v26)
    {
      if ((*(a1 + 400) & 0x40) != 0)
      {
        v27 = v25;
      }

      else
      {
        v27 = (v25 + 7) & 0xFFF8;
      }

      if (v27 >= 4u)
      {
        v28 = (*(a1 + 392) - v23);
        v28[1] = v27;
        *v28 = *(v6 + 52);
        *(v6 + 52) = v23;
      }

      *(v6 + 54) += v27;
    }
  }

  v29 = *(v6 + 36) - 1;
  if (v29 > a2)
  {
    sub_10002691C(a1, a2, -1);
    v6 = *(a1 + 56);
    v29 = *(v6 + 36) - 1;
  }

  *(v6 + 36) = v29;
  v30 = *(v6 + 32);
  if ((v30 & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      goto LABEL_49;
    }

    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  v32 = *(v6 + 42) / v31;
  if (v32 - v29 >= 0x10)
  {
    v33 = 8;
    if ((v30 & 4) == 0 || ((v34 = *(a1 + 400), (v30 & 2) != 0) ? (v35 = v34 >> 23) : (LOWORD(v35) = (HIBYTE(v34) & 0x7F) + 8), (v36 = ((((v34 >> 27) & 0x1F000) - 56) / (((v34 >> 9) & 0x3FFF) + v35 + 4)) & 0xFFFE, (v32 - 8) >= v36) ? (v33 = 8) : (v33 = v32 - v36), v32 > v36))
    {
      v37 = v33 * v31;
      memmove((*(a1 + 384) - (v33 * v31)), *(a1 + 384), *(v6 + 44));
      *(a1 + 384) -= v37;
      v38 = *(a1 + 56);
      *(v38 + 42) -= v37;
      *(v38 + 46) += v37;
    }
  }

LABEL_49:

  sub_10004C7D8(a1, a3, 0);
}

BOOL sub_100022334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  v3 = *(v2 + 32);
  if ((~v3 & 3) == 0)
  {
    return 0;
  }

  v4 = *(v2 + 36);
  if (!v4)
  {
    return 1;
  }

  if (*(a1 + 432) == *(a2 + 112))
  {
    return 0;
  }

  if ((v3 & 4) == 0 || (*(a2 + 400) & 4) != 0)
  {
    v8 = sub_100048054(a2);
    if (*(*(a2 + 56) + 32))
    {
      v9 = -96;
    }

    else
    {
      v9 = -56;
    }

    v7 = (v9 + v8) >> 1 >= sub_100025FE8(a2);
  }

  else
  {
    v7 = v4 >= *(v2 + 42) >> 3;
  }

  return !v7;
}

void sub_1000223E0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v50 = a2;
  v9 = *(a1 + 400);
  __chkstk_darwin(a1);
  v11 = (&v47 - v10);
  bzero(&v47 - v10, v12);
  v57[0] = 0xAAAAAAAAAAAAAAAALL;
  v57[1] = 0xAAAAAAAAAAAAAAAALL;
  v13 = *(a1 + 56);
  if (!v13)
  {
    return;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58[2] = v14;
  v58[3] = v14;
  v58[0] = v14;
  v58[1] = v14;
  v54 = -1431655766;
  v53 = -21846;
  v52 = -21846;
  v15 = *(v13 + 34);
  if (v15 >= 6)
  {
    v16 = v15 + 11;
    v19 = (v15 + 11);
    v18 = sub_10003FB98(8 * v19, 0x2004093837F09uLL);
    v17 = sub_10003FB98(2 * v19, 0x1000040BDFB0063uLL);
  }

  else
  {
    v16 = 8;
    v17 = v57;
    v18 = v58;
  }

  sub_10004B8D4(a1, 2);
  if (sub_10004B964(a1, (*(a1 + 400) >> 3) & 2, a5))
  {

    sub_10004BE88(a1, 2);
    return;
  }

  *v18 = a1;
  sub_10004C19C(a1);
  v20 = *v18;
  if ((*(*(*v18 + 56) + 32) & 2) != 0)
  {
    LOWORD(v22) = 0;
  }

  else
  {
    v48 = v16;
    v49 = a5;
    v21 = 0;
    v22 = 0;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    v51 = -86;
    v23 = v16;
    if ((v16 & 0xFFFE) == 0)
    {
      v23 = 1;
    }

    v24 = (v23 - 1);
    v25 = v18 + 1;
    while (!sub_10001CFF8(v20, a3, a4, &v17[v21], &v51))
    {
      if ((v51 & 1) == 0 && v17[v22])
      {
        --v17[v22];
      }

      if (v24 == v22)
      {
        LOWORD(v16) = v48;
        LOWORD(v22) = v48 - 1;
        goto LABEL_68;
      }

      *v11 = 0;
      if (sub_10001B084(*(v25 - 1), v17[v22], v11) || sub_10001A958(a1, v11, v50, 3u, *(*(*(v25 - 1) + 56) + 34) - 1, v49, v25))
      {
        break;
      }

      v20 = *v25;
      if ((*(a1 + 400) & 0x10) != 0 && *(v20 + 112) != *v11)
      {
        sub_10001DFEC(*(v25 - 1), v17[v22], (v20 + 112), v49);
        v20 = *v25;
      }

      ++v21;
      ++v25;
      ++v22;
      if ((*(*(v20 + 56) + 32) & 2) != 0)
      {
        v26 = v22;
        v27 = v49;
        while (1)
        {
          v28 = v26;
          v29 = (v26 - 1);
          if (v26 < 1)
          {
            break;
          }

          if (v22 <= v26)
          {
            v30 = 0;
          }

          else
          {
            v30 = v18[v26 + 1];
          }

          sub_100027138(a1, v18[v29], v17[v29], v18[v26], v17[v26], v30, v50, v27);
          v31 = *(*(v18[v26--] + 56) + 36);
          if (v28 == 1 || v31)
          {
            if (v31)
            {
              if (sub_10001AD80(v18[v29], v17[v29], &v55, &v52))
              {
                goto LABEL_67;
              }

              v54 = 0;
              if (sub_10001AD80(v18[v28], 0, &v56, &v53))
              {
                goto LABEL_67;
              }

              v40 = *(a1 + 8);
              if (!v40)
              {
                v40 = *(*a1 + 392);
              }

              v41 = v56;
              v42 = (*(a1 + 416))(v40, v56, v53, v55, v52, &v54);
              if (!v42 && v54)
              {
                v42 = sub_10001D1CC(v18[v29], v17[v29], v41, v53, 0);
              }

              if (v42)
              {
                goto LABEL_67;
              }
            }
          }

          else if (!v17[v29])
          {
            if (v29)
            {
              v32 = v18[v29];
              if (*(*(v32 + 56) + 36))
              {
                v33 = &v17[v29];
                v34 = v29 - 1;
                v35 = v28 - 1;
                while (1)
                {
                  if (*v33--)
                  {
                    goto LABEL_29;
                  }

                  v37 = sub_10001AD80(v32, 0, &v56, &v53);
                  if (v37)
                  {
                    goto LABEL_63;
                  }

                  v54 = 0;
                  v37 = sub_10001AD80(v18[v34], v17[v34], &v55, &v52);
                  if (v37)
                  {
                    goto LABEL_63;
                  }

                  v38 = *(a1 + 8);
                  if (!v38)
                  {
                    v38 = *(*a1 + 392);
                  }

                  v39 = v56;
                  v37 = (*(a1 + 416))(v38, v56, v53, v55, v52, &v54);
                  if (!v37 && v54)
                  {
                    v37 = sub_10001D1CC(v18[v34], v17[v34], v39, v53, 0);
                  }

                  if (v37)
                  {
LABEL_63:
                    v43 = *(a1 + 8);
                    if (v43)
                    {
                      v44 = (v43 + 4040);
                    }

                    else
                    {
                      v44 = (*(*(*a1 + 392) + 384) + 212);
                    }

                    sub_10003E5FC("%s:%d: %s updating grandparent failed w/%d\n", "bt_merge_up", 4631, v44, v37);
                    goto LABEL_67;
                  }

                  if (--v35)
                  {
                    v32 = v18[v35];
                    --v34;
                    if (*(*(v32 + 56) + 36))
                    {
                      continue;
                    }
                  }

                  goto LABEL_29;
                }
              }
            }
          }

LABEL_59:
          if (!sub_100022334(a1, v18[v26]))
          {
            goto LABEL_67;
          }
        }

        sub_100027138(a1, 0, 0, *v18, *v17, v18[1], v50, v27);
LABEL_29:
        if ((v29 & 0x8000) != 0)
        {
          break;
        }

        v26 = v29;
        v27 = v49;
        goto LABEL_59;
      }
    }

LABEL_67:
    LOWORD(v16) = v48;
  }

LABEL_68:
  v45 = 0;
  do
  {
    v46 = v18[v45];
    sub_10004BE88(v46, 2);
    sub_100046D50(v46);
    ++v45;
  }

  while (v22 >= v45);
  if (v16 >= 9u)
  {
    sub_10003FB5C(v18, 8 * v16);
    sub_10003FB5C(v17, 2 * v16);
  }
}

uint64_t sub_100022A00(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, void *a5, unsigned int *a6, uint64_t a7)
{
  v14 = *(*(a1 + 392) + 16);
  v15 = sub_10003FB98(v14, 0xE12C8675uLL);
  if (!v15)
  {
    return 12;
  }

  v16 = v15;
  v17 = sub_100020FC4(a1, a2, 1, v15, v14, a3, a4, a5, a6, a7);
  sub_10003FB5C(v16, v14);
  return v17;
}

uint64_t sub_100022AC4(atomic_ullong *a1, uint64_t a2, void *a3, _DWORD *a4, void *a5, unsigned int *a6)
{
  v12 = a1[50];
  __chkstk_darwin(a1);
  v14 = &v29[-v13];
  bzero(&v29[-v13], v15);
  v34 = 0;
  if (!a1[52])
  {
    return 22;
  }

  v16 = (v12 >> 9) & 0x3FFF;
  if (v16)
  {
    if (*a4 != v16)
    {
      return 22;
    }
  }

  if ((v12 >> 23) && *a6 != (v12 >> 23))
  {
    return 22;
  }

  v31 = -21846;
  v30 = -21846;
  sub_10004B8D4(a1, 1);
  sub_10004C19C(a1);
  v18 = a1 + 7;
  v17 = a1[7];
  if ((*(v17 + 32) & 2) != 0)
  {
    v19 = a1;
LABEL_15:
    if (*(v17 + 36))
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v21 = sub_10001AD80(v19, 0, &v33, &v31);
      if (v21 || (v32 = 0xAAAAAAAAAAAAAAAALL, v21 = sub_10001AE98(v19, 0, &v32, &v30), v21))
      {
        v20 = v21;
      }

      else
      {
        v23 = v30;
        if (v30 == 65534)
        {
          v24 = 0;
        }

        else
        {
          v24 = v30;
        }

        v25 = v31;
        if (*a4 >= v31)
        {
          v26 = v31;
        }

        else
        {
          v26 = *a4;
        }

        if (*a4 >= v31 && *a6 >= v24)
        {
          v20 = 0;
        }

        else
        {
          v20 = 34;
        }

        memcpy(a3, v33, v26);
        if (*a6 >= v24)
        {
          v28 = v24;
        }

        else
        {
          v28 = *a6;
        }

        memcpy(a5, v32, v28);
        *a4 = v25;
        *a6 = v23;
      }
    }

    else
    {
      v20 = 2;
    }

    sub_10004BE88(v19, 1);
    sub_100046D50(v19);
  }

  else
  {
    v19 = a1;
    while (1)
    {
      *v14 = 0;
      v20 = sub_10001B084(v19, 0, v14);
      if (!v20)
      {
        v20 = sub_10001A958(a1, v14, a2, 2u, *(*v18 + 34) - 1, 0, &v34);
      }

      sub_10004BE88(v19, 1);
      sub_100046D50(v19);
      if (v20)
      {
        break;
      }

      v19 = v34;
      v18 = v34 + 7;
      v17 = v34[7];
      if ((*(v17 + 32) & 2) != 0)
      {
        goto LABEL_15;
      }
    }
  }

  return v20;
}

uint64_t sub_100022D54(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int *a4, unsigned int a5, void *a6, unsigned int *a7, unsigned int a8, int a9, uint64_t *a10)
{
  if (!a1[52])
  {
    return 22;
  }

  v17 = a1[50];
  v18 = (v17 >> 9) & 0x3FFF;
  if (v18)
  {
    if (*a4 != v18)
    {
      return 22;
    }
  }

  if ((v17 >> 23) && *a7 != (v17 >> 23))
  {
    return 22;
  }

  v19 = *a4;
  if ((v17 & 0x7FFE00) == 0 && v19 > (((((v17 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72)
  {
    return 22;
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24 = -21846;
  v20 = sub_100022EC0(a1, a2, a3, v19, a8, a9, 0, a10, &v25, &v24);
  if (!v20)
  {
    v22 = v25;
    v23 = sub_1000234F0(a1, v25, v24, a3, a4, a5, a6, a7, a8);
    v20 = v23;
    if (a10 && !v23)
    {
      *a10 = sub_100047D10(v22);
      a10[1] = a1;
    }

    sub_10004BE88(v22, 1);
    sub_100046D50(v22);
  }

  return v20;
}

uint64_t sub_100022EC0(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int a4, unsigned int a5, int a6, unsigned int a7, uint64_t *a8, atomic_ullong **a9, unsigned __int16 *a10)
{
  v41 = a7;
  v42 = a6;
  v45 = a4;
  v43 = a2;
  v44 = a3;
  v37 = a9;
  v13 = a1[50];
  __chkstk_darwin();
  v15 = (&v37 - v14);
  bzero(&v37 - v14, v16);
  v48 = 0;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v47 = -21846;
  v46 = -86;
  if (!a8)
  {
    goto LABEL_10;
  }

  v17 = *a8;
  if (!*a8)
  {
    goto LABEL_10;
  }

  if ((v13 & 0x10) != 0)
  {
    goto LABEL_10;
  }

  if (a8[1] != a1)
  {
    goto LABEL_10;
  }

  *v15 = v17;
  if (v17 == sub_100047D10(a1) || sub_10001A958(a1, v15, v43, v42 & 0x200 | (((*(a1[7] + 32) >> 3) & 1) << 6) | 6u, 0, 0, &v49))
  {
    goto LABEL_10;
  }

  v18 = v49;
  if ((*(v49[7] + 32) & 2) == 0 || sub_10001CFF8(v49, v44, v45, &v47, &v46))
  {
    goto LABEL_9;
  }

  if (v46 == 1)
  {
    if (a5 == 4)
    {
      if (*(v18[7] + 36) > ++v47)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

    if (a5 == 2)
    {
      if (v47)
      {
        --v47;
        goto LABEL_86;
      }

LABEL_89:
      v46 = 0;
      goto LABEL_9;
    }

LABEL_86:
    v35 = v37;
    goto LABEL_87;
  }

  if (!a5)
  {
    if (v47 && *(v18[7] + 36) > v47)
    {
      v25 = 0;
      v34 = 2;
      v35 = v37;
      goto LABEL_60;
    }

    goto LABEL_9;
  }

  if (a5 - 3 <= 1 && v47 && *(v18[7] + 36) > v47)
  {
    goto LABEL_86;
  }

LABEL_9:
  sub_10004BE88(v18, 1);
  sub_100046D50(v18);
LABEL_10:
  v19 = a5 == 2;
  v38 = a5 - 3;
  v20 = a5 - 3 < 2;
  sub_10004B8D4(a1, 1);
  v49 = a1;
  sub_10004C19C(a1);
  v39 = a5;
  v40 = 0;
  v21 = v42 & 0x200;
  for (i = a1; ; i = v49)
  {
    v46 = 0;
    v24 = i + 7;
    v23 = i[7];
    if ((*(v23 + 32) & 2) == 0)
    {
      v25 = 0;
      while (1)
      {
        if (*(v23 + 34) <= v41)
        {
          goto LABEL_36;
        }

        v26 = sub_10001CFF8(i, v44, v45, &v47, &v46);
        if (v26)
        {
          goto LABEL_55;
        }

        v27 = v47;
        if ((v46 & 1) == 0)
        {
          if (!v47)
          {
            v28 = 0;
            if (!v20)
            {
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v27 = --v47;
        }

        v28 = v27;
        if (!v19 || v27 == 0)
        {
          if (!v20)
          {
            goto LABEL_26;
          }

LABEL_22:
          if (*(*v24 + 36) - 1 <= v28)
          {
            goto LABEL_26;
          }
        }

        if (v25)
        {
          sub_10004BE88(v25, 1);
          sub_100046D50(v25);
          v27 = v47;
        }

        v25 = v49;
        sub_10004C19C(v49);
        v40 = v20 - v19 + v27;
LABEL_26:
        v29 = v49;
        if ((v42 & 0x100) != 0)
        {
          v30 = v49[7];
          if (*(v30 + 34) == 1 && *(v30 + 36) - 1 > v27 && !sub_10001B084(v49, (v27 + 1), v15))
          {
            sub_10001A958(a1, v15, v43, v42 & 0x300, *(v29[7] + 34) - 1, 0, &v48);
          }
        }

        v26 = sub_10001B084(v29, v27, v15);
        if (v26)
        {
          goto LABEL_55;
        }

        v26 = sub_10001A958(a1, v15, v43, v21 | 2u, *(v29[7] + 34) - 1, 0, &v48);
        if (v26)
        {
          goto LABEL_55;
        }

        sub_10001AB8C(v29, v29 != v25);
        i = v48;
        v49 = v48;
        v24 = v48 + 7;
        v23 = v48[7];
        if ((*(v23 + 32) & 2) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    v25 = 0;
LABEL_36:
    v26 = sub_10001CFF8(i, v44, v45, &v47, &v46);
    if (v26)
    {
LABEL_55:
      v34 = v26;
      goto LABEL_56;
    }

    v31 = v46;
    if (v46 != 1)
    {
      goto LABEL_44;
    }

    if (v39 == 2)
    {
      LOWORD(v32) = v47;
      if (!v47)
      {
        v46 = 0;
        goto LABEL_46;
      }

      v34 = 0;
LABEL_71:
      v47 = v32 - 1;
      goto LABEL_56;
    }

    if (v39 != 4)
    {
      break;
    }

    if (*(*v24 + 36) > ++v47)
    {
      break;
    }

    v46 = 0;
    v32 = v47;
LABEL_49:
    if (*(*v24 + 36) > v32)
    {
      v34 = 0;
      v46 = 1;
      goto LABEL_56;
    }

LABEL_50:
    if (!v25)
    {
      v34 = 2;
      v18 = v49;
      v35 = v37;
      if (!v49)
      {
        goto LABEL_61;
      }

LABEL_60:
      sub_10001AB8C(v18, v18 != v25);
      goto LABEL_61;
    }

    sub_10001AB8C(i, i != v25);
    v33 = sub_10001B084(v25, v40, v15);
    if (v33 || (v33 = sub_10001A958(a1, v15, v43, v21 | 2u, *(v25[7] + 34) - 1, 0, &v49), v33))
    {
      v34 = v33;
      v49 = 0;
      v35 = v37;
      goto LABEL_57;
    }

    sub_10004BE88(v25, 1);
    sub_100046D50(v25);
    v19 = 0;
    v20 = 0;
  }

  v31 = 1;
LABEL_44:
  if ((v31 & 1) == 0 && v39)
  {
LABEL_46:
    v32 = v47;
    if (v39 > 2 || !v47)
    {
      if (v38 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v34 = 0;
    v46 = 1;
    goto LABEL_71;
  }

  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = 2;
  }

LABEL_56:
  v35 = v37;
  if (v25)
  {
LABEL_57:
    sub_10004BE88(v25, 1);
    sub_100046D50(v25);
  }

  v18 = v49;
  if (!v34)
  {
LABEL_87:
    v34 = 0;
    *v35 = v18;
    *a10 = v47;
    return v34;
  }

  if (v49)
  {
    goto LABEL_60;
  }

LABEL_61:
  *v35 = 0;
  return v34;
}

uint64_t sub_1000234F0(uint64_t a1, void *a2, unsigned __int16 a3, void *a4, _DWORD *a5, unsigned int a6, void *a7, unsigned int *a8, int a9)
{
  __src = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0;
  v30 = -21846;
  v29 = -21846;
  if (a9 | a6)
  {
    v17 = sub_10001AD80(a2, a3, &__src, &v30);
    v18 = v17;
    if (a9)
    {
      v19 = v17 == 0;
    }

    else
    {
      v19 = 0;
    }

    if (!v19)
    {
LABEL_19:
      if (v18)
      {
        return v18;
      }

      goto LABEL_22;
    }

    v20 = *(a1 + 8);
    if (!v20)
    {
      v20 = *(*a1 + 392);
    }

    v21 = (*(a1 + 416))(v20, __src, v30, a4, *a5, &v31);
    if (v21)
    {
      return v21;
    }

    if (a9 == 2 && (v31 & 0x80000000) == 0 || a9 == 1 && v31 > 0 || a9 == 3 && v31 < 0 || a9 == 4 && v31 <= 0)
    {
      v18 = sub_1000048F4(*(*a1 + 392));
      goto LABEL_19;
    }
  }

  else
  {
    __src = 0;
    v30 = 0;
  }

LABEL_22:
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v21 = sub_10001AE98(a2, a3, &v32, &v29);
  if (v21)
  {
    return v21;
  }

  v22 = v29;
  if (v29 == 65534)
  {
    v23 = 0;
  }

  else
  {
    v23 = v29;
  }

  v24 = *a8;
  if (*a8 < v23 || (v18 = 0, a6) && v30 > a6)
  {
    v18 = 34;
  }

  if (a6)
  {
    v25 = v30;
    if (v30 >= a6)
    {
      v26 = a6;
    }

    else
    {
      v26 = v30;
    }

    memcpy(a4, __src, v26);
    *a5 = v25;
    v24 = *a8;
  }

  if (v24 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v24;
  }

  memcpy(a7, v32, v27);
  *a8 = v22;
  return v18;
}

__n128 sub_1000236D0(uint64_t a1, atomic_ullong *a2, uint64_t a3, int a4, unint64_t *a5, int a6, unsigned int a7, void *a8, unsigned int a9, _OWORD *a10)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v16 = a4 & 0x380;
  *(a1 + 16) = a4;
  *(a1 + 20) = a7;
  *(a1 + 32) = a5;
  *(a1 + 40) = a8;
  *(a1 + 24) = a9;
  v17 = (a1 + 56);
  if (a10)
  {
    *v17 = *a10;
  }

  else
  {
    *v17 = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = a6;
  *(a1 + 52) = a9;
  if ((a4 & 4) != 0)
  {
    v18 = 4;
    goto LABEL_8;
  }

  if ((a4 & 2) == 0)
  {
    v18 = 3;
LABEL_8:
    v19 = sub_100022D54(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), v18, v16, v17);
    goto LABEL_9;
  }

  v21 = a4 & 0x380;
  v19 = sub_100022D54(a2, a3, a5, (a1 + 48), a7, a8, (a1 + 52), 1u, v16, (a1 + 56));
  if (v19 == 2)
  {
    v18 = 3;
    v16 = v21;
    goto LABEL_8;
  }

LABEL_9:
  if (v19)
  {
    *(a1 + 16) |= 1u;
    if (v19 != 2)
    {
      *(a1 + 28) = v19;
    }
  }

  else if (a10)
  {
    result = *v17;
    *a10 = *v17;
  }

  return result;
}

uint64_t sub_100023848(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    return *(a1 + 16) & 1;
  }

  return result;
}

uint64_t sub_100023864(uint64_t a1)
{
  result = *(a1 + 28);
  if (!result)
  {
    v3 = *(a1 + 16);
    result = 2;
    if ((v3 & 1) == 0)
    {
      v4 = *(a1 + 20);
      *(a1 + 52) = *(a1 + 24);
      if ((v3 & 8) != 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 4;
      }

      result = sub_100022D54(*a1, *(a1 + 8), *(a1 + 32), (a1 + 48), v4, *(a1 + 40), (a1 + 52), v5, v3 & 0x380, (a1 + 56));
      if (result == 2)
      {
        result = 0;
        *(a1 + 16) |= 1u;
      }

      *(a1 + 28) = result;
    }
  }

  return result;
}

uint64_t sub_1000238F4(atomic_ullong *a1, uint64_t a2, int a3, const void *a4, size_t __n, _OWORD *a6, uint64_t (*a7)(void, void, void, void, uint64_t, __n128), uint64_t a8, void *a9, void *a10)
{
  v10 = __n;
  v12 = a1[50];
  v13 = v12 >> 27;
  v14 = (v12 >> 27) & 0x1F000;
  v15 = (v12 >> 9) & 0x3FFF;
  if (v15)
  {
    v43 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41 = v16;
    v42 = v16;
    v39 = v16;
    v40 = v16;
    v17 = __n;
    if (v15 == __n)
    {
      goto LABEL_3;
    }

    return 34;
  }

  v17 = (((v14 - 160) >> 2) - 72);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v27;
  v42 = v27;
  v39 = v27;
  v40 = v27;
  if ((v12 & 0x7FFE00) == 0 && v17 < __n)
  {
    return 34;
  }

LABEL_3:
  v18 = a9;
  if (!a9)
  {
    v18 = sub_10003FA58(1uLL, v17, 0xB8D39D98uLL);
  }

  v19 = a10;
  if (!a10)
  {
    v19 = sub_10003FA58(1uLL, v13 & 0x1F000, 0x1B34E303uLL);
  }

  v20 = 0;
  v21 = 12;
  if (v18 && v19)
  {
    v22 = v19;
    memcpy(v18, a4, v10);
    v23 = a1;
    v24 = v22;
    v26 = sub_1000236D0(&v39, v23, a2, a3, v18, v10, v17, v22, v14, a6);
    if (v25)
    {
LABEL_10:
      v21 = v25;
      v20 = 0;
    }

    else
    {
      while (1)
      {
        if (HIDWORD(v40) || (v40 & 1) != 0)
        {
          v20 = 0;
          goto LABEL_23;
        }

        v30 = a7(v41, v42, *(&v41 + 1), DWORD1(v42), a8, v26);
        if (v30)
        {
          break;
        }

        v25 = sub_100023864(&v39);
        if (v25)
        {
          goto LABEL_10;
        }
      }

      v20 = v30;
LABEL_23:
      v21 = 0;
    }

    v19 = v24;
  }

  if (a9)
  {
    if (a10)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = v17;
    v32 = v19;
    sub_10003FB5C(v18, v31);
    v19 = v32;
    if (a10)
    {
      goto LABEL_27;
    }
  }

  sub_10003FB5C(v19, v13 & 0x1F000);
LABEL_27:
  if (v21)
  {
    return v21;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_100023AEC(atomic_ullong *a1, uint64_t a2, __int16 a3, unint64_t *a4, unsigned int a5, uint64_t *a6, uint64_t (*a7)(void, uint64_t, void, void, uint64_t), uint64_t a8)
{
  v8 = a1[50];
  v48 = 0uLL;
  v47 = 4;
  v9 = (v8 >> 9) & 0x3FFF;
  if (v9)
  {
    v10 = v9 == a5;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    return 34;
  }

  v14 = a5;
  v19 = v8 >> 27;
  if ((v8 & 0x7FFE00) == 0 && a5 > (((((v8 >> 27) & 0xF000) - 160) >> 2) - 72))
  {
    return 34;
  }

  v46 = (v8 >> 27) & 0x1F000;
  v21 = sub_10003FA58(1uLL, v19 & 0x1F000, 0x3E5049A1uLL);
  if (!v21)
  {
    return 12;
  }

  v22 = v21;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v52[6] = v23;
  v52[7] = v23;
  v52[4] = v23;
  v52[5] = v23;
  v52[2] = v23;
  v52[3] = v23;
  v52[0] = v23;
  v52[1] = v23;
  v51[1] = v23;
  v51[2] = v23;
  v51[3] = v23;
  v51[4] = v23;
  v51[5] = v23;
  v51[6] = v23;
  v51[7] = v23;
  v50[0] = v23;
  v50[1] = v23;
  v50[2] = v23;
  v50[3] = v23;
  v51[0] = v23;
  v49[2] = v23;
  v49[3] = v23;
  v49[0] = v23;
  v49[1] = v23;
  v24 = sub_100023D88(a1, a2, a4, v14, a3, a6, v21, v46, &v47, v52, v50, v51, v49);
  if (v24)
  {
    v20 = v24;
  }

  else
  {
    v41 = v19;
    if (a6)
    {
      v48 = *a6;
    }

    v42 = a3 & 0xFFF9;
    v25 = 4;
    v43 = a1;
    v44 = a2;
    v45 = v22;
    while (1)
    {
      v26 = v47;
      if (v47 >= 1)
      {
        break;
      }

LABEL_20:
      v36 = v26 - 1;
      v37 = *(v52 + v36);
      v38 = *(v50 + 2 * v36);
      v47 = v25;
      v22 = v45;
      v39 = sub_100023D88(v43, v44, v37, v38, v42 | 4u, &v48, v45, v46, &v47, v52, v50, v51, v49);
      v25 <<= v25 < 16;
      if (v39)
      {
        v20 = v39;
        if (v39 == 2)
        {
          v20 = 0;
        }

        LODWORD(v19) = v41;
        goto LABEL_25;
      }
    }

    v27 = v49;
    v28 = v51;
    v29 = v50;
    v30 = v52;
    v31 = v47;
    while (1)
    {
      v33 = *v29++;
      v32 = v33;
      v34 = *v27++;
      v35 = a7(*v30, v32, *v28, v34, a8);
      if (v35)
      {
        break;
      }

      ++v28;
      ++v30;
      if (!--v31)
      {
        goto LABEL_20;
      }
    }

    v20 = v35;
    LODWORD(v19) = v41;
    v22 = v45;
  }

LABEL_25:
  sub_10003FB5C(v22, v19 & 0x1F000);
  return v20;
}

uint64_t sub_100023D88(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int a4, __int16 a5, uint64_t *a6, char *a7, unsigned int a8, int *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = *a9;
  v34 = 0;
  v33 = -21846;
  v16 = sub_1000241B8(a1, a2, a3, a4, a5, a6, &v34, &v33);
  v17 = v34;
  if (v16)
  {
LABEL_10:
    if (!v17)
    {
      return v16;
    }

LABEL_11:
    sub_10004BE88(v17, 1);
    sub_100046D50(v17);
    return v16;
  }

  v18 = 0;
  v19 = v33;
  *a9 = 0;
  if (*(v17[7] + 36) <= v19 || v15 < 1)
  {
LABEL_7:
    if (v18)
    {
      v16 = 0;
    }

    else
    {
      v16 = 34;
    }

    goto LABEL_10;
  }

  while (1)
  {
    memset(__n, 170, 18);
    v31 = -21846;
    v22 = sub_10001AD80(v17, v19, (&__n[1] + 2), __n);
    if (v22)
    {
      break;
    }

    v22 = sub_10001AE98(v17, v19, (__n + 2), &v31);
    if (v22)
    {
      break;
    }

    v23 = v31;
    if (v31 == 65534)
    {
      v24 = 0;
    }

    else
    {
      v24 = v31;
    }

    v25 = LOWORD(__n[0]);
    v26 = v24 + LOWORD(__n[0]);
    v27 = a8 >= v26;
    a8 -= v26;
    if (!v27)
    {
      v18 = *a9;
      goto LABEL_7;
    }

    memcpy(a7, *(&__n[1] + 2), LOWORD(__n[0]));
    v28 = *a9;
    *(a10 + 8 * v28) = a7;
    *(a11 + 4 * v28) = v25;
    v29 = &a7[v25];
    memcpy(v29, *(__n + 2), v24);
    v30 = *a9;
    *(a12 + 8 * v30) = v29;
    *(a13 + 4 * v30) = v23;
    LOWORD(v19) = v19 + 1;
    v18 = *a9 + 1;
    *a9 = v18;
    if (*(v17[7] + 36) > v19)
    {
      a7 = &v29[v24];
      if (v18 < v15)
      {
        continue;
      }
    }

    goto LABEL_7;
  }

  v16 = v22;
  if (v17)
  {
    goto LABEL_11;
  }

  return v16;
}

uint64_t sub_100023F50(atomic_ullong *a1, uint64_t a2, __int16 a3, unint64_t *a4, unsigned int a5, uint64_t *a6, uint64_t (*a7)(unint64_t, void, unint64_t, void, uint64_t), uint64_t a8)
{
  v11 = a5;
  v16 = a1[50];
  v17 = (v16 >> 9) & 0x3FFF;
  if (v17)
  {
    v41 = 0;
    v40 = -21846;
    v18 = a5;
    if (v17 == a5)
    {
      goto LABEL_3;
    }

    return 34;
  }

  v18 = (((((v16 >> 27) & 0xF000) - 160) & 0xFFE0) >> 2) - 72;
  v41 = 0;
  v40 = -21846;
  if ((v16 & 0x7FFE00) == 0 && v18 < a5)
  {
    return 34;
  }

LABEL_3:
  v19 = v18;
  v20 = sub_10003FA58(1uLL, v18, 0x13E032C7uLL);
  if (!v20)
  {
    return 12;
  }

  v21 = v20;
  v22 = sub_1000241B8(a1, a2, a4, v11, a3, a6, &v41, &v40);
  if (!v22)
  {
    v35 = a3 & 0xFFF9;
    while (1)
    {
      v28 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      v39 = 0xAAAAAAAAAAAAAAAALL;
      v37 = 0;
      v36 = -21846;
      v29 = v41;
      v30 = v40;
      if (*(v41[7] + 36) > v40)
      {
        break;
      }

      v32 = 0;
LABEL_26:
      v40 = v30;
      if (v19 >= v32)
      {
        v33 = v32;
      }

      else
      {
        v33 = v19;
      }

      memcpy(v21, v28, v33);
      sub_10004BE88(v29, 1);
      sub_100046D50(v29);
      v41 = 0;
      v34 = sub_1000241B8(a1, a2, v21, v37, v35 | 4u, 0, &v41, &v40);
      if (v34)
      {
        v24 = 0;
        if (v34 == 2)
        {
          v23 = 0;
        }

        else
        {
          v23 = v34;
        }

        goto LABEL_6;
      }
    }

    while (1)
    {
      v22 = sub_10001AD80(v29, v30, &v39, &v37);
      if (v22)
      {
        break;
      }

      v22 = sub_10001AE98(v29, v30, &v38, &v36);
      if (v22)
      {
        break;
      }

      v28 = v39;
      v31 = a7(v39, v37, v38, v36, a8);
      if (v31)
      {
        v24 = v31;
        v23 = 0;
        goto LABEL_6;
      }

      if (*(v29[7] + 36) <= ++v30)
      {
        v32 = v37;
        goto LABEL_26;
      }
    }
  }

  v23 = v22;
  v24 = 0;
LABEL_6:
  v25 = v41;
  if (v41)
  {
    sub_10004BE88(v41, 1);
    sub_100046D50(v25);
  }

  sub_10003FB5C(v21, v19);
  if (v23)
  {
    return v23;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_1000241B8(atomic_ullong *a1, uint64_t a2, unint64_t *a3, unsigned int a4, __int16 a5, uint64_t *a6, atomic_ullong **a7, unsigned __int16 *a8)
{
  if ((a5 & 4) != 0)
  {
    v17 = 4;
    goto LABEL_6;
  }

  if ((a5 & 2) == 0 || (v16 = sub_100022EC0(a1, a2, a3, a4, 1u, a5 & 0x380, 0, a6, a7, a8), v16 == 2))
  {
    v17 = 3;
LABEL_6:
    v16 = sub_100022EC0(a1, a2, a3, a4, v17, a5 & 0x380, 0, a6, a7, a8);
  }

  if (a6 && !v16)
  {
    *a6 = sub_100047D10(*a7);
    a6[1] = a1;
  }

  return v16;
}

uint64_t sub_1000242A4(uint64_t a1, unint64_t a2, unsigned int a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7, uint64_t *a8)
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v28 = 0;
  v15 = *(a6 + 5);
  v16 = (v15 << 28) & 0x80000000 | (((v15 >> 4) & 1) << 30) | (((v15 >> 5) & 1) << 27) | a2;
  if ((v15 & 0x18) == 0)
  {
    v16 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v17 = a2;
  }

  else
  {
    v17 = v16;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v18 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v15;
  }

  else
  {
    v18 = v15;
  }

  if (!a3)
  {
    v13 = *(*(*(*a1 + 392) + 376) + 36);
  }

  if (v13 - 65537 < 0xFFFF0060 || a4 != 8 && (v18 & 1) != 0 || a4 > (((v13 - 160) >> 2) - 72) || a5 + a4 > sub_10001A0B8(v18, v13, a4, a5) || v18 > 0x1FF)
  {
    return 22;
  }

  v19 = ((v12 & 0x3FFF) << 9) | ((v13 >> 12) << 39) | (v11 << 23) | v18;
  v20 = *a6;
  v27 = v19;
  v29 = v20;
  v26 = 0x300086583;
  if ((v18 & 0x80) != 0)
  {
    if (!sub_1000011C4(*(a6 + 6)))
    {
      v24 = *(a6 + 6);
      if (v24 <= 0xFFF)
      {
        v25 = *(a6 + 7);
        v27 = v19 & 0xFF000FFFFFFFFFFFLL | (v24 << 44) | ((v25 & 0x7F) << 56);
        if (v25 <= 0x7F)
        {
          WORD2(v26) = 11;
          v21 = 27;
          goto LABEL_19;
        }
      }
    }

    return 22;
  }

  v21 = 19;
LABEL_19:
  if (v18 >= 0x100)
  {
    WORD2(v26) = v21;
  }

  result = sub_1000244B4(a1, v17, *(a6 + 4), &v26, a7, a8);
  if (!result)
  {
    atomic_fetch_add_explicit((*(*a8 + 392) + 32), 1uLL, memory_order_relaxed);
    v23 = a6[1];
    if (v23)
    {
      *(*a8 + 424) = v23;
    }

    sub_10004BE88(*a8, 2);
    return 0;
  }

  return result;
}

uint64_t sub_1000244B4(pthread_mutex_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = (*(a4 + 8) >> 27) & 0x1F000;
  v19[0] = 3;
  v19[2] = v11;
  v19[3] = 448;
  v12 = *(a4 + 4);
  if (v12)
  {
    v19[0] = 2;
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v19[1] = a3;
  if ((v12 & 0x10) != 0)
  {
    v13 = 536870916;
  }

  else
  {
    v13 = 4;
  }

  v14 = *a1;
  if (sub_100046328(a1) == 13)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1000487E8(v14, v13 | a2, 0, v19, a4, v15, a5, &v20);
  if (!v16)
  {
    v17 = v20;
    *a6 = v20;
    sub_10004C7D8(v17, a5, 0);
  }

  return v16;
}

uint64_t sub_1000245A4(uint64_t a1, unint64_t a2, int a3, int a4, unsigned int a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a4;
  v13 = a3;
  return sub_1000242A4(a1, a2, a5, a6, a7, v11, a9, a10);
}

uint64_t sub_10002462C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, unint64_t a7, uint64_t **a8)
{
  v38 = a7;
  v39 = a8;
  v14 = *(a6 + 28);
  if (v14 >= 0x40)
  {
    v15 = 96;
  }

  else
  {
    v15 = v14 + 32;
  }

  __chkstk_darwin(a1);
  v17 = &v38 - v16;
  bzero(&v38 - v16, v15);
  v42 = 0;
  v41 = 0x1C000000000;
  v18 = *(a6 + 20);
  v19 = (v18 << 28) & 0x80000000 | (((v18 >> 4) & 1) << 30) | (((v18 >> 5) & 1) << 27) | a2;
  if ((v18 & 0x18) == 0)
  {
    v19 = a2;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = v19;
  }

  if ((a2 & 0xC0000000) != 0)
  {
    v21 = (a2 >> 26) & 0x10 | (8 * (a2 >> 31)) | (a2 >> 22) & 0x20 | v18;
  }

  else
  {
    v21 = v18;
  }

  *v17 = 25987;
  *(v17 + 1) = v15;
  if (v21 > 0x1FF)
  {
    return 22;
  }

  v22 = *a1;
  *(v17 + 1) = *(v17 + 1) & 0xFFFFF07FFFFFFE00 | v21 | (((*(*(*(*a1 + 392) + 376) + 36) >> 12) & 0x1F) << 39);
  *(v17 + 3) = *a6;
  *(v17 + 1) = -267452416;
  if ((v21 & 0x80) == 0)
  {
    goto LABEL_14;
  }

  if (sub_1000011C4(*(a6 + 24)))
  {
    return 22;
  }

  v31 = *(a6 + 24);
  if (v31 > 0xFFF)
  {
    return 22;
  }

  v32 = *(v17 + 1) & 0x80000FFFFFFFFFFFLL | ((*&v31 & 0x7FFFFLL) << 44);
  v33 = *(a6 + 28);
  *(v17 + 1) = v32 | ((v33 & 0x7F) << 56);
  if (v33 > 0x7F)
  {
    return 22;
  }

  if (v33 >= 0x40)
  {
    v34 = 64;
  }

  else
  {
    v34 = v33;
  }

  memcpy(v17 + 32, (a6 + 32), v34);
  v22 = *a1;
LABEL_14:
  v23 = v20 | 0x20000000;
  if (v21 < 0x100)
  {
    v23 = v20;
  }

  v24 = *(a6 + 16);
  v40[0] = v23 & 0xFFFF0000 | 2;
  v40[1] = v24;
  v25 = 3;
  if ((v23 & 0x40000000) == 0)
  {
    v25 = 1;
  }

  if ((a5 & 1) == 0)
  {
    v25 = 0;
  }

  v26 = v23 | v25;
  if ((a5 & 2) != 0)
  {
    v26 |= 4uLL;
  }

  if ((a5 & 4) != 0)
  {
    v26 |= 0x20uLL;
  }

  v27 = v26 | ((a5 & 0x200) << 23);
  if (sub_100046328(a1) == 13)
  {
    v28 = a1;
  }

  else
  {
    v28 = 0;
  }

  result = sub_100049EE0(v22, v27, a3, v40, v17, v28, a4, v38, &v42);
  if ((a5 & 4) == 0 || result)
  {
    v30 = v42;
    if (result)
    {
      v35 = 0;
    }

    else
    {
      v35 = v42;
    }

    *v39 = v35;
    if (!result)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v30 = v42;
    if ((v42[2] & 0x10) == 0)
    {
      *v39 = v42;
LABEL_44:
      v36 = *(a6 + 8);
      result = 0;
      if (v36)
      {
        v30[53] = v36;
      }

      return result;
    }

    if (a5)
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }

    sub_10001AB8C(v42, v37 & (a5 << 30 >> 31));
    *v39 = 0;
    return 2;
  }

  return result;
}

uint64_t sub_100024924(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, int a7, uint64_t a8, unint64_t a9, uint64_t **a10)
{
  v11[1] = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v11[0] = a8;
  v12 = a7;
  v13 = a5;
  return sub_10002462C(a1, a2, a3, a4, a6, v11, a9, a10);
}

uint64_t sub_1000249A4(atomic_ullong *a1, uint64_t a2, int a3, uint64_t (*a4)(void), uint64_t a5, unint64_t a6)
{
  v103 = a5;
  v104 = a6;
  v105 = a4;
  v102 = a2;
  v8 = (a1[50] & 0x7F00000000000000uLL) > 0x4000000000000000;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v113 = v9;
  v114 = v9;
  v111 = v9;
  v112 = v9;
  v109 = v9;
  v110 = v9;
  v107 = v9;
  v108 = v9;
  __chkstk_darwin(a1);
  v11 = (&v87 - v10);
  bzero(&v87 - v10, v12);
  v101 = a3 & 0x180;
  v13 = v101 != 0;
  if (a3)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  sub_10004B8D4(a1, v14);
  v15 = a1[7];
  if (!v15)
  {
    sub_10004BE88(a1, v14);
    return 22;
  }

  v16 = *(v15 + 34);
  v17 = v16 + 1;
  v100 = v16;
  if (v16 < 8)
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v18 = &v107;
    v107 = 0u;
    v108 = 0u;
  }

  else
  {
    v18 = sub_10003FA58(v16 + 1, 0x10uLL, 0x1020040FFEA222EuLL);
    if (!v18)
    {
      sub_10004BE88(a1, v14);
      return 12;
    }
  }

  *v18 = a1;
  *(v18 + 4) = 0;
  sub_10004C19C(a1);
  if (a3)
  {
    v19 = sub_10004B964(a1, 2, v104);
    if (v19)
    {
      goto LABEL_13;
    }

    if ((a1[50] & 0x80) != 0)
    {
      sub_10004C7D8(a1, v104, 0);
    }
  }

  v19 = 0;
LABEL_13:
  v20 = a3 & 0x20;
  v98 = &v87;
  v97 = v17;
  if (!v105 || v19 | v20)
  {
    v21 = v103;
    if (v19)
    {
      goto LABEL_99;
    }

    goto LABEL_21;
  }

  v21 = v103;
  if ((a3 & 0x10) == 0 || *(a1[7] + 34))
  {
    v19 = (v105)(a1, v103);
  }

  if (!v19)
  {
LABEL_21:
    v22 = 0;
    v90 = a3 & 0xFFFFFE4F;
    v23 = a3 & 0xFFFFFE4D | 2;
    v92 = a3 & 0xFFFFFE4C;
    if (v101)
    {
      v23 = a3 & 0xFFFFFE4C;
    }

    v24 = v20 == 0;
    if (v105)
    {
      v25 = v20 != 0;
    }

    else
    {
      v25 = 0;
    }

    v89 = v13 << 7;
    v99 = (v13 << 7) | v23;
    v91 = v23 | 0x100;
    if (v105)
    {
      v26 = v24;
    }

    else
    {
      v26 = 0;
    }

    v94 = v26;
    v96 = v18;
    v95 = v25;
    do
    {
      v27 = &v18[v22];
      v28 = *v27;
      v29 = *(*v27 + 56);
      if ((*(v29 + 32) & 2) != 0 || (v30 = v27[4], *(v29 + 36) <= v30) || (a3 & 0x10) != 0 && *(v29 + 34) == 1)
      {
        if (v25)
        {
          v19 = v105();
          v28 = *v27;
        }

        else
        {
          v19 = 0;
        }

        sub_10001AB8C(v28, v14);
        *v27 = 0;
        --v22;
        if (v19)
        {
          break;
        }

        continue;
      }

      *v11 = 0;
      v31 = sub_10001B084(v28, v30, v11);
      if (v31)
      {
        v19 = v31;
        v57 = a1[1];
        if (v57)
        {
          v58 = (v57 + 4040);
        }

        else
        {
          v58 = (*(*(*a1 + 392) + 384) + 212);
        }

        v63 = *(*(*v27 + 56) + 34);
        v64 = sub_100047D10(*v27);
        sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error getting index %d child oid: %d\n", "btree_iterate_nodes", 6433, v58, v63, v64, v27[4], v19);
        break;
      }

      ++v27[4];
      if (v100 < ++v22)
      {
        v59 = a1[1];
        if (v59)
        {
          v60 = (v59 + 4040);
        }

        else
        {
          v60 = (*(*(*a1 + 392) + 384) + 212);
        }

        v65 = &v18[v22];
        v66 = *(v65 - 2);
        v67 = *(*(v66 + 56) + 34);
        v68 = sub_100047D10(v66);
        sub_10003E5FC("%s:%d: %s level %d node 0x%llx index %d: more levels than expected\n", "btree_iterate_nodes", 6440, v60, v67, v68, *(v65 - 4) - 1);
        v19 = 22;
        break;
      }

      v32 = &v18[v22];
      *(v32 + 4) = 0;
      v33 = (v32 - 1);
      v34 = sub_10001A958(a1, v11, v102, v99, *(*(*(v32 - 2) + 56) + 34) - 1, v104, v32);
      v19 = v34;
      if (v34)
      {
        v35 = a1[1];
        if (v35)
        {
          v36 = (v35 + 4040);
          v37 = *(*(*v33 + 56) + 34);
          v38 = sub_100047D10(*v33);
          v34 = sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v36, v37, v38, *(v32 - 4) - 1, *v11, v99, v19);
        }

        else
        {
          v39 = (*(*(*a1 + 392) + 384) + 212);
          v40 = *(*(*v33 + 56) + 34);
          v41 = sub_100047D10(*v33);
          v34 = sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6455, v39, v40, v41, *(v32 - 4) - 1, *v11, v99, v19);
        }

        v21 = v103;
        if (!v101)
        {
          goto LABEL_95;
        }
      }

      else if (!v101)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      if (*(*(*(v32 - 2) + 56) + 36) > *(v32 - 4))
      {
        v93 = &v87;
        v42 = a1[50];
        __chkstk_darwin(v34);
        v44 = (&v87 - v43);
        bzero(&v87 - v43, v45);
        v46 = *(v32 - 4);
        if (*(*(*v33 + 56) + 36) > v46)
        {
          v47 = sub_10001B084(*v33, v46, v44);
          if (v47 || (v47 = sub_10001A958(a1, v44, v102, v91, *(*(*v33 + 56) + 34) - 1, v104, &v106), v47))
          {
            v88 = v47;
            v48 = a1[1];
            if (v48)
            {
              v87 = (v48 + 4040);
            }

            else
            {
              v87 = (*(*(*a1 + 392) + 384) + 212);
            }

            v49 = *(*(*v33 + 56) + 34);
            v50 = sub_100047D10(*v33);
            sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error prefetching index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6474, v87, v49, v50, *(v32 - 4), *v44, v91, v88);
            v21 = v103;
          }
        }
      }

      if (v19)
      {
        if (v19 != 45 && v19 != 16)
        {
          goto LABEL_95;
        }

        v52 = sub_10001A958(a1, v11, v102, v92, *(*(*v33 + 56) + 34) - 1, v104, v32);
        if (v52)
        {
          v19 = v52;
LABEL_95:
          v79 = a1[1];
          if (v79)
          {
            v80 = (v79 + 4040);
          }

          else
          {
            v80 = (*(*(*a1 + 392) + 384) + 212);
          }

          v81 = *(*(*v33 + 56) + 34);
          v82 = sub_100047D10(*v33);
          sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error getting index %d child flags 0x%x: %d\n", "btree_iterate_nodes", 6510, v80, v81, v82, *(v32 - 4) - 1, v90 | v89 | 2, v19);
          v18 = v96;
          break;
        }
      }

      else
      {
        v53 = sub_10004C01C(*v32);
        if (v53)
        {
          v19 = v53;
          v69 = a1[1];
          if (v69)
          {
            v70 = (v69 + 4040);
          }

          else
          {
            v70 = (*(*(*a1 + 392) + 384) + 212);
          }

          v75 = *(*(*v32 + 56) + 34);
          v76 = sub_100047D10(*v33);
          v77 = *(v32 - 4) - 1;
          v78 = sub_100047D10(*v32);
          sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error ON WAIT getting index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6487, v70, v75, v76, v77, v78, v99, v19);
          sub_100046D50(*v32);
          goto LABEL_94;
        }
      }

      sub_10004B8D4(*v32, v14);
      if ((a3 & 1) == 0)
      {
        goto LABEL_71;
      }

      v54 = *v32;
      v55 = sub_100046320(*v32);
      v56 = sub_10004B964(v54, (v55 >> 29) & 2, v104);
      if (v56)
      {
        v19 = v56;
        v61 = a1[1];
        if (v61)
        {
          v62 = (v61 + 4040);
        }

        else
        {
          v62 = (*(*(*a1 + 392) + 384) + 212);
        }

        v71 = *(*(*v32 + 56) + 34);
        v72 = sub_100047D10(*v33);
        v73 = *(v32 - 4) - 1;
        v74 = sub_100047D10(*v32);
        sub_10003E5FC("%s:%d: %s level %d node 0x%llx: error MODIFYING index %d child 0x%llx flags 0x%x: %d\n", "btree_iterate_nodes", 6501, v62, v71, v72, v73, v74, v99, v19);
        sub_10001AB8C(*v32, 2);
LABEL_94:
        *v32 = 0;
        goto LABEL_95;
      }

LABEL_69:
      if (sub_100047D10(*v32) != *v11)
      {
        sub_10001DFEC(*(v32 - 2), (*(v32 - 4) - 1), (*v32 + 112), v104);
      }

LABEL_71:
      if (v94)
      {
        v19 = (v105)(*v32, v21);
      }

      else
      {
        v19 = 0;
      }

      v18 = v96;
      v25 = v95;
      if (v19)
      {
        break;
      }
    }

    while ((v22 & 0x8000) == 0);
  }

LABEL_99:
  v83 = v97;
  if (((v97 - 1) & 0x8000) == 0)
  {
    v84 = v100 + 1;
    v85 = &v18[v100];
    do
    {
      if (*v85)
      {
        sub_10001AB8C(*v85, v14);
      }

      v85 -= 2;
      v8 = v84-- <= 1;
    }

    while (!v8);
  }

  if (v18 != &v107)
  {
    sub_10003FB5C(v18, (16 * v83));
  }

  return v19;
}

uint64_t sub_100025404(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = a3[50];
  __chkstk_darwin(a1);
  v12 = (&v23 - v11);
  bzero(&v23 - v11, v13);
  if (a5 == 2)
  {
    if (sub_100046328(a1) == 13)
    {
      v15 = a1;
    }

    else
    {
      v15 = 0;
    }

    *(a4 + 8) = v15;
    v16 = sub_100048044(a4);
    v17 = sub_10005EC74(v16);
    if (!v17)
    {
      return 22;
    }

    *(a4 + 416) = v17;
    if (a4 != a3)
    {
      *(a4 + 400) = *(a3 + 25);
    }

    v14 = sub_10004C960(a4);
    goto LABEL_11;
  }

  if (a5 == 1)
  {
    v14 = sub_10004C8EC(a4);
LABEL_11:
    v18 = v14;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_13:
  if (!(*(*(a4 + 56) + 32) & 2 | v18))
  {
    v19 = 0;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    while (v19 < *(*(a4 + 56) + 36))
    {
      *v12 = 0;
      v20 = sub_10001B084(a4, v19, v12);
      if (v20)
      {
        return v20;
      }

      v20 = sub_10001A958(a3, v12, 0, 2u, *(*(a4 + 56) + 34) - 1, 0, &v23);
      if (v20)
      {
        return v20;
      }

      v21 = v23;
      v18 = sub_100025404(a1, a2, a3, v23, a5);
      sub_10004BE88(v21, 1);
      sub_100046D50(v21);
      ++v19;
      if (v18)
      {
        return v18;
      }
    }

    return 0;
  }

  return v18;
}

uint64_t sub_10002561C(void *a1, void *a2, unint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v14 = a2[50];
  __chkstk_darwin(a1);
  v16 = (&v41 - v15);
  bzero(&v41 - v15, v17);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v18 = (a3 >> 26) & 0x10 | a4 | (8 * (a3 >> 31)) | (a3 >> 22) & 0x20;
  LODWORD(v46[0]) = 2123139;
  *(v46 + 8) = *(a2 + 25);
  v19 = a2[52];
  *(&v46[0] + 1) = *(&v46[0] + 1) & 0xFFFFFFFFFFFFFE00 | BYTE8(v46[0]) & 0x47 | (v18 & 0x1B8);
  *(&v46[1] + 1) = v19;
  v20 = a2[7];
  WORD2(v46[0]) = *(v20 + 32) & 0x1B;
  WORD3(v46[0]) = *(v20 + 34);
  v21 = a2[1];
  if (!v21)
  {
    v21 = *(*a2 + 392);
  }

  v44 = -21846;
  v22 = sub_100048044(a2);
  v23 = sub_1000244B4(v21, a3, v22, v46, a5, a7);
  v24 = v23;
  if (!a6 || *(a2[7] + 32) & 2 | v23)
  {
    if (!v23)
    {
      v25 = a7;
      v26 = *(*a7 + 56);
      v27 = a2[7];
      v28 = sub_100048054(a2) - 32;
      v29 = (v26 + 32);
      v30 = v25;
      memcpy(v29, (v27 + 32), v28);
      v31 = *v25;
      if (*(a2[7] + 32))
      {
        v32 = *(v31 + 392);
        *v32 = WORD4(v46[0]) & 0x1FF;
        v32[1] = (*(&v46[0] + 1) >> 27) & 0x1F000;
        v32[2] = (DWORD2(v46[0]) >> 9) & 0x3FFF;
        v32[3] = (*(&v46[0] + 1) >> 23);
      }

      sub_100025EEC(v31, v46, 0);
      v24 = 0;
      goto LABEL_28;
    }

    return v24;
  }

  v42 = a7;
  v33 = 0;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v43 = (a3 >> 23) & 0x200;
  while (1)
  {
    if (v33 >= *(a2[7] + 36))
    {
      v24 = 0;
      goto LABEL_27;
    }

    *v16 = 0;
    v34 = sub_10001B084(a2, v33, v16);
    if (v34 || (v34 = sub_10001A958(a1, v16, 0, v43 | 2u, *(a2[7] + 34) - 1, 0, &v48), v34))
    {
      v24 = v34;
      goto LABEL_27;
    }

    v35 = v48;
    v36 = sub_10002561C(a1, v48, a3, v18, a5, a6, &v47);
    if (v36)
    {
      break;
    }

    v37 = sub_10001AD80(a2, v33, &v45, &v44);
    if (v37)
    {
      v24 = v37;
LABEL_17:
      v38 = a1[1];
      if (v38)
      {
        v39 = (v38 + 4040);
      }

      else
      {
        v39 = (*(*(*a1 + 392) + 384) + 212);
      }

      sub_10003E5FC("%s:%d: %s btree_node_insert_internal failed: %d\n", "btree_node_copy", 6692, v39, v24);
      goto LABEL_21;
    }

    *v16 = *(v47 + 112);
    v24 = sub_10001DB30(*v42, v33, v45, v44, v16, (*(*v42 + 407) & 0x7Fu) + 8, a5);
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_100046D50(v47);
    sub_10004BE88(v35, 1);
    sub_100046D50(v35);
    v47 = 0;
    ++v33;
    if (v24)
    {
      goto LABEL_27;
    }
  }

  v24 = v36;
  sub_10004BE88(v35, 1);
  sub_100046D50(v35);
  if (v47)
  {
    sub_100046D50(v47);
  }

LABEL_27:
  v30 = v42;
  sub_10004C7D8(*v42, a5, 0);
LABEL_28:
  sub_10004BE88(*v30, 2);
  return v24;
}

uint64_t sub_100025A3C(void *a1, unint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5)
{
  *a5 = 0;
  if ((a3 & 0x18) != 0)
  {
    v9 = (a3 << 28) & 0x80000000 | (((a3 >> 4) & 1) << 30) | (((a3 >> 5) & 1) << 27) | a2;
  }

  else
  {
    v9 = a2;
  }

  sub_10004B8D4(a1, 1);
  v10 = sub_10002561C(a1, a1, v9, a3, a4, 1, a5);
  if (v10)
  {
    v11 = *a5;
    if (*a5)
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      sub_100025B30(v11, a4, &v16);
      sub_100046D50(*a5);
      *a5 = 0;
    }
  }

  else
  {
    v12 = a1[49];
    v13 = *(*a5 + 392);
    v14 = *(v12 + 16);
    *(v13 + 32) = *(v12 + 32);
    *(v13 + 16) = v14;
  }

  sub_10004BE88(a1, 1);
  return v10;
}

uint64_t sub_100025B30(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10004B8D4(a1, 2);
  if ((*(a1 + 19) & 0x80) != 0 || (*(a1 + 400) & 0x80) != 0)
  {
    v8 = sub_100025CA8(a1, a1, a2);
  }

  else
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v7 = sub_100047D10(v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = *(*a1 + 392);
    v11 = sub_100046320(a1);
    v12 = sub_100048054(a1);
    v13 = sub_100047D10(a1);
    if (a3)
    {
      v14 = sub_1000416DC(v10, v11, v12, v7, v13, a2, 0, a3);
    }

    else
    {
      v14 = sub_100041700(v10, v11, v12, v7, v13, a2, 0);
    }

    v8 = v14;
    if (v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v16 = (v15 + 4040);
      }

      else
      {
        v16 = (*(*(*a1 + 392) + 384) + 212);
      }

      v17 = sub_100047D10(a1);
      v18 = sub_100046320(a1);
      sub_10003E5FC("%s:%d: %s error adding btree 0x%llx type 0x%x to reap list: %d\n", "btree_delete", 6818, v16, v17, v18, v8);
    }
  }

  sub_10004BE88(a1, 2);
  return v8;
}

uint64_t sub_100025CA8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[50];
  __chkstk_darwin(a1);
  v8 = (&v15 - v7);
  bzero(&v15 - v7, v9);
  if ((*(*(a2 + 56) + 32) & 2) == 0)
  {
    v10 = 0;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    while (v10 < *(*(a2 + 56) + 36))
    {
      *v8 = 0;
      v11 = sub_10001B084(a2, v10, v8);
      if (v11 || (v11 = sub_10001A958(a1, v8, 0, 0, *(*(a2 + 56) + 34) - 1, 0, &v15), v11))
      {
        v13 = v11;
        goto LABEL_10;
      }

      v12 = v15;
      sub_10004B8D4(v15, 2);
      v13 = sub_100025CA8(a1, v12, a3);
      sub_10004BE88(v12, 2);
      sub_100046D50(v12);
      ++v10;
      if (v13)
      {
        goto LABEL_10;
      }
    }
  }

  v13 = 0;
LABEL_10:
  sub_100049B88(a2, a3);
  return v13;
}

uint64_t sub_100025E3C(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (sub_100046328(a1) != 2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(*(a1 + 392) + 32);
  return result;
}

uint64_t sub_100025E94(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (sub_100046328(a1) != 2)
  {
    return 22;
  }

  result = 0;
  *a2 = *(*(a1 + 392) + 24);
  return result;
}

uint64_t sub_100025EEC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 56);
  result = sub_10001A200(a1, a2);
  if (!result)
  {
    if (a2)
    {
      *(a1 + 400) = *(a2 + 8);
      *(a1 + 416) = *(a2 + 24);
    }

    v8 = v6 + 56 + *(v6 + 42);
    *(a1 + 376) = v6 + 56;
    *(a1 + 384) = v8;
    v9 = sub_100048054(a1);
    v10 = *(v6 + 32);
    v11 = -40;
    if ((v10 & 1) == 0)
    {
      v11 = 0;
    }

    v12 = v6 + v9 + v11;
    *(a1 + 392) = v12;
    if (v10)
    {
      v13 = *(a1 + 400) & 0xFFFFFFFFFFFFFE00 | *v12 & 0x1FF;
      *(a1 + 400) = v13;
      v14 = v13 & 0xFFFFF07FFFFFFFFFLL | (((*(v12 + 4) >> 12) & 0x1F) << 39);
      *(a1 + 400) = v14;
      v15 = v14 & 0xFFFFFFFFFF8001FFLL | ((*(v12 + 8) & 0x3FFFLL) << 9);
      *(a1 + 400) = v15;
      *(a1 + 400) = v15 & 0xFFFFFF80007FFFFFLL | (*(v12 + 12) << 23);
      *(a1 + 408) = sub_100047D10(a1);
    }

    if (a3)
    {

      return sub_100001098(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100025FE8(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1[16] & 4) != 0)
  {
    if ((*(a1 + 400) & 4) == 0)
    {
      v3 = 0;
      return (v1[23] + v3 + v1[25] + v1[27]);
    }

    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  v4 = v1[21];
  v5 = sub_10001ABEC(a1, 0);
  v3 = v4 - v5 * v2;
  if (v4 < (v5 * v2))
  {
    v3 = 0;
  }

  return (v1[23] + v3 + v1[25] + v1[27]);
}

uint64_t sub_100026068(uint64_t result, int a2, unsigned __int16 a3, __int16 *a4, unsigned __int16 *a5)
{
  if ((*(result + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 48;
  if (a2 != 1)
  {
    v6 = 52;
  }

  v7 = 392;
  if (a2 == 1)
  {
    v7 = 384;
  }

  v8 = *(*(result + 56) + v6);
  v9 = -1;
  if (v8 == 0xFFFF)
  {
    v13 = -1;
    if (a4)
    {
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  v11 = result;
  v24 = a4;
  v25 = a5;
  v12 = *(result + v7);
  v13 = -1;
  do
  {
    v9 = v8;
    v14 = v8;
    if (a2 == 1)
    {
      v15 = *(*(v11 + 56) + 44);
      v16 = v15 >= v9;
      v17 = v15 - v9;
      if (v17 != 0 && v16 && v17 >= 4)
      {
        v20 = *(*(v11 + 384) + v14 + 2);
        if (v20 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v20 = (v20 + 7) & 0x1FFF8;
          }

          if (v20 <= v17)
          {
            goto LABEL_33;
          }
        }
      }
    }

    else
    {
      result = sub_100048054(v11);
      v18 = *(v11 + 56);
      if (*(v18 + 32))
      {
        v19 = -96;
      }

      else
      {
        v19 = -56;
      }

      if (v9 <= (result - *(v18 + 42) + v19 - (*(v18 + 46) + *(v18 + 44))) && v9 >= 4u)
      {
        v21 = *(*(v11 + 392) - v14 + 2);
        if (v21 >= 4)
        {
          if ((*(v11 + 400) & 0x40) == 0)
          {
            v21 = (v21 + 7) & 0x1FFF8;
          }

          if (v21 <= v9)
          {
            goto LABEL_33;
          }
        }
      }
    }

    result = sub_1000048F4(*(*v11 + 392));
    if (result)
    {
      break;
    }

LABEL_33:
    if (a2 == 1)
    {
      v22 = v14;
    }

    else
    {
      v22 = -v14;
    }

    v23 = (v12 + v22);
    if (v23[1] >= v5)
    {
      goto LABEL_39;
    }

    v8 = *v23;
    v13 = v9;
  }

  while (v8 != 0xFFFF);
  v9 = -1;
  v13 = -1;
LABEL_39:
  a4 = v24;
  a5 = v25;
  if (v24)
  {
LABEL_40:
    *a4 = v13;
  }

LABEL_41:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_100026288(uint64_t a1, __int16 a2, uint64_t a3)
{
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(a1 + 56);
  v7 = *(v6 + 32);
  if (v7)
  {
    v10 = sub_10002561C(0, a1, 0x88000000uLL, (16 * v7) & 0x180, a3, 0, &v53);
    if (v10)
    {
      return v10;
    }

    v11 = *(a1 + 56);
    *(v11 + 36) = 0;
    *(v11 + 44) = 0;
    v12 = *(a1 + 376);
    v13 = *(a1 + 392) - *(a1 + 384);
    *(v11 + 46) = v13;
    *(v11 + 48) = 0xFFFF0000FFFFLL;
    bzero(v12, *(v11 + 42) + v13);
    v14 = v53;
    v15 = v53[7];
    goto LABEL_11;
  }

  v48 = 2123139;
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v49 = v7;
  v50 = *(v6 + 34);
  v8 = *(a1 + 40);
  v47[0] = *(a1 + 36);
  v47[1] = v8;
  v47[2] = (*(a1 + 400) >> 27) & 0x1F000;
  v47[3] = 448;
  v9 = sub_1000487E8(*a1, 2281701376, 0, v47, &v48, *(a1 + 8), a3, &v53);
  if (!v9)
  {
    v16 = v53;
    v17 = v53[7];
    v18 = *(a1 + 56);
    v19 = v18[1];
    *v17 = *v18;
    v17[1] = v19;
    v20 = sub_10004C860(a1, v16);
    if (v20)
    {
      v10 = v20;
      v21 = *(a1 + 8);
      if (v21)
      {
        v22 = (v21 + 4040);
      }

      else
      {
        v22 = (*(*(*a1 + 392) + 384) + 212);
      }

      v23 = sub_100047D10(a1);
      v24 = sub_100047D10(v53);
      sub_10003E5FC("%s:%d: %s obj_exchange_phys (%llx, %llx) with xid %llu failed: %d\n", "btree_node_compact", 1572, v22, v23, v24, a3, v10);
LABEL_38:
      sub_100049B90(v53);
      sub_100046D50(v53);
      sub_10004C7D8(a1, a3, 0);
      return v10;
    }

    sub_100025EEC(a1, &v48, 0);
    sub_100025EEC(v53, &v48, 0);
    v14 = v53;
    v15 = v53[7];
    *(*(a1 + 56) + 32) |= *(v15 + 32) & 0x8000;
LABEL_11:
    v25 = sub_10001ABEC(v14, a2);
    v26 = 2;
    if ((*(v15 + 32) & 4) == 0)
    {
      v26 = 3;
    }

    sub_100026868(a1, (v25 << v26) & 0xFFFC);
    v27 = v53;
    v28 = v53[7];
    if (*(v28 + 36))
    {
      v29 = 0;
      while (1)
      {
        v30 = *(v28 + 32);
        v31 = v27[47];
        v32 = v29;
        v33 = (v31 + 4 * v29);
        v34 = (v31 + 8 * v29);
        if ((v30 & 4) == 0)
        {
          v33 = v34;
        }

        v35 = v31 + 8 * v32;
        if ((v30 & 4) != 0)
        {
          v36 = (*(v27 + 100) >> 9) & 0x3FFF;
        }

        else
        {
          v36 = *(v35 + 2);
        }

        v37 = *v33;
        v38 = v31 + 4 * v32 + 2;
        v39 = (v35 + 4);
        if ((v30 & 4) != 0)
        {
          v39 = v38;
        }

        v40 = *v39;
        v41 = sub_10001AD08(v27, v32);
        if (v37 == 0xFFFF)
        {
          v43 = 0;
        }

        else
        {
          v42 = sub_10001AE44(v27, v37, v36);
          if (v42)
          {
            break;
          }

          v27 = v53;
          v43 = (v53[48] + v37);
        }

        if (v40 > 0xFFFD)
        {
          v44 = 0;
        }

        else
        {
          v42 = sub_10001AF70(v27, v40, v41);
          if (v42)
          {
            break;
          }

          v44 = (v53[49] - v40);
        }

        v42 = sub_10001DB30(a1, v32, v43, v36, v44, v41, a3);
        if (v42)
        {
          break;
        }

        v29 = v32 + 1;
        v27 = v53;
        v28 = v53[7];
        if (*(v28 + 36) <= (v32 + 1))
        {
          goto LABEL_32;
        }
      }

      v10 = v42;
      if (v7)
      {
        memcpy((*(a1 + 56) + 32), (v53[7] + 32), v53[49] - v53[7] - 32);
        v45 = a1;
      }

      else
      {
        sub_10004C860(a1, v53);
        sub_100025EEC(a1, 0, 0);
        v45 = v53;
      }

      sub_100025EEC(v45, 0, 0);
    }

    else
    {
LABEL_32:
      v10 = 0;
    }

    goto LABEL_38;
  }

  return v9;
}

uint64_t sub_10002666C(uint64_t a1, int a2, unsigned __int16 a3, int a4, int a5)
{
  if (a5 == 0xFFFF)
  {
    return 22;
  }

  if ((*(a1 + 400) & 0x40) != 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = (a3 + 7) & 0xFFF8;
  }

  v6 = 52;
  if (a2 == 1)
  {
    v6 = 48;
  }

  v7 = 384;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = 392;
    v8 = -1;
  }

  v9 = (*(a1 + 56) + v6);
  v10 = *(a1 + v7);
  v9[1] -= v5;
  if (a4 != 0xFFFF || (result = 0, *v9 == a5))
  {
    v12 = v5;
    v13 = v8;
    v14 = (v10 + a5 * v8);
    v15 = v14[1] - v12;
    if (v15 < 5u)
    {
      v17 = (v10 + v8 * a4);
      if (a4 == 0xFFFF)
      {
        v17 = v9;
      }
    }

    else
    {
      if (a4 != 0xFFFF)
      {
        v9 = (v10 + v8 * a4);
      }

      v16 = v8 * v12 + a5;
      *v9 = v16;
      v17 = (v10 + v13 * v16);
      v17[1] = v15;
    }

    result = 0;
    *v17 = *v14;
  }

  return result;
}

uint64_t sub_10002675C(uint64_t a1, int a2, unsigned __int16 a3, _WORD *a4)
{
  v14 = -1;
  v13 = -1;
  sub_100026068(a1, a2, a3, &v13, &v14);
  if (v14 == 0xFFFF)
  {
    if ((*(a1 + 400) & 0x40) != 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = (a3 + 7) & 0xFFF8;
    }

    v11 = *(a1 + 56);
    v12 = *(v11 + 46);
    if (v12 < v10)
    {
      return 28;
    }

    if (a2 == 1)
    {
      LOWORD(v9) = *(v11 + 44);
      *(v11 + 44) = v9 + v10;
      *(v11 + 46) = v12 - v10;
    }

    else
    {
      *(v11 + 46) = v12 - v10;
      if (a2 == 2)
      {
        v9 = *(a1 + 392) - *(v11 + 44) - (*(a1 + 384) + (v12 - v10));
      }

      else
      {
        LOWORD(v9) = -1;
      }
    }
  }

  else
  {
    result = sub_10002666C(a1, a2, a3, v13, v14);
    if (result)
    {
      return result;
    }

    LOWORD(v9) = v14;
  }

  result = 0;
  *a4 = v9;
  return result;
}