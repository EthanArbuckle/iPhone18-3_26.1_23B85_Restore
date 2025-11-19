uint64_t luaG_typeerror(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = luaT_typenames_[(*(a2 + 8) & 0xF) + 1];
  v6 = varinfo(a1, a2);
  return luaG_runerror(a1, "attempt to %s a %s value%s", a3, v5, v6);
}

uint64_t luaG_runerror(void *a1, char *a2, ...)
{
  va_start(va, a2);
  v3 = a1[4];
  v4 = luaO_pushvfstring(a1, a2, va);
  if ((*(v3 + 66) & 2) != 0)
  {
    v5 = *(**v3 + 24);
    v6 = v5[9];
    if (v6)
    {
      v7 = *(v6 + 4 * ((((*(v3 + 40) - v5[7]) << 30) - 0x100000000) >> 32));
    }

    else
    {
      v7 = -1;
    }

    luaG_addinfo(a1, v4, v5[13], v7);
  }

  return luaG_errormsg(a1);
}

const char *varinfo(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v2 = *(a1 + 32);
  if ((*(v2 + 66) & 2) == 0)
  {
    return "";
  }

  v4 = **v2;
  if (*(v4 + 10))
  {
    v5 = 0;
    v6 = (v4 + 32);
    while (**v6 != a2)
    {
      v5 += 16;
      ++v6;
      if (16 * *(v4 + 10) == v5)
      {
        goto LABEL_6;
      }
    }

    v12 = *(*(*(v4 + 24) + 88) + v5);
    if (v12)
    {
      v10 = (v12 + 24);
    }

    else
    {
      v10 = "?";
    }

    v9 = "upvalue";
    return luaO_pushfstring(a1, " (%s '%s')", v9, v10);
  }

LABEL_6:
  v7 = v2[4];
  v8 = a2 - v7;
  if (a2 - v7 < 0)
  {
    return "";
  }

  if (v8 >= v2[1] - v7)
  {
    return "";
  }

  v9 = getobjname(*(v4 + 24), ((v2[5] - *(*(v4 + 24) + 56)) >> 2) - 1, v8 >> 4, &v13);
  if (!v9)
  {
    return "";
  }

  v10 = v13;
  return luaO_pushfstring(a1, " (%s '%s')", v9, v10);
}

uint64_t luaG_concaterror(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 8) & 0xFu) - 3 < 2)
  {
    a2 = a3;
  }

  return luaG_typeerror(a1, a2, "concatenate");
}

uint64_t luaG_opinterror(uint64_t a1, _DWORD *a2, uint64_t a3, const char *a4)
{
  v9 = 0;
  if (a2[2] == 3)
  {
    v9 = *a2;
  }

  else if (!luaV_tonumber_(a2, &v9))
  {
    a3 = a2;
  }

  return luaG_typeerror(a1, a3, a4);
}

uint64_t luaG_tointerror(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v8 = 0;
  if (a2[2] == 19)
  {
    v8 = *a2;
  }

  else if (!luaV_tointeger(a2, &v8))
  {
    a3 = a2;
  }

  v6 = varinfo(a1, a3);
  return luaG_runerror(a1, "number%s has no integer representation", v6);
}

uint64_t luaG_ordererror(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (luaT_typenames_[(*(a2 + 8) & 0xF) + 1] == luaT_typenames_[(*(a3 + 8) & 0xF) + 1])
  {
    return luaG_runerror(a1, "attempt to compare two %s values");
  }

  else
  {
    return luaG_runerror(a1, "attempt to compare %s with %s");
  }
}

uint64_t luaG_addinfo(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    luaO_chunkid(v9, (a3 + 24), 0x3CuLL);
  }

  else
  {
    *v9 = 63;
  }

  result = luaO_pushfstring(a1, "%s:%d: %s", v9, a4, a2);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaG_errormsg(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    v3 = a1[7];
    *a1[2] = *(a1[2] - 16);
    *(a1[2] - 16) = *(v3 + v2);
    v4 = a1[2];
    a1[2] = v4 + 16;
    luaD_call(a1, (v4 - 16), 1, 0);
  }

  return luaD_throw(a1, 2);
}

uint64_t luaG_traceexec(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = *(result + 200);
  if ((v3 & 8) != 0 && !*(result + 192))
  {
    *(result + 192) = *(result + 188);
    v4 = (v2 + 66);
    v5 = *(v2 + 66);
    if ((v5 & 0x40) == 0)
    {
      result = luaD_hook(result, 3, -1);
      v6 = 1;
      if ((v3 & 4) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_5;
    }

LABEL_11:
    *v4 = v5 & 0xBF;
    return result;
  }

  v4 = (v2 + 66);
  v5 = *(v2 + 66);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_11;
  }

  v6 = 0;
  if ((*(result + 200) & 4) == 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  v7 = *(**v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v7 + 56);
  v10 = *(v7 + 72);
  if (v10)
  {
    v11 = *(v10 + 4 * (((v8 - v9) >> 2) - 1));
    if (((v8 - v9) >> 2) == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v11 = -1;
    if (((v8 - v9) >> 2) == 1)
    {
LABEL_18:
      result = luaD_hook(v1, 2, v11);
      goto LABEL_19;
    }
  }

  v12 = *(v1 + 40);
  if (v8 <= v12)
  {
    goto LABEL_18;
  }

  v13 = v10 ? *(v10 + 4 * ((((v12 - v9) << 30) - 0x100000000) >> 32)) : -1;
  if (v11 != v13)
  {
    goto LABEL_18;
  }

LABEL_19:
  v14 = *(v2 + 40);
  *(v1 + 40) = v14;
  if (*(v1 + 10) == 1)
  {
    if (v6)
    {
      *(v1 + 192) = 1;
      v14 = *(v2 + 40);
    }

    *(v2 + 40) = v14 - 4;
    *(v2 + 66) |= 0x40u;
    *v2 = *(v1 + 16) - 16;

    return luaD_throw(v1, 1);
  }

  return result;
}

const char *getobjname(void *a1, int a2, signed int a3, const char **a4)
{
  LODWORD(v6) = a2;
  v8 = "local";
  while (1)
  {
    v9 = luaF_getlocalname(a1, a3 + 1, v6);
    *a4 = v9;
    if (v9)
    {
      return v8;
    }

    v10 = v6;
    if (v6 < 1)
    {
      return 0;
    }

    v11 = 0;
    v12 = 0;
    v13 = a1[7];
    v6 = 0xFFFFFFFFLL;
    do
    {
      v14 = *(v13 + 4 * v11);
      v15 = v14 & 0x3F;
      v16 = (v14 >> 6);
      if ((*(v13 + 4 * v11) & 0x3Fu) > 0x23)
      {
        if ((v15 - 36) < 2)
        {
          goto LABEL_9;
        }

        if (v15 == 41)
        {
          v16 += 2;
LABEL_9:
          if (v11 < v12)
          {
            v17 = -1;
          }

          else
          {
            v17 = v11;
          }

          if (v16 <= a3)
          {
            v6 = v17;
          }

          else
          {
            v6 = v6;
          }

          goto LABEL_44;
        }

LABEL_35:
        v24 = luaP_opmodes[v15] & 0x40;
        if (v11 < v12)
        {
          v25 = -1;
        }

        else
        {
          v25 = v11;
        }

        if (v16 != a3 || v24 == 0)
        {
          v6 = v6;
        }

        else
        {
          v6 = v25;
        }

        goto LABEL_44;
      }

      if (v15 == 4)
      {
        if (v11 < v12)
        {
          v21 = -1;
        }

        else
        {
          v21 = v11;
        }

        v20 = v16 <= a3;
        v22 = v16 + (v14 >> 23);
        if (v20 && v22 >= a3)
        {
          v6 = v21;
        }

        else
        {
          v6 = v6;
        }
      }

      else
      {
        if (v15 != 30)
        {
          goto LABEL_35;
        }

        v18 = v11 + (v14 >> 14) - 131070;
        if (v18 <= v12)
        {
          v19 = v12;
        }

        else
        {
          v19 = v11 + (*(v13 + 4 * v11) >> 14) - 131070;
        }

        v20 = v11 < v18 && v18 <= v10;
        if (v20)
        {
          v12 = v19;
        }
      }

LABEL_44:
      ++v11;
    }

    while (v10 != v11);
    if (v6 == -1)
    {
      return 0;
    }

    v27 = *(v13 + 4 * v6);
    v28 = *(v13 + 4 * v6) & 0x3F;
    if ((v27 & 0x3F) != 0)
    {
      v8 = 0;
      if ((*(v13 + 4 * v6) & 0x3Fu) > 5)
      {
        if ((v28 - 6) >= 2)
        {
          if (v28 == 12)
          {
            kname(a1, v6, (v27 >> 14) & 0x1FF, a4);
            return "method";
          }
        }

        else
        {
          v31 = (v27 >> 14) & 0x1FF;
          v32 = v27 >> 23;
          if (v28 == 7)
          {
            v33 = luaF_getlocalname(a1, v32 + 1, v6);
            kname(a1, v6, v31, a4);
            if (!v33)
            {
              return "field";
            }
          }

          else
          {
            v36 = *(a1[11] + 16 * v32);
            if (v36)
            {
              v33 = (v36 + 24);
            }

            else
            {
              v33 = "?";
            }

            kname(a1, v6, (v27 >> 14) & 0x1FF, a4);
          }

          if (!strcmp(v33, "_ENV"))
          {
            return "global";
          }

          else
          {
            return "field";
          }
        }
      }

      else
      {
        switch(v28)
        {
          case 1:
            v34 = v27 >> 14;
            break;
          case 2:
            v34 = *(v13 + 4 * v6 + 4) >> 6;
            break;
          case 5:
            v29 = *(a1[11] + ((v27 >> 19) & 0x1FF0));
            if (v29)
            {
              v30 = (v29 + 24);
            }

            else
            {
              v30 = "?";
            }

            *a4 = v30;
            return "upvalue";
          default:
            return v8;
        }

        v35 = a1[6] + 16 * v34;
        if ((*(v35 + 8) & 0xF) != 4)
        {
          return 0;
        }

        *a4 = (*v35 + 24);
        return "constant";
      }

      return v8;
    }

    a3 = v27 >> 23;
    if (v27 >> 23 >= (v27 >> 6))
    {
      return 0;
    }
  }
}

uint64_t kname(uint64_t result, uint64_t a2, int a3, const char **a4)
{
  if ((a3 & 0x100) != 0)
  {
    v5 = *(result + 48) + 16 * (a3 & 0xFFFFFEFF);
    if ((*(v5 + 8) & 0xF) == 4)
    {
      v6 = (*v5 + 24);
LABEL_8:
      *a4 = v6;
      return result;
    }

LABEL_7:
    v6 = "?";
    goto LABEL_8;
  }

  result = getobjname();
  if (!result || *result != 99)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t luaD_throw(uint64_t result, int a2)
{
  while (1)
  {
    v2 = *(result + 88);
    if (v2)
    {
      *(v2 + 200) = a2;
      longjmp((v2 + 8), 1);
    }

    v3 = *(result + 24);
    *(result + 10) = a2;
    v4 = *(v3 + 224);
    if (!*(v4 + 88))
    {
      break;
    }

    v5 = *(v4 + 16);
    *(v4 + 16) = v5 + 1;
    *v5 = *(*(result + 16) - 16);
    result = *(v3 + 224);
  }

  return result;
}

uint64_t luaD_rawrunprotected(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = *(a1 + 198);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v8 = *(a1 + 88);
  *(a1 + 88) = &v8;
  if (!setjmp(v9))
  {
    a2(a1, a3);
  }

  *(a1 + 88) = v8;
  *(a1 + 198) = v6;
  return v10;
}

uint64_t luaD_reallocstack(uint64_t a1, int a2)
{
  v4 = *(a1 + 184);
  v5 = *(a1 + 56);
  v6 = a2;
  result = luaM_realloc_(a1, v5, 16 * v4, 16 * a2);
  *(a1 + 56) = result;
  if (v4 < a2)
  {
    v8 = 0;
    v9 = vdupq_n_s64(v6 - v4 - 1);
    v10 = (result + 16 * v4 + 40);
    do
    {
      v11 = vdupq_n_s64(v8);
      v12 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_1C378AF00)));
      if (vuzp1_s16(v12, *v9.i8).u8[0])
      {
        *(v10 - 8) = 0;
      }

      if (vuzp1_s16(v12, *&v9).i8[2])
      {
        *(v10 - 4) = 0;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_1C378AEF0)))).i32[1])
      {
        *v10 = 0;
        v10[4] = 0;
      }

      v8 += 4;
      v10 += 16;
    }

    while (((v6 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v8);
  }

  *(a1 + 184) = a2;
  *(a1 + 48) = result + 16 * v6 - 80;
  *(a1 + 16) = result + *(a1 + 16) - v5;
  for (i = *(a1 + 64); i; i = i[2])
  {
    *i = result + *i - v5;
  }

  for (j = *(a1 + 32); j; j = *(j + 16))
  {
    v15 = *(a1 + 56);
    v16 = v15 + *(j + 8) - v5;
    *j = v15 + *j - v5;
    *(j + 8) = v16;
    if ((*(j + 66) & 2) != 0)
    {
      *(j + 32) = v15 + *(j + 32) - v5;
    }
  }

  return result;
}

uint64_t luaD_growstack(uint64_t a1, int a2)
{
  v3 = *(a1 + 184);
  if (v3 <= 1000000)
  {
    v5 = ((*(a1 + 16) - *(a1 + 56)) >> 4) + a2;
    if (v5 <= 999995)
    {
      v6 = 2 * v3;
      if (v6 >= 1000000)
      {
        v6 = 1000000;
      }

      if (v6 <= v5 + 5)
      {
        v7 = v5 + 5;
      }

      else
      {
        v7 = v6;
      }

      return luaD_reallocstack(a1, v7);
    }

    else
    {
      luaD_reallocstack(a1, 1000200);

      return luaG_runerror(a1, "stack overflow");
    }
  }

  else
  {

    return luaD_throw(a1, 6);
  }
}

uint64_t luaD_shrinkstack(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  while (v3)
  {
    v4 = *(v3 + 8);
    v3 = *(v3 + 16);
    if (v2 < v4)
    {
      v2 = v4;
    }
  }

  v5 = (v2 - *(a1 + 56)) >> 4;
  v6 = v5 + 8;
  if (v5 >= -1)
  {
    v6 = v5 + 1;
  }

  if (v5 + 1 + (v6 >> 3) >= 999990)
  {
    v7 = 999990;
  }

  else
  {
    v7 = v5 + 1 + (v6 >> 3);
  }

  if (*(a1 + 184) <= 1000000)
  {
    result = luaE_shrinkCI(a1);
  }

  else
  {
    result = luaE_freeCI(a1);
  }

  if (v5 <= 999999 && v7 + 10 < *(a1 + 184))
  {

    return luaD_reallocstack(a1, v7 + 10);
  }

  return result;
}

uint64_t luaD_hook(uint64_t result, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(result + 168);
  if (v3)
  {
    v4 = result;
    if (*(result + 201))
    {
      v5 = *(result + 32);
      v6 = *(result + 16);
      v8 = *(result + 48);
      v7 = *(result + 56);
      v9 = *(v5 + 8) - v7;
      v10 = v6 - v7;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      memset(v13, 0, sizeof(v13));
      LODWORD(v13[0]) = a2;
      DWORD2(v14) = a3;
      v19 = 0;
      v20 = v5;
      if (v8 - v6 <= 335)
      {
        luaD_growstack(result, 20);
        v6 = *(v4 + 16);
      }

      *(v5 + 8) = v6 + 320;
      *(v4 + 201) = 0;
      *(v5 + 66) |= 4u;
      result = v3(v4, v13);
      *(v4 + 201) = 1;
      v11 = *(v4 + 56);
      *(v5 + 8) = v11 + v9;
      *(v4 + 16) = v11 + v10;
      *(v5 + 66) &= ~4u;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaD_precall(uint64_t a1, char *a2, __int16 a3)
{
  while (1)
  {
    v6 = *(a1 + 56);
    v7 = &a2[-v6];
    v8 = *(a2 + 2) & 0x3F;
    if (v8 == 6)
    {
      break;
    }

    if (v8 == 22)
    {
      goto LABEL_28;
    }

    if (v8 == 38)
    {
      a2 = (*a2 + 24);
LABEL_28:
      v24 = *a2;
      if (*(*(a1 + 24) + 24) >= 1)
      {
        luaC_step(a1);
      }

      if ((*(a1 + 48) - *(a1 + 16)) <= 335)
      {
        luaD_growstack(a1, 20);
      }

      v25 = *(*(a1 + 32) + 24);
      if (!v25)
      {
        v25 = luaE_extendCI(a1);
      }

      *(a1 + 32) = v25;
      *(v25 + 64) = a3;
      v26 = *(a1 + 16) + 320;
      *v25 = &v7[*(a1 + 56)];
      *(v25 + 8) = v26;
      *(v25 + 66) = 0;
      if (*(a1 + 200))
      {
        luaD_hook(a1, 0, -1);
      }

      v27 = v24(a1);
      luaD_poscall(a1, (*(a1 + 16) - 16 * v27), v27);
      return 1;
    }

    if ((*(a1 + 48) - *(a1 + 16)) <= 16)
    {
      luaD_growstack(a1, 1);
      v6 = *(a1 + 56);
    }

    a2 = &v7[v6];
    v9 = luaT_gettmbyobj(a1, &v7[v6], 0x17u);
    if ((v9[1] & 0xF) != 6)
    {
      luaG_typeerror(a1, a2, "call");
    }

    v10 = *(a1 + 16);
    if (v10 > a2)
    {
      do
      {
        *v10 = *(v10 - 1);
        v10 -= 16;
      }

      while (v10 > a2);
      v10 = *(a1 + 16);
    }

    *(a1 + 16) = v10 + 16;
    *a2 = *v9;
  }

  v11 = *(*a2 + 24);
  v12 = *(a1 + 16);
  v13 = (v12 - a2) >> 4;
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
    v12 = *(a1 + 16);
  }

  v14 = v13 - 1;
  v15 = *(v11 + 12);
  if (v15 >= (*(a1 + 48) - v12) >> 4)
  {
    luaD_growstack(a1, v15);
  }

  v16 = *(v11 + 10);
  if (v13 <= v16)
  {
    v17 = *(a1 + 16);
    v18 = v16 - v13 + 1;
    do
    {
      *(v17 + 8) = 0;
      v17 += 16;
      --v18;
    }

    while (v18);
    *(a1 + 16) = v17;
    v14 = v16;
  }

  if (*(v11 + 11))
  {
    v19 = *(a1 + 16);
    v20 = *(v11 + 12);
    if (v20 >= (*(a1 + 48) - v19) >> 4)
    {
      luaD_growstack(a1, v20);
      v19 = *(a1 + 16);
    }

    if (v16)
    {
      v21 = &v19[-16 * v14 + 8];
      do
      {
        v22 = *(a1 + 16);
        *(a1 + 16) = v22 + 1;
        *v22 = *(v21 - 8);
        *v21 = 0;
        v21 += 16;
        --v16;
      }

      while (v16);
    }

    v23 = &v7[*(a1 + 56)];
  }

  else
  {
    v23 = &v7[*(a1 + 56)];
    v19 = v23 + 16;
  }

  v29 = *(*(a1 + 32) + 24);
  if (!v29)
  {
    v29 = luaE_extendCI(a1);
  }

  *(a1 + 32) = v29;
  *(v29 + 64) = a3;
  *(v29 + 32) = v19;
  v30 = &v19[16 * *(v11 + 12)];
  *v29 = v23;
  *(v29 + 8) = v30;
  *(v29 + 40) = *(v11 + 56);
  *(v29 + 66) = 2;
  *(a1 + 16) = v30;
  if ((*(a1 + 200) & 1) == 0)
  {
    return 0;
  }

  *(v29 + 40) += 4;
  v31 = *(v29 + 16);
  if ((*(v31 + 66) & 2) != 0 && (*(*(v31 + 40) - 4) & 0x3F) == 0x25)
  {
    *(v29 + 66) = 34;
    v32 = 4;
  }

  else
  {
    v32 = 0;
  }

  luaD_hook(a1, v32, -1);
  result = 0;
  *(v29 + 40) -= 4;
  return result;
}

uint64_t luaD_poscall(uint64_t a1, char *a2, int a3)
{
  v5 = *(a1 + 32);
  if ((*(a1 + 200) & 6) != 0)
  {
    if ((*(a1 + 200) & 2) != 0)
    {
      v6 = &a2[-*(a1 + 56)];
      luaD_hook(a1, 1, -1);
      a2 = &v6[*(a1 + 56)];
    }

    v7 = v5[2];
    *(a1 + 40) = *(v7 + 40);
  }

  else
  {
    v7 = v5[2];
  }

  v8 = *v5;
  v9 = *(v5 + 32);
  *(a1 + 32) = v7;
  v10 = v9;
  if (v9)
  {
    v11 = a3 < 1;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    do
    {
      *v8 = *a2;
      v8 += 16;
      if (!--v10)
      {
        break;
      }

      a2 += 16;
      v11 = a3-- > 1;
    }

    while (v11);
  }

  if (v10 < 1)
  {
    v13 = v8;
  }

  else
  {
    v12 = v10 + 1;
    do
    {
      v13 = v8 + 16;
      *(v8 + 8) = 0;
      --v12;
      v8 += 16;
    }

    while (v12 > 1);
  }

  *(a1 + 16) = v13;
  return (v9 + 1);
}

uint64_t luaD_call(uint64_t a1, char *a2, __int16 a3, int a4)
{
  v8 = *(a1 + 198) + 1;
  *(a1 + 198) = v8;
  if (v8 >= 0xC8u)
  {
    if (v8 == 200)
    {
      luaG_runerror(a1, "C stack overflow");
    }

    else if (v8 >= 0xE1u)
    {
      luaD_throw(a1, 6);
    }
  }

  if (!a4)
  {
    ++*(a1 + 196);
  }

  result = luaD_precall(a1, a2, a3);
  if (!result)
  {
    result = luaV_execute(a1);
    if (a4)
    {
      goto LABEL_10;
    }

LABEL_12:
    --*(a1 + 196);
    goto LABEL_10;
  }

  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_10:
  --*(a1 + 198);
  return result;
}

uint64_t lua_resume(uint64_t a1, uint64_t a2, int a3)
{
  v13 = a3;
  if (a2)
  {
    v4 = *(a2 + 198) + 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(a1 + 196);
  *(a1 + 198) = v4;
  *(a1 + 196) = 0;
  v6 = luaD_rawrunprotected(a1, resume, &v13);
  v12 = v6;
  if (v6 == -1)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6;
    if (v6 >= 2)
    {
LABEL_6:
      v8 = *(a1 + 32);
      if (v8)
      {
        do
        {
          if ((*(v8 + 66) & 0x10) != 0)
          {
            v9 = *(a1 + 56);
            v10 = *(v8 + 56);
            luaF_close(a1, v9 + v10);
            seterrorobj(a1, v7, v9 + v10);
            *(a1 + 32) = v8;
            *(a1 + 201) = *(v8 + 66) & 1;
            *(a1 + 196) = 0;
            luaD_shrinkstack(a1);
            *(a1 + 176) = *(v8 + 40);
            v7 = luaD_rawrunprotected(a1, unroll, &v12);
            v12 = v7;
            if (v7 > 1)
            {
              goto LABEL_6;
            }

            goto LABEL_15;
          }

          v8 = *(v8 + 16);
        }

        while (v8);
        if (v7 < 2)
        {
          goto LABEL_15;
        }
      }

      *(a1 + 10) = v7;
      seterrorobj(a1, v7, *(a1 + 16));
      *(*(a1 + 32) + 8) = *(a1 + 16);
      v7 = v12;
    }
  }

LABEL_15:
  *(a1 + 196) = v5;
  --*(a1 + 198);
  return v7;
}

void *resume(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = (*(a1 + 16) - 16 * v3);
  v5 = *(a1 + 32);
  if (*(a1 + 198) >= 0xC8u)
  {
    resume_error(a1, "C stack overflow", *(a1 + 16) - 16 * v3);
  }

  if (*(a1 + 10) == 1)
  {
    *(a1 + 10) = 0;
    *v5 = *(a1 + 56) + *(v5 + 56);
    if ((*(v5 + 66) & 2) != 0)
    {
      luaV_execute(a1);
    }

    else
    {
      v7 = *(v5 + 32);
      if (v7)
      {
        LODWORD(v3) = v7(a1, 1, *(v5 + 48));
        v4 = (*(a1 + 16) - 16 * v3);
      }

      luaD_poscall(a1, v4, v3);
    }

    return unroll(a1, 0, v8, v9, v10, v11, v12, v13);
  }

  else if (*(a1 + 10))
  {

    return resume_error(a1, "cannot resume dead coroutine", v4);
  }

  else
  {
    if (v5 != a1 + 96)
    {
      resume_error(a1, "cannot resume non-suspended coroutine", v4);
    }

    result = luaD_precall(a1, v4 - 16, -1);
    if (!result)
    {

      return luaV_execute(a1);
    }
  }

  return result;
}

void *unroll(void *result, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (a2)
  {
    result = finishCcall(result, *a2);
  }

  while (1)
  {
    v9 = v8[4];
    if (v9 == v8 + 12)
    {
      break;
    }

    if ((*(v9 + 66) & 2) != 0)
    {
      luaV_finishOp(v8, a2, a3, a4, a5, a6, a7, a8);
      result = luaV_execute(v8);
    }

    else
    {
      result = finishCcall(v8, 1);
    }
  }

  return result;
}

uint64_t seterrorobj(uint64_t result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 == 6)
  {
    result = luaS_newlstr(result, "error in error handling", 0x17uLL);
    *a3 = result;
    v6 = *(result + 8);
  }

  else
  {
    if (a2 != 4)
    {
      *a3 = *(*(result + 16) - 16);
      goto LABEL_7;
    }

    v5 = *(*(result + 24) + 240);
    *a3 = v5;
    v6 = *(v5 + 8);
  }

  *(a3 + 8) = v6 | 0x40;
LABEL_7:
  *(v4 + 16) = a3 + 16;
  return result;
}

uint64_t lua_yieldk(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  if (*(a1 + 196))
  {
    if (*(*(a1 + 24) + 224) == a1)
    {
      luaG_runerror(a1, "attempt to yield from outside a coroutine");
    }

    else
    {
      luaG_runerror(a1, "attempt to yield across a C-call boundary");
    }
  }

  *(a1 + 10) = 1;
  *(v8 + 56) = *v8 - *(a1 + 56);
  if ((*(v8 + 66) & 2) == 0)
  {
    *(v8 + 32) = a4;
    if (a4)
    {
      *(v8 + 48) = a3;
    }

    *v8 = *(a1 + 16) - 16 * a2 - 16;
    luaD_throw(a1, 1);
  }

  return 0;
}

uint64_t luaD_pcall(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 201);
  v9 = *(a1 + 196);
  v10 = *(a1 + 176);
  *(a1 + 176) = a5;
  v11 = luaD_rawrunprotected(a1, a2, a3);
  if (v11)
  {
    v12 = *(a1 + 56);
    luaF_close(a1, v12 + a4);
    seterrorobj(a1, v11, v12 + a4);
    *(a1 + 32) = v7;
    *(a1 + 201) = v8;
    *(a1 + 196) = v9;
    luaD_shrinkstack(a1);
  }

  *(a1 + 176) = v10;
  return v11;
}

uint64_t luaD_protectedparser(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  ++*(a1 + 196);
  v13 = a4;
  v14 = a3;
  *&v11 = 0;
  *&v12 = 0;
  v7 = a2;
  v8 = 0;
  *(&v9 + 1) = 0;
  *&v10 = 0;
  v5 = luaD_pcall(a1, f_parser, &v7, *(a1 + 16) - *(a1 + 56), *(a1 + 176));
  v8 = luaM_realloc_(a1, v8, *(&v9 + 1), 0);
  *(&v9 + 1) = 0;
  luaM_realloc_(a1, v10, 2 * SHIDWORD(v10), 0);
  luaM_realloc_(a1, v11, 24 * SHIDWORD(v11), 0);
  luaM_realloc_(a1, v12, 24 * SHIDWORD(v12), 0);
  --*(a1 + 196);
  return v5;
}

uint64_t f_parser(char *a1, uint64_t **a2)
{
  v4 = *a2;
  v5 = **a2;
  **a2 = v5 - 1;
  if (v5)
  {
    v6 = v4[1];
    v4[1] = (v6 + 1);
    v7 = *v6;
  }

  else
  {
    v7 = luaZ_fill(v4);
  }

  v8 = a2[10];
  if (v7 == 27)
  {
    checkmode(a1, v8, "binary");
    v9 = luaU_undump(a1, *a2, (a2 + 1), a2[11]);
  }

  else
  {
    checkmode(a1, v8, "text");
    v9 = luaY_parser(a1, *a2, (a2 + 1), a2 + 8, a2[11], v7);
  }

  return luaF_initupvals(a1, v9);
}

uint64_t resume_error(void *a1, char *a2, uint64_t a3)
{
  a1[2] = a3;
  v5 = luaS_new(a1, a2);
  *a3 = v5;
  *(a3 + 8) = *(v5 + 8) | 0x40;
  a1[2] += 16;

  return luaD_throw(a1, -1);
}

uint64_t finishCcall(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if ((*(v3 + 66) & 0x10) != 0)
  {
    *(v3 + 66) &= ~0x10u;
    a1[22] = *(v3 + 40);
  }

  if (*(v3 + 64) == -1)
  {
    v4 = a1[2];
    if (*(v3 + 8) < v4)
    {
      *(v3 + 8) = v4;
    }
  }

  v5 = (*(v3 + 32))(a1, a2, *(v3 + 48));
  v6 = (a1[2] - 16 * v5);

  return luaD_poscall(a1, v6, v5);
}

char *checkmode(char *result, char *__s, const char *a3)
{
  if (__s)
  {
    v5 = result;
    result = strchr(__s, *a3);
    if (!result)
    {
      luaO_pushfstring(v5, "attempt to load a %s chunk (mode is '%s')", a3, __s);

      return luaD_throw(v5, 3);
    }
  }

  return result;
}

uint64_t luaU_dump(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, int a5)
{
  v10[0] = a1;
  v10[1] = a3;
  v10[2] = a4;
  v11 = a5;
  v12 = a3();
  LOBYTE(v13) = 83;
  if (!v12)
  {
    v12 = (a3)(a1, &v13, 1, a4);
    LOBYTE(v13) = 0;
    if (!v12)
    {
      v12 = (a3)(a1, &v13, 1, a4);
      if (!v12)
      {
        v12 = (a3)(a1, "\x19\x93\r\n\x1A\n", 6, a4);
        LOBYTE(v13) = 4;
        if (!v12)
        {
          v12 = (a3)(a1, &v13, 1, a4);
          LOBYTE(v13) = 8;
          if (!v12)
          {
            v12 = (a3)(a1, &v13, 1, a4);
            LOBYTE(v13) = 4;
            if (!v12)
            {
              v12 = (a3)(a1, &v13, 1, a4);
              LOBYTE(v13) = 8;
              if (!v12)
              {
                v12 = (a3)(a1, &v13, 1, a4);
                LOBYTE(v13) = 8;
                if (!v12)
                {
                  v12 = (a3)(a1, &v13, 1, a4);
                  v13 = 22136;
                  if (!v12)
                  {
                    v12 = (a3)(a1, &v13, 8, a4);
                    v13 = 0x4077280000000000;
                    if (!v12)
                    {
                      v12 = (a3)(a1, &v13, 8, a4);
                      LOBYTE(v13) = *(a2 + 16);
                      if (!v12)
                      {
                        v12 = (a3)(a1, &v13, 1, a4);
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

  DumpFunction(a2, 0, v10);
  return v12;
}

uint64_t DumpFunction(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a3 + 6) || (v6 = *(a1 + 104), v6 == a2))
  {
    LOBYTE(v30) = 0;
    v5 = *(a3 + 7);
    if (!v5)
    {
      v5 = (a3[1])(*a3, &v30, 1, a3[2]);
      *(a3 + 7) = v5;
    }
  }

  else
  {
    DumpString(v6, a3);
    v5 = *(a3 + 7);
  }

  LODWORD(v30) = *(a1 + 40);
  if (v5)
  {
    goto LABEL_13;
  }

  v5 = (a3[1])(*a3, &v30, 4, a3[2]);
  *(a3 + 7) = v5;
  LODWORD(v30) = *(a1 + 44);
  if (v5)
  {
    goto LABEL_13;
  }

  v5 = (a3[1])(*a3, &v30, 4, a3[2]);
  *(a3 + 7) = v5;
  LOBYTE(v30) = *(a1 + 10);
  if (v5)
  {
    goto LABEL_13;
  }

  v5 = (a3[1])(*a3, &v30, 1, a3[2]);
  *(a3 + 7) = v5;
  LOBYTE(v30) = *(a1 + 11);
  if (v5)
  {
    goto LABEL_13;
  }

  v5 = (a3[1])(*a3, &v30, 1, a3[2]);
  *(a3 + 7) = v5;
  LOBYTE(v30) = *(a1 + 12);
  if (v5 || (v5 = (a3[1])(*a3, &v30, 1, a3[2]), *(a3 + 7) = v5, LODWORD(v30) = *(a1 + 24), v5) || (v5 = (a3[1])(*a3, &v30, 4, a3[2]), (*(a3 + 7) = v5) != 0))
  {
LABEL_13:
    v7 = *(a1 + 20);
  }

  else
  {
    v5 = (a3[1])(*a3, *(a1 + 56), 4 * *(a1 + 24), a3[2]);
    *(a3 + 7) = v5;
    v7 = *(a1 + 20);
    LODWORD(v30) = v7;
    if (!v5)
    {
      v5 = (a3[1])(*a3, &v30, 4, a3[2]);
      *(a3 + 7) = v5;
    }
  }

  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 16 * v7;
    while (1)
    {
      v10 = *(a1 + 48) + v8;
      v11 = *(v10 + 8);
      LOBYTE(v30) = v11 & 0x3F;
      if (*(a3 + 7))
      {
        v12 = 0;
      }

      else
      {
        v13 = (a3[1])(*a3, &v30, 1, a3[2]);
        *(a3 + 7) = v13;
        v11 = *(v10 + 8);
        v12 = v13 == 0;
      }

      v14 = v11 & 0x3F;
      if (v14 <= 3)
      {
        if (v14 != 1)
        {
          if (v14 != 3)
          {
            goto LABEL_33;
          }

          v30 = *v10;
          if (!v12)
          {
            goto LABEL_33;
          }

LABEL_29:
          v15 = (a3[1])(*a3, &v30, 8, a3[2]);
LABEL_32:
          *(a3 + 7) = v15;
          goto LABEL_33;
        }

        LOBYTE(v30) = *v10;
        if (v12)
        {
          v15 = (a3[1])(*a3, &v30, 1, a3[2]);
          goto LABEL_32;
        }
      }

      else
      {
        switch(v14)
        {
          case 4:
            goto LABEL_23;
          case 19:
            v30 = *v10;
            if (v12)
            {
              goto LABEL_29;
            }

            break;
          case 20:
LABEL_23:
            DumpString(*v10, a3);
            break;
        }
      }

LABEL_33:
      v8 += 16;
      if (v9 == v8)
      {
        v5 = *(a3 + 7);
        break;
      }
    }
  }

  v16 = *(a1 + 16);
  LODWORD(v30) = *(a1 + 16);
  if (!v5)
  {
    v5 = (a3[1])(*a3, &v30, 4, a3[2]);
    *(a3 + 7) = v5;
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 16 * v16;
    do
    {
      LOBYTE(v30) = *(*(a1 + 88) + v17 + 8);
      if (!v5)
      {
        v5 = (a3[1])(*a3, &v30, 1, a3[2]);
        *(a3 + 7) = v5;
        LOBYTE(v30) = *(*(a1 + 88) + v17 + 9);
        if (!v5)
        {
          v5 = (a3[1])(*a3, &v30, 1, a3[2]);
          *(a3 + 7) = v5;
        }
      }

      v17 += 16;
    }

    while (v18 != v17);
  }

  v19 = *(a1 + 32);
  LODWORD(v30) = *(a1 + 32);
  if (!v5)
  {
    *(a3 + 7) = (a3[1])(*a3, &v30, 4, a3[2]);
  }

  if (v19 >= 1)
  {
    v20 = 0;
    v21 = 8 * v19;
    do
    {
      DumpFunction(*(*(a1 + 64) + v20), *(a1 + 104), a3);
      v20 += 8;
    }

    while (v21 != v20);
  }

  if (*(a3 + 6))
  {
    v22 = 0;
  }

  else
  {
    v22 = *(a1 + 28);
  }

  LODWORD(v30) = v22;
  result = *(a3 + 7);
  if (!result)
  {
    result = (a3[1])(*a3, &v30, 4, a3[2]);
    *(a3 + 7) = result;
    if (!result)
    {
      result = (a3[1])(*a3, *(a1 + 72), 4 * v22, a3[2]);
      *(a3 + 7) = result;
    }
  }

  if (*(a3 + 6))
  {
    v24 = 0;
  }

  else
  {
    v24 = *(a1 + 36);
  }

  LODWORD(v30) = v24;
  if (!result)
  {
    result = (a3[1])(*a3, &v30, 4, a3[2]);
    *(a3 + 7) = result;
  }

  if (v24 >= 1)
  {
    v25 = 0;
    v26 = 16 * v24;
    do
    {
      DumpString(*(*(a1 + 80) + v25), a3);
      LODWORD(v30) = *(*(a1 + 80) + v25 + 8);
      result = *(a3 + 7);
      if (!result)
      {
        result = (a3[1])(*a3, &v30, 4, a3[2]);
        *(a3 + 7) = result;
        LODWORD(v30) = *(*(a1 + 80) + v25 + 12);
        if (!result)
        {
          result = (a3[1])(*a3, &v30, 4, a3[2]);
          *(a3 + 7) = result;
        }
      }

      v25 += 16;
    }

    while (v26 != v25);
  }

  if (*(a3 + 6))
  {
    v27 = 0;
  }

  else
  {
    v27 = *(a1 + 16);
  }

  LODWORD(v30) = v27;
  if (!result)
  {
    result = (a3[1])(*a3, &v30, 4, a3[2]);
    *(a3 + 7) = result;
  }

  if (v27 >= 1)
  {
    v28 = 0;
    v29 = 16 * v27;
    do
    {
      result = DumpString(*(*(a1 + 88) + v28), a3);
      v28 += 16;
    }

    while (v29 != v28);
  }

  return result;
}

uint64_t DumpString(uint64_t result, void *a2)
{
  if (!result)
  {
    v7 = 0;
    if (*(a2 + 7))
    {
      return result;
    }

    result = (a2[1])(*a2, &v7, 1, a2[2]);
LABEL_16:
    *(a2 + 7) = result;
    return result;
  }

  v3 = result;
  if (*(result + 8) == 4)
  {
    v4 = *(result + 11);
  }

  else
  {
    v4 = *(result + 16);
  }

  v5 = v4 + 1;
  v6 = v5;
  if (v5 <= 0xFE)
  {
    v8 = v5;
    result = *(a2 + 7);
    if (result)
    {
LABEL_14:
      if (result)
      {
        return result;
      }

      result = (a2[1])(*a2, v3 + 24, v6 - 1, a2[2]);
      goto LABEL_16;
    }

    result = (a2[1])(*a2, &v8, 1, a2[2]);
LABEL_13:
    *(a2 + 7) = result;
    goto LABEL_14;
  }

  v9 = -1;
  if (!*(a2 + 7))
  {
    result = (a2[1])(*a2, &v9, 1, a2[2]);
    *(a2 + 7) = result;
    if (!result)
    {
      result = (a2[1])(*a2, &v6, 8, a2[2]);
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t luaF_newCclosure(uint64_t a1, int a2)
{
  v2 = a2;
  result = luaC_newobj(a1, 38, 16 * a2 + 32);
  *(result + 10) = v2;
  return result;
}

uint64_t luaF_newLclosure(uint64_t a1, unsigned int a2)
{
  v3 = luaC_newobj(a1, 6, (8 * a2 + 32));
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 10) = a2;
  if (a2)
  {
    bzero((v3 - 8 * (a2 - 1) + 8 * (a2 - 1) + 32), 8 * a2);
  }

  return v4;
}

uint64_t luaF_initupvals(uint64_t result, uint64_t a2)
{
  if (*(a2 + 10))
  {
    v3 = result;
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      result = luaM_realloc_(v3, 0, 0, 32);
      *result = result + 16;
      *(result + 8) = 1;
      *(result + 24) = 0;
      *(v5 + 8 * v4++) = result;
    }

    while (v4 < *(a2 + 10));
  }

  return result;
}

uint64_t luaF_findupval(void *a1, unint64_t a2)
{
  v5 = a1 + 8;
  v4 = a1[8];
  if (v4 && (v6 = *v4, *v4 >= a2))
  {
    while (1)
    {
      result = v4;
      if (v6 == a2)
      {
        break;
      }

      v4 = v4[2];
      if (v4)
      {
        v6 = *v4;
        if (*v4 >= a2)
        {
          continue;
        }
      }

      v5 = (result + 16);
      goto LABEL_7;
    }
  }

  else
  {
LABEL_7:
    result = luaM_realloc_(a1, 0, 0, 32);
    *(result + 16) = *v5;
    *(result + 24) = 1;
    *v5 = result;
    *result = a2;
    *(result + 8) = 0;
    if (a1[10] == a1)
    {
      v8 = a1[3];
      a1[10] = *(v8 + 168);
      *(v8 + 168) = a1;
    }
  }

  return result;
}

uint64_t luaF_close(uint64_t result, unint64_t a2)
{
  v3 = *(result + 64);
  if (v3)
  {
    v4 = result;
    do
    {
      v5 = *v3;
      if (*v3 < a2)
      {
        break;
      }

      v6 = (v3 + 16);
      *(v4 + 64) = *(v3 + 16);
      if (*(v3 + 8))
      {
        *v6 = *v5;
        *v3 = v6;
        if ((*(v3 + 24) & 0x40) != 0)
        {
          result = luaC_upvalbarrier_(v4, v3);
        }
      }

      else
      {
        result = luaM_realloc_(v4, v3, 32, 0);
      }

      v3 = *(v4 + 64);
    }

    while (v3);
  }

  return result;
}

double luaF_newproto(uint64_t a1)
{
  v1 = luaC_newobj(a1, 9, 120);
  *(v1 + 10) = 0;
  *(v1 + 12) = 0;
  result = 0.0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  return result;
}

uint64_t luaF_freeproto(uint64_t a1, uint64_t a2)
{
  luaM_realloc_(a1, *(a2 + 56), 4 * *(a2 + 24), 0);
  luaM_realloc_(a1, *(a2 + 64), 8 * *(a2 + 32), 0);
  luaM_realloc_(a1, *(a2 + 48), 16 * *(a2 + 20), 0);
  luaM_realloc_(a1, *(a2 + 72), 4 * *(a2 + 28), 0);
  luaM_realloc_(a1, *(a2 + 80), 16 * *(a2 + 36), 0);
  luaM_realloc_(a1, *(a2 + 88), 16 * *(a2 + 16), 0);

  return luaM_realloc_(a1, a2, 120, 0);
}

uint64_t luaF_getlocalname(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 36);
  if (v3 >= 1)
  {
    for (i = (*(a1 + 80) + 12); *(i - 1) <= a3; i += 4)
    {
      if (*i > a3 && !--a2)
      {
        return *(i - 3) + 24;
      }

      if (!--v3)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t luaC_barrier_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 24);
  if (*(result + 85) <= 1u)
  {
    return reallymarkobject(result, a3);
  }

  *(a2 + 9) = *(a2 + 9) & 0xF8 | *(result + 84) & 3;
  return result;
}

uint64_t reallymarkobject(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(a2 + 9);
  while (1)
  {
    v5 = v4 & 0xFC;
    *(v2 + 9) = v5;
    v6 = *(v2 + 8);
    if (v6 != 7)
    {
      break;
    }

    v7 = *(v2 + 16);
    if (v7 && (*(v7 + 9) & 3) != 0)
    {
      result = reallymarkobject(v3);
      v5 = *(v2 + 9);
    }

    *(v2 + 9) = v5 | 4;
    *(v3 + 32) += *(v2 + 24) + 40;
    if ((*(v2 + 10) & 0x40) != 0)
    {
      v2 = *(v2 + 32);
      v4 = *(v2 + 9);
      if ((v4 & 3) != 0)
      {
        continue;
      }
    }

    return result;
  }

  if (*(v2 + 8) > 7u)
  {
    if (*(v2 + 8) <= 0x13u)
    {
      if (v6 == 8)
      {
        *(v2 + 72) = *(v3 + 112);
      }

      else
      {
        if (v6 != 9)
        {
          return result;
        }

        *(v2 + 112) = *(v3 + 112);
      }

      goto LABEL_26;
    }

    if (v6 != 20)
    {
      if (v6 != 38)
      {
        return result;
      }

      goto LABEL_20;
    }

    *(v2 + 9) = v5 | 4;
    v8 = *(v2 + 16);
LABEL_24:
    *(v3 + 32) += v8 + 25;
    return result;
  }

  switch(v6)
  {
    case 4:
      *(v2 + 9) = v5 | 4;
      v8 = *(v2 + 11);
      goto LABEL_24;
    case 5:
      *(v2 + 48) = *(v3 + 112);
      goto LABEL_26;
    case 6:
LABEL_20:
      *(v2 + 16) = *(v3 + 112);
LABEL_26:
      *(v3 + 112) = v2;
      break;
  }

  return result;
}

uint64_t luaC_barrierback_(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  *(a2 + 9) &= ~4u;
  *(a2 + 48) = *(v2 + 120);
  *(v2 + 120) = a2;
  return result;
}

uint64_t luaC_upvalbarrier_(uint64_t a1, uint64_t **a2)
{
  result = *(a1 + 24);
  if (*(result + 85) <= 1u)
  {
    v3 = **a2;
    if ((*(v3 + 9) & 3) != 0)
    {
      return reallymarkobject(result, v3);
    }
  }

  return result;
}

uint64_t luaC_fix(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  *(a2 + 9) &= 0xFCu;
  *(v2 + 88) = *a2;
  *a2 = *(v2 + 160);
  *(v2 + 160) = a2;
  return result;
}

uint64_t luaC_newobj(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a1 + 24);
  result = luaM_realloc_(a1, 0, a2 & 0xF, a3);
  *(result + 9) = *(v4 + 84) & 3;
  *(result + 8) = a2;
  *result = *(v4 + 88);
  *(v4 + 88) = result;
  return result;
}

uint64_t luaC_upvdeccount(uint64_t result, void *a2)
{
  v2 = a2[1] - 1;
  a2[1] = v2;
  if (!v2 && *a2 == a2 + 2)
  {
    return luaM_realloc_(result, a2, 32, 0);
  }

  return result;
}

uint64_t *luaC_checkfinalizer(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(a2 + 9) & 8) == 0 && (*(a3 + 10) & 4) == 0)
    {
      v4 = result;
      v5 = result[3];
      result = luaT_gettm(a3, 2, *(v5 + 264));
      if (result)
      {
        if (*(v5 + 85) - 2 <= 3)
        {
          *(a2 + 9) = *(a2 + 9) & 0xF8 | *(v5 + 84) & 3;
          v6 = *(v5 + 96);
          if (v6 == a2)
          {
            do
            {
              result = sweeplist(v4, v6, 1);
              v6 = result;
            }

            while (result == a2);
            *(v5 + 96) = result;
          }
        }

        v7 = (v5 + 88);
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7 != a2);
        *v8 = *a2;
        *a2 = *(v5 + 104);
        *(v5 + 104) = a2;
        *(a2 + 9) |= 8u;
      }
    }
  }

  return result;
}

uint64_t *luaC_freeallobjects(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = (v2 + 152);
  do
  {
    v4 = v3;
    v3 = *v3;
  }

  while (v3);
  v6 = (v2 + 104);
  v5 = *(v2 + 104);
  v7 = *(a1 + 24);
  if (v5)
  {
    do
    {
      *v6 = *v5;
      *v5 = *v4;
      *v4 = v5;
      v4 = v5;
      v5 = *v6;
    }

    while (*v6);
    v7 = *(a1 + 24);
  }

  while (*(v7 + 152))
  {
    GCTM(a1, 0);
  }

  *(v2 + 84) = 3;
  *(v2 + 86) = 0;
  sweeplist(a1, (v2 + 104), -1);
  sweeplist(a1, (v2 + 88), -1);

  return sweeplist(a1, (v2 + 160), -1);
}

uint64_t *sweeplist(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = a2;
    v7 = *(*(a1 + 24) + 84);
    v8 = v7 ^ 3;
    v9 = v7 & 3;
    do
    {
      if (!a3)
      {
        return v5;
      }

      v10 = *(v3 + 9);
      if (((v10 ^ 3) & v8) != 0)
      {
        *(v3 + 9) = v10 & 0xF8 | v9;
        v5 = v3;
LABEL_33:
        v11 = *v5;
        goto LABEL_34;
      }

      v11 = *v3;
      *v5 = *v3;
      v12 = *(v3 + 8);
      if (v12 > 7)
      {
        if (*(v3 + 8) > 0x13u)
        {
          if (v12 == 20)
          {
            v15 = *(v3 + 16);
LABEL_31:
            v13 = v15 + 25;
            goto LABEL_32;
          }

          if (v12 == 38)
          {
            v14 = 16 * *(v3 + 10);
            goto LABEL_29;
          }
        }

        else
        {
          if (v12 == 8)
          {
            luaE_freethread(a1, v3);
            goto LABEL_33;
          }

          if (v12 == 9)
          {
            luaF_freeproto(a1, v3);
            goto LABEL_33;
          }
        }
      }

      else if (*(v3 + 8) > 5u)
      {
        if (v12 == 6)
        {
          v16 = *(v3 + 10);
          if (v16)
          {
            for (i = 0; i < v16; ++i)
            {
              v18 = *(v3 + 32 + 8 * i);
              if (v18)
              {
                luaC_upvdeccount(a1, v18);
                v16 = *(v3 + 10);
              }
            }

            v14 = 8 * v16;
LABEL_29:
            v13 = v14 + 32;
          }

          else
          {
            v13 = 32;
          }

          goto LABEL_32;
        }

        if (v12 == 7)
        {
          v13 = *(v3 + 24) + 40;
LABEL_32:
          luaM_realloc_(a1, v3, v13, 0);
          goto LABEL_33;
        }
      }

      else
      {
        if (v12 == 4)
        {
          luaS_remove(a1, v3);
          v15 = *(v3 + 11);
          goto LABEL_31;
        }

        if (v12 == 5)
        {
          luaH_free(a1, v3);
          goto LABEL_33;
        }
      }

LABEL_34:
      --a3;
      v3 = v11;
    }

    while (v11);
  }

  return 0;
}

uint64_t luaC_runtilstate(uint64_t result, unsigned int a2)
{
  v2 = *(result + 24);
  if (((a2 >> *(v2 + 85)) & 1) == 0)
  {
    v4 = result;
    do
    {
      result = singlestep(v4);
    }

    while (((a2 >> *(v2 + 85)) & 1) == 0);
  }

  return result;
}

uint64_t singlestep(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 24);
  v4 = *(v3 + 85);
  if (v4 > 3)
  {
    if (*(v3 + 85) > 5u)
    {
      if (v4 != 6)
      {
        if (v4 == 7)
        {
          *(v3 + 32) = 8 * *(v3 + 60);
          *(v3 + 112) = 0u;
          *(v3 + 128) = 0u;
          *(v3 + 144) = 0;
          v26 = *(v3 + 224);
          if ((*(v26 + 9) & 3) != 0)
          {
            reallymarkobject(v3, v26);
          }

          if ((*(v3 + 72) & 0x40) != 0)
          {
            v27 = *(v3 + 64);
            if ((*(v27 + 9) & 3) != 0)
            {
              reallymarkobject(v3, v27);
            }
          }

          markmt(v3);
          markbeingfnz(v3);
          *(v3 + 85) = 0;
          return *(v3 + 32);
        }

        return v2;
      }

      if (*(v3 + 152) && *(v3 + 86) != 1)
      {
        return 7 * runafewfinalizers(a1);
      }

      v2 = 0;
      v22 = 7;
    }

    else
    {
      if (v4 == 4)
      {
        v24 = *(a1 + 24);
        v25 = 5;
        v23 = 0;
        goto LABEL_64;
      }

      if (v4 != 5)
      {
        return v2;
      }

      *(*(v3 + 224) + 9) = *(*(v3 + 224) + 9) & 0xF8 | *(v3 + 84) & 3;
      if (*(v3 + 86) != 1)
      {
        v20 = *(v3 + 24);
        *(v3 + 176) = luaM_realloc_(a1, *(v3 + 176), *(v3 + 192), 0);
        *(v3 + 192) = 0;
        v21 = *(v3 + 60);
        if (*(v3 + 56) < v21 / 4)
        {
          luaS_resize(a1, v21 / 2);
        }

        *(v3 + 40) += *(v3 + 24) - v20;
      }

      v2 = 0;
      v22 = 6;
    }

    *(v3 + 85) = v22;
    return v2;
  }

  if (*(v3 + 85) <= 1u)
  {
    if (*(v3 + 85))
    {
      v5 = *(a1 + 24);
      if (*(v3 + 112))
      {
        do
        {
          propagatemark(v3);
        }

        while (*(v3 + 112));
        v5 = *(a1 + 24);
      }

      v6 = *(v5 + 120);
      *(v5 + 85) = 8;
      *(v5 + 32) = 0;
      if ((*(a1 + 9) & 3) != 0)
      {
        reallymarkobject(v5, a1);
      }

      if ((*(v5 + 72) & 0x40) != 0)
      {
        v7 = *(v5 + 64);
        if ((*(v7 + 9) & 3) != 0)
        {
          reallymarkobject(v5, v7);
        }
      }

      markmt(v5);
      v9 = (v5 + 168);
      v8 = *(v5 + 168);
      if (v8)
      {
        do
        {
          if ((*(v8 + 9) & 7) != 0 || !*(v8 + 64))
          {
            *v9 = *(v8 + 80);
            *(v8 + 80) = v8;
            for (i = *(v8 + 64); i; i = *(i + 16))
            {
              if (*(i + 24))
              {
                v11 = *i;
                if ((*(*i + 8) & 0x40) != 0 && (*(*v11 + 9) & 3) != 0)
                {
                  reallymarkobject(v5, *v11);
                }

                *(i + 24) = 0;
              }
            }
          }

          else
          {
            v9 = (v8 + 80);
          }

          v8 = *v9;
        }

        while (*v9);
      }

      while (*(v5 + 112))
      {
        propagatemark(v5);
      }

      v12 = *(v5 + 32);
      *(v5 + 112) = v6;
      while (*(v5 + 112))
      {
        propagatemark(v5);
      }

      *(v5 + 32) = 0;
      convergeephemerons(v5);
      clearvalues(v5, *(v5 + 128), 0);
      clearvalues(v5, *(v5 + 144), 0);
      v13 = *(v5 + 128);
      v14 = *(v5 + 144);
      v15 = (v5 + 152);
      v16 = *(v5 + 32);
      do
      {
        v17 = v15;
        v15 = *v15;
      }

      while (v15);
      v18 = (v5 + 104);
      v19 = *(v5 + 104);
      if (v19)
      {
        do
        {
          if ((*(v19 + 9) & 3) != 0)
          {
            *v18 = *v19;
            *v19 = *v17;
            *v17 = v19;
            v17 = v19;
          }

          else
          {
            v18 = v19;
          }

          v19 = *v18;
        }

        while (*v18);
      }

      *(v5 + 200) = 1;
      markbeingfnz(v5);
      while (*(v5 + 112))
      {
        propagatemark(v5);
      }

      *(v5 + 32) = 0;
      convergeephemerons(v5);
      clearkeys(v5, *(v5 + 136));
      clearkeys(v5, *(v5 + 144));
      clearvalues(v5, *(v5 + 128), v13);
      clearvalues(v5, *(v5 + 144), v14);
      luaS_clearcache(v5);
      *(v5 + 84) ^= 3u;
      v29 = *(v5 + 32);
      v30 = *(a1 + 24);
      *(v30 + 85) = 2;
      v2 = v16 + v12 + v29;
      v31 = (v30 + 88);
      do
      {
        v32 = sweeplist(a1, v31, 1);
        v31 = v32;
        v2 += 7;
      }

      while (v32 == (v30 + 88));
      *(v30 + 96) = v32;
      *(v3 + 40) = *(v3 + 24) + *(v3 + 16);
      return v2;
    }

    *(v3 + 32) = 0;
    propagatemark(v3);
    if (!*(v3 + 112))
    {
      *(v3 + 85) = 1;
    }

    return *(v3 + 32);
  }

  if (v4 == 2)
  {
    v23 = v3 + 104;
    v24 = *(a1 + 24);
    v25 = 3;
    goto LABEL_64;
  }

  if (v4 != 3)
  {
    return v2;
  }

  v23 = v3 + 152;
  v24 = *(a1 + 24);
  v25 = 4;
LABEL_64:

  return sweepstep(a1, v24, v25, v23);
}

uint64_t luaC_step(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 87))
  {
    v3 = *(v1 + 24) / 200 + 1;
    v4 = *(v1 + 208);
    v5 = 0x7FFFFFFFFFFFFFFFLL / v4;
    v6 = v3 * v4;
    if (v3 >= v5)
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = v6;
    }

    while (1)
    {
      v7 -= singlestep(a1);
      v8 = *(v1 + 85);
      if (v7 < -2399)
      {
        break;
      }

      if (v8 == 7)
      {
        goto LABEL_10;
      }
    }

    if (v8 == 7)
    {
LABEL_10:
      v11 = *(v1 + 40) / 0x64uLL;
      v12 = *(v1 + 204);
      v13 = 0x7FFFFFFFFFFFFFFFLL / v11;
      v14 = v11 * v12;
      if (v13 <= v12)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = *(v1 + 24) + *(v1 + 16) - v14;
      v9 = v1;
      goto LABEL_13;
    }

    luaE_setdebt(v1, 200 * (v7 / *(v1 + 208)));

    return runafewfinalizers(a1);
  }

  else
  {
    v9 = *(a1 + 24);
    v10 = -24000;
LABEL_13:

    return luaE_setdebt(v9, v10);
  }
}

uint64_t runafewfinalizers(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 152);
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(v1 + 200);
      if (v4 >= v5)
      {
        break;
      }

      GCTM(a1, 1);
      v4 = (v4 + 1);
      v2 = *(v1 + 152);
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v2) = 2 * v5;
  }

  else
  {
    v4 = 0;
  }

LABEL_8:
  *(v1 + 200) = v2;
  return v4;
}

uint64_t luaC_fullgc(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if (a2)
  {
    *(v3 + 86) = 1;
  }

  if (*(v3 + 85) <= 1u)
  {
    *(v3 + 85) = 2;
    v4 = (v3 + 88);
    do
    {
      v5 = sweeplist(a1, v4, 1);
      v4 = v5;
    }

    while (v5 == (v3 + 88));
    *(v3 + 96) = v5;
  }

  luaC_runtilstate(a1, 0x80u);
  luaC_runtilstate(a1, 0xFFFFFF7F);
  luaC_runtilstate(a1, 0x40u);
  luaC_runtilstate(a1, 0x80u);
  *(v3 + 86) = 0;
  v6 = *(v3 + 40) / 0x64uLL;
  v7 = *(v3 + 204);
  v8 = 0x7FFFFFFFFFFFFFFFLL / v6;
  v9 = v6 * v7;
  if (v8 <= v7)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = *(v3 + 24) + *(v3 + 16) - v9;

  return luaE_setdebt(v3, v10);
}

uint64_t GCTM(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  *(&v14 + 1) = 0;
  v5 = *(v4 + 152);
  *(v4 + 152) = *v5;
  *v5 = *(v4 + 88);
  *(v4 + 88) = v5;
  v6 = *(v5 + 9);
  *(v5 + 9) = v6 & 0xF7;
  if (*(v4 + 85) - 2 <= 3)
  {
    *(v5 + 9) = v6 & 0xF0 | *(v4 + 84) & 3;
  }

  *&v14 = v5;
  DWORD2(v14) = *(v5 + 8) | 0x40;
  result = luaT_gettmbyobj(a1, &v14, 2u);
  if (result)
  {
    if ((*(result + 8) & 0xF) == 6)
    {
      v8 = *(a1 + 201);
      v9 = *(v4 + 87);
      *(a1 + 201) = 0;
      *(v4 + 87) = 0;
      **(a1 + 16) = *result;
      *(*(a1 + 16) + 16) = v14;
      v10 = *(a1 + 16);
      *(a1 + 16) = v10 + 32;
      result = luaD_pcall(a1, dothecall, 0, v10 - *(a1 + 56), 0);
      *(a1 + 201) = v8;
      *(v4 + 87) = v9;
      if (a2)
      {
        v11 = result;
        if (result)
        {
          if (result == 2)
          {
            v12 = *(a1 + 16);
            if ((*(v12 - 8) & 0xF) == 4)
            {
              v13 = (*(v12 - 16) + 24);
            }

            else
            {
              v13 = "no message";
            }

            luaO_pushfstring(a1, "error in __gc metamethod (%s)", v13);
            v11 = 5;
          }

          return luaD_throw(a1, v11);
        }
      }
    }
  }

  return result;
}

uint64_t propagatemark(uint64_t result)
{
  v1 = result;
  v2 = *(result + 112);
  v3 = *(v2 + 9);
  *(v2 + 9) = v3 | 4;
  v4 = *(v2 + 8);
  if (v4 <= 7)
  {
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        return result;
      }

      v10 = *(v2 + 24);
      *(result + 112) = *(v2 + 16);
      if (v10 && (*(v10 + 9) & 3) != 0)
      {
        result = reallymarkobject(result, v10);
      }

      if (*(v2 + 10))
      {
        v11 = 0;
        do
        {
          v12 = *(v2 + 32 + 8 * v11);
          if (v12)
          {
            v13 = *v12;
            if (*v12 == v12 + 2 || *(v1 + 85) == 8)
            {
              if ((*(v13 + 8) & 0x40) != 0 && (*(*v13 + 9) & 3) != 0)
              {
                result = reallymarkobject(v1, *v13);
              }
            }

            else
            {
              *(v12 + 6) = 1;
            }
          }

          ++v11;
          v14 = *(v2 + 10);
        }

        while (v11 < v14);
        v9 = 8 * v14;
        goto LABEL_28;
      }

LABEL_72:
      v15 = 32;
      goto LABEL_121;
    }

    v36 = *(v2 + 40);
    *(result + 112) = *(v2 + 48);
    if (!v36)
    {
      goto LABEL_101;
    }

    if ((*(v36 + 10) & 8) != 0)
    {
      v37 = 0;
    }

    else
    {
      result = luaT_gettm(v36, 3, *(result + 272));
      v37 = result;
      v36 = *(v2 + 40);
      if (!v36)
      {
        goto LABEL_95;
      }
    }

    if ((*(v36 + 9) & 3) != 0)
    {
      result = reallymarkobject(v1, v36);
    }

LABEL_95:
    if (v37)
    {
      if ((v37[2] & 0xF) == 4)
      {
        v46 = *v37;
        v47 = strchr((*v37 + 24), 107);
        result = strchr((v46 + 24), 118);
        if (v47 | result)
        {
          *(v2 + 9) &= ~4u;
          if (v47)
          {
            if (result)
            {
              *(v2 + 48) = *(v1 + 144);
              *(v1 + 144) = v2;
            }

            else
            {
              result = traverseephemeron(v1, v2);
            }

            goto LABEL_120;
          }

          v57 = *(v2 + 11);
          v58 = *(v2 + 12) != 0;
          if (v57 != 31)
          {
            v59 = *(v2 + 24);
            v60 = v59 + 32 * (1 << v57);
            do
            {
              v61 = *(v59 + 24);
              if (*(v59 + 8))
              {
                if ((v61 & 0x40) != 0)
                {
                  v62 = *(v59 + 16);
                  if ((*(v62 + 9) & 3) != 0)
                  {
                    result = reallymarkobject(v1, v62);
                  }
                }

                if (v58)
                {
                  v58 = 1;
                }

                else
                {
                  result = iscleared(v1, v59);
                  v58 = result != 0;
                }
              }

              else if ((v61 & 0x40) != 0 && (*(*(v59 + 16) + 9) & 3) != 0)
              {
                *(v59 + 24) = 10;
              }

              v59 += 32;
            }

            while (v59 < v60);
          }

          if (*(v1 + 85))
          {
            if (!v58)
            {
LABEL_120:
              v15 = 32 * (1 << *(v2 + 11)) + 16 * *(v2 + 12) + 56;
              goto LABEL_121;
            }

            v63 = 128;
          }

          else
          {
            v63 = 120;
          }

          *(v2 + 48) = *(v1 + v63);
          *(v1 + v63) = v2;
          goto LABEL_120;
        }
      }
    }

LABEL_101:
    v48 = *(v2 + 24);
    v49 = v48 + 32 * (1 << *(v2 + 11));
    v50 = *(v2 + 12);
    if (v50)
    {
      v51 = 0;
      for (i = 0; i < v50; ++i)
      {
        v53 = *(v2 + 16) + v51;
        if ((*(v53 + 8) & 0x40) != 0 && (*(*v53 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, *v53);
          v50 = *(v2 + 12);
        }

        v51 += 16;
      }

      v48 = *(v2 + 24);
    }

    for (; v48 < v49; v48 += 32)
    {
      v54 = *(v48 + 8);
      v55 = *(v48 + 24);
      if (v54)
      {
        if ((v55 & 0x40) != 0)
        {
          v56 = *(v48 + 16);
          if ((*(v56 + 9) & 3) != 0)
          {
            result = reallymarkobject(v1, v56);
            v54 = *(v48 + 8);
          }
        }

        if ((v54 & 0x40) != 0 && (*(*v48 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, *v48);
        }
      }

      else if ((v55 & 0x40) != 0 && (*(*(v48 + 16) + 9) & 3) != 0)
      {
        *(v48 + 24) = 10;
      }
    }

    goto LABEL_120;
  }

  if (v4 == 8)
  {
    v16 = *(v2 + 72);
    *(v2 + 72) = *(result + 120);
    *(result + 112) = v16;
    *(result + 120) = v2;
    *(v2 + 9) = v3 & 0xFB;
    v17 = *(v2 + 56);
    if (v17)
    {
      v18 = *(v2 + 16);
      while (v17 < v18)
      {
        if ((*(v17 + 8) & 0x40) != 0 && (*(*v17 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, *v17);
          v18 = *(v2 + 16);
        }

        v17 += 16;
      }

      if (*(v1 + 85) == 8)
      {
        v38 = *(v2 + 56) + 16 * *(v2 + 184);
        if (v17 < v38)
        {
          v39 = 0;
          if (v38 <= v17 + 16)
          {
            v38 = v17 + 16;
          }

          v40 = (v38 + ~v17) >> 4;
          v41 = vdupq_n_s64(v40);
          v42 = (v40 + 4) & 0x1FFFFFFFFFFFFFFCLL;
          v43 = (v17 + 40);
          do
          {
            v44 = vdupq_n_s64(v39);
            v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_1C378AF00)));
            if (vuzp1_s16(v45, 2).u8[0])
            {
              *(v43 - 8) = 0;
            }

            if (vuzp1_s16(v45, 2).i8[2])
            {
              *(v43 - 4) = 0;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_1C378AEF0)))).i32[1])
            {
              *v43 = 0;
              v43[4] = 0;
            }

            v39 += 4;
            v43 += 16;
          }

          while (v42 != v39);
        }

        if (*(v2 + 80) == v2 && *(v2 + 64))
        {
          *(v2 + 80) = *(v1 + 168);
          *(v1 + 168) = v2;
        }
      }

      else if (*(v1 + 86) != 1)
      {
        result = luaD_shrinkstack(v2);
      }

      v15 = 16 * *(v2 + 184) + 208;
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_121;
  }

  if (v4 == 9)
  {
    *(result + 112) = *(v2 + 112);
    v19 = *(v2 + 96);
    if (v19 && (*(v19 + 9) & 3) != 0)
    {
      *(v2 + 96) = 0;
    }

    v20 = *(v2 + 104);
    if (v20 && (*(v20 + 9) & 3) != 0)
    {
      result = reallymarkobject(result, v20);
    }

    v21 = *(v2 + 20);
    if (v21 >= 1)
    {
      v22 = 0;
      for (j = 0; j < v21; ++j)
      {
        v24 = *(v2 + 48) + v22;
        if ((*(v24 + 8) & 0x40) != 0 && (*(*v24 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, *v24);
          v21 = *(v2 + 20);
        }

        v22 += 16;
      }
    }

    v25 = *(v2 + 16);
    if (v25 >= 1)
    {
      v26 = 0;
      for (k = 0; k < v25; ++k)
      {
        v28 = *(*(v2 + 88) + v26);
        if (v28 && (*(v28 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, v28);
          v25 = *(v2 + 16);
        }

        v26 += 16;
      }
    }

    v29 = *(v2 + 32);
    if (v29 >= 1)
    {
      for (m = 0; m < v29; ++m)
      {
        v31 = *(*(v2 + 64) + 8 * m);
        if (v31 && (*(v31 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, v31);
          v29 = *(v2 + 32);
        }
      }
    }

    v32 = *(v2 + 36);
    if (v32 >= 1)
    {
      v33 = 0;
      for (n = 0; n < v32; ++n)
      {
        v35 = *(*(v2 + 80) + v33);
        if (v35 && (*(v35 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, v35);
          v32 = *(v2 + 36);
        }

        v33 += 16;
      }

      v29 = *(v2 + 32);
    }

    v15 = 8 * v29 + 4 * (*(v2 + 28) + *(v2 + 24)) + 16 * (*(v2 + 20) + v32 + *(v2 + 16)) + 120;
    goto LABEL_121;
  }

  if (v4 != 38)
  {
    return result;
  }

  *(result + 112) = *(v2 + 16);
  v5 = *(v2 + 10);
  if (!*(v2 + 10))
  {
    goto LABEL_72;
  }

  v6 = 0;
  v7 = (v2 + 40);
  do
  {
    if ((*v7 & 0x40) != 0)
    {
      v8 = *(v7 - 1);
      if ((*(v8 + 9) & 3) != 0)
      {
        result = reallymarkobject(v1, v8);
        v5 = *(v2 + 10);
      }
    }

    ++v6;
    v7 += 16;
  }

  while (v6 < v5);
  v9 = 16 * v5;
LABEL_28:
  v15 = v9 + 32;
LABEL_121:
  *(v1 + 32) += v15;
  return result;
}

uint64_t sweepstep(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = *(a2 + 96);
  if (v7)
  {
    v8 = *(a2 + 24);
    v9 = sweeplist(a1, v7, 85);
    *(a2 + 96) = v9;
    *(a2 + 40) += *(a2 + 24) - v8;
    if (v9)
    {
      return 595;
    }
  }

  result = 0;
  *(a2 + 85) = a3;
  *(a2 + 96) = a4;
  return result;
}

uint64_t markmt(uint64_t result)
{
  v1 = result;
  for (i = 440; i != 512; i += 8)
  {
    v3 = *(v1 + i);
    if (v3)
    {
      if ((*(v3 + 9) & 3) != 0)
      {
        result = reallymarkobject(v1, v3);
      }
    }
  }

  return result;
}

uint64_t markbeingfnz(uint64_t result)
{
  v1 = *(result + 152);
  if (v1)
  {
    v2 = result;
    do
    {
      if ((*(v1 + 9) & 3) != 0)
      {
        result = reallymarkobject(v2, v1);
      }

      v1 = *v1;
    }

    while (v1);
  }

  return result;
}

uint64_t traverseephemeron(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = &v4[8 * (1 << *(a2 + 11))];
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a2 + 16);
      if ((*(v10 + v7 + 8) & 0x40) != 0)
      {
        v11 = *(v10 + v7);
        if ((*(v11 + 9) & 3) != 0)
        {
          reallymarkobject(a1, v11);
          v6 = *(a2 + 12);
          v9 = 1;
        }
      }

      ++v8;
      v7 += 16;
    }

    while (v8 < v6);
    v4 = *(a2 + 24);
  }

  else
  {
    v9 = 0;
  }

  if (v4 >= v5)
  {
    if (!*(a1 + 85))
    {
      v17 = 120;
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (v4[2])
      {
        v14 = iscleared(a1, (v4 + 4));
        v15 = v4[2];
        if (v14)
        {
          if ((v15 & 0x40) != 0 && (*(*v4 + 9) & 3) != 0)
          {
            v12 = 1;
          }

          v13 = 1;
        }

        else if ((v15 & 0x40) != 0 && (*(*v4 + 9) & 3) != 0)
        {
          reallymarkobject(a1, *v4);
          v9 = 1;
        }
      }

      else if ((v4[6] & 0x40) != 0 && (*(*(v4 + 2) + 9) & 3) != 0)
      {
        v4[6] = 10;
      }

      v4 += 8;
    }

    while (v4 < v5);
    v16 = *(a1 + 85);
    v17 = 144;
    if (v12)
    {
      v17 = 136;
    }

    if (!*(a1 + 85))
    {
      v17 = 120;
LABEL_33:
      *(a2 + 48) = *(a1 + v17);
      *(a1 + v17) = a2;
      return v9;
    }

    if (v12 || v13)
    {
      goto LABEL_33;
    }
  }

  return v9;
}

uint64_t iscleared(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8) & 0x40) == 0)
  {
    return 0;
  }

  v3 = *(a2 + 8) & 0xF;
  v4 = *a2;
  v2 = *(v4 + 9) & 3;
  if (v3 == 4 && (*(v4 + 9) & 3) != 0)
  {
    reallymarkobject(a1, v4);
    return 0;
  }

  return v2;
}

uint64_t convergeephemerons(uint64_t result)
{
  v1 = result;
  do
  {
    v2 = *(v1 + 136);
    *(v1 + 136) = 0;
    if (!v2)
    {
      break;
    }

    v3 = 0;
    do
    {
      while (1)
      {
        v4 = v2;
        v2 = *(v2 + 48);
        result = traverseephemeron(v1, v4);
        if (result)
        {
          break;
        }

        if (!v2)
        {
          goto LABEL_10;
        }
      }

      while (*(v1 + 112))
      {
        result = propagatemark(v1);
      }

      v3 = 1;
    }

    while (v2);
LABEL_10:
    ;
  }

  while (v3);
  return result;
}

uint64_t clearvalues(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = *(v4 + 24);
      v7 = *(v4 + 11);
      if (*(v4 + 12))
      {
        v8 = 0;
        v9 = 8;
        do
        {
          v10 = *(v4 + 16);
          result = iscleared(v5, v10 + v9 - 8);
          if (result)
          {
            *(v10 + v9) = 0;
          }

          ++v8;
          v9 += 16;
        }

        while (v8 < *(v4 + 12));
        v11 = *(v4 + 24);
      }

      else
      {
        v11 = *(v4 + 24);
      }

      v12 = v6 + 32 * (1 << v7);
      while (v11 < v12)
      {
        if (*(v11 + 8))
        {
          result = iscleared(v5, v11);
          if (result)
          {
            *(v11 + 8) = 0;
            if ((*(v11 + 24) & 0x40) != 0 && (*(*(v11 + 16) + 9) & 3) != 0)
            {
              *(v11 + 24) = 10;
            }
          }
        }

        v11 += 32;
      }

      v4 = *(v4 + 48);
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t clearkeys(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *(v2 + 11);
      if (v4 != 31)
      {
        v5 = *(v2 + 24);
        v6 = v5 + 32 * (1 << v4);
        v7 = (v5 + 16);
        do
        {
          if (*(v7 - 2))
          {
            result = iscleared(v3, v7);
            if (result)
            {
              *(v7 - 2) = 0;
              if ((v7[2] & 0x40) != 0 && (*(*v7 + 9) & 3) != 0)
              {
                v7[2] = 10;
              }
            }
          }

          v8 = v7 + 4;
          v7 += 8;
        }

        while (v8 < v6);
      }

      v2 = *(v2 + 48);
    }

    while (v2);
  }

  return result;
}

uint64_t luaL_openlibs(uint64_t a1)
{
  v2 = &loadedlibs;
  do
  {
    v3 = luaD_rawrunprotected(a1, requiref, v2);
    if (v3)
    {
      break;
    }

    lua_settop(a1, 0xFFFFFFFE);
    v4 = v2[3];
    v2 += 2;
  }

  while (v4);
  return v3;
}

uint64_t luaX_init(void *a1)
{
  v2 = luaS_newlstr(a1, "_ENV", 4uLL);
  luaC_fix(a1, v2);
  v3 = luaX_tokens;
  for (i = 1; i != 23; ++i)
  {
    v5 = *v3++;
    v6 = luaS_new(a1, v5);
    result = luaC_fix(a1, v6);
    *(v6 + 10) = i;
  }

  return result;
}

char *luaX_token2str(uint64_t a1, int a2)
{
  if (a2 <= 256)
  {
    return luaO_pushfstring(*(a1 + 56), "'%c'");
  }

  v3 = luaX_tokens[a2 - 257];
  if (a2 > 0x120)
  {
    return luaX_tokens[a2 - 257];
  }

  v4 = luaX_tokens[a2 - 257];
  return luaO_pushfstring(*(a1 + 56), "'%s'");
}

uint64_t lexerror(uint64_t a1, const char *a2, int a3)
{
  v5 = luaG_addinfo(*(a1 + 56), a2, *(a1 + 96), *(a1 + 4));
  if (a3)
  {
    v6 = v5;
    v7 = *(a1 + 56);
    if ((a3 - 290) > 3)
    {
      v8 = luaX_token2str(a1, a3);
    }

    else
    {
      save(a1, 0);
      v8 = luaO_pushfstring(*(a1 + 56), "'%s'", **(a1 + 72));
    }

    luaO_pushfstring(v7, "%s near %s", v6, v8);
  }

  v9 = *(a1 + 56);

  return luaD_throw(v9, 3);
}

uint64_t luaX_newstring(uint64_t a1, char *a2, size_t a3)
{
  v4 = *(a1 + 56);
  v5 = luaS_newlstr(v4, a2, a3);
  v6 = v4[2];
  v4[2] = v6 + 16;
  *v6 = v5;
  *(v6 + 8) = *(v5 + 8) | 0x40;
  v7 = luaH_set(v4, *(a1 + 80), (v4[2] - 16));
  if (*(v7 + 2))
  {
    v5 = v7[2];
  }

  else
  {
    *v7 = 1;
    *(v7 + 2) = 1;
    if (*(v4[3] + 24) >= 1)
    {
      luaC_step(v4);
    }
  }

  v4[2] -= 16;
  return v5;
}

uint64_t luaX_setinput(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(a2 + 16) = 0;
  *(a2 + 112) = 46;
  *a2 = a5;
  *(a2 + 32) = 289;
  *(a2 + 56) = a1;
  *(a2 + 64) = a3;
  *(a2 + 48) = 0;
  *(a2 + 4) = 0x100000001;
  *(a2 + 96) = a4;
  *(a2 + 104) = luaS_newlstr(a1, "_ENV", 4uLL);
  result = luaM_realloc_(*(a2 + 56), **(a2 + 72), *(*(a2 + 72) + 16), 32);
  v7 = *(a2 + 72);
  *v7 = result;
  v7[2] = 32;
  return result;
}

__n128 luaX_next(__n128 *a1)
{
  v1 = a1 + 2;
  v2 = a1[2].n128_u32[0];
  a1->n128_u32[2] = a1->n128_u32[1];
  if (v2 == 289)
  {
    a1[1].n128_u32[0] = llex(a1, &a1[1].n128_i64[1]);
  }

  else
  {
    result = *v1;
    a1[1] = a1[2];
    v1->n128_u32[0] = 289;
  }

  return result;
}

uint64_t llex(int *a1, uint64_t *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  *(*(a1 + 9) + 8) = 0;
  while (2)
  {
    v4 = *a1;
    result = 289;
    switch(v4)
    {
      case -1:
        goto LABEL_185;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 33:
      case 35:
      case 36:
      case 37:
      case 38:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 59:
        goto LABEL_34;
      case 9:
      case 11:
      case 12:
      case 32:
        v6 = *(a1 + 8);
        if ((*v6)--)
        {
          v8 = v6[1];
          v6[1] = v8 + 1;
          v9 = *v8;
        }

        else
        {
          v9 = luaZ_fill(v6);
        }

        *a1 = v9;
        continue;
      case 10:
      case 13:
        inclinenumber(a1);
        continue;
      case 34:
      case 39:
        save(a1, *a1);
        v27 = *(a1 + 8);
        if ((*v27)--)
        {
          v29 = v27[1];
          v27[1] = v29 + 1;
          v30 = *v29;
        }

        else
        {
          v30 = luaZ_fill(v27);
        }

        *a1 = v30;
        if (v30 == v4)
        {
          goto LABEL_61;
        }

        break;
      case 45:
        v10 = *(a1 + 8);
        if ((*v10)--)
        {
          v12 = v10[1];
          v10[1] = v12 + 1;
          v13 = *v12;
        }

        else
        {
          v13 = luaZ_fill(v10);
        }

        *a1 = v13;
        if (v13 != 45)
        {
          result = 45;
          goto LABEL_185;
        }

        v14 = *(a1 + 8);
        if ((*v14)--)
        {
          v16 = v14[1];
          v14[1] = v16 + 1;
          v17 = *v16;
        }

        else
        {
          v17 = luaZ_fill(v14);
        }

        *a1 = v17;
        if (v17 != 91)
        {
          goto LABEL_23;
        }

        v18 = skip_sep(a1);
        *(*(a1 + 9) + 8) = 0;
        if (v18 < 0)
        {
          v17 = *a1;
LABEL_23:
          while ((v17 + 1) > 0xE || ((1 << (v17 + 1)) & 0x4801) == 0)
          {
            v19 = *(a1 + 8);
            if ((*v19)--)
            {
              v21 = v19[1];
              v19[1] = v21 + 1;
              v17 = *v21;
            }

            else
            {
              v17 = luaZ_fill(v19);
            }

            *a1 = v17;
          }
        }

        else
        {
          read_long_string(a1, 0, v18);
          *(*(a1 + 9) + 8) = 0;
        }

        continue;
      case 46:
        save(a1, 46);
        v43 = *(a1 + 8);
        if ((*v43)--)
        {
          v45 = v43[1];
          v43[1] = v45 + 1;
          v46 = *v45;
        }

        else
        {
          v46 = luaZ_fill(v43);
        }

        *a1 = v46;
        if (check_next1(a1, 46))
        {
          if (check_next1(a1, 46))
          {
            result = 281;
          }

          else
          {
            result = 280;
          }

          goto LABEL_185;
        }

        if ((luai_ctype_[*a1 + 1] & 2) == 0)
        {
          result = 46;
          goto LABEL_185;
        }

LABEL_167:
        v114 = *MEMORY[0x1E69E9840];

        return read_numeral(a1, a2);
      case 47:
        v55 = *(a1 + 8);
        if ((*v55)--)
        {
          v57 = v55[1];
          v55[1] = v57 + 1;
          v58 = *v57;
        }

        else
        {
          v58 = luaZ_fill(v55);
        }

        *a1 = v58;
        v111 = 47;
        v112 = check_next1(a1, 47) == 0;
        v113 = 279;
        goto LABEL_182;
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
        goto LABEL_167;
      case 58:
        v47 = *(a1 + 8);
        if ((*v47)--)
        {
          v49 = v47[1];
          v47[1] = v49 + 1;
          v50 = *v49;
        }

        else
        {
          v50 = luaZ_fill(v47);
        }

        *a1 = v50;
        v111 = 58;
        v112 = check_next1(a1, 58) == 0;
        v113 = 288;
        goto LABEL_182;
      case 60:
        v59 = *(a1 + 8);
        if ((*v59)--)
        {
          v61 = v59[1];
          v59[1] = v61 + 1;
          v62 = *v61;
        }

        else
        {
          v62 = luaZ_fill(v59);
        }

        *a1 = v62;
        if (check_next1(a1, 61))
        {
          result = 284;
          goto LABEL_185;
        }

        v111 = 60;
        v112 = check_next1(a1, 60) == 0;
        v113 = 286;
        goto LABEL_182;
      case 61:
        v39 = *(a1 + 8);
        if ((*v39)--)
        {
          v41 = v39[1];
          v39[1] = v41 + 1;
          v42 = *v41;
        }

        else
        {
          v42 = luaZ_fill(v39);
        }

        *a1 = v42;
        v111 = 61;
        v112 = check_next1(a1, 61) == 0;
        v113 = 282;
        goto LABEL_182;
      case 62:
        v51 = *(a1 + 8);
        if ((*v51)--)
        {
          v53 = v51[1];
          v51[1] = v53 + 1;
          v54 = *v53;
        }

        else
        {
          v54 = luaZ_fill(v51);
        }

        *a1 = v54;
        if (check_next1(a1, 61))
        {
          result = 283;
        }

        else
        {
          v111 = 62;
          v112 = check_next1(a1, 62) == 0;
          v113 = 287;
LABEL_182:
          if (v112)
          {
            result = v111;
          }

          else
          {
            result = v113;
          }
        }

        goto LABEL_185;
      default:
        if (v4 == 91)
        {
          v63 = skip_sep(a1);
          if ((v63 & 0x80000000) == 0)
          {
            read_long_string(a1, a2, v63);
            goto LABEL_156;
          }

          if (v63 != -1)
          {
            lexerror(a1, "invalid long string delimiter", 293);
          }

          result = 91;
        }

        else if (v4 == 126)
        {
          v23 = *(a1 + 8);
          if ((*v23)--)
          {
            v25 = v23[1];
            v23[1] = v25 + 1;
            v26 = *v25;
          }

          else
          {
            v26 = luaZ_fill(v23);
          }

          *a1 = v26;
          if (check_next1(a1, 61))
          {
            result = 285;
          }

          else
          {
            result = 126;
          }
        }

        else
        {
LABEL_34:
          if (luai_ctype_[v4 + 1])
          {
            do
            {
              save(a1, v4);
              v35 = *(a1 + 8);
              if ((*v35)--)
              {
                v37 = v35[1];
                v35[1] = v37 + 1;
                LODWORD(v4) = *v37;
              }

              else
              {
                LODWORD(v4) = luaZ_fill(v35);
              }

              *a1 = v4;
            }

            while ((luai_ctype_[v4 + 1] & 3) != 0);
            v38 = luaX_newstring(a1, **(a1 + 9), *(*(a1 + 9) + 8));
            *a2 = v38;
            if (*(v38 + 8) == 4 && *(v38 + 10))
            {
              result = *(v38 + 10) | 0x100u;
            }

            else
            {
              result = 292;
            }
          }

          else
          {
            v31 = *(a1 + 8);
            if ((*v31)--)
            {
              v33 = v31[1];
              v31[1] = v33 + 1;
              v34 = *v33;
            }

            else
            {
              v34 = luaZ_fill(v31);
            }

            *a1 = v34;
            result = v4;
          }
        }

        goto LABEL_185;
    }

    break;
  }

  do
  {
    if (v30 <= 12)
    {
      if (v30 != -1)
      {
        if (v30 == 10)
        {
          goto LABEL_71;
        }

LABEL_72:
        save(a1, v30);
        v74 = *(a1 + 8);
        if ((*v74)--)
        {
          v76 = v74[1];
          v74[1] = v76 + 1;
          v77 = *v76;
        }

        else
        {
          v77 = luaZ_fill(v74);
        }

        *a1 = v77;
        goto LABEL_131;
      }

      v72 = a1;
      v73 = 289;
LABEL_75:
      lexerror(v72, "unfinished string", v73);
      goto LABEL_131;
    }

    if (v30 == 13)
    {
LABEL_71:
      v72 = a1;
      v73 = 293;
      goto LABEL_75;
    }

    if (v30 != 92)
    {
      goto LABEL_72;
    }

    save(a1, 92);
    v68 = *(a1 + 8);
    if ((*v68)--)
    {
      v70 = v68[1];
      v68[1] = v70 + 1;
      v71 = *v70;
    }

    else
    {
      v71 = luaZ_fill(v68);
    }

    *a1 = v71;
    if (v71 <= 101)
    {
      if (v71 > 38)
      {
        if (v71 > 96)
        {
          if (v71 == 97)
          {
            LOBYTE(v71) = 7;
          }

          else
          {
            if (v71 != 98)
            {
              goto LABEL_133;
            }

            LOBYTE(v71) = 8;
          }
        }

        else if (v71 != 39 && v71 != 92)
        {
          goto LABEL_133;
        }
      }

      else
      {
        if (v71 <= 12)
        {
          if (v71 == -1)
          {
            goto LABEL_131;
          }

          if (v71 != 10)
          {
LABEL_133:
            esccheck(a1, luai_ctype_[v71 + 1] & 2, "invalid escape sequence");
            v71 = 0;
            v91 = 0;
            v92 = *a1;
            do
            {
              if ((luai_ctype_[v92 + 1] & 2) == 0)
              {
                break;
              }

              save(a1, v92);
              v93 = *(a1 + 8);
              if ((*v93)--)
              {
                v95 = v93[1];
                v93[1] = v95 + 1;
                v96 = *v95;
              }

              else
              {
                v96 = luaZ_fill(v93);
              }

              v71 = v92 + 10 * v71 - 48;
              *a1 = v96;
              ++v91;
              v92 = v96;
            }

            while (v91 != 3);
            esccheck(a1, v71 < 256, "decimal escape too large");
            *(*(a1 + 9) + 8) -= v91;
            goto LABEL_130;
          }

LABEL_119:
          inclinenumber(a1);
          LOBYTE(v71) = 10;
LABEL_130:
          --*(*(a1 + 9) + 8);
          save(a1, v71);
          goto LABEL_131;
        }

        if (v71 == 13)
        {
          goto LABEL_119;
        }

        if (v71 != 34)
        {
          goto LABEL_133;
        }
      }

LABEL_126:
      v87 = *(a1 + 8);
      if ((*v87)--)
      {
        v89 = v87[1];
        v87[1] = v89 + 1;
        v90 = *v89;
      }

      else
      {
        v90 = luaZ_fill(v87);
      }

      *a1 = v90;
      goto LABEL_130;
    }

    if (v71 <= 116)
    {
      if (v71 > 113)
      {
        if (v71 == 114)
        {
          LOBYTE(v71) = 13;
        }

        else
        {
          if (v71 != 116)
          {
            goto LABEL_133;
          }

          LOBYTE(v71) = 9;
        }
      }

      else if (v71 == 102)
      {
        LOBYTE(v71) = 12;
      }

      else
      {
        if (v71 != 110)
        {
          goto LABEL_133;
        }

        LOBYTE(v71) = 10;
      }

      goto LABEL_126;
    }

    if (v71 > 119)
    {
      if (v71 == 120)
      {
        v86 = gethexa(a1);
        LOBYTE(v71) = gethexa(a1) + 16 * v86;
        *(*(a1 + 9) + 8) -= 2;
        goto LABEL_126;
      }

      if (v71 != 122)
      {
        goto LABEL_133;
      }

      v78 = *(a1 + 8);
      --*(*(a1 + 9) + 8);
LABEL_110:
      if ((*v78)--)
      {
        v80 = v78[1];
        v78[1] = v80 + 1;
        v81 = *v80;
      }

      else
      {
        v81 = luaZ_fill(v78);
      }

      *a1 = v81;
      while ((luai_ctype_[v81 + 1] & 8) != 0)
      {
        if (v81 != 13 && v81 != 10)
        {
          v78 = *(a1 + 8);
          goto LABEL_110;
        }

        inclinenumber(a1);
        v81 = *a1;
      }
    }

    else
    {
      if (v71 != 117)
      {
        if (v71 != 118)
        {
          goto LABEL_133;
        }

        LOBYTE(v71) = 11;
        goto LABEL_126;
      }

      save(a1, 117);
      v82 = *(a1 + 8);
      if ((*v82)--)
      {
        v84 = v82[1];
        v82[1] = v84 + 1;
        v85 = *v84;
      }

      else
      {
        v85 = luaZ_fill(v82);
      }

      *a1 = v85;
      esccheck(a1, v85 == 123, "missing '{'");
      v97 = gethexa(a1);
      for (i = -4; ; --i)
      {
        save(a1, *a1);
        v99 = *(a1 + 8);
        if ((*v99)--)
        {
          v101 = v99[1];
          v99[1] = v101 + 1;
          v102 = *v101;
        }

        else
        {
          v102 = luaZ_fill(v99);
        }

        *a1 = v102;
        if ((luai_ctype_[v102 + 1] & 0x10) == 0)
        {
          break;
        }

        v97 = 16 * v97 + luaO_hexavalue(v102);
        esccheck(a1, v97 < 0x110000, "UTF-8 value too large");
      }

      esccheck(a1, v102 == 125, "missing '}'");
      v103 = *(a1 + 8);
      if ((*v103)--)
      {
        v105 = v103[1];
        v103[1] = v105 + 1;
        v106 = *v105;
      }

      else
      {
        v106 = luaZ_fill(v103);
      }

      *a1 = v106;
      *(*(a1 + 9) + 8) += i;
      v107 = luaO_utf8esc(v116, v97);
      if (v107 >= 1)
      {
        v108 = v107 + 1;
        v109 = &v117 - v107;
        do
        {
          v110 = *v109++;
          save(a1, v110);
          --v108;
        }

        while (v108 > 1);
      }
    }

LABEL_131:
    v30 = *a1;
  }

  while (*a1 != v4);
LABEL_61:
  save(a1, v4);
  v64 = *(a1 + 8);
  if ((*v64)--)
  {
    v66 = v64[1];
    v64[1] = v66 + 1;
    v67 = *v66;
  }

  else
  {
    v67 = luaZ_fill(v64);
  }

  *a1 = v67;
  *a2 = luaX_newstring(a1, (**(a1 + 9) + 1), *(*(a1 + 9) + 8) - 2);
LABEL_156:
  result = 293;
LABEL_185:
  v115 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaX_lookahead(uint64_t a1)
{
  result = llex(a1, (a1 + 40));
  *(a1 + 32) = result;
  return result;
}

uint64_t save(uint64_t a1, char a2)
{
  v3 = *(a1 + 72);
  v5 = v3[1];
  v4 = v3[2];
  v6 = v5 + 1;
  if (v5 + 1 <= v4)
  {
    result = *v3;
  }

  else
  {
    if (v4 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      luaG_addinfo(*(a1 + 56), "lexical element too long", *(a1 + 96), *(a1 + 4));
      luaD_throw(*(a1 + 56), 3);
      v4 = v3[2];
    }

    v8 = 2 * v4;
    result = luaM_realloc_(*(a1 + 56), *v3, v4, 2 * v4);
    *v3 = result;
    v3[2] = v8;
    v5 = v3[1];
    v6 = v5 + 1;
  }

  v3[1] = v6;
  *(result + v5) = a2;
  return result;
}

uint64_t inclinenumber(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    result = *v5;
  }

  else
  {
    result = luaZ_fill(v3);
  }

  *a1 = result;
  if ((result == 13 || result == 10) && result != v2)
  {
    v9 = *(a1 + 8);
    if ((*v9)--)
    {
      v11 = v9[1];
      v9[1] = v11 + 1;
      result = *v11;
    }

    else
    {
      result = luaZ_fill(v9);
    }

    *a1 = result;
  }

  v12 = a1[1] + 1;
  a1[1] = v12;
  if (v12 == 0x7FFFFFFF)
  {
    luaG_addinfo(*(a1 + 7), "chunk has too many lines", *(a1 + 12), 0x7FFFFFFF);
    v13 = *(a1 + 7);

    return luaD_throw(v13, 3);
  }

  return result;
}

uint64_t skip_sep(uint64_t a1)
{
  v2 = *a1;
  save(a1, *a1);
  v3 = *(a1 + 64);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    v6 = *v5;
  }

  else
  {
    v6 = luaZ_fill(v3);
  }

  *a1 = v6;
  if (v6 == 61)
  {
    v7 = 0;
    do
    {
      save(a1, 61);
      v8 = *(a1 + 64);
      if ((*v8)--)
      {
        v10 = v8[1];
        v8[1] = v10 + 1;
        v6 = *v10;
      }

      else
      {
        v6 = luaZ_fill(v8);
      }

      *a1 = v6;
      ++v7;
    }

    while (v6 == 61);
  }

  else
  {
    v7 = 0;
  }

  if (v6 == v2)
  {
    return v7;
  }

  else
  {
    return ~v7;
  }
}

uint64_t read_long_string(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = *(a1 + 4);
  save(a1, *a1);
  v7 = *(a1 + 64);
  if ((*v7)--)
  {
    v9 = v7[1];
    v7[1] = v9 + 1;
    v10 = *v9;
  }

  else
  {
    v10 = luaZ_fill(v7);
  }

  *a1 = v10;
  if (v10 == 13 || v10 == 10)
  {
    inclinenumber(a1);
  }

  if (a2)
  {
    v12 = "string";
  }

  else
  {
    v12 = "comment";
  }

  do
  {
    while (1)
    {
      v13 = *a1;
      if (*a1 > 12)
      {
        break;
      }

      if (v13 == -1)
      {
        v18 = luaO_pushfstring(*(a1 + 56), "unfinished long %s (starting at line %d)", v12, v6);
        lexerror(a1, v18, 289);
      }

      else if (v13 == 10)
      {
LABEL_21:
        save(a1, 10);
        inclinenumber(a1);
        if (!a2)
        {
          *(*(a1 + 72) + 8) = 0;
        }
      }

      else
      {
LABEL_23:
        if (a2)
        {
          save(a1, v13);
        }

        v14 = *(a1 + 64);
        if ((*v14)--)
        {
          v16 = v14[1];
          v14[1] = v16 + 1;
          v17 = *v16;
        }

        else
        {
          v17 = luaZ_fill(v14);
        }

        *a1 = v17;
      }
    }

    if (v13 == 13)
    {
      goto LABEL_21;
    }

    if (v13 != 93)
    {
      goto LABEL_23;
    }
  }

  while (skip_sep(a1) != a3);
  save(a1, *a1);
  v19 = *(a1 + 64);
  if ((*v19)--)
  {
    v21 = v19[1];
    v19[1] = v21 + 1;
    result = *v21;
  }

  else
  {
    result = luaZ_fill(v19);
  }

  *a1 = result;
  if (a2)
  {
    result = luaX_newstring(a1, (**(a1 + 72) + (a3 + 2)), *(*(a1 + 72) + 8) - (2 * (a3 + 2)));
    *a2 = result;
  }

  return result;
}

uint64_t check_next1(uint64_t a1, int a2)
{
  if (*a1 != a2)
  {
    return 0;
  }

  v3 = *(a1 + 64);
  if ((*v3)--)
  {
    v5 = v3[1];
    v3[1] = v5 + 1;
    v6 = *v5;
  }

  else
  {
    v6 = luaZ_fill(v3);
  }

  *a1 = v6;
  return 1;
}

uint64_t read_numeral(int *a1, void *a2)
{
  v29 = 0;
  v30 = 0;
  v4 = *a1;
  save(a1, *a1);
  v5 = *(a1 + 8);
  if ((*v5)--)
  {
    v7 = v5[1];
    v5[1] = v7 + 1;
    v8 = *v7;
  }

  else
  {
    v8 = luaZ_fill(v5);
  }

  *a1 = v8;
  v9 = "Ee";
  if (v4 == 48 && check_next2(a1, "xX"))
  {
    v9 = "Pp";
  }

  while (1)
  {
    if (check_next2(a1, v9))
    {
      check_next2(a1, "-+");
    }

    v10 = *a1;
    if ((luai_ctype_[v10 + 1] & 0x10) == 0)
    {
      break;
    }

    v11 = a1;
LABEL_13:
    save(v11, v10);
    v12 = *(a1 + 8);
    if ((*v12)--)
    {
      v14 = v12[1];
      v12[1] = v14 + 1;
      v15 = *v14;
    }

    else
    {
      v15 = luaZ_fill(v12);
    }

    *a1 = v15;
  }

  v11 = a1;
  if (v10 == 46)
  {
    goto LABEL_13;
  }

  save(a1, 0);
  v16 = *(a1 + 112);
  if (v16 != 46)
  {
    v17 = *(a1 + 9);
    v18 = v17[1];
    if (v18)
    {
      v19 = *v17 - 1;
      do
      {
        if (*(v19 + v18) == 46)
        {
          *(v19 + v18) = v16;
        }

        --v18;
      }

      while (v18);
    }
  }

  if (!luaO_str2num(**(a1 + 9), &v29))
  {
    v20 = *(a1 + 112);
    *(a1 + 112) = 46;
    v21 = *(a1 + 9);
    if (v20 != 46)
    {
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = *v21 - 1;
        do
        {
          if (*(v23 + v22) == v20)
          {
            *(v23 + v22) = 46;
          }

          --v22;
        }

        while (v22);
        v21 = *(a1 + 9);
      }
    }

    if (!luaO_str2num(*v21, &v29))
    {
      v24 = *(a1 + 112);
      if (v24 != 46)
      {
        v25 = *(a1 + 9);
        v26 = v25[1];
        if (v26)
        {
          v27 = *v25 - 1;
          do
          {
            if (*(v27 + v26) == v24)
            {
              *(v27 + v26) = 46;
            }

            --v26;
          }

          while (v26);
        }
      }

      lexerror(a1, "malformed number", 290);
    }
  }

  if (v30 == 19)
  {
    result = 291;
  }

  else
  {
    result = 290;
  }

  *a2 = v29;
  return result;
}

_DWORD *esccheck(_DWORD *result, int a2, const char *a3)
{
  if (!a2)
  {
    v5 = result;
    if (*result != -1)
    {
      save(result, *result);
      v6 = *(v5 + 64);
      if ((*v6)--)
      {
        v8 = v6[1];
        v6[1] = v8 + 1;
        v9 = *v8;
      }

      else
      {
        v9 = luaZ_fill(v6);
      }

      *v5 = v9;
    }

    return lexerror(v5, a3, 293);
  }

  return result;
}

uint64_t gethexa(uint64_t a1)
{
  save(a1, *a1);
  v2 = *(a1 + 64);
  if ((*v2)--)
  {
    v4 = v2[1];
    v2[1] = v4 + 1;
    v5 = *v4;
  }

  else
  {
    v5 = luaZ_fill(v2);
  }

  *a1 = v5;
  esccheck(a1, luai_ctype_[v5 + 1] & 0x10, "hexadecimal digit expected");
  v6 = *a1;

  return luaO_hexavalue(v6);
}

uint64_t check_next2(uint64_t a1, char *a2)
{
  v4 = *a1;
  if (*a1 != *a2 && v4 != a2[1])
  {
    return 0;
  }

  save(a1, v4);
  v5 = *(a1 + 64);
  if ((*v5)--)
  {
    v7 = v5[1];
    v5[1] = v7 + 1;
    v8 = *v7;
  }

  else
  {
    v8 = luaZ_fill(v5);
  }

  *a1 = v8;
  return 1;
}

uint64_t luaM_growaux_(void *a1, uint64_t a2, int *a3, uint64_t a4, int a5, const char *a6)
{
  v10 = *a3;
  if (*a3 >= a5 / 2)
  {
    v11 = a5;
    if (v10 >= a5)
    {
      luaG_runerror(a1, "too many %s (limit is %d)", a6, a5);
      v10 = *a3;
    }
  }

  else if (2 * v10 <= 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2 * v10;
  }

  result = luaM_realloc_(a1, a2, v10 * a4, v11 * a4);
  *a3 = v11;
  return result;
}

uint64_t luaM_realloc_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 24);
  v9 = (*v8)(*(v8 + 8));
  v10 = v9;
  if (a4 && !v9)
  {
    luaD_throw(a1, 4);
  }

  if (a2)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 24) += a4 - v11;
  return v10;
}

uint64_t luaO_int2fb(uint64_t result)
{
  if (result >= 8)
  {
    if (result < 0x80)
    {
      v1 = 0;
    }

    else
    {
      v1 = 0;
      do
      {
        v2 = result + 15;
        LODWORD(result) = (result + 15) >> 4;
        v1 += 4;
      }

      while (v2 > 0x7FF);
    }

    if (result < 0x10)
    {
      v3 = result;
    }

    else
    {
      do
      {
        v3 = (result + 1) >> 1;
        ++v1;
        v4 = result > 0x1E;
        LODWORD(result) = v3;
      }

      while (v4);
    }

    return (8 * v1 + 8) | (v3 - 8);
  }

  return result;
}

uint64_t luaO_fb2int(uint64_t result)
{
  if (result >> 3)
  {
    return (result & 7 | 8) << ((result >> 3) - 1);
  }

  else
  {
    return result;
  }
}

uint64_t luaO_ceillog2(int a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) < 0x100)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = a1 - 1;
    do
    {
      v2 += 8;
      v1 = v3 >> 8;
      v4 = HIWORD(v3);
      v3 >>= 8;
    }

    while (v4);
  }

  return v2 + luaO_ceillog2_log_2[v1];
}

unint64_t luaO_arith(unint64_t result, int a2, double *a3, double *a4, uint64_t a5)
{
  v9 = result;
  if ((a2 - 7) >= 5)
  {
    if (a2 == 5)
    {
      v17 = 0;
      v18 = 0.0;
      if (*(a3 + 2) == 3)
      {
        v18 = *a3;
      }

      else
      {
        result = luaV_tonumber_(a3, &v18);
        if (!result)
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      if (*(a4 + 2) == 3)
      {
        v13 = a4;
      }

      else
      {
        v13 = &v17;
        result = luaV_tonumber_(a4, &v17);
        if (!result)
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      *a5 = v18 / *v13;
      v11 = 3;
      goto LABEL_16;
    }

    if (a2 != 13)
    {
      v17 = 0;
      v18 = 0.0;
      v10 = *(a3 + 2);
      if (v10 == 3)
      {
        v18 = *a3;
      }

      else
      {
        if (v10 == 19 && *(a4 + 2) == 19)
        {
          result = intarith(result, a2, *a3, *a4);
          v11 = 19;
          goto LABEL_43;
        }

        if (!luaV_tonumber_(a3, &v18))
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      if (*(a4 + 2) == 3)
      {
        v14 = a4;
      }

      else
      {
        v14 = &v17;
        if (!luaV_tonumber_(a4, &v17))
        {
          return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
        }
      }

      v15 = *v14;
      v16 = 0.0;
      if (a2 <= 1)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v16 = v18 - v15;
          }
        }

        else
        {
          v16 = v18 + v15;
        }
      }

      else
      {
        switch(a2)
        {
          case 2:
            v16 = v18 * v15;
            break;
          case 5:
            v16 = v18 / v15;
            break;
          case 12:
            v16 = -v18;
            break;
        }
      }

      result = *&v16;
      v11 = 3;
LABEL_43:
      *a5 = result;
      goto LABEL_16;
    }
  }

  v17 = 0;
  v18 = 0.0;
  if (*(a3 + 2) == 19)
  {
    v18 = *a3;
  }

  else if (!luaV_tointeger(a3, &v18))
  {
    return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
  }

  if (*(a4 + 2) == 19)
  {
    v12 = *a4;
    v17 = *a4;
LABEL_15:
    result = intarith(v9, a2, *&v18, v12);
    *a5 = result;
    v11 = 19;
LABEL_16:
    *(a5 + 8) = v11;
    return result;
  }

  if (luaV_tointeger(a4, &v17))
  {
    v12 = v17;
    goto LABEL_15;
  }

  return luaT_trybinTM(v9, a3, a4, a5, a2 + 6);
}

unint64_t intarith(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  if (a2 > 7)
  {
    if (a2 > 10)
    {
      if (a2 == 11)
      {
        return luaV_shiftl(a3, -a4);
      }

      else
      {
        if (a2 == 13)
        {
          v7 = ~a3;
        }

        else
        {
          v7 = 0;
        }

        if (a2 == 12)
        {
          return -a3;
        }

        else
        {
          return v7;
        }
      }
    }

    else if (a2 == 8)
    {
      return a4 | a3;
    }

    else if (a2 == 9)
    {
      return a4 ^ a3;
    }

    else
    {
      return luaV_shiftl(a3, a4);
    }
  }

  else if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return luaV_mod(a1, a3, a4);
      case 6:
        return luaV_div(a1, a3, a4);
      case 7:
        return a4 & a3;
      default:
        return 0;
    }
  }

  else
  {
    v4 = a3 - a4;
    v5 = a4 * a3;
    if (a2 != 2)
    {
      v5 = 0;
    }

    if (a2 != 1)
    {
      v4 = v5;
    }

    if (a2)
    {
      return v4;
    }

    else
    {
      return a4 + a3;
    }
  }
}

uint64_t luaO_hexavalue(int a1)
{
  if ((luai_ctype_[a1 + 1] & 2) != 0)
  {
    return (a1 - 48);
  }

  else
  {
    return (a1 | 0x20u) - 87;
  }
}

uint64_t luaO_str2num(char *__s1, uint64_t a2)
{
  v4 = __s1;
  do
  {
    v6 = *v4++;
    v5 = v6;
  }

  while ((luai_ctype_[v6 + 1] & 8) != 0);
  if (v5 == 43)
  {
    v7 = 1;
  }

  else
  {
    if (v5 != 45)
    {
      --v4;
      v7 = 1;
      goto LABEL_9;
    }

    v7 = 0;
  }

  v5 = *v4;
LABEL_9:
  if (v5 == 48 && (v4[1] | 0x20) == 0x78)
  {
    v9 = v4[2];
    v4 += 2;
    v8 = v9;
    if ((luai_ctype_[v9 + 1] & 0x10) != 0)
    {
      v10 = 0;
      do
      {
        v11 = 16 * v10;
        if ((luai_ctype_[v8 + 1] & 2) != 0)
        {
          v12 = v8 - 48;
        }

        else
        {
          v12 = (v8 | 0x20) - 87;
        }

        v10 = v11 + v12;
        v13 = *++v4;
        v8 = v13;
      }

      while ((luai_ctype_[v13 + 1] & 0x10) != 0);
      goto LABEL_22;
    }
  }

  else if ((luai_ctype_[v5 + 1] & 2) != 0)
  {
    v10 = 0;
    do
    {
      v10 = 10 * v10 + v5 - 48;
      v15 = *++v4;
      LOBYTE(v5) = v15;
    }

    while ((luai_ctype_[v15 + 1] & 2) != 0);
LABEL_22:
    v14 = 1;
    goto LABEL_23;
  }

  v10 = 0;
  v14 = 0;
LABEL_23:
  v16 = v4 - 1;
  do
  {
    v18 = *++v16;
    v17 = v18;
  }

  while ((luai_ctype_[v18 + 1] & 8) != 0);
  v19 = v14 ^ 1;
  if (v17)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    if (v7)
    {
      v20 = v10;
    }

    else
    {
      v20 = -v10;
    }

    v21 = *&v20;
    v22 = 19;
    goto LABEL_32;
  }

  if (!strpbrk(__s1, "nN"))
  {
    v27 = 0;
    v21 = strtod(__s1, &v27);
    v16 = v27;
    if (v27 != __s1)
    {
      v24 = *v27;
      if ((luai_ctype_[v24 + 1] & 8) != 0)
      {
        v25 = v27 + 1;
        do
        {
          v27 = v25;
          v26 = *v25++;
          LODWORD(v24) = v26;
        }

        while ((luai_ctype_[v26 + 1] & 8) != 0);
        v16 = v25 - 1;
      }

      if (!v24)
      {
        v22 = 3;
LABEL_32:
        *a2 = v21;
        *(a2 + 8) = v22;
        return v16 - __s1 + 1;
      }
    }
  }

  return 0;
}

uint64_t luaO_utf8esc(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x80)
  {
    v4 = (a1 + 7);
    LODWORD(v5) = 63;
    v6 = 0x700000000;
    LODWORD(v2) = 1;
    do
    {
      *v4-- = a2 & 0x3F | 0x80;
      a2 >>= 6;
      v5 = v5 >> 1;
      v6 -= 0x100000000;
      v2 = (v2 + 1);
    }

    while (a2 > v5);
    LOBYTE(a2) = a2 | (2 * ~v5);
    v3 = v6 >> 32;
  }

  else
  {
    v2 = 1;
    v3 = 7;
  }

  *(a1 + v3) = a2;
  return v2;
}

uint64_t luaO_tostring(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (*(a2 + 8) == 19)
  {
    v10 = luaI_snprintf(a1, __s, 50, "%d", a5, a6, a7, a8, *a2);
  }

  else
  {
    v10 = luaI_snprintf(a1, __s, 50, "%.14g", a5, a6, a7, a8, *a2);
    if (!__s[strcspn(__s, "-0123456789")])
    {
      *&__s[v10] = 12334;
      v10 += 2;
    }
  }

  result = luaS_newlstr(v9, __s, v10);
  *a2 = result;
  *(a2 + 8) = *(result + 8) | 0x40;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t luaO_pushvfstring(uint64_t a1, char *__s, uint64_t *a3)
{
  v3 = __s;
  v47[4] = *MEMORY[0x1E69E9840];
  v5 = strchr(__s, 37);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = *(a1 + 16);
      if (*(a1 + 48) - v8 <= 32)
      {
        luaD_growstack(a1, 2);
        v8 = *(a1 + 16);
      }

      *(a1 + 16) = v8 + 16;
      v9 = luaS_newlstr(a1, v3, v6 - v3);
      *v8 = v9;
      *(v8 + 8) = *(v9 + 8) | 0x40;
      v16 = v6[1];
      if (v16 > 0x63)
      {
        break;
      }

      if (v6[1] <= 0x54u)
      {
        if (v16 == 37)
        {
          v27 = *(a1 + 16);
          *(a1 + 16) = v27 + 16;
          v28 = a1;
          v29 = "%";
LABEL_33:
          v26 = 1;
          goto LABEL_34;
        }

        if (v16 != 73)
        {
          goto LABEL_31;
        }

        v17 = *(a1 + 16);
        *(a1 + 16) = v17 + 16;
        v18 = a3++;
        v19 = *v18;
LABEL_26:
        *v17 = v19;
        *(v17 + 8) = 19;
        goto LABEL_27;
      }

      if (v16 == 85)
      {
        v31 = a3++;
        v26 = luaO_utf8esc(__s1, *v31);
        v29 = v47 - v26;
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        goto LABEL_30;
      }

      if (v16 != 99)
      {
        goto LABEL_31;
      }

      v22 = a3++;
      __s1[0] = *v22;
      if ((luai_ctype_[__s1[0] + 1] & 4) != 0)
      {
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v29 = __s1;
        v28 = a1;
        goto LABEL_33;
      }

      luaO_pushfstring(a1, "<\\%d>", __s1[0]);
LABEL_35:
      v7 += 2;
      v3 = v6 + 2;
      v6 = strchr(v6 + 2, 37);
      if (!v6)
      {
        goto LABEL_38;
      }
    }

    if (v6[1] > 0x6Fu)
    {
      if (v16 == 112)
      {
        v32 = a3++;
        v26 = luaI_snprintf(a1, __s1, 40, "%p", v12, v13, v14, v15, *v32);
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v29 = __s1;
LABEL_30:
        v28 = a1;
LABEL_34:
        v33 = luaS_newlstr(v28, v29, v26);
        *v27 = v33;
        *(v27 + 8) = *(v33 + 8) | 0x40;
        goto LABEL_35;
      }

      if (v16 == 115)
      {
        v23 = a3++;
        v24 = *v23;
        if (v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = "(null)";
        }

        v26 = strlen(v25);
        v27 = *(a1 + 16);
        *(a1 + 16) = v27 + 16;
        v28 = a1;
        v29 = v25;
        goto LABEL_34;
      }

LABEL_31:
      luaG_runerror(a1, "invalid option '%%%c' to 'lua_pushfstring'", v16);
      goto LABEL_35;
    }

    if (v16 == 100)
    {
      v17 = *(a1 + 16);
      *(a1 + 16) = v17 + 16;
      v30 = a3++;
      v19 = *v30;
      goto LABEL_26;
    }

    if (v16 != 102)
    {
      goto LABEL_31;
    }

    v20 = *(a1 + 16);
    *(a1 + 16) = v20 + 16;
    v21 = a3++;
    *v20 = *v21;
    *(v20 + 8) = 3;
LABEL_27:
    luaO_tostring(a1, *(a1 + 16) - 16, v10, v11, v12, v13, v14, v15);
    goto LABEL_35;
  }

  v7 = 0;
LABEL_38:
  v34 = *(a1 + 16);
  if (*(a1 + 48) - v34 <= 16)
  {
    luaD_growstack(a1, 1);
    v34 = *(a1 + 16);
  }

  v35 = strlen(v3);
  *(a1 + 16) = v34 + 16;
  v36 = luaS_newlstr(a1, v3, v35);
  *v34 = v36;
  *(v34 + 8) = *(v36 + 8) | 0x40;
  if (v7)
  {
    luaV_concat(a1, v7 | 1, v37, v38, v39, v40, v41, v42);
  }

  v43 = *MEMORY[0x1E69E9840];
  return *(*(a1 + 16) - 16) + 24;
}

void *luaO_chunkid(char *a1, char *__s, unint64_t a3)
{
  v6 = strlen(__s);
  v7 = v6;
  v8 = *__s;
  if (v8 == 64)
  {
    if (v6 > a3)
    {
      a1[2] = 46;
      *a1 = 11822;
      v10 = a3 - 3;
      v11 = &__s[v6 - a3];
      v12 = a1 + 3;
      v13 = v11 + 4;
LABEL_8:

      return memcpy(v12, v13, v10);
    }

LABEL_7:
    v13 = __s + 1;
    v12 = a1;
    v10 = v7;
    goto LABEL_8;
  }

  if (v8 == 61)
  {
    if (v6 > a3)
    {
      result = memcpy(a1, __s + 1, a3 - 1);
      a1[a3 - 1] = 0;
      return result;
    }

    goto LABEL_7;
  }

  v14 = strchr(__s, 10);
  a1[8] = 34;
  *a1 = *"[string ";
  v15 = a1 + 9;
  if (v7 >= a3 - 15 || v14)
  {
    v17 = v14 - __s;
    if (!v14)
    {
      v17 = v7;
    }

    if (v17 >= a3 - 15)
    {
      v18 = a3 - 15;
    }

    else
    {
      v18 = v17;
    }

    result = memcpy(v15, __s, v18);
    v19 = &v15[v18];
    *v19 = 11822;
    v19[2] = 46;
    v16 = &v15[v18 + 3];
  }

  else
  {
    result = memcpy(v15, __s, v7);
    v16 = &v15[v7];
  }

  strcpy(v16, "]");
  return result;
}

uint64_t luaY_parser(void *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char *a5, int a6)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v12 = luaF_newLclosure(a1, 1u);
  v13 = a1[2];
  *v13 = v12;
  *(v13 + 8) = 70;
  v14 = a1[2] + 16;
  a1[2] = v14;
  if (a1[6] - v14 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  *&v33 = luaH_new(a1);
  v15 = a1[2];
  *v15 = v33;
  *(v15 + 8) = 69;
  v16 = a1[2] + 16;
  a1[2] = v16;
  if (a1[6] - v16 <= 15)
  {
    luaD_growstack(a1, 0);
  }

  luaF_newproto(a1);
  v18 = v17;
  *(v12 + 24) = v17;
  *&v24 = v17;
  v19 = luaS_new(a1, a5);
  *(v18 + 104) = v19;
  *(&v32 + 1) = a3;
  *(&v33 + 1) = a4;
  a4[10] = 0;
  a4[6] = 0;
  a4[2] = 0;
  luaX_setinput(a1, &v28, a2, v19, a6);
  v40 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v20 = *(&v33 + 1);
  *(&v24 + 1) = v31;
  *&v25 = &v28;
  *&v31 = &v24;
  v26 = xmmword_1C37B1740;
  BYTE12(v27) = 0;
  v21 = *(*(&v33 + 1) + 8);
  LODWORD(v27) = 0;
  *(&v27 + 4) = v21;
  *(v18 + 104) = v34;
  v22 = *(v20 + 40);
  *(v18 + 11) = 513;
  LODWORD(v20) = *(v20 + 24);
  v38 = v22;
  v39 = v20;
  v37 = 0;
  *(&v25 + 1) = &v37;
  v36[2] = -1;
  LODWORD(v36[0]) = 8;
  newupvalue(&v24, *(&v34 + 1), v36);
  luaX_next(&v28);
  statlist(&v28);
  if (v29 != 289)
  {
    error_expected(&v28, 289);
  }

  close_func(&v28);
  a1[2] -= 16;
  return v12;
}

uint64_t newupvalue(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *a1;
  v7 = (*a1 + 16);
  v8 = *v7;
  checklimit(a1, *(a1 + 59) + 1, 255, "upvalues");
  v9 = *v7;
  if (*v7 <= *(a1 + 59))
  {
    *(v6 + 88) = luaM_growaux_(*(*(a1 + 16) + 56), *(v6 + 88), v7, 16, 255, "upvalues");
    v9 = *(v6 + 16);
  }

  v10 = *(v6 + 88);
  if (v8 < v9)
  {
    v11 = 0;
    v12 = v9 - v8;
    v13 = (v12 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = (v10 + 16 * v8 + 16);
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v11), xmmword_1C378AF00)));
      if (v16.i8[0])
      {
        *(v15 - 2) = 0;
      }

      if (v16.i8[4])
      {
        *v15 = 0;
      }

      v11 += 2;
      v15 += 4;
    }

    while (v13 != v11);
  }

  result = *(a1 + 59);
  v18 = v10 + 16 * result;
  *(v18 + 8) = *a3 == 8;
  *(v18 + 9) = a3[2];
  *v18 = a2;
  if ((*(v6 + 9) & 4) != 0 && (*(a2 + 9) & 3) != 0)
  {
    luaC_barrier_(*(*(a1 + 16) + 56), v6, a2);
    result = *(a1 + 59);
  }

  *(a1 + 59) = result + 1;
  return result;
}

void statlist(__n128 *a1)
{
  while (1)
  {
    v2 = a1[1].n128_u32[0] - 260;
    if (v2 <= 0x1D)
    {
      if (((1 << v2) & 0x20020007) != 0)
      {
        return;
      }

      if (a1[1].n128_u32[0] == 274)
      {
        break;
      }
    }

    statement(a1);
  }

  statement(a1);
}

uint64_t close_func(uint64_t a1)
{
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v4 = *v3;
  luaK_ret(v3, 0, 0);
  leaveblock(v3);
  *(v4 + 56) = luaM_realloc_(v2, *(v4 + 56), 4 * *(v4 + 24), 4 * *(v3 + 32));
  v5 = *(v3 + 32);
  *(v4 + 24) = v5;
  *(v4 + 72) = luaM_realloc_(v2, *(v4 + 72), 4 * *(v4 + 28), 4 * v5);
  *(v4 + 28) = *(v3 + 32);
  *(v4 + 48) = luaM_realloc_(v2, *(v4 + 48), 16 * *(v4 + 20), 16 * *(v3 + 44));
  v6 = *(v3 + 48);
  *(v4 + 20) = *(v3 + 44);
  *(v4 + 64) = luaM_realloc_(v2, *(v4 + 64), 8 * *(v4 + 32), 8 * v6);
  *(v4 + 32) = *(v3 + 48);
  *(v4 + 80) = luaM_realloc_(v2, *(v4 + 80), 16 * *(v4 + 36), 16 * *(v3 + 56));
  *(v4 + 36) = *(v3 + 56);
  result = luaM_realloc_(v2, *(v4 + 88), 16 * *(v4 + 16), 16 * *(v3 + 59));
  *(v4 + 88) = result;
  *(v4 + 16) = *(v3 + 59);
  *(a1 + 48) = *(v3 + 8);
  if (*(*(v2 + 24) + 24) >= 1)
  {

    return luaC_step(v2);
  }

  return result;
}

void *checklimit(void *result, int a2, int a3, const char *a4)
{
  if (a2 > a3)
  {
    v7 = result;
    v8 = *(result[2] + 56);
    if (*(*result + 40))
    {
      v9 = luaO_pushfstring(v8, "function at line %d", *(*result + 40));
    }

    else
    {
      v9 = "main function";
    }

    v10 = luaO_pushfstring(v8, "too many %s (limit is %d) in %s", a4, a3, v9);
    v11 = v7[2];

    return luaX_syntaxerror(v11, v10);
  }

  return result;
}

void statement(__n128 *a1)
{
  v2 = a1->n128_i32[1];
  v3 = a1[3].n128_u64[1];
  v4 = *(v3 + 198) + 1;
  *(v3 + 198) = v4;
  checklimit(a1[3].n128_u64[0], v4, 200, "C levels");
  v5 = a1[1].n128_i32[0];
  if (v5 <= 266)
  {
    if (v5 <= 263)
    {
      if (v5 != 59)
      {
        if (v5 != 258)
        {
          if (v5 == 259)
          {
            luaX_next(a1);
            block(a1);
            check_match(a1, 262, 259, v2);
            goto LABEL_102;
          }

          goto LABEL_69;
        }

LABEL_16:
        v11 = luaK_jump(a1[3].n128_i64[0]);
        gotostat(a1, v11);
        goto LABEL_102;
      }

LABEL_59:
      luaX_next(a1);
      goto LABEL_102;
    }

    if (v5 != 264)
    {
      if (v5 == 265)
      {
        v70 = 0uLL;
        *&v71 = 0;
        v72 = 0;
        v73 = 0;
        v74 = 0;
        luaX_next(a1);
        singlevar(a1, &v70);
        while (1)
        {
          v43 = a1[1].n128_u32[0];
          if (v43 != 46)
          {
            break;
          }

          fieldsel(a1, &v70);
        }

        if (v43 == 58)
        {
          fieldsel(a1, &v70);
          v49 = 1;
        }

        else
        {
          v49 = 0;
        }

        body(a1, &v72, v49, v2);
        luaK_storevar(a1[3].n128_i64[0], &v70, &v72);
        luaK_fixline(a1[3].n128_u64[0], v2);
        goto LABEL_102;
      }

      goto LABEL_16;
    }

    v6 = a1[3].n128_i64[0];
    v74 = 0x10000;
    LOBYTE(v74) = *(v6 + 58);
    v34 = *(v6 + 24);
    v73 = __PAIR64__(*(*(*(v6 + 16) + 88) + 24), *(*(*(v6 + 16) + 88) + 40));
    v72 = v34;
    *(v6 + 24) = &v72;
    luaX_next(a1);
    v35 = str_checkname(a1);
    v36 = a1[1].n128_u32[0];
    if (v36 == 44 || v36 == 268)
    {
      v54 = a1[3].n128_i64[0];
      v70 = 0uLL;
      *&v71 = 0;
      v55 = *(v54 + 60);
      v56 = luaX_newstring(a1, "(for generator)", 0xFuLL);
      new_localvar(a1, v56);
      v57 = luaX_newstring(a1, "(for state)", 0xBuLL);
      new_localvar(a1, v57);
      v58 = luaX_newstring(a1, "(for control)", 0xDuLL);
      new_localvar(a1, v58);
      new_localvar(a1, v35);
      v59 = a1[1].n128_u32[0];
      v60 = 1;
      while (v59 == 44)
      {
        luaX_next(a1);
        v61 = str_checkname(a1);
        new_localvar(a1, v61);
        v59 = a1[1].n128_u32[0];
        ++v60;
      }

      checknext(a1, 268);
      v62 = a1->n128_i32[1];
      v63 = explist(a1, &v70);
      adjust_assign(a1, 3, v63, &v70);
      luaK_checkstack(v54, 3);
      forbody(a1, v55, v62, v60, 0);
    }

    else if (v36 == 61)
    {
      fornum(a1, v35, v2);
    }

    else
    {
      luaX_syntaxerror(a1, "'=' or 'in' expected");
    }

    check_match(a1, 262, 264, v2);
LABEL_101:
    leaveblock(v6);
    goto LABEL_102;
  }

  if (v5 <= 273)
  {
    if (v5 != 267)
    {
      if (v5 == 269)
      {
        luaX_next(a1);
        if (a1[1].n128_u32[0] == 265)
        {
          luaX_next(a1);
          v70 = 0uLL;
          *&v71 = 0;
          v41 = a1[3].n128_u64[0];
          v42 = str_checkname(a1);
          new_localvar(a1, v42);
          adjustlocalvars(a1, 1u);
          body(a1, &v70, 0, a1->n128_i32[1]);
          *(*(*v41 + 80) + 16 * *(**(*(v41 + 16) + 88) + 2 * (*(v41 + 52) + DWORD2(v70))) + 8) = *(v41 + 32);
        }

        else
        {
          v70 = 0uLL;
          *&v71 = 0;
          v64 = str_checkname(a1);
          new_localvar(a1, v64);
          v65 = a1[1].n128_u32[0];
          v66 = 1;
          while (v65 == 44)
          {
            luaX_next(a1);
            v67 = str_checkname(a1);
            new_localvar(a1, v67);
            ++v66;
            v65 = a1[1].n128_u32[0];
          }

          if (v65 == 61)
          {
            luaX_next(a1);
            v68 = explist(a1, &v70);
          }

          else
          {
            v68 = 0;
            LODWORD(v70) = 0;
          }

          adjust_assign(a1, v66, v68, &v70);
          adjustlocalvars(a1, v66);
        }

        goto LABEL_102;
      }

      if (v5 != 273)
      {
        goto LABEL_69;
      }

      v6 = a1[3].n128_i64[0];
      v7 = luaK_getlabel(v6);
      *&v71 = 0x10000;
      v74 = 0;
      LOBYTE(v71) = *(v6 + 58);
      v8 = *(v6 + 24);
      *(&v70 + 1) = __PAIR64__(*(*(*(v6 + 16) + 88) + 24), *(*(*(v6 + 16) + 88) + 40));
      *&v70 = v8;
      LOBYTE(v74) = v71;
      v73 = *(&v70 + 1);
      v72 = &v70;
      *(v6 + 24) = &v72;
      *&v9 = luaX_next(a1).n128_u64[0];
      statlist(a1, v9);
      check_match(a1, 277, 273, v2);
      v10 = cond(a1);
      if (BYTE1(v74))
      {
        luaK_patchclose(v6, v10, v74);
      }

      leaveblock(v6);
      luaK_patchlist(v6, v10, v7);
      goto LABEL_101;
    }

    v23 = a1[3].n128_i64[0];
    v69 = -1;
    do
    {
      v70 = 0uLL;
      *&v71 = 0;
      v24 = a1[3].n128_i64[0];
      v72 = 0;
      v73 = 0;
      v74 = 0;
      luaX_next(a1);
      subexpr(a1, &v72, 0);
      checknext(a1, 275);
      if ((a1[1].n128_u32[0] | 8) == 0x10A)
      {
        luaK_goiffalse(a1[3].n128_i64[0], &v72);
        LOBYTE(v71) = *(v24 + 58);
        *(&v71 + 1) = 0;
        v25 = *(v24 + 24);
        *(&v70 + 1) = __PAIR64__(*(*(*(v24 + 16) + 88) + 24), *(*(*(v24 + 16) + 88) + 40));
        *&v70 = v25;
        *(v24 + 24) = &v70;
        gotostat(a1, v74);
        while (1)
        {
          v26 = a1[1].n128_i32[0];
          if (v26 > 287)
          {
            if (v26 != 288)
            {
              if (v26 != 289)
              {
LABEL_43:
                v29 = luaK_jump(v24);
                goto LABEL_44;
              }

LABEL_40:
              leaveblock(v24);
              goto LABEL_47;
            }
          }

          else if (v26 != 59)
          {
            if ((v26 - 260) >= 3)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }

          statement(a1);
        }
      }

      luaK_goiftrue(a1[3].n128_i64[0], &v72);
      LOBYTE(v71) = *(v24 + 58);
      *(&v71 + 1) = 0;
      v28 = *(v24 + 24);
      *(&v70 + 1) = __PAIR64__(*(*(*(v24 + 16) + 88) + 24), *(*(*(v24 + 16) + 88) + 40));
      *&v70 = v28;
      *(v24 + 24) = &v70;
      v29 = HIDWORD(v74);
LABEL_44:
      statlist(a1, v27);
      leaveblock(v24);
      if ((a1[1].n128_u32[0] & 0xFFFFFFFE) == 0x104)
      {
        v30 = luaK_jump(v24);
        luaK_concat(v24, &v69, v30);
      }

      luaK_patchtohere(v24, v29);
LABEL_47:
      v31 = a1[1].n128_u32[0];
    }

    while (v31 == 261);
    if (v31 == 260)
    {
      luaX_next(a1);
      block(a1);
    }

    check_match(a1, 262, 267, v2);
    v32 = v69;
    v33 = v23;
LABEL_66:
    luaK_patchtohere(v33, v32);
    goto LABEL_102;
  }

  if (v5 == 274)
  {
    luaX_next(a1);
    v37 = 0;
    v38 = a1[3].n128_u64[0];
    v70 = 0uLL;
    *&v71 = 0;
    v39 = a1[1].n128_u32[0];
    if (v39 - 260 <= 0x1D && ((1 << (v39 - 4)) & 0x20020007) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = 0;
      if (v39 != 59)
      {
        v40 = explist(a1, &v70);
        if ((v70 - 13) > 1)
        {
          if (v40 == 1)
          {
            v37 = luaK_exp2anyreg(v38, &v70);
          }

          else
          {
            luaK_exp2nextreg(v38, &v70);
            v37 = v38[58];
          }
        }

        else
        {
          luaK_setreturns(v38, &v70, -1);
          if (v70 == 13 && v40 == 1)
          {
            *(*(*v38 + 56) + 4 * SDWORD2(v70)) = *(*(*v38 + 56) + 4 * SDWORD2(v70)) & 0xFFFFFFC0 | 0x25;
          }

          v37 = v38[58];
          v40 = -1;
        }
      }
    }

    luaK_ret(v38, v37, v40);
    if (a1[1].n128_u32[0] != 59)
    {
      goto LABEL_102;
    }

    goto LABEL_59;
  }

  if (v5 == 278)
  {
    v44 = a1[3].n128_i64[0];
    *&v71 = 0x10000;
    luaX_next(a1);
    v45 = luaK_getlabel(v44);
    v46 = cond(a1);
    LOBYTE(v71) = *(v44 + 58);
    v47 = *(v44 + 24);
    *(&v70 + 1) = __PAIR64__(*(*(*(v44 + 16) + 88) + 24), *(*(*(v44 + 16) + 88) + 40));
    *&v70 = v47;
    *(v44 + 24) = &v70;
    checknext(a1, 259);
    block(a1);
    v48 = luaK_jump(v44);
    luaK_patchlist(v44, v48, v45);
    check_match(a1, 262, 278, v2);
    leaveblock(v44);
    v33 = v44;
    v32 = v46;
    goto LABEL_66;
  }

  if (v5 != 288)
  {
LABEL_69:
    v50 = a1[3].n128_u64[0];
    v70 = 0u;
    v71 = 0u;
    suffixedexp(a1, &v70 + 2);
    v51 = a1[1].n128_u32[0];
    if (v51 == 61 || v51 == 44)
    {
      *&v70 = 0;
      assignment(a1, &v70, 1);
    }

    else
    {
      if (DWORD2(v70) != 13)
      {
        luaX_syntaxerror(a1, "syntax error");
      }

      *(*(*v50 + 56) + 4 * v71) = *(*(*v50 + 56) + 4 * v71) & 0xFF803FFF | 0x4000;
    }

    goto LABEL_102;
  }

  luaX_next(a1);
  v12 = str_checkname(a1);
  v13 = a1[3].n128_u64[0];
  v14 = a1[5].n128_u64[1];
  v15 = *(*(v13 + 24) + 8);
  v16 = *(v14 + 40);
  if (v15 < v16)
  {
    v17 = 24 * v15;
    do
    {
      v18 = *(v14 + 32);
      if (*(v18 + v17) == v12)
      {
        v19 = luaO_pushfstring(*(*(v13 + 16) + 56), "label '%s' already defined on line %d", (v12 + 24), *(v18 + v17 + 12));
        v20 = *(v13 + 16);
        *(v20 + 16) = 0;
        luaX_syntaxerror(v20, v19);
        v16 = *(v14 + 40);
      }

      ++v15;
      v17 += 24;
    }

    while (v15 < v16);
  }

  checknext(a1, 288);
  v21 = newlabelentry(a1, v14 + 32, v12, v2, *(v13 + 32));
  while (1)
  {
    v22 = a1[1].n128_i32[0];
    if (v22 <= 287)
    {
      break;
    }

    if (v22 != 288)
    {
      if (v22 != 289)
      {
        goto LABEL_90;
      }

LABEL_73:
      v52 = *(v14 + 32);
      v53 = v21;
      *(v52 + 24 * v21 + 16) = *(*(v13 + 24) + 16);
      goto LABEL_74;
    }

LABEL_30:
    statement(a1);
  }

  if (v22 == 59)
  {
    goto LABEL_30;
  }

  if ((v22 - 260) < 3)
  {
    goto LABEL_73;
  }

LABEL_90:
  v52 = *(v14 + 32);
  v53 = v21;
LABEL_74:
  findgotos(a1, (v52 + 24 * v53));
LABEL_102:
  *(a1[3].n128_u64[0] + 60) = *(a1[3].n128_u64[0] + 58);
  --*(a1[3].n128_u64[1] + 198);
}

uint64_t block(uint64_t a1)
{
  v1 = *(a1 + 48);
  v9 = 0;
  LOBYTE(v9) = *(v1 + 58);
  v2 = *(v1 + 24);
  v3 = *(*(v1 + 16) + 88);
  v4 = *(v3 + 40);
  LODWORD(v3) = *(v3 + 24);
  v7 = v4;
  v8 = v3;
  v6 = v2;
  *(v1 + 24) = &v6;
  statlist();
  return leaveblock(v1);
}

void check_match(__n128 *a1, int a2, int a3, int a4)
{
  if (a1[1].n128_u32[0] == a2)
  {

    luaX_next(a1);
  }

  else if (a1->n128_u32[1] == a4)
  {

    error_expected(a1, a2);
  }

  else
  {
    v7 = a1[3].n128_i64[1];
    v8 = luaX_token2str(a1, a2);
    v9 = luaX_token2str(a1, a3);
    v10 = luaO_pushfstring(v7, "%s expected (to close %s at line %d)", v8, v9, a4);

    luaX_syntaxerror(a1, v10);
  }
}

unint64_t str_checkname(__n128 *a1)
{
  if (a1[1].n128_u32[0] != 292)
  {
    error_expected(a1, 292);
  }

  v2 = a1[1].n128_u64[1];
  luaX_next(a1);
  return v2;
}

uint64_t gotostat(uint64_t a1, int a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 16);
  luaX_next(a1);
  if (v5 == 266)
  {
    v6 = str_checkname(a1);
  }

  else
  {
    v6 = luaS_new(*(a1 + 56), "break");
  }

  v7 = newlabelentry(a1, *(a1 + 88) + 16, v6, v4, a2);

  return findlabel(a1, v7);
}

double checknext(__n128 *a1, int a2)
{
  if (a1[1].n128_u32[0] != a2)
  {
    error_expected(a1, a2);
  }

  *&result = luaX_next(a1).n128_u64[0];
  return result;
}

uint64_t leaveblock(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 24);
  if (*v3 && *(v3 + 17))
  {
    v4 = luaK_jump(result);
    luaK_patchclose(v1, v4, *(v3 + 16));
    result = luaK_patchtohere(v1, v4);
  }

  if (*(v3 + 18))
  {
    v5 = luaS_new(*(v2 + 56), "break");
    v6 = newlabelentry(v2, *(v2 + 88) + 32, v5, 0, *(*(v2 + 48) + 32));
    result = findgotos(v2, (*(*(v2 + 88) + 32) + 24 * v6));
  }

  v7 = *v3;
  *(v1 + 24) = *v3;
  v8 = *(v3 + 16);
  v9 = *(v1 + 58);
  v10 = *(*(v1 + 16) + 88);
  *(v10 + 8) += v8 - v9;
  if (v8 < v9)
  {
    v11 = *(v1 + 32);
    v12 = *(*v1 + 80);
    v13 = *v10 + 2 * *(v1 + 52) - 2;
    do
    {
      v14 = *(v13 + 2 * v9--);
      *(v12 + 16 * v14 + 12) = v11;
    }

    while (v9 > v8);
    *(v1 + 58) = v9;
  }

  *(v1 + 60) = v9;
  v15 = *(v2 + 88);
  v16 = *(v3 + 3);
  *(v15 + 40) = *(v3 + 2);
  if (v7)
  {
    while (v16 < *(v10 + 24))
    {
      v17 = *(v10 + 16) + 24 * v16;
      v18 = *(v3 + 16);
      if (*(v17 + 16) > v18)
      {
        if (*(v3 + 17))
        {
          luaK_patchclose(v1, *(v17 + 8), v18);
          LOBYTE(v18) = *(v3 + 16);
        }

        *(v17 + 16) = v18;
      }

      result = findlabel(*(v1 + 16), v16);
      if (!result)
      {
        ++v16;
      }
    }
  }

  else if (v16 < *(v15 + 24))
  {
    v19 = (*(v15 + 16) + 24 * v16);
    v20 = *v19;
    v21 = "no visible label '%s' for <goto> at line %d";
    if (*(*v19 + 8) == 4 && *(v20 + 10))
    {
      v21 = "<%s> at line %d not inside a loop";
    }

    v22 = luaO_pushfstring(*(v2 + 56), v21, v20 + 24, v19[3]);
    *(v2 + 16) = 0;

    return luaX_syntaxerror(v2, v22);
  }

  return result;
}

uint64_t subexpr(__n128 *a1, uint64_t a2, int a3)
{
  v8 = a1 + 3;
  v6 = a1[3].n128_u64[0];
  v7 = v8->n128_i64[1];
  v9 = *(v7 + 198) + 1;
  *(v7 + 198) = v9;
  checklimit(v6, v9, 200, "C levels");
  v10 = a1[1].n128_i32[0];
  if (v10 <= 269)
  {
    if (v10 > 125)
    {
      if (v10 != 126)
      {
        if (v10 != 263)
        {
          if (v10 == 265)
          {
            luaX_next(a1);
            body(a1, a2, 0, a1->n128_i32[1]);
            goto LABEL_37;
          }

          goto LABEL_72;
        }

        *(a2 + 16) = -1;
        v11 = 3;
        goto LABEL_35;
      }

      v15 = 1;
    }

    else
    {
      switch(v10)
      {
        case '#':
          v15 = 3;
          break;
        case '-':
          v15 = 0;
          break;
        case '{':
          constructor(a1, a2);
          goto LABEL_37;
        default:
          goto LABEL_72;
      }
    }

LABEL_33:
    v16 = a1->n128_i32[1];
    luaX_next(a1);
    subexpr(a1, a2, 12);
    luaK_prefix(a1[3].n128_u64[0], v15, a2, v16);
    goto LABEL_37;
  }

  if (v10 <= 280)
  {
    if (v10 == 270)
    {
      *(a2 + 16) = -1;
      v11 = 1;
      goto LABEL_35;
    }

    if (v10 != 271)
    {
      if (v10 != 276)
      {
        goto LABEL_72;
      }

      *(a2 + 16) = -1;
      v11 = 2;
LABEL_35:
      *a2 = v11;
      *(a2 + 8) = 0;
      goto LABEL_36;
    }

    v15 = 2;
    goto LABEL_33;
  }

  if (v10 > 290)
  {
    if (v10 == 291)
    {
      *(a2 + 16) = -1;
      *a2 = 6;
      *(a2 + 8) = 0;
      *(a2 + 8) = a1[1].n128_u64[1];
      goto LABEL_36;
    }

    if (v10 != 293)
    {
      goto LABEL_72;
    }

    v12 = luaK_stringK(a1[3].n128_i64[0], a1[1].n128_i64[1]);
    *(a2 + 16) = -1;
    v13 = 4;
LABEL_26:
    *a2 = v13;
    *(a2 + 8) = v12;
    goto LABEL_36;
  }

  if (v10 == 281)
  {
    v14 = a1[3].n128_i64[0];
    if (!*(*v14 + 11))
    {
      luaX_syntaxerror(a1, "cannot use '...' outside a vararg function");
    }

    v12 = luaK_codeABC(v14, 45, 0, 1, 0);
    *(a2 + 16) = -1;
    v13 = 14;
    goto LABEL_26;
  }

  if (v10 == 290)
  {
    *(a2 + 16) = -1;
    *a2 = 5;
    *(a2 + 8) = 0;
    *(a2 + 8) = a1[1].n128_u64[1];
LABEL_36:
    luaX_next(a1);
    goto LABEL_37;
  }

LABEL_72:
  suffixedexp(a1, a2);
LABEL_37:
  v17 = a1[1].n128_i32[0];
  v18 = 21;
  if (v17 <= 125)
  {
    if (v17 > 46)
    {
      if (v17 <= 61)
      {
        if (v17 == 47)
        {
          v18 = 5;
        }

        else
        {
          if (v17 != 60)
          {
            goto LABEL_88;
          }

          v18 = 14;
        }
      }

      else
      {
        switch(v17)
        {
          case '>':
            v18 = 17;
            break;
          case '^':
            v18 = 4;
            break;
          case '|':
            v18 = 8;
            break;
          default:
            goto LABEL_88;
        }
      }
    }

    else if (v17 <= 41)
    {
      if (v17 == 37)
      {
        v18 = 3;
      }

      else
      {
        if (v17 != 38)
        {
          goto LABEL_88;
        }

        v18 = 7;
      }
    }

    else
    {
      switch(v17)
      {
        case '*':
          v18 = 2;
          break;
        case '+':
          v18 = 0;
          break;
        case '-':
          v18 = 1;
          break;
        default:
          goto LABEL_88;
      }
    }
  }

  else if (v17 <= 281)
  {
    if (v17 <= 271)
    {
      if (v17 == 126)
      {
        v18 = 9;
      }

      else
      {
        if (v17 != 257)
        {
          goto LABEL_88;
        }

        v18 = 19;
      }
    }

    else
    {
      switch(v17)
      {
        case 272:
          v18 = 20;
          break;
        case 279:
          v18 = 6;
          break;
        case 280:
          v18 = 12;
          break;
        default:
          goto LABEL_88;
      }
    }
  }

  else if (v17 > 284)
  {
    switch(v17)
    {
      case 285:
        v18 = 16;
        break;
      case 286:
        v18 = 10;
        break;
      case 287:
        v18 = 11;
        break;
      default:
        goto LABEL_88;
    }
  }

  else if (v17 == 282)
  {
    v18 = 13;
  }

  else if (v17 == 283)
  {
    v18 = 18;
  }

  else
  {
    v18 = 15;
  }

  do
  {
    v19 = &priority[2 * v18];
    if (*v19 <= a3)
    {
      break;
    }

    memset(v23, 0, sizeof(v23));
    v20 = a1->n128_i32[1];
    luaX_next(a1);
    luaK_infix(a1[3].n128_i64[0], v18, a2);
    v21 = subexpr(a1, v23, v19[1]);
    luaK_posfix(a1[3].n128_i64[0], v18, a2, v23, v20);
    v18 = v21;
  }

  while (v21 != 21);
LABEL_88:
  --*(a1[3].n128_u64[1] + 198);
  return v18;
}

uint64_t constructor(__n128 *a1, uint64_t a2)
{
  v4 = a1[3].n128_u64[0];
  v5 = a1->n128_i32[1];
  v6 = luaK_codeABC(v4, 11, 0, 0, 0);
  v14 = 0u;
  v17 = 0u;
  v16 = a2;
  *(a2 + 16) = -1;
  *a2 = 12;
  *(a2 + 8) = v6;
  v15 = -1;
  DWORD2(v14) = 0;
  luaK_exp2nextreg(a1[3].n128_i64[0], a2);
  checknext(a1, 123);
  while (1)
  {
    v7 = a1[1].n128_u32[0];
    if (v7 == 125)
    {
      break;
    }

    if (v14)
    {
      luaK_exp2nextreg(v4, &v14);
      LODWORD(v14) = 0;
      if (DWORD2(v17) == 50)
      {
        luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), 50);
        DWORD2(v17) = 0;
      }

      v7 = a1[1].n128_u32[0];
    }

    if (v7 == 91 || v7 == 292 && luaX_lookahead(a1) == 61)
    {
      recfield(a1, &v14);
    }

    else
    {
      listfield(a1, &v14);
    }

    v8 = a1[1].n128_u32[0];
    if (v8 != 59 && v8 != 44)
    {
      break;
    }

    luaX_next(a1);
  }

  check_match(a1, 125, 123, v5);
  v9 = DWORD2(v17);
  if (DWORD2(v17))
  {
    if ((v14 - 13) >= 2)
    {
      if (v14)
      {
        luaK_exp2nextreg(v4, &v14);
        v9 = DWORD2(v17);
      }

      luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), v9);
    }

    else
    {
      luaK_setreturns(v4, &v14, -1);
      luaK_setlist(v4, *(v16 + 8), SDWORD1(v17), -1);
      --DWORD1(v17);
    }
  }

  v10 = *(*v4 + 56);
  v11 = *(v10 + 4 * v6);
  v12 = v11 & 0x7FFFFF | (luaO_int2fb(DWORD1(v17)) << 23);
  *(v10 + 4 * v6) = v12;
  result = luaO_int2fb(v17);
  *(v10 + 4 * v6) = v12 & 0xFF803FFF | ((result & 0x1FF) << 14);
  return result;
}

uint64_t body(__n128 *a1, uint64_t a2, int a3, int a4)
{
  v37 = 0;
  memset(&v36[3], 0, 32);
  v35 = 0;
  v9 = a1[3].n128_u64[0];
  v8 = a1[3].n128_i64[1];
  v10 = *v9;
  v11 = *(*v9 + 32);
  if (v9[12] >= v11)
  {
    *(v10 + 64) = luaM_growaux_(a1[3].n128_u64[1], *(v10 + 64), (*v9 + 32), 8, 0x3FFFF, "functions");
    v12 = *(v10 + 32);
    if (v11 < v12)
    {
      do
      {
        *(*(v10 + 64) + 8 * v11++) = 0;
      }

      while (v12 != v11);
    }
  }

  luaF_newproto(v8);
  v14 = v13;
  v15 = *(v10 + 64);
  v16 = v9[12];
  v9[12] = v16 + 1;
  *(v15 + 8 * v16) = v13;
  if ((*(v10 + 9) & 4) != 0 && (*(v13 + 9) & 3) != 0)
  {
    luaC_barrier_(v8, v10, v13);
  }

  *(v14 + 40) = a4;
  v17 = a1[3].n128_u64[0];
  v36[0] = v14;
  v36[1] = v17;
  a1[3].n128_u64[0] = v36;
  *&v36[4] = xmmword_1C37B1740;
  LODWORD(v37) = 0;
  BYTE4(v37) = 0;
  v18 = a1[5].n128_u64[1];
  v19 = a1[6].n128_u64[0];
  v20 = v18[2];
  LODWORD(v36[6]) = 0;
  HIDWORD(v36[6]) = v20;
  *(v14 + 104) = v19;
  *(v14 + 12) = 2;
  BYTE2(v35) = 0;
  LOWORD(v35) = 0;
  LODWORD(v19) = v18[10];
  LODWORD(v18) = v18[6];
  v33 = v19;
  v34 = v18;
  v32 = 0;
  v36[2] = a1;
  v36[3] = &v32;
  checknext(a1, 40);
  if (a3)
  {
    v21 = luaX_newstring(a1, "self", 4uLL);
    new_localvar(a1, v21);
    adjustlocalvars(a1, 1u);
  }

  v22 = 0;
  v23 = a1[3].n128_u64[0];
  v24 = *v23;
  *(*v23 + 11) = 0;
  v25 = a1[1].n128_u32[0];
  if (v25 != 41)
  {
    v22 = 0;
    while (1)
    {
      if (v25 == 292)
      {
        v31 = str_checkname(a1);
        new_localvar(a1, v31);
        ++v22;
      }

      else
      {
        if (v25 == 281)
        {
          luaX_next(a1);
          *(v24 + 11) = 1;
          break;
        }

        luaX_syntaxerror(a1, "<name> or '...' expected");
      }

      if (*(v24 + 11) || a1[1].n128_u32[0] != 44)
      {
        break;
      }

      luaX_next(a1);
      v25 = a1[1].n128_u32[0];
    }
  }

  adjustlocalvars(a1, v22);
  v26 = v23[58];
  *(v24 + 10) = v26;
  luaK_reserveregs(v23, v26);
  v27 = checknext(a1, 41);
  statlist(a1, v27);
  *(v36[0] + 44) = a1->n128_u32[1];
  check_match(a1, 262, 265, a4);
  v28 = *(a1[3].n128_u64[0] + 8);
  v29 = luaK_codeABx(v28, 44, 0, *(v28 + 48) - 1);
  *(a2 + 16) = -1;
  *a2 = 12;
  *(a2 + 8) = v29;
  luaK_exp2nextreg(v28, a2);
  return close_func(a1);
}

uint64_t suffixedexp(__n128 *a1, int *a2)
{
  v4 = a1[3].n128_i64[0];
  v5 = a1->n128_i32[1];
  v6 = a1[1].n128_u32[0];
  if (v6 == 292)
  {
    result = singlevar(a1, a2);
  }

  else if (v6 == 40)
  {
    luaX_next(a1);
    subexpr(a1, a2, 0);
    check_match(a1, 41, 40, v5);
    result = luaK_dischargevars(a1[3].n128_i64[0], a2);
  }

  else
  {
    result = luaX_syntaxerror(a1, "unexpected symbol");
  }

  while (1)
  {
    while (1)
    {
      v8 = a1[1].n128_i32[0];
      if (v8 > 90)
      {
        break;
      }

      switch(v8)
      {
        case '(':
          goto LABEL_14;
        case '.':
          result = fieldsel(a1, a2);
          break;
        case ':':
          v11 = 0;
          v12 = 0;
          v13 = 0;
          luaX_next(a1);
          v9 = str_checkname(a1);
          v10 = luaK_stringK(a1[3].n128_i64[0], v9);
          v13 = -1;
          LODWORD(v11) = 4;
          LODWORD(v12) = v10;
          luaK_self(v4, a2, &v11);
LABEL_15:
          result = funcargs(a1, a2, v5);
          break;
        default:
          return result;
      }
    }

    if (v8 != 91)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    luaK_exp2anyregup(v4, a2);
    yindex(a1, &v11);
    result = luaK_indexed(v4, a2, &v11);
  }

  if (v8 == 123 || v8 == 293)
  {
LABEL_14:
    luaK_exp2nextreg(v4, a2);
    goto LABEL_15;
  }

  return result;
}

int32x2_t listfield(uint64_t a1, uint64_t a2)
{
  subexpr(a1, a2, 0);
  checklimit(*(a1 + 48), *(a2 + 36), 0x7FFFFFFF, "items in a constructor");
  result = vadd_s32(*(a2 + 36), 0x100000001);
  *(a2 + 36) = result;
  return result;
}

uint64_t recfield(__n128 *a1, uint64_t a2)
{
  v4 = a1[3].n128_i64[0];
  v5 = *(v4 + 60);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  memset(v12, 0, sizeof(v12));
  if (a1[1].n128_u32[0] == 292)
  {
    checklimit(v4, *(a2 + 32), 0x7FFFFFFF, "items in a constructor");
    v6 = str_checkname(a1);
    v7 = luaK_stringK(a1[3].n128_i64[0], v6);
    v15 = -1;
    LODWORD(v13) = 4;
    LODWORD(v14) = v7;
  }

  else
  {
    yindex(a1, &v13);
  }

  ++*(a2 + 32);
  checknext(a1, 61);
  v8 = luaK_exp2RK(v4, &v13);
  subexpr(a1, v12, 0);
  v9 = *(*(a2 + 24) + 8);
  v10 = luaK_exp2RK(v4, v12);
  result = luaK_codeABC(v4, 10, v9, v8, v10);
  *(v4 + 60) = v5;
  return result;
}

double yindex(__n128 *a1, int *a2)
{
  luaX_next(a1);
  subexpr(a1, a2, 0);
  luaK_exp2val(a1[3].n128_i64[0], a2);

  return checknext(a1, 93);
}

uint64_t adjustlocalvars(uint64_t result, unsigned int a2)
{
  v2 = *(result + 48);
  v3 = *(v2 + 58) + a2;
  *(v2 + 58) = v3;
  if (a2)
  {
    v4 = *(v2 + 32);
    v5 = **(*(v2 + 16) + 88);
    v6 = *(v2 + 52);
    v7 = *(*v2 + 80);
    v8 = v6 + v3 - a2;
    v9 = a2 - 1;
    do
    {
      *(v7 + 16 * *(v5 + 2 * v8++) + 8) = v4;
    }

    while (v9--);
  }

  return result;
}

uint64_t new_localvar(void *a1, uint64_t a2)
{
  v4 = a1[6];
  v5 = a1[11];
  v6 = *v4;
  v7 = *(*v4 + 36);
  if (v7 <= v4[28])
  {
    v8 = luaM_growaux_(a1[7], *(v6 + 80), (*v4 + 36), 16, 0x7FFF, "local variables");
    *(v6 + 80) = v8;
    v9 = *(v6 + 36);
    if (v7 < v9)
    {
      v10 = 0;
      v11 = v9 - v7;
      v12 = (v9 - v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v11 - 1);
      v14 = (v8 + 16 * v7 + 16);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_1C378AF00)));
        if (v15.i8[0])
        {
          *(v14 - 2) = 0;
        }

        if (v15.i8[4])
        {
          *v14 = 0;
        }

        v10 += 2;
        v14 += 4;
      }

      while (v12 != v10);
    }
  }

  else
  {
    v8 = *(v6 + 80);
  }

  v16 = v4[28];
  *(v8 + 16 * v16) = a2;
  if ((*(v6 + 9) & 4) != 0 && (*(a2 + 9) & 3) != 0)
  {
    luaC_barrier_(a1[7], v6, a2);
    v16 = v4[28];
  }

  v4[28] = v16 + 1;
  result = checklimit(v4, *(v5 + 8) - *(v4 + 13) + 1, 200, "local variables");
  v18 = *(v5 + 8);
  v19 = *v5;
  if (v18 + 2 > *(v5 + 12))
  {
    result = luaM_growaux_(a1[7], v19, (v5 + 12), 2, 0x7FFFFFFF, "local variables");
    v19 = result;
    *v5 = result;
    v18 = *(v5 + 8);
  }

  *(v5 + 8) = v18 + 1;
  *(v19 + 2 * v18) = v16;
  return result;
}

uint64_t fieldsel(__n128 *a1, int *a2)
{
  v4 = a1[3].n128_i64[0];
  v8 = 0;
  v9 = 0;
  luaK_exp2anyregup(v4, a2);
  luaX_next(a1);
  v5 = str_checkname(a1);
  v6 = luaK_stringK(a1[3].n128_i64[0], v5);
  v10 = -1;
  LODWORD(v8) = 4;
  LODWORD(v9) = v6;
  return luaK_indexed(v4, a2, &v8);
}

int *funcargs(__n128 *a1, uint64_t a2, int a3)
{
  v6 = a1[3].n128_u64[0];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v7 = a1[1].n128_u32[0];
  switch(v7)
  {
    case 0x125u:
      v8 = luaK_stringK(v6, a1[1].n128_i64[1]);
      v15 = -1;
      LODWORD(v13) = 4;
      LODWORD(v14) = v8;
      luaX_next(a1);
      v9 = *(a2 + 8);
LABEL_14:
      luaK_exp2nextreg(v6, &v13);
      goto LABEL_15;
    case 0x7Bu:
      constructor(a1, &v13);
      break;
    case 0x28u:
      luaX_next(a1);
      if (a1[1].n128_u32[0] == 41)
      {
        LODWORD(v13) = 0;
      }

      else
      {
        explist(a1, &v13);
        luaK_setreturns(v6, &v13, -1);
      }

      check_match(a1, 41, 40, a3);
      break;
    default:
      luaX_syntaxerror(a1, "function arguments expected");
      v9 = *(a2 + 8);
      goto LABEL_15;
  }

  v9 = *(a2 + 8);
  if ((v13 - 13) >= 2)
  {
    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    v10 = v6[60] - v9;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:
  v11 = luaK_codeABC(v6, 36, v9, v10, 2);
  *(a2 + 16) = -1;
  *a2 = 13;
  *(a2 + 8) = v11;
  result = luaK_fixline(v6, a3);
  v6[60] = v9 + 1;
  return result;
}

uint64_t singlevar(__n128 *a1, uint64_t a2)
{
  v4 = str_checkname(a1);
  v5 = a1[3].n128_i64[0];
  result = singlevaraux(v5, v4, a2, 1);
  if (!result)
  {
    v8 = 0;
    v9 = 0;
    singlevaraux(v5, a1[6].n128_i64[1], a2, 1);
    v7 = luaK_stringK(a1[3].n128_i64[0], v4);
    v10 = -1;
    LODWORD(v8) = 4;
    LODWORD(v9) = v7;
    return luaK_indexed(v5, a2, &v8);
  }

  return result;
}

uint64_t singlevaraux(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = *(a1 + 58);
  do
  {
    v8 = __OFSUB__(v7--, 1);
    if (v7 < 0 != v8)
    {
      v12 = *(a1 + 59);
      if (*(a1 + 59))
      {
        v13 = 0;
        v14 = *(*a1 + 88);
        while (*v14 != a2)
        {
          ++v13;
          v14 += 2;
          if (v12 == v13)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        if (!singlevaraux(*(a1 + 8), a2, a3, 0))
        {
          return 0;
        }

        LODWORD(v13) = newupvalue(a1, a2, a3);
      }

      *(a3 + 16) = -1;
      v9 = 9;
      *a3 = 9;
      *(a3 + 8) = v13;
      return v9;
    }
  }

  while (*(*(*a1 + 80) + 16 * *(**(*(a1 + 16) + 88) + 2 * (v7 + *(a1 + 52)))) != a2);
  *(a3 + 16) = -1;
  v9 = 8;
  *a3 = 8;
  *(a3 + 8) = v7;
  if (!a4)
  {
    v10 = v7 + 1;
    v11 = a1 + 24;
    do
    {
      v11 = *v11;
    }

    while (v10 <= *(v11 + 16));
    *(v11 + 17) = 1;
    return 8;
  }

  return v9;
}

uint64_t explist(__n128 *a1, int *a2)
{
  subexpr(a1, a2, 0);
  v4 = a1[1].n128_u32[0];
  v5 = 1;
  while (v4 == 44)
  {
    luaX_next(a1);
    luaK_exp2nextreg(a1[3].n128_i64[0], a2);
    subexpr(a1, a2, 0);
    v5 = (v5 + 1);
    v4 = a1[1].n128_u32[0];
  }

  return v5;
}

uint64_t newlabelentry(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = *(a2 + 8);
  v11 = (a2 + 12);
  v12 = *(a2 + 12);
  v13 = *a2;
  if (v10 >= v12)
  {
    v13 = luaM_growaux_(*(a1 + 56), v13, v11, 24, 0x7FFF, "labels/gotos");
    *a2 = v13;
  }

  v14 = v13 + 24 * v10;
  *v14 = a3;
  *(v14 + 16) = *(*(a1 + 48) + 58);
  *(v14 + 8) = a5;
  *(v14 + 12) = a4;
  *(a2 + 8) = v10 + 1;
  return v10;
}

uint64_t *findgotos(uint64_t *result, void *a2)
{
  v2 = result[11];
  v3 = *(*(result[6] + 24) + 12);
  v4 = *(v2 + 24);
  if (v3 < v4)
  {
    v6 = result;
    do
    {
      if (*(*(v2 + 16) + 24 * v3) == *a2)
      {
        result = closegoto(v6, v3, a2);
        v4 = *(v2 + 24);
      }

      else
      {
        ++v3;
      }
    }

    while (v3 < v4);
  }

  return result;
}

uint64_t *closegoto(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v7 = *(v6 + 16) + 24 * a2;
  v8 = *(v7 + 16);
  if (v8 < *(a3 + 16))
  {
    v10 = luaO_pushfstring(*(a1 + 56), "<goto %s> at line %d jumps into the scope of local '%s'", (*v7 + 24), *(v7 + 12), (*(*(*v5 + 80) + 16 * *(**(*(v5 + 16) + 88) + 2 * (*(v5 + 52) + v8))) + 24));
    *(a1 + 16) = 0;
    luaX_syntaxerror(a1, v10);
  }

  result = luaK_patchlist(v5, *(v7 + 8), *(a3 + 8));
  LODWORD(v12) = *(v6 + 24) - 1;
  if (v12 > a2)
  {
    v13 = a2;
    v14 = 24 * a2;
    do
    {
      v15 = *(v6 + 16) + v14;
      ++v13;
      *v15 = *(v15 + 24);
      *(v15 + 16) = *(v15 + 40);
      v12 = *(v6 + 24) - 1;
      v14 += 24;
    }

    while (v13 < v12);
  }

  *(v6 + 24) = v12;
  return result;
}

uint64_t findlabel(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 88);
  v5 = *(*(v3 + 24) + 8);
  v6 = *(v4 + 40);
  if (v5 >= v6)
  {
    return 0;
  }

  v8 = *(v4 + 16) + 24 * a2;
  v9 = *(v4 + 32) + 24 * v5;
  v10 = v6 - v5;
  while (*v9 != *v8)
  {
    v9 += 24;
    if (!--v10)
    {
      return 0;
    }
  }

  v12 = *(v9 + 16);
  if (*(v8 + 16) > v12)
  {
    luaK_patchclose(v3, *(v8 + 8), v12);
  }

  closegoto(a1, a2, v9);
  return 1;
}

uint64_t cond(__n128 *a1)
{
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  subexpr(a1, v3, 0);
  if (LODWORD(v3[0]) == 1)
  {
    LODWORD(v3[0]) = 3;
  }

  luaK_goiftrue(a1[3].n128_i64[0], v3);
  return HIDWORD(v4);
}

uint64_t error_expected(uint64_t a1, int a2)
{
  v3 = *(a1 + 56);
  v4 = luaX_token2str(a1, a2);
  v5 = luaO_pushfstring(v3, "%s expected", v4);

  return luaX_syntaxerror(a1, v5);
}

int *fornum(__n128 *a1, uint64_t a2, int a3)
{
  v6 = a1[3].n128_i64[0];
  v7 = *(v6 + 60);
  v8 = luaX_newstring(a1, "(for index)", 0xBuLL);
  new_localvar(a1, v8);
  v9 = luaX_newstring(a1, "(for limit)", 0xBuLL);
  new_localvar(a1, v9);
  v10 = luaX_newstring(a1, "(for step)", 0xAuLL);
  new_localvar(a1, v10);
  new_localvar(a1, a2);
  checknext(a1, 61);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  subexpr(a1, &v14, 0);
  luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  checknext(a1, 44);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  subexpr(a1, &v14, 0);
  luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  if (a1[1].n128_u32[0] == 44)
  {
    luaX_next(a1);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    subexpr(a1, &v14, 0);
    luaK_exp2nextreg(a1[3].n128_i64[0], &v14);
  }

  else
  {
    v11 = *(v6 + 60);
    v12 = luaK_intK(v6, 1);
    luaK_codek(v6, v11, v12);
    luaK_reserveregs(v6, 1);
  }

  return forbody(a1, v7, a3, 1u, 1);
}

int *forbody(__n128 *a1, int a2, int a3, unsigned int a4, int a5)
{
  v10 = a1[3].n128_i64[0];
  adjustlocalvars(a1, 3u);
  checknext(a1, 259);
  if (a5)
  {
    v11 = luaK_codeABx(v10, 40, a2, 131070);
  }

  else
  {
    v11 = luaK_jump(v10);
  }

  v12 = v11;
  v24 = 0;
  LOBYTE(v24) = *(v10 + 58);
  v13 = *(v10 + 24);
  v14 = *(*(v10 + 16) + 88);
  v15 = *(v14 + 40);
  LODWORD(v14) = *(v14 + 24);
  v22 = v15;
  v23 = v14;
  v21 = v13;
  *(v10 + 24) = &v21;
  adjustlocalvars(a1, a4);
  luaK_reserveregs(v10, a4);
  block(a1);
  leaveblock(v10);
  luaK_patchtohere(v10, v12);
  v16 = v10;
  if (a5)
  {
    v17 = 39;
    v18 = a2;
  }

  else
  {
    luaK_codeABC(v10, 41, a2, 0, a4);
    luaK_fixline(v10, a3);
    v18 = a2 + 2;
    v16 = v10;
    v17 = 42;
  }

  v19 = luaK_codeABx(v16, v17, v18, 131070);
  luaK_patchlist(v10, v19, v12 + 1);
  return luaK_fixline(v10, a3);
}

void adjust_assign(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = *(a1 + 48);
  v5 = a2 - a3;
  if ((*a4 - 13) >= 2)
  {
    if (*a4)
    {
      luaK_exp2nextreg(*(a1 + 48), a4);
    }

    if (v5 >= 1)
    {
      v7 = *(v4 + 60);
      luaK_reserveregs(v4, v5);

      luaK_nil(v4, v7, v5);
    }
  }

  else
  {
    if (v5 < 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = a2 - a3;
    }

    luaK_setreturns(*(a1 + 48), a4, v6 + 1);
    if (v5 >= 1)
    {

      luaK_reserveregs(v4, v6);
    }
  }
}

void assignment(__n128 *a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v6 = (a2 + 1);
  if ((*(a2 + 2) - 8) >= 3)
  {
    luaX_syntaxerror(a1, "syntax error");
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1[1].n128_u32[0] == 44)
  {
    luaX_next(a1);
    v18 = 0;
    v19 = 0;
    v16 = v4;
    v17 = 0;
    suffixedexp(a1, &v17);
    v7 = v17;
    if (v17 != 10)
    {
      v8 = 0;
      v9 = a1[3].n128_i64[0];
      v10 = *(v9 + 60);
      do
      {
        while (*(v4 + 2) == 10)
        {
          if (v7 == *(v4 + 19) && v18 == *(v4 + 18))
          {
            *(v4 + 19) = 8;
            *(v4 + 18) = v10;
            v8 = 1;
          }

          if (v7 != 8 || v18 != *(v4 + 8))
          {
            break;
          }

          *(v4 + 8) = v10;
          v4 = *v4;
          v8 = 1;
          if (!v4)
          {
            goto LABEL_16;
          }
        }

        v4 = *v4;
      }

      while (v4);
      if (!v8)
      {
        goto LABEL_20;
      }

LABEL_16:
      if (v7 == 8)
      {
        v11 = 0;
      }

      else
      {
        v11 = 5;
      }

      luaK_codeABC(v9, v11, v10, v18, 0);
      luaK_reserveregs(v9, 1);
    }

LABEL_20:
    checklimit(a1[3].n128_u64[0], *(a1[3].n128_u64[1] + 198) + a3, 200, "C levels");
    assignment(a1, &v16, (a3 + 1));
  }

  else
  {
    checknext(a1, 61);
    v14 = explist(a1, &v20);
    if (a3 == v14)
    {
      luaK_setoneret(a1[3].n128_i64[0], &v20);
      v12 = a1[3].n128_i64[0];
      goto LABEL_24;
    }

    v15 = v14;
    adjust_assign(a1, a3, v14, &v20);
    if (a3 < v15)
    {
      *(a1[3].n128_u64[0] + 60) += a3 - v15;
    }
  }

  v12 = a1[3].n128_i64[0];
  v13 = *(v12 + 60) - 1;
  v22 = -1;
  LODWORD(v20) = 7;
  LODWORD(v21) = v13;
LABEL_24:
  luaK_storevar(v12, v6, &v20);
}

uint64_t luaE_setdebt(uint64_t result, uint64_t a2)
{
  *(result + 16) += *(result + 24) - a2;
  *(result + 24) = a2;
  return result;
}

uint64_t luaE_extendCI(uint64_t a1)
{
  result = luaM_realloc_(a1, 0, 0, 72);
  v3 = *(a1 + 32);
  *(v3 + 24) = result;
  *(result + 16) = v3;
  *(result + 24) = 0;
  return result;
}

uint64_t luaE_freeCI(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v2)
  {
    v3 = result;
    do
    {
      v4 = *(v2 + 24);
      result = luaM_realloc_(v3, v2, 72, 0);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t luaE_shrinkCI(uint64_t result)
{
  v1 = *(result + 32);
  v3 = (v1 + 24);
  v2 = *(v1 + 24);
  if (v2)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 24);
      if (!v5)
      {
        break;
      }

      result = luaM_realloc_(v4, v2, 72, 0);
      *v3 = v5;
      v3 = (v5 + 24);
      v2 = *(v5 + 24);
      *(v5 + 16) = v1;
      v1 = v5;
    }

    while (v2);
  }

  return result;
}

uint64_t lua_newthread(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (*(v2 + 24) >= 1)
  {
    luaC_step(a1);
  }

  v3 = luaM_realloc_(a1, 0, 8, 216);
  *(v3 + 17) = *(v2 + 84) & 3;
  *(v3 + 16) = 8;
  *(v3 + 8) = *(v2 + 88);
  v4 = v3 + 8;
  *(v2 + 88) = v3 + 8;
  v5 = *(a1 + 16);
  *v5 = v3 + 8;
  *(v5 + 8) = 72;
  *(a1 + 16) += 16;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 88) = v3 + 8;
  *(v3 + 96) = 0;
  *(v3 + 176) = 0;
  *(v3 + 208) = 256;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 204) = 1;
  *(v3 + 18) = 0;
  *(v3 + 208) = *(a1 + 200);
  LODWORD(v5) = *(a1 + 188);
  *(v3 + 176) = *(a1 + 168);
  *(v3 + 196) = v5;
  *(v3 + 200) = v5;
  *v3 = *(*(v2 + 224) - 8);
  stack_init(v3 + 8, a1);
  return v4;
}

uint64_t stack_init(uint64_t a1, uint64_t a2)
{
  result = luaM_realloc_(a2, 0, 0, 640);
  *(a1 + 56) = result;
  *(a1 + 184) = 40;
  for (i = 8; i != 648; i += 16)
  {
    *(result + i) = 0;
  }

  *(a1 + 96) = result;
  v5 = a1 + 96;
  *(v5 - 48) = result + 560;
  *(v5 + 66) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 - 80) = result + 16;
  *(result + 8) = 0;
  *(v5 + 8) = result + 336;
  *(v5 - 64) = v5;
  return result;
}

uint64_t luaE_freethread(uint64_t a1, uint64_t a2)
{
  v4 = a2 - 8;
  luaF_close(a2, *(a2 + 56));
  freestack(a2);

  return luaM_realloc_(a1, v4, 216, 0);
}

uint64_t freestack(uint64_t result)
{
  if (*(result + 56))
  {
    v1 = result;
    *(result + 32) = result + 96;
    luaE_freeCI(result);
    v2 = *(v1 + 56);
    v3 = 16 * *(v1 + 184);

    return luaM_realloc_(v1, v2, v3, 0);
  }

  return result;
}

uint64_t lua_newstate(uint64_t (*a1)(uint64_t, void, uint64_t, uint64_t), uint64_t a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v4 = a1(a2, 0, 8, 1744);
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = 0;
    v5 = v4 + 8;
    *(v4 + 16) = 8;
    *(v4 + 300) = 1;
    *(v4 + 17) = 1;
    *(v4 + 216) = a1;
    *(v4 + 32) = v4 + 216;
    *(v4 + 40) = 0;
    *(v4 + 192) = 0;
    *(v4 + 88) = v4 + 8;
    *(v4 + 96) = 0;
    *(v4 + 176) = 0u;
    *(v4 + 208) = 256;
    *(v4 + 196) = 0;
    *(v4 + 64) = 0u;
    *(v4 + 204) = 1;
    *(v4 + 224) = a2;
    *(v4 + 440) = v4 + 8;
    v8 = 1;
    v9[0] = v4 + 8;
    v9[1] = &v8;
    v9[2] = &luaO_nilobject_;
    v9[3] = lua_newstate;
    *(v4 + 296) = luaS_hash(v9, 0x20uLL, 1);
    *(v5 + 295) = 0;
    *(v5 + 280) = 0;
    *(v5 + 400) = 0;
    *(v5 + 424) = 0;
    *(v5 + 440) = 0;
    *(v5 + 248) = 0;
    *(v5 + 256) = 0u;
    *(v5 + 293) = 7;
    *(v5 + 296) = 0u;
    *(v5 + 312) = 0u;
    *(v5 + 328) = 0u;
    *(v5 + 344) = 0u;
    *(v5 + 360) = 0u;
    *(v5 + 376) = 0u;
    *(v5 + 224) = xmmword_1C37B1780;
    *(v5 + 408) = 0xC800000000;
    *(v5 + 416) = 200;
    *(v5 + 712) = 0;
    *(v5 + 696) = 0u;
    *(v5 + 680) = 0u;
    *(v5 + 664) = 0u;
    *(v5 + 648) = 0u;
    if (luaD_rawrunprotected(v5, f_luaopen, 0))
    {
      close_state(v5);
      v5 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void *f_luaopen(void *a1)
{
  v2 = a1[3];
  stack_init(a1, a1);
  v5.n128_u64[1] = 72;
  v3 = luaH_new(a1);
  *(v2 + 64) = v3;
  *(v2 + 72) = 69;
  luaH_resize(a1, v3, 2u, 0);
  v5.n128_u64[0] = a1;
  luaH_setint(a1, v3, 1, &v5);
  v5.n128_u64[0] = luaH_new(a1);
  v5.n128_u32[2] = 69;
  luaH_setint(a1, v3, 2, &v5);
  luaS_init(a1);
  luaT_init(a1);
  luaX_init(a1);
  *(v2 + 87) = 1;
  result = lua_version(0);
  *(v2 + 232) = result;
  return result;
}

uint64_t close_state(uint64_t a1)
{
  v2 = *(a1 + 24);
  luaF_close(a1, *(a1 + 56));
  luaC_freeallobjects(a1);
  luaM_realloc_(a1, *(*(a1 + 24) + 48), 8 * *(*(a1 + 24) + 60), 0);
  *(v2 + 176) = luaM_realloc_(a1, *(v2 + 176), *(v2 + 192), 0);
  *(v2 + 192) = 0;
  freestack(a1);
  v4 = *v2;
  v3 = *(v2 + 8);

  return v4(v3, a1 - 8, 1744, 0);
}

BOOL luaS_eqlngstr(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  return v2 == *(a2 + 16) && memcmp((a1 + 24), (a2 + 24), v2) == 0;
}

uint64_t luaS_hash(uint64_t a1, unint64_t a2, int a3)
{
  result = a2 ^ a3;
  if (a2)
  {
    v5 = a2 >> 5;
    v6 = ~(a2 >> 5);
    v7 = a1 - 1;
    do
    {
      result = (32 * result + (result >> 2) + *(v7 + a2)) ^ result;
      a2 += v6;
    }

    while (a2 > v5);
  }

  return result;
}

uint64_t luaS_resize(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 24);
  v5 = *(v4 + 60);
  v6 = v5;
  if (v5 < a2)
  {
    result = luaM_realloc_(result, *(v4 + 48), 8 * v5, 8 * a2);
    *(v4 + 48) = result;
    v6 = *(v4 + 60);
    if (v6 < a2)
    {
      v7 = v6;
      do
      {
        *(*(v4 + 48) + 8 * v7++) = 0;
      }

      while (a2 != v7);
    }
  }

  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v9 = *(v4 + 48);
      v10 = *(v9 + 8 * i);
      *(v9 + 8 * i) = 0;
      if (v10)
      {
        do
        {
          v11 = *(v10 + 12) & (a2 - 1);
          v12 = *(v10 + 16);
          *(v10 + 16) = *(*(v4 + 48) + 8 * v11);
          *(*(v4 + 48) + 8 * v11) = v10;
          v10 = v12;
        }

        while (v12);
        v6 = *(v4 + 60);
      }
    }
  }

  if (v6 > a2)
  {
    result = luaM_realloc_(v3, *(v4 + 48), 8 * v6, 8 * a2);
    *(v4 + 48) = result;
  }

  *(v4 + 60) = a2;
  return result;
}

uint64_t luaS_clearcache(uint64_t result)
{
  v1 = 0;
  v2 = result + 512;
  do
  {
    if ((*(*(v2 + v1) + 9) & 3) != 0)
    {
      *(v2 + v1) = *(result + 240);
    }

    v1 += 8;
  }

  while (v1 != 1016);
  return result;
}

int64x2_t luaS_init(void *a1)
{
  v2 = a1[3];
  v3 = 128;
  luaS_resize(a1, 128);
  v4 = luaS_newlstr(a1, "not enough memory", 0x11uLL);
  *(v2 + 240) = v4;
  luaC_fix(a1, v4);
  v5 = *(v2 + 240);
  result = xmmword_1C378AF00;
  v7 = (v2 + 520);
  v8 = vdupq_n_s64(0x7FuLL);
  v9 = vdupq_n_s64(2uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v8, result)).u8[0])
    {
      *(v7 - 1) = v5;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x7FuLL), *&result)).i32[1])
    {
      *v7 = v5;
    }

    result = vaddq_s64(result, v9);
    v7 += 2;
    v3 -= 2;
  }

  while (v3);
  return result;
}

uint64_t luaS_newlstr(void *a1, char *__s1, size_t __n)
{
  if (__n > 0x28)
  {
    if (__n - 0x7FFFFFFFFFFFFFE7 < 0x8000000000000018)
    {
      luaM_toobig(a1);
    }

    v12 = *(a1[3] + 80);
    v11 = luaC_newobj(a1, 20, __n + 25);
    *(v11 + 12) = v12;
    *(v11 + 10) = 0;
    memcpy((v11 + 24), __s1, __n);
    *(v11 + 24 + __n) = 0;
    *(v11 + 16) = __n;
  }

  else
  {
    v6 = a1[3];
    v7 = *(v6 + 80) ^ __n;
    if (__n)
    {
      v8 = __n;
      do
      {
        v7 ^= 32 * v7 + (v7 >> 2) + __s1[v8 - 1];
        v8 += ~(__n >> 5);
      }

      while (v8 > __n >> 5);
    }

    v9 = *(v6 + 60);
    v10 = (*(v6 + 48) + 8 * ((v9 - 1) & v7));
    v11 = *v10;
    if (*v10)
    {
      while (*(v11 + 11) != __n || memcmp(__s1, (v11 + 24), __n))
      {
        v11 = *(v11 + 16);
        if (!v11)
        {
          goto LABEL_9;
        }
      }

      v14 = *(v11 + 9) ^ 3;
      if (((*(v6 + 84) ^ 3) & v14) == 0)
      {
        *(v11 + 9) = v14;
      }
    }

    else
    {
LABEL_9:
      if (v9 <= 0x3FFFFFFF && *(v6 + 56) >= v9)
      {
        luaS_resize(a1, 2 * v9);
        v10 = (*(v6 + 48) + 8 * ((*(v6 + 60) - 1) & v7));
      }

      v11 = luaC_newobj(a1, 4, __n + 25);
      *(v11 + 12) = v7;
      *(v11 + 10) = 0;
      memcpy((v11 + 24), __s1, __n);
      *(v11 + 24 + __n) = 0;
      *(v11 + 11) = __n;
      *(v11 + 16) = *v10;
      *v10 = v11;
      ++*(v6 + 56);
    }
  }

  return v11;
}

uint64_t luaS_remove(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = (*(v2 + 48) + 8 * ((*(v2 + 60) - 1) & *(a2 + 12)));
  do
  {
    v4 = v3;
    v5 = *v3;
    v3 = (*v3 + 16);
  }

  while (v5 != a2);
  *v4 = *v3;
  --*(v2 + 56);
  return result;
}

uint64_t luaS_new(void *a1, char *__s1)
{
  v4 = __s1 % 0x7F;
  v5 = a1[3] + 512;
  v6 = *(v5 + 8 * (__s1 % 0x7F));
  if (strcmp(__s1, (v6 + 24)))
  {
    v7 = strlen(__s1);
    v6 = luaS_newlstr(a1, __s1, v7);
    *(v5 + 8 * v4) = v6;
  }

  return v6;
}

uint64_t luaS_newudata(void *a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFD8)
  {
    luaM_toobig(a1);
  }

  result = luaC_newobj(a1, 7, a2 + 40);
  *(result + 16) = 0;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 10) = 0;
  return result;
}

uint64_t luaopen_string(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 17);
  luaL_setfuncs(a1, &strlib, 0, v9, v10, v11, v12, v13);
  lua_createtable(a1, 0, 1);
  lua_pushstring(a1, "");
  lua_pushvalue(a1, -2);
  lua_setmetatable(a1, -2);
  lua_settop(a1, 0xFFFFFFFE);
  lua_pushvalue(a1, -2);
  lua_setfield(a1, -2, "__index");
  lua_settop(a1, 0xFFFFFFFE);
  return 1;
}

uint64_t str_byte(void *a1)
{
  v23 = 0;
  v2 = luaL_checklstring(a1, 1, &v23);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v23 >= -v3)
  {
    v4 = v3 + v23 + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 < 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = luaL_optinteger(a1, 3, v5);
  if (v23 >= -v6)
  {
    v13 = v6 + v23 + 1;
  }

  else
  {
    v13 = 0;
  }

  if (v6 >= 0)
  {
    v13 = v6;
  }

  if (v5 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v5;
  }

  if (v13 >= v23)
  {
    v15 = v23;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 - v14;
  if (v15 < v14)
  {
    return 0;
  }

  if (v16 >= 0x7FFFFFFF)
  {
    return luaL_error(a1, "string slice too long", v7, v8, v9, v10, v11, v12, v22);
  }

  v17 = (v16 + 1);
  luaL_checkstack(a1, v16 + 1, "string slice too long", v8, v9, v10, v11, v12, v22);
  if ((v16 & 0x80000000) == 0)
  {
    v18 = (v2 + v14 - 1);
    v19 = (v15 - v14 + 1);
    do
    {
      v20 = *v18++;
      lua_pushinteger(a1, v20);
      --v19;
    }

    while (v19);
  }

  return v17;
}

uint64_t str_char(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v18 = *MEMORY[0x1E69E9840];
  v2 = lua_gettop(v1);
  v3 = v2;
  memset(v17, 0, 512);
  v9 = luaL_buffinitsize(v1, v17, v2, v4, v5, v6, v7, v8);
  if (v2 >= 1)
  {
    v10 = v9;
    v11 = (v2 + 1) - 1;
    v12 = 1;
    do
    {
      v13 = luaL_checkinteger(v1, v12);
      v14 = v13;
      if (v13 >= 0x100)
      {
        luaL_argerror(v1, v12);
      }

      *v10++ = v14;
      v12 = (v12 + 1);
      --v11;
    }

    while (v11);
  }

  luaL_pushresultsize(v17, v3);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t str_dump(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 512);
  v2 = lua_toBOOLean(v1, 2);
  luaL_checktype(v1, 1, 6);
  lua_settop(v1, 1u);
  luaL_buffinit(v1, v11);
  if (lua_dump(v1, writer, v11, v2))
  {
    result = luaL_error(v1, "unable to dump given function", v3, v4, v5, v6, v7, v8, *&v11[0]);
  }

  else
  {
    luaL_pushresult(v11);
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t str_format(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v112 = *MEMORY[0x1E69E9840];
  v2 = lua_gettop(v1);
  v76 = 0;
  v3 = luaL_checklstring(v1, 1, &v76);
  v4 = v76;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
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
  v79 = 0u;
  v80 = 0u;
  luaL_buffinit(v1, &v79);
  if (v4 < 1)
  {
    goto LABEL_92;
  }

  v11 = &v3[v4];
  v12 = 1;
  do
  {
    v13 = *v3;
    if (v13 != 37)
    {
      v17 = v80;
      if (v80 >= *(&v79 + 1))
      {
        luaL_prepbuffsize(&v79, 1uLL, v5, v6, v7, v8, v9, v10);
        LOBYTE(v13) = *v3;
        v17 = v80;
      }

      ++v3;
      *&v80 = v17 + 1;
      *(v79 + v17) = v13;
      goto LABEL_19;
    }

    v14 = (v3 + 1);
    if (v3[1] == 37)
    {
      v15 = v80;
      if (v80 >= *(&v79 + 1))
      {
        luaL_prepbuffsize(&v79, 1uLL, v5, v6, v7, v8, v9, v10);
        v16 = *v14;
        v15 = v80;
      }

      else
      {
        v16 = 37;
      }

      v3 += 2;
      *&v80 = v15 + 1;
      *(v79 + v15) = v16;
LABEL_19:
      v25 = v12;
      goto LABEL_51;
    }

    v24 = luaL_prepbuffsize(&v79, 0x1ACuLL, v5, v6, v7, v8, v9, v10);
    v25 = (v12 + 1);
    if (v12 >= v2)
    {
      luaL_argerror(v1, (v12 + 1));
    }

    v26 = *v14;
    if (*v14)
    {
      v27 = v3 + 1;
      do
      {
        if (!memchr("-+ #0", v26, 6uLL))
        {
          break;
        }

        v28 = *++v27;
        v26 = v28;
      }

      while (v28);
    }

    else
    {
      v27 = v3 + 1;
    }

    if ((v27 - v14) >= 6)
    {
      luaL_error(v1, "invalid format (repeated flags)", v18, v19, v20, v21, v22, v23, v73);
      v26 = *v27;
    }

    if (v26 - 48 >= 0xA)
    {
      v29 = v27;
    }

    else
    {
      v29 = v27 + 1;
    }

    if (*v29 - 48 < 0xA)
    {
      v30 = v29 + 1;
    }

    else
    {
      v30 = v29;
    }

    v31 = *v30;
    if (v31 == 46)
    {
      v32 = v30 + 1;
      v33 = 1;
      if (v30[1] - 48 < 0xA)
      {
        v33 = 2;
        v32 = v30 + 2;
      }

      if (v30[v33] - 48 >= 0xA)
      {
        v30 = v32;
      }

      else
      {
        v30 = v32 + 1;
      }

      v31 = *v30;
    }

    if ((v31 - 48) <= 9)
    {
      luaL_error(v1, "invalid format (width or precision too long)", v18, v19, v20, v21, v22, v23, v73);
    }

    __s[0] = 37;
    __memcpy_chk();
    __s[v30 - v14 + 2] = 0;
    v41 = *v30;
    v3 = v30 + 1;
    v40 = v41;
    if (v41 <= 104)
    {
      if (v40 > 98)
      {
        if ((v40 - 101) >= 3)
        {
          if (v40 == 99)
          {
            v75 = luaL_checkinteger(v1, v25);
            v47 = luaI_snprintf(v1, v24, 428, __s, v67, v68, v69, v70, v75);
            goto LABEL_49;
          }

          if (v40 != 100)
          {
            goto LABEL_94;
          }

          goto LABEL_46;
        }
      }

      else if (v40 != 69 && v40 != 71)
      {
        if (v40 != 88)
        {
LABEL_94:
          result = luaL_error(v1, "invalid option '%%%c' to 'format'", v34, v35, v36, v37, v38, v39, v40);
          goto LABEL_93;
        }

LABEL_46:
        v42 = luaL_checkinteger(v1, v25);
        __s[strlen(__s)] = 0;
        v47 = luaI_snprintf(v1, v24, 428, __s, v43, v44, v45, v46, v42);
LABEL_49:
        v52 = v47;
        goto LABEL_50;
      }

      __s[strlen(__s)] = 0;
      v74 = luaL_checknumber(v1, v25);
      v47 = luaI_snprintf(v1, v24, 428, __s, v48, v49, v50, v51, v74);
      goto LABEL_49;
    }

    if ((v40 - 105) > 0xF)
    {
      goto LABEL_94;
    }

    if (((1 << (v40 - 105)) & 0x9041) != 0)
    {
      goto LABEL_46;
    }

    if (v40 != 113)
    {
      if (v40 == 115)
      {
        *v111 = 0;
        v53 = luaL_tolstring(v1, v25, v111);
        if (strchr(__s, 46) || *v111 < 0x64uLL)
        {
          v52 = luaI_snprintf(v1, v24, 428, __s, v54, v55, v56, v57, v53);
          lua_settop(v1, 0xFFFFFFFE);
        }

        else
        {
          luaL_addvalue(&v79);
          v52 = 0;
        }

        goto LABEL_50;
      }

      goto LABEL_94;
    }

    v77 = 0;
    v58 = luaL_checklstring(v1, v25, &v77);
    v59 = v80;
    if (v80 >= *(&v79 + 1))
    {
      luaL_prepbuffsize(&v79, 1uLL, v5, v6, v7, v8, v9, v10);
      v59 = v80;
    }

    *&v80 = v59 + 1;
    *(v79 + v59) = 34;
    while (v77--)
    {
      v61 = *v58;
      if (*v58 > 0x21u)
      {
        if (v61 == 92 || v61 == 34)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (!*v58)
        {
          goto LABEL_82;
        }

        if (v61 == 10)
        {
LABEL_71:
          v62 = v80;
          if (v80 >= *(&v79 + 1))
          {
            luaL_prepbuffsize(&v79, 1uLL, v5, v6, v7, v8, v9, v10);
            v62 = v80;
          }

          *&v80 = v62 + 1;
          *(v79 + v62) = 92;
          goto LABEL_74;
        }
      }

      if ((v61 & 0x80) != 0)
      {
        if (__maskrune(v61, 0x200uLL))
        {
LABEL_81:
          v61 = *v58;
LABEL_82:
          if (v58[1] - 48 >= 0xA)
          {
            v65 = "\\%d";
          }

          else
          {
            v65 = "\\%03d";
          }

          luaI_snprintf(v1, v111, 10, v65, v7, v8, v9, v10, v61);
          luaL_addstring(&v79, v111);
          goto LABEL_86;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v61 + 60) & 0x200) != 0)
      {
        goto LABEL_81;
      }

LABEL_74:
      v63 = v80;
      if (v80 >= *(&v79 + 1))
      {
        luaL_prepbuffsize(&v79, 1uLL, v5, v6, v7, v8, v9, v10);
        v63 = v80;
      }

      v64 = *v58;
      *&v80 = v63 + 1;
      *(v79 + v63) = v64;
LABEL_86:
      ++v58;
    }

    v66 = v80;
    if (v80 >= *(&v79 + 1))
    {
      luaL_prepbuffsize(&v79, 1uLL, v5, v6, v7, v8, v9, v10);
      v66 = v80;
    }

    v52 = 0;
    *&v80 = v66 + 1;
    *(v79 + v66) = 34;
LABEL_50:
    *&v80 = v80 + v52;
LABEL_51:
    v12 = v25;
  }

  while (v3 < v11);
LABEL_92:
  luaL_pushresult(&v79);
  result = 1;
LABEL_93:
  v72 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t gmatch(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  luaL_checklstring(a1, 2, 0);
  lua_settop(a1, 2u);
  lua_pushinteger(a1, 0);
  lua_pushcclosure(a1, gmatch_aux, 3);
  return 1;
}

uint64_t str_gsub(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v114 = *MEMORY[0x1E69E9840];
  v80 = 0;
  v79 = 0;
  v2 = luaL_checklstring(v1, 1, &v80);
  v3 = luaL_checklstring(v1, 2, &v79);
  v4 = lua_type(v1, 3);
  v5 = luaL_optinteger(v1, 4, v80 + 1);
  v6 = *v3;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  if ((v4 - 3) >= 4)
  {
    luaL_argerror(v1, 3);
  }

  luaL_buffinit(v1, &v82);
  v12 = v79;
  if (v6 == 94)
  {
    ++v3;
    v12 = --v79;
  }

  v13 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  v46[0] = 200;
  v46[1] = v2;
  v47 = &v2[v80];
  v48 = &v3[v12];
  v49 = v1;
  v44 = v1;
  v45 = v5;
  while (v13 < v5)
  {
    DWORD2(v49) = 0;
    matched = match_0(v46, v2, v3, v7, v8, v9, v10, v11);
    if (matched)
    {
      v16 = matched;
      v17 = v49;
      if (v4 == 5)
      {
        push_onecapture(v46, 0, v2, matched, v8, v9, v10, v11);
        lua_gettable(v17, 3);
LABEL_12:
        if (lua_toBOOLean(v17, -1))
        {
          if (!lua_isstring(v17, -1))
          {
            v24 = lua_type(v17, -1);
            v25 = lua_typename(v17, v24);
            luaL_error(v17, "invalid replacement value (a %s)", v26, v27, v28, v29, v30, v31, v25);
          }
        }

        else
        {
          lua_settop(v17, 0xFFFFFFFE);
          lua_pushlstring(v17, v2, v16 - v2);
        }

        luaL_addvalue(&v82);
      }

      else
      {
        if (v4 == 6)
        {
          lua_pushvalue(v49, 3);
          v23 = push_captures(v46, v2, v16, v18, v19, v20, v21, v22);
          lua_callk(v17, v23, 1, 0, 0);
          goto LABEL_12;
        }

        v81 = 0;
        v32 = lua_tolstring(v49, 3, &v81);
        if (v81)
        {
          v33 = v32;
          for (i = 0; i < v81; ++i)
          {
            v35 = *(v33 + i);
            if (v35 == 37)
            {
              ++i;
              v36 = *(v33 + i);
              if ((v36 - 48) >= 0xA)
              {
                if (v36 != 37)
                {
                  luaL_error(v17, "invalid use of '%c' in replacement string", v15, v7, v8, v9, v10, v11, 37);
                }

                v38 = v83;
                if (v83 >= *(&v82 + 1))
                {
                  luaL_prepbuffsize(&v82, 1uLL, v15, v7, v8, v9, v10, v11);
                  v38 = v83;
                }

                v39 = *(v33 + i);
                *&v83 = v38 + 1;
                *(v82 + v38) = v39;
              }

              else if (v36 == 48)
              {
                luaL_addlstring(&v82, v2, v16 - v2, v7, v8, v9, v10, v11);
              }

              else
              {
                push_onecapture(v46, v36 - 49, v2, v16, v8, v9, v10, v11);
                luaL_tolstring(v17, 0xFFFFFFFFLL, 0);
                lua_rotate(v17, -2, -1);
                lua_settop(v17, 0xFFFFFFFE);
                luaL_addvalue(&v82);
              }
            }

            else
            {
              v37 = v83;
              if (v83 >= *(&v82 + 1))
              {
                luaL_prepbuffsize(&v82, 1uLL, v15, v7, v8, v9, v10, v11);
                LOBYTE(v35) = *(v33 + i);
                v37 = v83;
              }

              *&v83 = v37 + 1;
              *(v82 + v37) = v35;
            }
          }
        }

        v5 = v45;
      }

      ++v13;
      if (v16 > v2)
      {
        goto LABEL_39;
      }
    }

    if (v2 >= v47)
    {
      break;
    }

    v40 = v83;
    if (v83 >= *(&v82 + 1))
    {
      luaL_prepbuffsize(&v82, 1uLL, v15, v7, v8, v9, v10, v11);
      v40 = v83;
    }

    v41 = *v2;
    *&v83 = v40 + 1;
    *(v82 + v40) = v41;
    v16 = v2 + 1;
LABEL_39:
    v2 = v16;
    if (v6 == 94)
    {
      goto LABEL_42;
    }
  }

  v16 = v2;
LABEL_42:
  luaL_addlstring(&v82, v16, v47 - v16, v7, v8, v9, v10, v11);
  luaL_pushresult(&v82);
  lua_pushinteger(v44, v13);
  v42 = *MEMORY[0x1E69E9840];
  return 2;
}

uint64_t str_len(void *a1)
{
  v3 = 0;
  luaL_checklstring(a1, 1, &v3);
  lua_pushinteger(a1, v3);
  return 1;
}

uint64_t str_lower(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  memset(v15, 0, 512);
  v2 = luaL_checklstring(v1, 1, &v14);
  v8 = luaL_buffinitsize(v1, v15, v14, v3, v4, v5, v6, v7);
  if (v14)
  {
    v9 = v8;
    for (i = 0; i < v14; ++i)
    {
      v9[i] = __tolower(*(v2 + i));
      v11 = v14;
    }
  }

  else
  {
    v11 = 0;
  }

  luaL_pushresultsize(v15, v11);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t str_rep(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v20 = *MEMORY[0x1E69E9840];
  v17 = 0;
  __n = 0;
  v2 = luaL_checklstring(v1, 1, &__n);
  v3 = luaL_checkinteger(v1, 2);
  v4 = luaL_optlstring(v1, 3, "", &v17);
  if (v3 <= 0)
  {
    lua_pushstring(v1, "");
LABEL_12:
    result = 1;
    goto LABEL_13;
  }

  if (!__CFADD__(v17, __n) && v17 + __n <= 0x7FFFFFFFuLL / v3)
  {
    v12 = v4;
    v13 = __n * v3 + v17 * (v3 - 1);
    memset(v19, 0, 512);
    v14 = luaL_buffinitsize(v1, v19, v13, v6, v7, v8, v9, v10);
    if (v3 != 1)
    {
      v15 = v3 + 1;
      do
      {
        memcpy(v14, v2, __n);
        v14 += __n;
        if (v17)
        {
          memcpy(v14, v12, v17);
          v14 += v17;
        }

        --v15;
      }

      while (v15 > 2);
    }

    memcpy(v14, v2, __n);
    luaL_pushresultsize(v19, v13);
    goto LABEL_12;
  }

  result = luaL_error(v1, "resulting string too large", v5, v6, v7, v8, v9, v10, v17);
LABEL_13:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t str_reverse(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  memset(v15, 0, 512);
  v2 = luaL_checklstring(v1, 1, &v14);
  v8 = luaL_buffinitsize(v1, v15, v14, v3, v4, v5, v6, v7);
  v9 = v14;
  if (v14)
  {
    v10 = 0;
    v11 = v2 - 1;
    do
    {
      v8[v10++] = *(v11 + v9);
      v9 = v14;
      --v11;
    }

    while (v10 < v14);
  }

  luaL_pushresultsize(v15, v9);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}