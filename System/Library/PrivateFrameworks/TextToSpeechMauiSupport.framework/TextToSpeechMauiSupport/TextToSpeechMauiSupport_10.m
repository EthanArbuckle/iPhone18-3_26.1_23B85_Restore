uint64_t PNEW_LDOObject_Con(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 64, &v8);
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
      *v6 = &__LDOObject;
      *(v6 + 8) = a2;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 16) = v6;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t lua_checkstack(void *a1, int a2)
{
  v8 = a2;
  v2 = a1[4];
  v3 = a1[2];
  v4 = a2;
  if (a2 >= (a1[6] - v3) >> 4)
  {
    if ((((v3 - a1[7]) >> 4) + 5) > 1000000 - a2 || luaD_rawrunprotected(a1, growstack, &v8))
    {
      return 0;
    }

    v3 = a1[2];
    v4 = v8;
  }

  v5 = v3 + 16 * v4;
  if (*(v2 + 8) < v5)
  {
    *(v2 + 8) = v5;
  }

  return 1;
}

__n128 lua_xmove(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 != a2)
  {
    *(a1 + 16) -= 16 * a3;
    if (a3 >= 1)
    {
      v3 = 0;
      v4 = *(a2 + 16);
      do
      {
        result = *(*(a1 + 16) + v3);
        *v4 = result;
        v4 = (*(a2 + 16) + 16);
        *(a2 + 16) = v4;
        v3 += 16;
      }

      while (16 * a3 != v3);
    }
  }

  return result;
}

uint64_t lua_atpanic(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  result = *(v2 + 216);
  *(v2 + 216) = a2;
  return result;
}

void *lua_version(uint64_t a1)
{
  if (a1)
  {
    return *(*(a1 + 24) + 232);
  }

  else
  {
    return &lua_version_version;
  }
}

uint64_t lua_absindex(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0xFFF0B9D8)
  {
    return ((*(a1 + 16) - **(a1 + 32)) >> 4) + a2;
  }

  return a2;
}

uint64_t lua_settop(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    v3 = *(result + 16) + 16 * a2 + 16;
  }

  else
  {
    v2 = **(result + 32);
    v3 = v2 + 16 * a2 + 16;
    v4 = *(result + 16);
    if (v4 < v3)
    {
      v5 = 0;
      v6 = v2 + 16 * a2 + 16;
      if (v6 <= v4 + 16)
      {
        v6 = v4 + 16;
      }

      v7 = (v6 + ~v4) >> 4;
      v8 = vdupq_n_s64(v7);
      v9 = (v7 + 4) & 0x1FFFFFFFFFFFFFFCLL;
      v10 = (v4 + 40);
      do
      {
        v11 = vdupq_n_s64(v5);
        v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_26ECC7980)));
        if (vuzp1_s16(v12, 2).u8[0])
        {
          *(v10 - 8) = 0;
        }

        if (vuzp1_s16(v12, 2).i8[2])
        {
          *(v10 - 4) = 0;
        }

        if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_26ECCE810)))).i32[1])
        {
          *v10 = 0;
          v10[4] = 0;
        }

        v5 += 4;
        v10 += 16;
      }

      while (v9 != v5);
    }
  }

  *(result + 16) = v3;
  return result;
}

uint64_t *lua_rotate(void *a1, int a2, int a3)
{
  v4 = a1[2] - 16;
  result = index2addr(a1, a2);
  v6 = v4 - 16 * a3;
  if (a3 < 0)
  {
    v6 = &result[-2 * a3 - 2];
  }

  if (result < v6)
  {
    v7 = result;
    v8 = v6;
    do
    {
      v9 = *v7;
      v10 = v7[1];
      *v7 = *v8;
      v7 += 2;
      *v8 = v9;
      *(v8 + 8) = v10;
      v8 -= 16;
    }

    while (v7 < v8);
  }

  v11 = (v6 + 16);
  if (v11 < v4)
  {
    v12 = v4;
    do
    {
      v13 = *v11;
      v14 = v11[1];
      *v11 = *v12;
      v11 += 2;
      *v12 = v13;
      *(v12 + 8) = v14;
      v12 -= 16;
    }

    while (v11 < v12);
  }

  while (result < v4)
  {
    v15 = *result;
    v16 = result[1];
    *result = *v4;
    result += 2;
    *v4 = v15;
    *(v4 + 8) = v16;
    v4 -= 16;
  }

  return result;
}

uint64_t *index2addr(void *a1, int a2)
{
  v2 = a1[4];
  if (a2 < 1)
  {
    if (a2 >= -1000999)
    {
      return (a1[2] + 16 * a2);
    }

    else if (-1001000 == a2)
    {
      return (a1[3] + 64);
    }

    else
    {
      v4 = *v2;
      result = &luaO_nilobject_;
      if (*(v4 + 2) != 22)
      {
        v5 = *v4;
        v6 = *(v5 + 10);
        v7 = v5 + 16 * (-1001001 - a2) + 32;
        if (-1001000 - a2 <= v6)
        {
          return v7;
        }
      }
    }
  }

  else if (&(*v2)[2 * a2] >= a1[2])
  {
    return &luaO_nilobject_;
  }

  else
  {
    return &(*v2)[2 * a2];
  }

  return result;
}

uint64_t *lua_copy(uint64_t a1, int a2, int a3)
{
  v5 = index2addr(a1, a2);
  result = index2addr(a1, a3);
  *result = *v5;
  if (a3 <= -1001001 && (v5[1] & 0x40) != 0)
  {
    v7 = ***(a1 + 32);
    if ((*(v7 + 9) & 4) != 0)
    {
      v8 = *v5;
      if ((*(*v5 + 9) & 3) != 0)
      {

        return luaC_barrier_(a1, v7, v8);
      }
    }
  }

  return result;
}

__n128 lua_pushvalue(void *a1, int a2)
{
  v3 = a1[2];
  v4 = index2addr(a1, a2);
  result = *v4;
  *v3 = *v4;
  a1[2] += 16;
  return result;
}

uint64_t lua_type(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if (v2 == &luaO_nilobject_)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2[1] & 0xF;
  }
}

uint64_t lua_isnumber(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if (*(v2 + 2) == 3)
  {
    return 1;
  }

  v4 = 0;
  return luaV_tonumber_(v2, &v4);
}

uint64_t lua_rawequal(void *a1, int a2, int a3)
{
  v5 = index2addr(a1, a2);
  v6 = index2addr(a1, a3);
  if (v5 == &luaO_nilobject_ || v6 == &luaO_nilobject_)
  {
    return 0;
  }

  return luaV_equalobj(0, v5, v6);
}

uint64_t lua_arith(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if ((a2 - 14) >= 0xFFFFFFFE)
  {
    *v3 = *(v3 - 1);
    v3 = (*(a1 + 16) + 16);
    *(a1 + 16) = v3;
  }

  result = luaO_arith(a1, a2, v3 - 4, v3 - 2, (v3 - 4));
  *(a1 + 16) -= 16;
  return result;
}

uint64_t lua_compare(void *a1, int a2, int a3, int a4)
{
  v7 = index2addr(a1, a2);
  v8 = index2addr(a1, a3);
  if (v7 == &luaO_nilobject_ || v8 == &luaO_nilobject_)
  {
    return 0;
  }

  switch(a4)
  {
    case 2:

      return luaV_lessequal(a1, v7, v8);
    case 1:

      return luaV_lessthan(a1, v7, v8);
    case 0:

      return luaV_equalobj(a1, v7, v8);
    default:
      return 0;
  }
}

uint64_t lua_stringtonumber(uint64_t a1, char *__s1)
{
  result = luaO_str2num(__s1, *(a1 + 16));
  if (result)
  {
    *(a1 + 16) += 16;
  }

  return result;
}

double lua_tonumberx(void *a1, int a2, int *a3)
{
  v7 = 0.0;
  v4 = index2addr(a1, a2);
  if (*(v4 + 2) == 3)
  {
    v7 = *v4;
    v5 = 1;
  }

  else
  {
    v5 = luaV_tonumber_(v4, &v7);
    if (!v5)
    {
      v7 = 0.0;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v7;
}

uint64_t lua_tointegerx(void *a1, int a2, int *a3)
{
  v7 = 0;
  v4 = index2addr(a1, a2);
  if (*(v4 + 2) == 19)
  {
    v7 = *v4;
    v5 = 1;
  }

  else
  {
    v5 = luaV_tointeger(v4, &v7);
    if (!v5)
    {
      v7 = 0;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  return v7;
}

uint64_t lua_toBOOLean(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  result = *(v2 + 2);
  if (result)
  {
    return result != 1 || *v2 != 0;
  }

  return result;
}

uint64_t lua_tolstring(void *a1, int a2, void *a3)
{
  v6 = index2addr(a1, a2);
  if ((v6[1] & 0xF) == 3)
  {
    if (*(a1[3] + 24) >= 1)
    {
      luaC_step(a1);
    }

    v7 = index2addr(a1, a2);
    luaO_tostring(a1, v7, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    v7 = v6;
    if ((v6[1] & 0xF) != 4)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }

      return result;
    }
  }

  if (a3)
  {
    v15 = *v7;
    if (*(*v7 + 8) == 4)
    {
      v16 = *(v15 + 11);
    }

    else
    {
      v16 = *(v15 + 16);
    }

    *a3 = v16;
  }

  return *v7 + 24;
}

uint64_t lua_rawlen(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  result = 0;
  v4 = v2[1] & 0x3F;
  if (v4 > 6)
  {
    if (v4 == 7)
    {
      return *(*v2 + 24);
    }

    else if (v4 == 20)
    {
      return *(*v2 + 16);
    }
  }

  else if (v4 == 4)
  {
    return *(*v2 + 11);
  }

  else if (v4 == 5)
  {
    return luaH_getn(*v2);
  }

  return result;
}

uint64_t lua_tocfunction(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  v3 = *(v2 + 2);
  if (v3 == 22)
  {
    return *v2;
  }

  if (v3 == 102)
  {
    v2 = (*v2 + 24);
    return *v2;
  }

  return 0;
}

uint64_t lua_touserdata(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if ((v2[1] & 0xF) == 2)
  {
    return *v2;
  }

  if ((v2[1] & 0xF) == 7)
  {
    return *v2 + 40;
  }

  return 0;
}

uint64_t lua_tothread(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  if (*(v2 + 2) == 72)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t lua_topointer(void *a1, int a2)
{
  v2 = index2addr(a1, a2);
  result = 0;
  v4 = v2[1] & 0x3F;
  if (v4 <= 6)
  {
    if (v4 != 2 && v4 != 5 && v4 != 6)
    {
      return result;
    }

    return *v2;
  }

  if ((v2[1] & 0x3Fu) > 0x15)
  {
    if (v4 != 22 && v4 != 38)
    {
      return result;
    }

    return *v2;
  }

  if (v4 == 7)
  {
    return *v2 + 40;
  }

  if (v4 == 8)
  {
    return *v2;
  }

  return result;
}

uint64_t lua_pushnil(uint64_t result)
{
  v1 = *(result + 16);
  *(v1 + 8) = 0;
  *(result + 16) = v1 + 16;
  return result;
}

uint64_t lua_pushnumber(uint64_t result, double a2)
{
  v2 = *(result + 16);
  *v2 = a2;
  *(v2 + 8) = 3;
  *(result + 16) += 16;
  return result;
}

uint64_t lua_pushinteger(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *v2 = a2;
  *(v2 + 8) = 19;
  *(result + 16) += 16;
  return result;
}

uint64_t lua_pushlstring(uint64_t a1, char *a2, size_t a3)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  v6 = luaS_newlstr(a1, a2, a3);
  v7 = *(a1 + 16);
  *v7 = v6;
  *(v7 + 8) = *(v6 + 8) | 0x40;
  *(a1 + 16) += 16;
  return v6 + 24;
}

uint64_t lua_pushstring(uint64_t a1, char *a2)
{
  if (a2)
  {
    if (*(*(a1 + 24) + 24) >= 1)
    {
      luaC_step(a1);
    }

    v4 = luaS_new(a1, a2);
    v5 = *(a1 + 16);
    *v5 = v4;
    *(v5 + 8) = *(v4 + 8) | 0x40;
    result = v4 + 24;
    v7 = *(a1 + 16);
  }

  else
  {
    result = 0;
    v7 = *(a1 + 16);
    *(v7 + 8) = 0;
  }

  *(a1 + 16) = v7 + 16;
  return result;
}

uint64_t lua_pushvfstring(uint64_t a1, char *a2, uint64_t *a3)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  return luaO_pushvfstring(a1, a2, a3);
}

uint64_t lua_pushfstring(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  return luaO_pushvfstring(a1, a2, &a9);
}

uint64_t lua_pushcclosure(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3)
  {
    if (*(*(result + 24) + 24) >= 1)
    {
      luaC_step(result);
    }

    result = luaF_newCclosure(v4, a3);
    *(result + 24) = a2;
    v6 = a3;
    *(v4 + 16) -= 16 * a3;
    v7 = 16 * a3;
    do
    {
      *(result + v7 + 16) = *(*(v4 + 16) + v7 - 16);
      v7 -= 16;
      --v6;
    }

    while (v6);
    v8 = 102;
    a2 = result;
  }

  else
  {
    v8 = 22;
  }

  v9 = *(v4 + 16);
  *v9 = a2;
  *(v9 + 8) = v8;
  *(v4 + 16) += 16;
  return result;
}

uint64_t lua_pushBOOLean(uint64_t result, int a2)
{
  v2 = *(result + 16);
  *v2 = a2 != 0;
  v2[2] = 1;
  *(result + 16) += 16;
  return result;
}

uint64_t lua_pushlightuserdata(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  *v2 = a2;
  *(v2 + 8) = 2;
  *(result + 16) += 16;
  return result;
}

BOOL lua_pushthread(uint64_t a1)
{
  v1 = *(a1 + 16);
  *v1 = a1;
  *(v1 + 8) = 72;
  v2 = *(a1 + 24);
  *(a1 + 16) += 16;
  return *(v2 + 224) == a1;
}

uint64_t lua_getglobal(uint64_t a1, char *a2)
{
  v4 = luaH_getint(*(*(a1 + 24) + 64), 2);
  v5 = *(a1 + 16);
  v6 = luaS_new(a1, a2);
  *v5 = v6;
  *(v5 + 8) = *(v6 + 8) | 0x40;
  v7 = *(a1 + 16);
  *(a1 + 16) = v7 + 2;
  luaV_gettable(a1, v4, v7, v7);
  return *(*(a1 + 16) - 8) & 0xF;
}

uint64_t lua_gettable(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  luaV_gettable(a1, v3, (a1[2] - 16), (a1[2] - 16));
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_getfield(void *a1, int a2, char *a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  v7 = luaS_new(a1, a3);
  *v6 = v7;
  *(v6 + 8) = *(v7 + 8) | 0x40;
  v8 = a1[2];
  a1[2] = v8 + 2;
  luaV_gettable(a1, v5, v8, v8);
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_geti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  *v6 = a3;
  *(v6 + 8) = 19;
  v7 = a1[2];
  a1[2] = v7 + 2;
  luaV_gettable(a1, v5, v7, v7);
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_rawget(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = a1[2];
  *(v4 - 16) = *luaH_get(*v3, (v4 - 16));
  return *(a1[2] - 8) & 0xF;
}

uint64_t lua_rawgeti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  *v6 = *luaH_getint(*v5, a3);
  v7 = a1[2];
  a1[2] = v7 + 16;
  return *(v7 + 8) & 0xF;
}

uint64_t lua_rawgetp(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v9[0] = a3;
  v9[1] = 2;
  v6 = a1[2];
  *v6 = *luaH_get(*v5, v9);
  v7 = a1[2];
  a1[2] = v7 + 16;
  return *(v7 + 8) & 0xF;
}

_OWORD *lua_createtable(uint64_t a1, signed int a2, int a3)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  result = luaH_new(a1);
  v7 = *(a1 + 16);
  *v7 = result;
  *(v7 + 8) = 69;
  *(a1 + 16) += 16;
  if (a2 > 0 || a3 >= 1)
  {

    return luaH_resize(a1, result, a2, a3);
  }

  return result;
}

uint64_t lua_getmetatable(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  if ((v3[1] & 0xF) == 7)
  {
    v4 = (*v3 + 16);
  }

  else if ((v3[1] & 0xF) == 5)
  {
    v4 = (*v3 + 40);
  }

  else
  {
    v4 = (a1[3] + 8 * (v3[1] & 0xF) + 440);
  }

  v5 = *v4;
  if (!v5)
  {
    return 0;
  }

  v6 = a1[2];
  *v6 = v5;
  *(v6 + 8) = 69;
  a1[2] += 16;
  return 1;
}

uint64_t lua_getuservalue(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = a1[2];
  v5 = *v3;
  *v4 = *(*v3 + 32);
  *(v4 + 8) = *(v5 + 10);
  v6 = a1[2];
  a1[2] = v6 + 16;
  return *(v6 + 8) & 0xF;
}

uint64_t *lua_setglobal(uint64_t a1, char *a2)
{
  v4 = luaH_getint(*(*(a1 + 24) + 64), 2);
  v5 = *(a1 + 16);
  v6 = luaS_new(a1, a2);
  *v5 = v6;
  *(v5 + 8) = *(v6 + 8) | 0x40;
  v7 = *(a1 + 16);
  *(a1 + 16) = v7 + 2;
  result = luaV_settable(a1, v4, v7, v7 - 16);
  *(a1 + 16) -= 32;
  return result;
}

uint64_t *lua_settable(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  result = luaV_settable(a1, v3, (a1[2] - 32), (a1[2] - 16));
  a1[2] -= 32;
  return result;
}

uint64_t *lua_setfield(void *a1, int a2, char *a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  v7 = luaS_new(a1, a3);
  *v6 = v7;
  *(v6 + 8) = *(v7 + 8) | 0x40;
  v8 = a1[2];
  a1[2] = v8 + 2;
  result = luaV_settable(a1, v5, v8, v8 - 16);
  a1[2] -= 32;
  return result;
}

uint64_t *lua_seti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = a1[2];
  *v6 = a3;
  *(v6 + 8) = 19;
  v7 = a1[2];
  a1[2] = v7 + 2;
  result = luaV_settable(a1, v5, v7, v7 - 16);
  a1[2] -= 32;
  return result;
}

_OWORD *lua_rawset(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = *v3;
  result = luaH_set(a1, *v3, (a1[2] - 32));
  *result = *(a1[2] - 16);
  *(v4 + 10) = 0;
  v6 = a1[2];
  if ((*(v6 - 8) & 0x40) != 0 && (*(v4 + 9) & 4) != 0 && (*(*(v6 - 16) + 9) & 3) != 0)
  {
    result = luaC_barrierback_(a1, v4);
    v6 = a1[2];
  }

  a1[2] = v6 - 32;
  return result;
}

void lua_rawseti(void *a1, int a2, uint64_t a3)
{
  v5 = index2addr(a1, a2);
  v6 = *v5;
  luaH_setint(a1, *v5, a3, (a1[2] - 16));
  v7 = a1[2];
  if ((*(v7 - 8) & 0x40) != 0 && (*(v6 + 9) & 4) != 0 && (*(*(v7 - 16) + 9) & 3) != 0)
  {
    luaC_barrierback_(a1, v6);
    v7 = a1[2];
  }

  a1[2] = v7 - 16;
}

_OWORD *lua_rawsetp(void *a1, int a2, uint64_t a3)
{
  v9 = 0;
  v5 = *index2addr(a1, a2);
  v8 = a3;
  LODWORD(v9) = 2;
  result = luaH_set(a1, v5, &v8);
  *result = *(a1[2] - 16);
  v7 = a1[2];
  if ((*(v7 - 8) & 0x40) != 0 && (*(v5 + 9) & 4) != 0 && (*(*(v7 - 16) + 9) & 3) != 0)
  {
    result = luaC_barrierback_(a1, v5);
    v7 = a1[2];
  }

  a1[2] = v7 - 16;
  return result;
}

uint64_t lua_setmetatable(uint64_t *a1, int a2)
{
  v3 = index2addr(a1, a2);
  v4 = v3;
  v5 = a1[2];
  if (*(v5 - 8))
  {
    v6 = *(v5 - 16);
  }

  else
  {
    v6 = 0;
  }

  if ((v3[1] & 0xF) == 7)
  {
    *(*v3 + 16) = v6;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3[1] & 0xF) != 5)
    {
      *(a1[3] + 8 * (v3[1] & 0xF) + 440) = v6;
      goto LABEL_14;
    }

    *(*v3 + 40) = v6;
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  v7 = *v3;
  if ((*(*v3 + 9) & 4) != 0 && (*(v6 + 9) & 3) != 0)
  {
    luaC_barrier_(a1, v7, v6);
    v7 = *v4;
  }

  luaC_checkfinalizer(a1, v7, v6);
LABEL_14:
  a1[2] -= 16;
  return 1;
}

uint64_t *lua_setuservalue(void *a1, int a2)
{
  result = index2addr(a1, a2);
  v4 = a1[2];
  v5 = *result;
  *(v5 + 32) = *(v4 - 16);
  *(v5 + 10) = *(v4 - 8);
  v6 = a1[2];
  if ((*(v6 - 8) & 0x40) != 0 && (*(*result + 9) & 4) != 0)
  {
    v7 = *(v6 - 16);
    if ((*(v7 + 9) & 3) != 0)
    {
      result = luaC_barrier_(a1, *result, v7);
      v6 = a1[2];
    }
  }

  a1[2] = v6 - 16;
  return result;
}

uint64_t lua_callk(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a1 + 16) + 16 * ~a2);
  if (a5 && !*(a1 + 196))
  {
    *(*(a1 + 32) + 32) = a5;
    *(*(a1 + 32) + 48) = a4;
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  result = luaD_call(a1, v7, a3, v8);
  if (a3 == -1)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 16);
    if (*(v10 + 8) < v11)
    {
      *(v10 + 8) = v11;
    }
  }

  return result;
}

uint64_t lua_pcallk(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v11 = index2addr(a1, a4) - *(a1 + 56);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(a1 + 16) + 16 * ~a2);
  v17 = v12;
  v18 = 0;
  if (a6 && !*(a1 + 196))
  {
    v14 = *(a1 + 32);
    *(v14 + 32) = a6;
    *(v14 + 48) = a5;
    *(v14 + 56) = &v12[-*(a1 + 56)];
    *(v14 + 40) = *(a1 + 176);
    *(a1 + 176) = v11;
    *(v14 + 66) |= 0x10u;
    luaD_call(a1, v12, a3, 1);
    result = 0;
    *(v14 + 66) &= ~0x10u;
    *(a1 + 176) = *(v14 + 40);
  }

  else
  {
    LODWORD(v18) = a3;
    result = luaD_pcall(a1, f_call, &v17, &v12[-*(a1 + 56)], v11);
  }

  if (a3 == -1)
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 16);
    if (*(v15 + 8) < v16)
    {
      *(v15 + 8) = v16;
    }
  }

  return result;
}

uint64_t lua_load(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = "?";
  }

  luaZ_init(a1, v15, a2, a3);
  v8 = luaD_protectedparser(a1, v15, v7, a5);
  if (!v8)
  {
    v10 = *(*(a1 + 16) - 16);
    if (*(v10 + 10))
    {
      ***(v10 + 32) = *luaH_getint(*(*(a1 + 24) + 64), 2);
      v11 = *(v10 + 32);
      v14 = *v11;
      v12 = v11 + 2;
      v13 = v14;
      if ((*(v14 + 8) & 0x40) != 0 && v13 == v12)
      {
        luaC_upvalbarrier_(a1, *(v10 + 32));
      }
    }
  }

  return v8;
}

uint64_t lua_dump(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, int a4)
{
  v4 = *(a1 + 16);
  if (*(v4 - 8) == 70)
  {
    return luaU_dump(a1, *(*(v4 - 16) + 24), a2, a3, a4);
  }

  else
  {
    return 1;
  }
}

uint64_t lua_gc(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  result = 0xFFFFFFFFLL;
  if (a2 > 3)
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          result = *(v4 + 204);
          *(v4 + 204) = a3;
          break;
        case 7:
          result = *(v4 + 208);
          if (a3 <= 40)
          {
            v8 = 40;
          }

          else
          {
            v8 = a3;
          }

          *(v4 + 208) = v8;
          break;
        case 9:
          return *(v4 + 87);
      }

      return result;
    }

    if (a2 == 4)
    {
      return (*(v4 + 24) + *(v4 + 16)) & 0x3FF;
    }

    v6 = *(v4 + 87);
    *(v4 + 87) = 1;
    if (a3)
    {
      v7 = *(v4 + 24) + (a3 << 10);
      luaE_setdebt(v4, v7);
      if (*(*(a1 + 24) + 24) >= 1)
      {
        luaC_step(a1);
      }

      *(v4 + 87) = v6;
      if (v7 < 1)
      {
        return 0;
      }
    }

    else
    {
      luaE_setdebt(v4, -2400);
      luaC_step(a1);
      *(v4 + 87) = v6;
    }

    return *(v4 + 85) == 7;
  }

  if (a2 > 1)
  {
    if (a2 != 2)
    {
      return (*(v4 + 24) + *(v4 + 16)) >> 10;
    }

    luaC_fullgc(a1, 0);
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      luaE_setdebt(v4, 0);
      result = 0;
      *(v4 + 87) = 1;
    }
  }

  else
  {
    result = 0;
    *(v4 + 87) = 0;
  }

  return result;
}

uint64_t lua_next(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  result = luaH_next(a1, *v3, (a1[2] - 16));
  v5 = -16;
  if (result)
  {
    v5 = 16;
  }

  a1[2] += v5;
  return result;
}

uint64_t lua_concat(uint64_t result, signed int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = result;
  if (a2 < 2)
  {
    if (!a2)
    {
      v10 = *(result + 16);
      result = luaS_newlstr(result, "", 0);
      *v10 = result;
      *(v10 + 8) = *(result + 8) | 0x40;
      *(v9 + 16) += 16;
    }
  }

  else
  {
    if (*(*(result + 24) + 24) >= 1)
    {
      luaC_step(result);
    }

    return luaV_concat(v9, a2, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t lua_len(void *a1, int a2)
{
  v3 = index2addr(a1, a2);
  result = luaV_objlen(a1, a1[2], v3);
  a1[2] += 16;
  return result;
}

uint64_t lua_getallocf(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = *(*(a1 + 24) + 8);
  }

  return **(a1 + 24);
}

uint64_t lua_setallocf(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  *v3 = a2;
  v3[1] = a3;
  return result;
}

uint64_t lua_newuserdata(uint64_t a1, unint64_t a2)
{
  if (*(*(a1 + 24) + 24) >= 1)
  {
    luaC_step(a1);
  }

  v4 = luaS_newudata(a1, a2);
  v5 = *(a1 + 16);
  *v5 = v4;
  *(v5 + 8) = 71;
  *(a1 + 16) += 16;
  return v4 + 40;
}

__n128 lua_getupvalue(void *a1, int a2, int a3)
{
  v7 = 0;
  v5 = index2addr(a1, a2);
  if (aux_upvalue(v5, a3, &v7, 0, 0))
  {
    result = *v7;
    *a1[2] = *v7;
    a1[2] += 16;
  }

  return result;
}

const char *aux_upvalue(_DWORD *a1, int a2, void *a3, void *a4, void *a5)
{
  if ((a1[2] & 0x3F) != 6)
  {
    if ((a1[2] & 0x3F) == 0x26 && a2 >= 1)
    {
      v5 = *a1;
      if (*(*a1 + 10) >= a2)
      {
        *a3 = v5 + 16 * (a2 - 1) + 32;
        if (a4)
        {
          *a4 = v5;
        }

        return "";
      }
    }

    return 0;
  }

  v7 = (a2 - 1);
  if (a2 < 1)
  {
    return 0;
  }

  v8 = *(*a1 + 24);
  if (*(v8 + 16) < a2)
  {
    return 0;
  }

  v9 = *a1 + 32;
  *a3 = **(v9 + 8 * v7);
  if (a5)
  {
    *a5 = *(v9 + 8 * v7);
  }

  v10 = *(*(v8 + 88) + 16 * v7);
  if (v10)
  {
    return (v10 + 24);
  }

  else
  {
    return "(*no name)";
  }
}

const char *lua_setupvalue(void *a1, int a2, int a3)
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v5 = index2addr(a1, a2);
  v6 = aux_upvalue(v5, a3, &v13, &v12, &v11);
  if (v6)
  {
    v7 = a1[2];
    a1[2] = v7 - 16;
    v8 = v12;
    *v13 = *(v7 - 16);
    if (v8)
    {
      v9 = a1[2];
      if ((*(v9 + 8) & 0x40) != 0 && (*(v8 + 9) & 4) != 0 && (*(*v9 + 9) & 3) != 0)
      {
        luaC_barrier_(a1, v8, *v9);
      }
    }

    else if (v11 && ((*v11)[1] & 0x40) != 0 && *v11 == (v11 + 2))
    {
      luaC_upvalbarrier_(a1, v11);
    }
  }

  return v6;
}

uint64_t lua_upvalueid(void *a1, int a2, int a3)
{
  v6 = index2addr(a1, a2);
  if ((v6[1] & 0x3F) == 0x26)
  {
    return *v6 + 16 * a3 + 16;
  }

  if ((v6[1] & 0x3F) == 6)
  {
    return *(*index2addr(a1, a2) + 8 * a3 + 24);
  }

  return 0;
}

uint64_t lua_upvaluejoin(void *a1, int a2, int a3, int a4, int a5)
{
  v9 = *index2addr(a1, a2) + 32;
  v10 = a3 - 1;
  v11 = *index2addr(a1, a4) + 8 * a5;
  result = luaC_upvdeccount(a1, *(v9 + 8 * v10));
  v13 = *(v11 + 24);
  *(v9 + 8 * v10) = v13;
  v14 = *v13;
  ++*(v13 + 8);
  if (v14 != (v13 + 16))
  {
    *(v13 + 24) = 1;
    v13 = *(v9 + 8 * v10);
    v14 = *v13;
  }

  if ((v14[1] & 0x40) != 0 && v14 == (v13 + 16))
  {

    return luaC_upvalbarrier_(a1, v13);
  }

  return result;
}

uint64_t luaL_traceback(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v64 = 0u;
  v65 = 0u;
  v8 = lua_gettop(a1);
  v9 = 1;
  v10 = 1;
  memset(v68, 0, sizeof(v68));
  do
  {
    v11 = v10;
    v10 = v9;
    v12 = lua_getstack(a2, v9, v68);
    v9 = 2 * v10;
  }

  while (v12);
  while (v11 < v10)
  {
    v19 = (v10 + v11) / 2;
    if (lua_getstack(a2, v19, v68))
    {
      v11 = v19 + 1;
    }

    else
    {
      v10 = (v10 + v11) / 2;
    }
  }

  if (v10 <= 23)
  {
    v20 = 0;
  }

  else
  {
    v20 = 12;
  }

  if (a3)
  {
    lua_pushfstring(a1, "%s\n", v13, v14, v15, v16, v17, v18, a3);
  }

  lua_pushstring(a1, "stack traceback:");
  if (lua_getstack(a2, a4, &v64))
  {
    while (++a4 == v20)
    {
      lua_pushstring(a1, "\n\t...");
      a4 = v10 - 11;
LABEL_30:
      if (!lua_getstack(a2, a4, &v64))
      {
        goto LABEL_33;
      }
    }

    lua_getinfo(a2, "Slnt", &v64);
    lua_pushfstring(a1, "\n\t%s:", v21, v22, v23, v24, v25, v26, v67 + 8);
    if (SDWORD2(v66) >= 1)
    {
      lua_pushfstring(a1, "%d:", v27, v28, v29, v30, v31, v32, DWORD2(v66));
    }

    lua_pushstring(a1, " in ");
    if (pushglobalfuncname(a1, &v64))
    {
      v39 = lua_tolstring(a1, -1, 0);
      lua_pushfstring(a1, "function '%s'", v40, v41, v42, v43, v44, v45, v39);
      lua_rotate(a1, -2, -1);
      lua_settop(a1, 0xFFFFFFFE);
    }

    else if (*v65)
    {
      lua_pushfstring(a1, "%s '%s'", v33, v34, v35, v36, v37, v38, v65);
    }

    else
    {
      v46 = **(&v65 + 1);
      if (v46 == 67)
      {
        v47 = a1;
        v48 = "?";
      }

      else
      {
        if (v46 != 109)
        {
          lua_pushfstring(a1, "function <%s:%d>", v33, v34, v35, v36, v37, v38, v67 + 8);
          goto LABEL_27;
        }

        v47 = a1;
        v48 = "main chunk";
      }

      lua_pushstring(v47, v48);
    }

LABEL_27:
    if (BYTE7(v67[0]))
    {
      lua_pushstring(a1, "\n\t(...tail calls...)");
    }

    v49 = lua_gettop(a1);
    lua_concat(a1, v49 - v8, v50, v51, v52, v53, v54, v55);
    goto LABEL_30;
  }

LABEL_33:
  v56 = lua_gettop(a1);
  return lua_concat(a1, v56 - v8, v57, v58, v59, v60, v61, v62);
}

uint64_t luaL_argerror(void *a1, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  *__s1 = 0u;
  if (!lua_getstack(a1, 0, &v18))
  {
    return luaL_error(a1, "bad argument #%d (%s)", v4, v5, v6, v7, v8, v9, a2);
  }

  lua_getinfo(a1, "n", &v18);
  if (!cstdlib_strcmp(__s1[0], "method"))
  {
    a2 = (a2 - 1);
    if (!a2)
    {
      return luaL_error(a1, "calling '%s' on bad self (%s)", v10, v11, v12, v13, v14, v15, *(&v18 + 1));
    }
  }

  if (!*(&v18 + 1))
  {
    if (pushglobalfuncname(a1, &v18))
    {
      v16 = lua_tolstring(a1, -1, 0);
    }

    else
    {
      v16 = "?";
    }

    *(&v18 + 1) = v16;
  }

  return luaL_error(a1, "bad argument #%d to '%s' (%s)", v10, v11, v12, v13, v14, v15, a2);
}

uint64_t luaL_error(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  luaL_where(a1, 1);
  lua_pushvfstring(a1, a2, &a9);
  lua_concat(a1, 2, v11, v12, v13, v14, v15, v16);
  return lua_error(a1);
}

uint64_t pushglobalfuncname(void *a1, uint64_t a2)
{
  v4 = lua_gettop(a1);
  lua_getinfo(a1, "f", a2);
  lua_getfield(a1, -1001000, "_LOADED");
  if (findfield(a1, v4 + 1, 2))
  {
    v5 = lua_tolstring(a1, -1, 0);
    if (!cstdlib_strncmp(v5, "_G.", 3uLL))
    {
      lua_pushstring(a1, (v5 + 3));
      lua_rotate(a1, -2, -1);
      lua_settop(a1, 0xFFFFFFFE);
    }

    lua_copy(a1, -1, v4 + 1);
    v6 = 1;
    v4 = -3;
  }

  else
  {
    v6 = 0;
  }

  lua_settop(a1, v4);
  return v6;
}

uint64_t luaL_where(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  memset(v10, 0, sizeof(v10));
  if (lua_getstack(a1, a2, v10) && (lua_getinfo(a1, "Sl", v10), SDWORD2(v11) >= 1))
  {
    return lua_pushfstring(a1, "%s:%d: ", v3, v4, v5, v6, v7, v8, v12 + 8);
  }

  else
  {
    return lua_pushstring(a1, "");
  }
}

uint64_t luaL_newmetatable(void *a1, char *a2)
{
  if (lua_getfield(a1, -1001000, a2))
  {
    return 0;
  }

  lua_settop(a1, 0xFFFFFFFE);
  lua_createtable(a1, 0, 0);
  lua_pushstring(a1, a2);
  lua_setfield(a1, -2, "__name");
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -1001000, a2);
  return 1;
}

uint64_t luaL_setmetatable(uint64_t *a1, char *a2)
{
  lua_getfield(a1, -1001000, a2);

  return lua_setmetatable(a1, -2);
}

uint64_t luaL_testudata(void *a1, int a2, char *a3)
{
  v6 = lua_touserdata(a1, a2);
  if (v6)
  {
    lua_getfield(a1, -1001000, a3);
    if (lua_getmetatable(a1, a2))
    {
      v7 = -3;
      while (!lua_rawequal(a1, -1, v7 + 1))
      {
        --v7;
        if (!lua_getmetatable(a1, -1))
        {
          v6 = 0;
          break;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = -3;
    }

    lua_settop(a1, v7);
  }

  return v6;
}

uint64_t luaL_checkudata(void *a1, uint64_t a2, char *a3)
{
  v6 = luaL_testudata(a1, a2, a3);
  if (!v6)
  {
    typeerror(a1, a2, a3);
  }

  return v6;
}

uint64_t typeerror(void *a1, uint64_t a2, uint64_t a3)
{
  if (luaL_getmetafield(a1, a2, "__name") == 4)
  {
    lua_tolstring(a1, -1, 0);
  }

  else if (lua_type(a1, a2) != 2)
  {
    v12 = lua_type(a1, a2);
    lua_typename(a1, v12);
  }

  lua_pushfstring(a1, "%s expected, got %s", v6, v7, v8, v9, v10, v11, a3);

  return luaL_argerror(a1, a2);
}

uint64_t luaL_checkoption(void *a1, uint64_t a2, const char *a3, const char **a4)
{
  if (!a3 || (v7 = a3, lua_type(a1, a2) >= 1))
  {
    v7 = luaL_checklstring(a1, a2, 0);
  }

  v14 = *a4;
  if (*a4)
  {
    v15 = 0;
    v16 = a4 + 1;
    while (cstdlib_strcmp(v14, v7))
    {
      v14 = v16[v15++];
      if (!v14)
      {
        goto LABEL_8;
      }
    }

    return v15;
  }

  else
  {
LABEL_8:
    lua_pushfstring(a1, "invalid option '%s'", v8, v9, v10, v11, v12, v13, v7);

    return luaL_argerror(a1, a2);
  }
}

uint64_t luaL_optlstring(void *a1, uint64_t a2, const char *a3, size_t *a4)
{
  if (lua_type(a1, a2) <= 0)
  {
    if (a4)
    {
      if (a3)
      {
        v9 = cstdlib_strlen(a3);
      }

      else
      {
        v9 = 0;
      }

      *a4 = v9;
    }

    return a3;
  }

  else
  {

    return luaL_checklstring(a1, a2, a4);
  }
}

uint64_t luaL_checklstring(void *a1, uint64_t a2, void *a3)
{
  v5 = lua_tolstring(a1, a2, a3);
  if (!v5)
  {
    v6 = lua_typename(a1, 4);
    typeerror(a1, a2, v6);
  }

  return v5;
}

uint64_t luaL_checkstack(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = lua_checkstack(a1, a2 + 20);
  if (!result)
  {
    if (a3)
    {
      return luaL_error(a1, "stack overflow (%s)", v12, v13, v14, v15, v16, v17, a3);
    }

    else
    {

      return luaL_error(a1, "stack overflow", v12, v13, v14, v15, v16, v17, a9);
    }
  }

  return result;
}

uint64_t luaL_checktype(void *a1, uint64_t a2, int a3)
{
  result = lua_type(a1, a2);
  if (result != a3)
  {
    v7 = lua_typename(a1, a3);

    return typeerror(a1, a2, v7);
  }

  return result;
}

uint64_t luaL_checkany(void *a1, uint64_t a2)
{
  result = lua_type(a1, a2);
  if (result == -1)
  {

    return luaL_argerror(a1, a2);
  }

  return result;
}

double luaL_checknumber(void *a1, uint64_t a2)
{
  v7 = 0;
  v4 = lua_tonumberx(a1, a2, &v7);
  if (!v7)
  {
    v5 = lua_typename(a1, 3);
    typeerror(a1, a2, v5);
  }

  return v4;
}

double luaL_optnumber(void *a1, uint64_t a2, double a3)
{
  if (lua_type(a1, a2) < 1)
  {
    return a3;
  }

  return luaL_checknumber(a1, a2);
}

uint64_t luaL_checkinteger(void *a1, uint64_t a2)
{
  v7 = 0;
  v4 = lua_tointegerx(a1, a2, &v7);
  if (!v7)
  {
    if (lua_isnumber(a1, a2))
    {
      luaL_argerror(a1, a2);
    }

    else
    {
      v5 = lua_typename(a1, 3);
      typeerror(a1, a2, v5);
    }
  }

  return v4;
}

uint64_t luaL_optinteger(void *a1, uint64_t a2, uint64_t a3)
{
  if (lua_type(a1, a2) < 1)
  {
    return a3;
  }

  return luaL_checkinteger(a1, a2);
}

char *luaL_prepbuffsize(const void **a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1[1];
  v9 = a1[2];
  if (&v10[-v9] >= a2)
  {
    v16 = *a1;
  }

  else
  {
    v11 = a1[3];
    v12 = 2 * v10;
    if (v12 - v9 >= a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9 + a2;
    }

    v15 = v13 >= v9;
    v14 = v13 - v9;
    v15 = v15 && v14 >= a2;
    if (!v15)
    {
      luaL_error(a1[3], "buffer too large", a3, a4, a5, a6, a7, a8, v18);
    }

    v16 = lua_newuserdata(v11, v13);
    cstdlib_memcpy(v16, *a1, a1[2]);
    if (*a1 != a1 + 4)
    {
      lua_rotate(v11, -2, -1);
      lua_settop(v11, 0xFFFFFFFE);
    }

    *a1 = v16;
    a1[1] = v13;
    v9 = a1[2];
  }

  return &v16[v9];
}

void *luaL_addlstring(uint64_t a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = luaL_prepbuffsize(a1, a3, a3, a4, a5, a6, a7, a8);
  result = cstdlib_memcpy(v11, a2, a3);
  *(a1 + 16) += a3;
  return result;
}

void *luaL_addstring(uint64_t a1, char *__s)
{
  v4 = cstdlib_strlen(__s);
  v11 = luaL_prepbuffsize(a1, v4, v5, v6, v7, v8, v9, v10);
  result = cstdlib_memcpy(v11, __s, v4);
  *(a1 + 16) += v4;
  return result;
}

uint64_t luaL_pushresult(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = lua_pushlstring(v2, *a1, *(a1 + 16));
  if (*a1 != a1 + 32)
  {
    lua_rotate(v2, -2, -1);

    return lua_settop(v2, 0xFFFFFFFE);
  }

  return result;
}

uint64_t luaL_addvalue(uint64_t a1)
{
  v2 = *(a1 + 24);
  v14 = 0;
  v9 = lua_tolstring(v2, -1, &v14);
  if (*a1 != a1 + 32)
  {
    lua_rotate(v2, -2, 1);
  }

  v10 = v14;
  v11 = luaL_prepbuffsize(a1, v14, v3, v4, v5, v6, v7, v8);
  cstdlib_memcpy(v11, v9, v10);
  *(a1 + 16) += v10;
  if (*a1 == a1 + 32)
  {
    v12 = -1;
  }

  else
  {
    v12 = -2;
  }

  lua_rotate(v2, v12, -1);
  return lua_settop(v2, 0xFFFFFFFE);
}

double luaL_buffinit(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = a1;
  *a2 = a2 + 32;
  *&result = 0x2000;
  *(a2 + 8) = xmmword_26ECCE8B0;
  return result;
}

char *luaL_buffinitsize(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 24) = a1;
  *a2 = a2 + 32;
  *(a2 + 8) = xmmword_26ECCE8B0;
  return luaL_prepbuffsize(a2, a3, a3, a4, a5, a6, a7, a8);
}

uint64_t luaL_ref(void *a1, uint64_t a2)
{
  if (lua_type(a1, -1))
  {
    v4 = lua_absindex(a1, a2);
    lua_rawgeti(a1, v4, 0);
    v5 = lua_tointegerx(a1, -1, 0);
    lua_settop(a1, 0xFFFFFFFE);
    if (v5)
    {
      lua_rawgeti(a1, v4, v5);
      lua_rawseti(a1, v4, 0);
    }

    else
    {
      v5 = lua_rawlen(a1, v4) + 1;
    }

    lua_rawseti(a1, v4, v5);
  }

  else
  {
    lua_settop(a1, 0xFFFFFFFE);
    return 0xFFFFFFFFLL;
  }

  return v5;
}

void luaL_unref(void *a1, uint64_t a2, unsigned int a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v5 = lua_absindex(a1, a2);
    lua_rawgeti(a1, v5, 0);
    lua_rawseti(a1, v5, a3);
    lua_pushinteger(a1, a3);

    lua_rawseti(a1, v5, 0);
  }
}

uint64_t luaL_loadbufferx(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  return lua_load(a1, getS, v6, a4, a5);
}

uint64_t getS(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1];
  if (!v3)
  {
    return 0;
  }

  *a3 = v3;
  a2[1] = 0;
  return *a2;
}

uint64_t luaL_loadstring(uint64_t a1, char *__s)
{
  v4[0] = __s;
  v4[1] = cstdlib_strlen(__s);
  return lua_load(a1, getS, v4, v4[0], 0);
}

uint64_t luaL_getmetafield(void *a1, int a2, char *a3)
{
  if (!lua_getmetatable(a1, a2))
  {
    return 0;
  }

  lua_pushstring(a1, a3);
  v5 = lua_rawget(a1, -2);
  if (v5)
  {
    v6 = -2;
    lua_rotate(a1, -2, -1);
  }

  else
  {
    v6 = -3;
  }

  lua_settop(a1, v6);
  return v5;
}

uint64_t luaL_callmeta(void *a1, uint64_t a2, char *a3)
{
  v5 = lua_absindex(a1, a2);
  if (!luaL_getmetafield(a1, v5, a3))
  {
    return 0;
  }

  lua_pushvalue(a1, v5);
  v6 = 1;
  lua_callk(a1, 1, 1, 0, 0);
  return v6;
}

uint64_t luaL_len(void *a1, int a2)
{
  v12 = 0;
  lua_len(a1, a2);
  v9 = lua_tointegerx(a1, -1, &v12);
  if (!v12)
  {
    luaL_error(a1, "object length is not an integer", v3, v4, v5, v6, v7, v8, v11);
  }

  lua_settop(a1, 0xFFFFFFFE);
  return v9;
}

uint64_t luaL_tolstring(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  if (!luaL_callmeta(a1, a2, "__tostring"))
  {
    v7 = lua_type(a1, v4);
    if (v7 > 2)
    {
      if (v7 == 4)
      {
        lua_pushvalue(a1, v4);
        goto LABEL_2;
      }

      if (v7 == 3)
      {
        if (lua_isinteger(a1, v4))
        {
          v29 = lua_tointegerx(a1, v4, 0);
          lua_pushfstring(a1, "%I", v9, v10, v11, v12, v13, v14, v29);
        }

        else
        {
          v30 = lua_tonumberx(a1, v4, 0);
          lua_pushfstring(a1, "%f", v23, v24, v25, v26, v27, v28, v30);
        }

        goto LABEL_2;
      }
    }

    else
    {
      if (!v7)
      {
        v8 = "nil";
LABEL_17:
        lua_pushstring(a1, v8);
        goto LABEL_2;
      }

      if (v7 == 1)
      {
        if (lua_toBOOLean(a1, v4))
        {
          v8 = "true";
        }

        else
        {
          v8 = "false";
        }

        goto LABEL_17;
      }
    }

    v15 = lua_type(a1, v4);
    v16 = lua_typename(a1, v15);
    lua_topointer(a1, v4);
    lua_pushfstring(a1, "%s: %p", v17, v18, v19, v20, v21, v22, v16);
  }

LABEL_2:

  return lua_tolstring(a1, -1, a3);
}

uint64_t luaL_setfuncs(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkstack(a1, a3, "too many upvalues", a4, a5, a6, a7, a8, v14);
  if (*a2)
  {
    do
    {
      if (a3 >= 1)
      {
        v11 = a3;
        do
        {
          lua_pushvalue(a1, -a3);
          --v11;
        }

        while (v11);
      }

      lua_pushcclosure(a1, *(a2 + 8), a3);
      lua_setfield(a1, -2 - a3, *a2);
      v12 = *(a2 + 16);
      a2 += 16;
    }

    while (v12);
  }

  return lua_settop(a1, ~a3);
}

uint64_t luaL_getsubtable(void *a1, uint64_t a2, char *a3)
{
  if (lua_getfield(a1, a2, a3) == 5)
  {
    return 1;
  }

  lua_settop(a1, 0xFFFFFFFE);
  v7 = lua_absindex(a1, a2);
  lua_createtable(a1, 0, 0);
  lua_pushvalue(a1, -1);
  lua_setfield(a1, v7, a3);
  return 0;
}

uint64_t *luaL_requiref(void *a1, char *a2, uint64_t a3, int a4)
{
  luaL_getsubtable(a1, 4293966296, "_LOADED");
  lua_getfield(a1, -1, a2);
  if (!lua_toBOOLean(a1, -1))
  {
    lua_settop(a1, 0xFFFFFFFE);
    lua_pushcclosure(a1, a3, 0);
    lua_pushstring(a1, a2);
    lua_callk(a1, 1, 1, 0, 0);
    lua_pushvalue(a1, -1);
    lua_setfield(a1, -3, a2);
  }

  lua_rotate(a1, -2, -1);
  result = lua_settop(a1, 0xFFFFFFFE);
  if (a4)
  {
    lua_pushvalue(a1, -1);

    return lua_setglobal(a1, a2);
  }

  return result;
}

uint64_t luaL_gsub(void *a1, char *a2, char *__s, char *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = cstdlib_strlen(__s);
  memset(v22, 0, 480);
  v21 = a1;
  v19 = v22;
  v20 = xmmword_26ECCE8B0;
  v9 = cstdlib_strstr(a2, __s);
  if (v9)
  {
    v16 = v9;
    do
    {
      v17 = luaL_prepbuffsize(&v19, v16 - a2, v10, v11, v12, v13, v14, v15);
      cstdlib_memcpy(v17, a2, v16 - a2);
      *(&v20 + 1) += v16 - a2;
      luaL_addstring(&v19, a4);
      a2 = &v16[v8];
      v16 = cstdlib_strstr(&v16[v8], __s);
    }

    while (v16);
  }

  luaL_addstring(&v19, a2);
  luaL_pushresult(&v19);
  return lua_tolstring(a1, -1, 0);
}

double *luaL_checkversion_(void *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = lua_version(a1);
  if (a2 != 136)
  {
    luaL_error(a1, "core and library have incompatible numeric types", v13, v14, v15, v16, v17, v18, v27);
  }

  result = lua_version(0);
  if (v19 == result)
  {
    if (*v19 != a3)
    {
      return luaL_error(a1, "version mismatch: app. needs %f, Lua core provides %f", v21, v22, v23, v24, v25, v26, *&a3);
    }
  }

  else
  {

    return luaL_error(a1, "multiple Lua VMs detected", v21, v22, v23, v24, v25, v26, a10);
  }

  return result;
}

uint64_t findfield(void *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  if (lua_type(a1, -1) != 5)
  {
    return 0;
  }

  lua_pushnil(a1);
  if (!lua_next(a1, -2))
  {
    return 0;
  }

  v6 = (a3 - 1);
  while (1)
  {
    if (lua_type(a1, -2) == 4)
    {
      if (lua_rawequal(a1, a2, -1))
      {
        lua_settop(a1, 0xFFFFFFFE);
        return 1;
      }

      if (findfield(a1, a2, v6))
      {
        break;
      }
    }

    lua_settop(a1, 0xFFFFFFFE);
    if (!lua_next(a1, -2))
    {
      return 0;
    }
  }

  lua_rotate(a1, -2, -1);
  lua_settop(a1, 0xFFFFFFFE);
  lua_pushstring(a1, ".");
  v7 = 1;
  lua_rotate(a1, -2, 1);
  lua_concat(a1, 3, v9, v10, v11, v12, v13, v14);
  return v7;
}

uint64_t luaopen_base(void *a1)
{
  lua_rawgeti(a1, -1001000, 2);
  luaL_setfuncs(a1, &base_funcs, 0, v2, v3, v4, v5, v6);
  lua_pushvalue(a1, -1);
  lua_setfield(a1, -2, "_G");
  lua_pushstring(a1, "Lua 5.3");
  lua_setfield(a1, -2, "_VERSION");
  for (i = 0; i != 9; ++i)
  {
    v8 = lua_typename(a1, i);
    lua_pushstring(a1, v8);
  }

  lua_pushcclosure(a1, luaB_type, 9);
  lua_setfield(a1, -2, "type");
  return 1;
}

uint64_t luaB_type(void *a1)
{
  luaL_checkany(a1, 1);
  v2 = lua_type(a1, 1);
  lua_pushvalue(a1, -1001001 - v2);
  return 1;
}

unint64_t luaB_assert(void *a1)
{
  if (lua_toBOOLean(a1, 1))
  {

    return lua_gettop(a1);
  }

  else
  {
    luaL_checkany(a1, 1);
    lua_rotate(a1, 1, -1);
    lua_settop(a1, 0xFFFFFFFE);
    lua_pushstring(a1, "assertion failed!");
    lua_settop(a1, 1u);

    return luaB_error(a1);
  }
}

uint64_t luaB_collectgarbage(void *a1)
{
  v2 = luaB_collectgarbage_optsnum[luaL_checkoption(a1, 1, "collect", luaB_collectgarbage_opts)];
  v3 = luaL_optinteger(a1, 2, 0);
  v4 = lua_gc(a1, v2, v3);
  v5 = v4;
  if (v2 == 9 || v2 == 5)
  {
    lua_pushBOOLean(a1, v4);
  }

  else if (v2 == 3)
  {
    v7 = lua_gc(a1, 4, 0);
    lua_pushnumber(a1, vcvtd_n_f64_s32(v7, 0xAuLL) + v5);
  }

  else
  {
    lua_pushinteger(a1, v4);
  }

  return 1;
}

uint64_t luaB_error(void *a1)
{
  v2 = luaL_optinteger(a1, 2, 1);
  lua_settop(a1, 1u);
  if (lua_isstring(a1, 1) && v2 >= 1)
  {
    luaL_where(a1, v2);
    lua_pushvalue(a1, 1);
    lua_concat(a1, 2, v3, v4, v5, v6, v7, v8);
  }

  return lua_error(a1);
}

uint64_t luaB_getmetatable(void *a1)
{
  luaL_checkany(a1, 1);
  if (lua_getmetatable(a1, 1))
  {
    luaL_getmetafield(a1, 1, "__metatable");
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t luaB_ipairs(void *a1)
{
  if (luaL_getmetafield(a1, 1, "__index"))
  {
    v2 = ipairsaux;
  }

  else
  {
    v2 = ipairsaux_raw;
  }

  luaL_checkany(a1, 1);
  lua_pushcclosure(a1, v2, 0);
  lua_pushvalue(a1, 1);
  lua_pushinteger(a1, 0);
  return 3;
}

uint64_t luaB_load(void *a1)
{
  v9 = 0;
  v2 = lua_tolstring(a1, 1, &v9);
  v3 = luaL_optlstring(a1, 3, "bt", 0);
  v4 = lua_type(a1, 4);
  if (v2)
  {
    v5 = luaL_optlstring(a1, 2, v2, 0);
    if (luaL_loadbufferx(a1, v2, v9, v5, v3))
    {
LABEL_3:
      lua_pushnil(a1);
      lua_rotate(a1, -2, 1);
      return 2;
    }
  }

  else
  {
    v8 = luaL_optlstring(a1, 2, "=(load)", 0);
    luaL_checktype(a1, 1, 6);
    lua_settop(a1, 5u);
    if (lua_load(a1, generic_reader, 0, v8, v3))
    {
      goto LABEL_3;
    }
  }

  if (v4 == -1)
  {
    return 1;
  }

  lua_pushvalue(a1, 4);
  v6 = 1;
  if (!lua_setupvalue(a1, -2, 1))
  {
    lua_settop(a1, 0xFFFFFFFE);
  }

  return v6;
}

uint64_t luaB_next(void *a1)
{
  luaL_checktype(a1, 1, 5);
  v2 = 2;
  lua_settop(a1, 2u);
  if (!lua_next(a1, 1))
  {
    lua_pushnil(a1);
    return 1;
  }

  return v2;
}

uint64_t luaB_pairs(void *a1)
{
  if (luaL_getmetafield(a1, 1, "__pairs"))
  {
    lua_pushvalue(a1, 1);
    lua_callk(a1, 1, 3, 0, 0);
  }

  else
  {
    luaL_checktype(a1, 1, 5);
    lua_pushcclosure(a1, luaB_next, 0);
    lua_pushvalue(a1, 1);
    lua_pushnil(a1);
  }

  return 3;
}

uint64_t luaB_pcall(void *a1)
{
  luaL_checkany(a1, 1);
  lua_pushBOOLean(a1, 1);
  lua_rotate(a1, 1, 1);
  v2 = lua_gettop(a1);
  v3 = lua_pcallk(a1, v2 - 2, -1, 0, 0, finishpcall);

  return finishpcall(a1, v3, 0);
}

uint64_t luaB_rawequal(void *a1)
{
  luaL_checkany(a1, 1);
  luaL_checkany(a1, 2);
  v2 = lua_rawequal(a1, 1, 2);
  lua_pushBOOLean(a1, v2);
  return 1;
}

uint64_t luaB_rawlen(void *a1)
{
  if ((lua_type(a1, 1) & 0xFFFFFFFE) != 4)
  {
    luaL_argerror(a1, 1);
  }

  v2 = lua_rawlen(a1, 1);
  lua_pushinteger(a1, v2);
  return 1;
}

uint64_t luaB_rawget(void *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checkany(a1, 2);
  lua_settop(a1, 2u);
  lua_rawget(a1, 1);
  return 1;
}

uint64_t luaB_rawset(void *a1)
{
  luaL_checktype(a1, 1, 5);
  luaL_checkany(a1, 2);
  luaL_checkany(a1, 3);
  lua_settop(a1, 3u);
  lua_rawset(a1, 1);
  return 1;
}

uint64_t luaB_select(void *a1)
{
  v2 = lua_gettop(a1);
  if (lua_type(a1, 1) == 4 && *lua_tolstring(a1, 1, 0) == 35)
  {
    lua_pushinteger(a1, v2 - 1);
    return 1;
  }

  else
  {
    v4 = luaL_checkinteger(a1, 1);
    v5 = v2;
    if (v4 < v2)
    {
      v5 = v4;
    }

    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4 + v2;
    }

    if (v6 <= 0)
    {
      luaL_argerror(a1, 1);
    }

    return (v2 - v6);
  }
}

uint64_t luaB_setmetatable(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = lua_type(a1, 2);
  luaL_checktype(a1, 1, 5);
  if (v10 && v10 != 5)
  {
    luaL_argerror(a1, 2);
  }

  if (luaL_getmetafield(a1, 1, "__metatable"))
  {

    return luaL_error(a1, "cannot change a protected metatable", v11, v12, v13, v14, v15, v16, a9);
  }

  else
  {
    lua_settop(a1, 2u);
    lua_setmetatable(a1, 1);
    return 1;
  }
}

uint64_t luaB_tonumber(void *a1)
{
  if (lua_type(a1, 2) > 0)
  {
    v16 = 0;
    v2 = luaL_checkinteger(a1, 2);
    luaL_checktype(a1, 1, 4);
    v3 = luaL_checklstring(a1, 1, &v16);
    if ((v2 - 2) >= 0x23)
    {
      luaL_argerror(a1, 2);
    }

    v4 = cstdlib_strspn(v3, " \f\n\r\t\v");
    v5 = v3[v4];
    if (v5 == 45 || v5 == 43)
    {
      v7 = &v3[v4 + 1];
    }

    else
    {
      v7 = &v3[v4];
    }

    if (cstdlib_isalnum(*v7))
    {
      v8 = 0;
      while (1)
      {
        v9 = cstdlib_isdigit(*v7) ? *v7 - 48 : cstdlib_toupper(*v7) - 55;
        if (v9 >= v2)
        {
          break;
        }

        v10 = *++v7;
        v8 = v8 * v2 + v9;
        if (!cstdlib_isalnum(v10))
        {
          v11 = &v7[cstdlib_strspn(v7, " \f\n\r\t\v")];
          if (v5 == 45)
          {
            v12 = -v8;
          }

          else
          {
            v12 = v8;
          }

          goto LABEL_21;
        }
      }
    }

    v12 = 0;
    v11 = 0;
LABEL_21:
    if (v11 == &v3[v16])
    {
      lua_pushinteger(a1, v12);
      return 1;
    }

LABEL_22:
    lua_pushnil(a1);
    return 1;
  }

  luaL_checkany(a1, 1);
  if (lua_type(a1, 1) == 3)
  {
    lua_settop(a1, 1u);
    return 1;
  }

  v16 = 0;
  v14 = lua_tolstring(a1, 1, &v16);
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = lua_stringtonumber(a1, v14);
  if (v15 != v16 + 1)
  {
    goto LABEL_22;
  }

  return 1;
}

uint64_t luaB_tostring(void *a1)
{
  luaL_checkany(a1, 1);
  luaL_tolstring(a1, 1, 0);
  return 1;
}

uint64_t luaB_xpcall(void *a1)
{
  v2 = lua_gettop(a1);
  luaL_checktype(a1, 2, 6);
  lua_pushBOOLean(a1, 1);
  lua_pushvalue(a1, 1);
  lua_rotate(a1, 3, 2);
  v3 = lua_pcallk(a1, v2 - 2, -1, 2, 2, finishpcall);

  return finishpcall(a1, v3, 2);
}

uint64_t ipairsaux(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  lua_pushinteger(a1, v2 + 1);
  if (lua_geti(a1, 1, v2 + 1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t ipairsaux_raw(void *a1)
{
  v2 = luaL_checkinteger(a1, 2);
  luaL_checktype(a1, 1, 5);
  lua_pushinteger(a1, v2 + 1);
  if (lua_rawgeti(a1, 1, v2 + 1))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t generic_reader(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkstack(a1, 2, "too many nested functions", a4, a5, a6, a7, a8, v17);
  lua_pushvalue(a1, 1);
  lua_callk(a1, 0, 1, 0, 0);
  if (lua_type(a1, -1))
  {
    if (!lua_isstring(a1, -1))
    {
      luaL_error(a1, "reader function must return a string", v10, v11, v12, v13, v14, v15, v18);
    }

    lua_copy(a1, -1, 5);
    lua_settop(a1, 0xFFFFFFFE);

    return lua_tolstring(a1, 5, a3);
  }

  else
  {
    lua_settop(a1, 0xFFFFFFFE);
    *a3 = 0;
    return 0;
  }
}

uint64_t finishpcall(void *a1, unsigned int a2, int a3)
{
  if (a2 < 2)
  {
    return lua_gettop(a1) - a3;
  }

  lua_pushBOOLean(a1, 0);
  lua_pushvalue(a1, -2);
  return 2;
}

int *luaK_nil(int *result, int a2, int a3)
{
  v3 = result[8];
  if (v3 <= result[9])
  {
    return luaK_code(result, ((a3 << 23) - 0x800000) | (a2 << 6) | 4u);
  }

  v4 = *(*result + 56) + 4 * v3;
  v5 = *(v4 - 4);
  if ((v5 & 0x3F) != 4)
  {
    return luaK_code(result, ((a3 << 23) - 0x800000) | (a2 << 6) | 4u);
  }

  v6 = a3 + a2;
  v7 = (v5 >> 6);
  v8 = (v5 >> 23) + v7;
  if ((v7 > a2 || v8 + 1 < a2) && (v7 < a2 || v7 > v6))
  {
    return luaK_code(result, ((a3 << 23) - 0x800000) | (a2 << 6) | 4u);
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  if (v8 >= v6)
  {
    v11 = (v5 >> 23) + (v5 >> 6);
  }

  else
  {
    v11 = v6 + 511;
  }

  *(v4 - 4) = v5 & 0x7FC004 | (v7 << 6) | ((v11 - v7) << 23);
  return result;
}

uint64_t luaK_jump(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = -1;
  v4 = luaK_code(a1, 2147450910);
  luaK_concat(a1, &v4, v2);
  return v4;
}

uint64_t *luaK_concat(uint64_t *result, int *a2, int a3)
{
  if (a3 != -1)
  {
    v3 = *a2;
    if (*a2 == -1)
    {
      *a2 = a3;
    }

    else
    {
      do
      {
        v4 = v3;
        v5 = (*(*(*result + 56) + 4 * v3) >> 14) - 0x1FFFF;
        v3 += v5 + 1;
      }

      while (v5 != -1 && v3 != -1);
      return fixjump(result, v4, a3);
    }
  }

  return result;
}

uint64_t luaK_getlabel(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 36) = v1;
  return v1;
}

uint64_t *luaK_patchlist(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 32) != a3)
  {
    return patchlistaux(a1, a2, a3, 255, a3);
  }

  *(a1 + 36) = a3;
  return luaK_concat(a1, (a1 + 40), a2);
}

uint64_t patchlistaux(uint64_t result, int a2, int a3, int a4, int a5)
{
  if (a2 != -1)
  {
    v8 = a2;
    v9 = result;
    do
    {
      v10 = (*(*(*v9 + 56) + 4 * v8) >> 14) - 0x1FFFF;
      if (patchtestreg(v9, v8, a4))
      {
        v11 = a3;
      }

      else
      {
        v11 = a5;
      }

      result = fixjump(v9, v8, v11);
      v12 = v10 == -1 || v8 + v10 == -2;
      v8 += v10 + 1;
    }

    while (!v12);
  }

  return result;
}

uint64_t luaK_patchclose(uint64_t result, int a2, __int16 a3)
{
  if (a2 != -1)
  {
    v3 = *(*result + 56);
    do
    {
      v4 = *(v3 + 4 * a2);
      *(v3 + 4 * a2) = v4 & 0xFFFFC03F | ((a3 << 6) + 64) & 0x3FC0;
      a2 += (v4 >> 14) - 0x1FFFF + 1;
    }

    while (v4 >> 14 != 131070 && a2 != -1);
  }

  return result;
}

uint64_t fixjump(uint64_t *a1, int a2, int a3)
{
  v5 = *(*a1 + 56);
  v6 = ~a2 + a3;
  result = cstdlib_abs(v6);
  if (result >= 0x20000)
  {
    result = luaX_syntaxerror(a1[2], "control structure too long");
  }

  *(v5 + 4 * a2) = (*(v5 + 4 * a2) & 0x3FFF | (v6 << 14)) + 2147467264;
  return result;
}

uint64_t luaK_code(uint64_t a1, int a2)
{
  v4 = *a1;
  patchlistaux(a1, *(a1 + 40), *(a1 + 32), 255, *(a1 + 32));
  *(a1 + 40) = -1;
  v5 = *(a1 + 32);
  if (v5 >= *(v4 + 24))
  {
    v6 = luaM_growaux_(*(*(a1 + 16) + 56), *(v4 + 56), (v4 + 24), 4, 0x7FFFFFFF, "opcodes");
    *(v4 + 56) = v6;
    v5 = *(a1 + 32);
  }

  else
  {
    v6 = *(v4 + 56);
  }

  *(v6 + 4 * v5) = a2;
  v7 = *(a1 + 32);
  if (v7 >= *(v4 + 28))
  {
    v8 = luaM_growaux_(*(*(a1 + 16) + 56), *(v4 + 72), (v4 + 28), 4, 0x7FFFFFFF, "opcodes");
    *(v4 + 72) = v8;
    v7 = *(a1 + 32);
  }

  else
  {
    v8 = *(v4 + 72);
  }

  *(v8 + 4 * v7) = *(*(a1 + 16) + 8);
  result = *(a1 + 32);
  *(a1 + 32) = result + 1;
  return result;
}

uint64_t luaK_codek(uint64_t a1, int a2, int a3)
{
  v5 = a2 << 6;
  if (a3 >= 0x40000)
  {
    v7 = luaK_code(a1, v5 | 2u);
    luaK_code(a1, (a3 << 6) | 0x2E);
    return v7;
  }

  else
  {

    return luaK_code(a1, v5 | (a3 << 14) | 1u);
  }
}

uint64_t luaK_checkstack(uint64_t result, int a2)
{
  v2 = *(result + 60) + a2;
  v3 = *result;
  if (v2 > *(*result + 12))
  {
    if (v2 >= 0xFF)
    {
      v4 = result;
      result = luaX_syntaxerror(*(result + 16), "function or expression needs too many registers");
      v3 = *v4;
    }

    *(v3 + 12) = v2;
  }

  return result;
}

uint64_t luaK_reserveregs(uint64_t a1, int a2)
{
  v2 = a2;
  result = luaK_checkstack(a1, a2);
  *(a1 + 60) += v2;
  return result;
}

uint64_t luaK_stringK(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = 0;
  LODWORD(v4) = *(a2 + 8) | 0x40;
  return addk(a1, &v3, &v3);
}

uint64_t addk(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(v5 + 56);
  v7 = *a1;
  v8 = luaH_set(v6, *(v5 + 80), a2);
  v9 = v8;
  if (*(v8 + 2) != 19 || (v10 = *v8, *(a1 + 44) <= *v8) || (v11 = (*(v7 + 48) + 16 * v10), ((*(a3 + 8) ^ v11[2]) & 0x3F) != 0) || !luaV_equalobj(0, v11, a3))
  {
    v12 = *(v7 + 20);
    v10 = *(a1 + 44);
    *v9 = v10;
    *(v9 + 2) = 19;
    v13 = *(v7 + 20);
    if (v10 >= v13)
    {
      *(v7 + 48) = luaM_growaux_(v6, *(v7 + 48), (v7 + 20), 16, 0x3FFFFFF, "constants");
      v13 = *(v7 + 20);
    }

    v14 = *(v7 + 48);
    if (v12 < v13)
    {
      v15 = 0;
      v16 = v13 - v12;
      v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v18 = vdupq_n_s64(v16 - 1);
      v19 = (v14 + 16 * v12 + 40);
      do
      {
        v20 = vdupq_n_s64(v15);
        v21 = vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_26ECC7980)));
        if (vuzp1_s16(v21, *v18.i8).u8[0])
        {
          *(v19 - 8) = 0;
        }

        if (vuzp1_s16(v21, *&v18).i8[2])
        {
          *(v19 - 4) = 0;
        }

        if (vuzp1_s16(*&v18, vmovn_s64(vcgeq_u64(v18, vorrq_s8(v20, xmmword_26ECCE810)))).i32[1])
        {
          *v19 = 0;
          v19[4] = 0;
        }

        v15 += 4;
        v19 += 16;
      }

      while (v17 != v15);
    }

    *(v14 + 16 * v10) = *a3;
    ++*(a1 + 44);
    if ((*(a3 + 8) & 0x40) != 0 && (*(v7 + 9) & 4) != 0 && (*(*a3 + 9) & 3) != 0)
    {
      luaC_barrier_(v6, v7, *a3);
    }
  }

  return v10;
}

uint64_t luaK_intK(uint64_t a1, uint64_t a2)
{
  v4[0] = a2;
  v4[1] = 2;
  v3[0] = a2;
  v3[1] = 19;
  return addk(a1, v4, v3);
}

unsigned __int8 *luaK_setreturns(unsigned __int8 *result, _DWORD *a2, int a3)
{
  v3 = result;
  if (*a2 == 14)
  {
    v4 = *(*result + 56);
    *(v4 + 4 * a2[2]) = (*(v4 + 4 * a2[2]) & 0x7FFFFF | (a3 << 23)) + 0x800000;
    *(v4 + 4 * a2[2]) = *(v4 + 4 * a2[2]) & 0xFFFFC03F | (result[60] << 6);
    result = luaK_checkstack(result, 1);
    ++v3[60];
  }

  else if (*a2 == 13)
  {
    *(*(*result + 56) + 4 * a2[2]) = *(*(*result + 56) + 4 * a2[2]) & 0xFF803FFF | (((((a3 << 14) + 0x4000) >> 14) & 0x1FF) << 14);
  }

  return result;
}

uint64_t luaK_setoneret(uint64_t result, _DWORD *a2)
{
  if (*a2 == 14)
  {
    *(*(*result + 56) + 4 * a2[2]) = *(*(*result + 56) + 4 * a2[2]) & 0x7FFFFF | 0x1000000;
    *a2 = 12;
  }

  else if (*a2 == 13)
  {
    *a2 = 7;
    a2[2] = (*(*(*result + 56) + 4 * a2[2]) >> 6);
  }

  return result;
}

uint64_t luaK_dischargevars(uint64_t result, int *a2)
{
  v3 = *a2;
  if (*a2 > 12)
  {
    if ((v3 - 13) < 2)
    {

      return luaK_setoneret(result, a2);
    }
  }

  else
  {
    if (v3 == 8)
    {
      v6 = 7;
    }

    else
    {
      if (v3 == 9)
      {
        v7 = (a2[2] << 23) | 5;
      }

      else
      {
        if (v3 != 10)
        {
          return result;
        }

        v4 = *(a2 + 4);
        if ((v4 & 0x100) == 0 && *(result + 58) <= v4)
        {
          --*(result + 60);
        }

        if (*(a2 + 11) == 8)
        {
          if (*(result + 58) <= *(a2 + 10))
          {
            --*(result + 60);
          }

          v5 = 7;
        }

        else
        {
          v5 = 6;
        }

        v7 = v5 | (*(a2 + 10) << 23) | (*(a2 + 4) << 14);
      }

      result = luaK_code(result, v7);
      a2[2] = result;
      v6 = 12;
    }

    *a2 = v6;
  }

  return result;
}

double luaK_exp2nextreg(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  if (*a2 == 7)
  {
    v4 = a2[2];
    if ((v4 & 0x100) == 0 && v4 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  luaK_checkstack(a1, 1);
  v5 = *(a1 + 60) + 1;
  *(a1 + 60) = v5;

  return exp2reg(a1, a2, v5 - 1);
}

double exp2reg(int *a1, int *a2, int a3)
{
  discharge2reg(a1, a2, a3);
  if (*a2 == 11)
  {
    luaK_concat(a1, a2 + 4, a2[2]);
  }

  v6 = a2[4];
  v7 = a2[5];
  if (v6 != v7)
  {
    if (need_value(a1, v6) || need_value(a1, v7))
    {
      if (*a2 == 11)
      {
        v8 = -1;
      }

      else
      {
        v8 = luaK_jump(a1);
      }

      a1[9] = a1[8];
      v9 = luaK_code(a1, (a3 << 6) | 0x4003u);
      a1[9] = a1[8];
      v10 = luaK_code(a1, (a3 << 6) | 0x800003u);
      a1[9] = a1[8];
      luaK_concat(a1, a1 + 10, v8);
      v7 = a2[5];
    }

    else
    {
      v9 = -1;
      v10 = -1;
    }

    v11 = a1[8];
    a1[9] = v11;
    patchlistaux(a1, v7, v11, a3, v9);
    patchlistaux(a1, a2[4], v11, a3, v10);
  }

  result = NAN;
  *(a2 + 2) = -1;
  a2[2] = a3;
  *a2 = 7;
  return result;
}

uint64_t luaK_exp2anyreg(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  if (*a2 != 7)
  {
LABEL_4:
    luaK_exp2nextreg(a1, a2);
    v4 = a2 + 2;
    return *v4;
  }

  v4 = a2 + 2;
  if (a2[4] != a2[5])
  {
    if (*v4 >= *(a1 + 58))
    {
      exp2reg(a1, a2, *v4);
      return *v4;
    }

    goto LABEL_4;
  }

  return *v4;
}

uint64_t luaK_exp2anyregup(uint64_t a1, int *a2)
{
  if (*a2 != 9 || a2[4] != a2[5])
  {
    return luaK_exp2anyreg(a1, a2);
  }

  return a1;
}

uint64_t luaK_exp2val(uint64_t result, int *a2)
{
  if (a2[4] == a2[5])
  {
    return luaK_dischargevars(result, a2);
  }

  else
  {
    return luaK_exp2anyreg(result, a2);
  }
}

uint64_t luaK_exp2RK(uint64_t a1, int *a2)
{
  luaK_exp2val(a1, a2);
  v4 = *a2;
  if (*a2 <= 3)
  {
    if ((v4 - 1) < 3 && *(a1 + 44) <= 255)
    {
      if (v4 == 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = *(*(a1 + 16) + 80);
        v13 = 69;
        v5 = &v10;
      }

      else
      {
        v12 = v4 == 2;
        v13 = 1;
        v5 = &v12;
      }

      v6 = addk(a1, &v12, v5);
      a2[2] = v6;
      *a2 = 4;
      return v6 | 0x100u;
    }

    return luaK_exp2anyreg(a1, a2);
  }

  if (v4 == 6)
  {
    v12 = *(a2 + 1);
    v13 = 2;
    v10 = v12;
    v11 = 19;
    v7 = &v10;
LABEL_12:
    v6 = addk(a1, &v12, v7);
    a2[2] = v6;
    *a2 = 4;
    goto LABEL_13;
  }

  if (v4 == 5)
  {
    v8 = *(a2 + 1);
    v13 = 3;
    v12 = v8;
    v7 = &v12;
    goto LABEL_12;
  }

  if (v4 != 4)
  {
    return luaK_exp2anyreg(a1, a2);
  }

  v6 = a2[2];
LABEL_13:
  if (v6 > 255)
  {
    return luaK_exp2anyreg(a1, a2);
  }

  return v6 | 0x100u;
}

void luaK_storevar(uint64_t a1, int *a2, int *a3)
{
  v5 = *a2;
  if (*a2 == 10)
  {
    if (*(a2 + 11) == 8)
    {
      v9 = 10;
    }

    else
    {
      v9 = 8;
    }

    v8 = v9 | (*(a2 + 10) << 6) | (*(a2 + 4) << 23) | (luaK_exp2RK(a1, a3) << 14);
    goto LABEL_16;
  }

  if (v5 == 9)
  {
    v8 = (luaK_exp2anyreg(a1, a3) << 6) | (a2[2] << 23) | 9;
LABEL_16:
    luaK_code(a1, v8);
    goto LABEL_17;
  }

  if (v5 == 8)
  {
    if (*a3 == 7)
    {
      v6 = a3[2];
      if ((v6 & 0x100) == 0 && v6 >= *(a1 + 58))
      {
        --*(a1 + 60);
      }
    }

    v7 = a2[2];

    exp2reg(a1, a3, v7);
    return;
  }

LABEL_17:
  if (*a3 == 7)
  {
    v10 = a3[2];
    if ((v10 & 0x100) == 0 && v10 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }
}

uint64_t luaK_self(uint64_t a1, int *a2, int *a3)
{
  luaK_exp2anyreg(a1, a2);
  v6 = a2[2];
  v7 = *a2 == 7 && (a2[2] & 0x100) == 0;
  if (v7 && v6 >= *(a1 + 58))
  {
    --*(a1 + 60);
  }

  a2[2] = *(a1 + 60);
  *a2 = 7;
  luaK_checkstack(a1, 2);
  *(a1 + 60) += 2;
  v8 = a2[2];
  v9 = luaK_exp2RK(a1, a3);
  result = luaK_code(a1, (v6 << 23) | (v8 << 6) | (v9 << 14) | 0xCu);
  if (*a3 == 7)
  {
    v11 = a3[2];
    if ((v11 & 0x100) == 0 && v11 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  return result;
}

uint64_t *luaK_goiftrue(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  v4 = *a2;
  v5 = (*a2 - 4) < 3 || v4 == 2;
  v6 = -1;
  if (!v5)
  {
    if (v4 == 11)
    {
      invertjump(a1, a2);
      v6 = a2[2];
    }

    else
    {
      v6 = jumponcond(a1, a2, 0);
    }
  }

  luaK_concat(a1, a2 + 5, v6);
  v7 = a2[4];
  *(a1 + 36) = *(a1 + 32);
  result = luaK_concat(a1, (a1 + 40), v7);
  a2[4] = -1;
  return result;
}

uint64_t invertjump(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*(*result + 56) + 4 * v2);
  if (v2 >= 1 && (v4 = *(v3 - 1), luaP_opmodes[v4 & 0x3F] < 0))
  {
    --v3;
  }

  else
  {
    v4 = *v3;
  }

  *v3 = v4 & 0xFFFFC03F | (((v4 & 0x3FC0) == 0) << 6);
  return result;
}

uint64_t jumponcond(uint64_t a1, int *a2, int a3)
{
  if (*a2 == 12 && (v6 = *(*(*a1 + 56) + 4 * a2[2]), (v6 & 0x3F) == 0x1B))
  {
    --*(a1 + 32);
    v7 = v6 >> 23;
    if (a3)
    {
      v8 = 34;
    }

    else
    {
      v8 = 16418;
    }

    v9 = v8 | (v7 << 6);
  }

  else
  {
    discharge2anyreg(a1, a2);
    if (*a2 == 7)
    {
      v10 = a2[2];
      if ((v10 & 0x100) == 0 && v10 >= *(a1 + 58))
      {
        --*(a1 + 60);
      }
    }

    v9 = (a3 << 14) | (a2[2] << 23) | 0x3FE3;
  }

  luaK_code(a1, v9);

  return luaK_jump(a1);
}

uint64_t *luaK_goiffalse(uint64_t a1, int *a2)
{
  luaK_dischargevars(a1, a2);
  v4 = *a2;
  v5 = *a2 == 1 || v4 == 3;
  v6 = -1;
  if (!v5)
  {
    if (v4 == 11)
    {
      v6 = a2[2];
    }

    else
    {
      v6 = jumponcond(a1, a2, 1);
    }
  }

  luaK_concat(a1, a2 + 4, v6);
  v7 = a2[5];
  *(a1 + 36) = *(a1 + 32);
  result = luaK_concat(a1, (a1 + 40), v7);
  a2[5] = -1;
  return result;
}

uint64_t luaK_indexed(uint64_t a1, uint64_t a2, int *a3)
{
  *(a2 + 10) = *(a2 + 8);
  result = luaK_exp2RK(a1, a3);
  *(a2 + 8) = result;
  if (*a2 == 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  *(a2 + 11) = v5;
  *a2 = 10;
  return result;
}

uint64_t luaK_prefix(uint64_t result, unsigned int a2, uint64_t a3, int a4)
{
  v5 = result;
  v11[2] = -1;
  v11[1] = 0;
  v11[0] = 6;
  if (a2 < 2)
  {
    return codeexpval(result, a2 + 25, a3, v11, a4);
  }

  if (a2 != 2)
  {
    if (a2 != 3)
    {
      return result;
    }

    return codeexpval(result, a2 + 25, a3, v11, a4);
  }

  luaK_dischargevars(result, a3);
  v6 = *a3;
  if (*a3 <= 3)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        goto LABEL_20;
      }

      if (v6 != 3)
      {
        goto LABEL_22;
      }
    }

    v8 = 2;
LABEL_21:
    *a3 = v8;
    goto LABEL_22;
  }

  if (v6 < 7)
  {
LABEL_20:
    v8 = 3;
    goto LABEL_21;
  }

  switch(v6)
  {
    case 7:
      goto LABEL_11;
    case 11:
      invertjump(v5, a3);
      break;
    case 12:
LABEL_11:
      discharge2anyreg(v5, a3);
      if (*a3 == 7)
      {
        v7 = *(a3 + 8);
        if ((v7 & 0x100) == 0 && v7 >= *(v5 + 58))
        {
          --*(v5 + 60);
        }
      }

      *(a3 + 8) = luaK_code(v5, (*(a3 + 8) << 23) | 0x1Bu);
      v8 = 12;
      goto LABEL_21;
  }

LABEL_22:
  v9 = *(a3 + 16);
  *(a3 + 16) = vrev64_s32(v9);
  removevalues(v5, v9.i32[0]);
  v10 = *(a3 + 16);

  return removevalues(v5, v10);
}

uint64_t codeexpval(uint64_t a1, unsigned int a2, int *a3, int *a4, int a5)
{
  if (a2 > 0x1A || a3[4] != -1 || a3[5] != -1)
  {
    goto LABEL_4;
  }

  if (*a3 == 6)
  {
    v17 = 19;
    v16 = 1;
  }

  else
  {
    if (*a3 != 5)
    {
      goto LABEL_4;
    }

    v16 = 0;
    v17 = 3;
  }

  v31 = 0;
  v18 = *(a3 + 1);
  v30 = v18;
  LODWORD(v31) = v17;
  if (a4[4] != -1 || a4[5] != -1)
  {
LABEL_4:
    if (a2 <= 0x1C && ((1 << a2) & 0x16000000) != 0)
    {
      v10 = luaK_exp2anyreg(a1, a3);
      v11 = 0;
    }

    else
    {
      v11 = luaK_exp2RK(a1, a4);
      v10 = luaK_exp2RK(a1, a3);
    }

    if (v10 <= v11)
    {
      if (*a4 == 7)
      {
        v14 = a4[2];
        if ((v14 & 0x100) == 0 && v14 >= *(a1 + 58))
        {
          --*(a1 + 60);
        }
      }

      if (*a3 != 7)
      {
        goto LABEL_24;
      }

      v13 = a3[2];
      if ((v13 & 0x100) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (*a3 == 7)
      {
        v12 = a3[2];
        if ((v12 & 0x100) == 0 && v12 >= *(a1 + 58))
        {
          --*(a1 + 60);
        }
      }

      if (*a4 != 7)
      {
        goto LABEL_24;
      }

      v13 = a4[2];
      if ((v13 & 0x100) != 0)
      {
        goto LABEL_24;
      }
    }

    if (v13 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }

LABEL_24:
    result = luaK_code(a1, (v10 << 23) | (v11 << 14) | a2);
    a3[2] = result;
    *a3 = 12;
    *(*(*a1 + 72) + 4 * *(a1 + 32) - 4) = a5;
    return result;
  }

  if (*a4 == 6)
  {
    v20 = 19;
    v19 = 1;
  }

  else
  {
    if (*a4 != 5)
    {
      goto LABEL_4;
    }

    v19 = 0;
    v20 = 3;
  }

  v29 = 0;
  v26 = 0.0;
  v27 = 0;
  v21 = *(a4 + 1);
  v28 = v21;
  LODWORD(v29) = v20;
  if (((1 << a2) & 0x5F00000) == 0)
  {
    if (((1 << a2) & 0xD0000) == 0)
    {
      goto LABEL_50;
    }

    v22 = *&v21;
    if (!v19)
    {
      v22 = v21;
    }

    v23 = v22 == 0.0;
    goto LABEL_46;
  }

  v32 = 0;
  if (v16)
  {
    v32 = v18;
  }

  else
  {
    if (!luaV_tointeger(&v30, &v32))
    {
      goto LABEL_4;
    }

    v20 = v29;
  }

  if (v20 != 19)
  {
    v23 = luaV_tointeger(&v28, &v32) == 0;
LABEL_46:
    if (v23)
    {
      goto LABEL_4;
    }
  }

LABEL_50:
  result = luaO_arith(*(*(a1 + 16) + 56), a2 - 13, &v30, &v28, &v26);
  if (v27 == 19)
  {
    *a3 = 6;
    v25 = v26;
  }

  else
  {
    v25 = v26;
    if (v26 == 0.0)
    {
      goto LABEL_4;
    }

    *a3 = 5;
  }

  *(a3 + 1) = v25;
  return result;
}

double luaK_infix(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >= 0xC)
  {
    switch(a2)
    {
      case 0xCu:
        return luaK_exp2nextreg(a1, a3);
      case 0x14u:
        luaK_goiffalse(a1, a3);
        return result;
      case 0x13u:
        luaK_goiftrue(a1, a3);
        return result;
    }

LABEL_10:
    luaK_exp2RK(a1, a3);
    return result;
  }

  if (a3[4] != -1 || a3[5] != -1 || (*a3 - 5) >= 2)
  {
    goto LABEL_10;
  }

  return result;
}

__n128 luaK_posfix(uint64_t a1, int a2, int *a3, int *a4, int a5)
{
  v7 = a1;
  if (a2 > 12)
  {
    if (a2 < 16)
    {
      v11 = a2 + 18;
      v12 = 1;
    }

    else
    {
      if ((a2 - 16) >= 3)
      {
        if (a2 == 20)
        {
          luaK_dischargevars(a1, a4);
          v13 = a3[4];
          v14 = a4 + 4;
        }

        else
        {
          if (a2 != 19)
          {
            return result;
          }

          luaK_dischargevars(a1, a4);
          v13 = a3[5];
          v14 = a4 + 5;
        }

        luaK_concat(v7, v14, v13);
        result = *a4;
        *(a3 + 2) = *(a4 + 2);
        *a3 = result;
        return result;
      }

      v11 = a2 + 15;
      v12 = 0;
    }

    codecomp(a1, v11, v12, a3, a4);
    return result;
  }

  if (a2 < 0xC)
  {
    v9 = a2 + 13;
LABEL_4:

    codeexpval(a1, v9, a3, a4, a5);
    return result;
  }

  if (a2 != 12)
  {
    return result;
  }

  luaK_exp2val(a1, a4);
  if (*a4 != 12 || (v15 = *(*v7 + 56), v16 = a4[2], v17 = *(v15 + 4 * v16), (v17 & 0x3F) != 0x1D))
  {
    luaK_exp2nextreg(v7, a4);
    a1 = v7;
    v9 = 29;
    goto LABEL_4;
  }

  if (*a3 == 7)
  {
    v18 = a3[2];
    if ((v18 & 0x100) == 0 && v18 >= *(v7 + 58))
    {
      --*(v7 + 60);
      v16 = a4[2];
      v17 = *(v15 + 4 * v16);
    }
  }

  *(v15 + 4 * v16) = v17 & 0x7FFFFF | (a3[2] << 23);
  *a3 = 12;
  a3[2] = a4[2];
  return result;
}

uint64_t codecomp(uint64_t a1, int a2, int a3, int *a4, int *a5)
{
  v10 = luaK_exp2RK(a1, a4);
  v11 = luaK_exp2RK(a1, a5);
  if (*a5 == 7)
  {
    v12 = a5[2];
    if ((v12 & 0x100) == 0 && v12 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  if (*a4 == 7)
  {
    v13 = a4[2];
    if ((v13 & 0x100) == 0 && v13 >= *(a1 + 58))
    {
      --*(a1 + 60);
    }
  }

  v14 = a3 == 0;
  v15 = a2 != 31;
  v16 = !v15 || !v14;
  if (v15 && v14)
  {
    v17 = v11;
  }

  else
  {
    v17 = v10;
  }

  if (v16)
  {
    v18 = v11;
  }

  else
  {
    v18 = v10;
  }

  v19 = a3 << 6;
  if (!v16)
  {
    v19 = 64;
  }

  luaK_code(a1, v19 | (v17 << 23) | (v18 << 14) | a2);
  result = luaK_jump(a1);
  a4[2] = result;
  *a4 = 11;
  return result;
}

uint64_t luaK_setlist(uint64_t a1, int a2, int a3, int a4)
{
  v4 = a2;
  v6 = (a3 - 1) / 50 + 1;
  v7 = a4 << 23;
  v8 = a2 << 6;
  if (a4 == -1)
  {
    v7 = 0;
  }

  if (a3 > 25550)
  {
    luaK_code(a1, v8 | v7 | 0x2B);
    v9 = (v6 << 6) | 0x2E;
  }

  else
  {
    v9 = v7 | (v6 << 14) | v8 | 0x2B;
  }

  result = luaK_code(a1, v9);
  *(a1 + 60) = v4 + 1;
  return result;
}

uint64_t patchtestreg(uint64_t a1, int a2, int a3)
{
  v3 = (*(*a1 + 56) + 4 * a2);
  if (a2 >= 1 && (v4 = *(v3 - 1), luaP_opmodes[v4 & 0x3F] < 0))
  {
    --v3;
  }

  else
  {
    v4 = *v3;
  }

  if ((v4 & 0x3F) != 0x23)
  {
    return 0;
  }

  v5 = v4 >> 23;
  if (a3 == 255 || v5 == a3)
  {
    v6 = v4 & 0x7FC022 | (v5 << 6);
  }

  else
  {
    v6 = v4 & 0xFFFFC023 | (a3 << 6);
  }

  *v3 = v6;
  return 1;
}

uint64_t discharge2reg(int *a1, int *a2, int a3)
{
  result = luaK_dischargevars(a1, a2);
  v7 = *a2;
  if (*a2 <= 4)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 == 1)
      {
        result = luaK_nil(a1, a3, 1);
        goto LABEL_24;
      }

      if (v7 != 4)
      {
        return result;
      }

      v8 = a2[2];
      goto LABEL_20;
    }

    if (v7 == 2)
    {
      v10 = 0x800000;
    }

    else
    {
      v10 = 2;
    }

    v11 = v10 | (a3 << 6) | 3;
    goto LABEL_17;
  }

  if (v7 <= 6)
  {
    if (v7 == 5)
    {
      v12 = *(a2 + 1);
      v16 = 3;
      v15 = v12;
      v9 = &v15;
    }

    else
    {
      if (v7 != 6)
      {
        return result;
      }

      v15 = *(a2 + 1);
      v16 = 2;
      v14[0] = v15;
      v14[1] = 19;
      v9 = v14;
    }

    v8 = addk(a1, &v15, v9);
LABEL_20:
    result = luaK_codek(a1, a3, v8);
    goto LABEL_24;
  }

  if (v7 == 7)
  {
    v13 = a2[2];
    if (v13 == a3)
    {
      goto LABEL_24;
    }

    v11 = (v13 << 23) | (a3 << 6);
LABEL_17:
    result = luaK_code(a1, v11);
    goto LABEL_24;
  }

  if (v7 != 12)
  {
    return result;
  }

  *(*(*a1 + 56) + 4 * a2[2]) = *(*(*a1 + 56) + 4 * a2[2]) & 0xFFFFC03F | (a3 << 6);
LABEL_24:
  a2[2] = a3;
  *a2 = 7;
  return result;
}

uint64_t need_value(uint64_t a1, int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  while (1)
  {
    v2 = (*(*a1 + 56) + 4 * a2);
    if (a2 < 1 || (v3 = *(v2 - 1), (luaP_opmodes[v3 & 0x3F] & 0x80000000) == 0))
    {
      v3 = *v2;
    }

    if ((v3 & 0x3F) != 0x23)
    {
      break;
    }

    v4 = (*v2 >> 14) - 0x1FFFF;
    a2 += v4 + 1;
    if (v4 == -1 || a2 == -1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t discharge2anyreg(uint64_t result, int *a2)
{
  if (*a2 != 7)
  {
    v4 = result;
    luaK_checkstack(result, 1);
    v5 = *(v4 + 60) + 1;
    *(v4 + 60) = v5;

    return discharge2reg(v4, a2, v5 - 1);
  }

  return result;
}

uint64_t removevalues(uint64_t result, int a2)
{
  if (a2 != -1)
  {
    v2 = a2;
    v3 = result;
    do
    {
      result = patchtestreg(v3, v2, 255);
      v4 = (*(*(*v3 + 56) + 4 * v2) >> 14) - 0x1FFFF;
      v2 += v4 + 1;
    }

    while (v4 != -1 && v2 != -1);
  }

  return result;
}

uint64_t luaopen_coroutine(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 7);
  luaL_setfuncs(a1, &co_funcs, 0, v9, v10, v11, v12, v13);
  return 1;
}

uint64_t luaB_cocreate(void *a1)
{
  luaL_checktype(a1, 1, 6);
  v2 = lua_newthread(a1);
  lua_pushvalue(a1, 1);
  lua_xmove(a1, v2, 1);
  return 1;
}

uint64_t luaB_coresume(void *a1)
{
  v2 = getco(a1);
  v3 = lua_gettop(a1);
  v4 = auxresume(a1, v2, v3 - 1);
  if (v4 < 0)
  {
    lua_pushBOOLean(a1, 0);
    v6 = 2;
    v7 = -2;
  }

  else
  {
    v5 = v4;
    lua_pushBOOLean(a1, 1);
    v6 = (v5 + 1);
    v7 = ~v5;
  }

  lua_rotate(a1, v7, 1);
  return v6;
}

uint64_t luaB_corunning(uint64_t a1)
{
  v2 = lua_pushthread(a1);
  lua_pushBOOLean(a1, v2);
  return 2;
}

uint64_t luaB_costatus(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = getco(a1);
  if (v2 == a1)
  {
    v5 = "running";
  }

  else
  {
    v3 = v2;
    v4 = lua_status(v2);
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = "suspended";
      }

      else
      {
        v5 = "dead";
      }
    }

    else
    {
      memset(v7, 0, sizeof(v7));
      if (lua_getstack(v3, 0, v7) <= 0)
      {
        if (lua_gettop(v3))
        {
          v5 = "suspended";
        }

        else
        {
          v5 = "dead";
        }
      }

      else
      {
        v5 = "normal";
      }
    }
  }

  lua_pushstring(a1, v5);
  return 1;
}

uint64_t luaB_cowrap(void *a1)
{
  luaB_cocreate(a1);
  lua_pushcclosure(a1, luaB_auxwrap, 1);
  return 1;
}

uint64_t luaB_yield(uint64_t a1)
{
  v2 = lua_gettop(a1);

  return lua_yieldk(a1, v2, 0, 0);
}

uint64_t luaB_yieldable(uint64_t a1)
{
  v2 = lua_isyieldable(a1);
  lua_pushBOOLean(a1, v2);
  return 1;
}

uint64_t getco(void *a1)
{
  v2 = lua_tothread(a1, 1);
  if (!v2)
  {
    luaL_argerror(a1, 1);
  }

  return v2;
}

uint64_t auxresume(void *a1, void *a2, int a3)
{
  if (!lua_checkstack(a2, a3))
  {
    v7 = "too many arguments to resume";
LABEL_11:
    lua_pushstring(a1, v7);
    return 0xFFFFFFFFLL;
  }

  if (!lua_status(a2) && !lua_gettop(a2))
  {
    v7 = "cannot resume dead coroutine";
    goto LABEL_11;
  }

  lua_xmove(a1, a2, a3);
  if (lua_resume(a2, a1, a3) > 1)
  {
    lua_xmove(a2, a1, 1);
    return 0xFFFFFFFFLL;
  }

  v6 = lua_gettop(a2);
  if (!lua_checkstack(a1, v6 + 1))
  {
    lua_settop(a2, ~v6);
    v7 = "too many results to resume";
    goto LABEL_11;
  }

  lua_xmove(a2, a1, v6);
  return v6;
}

uint64_t luaB_auxwrap(void *a1)
{
  v2 = lua_tothread(a1, -1001001);
  v3 = lua_gettop(a1);
  result = auxresume(a1, v2, v3);
  if ((result & 0x80000000) != 0)
  {
    if (lua_isstring(a1, -1))
    {
      luaL_where(a1, 1);
      lua_rotate(a1, -2, 1);
      lua_concat(a1, 2, v5, v6, v7, v8, v9, v10);
    }

    return lua_error(a1);
  }

  return result;
}

uint64_t luaopen_debug(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  luaL_checkversion_(a1, 136, 503.0, a3, a4, a5, a6, a7, a8, v15);
  lua_createtable(a1, 0, 15);
  luaL_setfuncs(a1, &dblib, 0, v9, v10, v11, v12, v13);
  return 1;
}

uint64_t db_getuservalue(void *a1)
{
  if (lua_type(a1, 1) == 7)
  {
    lua_getuservalue(a1, 1);
  }

  else
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t db_gethook(void *a1)
{
  v2 = getthread(a1, &v14);
  v3 = lua_gethookmask(v2);
  v4 = lua_gethook(v2);
  if (v4)
  {
    if (v4 == hookf)
    {
      lua_rawgetp(a1, -1001000, &HOOKKEY);
      checkstack(a1, v2, 1, v6, v7, v8, v9, v10, v13);
      lua_pushthread(v2);
      lua_xmove(v2, a1, 1);
      lua_rawget(a1, -2);
      lua_rotate(a1, -2, -1);
      lua_settop(a1, 0xFFFFFFFE);
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      lua_pushstring(a1, "external hook");
      if (v3)
      {
LABEL_9:
        HIBYTE(v13) = 99;
        v5 = 1;
        if ((v3 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
    lua_pushnil(a1);
    if (v3)
    {
      goto LABEL_9;
    }
  }

  v5 = 0;
  if ((v3 & 2) != 0)
  {
LABEL_10:
    *(&v13 + v5++ + 7) = 114;
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    *(&v13 + v5++ + 7) = 108;
  }

  *(&v13 + v5 + 7) = 0;
  lua_pushstring(a1, &v13 + 7);
  v11 = lua_gethookcount(v2);
  lua_pushinteger(a1, v11);
  return 3;
}

uint64_t db_getinfo(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  v2 = getthread(a1, &v19);
  v3 = v19;
  v4 = luaL_optlstring(a1, (v19 + 2), "flnStu", 0);
  checkstack(a1, v2, 3, v5, v6, v7, v8, v9, v18);
  if (lua_type(a1, v3 + 1) == 6)
  {
    v4 = lua_pushfstring(a1, ">%s", v10, v11, v12, v13, v14, v15, v4);
    lua_pushvalue(a1, v3 + 1);
    lua_xmove(a1, v2, 1);
  }

  else
  {
    v16 = luaL_checkinteger(a1, (v3 + 1));
    if (!lua_getstack(v2, v16, &v20))
    {
      lua_pushnil(a1);
      return 1;
    }
  }

  if (!lua_getinfo(v2, v4, &v20))
  {
    return luaL_argerror(a1, (v3 + 2));
  }

  lua_createtable(a1, 0, 0);
  if (cstdlib_strchr(v4, 83))
  {
    lua_pushstring(a1, v22);
    lua_setfield(a1, -2, "source");
    lua_pushstring(a1, v23 + 8);
    lua_setfield(a1, -2, "short_src");
    lua_pushinteger(a1, SHIDWORD(v22));
    lua_setfield(a1, -2, "linedefined");
    lua_pushinteger(a1, SLODWORD(v23[0]));
    lua_setfield(a1, -2, "lastlinedefined");
    lua_pushstring(a1, *(&v21 + 1));
    lua_setfield(a1, -2, "what");
  }

  if (cstdlib_strchr(v4, 108))
  {
    lua_pushinteger(a1, SDWORD2(v22));
    lua_setfield(a1, -2, "currentline");
  }

  if (cstdlib_strchr(v4, 117))
  {
    lua_pushinteger(a1, BYTE4(v23[0]));
    lua_setfield(a1, -2, "nups");
    lua_pushinteger(a1, BYTE5(v23[0]));
    lua_setfield(a1, -2, "nparams");
    lua_pushBOOLean(a1, SBYTE6(v23[0]));
    lua_setfield(a1, -2, "isvararg");
  }

  if (cstdlib_strchr(v4, 110))
  {
    lua_pushstring(a1, *(&v20 + 1));
    lua_setfield(a1, -2, "name");
    lua_pushstring(a1, v21);
    lua_setfield(a1, -2, "namewhat");
  }

  if (cstdlib_strchr(v4, 116))
  {
    lua_pushBOOLean(a1, SBYTE7(v23[0]));
    lua_setfield(a1, -2, "istailcall");
  }

  if (cstdlib_strchr(v4, 76))
  {
    treatstackoption(a1, v2, "activelines");
  }

  if (cstdlib_strchr(v4, 102))
  {
    treatstackoption(a1, v2, "func");
  }

  return 1;
}

uint64_t db_getlocal(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v2 = getthread(a1, &v16);
  v3 = v16;
  v4 = luaL_checkinteger(a1, (v16 + 2));
  if (lua_type(a1, v3 + 1) == 6)
  {
    lua_pushvalue(a1, v3 + 1);
    v5 = lua_getlocal(a1, 0, v4);
    lua_pushstring(a1, v5);
    return 1;
  }

  memset(v17, 0, sizeof(v17));
  v7 = luaL_checkinteger(a1, (v3 + 1));
  if (!lua_getstack(v2, v7, v17))
  {
    return luaL_argerror(a1, (v3 + 1));
  }

  checkstack(a1, v2, 1, v8, v9, v10, v11, v12, v15);
  v13 = lua_getlocal(v2, v17, v4);
  if (!v13)
  {
    lua_pushnil(a1);
    return 1;
  }

  v14 = v13;
  lua_xmove(v2, a1, 1);
  lua_pushstring(a1, v14);
  lua_rotate(a1, -2, 1);
  return 2;
}

uint64_t db_getmetatable(void *a1)
{
  luaL_checkany(a1, 1);
  if (!lua_getmetatable(a1, 1))
  {
    lua_pushnil(a1);
  }

  return 1;
}

uint64_t db_upvaluejoin(void *a1)
{
  v2 = checkupval(a1, 1, 2);
  v3 = checkupval(a1, 3, 4);
  if (lua_iscfunction(a1, 1))
  {
    luaL_argerror(a1, 1);
  }

  if (lua_iscfunction(a1, 3))
  {
    luaL_argerror(a1, 3);
  }

  lua_upvaluejoin(a1, 1, v2, 3, v3);
  return 0;
}

uint64_t db_upvalueid(void *a1)
{
  v2 = checkupval(a1, 1, 2);
  v3 = lua_upvalueid(a1, 1, v2);
  lua_pushlightuserdata(a1, v3);
  return 1;
}

uint64_t db_setuservalue(void *a1)
{
  luaL_checktype(a1, 1, 7);
  luaL_checkany(a1, 2);
  lua_settop(a1, 2u);
  lua_setuservalue(a1, 1);
  return 1;
}

uint64_t db_sethook(uint64_t *a1)
{
  v21 = 0;
  v2 = getthread(a1, &v21);
  v3 = v21;
  if (lua_type(a1, v21 + 1) <= 0)
  {
    lua_settop(a1, v3 + 1);
    v13 = 0;
    v5 = 0;
    v12 = 0;
  }

  else
  {
    v4 = luaL_checklstring(a1, (v3 + 2), 0);
    luaL_checktype(a1, (v3 + 1), 6);
    v5 = luaL_optinteger(a1, (v3 + 3), 0);
    v6 = cstdlib_strchr(v4, 99);
    v7 = cstdlib_strchr(v4, 114);
    if (v6)
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6 != 0;
    }

    v10 = cstdlib_strchr(v4, 108);
    v11 = v9 | 4;
    if (!v10)
    {
      v11 = v9;
    }

    if (v5 <= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 | 8;
    }

    v13 = hookf;
  }

  if (!lua_rawgetp(a1, -1001000, &HOOKKEY))
  {
    lua_createtable(a1, 0, 2);
    lua_pushvalue(a1, -1);
    lua_rawsetp(a1, -1001000, &HOOKKEY);
    lua_pushstring(a1, "k");
    lua_setfield(a1, -2, "__mode");
    lua_pushvalue(a1, -1);
    lua_setmetatable(a1, -2);
  }

  checkstack(a1, v2, 1, v14, v15, v16, v17, v18, v20);
  lua_pushthread(v2);
  lua_xmove(v2, a1, 1);
  lua_pushvalue(a1, v3 + 1);
  lua_rawset(a1, -3);
  lua_sethook(v2, v13, v12, v5);
  return 0;
}

uint64_t db_setlocal(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v2 = getthread(a1, &v14);
  memset(v15, 0, sizeof(v15));
  v3 = v14;
  v4 = luaL_checkinteger(a1, (v14 + 1));
  v5 = luaL_checkinteger(a1, (v3 + 2));
  if (!lua_getstack(v2, v4, v15))
  {
    return luaL_argerror(a1, (v3 + 1));
  }

  luaL_checkany(a1, (v3 + 3));
  lua_settop(a1, v3 + 3);
  checkstack(a1, v2, 1, v6, v7, v8, v9, v10, v13);
  lua_xmove(a1, v2, 1);
  v11 = lua_setlocal(v2, v15, v5);
  if (!v11)
  {
    lua_settop(v2, 0xFFFFFFFE);
  }

  lua_pushstring(a1, v11);
  return 1;
}

uint64_t db_setmetatable(uint64_t *a1)
{
  v2 = lua_type(a1, 2);
  if (v2 && v2 != 5)
  {
    luaL_argerror(a1, 2);
  }

  lua_settop(a1, 2u);
  lua_setmetatable(a1, 1);
  return 1;
}

uint64_t db_setupvalue(void *a1)
{
  luaL_checkany(a1, 3);

  return auxupvalue(a1, 0);
}

uint64_t db_traceback(void *a1)
{
  v7 = 0;
  v2 = getthread(a1, &v7);
  v3 = v7;
  v4 = lua_tolstring(a1, v7 + 1, 0);
  if (v4 || lua_type(a1, v3 + 1) < 1)
  {
    v5 = luaL_optinteger(a1, (v3 + 2), v2 == a1);
    luaL_traceback(a1, v2, v4, v5);
  }

  else
  {
    lua_pushvalue(a1, v3 + 1);
  }

  return 1;
}

uint64_t getthread(void *a1, _DWORD *a2)
{
  if (lua_type(a1, 1) == 8)
  {
    *a2 = 1;

    return lua_tothread(a1, 1);
  }

  else
  {
    *a2 = 0;
    return a1;
  }
}

uint64_t hookf(void *a1, int *a2)
{
  lua_rawgetp(a1, -1001000, &HOOKKEY);
  lua_pushthread(a1);
  result = lua_rawget(a1, -2);
  if (result == 6)
  {
    lua_pushstring(a1, hookf_hooknames[*a2]);
    v5 = a2[10];
    if ((v5 & 0x80000000) != 0)
    {
      lua_pushnil(a1);
    }

    else
    {
      lua_pushinteger(a1, v5);
    }

    return lua_callk(a1, 2, 0, 0, 0);
  }

  return result;
}

uint64_t checkstack(uint64_t result, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (result != a2)
  {
    v9 = result;
    result = lua_checkstack(a2, a3);
    if (!result)
    {

      return luaL_error(v9, "stack overflow", v10, v11, v12, v13, v14, v15, a9);
    }
  }

  return result;
}

uint64_t *treatstackoption(void *a1, uint64_t a2, char *a3)
{
  if (a1 == a2)
  {
    lua_rotate(a1, -2, 1);
  }

  else
  {
    lua_xmove(a2, a1, 1);
  }

  return lua_setfield(a1, -2, a3);
}

uint64_t auxupvalue(void *a1, int a2)
{
  v4 = luaL_checkinteger(a1, 2);
  luaL_checktype(a1, 1, 6);
  if (a2)
  {
    lua_getupvalue(a1, 1, v4);
  }

  else
  {
    v5 = lua_setupvalue(a1, 1, v4);
  }

  if (!v5)
  {
    return 0;
  }

  lua_pushstring(a1, v5);
  v6 = (a2 + 1);
  lua_rotate(a1, ~a2, 1);
  return v6;
}

uint64_t checkupval(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = luaL_checkinteger(a1, a3);
  luaL_checktype(a1, a2, 6);
  lua_getupvalue(a1, a2, v6);
  if (!v7)
  {
    luaL_argerror(a1, a3);
  }

  return v6;
}

uint64_t lua_sethook(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = *(result + 32);
  if ((*(v4 + 66) & 2) != 0)
  {
    *(result + 40) = *(v4 + 40);
  }

  if (a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  *(result + 168) = v5;
  *(result + 188) = a4;
  *(result + 192) = a4;
  if (a2)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  *(result + 200) = v6;
  return result;
}

uint64_t lua_getstack(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = a1 + 96;
  v4 = *(a1 + 32);
  v5 = v4 != a1 + 96;
  if (a2 && v4 != a1 + 96)
  {
    do
    {
      v4 = *(v4 + 16);
      v5 = v4 != v3;
      --a2;
    }

    while (a2 && v4 != v3);
  }

  result = 0;
  if (!a2 && v5)
  {
    *(a3 + 120) = v4;
    return 1;
  }

  return result;
}

uint64_t lua_getlocal(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 10) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *v4;
    v6 = *(a1 + 56);
    *v4 = v6 + v4[7];
    v4[7] = v5 - v6;
  }

  if (a2)
  {
    v12 = 0;
    result = findlocal(a1, *(a2 + 120), a3, &v12);
    if (result)
    {
      **(a1 + 16) = *v12;
      *(a1 + 16) += 16;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (*(v8 - 8) == 70)
    {
      result = luaF_getlocalname(*(*(v8 - 16) + 24), a3, 0);
    }

    else
    {
      result = 0;
    }
  }

  if (*(a1 + 10) == 1)
  {
    v9 = *(a1 + 32);
    v10 = *v9;
    v11 = *(a1 + 56);
    *v9 = v11 + v9[7];
    v9[7] = v10 - v11;
  }

  return result;
}

const char *findlocal(uint64_t a1, void *a2, int a3, uint64_t *a4)
{
  if ((*(a2 + 66) & 2) != 0)
  {
    if (a3 < 0)
    {
      v12 = *(*(**a2 + 24) + 10);
      if ((((a2[4] - *a2) >> 4) - v12) <= -a3)
      {
        return 0;
      }

      v11 = *a2 + 16 * v12 + 16 * -a3;
      result = "(*vararg)";
      goto LABEL_13;
    }

    v8 = a2[4];
    result = luaF_getlocalname(*(**a2 + 24), a3, ((a2[5] - *(*(**a2 + 24) + 56)) >> 2) - 1);
    if (result)
    {
LABEL_12:
      v11 = v8 + 16 * a3 - 16;
LABEL_13:
      *a4 = v11;
      return result;
    }
  }

  else
  {
    v8 = *a2 + 16;
  }

  if (*(a1 + 32) == a2)
  {
    v9 = (a1 + 16);
  }

  else
  {
    v9 = a2[3];
  }

  result = 0;
  if (a3 >= 1 && (*v9 - v8) >> 4 >= a3)
  {
    result = "(*temporary)";
    goto LABEL_12;
  }

  return result;
}

const char *lua_setlocal(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  if (*(a1 + 10) == 1)
  {
    v4 = *(a1 + 32);
    v5 = *v4;
    v6 = *(a1 + 56);
    *v4 = v6 + v4[7];
    v4[7] = v5 - v6;
  }

  result = findlocal(a1, *(a2 + 120), a3, &v11);
  if (result)
  {
    *v11 = *(*(a1 + 16) - 16);
    *(a1 + 16) -= 16;
  }

  if (*(a1 + 10) == 1)
  {
    v8 = *(a1 + 32);
    v9 = *v8;
    v10 = *(a1 + 56);
    *v8 = v10 + v8[7];
    v8[7] = v9 - v10;
  }

  return result;
}

uint64_t lua_getinfo(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = a2;
  if (*(a1 + 10) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *v6;
    v8 = *(a1 + 56);
    *v6 = v8 + v6[7];
    v6[7] = v7 - v8;
  }

  if (*a2 == 62)
  {
    v9 = 0;
    v10 = *(a1 + 16) - 16;
    v4 = a2 + 1;
    *(a1 + 16) = v10;
  }

  else
  {
    v9 = *(a3 + 120);
    v10 = *v9;
  }

  v42 = v10;
  if ((*(v10 + 8) & 0x1F) == 6)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = 1;
  __s = v4;
  while (1)
  {
    v13 = *v4;
    if (v13 > 0x6B)
    {
      if (*v4 > 0x73u)
      {
        if (v13 == 116)
        {
          if (v9)
          {
            v20 = *(v9 + 66) & 0x20;
          }

          else
          {
            v20 = 0;
          }

          *(a3 + 55) = v20;
        }

        else
        {
          if (v13 != 117)
          {
            goto LABEL_29;
          }

          if (v11)
          {
            *(a3 + 52) = *(v11 + 10);
            if (*(v11 + 8) != 38)
            {
              *(a3 + 54) = *(*(v11 + 24) + 11);
              *(a3 + 53) = *(*(v11 + 24) + 10);
              goto LABEL_51;
            }
          }

          else
          {
            *(a3 + 52) = 0;
          }

          *(a3 + 53) = 256;
        }
      }

      else if (v13 == 108)
      {
        if (v9 && (*(v9 + 66) & 2) != 0 && (v17 = *(**v9 + 24), (v18 = *(v17 + 72)) != 0))
        {
          v19 = *(v18 + 4 * ((((*(v9 + 40) - *(v17 + 56)) << 30) - 0x100000000) >> 32));
        }

        else
        {
          v19 = -1;
        }

        *(a3 + 40) = v19;
      }

      else
      {
        if (v13 != 110)
        {
          goto LABEL_29;
        }

        if (v9 && (*(v9 + 66) & 0x20) == 0 && (v14 = *(v9 + 16), (*(v14 + 66) & 2) != 0))
        {
          if ((*(v14 + 66) & 4) != 0)
          {
            v30 = "?";
            v29 = "hook";
          }

          else
          {
            v24 = 0;
            v25 = *(**v14 + 24);
            v26 = v25[7];
            v27 = ((*(v14 + 40) - v26) >> 2) - 1;
            v28 = *(v26 + 4 * v27);
            v29 = "for iterator";
            v30 = "for iterator";
            switch(v28 & 0x3F)
            {
              case 8u:
              case 0xAu:
                v24 = 1;
                goto LABEL_55;
              case 0xDu:
              case 0xEu:
              case 0xFu:
              case 0x10u:
              case 0x12u:
              case 0x13u:
              case 0x14u:
              case 0x15u:
              case 0x16u:
              case 0x17u:
              case 0x18u:
                v24 = (*(v26 + 4 * v27) & 0x3Fu) - 7;
                goto LABEL_55;
              case 0x19u:
                v24 = 18;
                goto LABEL_55;
              case 0x1Au:
                v24 = 19;
                goto LABEL_55;
              case 0x1Cu:
                v24 = 4;
                goto LABEL_55;
              case 0x1Du:
                v24 = 22;
                goto LABEL_55;
              case 0x1Fu:
                v24 = 5;
                goto LABEL_55;
              case 0x20u:
                v24 = 20;
                goto LABEL_55;
              case 0x21u:
                v24 = 21;
                goto LABEL_55;
              case 0x24u:
              case 0x25u:
                v31 = getobjname(v25, v27, (v28 >> 6), (a3 + 8));
                *(a3 + 16) = v31;
                if (!v31)
                {
                  goto LABEL_17;
                }

                goto LABEL_51;
              case 0x29u:
                break;
              default:
LABEL_55:
                v30 = (*(*(a1 + 24) + 8 * v24 + 248) + 24);
                v29 = "metamethod";
                break;
            }
          }

          *(a3 + 8) = v30;
          *(a3 + 16) = v29;
        }

        else
        {
LABEL_17:
          *(a3 + 8) = 0;
          *(a3 + 16) = "";
        }
      }

      goto LABEL_51;
    }

    if (*v4 <= 0x52u)
    {
      break;
    }

    if (v13 != 83)
    {
      if (v13 == 102)
      {
        goto LABEL_51;
      }

LABEL_29:
      v12 = 0;
      goto LABEL_51;
    }

    if (v11 && *(v11 + 8) != 38)
    {
      v21 = *(v11 + 24);
      v22 = *(v21 + 104);
      if (v22)
      {
        v16 = (v22 + 24);
      }

      else
      {
        v16 = "=?";
      }

      *(a3 + 32) = v16;
      v23 = *(v21 + 40);
      *(a3 + 44) = v23;
      v15 = "Lua";
      if (!v23)
      {
        v15 = "main";
      }
    }

    else
    {
      *(a3 + 32) = "=[C]";
      *(a3 + 44) = -1;
      v15 = "C";
      v16 = "=[C]";
    }

    *(a3 + 24) = v15;
    luaO_chunkid((a3 + 56), v16, 0x3CuLL);
LABEL_51:
    ++v4;
  }

  if (v13 == 76)
  {
    goto LABEL_51;
  }

  if (*v4)
  {
    goto LABEL_29;
  }

  if (cstdlib_strchr(__s, 102))
  {
    **(a1 + 16) = *v42;
    *(a1 + 16) += 16;
  }

  if (*(a1 + 10) == 1)
  {
    v32 = *(a1 + 32);
    v33 = *v32;
    v34 = *(a1 + 56);
    *v32 = v34 + v32[7];
    v32[7] = v33 - v34;
  }

  if (cstdlib_strchr(__s, 76))
  {
    if (v11 && *(v11 + 8) != 38)
    {
      v44 = 0uLL;
      v36 = *(*(v11 + 24) + 72);
      v37 = luaH_new(a1);
      v38 = *(a1 + 16);
      *v38 = v37;
      *(v38 + 8) = 69;
      *(a1 + 16) += 16;
      v44.n128_u32[0] = 1;
      v44.n128_u32[2] = 1;
      if (*(*(v11 + 24) + 28) >= 1)
      {
        v39 = v37;
        v40 = 0;
        do
        {
          luaH_setint(a1, v39, *(v36 + 4 * v40++), &v44);
        }

        while (v40 < *(*(v11 + 24) + 28));
      }
    }

    else
    {
      v35 = *(a1 + 16);
      *(v35 + 8) = 0;
      *(a1 + 16) = v35 + 16;
    }
  }

  return v12;
}

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
  v9 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    luaO_chunkid(v8, (a3 + 24), 0x3CuLL);
  }

  else
  {
    *v8 = 63;
  }

  return luaO_pushfstring(a1, "%s:%d: %s", v8, a4, a2);
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

          if (cstdlib_strcmp(v33, "_ENV"))
          {
            return "field";
          }

          else
          {
            return "global";
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
      v12 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_26ECC7980)));
      if (vuzp1_s16(v12, *v9.i8).u8[0])
      {
        *(v10 - 8) = 0;
      }

      if (vuzp1_s16(v12, *&v9).i8[2])
      {
        *(v10 - 4) = 0;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v11, xmmword_26ECCE810)))).i32[1])
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
  v20 = *MEMORY[0x277D85DE8];
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
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      memset(v12, 0, sizeof(v12));
      LODWORD(v12[0]) = a2;
      DWORD2(v13) = a3;
      v18 = 0;
      v19 = v5;
      if (v8 - v6 <= 335)
      {
        luaD_growstack(result, 20);
        v6 = *(v4 + 16);
      }

      *(v5 + 8) = v6 + 320;
      *(v4 + 201) = 0;
      *(v5 + 66) |= 4u;
      result = v3(v4, v12);
      *(v4 + 201) = 1;
      v11 = *(v4 + 56);
      *(v5 + 8) = v11 + v9;
      *(v4 + 16) = v11 + v10;
      *(v5 + 66) &= ~4u;
    }
  }

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

uint64_t resume_error(uint64_t a1, char *a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v5 = luaS_new(a1, a2);
  *a3 = v5;
  *(a3 + 8) = *(v5 + 8) | 0x40;
  *(a1 + 16) += 16;

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
    result = cstdlib_strchr(__s, *a3);
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
  if (v5 || (v5 = (a3[1])(*a3, &v30, 4, a3[2]), *(a3 + 7) = v5, LODWORD(v30) = *(a1 + 44), v5) || (v5 = (a3[1])(*a3, &v30, 4, a3[2]), *(a3 + 7) = v5, LOBYTE(v30) = *(a1 + 10), v5) || (v5 = (a3[1])(*a3, &v30, 1, a3[2]), *(a3 + 7) = v5, LOBYTE(v30) = *(a1 + 11), v5) || (v5 = (a3[1])(*a3, &v30, 1, a3[2]), *(a3 + 7) = v5, LOBYTE(v30) = *(a1 + 12), v5) || (v5 = (a3[1])(*a3, &v30, 1, a3[2]), *(a3 + 7) = v5, LODWORD(v30) = *(a1 + 24), v5) || (v5 = (a3[1])(*a3, &v30, 4, a3[2]), (*(a3 + 7) = v5) != 0))
  {
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
        v46 = cstdlib_strchr((*v37 + 24), 107);
        result = cstdlib_strchr((*v37 + 24), 118);
        if (v46 | result)
        {
          *(v2 + 9) &= ~4u;
          if (v46)
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

          v56 = *(v2 + 11);
          v57 = *(v2 + 12) != 0;
          if (v56 != 31)
          {
            v58 = *(v2 + 24);
            v59 = v58 + 32 * (1 << v56);
            do
            {
              v60 = *(v58 + 24);
              if (*(v58 + 8))
              {
                if ((v60 & 0x40) != 0)
                {
                  v61 = *(v58 + 16);
                  if ((*(v61 + 9) & 3) != 0)
                  {
                    result = reallymarkobject(v1, v61);
                  }
                }

                if (v57)
                {
                  v57 = 1;
                }

                else
                {
                  result = iscleared(v1, v58);
                  v57 = result != 0;
                }
              }

              else if ((v60 & 0x40) != 0 && (*(*(v58 + 16) + 9) & 3) != 0)
              {
                *(v58 + 24) = 10;
              }

              v58 += 32;
            }

            while (v58 < v59);
          }

          if (*(v1 + 85))
          {
            if (!v57)
            {
LABEL_120:
              v15 = 32 * (1 << *(v2 + 11)) + 16 * *(v2 + 12) + 56;
              goto LABEL_121;
            }

            v62 = 128;
          }

          else
          {
            v62 = 120;
          }

          *(v2 + 48) = *(v1 + v62);
          *(v1 + v62) = v2;
          goto LABEL_120;
        }
      }
    }

LABEL_101:
    v47 = *(v2 + 24);
    v48 = v47 + 32 * (1 << *(v2 + 11));
    v49 = *(v2 + 12);
    if (v49)
    {
      v50 = 0;
      for (i = 0; i < v49; ++i)
      {
        v52 = *(v2 + 16) + v50;
        if ((*(v52 + 8) & 0x40) != 0 && (*(*v52 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, *v52);
          v49 = *(v2 + 12);
        }

        v50 += 16;
      }

      v47 = *(v2 + 24);
    }

    for (; v47 < v48; v47 += 32)
    {
      v53 = *(v47 + 8);
      v54 = *(v47 + 24);
      if (v53)
      {
        if ((v54 & 0x40) != 0)
        {
          v55 = *(v47 + 16);
          if ((*(v55 + 9) & 3) != 0)
          {
            result = reallymarkobject(v1, v55);
            v53 = *(v47 + 8);
          }
        }

        if ((v53 & 0x40) != 0 && (*(*v47 + 9) & 3) != 0)
        {
          result = reallymarkobject(v1, *v47);
        }
      }

      else if ((v54 & 0x40) != 0 && (*(*(v47 + 16) + 9) & 3) != 0)
      {
        *(v47 + 24) = 10;
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
            v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_26ECC7980)));
            if (vuzp1_s16(v45, 2).u8[0])
            {
              *(v43 - 8) = 0;
            }

            if (vuzp1_s16(v45, 2).i8[2])
            {
              *(v43 - 4) = 0;
            }

            if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_26ECCE810)))).i32[1])
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
      v16 = 120;
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
    v16 = 144;
    if (v12)
    {
      v16 = 136;
    }

    if (!*(a1 + 85))
    {
      v16 = 120;
LABEL_33:
      *(a2 + 48) = *(a1 + v16);
      *(a1 + v16) = a2;
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

uint64_t luaX_init(uint64_t a1)
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

  if (a2 > 0x120)
  {
    return luaX_tokens[a2 - 257];
  }

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
  v6 = *(v4 + 16);
  *(v4 + 16) = v6 + 16;
  *v6 = v5;
  *(v6 + 8) = *(v5 + 8) | 0x40;
  v7 = luaH_set(v4, *(a1 + 80), (*(v4 + 16) - 16));
  if (*(v7 + 2))
  {
    v5 = v7[2];
  }

  else
  {
    *v7 = 1;
    *(v7 + 2) = 1;
    if (*(*(v4 + 24) + 24) >= 1)
    {
      luaC_step(v4);
    }
  }

  *(v4 + 16) -= 16;
  return v5;
}

uint64_t luaX_setinput(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
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
  v115 = *MEMORY[0x277D85DE8];
  *(*(a1 + 9) + 8) = 0;
  while (2)
  {
    v4 = *a1;
    result = 289;
    switch(v4)
    {
      case -1:
        return result;
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
          return 45;
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
            return 281;
          }

          else
          {
            return 280;
          }
        }

        else if ((luai_ctype_[*a1 + 1] & 2) != 0)
        {
LABEL_167:

          return read_numeral(a1, a2);
        }

        else
        {
          return 46;
        }

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
          return 284;
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
          return 283;
        }

        v111 = 62;
        v112 = check_next1(a1, 62) == 0;
        v113 = 287;
LABEL_182:
        if (v112)
        {
          return v111;
        }

        else
        {
          return v113;
        }

      default:
        if (v4 == 91)
        {
          v63 = skip_sep(a1);
          if ((v63 & 0x80000000) == 0)
          {
            read_long_string(a1, a2, v63);
            return 293;
          }

          if (v63 != -1)
          {
            lexerror(a1, "invalid long string delimiter", 293);
          }

          return 91;
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
            return 285;
          }

          else
          {
            return 126;
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
              return *(v38 + 10) | 0x100u;
            }

            else
            {
              return 292;
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
            return v4;
          }
        }
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
      v107 = luaO_utf8esc(v114, v97);
      if (v107 >= 1)
      {
        v108 = v107 + 1;
        v109 = &v115 - v107;
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
  return 293;
}