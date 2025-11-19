uint64_t match_0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (!(*a1)--)
  {
    luaL_error(*(a1 + 32), "pattern too complex", a3, a4, a5, a6, a7, a8, v47);
  }

  v12 = a1 + 48;
LABEL_4:
  v13 = v8;
  while (1)
  {
    v14 = *(a1 + 24);
    if (v13 == v14)
    {
      result = a2;
      goto LABEL_87;
    }

    v15 = *v13;
    if (v15 <= 0x24)
    {
      if (v15 == 36 && v13 + 1 == v14)
      {
        if (a2 == *(a1 + 16))
        {
          result = a2;
        }

        else
        {
          result = 0;
        }

        goto LABEL_87;
      }

      goto LABEL_20;
    }

    if (v15 != 37)
    {
      break;
    }

    v16 = v13[1];
    if (v16 == 102)
    {
      v22 = v13[2];
      v21 = v13 + 2;
      if (v22 != 91)
      {
        luaL_error(*(a1 + 32), "missing '[' after '%%f' in pattern", a3, a4, a5, a6, a7, a8, v47);
      }

      v23 = classend(a1, v21, a3, a4, a5, a6, a7, a8);
      if (a2 == *(a1 + 8))
      {
        v24 = 0;
      }

      else
      {
        v24 = *(a2 - 1);
      }

      if (matchbracketclass(v24, v21, (v23 - 1)))
      {
        goto LABEL_72;
      }

      v25 = matchbracketclass(*a2, v21, (v23 - 1));
      v13 = v23;
      if (!v25)
      {
        goto LABEL_72;
      }
    }

    else
    {
      if (v16 - 48 < 0xA)
      {
        v26 = v16 - 49;
        if (v16 < 0x31 || v26 >= *(a1 + 40) || *(v12 + 16 * v26 + 8) == -1)
        {
          v26 = luaL_error(*(a1 + 32), "invalid capture index %%%d", a3, a4, a5, a6, a7, a8, v16 - 48);
        }

        v27 = v12 + 16 * v26;
        v28 = *(v27 + 8);
        if (*(a1 + 16) - a2 >= v28 && !memcmp(*v27, a2, *(v27 + 8)) && a2 != 0)
        {
          a2 += v28;
          v8 = v13 + 2;
          goto LABEL_4;
        }

        goto LABEL_72;
      }

      if (v16 == 98)
      {
        if (v14 - 1 <= v13 + 2)
        {
          luaL_error(*(a1 + 32), "malformed pattern (missing arguments to '%%b')", a3, a4, a5, a6, a7, a8, v47);
        }

        v30 = *a2;
        if (v30 == v13[2])
        {
          v31 = *(a1 + 16);
          v32 = a2 + 1;
          if ((a2 + 1) < v31)
          {
            v33 = 1;
            while (1)
            {
              v34 = *v32;
              if (v34 == v13[3])
              {
                if (!--v33)
                {
                  a2 = v32 + 1;
                  v8 = v13 + 4;
                  goto LABEL_4;
                }
              }

              else if (v34 == v30)
              {
                ++v33;
              }

              result = 0;
              if (++v32 == v31)
              {
                goto LABEL_87;
              }
            }
          }
        }

        goto LABEL_72;
      }

LABEL_20:
      v8 = classend(a1, v13, a3, a4, a5, a6, a7, a8);
      v18 = singlematch(a1, a2, v13, v8);
      v19 = *v8;
      if (v18)
      {
        if (v19 != 63)
        {
          if (v19 != 42)
          {
            if (v19 != 43)
            {
              if (v19 != 45)
              {
                ++a2;
                goto LABEL_4;
              }

              while (1)
              {
                result = match_0(a1, a2, v8 + 1);
                if (result)
                {
                  goto LABEL_87;
                }

                if (!singlematch(a1, a2, v13, v8))
                {
                  goto LABEL_72;
                }

                ++a2;
              }
            }

            ++a2;
          }

          v35 = -1;
          do
          {
            v36 = singlematch(a1, a2++, v13, v8);
            ++v35;
          }

          while (v36);
          v37 = a2 - 1;
          while ((v35 & 0x8000000000000000) == 0)
          {
            result = match_0(a1, v37, v8 + 1);
            --v35;
            --v37;
            if (result)
            {
              goto LABEL_87;
            }
          }

LABEL_72:
          result = 0;
          goto LABEL_87;
        }

        v13 = v8 + 1;
        result = match_0(a1, a2 + 1, v8 + 1);
        if (result)
        {
          goto LABEL_87;
        }
      }

      else
      {
        result = 0;
        if (v19 > 0x3F || ((1 << v19) & 0x8000240000000000) == 0)
        {
          goto LABEL_87;
        }

        v13 = v8 + 1;
      }
    }
  }

  if (v15 != 41)
  {
    if (v15 == 40)
    {
      v38 = (v13 + 1);
      if (v13[1] == 41)
      {
        v38 = (v13 + 2);
        v39 = a1;
        v40 = a2;
        v41 = 4294967294;
      }

      else
      {
        v39 = a1;
        v40 = a2;
        v41 = 0xFFFFFFFFLL;
      }

      result = start_capture(v39, v40, v38, v41, a5, a6, a7, a8);
      goto LABEL_87;
    }

    goto LABEL_20;
  }

  v42 = *(a1 + 40);
  v43 = 16 * v42 + 40;
  while (1)
  {
    v44 = __OFSUB__(v42, 1);
    LODWORD(v42) = v42 - 1;
    if (v42 < 0 != v44)
    {
      break;
    }

    v45 = *(a1 + v43);
    v43 -= 16;
    if (v45 == -1)
    {
      goto LABEL_83;
    }
  }

  LODWORD(v42) = luaL_error(*(a1 + 32), "invalid pattern capture", a3, a4, a5, a6, a7, a8, v47);
LABEL_83:
  v46 = (v12 + 16 * v42);
  v46[1] = &a2[-*v46];
  result = match_0(a1, a2, v13 + 1);
  if (!result)
  {
    v46[1] = -1;
  }

LABEL_87:
  ++*a1;
  return result;
}

char *match_1(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (!(*a1)--)
  {
    luaL_error(*(a1 + 32), "pattern too complex", a3, a4, a5, a6, a7, a8, v84);
  }

  if (*(a1 + 24) == v8)
  {
    goto LABEL_118;
  }

  v12 = a1 + 48;
  do
  {
    v85 = 0;
    utf8_safe_decode(*(a1 + 32), v8, &v85);
    if (v85 <= 36)
    {
      if (v85 == 36 && v8 + 1 == *(a1 + 24))
      {
        if (a2 == *(a1 + 16))
        {
          matched = a2;
        }

        else
        {
          matched = 0;
        }

        goto LABEL_117;
      }

      goto LABEL_23;
    }

    if (v85 != 37)
    {
      if (v85 == 41)
      {
        v70 = *(a1 + 40);
        v71 = 16 * v70 + 40;
        while (1)
        {
          v72 = __OFSUB__(v70, 1);
          LODWORD(v70) = v70 - 1;
          if (v70 < 0 != v72)
          {
            break;
          }

          v73 = *(a1 + v71);
          v71 -= 16;
          if (v73 == -1)
          {
            goto LABEL_112;
          }
        }

        LODWORD(v70) = luaL_error(*(a1 + 32), "invalid pattern capture", v13, v14, v15, v16, v17, v18, v84);
LABEL_112:
        v79 = (v12 + 16 * v70);
        v79[1] = &a2[-*v79];
        matched = match_1(a1, a2, v8 + 1);
        if (!matched)
        {
          v79[1] = -1;
        }

        goto LABEL_117;
      }

      if (v85 == 40)
      {
        v66 = (v8 + 1);
        if (v8[1] == 41)
        {
          v66 = (v8 + 2);
          v67 = a1;
          v68 = a2;
          v69 = 4294967294;
        }

        else
        {
          v67 = a1;
          v68 = a2;
          v69 = 0xFFFFFFFFLL;
        }

        matched = start_capture_0(v67, v68, v66, v69, v15, v16, v17, v18);
        goto LABEL_117;
      }

LABEL_23:
      v26 = classend_0(a1, v8);
      if (!singlematch_0(a1, a2, v8, v26))
      {
        v42 = *v26;
        v43 = v42 > 0x3F;
        v44 = (1 << v42) & 0x8000240000000000;
        if (!v43 && v44 != 0)
        {
          ++v26;
          goto LABEL_49;
        }

        goto LABEL_116;
      }

      v31 = *(a1 + 16);
      v32 = a2 + 1;
      do
      {
        v33 = v32;
        v34 = (v32 - 1);
        if ((v32 - 1) >= v31)
        {
          break;
        }

        ++v32;
      }

      while ((*v33 & 0xC0) == 0x80);
      if (v34 >= v31)
      {
        v35 = *(a1 + 16);
      }

      else
      {
        v35 = v33;
      }

      v36 = *v26;
      if (v36 > 0x3E)
      {
        if (v36 == 63)
        {
          v37 = *(a1 + 24);
          v38 = v26 + 1;
          do
          {
            v39 = v38;
            v40 = (v38 - 1);
            if ((v38 - 1) >= v37)
            {
              break;
            }

            ++v38;
          }

          while ((*v39 & 0xC0) == 0x80);
          if (v40 >= v37)
          {
            v26 = *(a1 + 24);
          }

          else
          {
            v26 = v39;
          }

          matched = match_1(a1, v35, v26);
          if (!matched)
          {
            goto LABEL_49;
          }

          goto LABEL_117;
        }

        goto LABEL_48;
      }

      if (v36 != 42)
      {
        if (v36 != 43)
        {
          if (v36 == 45)
          {
            while (1)
            {
              matched = match_1(a1, a2, v26 + 1);
              if (matched)
              {
                goto LABEL_117;
              }

              if (!singlematch_0(a1, a2, v8, v26))
              {
                goto LABEL_116;
              }

              v62 = *(a1 + 16);
              v63 = a2 + 1;
              do
              {
                v64 = v63;
                v65 = (v63 - 1);
                if ((v63 - 1) >= v62)
                {
                  break;
                }

                ++v63;
              }

              while ((*v64 & 0xC0) == 0x80);
              if (v65 >= v62)
              {
                a2 = *(a1 + 16);
              }

              else
              {
                a2 = v64;
              }
            }
          }

LABEL_48:
          a2 = v35;
          goto LABEL_49;
        }

        a2 = v35;
      }

      v74 = a2;
      if (!singlematch_0(a1, a2, v8, v26))
      {
        goto LABEL_120;
      }

      v74 = a2;
      do
      {
        v75 = *(a1 + 16);
        v76 = v74 + 1;
        do
        {
          v77 = v76;
          v78 = (v76 - 1);
          if ((v76 - 1) >= v75)
          {
            break;
          }

          ++v76;
        }

        while ((*v77 & 0xC0) == 0x80);
        if (v78 >= v75)
        {
          v74 = *(a1 + 16);
        }

        else
        {
          v74 = v77;
        }
      }

      while (singlematch_0(a1, v74, v8, v26));
      while (1)
      {
        if (v74 < a2)
        {
          goto LABEL_116;
        }

LABEL_120:
        matched = match_1(a1, v74, v26 + 1);
        if (matched)
        {
          break;
        }

        if (v74 == a2)
        {
          goto LABEL_116;
        }

        v81 = v74 - 1;
        do
        {
          v82 = v81;
          v83 = (v81 + 1);
          if (v81 + 1 <= a2)
          {
            break;
          }

          --v81;
        }

        while ((*v82 & 0xC0) == 0x80);
        if (v83 <= a2)
        {
          v74 = a2;
        }

        else
        {
          v74 = v82;
        }
      }

LABEL_117:
      a2 = matched;
      break;
    }

    v19 = utf8_safe_decode(*(a1 + 32), v8 + 1, &v85);
    v26 = v19;
    if ((v85 - 48) < 0xA)
    {
      v27 = v85 - 49;
      if (v85 < 0x31 || v27 >= *(a1 + 40) || *(v12 + 16 * v27 + 8) == -1)
      {
        v27 = luaL_error(*(a1 + 32), "invalid capture index %%%d", v20, v21, v22, v23, v24, v25, (v85 - 48));
      }

      v28 = v12 + 16 * v27;
      v29 = *(v28 + 8);
      if (*(a1 + 16) - a2 >= v29 && !memcmp(*v28, a2, *(v28 + 8)) && a2 != 0)
      {
        a2 += v29;
        goto LABEL_49;
      }

LABEL_116:
      matched = 0;
      goto LABEL_117;
    }

    if (v85 == 102)
    {
      v87 = 0;
      if (*v19 != 91)
      {
        luaL_error(*(a1 + 32), "missing '[' after '%%f' in pattern", v20, v21, v22, v23, v24, v25, v84);
      }

      v56 = classend_0(a1, v26);
      v57 = *(a1 + 8);
      if (a2 != v57)
      {
        v58 = a2 - 1;
        do
        {
          v59 = v58;
          v60 = (v58 + 1);
          if ((v58 + 1) <= v57)
          {
            break;
          }

          --v58;
        }

        while ((*v59 & 0xC0) == 0x80);
        if (v60 <= v57)
        {
          v61 = *(a1 + 8);
        }

        else
        {
          v61 = v59;
        }

        utf8_decode_0(v61, &v87 + 1, 0);
      }

      if (a2 != *(a1 + 16))
      {
        utf8_decode_0(a2, &v87, 0);
      }

      if (!matchbracketclass_0(a1, HIDWORD(v87), v26, (v56 - 1)) && matchbracketclass_0(a1, v87, v26, (v56 - 1)))
      {
        v26 = v56;
        goto LABEL_49;
      }

      goto LABEL_116;
    }

    if (v85 != 98)
    {
      goto LABEL_23;
    }

    v87 = 0;
    v86 = 0;
    v52 = utf8_safe_decode(*(a1 + 32), v19, &v87);
    if (v52 >= *(a1 + 24))
    {
      luaL_error(*(a1 + 32), "malformed pattern (missing arguments to '%%b')", v46, v47, v48, v49, v50, v51, v84);
    }

    v26 = utf8_safe_decode(*(a1 + 32), v52, &v86);
    v53 = utf8_safe_decode(*(a1 + 32), a2, &v87 + 1);
    if (HIDWORD(v87) != v87)
    {
      goto LABEL_116;
    }

    a2 = v53;
    if (v53 >= *(a1 + 16))
    {
      goto LABEL_116;
    }

    v54 = 1;
    while (1)
    {
      v55 = utf8_safe_decode(*(a1 + 32), a2, &v87 + 1);
      a2 = v55;
      if (HIDWORD(v87) != v86)
      {
        if (HIDWORD(v87) == v87)
        {
          ++v54;
        }

        goto LABEL_63;
      }

      if (!--v54)
      {
        break;
      }

LABEL_63:
      if (v55 >= *(a1 + 16))
      {
        goto LABEL_116;
      }
    }

    if (!v55)
    {
      goto LABEL_116;
    }

LABEL_49:
    v8 = v26;
  }

  while (v26 != *(a1 + 24));
LABEL_118:
  ++*a1;
  return a2;
}

uint64_t match_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *), uint64_t a7, uint64_t a8)
{
  __n = 0;
  v8 = a5;
  v10 = a3;
  v12 = 0;
  v13 = 0;
  __s2[1] = *MEMORY[0x1E69E9840];
  v14 = 99;
  v773 = 99;
  v772 = 0;
LABEL_2:
  switch(v14)
  {
    case 0:
      goto LABEL_251;
    case 1:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      *(a4 + 124) = *(v772 + 63);
      v99 = v15[2];
      v100 = __rev16(*(v99 + 1));
      v15[2] = (v99 + v100);
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
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v84 = v772[2];
      v85 = __rev16(*(v84 + 1));
      v772[2] = v84 + v85;
      if (*(v84 + v85) == 65)
      {
        goto LABEL_105;
      }

      goto LABEL_4;
    case 3:
    case 5:
      goto LABEL_215;
    case 4:
      v15 = v772;
      if (!v13)
      {
        v772[2] += __rev16(*(v772[2] + 1));
        goto LABEL_292;
      }

      if (v13 == 1)
      {
        v109 = (v772[2] + __rev16(*(v772[2] + 4)) + 3);
        v772[2] = v109;
        for (i = *v109; i == 65; i = *v109)
        {
          v109 += __rev16(*(v109 + 1));
          v15[2] = v109;
        }

LABEL_292:
        *&v768 = 0;
        Mem = pcre_getMem(a1, 5, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v103 = v772;
        if (v768 && (Mem & 0x80000000) == 0)
        {
          v104 = 0;
          v105 = v772[1];
          *(v768 + 8) = v105;
          v203 = v103[2];
LABEL_295:
          v129 = v203 + 3;
          goto LABEL_296;
        }

        goto LABEL_1202;
      }

      goto LABEL_216;
    case 6:
      v15 = v772;
      if (v13)
      {
        if (v13 == 1)
        {
          v112 = v772[2];
          v113 = *v112;
          goto LABEL_303;
        }

        goto LABEL_216;
      }

      v112 = (v772[2] + __rev16(*(v772[2] + 1)));
      v772[2] = v112;
      v113 = *v112;
      if (v113 != 65)
      {
LABEL_303:
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
            goto LABEL_329;
          }

LABEL_907:
          v772 = *v15;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v174 = v772;
          v13 = 1;
          if (v772)
          {
            goto LABEL_1415;
          }

          goto LABEL_1443;
        }

        goto LABEL_4;
      }

LABEL_299:
      *&v768 = 0;
      v200 = a1;
      v201 = 6;
      goto LABEL_300;
    case 7:
      v15 = v772;
      if (v13)
      {
        if (v13 != 1)
        {
          goto LABEL_216;
        }

LABEL_4:
        v16 = *v15;
        goto LABEL_905;
      }

      v70 = (v772[2] + __rev16(*(v772[2] + 1)));
      v772[2] = v70;
      if (*v70 == 65)
      {
LABEL_290:
        *&v768 = 0;
        v200 = a1;
        v201 = 7;
LABEL_300:
        v204 = pcre_getMem(v200, v201, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v103 = v772;
        if (!v768 || v204 < 0)
        {
          goto LABEL_1202;
        }

        v175 = 0;
        v104 = 0;
        v105 = v772[1];
        *(v768 + 8) = v105;
        v102[2] = v103[2] + 3;
        *(v102 + 6) = *(v103 + 6);
        v176 = v103[4];
        *v102 = v103;
        v102[4] = v176;
        v102[5] = 0;
        goto LABEL_312;
      }

      if (v15[6])
      {
        goto LABEL_907;
      }

      goto LABEL_327;
    case 8:
      v15 = v772;
      if (v13)
      {
        if (v13 == 1)
        {
          *(a4 + 136) = v772[14];
          v117 = v15[18];
          if (v117 != (v15 + 268))
          {
            heap_Free(*(*a1 + 8), v117);
            v15 = v772;
          }

          goto LABEL_907;
        }

        goto LABEL_216;
      }

      *(a4 + 136) = v772 + 14;
      memcpy(*(a4 + 16), v15[18], 4 * *(v15 + 38));
      v15 = v772;
      v205 = v772[7];
      v206 = __rev16(*(v205 + 1));
      v772[7] = v205 + v206;
      if (*(v205 + v206) != 65)
      {
        *(a4 + 136) = v15[14];
        v571 = v15[18];
        if (v571 != (v15 + 268))
        {
          heap_Free(*(*a1 + 8), v571);
          v15 = v772;
        }

        goto LABEL_4;
      }

LABEL_308:
      *&v768 = 0;
      v207 = pcre_getMem(a1, 8, &v768, a4, a5, a6, a7, a8);
      v102 = v768;
      v103 = v772;
      if (!v768 || v207 < 0)
      {
        goto LABEL_1202;
      }

      v104 = 0;
      v105 = v772[1];
      *(v768 + 8) = v105;
      v106 = v103[7];
      goto LABEL_311;
    case 9:
      v15 = v772;
      if (v13)
      {
        if (v13 != 1)
        {
LABEL_216:
          v152 = *v15;
          goto LABEL_248;
        }

        v70 = v772[2];
        v88 = *v70;
        goto LABEL_280;
      }

      v70 = (v772[2] + __rev16(*(v772[2] + 1)));
      v772[2] = v70;
      v88 = *v70;
      if (v88 != 65)
      {
LABEL_280:
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
        if (v199 == 66 || v198 == v15[13])
        {
LABEL_327:
          v114 = (v70 + 3);
LABEL_328:
          v15[2] = v114;
          goto LABEL_329;
        }

        if (v70[3] == 18)
        {
          v15[4] = (v15[4] & 0xFFFFFFFFFFFFFFF8 | v70[4]);
          v199 = *v70;
        }

        if (v199 == 68)
        {
          *&v768 = 0;
          v107 = a1;
          v108 = 10;
          goto LABEL_255;
        }

        *&v768 = 0;
        v115 = a1;
        v116 = 12;
LABEL_175:
        v128 = pcre_getMem(v115, v116, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v103 = v772;
        if (!v768)
        {
          goto LABEL_1202;
        }

LABEL_176:
        if ((v128 & 0x80000000) == 0)
        {
          v104 = 0;
          v105 = v103[1];
          v102[1] = v105;
          v129 = v103[12];
LABEL_296:
          v102[2] = v129;
          *(v102 + 6) = *(v103 + 6);
          v176 = v103[4];
          v102[4] = v176;
          v175 = v103[5];
          *(v102 + 12) = 2;
          v102[5] = v175;
LABEL_297:
          *v102 = v103;
LABEL_313:
          v772 = v102;
          goto LABEL_1409;
        }

LABEL_1202:
        v591 = *v103;
        goto LABEL_1413;
      }

LABEL_279:
      *&v768 = 0;
      v86 = a1;
      v87 = 9;
      goto LABEL_132;
    case 10:
      if (v13)
      {
        goto LABEL_215;
      }

      *&v768 = 0;
      v115 = a1;
      v116 = 11;
      goto LABEL_175;
    case 11:
    case 13:
    case 17:
    case 19:
      v15 = v772;
      if (!v13)
      {
        goto LABEL_4;
      }

      goto LABEL_216;
    case 12:
      if (v13)
      {
        goto LABEL_215;
      }

      *&v768 = 0;
      v107 = a1;
      v108 = 13;
      goto LABEL_255;
    case 14:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v70 = v772[10];
      do
      {
        v70 += __rev16(*(v70 + 1));
        v15[10] = v70;
      }

      while (*v70 == 65);
      goto LABEL_327;
    case 15:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v114 = v772[2] + 1;
      goto LABEL_328;
    case 16:
      if (v13)
      {
        goto LABEL_215;
      }

      *&v768 = 0;
      v115 = a1;
      v116 = 17;
      goto LABEL_175;
    case 18:
      if (!v13)
      {
        *&v768 = 0;
        v107 = a1;
        v108 = 19;
LABEL_255:
        v177 = pcre_getMem(v107, v108, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v178 = v772;
        if (v768 && (v177 & 0x80000000) == 0)
        {
          goto LABEL_257;
        }

        goto LABEL_1031;
      }

LABEL_215:
      v15 = v772;
      goto LABEL_216;
    case 20:
      v120 = v772;
      if (v13)
      {
        goto LABEL_233;
      }

      v761 = v10;
      v762 = v8;
      v121 = *(v772 + 56);
      if (v121 >= *(v772 + 58))
      {
        goto LABEL_263;
      }

      v122 = v772[1];
      v123 = *(v772 + 57);
      if (!match_ref_0(*(v772 + 61), v122, v123, a4, v772[4]))
      {
        goto LABEL_263;
      }

      v120[1] = &v122[v123];
      *(v120 + 56) = v121 + 1;
      goto LABEL_168;
    case 21:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v126 = (v772[1] - *(v772 + 57));
      v772[1] = v126;
      v127 = v33[11];
      goto LABEL_171;
    case 22:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v141 = *(v772 + 56);
      if (v141 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v142 = v772[1];
      if (v142 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v772[1] = (v142 + 1);
      v143 = *v142;
      if ((~v143 & 0xC0) != 0)
      {
        goto LABEL_911;
      }

      v144 = utf8_table4[v143 & 0x3F];
      v145 = 6 * v144;
      v143 = (utf8_table3[utf8_table4[v143 & 0x3F]] & v143) << (6 * v144);
      v146 = v142 + 2;
      v147 = v144 + 1;
      v148 = v145 - 6;
      do
      {
        v15[1] = v146;
        v143 |= (*(v146++ - 1) & 0x3F) << v148;
        --v147;
        v148 -= 6;
      }

      while (v147 > 1);
      if (v143 < 256)
      {
LABEL_911:
        if (((*(v15[9] + v143 / 8) >> (v143 & 7)) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (*(v15 + 62) == 59)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v141 + 1;
      goto LABEL_913;
    case 23:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v160 = *(v772 + 56);
      if (v160 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v161 = v772[1];
      if (v161 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v772[1] = (v161 + 1);
      if (((*(v15[9] + (*v161 >> 3)) >> (*v161 & 7)) & 1) == 0)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v160 + 1;
      goto LABEL_231;
    case 24:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v96 = v772[1];
      v772[1] = v96 - 1;
      if (v96 == v33[11])
      {
        goto LABEL_904;
      }

      if ((*(v96 - 1) & 0xC0) == 0x80)
      {
        v97 = (v96 - 2);
        do
        {
          v33[1] = v97;
          v98 = *v97--;
        }

        while ((v98 & 0xC0) == 0x80);
      }

      goto LABEL_128;
    case 25:
      v33 = v772;
      v94 = (v772[1] - 1);
      v772[1] = v94;
      if (v13)
      {
        goto LABEL_247;
      }

      v95 = v33[11];
      goto LABEL_121;
    case 26:
      v173 = v772;
      if (v13)
      {
        v152 = *v772;
        goto LABEL_248;
      }

      v184 = *(v772 + 56);
      if (v184 < *(v772 + 58))
      {
        v185 = v772[1];
        if (v185 < *(a4 + 96))
        {
          v772[1] = (v185 + 1);
          v186 = *v185;
          if ((~v186 & 0xC0) == 0)
          {
            v187 = utf8_table4[v186 & 0x3F];
            v188 = 6 * v187;
            v186 = (utf8_table3[utf8_table4[v186 & 0x3F]] & v186) << (6 * v187);
            v189 = v185 + 2;
            v190 = v187 + 1;
            v191 = v188 - 6;
            do
            {
              v173[1] = v189;
              v186 |= (*(v189++ - 1) & 0x3F) << v191;
              --v190;
              v191 -= 6;
            }

            while (v190 > 1);
          }

          if (match_xclass(v186, v173[9]))
          {
            *(v173 + 56) = v184 + 1;
            goto LABEL_272;
          }

          v772 = *v173;
          pcre_freeMem(a1, &v773, v192, a4, a5, a6, a7, a8, v756);
          v174 = v772;
          if (v772)
          {
            goto LABEL_906;
          }

          goto LABEL_1441;
        }
      }

      v208 = *v772;
      goto LABEL_316;
    case 27:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v58 = v772[1];
      v772[1] = v58 - 1;
      if (v58 == v15[11])
      {
        goto LABEL_4;
      }

      if ((*(v58 - 1) & 0xC0) == 0x80)
      {
        v59 = v58 - 2;
        do
        {
          v15[1] = v59;
          v60 = *v59--;
        }

        while ((v60 & 0xC0) == 0x80);
      }

      goto LABEL_64;
    case 28:
      v120 = v772;
      if (v13)
      {
LABEL_233:
        v772 = *v120;
        pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
        v162 = v772;
        if (!v772)
        {
          goto LABEL_1443;
        }

        *(v772 + 102) = v13;
LABEL_318:
        *(a4 + 152) = v162;
        goto LABEL_1417;
      }

      v179 = *(v772 + 56);
      if (v179 >= *(v772 + 58) || (v180 = v772[1], v180 >= *(a4 + 96)))
      {
        v208 = *v772;
LABEL_316:
        v772 = v208;
        pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
        v162 = v772;
        if (!v772)
        {
          goto LABEL_1441;
        }

        goto LABEL_317;
      }

      v761 = v10;
      v762 = v8;
      v181 = *(v772 + 57);
      if (!memcmp(v180, v772[8], v181))
      {
        v183 = __n;
      }

      else
      {
        v183 = __n;
        if (!__n)
        {
          v772 = *v120;
          pcre_freeMem(a1, &v773, v182, a4, a5, a6, a7, a8, v756);
          v577 = v772;
          if (v772)
          {
            __n = 0;
            v13 = 0;
            *(v772 + 102) = 0;
            *(a4 + 152) = v577;
            v10 = v761;
            v8 = v762;
            goto LABEL_1417;
          }

          goto LABEL_1441;
        }

        v181 = __n;
        if (memcmp(v180, __s2, __n))
        {
LABEL_263:
          v772 = *v120;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v162 = v772;
          v10 = v761;
          v8 = v762;
          if (!v772)
          {
            goto LABEL_1441;
          }

LABEL_317:
          v13 = 0;
          *(v162 + 102) = 0;
          goto LABEL_318;
        }
      }

      v120[1] = &v180[v181];
      *(v120 + 56) = v179 + 1;
      goto LABEL_935;
    case 29:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v163 = (v772[1] - *(v772 + 57));
      v772[1] = v163;
      v164 = v33[11];
      goto LABEL_237;
    case 30:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v130 = *(v772 + 56);
      if (v130 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v131 = v772[1];
      if (v131 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v132 = *(v772 + 55);
      v133 = *(a4 + 32);
      v772[1] = (v131 + 1);
      if (v132 != *(v133 + *v131))
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v130 + 1;
      goto LABEL_183;
    case 31:
      v33 = v772;
      v111 = (v772[1] - 1);
      v772[1] = v111;
      if (v13)
      {
        goto LABEL_247;
      }

      v80 = v33[11];
      goto LABEL_147;
    case 32:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v134 = *(v772 + 56);
      if (v134 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v135 = v772[1];
      if (v135 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v136 = *(v772 + 55);
      v772[1] = (v135 + 1);
      if (v136 != *v135)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v134 + 1;
      goto LABEL_189;
    case 33:
      v33 = v772;
      v79 = (v772[1] - 1);
      v772[1] = v79;
      if (v13)
      {
        goto LABEL_247;
      }

      v80 = v33[11];
      goto LABEL_95;
    case 34:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v61 = v772[1];
      v62 = v61 + 1;
      v772[1] = (v61 + 1);
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
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v51 = *(v772 + 56);
      if (v51 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v52 = v772[1];
      if (v52 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v53 = *(v772 + 55);
      v54 = *(a4 + 32);
      v772[1] = (v52 + 1);
      if (v53 == *(v54 + *v52))
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v51 + 1;
      goto LABEL_52;
    case 36:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v55 = v772[1];
      v772[1] = v55 - 1;
      if (v55 == v33[11])
      {
        goto LABEL_904;
      }

      if ((*(v55 - 1) & 0xC0) == 0x80)
      {
        v56 = (v55 - 2);
        do
        {
          v33[1] = v56;
          v57 = *v56--;
        }

        while ((v57 & 0xC0) == 0x80);
      }

      goto LABEL_58;
    case 37:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v34 = (v772[1] - 1);
      v772[1] = v34;
      v35 = v33[11];
      goto LABEL_27;
    case 38:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v165 = v772[1];
      v166 = v165 + 1;
      v772[1] = (v165 + 1);
      v167 = *v165;
      if ((~v167 & 0xC0) != 0)
      {
        v172 = v166;
      }

      else
      {
        v168 = utf8_table4[v167 & 0x3F];
        v169 = 6 * v168;
        v167 = (utf8_table3[utf8_table4[v167 & 0x3F]] & v167) << (6 * v168);
        v170 = v168 + 1;
        v171 = v169 - 6;
        do
        {
          v172 = v166 + 1;
          v15[1] = (v166 + 1);
          v167 |= (*v166 & 0x3F) << v171;
          --v170;
          v171 -= 6;
          ++v166;
        }

        while (v170 > 1);
      }

      v210 = *(v15 + 56);
      if (v210 >= *(v15 + 58) || v172 >= *(a4 + 96) || *(v15 + 55) == v167)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v210 + 1;
      goto LABEL_325;
    case 39:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v149 = *(v772 + 56);
      if (v149 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v150 = v772[1];
      if (v150 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v151 = *(v772 + 55);
      v772[1] = (v150 + 1);
      if (v151 == *v150)
      {
        goto LABEL_4;
      }

      *(v15 + 56) = v149 + 1;
      goto LABEL_213;
    case 40:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v91 = v772[1];
      v772[1] = v91 - 1;
      if (v91 == v33[11])
      {
        goto LABEL_904;
      }

      if ((*(v91 - 1) & 0xC0) == 0x80)
      {
        v92 = (v91 - 2);
        do
        {
          v33[1] = v92;
          v93 = *v92--;
        }

        while ((v93 & 0xC0) == 0x80);
      }

      goto LABEL_118;
    case 41:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v118 = (v772[1] - 1);
      v772[1] = v118;
      v119 = v33[11];
      goto LABEL_162;
    case 42:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      if (*(v772 + 56) >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v153 = v772[1];
      if (v153 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v772[1] = (v153 + 1);
      v154 = *v153;
      if ((~v154 & 0xC0) == 0)
      {
        v155 = utf8_table4[v154 & 0x3F];
        v154 = (utf8_table3[utf8_table4[v154 & 0x3F]] & v154) << (6 * v155);
        v156 = v153 + 2;
        v157 = 6 * v155 - 6;
        v158 = v155 + 1;
        do
        {
          v15[1] = v156;
          v154 |= (*(v156++ - 1) & 0x3F) << v157;
          v157 -= 6;
          --v158;
        }

        while (v158 > 1);
      }

      v159 = ucp_findchar(v154, v15 + 49, v15 + 50);
      v15 = v772;
      *(v772 + 48) = v159;
      if (*(v15 + 47) == (*v15[26] == *(v15 + 51)))
      {
        goto LABEL_4;
      }

      ++*(v15 + 56);
      goto LABEL_225;
    case 43:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      if (*(v772 + 56) >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v17 = v772[1];
      if (v17 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v772[1] = (v17 + 1);
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
      v15 = v772;
      *(v772 + 48) = v23;
      if (v23 == 2)
      {
        goto LABEL_4;
      }

      for (j = v15[1]; j < *(a4 + 96); v15[1] = j)
      {
        v25 = *j;
        v26 = 1;
        if (*(a4 + 60) && (v25 & 0xC0) == 0xC0)
        {
          v27 = utf8_table4[v25 & 0x3F];
          v25 = (utf8_table3[v27] & v25) << (6 * v27);
          v28 = (j + 1);
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
        v15 = v772;
        *(v772 + 48) = v32;
        if (v32 != 2)
        {
          break;
        }

        j = v15[1] + v26;
      }

      ++*(v15 + 56);
      goto LABEL_920;
    case 44:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v71 = *(v772 + 56);
      if (v71 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v72 = v772[1];
      if (v72 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v772[1] = (v72 + 1);
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
      if (v78 <= 8)
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
        }

        else
        {
          if (v78 != 5)
          {
            if (v78 == 6)
            {
              if (v73 > 255 || (*(*(a4 + 40) + v73) & 4) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_981;
            }

            goto LABEL_962;
          }

          if (v73 <= 255 && (*(*(a4 + 40) + v73) & 4) != 0)
          {
            goto LABEL_4;
          }
        }

        goto LABEL_981;
      }

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

        goto LABEL_981;
      }

      if (v78 == 12)
      {
LABEL_981:
        *(v15 + 56) = v71 + 1;
        goto LABEL_982;
      }

      if (v78 == 11)
      {
        if ((v15[4] & 4) == 0 && v73 == 10)
        {
          goto LABEL_4;
        }

        goto LABEL_981;
      }

      goto LABEL_962;
    case 45:
      v15 = v772;
      if (v13)
      {
        goto LABEL_216;
      }

      v137 = *(v772 + 56);
      if (v137 >= *(v772 + 58))
      {
        goto LABEL_4;
      }

      v138 = v772[1];
      if (v138 >= *(a4 + 96))
      {
        goto LABEL_4;
      }

      v772[1] = (v138 + 1);
      v139 = *v138;
      v140 = *(v15 + 54);
      if (v140 > 8)
      {
        if (v140 > 10)
        {
          if (v140 != 12)
          {
            if (v140 != 11)
            {
              goto LABEL_962;
            }

            if ((v15[4] & 4) == 0 && v139 == 10)
            {
              goto LABEL_4;
            }
          }
        }

        else if (v140 == 9)
        {
          if ((*(*(a4 + 40) + v139) & 0x10) != 0)
          {
            goto LABEL_4;
          }
        }

        else if ((*(*(a4 + 40) + v139) & 0x10) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v140 > 6)
      {
        if (v140 == 7)
        {
          if (*(*(a4 + 40) + v139))
          {
            goto LABEL_4;
          }
        }

        else if ((*(*(a4 + 40) + v139) & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v140 != 5)
        {
          if (v140 == 6)
          {
            if ((*(*(a4 + 40) + v139) & 4) == 0)
            {
              goto LABEL_4;
            }

            goto LABEL_988;
          }

LABEL_962:
          v578 = *v15;
          goto LABEL_963;
        }

        if ((*(*(a4 + 40) + v139) & 4) != 0)
        {
          goto LABEL_4;
        }
      }

LABEL_988:
      *(v15 + 56) = v137 + 1;
      goto LABEL_989;
    case 46:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v195 = v772[1];
      v772[1] = v195 - 1;
      if (v195 == v33[11])
      {
        goto LABEL_904;
      }

      if ((*(v195 - 1) & 0xC0) == 0x80)
      {
        v196 = (v195 - 2);
        do
        {
          v33[1] = v196;
          v197 = *v196--;
        }

        while ((v197 & 0xC0) == 0x80);
      }

      goto LABEL_277;
    case 47:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v36 = v772[1];
      v37 = (v36 - 1);
      v772[1] = v36 - 1;
      if (v36 == v33[11])
      {
        goto LABEL_904;
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
        v33 = v772;
        *(v772 + 48) = v48;
        if (v48 != 2)
        {
          break;
        }

        v37 = (v33[1] - 1);
        v33[1] = v37;
      }

      goto LABEL_46;
    case 48:
      v33 = v772;
      if (v13)
      {
        goto LABEL_247;
      }

      v81 = v772[1];
      v772[1] = v81 - 1;
      if (v81 == v33[11])
      {
        goto LABEL_904;
      }

      if ((*(v81 - 1) & 0xC0) == 0x80)
      {
        v82 = (v81 - 2);
        do
        {
          v33[1] = v82;
          v83 = *v82--;
        }

        while ((v83 & 0xC0) == 0x80);
      }

      goto LABEL_102;
    case 49:
      v33 = v772;
      v89 = (v772[1] - 1);
      v772[1] = v89;
      if (v13)
      {
LABEL_247:
        v152 = *v33;
LABEL_248:
        v772 = v152;
        pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
        v174 = v772;
        if (v772)
        {
          goto LABEL_1415;
        }

        goto LABEL_1443;
      }

      v90 = v33[11];
LABEL_111:
      if (v89 < v90)
      {
        goto LABEL_904;
      }

LABEL_1404:
      *&v768 = 0;
      v49 = a1;
      v50 = 49;
LABEL_1405:
      v193 = pcre_getMem(v49, v50, &v768, a4, a5, a6, a7, a8);
      v102 = v768;
      v194 = v772;
      if (!v768)
      {
        goto LABEL_1412;
      }

      break;
    default:
      v12 = pcre_getMem(a1, v14, &v772, a4, a5, a6, a7, a8);
LABEL_251:
      v13 = 4294967290;
      if (!v772 || v12 < 0)
      {
        goto LABEL_1443;
      }

      v175 = 0;
      v104 = 0;
      *v772 = 0;
      v102 = v772;
      v105 = a2;
      v772[1] = a2;
      v102[2] = v10;
      *(v102 + 6) = 2;
      v102[4] = v8;
      v102[5] = 0;
      *(v102 + 12) = 2;
      v176 = v8;
      goto LABEL_1409;
  }

LABEL_1406:
  if (v193 < 0)
  {
    goto LABEL_1412;
  }

  v747 = *(v194 + 1);
  *(v102 + 1) = v747;
  *(v102 + 6) = *(v194 + 6);
  v176 = v194[4];
  v102[4] = v176;
  v175 = v194[5];
  v102[5] = v175;
  *(v102 + 12) = 0;
  *v102 = v194;
  v772 = v102;
  v105 = v747;
LABEL_1408:
  v104 = 1;
LABEL_1409:
  *(v102 + 47) = 0;
  *(v102 + 51) = 0;
  v102[26] = 0;
  v748 = *a4;
  v749 = *(a4 + 8);
  ++*a4;
  if (v748 >= v749)
  {
    v772 = *v102;
    pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
    v174 = v772;
    v13 = 4294967288;
    if (!v772)
    {
      goto LABEL_1443;
    }

LABEL_1415:
    *(v174 + 102) = v13;
LABEL_1416:
    *(a4 + 152) = v174;
    goto LABEL_1417;
  }

  v102[22] = v176;
  if ((v104 & 1) == 0)
  {
    v102[49] = v175;
    v102[50] = v105;
    v102[5] = (v102 + 49);
  }

LABEL_329:
  v763 = v12;
  v761 = v10;
  v762 = v8;
  while (1)
  {
LABEL_330:
    v33 = v772;
    v211 = v772[2];
    v212 = *v211;
    *(v772 + 62) = v212;
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
      v572 = v212 - 80;
      *(v33 + 60) = v212 - 80;
      v12 = v763;
      if (v212 - 80 >= 0x65)
      {
        v572 = __rev16(*(v211 + 2));
        *(v33 + 60) = v572;
      }

      *(v33 + 61) = 2 * v572;
      if ((2 * v572) >= *(a4 + 28))
      {
        *(v33 + 62) = 80;
LABEL_942:
        v10 = v761;
        v8 = v762;
LABEL_105:
        *&v768 = 0;
        v86 = a1;
        v87 = 2;
      }

      else
      {
        v573 = *(a4 + 16);
        v574 = (v573 + 8 * v572);
        *(v33 + 64) = *v574;
        *(v33 + 65) = v574[1];
        v575 = *(a4 + 24) - v572;
        *(v33 + 66) = *(v573 + 4 * v575);
        *(v33 + 63) = *(a4 + 124);
        *(v573 + 4 * v575) = *(v33 + 2) - *(a4 + 88);
        v10 = v761;
        v8 = v762;
LABEL_131:
        *&v768 = 0;
        v86 = a1;
        v87 = 1;
      }

LABEL_132:
      v101 = pcre_getMem(v86, v87, &v768, a4, a5, a6, a7, a8);
      v102 = v768;
      v103 = v772;
      if (!v768 || v101 < 0)
      {
        goto LABEL_1202;
      }

      v104 = 0;
      v105 = v772[1];
      *(v768 + 8) = v105;
      v106 = v103[2];
LABEL_311:
      v102[2] = v106 + 3;
      *(v102 + 6) = *(v103 + 6);
      v176 = v103[4];
      v102[4] = v176;
      v175 = v103[5];
      *v102 = v103;
      v102[5] = v175;
LABEL_312:
      *(v102 + 12) = 2;
      goto LABEL_313;
    }

    v12 = v763;
    switch(v212)
    {
      case 0u:
        v397 = *(a4 + 136);
        if (!v397 || *(v397 + 8))
        {
          v589 = v33[1];
          if (!*(a4 + 68) || v589 != *(a4 + 104))
          {
            *(a4 + 112) = v589;
            *(a4 + 120) = *(v33 + 6);
            v772 = *v33;
            pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
            v174 = v772;
            v13 = 1;
            v10 = v761;
            v8 = v762;
            if (v772)
            {
              goto LABEL_1415;
            }

            goto LABEL_1443;
          }

          v772 = *v33;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v174 = v772;
          v10 = v761;
          v8 = v762;
          if (v772)
          {
            goto LABEL_906;
          }

          goto LABEL_1441;
        }

        *(a4 + 136) = *v397;
        memmove(*(a4 + 16), *(v397 + 32), 4 * *(v397 + 40));
        *(a4 + 104) = *(v397 + 24);
        v398 = v772;
        v772[4] = v772[22];
        v398[2] = *(v397 + 16);
        continue;
      case 1u:
        v341 = *(a4 + 88);
        goto LABEL_520;
      case 2u:
        if (v33[1] != *(a4 + 88) + *(a4 + 128))
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 3u:
      case 4u:
        v237 = v33[1];
        v238 = *(a4 + 88);
        if (*(a4 + 60))
        {
          if (v237 == v238)
          {
            goto LABEL_697;
          }

          v239 = v33[1];
          do
          {
            v240 = v239;
            v242 = *--v239;
            v241 = v242;
            v243 = v242 & 0xC0;
          }

          while (v243 == 128);
          if (v243 != 192)
          {
            goto LABEL_370;
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
LABEL_697:
            v248 = 0;
          }

          else
          {
LABEL_370:
            v248 = (*(*(a4 + 40) + v241) >> 4) & 1;
          }

          *(v33 + 43) = v248;
          if (v237 < *(a4 + 96))
          {
            v485 = *v237;
            if ((~v485 & 0xC0) != 0)
            {
              goto LABEL_705;
            }

            v486 = utf8_table4[v485 & 0x3F];
            v487 = 6 * v486;
            v485 = (utf8_table3[v486] & v485) << (6 * v486);
            v488 = (v237 + 1);
            if (v486 <= 1)
            {
              v486 = 1;
            }

            v489 = v487 - 6;
            do
            {
              v490 = *v488++;
              v485 |= (v490 & 0x3F) << v489;
              v489 -= 6;
              --v486;
            }

            while (v486);
            if (v485 <= 255)
            {
LABEL_705:
              v491 = (*(a4 + 40) + v485);
LABEL_800:
              v534 = (*v491 >> 4) & 1;
              goto LABEL_802;
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
            v491 = (*(a4 + 40) + *v237);
            goto LABEL_800;
          }
        }

        v534 = 0;
LABEL_802:
        *(v33 + 40) = v534;
        v33[2] = (v211 + 1);
        if ((*v211 == 4) == (v534 == v248))
        {
LABEL_992:
          v772 = *v33;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v580 = v772;
          if (v772)
          {
            v13 = 0;
            *(v772 + 102) = 0;
            *(a4 + 152) = v580;
            v10 = v761;
            v8 = v762;
            v12 = v763;
            goto LABEL_1417;
          }

          goto LABEL_1441;
        }

        continue;
      case 5u:
        v350 = v33[1];
        if (v350 >= *(a4 + 96))
        {
          goto LABEL_930;
        }

        v33[1] = (v350 + 1);
        v351 = *v350;
        if (!*(a4 + 60))
        {
          goto LABEL_492;
        }

        if ((v351 & 0xC0) != 0xC0)
        {
          goto LABEL_492;
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
LABEL_492:
          if ((*(*(a4 + 40) + v351) & 4) != 0)
          {
            goto LABEL_930;
          }
        }

        goto LABEL_811;
      case 6u:
        v343 = v33[1];
        if (v343 >= *(a4 + 96))
        {
          goto LABEL_930;
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
              goto LABEL_930;
            }
          }
        }

        if ((*(*(a4 + 40) + v344) & 4) == 0)
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 7u:
        v406 = v33[1];
        if (v406 >= *(a4 + 96))
        {
          goto LABEL_930;
        }

        v33[1] = (v406 + 1);
        v407 = *v406;
        if (!*(a4 + 60))
        {
          goto LABEL_579;
        }

        if ((v407 & 0xC0) != 0xC0)
        {
          goto LABEL_579;
        }

        v408 = utf8_table4[v407 & 0x3F];
        v409 = 6 * v408;
        v407 = (utf8_table3[utf8_table4[v407 & 0x3F]] & v407) << (6 * v408);
        v410 = v406 + 2;
        v411 = v408 + 1;
        v412 = v409 - 6;
        do
        {
          v33[1] = v410;
          v407 |= (*(v410++ - 1) & 0x3F) << v412;
          --v411;
          v412 -= 6;
        }

        while (v411 > 1);
        if (v407 <= 255)
        {
LABEL_579:
          if (*(*(a4 + 40) + v407))
          {
            goto LABEL_930;
          }
        }

        goto LABEL_811;
      case 8u:
        v367 = v33[1];
        if (v367 >= *(a4 + 96))
        {
          goto LABEL_930;
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
              goto LABEL_930;
            }
          }
        }

        if ((*(*(a4 + 40) + v368) & 1) == 0)
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 9u:
        v416 = v33[1];
        if (v416 >= *(a4 + 96))
        {
          goto LABEL_930;
        }

        v33[1] = (v416 + 1);
        v417 = *v416;
        if (!*(a4 + 60))
        {
          goto LABEL_596;
        }

        if ((v417 & 0xC0) != 0xC0)
        {
          goto LABEL_596;
        }

        v418 = utf8_table4[v417 & 0x3F];
        v419 = 6 * v418;
        v417 = (utf8_table3[utf8_table4[v417 & 0x3F]] & v417) << (6 * v418);
        v420 = v416 + 2;
        v421 = v418 + 1;
        v422 = v419 - 6;
        do
        {
          v33[1] = v420;
          v417 |= (*(v420++ - 1) & 0x3F) << v422;
          --v421;
          v422 -= 6;
        }

        while (v421 > 1);
        if (v417 <= 255)
        {
LABEL_596:
          if ((*(*(a4 + 40) + v417) & 0x10) != 0)
          {
            goto LABEL_930;
          }
        }

        goto LABEL_811;
      case 0xAu:
        v399 = v33[1];
        if (v399 >= *(a4 + 96))
        {
          goto LABEL_930;
        }

        v33[1] = (v399 + 1);
        v400 = *v399;
        if (*(a4 + 60))
        {
          if ((v400 & 0xC0) == 0xC0)
          {
            v401 = utf8_table4[v400 & 0x3F];
            v402 = 6 * v401;
            v400 = (utf8_table3[utf8_table4[v400 & 0x3F]] & v400) << (6 * v401);
            v403 = v399 + 2;
            v404 = v401 + 1;
            v405 = v402 - 6;
            do
            {
              v33[1] = v403;
              v400 |= (*(v403++ - 1) & 0x3F) << v405;
              --v404;
              v405 -= 6;
            }

            while (v404 > 1);
            if (v400 > 255)
            {
              goto LABEL_930;
            }
          }
        }

        if ((*(*(a4 + 40) + v400) & 0x10) == 0)
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 0xBu:
        v413 = v33[1];
        v414 = *(a4 + 96);
        if ((v33[4] & 4) == 0 && v413 < v414 && *v413 == 10)
        {
          goto LABEL_930;
        }

        v415 = v413 + 1;
        v33[1] = (v413 + 1);
        if (v413 >= v414)
        {
          goto LABEL_930;
        }

        if (*(a4 + 60) && v415 < v414)
        {
          do
          {
            if ((*v415 & 0xC0) != 0x80)
            {
              break;
            }

            v33[1] = ++v415;
          }

          while (v415 != v414);
        }

        goto LABEL_811;
      case 0xCu:
        v374 = v33[1];
        v33[1] = v374 + 1;
        if (v374 >= *(a4 + 96))
        {
          goto LABEL_930;
        }

        goto LABEL_811;
      case 0xDu:
      case 0xEu:
        v255 = v33[1];
        if (v255 < *(a4 + 96))
        {
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

          LODWORD(v768) = 0;
          v262 = ucp_findchar(v256, &v768, &v767);
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
            v266 = v768 == v264;
          }

          v466 = !v266;
          if (v265 == v466)
          {
            continue;
          }
        }

        goto LABEL_930;
      case 0xFu:
        v446 = v33[1];
        v447 = *(a4 + 96);
        if (v446 >= v447)
        {
          goto LABEL_930;
        }

        v448 = v446 + 1;
        v33[1] = (v446 + 1);
        v449 = *v446;
        v450 = *(a4 + 60);
        if (v450 && (v449 & 0xC0) == 0xC0)
        {
          v451 = utf8_table4[v449 & 0x3F];
          v452 = 6 * v451;
          v449 = (utf8_table3[utf8_table4[v449 & 0x3F]] & v449) << (6 * v451);
          v453 = v451 + 1;
          v454 = v452 - 6;
          do
          {
            v455 = v448 + 1;
            v33[1] = (v448 + 1);
            v449 |= (*v448 & 0x3F) << v454;
            --v453;
            v454 -= 6;
            ++v448;
          }

          while (v453 > 1);
        }

        else
        {
          v455 = v446 + 1;
        }

        v767 = 0;
        LODWORD(v768) = 0;
        if (ucp_findchar(v449, &v768, &v767) == 2)
        {
          goto LABEL_930;
        }

        while (v455 < v447)
        {
          v496 = *v455;
          v497 = 1;
          if (v450 && (v496 & 0xC0) == 0xC0)
          {
            v498 = utf8_table4[v496 & 0x3F];
            v496 = (utf8_table3[v498] & v496) << (6 * v498);
            v499 = (v455 + 1);
            if (v498 <= 1)
            {
              v500 = 1;
            }

            else
            {
              v500 = v498;
            }

            v501 = 6 * v498 - 6;
            do
            {
              v502 = *v499++;
              v496 |= (v502 & 0x3F) << v501;
              v501 -= 6;
              --v500;
            }

            while (v500);
            v497 = v498 + 1;
          }

          if (ucp_findchar(v496, &v768, &v767) != 2)
          {
            break;
          }

          v455 += v497;
          v33[1] = v455;
        }

        v33[2] = (v211 + 1);
        continue;
      case 0x10u:
        v375 = v33[1];
        v376 = *(a4 + 96) - 1;
        if (v375 < v376)
        {
          goto LABEL_930;
        }

        if (v375 == v376)
        {
          goto LABEL_715;
        }

        goto LABEL_811;
      case 0x11u:
        v323 = *(a4 + 96);
        goto LABEL_599;
      case 0x12u:
        v33[4] = v211[1];
        goto LABEL_759;
      case 0x13u:
        v341 = *(a4 + 88);
        if (*(a4 + 52) && v33[1] == v341)
        {
          goto LABEL_930;
        }

        if ((v33[4] & 2) == 0)
        {
LABEL_520:
          if (v33[1] != v341)
          {
            goto LABEL_930;
          }

          goto LABEL_811;
        }

        v342 = v33[1];
        if (v342 == v341)
        {
          goto LABEL_811;
        }

        v326 = *(v342 - 1);
        goto LABEL_716;
      case 0x14u:
        if ((v33[4] & 2) == 0)
        {
          if (*(a4 + 56))
          {
            goto LABEL_930;
          }

          v323 = *(a4 + 96);
          if (*(a4 + 64))
          {
LABEL_599:
            if (v33[1] < v323)
            {
              goto LABEL_930;
            }

            goto LABEL_811;
          }

          v324 = v33[1];
          v325 = (v323 - 1);
          if (v324 < v325)
          {
            goto LABEL_930;
          }

          if (v324 != v325)
          {
            goto LABEL_811;
          }

          v326 = *v324;
          goto LABEL_716;
        }

        v375 = v33[1];
        if (v375 < *(a4 + 96))
        {
LABEL_715:
          v326 = *v375;
LABEL_716:
          if (v326 != 10)
          {
            goto LABEL_930;
          }

          goto LABEL_811;
        }

        if (*(a4 + 56))
        {
          goto LABEL_930;
        }

LABEL_811:
        v33[2] = (v211 + 1);
        continue;
      case 0x15u:
        if (!*(a4 + 60))
        {
          v509 = v33[1];
          if ((*(a4 + 96) - v509) <= 0)
          {
            goto LABEL_930;
          }

          v510 = v211[1];
          v33[1] = (v509 + 1);
          if (v510 != *v509)
          {
            goto LABEL_930;
          }

          goto LABEL_759;
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
          goto LABEL_930;
        }

        v336 = v335 + 1;
        v337 = v211 + 2;
        v10 = v761;
        v8 = v762;
        while (1)
        {
          v338 = __OFSUB__(v327--, 1);
          *(v33 + 57) = v327;
          if (v327 < 0 != v338)
          {
            goto LABEL_330;
          }

          v33[2] = v337;
          v339 = *(v337 - 1);
          v33[1] = v336;
          v340 = *(v336++ - 1);
          ++v337;
          if (v339 != v340)
          {
            goto LABEL_904;
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
            goto LABEL_930;
          }

          if (v358 > 127)
          {
            v33[1] = (v364 + 1);
            v528 = *v364;
            if ((~v528 & 0xC0) == 0)
            {
              v529 = utf8_table4[v528 & 0x3F];
              v530 = 6 * v529;
              v528 = (utf8_table3[utf8_table4[v528 & 0x3F]] & v528) << (6 * v529);
              v531 = v364 + 2;
              v532 = v529 + 1;
              v533 = v530 - 6;
              do
              {
                v33[1] = v531;
                v528 |= (*(v531++ - 1) & 0x3F) << v533;
                --v532;
                v533 -= 6;
              }

              while (v532 > 1);
            }

            v33[2] = &v211[v357 + 1];
            if (v358 != v528)
            {
              v767 = 0;
              if ((ucp_findchar(v358, &v768, &v767) & 0x80000000) != 0 || v528 != v767)
              {
                goto LABEL_992;
              }
            }
          }

          else
          {
            v365 = *(a4 + 32);
            v33[2] = (v211 + 2);
            v366 = *(v365 + v211[1]);
            v33[1] = (v364 + 1);
            if (v366 != *(v365 + *v364))
            {
              goto LABEL_992;
            }
          }
        }

        else
        {
          v511 = v33[1];
          if ((*(a4 + 96) - v511) <= 0)
          {
            goto LABEL_930;
          }

          v512 = *(a4 + 32);
          v513 = *(v512 + v211[1]);
          v33[1] = (v511 + 1);
          if (v513 != *(v512 + *v511))
          {
            goto LABEL_930;
          }

LABEL_759:
          v33[2] = (v211 + 2);
        }

        continue;
      case 0x17u:
        v315 = v33[1];
        if (v315 >= *(a4 + 96))
        {
          goto LABEL_930;
        }

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
          v495 = *(a4 + 32);
          if (v316 <= 255)
          {
            v316 = *(v495 + v316);
          }

          v33[2] = (v211 + 2);
          v322 = *(v495 + v211[1]);
        }

        else
        {
          v33[2] = (v211 + 2);
          v322 = v211[1];
        }

        if (v316 == v322)
        {
          goto LABEL_992;
        }

        continue;
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
        goto LABEL_526;
      case 0x1Eu:
      case 0x1Fu:
        v217 = 0;
        *(v33 + 59) = 0;
        v218 = __rev16(*(v211 + 1));
        *(v33 + 58) = v218;
        v216 = *v211 == 31;
        *(v33 + 42) = v216;
        goto LABEL_525;
      case 0x20u:
        v216 = 0;
        v218 = __rev16(*(v211 + 1));
        *(v33 + 58) = v218;
        *(v33 + 59) = v218;
        v217 = v218;
LABEL_525:
        v214 = v211 + 3;
        v33[2] = (v211 + 3);
LABEL_526:
        v10 = v761;
        v8 = v762;
        if (!*(a4 + 60))
        {
          v384 = *(a4 + 96);
          v80 = v33[1];
          if ((v384 - v80) < v217)
          {
            goto LABEL_904;
          }

          v33[2] = (v214 + 1);
          v378 = *v214;
          *(v33 + 55) = v378;
LABEL_540:
          if (v33[4])
          {
            v386 = *(a4 + 32);
            v387 = *(v386 + v378);
            *(v33 + 55) = v387;
            v388 = v217;
            if (v217 >= 1)
            {
              do
              {
                v33[1] = (v80 + 1);
                if (v387 != *(v386 + *v80))
                {
                  goto LABEL_904;
                }

                ++v80;
              }

              while (--v388);
            }

            if (v218 != v217)
            {
              if (v216)
              {
                *(v33 + 56) = v217;
                v10 = v761;
                v8 = v762;
                v12 = v763;
LABEL_183:
                *&v768 = 0;
                v49 = a1;
                v50 = 30;
                goto LABEL_1405;
              }

              v33[11] = v80;
              v338 = __OFSUB__(v218, v217);
              v634 = v218 - v217;
              v10 = v761;
              v8 = v762;
              if ((v634 < 0) ^ v338 | (v634 == 0))
              {
                v12 = v763;
LABEL_1188:
                *&v768 = 0;
                v49 = a1;
                v50 = 31;
                goto LABEL_1405;
              }

              v111 = v80;
              do
              {
                if (v111 >= v384)
                {
                  break;
                }

                if (v387 != *(v386 + *v111))
                {
                  break;
                }

                v33[1] = ++v111;
                --v634;
              }

              while (v634);
              v12 = v763;
LABEL_147:
              if (v111 >= v80)
              {
                goto LABEL_1188;
              }

              goto LABEL_904;
            }
          }

          else
          {
            v385 = v217;
            if (v217 >= 1)
            {
              do
              {
                v33[1] = (v80 + 1);
                if (v378 != *v80)
                {
                  goto LABEL_904;
                }

                ++v80;
              }

              while (--v385);
            }

            if (v218 != v217)
            {
              if (v216)
              {
                *(v33 + 56) = v217;
                v10 = v761;
                v8 = v762;
                v12 = v763;
LABEL_189:
                *&v768 = 0;
                v49 = a1;
                v50 = 32;
                goto LABEL_1405;
              }

              v33[11] = v80;
              v338 = __OFSUB__(v218, v217);
              v635 = v218 - v217;
              v10 = v761;
              v8 = v762;
              if ((v635 < 0) ^ v338 | (v635 == 0))
              {
                v12 = v763;
LABEL_1190:
                *&v768 = 0;
                v49 = a1;
                v50 = 33;
                goto LABEL_1405;
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
                --v635;
              }

              while (v635);
              v12 = v763;
LABEL_95:
              if (v79 >= v80)
              {
                goto LABEL_1190;
              }

LABEL_904:
              v16 = *v33;
LABEL_905:
              v772 = v16;
              pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
              v174 = v772;
              if (v772)
              {
LABEL_906:
                v13 = 0;
                *(v174 + 102) = 0;
                goto LABEL_1416;
              }

LABEL_1441:
              v13 = 0;
              goto LABEL_1443;
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
          goto LABEL_904;
        }

        v33[2] = &v214[v377];
        if (v377 < 2)
        {
          goto LABEL_540;
        }

        __s2[0] = 0;
        v765 = 0;
        v766 = 0;
        if (v33[4])
        {
          v183 = 0;
          if ((ucp_findchar(v378, &v765, &v766) & 0x80000000) == 0 && v766 >= 1)
          {
            v183 = ord2utf8(v766, __s2);
            v33 = v772;
            v217 = *(v772 + 59);
          }
        }

        else
        {
          v183 = 0;
        }

        if (v217 >= 1)
        {
          v389 = v33[8];
          v390 = *(v33 + 57);
          v391 = v217;
          v392 = v33[1];
          while (1)
          {
            v393 = memcmp(v392, v389, v390);
            v394 = v390;
            if (v393)
            {
              if (!v183)
              {
                v772 = *v33;
                pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
                v579 = v772;
                if (v772)
                {
                  __n = 0;
                  goto LABEL_971;
                }

                goto LABEL_1441;
              }

              v395 = memcmp(v392, __s2, v183);
              v394 = v183;
              if (v395)
              {
                break;
              }
            }

            v392 += v394;
            v33[1] = v392;
            if (!--v391)
            {
              goto LABEL_560;
            }
          }

          v772 = *v33;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v579 = v772;
          if (!v772)
          {
            goto LABEL_1441;
          }

          __n = v183;
LABEL_971:
          v13 = 0;
          *(v579 + 102) = 0;
LABEL_972:
          *(a4 + 152) = v579;
          v10 = v761;
          v8 = v762;
          v12 = v763;
LABEL_1417:
          v14 = v773;
          goto LABEL_2;
        }

LABEL_560:
        __n = v183;
        v396 = *(v33 + 58);
        if (v396 != v217)
        {
          if (*(v33 + 42))
          {
            *(v33 + 56) = v217;
            v12 = v763;
LABEL_935:
            __n = v183;
            *&v768 = 0;
            v124 = a1;
            v125 = 28;
LABEL_936:
            v193 = pcre_getMem(v124, v125, &v768, a4, a5, a6, a7, a8);
            v102 = v768;
            v194 = v772;
            v10 = v761;
            v8 = v762;
            goto LABEL_937;
          }

          v164 = v33[1];
          v33[11] = v164;
          v637 = v396 - v217;
          if (v396 <= v217)
          {
            v10 = v761;
            v8 = v762;
            v12 = v763;
          }

          else
          {
            v638 = *(v33 + 57);
            v639 = *(a4 + 96) - v638;
            v163 = v164;
            while (v163 <= v639)
            {
              v640 = memcmp(v163, v33[8], v638);
              v641 = v638;
              if (v640)
              {
                if (!v183)
                {
                  __n = 0;
                  break;
                }

                v642 = memcmp(v163, __s2, v183);
                v641 = v183;
                if (v642)
                {
                  break;
                }
              }

              v163 += v641;
              v33[1] = v163;
              if (!--v637)
              {
                break;
              }
            }

            v10 = v761;
            v8 = v762;
            v12 = v763;
LABEL_237:
            if (v163 < v164)
            {
              goto LABEL_904;
            }
          }

          *&v768 = 0;
          v49 = a1;
          v50 = 29;
          goto LABEL_1405;
        }

        continue;
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
        goto LABEL_603;
      case 0x27u:
      case 0x28u:
        v226 = 0;
        *(v33 + 59) = 0;
        v227 = __rev16(*(v211 + 1));
        *(v33 + 58) = v227;
        v225 = *v211 == 40;
        *(v33 + 42) = v225;
        goto LABEL_602;
      case 0x29u:
        v225 = 0;
        v227 = __rev16(*(v211 + 1));
        *(v33 + 58) = v227;
        *(v33 + 59) = v227;
        v226 = v227;
LABEL_602:
        v223 = v211 + 3;
        v33[2] = (v211 + 3);
LABEL_603:
        v423 = *(a4 + 96);
        v424 = v33[1];
        v10 = v761;
        v8 = v762;
        if ((v423 - v424) < v226)
        {
          goto LABEL_904;
        }

        v33[2] = (v223 + 1);
        v425 = *v223;
        *(v33 + 55) = v425;
        if (v33[4])
        {
          v433 = *(a4 + 32);
          v434 = *(v433 + v425);
          *(v33 + 55) = v434;
          v435 = *(a4 + 60);
          if (v435)
          {
            if (v226 >= 1)
            {
              v436 = 1;
              v35 = v424;
              while (1)
              {
                v437 = v35++;
                v33[1] = v35;
                v438 = *v437;
                if ((~v438 & 0xC0) != 0)
                {
                  goto LABEL_624;
                }

                v439 = utf8_table4[v438 & 0x3F];
                v440 = 6 * v439;
                v438 = (utf8_table3[utf8_table4[v438 & 0x3F]] & v438) << (6 * v439);
                v441 = v439 + 1;
                v442 = v440 - 6;
                do
                {
                  v443 = v35++;
                  v33[1] = v35;
                  a3 = (*v443 & 0x3F) << v442;
                  v438 |= a3;
                  --v441;
                  v442 -= 6;
                }

                while (v441 > 1);
                if (v438 <= 255)
                {
LABEL_624:
                  v438 = *(v433 + v438);
                }

                if (v438 == v434)
                {
                  goto LABEL_904;
                }

                v42 = v436++ == v226;
                if (v42)
                {
                  goto LABEL_641;
                }
              }
            }

            v35 = v424;
          }

          else
          {
            v445 = v226;
            v35 = v424;
            if (v226 >= 1)
            {
              do
              {
                v35 = v424 + 1;
                v33[1] = (v424 + 1);
                if (v434 == *(v433 + *v424))
                {
                  goto LABEL_904;
                }

                ++v424;
              }

              while (--v445);
            }
          }

LABEL_641:
          if (v227 != v226)
          {
            if (v225)
            {
              *(v33 + 56) = v226;
              v10 = v761;
              v8 = v762;
              v12 = v763;
              if (v435)
              {
LABEL_75:
                *&v768 = 0;
                v49 = a1;
                v50 = 34;
              }

              else
              {
LABEL_52:
                *&v768 = 0;
                v49 = a1;
                v50 = 35;
              }

              goto LABEL_1405;
            }

            v33[11] = v35;
            v10 = v761;
            v8 = v762;
            if (v435)
            {
              v12 = v763;
              if (v227 <= v226)
              {
LABEL_58:
                *&v768 = 0;
                v49 = a1;
                v50 = 36;
                goto LABEL_1405;
              }

              while (2)
              {
                if (v35 >= v423)
                {
                  goto LABEL_58;
                }

                v592 = *v35;
                if ((~v592 & 0xC0) != 0)
                {
                  v598 = 1;
                }

                else
                {
                  v593 = utf8_table4[v592 & 0x3F];
                  v592 = (utf8_table3[v593] & v592) << (6 * v593);
                  v594 = (v35 + 1);
                  if (v593 <= 1)
                  {
                    v595 = 1;
                  }

                  else
                  {
                    v595 = v593;
                  }

                  v596 = 6 * v593 - 6;
                  do
                  {
                    v597 = *v594++;
                    v592 |= (v597 & 0x3F) << v596;
                    v596 -= 6;
                    --v595;
                  }

                  while (v595);
                  v598 = v593 + 1;
                  if (v592 > 255)
                  {
LABEL_1045:
                    if (v592 == v434)
                    {
                      goto LABEL_58;
                    }

                    v35 += v598;
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

              v592 = *(v433 + v592);
              goto LABEL_1045;
            }

            v338 = __OFSUB__(v227, v226);
            v652 = v227 - v226;
            v12 = v763;
            if ((v652 < 0) ^ v338 | (v652 == 0))
            {
              goto LABEL_1152;
            }

            v34 = v35;
            do
            {
              if (v34 >= v423)
              {
                break;
              }

              if (v434 == *(v433 + *v34))
              {
                break;
              }

              v33[1] = ++v34;
              --v652;
            }

            while (v652);
LABEL_27:
            if (v34 >= v35)
            {
LABEL_1152:
              *&v768 = 0;
              v49 = a1;
              v50 = 37;
              goto LABEL_1405;
            }

            goto LABEL_904;
          }
        }

        else
        {
          v426 = *(a4 + 60);
          if (v426)
          {
            if (v226 >= 1)
            {
              v427 = 1;
              v119 = v424;
              while (1)
              {
                v428 = v119 + 1;
                v33[1] = (v119 + 1);
                v429 = *v119;
                if ((~v429 & 0xC0) != 0)
                {
                  ++v119;
                }

                else
                {
                  v430 = utf8_table4[v429 & 0x3F];
                  v429 = (utf8_table3[utf8_table4[v429 & 0x3F]] & v429) << (6 * v430);
                  v431 = v430 + 1;
                  v432 = 6 * v430 - 6;
                  do
                  {
                    v119 = v428 + 1;
                    v33[1] = (v428 + 1);
                    v429 |= (*v428 & 0x3F) << v432;
                    --v431;
                    v432 -= 6;
                    ++v428;
                  }

                  while (v431 > 1);
                }

                if (v429 == v425)
                {
                  goto LABEL_904;
                }

                v42 = v427++ == v226;
                if (v42)
                {
                  goto LABEL_638;
                }
              }
            }

            v119 = v424;
          }

          else
          {
            v444 = v226;
            v119 = v424;
            if (v226 >= 1)
            {
              do
              {
                v119 = v424 + 1;
                v33[1] = (v424 + 1);
                if (v425 == *v424)
                {
                  goto LABEL_904;
                }

                ++v424;
              }

              while (--v444);
            }
          }

LABEL_638:
          if (v227 != v226)
          {
            if (v225)
            {
              *(v33 + 56) = v226;
              v10 = v761;
              v8 = v762;
              v12 = v763;
              if (v426)
              {
LABEL_325:
                *&v768 = 0;
                v49 = a1;
                v50 = 38;
              }

              else
              {
LABEL_213:
                *&v768 = 0;
                v49 = a1;
                v50 = 39;
              }

              goto LABEL_1405;
            }

            v33[11] = v119;
            if (v426)
            {
              v10 = v761;
              v8 = v762;
              v12 = v763;
              if (v227 > v226)
              {
                do
                {
                  if (v119 >= v423)
                  {
                    break;
                  }

                  v599 = *v119;
                  if ((~v599 & 0xC0) != 0)
                  {
                    v605 = 1;
                  }

                  else
                  {
                    v600 = utf8_table4[v599 & 0x3F];
                    v599 = (utf8_table3[v600] & v599) << (6 * v600);
                    v601 = (v119 + 1);
                    v602 = v600 <= 1 ? 1 : v600;
                    v603 = 6 * v600 - 6;
                    do
                    {
                      v604 = *v601++;
                      v599 |= (v604 & 0x3F) << v603;
                      v603 -= 6;
                      --v602;
                    }

                    while (v602);
                    v605 = v600 + 1;
                  }

                  if (v599 == v425)
                  {
                    break;
                  }

                  v119 += v605;
                  v33[1] = v119;
                  ++v226;
                }

                while (v226 != v227);
              }

LABEL_118:
              *&v768 = 0;
              v49 = a1;
              v50 = 40;
              goto LABEL_1405;
            }

            v338 = __OFSUB__(v227, v226);
            v653 = v227 - v226;
            v10 = v761;
            v8 = v762;
            v12 = v763;
            if ((v653 < 0) ^ v338 | (v653 == 0))
            {
              goto LABEL_1159;
            }

            v118 = v119;
            do
            {
              if (v118 >= v423)
              {
                break;
              }

              if (v425 == *v118)
              {
                break;
              }

              v33[1] = ++v118;
              --v653;
            }

            while (v653);
LABEL_162:
            if (v118 >= v119)
            {
LABEL_1159:
              *&v768 = 0;
              v49 = a1;
              v50 = 41;
              goto LABEL_1405;
            }

            goto LABEL_904;
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
        goto LABEL_391;
      case 0x30u:
      case 0x31u:
        v221 = 0;
        *(v33 + 59) = 0;
        *(v33 + 58) = __rev16(*(v211 + 1));
        v236 = *v211 == 49;
        goto LABEL_390;
      case 0x32u:
        v221 = __rev16(*(v211 + 1));
        *(v33 + 58) = v221;
        *(v33 + 59) = v221;
        v236 = 1;
LABEL_390:
        *(v33 + 42) = v236;
        v219 = v211 + 3;
        v33[2] = (v211 + 3);
LABEL_391:
        v33[2] = (v219 + 1);
        v271 = *v219;
        *(v33 + 54) = v271;
        v10 = v761;
        v8 = v762;
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
            v33[26] = v33 + 196;
            v274 = v273 != 0;
          }
        }

        v275 = *(a4 + 96);
        v276 = v33[1];
        if (v275 - v276 < v221)
        {
          goto LABEL_904;
        }

        if (v221 < 1)
        {
          goto LABEL_900;
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
            v33 = v772;
            *(v772 + 48) = v285;
            if (*(v33 + 47) == (*v33[26] == *(v33 + 51)))
            {
              goto LABEL_904;
            }

            v221 = *(v33 + 59);
            v286 = v277++ < v221;
            if (!v286)
            {
              goto LABEL_900;
            }
          }
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
            v33 = v772;
            *(v772 + 48) = v294;
            if (v294 == 2)
            {
              goto LABEL_904;
            }

            for (k = v33[1]; k < *(a4 + 96); v33[1] = k)
            {
              v296 = *k;
              v297 = 1;
              if (*(a4 + 60) && (v296 & 0xC0) == 0xC0)
              {
                v298 = utf8_table4[v296 & 0x3F];
                v296 = (utf8_table3[v298] & v296) << (6 * v298);
                v299 = (k + 1);
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
              v33 = v772;
              *(v772 + 48) = v303;
              if (v303 != 2)
              {
                break;
              }

              k = (v33[1] + v297);
            }

            v221 = *(v33 + 59);
            v286 = v287++ < v221;
            if (!v286)
            {
              goto LABEL_900;
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
                v553 = 1;
                while (v276 < v275)
                {
                  if ((*v276 & 0x80000000) == 0)
                  {
                    v554 = *(a4 + 40);
                    v33[1] = (v276 + 1);
                    LOBYTE(v554) = *(v554 + *v276++);
                    if (v554)
                    {
                      break;
                    }
                  }

                  if (v276 < v275)
                  {
                    v555 = v275 - v276;
                    while ((*v276 & 0xC0) == 0x80)
                    {
                      v33[1] = ++v276;
                      if (!--v555)
                      {
                        v276 = v275;
                        break;
                      }
                    }
                  }

                  v42 = v553++ == v221;
                  if (v42)
                  {
                    goto LABEL_900;
                  }
                }
              }

              else
              {
                v538 = v221;
                while (v276 < v275)
                {
                  if (*v276 < 0)
                  {
                    break;
                  }

                  v539 = *(a4 + 40);
                  v33[1] = (v276 + 1);
                  if ((*(v539 + *v276) & 1) == 0)
                  {
                    break;
                  }

                  ++v276;
                  if (!--v538)
                  {
                    goto LABEL_900;
                  }
                }
              }
            }

            else if (v271 == 5)
            {
              v544 = 1;
              while (v276 < v275)
              {
                v545 = v276 + 1;
                v33[1] = (v276 + 1);
                v546 = *v276;
                if ((~v546 & 0xC0) != 0)
                {
                  ++v276;
                }

                else
                {
                  v547 = utf8_table4[v546 & 0x3F];
                  v546 = (utf8_table3[utf8_table4[v546 & 0x3F]] & v546) << (6 * v547);
                  v548 = 6 * v547 - 6;
                  v549 = v547 + 1;
                  do
                  {
                    v276 = v545 + 1;
                    v33[1] = (v545 + 1);
                    v546 |= (*v545 & 0x3F) << v548;
                    v548 -= 6;
                    --v549;
                    ++v545;
                  }

                  while (v549 > 1);
                }

                if (v546 <= 127 && (*(*(a4 + 40) + v546) & 4) != 0)
                {
                  break;
                }

                v42 = v544++ == v221;
                if (v42)
                {
                  goto LABEL_900;
                }
              }
            }

            else
            {
              v304 = v221;
              if (v271 != 6)
              {
LABEL_1268:
                v578 = *v33;
LABEL_963:
                v772 = v578;
                pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
                v174 = v772;
                v13 = 4294967282;
                if (v772)
                {
                  goto LABEL_1415;
                }

                goto LABEL_1443;
              }

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

                ++v276;
                if (!--v304)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_904;
          }

          if (v271 <= 10)
          {
            if (v271 == 9)
            {
              v550 = 1;
              while (v276 < v275)
              {
                if ((*v276 & 0x80000000) == 0)
                {
                  v551 = *(a4 + 40);
                  v33[1] = (v276 + 1);
                  LOBYTE(v551) = *(v551 + *v276++);
                  if ((v551 & 0x10) != 0)
                  {
                    break;
                  }
                }

                if (v276 < v275)
                {
                  v552 = v275 - v276;
                  while ((*v276 & 0xC0) == 0x80)
                  {
                    v33[1] = ++v276;
                    if (!--v552)
                    {
                      v276 = v275;
                      break;
                    }
                  }
                }

                v42 = v550++ == v221;
                if (v42)
                {
                  goto LABEL_900;
                }
              }
            }

            else
            {
              v506 = v221;
              while (v276 < v275)
              {
                if (*v276 < 0)
                {
                  break;
                }

                v507 = *(a4 + 40);
                v33[1] = (v276 + 1);
                if ((*(v507 + *v276) & 0x10) == 0)
                {
                  break;
                }

                ++v276;
                if (!--v506)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_904;
          }

          if (v271 == 11)
          {
            v556 = 1;
            while (v276 < v275)
            {
              v557 = v276 + 1;
              v33[1] = (v276 + 1);
              if (*v276 == 10 && (v33[4] & 4) == 0)
              {
                break;
              }

              if (v557 < v275)
              {
                while ((*v557 & 0xC0) == 0x80)
                {
                  v33[1] = ++v557;
                  if (v557 == v275)
                  {
                    v557 = v275;
                    break;
                  }
                }
              }

              v276 = v557;
              v42 = v556++ == v221;
              if (v42)
              {
                goto LABEL_900;
              }
            }

            goto LABEL_904;
          }

          if (v271 != 12)
          {
            goto LABEL_1268;
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
                v564 = *(a4 + 40);
                v565 = v276 + 1;
                v566 = v221;
                while (1)
                {
                  v33[1] = v565;
                  if (*(v564 + *(v565 - 1)))
                  {
                    break;
                  }

                  ++v565;
                  if (!--v566)
                  {
                    goto LABEL_900;
                  }
                }
              }

              else
              {
                v540 = *(a4 + 40);
                v541 = v276 + 1;
                v542 = v221;
                while (1)
                {
                  v33[1] = v541;
                  if ((*(v540 + *(v541 - 1)) & 1) == 0)
                  {
                    break;
                  }

                  ++v541;
                  if (!--v542)
                  {
                    goto LABEL_900;
                  }
                }
              }

              goto LABEL_904;
            }

            if (v271 == 5)
            {
              v558 = *(a4 + 40);
              v559 = v276 + 1;
              v560 = v221;
              while (1)
              {
                v33[1] = v559;
                if ((*(v558 + *(v559 - 1)) & 4) != 0)
                {
                  goto LABEL_904;
                }

                ++v559;
                if (!--v560)
                {
                  goto LABEL_900;
                }
              }
            }

            if (v271 == 6)
            {
              v492 = *(a4 + 40);
              v493 = v276 + 1;
              v494 = v221;
              while (1)
              {
                v33[1] = v493;
                if ((*(v492 + *(v493 - 1)) & 4) == 0)
                {
                  goto LABEL_904;
                }

                ++v493;
                if (!--v494)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_1328;
          }

          if (v271 <= 10)
          {
            if (v271 == 9)
            {
              v561 = *(a4 + 40);
              v562 = v276 + 1;
              v563 = v221;
              while (1)
              {
                v33[1] = v562;
                if ((*(v561 + *(v562 - 1)) & 0x10) != 0)
                {
                  break;
                }

                ++v562;
                if (!--v563)
                {
                  goto LABEL_900;
                }
              }
            }

            else
            {
              v535 = *(a4 + 40);
              v536 = v276 + 1;
              v537 = v221;
              while (1)
              {
                v33[1] = v536;
                if ((*(v535 + *(v536 - 1)) & 0x10) == 0)
                {
                  break;
                }

                ++v536;
                if (!--v537)
                {
                  goto LABEL_900;
                }
              }
            }

            goto LABEL_904;
          }

          if (v271 == 11)
          {
            if ((v33[4] & 4) == 0)
            {
              v567 = v276 + 1;
              v568 = v221;
              while (1)
              {
                v33[1] = v567;
                if (*(v567 - 1) == 10)
                {
                  goto LABEL_904;
                }

                ++v567;
                if (!--v568)
                {
                  goto LABEL_900;
                }
              }
            }
          }

          else if (v271 != 12)
          {
            goto LABEL_1328;
          }
        }

        v33[1] = &v276[v221];
LABEL_900:
        v569 = *(v33 + 58);
        v570 = v569 - v221;
        if (v569 == v221)
        {
          continue;
        }

        if (*(v33 + 42))
        {
          if (*(v33 + 46) >= 1)
          {
            *(v33 + 56) = v221;
            v10 = v761;
            v8 = v762;
            v12 = v763;
LABEL_225:
            *&v768 = 0;
            v49 = a1;
            v50 = 42;
            goto LABEL_1405;
          }

          v10 = v761;
          v8 = v762;
          v12 = v763;
          if (*(v33 + 54) == 15)
          {
            *(v33 + 56) = v221;
LABEL_920:
            *&v768 = 0;
            v49 = a1;
            v50 = 43;
            goto LABEL_1405;
          }

          v636 = *(a4 + 60);
          *(v33 + 56) = v221;
          if (v636)
          {
LABEL_982:
            *&v768 = 0;
            v49 = a1;
            v50 = 44;
            goto LABEL_1405;
          }

LABEL_989:
          *&v768 = 0;
          v49 = a1;
          v50 = 45;
          goto LABEL_1405;
        }

        v90 = v33[1];
        v33[11] = v90;
        if (*(v33 + 46) >= 1)
        {
          v10 = v761;
          v8 = v762;
          v12 = v763;
          if (v569 > v221)
          {
            do
            {
              if (v90 >= *(a4 + 96))
              {
                break;
              }

              v581 = *v90;
              if ((~v581 & 0xC0) != 0)
              {
                v587 = 1;
              }

              else
              {
                v582 = utf8_table4[v581 & 0x3F];
                v581 = (utf8_table3[v582] & v581) << (6 * v582);
                v583 = v90 + 1;
                v584 = v582 <= 1 ? 1 : v582;
                v585 = 6 * v582 - 6;
                do
                {
                  v586 = *v583++;
                  v581 |= (v586 & 0x3F) << v585;
                  v585 -= 6;
                  --v584;
                }

                while (v584);
                v587 = v582 + 1;
              }

              v588 = ucp_findchar(v581, v33 + 49, v33 + 50);
              v33 = v772;
              *(v772 + 48) = v588;
              if (*(v33 + 47) == (*v33[26] == *(v33 + 51)))
              {
                break;
              }

              v90 = (v33[1] + v587);
              v33[1] = v90;
              ++v221;
            }

            while (v221 < *(v33 + 58));
          }

LABEL_277:
          *&v768 = 0;
          v49 = a1;
          v50 = 46;
          goto LABEL_1405;
        }

        v617 = *(v33 + 54);
        v10 = v761;
        v8 = v762;
        if (v617 == 15)
        {
          v12 = v763;
          if (v569 > v221)
          {
            do
            {
              v618 = v33[1];
              if (v618 >= *(a4 + 96))
              {
                break;
              }

              v33[1] = (v618 + 1);
              v619 = *v618;
              if (*(a4 + 60) && (v619 & 0xC0) == 0xC0)
              {
                v620 = utf8_table4[v619 & 0x3F];
                v619 = (utf8_table3[utf8_table4[v619 & 0x3F]] & v619) << (6 * v620);
                v621 = v618 + 2;
                v622 = 6 * v620 - 6;
                v623 = v620 + 1;
                do
                {
                  v33[1] = v621;
                  v619 |= (*(v621++ - 1) & 0x3F) << v622;
                  v622 -= 6;
                  --v623;
                }

                while (v623 > 1);
              }

              v624 = ucp_findchar(v619, v33 + 49, v33 + 50);
              v33 = v772;
              *(v772 + 48) = v624;
              if (v624 == 2)
              {
                break;
              }

              for (m = v33[1]; m < *(a4 + 96); v33[1] = m)
              {
                v626 = *m;
                v627 = 1;
                if (*(a4 + 60) && (v626 & 0xC0) == 0xC0)
                {
                  v628 = utf8_table4[v626 & 0x3F];
                  v626 = (utf8_table3[v628] & v626) << (6 * v628);
                  v629 = (m + 1);
                  if (v628 <= 1)
                  {
                    v630 = 1;
                  }

                  else
                  {
                    v630 = v628;
                  }

                  v631 = 6 * v628 - 6;
                  do
                  {
                    v632 = *v629++;
                    v626 |= (v632 & 0x3F) << v631;
                    v631 -= 6;
                    --v630;
                  }

                  while (v630);
                  v627 = v628 + 1;
                }

                v633 = ucp_findchar(v626, v33 + 49, v33 + 50);
                v33 = v772;
                *(v772 + 48) = v633;
                if (v633 != 2)
                {
                  break;
                }

                m = (v33[1] + v627);
              }

              ++v221;
            }

            while (v221 < *(v33 + 58));
          }

LABEL_46:
          *&v768 = 0;
          v49 = a1;
          v50 = 47;
          goto LABEL_1405;
        }

        if (*(a4 + 60))
        {
          if (v617 <= 8)
          {
            if (v617 <= 6)
            {
              if (v617 != 5)
              {
                if (v617 == 6)
                {
                  if (v569 > v221)
                  {
                    v654 = *(a4 + 96);
                    while (v90 < v654)
                    {
                      v655 = *v90;
                      if ((~v655 & 0xC0) != 0)
                      {
                        v661 = 1;
                      }

                      else
                      {
                        v656 = utf8_table4[v655 & 0x3F];
                        v655 = (utf8_table3[v656] & v655) << (6 * v656);
                        v657 = v90 + 1;
                        if (v656 <= 1)
                        {
                          v658 = 1;
                        }

                        else
                        {
                          v658 = v656;
                        }

                        v659 = 6 * v656 - 6;
                        do
                        {
                          v660 = *v657++;
                          v655 |= (v660 & 0x3F) << v659;
                          v659 -= 6;
                          --v658;
                        }

                        while (v658);
                        if (v655 > 255)
                        {
                          goto LABEL_1380;
                        }

                        v661 = v656 + 1;
                      }

                      if ((*(*(a4 + 40) + v655) & 4) != 0)
                      {
                        v90 += v661;
                        v33[1] = v90;
                        if (++v221 != v569)
                        {
                          continue;
                        }
                      }

                      goto LABEL_1380;
                    }
                  }

                  goto LABEL_1380;
                }

LABEL_1328:
                v772 = *v33;
                pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
                v579 = v772;
                v13 = 4294967282;
                if (v772)
                {
                  *(v772 + 102) = -14;
                  goto LABEL_972;
                }

                goto LABEL_1443;
              }

              if (v569 > v221)
              {
                v714 = *(a4 + 96);
                while (1)
                {
                  if (v90 >= v714)
                  {
                    goto LABEL_1380;
                  }

                  v715 = *v90;
                  if ((~v715 & 0xC0) != 0)
                  {
                    break;
                  }

                  v716 = utf8_table4[v715 & 0x3F];
                  v715 = (utf8_table3[v716] & v715) << (6 * v716);
                  v717 = v90 + 1;
                  if (v716 <= 1)
                  {
                    v718 = 1;
                  }

                  else
                  {
                    v718 = v716;
                  }

                  v719 = 6 * v716 - 6;
                  do
                  {
                    v720 = *v717++;
                    v715 |= (v720 & 0x3F) << v719;
                    v719 -= 6;
                    --v718;
                  }

                  while (v718);
                  v721 = v716 + 1;
                  if (v715 <= 255)
                  {
                    goto LABEL_1342;
                  }

LABEL_1343:
                  v90 += v721;
                  v33[1] = v90;
                  if (++v221 == v569)
                  {
                    goto LABEL_1380;
                  }
                }

                v721 = 1;
LABEL_1342:
                if ((*(*(a4 + 40) + v715) & 4) != 0)
                {
                  goto LABEL_1380;
                }

                goto LABEL_1343;
              }

              goto LABEL_1380;
            }

            if (v617 != 7)
            {
              if (v569 > v221)
              {
                v698 = *(a4 + 96);
                while (v90 < v698)
                {
                  v699 = *v90;
                  if ((~v699 & 0xC0) != 0)
                  {
                    v705 = 1;
                  }

                  else
                  {
                    v700 = utf8_table4[v699 & 0x3F];
                    v699 = (utf8_table3[v700] & v699) << (6 * v700);
                    v701 = v90 + 1;
                    if (v700 <= 1)
                    {
                      v702 = 1;
                    }

                    else
                    {
                      v702 = v700;
                    }

                    v703 = 6 * v700 - 6;
                    do
                    {
                      v704 = *v701++;
                      v699 |= (v704 & 0x3F) << v703;
                      v703 -= 6;
                      --v702;
                    }

                    while (v702);
                    if (v699 > 255)
                    {
                      goto LABEL_1380;
                    }

                    v705 = v700 + 1;
                  }

                  if (*(*(a4 + 40) + v699))
                  {
                    v90 += v705;
                    v33[1] = v90;
                    if (++v221 != v569)
                    {
                      continue;
                    }
                  }

                  goto LABEL_1380;
                }
              }

              goto LABEL_1380;
            }

            if (v569 <= v221)
            {
              goto LABEL_1380;
            }

            v730 = *(a4 + 96);
            while (1)
            {
              if (v90 >= v730)
              {
                goto LABEL_1380;
              }

              v731 = *v90;
              if ((~v731 & 0xC0) != 0)
              {
                break;
              }

              v732 = utf8_table4[v731 & 0x3F];
              v731 = (utf8_table3[v732] & v731) << (6 * v732);
              v733 = v90 + 1;
              if (v732 <= 1)
              {
                v734 = 1;
              }

              else
              {
                v734 = v732;
              }

              v735 = 6 * v732 - 6;
              do
              {
                v736 = *v733++;
                v731 |= (v736 & 0x3F) << v735;
                v735 -= 6;
                --v734;
              }

              while (v734);
              v737 = v732 + 1;
              if (v731 <= 255)
              {
                goto LABEL_1372;
              }

LABEL_1373:
              v90 += v737;
              v33[1] = v90;
              if (++v221 == v569)
              {
                goto LABEL_1380;
              }
            }

            v737 = 1;
LABEL_1372:
            if (*(*(a4 + 40) + v731))
            {
              goto LABEL_1380;
            }

            goto LABEL_1373;
          }

          if (v617 > 10)
          {
            if (v617 == 12)
            {
              v738 = v570;
            }

            else
            {
              if (v617 != 11)
              {
                goto LABEL_1328;
              }

              v706 = v33[4];
              if (v569 != 0x7FFFFFFF)
              {
                if ((v706 & 4) != 0)
                {
                  if (v569 > v221)
                  {
                    v751 = *(a4 + 96);
                    do
                    {
                      v752 = v90 + 1;
                      v33[1] = (v90 + 1);
                      if ((v90 + 1) < v751)
                      {
                        v753 = v751 - 1 - v90;
                        while ((*v752 & 0xC0) == 0x80)
                        {
                          v33[1] = ++v752;
                          if (!--v753)
                          {
                            v752 = v751;
                            break;
                          }
                        }
                      }

                      ++v221;
                      v90 = v752;
                    }

                    while (v221 != v569);
                  }
                }

                else if (v569 > v221)
                {
                  v750 = *(a4 + 96);
                  do
                  {
                    if (v90 >= v750 || *v90 == 10)
                    {
                      break;
                    }

                    v33[1] = ++v90;
                    if (v90 < v750)
                    {
                      while ((*v90 & 0xC0) == 0x80)
                      {
                        v33[1] = ++v90;
                        if (v90 == v750)
                        {
                          v90 = v750;
                          break;
                        }
                      }
                    }

                    ++v221;
                  }

                  while (v221 != v569);
                }

                goto LABEL_1380;
              }

              if ((v706 & 4) == 0)
              {
                if (v221 != 0x7FFFFFFF)
                {
                  v707 = *(a4 + 96);
                  v708 = v221 - 0x7FFFFFFF;
                  do
                  {
                    if (v90 >= v707)
                    {
                      break;
                    }

                    if (*v90 == 10)
                    {
                      break;
                    }

                    v33[1] = ++v90;
                  }

                  while (!__CFADD__(v708++, 1));
                }

                goto LABEL_1380;
              }

              v738 = v221 ^ 0x7FFFFFFFu;
              v570 = v221 ^ 0x7FFFFFFF;
            }

            if (*(a4 + 96) - v90 >= v738)
            {
              v739 = v570;
            }

            else
            {
              v739 = *(a4 + 96) - v90;
            }

            v33[1] = &v90[v739];
            goto LABEL_1380;
          }

          if (v617 != 9)
          {
            if (v569 > v221)
            {
              v688 = *(a4 + 96);
              while (v90 < v688)
              {
                v689 = *v90;
                if ((~v689 & 0xC0) != 0)
                {
                  v695 = 1;
                }

                else
                {
                  v690 = utf8_table4[v689 & 0x3F];
                  v689 = (utf8_table3[v690] & v689) << (6 * v690);
                  v691 = v90 + 1;
                  if (v690 <= 1)
                  {
                    v692 = 1;
                  }

                  else
                  {
                    v692 = v690;
                  }

                  v693 = 6 * v690 - 6;
                  do
                  {
                    v694 = *v691++;
                    v689 |= (v694 & 0x3F) << v693;
                    v693 -= 6;
                    --v692;
                  }

                  while (v692);
                  if (v689 > 255)
                  {
                    goto LABEL_1380;
                  }

                  v695 = v690 + 1;
                }

                if ((*(*(a4 + 40) + v689) & 0x10) != 0)
                {
                  v90 += v695;
                  v33[1] = v90;
                  if (++v221 != v569)
                  {
                    continue;
                  }
                }

                goto LABEL_1380;
              }
            }

            goto LABEL_1380;
          }

          if (v569 <= v221)
          {
LABEL_1380:
            v10 = v761;
            v8 = v762;
            v12 = v763;
LABEL_102:
            *&v768 = 0;
            v49 = a1;
            v50 = 48;
            goto LABEL_1405;
          }

          v722 = *(a4 + 96);
          while (1)
          {
            if (v90 >= v722)
            {
              goto LABEL_1380;
            }

            v723 = *v90;
            if ((~v723 & 0xC0) != 0)
            {
              break;
            }

            v724 = utf8_table4[v723 & 0x3F];
            v723 = (utf8_table3[v724] & v723) << (6 * v724);
            v725 = v90 + 1;
            if (v724 <= 1)
            {
              v726 = 1;
            }

            else
            {
              v726 = v724;
            }

            v727 = 6 * v724 - 6;
            do
            {
              v728 = *v725++;
              v723 |= (v728 & 0x3F) << v727;
              v727 -= 6;
              --v726;
            }

            while (v726);
            v729 = v724 + 1;
            if (v723 <= 255)
            {
              goto LABEL_1357;
            }

LABEL_1358:
            v90 += v729;
            v33[1] = v90;
            if (++v221 == v569)
            {
              goto LABEL_1380;
            }
          }

          v729 = 1;
LABEL_1357:
          if ((*(*(a4 + 40) + v723) & 0x10) != 0)
          {
            goto LABEL_1380;
          }

          goto LABEL_1358;
        }

        if (v617 > 8)
        {
          if (v617 > 10)
          {
            if (v617 == 12)
            {
              goto LABEL_1381;
            }

            if (v617 != 11)
            {
              goto LABEL_1328;
            }

            if ((v33[4] & 4) != 0)
            {
LABEL_1381:
              v740 = *(a4 + 96) - v90;
              if (v740 >= v570)
              {
                LODWORD(v740) = v570;
              }

              v89 = &v90[v740];
              v33[1] = v89;
              goto LABEL_1384;
            }

            v712 = v569 - v221;
            if (v569 > v221)
            {
              v713 = *(a4 + 96);
              v89 = v90;
              do
              {
                if (v89 >= v713)
                {
                  break;
                }

                if (*v89 == 10)
                {
                  break;
                }

                v33[1] = ++v89;
                --v712;
              }

              while (v712);
              goto LABEL_1384;
            }
          }

          else if (v617 == 9)
          {
            v743 = v569 - v221;
            if (v569 > v221)
            {
              v744 = *(a4 + 96);
              v89 = v90;
              do
              {
                if (v89 >= v744)
                {
                  break;
                }

                if ((*(*(a4 + 40) + *v89) & 0x10) != 0)
                {
                  break;
                }

                v33[1] = ++v89;
                --v743;
              }

              while (v743);
              goto LABEL_1384;
            }
          }

          else
          {
            v696 = v569 - v221;
            if (v569 > v221)
            {
              v697 = *(a4 + 96);
              v89 = v90;
              do
              {
                if (v89 >= v697)
                {
                  break;
                }

                if ((*(*(a4 + 40) + *v89) & 0x10) == 0)
                {
                  break;
                }

                v33[1] = ++v89;
                --v696;
              }

              while (v696);
              goto LABEL_1384;
            }
          }
        }

        else if (v617 > 6)
        {
          if (v617 == 7)
          {
            v745 = v569 - v221;
            if (v569 > v221)
            {
              v746 = *(a4 + 96);
              v89 = v90;
              do
              {
                if (v89 >= v746)
                {
                  break;
                }

                if (*(*(a4 + 40) + *v89))
                {
                  break;
                }

                v33[1] = ++v89;
                --v745;
              }

              while (v745);
              goto LABEL_1384;
            }
          }

          else
          {
            v710 = v569 - v221;
            if (v569 > v221)
            {
              v711 = *(a4 + 96);
              v89 = v90;
              do
              {
                if (v89 >= v711)
                {
                  break;
                }

                if ((*(*(a4 + 40) + *v89) & 1) == 0)
                {
                  break;
                }

                v33[1] = ++v89;
                --v710;
              }

              while (v710);
              goto LABEL_1384;
            }
          }
        }

        else if (v617 == 5)
        {
          v741 = v569 - v221;
          if (v569 > v221)
          {
            v742 = *(a4 + 96);
            v89 = v90;
            do
            {
              if (v89 >= v742)
              {
                break;
              }

              if ((*(*(a4 + 40) + *v89) & 4) != 0)
              {
                break;
              }

              v33[1] = ++v89;
              --v741;
            }

            while (v741);
            goto LABEL_1384;
          }
        }

        else
        {
          if (v617 != 6)
          {
            goto LABEL_1328;
          }

          v684 = v569 - v221;
          if (v569 > v221)
          {
            v685 = *(a4 + 96);
            v89 = v90;
            do
            {
              if (v89 >= v685)
              {
                break;
              }

              if ((*(*(a4 + 40) + *v89) & 4) == 0)
              {
                break;
              }

              v33[1] = ++v89;
              --v684;
            }

            while (v684);
LABEL_1384:
            v10 = v761;
            v8 = v762;
            v12 = v763;
            goto LABEL_111;
          }
        }

        v10 = v761;
        v8 = v762;
        v12 = v763;
        goto LABEL_1404;
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
            v10 = v761;
            v8 = v762;
            if (*(a4 + 60))
            {
LABEL_677:
              v471 = *(a4 + 96);
              v472 = v33[1];
              v473 = 1;
              while (v472 < v471)
              {
                v474 = v472 + 1;
                v33[1] = (v472 + 1);
                v475 = *v472;
                if ((~v475 & 0xC0) != 0)
                {
                  goto LABEL_685;
                }

                v476 = utf8_table4[v475 & 0x3F];
                v477 = 6 * v476;
                v475 = (utf8_table3[utf8_table4[v475 & 0x3F]] & v475) << (6 * v476);
                v478 = v476 + 1;
                v479 = v477 - 6;
                do
                {
                  v480 = v474++;
                  v33[1] = v474;
                  v475 |= (*v480 & 0x3F) << v479;
                  --v478;
                  v479 -= 6;
                }

                while (v478 > 1);
                if (v475 < 256)
                {
LABEL_685:
                  if (((v249[v475 / 8] >> (v475 & 7)) & 1) == 0)
                  {
                    goto LABEL_904;
                  }
                }

                else if (v212 == 59)
                {
                  goto LABEL_904;
                }

                v472 = v474;
                v42 = v473++ == v253;
                if (v42)
                {
                  goto LABEL_688;
                }
              }
            }

            else
            {
LABEL_690:
              v482 = *(a4 + 96);
              v483 = v33[1];
              v484 = v253;
              while (v483 < v482)
              {
                v33[1] = (v483 + 1);
                if (((v249[*v483 >> 3] >> (*v483 & 7)) & 1) == 0)
                {
                  break;
                }

                ++v483;
                if (!--v484)
                {
                  goto LABEL_694;
                }
              }
            }

            goto LABEL_904;
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
          v10 = v761;
          v8 = v762;
          if (v253 >= 1)
          {
            goto LABEL_677;
          }

LABEL_688:
          v481 = 0;
        }

        else
        {
          v10 = v761;
          v8 = v762;
          if (v253 >= 1)
          {
            goto LABEL_690;
          }

LABEL_694:
          v481 = 1;
        }

        if (v254 == v253)
        {
          continue;
        }

        if (v252)
        {
          *(v33 + 56) = v253;
          v10 = v761;
          v8 = v762;
          v12 = v763;
          if ((v481 & 1) == 0)
          {
LABEL_913:
            *&v768 = 0;
            v49 = a1;
            v50 = 22;
            goto LABEL_1405;
          }

LABEL_231:
          *&v768 = 0;
          v49 = a1;
          v50 = 23;
          goto LABEL_1405;
        }

        v95 = v33[1];
        v33[11] = v95;
        if (v481)
        {
          v338 = __OFSUB__(v254, v253);
          v662 = v254 - v253;
          if ((v662 < 0) ^ v338 | (v662 == 0))
          {
            v10 = v761;
            v8 = v762;
            v12 = v763;
          }

          else
          {
            v663 = *(a4 + 96);
            v94 = v95;
            do
            {
              if (v94 >= v663)
              {
                break;
              }

              if (((v249[*v94 >> 3] >> (*v94 & 7)) & 1) == 0)
              {
                break;
              }

              v33[1] = ++v94;
              --v662;
            }

            while (v662);
            v10 = v761;
            v8 = v762;
            v12 = v763;
LABEL_121:
            if (v94 < v95)
            {
              goto LABEL_904;
            }
          }

          *&v768 = 0;
          v49 = a1;
          v50 = 25;
          goto LABEL_1405;
        }

        if (v254 <= v253)
        {
          v10 = v761;
          v8 = v762;
          v12 = v763;
LABEL_128:
          *&v768 = 0;
          v49 = a1;
          v50 = 24;
          goto LABEL_1405;
        }

        v667 = *(a4 + 96);
        while (1)
        {
          if (v95 >= v667)
          {
LABEL_1219:
            v10 = v761;
            v8 = v762;
            v12 = v763;
            goto LABEL_128;
          }

          v668 = *v95;
          if ((~v668 & 0xC0) != 0)
          {
            break;
          }

          v669 = utf8_table4[v668 & 0x3F];
          v668 = (utf8_table3[v669] & v668) << (6 * v669);
          v670 = (v95 + 1);
          if (v669 <= 1)
          {
            v671 = 1;
          }

          else
          {
            v671 = v669;
          }

          v672 = 6 * v669 - 6;
          do
          {
            v673 = *v670++;
            v668 |= (v673 & 0x3F) << v672;
            v672 -= 6;
            --v671;
          }

          while (v671);
          v674 = v669 + 1;
          if (v668 < 256)
          {
            goto LABEL_1217;
          }

          if (v212 == 59)
          {
            goto LABEL_1219;
          }

LABEL_1218:
          v95 += v674;
          v33[1] = v95;
          if (++v253 == v254)
          {
            goto LABEL_1219;
          }
        }

        v674 = 1;
LABEL_1217:
        if (((v249[v668 / 8] >> (v668 & 7)) & 1) == 0)
        {
          goto LABEL_1219;
        }

        goto LABEL_1218;
      case 0x3Du:
        v459 = v211 + 3;
        v33[9] = (v211 + 3);
        v460 = &v211[__rev16(*(v211 + 1))];
        v33[2] = v460;
        v461 = *v460;
        if ((v461 - 51) < 6)
        {
          v33[2] = (v460 + 1);
          v462 = *v460;
          v463 = (v462 - 51) & 1;
          *(v33 + 42) = v463;
          v464 = rep_min_0[v462 - 51];
          *(v33 + 59) = v464;
          if ((v462 - 57) >= 0xFFFFFFFE)
          {
            v465 = rep_max_0[v462 - 51];
          }

          else
          {
            v465 = 0x7FFFFFFF;
          }

          *(v33 + 58) = v465;
          goto LABEL_777;
        }

        if ((v461 - 57) >= 2)
        {
          v463 = 0;
          v33[29] = 0x100000001;
          v464 = 1;
          v465 = 1;
LABEL_778:
          v519 = *(a4 + 96);
          v520 = v33[1];
          v521 = 1;
          while (v520 < v519)
          {
            v522 = v520 + 1;
            v33[1] = (v520 + 1);
            v523 = *v520;
            if ((~v523 & 0xC0) != 0)
            {
              ++v520;
            }

            else
            {
              v524 = utf8_table4[v523 & 0x3F];
              v525 = 6 * v524;
              v523 = (utf8_table3[utf8_table4[v523 & 0x3F]] & v523) << (6 * v524);
              v526 = v524 + 1;
              v527 = v525 - 6;
              do
              {
                v520 = v522 + 1;
                v33[1] = (v522 + 1);
                v523 |= (*v522 & 0x3F) << v527;
                --v526;
                v527 -= 6;
                ++v522;
              }

              while (v526 > 1);
            }

            if (!match_xclass(v523, v459))
            {
              break;
            }

            v42 = v521++ == v464;
            if (v42)
            {
              goto LABEL_788;
            }
          }

          goto LABEL_965;
        }

        v463 = v461 == 58;
        *(v33 + 42) = v463;
        v464 = __rev16(*(v460 + 1));
        *(v33 + 59) = v464;
        v518 = __rev16(*(v460 + 3));
        if (v518)
        {
          v465 = v518;
        }

        else
        {
          v465 = 0x7FFFFFFF;
        }

        *(v33 + 58) = v465;
        v33[2] = (v460 + 5);
LABEL_777:
        if (v464 >= 1)
        {
          goto LABEL_778;
        }

LABEL_788:
        if (v464 == v465)
        {
          continue;
        }

        if (!v463)
        {
          v675 = v33[1];
          v33[11] = v675;
          if (v464 >= v465)
          {
            v10 = v761;
            v8 = v762;
            v12 = v763;
          }

          else
          {
            v676 = *(a4 + 96);
            do
            {
              if (v675 >= v676)
              {
                break;
              }

              v677 = *v675;
              if ((~v677 & 0xC0) != 0)
              {
                v683 = 1;
              }

              else
              {
                v678 = utf8_table4[v677 & 0x3F];
                v677 = (utf8_table3[v678] & v677) << (6 * v678);
                v679 = (v675 + 1);
                v680 = v678 <= 1 ? 1 : v678;
                v681 = 6 * v678 - 6;
                do
                {
                  v682 = *v679++;
                  v677 |= (v682 & 0x3F) << v681;
                  v681 -= 6;
                  --v680;
                }

                while (v680);
                v683 = v678 + 1;
              }

              if (!match_xclass(v677, v459))
              {
                break;
              }

              v675 += v683;
              v33[1] = v675;
              ++v464;
            }

            while (v464 != v465);
            v10 = v761;
            v8 = v762;
            v12 = v763;
          }

LABEL_64:
          *&v768 = 0;
          v49 = a1;
          v50 = 27;
          goto LABEL_1405;
        }

        *(v33 + 56) = v464;
        v10 = v761;
        v8 = v762;
        v12 = v763;
LABEL_272:
        *&v768 = 0;
        v193 = pcre_getMem(a1, 26, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v194 = v772;
LABEL_937:
        if (v102)
        {
          goto LABEL_1406;
        }

LABEL_1412:
        v591 = *v194;
LABEL_1413:
        v772 = v591;
        pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
        v174 = v772;
        if (v772)
        {
LABEL_1414:
          v13 = 4294967290;
          goto LABEL_1415;
        }

LABEL_1442:
        v13 = 4294967290;
LABEL_1443:
        v754 = *MEMORY[0x1E69E9840];
        return v13;
      case 0x3Eu:
        v456 = (v211[1] << 9) | (2 * v211[2]);
        *(v33 + 61) = v456;
        v33[2] = (v211 + 3);
        if (v456 >= *(v33 + 6) || (v457 = (*(a4 + 16) + 4 * v456), (*v457 & 0x80000000) != 0))
        {
          v458 = *(a4 + 96) - *(v33 + 2) + 1;
        }

        else
        {
          v458 = v457[1] - *v457;
        }

        *(v33 + 57) = v458;
        v467 = v211[3];
        if ((v467 - 51) >= 6)
        {
          if ((v467 - 57) >= 2)
          {
            v543 = v33[1];
            if (!match_ref_0(v456, v543, v458, a4, v33[4]))
            {
              goto LABEL_992;
            }

            v33[1] = &v543[v458];
            continue;
          }

          v757 = v467 == 58;
          *(v33 + 42) = v757;
          v469 = __rev16(*(v211 + 2));
          *(v33 + 59) = v469;
          v514 = __rev16(*(v211 + 3));
          if (v514)
          {
            v470 = v514;
          }

          else
          {
            v470 = 0x7FFFFFFF;
          }

          *(v33 + 58) = v470;
          v33[2] = (v211 + 8);
        }

        else
        {
          v33[2] = (v211 + 4);
          v468 = v211[3];
          v757 = (v468 - 51) & 1;
          *(v33 + 42) = v757;
          v469 = rep_min_0[v468 - 51];
          *(v33 + 59) = v469;
          v470 = rep_max_0[v468 - 51];
          if ((v468 - 57) < 0xFFFFFFFE)
          {
            v470 = 0x7FFFFFFF;
          }

          *(v33 + 58) = v470;
        }

        if (v458)
        {
          v758 = v470;
          if (v469 >= 1)
          {
            v515 = v33[4];
            v516 = v33[1];
            v517 = v469;
            while (match_ref_0(v456, v516, v458, a4, v515))
            {
              v516 += v458;
              v33[1] = v516;
              if (!--v517)
              {
                goto LABEL_770;
              }
            }

LABEL_965:
            v772 = *v33;
            pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
            v579 = v772;
            if (v772)
            {
              goto LABEL_971;
            }

            goto LABEL_1441;
          }

LABEL_770:
          if (v758 != v469)
          {
            if (v757)
            {
              *(v33 + 56) = v469;
              v12 = v763;
LABEL_168:
              *&v768 = 0;
              v124 = a1;
              v125 = 20;
              goto LABEL_936;
            }

            v127 = v33[1];
            v33[11] = v127;
            v686 = v758 - v469;
            if (v758 <= v469)
            {
              v10 = v761;
              v8 = v762;
              v12 = v763;
            }

            else
            {
              v687 = v33[4];
              v126 = v127;
              do
              {
                if (!match_ref_0(v456, v126, v458, a4, v687))
                {
                  break;
                }

                v126 += v458;
                v33[1] = v126;
                --v686;
              }

              while (v686);
              v10 = v761;
              v8 = v762;
              v12 = v763;
LABEL_171:
              if (v126 < v127)
              {
                goto LABEL_904;
              }
            }

            *&v768 = 0;
            v49 = a1;
            v50 = 21;
            goto LABEL_1405;
          }
        }

        continue;
      case 0x3Fu:
        v609 = (*(a4 + 80) + __rev16(*(v211 + 1)));
        v33[7] = v609;
        v610 = *v609;
        *(v33 + 30) = v610 - 80;
        if (v610 >= 0xB5)
        {
          *(v33 + 30) = __rev16(*(v609 + 2));
        }

        v33[14] = *(a4 + 136);
        *(a4 + 136) = v33 + 14;
        v33[2] = (v211 + 3);
        v33[16] = (v211 + 3);
        v611 = *(a4 + 24);
        *(v33 + 38) = v611;
        if (v611 > 30)
        {
          v612 = heap_Calloc(*(*a1 + 8), 1, 4 * v611);
          v649 = v772;
          v772[18] = v612;
          v10 = v761;
          v8 = v762;
          if (!v612)
          {
            v772 = *v649;
            pcre_freeMem(a1, &v773, v643, v644, v645, v646, v647, v648, v756);
            v174 = v772;
            v13 = 4294967290;
            if (v772)
            {
              goto LABEL_1415;
            }

            goto LABEL_1443;
          }

          v611 = *(v649 + 38);
        }

        else
        {
          v612 = v33 + 268;
          v33[18] = v33 + 268;
          v10 = v761;
          v8 = v762;
        }

        memcpy(v612, *(a4 + 16), 4 * v611);
        v650 = v772;
        v772[17] = *(a4 + 104);
        *(a4 + 104) = v650[1];
        goto LABEL_308;
      case 0x40u:
        if (!a6)
        {
          goto LABEL_388;
        }

        v770 = 0u;
        v771 = 0u;
        v768 = 0u;
        v769 = 0u;
        LODWORD(v768) = 1;
        v267 = v33[2];
        DWORD1(v768) = *(v267 + 1);
        v268 = *(a4 + 88);
        *(&v768 + 1) = *(a4 + 16);
        *&v769 = v268;
        *(&v769 + 1) = vmovn_s64(vsubq_s64(*(a4 + 96), vdupq_n_s64(v268)));
        LODWORD(v770) = *(v33 + 2) - v268;
        DWORD2(v771) = __rev16(*(v267 + 2));
        HIDWORD(v771) = __rev16(*(v267 + 4));
        v269 = *(a4 + 124);
        DWORD1(v770) = *(v33 + 6) / 2;
        DWORD2(v770) = v269;
        *&v771 = *(a4 + 144);
        v270 = a6(&v768);
        if (v270 >= 1)
        {
          v772 = *v772;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v13 = 0;
          goto LABEL_1131;
        }

        v13 = v270;
        if ((v270 & 0x80000000) != 0)
        {
          v772 = *v772;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
LABEL_1131:
          v576 = v772;
          if (!v772)
          {
            goto LABEL_1443;
          }

          goto LABEL_991;
        }

        v33 = v772;
        v211 = v772[2];
LABEL_388:
        v33[2] = (v211 + 6);
        break;
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
          goto LABEL_741;
        }

        if (v231 - 69 < 4 || v231 == 74)
        {
          *(a4 + 112) = v33[1];
          *(a4 + 120) = *(v33 + 6);
          v772 = *v33;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v576 = v772;
          v13 = 1;
          if (!v772)
          {
            goto LABEL_1443;
          }

LABEL_991:
          *(v576 + 102) = v13;
LABEL_932:
          *(a4 + 152) = v576;
          v10 = v761;
          v8 = v762;
          goto LABEL_1417;
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
        if (v232 < 1)
        {
          goto LABEL_741;
        }

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

        v503 = *(a4 + 136);
        if (v503 && *(v503 + 8) == *(v33 + 60))
        {
          *(a4 + 136) = *v503;
          *(a4 + 104) = *(v503 + 24);
          memcpy(*(a4 + 16), *(v503 + 32), 4 * *(v503 + 40));
          v504 = v772;
          v772[2] = *(v503 + 16);
          v504[4] = v504[22];
        }

        else
        {
LABEL_741:
          v33[4] = v33[22];
          v505 = *v211;
          if (v505 != 66 && v33[1] != v230)
          {
            if (v505 == 68)
            {
              *&v768 = 0;
              v590 = pcre_getMem(a1, 16, &v768, a4, a5, a6, a7, a8);
              v102 = v768;
              v178 = v772;
              v10 = v761;
              v8 = v762;
              if (v768 && (v590 & 0x80000000) == 0)
              {
LABEL_257:
                v105 = v178[1];
                v102[1] = v105;
                v102[2] = v178[2] + 3;
                *(v102 + 6) = *(v178 + 6);
                v176 = v178[4];
                v102[4] = v176;
                v175 = v178[5];
                v102[5] = v175;
                *(v102 + 12) = 0;
                *v102 = v178;
                v772 = v102;
                goto LABEL_1408;
              }

LABEL_1031:
              v591 = *v178;
              goto LABEL_1413;
            }

            *&v768 = 0;
            v128 = pcre_getMem(a1, 18, &v768, a4, a5, a6, a7, a8);
            v102 = v768;
            v103 = v772;
            v10 = v761;
            v8 = v762;
            if (!v768)
            {
              goto LABEL_1202;
            }

            goto LABEL_176;
          }

LABEL_753:
          v33[2] = (v211 + 3);
        }

        continue;
      case 0x45u:
      case 0x47u:
        v10 = v761;
        v8 = v762;
        goto LABEL_299;
      case 0x46u:
      case 0x48u:
        v10 = v761;
        v8 = v762;
        goto LABEL_290;
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
            while (1)
            {
              v312 = v311 - 1;
              v33[1] = (v311 - 1);
              if ((v311 - 1) < v310)
              {
                break;
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
                v312 = v313 + 1;
              }

              ++v309;
              v311 = v312;
              if (v309 == v308)
              {
                goto LABEL_753;
              }
            }

LABEL_930:
            v772 = *v33;
            pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
            v576 = v772;
            if (!v772)
            {
              goto LABEL_1441;
            }

            v13 = 0;
            *(v772 + 102) = 0;
            goto LABEL_932;
          }
        }

        else
        {
          v508 = v33[1] - (v307 | (v306 << 8));
          v33[1] = v508;
          if (v508 < *(a4 + 88))
          {
            goto LABEL_930;
          }
        }

        goto LABEL_753;
      case 0x4Au:
        v606 = v33[1];
        v33[12] = v211;
        v33[13] = v606;
        v10 = v761;
        v8 = v762;
        goto LABEL_279;
      case 0x4Bu:
        if (v211[3] == 76)
        {
          v613 = (v211[4] << 9) | (2 * v211[5]);
          *(v33 + 61) = v613;
          if (v613 == 131070)
          {
            v614 = *(a4 + 136) != 0;
          }

          else
          {
            v614 = 0;
            if (v613 < *(v33 + 6))
            {
              v614 = *(*(a4 + 16) + 4 * v613) >= 0;
            }
          }

          *(v33 + 41) = v614;
          *&v768 = 0;
          v664 = pcre_getMem(a1, 3, &v768, a4, a5, a6, a7, a8);
          v102 = v768;
          v103 = v772;
          v10 = v761;
          v8 = v762;
          if (v768 && (v664 & 0x80000000) == 0)
          {
            v105 = v772[1];
            *(v768 + 8) = v105;
            v665 = v103[2];
            v666 = 6;
            if (!*(v103 + 41))
            {
              v666 = __rev16(*(v665 + 1)) + 3;
            }

            v104 = 0;
            v102[2] = v665 + v666;
            *(v102 + 6) = *(v103 + 6);
            v176 = v103[4];
            v102[4] = v176;
            v175 = v103[5];
            v102[5] = v175;
            *(v102 + 12) = 2;
            goto LABEL_297;
          }

          goto LABEL_1202;
        }

        *&v768 = 0;
        v651 = pcre_getMem(a1, 4, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v616 = v772;
        if (!v768 || v651 < 0)
        {
LABEL_1142:
          v772 = *v616;
          pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
          v174 = v772;
          v10 = v761;
          v8 = v762;
          if (v772)
          {
            goto LABEL_1414;
          }

          goto LABEL_1442;
        }

        v175 = 0;
        v104 = 0;
        v105 = v772[1];
        *(v768 + 8) = v105;
        v102[2] = v616[2] + 3;
        *(v102 + 6) = *(v616 + 6);
        v176 = v616[4];
        *(v102 + 12) = 3;
        *v102 = v616;
        v102[4] = v176;
        v102[5] = 0;
LABEL_1141:
        v772 = v102;
        v10 = v761;
        v8 = v762;
        goto LABEL_1409;
      case 0x4Cu:
      case 0x4Fu:
        goto LABEL_753;
      case 0x4Du:
        v33[10] = (v211 + 1);
        *&v768 = 0;
        v615 = pcre_getMem(a1, 14, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v616 = v772;
        if (!v768 || v615 < 0)
        {
          goto LABEL_1142;
        }

        v104 = 0;
        v105 = v772[1];
        *(v768 + 8) = v105;
        v102[2] = v616[10];
        *(v102 + 6) = *(v616 + 6);
        v176 = v616[4];
        v102[4] = v176;
        v175 = v616[5];
        *(v102 + 12) = 2;
        v102[5] = v175;
        *v102 = v616;
        goto LABEL_1141;
      case 0x4Eu:
        v607 = v211 + 1;
        v33[10] = (v211 + 1);
        do
        {
          v607 += __rev16(*(v607 + 1));
          v33[10] = v607;
        }

        while (*v607 == 65);
        *&v768 = 0;
        v608 = pcre_getMem(a1, 15, &v768, a4, a5, a6, a7, a8);
        v102 = v768;
        v103 = v772;
        v10 = v761;
        v8 = v762;
        if (!v768 || v608 < 0)
        {
          goto LABEL_1202;
        }

        v104 = 0;
        v105 = v772[1];
        *(v768 + 8) = v105;
        v203 = v103[10];
        goto LABEL_295;
      case 0x50u:
        goto LABEL_942;
      default:
        v772 = *v33;
        pcre_freeMem(a1, &v773, a3, a4, a5, a6, a7, a8, v756);
        v576 = v772;
        v13 = 4294967291;
        if (!v772)
        {
          goto LABEL_1443;
        }

        goto LABEL_991;
    }
  }
}

void std::vector<std::array<unsigned long,4ul>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void _Gryphon_ReportSubstitution(int a1, void *a2, char *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a1;
  std::string::basic_string[abi:ne200100](__p, a2, a1);
  Censor::global_plaintext(&v15, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v6 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v15;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    *__p = 136315394;
    *&__p[4] = v8;
    *&__p[12] = 2080;
    *&__p[14] = a3;
  }

  v9 = &v15;
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  std::string::basic_string[abi:ne200100](&__dst, a2, v5);
  std::string::basic_string[abi:ne200100]<0>(&v11, a3);
  *__p = __dst;
  *&__p[16] = v14;
  *v17 = v11;
  v18 = v12;
  if (GryphonDebugging::latest_pool_ptr)
  {
    SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&__dst, GryphonDebugging::latest_pool_ptr);
    if (__dst)
    {
      Observable::emit(__dst, "tts.feature.replacement", __p);
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst + 1));
    }
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1C3005274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::pair<std::string,std::string>::~pair(&a27);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t *FastRewriter::apply_offsets_update(uint64_t *result, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *a2;
  if (*a2 != v3)
  {
    v5 = *result;
    v6 = (result[1] - *result) >> 5;
    do
    {
      v7 = *v4;
      if ((v7 & 0x80000000) == 0 && v6 > v7)
      {
        v8 = (v5 + 32 * v7);
        v9 = *(v4 + 1);
        v10 = vaddw_high_s32(v8[1], v9);
        *v8 = vaddw_s32(*v8, *v9.i8);
        v8[1] = v10;
        v11 = v9.i32[3] - (v9.i32[2] + v9.i32[1]) + v9.i32[0];
        v12 = v6 - 1 == v7 || v11 == 0;
        v13 = (v7 + 1);
        if (!v12 && v6 > v13)
        {
          v15 = v7 + 1;
          v16 = vdupq_n_s64(v11);
          do
          {
            *(v5 + 32 * v13 + 16) = vaddq_s64(*(v5 + 32 * v13 + 16), v16);
            v13 = ++v15;
          }

          while (v6 > v15);
        }
      }

      v4 += 5;
    }

    while (v4 != v3);
  }

  return result;
}

void FastRewriter::apply_replace_update(unsigned int **a1, uint64_t **a2, void *a3, int **a4)
{
  v4 = *a1;
  v52 = a1[1];
  if (*a1 == v52)
  {
    return;
  }

  v5 = a4;
  v7 = a2;
  do
  {
    v8 = *v7;
    v9 = **v7;
    if ((*v7)[1] == v9)
    {
      goto LABEL_55;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v10)
      {
        if (v12 >= (a3[1] - *a3) >> 5)
        {
          goto LABEL_62;
        }

        *(*a3 + 32 * v12 + 16) = vaddq_s64(*(*a3 + 32 * v12 + 16), vdupq_n_s64(v11));
LABEL_8:
        v10 = 1;
        goto LABEL_14;
      }

      if (*v4 < *(v9 + 80 * v12))
      {
        if (v12)
        {
          if (v12 - 1 >= (a3[1] - *a3) >> 5)
          {
LABEL_62:
            std::vector<int>::__throw_out_of_range[abi:ne200100]();
          }

          v13 = *(*a3 + 32 * (v12 - 1) + 24) - *(*a3 + 32 * (v12 - 1) + 8);
        }

        else
        {
          v13 = 0;
        }

        std::vector<FRReplaceInst>::insert(v8, v9 + 80 * v12, v4);
        v14 = *(v4 + 31);
        if (v14 < 0)
        {
          v14 = *(v4 + 2);
        }

        v15 = *a3;
        v16 = *v4;
        v17 = *(v4 + 55);
        if (v17 < 0)
        {
          v17 = *(v4 + 5);
        }

        v18 = v14 + v16;
        v19 = (v16 + v13);
        v20 = v17 + v19;
        v21 = &v15[32 * v12];
        v22 = a3[1];
        v23 = a3[2];
        if (v22 >= v23)
        {
          v26 = ((v22 - v15) >> 5) + 1;
          if (v26 >> 59)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v27 = v23 - v15;
          if (v27 >> 4 > v26)
          {
            v26 = v27 >> 4;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFE0)
          {
            v28 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(v28);
          }

          v29 = (32 * v12);
          v30 = 32 * v12;
          if (!v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<unsigned long,4ul>>>(1uLL);
          }

          v32 = &v15[32 * v12];
          *v29 = v16;
          *(32 * v12 + 8) = v18;
          *(32 * v12 + 0x10) = v19;
          *(32 * v12 + 0x18) = v20;
          v33 = v30 + 32;
          memcpy((v30 + 32), v21, a3[1] - v32);
          v34 = *a3;
          v55 = (v33 + a3[1] - v32);
          a3[1] = v21;
          v35 = v29 - (v32 - v34);
          memcpy(v35, v34, v32 - v34);
          v36 = *a3;
          *a3 = v35;
          *(a3 + 1) = v55;
          v7 = a2;
          v5 = a4;
          if (v36)
          {
            operator delete(v36);
          }
        }

        else if (v21 == v22)
        {
          *v22 = v16;
          v22[1] = v18;
          v22[2] = v19;
          v22[3] = v20;
          a3[1] = v22 + 4;
        }

        else
        {
          if (v22 < 0x20)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v22 + 4;
            v25 = *(v22 - 1);
            *v22 = *(v22 - 2);
            *(v22 + 1) = v25;
          }

          a3[1] = v24;
          if (v22 != v21 + 4)
          {
            v31 = v20;
            memmove(v21 + 4, v21, v22 - (v21 + 4));
            v20 = v31;
          }

          *v21 = v16;
          v21[1] = v18;
          v21[2] = v19;
          v21[3] = v20;
          v5 = a4;
        }

        v37 = *(v4 + 55);
        if (v37 < 0)
        {
          v37 = *(v4 + 5);
        }

        v38 = *(v4 + 31);
        if (v38 < 0)
        {
          v38 = *(v4 + 2);
        }

        v11 = v37 - v38;
        v39 = *v5;
        v40 = v5[1];
        while (v39 != v40)
        {
          v41 = *v39;
          if (*v39 >= 0)
          {
            v42 = v41;
          }

          else
          {
            v42 = -v41;
          }

          if (v12 <= v42)
          {
            *v39 = ((v41 >> 31) | 1) + v41;
          }

          v39 += 5;
        }

        goto LABEL_8;
      }

      v10 = 0;
LABEL_14:
      ++v12;
      v8 = *v7;
      v9 = **v7;
    }

    while (v12 < 0xCCCCCCCCCCCCCCCDLL * (((*v7)[1] - v9) >> 4));
    if ((v10 & 1) == 0)
    {
LABEL_55:
      std::vector<FRReplaceInst>::push_back[abi:ne200100](v8, v4);
      v43 = a3[1];
      v44 = *(v43 - 8);
      v45 = *(v43 - 24);
      v46 = *v4;
      *&v56 = v46;
      v47 = *(v4 + 31);
      if (v47 < 0)
      {
        v47 = *(v4 + 2);
      }

      v48 = v44 - v45;
      v49 = v47 + v46;
      v50 = (v46 + v48);
      *(&v56 + 1) = v49;
      v57 = v50;
      v51 = *(v4 + 55);
      if (v51 < 0)
      {
        v51 = *(v4 + 5);
      }

      v58 = v51 + v50;
      std::vector<std::array<unsigned long,4ul>>::push_back[abi:ne200100](a3, &v56);
    }

    v4 += 20;
  }

  while (v4 != v52);
}

void sub_1C300586C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<FRReplaceInst>>::destroy[abi:ne200100]<FRReplaceInst,0>(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t WaveformChangeModule::set_volume_from_markers(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  if (a2 != a3)
  {
    while (*a2 != 1)
    {
      if (*a2 == 6)
      {
        *(result + 276) = *(result + 272);
        v3 = a2[1] / 100.0;
LABEL_6:
        *(result + 272) = v3;
      }

      a2 += 14;
      if (a2 == a3)
      {
        return result;
      }
    }

    *(result + 276) = *(result + 272);
    v3 = *(result + 284);
    goto LABEL_6;
  }

  return result;
}

void kaldi::KaldiAssertFailure_(kaldi *this, char *a2, const char *a3, const char *a4, const char *a5)
{
  v9 = fst::cerr(this);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "KALDI_ASSERT: at ", 17);
  if (kaldi::g_program_name)
  {
    v11 = kaldi::g_program_name;
  }

  else
  {
    v11 = "";
  }

  v12 = strlen(v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
  v14 = strlen(this);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, this, v14);
  v30.__r_.__value_.__s.__data_[0] = 58;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v30, 1);
  v17 = strrchr(a2, 47);
  if (v17)
  {
    do
    {
      v18 = v17;
      if (v17 <= a2)
      {
        break;
      }

      --v17;
    }

    while (*(v18 - 1) != 47);
  }

  else
  {
    v18 = a2;
  }

  v19 = strlen(v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v30.__r_.__value_.__s.__data_[0] = 58;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v30, 1);
  v22 = MEMORY[0x1C692A960](v21, a3);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", failed: ", 10);
  v24 = strlen(a4);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, a4, v24);
  v30.__r_.__value_.__s.__data_[0] = 10;
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, &v30, 1);
  v27 = fst::cerr(v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Stack trace is:\n", 16);
  kaldi::KaldiGetStackTrace(&v30);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v28, &v30);
  std::string::~string(&v30);
  fst::cerr(v29);
  std::ostream::flush();
  abort();
}

void sub_1C3005AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void NeuralPromptModule::process_prosodic_markers(NeuralPromptModule *this, const PhoneFeature *a2, const PhoneFeature *a3)
{
  if (a2 != a3)
  {
    v15[2] = v6;
    v15[3] = v5;
    v15[8] = v3;
    v15[9] = v4;
    v8 = a2;
    v10 = vdup_n_s32(0x42C80000u);
    do
    {
      v11 = *v8;
      if (*v8 > 4)
      {
        if (v11 == 5)
        {
          *(this + 84) = *(v8 + 1);
        }

        else if (v11 == 6)
        {
          *(this + 86) = *(v8 + 1);
        }
      }

      else if (v11 == 1)
      {
        SharedObjectPool::get<SynthesizerConfig>(v15, *(this + 21));
        v13 = v15[0];
        v12 = v15[1];
        v14.i32[0] = *(v15[0] + 4);
        v14.i32[1] = *(v15[0] + 12);
        *(this + 42) = vmul_f32(v14, v10);
        *(this + 86) = *(v13 + 8) * 100.0;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }
      }

      else if (v11 == 4)
      {
        *(this + 85) = *(v8 + 1);
      }

      v8 = (v8 + 56);
    }

    while (v8 != a3);
  }
}

uint64_t NeuralThermalFallbackConnection::should_consume_data(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  {
    v5 = *(*v4 + 8);
    v6 = *(*v4 + 16);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v5 && (*v5 & 1) == 0)
    {
      v7 = *(a1 + 84);
      if (!v6)
      {
        return v7 & 1;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
  }

  should_fallback = NeuralThermalFallbackConnection::should_fallback(a1);
  *(a1 + 84) = should_fallback;
  if (!should_fallback)
  {
    v7 = 0;
    if (!v6)
    {
      return v7 & 1;
    }

LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    return v7 & 1;
  }

  if (Diagnostics_GetLogObject(void)::onceToken != -1)
  {
    dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
  }

  v9 = Diagnostics_GetLogObject(void)::__profile_log_default;
  if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1C2F95000, v9, OS_LOG_TYPE_DEFAULT, "Natural/Neural fallback pipeline will be used due to thermal condition.", &v12, 2u);
  }

  Diagnostics::log(5, "Natural/Neural fallback pipeline will be used due to thermal condition.", v10);
  v14 = 5;
  SharedObjectPool::get_if<TTSSynthesizerEventBusInternal>(&v12, *(a1 + 56));
  if (v12)
  {
    Observable::emit(v12, TTSSynthesizerEvent::NeuralSynthesisFallback, &v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v7 = 1;
  if (v6)
  {
    goto LABEL_21;
  }

  return v7 & 1;
}

void sub_1C3005D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void HydraAdapterModule::process_data(uint64_t *a1, uint64_t *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  {
    v7 = *(*v5 + 8);
    v6 = *(*v5 + 16);
    v16 = v7;
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v7 + 119) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(v7 + 96), *(v7 + 104));
    }

    else
    {
      v15 = *(v7 + 96);
    }

    v9 = *a2;
    {
      v11 = *(*v10 + 8);
      v12 = *(*v10 + 16);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::operator=(&v15, v11);
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }

    SharedObjectPool::get<TrackSubstitutions>(&v14, a1[21]);
    TrackSubstitutions::reset_text(v14);
  }

  v8 = a2[1];
  v18 = v4;
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 72))(a1, &v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1C30070A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33)
{
  if (*(v34 - 169) < 0)
  {
    operator delete(*(v34 - 192));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (*(v34 - 201) < 0)
  {
    operator delete(*(v34 - 224));
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  _Unwind_Resume(exception_object);
}

void SharedObjectPool::get<TrackSubstitutions>(void *a1, uint64_t a2)
{
  std::recursive_mutex::lock((a2 + 56));
  {
    operator new();
  }

  v5 = *(*v4 + 16);
  *a1 = *(*v4 + 8);
  a1[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::recursive_mutex::unlock((a2 + 56));
}

void TrackSubstitutions::reset_text(void *a1)
{
  v2 = a1 + 1;
  std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(a1[1]);
  *a1 = v2;
  a1[2] = 0;
  *v2 = 0;
  operator new();
}

void *std::__tree<TrackSubstitutions::Chunk>::__find_equal<TrackSubstitutions::Chunk>(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  if (v6)
  {
    do
    {
      while (1)
      {
        v7 = v5;
        v8 = v5[4];
        if (v8 <= a3 && (v8 != a3 || v7[5] <= a4))
        {
          break;
        }

        v5 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_12;
        }
      }

      if (v8 >= a3 && v7[5] >= a4)
      {
        break;
      }

      result = v7 + 1;
      v5 = v7[1];
    }

    while (v5);
  }

  else
  {
    v7 = result;
  }

LABEL_12:
  *a2 = v7;
  return result;
}

void SoundStormP2ABaseInference::get_outputs(void *a1, void *a2)
{
  v4 = a1[1];
  std::string::basic_string[abi:ne200100]<0>(__p, "target");
  (*(*v4 + 32))(&v16, v4, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  InferenceEngine::DataTensor::get_3d_array<float>(v16, v10);
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v11, *v10[0], v10[0][1], 0xAAAAAAAAAAAAAAABLL * ((v10[0][1] - *v10[0]) >> 3));
  v18 = v10;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v18);
  v5 = *a2;
  v6 = (*a2 + 8);
  if (v6 != &v11)
  {
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v6, v11, v12, 0xAAAAAAAAAAAAAAABLL * (v12 - v11));
    v5 = *a2;
  }

  v7 = a2[1];
  v8 = v5;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 40))(a1, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10[0] = &v11;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](v10);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1C3007838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  a11 = &a14;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a11);
  v24 = *(v22 - 48);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

const void **InferenceEngine::BaseInferenceController::get_output@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  result = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<InferenceEngine::DataTensor>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 24), a2);
  v5 = result[6];
  *a3 = result[5];
  a3[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SoundStormStreamingModule::process_data(std::shared_ptr<Agglomerate>)::$_0,std::allocator<SoundStormStreamingModule::process_data(std::shared_ptr<Agglomerate>)::$_0>,int ()(std::shared_ptr<AcousticFeature>,BOOL)>::operator()(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v11 = v3;
  if (*(*(a1 + 8) + 160) == 1)
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v5 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C2F95000, v5, OS_LOG_TYPE_DEFAULT, "SoundStorm streaming inference cancelled.", buf, 2u);
    }

    Diagnostics::log(5, "SoundStorm streaming inference cancelled.", v6);
    v7 = 1;
    if (v4)
    {
LABEL_7:
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  else
  {
    if ((*a3 & 1) == 0)
    {
      v10 = **(a1 + 16);
      if (v10)
      {
        *buf = 2;
        Observable::emit(v10, TTSSynthesizerEvent::SynthesisQualityIssue, buf);
      }
    }

    if (*(v11 + 16) != *(v11 + 8))
    {
      operator new();
    }

    v7 = 0;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1C30081EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  _Unwind_Resume(exception_object);
}

void Agglomerate::set<std::shared_ptr<AcousticFeature>>(uint64_t a1, uint64_t *a2)
{
  if (!v3)
  {
    operator new();
  }

  v4 = *a2;
  v5 = a2[1];
  v7 = *a2;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v4 = v7;
  }

  v6 = *(v3 + 16);
  *(v3 + 8) = v4;
  *(v3 + 16) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

__n128 std::accumulate[abi:ne200100]<std::__wrap_iter<int const*>,std::string,std::string UTFString::join<std::string,int>(std::vector<int> const&,std::string const&)::{lambda(std::string,int)#1}>(uint64_t a1, int *a2, int *a3, uint64_t a4, const void **a5)
{
  if (a2 != a3)
  {
    v9 = a2;
    while (1)
    {
      if (*(a4 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
      }

      else
      {
        __p = *a4;
      }

      std::to_string(&v19, *v9);
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        break;
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
LABEL_20:
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        goto LABEL_22;
      }

      v17 = v19;
LABEL_22:
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = v17;
      *(&v17.__r_.__value_.__s + 23) = 0;
      v17.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v9 == a3)
      {
        goto LABEL_27;
      }
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p.__r_.__value_.__l.__data_, a5, &v18);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v19;
    }

    else
    {
      v11 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = v19.__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&v18, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

LABEL_27:
  result = *a4;
  *a1 = *a4;
  *(a1 + 16) = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  return result;
}

void sub_1C30085E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void PhonemeEncodingLegacy::silence(PhonemeEncodingLegacy *this@<X0>, void *a2@<X8>)
{
  PhonemeEncodingImpl::start_phoneme_representation(this);
  MEMORY[0x1C692A640](this + 8, "sil");
  PhonemeEncodingImpl::start_word(this);
  memset(v5, 0, sizeof(v5));
  std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(v5, *(this + 15), *(this + 16), 0xAAAAAAAAAAAAAAABLL * ((*(this + 16) - *(this + 15)) >> 3));
  v4 = v5[0];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(a2, *v4, v4[1], (v4[1] - *v4) >> 6);
  v6 = v5;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&v6);
}

void sub_1C30087EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 64;
        std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::vector<PhonemeRepresentation::Phoneme>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a4;
  }

  v5 = (a2 + 40);
  v6 = a4;
  do
  {
    v8 = v5 - 40;
    v7 = *(v5 - 5);
    *(v6 + 8) = *(v5 - 8);
    *v6 = v7;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    std::vector<PhonemeRepresentation::Phoneme>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(v6 + 16, *(v5 - 3), *(v5 - 2), 0xAAAAAAAAAAAAAAABLL * ((*(v5 - 2) - *(v5 - 3)) >> 3));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external((v6 + 40), *v5, *(v5 + 1));
    }

    else
    {
      v9 = *v5;
      *(v6 + 56) = *(v5 + 2);
      *(v6 + 40) = v9;
    }

    v6 += 64;
    v5 += 4;
  }

  while (v8 + 64 != a3);
  return v6;
}

void sub_1C3008AC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  while (v3 != v2)
  {
    v3 -= 64;
    std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t SoundStormInference::check_outputs(uint64_t a1, uint64_t *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(__p, "vq_mask_id");
  parameter_value = InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(*(v5 + 8), __p, 1024);
  v7 = *(v4 + 8);
  v8 = *(v4 + 16);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      for (i = *v7; i != v7[1]; ++i)
      {
        v11 = *i;
        if (v11 == parameter_value)
        {
          v9 = (v9 + 1);
        }

        else
        {
          v9 = v9;
        }
      }

      v7 += 3;
    }

    while (v7 != v8);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 1)
  {
    v18 = *(*a2 + 8);
    for (j = *(*a2 + 16); v18 != j; v18 += 3)
    {
      for (k = *v18; k != v18[1]; ++k)
      {
        v21 = *k;
      }
    }

    result = 1;
  }

  else
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v12 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 8);
      std::string::basic_string[abi:ne200100]<0>(__p, "vq_mask_id");
      v14 = InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(*(v13 + 8), __p, 1024);
      *buf = 67109376;
      v25 = v9;
      v26 = 1024;
      v27 = v14;
      _os_log_impl(&dword_1C2F95000, v12, OS_LOG_TYPE_ERROR, "Found %d appearances of invalid value %d", buf, 0xEu);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = *(a1 + 8);
    std::string::basic_string[abi:ne200100]<0>(__p, "vq_mask_id");
    v16 = InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(*(v15 + 8), __p, 1024);
    Diagnostics::log(3, "Found %d appearances of invalid value %d", v17, v9, v16);
    if (v29 < 0)
    {
      operator delete(__p[0]);
    }

    result = 0;
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C3008DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t InferenceEngine::MilInferenceModel::get_parameter_value_if<int>(uint64_t a1, const void **a2, uint64_t a3)
{
  v4 = (a1 + 48);
  if (*(a1 + 48) == 1 && *(a1 + 56) + 8 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(*(a1 + 56), a2))
  {
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](v4, a2);
    v8 = 0;
    nlohmann::detail::from_json<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,int,0>(v6, &v8);
    return v8;
  }

  return a3;
}

void std::vector<Prompt>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        std::allocator<Prompt>::destroy[abi:ne200100](v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<WordFeature>::__vdeallocate(uint64_t a1)
{
  v1 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v1; std::allocator_traits<std::allocator<WordFeature>>::destroy[abi:ne200100]<WordFeature,0>(i))
    {
      i -= 136;
    }

    *(a1 + 8) = v1;
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<PhonemeRepresentation::Syllable>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](void *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18 = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(v9);
    }

    v10 = 24 * v6;
    *(&v17 + 1) = 0;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *&v17 = 24 * v6 + 24;
    v11 = *(v2 + 8);
    v12 = (24 * v6 + *v2 - v11);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>(v2, *v2, v11, v12);
    v13 = *v2;
    *v2 = v12;
    v14 = *(v2 + 16);
    v15 = v17;
    *(v2 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v16[0] = v13;
    v16[1] = v13;
    result = std::__split_buffer<PhonemeRepresentation::Word>::~__split_buffer(v16);
    v5 = v15;
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = v3 + 3;
  }

  *(v2 + 8) = v5;
  return result;
}

void std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = (a1 + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhonemeRepresentation::Syllable>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C3009204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PhonemeRepresentation::Phoneme>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Phoneme*,PhonemeRepresentation::Phoneme*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhonemeRepresentation::Phoneme>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C300928C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*,PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<PhonemeRepresentation::Syllable>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Syllable*,PhonemeRepresentation::Syllable*>(v4, *v6, v6[1], (v6[1] - *v6) >> 6);
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

uint64_t std::vector<PhonemeRepresentation::Word>::__init_with_size[abi:ne200100]<PhonemeRepresentation::Word*,PhonemeRepresentation::Word*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PhonemeRepresentation::Word>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1C300940C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<PhonemeRepresentation::Word>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void PhonemeEncodingImpl::start_syllable(PhonemeEncodingImpl *this)
{
  PhonemeEncodingImpl::start_phoneme(this);
  v2 = (this + 48);
  if (*(this + 6) != *(this + 7))
  {
    v3 = (this + 32);
    v4 = *(this + 13);
    v5 = *(this + 14);
    if (v4 >= v5)
    {
      v9 = *(this + 12);
      v10 = (v4 - v9) >> 6;
      v11 = v10 + 1;
      if ((v10 + 1) >> 58)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v12 = v5 - v9;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      v25 = this + 96;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>>(v13);
      }

      v14 = v10 << 6;
      *(&v24 + 1) = 0;
      v15 = *v3;
      *(v14 + 8) = *(this + 10);
      *v14 = v15;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0;
      *(v14 + 16) = 0;
      *(v14 + 16) = *(this + 3);
      *(v14 + 32) = *(this + 8);
      *v2 = 0;
      *(this + 7) = 0;
      *(this + 8) = 0;
      v16 = *(this + 72);
      *(v14 + 56) = *(this + 11);
      *(v14 + 40) = v16;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 9) = 0;
      *&v24 = (v10 << 6) + 64;
      v17 = *(this + 12);
      v18 = *(this + 13);
      v19 = (v10 << 6) + v17 - v18;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*>(this + 96, v17, v18, v19);
      v20 = *(this + 12);
      *(this + 12) = v19;
      v21 = *(this + 14);
      v22 = v24;
      *(this + 104) = v24;
      *&v24 = v20;
      *(&v24 + 1) = v21;
      v23[0] = v20;
      v23[1] = v20;
      std::__split_buffer<PhonemeRepresentation::Syllable>::~__split_buffer(v23);
      v8 = v22;
    }

    else
    {
      v6 = *v3;
      *(v4 + 8) = *(this + 10);
      *v4 = v6;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      *(v4 + 16) = 0;
      *(v4 + 16) = *(this + 3);
      *(v4 + 32) = *(this + 8);
      *v2 = 0;
      *(this + 7) = 0;
      *(this + 8) = 0;
      v7 = *(this + 72);
      *(v4 + 56) = *(this + 11);
      *(v4 + 40) = v7;
      *(this + 10) = 0;
      *(this + 11) = 0;
      *(this + 9) = 0;
      v8 = v4 + 64;
    }

    *(this + 13) = v8;
    std::vector<std::string>::clear[abi:ne200100](this + 6);
  }

  *(this + 4) = 0;
  *(this + 10) = 0;
}

uint64_t PhonemeEncodingImpl::start_phoneme(uint64_t this)
{
  v1 = this;
  v27 = *MEMORY[0x1E69E9840];
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 16))
    {
      goto LABEL_24;
    }
  }

  else if (!*(this + 31))
  {
    goto LABEL_24;
  }

  v2 = (this + 8);
  if (*(this + 216) != 1 || (this = std::__tree<std::string>::__count_unique<std::string>(this + 144, (this + 8))) != 0 || (this = std::__tree<std::string>::__count_unique<std::string>(v1 + 168, (v1 + 8))) != 0 || (this = std::__tree<std::string>::__count_unique<std::string>(v1 + 192, (v1 + 8))) != 0)
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    if (v3 >= v4)
    {
      v7 = *(v1 + 48);
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
      v9 = v8 + 1;
      if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v9;
      }

      v26 = v1 + 48;
      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>>(v11);
      }

      v12 = 24 * v8;
      *(&v25 + 1) = 0;
      v13 = *v2;
      *(v12 + 16) = *(v1 + 24);
      *v12 = v13;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *v2 = 0;
      *&v25 = 24 * v8 + 24;
      v14 = *(v1 + 48);
      v15 = *(v1 + 56);
      v16 = 24 * v8 + v14 - v15;
      std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(v1 + 48, v14, v15, v16);
      v17 = *(v1 + 48);
      *(v1 + 48) = v16;
      v18 = *(v1 + 64);
      v23 = v25;
      *(v1 + 56) = v25;
      *&v25 = v17;
      *(&v25 + 1) = v18;
      *&buf = v17;
      *(&buf + 1) = v17;
      this = std::__split_buffer<PhonemeRepresentation::Phoneme>::~__split_buffer(&buf);
      v6 = v23;
    }

    else
    {
      v5 = *v2;
      *(v3 + 16) = *(v1 + 24);
      *v3 = v5;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *v2 = 0;
      v6 = v3 + 24;
    }

    *(v1 + 56) = v6;
  }

  else
  {
    if (Diagnostics_GetLogObject(void)::onceToken != -1)
    {
      dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
    }

    v20 = Diagnostics_GetLogObject(void)::__profile_log_default;
    if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_ERROR))
    {
      v22 = v1 + 8;
      if (*(v1 + 31) < 0)
      {
        v22 = *v2;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v22;
    }

    if (*(v1 + 31) < 0)
    {
      v2 = *v2;
    }
  }

  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

LABEL_24:
  v19 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void PhonemeEncodingImpl::start_word(PhonemeEncodingImpl *this)
{
  PhonemeEncodingImpl::start_syllable(this);
  if (*(this + 12) != *(this + 13))
  {
    std::vector<PhonemeRepresentation::Word>::push_back[abi:ne200100](this + 15, this + 96);
    v3 = *(this + 12);
    for (i = *(this + 13); i != v3; std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](i))
    {
      i -= 64;
    }

    *(this + 13) = v3;
  }
}

void PhonemeEncodingImpl::start_phoneme_representation(PhonemeEncodingImpl *this)
{
  v2 = *(this + 15);
  v3 = *(this + 16);
  while (v3 != v2)
  {
    v3 -= 3;
    v4 = v3;
    std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  *(this + 16) = v2;

  PhonemeEncodingImpl::start_word(this);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<PhonemeRepresentation::Word>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Word>,PhonemeRepresentation::Word*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  if (a2 != a3)
  {
    v9[3] = v4;
    v9[4] = v5;
    v7 = a2;
    v8 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v8;
      a4[2] = v8[2];
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      v8 += 3;
      a4 += 3;
    }

    while (v8 != a3);
    do
    {
      v9[0] = v7;
      std::vector<PhonemeRepresentation::Syllable>::__destroy_vector::operator()[abi:ne200100](v9);
      v7 += 3;
    }

    while (v7 != a3);
  }
}

uint64_t std::__split_buffer<PhonemeRepresentation::Syllable>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PhonemeRepresentation::Syllable>,PhonemeRepresentation::Syllable*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *a4 = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    do
    {
      std::allocator<PhonemeRepresentation::Syllable>::destroy[abi:ne200100](v5);
      v5 += 64;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<PhonemeRepresentation::Phoneme>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PhonemeRepresentation::Phoneme>,PhonemeRepresentation::Phoneme*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void NormalizeNNImpl::generate_tokens(NormalizeNNImpl *this)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(*this + 64))(&v12);
  if (*v12 == v12[1])
  {
    *(this + 8) = 1;
  }

  else
  {
    kdebug_trace();
    v3 = *v12;
    v2 = v12[1];
    if (*v12 != v2)
    {
      v7 = v12[1];
      do
      {
        if ((*(v3 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v3 + 1))
          {
LABEL_6:
            (*(*this + 80))(&v10, this);
            if (*(v10 + 63) < 0)
            {
              std::string::__init_copy_ctor_external(&v9, *(v10 + 40), *(v10 + 48));
            }

            else
            {
              v9 = *(v10 + 40);
            }

            v4 = *(this + 27);
            if (!v4 || *(this + 27) + 8 != std::__tree<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::__map_value_compare<std::string,std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,kaldi::nnet1::Component::ComponentType>>>::find<std::string>(v4, &v9.__r_.__value_.__l.__data_))
            {
              if (*(v3 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&__str, *v3, *(v3 + 1));
              }

              else
              {
                v5 = *v3;
                __str.__r_.__value_.__r.__words[2] = *(v3 + 2);
                *&__str.__r_.__value_.__l.__data_ = v5;
              }

              v15 = 0;
              memset(v14, 0, sizeof(v14));
              operator new();
            }

            (*(*this + 152))(this);
            if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v9.__r_.__value_.__l.__data_);
            }

            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            goto LABEL_21;
          }
        }

        else if (*(v3 + 23))
        {
          goto LABEL_6;
        }

        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, (*(v3 + 4) - 16));
LABEL_21:
        v3 += 3;
      }

      while (v3 != v2);
    }

    kdebug_trace();
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C300ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, std::__shared_weak_count *a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v62 = *(v60 - 136);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  std::pair<std::string,std::shared_ptr<std::vector<FRReplaceInst>>>::~pair(&a26);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  if (a41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a41);
  }

  _Unwind_Resume(a1);
}

void MatchPromptImpl::generate_tokens(MatchPromptImpl *this)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(this + 8) & 1) == 0)
  {
    (*(**(this + 2) + 16))(&v16);
    if (v16)
    {
      if ((**(this + 16) || (*(**(this + 18) + 72))(*(this + 18))) && (**(this + 17) & 1) == 0)
      {
        v2 = v16;
        v4 = v2 + 8;
        if (v2 + 8 == v3)
        {
          v5 = 0;
        }

        else
        {
          v5 = *(v3 + 40) + 8;
        }

        if (*(this + 152) == 1 && (*(this + 153) & 1) == 0)
        {
          *(this + 153) = 1;
          v7 = *(*(v5 + 48) + 16);
          if (*(v7 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v25, *v7, *(v7 + 1));
          }

          else
          {
            v8 = *v7;
            v25.__r_.__value_.__r.__words[2] = *(v7 + 2);
            *&v25.__r_.__value_.__l.__data_ = v8;
          }

          std::string::basic_string[abi:ne200100]<0>(&v26, "");
          v28 = 0;
          v18[0] = 0;
          v19 = 0;
          v20 = 0;
          v21 = 0x7FFFFFFF;
          v23 = 0;
          v24 = 0;
          v22 = 0;
          if (MatchPromptImpl::match_generated_prompts(this, &v25, v18) & 1) != 0 || (MatchPromptImpl::match_prompts(this, &v25, v18))
          {
            MatchPromptImpl::log_prompt(v18, &v25);
            while (1)
            {
              (*(**(this + 2) + 16))(&__p);
              v9 = __p.__r_.__value_.__r.__words[0];
              if (__p.__r_.__value_.__r.__words[0])
              {
                (*(**(this + 2) + 32))(*(this + 2));
              }

              if (__p.__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
              }

              if (!v9)
              {
                operator new();
              }
            }
          }

          if (Diagnostics_GetLogObject(void)::onceToken != -1)
          {
            dispatch_once(&Diagnostics_GetLogObject(void)::onceToken, &__block_literal_global_9064);
          }

          v10 = Diagnostics_GetLogObject(void)::__profile_log_default;
          if (os_log_type_enabled(Diagnostics_GetLogObject(void)::__profile_log_default, OS_LOG_TYPE_DEBUG))
          {
            Censor::global_plaintext(&__p, &v25);
            v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315138;
            *&buf[4] = v11;
            _os_log_impl(&dword_1C2F95000, v10, OS_LOG_TYPE_DEBUG, "No prompts for whole input: %s", buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          Censor::global_plaintext(&__p, &v25);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          Diagnostics::log(7, "No prompts for whole input: %s", v12, p_p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v24) < 0)
          {
            operator delete(v22);
          }

          if (v27 < 0)
          {
            operator delete(v26);
          }

          if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v25.__r_.__value_.__l.__data_);
          }
        }

        if (v4 == v6)
        {
          v14 = *(*(v5 + 48) + 16);
        }

        else
        {
          v14 = (v5 + 24);
        }

        if (*(this + 104) != 1 || (MatchPromptImpl::match_region(this, 1, v14) & 1) == 0)
        {
          MatchPromptImpl::match_region(this, 0, v14);
        }
      }

      else
      {
        std::deque<std::shared_ptr<Agglomerate>>::push_back(this + 4, &v16);
        (*(**(this + 2) + 32))(*(this + 2));
      }
    }

    else
    {
      *(this + 8) = 1;
      *(this + 153) = 0;
    }

    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}