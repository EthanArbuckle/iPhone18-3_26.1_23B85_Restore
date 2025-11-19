uint64_t luaV_equalobj(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v3 = a3;
  v5 = a2[2];
  v6 = v5 & 0x3F;
  v7 = *(a3 + 2);
  if (v6 != (v7 & 0x3F))
  {
    if ((v5 & 0xF) == 3 && (v7 & 0xF) == 3)
    {
      v19 = 0;
      v20 = 0;
      if (v5 == 19)
      {
        v20 = *a2;
      }

      else
      {
        result = luaV_tointeger(a2, &v20);
        if (!result)
        {
          return result;
        }

        v7 = *(v3 + 2);
      }

      if (v7 == 19)
      {
        return v20 == *v3;
      }

      result = luaV_tointeger(v3, &v19);
      v3 = &v19;
      if (result)
      {
        return v20 == *v3;
      }

      return result;
    }

    return 0;
  }

  if ((v5 & 0x3Fu) <= 4)
  {
    if ((v5 & 0x3Fu) > 1)
    {
      if (v6 != 3)
      {
        return *a2 == *a3;
      }

      return *a2 == *a3;
    }

    if ((v5 & 0x3F) != 0)
    {
      return *a2 == *a3;
    }

    return 1;
  }

  if ((v5 & 0x3Fu) <= 0x12)
  {
    if (v6 != 5)
    {
      if (v6 != 7)
      {
        return *a2 == *a3;
      }

      v12 = *a3;
      if (*a2 == *a3)
      {
        return 1;
      }

      if (!a1)
      {
        return 0;
      }

      v13 = *(*a2 + 16);
      if (!v13 || (*(v13 + 10) & 0x20) != 0)
      {
        goto LABEL_31;
      }

      result = luaT_gettm(v13, 5, *(*(a1 + 24) + 288));
      if (!result)
      {
        v12 = *v3;
LABEL_31:
        result = *(*&v12 + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_40;
      }

LABEL_42:
      luaT_callTM(a1, result, a2, v3, *(a1 + 16), 1);
      v16 = *(a1 + 16);
      result = v16[2];
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        return *v16 != 0;
      }

      return 1;
    }

    v14 = *a3;
    if (*a2 == *a3)
    {
      return 1;
    }

    if (!a1)
    {
      return 0;
    }

    v15 = *(*a2 + 40);
    if (v15 && (*(v15 + 10) & 0x20) == 0)
    {
      result = luaT_gettm(v15, 5, *(*(a1 + 24) + 288));
      if (result)
      {
        goto LABEL_42;
      }

      v14 = *v3;
    }

    result = *(*&v14 + 40);
    if (!result)
    {
      return result;
    }

LABEL_40:
    if ((*(result + 10) & 0x20) == 0)
    {
      result = luaT_gettm(result, 5, *(*(a1 + 24) + 288));
      if (!result)
      {
        return result;
      }

      goto LABEL_42;
    }

    return 0;
  }

  if (v6 != 20)
  {
    return *a2 == *a3;
  }

  v17 = *a2;
  v18 = *a3;

  return luaS_eqlngstr(v17, *&v18);
}

uint64_t luaV_concat(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 16);
  do
  {
    v10 = a2;
    v11 = (v9 - 32);
    if ((*(v9 - 24) & 0xFu) - 3 > 1)
    {
LABEL_10:
      result = luaT_trybinTM(v8, (v9 - 32), (v9 - 16), (v9 - 32), 0x16u);
LABEL_11:
      v15 = 1;
      goto LABEL_36;
    }

    v12 = v9 - 16;
    v13 = *(v9 - 8);
    if ((v13 & 0xF) != 4)
    {
      if ((v13 & 0xF) != 3)
      {
        goto LABEL_10;
      }

      result = luaO_tostring(v8, v9 - 16, a3, a4, a5, a6, a7, a8);
      v13 = *(v9 - 8);
    }

    if (v13 == 68)
    {
      v14 = *(v9 - 24);
      if (!*(*(v9 - 16) + 11))
      {
        if ((*(v9 - 24) & 0xF) == 3)
        {
          result = luaO_tostring(v8, v9 - 32, a3, a4, a5, a6, a7, a8);
        }

        goto LABEL_11;
      }
    }

    else
    {
      v14 = *(v9 - 24);
    }

    if (v14 == 68 && !*(*v11 + 11))
    {
      *v11 = *v12;
      goto LABEL_11;
    }

    v16 = *v12;
    if (*(*v12 + 8) == 4)
    {
      v17 = *(v16 + 11);
    }

    else
    {
      v17 = *(v16 + 16);
    }

    v18 = 1;
    if (v10 >= 2)
    {
      do
      {
        if ((v11[2] & 0xF) != 4)
        {
          if ((v11[2] & 0xF) != 3)
          {
            goto LABEL_30;
          }

          luaO_tostring(v8, v11, a3, a4, a5, a6, a7, a8);
        }

        v19 = *v11;
        if (*(*v11 + 8) == 4)
        {
          v20 = *(v19 + 11);
        }

        else
        {
          v20 = *(v19 + 16);
        }

        if (v20 >= (v17 ^ 0x7FFFFFFFFFFFFFFFLL))
        {
          luaG_runerror(v8, "string length overflow");
        }

        v11 -= 4;
        v17 += v20;
        ++v18;
      }

      while (v10 != v18);
      LODWORD(v18) = v10;
    }

LABEL_30:
    v21 = luaZ_openspace(v8, (v8[3] + 176), v17);
    v22 = 0;
    v23 = v18 + 1;
    v24 = v9 - 16 * v18;
    do
    {
      v25 = *v24;
      if (*(*v24 + 8) == 4)
      {
        v26 = *(v25 + 11);
      }

      else
      {
        v26 = *(v25 + 16);
      }

      cstdlib_memcpy(&v21[v22], (v25 + 24), v26);
      v22 += v26;
      --v23;
      v24 += 16;
    }

    while (v23 > 1);
    v27 = v9 - 16 * v18;
    result = luaS_newlstr(v8, v21, v22);
    *v27 = result;
    *(v27 + 8) = *(result + 8) | 0x40;
    v15 = v18 - 1;
LABEL_36:
    a2 = v10 - v15;
    v9 = v8[2] - 16 * v15;
    v8[2] = v9;
  }

  while (v10 - v15 > 1);
  return result;
}

uint64_t luaV_objlen(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = a3[2] & 0x3F;
  if (v5 == 4)
  {
    v10 = *(*a3 + 11);
    goto LABEL_10;
  }

  if (v5 == 20)
  {
    v10 = *(*a3 + 16);
    goto LABEL_10;
  }

  v6 = result;
  if (v5 == 5)
  {
    v7 = *a3;
    v8 = *(*a3 + 40);
    if (!v8 || (*(v8 + 10) & 0x10) != 0 || (v9 = luaT_gettm(v8, 4, *(*(v6 + 24) + 280))) == 0)
    {
      result = luaH_getn(v7);
      v10 = result;
LABEL_10:
      *a2 = v10;
      *(a2 + 8) = 19;
      return result;
    }
  }

  else
  {
    v9 = luaT_gettmbyobj(result, a3, 4u);
    if (!*(v9 + 2))
    {
      luaG_typeerror(v6, a3, "get length of");
    }
  }

  return luaT_callTM(v6, v9, a3, a3, a2, 1);
}

uint64_t luaV_div(void *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 1) > 1)
  {
    result = a2 / a3;
    if ((a3 ^ a2) < 0)
    {
      result -= a2 != result * a3;
    }
  }

  else
  {
    if (!a3)
    {
      luaG_runerror(a1, "attempt to divide by zero");
    }

    return -a2;
  }

  return result;
}

uint64_t luaV_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 + 1) > 1)
  {
    if (a2 % a3)
    {
      return a2 % a3 + (a3 & ((a3 ^ a2) >> 63));
    }
  }

  else if (!a3)
  {
    luaG_runerror(a1, "attempt to perform 'n%%0'", v3, v4);
    return 0;
  }

  return 0;
}

unint64_t luaV_shiftl(unint64_t a1, uint64_t a2)
{
  v2 = a1 << a2;
  if (a2 > 0x3F)
  {
    v2 = 0;
  }

  v3 = a1 >> -a2;
  if (a2 < 0xFFFFFFFFFFFFFFC1)
  {
    v3 = 0;
  }

  if (a2 < 0)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t luaV_finishOp(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = *(result + 32);
  v10 = *(v9 + 32);
  v11 = *(*(v9 + 40) - 4);
  v12 = *(*(v9 + 40) - 4) & 0x3F;
  if (v12 <= 0x1B)
  {
    if (v12 - 18 >= 9 && v12 - 12 >= 5 && v12 - 6 >= 2)
    {
      return result;
    }

LABEL_16:
    v19 = (*(result + 16) - 16);
    *(result + 16) = v19;
    *(v10 + 16 * (v11 >> 6)) = *v19;
    return result;
  }

  if ((*(*(v9 + 40) - 4) & 0x3Fu) <= 0x1E)
  {
    if (v12 == 28)
    {
      goto LABEL_16;
    }

    if (v12 != 29)
    {
      return result;
    }

    v17 = *(result + 16);
    v18 = (v17 - 32 - v10 - ((v11 >> 19) & 0x1FF0)) >> 4;
    *(v17 - 48) = *(v17 - 16);
    if (v18 >= 2)
    {
      *(result + 16) = v17 - 32;
      result = luaV_concat(result, v18, a3, a4, a5, a6, a7, a8);
    }

    *(*(v9 + 32) + 16 * (v11 >> 6)) = *(*(v8 + 16) - 16);
LABEL_23:
    *(v8 + 16) = *(v9 + 8);
    return result;
  }

  if (v12 - 31 >= 3)
  {
    if (v12 == 36)
    {
      if ((v11 & 0x7FC000) == 0)
      {
        return result;
      }
    }

    else if (v12 != 41)
    {
      return result;
    }

    goto LABEL_23;
  }

  v13 = *(result + 16);
  v14 = (v13 - 16);
  v15 = *(v13 - 8);
  if (v15)
  {
    v16 = v15 == 1 && *v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  *(result + 16) = v14;
  v20 = *(v9 + 66);
  if (v20 < 0)
  {
    *(v9 + 66) = v20 & 0x7F;
  }

  else
  {
    v16 ^= 1u;
  }

  if (v16 != (v11 >> 6))
  {
    *(v9 + 40) += 4;
  }

  return result;
}

uint64_t luaV_execute(uint64_t a1)
{
  v2 = *(a1 + 32);
LABEL_2:
  v3 = **v2;
  v4 = *(*(v3 + 24) + 48);
  v5 = v2[4];
  v184 = v3;
  v185 = v3 + 32;
  while (2)
  {
    v6 = v2[5];
    v2[5] = (v6 + 1);
    v7 = *v6;
    v8 = *(a1 + 200);
    if ((v8 & 0xC) != 0)
    {
      v9 = *(a1 + 192) - 1;
      *(a1 + 192) = v9;
      if ((v8 & 4) != 0 || !v9)
      {
        luaG_traceexec(a1);
        v5 = v2[4];
      }
    }

    v10 = (v7 >> 6);
    v11 = v5 + 16 * v10;
    switch(v7 & 0x3F)
    {
      case 0uLL:
        *v11 = *(v5 + ((v7 >> 19) & 0x1FF0));
        continue;
      case 1uLL:
        v62 = (v7 >> 10) & 0x3FFFF0;
        goto LABEL_110;
      case 2uLL:
        v61 = v2[5];
        v2[5] = (v61 + 1);
        v62 = (*v61 >> 2) & 0x3FFFFFF0;
LABEL_110:
        *v11 = *(v4 + v62);
        continue;
      case 3uLL:
        *v11 = v7 >> 23;
        *(v11 + 8) = 1;
        if ((v7 & 0x7FC000) == 0)
        {
          continue;
        }

        goto LABEL_103;
      case 4uLL:
        v50 = 0;
        v51 = vdupq_n_s64(v7 >> 23);
        v52 = (v5 + 16 * v10 + 40);
        do
        {
          v53 = vdupq_n_s64(v50);
          v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_26ECC7980)));
          if (vuzp1_s16(v54, *v51.i8).u8[0])
          {
            *(v52 - 8) = 0;
          }

          if (vuzp1_s16(v54, *&v51).i8[2])
          {
            *(v52 - 4) = 0;
          }

          if (vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_26ECCE810)))).i32[1])
          {
            *v52 = 0;
            v52[4] = 0;
          }

          v50 += 4;
          v52 += 16;
        }

        while ((((v7 >> 23) + 4) & 0x3FC) != v50);
        continue;
      case 5uLL:
        *v11 = ***(v185 + ((v7 >> 20) & 0xFF8));
        continue;
      case 6uLL:
        v70 = **(v185 + ((v7 >> 20) & 0xFF8));
        if ((v7 & 0x400000) != 0)
        {
          v87 = v4;
        }

        else
        {
          v87 = v5;
        }

        v69 = (v87 + 16 * (v7 >> 14));
        goto LABEL_157;
      case 7uLL:
        v55 = (v7 >> 19) & 0x1FF0;
        goto LABEL_105;
      case 8uLL:
        v93 = **(v185 + 8 * v10);
        if ((v7 & 0x80000000) == 0)
        {
          v89 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v89 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v94 = v4;
        }

        else
        {
          v94 = v5;
        }

        v91 = (v94 + 16 * (v7 >> 14));
        v92 = a1;
        goto LABEL_182;
      case 9uLL:
        v56 = *(v185 + ((v7 >> 20) & 0xFF8));
        **v56 = *v11;
        if (((*v56)[1] & 0x40) != 0 && *v56 == (v56 + 2))
        {
          luaC_upvalbarrier_(a1, v56);
        }

        continue;
      case 0xAuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v89 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v89 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v90 = v4;
        }

        else
        {
          v90 = v5;
        }

        v91 = (v90 + 16 * (v7 >> 14));
        v92 = a1;
        v93 = v5 + 16 * (v7 >> 6);
LABEL_182:
        luaV_settable(v92, v93, v89, v91);
        goto LABEL_384;
      case 0xBuLL:
        v44 = (v7 >> 14) & 0x1FF;
        v45 = luaH_new(a1);
        *v11 = v45;
        *(v11 + 8) = 69;
        v46 = v7 >> 23;
        if (v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = v44 == 0;
        }

        if (!v47)
        {
          v48 = luaO_fb2int(v46);
          v49 = luaO_fb2int(v44);
          luaH_resize(a1, v45, v48, v49);
        }

        goto LABEL_267;
      case 0xCuLL:
        v55 = (v7 >> 19) & 0x1FF0;
        *(v11 + 16) = *(v5 + v55);
LABEL_105:
        if ((v7 & 0x400000) != 0)
        {
          v68 = v4;
        }

        else
        {
          v68 = v5;
        }

        v69 = (v68 + 16 * (v7 >> 14));
        v70 = v5 + v55;
LABEL_157:
        luaV_gettable(a1, v70, v69, (v5 + 16 * (v7 >> 6)));
        goto LABEL_384;
      case 0xDuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v83 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v83 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v84 = v4;
        }

        else
        {
          v84 = v5;
        }

        v85 = (v84 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        v86 = *(v83 + 2);
        if (v86 == 3)
        {
          v189 = *v83;
        }

        else
        {
          if (v86 == 19 && *(v85 + 2) == 19)
          {
            v35 = *v85 + *v83;
            goto LABEL_331;
          }

          if (!luaV_tonumber_(v83, &v189))
          {
            goto LABEL_376;
          }
        }

        if (*(v85 + 2) == 3)
        {
          v168 = v85;
LABEL_372:
          v154 = v189 + *v168;
          goto LABEL_373;
        }

        v168 = &v188;
        if (luaV_tonumber_(v85, &v188))
        {
          goto LABEL_372;
        }

LABEL_376:
        v133 = a1;
        v27 = v83;
        v29 = v85;
        v134 = v5 + 16 * v10;
        v135 = 6;
LABEL_383:
        luaT_trybinTM(v133, v27, v29, v134, v135);
LABEL_384:
        v5 = v2[4];
        continue;
      case 0xEuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v31 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v31 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v32 = v4;
        }

        else
        {
          v32 = v5;
        }

        v33 = (v32 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        v34 = *(v31 + 2);
        if (v34 == 3)
        {
          v189 = *v31;
        }

        else
        {
          if (v34 == 19 && *(v33 + 2) == 19)
          {
            v35 = *v31 - *v33;
            goto LABEL_331;
          }

          if (!luaV_tonumber_(v31, &v189))
          {
            goto LABEL_374;
          }
        }

        if (*(v33 + 2) == 3)
        {
          v165 = v33;
LABEL_368:
          v154 = v189 - *v165;
          goto LABEL_373;
        }

        v165 = &v188;
        if (luaV_tonumber_(v33, &v188))
        {
          goto LABEL_368;
        }

LABEL_374:
        v133 = a1;
        v27 = v31;
        v29 = v33;
        v134 = v5 + 16 * v10;
        v135 = 7;
        goto LABEL_383;
      case 0xFuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v63 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v63 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v64 = v4;
        }

        else
        {
          v64 = v5;
        }

        v65 = (v64 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        v66 = *(v63 + 2);
        if (v66 == 3)
        {
          v189 = *v63;
        }

        else
        {
          if (v66 == 19 && *(v65 + 2) == 19)
          {
            v35 = *v65 * *v63;
            goto LABEL_331;
          }

          if (!luaV_tonumber_(v63, &v189))
          {
            goto LABEL_375;
          }
        }

        if (*(v65 + 2) == 3)
        {
          v167 = v65;
LABEL_370:
          v154 = v189 * *v167;
          goto LABEL_373;
        }

        v167 = &v188;
        if (luaV_tonumber_(v65, &v188))
        {
          goto LABEL_370;
        }

LABEL_375:
        v133 = a1;
        v27 = v63;
        v29 = v65;
        v134 = v5 + 16 * v10;
        v135 = 8;
        goto LABEL_383;
      case 0x10uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v27 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v27 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v28 = v4;
        }

        else
        {
          v28 = v5;
        }

        v29 = (v28 + 16 * (v7 >> 14));
        if (*(v27 + 2) == 19 && *(v29 + 2) == 19)
        {
          v30 = luaV_mod(a1, *v27, *v29);
          goto LABEL_167;
        }

        v133 = a1;
        v134 = v5 + 16 * (v7 >> 6);
        v135 = 9;
        goto LABEL_383;
      case 0x12uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v74 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v74 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v75 = v4;
        }

        else
        {
          v75 = v5;
        }

        v76 = (v75 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        if (*(v74 + 2) == 3)
        {
          v189 = *v74;
        }

        else if (!luaV_tonumber_(v74, &v189))
        {
          goto LABEL_346;
        }

        if (*(v76 + 2) == 3)
        {
          v148 = v76;
LABEL_308:
          v154 = v189 / *v148;
          goto LABEL_373;
        }

        v148 = &v188;
        if (luaV_tonumber_(v76, &v188))
        {
          goto LABEL_308;
        }

LABEL_346:
        v133 = a1;
        v27 = v74;
        v29 = v76;
        v134 = v5 + 16 * v10;
        v135 = 11;
        goto LABEL_383;
      case 0x13uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v27 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v27 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v88 = v4;
        }

        else
        {
          v88 = v5;
        }

        v29 = (v88 + 16 * (v7 >> 14));
        if (*(v27 + 2) != 19 || *(v29 + 2) != 19)
        {
          v133 = a1;
          v134 = v5 + 16 * (v7 >> 6);
          v135 = 12;
          goto LABEL_383;
        }

        v30 = luaV_div(a1, *v27, *v29);
LABEL_167:
        *v11 = v30;
        goto LABEL_332;
      case 0x14uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v109 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v109 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v110 = v4;
        }

        else
        {
          v110 = v5;
        }

        v111 = (v110 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        if (*(v109 + 2) == 19)
        {
          v189 = *v109;
        }

        else if (!luaV_tointeger(v109, &v189))
        {
          goto LABEL_350;
        }

        if (*(v111 + 2) == 19)
        {
          v152 = v111;
LABEL_322:
          v35 = *v152 & *&v189;
          goto LABEL_331;
        }

        v152 = &v188;
        if (luaV_tointeger(v111, &v188))
        {
          goto LABEL_322;
        }

LABEL_350:
        v133 = a1;
        v27 = v109;
        v29 = v111;
        v134 = v5 + 16 * v10;
        v135 = 13;
        goto LABEL_383;
      case 0x15uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v77 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v77 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v78 = v4;
        }

        else
        {
          v78 = v5;
        }

        v79 = (v78 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        if (*(v77 + 2) == 19)
        {
          v189 = *v77;
        }

        else if (!luaV_tointeger(v77, &v189))
        {
          goto LABEL_347;
        }

        if (*(v79 + 2) == 19)
        {
          v149 = v79;
LABEL_310:
          v35 = *v149 | *&v189;
          goto LABEL_331;
        }

        v149 = &v188;
        if (luaV_tointeger(v79, &v188))
        {
          goto LABEL_310;
        }

LABEL_347:
        v133 = a1;
        v27 = v77;
        v29 = v79;
        v134 = v5 + 16 * v10;
        v135 = 14;
        goto LABEL_383;
      case 0x16uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v80 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v80 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v81 = v4;
        }

        else
        {
          v81 = v5;
        }

        v82 = (v81 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        if (*(v80 + 2) == 19)
        {
          v189 = *v80;
        }

        else if (!luaV_tointeger(v80, &v189))
        {
          goto LABEL_348;
        }

        if (*(v82 + 2) == 19)
        {
          v150 = v82;
LABEL_312:
          v35 = *v150 ^ *&v189;
          goto LABEL_331;
        }

        v150 = &v188;
        if (luaV_tointeger(v82, &v188))
        {
          goto LABEL_312;
        }

LABEL_348:
        v133 = a1;
        v27 = v80;
        v29 = v82;
        v134 = v5 + 16 * v10;
        v135 = 15;
        goto LABEL_383;
      case 0x17uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v106 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v106 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v107 = v4;
        }

        else
        {
          v107 = v5;
        }

        v108 = (v107 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        if (*(v106 + 2) == 19)
        {
          v189 = *v106;
        }

        else if (!luaV_tointeger(v106, &v189))
        {
          goto LABEL_349;
        }

        if (*(v108 + 2) == 19)
        {
          v151 = v108;
        }

        else
        {
          v151 = &v188;
          if (!luaV_tointeger(v108, &v188))
          {
LABEL_349:
            v133 = a1;
            v27 = v106;
            v29 = v108;
            v134 = v5 + 16 * v10;
            v135 = 16;
            goto LABEL_383;
          }
        }

        v155 = *v151;
        v156 = *&v189 << *v151;
        if (*v151 > 0x3F)
        {
          v156 = 0;
        }

        v157 = *&v189 >> -v155;
        if (v155 < 0xFFFFFFFFFFFFFFC1)
        {
          v157 = 0;
        }

        if (v155 < 0)
        {
          v35 = v157;
        }

        else
        {
          v35 = v156;
        }

        goto LABEL_331;
      case 0x18uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v112 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v112 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v113 = v4;
        }

        else
        {
          v113 = v5;
        }

        v114 = (v113 + 16 * (v7 >> 14));
        v188 = 0;
        v189 = 0.0;
        if (*(v112 + 2) == 19)
        {
          v189 = *v112;
        }

        else if (!luaV_tointeger(v112, &v189))
        {
          goto LABEL_351;
        }

        if (*(v114 + 2) == 19)
        {
          v153 = v114;
        }

        else
        {
          v153 = &v188;
          if (!luaV_tointeger(v114, &v188))
          {
LABEL_351:
            v133 = a1;
            v27 = v112;
            v29 = v114;
            v134 = v5 + 16 * v10;
            v135 = 17;
            goto LABEL_383;
          }
        }

        v158 = *v153;
        v159 = -*v153;
        v160 = *&v189 << v159;
        if (v159 > 0x3F)
        {
          v160 = 0;
        }

        v161 = *&v189 >> v158;
        if (v159 < 0xFFFFFFFFFFFFFFC1)
        {
          v161 = 0;
        }

        if (v158 >= 1)
        {
          v35 = v161;
        }

        else
        {
          v35 = v160;
        }

LABEL_331:
        *v11 = v35;
LABEL_332:
        *(v11 + 8) = 19;
        continue;
      case 0x19uLL:
        v59 = (v5 + ((v7 >> 19) & 0x1FF0));
        v189 = 0.0;
        v60 = *(v59 + 2);
        if (v60 == 3)
        {
          v166 = (v5 + ((v7 >> 19) & 0x1FF0));
        }

        else
        {
          if (v60 == 19)
          {
            v35 = -*v59;
            goto LABEL_331;
          }

          v166 = &v189;
          if (!luaV_tonumber_(v59, &v189))
          {
            v133 = a1;
            v27 = v59;
            v29 = v59;
            v134 = v5 + 16 * v10;
            v135 = 18;
            goto LABEL_383;
          }
        }

        v154 = -*v166;
LABEL_373:
        *v11 = v154;
        *(v11 + 8) = 3;
        continue;
      case 0x1AuLL:
        v57 = (v5 + ((v7 >> 19) & 0x1FF0));
        v189 = 0.0;
        if (*(v57 + 2) == 19)
        {
          v58 = (v5 + ((v7 >> 19) & 0x1FF0));
LABEL_284:
          v35 = ~*v58;
          goto LABEL_331;
        }

        v58 = &v189;
        if (luaV_tointeger(v57, &v189))
        {
          goto LABEL_284;
        }

        v133 = a1;
        v27 = v57;
        v29 = v57;
        v134 = v5 + 16 * v10;
        v135 = 19;
        goto LABEL_383;
      case 0x1BuLL:
        v120 = (v5 + ((v7 >> 19) & 0x1FF0));
        v121 = v120[2];
        if (v121)
        {
          v122 = v121 == 1 && *v120 == 0;
        }

        else
        {
          v122 = 1;
        }

        *v11 = v122;
        *(v11 + 8) = 1;
        continue;
      case 0x1CuLL:
        luaV_objlen(a1, v5 + 16 * (v7 >> 6), (v5 + ((v7 >> 19) & 0x1FF0)));
        goto LABEL_384;
      case 0x1DuLL:
        *(a1 + 16) = v5 + 16 * ((v7 >> 14) & 0x1FF) + 16;
        luaV_concat(a1);
        v115 = v2[4];
        v116 = &v115[2 * v10];
        v117 = &v115[2 * (v7 >> 23)];
        *v116 = *v117;
        if (*(*(a1 + 24) + 24) <= 0)
        {
          v119 = v2[1];
        }

        else
        {
          v118 = v116 + 2;
          if (v10 >= (v7 >> 23))
          {
            v117 = v118;
          }

          *(a1 + 16) = v117;
          luaC_step(a1);
          v119 = v2[1];
          *(a1 + 16) = v119;
        }

        v5 = v2[4];
        *(a1 + 16) = v119;
        continue;
      case 0x1EuLL:
        if (v10)
        {
          luaF_close(a1, &v2[4][2 * v10 - 2]);
        }

        goto LABEL_408;
      case 0x1FuLL:
        if ((v7 & 0x80000000) == 0)
        {
          v95 = (v5 + 16 * (v7 >> 23));
        }

        else
        {
          v95 = (v4 + 16 * (v7 >> 23));
        }

        if ((v7 & 0x400000) != 0)
        {
          v96 = v4;
        }

        else
        {
          v96 = v5;
        }

        v73 = luaV_equalobj(a1, v95, (v96 + 16 * (v7 >> 14)));
        goto LABEL_197;
      case 0x20uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v71 = v5 + 16 * (v7 >> 23);
        }

        else
        {
          v71 = v4 + 16 * (v7 >> 23);
        }

        if ((v7 & 0x400000) != 0)
        {
          v72 = v4;
        }

        else
        {
          v72 = v5;
        }

        v73 = luaV_lessthan(a1, v71, v72 + 16 * (v7 >> 14));
        goto LABEL_197;
      case 0x21uLL:
        if ((v7 & 0x80000000) == 0)
        {
          v97 = v5 + 16 * (v7 >> 23);
        }

        else
        {
          v97 = v4 + 16 * (v7 >> 23);
        }

        if ((v7 & 0x400000) != 0)
        {
          v98 = v4;
        }

        else
        {
          v98 = v5;
        }

        v73 = luaV_lessequal(a1, v97, v98 + 16 * (v7 >> 14));
LABEL_197:
        v99 = v2[5];
        if (v73 == v10)
        {
          v100 = *v99;
          if ((v100 >> 6))
          {
            luaF_close(a1, &v2[4][2 * (v100 >> 6) - 2]);
            v99 = v2[5];
          }

          v101 = v99 + ((v100 >> 12) & 0xFFFFC) - 524280;
        }

        else
        {
          v101 = (v99 + 1);
        }

        v2[5] = v101;
        goto LABEL_384;
      case 0x22uLL:
        v39 = *(v11 + 8);
        if ((v7 & 0x7FC000) != 0)
        {
          if (v39 && (v39 != 1 || *v11))
          {
            goto LABEL_337;
          }

          goto LABEL_103;
        }

        if (v39 && (v39 != 1 || *v11))
        {
          goto LABEL_103;
        }

        goto LABEL_337;
      case 0x23uLL:
        v16 = (v5 + ((v7 >> 19) & 0x1FF0));
        v17 = v16[2];
        if ((v7 & 0x7FC000) != 0)
        {
          if (!v17 || v17 == 1 && !*v16)
          {
            goto LABEL_103;
          }
        }

        else if (v17 && (v17 != 1 || *v16))
        {
LABEL_103:
          v67 = v2[5] + 4;
          goto LABEL_411;
        }

        *v11 = *v16;
LABEL_337:
        v162 = v2[5];
        v163 = *v162;
        if ((v163 >> 6))
        {
          luaF_close(a1, &v2[4][2 * (v163 >> 6) - 2]);
          v162 = v2[5];
        }

        v15 = (v163 >> 12) & 0xFFFFC;
        v164 = -65528;
        goto LABEL_409;
      case 0x24uLL:
        if (v7 >= 0x800000)
        {
          *(a1 + 16) = v11 + ((v7 >> 19) & 0x1FF0);
        }

        if (!luaD_precall(a1, v11, ((v7 >> 14) & 0x1FF) - 1))
        {
          v2 = *(a1 + 32);
          *(v2 + 66) |= 8u;
          goto LABEL_2;
        }

        if (((v7 >> 14) & 0x1FF) != 0)
        {
          goto LABEL_269;
        }

        goto LABEL_384;
      case 0x25uLL:
        if (v7 >= 0x800000)
        {
          *(a1 + 16) = v11 + ((v7 >> 19) & 0x1FF0);
        }

        if (luaD_precall(a1, (v5 + 16 * (v7 >> 6)), -1))
        {
          goto LABEL_384;
        }

        v173 = *(a1 + 32);
        v2 = v173[2];
        v174 = *v173;
        v175 = *v2;
        v176 = v173[4];
        v177 = *(*(**v173 + 24) + 10);
        if (*(*(v3 + 24) + 32) >= 1)
        {
          luaF_close(a1, v2[4]);
        }

        v178 = &v176[v177];
        if (v174 < v178)
        {
          v179 = v175;
          v180 = v174;
          do
          {
            v181 = *v180++;
            *v179 = v181;
            v179 += 2;
          }

          while (v180 < v178);
        }

        v2[4] = (v175 + v173[4] - v174);
        v182 = v175 + *(a1 + 16) - v174;
        *(a1 + 16) = v182;
        v2[1] = v182;
        v2[5] = v173[5];
        *(v2 + 66) |= 0x20u;
        *(a1 + 32) = v2;
        goto LABEL_2;
      case 0x26uLL:
        if (*(*(v3 + 24) + 32) >= 1)
        {
          luaF_close(a1, v5);
        }

        if (v7 >= 0x800000)
        {
          LODWORD(v172) = (v7 >> 23) - 1;
        }

        else
        {
          v172 = (*(a1 + 16) - v11) >> 4;
        }

        result = luaD_poscall(a1, (v5 + 16 * (v7 >> 6)), v172);
        if ((*(v2 + 66) & 8) != 0)
        {
          v2 = *(a1 + 32);
          if (result)
          {
            *(a1 + 16) = v2[1];
          }

          goto LABEL_2;
        }

        return result;
      case 0x27uLL:
        if (*(v11 + 8) == 19)
        {
          v36 = *(v11 + 32);
          v37 = *v11 + v36;
          v38 = *(v11 + 16);
          if (v36 < 1)
          {
            if (v38 > v37)
            {
              continue;
            }
          }

          else if (v37 > v38)
          {
            continue;
          }

          v2[5] = (v2[5] + ((v7 >> 12) & 0xFFFFC) - 524284);
          *v11 = v37;
          *(v11 + 48) = v37;
          *(v11 + 56) = 19;
        }

        else
        {
          v142 = *(v11 + 32);
          v143 = v142 + *v11;
          v144 = *(v11 + 16);
          if (v142 <= 0.0)
          {
            if (v144 > v143)
            {
              continue;
            }
          }

          else if (v143 > v144)
          {
            continue;
          }

          v2[5] = (v2[5] + ((v7 >> 12) & 0xFFFFC) - 524284);
          *v11 = v143;
          *(v11 + 48) = v143;
          *(v11 + 56) = 3;
        }

        continue;
      case 0x28uLL:
        v188 = 0;
        if (*(v11 + 8) != 19 || *(v11 + 40) != 19)
        {
          goto LABEL_394;
        }

        v102 = *(v11 + 32);
        if (luaV_tointeger((v11 + 16), &v188))
        {
          v103 = v188;
          goto LABEL_207;
        }

        v169 = v3;
        v189 = 0.0;
        if (*(v11 + 24) == 3)
        {
          v170 = (v11 + 16);
LABEL_388:
          if (*v170 <= 0.0)
          {
            v103 = 0x8000000000000000;
            v188 = 0x8000000000000000;
            v3 = v169;
            if ((v102 & 0x8000000000000000) == 0)
            {
              goto LABEL_392;
            }
          }

          else
          {
            v103 = 0x7FFFFFFFFFFFFFFFLL;
            v188 = 0x7FFFFFFFFFFFFFFFLL;
            v3 = v169;
            if (v102 < 0)
            {
LABEL_392:
              v104 = 0;
              goto LABEL_208;
            }
          }

LABEL_207:
          v104 = *v11;
LABEL_208:
          *(v11 + 16) = v103;
          v105 = 19;
          *(v11 + 24) = 19;
          *v11 = v104 - *(v11 + 32);
          goto LABEL_407;
        }

        v170 = &v189;
        if (luaV_tonumber_((v11 + 16), &v189))
        {
          goto LABEL_388;
        }

        v3 = v169;
LABEL_394:
        v189 = 0.0;
        v186 = 0.0;
        v187 = 0;
        if (*(v11 + 24) == 3)
        {
          v187 = *(v11 + 16);
        }

        else if (!luaV_tonumber_((v11 + 16), &v187))
        {
          luaG_runerror(a1, "'for' limit must be a number");
        }

        *(v11 + 16) = v187;
        *(v11 + 24) = 3;
        if (*(v11 + 40) == 3)
        {
          v186 = *(v11 + 32);
        }

        else if (!luaV_tonumber_((v11 + 32), &v186))
        {
          luaG_runerror(a1, "'for' step must be a number");
        }

        v171 = v186;
        *(v11 + 32) = v186;
        *(v11 + 40) = 3;
        if (*(v11 + 8) == 3)
        {
          v189 = *v11;
        }

        else if (!luaV_tonumber_((v5 + 16 * (v7 >> 6)), &v189))
        {
          luaG_runerror(a1, "'for' initial value must be a number");
        }

        *v11 = v189 - v171;
        v105 = 3;
LABEL_407:
        *(v11 + 8) = v105;
LABEL_408:
        v162 = v2[5];
        v15 = (v7 >> 12) & 0xFFFFC;
        v164 = -65532;
LABEL_409:
        v14 = v162 + (v164 & 0xFFFFFFFF0000FFFFLL | 0xFFF80000);
LABEL_410:
        v67 = v14 + v15;
LABEL_411:
        v2[5] = v67;
        continue;
      case 0x29uLL:
        v12 = *(v11 + 32);
        *(v11 + 64) = *(v11 + 16);
        *(v11 + 80) = v12;
        *(v11 + 48) = *v11;
        *(a1 + 16) = v11 + 96;
        luaD_call(a1, v11 + 48, (v7 >> 14) & 0x1FF, 1);
        v5 = v2[4];
        *(a1 + 16) = v2[1];
        v13 = v2[5];
        v2[5] = (v13 + 1);
        v7 = *v13;
        v11 = v5 + 16 * (v7 >> 6);
        goto LABEL_10;
      case 0x2AuLL:
LABEL_10:
        if (!*(v11 + 24))
        {
          continue;
        }

        *v11 = *(v11 + 16);
        v14 = v2[5] + 4 * (v7 >> 14);
        v15 = -524284;
        goto LABEL_410;
      case 0x2BuLL:
        v123 = v7 >> 23;
        if (!(v7 >> 23))
        {
          v123 = ((*(a1 + 16) - v11) >> 4) - 1;
        }

        v124 = (v7 >> 14) & 0x1FF;
        if (!v124)
        {
          v125 = v2[5];
          v2[5] = (v125 + 4);
          v124 = *v125 >> 6;
        }

        v126 = *v11;
        v127 = 50 * v124;
        v128 = v123 + 50 * v124 - 50;
        if (v128 > *(v126 + 12))
        {
          luaH_resizearray(a1, v126, v128);
        }

        if (v123 >= 1)
        {
          v129 = v123;
          v130 = (v5 + 16 * v10 + 16 * v123);
          v131 = v127 - 50;
          do
          {
            luaH_setint(a1, v126, (v131 + v129), v130);
            if ((v130->n128_u8[8] & 0x40) != 0 && (*(v126 + 9) & 4) != 0 && (*(v130->n128_u64[0] + 9) & 3) != 0)
            {
              luaC_barrierback_(a1, v126);
            }

            --v130;
          }

          while (v129-- > 1);
        }

        *(a1 + 16) = v2[1];
        continue;
      case 0x2CuLL:
        v18 = *(*(*(v3 + 24) + 64) + ((v7 >> 11) & 0x1FFFF8));
        v19 = *(v18 + 16);
        v21 = *(v18 + 88);
        v20 = *(v18 + 96);
        if (!v20)
        {
          goto LABEL_259;
        }

        if (v19 < 1)
        {
          goto LABEL_35;
        }

        v22 = (v20 + 32);
        v23 = (v21 + 9);
        v24 = *(v18 + 16);
        while (1)
        {
          v25 = *v23;
          v26 = *(v23 - 1) ? v5 + 16 * v25 : **(v185 + 8 * v25);
          if (**v22 != v26)
          {
            break;
          }

          v23 += 16;
          ++v22;
          if (!--v24)
          {
LABEL_35:
            *v11 = v20;
            *(v11 + 8) = 70;
            goto LABEL_267;
          }
        }

LABEL_259:
        v136 = luaF_newLclosure(a1, *(v18 + 16));
        v137 = v136;
        *(v136 + 24) = v18;
        *v11 = v136;
        *(v11 + 8) = 70;
        if (v19 >= 1)
        {
          v138 = (v136 + 32);
          v139 = (v21 + 9);
          do
          {
            v140 = *v139;
            if (*(v139 - 1))
            {
              v141 = luaF_findupval(a1, v5 + 16 * v140);
            }

            else
            {
              v141 = *(v185 + 8 * v140);
            }

            v139 += 16;
            *v138++ = v141;
            ++*(v141 + 8);
            --v19;
          }

          while (v19);
        }

        v3 = v184;
        if ((*(v18 + 9) & 4) == 0)
        {
          *(v18 + 96) = v137;
        }

LABEL_267:
        if (*(*(a1 + 24) + 24) >= 1)
        {
          *(a1 + 16) = v11 + 16;
          luaC_step(a1);
LABEL_269:
          *(a1 + 16) = v2[1];
        }

        goto LABEL_384;
      case 0x2DuLL:
        v40 = (v5 - *v2) >> 4;
        v41 = ~*(*(v3 + 24) + 10);
        v42 = v40 + v41;
        if (v7 >> 23)
        {
          v43 = (v7 >> 23) - 1;
        }

        else
        {
          if (v42 >= (*(a1 + 48) - *(a1 + 16)) >> 4)
          {
            luaD_growstack(a1, v40 + v41);
          }

          v5 = v2[4];
          v11 = v5 + 16 * v10;
          *(a1 + 16) = v11 + 16 * v42;
          v43 = v42;
        }

        if (v43 >= 1)
        {
          v145 = 0;
          v146 = (v11 + 8);
          v147 = -16 * v42;
          do
          {
            if (v145 >= v42)
            {
              *v146 = 0;
            }

            else
            {
              *(v146 - 2) = *(v5 + v147);
            }

            ++v145;
            v146 += 4;
            v147 += 16;
          }

          while (v43 != v145);
        }

        continue;
      default:
        continue;
    }
  }
}

uint64_t luaZ_fill(uint64_t a1)
{
  v5 = 0;
  v2 = (*(a1 + 16))(*(a1 + 32), *(a1 + 24), &v5);
  if (v2)
  {
    v3 = v5 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = v5 - 1;
  *(a1 + 8) = v2 + 1;
  return *v2;
}

uint64_t luaZ_init(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  a2[3] = a4;
  a2[4] = result;
  a2[1] = 0;
  a2[2] = a3;
  *a2 = 0;
  return result;
}

size_t luaZ_read(unint64_t *a1, char *__dst, size_t a3)
{
  v3 = a3;
  if (a3)
  {
    v6 = *a1;
    do
    {
      if (v6)
      {
        v7 = a1[1];
      }

      else
      {
        if (luaZ_fill(a1) == -1)
        {
          return v3;
        }

        v6 = *a1 + 1;
        v7 = (a1[1] - 1);
        *a1 = v6;
        a1[1] = v7;
      }

      if (v3 >= v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = v3;
      }

      cstdlib_memcpy(__dst, v7, v8);
      v6 = *a1 - v8;
      v9 = a1[1] + v8;
      *a1 = v6;
      a1[1] = v9;
      __dst += v8;
      v3 -= v8;
    }

    while (v3);
  }

  return v3;
}

uint64_t luaZ_openspace(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = a2[2];
  v6 = *a2;
  if (v5 < a3)
  {
    if (a3 <= 0x20)
    {
      v7 = 32;
    }

    else
    {
      v7 = a3;
    }

    v6 = luaM_realloc_(a1, v6, v5, v7);
    *a2 = v6;
    a2[2] = v7;
  }

  return v6;
}

uint64_t luaI_snprintf(uint64_t a1, uint64_t a2, int a3, unsigned __int8 *__src, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v180 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    return 0;
  }

  v10 = a3;
  v12 = 0;
  v176 = 0;
  v13 = 0;
  v178 = &a9;
  v14 = &byte_26ECCEC52;
  while (2)
  {
    if (*__src == 37)
    {
      v20 = __src;
    }

    else
    {
      if (!*__src)
      {
        goto LABEL_320;
      }

      v15 = 0;
      v16 = 0;
      do
      {
        v17 = __src[++v16];
        v15 += 0x100000000;
      }

      while (v17 != 37 && v17 != 0);
      v19 = v16 + v12;
      v20 = &__src[v16];
      if (v19 >= v10)
      {
        v10 = 0;
        v176 = 2;
        v12 = v12;
      }

      else
      {
        cstdlib_memcpy((a2 + v12), __src, v15 >> 32);
        v17 = *v20;
        v12 = v19;
      }

      v13 = __src;
      if (!v17)
      {
        goto LABEL_320;
      }
    }

    LOBYTE(v21) = v20[1];
    if (!v21)
    {
      if (v12 + 1 < v10)
      {
        cstdlib_memcpy((a2 + v12), "%", 1uLL);
        v12 = (v12 + 1);
      }

      goto LABEL_320;
    }

    v177 = v10;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = v20 + 2;
    while (1)
    {
      if (v21 <= 0x29u)
      {
        switch(v21)
        {
          case ' ':
            v25 = 1;
            break;
          case '!':
            v22 = 1;
            break;
          case '#':
            v24 = 1;
            break;
          default:
            goto LABEL_99;
        }

        goto LABEL_32;
      }

      if (v21 > 0x2Cu)
      {
        if (v21 == 45)
        {
          v27 = 1;
        }

        else
        {
          if (v21 != 48)
          {
            goto LABEL_99;
          }

          v23 = 1;
        }

        goto LABEL_32;
      }

      if (v21 != 43)
      {
        break;
      }

      v26 = 1;
LABEL_32:
      v29 = *v28++;
      v21 = v29;
      if (!v29)
      {
        v30 = 0;
        --v28;
        goto LABEL_34;
      }
    }

    if (v21 == 42)
    {
      v56 = v178;
      v178 += 2;
      v57 = *v56;
      if (v57 == 0x80000000)
      {
        v58 = 0;
      }

      else
      {
        v58 = -v57;
      }

      if (v57 >= 0)
      {
        v30 = v57;
      }

      else
      {
        v27 = 1;
        v30 = v58;
      }

      v21 = *v28;
    }

    else
    {
LABEL_99:
      v21 = v21;
      --v28;
      if ((v21 - 48) > 9)
      {
        v30 = 0;
      }

      else
      {
        v59 = 0;
        do
        {
          v59 = v21 + 10 * v59 - 48;
          v60 = *++v28;
          v21 = v60;
        }

        while ((v60 - 48) < 0xA);
        v30 = v59 & 0x7FFFFFFF;
      }
    }

    if (v21 != 46)
    {
LABEL_34:
      v31 = -1;
      goto LABEL_35;
    }

    v74 = (v28 + 1);
    v21 = v28[1];
    if (v21 == 42)
    {
      v75 = v178;
      v178 += 2;
      v31 = *v75;
      v76 = v28[2];
      v28 += 2;
      v21 = v76;
      if (v31 == 0x80000000)
      {
        v77 = -1;
      }

      else
      {
        v77 = -v31;
      }

      if (v31 < 0)
      {
        v31 = v77;
      }
    }

    else
    {
      if ((v21 - 48) > 9)
      {
        v31 = 0;
      }

      else
      {
        v78 = 0;
        do
        {
          v78 = v21 + 10 * v78 - 48;
          v79 = *++v74;
          v21 = v79;
        }

        while ((v79 - 48) < 0xA);
        v31 = v78 & 0x7FFFFFFF;
      }

      v28 = v74;
    }

LABEL_35:
    v32 = v31;
    v33 = 17;
    while (v21 != *(v14 - 2))
    {
      v14 += 6;
      if (!--v33)
      {
        goto LABEL_320;
      }
    }

    if ((*v14 & 2) != 0)
    {
      goto LABEL_320;
    }

    v34 = v14[1];
    if (v34 > 5)
    {
      if (v14[1] <= 8u)
      {
        if (v34 - 6 >= 2)
        {
          v14 = &byte_26ECCEC52;
          v10 = v177;
          if (v34 == 8)
          {
            v54 = 0;
            v179[0] = 37;
LABEL_286:
            v13 = v179;
            v32 = 1;
            goto LABEL_287;
          }

LABEL_320:
          if (a2)
          {
            goto LABEL_321;
          }

          return v12;
        }

        v51 = v178;
        v178 += 2;
        v52 = *v51;
        if (v34 == 7)
        {
          v53 = v52;
        }

        else
        {
          v53 = 0;
        }

        if (v52)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        if (v52)
        {
          v13 = v52;
        }

        else
        {
          v13 = "";
        }

        v14 = &byte_26ECCEC52;
        v10 = v177;
        if (v31 < 0)
        {
          v136 = v27;
          v137 = v30;
          v138 = cstdlib_strlen(v13);
          v30 = v137;
          v27 = v136;
          v32 = v138 & 0x3FFFFFFF;
        }

        else if (v31)
        {
          v55 = 0;
          while (v13[v55])
          {
            if (v31 == ++v55)
            {
              goto LABEL_287;
            }
          }

          v32 = v55;
        }

        else
        {
          v32 = 0;
        }

        goto LABEL_287;
      }

      if (v34 != 9)
      {
        if (v34 != 14)
        {
          goto LABEL_320;
        }

LABEL_108:
        v171 = v27;
        v62 = v178;
        v178 += 2;
        v63 = *v62;
        v64 = 32 * (v25 != 0);
        if (v26)
        {
          v65 = 43;
        }

        else
        {
          v65 = v64;
        }

        if (v63 >= 0)
        {
          v66 = v63;
        }

        else
        {
          v65 = 45;
          v66 = -v63;
        }

        if (*v14)
        {
          v67 = v65;
        }

        else
        {
          v67 = 0;
        }

        if (*v14)
        {
          v68 = v66;
        }

        else
        {
          v68 = v63;
        }

        v168 = v30;
        v69 = v30 - (v67 != 0);
        if (v31 > v69)
        {
          v69 = v31;
        }

        if (v23)
        {
          v70 = v69;
        }

        else
        {
          v70 = v31;
        }

        v174 = a2;
        if (v70 >= 60)
        {
          v72 = v70 + 10;
          v73 = luaM_realloc_(a1, 0, 0, (v70 + 10));
          if (!v73)
          {
            goto LABEL_320;
          }

          v71 = v73;
        }

        else
        {
          v71 = 0;
          v72 = 70;
          v73 = v179;
        }

        v115 = 0;
        v116 = v73 + v72 - 1;
        v117 = &aDigits[v14[2]];
        v118 = *(v14 - 1);
        if (v70 <= 60)
        {
          v119 = 60;
        }

        else
        {
          v119 = v70;
        }

        v120 = v70 - 1;
        v121 = v68;
        do
        {
          v73[v119 + 8 + v115--] = v117[v121 % v118];
          --v120;
          v122 = v121 >= v118;
          v121 /= v118;
        }

        while (v122);
        v123 = &v73[v119];
        if (v115 + v70 < 1)
        {
          v13 = &v123[v115 + 9];
        }

        else
        {
          v13 = &v123[v115 - v120 + 8];
          memset(v13, 48, (v115 + v70));
        }

        v54 = v71;
        v27 = v171;
        if (v67)
        {
          *--v13 = v67;
        }

        v30 = v168;
        if (v68 && v24)
        {
          v139 = v14[3];
          v10 = v177;
          if (v139 <= 6 && ((1 << v139) & 0x49) != 0)
          {
            v14 = &byte_26ECCEC52;
          }

          else
          {
            v140 = &aPrefix + v139;
            v143 = *v140;
            v141 = v140 + 1;
            v142 = v143;
            v14 = &byte_26ECCEC52;
            do
            {
              *--v13 = v142;
              v144 = *v141++;
              v142 = v144;
            }

            while (v144);
          }
        }

        else
        {
          v14 = &byte_26ECCEC52;
          v10 = v177;
        }

        v32 = v116 - v13;
LABEL_278:
        a2 = v174;
        goto LABEL_287;
      }

      v124 = v178;
      v178 += 2;
      v125 = *v124;
      v126 = v31 - 1;
      v14 = &byte_26ECCEC52;
      if (v31 <= 1)
      {
        v10 = v177;
LABEL_285:
        v54 = 0;
        v179[0] = v125;
        goto LABEL_286;
      }

      v30 -= v126;
      v10 = v177;
      if (v30 < 2 || v27)
      {
        goto LABEL_281;
      }

      v127 = v30 - 1;
      if (v30 - 1 + v12 >= v177)
      {
        if (v176)
        {
          v30 = 0;
LABEL_281:
          if (v12 + v126 >= v10)
          {
            if (v176)
            {
              goto LABEL_285;
            }

            v126 = v10 + ~v12;
            v176 = 2;
            v10 = 0;
            if (v126 < 1)
            {
              goto LABEL_285;
            }
          }

          v152 = v30;
          v153 = v27;
LABEL_283:
          memset((a2 + v12), v125, v126);
          v12 = (v12 + v126);
          v27 = v153;
          v30 = v152;
          goto LABEL_285;
        }

        v127 = v177 + ~v12;
        if (v127 < 1)
        {
          v10 = 0;
          v176 = 2;
          if (v126 + v12 >= 0)
          {
            v30 = 0;
            goto LABEL_285;
          }

          v153 = v27;
          v152 = 0;
          goto LABEL_283;
        }

        v128 = v27;
        v10 = 0;
        v176 = 2;
      }

      else
      {
        v128 = v27;
      }

      memset((a2 + v12), 32, v127);
      v30 = 0;
      v12 = (v12 + v127);
      v27 = v128;
      goto LABEL_281;
    }

    if (v34 - 2 >= 3)
    {
      if (v34 == 1)
      {
        goto LABEL_108;
      }

      v10 = v177;
      if (v34 != 5)
      {
        goto LABEL_320;
      }

      v54 = 0;
      v30 = 0;
      v32 = 0;
      v61 = v178;
      v178 += 2;
      **v61 = v12;
      v14 = &byte_26ECCEC52;
LABEL_287:
      v154 = v30 - v32;
      if (v30 - v32 < 1 || v27)
      {
        v155 = (v32 + v12);
        if (v155 >= v10)
        {
          v10 = 0;
          v176 = 2;
        }

        else
        {
          v156 = v32;
          v157 = v27;
          cstdlib_memcpy((a2 + v12), v13, v156);
          v27 = v157;
          v12 = v155;
        }

        if (v154 >= 1)
        {
          if (v27)
          {
            if (v12 + v154 < v10 || !v176 && (v154 = v10 + ~v12, v176 = 2, v10 = 0, v154 >= 1))
            {
              memset((a2 + v12), 32, v154);
              v12 = (v12 + v154);
            }
          }
        }
      }

      else
      {
        if (v154 + v12 < v10 || !v176 && (v154 = v10 + ~v12, v176 = 2, v10 = 0, v154 >= 1))
        {
          memset((a2 + v12), 32, v154);
          v12 = (v12 + v154);
        }

        if (v12 + v32 >= v10)
        {
          v10 = 0;
          v176 = 2;
        }

        else
        {
          cstdlib_memcpy((a2 + v12), v13, v32);
          v12 = (v12 + v32);
        }
      }

      if (v54)
      {
        luaM_realloc_(a1, v54, 1, 0);
      }

      __src = v28 + 1;
      continue;
    }

    break;
  }

  v35 = v178;
  v178 += 2;
  v36 = *v35;
  if (v31 < 0)
  {
    v31 = 6;
  }

  v37 = v25 == 0;
  v38 = !v37;
  v39 = 32 * v38;
  v40 = v26 == 0;
  v41 = "+Inf";
  if (v40)
  {
    v41 = "Inf";
  }

  if (!v40)
  {
    v37 = 0;
    v38 = 1;
    v39 = 43;
  }

  v42 = -v36;
  if (v36 < 0.0)
  {
    v13 = "-Inf";
  }

  else
  {
    v13 = v41;
  }

  if (v36 < 0.0)
  {
    v43 = 0;
  }

  else
  {
    v42 = v36;
    v43 = v37;
  }

  if (v36 < 0.0)
  {
    v44 = 1;
  }

  else
  {
    v44 = v38;
  }

  v163 = v44;
  if (v36 < 0.0)
  {
    v45 = 45;
  }

  else
  {
    v45 = v39;
  }

  v46 = v34 != 4 || v31 <= 0;
  v47 = !v46;
  v48 = v31 - v47;
  if (((v31 - v47) & 0xFFF) != 0)
  {
    v49 = (v48 & 0xFFF) + 1;
    v50 = 0.5;
    do
    {
      v50 = v50 * 0.1;
      --v49;
    }

    while (v49 > 1);
  }

  else
  {
    v50 = 0.5;
  }

  if (v34 == 2)
  {
    v80 = v42 + v50;
  }

  else
  {
    v80 = v42;
  }

  if (v80 <= 0.0)
  {
    v94 = 0;
  }

  else
  {
    v81 = 1.0;
    v82 = -100;
    v83 = -64;
    v84 = -8;
    v85 = -1;
    do
    {
      v86 = v81;
      v87 = v83;
      v88 = v84;
      v89 = v85;
      v81 = v81 * 1.0e100;
      if (v80 < v81)
      {
        break;
      }

      v82 += 100;
      v83 += 100;
      v84 += 100;
      v85 += 100;
    }

    while (v82 < 0x15F);
    do
    {
      v90 = v86;
      v91 = v88;
      v92 = v89;
      v86 = v86 * 1.0e64;
      if (v80 < v86)
      {
        break;
      }

      v87 += 64;
      v88 += 64;
      v89 += 64;
    }

    while (v87 < 0x15F);
    do
    {
      v93 = v90;
      v94 = v92;
      v90 = v90 * 100000000.0;
      if (v80 < v90)
      {
        break;
      }

      v91 += 8;
      v92 += 8;
    }

    while (v91 < 0x15F);
    do
    {
      v95 = v93;
      ++v94;
      v93 = v93 * 10.0;
    }

    while (v80 >= v93 && v94 < 0x15F);
    v80 = v80 / v95;
    while (v80 < 0.00000001)
    {
      v80 = v80 * 100000000.0;
      v94 -= 8;
    }

    while (v80 < 1.0)
    {
      v80 = v80 * 10.0;
      --v94;
    }

    if (v94 >= 351)
    {
      v96 = v27;
      v97 = v30;
      v98 = cstdlib_strlen(v13);
      v30 = v97;
      v27 = v96;
      v54 = 0;
      v32 = v98 & 0x3FFFFFFF;
      v14 = &byte_26ECCEC52;
      v10 = v177;
      goto LABEL_287;
    }
  }

  v167 = v12;
  if (v34 == 2)
  {
    goto LABEL_178;
  }

  v99 = v50 + v80;
  if (v99 < 10.0)
  {
    v80 = v99;
  }

  else
  {
    v80 = v99 * 0.1;
  }

  if (v99 >= 10.0)
  {
    ++v94;
  }

  if (v34 != 4)
  {
LABEL_178:
    v100 = v22 != 0;
    v102 = v34 == 3;
    if (v34 == 3)
    {
      v103 = 0;
    }

    else
    {
      v103 = v94;
    }
  }

  else
  {
    v100 = v24 == 0;
    v102 = v94 < -4 || v94 > v48;
    if (v102)
    {
      v103 = 0;
    }

    else
    {
      v103 = v94;
    }

    v48 -= v103;
  }

  v174 = a2;
  v104 = (v103 & ~(v103 >> 31)) + v30 + v48;
  if (v104 < 56)
  {
    v166 = 0;
    v13 = v179;
    goto LABEL_185;
  }

  v169 = v43;
  v164 = v48;
  v161 = v45;
  v172 = v27;
  v105 = v30;
  v106 = v102;
  v107 = v100;
  v108 = luaM_realloc_(a1, 0, 0, (v104 + 15));
  v100 = v107;
  v102 = v106;
  v43 = v169;
  v45 = v161;
  v48 = v164;
  v30 = v105;
  v27 = v172;
  v13 = v108;
  v166 = v108;
  if (v108)
  {
LABEL_185:
    v109 = v13;
    if (!v43)
    {
      *v13 = v45;
      v109 = v13 + 1;
    }

    v110 = 10 * v22 + 16;
    if (v103 < 0)
    {
      *v109++ = 48;
      v114 = v103 + 1;
    }

    else
    {
      v111 = v103 + 1;
      do
      {
        if (v110 < 1)
        {
          v113 = 48;
        }

        else
        {
          v112 = v80;
          v80 = (v80 - v80) * 10.0;
          v113 = v112 + 48;
          --v110;
        }

        *v109++ = v113;
        --v111;
      }

      while (v111 > 0);
      v114 = 0;
    }

    v129 = v24 | v22 | (v48 > 0);
    if (v129)
    {
      *v109++ = 46;
    }

    v10 = v177;
    if (v114 < 0)
    {
      v165 = v48;
      v173 = v27;
      v170 = v30;
      v160 = v100;
      v162 = v102;
      v159 = v129;
      memset(v109, 48, ~v114 + 1);
      v129 = v159;
      v100 = v160;
      v102 = v162;
      v48 = v165;
      v30 = v170;
      v27 = v173;
      v109 += ~v114 + 1;
      v10 = v177;
      v130 = v114 + v165;
    }

    else
    {
      v130 = v48;
    }

    if (v130 < 1)
    {
      v12 = v167;
    }

    else
    {
      v131 = v48 + (v114 & (v114 >> 31)) + 1;
      v12 = v167;
      do
      {
        if (v110 < 1)
        {
          v133 = 48;
        }

        else
        {
          v132 = v80;
          v80 = (v80 - v80) * 10.0;
          v133 = v132 + 48;
          --v110;
        }

        *v109++ = v133;
        --v131;
      }

      while (v131 > 1);
    }

    if (v129)
    {
      v134 = v100;
    }

    else
    {
      v134 = 0;
    }

    if (v134)
    {
      --v109;
      while (1)
      {
        v135 = *v109;
        if (v135 != 48)
        {
          break;
        }

        *v109-- = 0;
      }

      if (v135 == 46)
      {
        if (v22)
        {
          v109[1] = 48;
          v109 += 2;
        }

        else
        {
          *v109 = 0;
        }
      }

      else
      {
        ++v109;
      }
    }

    v54 = v166;
    if (v102)
    {
      *v109 = aDigits[v14[2]];
      if (v94 >= 0)
      {
        v145 = 43;
      }

      else
      {
        v145 = 45;
      }

      if (v94 >= 0)
      {
        v146 = v94;
      }

      else
      {
        v146 = -v94;
      }

      v109[1] = v145;
      if (v146 < 0x64)
      {
        v147 = v109 + 2;
      }

      else
      {
        v147 = v109 + 3;
        v109[2] = v146 / 0x64 + 48;
        v146 %= 0x64u;
      }

      v14 = &byte_26ECCEC52;
      *v147 = (v146 / 0xAu) | 0x30;
      v109 = v147 + 2;
      v147[1] = (v146 % 0xAu) | 0x30;
    }

    else
    {
      v14 = &byte_26ECCEC52;
    }

    *v109 = 0;
    v32 = v109 - v13;
    if (v23 && !v27 && v30 > v32)
    {
      if ((v32 & 0x80000000) == 0)
      {
        v148 = v30;
        v149 = v32;
        do
        {
          v13[v148] = v13[v149--];
          v46 = v148-- <= v30 - v32;
        }

        while (!v46);
      }

      if (v30 != v32)
      {
        v150 = v27;
        v151 = v30;
        memset(&v13[v163], 48, (~v109 + v30 + v13) + 1);
        v30 = v151;
        v27 = v150;
      }

      v32 = v30;
    }

    goto LABEL_278;
  }

  a2 = v174;
  v12 = v167;
  if (!v174)
  {
    return v12;
  }

LABEL_321:
  *(a2 + v12) = 0;
  return v12;
}

uint64_t getAllocatorLua(uint64_t a1)
{
  v2 = 0;
  lua_getallocf(a1, &v2);
  return v2;
}

uint64_t LuaStateFactory_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LuaStateFactory;
    a1[1] = &unk_287EEA028;
    a1[2] = a2;
  }

  return result;
}

uint64_t LuaStateFactory_CreateLuaState(uint64_t a1, uint64_t *a2)
{
  v3 = lua_newstate(__LuaStateFactory_CustomAlloc, *(a1 + 16));
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  return err_GenerateErrorResource();
}

uint64_t __LuaStateFactory_CustomAlloc(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a4)
    {
      if (a2)
      {
        v4 = 0;
        result = OOCAllocator_Realloc(result, a2, a4, &v4);
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        v5 = 0;
        result = OOCAllocator_Malloc(result, a4, &v5);
        if (!v5)
        {
          return result;
        }
      }
    }

    else
    {
      OOCAllocator_Free(result, a2);
    }

    return 0;
  }

  return result;
}

uint64_t PNEW_LuaStateFactory_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 24, &v8);
  result = v8;
  if (!v8)
  {
    result = Object_Con(v6);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LuaStateFactory;
      v6[1] = &unk_287EEA028;
      v6[2] = a2;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t LuaStateFactoryMemLog_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__LuaStateFactoryMemLog;
    a1[1] = &unk_287EEA050;
    a1[2] = a2;
  }

  return result;
}

uint64_t LuaStateFactoryMemLog_CreateLuaState(uint64_t a1, uint64_t *a2)
{
  v3 = lua_newstate(__LuaStateFactory_CustomAlloc_0, *(a1 + 16));
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  return err_GenerateErrorResource();
}

uint64_t __LuaStateFactory_CustomAlloc_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a4)
    {
      if (a2)
      {
        v4 = 0;
        result = OOCAllocator_Realloc(result, a2, a4, &v4);
        if (!v4)
        {
          return result;
        }
      }

      else
      {
        v5 = 0;
        result = OOCAllocator_Malloc(result, a4, &v5);
        if (!v5)
        {
          return result;
        }
      }
    }

    else
    {
      OOCAllocator_Free(result, a2);
    }

    return 0;
  }

  return result;
}

uint64_t LuaStateFactoryMemLog_CreateLuaStateWithMemoryLogging(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = lua_newstate(__LuaStateFactory_CustomAllocMemLog, a3);
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  return err_GenerateErrorResource();
}

uint64_t __LuaStateFactory_CustomAllocMemLog(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = 0;
  result = *(a1 + 8);
  if (result)
  {
    v6 = a4;
    if (a4)
    {
      if (a2)
      {
        result = OOCAllocator_Realloc(result, a2, a4, &v10);
        if (!v10)
        {
          v6 -= a3;
          goto LABEL_10;
        }
      }

      else
      {
        result = OOCAllocator_Malloc(result, a4, &v10);
        if (!v10)
        {
LABEL_10:
          v8 = *(a1 + 4);
          v9 = *a1 + v6;
          *a1 = v9;
          if (v8 < v9)
          {
            *(a1 + 4) = v9;
          }

          return result;
        }
      }
    }

    else
    {
      *a1 -= a3;
      OOCAllocator_Free(result, a2);
    }

    return 0;
  }

  return result;
}

uint64_t PNEW_LuaStateFactoryMemLog_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 24, &v8);
  result = v8;
  if (!v8)
  {
    result = Object_Con(v6);
    if (result)
    {
      v8 = result;
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *v6 = &__LuaStateFactoryMemLog;
      v6[1] = &unk_287EEA050;
      v6[2] = a2;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t getOOCObject_LuaLDO(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDO");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t pushLuaObject_LuaLDO(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDO");
    lua_setmetatable(a1, -2);
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t getRoot_LuaLDO(uint64_t *a1)
{
  v4 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v4))
  {
    v3 = *(v4 + 16);
    if (v3)
    {
      if (!pushLuaObject_LuaLDOTreeNode(a1, v3))
      {
        return 1;
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldo:getRoot");
}

uint64_t getInitialText_LuaLDO(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldo:getInitialText");
  }

  else
  {
    v3 = LHString_BorrowCPtr(*(v4 + 24));
    lua_pushstring(a1, v3);
    return 1;
  }
}

uint64_t computeText_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeText");
  }

  v2 = LDO_ComputeText(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:computeText");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:computeText");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:computeText");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t getLabelSet_LuaLDO(uint64_t *a1)
{
  v3 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v3) && !pushLuaObject_LuaLDOLabelSet(a1, *(v3 + 32)))
  {
    return 1;
  }

  return LuaVMUtil_error(a1, "Error in ldo:getLabelSet");
}

uint64_t getLabels_LuaLDO(uint64_t *a1)
{
  v9 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v9))
  {
    return LuaVMUtil_error(a1, "Error in ldo:getLabels");
  }

  LDO_GetLabels(v9, &v7);
  v3 = v7.n128_u64[1];
  v4 = v8;
  lua_createtable(a1, 0, 0);
  if (v3 < v4)
  {
    v5 = 0;
    while (!pushLuaObject_LuaLDOLabel(a1, *v3))
    {
      v6 = LuaVMUtil_u32_index_to_luainteger(v5);
      lua_rawseti(a1, -2, v6);
      ++v5;
      if (++v3 >= v4)
      {
        return 1;
      }
    }

    return LuaVMUtil_error(a1, "Error in ldo:getLabels");
  }

  return 1;
}

uint64_t setText_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  __s = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v7) || getOOCObject_LuaLDOTreeNode(a1, 2, &v6) || LuaVMUtil_luastring_to_string(a1, 3, &__s) || !__s || LDO_SetText(v7, v6, __s))
  {
    return LuaVMUtil_error(a1, "Error in ldo:setText");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t addLabel_LuaLDO(uint64_t *a1)
{
  v19 = 0;
  v20 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  __src = 0;
  v13 = 0;
  OOCObject_LuaLDO = getOOCObject_LuaLDO(a1, 1, &v20);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  if (lua_type(a1, 2))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 2, &v14);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  if (lua_type(a1, 3))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 3, &v13);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  LODWORD(v16) = 0;
  v17 = 0;
  v18 = 0;
  lua_pushnil(a1);
  if (lua_next(a1, 4))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = v20;
    do
    {
      v7 = lua_gettop(a1);
      OOCObject_LuaLDO = getOOCObject_LuaLDOTreeNode(a1, v7, &__src);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v8 = &v5[-v4];
      v9 = (&v5[-v4] >> 3) + 1;
      if (v9 > v3)
      {
        v10 = 2 * v3;
        if (2 * v3 >= v3 + 1000000)
        {
          v10 = v3 + 1000000;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v9 <= 8)
        {
          v3 = 8;
        }

        else
        {
          v3 = v9;
        }

        v11 = OOCAllocator_Realloc(*(v6 + 8), v4, 8 * v3, &OOCObject_LuaLDO);
        v17 = v11;
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        v4 = v11;
        LODWORD(v16) = v3;
        v5 = (v11 + (v8 & 0x7FFFFFFF8));
        v18 = v5;
      }

      cstdlib_memcpy(v5, &__src, 8uLL);
      v5 = v18 + 8;
      v18 += 8;
      lua_settop(a1, 0xFFFFFFFE);
    }

    while (lua_next(a1, 4));
  }

  v12 = v20;
  OOCObject_LuaLDO = LDO_AddLabel(v20, v14, v13, &v16, &v19);
  if (OOCObject_LuaLDO || (OOCObject_LuaLDO = pushLuaObject_LuaLDOLabel(a1, v19)) != 0)
  {
LABEL_2:
    LODWORD(v16) = 0;
    if (v17)
    {
      OOCAllocator_Free(*(v20 + 8), v17);
      v17 = 0;
    }

    v18 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:addLabel");
  }

  LODWORD(v16) = 0;
  if (v17)
  {
    OOCAllocator_Free(*(v12 + 8), v17);
  }

  return 1;
}

uint64_t removeLabel_LuaLDO(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v6) || getOOCObject_LuaLDOLabel(a1, 2, &v5) || LDO_RemoveLabel(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldo:removeLabel");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t computeOverlappingLabels_LuaLDO(uint64_t *a1)
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v14))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  if (lua_type(a1, 2))
  {
    v3 = &v10 + 1;
    if (LuaVMUtil_luainteger_to_u32_index(a1, 2, &v10 + 1))
    {
      return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
    }
  }

  else
  {
    v3 = 0;
  }

  if (lua_type(a1, 3))
  {
    v4 = &v10;
    if (!LuaVMUtil_luainteger_to_u32_index(a1, 3, &v10))
    {
      goto LABEL_11;
    }

    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  v4 = 0;
LABEL_11:
  if (LuaVMUtil_luaBOOLean_to_lhBOOL(a1, 4, &v9))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  v5 = v14;
  if (LDO_ComputeOverlappingLabels(v14, v3, v4, v9, &v11))
  {
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  lua_createtable(a1, 0, 0);
  v6 = v12;
  if (v12 < v13)
  {
    v7 = 0;
    while (!pushLuaObject_LuaLDOLabel(a1, *v6))
    {
      v8 = LuaVMUtil_u32_index_to_luainteger(v7);
      lua_rawseti(a1, -2, v8);
      ++v7;
      if (++v6 >= v13)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

LABEL_17:
  if (LDO_FreeLDOLabelVector(v5, &v11))
  {
LABEL_18:
    LDO_FreeLDOLabelVector(v5, &v11);
    return LuaVMUtil_error(a1, "Error in ldo:computeOverlappingLabels");
  }

  return 1;
}

uint64_t appendNewNode_LuaLDO(uint64_t *a1)
{
  v8 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v8) || getOOCObject_LuaLDOTreeNode(a1, 2, &v7) || lua_type(a1, 3) && LuaVMUtil_luastring_to_string(a1, 3, &v5) || lua_type(a1, 4) && LuaVMUtil_luastring_to_string(a1, 4, &v4) || LuaVMUtil_luainteger_to_u32_index(a1, 5, &v3 + 1) || LuaVMUtil_luainteger_to_u32_index(a1, 6, &v3) || LDO_AppendNewNode(v8, v7, v5, v4, SHIDWORD(v3), v3, &v6) || pushLuaObject_LuaLDOTreeNode(a1, v6))
  {
    return LuaVMUtil_error(a1, "Error in ldo:appendNewNode");
  }

  else
  {
    return 1;
  }
}

uint64_t addLabelOnSubstring_LuaLDO(uint64_t *a1)
{
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v9) || lua_type(a1, 2) && LuaVMUtil_luastring_to_string(a1, 2, &v7) || lua_type(a1, 3) && LuaVMUtil_luastring_to_string(a1, 3, &v6))
  {
    return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
  }

  if (lua_type(a1, 4))
  {
    v3 = &v5 + 1;
    if (LuaVMUtil_luainteger_to_u32_index(a1, 4, &v5 + 1))
    {
      return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
    }
  }

  else
  {
    v3 = 0;
  }

  if (lua_type(a1, 5))
  {
    v4 = &v5;
    if (!LuaVMUtil_luainteger_to_u32_index(a1, 5, &v5))
    {
      goto LABEL_15;
    }

    return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
  }

  v4 = 0;
LABEL_15:
  if (LDO_AddLabelOnSubstring(v9, v7, v6, v3, v4, &v8) || pushLuaObject_LuaLDOLabel(a1, v8))
  {
    return LuaVMUtil_error(a1, "Error in ldo:addLabelOnSubstring");
  }

  return 1;
}

uint64_t getNumberLabels_LuaLDO(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldo:getNumberLabels");
  }

  else
  {
    NumberLabels = LDO_GetNumberLabels(v4);
    lua_pushinteger(a1, NumberLabels);
    return 1;
  }
}

uint64_t mergeLabels_LuaLDO(uint64_t *a1)
{
  __src = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  OOCObject_LuaLDO = getOOCObject_LuaLDO(a1, 1, &v20);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  if (lua_type(a1, 2))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 2, &v14);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  if (lua_type(a1, 3))
  {
    OOCObject_LuaLDO = LuaVMUtil_luastring_to_string(a1, 3, &v13);
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }
  }

  LODWORD(v15) = 0;
  v16 = 0;
  v17 = 0;
  lua_pushnil(a1);
  if (lua_next(a1, 4))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = v20;
    do
    {
      v7 = lua_gettop(a1);
      OOCObject_LuaLDO = getOOCObject_LuaLDOLabel(a1, v7, &__src);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v8 = &v5[-v4];
      v9 = (&v5[-v4] >> 3) + 1;
      if (v9 > v3)
      {
        v10 = 2 * v3;
        if (2 * v3 >= v3 + 1000000)
        {
          v10 = v3 + 1000000;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v9 <= 8)
        {
          v3 = 8;
        }

        else
        {
          v3 = v9;
        }

        v11 = OOCAllocator_Realloc(*(v6 + 8), v4, 8 * v3, &OOCObject_LuaLDO);
        v16 = v11;
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        v4 = v11;
        LODWORD(v15) = v3;
        v5 = (v11 + (v8 & 0x7FFFFFFF8));
        v17 = v5;
      }

      cstdlib_memcpy(v5, &__src, 8uLL);
      v5 = v17 + 8;
      v17 += 8;
      lua_settop(a1, 0xFFFFFFFE);
    }

    while (lua_next(a1, 4));
  }

  v12 = v20;
  OOCObject_LuaLDO = LDO_MergeLabels(v20, &v15, v14, v13, &v18);
  if (OOCObject_LuaLDO || (OOCObject_LuaLDO = pushLuaObject_LuaLDOLabel(a1, v18)) != 0)
  {
LABEL_2:
    LODWORD(v15) = 0;
    if (v16)
    {
      OOCAllocator_Free(*(v20 + 8), v16);
      v16 = 0;
    }

    v17 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:mergeLabels");
  }

  LODWORD(v15) = 0;
  if (v16)
  {
    OOCAllocator_Free(*(v12 + 8), v16);
  }

  return 1;
}

uint64_t replaceNodes_LuaLDO(uint64_t *a1)
{
  v52 = 0;
  v53 = 0;
  v45 = 0;
  __src = 0;
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v50 = 0;
  v51 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  OOCObject_LuaLDO = getOOCObject_LuaLDO(a1, 1, &v53);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  lua_pushnil(a1);
  v4 = lua_next(a1, 2);
  v5 = v53;
  if (v4)
  {
    do
    {
      v6 = lua_gettop(a1);
      OOCObject_LuaLDO = getOOCObject_LuaLDOTreeNode(a1, v6, &__src);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v7 = v52;
      v8 = &v52[-v51];
      v9 = (&v52[-v51] >> 3) + 1;
      if (v9 > v50)
      {
        v10 = v50 + 1000000;
        if (2 * v50 < (v50 + 1000000))
        {
          v10 = 2 * v50;
        }

        if (v10 > v9)
        {
          v9 = v10;
        }

        if (v9 <= 8)
        {
          v11 = 8;
        }

        else
        {
          v11 = v9;
        }

        v12 = OOCAllocator_Realloc(*(v5 + 8), v51, 8 * v11, &OOCObject_LuaLDO);
        v2 = v12;
        v51 = v12;
        if (OOCObject_LuaLDO)
        {
          goto LABEL_3;
        }

        LODWORD(v50) = v11;
        v7 = (v12 + (v8 & 0x7FFFFFFF8));
        v52 = (v2 + (v8 & 0x7FFFFFFF8));
      }

      cstdlib_memcpy(v7, &__src, 8uLL);
      v52 += 8;
      lua_settop(a1, 0xFFFFFFFE);
    }

    while (lua_next(a1, 2));
  }

  lua_pushnil(a1);
  if (!lua_next(a1, 3))
  {
    goto LABEL_91;
  }

  do
  {
    v45 = 0;
    v13 = lua_gettop(a1);
    if (lua_type(a1, v13) != 5)
    {
      v16 = v45;
      goto LABEL_29;
    }

    v14 = PNEW_LDOTreeNode_ConRoot(*(v5 + 8), *(v5 + 8), "", 0, 0, &v45);
    if (v14)
    {
LABEL_24:
      v15 = v14;
LABEL_25:
      v16 = v45;
      if (v45)
      {
LABEL_26:
        OOC_PlacementDeleteObject(*(v5 + 8), v16);
        v45 = 0;
        OOCObject_LuaLDO = v15;
        if (!v15)
        {
          goto LABEL_41;
        }
      }

      else
      {
        OOCObject_LuaLDO = v15;
      }

LABEL_2:
      v2 = v51;
LABEL_3:
      LODWORD(v50) = 0;
      if (v2)
      {
        OOCAllocator_Free(*(v53 + 8), v2);
        v51 = 0;
      }

      v52 = 0;
      LODWORD(v47) = 0;
      if (v48)
      {
        OOCAllocator_Free(*(v53 + 8), v48);
        v48 = 0;
      }

      v49 = 0;
      return LuaVMUtil_error(a1, "Error in ldo:replaceNodes");
    }

    lua_pushnil(a1);
    if (!lua_next(a1, v13))
    {
      v36 = 1;
      goto LABEL_88;
    }

    v23 = 0;
    do
    {
      if (!lua_isstring(a1, -2))
      {
        goto LABEL_85;
      }

      v24 = lua_tolstring(a1, -2, 0);
      if (!v24)
      {
        goto LABEL_85;
      }

      v25 = v24;
      if (lua_isinteger(a1, -1))
      {
        v55 = 0;
        if (cstdlib_strcmp(v25, "par_from") || (v28 = LuaVMUtil_luainteger_to_u32_index(a1, -1, &v55 + 1)) == 0 && (LDOObject_SetU32Attribute(v45, "repl_from", SHIDWORD(v55)), !v28))
        {
          if (cstdlib_strcmp(v25, "par_to"))
          {
            goto LABEL_85;
          }

          v28 = LuaVMUtil_luainteger_to_u32_index(a1, -1, &v55);
          if (!v28)
          {
            LDOObject_SetU32Attribute(v45, "repl_to", v55);
          }
        }

LABEL_84:
        v15 = v28;
        if (v28)
        {
          goto LABEL_25;
        }

        goto LABEL_85;
      }

      if (lua_isstring(a1, -1))
      {
        v26 = lua_tolstring(a1, -1, 0);
        if (!v26)
        {
          goto LABEL_85;
        }

        v27 = v26;
        if (!cstdlib_strcmp(v25, "text"))
        {
          v14 = LDOTreeNode_SetText(v45, v27);
          if (v14)
          {
            goto LABEL_24;
          }

          v23 = 1;
          goto LABEL_85;
        }

        if (cstdlib_strcmp(v25, "nc"))
        {
          if (cstdlib_strcmp(v25, "nt"))
          {
            goto LABEL_85;
          }

          v28 = LDOObject_SetType(v45, v27);
        }

        else
        {
          v28 = LDOObject_SetCategory(v45, v27);
        }

        goto LABEL_84;
      }

      if (lua_type(a1, -1) == 5 && !cstdlib_strcmp(v25, "attr"))
      {
        v29 = lua_gettop(a1);
        lua_pushnil(a1);
        while (lua_next(a1, v29))
        {
          if (!lua_isstring(a1, -2))
          {
            break;
          }

          v30 = lua_tolstring(a1, -2, 0);
          if (!v30)
          {
            break;
          }

          v31 = v30;
          if (lua_isinteger(a1, -1))
          {
            v32 = lua_tointegerx(a1, -1, 0);
            v33 = v45;
            v34 = v31;
            if ((v32 & 0x80000000) == 0)
            {
              goto LABEL_73;
            }

            LDOObject_SetS32Attribute(v45, v31, v32);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else if (lua_type(a1, -1) == 1)
          {
            v32 = lua_toBOOLean(a1, -1) == 1;
            v33 = v45;
            v34 = v31;
LABEL_73:
            LDOObject_SetU32Attribute(v33, v34, v32);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          else if (lua_isstring(a1, -1))
          {
            v35 = lua_tolstring(a1, -1, 0);
            if (!v35)
            {
              break;
            }

            v14 = LDOObject_SetStringAttribute(v45, v31, v35);
            if (v14)
            {
              goto LABEL_24;
            }
          }

          lua_settop(a1, 0xFFFFFFFE);
          continue;
        }
      }

LABEL_85:
      lua_settop(a1, 0xFFFFFFFE);
    }

    while (lua_next(a1, v13));
    v36 = v23 != 1;
LABEL_88:
    v16 = v45;
    if (v45 && v36)
    {
      v15 = 0;
      goto LABEL_26;
    }

LABEL_29:
    OOCObject_LuaLDO = 0;
    if (!v16)
    {
      goto LABEL_41;
    }

    v17 = v49;
    v18 = v49 - v48;
    v19 = ((v49 - v48) >> 3) + 1;
    if (v19 <= v47)
    {
      goto LABEL_40;
    }

    v20 = v47 + 1000000;
    if (2 * v47 < (v47 + 1000000))
    {
      v20 = 2 * v47;
    }

    if (v20 > v19)
    {
      v19 = v20;
    }

    if (v19 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v19;
    }

    v22 = OOCAllocator_Realloc(*(v5 + 8), v48, 8 * v21, &OOCObject_LuaLDO);
    v48 = v22;
    if (OOCObject_LuaLDO)
    {
      goto LABEL_2;
    }

    LODWORD(v47) = v21;
    v17 = (v22 + (v18 & 0x7FFFFFFF8));
    v49 = v17;
LABEL_40:
    cstdlib_memcpy(v17, &v45, 8uLL);
    v49 += 8;
LABEL_41:
    lua_settop(a1, 0xFFFFFFFE);
  }

  while (lua_next(a1, 3));
LABEL_91:
  OOCObject_LuaLDO = LDO_ReplaceNodes(v5, &v50, &v47);
  if (OOCObject_LuaLDO)
  {
    goto LABEL_2;
  }

  v37 = v48;
  if (v48 < v49)
  {
    do
    {
      OOCObject_LuaLDO = LDOObject_GetStringAttribute(*v37, "label_category", &v44 + 1, &v42);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      if (!HIDWORD(v44))
      {
        v42 = 0;
      }

      OOCObject_LuaLDO = LDOObject_GetStringAttribute(*v37, "label_type", &v44, &v41);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      if (!v44)
      {
        v41 = 0;
      }

      if (v44 == 1 || HIDWORD(v44) == 1)
      {
        OOCObject_LuaLDO = LDOTreeNode_ComputeAbsoluteFrom(*v37, &v43 + 1);
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        OOCObject_LuaLDO = LDOTreeNode_ComputeAbsoluteTo(*v37, &v43);
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }

        OOCObject_LuaLDO = LDOLabelSet_AddLabel(*(v5 + 32), 0);
        if (OOCObject_LuaLDO)
        {
          goto LABEL_2;
        }
      }

      ++v37;
    }

    while (v37 < v49);
  }

  lua_createtable(a1, 0, 0);
  v38 = v48;
  if (v48 < v49)
  {
    v39 = 0;
    do
    {
      OOCObject_LuaLDO = pushLuaObject_LuaLDOTreeNode(a1, *v38);
      if (OOCObject_LuaLDO)
      {
        goto LABEL_2;
      }

      v40 = LuaVMUtil_u32_index_to_luainteger(v39);
      lua_rawseti(a1, -2, v40);
      ++v39;
      ++v38;
    }

    while (v38 < v49);
  }

  LODWORD(v50) = 0;
  if (v51)
  {
    OOCAllocator_Free(*(v5 + 8), v51);
    v51 = 0;
  }

  v52 = 0;
  LODWORD(v47) = 0;
  if (v48)
  {
    OOCAllocator_Free(*(v5 + 8), v48);
  }

  return 1;
}

uint64_t toString_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDO(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldo:tostring");
  }

  v2 = LDO_ToString(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t computeLabelText_LuaLDO(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v8) && !getOOCObject_LuaLDOLabel(a1, 2, &v7))
  {
    v2 = LDOLabel_ComputeText(v7, &v6);
    v3 = v6;
    if (!v2)
    {
      if (!LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
      {
        return 1;
      }

      v3 = v6;
    }

    if (v3)
    {
      v4 = LDOString_BorrowAllocator(v3);
      OOC_PlacementDeleteObject(v4, v6);
      v6 = 0;
    }
  }

  return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
}

uint64_t computeNodesCoveredByLabel_LuaLDO(uint64_t *a1)
{
  v10 = 0;
  v11 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!getOOCObject_LuaLDO(a1, 1, &v11) && !getOOCObject_LuaLDOLabel(a1, 2, &v10))
  {
    v2 = v11;
    if (!LDO_ComputeNodesCoveredByLabel(v11, v10, &v7))
    {
      lua_createtable(a1, 0, 0);
      v3 = v8;
      if (v8 >= v9)
      {
LABEL_8:
        if (!LDO_FreeLDOTreeNodeVector(v2, &v7))
        {
          return 1;
        }
      }

      else
      {
        v4 = 0;
        while (!pushLuaObject_LuaLDOTreeNode(a1, *v3))
        {
          v5 = LuaVMUtil_u32_index_to_luainteger(v4);
          lua_rawseti(a1, -2, v5);
          ++v4;
          if (++v3 >= v9)
          {
            goto LABEL_8;
          }
        }
      }

      LDO_FreeLDOTreeNodeVector(v2, &v7);
    }
  }

  return LuaVMUtil_error(a1, "Error in ldo:get_nodes_covered_by_label");
}

uint64_t luaopen_LDO(void *a1)
{
  newMetatableLua(a1, "vocalizer.LDO");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  luaL_setfuncs(a1, &lib_m, 0, v2, v3, v4, v5, v6);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDO");
  return 0;
}

uint64_t getOOCObject_LuaLDOLabel(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDOLabel");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t pushLuaObject_LuaLDOLabel(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDOLabel");
    lua_setmetatable(a1, -2);
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t getAbsoluteFrom_LuaLDOLabel(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getAbsoluteFrom");
  }

  else
  {
    AbsoluteFrom = LDOLabel_GetAbsoluteFrom(v5);
    v4 = LuaVMUtil_u32_index_to_luainteger(AbsoluteFrom);
    lua_pushinteger(a1, v4);
    return 1;
  }
}

uint64_t getAbsoluteTo_LuaLDOLabel(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getAbsoluteTo");
  }

  else
  {
    AbsoluteTo = LDOLabel_GetAbsoluteTo(v5);
    v4 = LuaVMUtil_u32_index_to_luainteger(AbsoluteTo);
    lua_pushinteger(a1, v4);
    return 1;
  }
}

uint64_t isValid_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:isValid");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(*(v4 + 104));
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t invalidate_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4) || LDOLabel_Invalidate(v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:invalidate");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t getReferenceFrom_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getReferenceFrom");
  }

  else
  {
    v3 = LuaVMUtil_u32_index_to_luainteger(*(v4 + 96));
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t getReferenceTo_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:getReferenceTo");
  }

  else
  {
    v3 = LuaVMUtil_u32_index_to_luainteger(*(v4 + 100));
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t setReferenceFrom_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v6) || LuaVMUtil_luainteger_to_u32_index(a1, 2, &v5) || LDOLabel_SetReferenceFrom(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:setReferenceFrom");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t setReferenceTo_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v6) || LuaVMUtil_luainteger_to_u32_index(a1, 2, &v5) || LDOLabel_SetReferenceTo(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:setReferenceTo");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t hasReferenceIndices_LuaLDOLabel(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:hasReferenceIndices");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(*(v4 + 108));
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t compareTo_LuaLDOLabel(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5) || getOOCObject_LuaLDOLabel(a1, 2, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:compareTo");
  }

  else
  {
    v3 = LDOLabel_CompareTo(v5, v4);
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t compareToWithID_LuaLDOLabel(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v5) || getOOCObject_LuaLDOLabel(a1, 2, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabel:compareToWithID");
  }

  else
  {
    v3 = LDOLabel_CompareToWithID(v5, v4);
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t toString_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
  }

  v2 = (*(*v7 + 24))(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldolabel:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t containsNode_LuaLDOLabel(void *a1)
{
  v5 = 0;
  v6 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v6) || getOOCObject_LuaLDOTreeNode(a1, 2, &v5) || LDOLabel_ContainsNode(v6, v5, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:contains_node");
  }

  v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
  lua_pushBOOLean(a1, v3);
  return 1;
}

uint64_t addNode_LuaLDOLabel(void *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:add_node");
  }

  if (getOOCObject_LuaLDOTreeNode(a1, 2, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:add_node");
  }

  result = LDOLabel_AddNode(v4, v3);
  if (result)
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:add_node");
  }

  return result;
}

uint64_t addNodes_LuaLDOLabel(void *a1)
{
  __src = 0;
  v20 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  OOCObject_LuaLDOLabel = getOOCObject_LuaLDOLabel(a1, 1, &v20);
  if (OOCObject_LuaLDOLabel)
  {
    goto LABEL_2;
  }

  LODWORD(v16) = 0;
  v17 = 0;
  v18 = 0;
  lua_pushnil(a1);
  if (lua_next(a1, 2))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = v20;
    do
    {
      v8 = lua_gettop(a1);
      OOCObject_LuaLDOLabel = getOOCObject_LuaLDOTreeNode(a1, v8, &__src);
      if (OOCObject_LuaLDOLabel)
      {
        goto LABEL_2;
      }

      v9 = &v6[-v5];
      v10 = (&v6[-v5] >> 3) + 1;
      if (v10 > v4)
      {
        v11 = 2 * v4;
        if (2 * v4 >= v4 + 1000000)
        {
          v11 = v4 + 1000000;
        }

        if (v11 > v10)
        {
          v10 = v11;
        }

        if (v10 <= 8)
        {
          v4 = 8;
        }

        else
        {
          v4 = v10;
        }

        v12 = LDOObject_BorrowAllocator(v7);
        v13 = OOCAllocator_Realloc(v12, v5, 8 * v4, &OOCObject_LuaLDOLabel);
        v17 = v13;
        if (OOCObject_LuaLDOLabel)
        {
          goto LABEL_2;
        }

        v5 = v13;
        LODWORD(v16) = v4;
        v6 = (v13 + (v9 & 0x7FFFFFFF8));
        v18 = v6;
      }

      cstdlib_memcpy(v6, &__src, 8uLL);
      v6 = v18 + 8;
      v18 += 8;
      lua_settop(a1, 0xFFFFFFFE);
    }

    while (lua_next(a1, 2));
  }

  v14 = v20;
  OOCObject_LuaLDOLabel = LDOLabel_AddNodes(v20, &v16);
  if (OOCObject_LuaLDOLabel)
  {
LABEL_2:
    LODWORD(v16) = 0;
    if (v17)
    {
      v2 = LDOObject_BorrowAllocator(v20);
      OOCAllocator_Free(v2, v17);
      v17 = 0;
    }

    v18 = 0;
    return LuaVMUtil_error(a1, "Error in ldolabel:add_nodes");
  }

  LODWORD(v16) = 0;
  if (v17)
  {
    v15 = LDOObject_BorrowAllocator(v14);
    OOCAllocator_Free(v15, v17);
  }

  return 0;
}

uint64_t removeNode_LuaLDOLabel(void *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:remove_node");
  }

  if (getOOCObject_LuaLDOTreeNode(a1, 2, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:remove_node");
  }

  result = LDOLabel_RemoveNode(v4, v3);
  if (result)
  {
    return LuaVMUtil_error(a1, "Error in ldolabel:remove_node");
  }

  return result;
}

uint64_t computeText_LuaLDOLabel(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOLabel(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
  }

  v2 = LDOLabel_ComputeText(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldo:get_label_text");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t luaopen_LDOLabel(uint64_t *a1)
{
  newMetatableLua(a1, "vocalizer.LDOLabel");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  getMetatableLua(a1, "vocalizer.LDOObject");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  lua_setmetatable(a1, -2);
  luaL_setfuncs(a1, &lib_m_0, 0, v2, v3, v4, v5, v6);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDOLabel");
  return 0;
}

uint64_t getOOCObject_LuaLDOLabelSet(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDOLabelSet");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t pushLuaObject_LuaLDOLabelSet(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDOLabelSet");
    lua_setmetatable(a1, -2);
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t getLabels_LuaLDOLabelSet(uint64_t *a1)
{
  v7 = 0;
  if (!getOOCObject_LuaLDOLabelSet(a1, 1, &v7))
  {
    v3 = *(v7 + 24);
    v4 = *(v7 + 32);
    lua_createtable(a1, 0, 0);
    if (v3 >= v4)
    {
      return 1;
    }

    v5 = 0;
    while (!pushLuaObject_LuaLDOLabel(a1, *v3))
    {
      v6 = LuaVMUtil_u32_index_to_luainteger(v5);
      lua_rawseti(a1, -2, v6);
      ++v5;
      if (++v3 >= v4)
      {
        return 1;
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldolabelset:getLabels");
}

uint64_t addLabel_LuaLDOLabelSet(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOLabelSet(a1, 1, &v6) || getOOCObject_LuaLDOLabel(a1, 2, &v5) || LDOLabelSet_AddLabel(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabelset:addLabel");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t removeLabel_LuaLDOLabelSet(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOLabelSet(a1, 1, &v6) || getOOCObject_LuaLDOLabel(a1, 2, &v5) || LDOLabelSet_RemoveLabel(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldolabelset:removeLabel");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t getNumberLabels_LuaLDOLabelSet(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOLabelSet(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldolabelset:getNumberLabels");
  }

  else
  {
    NumberLabels = LDOLabelSet_GetNumberLabels(v4);
    lua_pushinteger(a1, NumberLabels);
    return 1;
  }
}

uint64_t computeOverlappingLabels_LuaLDOLabelSet(uint64_t *a1)
{
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (!getOOCObject_LuaLDOLabelSet(a1, 1, &v12) && !LuaVMUtil_luainteger_to_u32_index(a1, 2, &v8 + 1) && !LuaVMUtil_luainteger_to_u32_index(a1, 3, &v8) && !LuaVMUtil_luaBOOLean_to_lhBOOL(a1, 4, &v7))
  {
    v2 = v12;
    if (!LDOLabelSet_ComputeOverlappingLabels(v12, HIDWORD(v8), v8, v7, &v9))
    {
      lua_createtable(a1, 0, 0);
      v3 = v10;
      if (v10 >= v11)
      {
LABEL_10:
        if (!LDOLabelSet_FreeLDOLabelVector(v2, &v9))
        {
          return 1;
        }
      }

      else
      {
        v4 = 0;
        while (!pushLuaObject_LuaLDOLabel(a1, *v3))
        {
          v5 = LuaVMUtil_u32_index_to_luainteger(v4);
          lua_rawseti(a1, -2, v5);
          ++v4;
          if (++v3 >= v11)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  LDOLabelSet_FreeLDOLabelVector(v12, &v9);
  return LuaVMUtil_error(a1, "Error in ldolabelset:computeOverlappingLabels");
}

uint64_t toString_LuaLDOLabelSet(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOLabelSet(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldolabelset:tostring");
  }

  v2 = LDOLabelSet_ToString(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldolabelset:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldolabelset:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldolabelset:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t luaopen_LDOLabelSet(void *a1)
{
  newMetatableLua(a1, "vocalizer.LDOLabelSet");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  luaL_setfuncs(a1, &lib_m_1, 0, v2, v3, v4, v5, v6);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDOLabelSet");
  return 0;
}

uint64_t getOOCObject_LuaLDOObject(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDOObject");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t pushLuaObject_LuaLDOObject(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDOObject");
    lua_setmetatable(a1, -2);
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t getID_LuaLDOObject(void *a1)
{
  v3 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v3))
  {

    return LuaVMUtil_error(a1, "Error in ldoobject:getID");
  }

  else
  {
    lua_pushinteger(a1, *(v3 + 16));
    return 1;
  }
}

uint64_t getCategory_LuaLDOObject(void *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v4) || LDOObject_GetCategory(v4, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldoobject:getCategory");
  }

  lua_pushstring(a1, v3);
  return 1;
}

uint64_t getType_LuaLDOObject(void *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v4) || LDOObject_GetType(v4, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldoobject:getType");
  }

  lua_pushstring(a1, v3);
  return 1;
}

uint64_t setCategory_LuaLDOObject(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v6) || LuaVMUtil_luastring_to_string(a1, 2, &v5) || LDOObject_SetCategory(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldoobject:setCategory");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t setType_LuaLDOObject(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v6) || LuaVMUtil_luastring_to_string(a1, 2, &v5) || LDOObject_SetType(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldoobject:setType");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t isEqual_LuaLDOObject(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v6) || getOOCObject_LuaLDOObject(a1, 2, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldoobject:isEqual");
  }

  else
  {
    IsEqual = LDOObject_IsEqual(v6, v5);
    v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(IsEqual);
    lua_pushBOOLean(a1, v4);
    return 1;
  }
}

uint64_t getAttribute_LuaLDOObject(void *a1)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (!getOOCObject_LuaLDOObject(a1, 1, &v13) && !LuaVMUtil_luastring_to_string(a1, 2, &v12))
  {
    if (v12)
    {
      v3 = v13;
      if (!LDOObject_GetS32Attribute(v13, v12, &v11 + 1, &v10 + 1))
      {
        if (HIDWORD(v11) == 1)
        {
          v4 = SHIDWORD(v10);
LABEL_9:
          lua_pushinteger(a1, v4);
          return 1;
        }

        if (!LDOObject_GetU32Attribute(v3, v12, &v11 + 1, &v11))
        {
          if (HIDWORD(v11) == 1)
          {
            v4 = v11;
            goto LABEL_9;
          }

          if (!LDOObject_GetBoolAttribute(v3, v12, &v11 + 1, &v10))
          {
            if (HIDWORD(v11) == 1)
            {
              lua_pushBOOLean(a1, v10);
              return 1;
            }

            if (!LDOObject_GetStringAttribute(v3, v12, &v11 + 1, &v9))
            {
              if (HIDWORD(v11) == 1)
              {
                lua_pushstring(a1, v9);
                return 1;
              }

              if (!LDOObject_GetListU32Attribute(v3, v12, &v11 + 1, &v8, &v7))
              {
                if (HIDWORD(v11) == 1)
                {
                  lua_createtable(a1, 0, 0);
                  if (v7)
                  {
                    for (i = 0; i < v7; ++i)
                    {
                      lua_pushinteger(a1, *(v8 + 4 * i));
                      v6 = LuaVMUtil_u32_index_to_luainteger(i);
                      lua_rawseti(a1, -2, v6);
                    }

                    OOCAllocator_Free(v3[1], v8);
                  }
                }

                else
                {
                  lua_pushnil(a1);
                }

                return 1;
              }
            }
          }
        }
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldoobject:getAttribute");
}

uint64_t setAttribute_LuaLDOObject(void *a1)
{
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  if (!getOOCObject_LuaLDOObject(a1, 1, &v11) && !LuaVMUtil_luastring_to_string(a1, 2, &v10) && v10)
  {
    if (lua_isinteger(a1, 3))
    {
      if (!LuaVMUtil_luainteger_to_s32(a1, 3, &v9 + 1))
      {
        if (v9 < 0)
        {
          LDOObject_SetS32Attribute(v11, v10, SHIDWORD(v9));
          if (!v6)
          {
            goto LABEL_24;
          }
        }

        else
        {
          LDOObject_SetU32Attribute(v11, v10, SHIDWORD(v9));
          if (!v4)
          {
LABEL_24:
            v2 = 1;
            v7 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
            lua_pushBOOLean(a1, v7);
            return v2;
          }
        }
      }
    }

    else if (lua_type(a1, 3) == 1)
    {
      if (!LuaVMUtil_luaBOOLean_to_lhBOOL(a1, 3, &v9))
      {
        LDOObject_SetBoolAttribute(v11, v10, v9);
        if (!v5)
        {
          goto LABEL_24;
        }
      }
    }

    else if (lua_isstring(a1, 3))
    {
      if (!LuaVMUtil_luastring_to_string(a1, 3, &v8) && v8 && !LDOObject_SetStringAttribute(v11, v10, v8))
      {
        goto LABEL_24;
      }
    }

    else if (lua_type(a1, 3) != 5 || !hlp_set_listu32_attribute(a1, v11, v10))
    {
      goto LABEL_24;
    }
  }

  return LuaVMUtil_error(a1, "Error in ldoobject:setAttribute");
}

uint64_t hlp_set_listu32_attribute(void *a1, uint64_t a2, char *a3)
{
  v8 = 0;
  v7 = 0;
  v5 = LuaVMUtil_luatable_to_u32array(a1, 3, *(a2 + 8), &v8, &v7);
  if (!v5)
  {
    v5 = LDOObject_SetListU32Attribute(a2, a3, v8, v7);
  }

  if (v8)
  {
    OOCAllocator_Free(*(a2 + 8), v8);
  }

  return v5;
}

uint64_t getAttributes_LuaLDOObject(void *a1)
{
  v18 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v18))
  {
LABEL_2:

    return LuaVMUtil_error(a1, "Error in ldoobject:getAttributes");
  }

  else
  {
    v3 = *(v18 + 32);
    v4 = *(v18 + 40);
    lua_createtable(a1, 0, 0);
    while (v3 < v4)
    {
      v6 = *(v3 + 8);
      v5 = *(v3 + 12);
      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      v9 = LHString_BorrowCPtr(*v3);
      lua_pushstring(a1, v9);
      if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            goto LABEL_2;
          }

          v11 = a1;
          v12 = v7;
        }

        else
        {
          v11 = a1;
          v12 = v5;
        }

        lua_pushinteger(v11, v12);
      }

      else
      {
        switch(v6)
        {
          case 4:
            v17 = LuaVMUtil_lhBOOL_to_luaBOOLean(v5);
            lua_pushBOOLean(a1, v17);
            break;
          case 3:
            lua_createtable(a1, 0, 0);
            v13 = *(v8 + 8);
            if (v13 < *(v8 + 16))
            {
              v14 = 0;
              do
              {
                v15 = *v13++;
                lua_pushinteger(a1, v15);
                v16 = LuaVMUtil_u32_index_to_luainteger(v14);
                lua_rawseti(a1, -2, v16);
                ++v14;
              }

              while (v13 < *(v8 + 16));
            }

            break;
          case 2:
            v10 = LHString_BorrowCPtr(v8);
            lua_pushstring(a1, v10);
            break;
          default:
            goto LABEL_2;
        }
      }

      lua_settable(a1, -3);
      v3 += 32;
    }

    return 1;
  }
}

uint64_t removeAttribute_LuaLDOObject(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v6) || LuaVMUtil_luastring_to_string(a1, 2, &v5) || !v5 || LDOObject_RemoveAttribute(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldoobject:removeAttribute");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t removeAttributes_LuaLDOObject(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v4) || LDOObject_RemoveAttributes(v4))
  {

    return LuaVMUtil_error(a1, "Error in ldoobject:removeAttributes");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t toString_LuaLDOObject(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOObject(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldoobject:tostring");
  }

  v2 = (*(*v7 + 24))(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldoobject:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldoobject:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldoobject:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t luaopen_LDOObject(void *a1)
{
  newMetatableLua(a1, "vocalizer.LDOObject");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  luaL_setfuncs(a1, &lib_m_2, 0, v2, v3, v4, v5, v6);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDOObject");
  return 0;
}

uint64_t getOOCObject_LuaLDOTreeNode(void *a1, uint64_t a2, void *a3)
{
  v4 = luaL_checkudata(a1, a2, "vocalizer.LDOTreeNode");
  if (v4)
  {
    *a3 = *v4;
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t pushLuaObject_LuaLDOTreeNode(uint64_t *a1, uint64_t a2)
{
  v4 = lua_newuserdata(a1, 8uLL);
  if (v4)
  {
    *v4 = a2;
    getMetatableLua(a1, "vocalizer.LDOTreeNode");
    lua_setmetatable(a1, -2);
    return 0;
  }

  else
  {

    return err_GenerateErrorResource();
  }
}

uint64_t isRoot_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:isRoot");
  }

  else
  {
    IsRoot = LDOTreeNode_IsRoot(v5);
    v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(IsRoot);
    lua_pushBOOLean(a1, v4);
    return 1;
  }
}

uint64_t isLeaf_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:isLeaf");
  }

  else
  {
    IsLeaf = LDOTreeNode_IsLeaf(v5);
    v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(IsLeaf);
    lua_pushBOOLean(a1, v4);
    return 1;
  }
}

uint64_t computeText_LuaLDOTreeNode(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeText");
  }

  v2 = LDOTreeNode_ComputeText(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldotreenode:computeText");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeText");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldotreenode:computeText");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t setText_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  v6 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v6) || LuaVMUtil_luastring_to_string(a1, 2, &v5) || !v5 || LDOTreeNode_SetText(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:setText");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t getParent_LuaLDOTreeNode(uint64_t *a1)
{
  v4 = 0;
  if (!getOOCObject_LuaLDOTreeNode(a1, 1, &v4))
  {
    v3 = *(v4 + 64);
    if (v3)
    {
      if (!pushLuaObject_LuaLDOTreeNode(a1, v3))
      {
        return 1;
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldotreenode:getParent");
}

uint64_t getChildren_LuaLDOTreeNode(uint64_t *a1)
{
  v7 = 0;
  if (!getOOCObject_LuaLDOTreeNode(a1, 1, &v7))
  {
    v3 = *(v7 + 80);
    v4 = *(v7 + 88);
    lua_createtable(a1, 0, 0);
    if (v3 >= v4)
    {
      return 1;
    }

    v5 = 0;
    while (!pushLuaObject_LuaLDOTreeNode(a1, *v3))
    {
      v6 = LuaVMUtil_u32_index_to_luainteger(v5);
      lua_rawseti(a1, -2, v6);
      ++v5;
      if (++v3 >= v4)
      {
        return 1;
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in ldotreenode:getChildren");
}

uint64_t getNumberChildren_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:getNumberChildren");
  }

  else
  {
    NumberChildren = LDOTreeNode_GetNumberChildren(v5);
    v4 = LuaVMUtil_u32_to_luainteger(NumberChildren);
    lua_pushinteger(a1, v4);
    return 1;
  }
}

uint64_t getParentFrom_LuaLDOTreeNode(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:getParentFrom");
  }

  else
  {
    v3 = LuaVMUtil_u32_index_to_luainteger(*(v4 + 104));
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t getParentTo_LuaLDOTreeNode(void *a1)
{
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:getParentTo");
  }

  else
  {
    v3 = LuaVMUtil_u32_index_to_luainteger(*(v4 + 108));
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t setParent_LuaLDOTreeNode(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || getOOCObject_LuaLDOTreeNode(a1, 2, &v4) || LDOTreeNode_SetParent(v5, v4))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:setParent");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t getPreviousSibling_LuaLDOTreeNode(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v4) || LDOTreeNode_GetPreviousSibling(v4, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:get_previous_sibling");
  }

  if (v3)
  {
    if (pushLuaObject_LuaLDOTreeNode(a1, v3))
    {
      return LuaVMUtil_error(a1, "Error in ldotreenode:get_previous_sibling");
    }
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t getNextSibling_LuaLDOTreeNode(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v4) || LDOTreeNode_GetNextSibling(v4, &v3))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:get_next_sibling");
  }

  if (v3)
  {
    if (pushLuaObject_LuaLDOTreeNode(a1, v3))
    {
      return LuaVMUtil_error(a1, "Error in ldotreenode:get_next_sibling");
    }
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t computeRoot_LuaLDOTreeNode(uint64_t *a1)
{
  v3 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v4) || LDOTreeNode_ComputeRoot(v4, &v3) || pushLuaObject_LuaLDOTreeNode(a1, v3))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeRoot");
  }

  else
  {
    return 1;
  }
}

uint64_t computeAbsoluteFrom_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || LDOTreeNode_ComputeAbsoluteFrom(v5, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeAbsoluteFrom");
  }

  v3 = LuaVMUtil_u32_index_to_luainteger(v4);
  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t computeAbsoluteTo_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || LDOTreeNode_ComputeAbsoluteTo(v5, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeAbsoluteTo");
  }

  v3 = LuaVMUtil_u32_index_to_luainteger(v4);
  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t computeUpdateInfo_LuaLDOTreeNode(void *a1)
{
  __s = 0;
  *v7 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, v7) || LuaVMUtil_luastring_to_string(a1, 2, &__s) || !__s || LDOTreeNode_ComputeUpdateInfo(*v7, __s, &v5 + 1, &v5))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeUpdateInfo");
  }

  v3 = LuaVMUtil_u32_index_to_luainteger(SHIDWORD(v5));
  lua_pushinteger(a1, v3);
  v4 = LuaVMUtil_s32_to_luainteger(v5);
  lua_pushinteger(a1, v4);
  return 2;
}

uint64_t removeChildAtIndex_LuaLDOTreeNode(void *a1)
{
  v6 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v6) || LuaVMUtil_luainteger_to_u32_index(a1, 2, &v5) || LDOTreeNode_RemoveChildAtIndex(v6, v5))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:removeChildAtIndex");
  }

  v2 = 1;
  v4 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
  lua_pushBOOLean(a1, v4);
  return v2;
}

uint64_t removeChild_LuaLDOTreeNode(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || getOOCObject_LuaLDOTreeNode(a1, 2, &v4) || LDOTreeNode_RemoveChild(v5, v4))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:removeChild");
  }

  else
  {
    v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(1);
    lua_pushBOOLean(a1, v3);
    return 1;
  }
}

uint64_t compareTo_LuaLDOTreeNode(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || getOOCObject_LuaLDOTreeNode(a1, 2, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:compareTo");
  }

  else
  {
    v3 = LDOTreeNode_CompareTo(v5, v4);
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t compareToWithID_LuaLDOTreeNode(void *a1)
{
  v4 = 0;
  v5 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || getOOCObject_LuaLDOTreeNode(a1, 2, &v4))
  {

    return LuaVMUtil_error(a1, "Error in ldotreenode:compareToWithID");
  }

  else
  {
    v3 = LDOTreeNode_CompareToWithID(v5, v4);
    lua_pushinteger(a1, v3);
    return 1;
  }
}

uint64_t computeIndexInParent_LuaLDOTreeNode(void *a1)
{
  v5 = 0;
  v4 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v5) || LDOTreeNode_ComputeIndexInParent(v5, &v4))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:computeIndexInParent");
  }

  v3 = LuaVMUtil_u32_index_to_luainteger(v4);
  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t toString_LuaLDOTreeNode(void *a1)
{
  v6 = 0;
  v7 = 0;
  if (getOOCObject_LuaLDOTreeNode(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in ldotreenode:tostring");
  }

  v2 = (*(*v7 + 24))(v7, &v6);
  v3 = v6;
  if (v2)
  {
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldotreenode:tostring");
    }

LABEL_4:
    v4 = LDOString_BorrowAllocator(v3);
    OOC_PlacementDeleteObject(v4, v6);
    v6 = 0;
    return LuaVMUtil_error(a1, "Error in ldotreenode:tostring");
  }

  if (LuaVMUtil_pushLuaStringAndDestroy(a1, v6))
  {
    v3 = v6;
    if (!v6)
    {
      return LuaVMUtil_error(a1, "Error in ldotreenode:tostring");
    }

    goto LABEL_4;
  }

  return 1;
}

uint64_t luaopen_LDOTreeNode(uint64_t *a1)
{
  newMetatableLua(a1, "vocalizer.LDOTreeNode");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  getMetatableLua(a1, "vocalizer.LDOObject");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "__index");
  lua_setmetatable(a1, -2);
  luaL_setfuncs(a1, &lib_m_3, 0, v2, v3, v4, v5, v6);
  lua_createtable(a1, 0, 0);
  lua_setglobal(a1, "LDOTreeNode");
  return 0;
}

uint64_t init_LuaLog(void *a1)
{
  if (lua_type(a1, 1) == 2 && lua_type(a1, 2) == 2 && lua_type(a1, 3) == 2)
  {
    if (lua_type(a1, 4) == 2 && lua_type(a1, 5) == 2)
    {
      lua_setfield(a1, -1001000, "LUA_LOG_PEAK_ALLOCATED_BYTES");
      lua_setfield(a1, -1001000, "LUA_LOG_ALLOCATED_BYTES");
    }

    lua_setfield(a1, -1001000, "LUA_LOG_PMODULE");
    lua_setfield(a1, -1001000, "LUA_LOG_HHEAP");
    lua_setfield(a1, -1001000, "LUA_LOG_HLOG");
  }

  return 0;
}

uint64_t getLevel_LuaLog(void *a1)
{
  if (lua_getfield(a1, -1001000, "LUA_LOG_HLOG") == 2)
  {
    v2 = lua_touserdata(a1, -1);
    LogLevel = log_GetLogLevel(v2);
  }

  else
  {
    LogLevel = 0;
  }

  v4 = LuaVMUtil_u32_to_luainteger(LogLevel);
  lua_pushinteger(a1, v4);
  return 1;
}

uint64_t log_LuaLog(void *a1)
{
  v2 = lua_gettop(a1);
  if (v2)
  {
    v3 = v2;
    if (lua_isstring(a1, 1))
    {
      v4 = lua_tolstring(a1, 1, 0);
      if (v3 >= 2 && lua_isinteger(a1, 2))
      {
        v5 = lua_tointegerx(a1, 2, 0);
      }

      else
      {
        v5 = 4;
      }

      if (lua_getfield(a1, -1001000, "LUA_LOG_HLOG") == 2)
      {
        v6 = lua_touserdata(a1, -1);
        if (log_GetLogLevel(v6) >= v5 && lua_getfield(a1, -1001000, "LUA_LOG_PMODULE") == 2)
        {
          v7 = lua_touserdata(a1, -1);
          log_OutText(v6, v7, v5, 0, "[lua] %s", v8, v9, v10, v4);
          lua_gettop(a1);
        }
      }
    }
  }

  return 0;
}

uint64_t logvm_LuaLog(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__dst = 0u;
  v13 = 0u;
  *__s2 = 0;
  v11 = 0;
  if (lua_getfield(a1, -1001000, "LUA_LOG_HLOG") == 2)
  {
    v2 = lua_touserdata(a1, -1);
    if (log_GetLogLevel(v2) >= 4 && lua_getfield(a1, -1001000, "LUA_LOG_PMODULE") == 2)
    {
      v3 = lua_touserdata(a1, -1);
      if (lua_getfield(a1, -1001000, "LUA_LOG_ALLOCATED_BYTES"))
      {
        v4 = lua_touserdata(a1, -1);
        if (lua_getfield(a1, -1001000, "LUA_LOG_PEAK_ALLOCATED_BYTES"))
        {
          v5 = lua_touserdata(a1, -1);
          cstdlib_strcpy(__dst, "LUA VM bytes: allocated=");
          LH_itoa(*v4, __s2, 0xAu);
          cstdlib_strcat(__dst, __s2);
          cstdlib_strcat(__dst, " peak=");
          LH_itoa(*v5, __s2, 0xAu);
          cstdlib_strcat(__dst, __s2);
          log_OutText(v2, v3, 4, 0, "[lua] %s", v6, v7, v8, __dst);
        }
      }
    }
  }

  return 0;
}

uint64_t luaopen_Log(void *a1)
{
  lua_createtable(a1, 0, 3);
  luaL_setfuncs(a1, &lib_m_4, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "Log");
  return 0;
}

uint64_t hlpCopyFieldSepartorToCString(uint64_t result, _BYTE *a2)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t hlpGetDctHandleAndInterface(void *a1, void *a2, _OWORD *a3)
{
  if (lua_getfield(a1, -1001000, "LUA_DICTIONARYLOOKUP_PSPIOBJSTDCTLKP") == 2)
  {
    v6 = lua_touserdata(a1, -1);
    *a2 = *(v6 + 8);
    *a3 = *(v6 + 16);
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t hlpGetPartNumber(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, char *a5)
{
  *&__c[3] = 0;
  *&__c[1] = -1;
  if (cstdlib_strcmp(__s1, "tn"))
  {
    v10 = FE_DCT_TO_PARAM_NAME_MAP;
    v11 = 4;
    while (--v11)
    {
      v12 = v10 + 2;
      v13 = cstdlib_strcmp(__s1, v10[2]);
      v10 = v12;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

LABEL_16:
    result = 0;
    v17 = 1;
LABEL_17:
    *a5 = v17;
    return result;
  }

  v12 = FE_DCT_TO_PARAM_NAME_MAP;
LABEL_7:
  v14 = v12[1];
  if (!v14)
  {
    goto LABEL_16;
  }

  __c[0] = 0;
  if (cstdlib_strncmp(__s1, "ext_", 4uLL))
  {
    v15 = "fecfg";
  }

  else
  {
    v15 = "ext_fecfg";
  }

  *a5 = 1;
  if (((*(a1 + 96))(a2, a3, v15, v14, &__c[3], &__c[1], __c) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  if (*&__c[1])
  {
    v16 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v16)
    {
      *v16 = 0;
    }

    v17 = cstdlib_atoi(**&__c[3]);
    result = 0;
    goto LABEL_17;
  }

  return 0;
}

uint64_t hlpParseField(char *a1, const char *a2, uint64_t a3, char **a4)
{
  v5 = cstdlib_strstr(a1, a2);
  *a4 = v5;
  if (v5)
  {
    *v5 = 0;
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t hlpSplitAndPush(void *a1, const char *a2, const char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  lua_createtable(a1, 0, 0);
  if (a2)
  {
    v6 = cstdlib_strlen(a2);
    if (v6 >= 0x100)
    {
      v7 = 256;
    }

    else
    {
      v7 = v6;
    }

    cstdlib_strncpy(v14, a2, v7);
    *(v14 + v7) = *a3;
    v8 = cstdlib_strstr(v14, a3);
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = v14;
      do
      {
        *v9 = 0;
        lua_pushstring(a1, v11);
        v12 = LuaVMUtil_u32_index_to_luainteger(v10);
        lua_rawseti(a1, -2, v12);
        ++v10;
        v11 = v9 + 1;
        v9 = cstdlib_strstr(v9 + 1, a3);
      }

      while (v9);
    }
  }

  return 0;
}

uint64_t hlpSplitAndPushTN(void *a1, char *__s1, char *__s2)
{
  v6 = cstdlib_strstr(__s1, __s2);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v8 = cstdlib_strstr(v7 + 1, __s2);
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v10 = cstdlib_strstr(v9 + 1, __s2);
  v11 = v10;
  if (v10)
  {
    *v10 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v12 = cstdlib_strstr(v11 + 1, __s2);
  v13 = v12;
  if (v12)
  {
    *v12 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v14 = cstdlib_strstr(v13 + 1, __s2);
  v15 = v14;
  if (v14)
  {
    *v14 = 0;
LABEL_11:
    lua_createtable(a1, 0, 0);
    lua_pushstring(a1, __s1);
    lua_setfield(a1, -2, "norm_orth");
    lua_pushstring(a1, v7 + 1);
    lua_setfield(a1, -2, "tn_label");
    lua_pushstring(a1, v9 + 1);
    lua_setfield(a1, -2, "domain_label");
    lua_pushstring(a1, v11 + 1);
    lua_setfield(a1, -2, "std_orth");
    v16 = cstdlib_atoi(v13 + 1);
    lua_pushinteger(a1, v16);
    lua_setfield(a1, -2, "sens");
    v17 = cstdlib_atoi(v15 + 1);
    lua_pushinteger(a1, v17);
    lua_setfield(a1, -2, "prio");
    return 0;
  }

  result = err_GenerateErrorArg();
  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t hlpSplitAndPushG2P(void *a1, char *__s1, char *__s2)
{
  v6 = cstdlib_strstr(__s1, __s2);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v8 = cstdlib_strstr(v7 + 1, __s2);
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v10 = cstdlib_strstr(v9 + 1, __s2);
  v11 = v10;
  if (v10)
  {
    *v10 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v12 = cstdlib_strstr(v11 + 1, __s2);
  v13 = v12;
  if (v12)
  {
    *v12 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v14 = cstdlib_strstr(v13 + 1, __s2);
  v15 = v14;
  if (v14)
  {
    *v14 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v16 = cstdlib_strstr(v15 + 1, __s2);
  v17 = v16;
  if (v16)
  {
    *v16 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v18 = cstdlib_strstr(v17 + 1, __s2);
  v19 = v18;
  if (v18)
  {
    *v18 = 0;
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v20 = v19 + 1;
  v21 = cstdlib_strstr(v20, __s2);
  v22 = v21;
  if (v21)
  {
    *v21 = 0;
  }

  else
  {
    ErrorArg = err_GenerateErrorArg();
    v23 = v20;
    if (ErrorArg)
    {
      goto LABEL_33;
    }
  }

  v23 = v22 + 1;
LABEL_33:
  v26 = v23;
  lua_createtable(a1, 0, 0);
  lua_pushstring(a1, __s1);
  lua_setfield(a1, -2, "phon");
  lua_pushstring(a1, v7 + 1);
  lua_setfield(a1, -2, "tn_label");
  lua_pushstring(a1, v9 + 1);
  lua_setfield(a1, -2, "domain_label");
  lua_pushstring(a1, v11 + 1);
  lua_setfield(a1, -2, "pos");
  lua_pushstring(a1, v13 + 1);
  lua_setfield(a1, -2, "cgn");
  v27 = cstdlib_atoi(v15 + 1);
  lua_pushinteger(a1, v27);
  lua_setfield(a1, -2, "prio");
  lua_pushstring(a1, v17 + 1);
  lua_setfield(a1, -2, "mde");
  lua_pushstring(a1, v20);
  lua_setfield(a1, -2, "lng");
  lua_pushstring(a1, v26);
  lua_setfield(a1, -2, "extra");
  return 0;
}

uint64_t hlpLookupTNG2P(void *a1, char *a2, uint64_t (*a3)(void *, void, _BYTE *))
{
  *&v19 = safeh_GetNullHandle();
  *(&v19 + 1) = v6;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  result = lua_isstring(a1, 1);
  if (result)
  {
    v17 = 0;
    v8 = lua_tolstring(a1, 1, 0);
    result = hlpGetDctHandleAndInterface(a1, &v18, &v19);
    if (!result)
    {
      v9 = v18;
      v10 = v19;
      result = hlpGetPartNumber(v18, v19, *(&v19 + 1), a2, &v16);
      if (!result)
      {
        if (((*(v9 + 240))(v10, *(&v10 + 1), a2, v8, &v17, &v15, &v14, v16, 0) & 0x80000000) != 0)
        {
          return err_GenerateErrorArg();
        }

        else
        {
          v13[0] = v14;
          v13[1] = 0;
          lua_createtable(a1, 0, 0);
          if (v15)
          {
            for (i = 0; i < v15; ++i)
            {
              result = a3(a1, *(v17 + 8 * i), v13);
              if (result)
              {
                break;
              }

              v12 = LuaVMUtil_u32_index_to_luainteger(i);
              lua_rawseti(a1, -2, v12);
              result = 0;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

char *hlpTerminateMultiwordSequenceAfterCntWords(char *a1, unsigned int *a2)
{
  result = cstdlib_strchr(a1, 32);
  v4 = *a2;
  v5 = result != 0;
  v6 = 1;
  if (*a2 >= 2 && result != 0)
  {
    do
    {
      result = cstdlib_strchr(result + 1, 32);
      ++v6;
      v4 = *a2;
      v5 = result != 0;
    }

    while (v6 < *a2 && result != 0);
  }

  if (v5)
  {
    *result = 0;
    v4 = *a2;
  }

  if (v6 < v4)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t hlpGetLengthLongestMultiword(uint64_t a1, uint64_t a2, uint64_t a3, char *__s2, uint64_t a5, unsigned int *a6)
{
  v20 = *MEMORY[0x277D85DE8];
  *&__c[3] = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  *__s1 = 2003658086;
  cstdlib_strcat(__s1, __s2);
  if (((*(a1 + 96))(a2, a3, __s1, a5, &__c[3], &__c[1], __c) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  if (*&__c[1] && *&__c[3])
  {
    v11 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v11)
    {
      *v11 = 0;
    }

    v12 = LH_atou(**&__c[3]);
    result = 0;
  }

  else
  {
    result = 0;
    v12 = 1;
  }

  *a6 = v12;
  return result;
}

uint64_t init_LuaDictionaryLookup(void *a1)
{
  if (lua_type(a1, 1) == 2)
  {
    lua_setfield(a1, -1001000, "LUA_DICTIONARYLOOKUP_PSPIOBJSTDCTLKP");
  }

  return 0;
}

uint64_t getFEConfigurationParameterValue_LuaDictionaryLookup(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__dst = 0u;
  v10 = 0u;
  *&v8 = safeh_GetNullHandle();
  *(&v8 + 1) = v2;
  v6 = 0;
  v7 = 0;
  if (lua_isstring(a1, 1))
  {
    v3 = lua_tolstring(a1, 1, 0);
    if (lua_isstring(a1, 2))
    {
      v4 = lua_tolstring(a1, 2, 0);
      cstdlib_strncpy(__dst, v4, 0x100uLL);
    }

    else
    {
      cstdlib_strcpy(__dst, "");
    }

    if (!hlpGetDctHandleAndInterface(a1, &v7, &v8))
    {
      if (((*(v7 + 256))(v8, *(&v8 + 1), v3, __dst, &v6) & 0x80000000) == 0)
      {
        lua_pushstring(a1, v6);
        return 1;
      }

      err_GenerateErrorArg();
    }
  }

  return LuaVMUtil_error(a1, "Error in DictionaryLookup:get_fe_parameter_value");
}

uint64_t singleLookup_LuaDictionaryLookup(void *a1)
{
  *&v15 = safeh_GetNullHandle();
  *(&v15 + 1) = v2;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  __c_1 = -1;
  __c = 0;
  if (!lua_isstring(a1, 1))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup");
  }

  if (!lua_isstring(a1, 2))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup");
  }

  v3 = lua_tolstring(a1, 1, 0);
  v4 = lua_tolstring(a1, 2, 0);
  if (hlpGetDctHandleAndInterface(a1, &v14, &v15))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup");
  }

  v5 = v14;
  v6 = v15;
  if (hlpGetPartNumber(v14, v15, *(&v15 + 1), v3, &v12))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup");
  }

  if (((*(v5 + 240))(v6, *(&v6 + 1), v3, v4, &v13, &__c_1, &__c, v12, 0) & 0x80000000) != 0)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup");
  }

  v8 = __c_1;
  if (__c_1 && v13)
  {
    v9 = cstdlib_strchr(*v13, __c);
    if (v9)
    {
      *v9 = 0;
    }

    v8 = __c_1;
  }

  if (v8)
  {
    lua_pushstring(a1, *v13);
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t singleLookupMultiword_LuaDictionaryLookup(void *a1)
{
  *&v23 = safeh_GetNullHandle();
  *(&v23 + 1) = v2;
  *&__c[3] = 0;
  v22 = 0;
  *&__c[1] = -1;
  __c[0] = 0;
  v20 = 1;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup_multiword");
  }

  v4 = Rsrc;
  if (hlpGetDctHandleAndInterface(a1, &v22, &v23))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup_multiword");
  }

  if (!lua_isstring(a1, 1))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup_multiword");
  }

  if (!lua_isstring(a1, 2))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup_multiword");
  }

  v5 = lua_tolstring(a1, 1, 0);
  v6 = lua_tolstring(a1, 2, 0);
  v7 = *(v4 + 8);
  v8 = cstdlib_strlen(v6);
  v9 = heap_Alloc(v7, v8 + 1);
  if (!v9)
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup_multiword");
  }

  v10 = v9;
  v19 = 0;
  cstdlib_strcpy(v9, v6);
  v11 = hlpTerminateMultiwordSequenceAfterCntWords(v10, &v20);
  v12 = v22;
  v13 = v23;
  LengthLongestMultiword = hlpGetLengthLongestMultiword(v22, v23, *(&v23 + 1), v5, v10, &v19);
  if (v11)
  {
    *v11 = 32;
  }

  if (LengthLongestMultiword)
  {
LABEL_9:
    heap_Free(*(v4 + 8), v10);
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup_multiword");
  }

  if (v19)
  {
    while (1)
    {
      hlpTerminateMultiwordSequenceAfterCntWords(v10, &v19);
      if (((*(v12 + 96))(v13, *(&v13 + 1), v5, v10, &__c[3], &__c[1], __c) & 0x80000000) != 0)
      {
        err_GenerateErrorArg();
        goto LABEL_9;
      }

      if (*&__c[1] && *&__c[3] != 0)
      {
        break;
      }

      if (!--v19)
      {
        goto LABEL_25;
      }
    }

    v18 = cstdlib_strchr(**&__c[3], __c[0]);
    if (v18)
    {
      *v18 = 0;
    }
  }

LABEL_25:
  if (*&__c[1])
  {
    lua_pushstring(a1, v10);
    lua_pushstring(a1, **&__c[3]);
    lua_pushinteger(a1, v19);
    v15 = 3;
  }

  else
  {
    lua_pushnil(a1);
    v15 = 1;
  }

  heap_Free(*(v4 + 8), v10);
  return v15;
}

uint64_t multipleLookup_LuaDictionaryLookup(void *a1)
{
  *&v18 = safeh_GetNullHandle();
  *(&v18 + 1) = v2;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v11 = 0;
  if (!lua_isstring(a1, 1))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:multiple_lookup");
  }

  if (!lua_isstring(a1, 2))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:multiple_lookup");
  }

  v3 = lua_tolstring(a1, 1, 0);
  v4 = lua_tolstring(a1, 2, 0);
  if (LuaVMUtil_luaBOOLean_to_lhBOOL(a1, 3, &v11))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:multiple_lookup");
  }

  if (hlpGetDctHandleAndInterface(a1, &v17, &v18))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:multiple_lookup");
  }

  v5 = v17;
  v6 = v18;
  if (hlpGetPartNumber(v17, v18, *(&v18 + 1), v3, &v15))
  {
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:multiple_lookup");
  }

  if (((*(v5 + 240))(v6, *(&v6 + 1), v3, v4, &v16, &v14, &v13, v15, 0) & 0x80000000) != 0)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in DictionaryLookup:multiple_lookup");
  }

  v12[0] = v13;
  v12[1] = 0;
  lua_createtable(a1, 0, 0);
  if (!v14)
  {
    goto LABEL_17;
  }

  for (i = 0; i < v14; ++i)
  {
    v9 = *(v16 + 8 * i);
    if (v11 == 1)
    {
      hlpSplitAndPush(a1, v9, v12);
    }

    else
    {
      lua_pushstring(a1, v9);
    }

    v10 = LuaVMUtil_u32_index_to_luainteger(i);
    lua_rawseti(a1, -2, v10);
  }

  if (v14)
  {
    lua_pushstring(a1, v12);
  }

  else
  {
LABEL_17:
    lua_pushnil(a1);
  }

  return 2;
}

uint64_t tnLookup_LuaDictionaryLookup(void *a1)
{
  if (!hlpLookupTNG2P(a1, "tn", hlpSplitAndPushTN))
  {
    return 1;
  }

  return LuaVMUtil_error(a1, "Error in DictionaryLookup:tn_lookup");
}

uint64_t g2pLookup_LuaDictionaryLookup(void *a1)
{
  if (!hlpLookupTNG2P(a1, "g2p", hlpSplitAndPushG2P))
  {
    return 1;
  }

  return LuaVMUtil_error(a1, "Error in DictionaryLookup:g2p_lookup");
}

uint64_t luaopen_DictionaryLookup(void *a1)
{
  lua_createtable(a1, 0, 6);
  luaL_setfuncs(a1, &lib_m_5, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "DictionaryLookup");
  return 0;
}

uint64_t hlpGetDctEgHandleAndInterface(void *a1, void *a2, _OWORD *a3)
{
  if (lua_getfield(a1, -1001000, "LUA_DICTIONARYENGINE_PSPIOBJSTDCTEG") == 2)
  {
    v6 = lua_touserdata(a1, -1);
    *a2 = *(v6 + 8);
    *a3 = *(v6 + 16);
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t init_LuaDictionaryEngine(void *a1)
{
  if (lua_type(a1, 1) == 2)
  {
    lua_setfield(a1, -1001000, "LUA_DICTIONARYENGINE_PSPIOBJSTDCTEG");
  }

  return 0;
}

uint64_t checkProtectURLHashtag_LuaDictionaryEngine(void *a1)
{
  *&v8 = safeh_GetNullHandle();
  *(&v8 + 1) = v2;
  v7 = 0;
  v6 = 0;
  if (lua_isstring(a1, 1) && (v3 = lua_tolstring(a1, 1, 0), !hlpGetDctEgHandleAndInterface(a1, &v7, &v8)))
  {
    if (((*(v7 + 128))(v8, *(&v8 + 1), v3, &v6) & 0x80000000) != 0)
    {
      return err_GenerateErrorArg();
    }

    else
    {
      v5 = LuaVMUtil_lhBOOL_to_luaBOOLean(v6);
      lua_pushBOOLean(a1, v5);
      return 1;
    }
  }

  else
  {

    return LuaVMUtil_error(a1, "Error in DictionaryEngine:check_protect_url_hashtag");
  }
}

uint64_t luaopen_DictionaryEngine(void *a1)
{
  lua_createtable(a1, 0, 1);
  luaL_setfuncs(a1, &lib_m_6, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "DictionaryEngine");
  return 0;
}

uint64_t init_LuaParameters(void *a1)
{
  if (lua_type(a1, 1) == 2)
  {
    lua_setfield(a1, -1001000, "LUA_PARAMETERS_PPARAMC");
  }

  return 0;
}

uint64_t get_LuaParameters(void *a1)
{
  if (lua_isstring(a1, 1))
  {
    v2 = lua_tolstring(a1, 1, 0);

    return hlpGetString_LuaParameters(a1, v2);
  }

  else
  {

    return LuaVMUtil_error(a1, "Error in Parameters.get");
  }
}

uint64_t hlpGetString_LuaParameters(void *a1, uint64_t a2)
{
  v7 = 0;
  if (lua_getfield(a1, -1001000, "LUA_PARAMETERS_PPARAMC") != 2)
  {
    return LuaVMUtil_error(a1, "Error in Parameters.hlpGetString");
  }

  v4 = lua_touserdata(a1, -1);
  if (!v4)
  {
    return LuaVMUtil_error(a1, "Error in Parameters.hlpGetString");
  }

  v5 = v4;
  if ((paramc_ParamGetStr(v4, a2, &v7) & 0x1FFF) == 0x14)
  {
    v7 = 0;
  }

  else if (v7)
  {
    lua_pushstring(a1, v7);
    goto LABEL_8;
  }

  lua_pushnil(a1);
LABEL_8:
  if ((paramc_ParamRelease(v5) & 0x80000000) == 0)
  {
    return 1;
  }

  return LuaVMUtil_error(a1, "Error in Parameters.hlpGetString");
}

uint64_t luaopen_Parameters(void *a1)
{
  lua_createtable(a1, 0, 28);
  luaL_setfuncs(a1, &lib_m_7, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "Parameters");
  return 0;
}

uint64_t hlpReadStringInputTable(void *a1, int a2, uint64_t a3, unsigned int *a4, uint64_t *a5)
{
  v18 = 0;
  lua_len(a1, a2);
  v10 = lua_gettop(a1);
  result = LuaVMUtil_luainteger_to_u32(a1, v10, &v18);
  if (!result)
  {
    lua_settop(a1, 0xFFFFFFFE);
    v12 = v18;
    if (!v18)
    {
      return 0;
    }

    if (*a4)
    {
      if (*a4 != v18)
      {
        return 0;
      }
    }

    else
    {
      *a4 = v18;
    }

    v13 = heap_Alloc(*(a3 + 8), 8 * v12);
    if (v13)
    {
      v14 = v13;
      lua_pushnil(a1);
      v18 = 0;
      while (lua_next(a1, a2))
      {
        v15 = lua_gettop(a1);
        result = lua_isstring(a1, v15);
        if (!result)
        {
          return result;
        }

        v16 = lua_tolstring(a1, v15, 0);
        v17 = v18;
        *(v14 + 8 * v18) = v16;
        v18 = v17 + 1;
        lua_settop(a1, 0xFFFFFFFE);
      }

      lua_settop(a1, 0xFFFFFFFE);
      result = 0;
      *a5 = v14;
    }

    else
    {
      return err_GenerateErrorResource();
    }
  }

  return result;
}

uint64_t hlpGetOutputTables(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = 4 * a2;
  v8 = heap_Alloc(*(a1 + 8), v7);
  *a3 = v8;
  if (v8)
  {
    v9 = heap_Alloc(*(a1 + 8), v7);
    *a4 = v9;
    if (v9)
    {
      return 0;
    }
  }

  return err_GenerateErrorResource();
}

void hlpWriteOutputTables(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  lua_createtable(a1, 0, 0);
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = LuaVMUtil_u32_to_luainteger(*(a3 + 4 * v8));
      lua_pushinteger(a1, v9);
      v10 = LuaVMUtil_u32_index_to_luainteger(v8);
      lua_rawseti(a1, -2, v10);
      ++v8;
    }

    while (a2 != v8);
    lua_createtable(a1, 0, 0);
    v11 = 0;
    do
    {
      lua_pushnumber(a1, *(a4 + 4 * v11));
      v12 = LuaVMUtil_u32_index_to_luainteger(v11);
      lua_rawseti(a1, -2, v12);
      ++v11;
    }

    while (a2 != v11);
  }

  else
  {

    lua_createtable(a1, 0, 0);
  }
}

void hlpWriteOutputTablesWithIndexes(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  lua_createtable(a1, 0, 0);
  if (a2)
  {
    v8 = 0;
    do
    {
      v9 = LuaVMUtil_u32_index_to_luainteger(*(a3 + 4 * v8));
      lua_pushinteger(a1, v9);
      v10 = LuaVMUtil_u32_index_to_luainteger(v8);
      lua_rawseti(a1, -2, v10);
      ++v8;
    }

    while (a2 != v8);
    lua_createtable(a1, 0, 0);
    v11 = 0;
    do
    {
      lua_pushnumber(a1, *(a4 + 4 * v11));
      v12 = LuaVMUtil_u32_index_to_luainteger(v11);
      lua_rawseti(a1, -2, v12);
      ++v11;
    }

    while (a2 != v11);
  }

  else
  {

    lua_createtable(a1, 0, 0);
  }
}

uint64_t luaopen_NN(void *a1)
{
  lua_createtable(a1, 0, 18);
  luaL_setfuncs(a1, &lib_m_8, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "NN");
  return 0;
}

uint64_t ToBeSpelled_QueryModelExists_LuaNN(void *a1)
{
  v7 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    v8 = 0uLL;
    if (!auxGetObjectHandleAndInterface(Objc, &v7, &v8))
    {
      v4 = (*(v7 + 56))(v8, *(&v8 + 1));
      v5 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
      lua_pushBOOLean(a1, v5);
      objc_ReleaseObject(v3, "FE_NN");
      return 1;
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.ToBeSpelled_QueryModelExists_LuaNN");
}

uint64_t ToBeSpelled_Predict_LuaNN(void *a1)
{
  v9 = 0;
  v8 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    if (lua_isstring(a1, 1))
    {
      v10 = 0uLL;
      v4 = lua_tolstring(a1, 1, 0);
      if (!auxGetObjectHandleAndInterface(v3, &v9, &v10))
      {
        v5 = (*(v9 + 64))(v10, *(&v10 + 1), v4, &v8);
        objc_ReleaseObject(v3, "FE_NN");
        if ((v5 & 0x80000000) == 0)
        {
          v6 = LuaVMUtil_lhBOOL_to_luaBOOLean(v8);
          lua_pushBOOLean(a1, v6);
          return 1;
        }
      }
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN:ToBeSpelled_Predict_LuaNN");
}

uint64_t G2POneWord_QueryModelExists_LuaNN(void *a1)
{
  v7 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    v8 = 0uLL;
    if (!auxGetObjectHandleAndInterface(Objc, &v7, &v8))
    {
      v4 = (*(v7 + 72))(v8, *(&v8 + 1));
      v5 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
      lua_pushBOOLean(a1, v5);
      objc_ReleaseObject(v3, "FE_NN");
      return 1;
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.G2POneWord_QueryModelExists_LuaNN");
}

uint64_t G2POneWord_Predict_LuaNN(void *a1)
{
  v7 = 0;
  v8 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    if (lua_isstring(a1, 1))
    {
      v9 = 0uLL;
      v4 = lua_tolstring(a1, 1, 0);
      if (!auxGetObjectHandleAndInterface(v3, &v8, &v9))
      {
        v5 = (*(v8 + 80))(v9, *(&v9 + 1), v4, &v7);
        objc_ReleaseObject(v3, "FE_NN");
        if ((v5 & 0x80000000) == 0)
        {
          lua_pushstring(a1, v7);
          return 1;
        }
      }
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN:ToBeSpelled_Predict_LuaNN");
}

uint64_t CGN_QueryModelExists_LuaNN(void *a1)
{
  v8 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    if (lua_isstring(a1, 1))
    {
      v9 = 0uLL;
      v4 = lua_tolstring(a1, 1, 0);
      if (!auxGetObjectHandleAndInterface(v3, &v8, &v9))
      {
        v5 = (*(v8 + 88))(v9, *(&v9 + 1), v4);
        v6 = LuaVMUtil_lhBOOL_to_luaBOOLean(v5);
        lua_pushBOOLean(a1, v6);
        objc_ReleaseObject(v3, "FE_NN");
        return 1;
      }
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.CGN_QueryModelExists_LuaNN");
}

uint64_t CGN_Predict_LuaNN(void *a1)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in NN:CGN_Predict_LuaNN");
  }

  v3 = Objc;
  if (!lua_isstring(a1, 1))
  {
    return LuaVMUtil_error(a1, "Error in NN:CGN_Predict_LuaNN");
  }

  v4 = lua_tolstring(a1, 1, 0);
  if (!lua_isstring(a1, 2))
  {
    return LuaVMUtil_error(a1, "Error in NN:CGN_Predict_LuaNN");
  }

  v5 = lua_tolstring(a1, 2, 0);
  if (LuaVMUtil_luainteger_to_u32_index(a1, 3, &v10 + 1))
  {
    return LuaVMUtil_error(a1, "Error in NN:CGN_Predict_LuaNN");
  }

  v13 = 0uLL;
  if (auxGetObjectHandleAndInterface(v3, &v12, &v13))
  {
    return LuaVMUtil_error(a1, "Error in NN:CGN_Predict_LuaNN");
  }

  v6 = (*(v12 + 96))(v13, *(&v13 + 1), v4, v5, WORD2(v10), &v11, &v10);
  objc_ReleaseObject(v3, "FE_NN");
  if (v6 < 0)
  {
    return LuaVMUtil_error(a1, "Error in NN:CGN_Predict_LuaNN");
  }

  lua_createtable(a1, 0, 0);
  if (!v10)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    lua_pushnumber(a1, *(v11 + 4 * v7));
    v8 = LuaVMUtil_u32_index_to_luainteger(v7);
    lua_rawseti(a1, -2, v8);
    ++v7;
    result = 1;
  }

  while (v7 < v10);
  return result;
}

uint64_t TN_QueryModelExists_LuaNN(void *a1)
{
  v8 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    if (lua_isstring(a1, 1))
    {
      v9 = 0uLL;
      v4 = lua_tolstring(a1, 1, 0);
      if (!auxGetObjectHandleAndInterface(v3, &v8, &v9))
      {
        v5 = (*(v8 + 104))(v9, *(&v9 + 1), v4);
        v6 = LuaVMUtil_lhBOOL_to_luaBOOLean(v5);
        lua_pushBOOLean(a1, v6);
        objc_ReleaseObject(v3, "FE_NN");
        return 1;
      }
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.TN_QueryModelExists_LuaNN");
}

uint64_t TN_Predict_LuaNN(void *a1)
{
  v12 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  v3 = Objc;
  if (!lua_isstring(a1, 1))
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  v4 = lua_tolstring(a1, 1, 0);
  if (LuaVMUtil_luainteger_to_u32_index(a1, 2, &v11 + 1))
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  if (!lua_isstring(a1, 3))
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  v5 = lua_tolstring(a1, 3, 0);
  if (LuaVMUtil_luainteger_to_u32_index(a1, 4, &v11))
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  if (LuaVMUtil_luainteger_to_u32_index(a1, 5, &v10 + 1))
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  v14 = 0uLL;
  if (auxGetObjectHandleAndInterface(v3, &v13, &v14))
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  v6 = (*(v13 + 112))(v14, *(&v14 + 1), v4, WORD2(v11), v5, v11, WORD2(v10), &v12, &v10);
  objc_ReleaseObject(v3, "FE_NN");
  if (v6 < 0)
  {
    return LuaVMUtil_error(a1, "Error in NN:TN_Predict_LuaNN");
  }

  lua_createtable(a1, 0, 0);
  if (!v10)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    lua_pushnumber(a1, *(v12 + 4 * v7));
    v8 = LuaVMUtil_u32_index_to_luainteger(v7);
    lua_rawseti(a1, -2, v8);
    ++v7;
    result = 1;
  }

  while (v7 < v10);
  return result;
}

uint64_t CLM_QueryModelExists_LuaNN(void *a1)
{
  v8 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    if (lua_isstring(a1, 1))
    {
      v9 = 0uLL;
      v4 = lua_tolstring(a1, 1, 0);
      if (!auxGetObjectHandleAndInterface(v3, &v8, &v9))
      {
        v5 = (*(v8 + 120))(v9, *(&v9 + 1), v4);
        v6 = LuaVMUtil_lhBOOL_to_luaBOOLean(v5);
        lua_pushBOOLean(a1, v6);
        objc_ReleaseObject(v3, "FE_NN");
        return 1;
      }
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.CLM_QueryModelExists_LuaNN");
}

uint64_t CLM_Predict_LuaNN(void *a1)
{
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc || (v3 = Objc, (Rsrc = LuaVMUtil_GetRsrc(a1)) == 0))
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in NN:CLM_Predict_LuaNN");
  }

  v5 = Rsrc;
  if (!lua_isstring(a1, 1))
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_15;
  }

  v6 = lua_tolstring(a1, 1, 0);
  v7 = hlpReadStringInputTable(a1, 2, v5, &v17, &v22);
  v8 = v22;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (!v22)
  {
    lua_createtable(a1, 0, 0);
    lua_createtable(a1, 0, 0);
    v9 = 2;
    v10 = 1;
    goto LABEL_15;
  }

  if (hlpReadStringInputTable(a1, 3, v5, &v17, &v21))
  {
    goto LABEL_11;
  }

  v12 = v21;
  if (!v21)
  {
    goto LABEL_31;
  }

  if (hlpReadStringInputTable(a1, 4, v5, &v17, &v20))
  {
LABEL_11:
    v9 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  v13 = v20;
  if (!v20)
  {
LABEL_31:
    lua_createtable(a1, 0, 0);
    lua_createtable(a1, 0, 0);
    goto LABEL_32;
  }

  if (hlpGetOutputTables(v5, v17, &v18, &v19))
  {
    goto LABEL_11;
  }

  v24 = 0uLL;
  if (auxGetObjectHandleAndInterface(v3, &v23, &v24))
  {
    goto LABEL_11;
  }

  v14 = v18;
  v15 = v19;
  v16 = (*(v23 + 128))(v24, *(&v24 + 1), v6, v8, v12, v13, &v17, v18, v19);
  objc_ReleaseObject(v3, "FE_NN");
  if (v16 < 0)
  {
    goto LABEL_11;
  }

  hlpWriteOutputTablesWithIndexes(a1, v17, v14, v15);
LABEL_32:
  v10 = 1;
  v9 = 2;
LABEL_12:
  heap_Free(*(v5 + 8), v8);
  if (v21)
  {
    heap_Free(*(v5 + 8), v21);
  }

LABEL_15:
  if (v20)
  {
    heap_Free(*(v5 + 8), v20);
  }

  if (v18)
  {
    heap_Free(*(v5 + 8), v18);
  }

  if (v19)
  {
    heap_Free(*(v5 + 8), v19);
  }

  if ((v10 & 1) == 0)
  {
    return LuaVMUtil_error(a1, "Error in NN:CLM_Predict_LuaNN");
  }

  return v9;
}

uint64_t Diacritizer_QueryModelExists_LuaNN(void *a1)
{
  v7 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    v8 = 0uLL;
    if (!auxGetObjectHandleAndInterface(Objc, &v7, &v8))
    {
      v4 = (*(v7 + 136))(v8, *(&v8 + 1));
      v5 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
      lua_pushBOOLean(a1, v5);
      objc_ReleaseObject(v3, "FE_NN");
      return 1;
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.Diacritizer_QueryModelExists_LuaNN");
}

uint64_t Diacritizer_Predict_LuaNN(void *a1)
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc || (v3 = Objc, (Rsrc = LuaVMUtil_GetRsrc(a1)) == 0))
  {
    err_GenerateErrorArg();
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  if (ooc_utils_createAllocator_UseHeapHandle(v10, *(Rsrc + 8)))
  {
    goto LABEL_12;
  }

  if (LuaVMUtil_luatable_to_u32array(a1, 1, v10, &v13, &v15))
  {
    goto LABEL_12;
  }

  v17 = 0uLL;
  if (auxGetObjectHandleAndInterface(v3, &v16, &v17))
  {
    goto LABEL_12;
  }

  v5 = (*(v16 + 144))(v17, *(&v17 + 1), v13, v15, &v12, &v14);
  objc_ReleaseObject(v3, "FE_NN");
  if (v5 < 0)
  {
    goto LABEL_12;
  }

  lua_createtable(a1, 0, 0);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      lua_pushinteger(a1, *(v12 + 4 * i));
      v7 = LuaVMUtil_u32_index_to_luainteger(i);
      lua_rawseti(a1, -2, v7);
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

LABEL_13:
  if (v13)
  {
    OOCAllocator_Free(v10, v13);
  }

  return v8;
}

uint64_t URL_QueryModelExists_LuaNN(void *a1)
{
  v7 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    v8 = 0uLL;
    if (!auxGetObjectHandleAndInterface(Objc, &v7, &v8))
    {
      v4 = (*(v7 + 152))(v8, *(&v8 + 1));
      v5 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
      lua_pushBOOLean(a1, v5);
      objc_ReleaseObject(v3, "FE_NN");
      return 1;
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.URL_QueryModelExists_LuaNN");
}

uint64_t URL_Predict_LuaNN(void *a1)
{
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    Rsrc = 0;
    v8 = 0;
    goto LABEL_14;
  }

  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    err_GenerateErrorArg();
    goto LABEL_13;
  }

  if (!lua_isstring(a1, 1))
  {
    goto LABEL_13;
  }

  v4 = lua_tolstring(a1, 1, 0);
  if (ooc_utils_createAllocator_UseHeapHandle(v10, *(Rsrc + 8)) || LuaVMUtil_luatable_to_u32array(a1, 2, v10, &v14, &v12))
  {
    goto LABEL_13;
  }

  if (!v14)
  {
    lua_createtable(a1, 0, 0);
    lua_createtable(a1, 0, 0);
    goto LABEL_25;
  }

  if (hlpGetOutputTables(Rsrc, v12, &v13, &v15) || (v17 = 0uLL, auxGetObjectHandleAndInterface(Objc, &v16, &v17)) || (v5 = v15, v6 = v13, v7 = (*(v16 + 160))(v17, *(&v17 + 1), v4, v14, &v12, v13, v15), objc_ReleaseObject(Objc, "FE_NN"), v7 < 0))
  {
LABEL_13:
    v8 = 0;
    Objc = 0;
    goto LABEL_14;
  }

  hlpWriteOutputTables(a1, v12, v6, v5);
LABEL_25:
  Objc = 2;
  v8 = 1;
LABEL_14:
  if (v14)
  {
    OOCAllocator_Free(v10, v14);
  }

  if (Rsrc)
  {
    if (v13)
    {
      heap_Free(*(Rsrc + 8), v13);
    }

    if (v15)
    {
      heap_Free(*(Rsrc + 8), v15);
    }
  }

  if ((v8 & 1) == 0)
  {
    return LuaVMUtil_error(a1, "Error in NN:URL_Predict_LuaNN");
  }

  return Objc;
}

uint64_t Homograph_QueryModelExists_LuaNN(void *a1)
{
  v7 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    v8 = 0uLL;
    if (!auxGetObjectHandleAndInterface(Objc, &v7, &v8))
    {
      v4 = (*(v7 + 168))(v8, *(&v8 + 1));
      v5 = LuaVMUtil_lhBOOL_to_luaBOOLean(v4);
      lua_pushBOOLean(a1, v5);
      objc_ReleaseObject(v3, "FE_NN");
      return 1;
    }
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in NN.Homograph_QueryModelExists_LuaNN");
}

BOOL Homograph_Predict_LuaNN(void *a1)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    return 0;
  }

  v3 = Objc;
  if (lua_gettop(a1) >= 2 && lua_isstring(a1, 1) && lua_isstring(a1, 2))
  {
    v4 = lua_tolstring(a1, 1, 0);
    v5 = 2;
  }

  else
  {
    v5 = 1;
    result = lua_isstring(a1, 1);
    if (!result)
    {
      return result;
    }

    v4 = "";
  }

  v7 = lua_tolstring(a1, v5, 0);
  v14 = 0uLL;
  if (auxGetObjectHandleAndInterface(v3, &v13, &v14))
  {
    return 0;
  }

  v8 = (*(v13 + 176))(v14, *(&v14 + 1), v4, v7, &v12, &v11);
  objc_ReleaseObject(v3, "FE_NN");
  if (v8 < 0)
  {
    return 0;
  }

  lua_createtable(a1, 0, 0);
  if (v11)
  {
    for (i = 0; i < v11; ++i)
    {
      lua_pushnumber(a1, *(v12 + 4 * i));
      v10 = LuaVMUtil_u32_index_to_luainteger(i);
      lua_rawseti(a1, -2, v10);
    }
  }

  return 1;
}

uint64_t auxGetObjectHandleAndInterface(uint64_t a1, void *a2, _OWORD *a3)
{
  v7 = 0;
  if ((objc_GetObject(a1, "FE_NN", &v7) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  v5 = v7;
  if (!v7)
  {
    return err_GenerateErrorArg();
  }

  result = 0;
  *a2 = *(v7 + 8);
  *a3 = *(v5 + 16);
  return result;
}

uint64_t luaopen_CLM(void *a1)
{
  lua_createtable(a1, 0, 5);
  luaL_setfuncs(a1, &lib_m_9, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "CLM");
  return 0;
}

uint64_t CLM_TokenizeLHP_LuaCLM(void *a1)
{
  v14 = 0;
  v13 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in CLM.TokenizeLHP");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    err_GenerateErrorArg();
LABEL_9:
    objc_ReleaseObject(v3, "CLMOBJECT");
    return LuaVMUtil_error(a1, "Error in CLM.TokenizeLHP");
  }

  v5 = Rsrc;
  if (!lua_isstring(a1, 1))
  {
    goto LABEL_9;
  }

  v6 = lua_tolstring(a1, 1, 0);
  v7 = (2 * cstdlib_strlen(v6)) | 1;
  v8 = heap_Alloc(*(v5 + 8), v7);
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = v8;
  v15 = 0uLL;
  if (auxGetObjectHandleAndInterface_0(v3, &v14, &v15) || ((*(v14 + 80))(v15, *(&v15 + 1), v6, v9, v7, &v13) & 0x80000000) != 0)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    lua_pushstring(a1, v9);
    lua_pushBOOLean(a1, v13 == 1);
    v11 = 2;
    v10 = 1;
  }

  heap_Free(*(v5 + 8), v9);
  objc_ReleaseObject(v3, "CLMOBJECT");
  if ((v10 & 1) == 0)
  {
    return LuaVMUtil_error(a1, "Error in CLM.TokenizeLHP");
  }

  return v11;
}

uint64_t CLM_ConvertLHP_LuaCLM(void *a1)
{
  v12 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (Objc)
  {
    v3 = Objc;
    Rsrc = LuaVMUtil_GetRsrc(a1);
    if (Rsrc)
    {
      v5 = Rsrc;
      if (lua_isstring(a1, 1))
      {
        v6 = lua_tolstring(a1, 1, 0);
        if (lua_isstring(a1, 2))
        {
          v7 = lua_tolstring(a1, 2, 0);
          v8 = 4 * cstdlib_strlen(v7) + 4;
          v9 = heap_Calloc(*(v5 + 8), 1, v8);
          if (v9)
          {
            v10 = v9;
            v13 = 0uLL;
            if (!auxGetObjectHandleAndInterface_0(v3, &v12, &v13))
            {
              (*(v12 + 64))(v13, *(&v13 + 1), v6, v7, v10, 0, 0, v8);
              lua_pushstring(a1, v10);
              heap_Free(*(v5 + 8), v10);
              objc_ReleaseObject(v3, "CLMOBJECT");
              return 1;
            }

            heap_Free(*(v5 + 8), v10);
          }
        }
      }
    }

    else
    {
      err_GenerateErrorArg();
    }

    objc_ReleaseObject(v3, "CLMOBJECT");
  }

  else
  {
    err_GenerateErrorArg();
  }

  return LuaVMUtil_error(a1, "Error in CLM.ConvertLHP");
}

uint64_t CLM_ConvertAndAlignLHP_LuaCLM(void *a1)
{
  v18 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    goto LABEL_13;
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    err_GenerateErrorArg();
LABEL_12:
    objc_ReleaseObject(v3, "CLMOBJECT");
    goto LABEL_13;
  }

  v5 = Rsrc;
  if (!lua_isstring(a1, 1))
  {
    goto LABEL_12;
  }

  v6 = lua_tolstring(a1, 1, 0);
  if (!lua_isstring(a1, 2))
  {
    goto LABEL_12;
  }

  v7 = lua_tolstring(a1, 2, 0);
  v8 = 16 * cstdlib_strlen(v7) + 16;
  v9 = heap_Calloc(*(v5 + 8), 1, v8);
  v10 = heap_Calloc(*(v5 + 8), 1, v8);
  v11 = heap_Calloc(*(v5 + 8), 1, v8);
  v12 = v11;
  if (v9 && v10 && v11)
  {
    v19 = 0uLL;
    if (auxGetObjectHandleAndInterface_0(v3, &v18, &v19))
    {
      v13 = 0;
      v14 = 0;
    }

    else
    {
      if (((*(v18 + 64))(v19, *(&v19 + 1), v6, v7, v9, v10, v12, v8) & 0x80000000) != 0)
      {
        *v10 = 0;
        *v12 = 0;
      }

      lua_pushstring(a1, v9);
      if (cstdlib_strlen(v10) && cstdlib_strlen(v12))
      {
        lua_pushstring(a1, v10);
        lua_pushstring(a1, v12);
      }

      else
      {
        lua_pushnil(a1);
        lua_pushnil(a1);
      }

      v14 = 1;
      v13 = 3;
    }

    goto LABEL_25;
  }

  v13 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  if (v9)
  {
LABEL_25:
    heap_Free(*(v5 + 8), v9);
    v16 = v13;
    v17 = v14;
  }

  if (v10)
  {
    heap_Free(*(v5 + 8), v10);
  }

  if (v12)
  {
    heap_Free(*(v5 + 8), v12);
  }

  objc_ReleaseObject(v3, "CLMOBJECT");
  if (v17)
  {
    return v16;
  }

LABEL_13:

  return LuaVMUtil_error(a1, "Error in CLM.ConvertLHP");
}

uint64_t CLM_RemoveInvalidLHP_LuaCLM(void *a1)
{
  v15 = 0;
  v14 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in CLM.RemoveInvalidLHP");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    err_GenerateErrorArg();
LABEL_10:
    objc_ReleaseObject(v3, "CLMOBJECT");
    return LuaVMUtil_error(a1, "Error in CLM.RemoveInvalidLHP");
  }

  v5 = Rsrc;
  if (!lua_isstring(a1, 1))
  {
    goto LABEL_10;
  }

  v6 = lua_tolstring(a1, 1, 0);
  if (!lua_isstring(a1, 2))
  {
    goto LABEL_10;
  }

  v7 = lua_tolstring(a1, 2, 0);
  v8 = cstdlib_strlen(v7);
  v9 = heap_Calloc(*(v5 + 8), 1, v8 + 1);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v16 = 0uLL;
  cstdlib_strcpy(v9, v7);
  if (auxGetObjectHandleAndInterface_0(v3, &v15, &v16) || (v14 = 0, ((*(v15 + 72))(v16, *(&v16 + 1), v6, v10, &v14) & 0x80000000) != 0))
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    lua_pushstring(a1, v10);
    lua_pushBOOLean(a1, v14 == 1);
    v12 = 2;
    v11 = 1;
  }

  heap_Free(*(v5 + 8), v10);
  objc_ReleaseObject(v3, "CLMOBJECT");
  if ((v11 & 1) == 0)
  {
    return LuaVMUtil_error(a1, "Error in CLM.RemoveInvalidLHP");
  }

  return v12;
}

uint64_t CLM_ValidateTranscription_LuaCLM(void *a1)
{
  v16 = 0;
  v15 = 1;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    err_GenerateErrorArg();
    return LuaVMUtil_error(a1, "Error in CLM.ValidateTranscription");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    err_GenerateErrorArg();
LABEL_11:
    objc_ReleaseObject(v3, "CLMOBJECT");
    return LuaVMUtil_error(a1, "Error in CLM.ValidateTranscription");
  }

  v5 = Rsrc;
  if (!lua_isstring(a1, 1))
  {
    goto LABEL_11;
  }

  v6 = lua_tolstring(a1, 1, 0);
  if (!lua_isstring(a1, 2))
  {
    goto LABEL_11;
  }

  v7 = lua_tolstring(a1, 2, 0);
  if (!lua_isstring(a1, 3))
  {
    goto LABEL_11;
  }

  v8 = lua_tolstring(a1, 3, 0);
  v9 = cstdlib_strlen(v8);
  v10 = heap_Calloc(*(v5 + 8), 1, v9 + 1);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v17 = 0uLL;
  cstdlib_strcpy(v10, v8);
  if (auxGetObjectHandleAndInterface_0(v3, &v16, &v17) || (v15 = 1, ((*(v16 + 88))(v17, *(&v17 + 1), v6, v7, v11, &v15) & 0x80000000) != 0))
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    lua_pushstring(a1, v11);
    lua_pushBOOLean(a1, v15 == 1);
    v13 = 2;
    v12 = 1;
  }

  heap_Free(*(v5 + 8), v11);
  objc_ReleaseObject(v3, "CLMOBJECT");
  if ((v12 & 1) == 0)
  {
    return LuaVMUtil_error(a1, "Error in CLM.ValidateTranscription");
  }

  return v13;
}

uint64_t auxGetObjectHandleAndInterface_0(uint64_t a1, void *a2, _OWORD *a3)
{
  v7 = 0;
  if ((objc_GetObject(a1, "CLMOBJECT", &v7) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  v5 = v7;
  if (!v7)
  {
    return err_GenerateErrorArg();
  }

  result = 0;
  *a2 = *(v7 + 8);
  *a3 = *(v5 + 16);
  return result;
}

uint64_t abs_LuaMath(void *a1)
{
  v2 = luaL_checkinteger(a1, 1);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t intdiv_LuaMath(void *a1)
{
  v2 = luaL_checkinteger(a1, 1);
  v3 = luaL_checkinteger(a1, 2);
  if ((v3 + 1) > 1)
  {
    v5 = v3;
    v6 = v2 / v3;
    lua_pushinteger(a1, v2 / v3);
    v4 = v2 - v6 * v5;
  }

  else
  {
    lua_pushinteger(a1, v2);
    v4 = 0;
  }

  lua_pushinteger(a1, v4);
  return 2;
}

uint64_t max_LuaMath(void *a1)
{
  v2 = lua_gettop(a1);
  if (v2 <= 0)
  {
    v3 = 1;
    luaL_argerror(a1, 1);
  }

  else
  {
    v3 = 1;
    v4 = v2 - 1;
    if (v2 != 1)
    {
      v5 = 2;
      do
      {
        if (lua_compare(a1, v3, v5, 1))
        {
          v3 = v5;
        }

        ++v5;
        --v4;
      }

      while (v4);
    }
  }

  lua_pushvalue(a1, v3);
  return 1;
}

uint64_t min_LuaMath(void *a1)
{
  v2 = lua_gettop(a1);
  if (v2 <= 0)
  {
    v3 = 1;
    luaL_argerror(a1, 1);
  }

  else
  {
    v3 = 1;
    v4 = v2 - 1;
    if (v2 != 1)
    {
      v5 = 2;
      do
      {
        if (lua_compare(a1, v5, v3, 1))
        {
          v3 = v5;
        }

        ++v5;
        --v4;
      }

      while (v4);
    }
  }

  lua_pushvalue(a1, v3);
  return 1;
}

uint64_t toint_LuaMath(void *a1)
{
  v4 = 0;
  v2 = lua_tointegerx(a1, 1, &v4);
  if (v4)
  {
    lua_pushinteger(a1, v2);
  }

  else
  {
    luaL_checkany(a1, 1);
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t ult_LuaMath(void *a1)
{
  v2 = luaL_checkinteger(a1, 1);
  v3 = v2 < luaL_checkinteger(a1, 2);
  lua_pushBOOLean(a1, v3);
  return 1;
}

uint64_t luaopen_math(void *a1)
{
  lua_createtable(a1, 0, 8);
  luaL_setfuncs(a1, &lib_m_10, 0, v2, v3, v4, v5, v6);
  lua_pushinteger(a1, 0x7FFFFFFFLL);
  lua_setfield(a1, -2, "maxinteger");
  lua_pushinteger(a1, -2147483647);
  lua_setfield(a1, -2, "mininteger");
  lua_setglobal(a1, "math");
  return 0;
}

uint64_t getLuaAPIVersion_LuaUtilities(uint64_t a1)
{
  lua_pushinteger(a1, 1);
  lua_pushinteger(a1, 0);
  lua_pushinteger(a1, 0);
  return 3;
}

uint64_t nodesToRange_LuaUtilities(void *a1)
{
  v9 = 0;
  v10 = 0;
  if (lua_gettop(a1))
  {
    lua_pushnil(a1);
    if (lua_next(a1, 1))
    {
      v2 = 0;
      v3 = 0;
      for (i = 1; ; i = 0)
      {
        v5 = lua_gettop(a1);
        if (getOOCObject_LuaLDOTreeNode(a1, v5, &v10) || LDOTreeNode_ComputeAbsoluteFrom(v10, &v9 + 1) || LDOTreeNode_ComputeAbsoluteTo(v10, &v9))
        {
          break;
        }

        if (i)
        {
          v2 = v9;
          v3 = HIDWORD(v9);
        }

        else
        {
          if (HIDWORD(v9) < v3)
          {
            v3 = HIDWORD(v9);
          }

          if (v9 > v2)
          {
            v2 = v9;
          }
        }

        lua_settop(a1, 0xFFFFFFFE);
        if (!lua_next(a1, 1))
        {
          v6 = LuaVMUtil_u32_index_to_luainteger(v3);
          lua_pushinteger(a1, v6);
          v7 = LuaVMUtil_u32_index_to_luainteger(v2);
          lua_pushinteger(a1, v7);
          return 2;
        }
      }
    }
  }

  return LuaVMUtil_error(a1, "Error in Utilities:nodes_to_range");
}

uint64_t concatenateStrings_LuaUtilities(void *a1)
{
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v2 = lua_gettop(a1);
  if (v2)
  {
    v3 = v2;
    lua_getallocf(a1, &v8);
    v4 = *(v8 + 8);
    if (v4 && !PNEW_LDOString_Con(v4, *(v8 + 8), &v9))
    {
      v7 = 1;
      while (!LuaVMUtil_luastring_to_string(a1, v7, &v10) && v10 && !LHString_Append(v9, v10))
      {
        if (++v7 > v3)
        {
          if (LuaVMUtil_pushLuaStringAndDestroy(a1, v9))
          {
            break;
          }

          return 1;
        }
      }
    }

    if (v9)
    {
      v5 = LDOString_BorrowAllocator(v9);
      OOC_PlacementDeleteObject(v5, v9);
      v9 = 0;
    }
  }

  return LuaVMUtil_error(a1, "Error in Utilities:concatenate_strings");
}

uint64_t joinStrings_LuaUtilities(void *a1)
{
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v2 = lua_gettop(a1);
  if (v2 >= 2)
  {
    v5 = v2;
    if (!LuaVMUtil_luastring_to_string(a1, 1, &v8))
    {
      if (v8)
      {
        lua_getallocf(a1, &v9);
        v6 = *(v9 + 8);
        if (v6)
        {
          if (!PNEW_LDOString_Con(v6, *(v9 + 8), &v10))
          {
            if (v5 == 2)
            {
LABEL_10:
              if (!LuaVMUtil_luastring_to_string(a1, v5, &v11) && v11 && !LHString_Append(v10, v11) && !LuaVMUtil_pushLuaStringAndDestroy(a1, v10))
              {
                return 1;
              }
            }

            else
            {
              v7 = 2;
              while (!LuaVMUtil_luastring_to_string(a1, v7, &v11) && v11 && !LHString_Append(v10, v11) && !LHString_Append(v10, v8))
              {
                if (v5 == ++v7)
                {
                  goto LABEL_10;
                }
              }
            }
          }
        }
      }
    }
  }

  if (v10)
  {
    v3 = LDOString_BorrowAllocator(v10);
    OOC_PlacementDeleteObject(v3, v10);
    v10 = 0;
  }

  return LuaVMUtil_error(a1, "Error in Utilities:join_strings");
}

uint64_t padString_LuaUtilities(void *a1)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  if (lua_gettop(a1) >= 3)
  {
    if (!LuaVMUtil_luastring_to_string(a1, 1, &v10))
    {
      if (v10)
      {
        if (!LuaVMUtil_luainteger_to_u32(a1, 2, &v8 + 1) && !LuaVMUtil_luastring_to_string(a1, 3, &v9))
        {
          if (v9)
          {
            if (!LDOString_ComputeCPtrLength(v9, 0, &v8))
            {
              lua_getallocf(a1, &v6);
              v4 = *(v6 + 8);
              if (v4)
              {
                if (!PNEW_LDOString_ConFromCPtr(v4, *(v6 + 8), v10, &v7))
                {
                  if (v8)
                  {
                    while (1)
                    {
                      v5 = LHString_Length(v7);
                      if (v5 >= HIDWORD(v8))
                      {
                        break;
                      }

                      if (LHString_Append(v7, v9))
                      {
                        goto LABEL_5;
                      }
                    }
                  }

                  if (!LuaVMUtil_pushLuaStringAndDestroy(a1, v7))
                  {
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_5:
    if (v7)
    {
      v2 = LDOString_BorrowAllocator(v7);
      OOC_PlacementDeleteObject(v2, v7);
      v7 = 0;
    }
  }

  return LuaVMUtil_error(a1, "Error in Utilities:pad_string");
}

uint64_t splitString_LuaUtilities(void *a1)
{
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (lua_gettop(a1) >= 2 && !LuaVMUtil_luastring_to_string(a1, 1, &v17))
  {
    if (v17)
    {
      if (!LuaVMUtil_luastring_to_string(a1, 2, &v16))
      {
        if (v16)
        {
          if (!LDOString_ComputeCPtrLength(v16, 0, &v15))
          {
            if (v15)
            {
              lua_getallocf(a1, &v13);
              v4 = *(v13 + 8);
              if (v4)
              {
                if (!PNEW_LDOString_ConFromCPtr(*(v13 + 8), *(v13 + 8), v17, &v14) && !PtrList_Con(v11, v4, 4u, 4))
                {
                  if (!LHString_Split(v14, v16, v11))
                  {
                    lua_createtable(a1, 0, 0);
                    if (PtrList_NrItems(v11))
                    {
                      v5 = 0;
                      v6 = 0;
                      do
                      {
                        v7 = PtrList_ItemN(v11, v6);
                        if (v7)
                        {
                          v8 = v7;
                          v9 = LHString_BorrowCPtr(v7);
                          lua_pushstring(a1, v9);
                          v10 = LuaVMUtil_u32_index_to_luainteger(v5);
                          lua_rawseti(a1, -2, v10);
                          if (OOC_PlacementDeleteObject(v4, v8))
                          {
                            goto LABEL_24;
                          }

                          ++v5;
                        }

                        ++v6;
                      }

                      while (v6 < PtrList_NrItems(v11));
                    }

                    PtrList_RemoveAll(v11);
                    if (!PtrList_Des(v11) && !OOC_PlacementDeleteObject(v4, v14))
                    {
                      return 1;
                    }
                  }

LABEL_24:
                  PtrList_RemoveAll(v11);
                  PtrList_Des(v11);
                }
              }
            }
          }
        }
      }
    }
  }

  if (v14)
  {
    v2 = LDOString_BorrowAllocator(v14);
    OOC_PlacementDeleteObject(v2, v14);
    v14 = 0;
  }

  return LuaVMUtil_error(a1, "Error in Utilities:split_string");
}

uint64_t isValidUTF8String_LuaUtilities(void *a1)
{
  __s = 0;
  if (!lua_gettop(a1) || LuaVMUtil_luastring_to_string(a1, 1, &__s) || !__s)
  {
    return LuaVMUtil_error(a1, "Error in Utilities:join_strings");
  }

  IsValidUTF8 = LDOString_IsValidUTF8(__s, 0);
  v3 = LuaVMUtil_lhBOOL_to_luaBOOLean(IsValidUTF8);
  lua_pushBOOLean(a1, v3);
  return 1;
}

uint64_t stringToBytes_LuaUtilities(void *a1)
{
  v7 = 0;
  if (!lua_gettop(a1))
  {
    return LuaVMUtil_error(a1, "Error in Utilities:string_to_bytes");
  }

  if (LuaVMUtil_luastring_to_string(a1, 1, &v7))
  {
    return LuaVMUtil_error(a1, "Error in Utilities:string_to_bytes");
  }

  v2 = v7;
  if (!v7)
  {
    return LuaVMUtil_error(a1, "Error in Utilities:string_to_bytes");
  }

  lua_createtable(a1, 0, 0);
  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    do
    {
      lua_pushinteger(a1, v3);
      v5 = LuaVMUtil_u32_index_to_luainteger(v4);
      lua_rawseti(a1, -2, v5);
      v3 = v2[++v4];
    }

    while (v2[v4]);
  }

  return 1;
}

uint64_t stringToUTF8Characters_LuaUtilities(void *a1)
{
  __s = 0;
  if (!lua_gettop(a1) || LuaVMUtil_luastring_to_string(a1, 1, &__s) || !__s || !LDOString_IsValidUTF8(__s, 0))
  {
    return LuaVMUtil_error(a1, "Error in Utilities:string_to_utf8_characters");
  }

  v2 = __s;
  lua_createtable(a1, 0, 0);
  if (!*v2)
  {
    return 1;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  v5 = v2;
  do
  {
    v6 = 1;
    while (!LDOString_IsValidUTF8(v5, &v5[v6]))
    {
      if (++v6 == 5)
      {
        return LuaVMUtil_error(a1, "Error in Utilities:string_to_utf8_characters");
      }
    }

    v14 = 0;
    v13 = 0;
    cstdlib_strncpy(&v13, v5, v6);
    lua_createtable(a1, 0, 0);
    lua_pushstring(a1, &v13);
    v7 = LuaVMUtil_u32_index_to_luainteger(0);
    lua_rawseti(a1, -2, v7);
    v8 = LuaVMUtil_u32_index_to_luainteger(v4);
    lua_pushinteger(a1, v8);
    v9 = 1;
    v10 = LuaVMUtil_u32_index_to_luainteger(1);
    lua_rawseti(a1, -2, v10);
    v11 = LuaVMUtil_u32_index_to_luainteger(v3);
    lua_rawseti(a1, -2, v11);
    ++v3;
    v4 = (v4 + v6);
    v5 = &v2[v4];
  }

  while (v2[v4]);
  return v9;
}

uint64_t luaopen_Utilities(void *a1)
{
  lua_createtable(a1, 0, 10);
  luaL_setfuncs(a1, &lib_m_11, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "Utilities");
  return 0;
}

uint64_t LuaVMLDO_Con(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memset(v17, 0, sizeof(v17));
  result = Object_Con(a1);
  LuaStateWithMemoryLogging = result;
  if (!result)
  {
    *a1 = &__LuaVMLDO;
    a1[1] = a2;
    a1[3] = a3;
    a1[4] = a4;
    a1[5] = 0;
    a1[6] = 0;
    a1[7] = 0;
    a1[8] = a5;
    a1[2] = 0;
    v11 = a1 + 2;
    v12 = OOCAllocator_Calloc(a2, 1, 16, &LuaStateWithMemoryLogging);
    a1[9] = v12;
    result = LuaStateWithMemoryLogging;
    if (!LuaStateWithMemoryLogging)
    {
      v13 = a1[1];
      *v12 = 0;
      v12[1] = v13;
      LuaStateWithMemoryLogging = LuaStateFactoryMemLog_Con(v17, v13);
      if (LuaStateWithMemoryLogging)
      {
        goto LABEL_4;
      }

      NullHandle = safeh_GetNullHandle();
      if (!safeh_HandlesEqual(a1[3], a1[4], NullHandle, v16) && ((InitRsrcFunction(a1[3], a1[4], a1 + 5) & 0x80000000) != 0 || (__LuaVMLDO_GetObjects(a1) & 0x80000000) != 0))
      {
        result = err_GenerateErrorArg();
        LuaStateWithMemoryLogging = result;
      }

      else
      {
        LuaStateWithMemoryLogging = LuaStateFactoryMemLog_CreateLuaStateWithMemoryLogging(v17, a1 + 2, a1[9]);
        if (!LuaStateWithMemoryLogging)
        {
          LuaStateWithMemoryLogging = __LuaVMLDO_ProtectedRegisterRSRC(a1);
          if (!LuaStateWithMemoryLogging)
          {
            LuaStateWithMemoryLogging = __LuaVMLDO_OpenLibs(a1);
          }
        }

        (*(v17[0] + 16))(v17);
        if (!LuaStateWithMemoryLogging)
        {
          return 0;
        }

        if (!*v11)
        {
          goto LABEL_4;
        }

        lua_close(*v11);
        *v11 = 0;
        result = LuaStateWithMemoryLogging;
      }

      if (!result)
      {
        return result;
      }

LABEL_4:
      __LuaVMLDO_ReleaseObjects(a1);
      result = LuaStateWithMemoryLogging;
      if (!LuaStateWithMemoryLogging)
      {
        return result;
      }
    }
  }

  v14 = a1[9];
  if (v14)
  {
    OOCAllocator_Free(a1[1], v14);
    return LuaStateWithMemoryLogging;
  }

  return result;
}

uint64_t __LuaVMLDO_GetObjects(void *a1)
{
  result = objc_GetObject(*(a1[5] + 48), "FE_DCTLKP", a1 + 6);
  if ((result & 0x80000000) == 0)
  {
    v3 = *(a1[5] + 48);

    return objc_GetObject(v3, "DCTEG", a1 + 7);
  }

  return result;
}

uint64_t __LuaVMLDO_ProtectedRegisterRSRC(uint64_t a1)
{
  lua_pushcclosure(*(a1 + 16), LuaVMUtil_RegisterRSRC, 0);
  v2 = *(a1 + 40);
  v3 = *(a1 + 16);
  if (v2)
  {
    lua_pushlightuserdata(v3, v2);
  }

  else
  {
    lua_pushnil(v3);
  }

  result = lua_pcallk(*(a1 + 16), 1, 0, 0, 0, 0);
  if (result)
  {
    if (result == 4)
    {

      return err_GenerateErrorResource();
    }

    else
    {

      return err_GenerateErrorArg();
    }
  }

  return result;
}

uint64_t __LuaVMLDO_OpenLibs(uint64_t *a1)
{
  if (luaL_openlibs(a1[2]))
  {

    return err_GenerateErrorResource();
  }

  else
  {
    result = __LuaVMLDO_OpenLib(a1, luaopen_Log);
    if (result)
    {
      return result;
    }

    lua_pushcclosure(a1[2], init_LuaLog, 0);
    v3 = a1[5];
    if (v3 && a1[8])
    {
      lua_pushlightuserdata(a1[2], *(v3 + 32));
      lua_pushlightuserdata(a1[2], *(a1[5] + 8));
      lua_pushlightuserdata(a1[2], a1[8]);
    }

    else
    {
      lua_pushnil(a1[2]);
      lua_pushnil(a1[2]);
      lua_pushnil(a1[2]);
    }

    v4 = a1[9];
    v5 = a1[2];
    if (v4)
    {
      lua_pushlightuserdata(v5, v4);
      lua_pushlightuserdata(a1[2], a1[9] + 4);
    }

    else
    {
      lua_pushnil(v5);
      lua_pushnil(a1[2]);
    }

    v6 = lua_pcallk(a1[2], 5, 0, 0, 0, 0);
    if (v6)
    {
      if (v6 == 4)
      {
        result = err_GenerateErrorResource();
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = err_GenerateErrorArg();
        if (result)
        {
          return result;
        }
      }
    }

    result = __LuaVMLDO_OpenLib(a1, luaopen_DictionaryLookup);
    if (!result)
    {
      lua_pushcclosure(a1[2], init_LuaDictionaryLookup, 0);
      v7 = a1[6];
      v8 = a1[2];
      if (v7)
      {
        lua_pushlightuserdata(v8, v7);
      }

      else
      {
        lua_pushnil(v8);
      }

      v9 = lua_pcallk(a1[2], 1, 0, 0, 0, 0);
      if (!v9 || (v9 != 4 ? (result = err_GenerateErrorArg()) : (result = err_GenerateErrorResource()), !result))
      {
        result = __LuaVMLDO_OpenLib(a1, luaopen_DictionaryEngine);
        if (!result)
        {
          lua_pushcclosure(a1[2], init_LuaDictionaryEngine, 0);
          v10 = a1[7];
          v11 = a1[2];
          if (v10)
          {
            lua_pushlightuserdata(v11, v10);
          }

          else
          {
            lua_pushnil(v11);
          }

          v12 = lua_pcallk(a1[2], 1, 0, 0, 0, 0);
          if (!v12 || (v12 != 4 ? (result = err_GenerateErrorArg()) : (result = err_GenerateErrorResource()), !result))
          {
            result = __LuaVMLDO_OpenParametersLib(a1);
            if (!result)
            {
              result = __LuaVMLDO_OpenLib(a1, luaopen_NN);
              if (!result)
              {
                result = __LuaVMLDO_OpenLib(a1, luaopen_CLM);
                if (!result)
                {
                  result = __LuaVMLDO_OpenLib(a1, luaopen_math);
                  if (!result)
                  {
                    result = __LuaVMLDO_OpenLib(a1, luaopen_Utilities);
                    if (!result)
                    {
                      result = __LuaVMLDO_OpenLib(a1, luaopen_LDO);
                      if (!result)
                      {
                        result = __LuaVMLDO_OpenLib(a1, luaopen_LDOObject);
                        if (!result)
                        {
                          result = __LuaVMLDO_OpenLib(a1, luaopen_LDOTreeNode);
                          if (!result)
                          {
                            result = __LuaVMLDO_OpenLib(a1, luaopen_LDOLabel);
                            if (!result)
                            {
                              result = __LuaVMLDO_OpenLib(a1, luaopen_LDOLabelSet);
                              if (!result)
                              {

                                return __LuaVMLDO_OpenLib(a1, luaopen_luautf8);
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}