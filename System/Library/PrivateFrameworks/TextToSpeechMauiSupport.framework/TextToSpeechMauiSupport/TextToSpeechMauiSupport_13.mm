uint64_t __LuaVMLDO_ReleaseObjects(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 48);
    if (!v3 || !v2[6] || (result = objc_ReleaseObject(v3, "FE_DCTLKP"), (v1 = v2[5]) != 0))
    {
      result = *(v1 + 48);
      if (result)
      {
        if (v2[7])
        {

          return objc_ReleaseObject(result, "DCTEG");
        }
      }
    }
  }

  return result;
}

uint64_t LuaVMLDO_Des(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    lua_close(v2);
    a1[2] = 0;
  }

  v3 = a1[9];
  if (v3)
  {
    OOCAllocator_Free(a1[1], v3);
  }

  __LuaVMLDO_ReleaseObjects(a1);

  return Object_Des();
}

uint64_t LuaVMLDO_FreeMemory(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 8), a2);
  }

  return 0;
}

uint64_t LuaVMLDO_IsLuaCodeAvailable(_WORD *a1, uint64_t a2, char *__src, _DWORD *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *__dst = 0u;
  v24 = 0u;
  *a4 = 0;
  if (!__src)
  {
    ErrorArg = __LuaVMLDO_ComposeBrokerString(a1, a2, __dst);
    if (ErrorArg)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  cstdlib_strcpy(__dst, __src);
  if (LH_stricmp(__src, "clm"))
  {
LABEL_5:
    v8 = "LUAC";
    goto LABEL_6;
  }

  v8 = "CLMP";
LABEL_6:
  v17 = ssftriff_reader_ObjOpen(a1, a2, 2, __dst, v8, 1031, &v22);
  if ((v17 & 0x80000000) == 0)
  {
    Chunk = ssftriff_reader_FindChunk(v22, "LUAA", 0, &v21, &v20);
    if (Chunk < 0)
    {
      if ((Chunk & 0x1FFF) == 0x14)
      {
        ErrorArg = 0;
        goto LABEL_16;
      }
    }

    else if ((ssftriff_reader_CloseChunk(v22) & 0x80000000) == 0)
    {
      ErrorArg = 0;
      *a4 = 1;
      goto LABEL_16;
    }

LABEL_15:
    ErrorArg = err_GenerateErrorArg();
    goto LABEL_16;
  }

  ErrorArg = 0;
  if ((v17 & 0x1FFF) != 3 && (v17 & 0x1FFF) != 0xD)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (v22 && (ssftriff_reader_ObjClose(v22, v9, v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    *a4 = 0;
    return err_GenerateErrorArg();
  }

  return ErrorArg;
}

uint64_t __LuaVMLDO_ComposeBrokerString(_WORD *a1, int a2, char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  __s2 = 0;
  v7 = 0;
  v5 = 0;
  memset(__dst, 0, sizeof(__dst));
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__src = 0u;
  if ((InitRsrcFunction(a1, a2, &v7) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  if ((paramc_ParamGetStr(*(v7 + 40), "langcode", &__s2) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  if ((paramc_ParamGetStr(*(v7 + 40), "fecfg", &v5) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  cstdlib_strcpy(__dst, "amalgamated/");
  cstdlib_strcat(__dst, __s2);
  cstdlib_strcat(__dst, "/");
  cstdlib_strcat(__dst, v5);
  if ((brokeraux_ComposeBrokerString(v7, __dst, 1, 1, __s2, 0, 0, __src, 0x80uLL) & 0x80000000) != 0)
  {
    return err_GenerateErrorArg();
  }

  cstdlib_strcpy(a3, __src);
  return 0;
}

uint64_t LuaVMLDO_IsLuaFunctionAvailable(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v6 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v6)
  {
    if (v6 == 4)
    {

      return err_GenerateErrorResource();
    }

    else
    {

      return err_GenerateErrorArg();
    }
  }

  else
  {
    if (lua_type(*(a1 + 16), -1) == 6)
    {
      *a3 = 1;
    }

    lua_settop(*(a1 + 16), 0xFFFFFFFE);
    return 0;
  }
}

uint64_t __LuaVMLDO_ProtectedGetGlobal(void *a1)
{
  v2 = lua_touserdata(a1, 1);
  lua_getglobal(a1, v2);
  return 1;
}

uint64_t LuaVMLDO_LoadScriptFromBuffer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(result) = luaL_loadbufferx(*(a1 + 16), a2, a3, "@ldoscriptchunk", 0);
  if (result || (result = lua_pcallk(*(a1 + 16), 0, 0, 0, 0, 0), result))
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

uint64_t LuaVMLDO_LoadScriptFromRIFF(uint64_t a1, char *__src)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *__dst = 0u;
  v28 = 0u;
  if (!*(a1 + 40))
  {
    goto LABEL_27;
  }

  if (__src)
  {
    cstdlib_strcpy(__dst, __src);
    if (!LH_stricmp(__src, "clm"))
    {
      v4 = 0;
      v5 = "CLMP";
      goto LABEL_8;
    }
  }

  else
  {
    result = __LuaVMLDO_ComposeBrokerString(*(a1 + 24), *(a1 + 32), __dst);
    v26 = result;
    if (result)
    {
      goto LABEL_28;
    }
  }

  v5 = "LUAC";
  v4 = 1;
LABEL_8:
  v14 = ssftriff_reader_ObjOpen(*(a1 + 24), *(a1 + 32), 2, __dst, v5, 1031, &v25);
  if (v14 < 0)
  {
    v17 = v14;
    result = 0;
    v18 = v17 & 0x1FFF;
    if (v18 == 3 || v18 == 13)
    {
      goto LABEL_28;
    }

LABEL_27:
    result = err_GenerateErrorArg();
    v26 = result;
    goto LABEL_28;
  }

  if ((ssftriff_reader_FindChunk(v25, "LUAA", 0, &v23, &v24) & 0x80000000) != 0)
  {
    goto LABEL_27;
  }

  v15 = OOCAllocator_Calloc(*(a1 + 8), v23, 1, &v26);
  if (v26)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    v16 = 0;
  }

  else
  {
    v22 = v23;
    if ((ssftriff_reader_ReadStringZ(v25, v24, v23, 0, v15, &v22) & 0x80000000) != 0)
    {
LABEL_21:
      ErrorArg = err_GenerateErrorArg();
      goto LABEL_22;
    }

    v16 = v22;
  }

  if ((ssftriff_reader_ReadStringZ(v25, v24, v23, v16, v15, &v23) & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  ErrorArg = LuaVMLDO_LoadScriptFromBuffer(a1, v15, v23 - 1);
LABEL_22:
  v26 = ErrorArg;
LABEL_23:
  if (v15)
  {
    OOCAllocator_Free(*(a1 + 8), v15);
  }

  v20 = ssftriff_reader_CloseChunk(v25);
  result = v26;
  if (v20 < 0 && !v26)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v25)
  {
    v21 = ssftriff_reader_ObjClose(v25, v7, v8, v9, v10, v11, v12, v13);
    result = v26;
    if (v21 < 0 && !v26)
    {
      return err_GenerateErrorArg();
    }
  }

  return result;
}

uint64_t LuaVMLDO_RunFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v6 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v6)
  {
    if (v6 == 4)
    {
LABEL_3:

      return err_GenerateErrorResource();
    }
  }

  else if (lua_type(*(a1 + 16), -1) == 6)
  {
    lua_pushcclosure(*(a1 + 16), __LuaVMLDO_CreateLuaLDO, 0);
    lua_pushlightuserdata(*(a1 + 16), a3);
    LODWORD(result) = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
    if (!result)
    {
      result = lua_pcallk(*(a1 + 16), 1, 0, 0, 0, 0);
      if (!result)
      {
        return result;
      }
    }

    if (result == 4)
    {
      goto LABEL_3;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t __LuaVMLDO_CreateLuaLDO(uint64_t *a1)
{
  v2 = lua_touserdata(a1, 1);
  *lua_newuserdata(a1, 8uLL) = v2;
  getMetatableLua(a1, "vocalizer.LDO");
  lua_setmetatable(a1, -2);
  return 1;
}

uint64_t LuaVMLDO_RunFunctionReturningPointerToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v8)
  {
    if (v8 == 4)
    {
LABEL_3:

      return err_GenerateErrorResource();
    }
  }

  else if (lua_type(*(a1 + 16), -1) == 6)
  {
    result = __LuaVMLDO_PushStringProtected(*(a1 + 16), a3);
    if (result)
    {
      return result;
    }

    v10 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
    if (v10)
    {
      if (v10 == 4)
      {
        goto LABEL_3;
      }
    }

    else if (lua_isstring(*(a1 + 16), -1))
    {
      v11 = lua_tolstring(*(a1 + 16), -1, 0);
      result = 0;
      *a4 = v11;
      return result;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t __LuaVMLDO_PushStringProtected(uint64_t a1, uint64_t a2)
{
  lua_pushcclosure(a1, __LuaVMLDO_PushStringProtected_AuxCFunction, 0);
  lua_pushlightuserdata(a1, a2);
  result = lua_pcallk(a1, 1, 1, 0, 0, 0);
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

uint64_t LuaVMLDO_RunFunctionReturningString(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5)
{
  __s = 0;
  v8 = LuaVMLDO_RunFunctionReturningPointerToString(a1, a2, a3, &__s);
  if (!v8)
  {
    v9 = __s;
    if (cstdlib_strlen(__s) + 1 <= a4)
    {
      cstdlib_strcpy(a5, v9);
    }

    else
    {
      err_GenerateErrorArg();
    }

    lua_settop(*(a1 + 16), 0xFFFFFFFE);
  }

  return v8;
}

void LuaVMLDO_RunFunctionReturningTable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v6 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v6)
  {
    if (v6 == 4)
    {
LABEL_3:

      err_GenerateErrorResource();
      return;
    }

    goto LABEL_9;
  }

  if (lua_type(*(a1 + 16), -1) != 6)
  {
    goto LABEL_9;
  }

  v7 = lua_pcallk(*(a1 + 16), 0, 1, 0, 0, 0);
  if (v7)
  {
    if (v7 == 4)
    {
      goto LABEL_3;
    }

    goto LABEL_9;
  }

  if (lua_type(*(a1 + 16), -1) != 5)
  {
LABEL_9:

    err_GenerateErrorArg();
    return;
  }

  lua_pushnil(*(a1 + 16));
  while (lua_next(*(a1 + 16), -2))
  {
    if (!lua_isstring(*(a1 + 16), -2))
    {
      goto LABEL_9;
    }

    v8 = lua_tolstring(*(a1 + 16), -2, 0);
    if (lua_type(*(a1 + 16), -1) != 1)
    {
      goto LABEL_9;
    }

    v9 = lua_toBOOLean(*(a1 + 16), -1) == 1;
    LDOObject_SetBoolAttribute(a3, v8, v9);
    if (v10)
    {
      return;
    }

    lua_settop(*(a1 + 16), 0xFFFFFFFE);
  }

  lua_settop(*(a1 + 16), 0xFFFFFFFE);
}

uint64_t LuaVMLDO_RunFunctionWithLDOAndTableArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v8)
  {
    if (v8 == 4)
    {
LABEL_3:

      return err_GenerateErrorResource();
    }
  }

  else if (lua_type(*(a1 + 16), -1) == 6)
  {
    lua_pushcclosure(*(a1 + 16), __LuaVMLDO_CreateLuaLDO, 0);
    lua_pushlightuserdata(*(a1 + 16), a3);
    LODWORD(result) = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
    if (!result)
    {
      lua_pushcclosure(*(a1 + 16), __LuaVMLDO_PushTableFromLDOObject, 0);
      lua_pushlightuserdata(*(a1 + 16), a4);
      LODWORD(result) = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
      if (!result)
      {
        result = lua_pcallk(*(a1 + 16), 2, 0, 0, 0, 0);
        if (!result)
        {
          return result;
        }
      }
    }

    if (result == 4)
    {
      goto LABEL_3;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t __LuaVMLDO_PushTableFromLDOObject(void *a1)
{
  v2 = lua_touserdata(a1, 1);
  lua_createtable(a1, 0, 0);
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  while (v4 < v3)
  {
    if (*(v4 + 8) == 4)
    {
      v5 = *(v4 + 12);
      v6 = LHString_BorrowCPtr(*v4);
      lua_pushstring(a1, v6);
      lua_pushBOOLean(a1, v5 == 1);
      lua_settable(a1, -3);
    }

    v4 += 32;
  }

  return 1;
}

uint64_t LuaVMLDO_RunFunctionWithStringAndMarkerArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, unsigned int a6)
{
  lua_checkstack(*(a1 + 16), 10);
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v12 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v12)
  {
    goto LABEL_2;
  }

  if (lua_type(*(a1 + 16), -1) != 6)
  {
    goto LABEL_28;
  }

  result = __LuaVMLDO_PushStringProtected(*(a1 + 16), a3);
  if (result)
  {
    return result;
  }

  if (!a6)
  {
    lua_createtable(*(a1 + 16), 0, 0);
    v15 = -1;
LABEL_19:
    v12 = lua_pcallk(*(a1 + 16), 2, 2, 0, 0, 0);
    if (v12)
    {
LABEL_2:
      if (v12 == 4)
      {

        return err_GenerateErrorResource();
      }

      goto LABEL_28;
    }

    if (lua_type(*(a1 + 16), -1) == 5)
    {
      if (a6)
      {
        v19 = a6;
        v20 = a5 + 4;
        v21 = 1;
        do
        {
          lua_rawgeti(*(a1 + 16), -1, v21);
          v22 = *(a1 + 16);
          v26 = 0;
          result = __LuaVMLDO_GetTableKeyIntValue(v22, "__pos", &v26);
          if (result)
          {
            return result;
          }

          v25 = 0;
          result = __LuaVMLDO_GetTableKeyIntValue(v22, "__len", &v25);
          if (result)
          {
            return result;
          }

          v23 = v25;
          *(v20 - 1) = v15 + v26;
          *v20 = v23;
          lua_settop(*(a1 + 16), 0xFFFFFFFE);
          v20 += 8;
          ++v21;
        }

        while (--v19);
      }

      lua_settop(*(a1 + 16), 0xFFFFFFFE);
      if (lua_isstring(*(a1 + 16), -1))
      {
        v24 = lua_tolstring(*(a1 + 16), -1, 0);
        result = 0;
        *a4 = v24;
        return result;
      }
    }

LABEL_28:

    return err_GenerateErrorArg();
  }

  if (*a5 == 0x4000)
  {
    v14 = a5[3];
  }

  else
  {
    v14 = 0;
  }

  lua_createtable(*(a1 + 16), 0, 0);
  v16 = a6;
  v17 = 1;
  v18 = a5;
  while (1)
  {
    result = __LuaVMLDO_PutMarkerOnStack(*(a1 + 16), v18, v14);
    if (result)
    {
      return result;
    }

    lua_rawseti(*(a1 + 16), -2, v17);
    v18 += 8;
    ++v17;
    if (!--v16)
    {
      v15 = v14 - 1;
      goto LABEL_19;
    }
  }
}

uint64_t __LuaVMLDO_PutMarkerOnStack(void *a1, int *a2, int a3)
{
  lua_createtable(a1, 0, 0);
  result = __LuaVMLDO_SetTableKeyIntValue(a1, "__type", *a2);
  if (!result)
  {
    result = __LuaVMLDO_SetTableKeyIntValue(a1, "__pos", a2[3] - a3 + 1);
    if (!result)
    {
      result = __LuaVMLDO_SetTableKeyIntValue(a1, "__len", a2[4]);
      if (!result)
      {
        ArgType = marker_getArgType(*a2);
        if ((ArgType - 2) >= 3)
        {
          if (ArgType == 1)
          {
            v9 = a2[6];
            v10 = a1;
          }

          else
          {
            v10 = a1;
            v9 = 0;
          }

          return __LuaVMLDO_SetTableKeyIntValue(v10, "__arg", v9);
        }

        else
        {
          v8 = *(a2 + 3);
          if (!v8)
          {
            v8 = "";
          }

          return __LuaVMLDO_SetTableKeyStringValue(a1, "__arg", v8);
        }
      }
    }
  }

  return result;
}

uint64_t LuaVMLDO_RunFunctionWithStringAndMarkerArgumentsReturningTableWithNewMarkersInfo(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, unsigned int a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  lua_checkstack(*(a1 + 16), 10);
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v12 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v12)
  {
    goto LABEL_2;
  }

  if (lua_type(*(a1 + 16), -1) != 6)
  {
    goto LABEL_10;
  }

  result = __LuaVMLDO_PushStringProtected(*(a1 + 16), a3);
  if (result)
  {
    return result;
  }

  if (!a5)
  {
    lua_createtable(*(a1 + 16), 0, 0);
    v14 = 0;
LABEL_21:
    v12 = lua_pcallk(*(a1 + 16), 2, 1, 0, 0, 0);
    if (v12)
    {
LABEL_2:
      if (v12 == 4)
      {

        return err_GenerateErrorResource();
      }

      goto LABEL_10;
    }

    if (lua_type(*(a1 + 16), -1) == 5)
    {
      v18 = 0;
      lua_pushnil(*(a1 + 16));
      while (1)
      {
        if (!lua_next(*(a1 + 16), -2))
        {
          lua_settop(*(a1 + 16), 0xFFFFFFFE);
          return 0;
        }

        result = LuaVMUtil_luainteger_to_u32_index(*(a1 + 16), -2, &v18);
        if (result)
        {
          return result;
        }

        LH_itoa(v18 + v14, v19, 0xAu);
        if (!lua_isstring(*(a1 + 16), -1))
        {
          break;
        }

        v17 = lua_tolstring(*(a1 + 16), -1, 0);
        result = LDOObject_SetStringAttribute(a6, v19, v17);
        if (result)
        {
          return result;
        }

        lua_settop(*(a1 + 16), 0xFFFFFFFE);
      }

      return err_GenerateErrorArg();
    }

LABEL_10:

    return err_GenerateErrorArg();
  }

  if (*a4 == 0x4000)
  {
    v14 = a4[3];
  }

  else
  {
    v14 = 0;
  }

  lua_createtable(*(a1 + 16), 0, 0);
  v15 = a5;
  v16 = 1;
  while (1)
  {
    result = __LuaVMLDO_PutMarkerOnStack(*(a1 + 16), a4, v14);
    if (result)
    {
      return result;
    }

    lua_rawseti(*(a1 + 16), -2, v16);
    a4 += 8;
    ++v16;
    if (!--v15)
    {
      goto LABEL_21;
    }
  }
}

uint64_t LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v8)
  {
    goto LABEL_2;
  }

  if (lua_type(*(a1 + 16), -1) != 6)
  {
    goto LABEL_10;
  }

  result = __LuaVMLDO_PushStringProtected(*(a1 + 16), a3);
  if (result)
  {
    return result;
  }

  v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v8)
  {
LABEL_2:
    if (v8 == 4)
    {

      return err_GenerateErrorResource();
    }

    goto LABEL_10;
  }

  if (lua_type(*(a1 + 16), -1) != 5)
  {
LABEL_10:

    return err_GenerateErrorArg();
  }

  lua_pushnil(*(a1 + 16));
  while (lua_next(*(a1 + 16), -2))
  {
    if (!lua_isstring(*(a1 + 16), -2))
    {
      goto LABEL_10;
    }

    v10 = lua_tolstring(*(a1 + 16), -2, 0);
    if (!lua_isstring(*(a1 + 16), -1))
    {
      goto LABEL_10;
    }

    v11 = lua_tolstring(*(a1 + 16), -1, 0);
    result = LDOObject_SetStringAttribute(a4, v10, v11);
    if (result)
    {
      return result;
    }

    lua_settop(*(a1 + 16), 0xFFFFFFFE);
  }

  lua_settop(*(a1 + 16), 0xFFFFFFFE);
  return 0;
}

uint64_t LuaVMLDO_RunFunctionWithTnplusWordsArgumentReturningJSONString(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v10 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v10)
  {
    goto LABEL_2;
  }

  if (lua_type(*(a1 + 16), -1) != 6)
  {
LABEL_70:

    return err_GenerateErrorArg();
  }

  lua_createtable(*(a1 + 16), 0, 0);
  if (a3)
  {
    v12 = 0;
    v13 = 160 * a3;
    v14 = 1;
    do
    {
      v15 = *(a1 + 16);
      lua_createtable(v15, 0, 0);
      result = __LuaVMLDO_SetTableKeyStringValue(v15, "orth", *(a4 + v12));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "phon", *(a4 + v12 + 8));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "punc_beg", *(a4 + v12 + 16));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "punc_end", *(a4 + v12 + 24));
      if (result)
      {
        return result;
      }

      lua_createtable(v15, 0, 0);
      result = __LuaVMLDO_SetTableKeyStringValue(v15, "token", *(a4 + v12 + 32));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyBooleanValue(v15, "spell", *(a4 + v12 + 40));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "stylename", *(a4 + v12 + 48));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "styleintensity", *(a4 + v12 + 56));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyBooleanValue(v15, "compound", *(a4 + v12 + 64));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyBooleanValue(v15, "oriorthjoined", *(a4 + v12 + 68));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "phrasetype", *(a4 + v12 + 72));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "language", *(a4 + v12 + 80));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "audiosrc", *(a4 + v12 + 88));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "origortho", *(a4 + v12 + 96));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "break", *(a4 + v12 + 104));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyBooleanValue(v15, "userphon", *(a4 + v12 + 112));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "tone", *(a4 + v12 + 120));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyIntValue(v15, "sildur", *(a4 + v12 + 128));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyIntValue(v15, "volume", *(a4 + v12 + 132));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyIntValue(v15, "pitch", *(a4 + v12 + 136));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyIntValue(v15, "rate", *(a4 + v12 + 140));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyIntValue(v15, "timbre", *(a4 + v12 + 144));
      if (result)
      {
        return result;
      }

      result = __LuaVMLDO_SetTableKeyStringValue(v15, "loo", *(a4 + v12 + 152));
      if (result)
      {
        return result;
      }

      lua_setfield(v15, -2, "metadata");
      lua_rawseti(*(a1 + 16), -2, v14++);
      v12 += 160;
    }

    while (v13 != v12);
  }

  v10 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (v10)
  {
LABEL_2:
    if (v10 == 4)
    {

      return err_GenerateErrorResource();
    }

    goto LABEL_70;
  }

  v40 = 0;
  __n = 0;
  if (lua_type(*(a1 + 16), -1) != 5)
  {
LABEL_73:
    result = err_GenerateErrorArg();
    v40 = result;
LABEL_74:
    if (result)
    {
      goto LABEL_75;
    }

    return result;
  }

  v39 = 0x2000;
  v16 = OOCAllocator_Malloc(*(a1 + 8), 0x2000, &v40);
  *a5 = v16;
  result = v40;
  if (v40)
  {
    goto LABEL_76;
  }

  *v16 = 91;
  lua_pushnil(*(a1 + 16));
  v17 = 1;
  if (!lua_next(*(a1 + 16), -2))
  {
LABEL_67:
    result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v17 + 1, &v39);
    v40 = result;
    if (result)
    {
      goto LABEL_75;
    }

    *(*a5 + v17) = 93;
    result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v17 + 2, &v39);
    v40 = result;
    if (result)
    {
      goto LABEL_75;
    }

    *(*a5 + v17 + 1) = 0;
    lua_settop(*(a1 + 16), 0xFFFFFFFE);
    result = v40;
    goto LABEL_74;
  }

  while (1)
  {
    if (lua_type(*(a1 + 16), -1) != 5)
    {
      goto LABEL_73;
    }

    result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v17 + 2, &v39);
    v40 = result;
    if (result)
    {
      goto LABEL_75;
    }

    v18 = *a5;
    v19 = (*a5 + v17);
    if (*(v19 - 1) == 93)
    {
      ++v17;
      *v19 = 44;
      v18 = *a5;
    }

    v20 = v17 + 1;
    *(v18 + v17) = 91;
    lua_pushnil(*(a1 + 16));
LABEL_43:
    if (lua_next(*(a1 + 16), -2))
    {
      break;
    }

    lua_settop(*(a1 + 16), 0xFFFFFFFE);
    v17 = v20 + 1;
    result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v20 + 1, &v39);
    v40 = result;
    if (result)
    {
      goto LABEL_75;
    }

    *(*a5 + v20) = 93;
    if (!lua_next(*(a1 + 16), -2))
    {
      goto LABEL_67;
    }
  }

  if (lua_type(*(a1 + 16), -1) != 5)
  {
    goto LABEL_43;
  }

  result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v20 + 2, &v39);
  v40 = result;
  if (result)
  {
    goto LABEL_75;
  }

  v21 = *a5;
  v22 = (*a5 + v20);
  if (*(v22 - 1) == 125)
  {
    ++v20;
    *v22 = 44;
    v21 = *a5;
  }

  v23 = v20 + 1;
  *(v21 + v20) = 123;
  lua_pushnil(*(a1 + 16));
  while (lua_next(*(a1 + 16), -2))
  {
    v24 = lua_type(*(a1 + 16), -1);
    v25 = *(a1 + 16);
    if (v24 == 4)
    {
      v26 = lua_tolstring(v25, -1, &__n);
      if (!v26)
      {
        goto LABEL_73;
      }

      v27 = v26;
      if (!cstdlib_strcmp(v26, "\"))
      {
        __n = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v28 = lua_tointegerx(v25, -1, 0);
      v27 = __s;
      LH_itoa(v28, __s, 0xAu);
      __n = cstdlib_strlen(__s);
    }

    if (!lua_isnumber(*(a1 + 16), -2))
    {
      goto LABEL_73;
    }

    v29 = lua_tointegerx(*(a1 + 16), -2, 0);
    v30 = *(&off_279DAC408 + v29);
    v31 = qword_26ECCECC8[v29];
    result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v23 + __n + v31 + 4, &v39);
    v40 = result;
    if (result)
    {
      goto LABEL_75;
    }

    v32 = *a5;
    v33 = (*a5 + v23);
    if (*(v33 - 1) != 123)
    {
      ++v23;
      *v33 = 44;
      v32 = *a5;
    }

    cstdlib_memcpy((v32 + v23), v30, v31);
    v34 = v23 + v31;
    v35 = v23 + v31 + 1;
    *(*a5 + v34) = 58;
    v36 = *a5;
    if (v24 == 4)
    {
      v37 = v34 + 2;
      *(v36 + v35) = 34;
      cstdlib_memcpy((*a5 + v34 + 2), v27, __n);
      v23 = __n + v37 + 1;
      *(*a5 + __n + v37) = 34;
    }

    else
    {
      cstdlib_memcpy((v36 + v35), v27, __n);
      v23 = __n + v35;
    }

LABEL_62:
    lua_settop(*(a1 + 16), 0xFFFFFFFE);
  }

  v20 = v23 + 1;
  result = hlpDoubleBufferIfNeeded(*(a1 + 8), a5, v23 + 1, &v39);
  v40 = result;
  if (!result)
  {
    *(*a5 + v23) = 125;
    lua_settop(*(a1 + 16), 0xFFFFFFFE);
    goto LABEL_43;
  }

LABEL_75:
  v16 = *a5;
LABEL_76:
  if (v16)
  {
    OOCAllocator_Free(*(a1 + 8), v16);
    *a5 = 0;
    return v40;
  }

  return result;
}

uint64_t PNEW_LuaVMLDO_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 80, &v14);
  result = v14;
  if (!v14)
  {
    result = LuaVMLDO_Con(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *a6 = v12;
    }
  }

  return result;
}

uint64_t hlpDoubleBufferIfNeeded(uint64_t a1, uint64_t *a2, unint64_t a3, unint64_t *a4)
{
  v4 = 0;
  v9 = 0;
  v5 = *a4;
  if (*a4 < a3)
  {
    if (2 * v5 > a3)
    {
      a3 = 2 * v5;
    }

    *a4 = a3;
    v7 = OOCAllocator_Realloc(a1, *a2, a3, &v9);
    v4 = v9;
    if (!v9)
    {
      *a2 = v7;
    }
  }

  return v4;
}

uint64_t __LuaVMLDO_GetTableKeyIntValue(void *a1, char *a2, _DWORD *a3)
{
  if (lua_type(a1, -1) == 5)
  {
    if (lua_getfield(a1, -1, a2) == 3)
    {
      ErrorArg = 0;
    }

    else
    {
      ErrorArg = err_GenerateErrorArg();
    }

    *a3 = lua_tointegerx(a1, -1, 0);
    lua_settop(a1, 0xFFFFFFFE);
    return ErrorArg;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t __LuaVMLDO_OpenParametersLib(uint64_t a1)
{
  result = __LuaVMLDO_OpenLib(a1, luaopen_Parameters);
  if (!result)
  {
    lua_pushcclosure(*(a1 + 16), init_LuaParameters, 0);
    v3 = *(a1 + 40);
    v4 = *(a1 + 16);
    if (v3)
    {
      lua_pushlightuserdata(v4, *(v3 + 40));
    }

    else
    {
      lua_pushnil(v4);
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
  }

  return result;
}

uint64_t __LuaVMLDO_OpenLib(uint64_t a1, uint64_t a2)
{
  lua_pushcclosure(*(a1 + 16), a2, 0);
  result = lua_pcallk(*(a1 + 16), 0, 0, 0, 0, 0);
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

uint64_t __LuaVMLDO_PushStringProtected_AuxCFunction(void *a1)
{
  v2 = lua_touserdata(a1, 1);
  lua_pushstring(a1, v2);
  return 1;
}

uint64_t __LuaVMLDO_SetTableKeyIntValue(void *a1, char *a2, int a3)
{
  if (lua_type(a1, -1) == 5)
  {
    lua_pushinteger(a1, a3);
    lua_setfield(a1, -2, a2);
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t __LuaVMLDO_SetTableKeyStringValue(void *a1, char *a2, uint64_t a3)
{
  if (lua_type(a1, -1) == 5)
  {
    result = __LuaVMLDO_PushStringProtected(a1, a3);
    if (!result)
    {
      lua_setfield(a1, -2, a2);
      return 0;
    }
  }

  else
  {

    return err_GenerateErrorArg();
  }

  return result;
}

uint64_t __LuaVMLDO_SetTableKeyBooleanValue(void *a1, char *a2, int a3)
{
  if (lua_type(a1, -1) == 5)
  {
    v6 = LuaVMUtil_lhBOOL_to_luaBOOLean(a3);
    lua_pushBOOLean(a1, v6);
    lua_setfield(a1, -2, a2);
    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t LuaVMUtil_pushLuaStringAndDestroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = LHString_BorrowCPtr(a2);
    lua_pushstring(a1, v4);
    v5 = LDOString_BorrowAllocator(a2);
    OOC_PlacementDeleteObject(v5, a2);
  }

  return 0;
}

uint64_t LuaVMUtil_luainteger_to_u32_index(void *a1, int a2, _DWORD *a3)
{
  if (lua_isinteger(a1, a2) && (v6 = lua_tointegerx(a1, a2, 0), v6 > 0))
  {
    if (a3)
    {
      *a3 = v6 - 1;
    }

    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t LuaVMUtil_luainteger_to_u32(void *a1, int a2, _DWORD *a3)
{
  if (!lua_isinteger(a1, a2) || (v6 = lua_tointegerx(a1, a2, 0), v6 < 0))
  {

    return err_GenerateErrorArg();
  }

  else
  {
    if (a3)
    {
      *a3 = v6;
    }

    return 0;
  }
}

uint64_t LuaVMUtil_luainteger_to_s32(void *a1, int a2, _DWORD *a3)
{
  if (lua_isinteger(a1, a2))
  {
    if (a3)
    {
      *a3 = lua_tointegerx(a1, a2, 0);
    }

    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t LuaVMUtil_luaBOOLean_to_lhBOOL(void *a1, int a2, _DWORD *a3)
{
  if (lua_type(a1, a2) == 1)
  {
    if (a3)
    {
      *a3 = lua_toBOOLean(a1, a2) == 1;
    }

    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t LuaVMUtil_luastring_to_string(void *a1, int a2, uint64_t *a3)
{
  if (lua_isstring(a1, a2))
  {
    if (a3)
    {
      *a3 = lua_tolstring(a1, a2, 0);
    }

    return 0;
  }

  else
  {

    return err_GenerateErrorArg();
  }
}

uint64_t LuaVMUtil_luatable_to_u32array(void *a1, int a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  v16 = 0;
  *a5 = 0;
  *a4 = 0;
  lua_len(a1, a2);
  v10 = lua_gettop(a1);
  result = LuaVMUtil_luainteger_to_u32(a1, v10, a5);
  v17 = result;
  if (!result)
  {
    lua_settop(a1, 0xFFFFFFFE);
    v13 = *a5;
    if (!v13)
    {
      return 0;
    }

    v12 = OOCAllocator_Calloc(a3, v13, 4, &v17);
    *a4 = v12;
    result = v17;
    if (v17)
    {
      goto LABEL_3;
    }

    lua_pushnil(a1);
    if (lua_next(a1, a2))
    {
      v14 = 0;
      while (1)
      {
        v15 = lua_gettop(a1);
        result = LuaVMUtil_luainteger_to_u32(a1, v15, &v16);
        v17 = result;
        if (result)
        {
          break;
        }

        *(*a4 + 4 * v14++) = v16;
        lua_settop(a1, 0xFFFFFFFE);
        if (!lua_next(a1, a2))
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      lua_settop(a1, 0xFFFFFFFE);
      result = v17;
      if (!v17)
      {
        return result;
      }
    }
  }

  v12 = *a4;
LABEL_3:
  if (v12)
  {
    OOCAllocator_Free(a3, v12);
    *a4 = 0;
    return v17;
  }

  return result;
}

uint64_t LuaVMUtil_error(void *a1, char *a2)
{
  if (!a2)
  {
    a2 = "Unknown Lua error";
  }

  lua_pushstring(a1, a2);
  log_LuaLog(a1);

  return lua_error(a1);
}

uint64_t LuaVMUtil_RegisterRSRC(void *a1)
{
  if (lua_type(a1, 1) == 2)
  {
    lua_setfield(a1, -1001000, "LUA_RSRC_ST");
  }

  return 0;
}

uint64_t LuaVMUtil_GetObjc(void *a1)
{
  if (lua_getfield(a1, -1001000, "LUA_RSRC_ST") != 2)
  {
    return 0;
  }

  result = lua_touserdata(a1, -1);
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t LuaVMUtil_GetRsrc(void *a1)
{
  if (lua_getfield(a1, -1001000, "LUA_RSRC_ST") != 2)
  {
    return 0;
  }

  result = lua_touserdata(a1, -1);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t luaopen_luautf8(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &off_287EEAAD8, sizeof(__dst));
  luaL_checkversion_(a1, 136, 503.0, v2, v3, v4, v5, v6, v7, v14);
  lua_createtable(a1, 0, 24);
  luaL_setfuncs(a1, __dst, 0, v8, v9, v10, v11, v12);
  lua_pushlstring(a1, "[", 0xEuLL);
  lua_setfield(a1, -2, "charpattern");
  lua_setglobal(a1, "luautf8");
  return 1;
}

uint64_t Lutf8_offset(void *a1)
{
  v22 = 0;
  v2 = luaL_checklstring(a1, 1, &v22);
  v3 = luaL_checkinteger(a1, 2);
  if (v3 < 0)
  {
    v4 = v22 + 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = luaL_optinteger(a1, 3, v4);
  v12 = v5;
  if (v5 < 0)
  {
    v12 = 0;
    if (v22 < -v5)
    {
LABEL_9:
      luaL_argerror(a1, 3);
      goto LABEL_10;
    }

    v12 = v5 + v22 + 1;
  }

  v13 = v12 - 1;
  if (v12 < 1)
  {
    goto LABEL_9;
  }

  --v12;
  if (v13 > v22)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!v3)
  {
    if (v12 >= 1)
    {
      while ((*(v2 + v12) & 0xC0) == 0x80)
      {
        if (v12-- <= 1)
        {
          v12 = 0;
          goto LABEL_36;
        }
      }
    }

    goto LABEL_36;
  }

  if ((*(v2 + v12) & 0xC0) == 0x80)
  {
    return luaL_error(a1, "initial position is a continuation byte", v6, v7, v8, v9, v10, v11, v21);
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    v16 = v3 - 1;
    if (v3 == 1 || v12 >= v22)
    {
      v18 = v3 - 1;
    }

    else
    {
      do
      {
        do
        {
          v17 = *(v2 + 1 + v12++);
        }

        while ((v17 & 0xC0) == 0x80);
        v18 = v16 - 1;
        if (v16 < 2)
        {
          break;
        }

        --v16;
      }

      while (v12 < v22);
    }

    goto LABEL_33;
  }

  if (v12 >= 1)
  {
    while (2)
    {
      v19 = v12;
      do
      {
        v12 = v19 - 1;
        if (v19 <= 1)
        {
          v12 = 0;
          if (v3 != -1)
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }

        v20 = *(v2 - 1 + v19--) & 0xC0;
      }

      while (v20 == 128);
      v18 = v3 + 1;
      if (v3 <= -2)
      {
        ++v3;
        if (v12 + 1 > 1)
        {
          continue;
        }
      }

      break;
    }

LABEL_33:
    if (v18)
    {
      goto LABEL_34;
    }

LABEL_36:
    lua_pushinteger(a1, v12 + 1);
    return 1;
  }

LABEL_34:
  lua_pushnil(a1);
  return 1;
}

uint64_t Lutf8_codes(void *a1)
{
  v2 = lua_toBOOLean(a1, 2);
  luaL_checklstring(a1, 1, 0);
  if (v2)
  {
    v3 = iter_auxlax;
  }

  else
  {
    v3 = iter_auxstrict;
  }

  lua_pushcclosure(a1, v3, 0);
  lua_pushvalue(a1, 1);
  lua_pushinteger(a1, 0);
  return 3;
}

uint64_t Lutf8_codepoint(void *a1)
{
  v25 = 0;
  v2 = luaL_checklstring(a1, 1, &v25);
  v3 = v25;
  v4 = luaL_optinteger(a1, 2, 1);
  if (v3 >= -v4)
  {
    v5 = v3 + v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = luaL_optinteger(a1, 3, v6);
  if (v3 >= -v7)
  {
    v8 = v3 + v7 + 1;
  }

  else
  {
    v8 = 0;
  }

  if (v7 < 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v16 = lua_toBOOLean(a1, 4);
  if (v6 <= 0)
  {
    luaL_argerror(a1, 2);
  }

  if (v9 > v3)
  {
    luaL_argerror(a1, 3);
  }

  v17 = v9 - v6;
  if (v9 < v6)
  {
    return 0;
  }

  if (v17 >= 0x7FFFFFFF)
  {
    v19 = "string slice too long";
    return luaL_error(a1, v19, v10, v11, v12, v13, v14, v15, v24);
  }

  luaL_checkstack(a1, v17 + 1, "string slice too long", v11, v12, v13, v14, v15, v24);
  v20 = v2 + v9;
  v21 = (v2 + v6 - 1);
  if (v21 < v20)
  {
    LODWORD(v18) = 0;
    while (1)
    {
      HIDWORD(v24) = 0;
      v21 = utf8_safe_decode(a1, v21, &v24 + 1);
      if (!v16 && (HIWORD(v24) > 0x10u || (HIDWORD(v24) & 0x1FF800) == 55296))
      {
        break;
      }

      lua_pushinteger(a1, HIDWORD(v24));
      v18 = (v18 + 1);
      if (v21 >= v20)
      {
        return v18;
      }
    }

    v19 = "invalid UTF-8 code";
    return luaL_error(a1, v19, v10, v11, v12, v13, v14, v15, v24);
  }

  return 0;
}

uint64_t Lutf8_len(void *a1)
{
  v22 = 0;
  v2 = luaL_checklstring(a1, 1, &v22);
  v3 = luaL_optinteger(a1, 2, 1);
  if (v22 >= -v3)
  {
    v4 = v3 + v22 + 1;
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

  v6 = luaL_optinteger(a1, 3, -1);
  if (v22 >= -v6)
  {
    v7 = v6 + v22 + 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 < 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = lua_toBOOLean(a1, 4);
  v10 = v5 - 1;
  if (v5 < 1 || (v11 = v22, --v5, v10 > v22))
  {
    luaL_argerror(a1, 2);
    v11 = v22;
    v10 = v5;
  }

  if (v8 > v11)
  {
    luaL_argerror(a1, 3);
  }

  v12 = (v2 + v10);
  v13 = v2 + v8;
  if (v12 < v2 + v8)
  {
    v14 = 0;
    while (1)
    {
      if (v9)
      {
        v15 = v12 + 1;
        do
        {
          v16 = v15;
          v17 = (v15 - 1);
          if ((v15 - 1) >= v13)
          {
            break;
          }

          ++v15;
        }

        while ((*v16 & 0xC0) == 0x80);
        if (v17 >= v13)
        {
          v12 = v13;
        }

        else
        {
          v12 = v16;
        }
      }

      else
      {
        v21 = 0;
        v18 = utf8_decode_0(v12, &v21, 1);
        if (!v18 || (HIWORD(v21) <= 0x10u ? (v19 = (v21 & 0x1FF800) == 55296) : (v19 = 1), v19))
        {
          lua_pushnil(a1);
          lua_pushinteger(a1, &v12[-v2 + 1]);
          return 2;
        }

        v12 = v18;
      }

      ++v14;
      if (v12 >= v13)
      {
        goto LABEL_36;
      }
    }
  }

  v14 = 0;
LABEL_36:
  lua_pushinteger(a1, v14);
  return 1;
}

uint64_t Lutf8_sub(void *a1)
{
  v6 = 0;
  v2 = luaL_checklstring(a1, 1, &v6);
  v3 = v6;
  v6 = luaL_checkinteger(a1, 2);
  v5 = luaL_optinteger(a1, 3, -1);
  if (utf8_range(v2, v2 + v3, &v6, &v5))
  {
    lua_pushlstring(a1, (v2 + v6), v5 - v6);
  }

  else
  {
    lua_pushstring(a1, "");
  }

  return 1;
}

uint64_t Lutf8_reverse(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  memset(v34, 0, 512);
  v33 = 0;
  v2 = luaL_checklstring(a1, 1, &v33);
  v3 = v33;
  v4 = (v2 + v33);
  v5 = lua_toBOOLean(a1, 2);
  luaL_buffinit(a1, v34);
  if (v5)
  {
    if (v3 >= 1)
    {
      do
      {
        v11 = v4 - 1;
        do
        {
          v12 = v11;
          v13 = (v11 + 1);
          if ((v11 + 1) <= v2)
          {
            break;
          }

          --v11;
        }

        while ((*v12 & 0xC0) == 0x80);
        if (v13 <= v2)
        {
          v14 = v2;
        }

        else
        {
          v14 = v12;
        }

        luaL_addlstring(v34, v14, v4 - v14, v6, v7, v8, v9, v10);
        v4 = v14;
      }

      while (v2 < v14);
    }

    goto LABEL_26;
  }

  if (v3 < 1)
  {
LABEL_26:
    luaL_pushresult(v34);
    return 1;
  }

  v15 = v4;
  while (1)
  {
    LODWORD(v33) = 0;
    v16 = v4 - 1;
    do
    {
      v17 = v16;
      v18 = (v16 + 1);
      if ((v16 + 1) <= v2)
      {
        break;
      }

      --v16;
    }

    while ((*v17 & 0xC0) == 0x80);
    v4 = v18 <= v2 ? v2 : v17;
    utf8_safe_decode(a1, v4, &v33);
    if (WORD1(v33) > 0x10u || (v33 & 0x1FF800) == 55296)
    {
      return luaL_error(a1, "invalid UTF-8 code", v19, v20, v21, v22, v23, v24, v32);
    }

    if (!utf8_iscompose(v33))
    {
      luaL_addlstring(v34, v4, v15 - v4, v26, v27, v28, v29, v30);
      v15 = v4;
    }

    if (v2 >= v4)
    {
      goto LABEL_26;
    }
  }
}

uint64_t Lutf8_lower(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = lua_type(a1, 1);
  if (v2 == 4)
  {
    memset(v17, 0, 512);
    v16 = 0;
    v5 = lua_tolstring(a1, 1, &v16);
    v6 = v16;
    luaL_buffinit(a1, v17);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v16) = 0;
        v5 = utf8_safe_decode(a1, v5, &v16);
        v8 = utf8_tolower(v16);
        add_utf8char(v17, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v17);
    return 1;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(a1, 1, 0);
    v4 = utf8_tolower(v3);
    lua_pushinteger(a1, v4);
    return 1;
  }

  return typeerror_0(a1);
}

uint64_t Lutf8_upper(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = lua_type(a1, 1);
  if (v2 == 4)
  {
    memset(v17, 0, 512);
    v16 = 0;
    v5 = lua_tolstring(a1, 1, &v16);
    v6 = v16;
    luaL_buffinit(a1, v17);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v16) = 0;
        v5 = utf8_safe_decode(a1, v5, &v16);
        v8 = utf8_toupper(v16);
        add_utf8char(v17, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v17);
    return 1;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(a1, 1, 0);
    v4 = utf8_toupper(v3);
    lua_pushinteger(a1, v4);
    return 1;
  }

  return typeerror_0(a1);
}

uint64_t Lutf8_title(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = lua_type(a1, 1);
  if (v2 == 4)
  {
    memset(v17, 0, 512);
    v16 = 0;
    v5 = lua_tolstring(a1, 1, &v16);
    v6 = v16;
    luaL_buffinit(a1, v17);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v16) = 0;
        v5 = utf8_safe_decode(a1, v5, &v16);
        v8 = utf8_totitle(v16);
        add_utf8char(v17, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v17);
    return 1;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(a1, 1, 0);
    v4 = utf8_totitle(v3);
    lua_pushinteger(a1, v4);
    return 1;
  }

  return typeerror_0(a1);
}

uint64_t Lutf8_fold(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = lua_type(a1, 1);
  if (v2 == 4)
  {
    memset(v17, 0, 512);
    v16 = 0;
    v5 = lua_tolstring(a1, 1, &v16);
    v6 = v16;
    luaL_buffinit(a1, v17);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v16) = 0;
        v5 = utf8_safe_decode(a1, v5, &v16);
        v8 = utf8_tofold(v16);
        add_utf8char(v17, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v17);
    return 1;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(a1, 1, 0);
    v4 = utf8_tofold(v3);
    lua_pushinteger(a1, v4);
    return 1;
  }

  return typeerror_0(a1);
}

uint64_t Lutf8_byte(void *a1)
{
  v10 = 0;
  v2 = luaL_checklstring(a1, 1, &v10);
  v3 = v10;
  v10 = luaL_optinteger(a1, 2, 1);
  v9 = luaL_optinteger(a1, 3, v10);
  if (!utf8_range(v2, v2 + v3, &v10, &v9) || v10 >= v9)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + v9;
  v6 = (v2 + v10);
  do
  {
    v8 = 0;
    v6 = utf8_safe_decode(a1, v6, &v8);
    lua_pushinteger(a1, v8);
    v4 = (v4 + 1);
  }

  while (v6 < v5);
  return v4;
}

uint64_t Lutf8_char(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = lua_gettop(a1);
  memset(v13, 0, 512);
  luaL_buffinit(a1, v13);
  if (v2 >= 1)
  {
    v3 = 1;
    do
    {
      v4 = luaL_checkinteger(a1, v3);
      v11 = v4;
      if (v4 >= 1114112)
      {
        luaL_argerror(a1, v3);
      }

      add_utf8char(v13, v11, v5, v6, v7, v8, v9, v10);
      v3 = (v3 + 1);
      --v2;
    }

    while (v2);
  }

  luaL_pushresult(v13);
  return 1;
}

uint64_t Lutf8_escape(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  *&v20[0] = 0;
  v2 = luaL_checklstring(a1, 1, v20);
  v3 = *&v20[0];
  memset(v20, 0, 512);
  luaL_buffinit(a1, v20);
  if (v3 < 1)
  {
    goto LABEL_40;
  }

  v4 = &v2[v3];
  do
  {
    v19 = 0;
    v5 = utf8_safe_decode(a1, v2, &v19);
    v2 = v5;
    v12 = v19;
    if (v19 != 37)
    {
      goto LABEL_26;
    }

    v13 = 0;
    v14 = *v5;
    if (v14 > 0x54)
    {
      if (*v5 <= 0x74u)
      {
        if (v14 != 85)
        {
          if (v14 != 88)
          {
            goto LABEL_38;
          }

LABEL_35:
          v13 = 1;
        }

LABEL_36:
        if ((v5 + 1) >= v4)
        {
LABEL_38:
          v2 = utf8_safe_decode(a1, v5, &v19);
          v12 = v19;
          goto LABEL_26;
        }

        v14 = v5[1];
        v2 = (v5 + 1);
        goto LABEL_6;
      }

      if (v14 == 117)
      {
        goto LABEL_36;
      }

      if (v14 != 123)
      {
        if (v14 != 120)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }
    }

    else if (v14 - 48 >= 0xA)
    {
      goto LABEL_38;
    }

LABEL_6:
    if (v14 == 123)
    {
      ++v2;
    }

    if (v2 >= v4)
    {
      v12 = 0;
      goto LABEL_25;
    }

    v12 = 0;
    if (v13)
    {
      v15 = 16;
    }

    else
    {
      v15 = 10;
    }

    while (1)
    {
      v16 = *v2;
      v17 = v16 - 48;
      if ((v16 - 48) > 9)
      {
        break;
      }

LABEL_22:
      v12 = v17 + v12 * v15;
      if (++v2 >= v4)
      {
        goto LABEL_25;
      }
    }

    if (v13 && (v16 - 65) <= 5)
    {
      v17 = v16 - 55;
      goto LABEL_22;
    }

    if (v13 && (v16 - 97) <= 5)
    {
      v17 = v16 - 87;
      goto LABEL_22;
    }

    if (v14 != 123)
    {
      goto LABEL_25;
    }

    if (v16 != 125)
    {
      luaL_error(a1, "invalid escape '%c'", v6, v7, v8, v9, v10, v11, *v2);
      v17 = v16;
      goto LABEL_22;
    }

    ++v2;
LABEL_25:
    v19 = v12;
LABEL_26:
    add_utf8char(v20, v12, v6, v7, v8, v9, v10, v11);
  }

  while (v2 < v4);
LABEL_40:
  luaL_pushresult(v20);
  return 1;
}

uint64_t Lutf8_insert(void *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  *&v27[0] = 0;
  v2 = luaL_checklstring(a1, 1, v27);
  v3 = *&v27[0];
  v4 = v2 + *&v27[0];
  v26 = 0;
  memset(v27, 0, 512);
  v5 = 2;
  if (lua_type(a1, 2) != 3)
  {
    v8 = v4;
    goto LABEL_10;
  }

  v6 = lua_tointegerx(a1, 2, 0);
  if (v6)
  {
    if (v6 < 0)
    {
      v7 = v3 + 1;
    }

    else
    {
      v7 = 1;
    }

    v8 = utf8_offset(v2, v4, v7, v6 + (~v6 >> 31));
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = v4;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  luaL_argerror(a1, 2);
LABEL_8:
  v5 = 3;
LABEL_10:
  v9 = luaL_checklstring(a1, v5, &v26);
  luaL_buffinit(a1, v27);
  luaL_addlstring(v27, v2, v8 - v2, v10, v11, v12, v13, v14);
  luaL_addlstring(v27, v9, v26, v15, v16, v17, v18, v19);
  luaL_addlstring(v27, v8, v4 - v8, v20, v21, v22, v23, v24);
  luaL_pushresult(v27);
  return 1;
}

uint64_t Lutf8_remove(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *&v17[0] = 0;
  v2 = luaL_checklstring(a1, 1, v17);
  v3 = *&v17[0];
  v16 = luaL_optinteger(a1, 2, -1);
  v15 = luaL_optinteger(a1, 3, -1);
  if (utf8_range(v2, &v2[v3], &v16, &v15))
  {
    memset(v17, 0, 512);
    luaL_buffinit(a1, v17);
    luaL_addlstring(v17, v2, v16, v4, v5, v6, v7, v8);
    luaL_addlstring(v17, &v2[v15], v3 - v15, v9, v10, v11, v12, v13);
    luaL_pushresult(v17);
  }

  else
  {
    lua_settop(a1, 1u);
  }

  return 1;
}

uint64_t Lutf8_charpos(void *a1)
{
  v14 = 0;
  v2 = luaL_checklstring(a1, 1, &v14);
  v3 = v14;
  if (lua_type(a1, 3) <= 0)
  {
    v12 = luaL_optinteger(a1, 2, 0);
    if (v12 < 0)
    {
      v11 = v3 + 1;
    }

    else
    {
      v11 = 1;
    }

    v7 = v12 - (v12 > 0);
    v8 = v2 + v3;
    v9 = a1;
    v10 = v2;
  }

  else
  {
    v4 = luaL_optinteger(a1, 2, 1);
    if (v3 >= -v4)
    {
      v5 = v3 + v4 + 1;
    }

    else
    {
      v5 = 0;
    }

    if (v4 >= 0)
    {
      v5 = v4;
    }

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7 = luaL_checkinteger(a1, 3);
    v8 = v2 + v3;
    v9 = a1;
    v10 = v2;
    v11 = v6;
  }

  return push_offset(v9, v10, v8, v11, v7);
}

uint64_t Lutf8_next(void *a1)
{
  v10 = 0;
  v2 = luaL_checklstring(a1, 1, &v10);
  v3 = v10;
  v4 = luaL_optinteger(a1, 2, 1);
  if (v3 >= -v4)
  {
    v5 = v3 + v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = lua_type(a1, 2) > 0;
  v8 = luaL_optinteger(a1, 3, v7);
  return push_offset(a1, v2, v2 + v3, v6, v8);
}

uint64_t Lutf8_width(void *a1)
{
  v2 = lua_type(a1, 1);
  v3 = lua_toBOOLean(a1, 2) == 0;
  v4 = luaL_optinteger(a1, 3, 0);
  if (v2 == 4)
  {
    v16 = 0;
    v8 = lua_tolstring(a1, 1, &v16);
    if (v16 < 1)
    {
      v7 = 0;
    }

    else
    {
      v9 = v8;
      v10 = 0;
      v11 = v8 + v16;
      do
      {
        v15 = 0;
        v9 = utf8_safe_decode(a1, v9, &v15);
        v12 = utf8_width(v15, v3);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v4;
        }

        v10 += v13;
      }

      while (v9 < v11);
      v7 = v10;
    }

    goto LABEL_17;
  }

  if (v2 == 3)
  {
    v5 = lua_tointegerx(a1, 1, 0);
    v6 = utf8_width(v5, v3);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

LABEL_17:
    lua_pushinteger(a1, v7);
    return 1;
  }

  return typeerror_0(a1);
}

uint64_t Lutf8_widthindex(void *a1)
{
  v15 = 0;
  v2 = 1;
  v3 = luaL_checklstring(a1, 1, &v15);
  v4 = v15;
  v5 = luaL_checkinteger(a1, 2);
  v6 = lua_toBOOLean(a1, 3) == 0;
  v7 = luaL_optinteger(a1, 4, 0);
  if (v4 < 1)
  {
LABEL_8:
    lua_pushinteger(a1, v2);
    return 1;
  }

  else
  {
    v8 = &v3[v4];
    v9 = v7;
    v2 = 1;
    while (1)
    {
      v14 = 0;
      v3 = utf8_safe_decode(a1, v3, &v14);
      v10 = utf8_width(v14, v6);
      v11 = v10 ? v10 : v9;
      v12 = __OFSUB__(v5, v11);
      v5 -= v11;
      if ((v5 < 0) ^ v12 | (v5 == 0))
      {
        break;
      }

      ++v2;
      if (v3 >= v8)
      {
        goto LABEL_8;
      }
    }

    lua_pushinteger(a1, v2);
    lua_pushinteger(a1, v11 + v5);
    lua_pushinteger(a1, v11);
    return 3;
  }
}

uint64_t Lutf8_ncasecmp(void *a1)
{
  v15 = 0;
  v2 = luaL_checklstring(a1, 1, &v15);
  v3 = v15;
  v15 = 0;
  v4 = luaL_checklstring(a1, 2, &v15);
  if (v3 <= 0 && v15 < 1)
  {
LABEL_11:
    v11 = a1;
    v12 = 0;
  }

  else
  {
    v6 = v4;
    v7 = &v2[v3];
    v8 = (v4 + v15);
    while (1)
    {
      v14 = 0;
      LODWORD(v15) = 0;
      if (v2 == v7)
      {
        v9 = 0;
        v10 = 1;
        v14 = 1;
        goto LABEL_14;
      }

      if (v6 == v8)
      {
        break;
      }

      v2 = utf8_safe_decode(a1, v2, &v15);
      v6 = utf8_safe_decode(a1, v6, &v14);
      v9 = utf8_tofold(v15);
      LODWORD(v15) = v9;
      v10 = utf8_tofold(v14);
      v14 = v10;
      if (v9 != v10)
      {
        goto LABEL_14;
      }

      if (v2 >= v7 && v6 >= v8)
      {
        goto LABEL_11;
      }
    }

    v10 = 0;
    v9 = 1;
    LODWORD(v15) = 1;
LABEL_14:
    if (v9 > v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    v11 = a1;
  }

  lua_pushinteger(v11, v12);
  return 1;
}

uint64_t Lutf8_gmatch(void *a1)
{
  luaL_checklstring(a1, 1, 0);
  luaL_checklstring(a1, 2, 0);
  lua_settop(a1, 2u);
  lua_pushinteger(a1, 0);
  lua_pushcclosure(a1, gmatch_aux_0, 3);
  return 1;
}

uint64_t Lutf8_gsub(void *a1)
{
  v89 = *MEMORY[0x277D85DE8];
  *&v88[0] = 0;
  v2 = luaL_checklstring(a1, 1, v88);
  v3 = *&v88[0];
  v52 = &v2[*&v88[0]];
  *&v88[0] = 0;
  v4 = luaL_checklstring(a1, 2, v88);
  v5 = &v4[*&v88[0]];
  v6 = lua_type(a1, 3);
  v53 = luaL_optinteger(a1, 4, v3 + 1);
  v54 = *v4;
  v7 = 0uLL;
  memset(v88, 0, 512);
  if ((v6 - 3) >= 4)
  {
    luaL_argerror(a1, 3);
    v7 = 0uLL;
  }

  v85 = v7;
  v86 = v7;
  v83 = v7;
  v84 = v7;
  v81 = v7;
  v82 = v7;
  v79 = v7;
  v80 = v7;
  v77 = v7;
  v78 = v7;
  v75 = v7;
  v76 = v7;
  v73 = v7;
  v74 = v7;
  v71 = v7;
  v72 = v7;
  v69 = v7;
  v70 = v7;
  v67 = v7;
  v68 = v7;
  v65 = v7;
  v66 = v7;
  v63 = v7;
  v64 = v7;
  v61 = v7;
  v62 = v7;
  v59 = v7;
  v60 = v7;
  v57 = v7;
  v58 = v7;
  v55 = v7;
  v56 = v7;
  luaL_buffinit(a1, v88);
  v13 = 0;
  LODWORD(v55) = 200;
  if (v54 == 94)
  {
    ++v4;
  }

  *(&v55 + 1) = v2;
  *&v56 = v52;
  *(&v56 + 1) = v5;
  *&v57 = a1;
  v51 = v6;
  while (v13 < v53)
  {
    DWORD2(v57) = 0;
    matched = match_0(&v55, v2, v4, v8, v9, v10, v11, v12);
    if (!matched)
    {
      goto LABEL_31;
    }

    v15 = matched;
    v16 = v57;
    if (v6 == 5)
    {
      push_onecapture_0(&v55, 0, v2, matched, v9, v10, v11, v12, v50);
      lua_gettable(v16, 3);
    }

    else
    {
      if (v6 != 6)
      {
        v87 = 0;
        v31 = lua_tolstring(v57, 3, &v87);
        if (v87 < 1)
        {
          goto LABEL_30;
        }

        v32 = v31;
        v33 = v31 + v87;
        while (2)
        {
          LODWORD(v87) = 0;
          v32 = utf8_safe_decode(v57, v32, &v87);
          v40 = v87;
          if (v87 == 37)
          {
            v41 = v57;
            v32 = utf8_safe_decode(v57, v32, &v87);
            v42 = v87;
            if (utf8_isdigit(v87))
            {
              if (v42 == 48)
              {
                luaL_addlstring(v88, v2, v15 - v2, v35, v36, v37, v38, v39);
              }

              else
              {
                push_onecapture_0(&v55, v42 - 49, v2, v15, v36, v37, v38, v39, v50);
                luaL_addvalue(v88);
              }

LABEL_26:
              if (v32 >= v33)
              {
                goto LABEL_30;
              }

              continue;
            }

            if (v42 == 37)
            {
              v40 = 37;
            }

            else
            {
              luaL_error(v41, "invalid use of '%c' in replacement string", v34, v35, v36, v37, v38, v39, 37);
              v40 = v87;
            }
          }

          break;
        }

        add_utf8char(v88, v40, v34, v35, v36, v37, v38, v39);
        goto LABEL_26;
      }

      lua_pushvalue(v57, 3);
      v22 = push_captures_0(&v55, v2, v15, v17, v18, v19, v20, v21);
      lua_callk(v16, v22, 1, 0, 0);
    }

    if (lua_toBOOLean(v16, -1))
    {
      if (!lua_isstring(v16, -1))
      {
        v23 = lua_type(v16, -1);
        v24 = lua_typename(v16, v23);
        luaL_error(v16, "invalid replacement value (a %s)", v25, v26, v27, v28, v29, v30, v24);
      }
    }

    else
    {
      lua_settop(v16, 0xFFFFFFFE);
      lua_pushlstring(v16, v2, v15 - v2);
    }

    luaL_addvalue(v88);
LABEL_30:
    ++v13;
    v6 = v51;
    if (v15 <= v2)
    {
LABEL_31:
      if (v2 >= v52)
      {
        break;
      }

      LODWORD(v87) = 0;
      v15 = utf8_safe_decode(a1, v2, &v87);
      add_utf8char(v88, v87, v43, v44, v45, v46, v47, v48);
    }

    v2 = v15;
    if (v54 == 94)
    {
      goto LABEL_36;
    }
  }

  v15 = v2;
LABEL_36:
  luaL_addlstring(v88, v15, v52 - v15, v8, v9, v10, v11, v12);
  luaL_pushresult(v88);
  lua_pushinteger(a1, v13);
  return 2;
}

uint64_t iter_aux_0(void *a1, int a2)
{
  v19 = 0;
  v4 = luaL_checklstring(a1, 1, &v19);
  v5 = v4 + v19;
  v6 = lua_tointegerx(a1, 2, 0);
  if (v6 < 1)
  {
    v10 = v4;
  }

  else
  {
    v7 = (v4 + (v6 & 0x7FFFFFFF));
    do
    {
      v8 = v7;
      v9 = (v7 - 1);
      if ((v7 - 1) >= v5)
      {
        break;
      }

      ++v7;
    }

    while ((*v8 & 0xC0) == 0x80);
    if (v9 >= v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = v8;
    }
  }

  if (v10 >= v5)
  {
    return 0;
  }

  HIDWORD(v18) = 0;
  utf8_safe_decode(a1, v10, &v18 + 1);
  if (a2 && (HIWORD(HIDWORD(v18)) > 0x10u || (HIDWORD(v18) & 0x1FF800) == 0xD800))
  {
    return luaL_error(a1, "invalid UTF-8 code", v11, v12, v13, v14, v15, v16, v18);
  }

  lua_pushinteger(a1, &v10[-v4 + 1]);
  lua_pushinteger(a1, HIDWORD(v18));
  return 2;
}

unsigned __int8 *utf8_safe_decode(void *a1, char *a2, unsigned int *a3)
{
  v10 = utf8_decode_0(a2, a3, 0);
  if (!v10)
  {
    luaL_error(a1, "invalid UTF-8 code", v4, v5, v6, v7, v8, v9, v12);
  }

  return v10;
}

unsigned __int8 *utf8_decode_0(char *a1, unsigned int *a2, int a3)
{
  v3 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_3;
  }

  if ((v3 & 0x40) != 0)
  {
    v7 = 0;
    v6 = 0;
    while (1)
    {
      v8 = v3;
      v9 = a1[v7 + 1];
      if ((v9 & 0xC0) != 0x80)
      {
        return 0;
      }

      v6 = v9 & 0x3F | (v6 << 6);
      v3 = 2 * v8;
      ++v7;
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = 0;
  LODWORD(v7) = 0;
LABEL_15:
  v5 = 0;
  if (v7 <= 5)
  {
    v3 = ((v3 & 0x3F) << (5 * v7)) | v6;
    if ((v3 & 0x80000000) == 0)
    {
      if (v3 < utf8_decode_limits_0[v7])
      {
        return 0;
      }

      a1 += v7;
      if (!a3)
      {
        goto LABEL_7;
      }

LABEL_3:
      if (HIWORD(v3) <= 0x10u && (v3 & 0x1FF800) != 55296)
      {
LABEL_7:
        if (a2)
        {
          *a2 = v3;
        }

        return (a1 + 1);
      }

      return 0;
    }
  }

  return v5;
}

BOOL utf8_range(unint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a3;
  v9 = a2 - a1;
  v10 = (*a3 & 0x80000000) == 0;
  if ((*a3 & 0x80000000) != 0)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = utf8_offset(a1, a2, v11, v8 - v10);
  if ((*a4 & 0x80000000) != 0)
  {
    v13 = v9 + 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = utf8_offset(a1, a2, v13, (*a4 - ((*a4 & 0x80000000) == 0)));
  if (v8 <= 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = a2;
  }

  if (v12)
  {
    v15 = v12;
  }

  *a3 = &v15[-a1];
  if (v14)
  {
    v16 = v14 + 1;
    do
    {
      v17 = v16;
      v18 = (v16 - 1);
      if ((v16 - 1) >= a2)
      {
        break;
      }

      ++v16;
    }

    while ((*v17 & 0xC0) == 0x80);
    if (v18 >= a2)
    {
      v17 = a2;
    }
  }

  else if (*a4 <= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = a2;
  }

  v19 = &v17[-a1];
  *a4 = v19;
  return *a3 < v19;
}

_BYTE *utf8_offset(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + a3 - 1);
  if (a4 < 0)
  {
    if (v4 <= a1)
    {
      return 0;
    }

    do
    {
      v10 = v4 - 1;
      do
      {
        v4 = v10;
        v11 = (v10 + 1);
        if ((v10 + 1) <= a1)
        {
          break;
        }

        --v10;
      }

      while ((*v4 & 0xC0) == 0x80);
      if (v11 <= a1)
      {
        v4 = a1;
      }

      v6 = a4 + 1;
    }

    while (v4 > a1 && a4++ < -1);
  }

  else if (v4 >= a2 || a4 == 0)
  {
    v6 = a4;
  }

  else
  {
    do
    {
      v7 = v4 + 1;
      do
      {
        v4 = v7;
        v8 = (v7 - 1);
        if ((v7 - 1) >= a2)
        {
          break;
        }

        ++v7;
      }

      while ((*v4 & 0xC0) == 0x80);
      if (v8 >= a2)
      {
        v4 = a2;
      }

      v6 = a4 - 1;
    }

    while (v4 < a2 && a4-- > 1);
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

BOOL utf8_iscompose(unsigned int a1)
{
  v1 = 0;
  v2 = 319;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&compose_table + 12 * v3);
    if (v4[1] >= a1)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return 0;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (a1 < *v4)
  {
    goto LABEL_5;
  }

  return (a1 - *v4) % v4[2] == 0;
}

uint64_t utf8_tolower(uint64_t result)
{
  v1 = 0;
  v2 = 178;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&tolower_table + 16 * v3);
    if (v4[1] >= result)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return result;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (result < *v4)
  {
    goto LABEL_5;
  }

  if (!((result - *v4) % v4[2]))
  {
    return (v4[3] + result);
  }

  return result;
}

void *add_utf8char(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2 >= 0x80)
  {
    v9 = &v17;
    v10 = 63;
    v11 = 0x700000000;
    v12 = 1;
    do
    {
      *v9-- = a2 & 0x3F | 0x80;
      ++v12;
      a2 >>= 6;
      v13 = v10 >> 1;
      v11 -= 0x100000000;
      v14 = a2 > v10 >> 1;
      v10 >>= 1;
    }

    while (v14);
    v16[v11 >> 32] = a2 | (2 * ~v13);
    v8 = v12;
  }

  else
  {
    v17 = a2;
    v8 = 1;
  }

  return luaL_addlstring(a1, &v16[-v8 + 8], v8, a4, a5, a6, a7, a8);
}

uint64_t typeerror_0(void *a1)
{
  v2 = lua_type(a1, 1);
  lua_typename(a1, v2);
  return luaL_error(a1, "%s expected, got %s", v3, v4, v5, v6, v7, v8, "number/string");
}

uint64_t utf8_toupper(uint64_t result)
{
  v1 = 0;
  v2 = 193;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&toupper_table + 16 * v3);
    if (v4[1] >= result)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return result;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (result < *v4)
  {
    goto LABEL_5;
  }

  if (!((result - *v4) % v4[2]))
  {
    return (v4[3] + result);
  }

  return result;
}

uint64_t utf8_totitle(uint64_t result)
{
  v1 = 0;
  v2 = 195;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&totitle_table + 16 * v3);
    if (v4[1] >= result)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return result;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (result < *v4)
  {
    goto LABEL_5;
  }

  if (!((result - *v4) % v4[2]))
  {
    return (v4[3] + result);
  }

  return result;
}

uint64_t utf8_tofold(uint64_t result)
{
  v1 = 0;
  v2 = 198;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&tofold_table + 16 * v3);
    if (v4[1] >= result)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return result;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (result < *v4)
  {
    goto LABEL_5;
  }

  if (!((result - *v4) % v4[2]))
  {
    return (v4[3] + result);
  }

  return result;
}

uint64_t push_offset(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  if (a5)
  {
    v8 = utf8_offset(a2, a3, a4, a5);
  }

  else
  {
    v8 = (a2 + a4 - 1);
    if ((*v8 & 0xC0) == 0x80)
    {
      v9 = a4 + a2 - 2;
      do
      {
        v10 = v9;
        v11 = v9 + 1;
        if (v9 + 1 <= a2)
        {
          break;
        }

        --v9;
      }

      while ((*v10 & 0xC0) == 0x80);
      if (v11 <= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = v10;
      }
    }
  }

  result = 0;
  if (v8)
  {
    if (v8 != a3)
    {
      utf8_decode_0(v8, &v13, 0);
      lua_pushinteger(a1, &v8[-a2 + 1]);
      lua_pushinteger(a1, v13);
      return 2;
    }
  }

  return result;
}

uint64_t utf8_width(unsigned int a1, int a2)
{
  v2 = 0;
  v3 = 110;
  while (1)
  {
    v4 = (v2 + v3) >> 1;
    v5 = (&doublewidth_table + 12 * v4);
    if (v5[1] >= a1)
    {
      break;
    }

    v2 = v4 + 1;
LABEL_5:
    if (v2 >= v3)
    {
      goto LABEL_8;
    }
  }

  v3 = (v2 + v3) >> 1;
  if (a1 < *v5)
  {
    goto LABEL_5;
  }

  if (!((a1 - *v5) % v5[2]))
  {
    return 2;
  }

LABEL_8:
  v6 = 0;
  v7 = 141;
  while (2)
  {
    v8 = (v6 + v7) >> 1;
    v9 = (&ambiwidth_table + 12 * v8);
    if (v9[1] < a1)
    {
      v6 = v8 + 1;
      goto LABEL_12;
    }

    v7 = (v6 + v7) >> 1;
    if (a1 < *v9)
    {
LABEL_12:
      if (v6 >= v7)
      {
        goto LABEL_15;
      }

      continue;
    }

    break;
  }

  if (!((a1 - *v9) % v9[2]))
  {
    if (a2)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

LABEL_15:
  v10 = 0;
  v11 = 319;
  while (2)
  {
    v12 = (v10 + v11) >> 1;
    v13 = (&compose_table + 12 * v12);
    if (v13[1] < a1)
    {
      v10 = v12 + 1;
      goto LABEL_19;
    }

    v11 = (v10 + v11) >> 1;
    if (a1 < *v13)
    {
LABEL_19:
      if (v10 >= v11)
      {
        goto LABEL_22;
      }

      continue;
    }

    break;
  }

  if (!((a1 - *v13) % v13[2]))
  {
    return 0;
  }

LABEL_22:
  v14 = 0;
  v15 = 15;
  while (2)
  {
    v16 = (v14 + v15) >> 1;
    v17 = (&unprintable_table + 12 * v16);
    if (v17[1] < a1)
    {
      v14 = v16 + 1;
      goto LABEL_26;
    }

    v15 = (v14 + v15) >> 1;
    if (a1 < *v17)
    {
LABEL_26:
      if (v14 >= v15)
      {
        return 1;
      }

      continue;
    }

    break;
  }

  return (a1 - *v17) % v17[2] != 0;
}

uint64_t find_aux(void *a1, int a2)
{
  *&v54 = 0;
  v4 = luaL_checklstring(a1, 1, &v54);
  v5 = v54;
  v6 = v4 + v54;
  *&v54 = 0;
  v7 = luaL_checklstring(a1, 2, &v54);
  v8 = v54;
  v9 = luaL_optinteger(a1, 3, 1);
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if ((v10 & 0x80000000) != 0)
  {
    v11 = v5 + 1;
  }

  else
  {
    v11 = 1;
  }

  v17 = utf8_offset(v4, v6, v11, (v10 - (v10 >= 0)));
  if (!v17)
  {
    v17 = v4;
    if (v10 >= 1)
    {
      goto LABEL_50;
    }
  }

  v53 = v4;
  v18 = &v7[v8];
  v52 = a2;
  if (a2)
  {
    if (!lua_toBOOLean(a1, 4) && v8 >= 1)
    {
      v19 = v7;
      while (!cstdlib_strpbrk(v19, "^$*+?.([%-"))
      {
        v19 += cstdlib_strlen(v19) + 1;
        if (v19 >= v18)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_21;
    }

LABEL_14:
    if (v8)
    {
      v20 = v6 - v17;
      if (v8 <= v6 - v17)
      {
        v21 = v20 - (v8 - 1);
        if (v20 != v8 - 1)
        {
          do
          {
            v22 = cstdlib_memchr(v17, *v7, v21);
            if (!v22)
            {
              break;
            }

            v23 = v22;
            v24 = v22 + 1;
            if (!cstdlib_memcmp(v22 + 1, v7 + 1, v8 - 1))
            {
              v17 = v23;
              goto LABEL_66;
            }

            v25 = &v17[v21];
            v17 = v24;
            v21 = v25 - v24;
          }

          while (v25 != v24);
        }
      }
    }

    else if (v17)
    {
LABEL_66:
      v46 = &v17[v8];
      if ((v17[v8] & 0xC0) == 0x80)
      {
        v47 = &v17[v8 + 1];
        do
        {
          v48 = v47;
          v49 = v47 - 1;
          if (v47 - 1 >= v6)
          {
            break;
          }

          ++v47;
        }

        while ((*v48 & 0xC0) == 0x80);
        if (v49 >= v6)
        {
          v46 = v6;
        }

        else
        {
          v46 = v48;
        }
      }

      v50 = (get_index(v17, v53, v6) + 1);
      lua_pushinteger(a1, v50);
      index = get_index(v46, v17, v6);
      lua_pushinteger(a1, v50 + index - 1);
      return 2;
    }

LABEL_50:
    lua_pushnil(a1);
    return 1;
  }

LABEL_21:
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = *v7;
  if (v26 == 94)
  {
    ++v7;
  }

  if (v10 < 0)
  {
    if (v5 < 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = 0;
      v28 = v53;
      do
      {
        v29 = v28 + 1;
        do
        {
          v28 = v29;
          v30 = (v29 - 1);
          if ((v29 - 1) >= v6)
          {
            break;
          }

          ++v29;
        }

        while ((*v28 & 0xC0) == 0x80);
        if (v30 >= v6)
        {
          v28 = v6;
        }

        ++v27;
      }

      while (v28 < v6);
    }

    v10 += v27 + 1;
  }

  LODWORD(v54) = 200;
  *(&v54 + 1) = v53;
  *&v55 = v6;
  *(&v55 + 1) = v18;
  *&v56 = a1;
  while (1)
  {
    DWORD2(v56) = 0;
    matched = match_0(&v54, v17, v7, v12, v13, v14, v15, v16);
    if (matched)
    {
      break;
    }

    if (v17 != v6)
    {
      ++v10;
      v32 = v17 + 1;
      do
      {
        v33 = v32;
        v34 = (v32 - 1);
        if ((v32 - 1) >= v6)
        {
          break;
        }

        ++v32;
      }

      while ((*v33 & 0xC0) == 0x80);
      v17 = v34 >= v6 ? v6 : v33;
      if (v26 != 94 && v17 <= v6)
      {
        continue;
      }
    }

    goto LABEL_50;
  }

  v36 = matched;
  if (!v52)
  {
    return push_captures_0(&v54, v17, matched, v12, v13, v14, v15, v16);
  }

  lua_pushinteger(a1, v10);
  if (v17 >= v36)
  {
    v37 = 0;
  }

  else
  {
    v37 = 0;
    do
    {
      v38 = v17 + 1;
      do
      {
        v39 = v38;
        v40 = (v38 - 1);
        if ((v38 - 1) >= v36)
        {
          break;
        }

        ++v38;
      }

      while ((*v39 & 0xC0) == 0x80);
      if (v40 >= v36)
      {
        v17 = v36;
      }

      else
      {
        v17 = v39;
      }

      ++v37;
    }

    while (v17 < v36);
  }

  lua_pushinteger(a1, v10 + v37 - 1);
  return push_captures_0(&v54, 0, 0, v41, v42, v43, v44, v45) + 2;
}

uint64_t get_index(_BYTE *a1, _BYTE *a2, unint64_t a3)
{
  v3 = 0;
  if (a2 < a3 && a2 < a1)
  {
    v3 = 0;
    do
    {
      v4 = a2 + 1;
      do
      {
        v5 = v4;
        v6 = (v4 - 1);
        if ((v4 - 1) >= a3)
        {
          break;
        }

        ++v4;
      }

      while ((*v5 & 0xC0) == 0x80);
      if (v6 >= a3)
      {
        a2 = a3;
      }

      else
      {
        a2 = v5;
      }

      ++v3;
    }

    while (a2 < a3 && a2 < a1);
  }

  return v3 - (a2 != a1);
}

char *match_0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
        matched = match_0(a1, a2, v8 + 1);
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

          matched = match_0(a1, v35, v26);
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
              matched = match_0(a1, a2, v26 + 1);
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
        matched = match_0(a1, v74, v26 + 1);
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
      if (*(a1 + 16) - a2 >= v29 && !cstdlib_memcmp(*v28, a2, *(v28 + 8)) && a2 != 0)
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

uint64_t push_captures_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 1;
  }

  luaL_checkstack(*(a1 + 32), v13, "too many captures", a4, a5, a6, a7, a8, v20);
  if (v13 >= 1)
  {
    v18 = 0;
    do
    {
      push_onecapture_0(a1, v18++, a2, a3, v14, v15, v16, v17, v21);
    }

    while (v13 != v18);
  }

  return v13;
}

uint64_t start_capture_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v12 = *(a1 + 40);
  if (v12 >= 32)
  {
    luaL_error(*(a1 + 32), "too many captures", a3, a4, a5, a6, a7, a8, v15);
  }

  v13 = a1 + 16 * v12;
  *(v13 + 48) = a2;
  *(v13 + 56) = v8;
  *(a1 + 40) = v12 + 1;
  result = match_0(a1, a2, a3);
  if (!result)
  {
    --*(a1 + 40);
  }

  return result;
}

unsigned __int8 *classend_0(uint64_t a1, char *a2)
{
  v19 = 0;
  v3 = utf8_safe_decode(*(a1 + 32), a2, &v19);
  v10 = v3;
  if (v19 == 91)
  {
    if (*v3 == 94)
    {
      v15 = v3 + 1;
    }

    else
    {
      v15 = v3;
    }

    do
    {
      if (v15 == *(a1 + 24))
      {
        luaL_error(*(a1 + 32), "malformed pattern (missing ']')", v4, v5, v6, v7, v8, v9, v18);
      }

      v16 = v15 + 1;
      if (*v15 == 37 && v16 < *(a1 + 24))
      {
        v16 = v15 + 2;
      }

      v15 = v16;
    }

    while (*v16 != 93);
    return v16 + 1;
  }

  else if (v19 == 37)
  {
    v11 = *(a1 + 24);
    if (v3 == v11)
    {
      luaL_error(*(a1 + 32), "malformed pattern (ends with '%%')", v4, v5, v6, v7, v8, v9, v18);
      v11 = *(a1 + 24);
    }

    v12 = v10 + 1;
    do
    {
      v13 = v12;
      v14 = (v12 - 1);
      if ((v12 - 1) >= v11)
      {
        break;
      }

      ++v12;
    }

    while ((*v13 & 0xC0) == 0x80);
    if (v14 >= v11)
    {
      return v11;
    }

    else
    {
      return v13;
    }
  }

  return v10;
}

BOOL matchbracketclass_0(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v5 = *(a3 + 1);
  v4 = (a3 + 1);
  v6 = v5 == 94;
  v7 = v5 != 94;
  if (v5 == 94)
  {
    v8 = v4 + 1;
  }

  else
  {
    v8 = v4;
  }

  while (v8 < a4)
  {
    v16 = 0;
    v8 = utf8_safe_decode(*(a1 + 32), v8, &v16);
    if (v16 == 37)
    {
      v8 = utf8_safe_decode(*(a1 + 32), v8, &v16);
      if (match_class_0(a2, v16))
      {
        return v7;
      }
    }

    else
    {
      v15 = 0;
      v12 = utf8_safe_decode(*(a1 + 32), v8, &v15);
      if (v15 != 45 || v12 >= a4)
      {
        if (v16 == a2)
        {
          return v7;
        }
      }

      else
      {
        v8 = utf8_safe_decode(*(a1 + 32), v12, &v15);
        if (v16 <= a2 && v15 >= a2)
        {
          return v7;
        }
      }
    }
  }

  return v6;
}

uint64_t singlematch_0(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  if (*(a1 + 16) <= a2)
  {
    return 0;
  }

  v11[5] = v4;
  v11[6] = v5;
  v11[0] = 0;
  utf8_safe_decode(*(a1 + 32), a2, v11 + 1);
  v9 = utf8_safe_decode(*(a1 + 32), a3, v11);
  if (LODWORD(v11[0]) == 91)
  {
    return matchbracketclass_0(a1, HIDWORD(v11[0]), (v9 - 1), a4 - 1);
  }

  if (LODWORD(v11[0]) == 46)
  {
    return 1;
  }

  if (LODWORD(v11[0]) != 37)
  {
    return LODWORD(v11[0]) == HIDWORD(v11[0]);
  }

  utf8_safe_decode(*(a1 + 32), v9, v11);
  return match_class_0(HIDWORD(v11[0]), LODWORD(v11[0]));
}

uint64_t match_class_0(unsigned int a1, uint64_t a2)
{
  v2 = a2;
  v4 = utf8_tolower(a2);
  if (v4 > 114)
  {
    if (v4 > 118)
    {
      switch(v4)
      {
        case 'z':
          v28 = a1 == 0;
          goto LABEL_70;
        case 'x':
          v33 = 0;
          v34 = 6;
          while (1)
          {
            v35 = (v33 + v34) >> 1;
            v9 = &xdigit_table + 12 * v35;
            if (*(v9 + 1) >= a1)
            {
              v34 = (v33 + v34) >> 1;
              v10 = a1 - *v9;
              if (a1 >= *v9)
              {
LABEL_69:
                v28 = v10 % *(v9 + 2) == 0;
LABEL_70:
                v32 = v28;
                goto LABEL_97;
              }
            }

            else
            {
              v33 = v35 + 1;
            }

            if (v33 >= v34)
            {
              goto LABEL_96;
            }
          }

        case 'w':
          v14 = 0;
          v15 = 701;
          while (1)
          {
            v16 = (v14 + v15) >> 1;
            v17 = (&alpha_table + 12 * v16);
            if (v17[1] >= a1)
            {
              v15 = (v14 + v15) >> 1;
              if (a1 >= *v17)
              {
                if (!((a1 - *v17) % v17[2]))
                {
LABEL_100:
                  v32 = 1;
                  goto LABEL_97;
                }

LABEL_75:
                v37 = 0;
                v38 = 135;
                while (1)
                {
                  v39 = (v37 + v38) >> 1;
                  v40 = (&alnum_extend_table + 12 * v39);
                  if (v40[1] >= a1)
                  {
                    v38 = (v37 + v38) >> 1;
                    v41 = a1 - *v40;
                    if (a1 >= *v40)
                    {
LABEL_95:
                      if (v41 % v40[2])
                      {
                        goto LABEL_96;
                      }

                      goto LABEL_100;
                    }
                  }

                  else
                  {
                    v37 = v39 + 1;
                  }

                  if (v37 >= v38)
                  {
                    goto LABEL_96;
                  }
                }
              }
            }

            else
            {
              v14 = v16 + 1;
            }

            if (v14 >= v15)
            {
              goto LABEL_75;
            }
          }
      }
    }

    else
    {
      switch(v4)
      {
        case 's':
          v21 = 0;
          v22 = 7;
          while (1)
          {
            v23 = (v21 + v22) >> 1;
            v9 = &space_table + 12 * v23;
            if (*(v9 + 1) >= a1)
            {
              v22 = (v21 + v22) >> 1;
              v10 = a1 - *v9;
              if (a1 >= *v9)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v21 = v23 + 1;
            }

            if (v21 >= v22)
            {
              goto LABEL_96;
            }
          }

        case 't':
          v5 = utf8_iscompose(a1);
          goto LABEL_62;
        case 'u':
          v6 = 0;
          v7 = 155;
          while (1)
          {
            v8 = (v6 + v7) >> 1;
            v9 = &upper_table + 12 * v8;
            if (*(v9 + 1) >= a1)
            {
              v7 = (v6 + v7) >> 1;
              v10 = a1 - *v9;
              if (a1 >= *v9)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v6 = v8 + 1;
            }

            if (v6 >= v7)
            {
              goto LABEL_96;
            }
          }
      }
    }

    return v2 == a1;
  }

  if (v4 <= 102)
  {
    switch(v4)
    {
      case 'a':
        v18 = 0;
        v19 = 701;
        do
        {
          v20 = (v18 + v19) >> 1;
          v9 = &alpha_table + 12 * v20;
          if (*(v9 + 1) >= a1)
          {
            v19 = (v18 + v19) >> 1;
            v10 = a1 - *v9;
            if (a1 >= *v9)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v18 = v20 + 1;
          }
        }

        while (v18 < v19);
        goto LABEL_96;
      case 'c':
        v29 = 0;
        v30 = 26;
        do
        {
          v31 = (v29 + v30) >> 1;
          v9 = &cntrl_table + 12 * v31;
          if (*(v9 + 1) >= a1)
          {
            v30 = (v29 + v30) >> 1;
            v10 = a1 - *v9;
            if (a1 >= *v9)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v29 = v31 + 1;
          }
        }

        while (v29 < v30);
        goto LABEL_96;
      case 'd':
        v5 = utf8_isdigit(a1);
LABEL_62:
        v32 = v5;
        goto LABEL_97;
    }

    return v2 == a1;
  }

  if (v4 != 103)
  {
    if (v4 == 108)
    {
      v5 = utf8_islower(a1);
      goto LABEL_62;
    }

    if (v4 == 112)
    {
      v11 = 0;
      v12 = 213;
      do
      {
        v13 = (v11 + v12) >> 1;
        v9 = &punct_table + 12 * v13;
        if (*(v9 + 1) >= a1)
        {
          v12 = (v11 + v12) >> 1;
          v10 = a1 - *v9;
          if (a1 >= *v9)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v11 = v13 + 1;
        }
      }

      while (v11 < v12);
      goto LABEL_96;
    }

    return v2 == a1;
  }

  v24 = 0;
  v25 = 7;
  while (1)
  {
    v26 = (v24 + v25) >> 1;
    v27 = (&space_table + 12 * v26);
    if (v27[1] >= a1)
    {
      break;
    }

    v24 = v26 + 1;
LABEL_51:
    if (v24 >= v25)
    {
      goto LABEL_82;
    }
  }

  v25 = (v24 + v25) >> 1;
  if (a1 < *v27)
  {
    goto LABEL_51;
  }

  if (!((a1 - *v27) % v27[2]))
  {
    goto LABEL_96;
  }

LABEL_82:
  v42 = 0;
  v43 = 841;
  while (2)
  {
    v44 = (v42 + v43) >> 1;
    v45 = (&graph_table + 12 * v44);
    if (v45[1] < a1)
    {
      v42 = v44 + 1;
      goto LABEL_86;
    }

    v43 = (v42 + v43) >> 1;
    if (a1 < *v45)
    {
LABEL_86:
      if (v42 >= v43)
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  if (!((a1 - *v45) % v45[2]))
  {
    goto LABEL_100;
  }

LABEL_89:
  v46 = 0;
  v47 = 319;
  do
  {
    v48 = (v46 + v47) >> 1;
    v40 = (&compose_table + 12 * v48);
    if (v40[1] >= a1)
    {
      v47 = (v46 + v47) >> 1;
      v41 = a1 - *v40;
      if (a1 >= *v40)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v46 = v48 + 1;
    }
  }

  while (v46 < v47);
LABEL_96:
  v32 = 0;
LABEL_97:
  if (utf8_islower(v2))
  {
    return v32;
  }

  else
  {
    return v32 == 0;
  }
}

BOOL utf8_isdigit(unsigned int a1)
{
  v1 = 0;
  v2 = 64;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&digit_table + 12 * v3);
    if (v4[1] >= a1)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return 0;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (a1 < *v4)
  {
    goto LABEL_5;
  }

  return (a1 - *v4) % v4[2] == 0;
}

BOOL utf8_islower(unsigned int a1)
{
  v1 = 0;
  v2 = 177;
  while (1)
  {
    v3 = (v1 + v2) >> 1;
    v4 = (&lower_table + 12 * v3);
    if (v4[1] >= a1)
    {
      break;
    }

    v1 = v3 + 1;
LABEL_5:
    if (v1 >= v2)
    {
      return 0;
    }
  }

  v2 = (v1 + v2) >> 1;
  if (a1 < *v4)
  {
    goto LABEL_5;
  }

  return (a1 - *v4) % v4[2] == 0;
}

uint64_t push_onecapture_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 40) <= a2)
  {
    v12 = *(a1 + 32);
    if (!a2)
    {
      v13 = a3;
      v14 = a4 - a3;
LABEL_11:

      return lua_pushlstring(v12, v13, v14);
    }

    return luaL_error(v12, "invalid capture index", a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v10 = a1 + 16 * a2;
    v11 = *(v10 + 56);
    if (v11 != -2)
    {
      if (v11 == -1)
      {
        luaL_error(*(a1 + 32), "unfinished capture", a3, a4, a5, a6, a7, a8, v18);
      }

      v12 = *(a1 + 32);
      v13 = *(v10 + 48);
      v14 = v11;
      goto LABEL_11;
    }

    v16 = (get_index(*(v10 + 48), *(a1 + 8), *(a1 + 16)) + 1);
    v17 = *(a1 + 32);

    return lua_pushinteger(v17, v16);
  }
}

uint64_t gmatch_aux_0(void *a1)
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
  v25[0] = 200;
  v58 = 0;
  v2 = luaL_checklstring(a1, 4293966295, &v58);
  v3 = v58;
  v4 = v2 + v58;
  v58 = 0;
  v5 = luaL_checklstring(a1, 4293966294, &v58);
  v25[1] = v2;
  v26 = v4;
  v27 = v5 + v58;
  *&v28 = a1;
  v6 = lua_tointegerx(a1, -1001003, 0);
  if (v6 > v3)
  {
    return 0;
  }

  v12 = (v2 + v6);
  while (1)
  {
    DWORD2(v28) = 0;
    matched = match_0(v25, v12, v5, v7, v8, v9, v10, v11);
    if (matched)
    {
      break;
    }

    if (v12 != v26)
    {
      v14 = v12 + 1;
      do
      {
        v15 = v14;
        v16 = (v14 - 1);
        if ((v14 - 1) >= v26)
        {
          break;
        }

        ++v14;
      }

      while ((*v15 & 0xC0) == 0x80);
      v12 = v16 >= v26 ? v26 : v15;
      if (v12 <= v26)
      {
        continue;
      }
    }

    return 0;
  }

  v18 = matched;
  if (matched == v12)
  {
    v19 = &matched[-v2 + 1];
  }

  else
  {
    v19 = &matched[-v2];
  }

  lua_pushinteger(a1, v19);
  lua_copy(a1, -1, -1001003);
  lua_settop(a1, 0xFFFFFFFE);
  return push_captures_0(v25, v12, v18, v20, v21, v22, v23, v24);
}

uint64_t Dictionary_Con(uint64_t a1, uint64_t a2, char **a3, const void *a4, uint64_t a5, _DWORD *a6, int a7)
{
  v13 = 0;
  *(a1 + 184) = 0;
  if (a5)
  {
    result = PNEW_BinBlockStreamReader_Con(a2, a2, a4, a5, a6, &v13);
    if (result)
    {
      return result;
    }

    v12 = v13 + 32;
  }

  else
  {
    v12 = 0;
  }

  result = Dictionary_ConFromStreamReader(a1, a2, a3, v12, a7);
  if (!result)
  {
    if (v13)
    {
      return (*(*v13 + 32))(v13);
    }
  }

  return result;
}

uint64_t Dictionary_ConFromStreamReader(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int a5)
{
  v16 = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = a2;
  *(a1 + 152) = a5;
  *(a1 + 184) = 0;
  if (!a4)
  {
    return Dictionary_ConFromBuffer(a1, a2, a3, a4, a5);
  }

  v9 = a4;
  v15 = 0;
  v14 = 0;
  if ((*(*a4 + 56))(a4 - *(*a4 + 224)) != 341630714)
  {
    return err_GenerateErrorData();
  }

  v10 = (*(*v9 + 64))(v9 - *(*v9 + 224));
  if (!BinBlockStreamReader_IsVersionAccepted(v10, 0x10000))
  {
    return err_GenerateErrorVersion();
  }

  result = (*(*v9 + 8))(v9 - *(*v9 + 224), 414429700, 0, &v15, &v14);
  v16 = result;
  if (result)
  {
    return result;
  }

  if (!BinBlockStreamReader_IsVersionAccepted(v14, 0x10000))
  {
    return err_GenerateErrorVersion();
  }

  v12 = (*(*v15 + 24))(v15 - *(*v15 + 48));
  v13 = OOCAllocator_Realloc(*(a1 + 120), *(a1 + 136), v12, &v16);
  *(a1 + 136) = v13;
  result = v16;
  if (!v16)
  {
    result = (*(*v15 + 32))(v15 - *(*v15 + 48), v13);
    v16 = result;
    if (!result)
    {
      result = (*(*v9 + 24))(v9 - *(*v9 + 224), v15);
      v16 = result;
      if (!result)
      {
        a4 = *(a1 + 136);
        return Dictionary_ConFromBuffer(a1, a2, a3, a4, a5);
      }
    }
  }

  return result;
}

uint64_t Dictionary_ConFromBuffer(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int a5)
{
  result = VoConObject_Con2(a1, a2);
  v21 = result;
  if (!result)
  {
    *a1 = &__Dictionary;
    *(a1 + 56) = &unk_287EEACE0;
    *(a1 + 64) = &unk_287EEACF8;
    *(a1 + 72) = &unk_287EEAD30;
    *(a1 + 80) = &unk_287EEAD58;
    *(a1 + 88) = &unk_287EEAD70;
    *(a1 + 96) = &unk_287EEAD88;
    *(a1 + 104) = &unk_287EEAD98;
    *(a1 + 112) = &unk_287EEADB0;
    *(a1 + 24) = &unk_287EEAC98;
    *(a1 + 120) = a2;
    *(a1 + 136) = a4;
    *(a1 + 152) = a5;
    *(a1 + 184) = 0;
    v11 = OOCAllocator_Calloc(a2, 1, 40, &v21);
    *(a1 + 144) = v11;
    result = v21;
    if (!v21)
    {
      v12 = a3 && a4 == 0;
      v13 = v12;
      if (!v12)
      {
        goto LABEL_17;
      }

      result = cloneString(*(a1 + 120), v11, *a3);
      v21 = result;
      if (!result)
      {
        v14 = cstdlib_strchr(**(a1 + 144), 124);
        if (v14)
        {
          *v14 = 0;
        }

        result = cloneString(*(a1 + 120), (*(a1 + 144) + 16), a3[2]);
        v21 = result;
        if (!result)
        {
          result = cloneString(*(a1 + 120), (*(a1 + 144) + 24), a3[3]);
          v21 = result;
          if (!result)
          {
LABEL_17:
            result = edct_DctOpen(*(a1 + 120), *(a1 + 136), a5, (a1 + 128));
            v21 = result;
            if (!result)
            {
              if (!v13)
              {
LABEL_25:
                result = __Dictionary_CheckAndFillTranscriptionSpec(a1);
                v21 = result;
                if (!result)
                {
                  return PNEW_TranscriptionTokenizer_Con(*(a1 + 120), *(a1 + 120), (a1 + 160));
                }

                return result;
              }

              v20 = 0;
              v18 = 0u;
              v19 = 0u;
              v17 = 0u;
              v15 = *(a1 + 144);
              *&v19 = *(v15 + 24);
              v16 = -1;
              LODWORD(v17) = -1;
              *(&v17 + 1) = 0;
              v18 = 0uLL;
              result = __ConvertDictionaryLanguageModelToEDCTModelInfo(a1, *(v15 + 16), &v18 + 1);
              v21 = result;
              if (!result)
              {
                if (**(a1 + 144))
                {
                  *(&v17 + 1) = **(a1 + 144);
                }

                result = edct_DctInitSubDctFromTransSpec(*(a1 + 128), &v16);
                v21 = result;
                if (!result)
                {
                  if (*(&v18 + 1))
                  {
                    OOCAllocator_Free(*(a1 + 120), *(&v18 + 1));
                  }

                  goto LABEL_25;
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

uint64_t cloneString(uint64_t a1, char **a2, char *__s)
{
  v9 = 0;
  if (__s)
  {
    v6 = cstdlib_strlen(__s);
    v7 = OOCAllocator_Malloc(a1, v6 + 1, &v9);
    *a2 = v7;
    result = v9;
    if (!v9)
    {
      cstdlib_strncpy(v7, __s, v6 + 1);
      return v9;
    }
  }

  else
  {
    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t __ConvertDictionaryLanguageModelToEDCTModelInfo(uint64_t a1, const char *a2, void **a3)
{
  v9 = 0;
  if (a2)
  {
    v5 = OOCAllocator_Malloc(*(a1 + 120), 129, &v9);
    *a3 = v5;
    result = v9;
    if (!v9)
    {
      cstdlib_memset(v5, 0, 0x81uLL);
      v7 = *a3;
      v8 = cstdlib_strlen(a2);
      cstdlib_memcpy(v7, a2, v8);
      return v9;
    }
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  return result;
}

uint64_t __Dictionary_CheckAndFillTranscriptionSpec(uint64_t a1)
{
  v7 = 0;
  v6 = 0;
  result = edct_DctGetAllEntryDataSpec(*(a1 + 128), &v6, &v7);
  if (!result)
  {
    if (v7)
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        result = checkAndFillField(*(a1 + 120), 1, "dictionary has multiple language entries", *(v6 + v3 + 8), *(a1 + 144));
        if (result)
        {
          break;
        }

        result = checkAndFillField(*(a1 + 120), 1, "dictionary has multiple language of origin codes", *(v6 + v3 + 16), (*(a1 + 144) + 8));
        if (result)
        {
          break;
        }

        result = checkAndFillField(*(a1 + 120), 0, "dictionary has multiple acmod entries", *(v6 + v3 + 24), (*(a1 + 144) + 16));
        if (result)
        {
          break;
        }

        result = checkAndFillField(*(a1 + 120), 0, "dictionary has multiple engine version entries", *(v6 + v3 + 32), (*(a1 + 144) + 24));
        if (result)
        {
          break;
        }

        ++v4;
        v5 = v7;
        v3 += 40;
        if (v4 >= v7)
        {
          return edct_DctFreeAllEntryDataSpec(*(a1 + 128), v6, v5);
        }
      }
    }

    else
    {
      v5 = 0;
      return edct_DctFreeAllEntryDataSpec(*(a1 + 128), v6, v5);
    }
  }

  return result;
}

uint64_t Dictionary_Des(uint64_t *a1)
{
  result = OOC_PlacementDeleteObject(a1[15], a1[20]);
  if (!result)
  {
    result = edct_DctClose(a1[16]);
    if (!result)
    {
      v3 = a1[17];
      if (v3)
      {
        OOCAllocator_Free(a1[15], v3);
      }

      v4 = a1[18];
      if (*v4)
      {
        OOCAllocator_Free(a1[15], *v4);
        v4 = a1[18];
      }

      if (v4[1])
      {
        OOCAllocator_Free(a1[15], v4[1]);
        v4 = a1[18];
      }

      if (v4[2])
      {
        OOCAllocator_Free(a1[15], v4[2]);
        v4 = a1[18];
      }

      if (v4[3])
      {
        OOCAllocator_Free(a1[15], v4[3]);
        v4 = a1[18];
      }

      OOCAllocator_Free(a1[15], v4);

      return VoConObject_Des(a1);
    }
  }

  return result;
}

uint64_t Dictionary_AddWord(uint64_t a1, char *a2, uint64_t a3, const char **a4)
{
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (!**(a1 + 144))
  {
    result = __Dictionary_CheckAndFillTranscriptionSpec(a1);
    if (result)
    {
      return result;
    }
  }

  v8 = *a4;
  if (!*a4 || (v9 = **(a1 + 144), v10 = cstdlib_strlen(v9), cstdlib_strncmp(v8, v9, v10)) || (v12 = a4[1]) != 0 && (v13 = *(*(a1 + 144) + 8)) != 0 && cstdlib_strcmp(v12, v13) || (v14 = a4[2]) != 0 && (v15 = *(*(a1 + 144) + 16)) != 0 && cstdlib_strcmp(v14, v15) || (v16 = a4[3]) != 0 && (v17 = *(*(a1 + 144) + 24)) != 0 && cstdlib_strcmp(v16, v17))
  {

    return err_GenerateErrorArg();
  }

  v18 = cstdlib_strchr(*a4, 124);
  v19 = v18;
  if (v18)
  {
    *v18 = 0;
  }

  v28 = 0uLL;
  *&v29 = 0;
  v20 = *a3 - 1;
  if (v20 < 8 && ((0x8Bu >> v20) & 1) != 0)
  {
    *&v27 = __PAIR64__(dword_26ECDA5B0[v20], dword_26ECDA590[v20]);
  }

  else
  {
    result = err_GenerateErrorArg();
    if (result)
    {
      return result;
    }
  }

  v21 = a4[3];
  DWORD2(v27) = -1;
  v22 = *(a3 + 8);
  v23 = *(a3 + 16);
  *(&v29 + 1) = v21;
  *&v30 = v22;
  DWORD2(v30) = v23;
  if (v22)
  {
    if (*a3 == 1 && v23)
    {
      v24 = (v23 + v22 - 1);
      v25 = v23 - 1;
      do
      {
        if (*v24--)
        {
          break;
        }

        DWORD2(v30) = v25--;
      }

      while (v25 != -1);
    }

    result = __ConvertDictionaryLanguageModelToEDCTModelInfo(a1, a4[2], &v29);
    if (result)
    {
      return result;
    }

    if (*a4)
    {
      *&v28 = *a4;
    }
  }

  else
  {
    result = err_GenerateErrorData();
    if (result)
    {
      return result;
    }
  }

  result = edct_DctAddEntry(*(a1 + 128), a2, &v27, 1u);
  if (!v19 || result)
  {
    if (result)
    {
      return result;
    }
  }

  else
  {
    *v19 = 124;
  }

  if (v29)
  {
    OOCAllocator_Free(*(a1 + 120), v29);
  }

  return __Dictionary_CheckAndFillTranscriptionSpec(a1);
}

uint64_t Dictionary_ArchiveEx(uint64_t *a1, uint64_t a2, int a3)
{
  v9 = 0;
  v8 = 0;
  result = edct_DctArchive(a1[16], 0, &v8, a3);
  v10 = result;
  if (!result)
  {
    v7 = OOCAllocator_Realloc(a1[15], a1[17], v8, &v10);
    a1[17] = v7;
    result = v10;
    if (!v10)
    {
      result = edct_DctArchive(a1[16], v7, &v8, a3);
      v10 = result;
      if (!result)
      {
        if ((*(*a2 + 80))(a2 - *(*a2 + 120)) || (result = (**a2)(a2 - *(*a2 + 120), 341630714, 0x10000, 10), (v10 = result) == 0))
        {
          result = (*(*a2 + 32))(a2 - *(*a2 + 120), 414429700, 0x10000, &v9);
          v10 = result;
          if (!result)
          {
            result = (*(*v9 + 8))(v9 - *(*v9 + 56), a1[17], v8);
            v10 = result;
            if (!result)
            {
              return (*(*a2 + 48))(a2 - *(*a2 + 120), v9);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Dictionary_FetchInfo(uint64_t a1, char ***a2)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v4 = **(a1 + 144);
  if (v4)
  {
    goto LABEL_2;
  }

  result = __Dictionary_CheckAndFillTranscriptionSpec(a1);
  v12 = result;
  if (result)
  {
    return result;
  }

  v4 = **(a1 + 144);
  if (v4)
  {
LABEL_2:
    v5 = 0;
    v6 = cstdlib_strlen(v4) + 25;
  }

  else
  {
    v5 = 1;
    v6 = 24;
  }

  *a2 = OOCAllocator_Malloc(*(a1 + 120), v6, &v12);
  result = v12;
  if (!v12)
  {
    result = edct_DctGetInfo(*(a1 + 128), &v10);
    v12 = result;
    if (!result)
    {
      **a2 = 0;
      v8 = *a2;
      *&v9 = DWORD1(v11);
      *(&v9 + 1) = DWORD2(v11);
      *(*a2 + 1) = v9;
      if ((v5 & 1) == 0)
      {
        *v8 = (v8 + 3);
        cstdlib_strcpy(**a2, v4);
      }

      return edct_DctFreeInfo(*(a1 + 128), &v10);
    }
  }

  return result;
}

void Dictionary_FetchKeys(uint64_t a1, char ***a2, void *a3)
{
  v5 = *(a1 + 128);
  if (v5[11] == 1)
  {
    goto LABEL_2;
  }

  __s = 0;
  v17 = 0;
  *a3 = 0;
  edct_DctItOpen(*(a1 + 120), v5, &v17);
  if (!v7)
  {
    v15 = 0;
    if (!edct_DctItHasEnded(v17, &v15))
    {
      v8 = 0;
      while (v15 != 1)
      {
        if (!edct_DctItCurrent(v17, &__s, 0, 0, 0))
        {
          v9 = cstdlib_strlen(__s);
          if (!edct_DctItIncrement(v17))
          {
            v8 += v9 + 9;
            v15 = 0;
            HasEnded = edct_DctItHasEnded(v17, &v15);
            if (!HasEnded)
            {
              continue;
            }
          }
        }

        return;
      }

      if (!edct_DctItClose(v17))
      {
        if (!v8)
        {
LABEL_2:
          *a3 = 0;
          *a2 = 0;
          return;
        }

        edct_DctItOpen(*(a1 + 120), *(a1 + 128), &v17);
        HasEnded = v10;
        if (!v10)
        {
          v11 = OOCAllocator_Malloc(*(a1 + 120), v8, &HasEnded);
          *a2 = v11;
          if (!HasEnded)
          {
            v15 = 0;
            HasEnded = edct_DctItHasEnded(v17, &v15);
            if (!HasEnded)
            {
              v12 = 0;
              v13 = v11 + v8;
              while (v15 != 1)
              {
                HasEnded = edct_DctItCurrent(v17, &__s, 0, 0, 0);
                if (!HasEnded)
                {
                  v14 = cstdlib_strlen(__s);
                  if (v11)
                  {
                    v13 += ~v14;
                    *v11++ = v13;
                    cstdlib_strcpy(v13, __s);
                    ++v12;
                  }

                  HasEnded = edct_DctItIncrement(v17);
                  if (!HasEnded)
                  {
                    v15 = 0;
                    HasEnded = edct_DctItHasEnded(v17, &v15);
                    if (!HasEnded)
                    {
                      continue;
                    }
                  }
                }

                return;
              }

              if (!edct_DctItClose(v17))
              {
                *a3 = v12;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t Dictionary_FetchTranscriptions(uint64_t a1, char *a2, uint64_t *a3, unint64_t *a4)
{
  v48 = 0;
  v45 = 0;
  v8 = *(a1 + 144);
  if (!*v8)
  {
    result = __Dictionary_CheckAndFillTranscriptionSpec(a1);
    if (result)
    {
      return result;
    }

    v8 = *(a1 + 144);
  }

  v47 = 0;
  v49[0] = 0;
  v46 = -1;
  v9 = v8[2];
  v49[1] = v8[3];
  result = __ConvertDictionaryLanguageModelToEDCTModelInfo(a1, v9, v49);
  if (!result)
  {
    if (*v8)
    {
      v47 = *v8;
    }

    result = edct_DctGetEntryData(*(a1 + 128), a2, &v46, (a1 + 168), &v45);
    v50 = result;
    if (!result)
    {
      if (v45)
      {
        v11 = OOCAllocator_Malloc(*(a1 + 120), 24 * v45, &v50);
        result = v50;
        if (v50)
        {
          return result;
        }

        if (v45)
        {
          v12 = 0;
          v44 = v11;
          while (1)
          {
            v13 = *(a1 + 168) + (v12 << 6);
            v14 = v11 + 24 * v12;
            v15 = *v13;
            v16 = *(v13 + 4);
            if (v16 & 0xFFFFFFFD | *v13)
            {
              if (v15 == 1 && v16 == 1)
              {
                ErrorArg = 0;
                v22 = 2;
              }

              else if (v15 == 3 && v16 == 1)
              {
                ErrorArg = 0;
                v22 = 8;
              }

              else
              {
                v19 = v16 & 0xFFFFFFFE;
                if (v15 != 2 || v19 != 2)
                {
                  ErrorArg = err_GenerateErrorArg();
                  goto LABEL_29;
                }

                ErrorArg = 0;
                v22 = 4;
              }
            }

            else
            {
              ErrorArg = 0;
              v22 = 1;
            }

            *v14 = v22;
LABEL_29:
            v51 = ErrorArg;
            v23 = *(v13 + 48);
            v24 = *(v13 + 56);
            *(v14 + 8) = v23;
            *(v14 + 16) = v24;
            if (*v13 != 2)
            {
              if (!*v13)
              {
                v25 = *v23;
                while (v25 == 32)
                {
                  v26 = *++v23;
                  v25 = v26;
                  --v24;
                }

                v27 = *(a1 + 184);
                v28 = v25 != 35 || v27 == 0;
                v29 = !v28;
                if (v28)
                {
                  v30 = v23;
                }

                else
                {
                  v30 = v23 + 1;
                }

                v31 = v24 - v29;
                if ((v24 - v29) < 3)
                {
                  if (v31 == 2)
                  {
                    goto LABEL_53;
                  }

                  goto LABEL_54;
                }

                v32 = &v30[v31];
                if (!v30[v31 - 2])
                {
                  if (v27 && *(v32 - 3) == 35)
                  {
                    *(v32 - 3) = 0;
                    --v31;
                  }

                  *(v14 + 16) = v31 - 1;
                  v33 = OOCAllocator_Malloc(*(a1 + 120), v31 - 1, &v51);
                  result = v51;
                  if (v51)
                  {
                    return result;
                  }

                  v34 = *(v14 + 16);
                  v35 = v33;
                  v36 = v30;
                  goto LABEL_66;
                }

LABEL_53:
                if (v30[v31 - 1])
                {
LABEL_54:
                  if (v27 && v30[v31 - 1] == 35)
                  {
                    v30[--v31] = 0;
                  }

                  v37 = OOCAllocator_Malloc(*(a1 + 120), v31 + 1, &v51);
                  result = v51;
                  if (v51)
                  {
                    return result;
                  }

                  cstdlib_memcpy(v37, v30, v31);
                  *(v37 + v31) = 0;
                  *(v14 + 8) = v37;
                  *(v14 + 16) = v31 + 1;
                  v11 = v44;
                  goto LABEL_67;
                }

                if (v27 && v30[v31 - 2] == 35)
                {
                  v30[v31-- - 2] = 0;
                }

                *(v14 + 16) = v31;
                v33 = OOCAllocator_Malloc(*(a1 + 120), v31, &v51);
                result = v51;
                if (v51)
                {
                  return result;
                }

                v35 = v33;
                v36 = v30;
                v34 = v31;
LABEL_66:
                cstdlib_memcpy(v35, v36, v34);
                *(v14 + 8) = v33;
              }

LABEL_67:
              result = v51;
              goto LABEL_68;
            }

            if (*(v13 + 4) != 3)
            {
              v38 = OOCAllocator_Malloc(*(a1 + 120), v24, &v51);
              *(v14 + 8) = v38;
              result = v51;
              if (v51)
              {
                return result;
              }

              cstdlib_memcpy(v38, *(v13 + 48), *(v14 + 16));
              goto LABEL_67;
            }

            result = err_GenerateErrorData();
LABEL_68:
            v50 = result;
            if (result)
            {
              return result;
            }

            if (++v12 >= v45)
            {
              *(a1 + 176) = v45;
              *(a1 + 180) = v12;
              goto LABEL_76;
            }
          }
        }

        *(a1 + 176) = 0;
        OOCAllocator_Free(*(a1 + 120), v11);
      }

      v11 = 0;
      v12 = 0;
LABEL_76:
      if (v49[0])
      {
        OOCAllocator_Free(*(a1 + 120), v49[0]);
      }

      result = v50;
      if (!v50)
      {
        result = TranscriptionTokenizer_FetchTranscriptions(*(a1 + 160), v11, v12, a3, a4);
        if (!result)
        {
          if (!v11)
          {
            return lhi_LogPhoneticTranscriptions(*(a1 + 40), 0x3E62B2CD, a2, *a3, *a4);
          }

          v39 = *(a1 + 180);
          if (v39)
          {
            v40 = 0;
            v41 = (v11 + 8);
            do
            {
              v42 = *(v41 - 2);
              if (v42 == 4 || v42 == 1)
              {
                OOCAllocator_Free(*(a1 + 120), *v41);
                v39 = *(a1 + 180);
              }

              ++v40;
              v41 += 3;
            }

            while (v40 < v39);
          }

          OOCAllocator_Free(*(a1 + 120), v11);
          result = edct_DctFreeEntryData(*(a1 + 128), *(a1 + 168), *(a1 + 176));
          if (!result)
          {
            *(a1 + 168) = 0;
            *(a1 + 176) = 0;
            return lhi_LogPhoneticTranscriptions(*(a1 + 40), 0x3E62B2CD, a2, *a3, *a4);
          }
        }
      }
    }
  }

  return result;
}

void Dictionary_Merge(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  AllEntryDataSpec = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v6 = **(a1 + 144);
  if (a5)
  {
    *a5 = 0;
  }

  v21 = 0;
  if (!PNEW_BinBlockStreamReader_Con(*(a1 + 120), *(a1 + 120), a2, a3, a4, &v18))
  {
    v17 = 0;
    v16 = 0;
    if ((*(v18[4] + 56))(v18 - *(v18[4] + 224) + 32) != 341630714)
    {
      err_GenerateErrorData();
      return;
    }

    v7 = (*(v18[4] + 64))(v18 - *(v18[4] + 224) + 32);
    if (!BinBlockStreamReader_IsVersionAccepted(v7, 0x10000))
    {
      goto LABEL_17;
    }

    AllEntryDataSpec = (*(v18[4] + 8))(v18 - *(v18[4] + 224) + 32, 414429700, 0, &v17, &v16);
    if (AllEntryDataSpec)
    {
      return;
    }

    if (!BinBlockStreamReader_IsVersionAccepted(v16, 0x10000))
    {
LABEL_17:
      err_GenerateErrorVersion();
      return;
    }

    v8 = (*(*v17 + 24))(v17 - *(*v17 + 48));
    v9 = OOCAllocator_Malloc(*(a1 + 120), v8, &AllEntryDataSpec);
    if (!AllEntryDataSpec)
    {
      AllEntryDataSpec = (*(*v17 + 32))(v17 - *(*v17 + 48), v9);
      if (!AllEntryDataSpec)
      {
        AllEntryDataSpec = (*(v18[4] + 24))(v18 - *(v18[4] + 224) + 32, v17);
        if (!AllEntryDataSpec)
        {
          AllEntryDataSpec = edct_DctOpen(*(a1 + 120), v9, 1, &v24);
          if (!AllEntryDataSpec)
          {
            AllEntryDataSpec = edct_DctGetAllEntryDataSpec(v24, &v20, &v21);
            if (!AllEntryDataSpec)
            {
              if (v21)
              {
                v10 = *(v20 + 8);
                if (v10)
                {
                  v11 = 1;
LABEL_24:
                  if (v6)
                  {
                    if (!cstdlib_strcmp(v6, v10))
                    {
                      goto LABEL_26;
                    }

LABEL_34:
                    err_GenerateErrorArg();
                    return;
                  }

                  if (v11)
                  {
                    goto LABEL_34;
                  }

LABEL_26:
                  edct_DctItOpen(*(a1 + 120), v24, &v19);
                  while (1)
                  {
                    AllEntryDataSpec = v15;
                    if (v15)
                    {
                      break;
                    }

                    LODWORD(v17) = 0;
                    AllEntryDataSpec = edct_DctItHasEnded(v19, &v17);
                    if (AllEntryDataSpec)
                    {
                      break;
                    }

                    if (v17 == 1)
                    {
                      AllEntryDataSpec = edct_DctItClose(v19);
                      if (!AllEntryDataSpec)
                      {
                        AllEntryDataSpec = edct_DctFreeAllEntryDataSpec(v24, v20, v21);
                        if (!AllEntryDataSpec)
                        {
                          AllEntryDataSpec = edct_DctClose(v24);
                          if (!AllEntryDataSpec)
                          {
                            AllEntryDataSpec = __Dictionary_CheckAndFillTranscriptionSpec(a1);
                            if (!AllEntryDataSpec)
                            {
                              AllEntryDataSpec = (*(*v18 + 32))(v18);
                              if (!AllEntryDataSpec)
                              {
                                OOCAllocator_Free(*(a1 + 120), v9);
                              }
                            }
                          }
                        }
                      }

                      return;
                    }

                    AllEntryDataSpec = edct_DctItCurrent(v19, &v23, &v22, &v21, 0);
                    if (AllEntryDataSpec)
                    {
                      return;
                    }

                    AllEntryDataSpec = edct_DctAddEntry(*(a1 + 128), v23, v22, v21);
                    if (AllEntryDataSpec)
                    {
                      return;
                    }

                    v15 = edct_DctItIncrement(v19);
                  }

                  return;
                }

                v12 = 0;
                v13 = (v20 + 48);
                while (v21 - 1 != v12)
                {
                  v14 = *v13;
                  v13 += 5;
                  v10 = v14;
                  ++v12;
                  if (v14)
                  {
                    v11 = v12 < v21;
                    goto LABEL_24;
                  }
                }
              }

              if (v6)
              {
                goto LABEL_34;
              }

              goto LABEL_26;
            }
          }
        }
      }
    }
  }
}

uint64_t Dictionary_QueryInterface(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  switch(a2)
  {
    case 334061197:
      v3 = a1 + 96;
      goto LABEL_20;
    case 414531721:
      v3 = a1 + 64;
      goto LABEL_20;
    case 414531107:
      v3 = a1 + 72;
LABEL_20:
      *a3 = v3;
      return 0;
  }

  v4 = *(a1 + 152);
  if (a2 == 334065222 && !v4)
  {
    v3 = a1 + 80;
    goto LABEL_20;
  }

  if (a2 == 653755852 && !v4)
  {
    v3 = a1 + 56;
    goto LABEL_20;
  }

  if (a2 == 522614898 && !v4)
  {
    v3 = a1 + 88;
    goto LABEL_20;
  }

  if (a2 == 3420193956)
  {
    v3 = a1 + 112;
    goto LABEL_20;
  }

  if (a2 == 1210932136)
  {
    v3 = a1 + 104;
    goto LABEL_20;
  }

  return VoConObject_QueryInterface(a1, a2, a3);
}

uint64_t Dictionary_RemoveWord(uint64_t a1, uint64_t a2)
{
  result = edct_DctRemoveEntry(*(a1 + 128), a2);
  if (!result)
  {

    return __Dictionary_CheckAndFillTranscriptionSpec(a1);
  }

  return result;
}

uint64_t Dictionary_ReturnInfo(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 120), a2);
  }

  return 0;
}

uint64_t Dictionary_ReturnKeys(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OOCAllocator_Free(*(a1 + 120), a2);
  }

  return 0;
}

uint64_t PNEW_Dictionary_Con(uint64_t a1, uint64_t a2, char **a3, const void *a4, uint64_t a5, _DWORD *a6, int a7, uint64_t *a8)
{
  v18 = 0;
  v16 = OOCAllocator_Malloc(a1, 192, &v18);
  result = v18;
  if (!v18)
  {
    result = Dictionary_Con(v16, a2, a3, a4, a5, a6, a7);
    v18 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v16);
      *a8 = 0;
      return v18;
    }

    else
    {
      *(v16 + 16) = a1;
      *a8 = v16;
    }
  }

  return result;
}

uint64_t PNEW_Dictionary_ConFromBuffer(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 192, &v14);
  result = v14;
  if (!v14)
  {
    result = Dictionary_ConFromBuffer(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *(v12 + 16) = a1;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t PNEW_Dictionary_ConFromStreamReader(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, int a5, uint64_t *a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 192, &v14);
  result = v14;
  if (!v14)
  {
    result = Dictionary_ConFromStreamReader(v12, a2, a3, a4, a5);
    v14 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v12);
      *a6 = 0;
      return v14;
    }

    else
    {
      *(v12 + 16) = a1;
      *a6 = v12;
    }
  }

  return result;
}

uint64_t checkAndFillField(uint64_t a1, int a2, int a3, char *__s, const char **a5)
{
  if (!__s)
  {
    return 0;
  }

  if (a2 && !lhi_IsValidLanguageString(__s))
  {
    goto LABEL_10;
  }

  v8 = *a5;
  if (*a5)
  {
    v9 = cstdlib_strlen(*a5);
    if (!cstdlib_strncmp(v8, v8, v9))
    {
      return 0;
    }

LABEL_10:

    return err_GenerateErrorData();
  }

  return cloneString(a1, a5, __s);
}

uint64_t TranscriptionTokenizer_Con(void *a1, uint64_t a2)
{
  result = Object_Con(a1);
  if (!result)
  {
    *a1 = &__TranscriptionTokenizer;
    a1[1] = a2;

    return PNEW_StringTokenizer_Con(a2, a2, a1 + 2);
  }

  return result;
}

uint64_t TranscriptionTokenizer_Des(uint64_t a1)
{
  result = OOC_PlacementDeleteObject(*(a1 + 8), *(a1 + 16));
  if (!result)
  {

    return Object_Des();
  }

  return result;
}

uint64_t TranscriptionTokenizer_FetchTranscriptions(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v26 = 0;
  if (a3)
  {
    v10 = OOCAllocator_Malloc(*(a1 + 8), 24 * a3 + 8, &v26);
    result = v26;
    if (v26)
    {
      return result;
    }

    v21 = a4;
    v22 = a5;
    v12 = 0;
    v13 = 0;
    *v10 = a3;
    v14 = v10 + 1;
    v23 = a3;
    do
    {
      v15 = a2 + 24 * v13;
      if (*v15 == 1)
      {
        v24 = 0;
        v25 = 0;
        result = StringTokenizer_ExpandPhoneticMultiples(*(a1 + 16), *(a1 + 8), *(v15 + 8), &v25, &v24);
        v26 = result;
        if (result)
        {
          return result;
        }

        v16 = v24;
        if (!v24)
        {
          result = __TranscriptionTokenizer_GetTranscriptionData(a1, a2 + 24 * v13, &v14[3 * v12]);
          v26 = result;
          if (result)
          {
            return result;
          }

          ++v12;
          v16 = v24;
        }

        if (v16 >= 2)
        {
          v17 = v23 + v16;
          v10 = OOCAllocator_Realloc(*(a1 + 8), v10, 24 * (v23 + v16) - 16, &v26);
          result = v26;
          if (v26)
          {
            return result;
          }

          v23 = v17 - 1;
          *v10 = v17 - 1;
          v14 = v10 + 1;
          v16 = v24;
        }

        if (v16)
        {
          v18 = 0;
          v19 = &v14[3 * v12 + 2];
          do
          {
            *(v19 - 4) = *v15;
            *(v19 - 1) = v25[v18];
            *v19 = cstdlib_strlen(v25[v18]) + 1;
            v19 += 3;
            ++v18;
          }

          while (v18 < v24);
          v12 += v18;
        }

        OOCAllocator_Free(*(a1 + 8), v25);
      }

      else
      {
        result = __TranscriptionTokenizer_GetTranscriptionData(a1, a2 + 24 * v13, &v14[3 * v12]);
        v26 = result;
        if (result)
        {
          return result;
        }

        ++v12;
      }

      ++v13;
    }

    while (v13 != a3);
    result = v26;
    a4 = v21;
    a5 = v22;
    v20 = v23;
  }

  else
  {
    result = 0;
    v14 = 0;
    v20 = 0;
  }

  *a4 = v14;
  *a5 = v20;
  return result;
}

uint64_t __TranscriptionTokenizer_GetTranscriptionData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (*a2 == 1)
  {
    v6 = cstdlib_strlen(*(a2 + 8)) + 1;
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v7 = OOCAllocator_Malloc(*(a1 + 8), v6, &v10);
  *(a3 + 8) = v7;
  v8 = v10;
  if (!v10)
  {
    *a3 = *a2;
    cstdlib_memcpy(v7, *(a2 + 8), v6);
    *(a3 + 16) = v6;
    return v10;
  }

  return v8;
}

uint64_t TranscriptionTokenizer_ReturnTranscriptions(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2 - 8;
    v4 = *(a2 - 8);
    if (v4)
    {
      v5 = (a2 + 8);
      do
      {
        v6 = *v5;
        v5 += 3;
        OOCAllocator_Free(*(a1 + 8), v6);
        --v4;
      }

      while (v4);
    }

    OOCAllocator_Free(*(a1 + 8), v3);
  }

  return 0;
}

uint64_t PNEW_TranscriptionTokenizer_Con(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Malloc(a1, 24, &v8);
  result = v8;
  if (!v8)
  {
    result = TranscriptionTokenizer_Con(v6, a2);
    v8 = result;
    if (result)
    {
      OOCAllocator_Free(a1, v6);
      *a3 = 0;
      return v8;
    }

    else
    {
      *a3 = v6;
    }
  }

  return result;
}

uint64_t DestroySubDct(uint64_t a1, void *a2)
{
  v4 = DICT_Destruct(a2 + 7);
  if (!v4)
  {
    v5 = a2[3];
    if (v5)
    {
      OOCAllocator_Free(a1, v5);
    }

    v6 = a2[4];
    if (v6)
    {
      OOCAllocator_Free(a1, v6);
    }

    v7 = a2[5];
    if (v7)
    {
      OOCAllocator_Free(a1, v7);
    }

    v8 = a2[6];
    if (v8)
    {
      OOCAllocator_Free(a1, v8);
    }
  }

  return v4;
}

uint64_t edct_Close_RWDCT(uint64_t *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  if (*a1)
  {
    OOCAllocator_Free(a1[6], *a1);
  }

  v4 = a1[1];
  if (v4)
  {
    OOCAllocator_Free(v2, v4);
  }

  if (v3)
  {
    while (1)
    {
      v5 = v3[17];
      result = DestroySubDct(v2, v3);
      if (result)
      {
        break;
      }

      OOCAllocator_Free(v2, v3);
      v3 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    OOCAllocator_Free(v2, a1);
    return 0;
  }

  return result;
}

uint64_t edct_Close_RODCT(uint64_t a1)
{
  edct_Free_ROSUBDCT_List(*(a1 + 48), *(a1 + 56));
  OOCAllocator_Free(*(a1 + 48), a1);
  return 0;
}

uint64_t edct_Free_ROSUBDCT_List(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 80))
    {
      edct_Free_ROSUBDCT_List(result);
    }

    return OOCAllocator_Free(v3, a2);
  }

  return result;
}

uint64_t edct_GetEntryDataSpec_In_RWDCT(uint64_t a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v25 = 0;
  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  LODWORD(v9) = 0;
  v10 = 0;
  do
  {
    v11 = v4[3];
    if (v11)
    {
      LODWORD(v9) = v9 + cstdlib_strlen(v11) + 41;
    }

    else
    {
      LODWORD(v9) = v9 + 40;
    }

    v12 = v4[4];
    if (v12)
    {
      LODWORD(v9) = v9 + cstdlib_strlen(v12) + 1;
    }

    v13 = v4[6];
    if (v13)
    {
      LODWORD(v9) = v9 + cstdlib_strlen(v13) + 1;
    }

    if (v4[5])
    {
      v9 = (v9 + 128);
    }

    else
    {
      v9 = v9;
    }

    ++v10;
    v4 = v4[17];
  }

  while (v4);
  if (!v9)
  {
    return 0;
  }

  v14 = OOCAllocator_Malloc(a1, v9, &v25);
  result = v25;
  if (!v25)
  {
    v16 = *(a2 + 56);
    if (v16)
    {
      v17 = (v14 + 40 * v10);
      v18 = v14 + 16;
      do
      {
        v19 = *(v16 + 8);
        v20 = *(v16 + 16);
        *(v18 - 8) = 0u;
        *(v18 - 16) = v19;
        *(v18 - 12) = v20;
        *(v18 + 8) = 0u;
        v21 = *(v16 + 24);
        if (v21)
        {
          *(v18 - 8) = v17;
          cstdlib_strcpy(v17, v21);
          v17 += cstdlib_strlen(*(v16 + 24)) + 1;
        }

        v22 = *(v16 + 32);
        if (v22)
        {
          *v18 = v17;
          cstdlib_strcpy(v17, v22);
          v17 += cstdlib_strlen(*(v16 + 32)) + 1;
        }

        v23 = *(v16 + 48);
        if (v23)
        {
          *(v18 + 16) = v17;
          cstdlib_strcpy(v17, v23);
          v17 += cstdlib_strlen(*(v16 + 48)) + 1;
        }

        v24 = *(v16 + 40);
        if (v24)
        {
          *(v18 + 8) = v17;
          cstdlib_memcpy(v17, v24, 0x80uLL);
          v17 += 128;
        }

        v16 = *(v16 + 136);
        v18 += 40;
      }

      while (v16);
      result = v25;
    }

    else
    {
      result = 0;
    }

    *a3 = v14;
    *a4 = v10;
  }

  return result;
}

uint64_t edct_GetEntryDataSpec_In_RODCT(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v24 = 0;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (!v4)
  {
    return 0;
  }

  LODWORD(v8) = 0;
  v9 = 0;
  do
  {
    v10 = v4[2];
    if (v10)
    {
      LODWORD(v8) = v8 + cstdlib_strlen(v10) + 41;
    }

    else
    {
      LODWORD(v8) = v8 + 40;
    }

    v11 = v4[3];
    if (v11)
    {
      LODWORD(v8) = v8 + cstdlib_strlen(v11) + 1;
    }

    v12 = v4[5];
    if (v12)
    {
      LODWORD(v8) = v8 + cstdlib_strlen(v12) + 1;
    }

    if (v4[4])
    {
      v8 = (v8 + 128);
    }

    else
    {
      v8 = v8;
    }

    ++v9;
    v4 = v4[10];
  }

  while (v4);
  if (!v8)
  {
    return 0;
  }

  v13 = OOCAllocator_Malloc(v3, v8, &v24);
  result = v24;
  if (!v24)
  {
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = (v13 + 40 * v9);
      v17 = v13 + 16;
      do
      {
        v18 = *v15;
        if (!*v15)
        {
          v18 = v15[1];
        }

        *(v17 - 16) = *(v18 + 8);
        v19 = *(v18 + 16);
        *(v17 - 8) = 0u;
        *(v17 - 12) = v19;
        *(v17 + 8) = 0u;
        v20 = v15[2];
        if (v20)
        {
          *(v17 - 8) = v16;
          cstdlib_strcpy(v16, v20);
          v16 += cstdlib_strlen(v15[2]) + 1;
        }

        v21 = v15[3];
        if (v21)
        {
          *v17 = v16;
          cstdlib_strcpy(v16, v21);
          v16 += cstdlib_strlen(v15[3]) + 1;
        }

        v22 = v15[5];
        if (v22)
        {
          *(v17 + 16) = v16;
          cstdlib_strcpy(v16, v22);
          v16 += cstdlib_strlen(v15[5]) + 1;
        }

        v23 = v15[4];
        if (v23)
        {
          *(v17 + 8) = v16;
          cstdlib_memcpy(v16, v23, 0x80uLL);
          v16 += 128;
        }

        v15 = v15[10];
        v17 += 40;
      }

      while (v15);
      result = v24;
    }

    else
    {
      result = 0;
    }

    *a2 = v13;
    *a3 = v9;
  }

  return result;
}

uint64_t edct_RemoveEntry_RWDCT(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v11 = -1;
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      v10 = 0;
      result = DICT_Remove(v2 + 56, a2, &v10, &v11);
      if (result)
      {
        return result;
      }

      if (!v11)
      {
        v9 = *(v2 + 4) - v10;
        --*v2;
        *(v2 + 4) = v9;
        v6 += v10;
        ++v5;
        v7 = 1;
      }

      v2 = *(v2 + 136);
    }

    while (v2);
    *(a1 + 24) -= v6;
    if (v5)
    {
      --*(a1 + 20);
      if (!v7)
      {
        return err_GenerateErrorArg();
      }

      return 0;
    }

    if (v7)
    {
      return 0;
    }
  }

  return err_GenerateErrorArg();
}

uint64_t edct_EntryFree_In_RWDCT(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v6 = a3 + (a4 << 6);
    v7 = a3;
    do
    {
      v8 = v7[2];
      if (v8 || (v8 = v7[3]) != 0 || (v8 = v7[4]) != 0 || (v8 = v7[5]) != 0)
      {
        OOCAllocator_Free(a1, v8);
      }

      OOCAllocator_Free(a1, v7[6]);
      v7 += 8;
    }

    while (v7 < v6);
  }

  OOCAllocator_Free(a1, a3);
  return 0;
}

uint64_t edct_EntryFree_In_RODCT(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = &a2[16 * a3];
    v6 = a2;
    do
    {
      if ((*a2 | 2) == 3)
      {
        OOCAllocator_Free(a1, *(v6 + 6));
      }

      v6 += 16;
    }

    while (v6 < v5);
  }

  return OOCAllocator_Free(a1, a2);
}

uint64_t edct_CheckEntryDataHealth(uint64_t a1)
{
  if (*a1 || *(a1 + 56) && **(a1 + 48))
  {
    return 0;
  }

  else
  {
    return err_GenerateErrorData();
  }
}

uint64_t edct_AddEntry_RWDCT(uint64_t a1, char *a2, uint64_t *a3, _DWORD *a4)
{
  v10 = -1;
  *a4 = 2;
  if (*a2)
  {
    result = edct_QuickEntryFind_RWDCT(a1, a2, &v10);
    if (!result)
    {
      if (v10 == 1)
      {
        ++*(a1 + 20);
        *a4 = 0;
      }

      SubDct = GetSubDct(a1, a3);
      v11 = SubDct;
      if (SubDct || (result = CreateSubDct(a1, &v11), !result) && (SubDct = v11, result = InitSubDct(v11, *(a1 + 48), a3), !result))
      {
        result = AddEntrySubDct(SubDct, a2, a3);
        if (!result)
        {
          ++*(a1 + 24);
        }
      }
    }
  }

  else
  {

    return err_GenerateErrorData();
  }

  return result;
}

uint64_t edct_QuickEntryFind_RWDCT(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    while (1)
    {
      memset(v7, 0, sizeof(v7));
      *(v4 + 120) = -1;
      result = DICT_Find(v4 + 56, a2, v7, a3);
      if (result)
      {
        break;
      }

      if (!*a3)
      {
        return 0;
      }

      v4 = *(v4 + 136);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = 0;
    *a3 = 1;
  }

  return result;
}

uint64_t GetSubDct(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return v2;
  }

  while (1)
  {
    v4 = *(v2 + 8);
    if (v4 != -1 && v4 != *a2)
    {
      goto LABEL_37;
    }

    v6 = *(v2 + 16);
    if (v6 != -1 && v6 != *(a2 + 8))
    {
      goto LABEL_37;
    }

    v8 = *(v2 + 12);
    if (v8 != -1 && v8 != *(a2 + 4))
    {
      goto LABEL_37;
    }

    v10 = *(v2 + 24);
    v11 = *(a2 + 16);
    if (v10 && v11)
    {
      if (cstdlib_strcmp(v10, v11))
      {
        goto LABEL_37;
      }
    }

    else if (v10 != v11)
    {
      goto LABEL_37;
    }

    v12 = *(v2 + 32);
    v13 = *(a2 + 24);
    if (v12 && v13)
    {
      if (cstdlib_strcmp(v12, v13))
      {
        goto LABEL_37;
      }
    }

    else if (v12 != v13)
    {
      goto LABEL_37;
    }

    v14 = *(v2 + 48);
    v15 = *(a2 + 40);
    if (v14 && v15)
    {
      if (cstdlib_strcmp(v14, v15))
      {
        goto LABEL_37;
      }
    }

    else if (v14 != v15)
    {
      goto LABEL_37;
    }

    v16 = *(v2 + 40);
    v17 = *(a2 + 32);
    if (!v16 || !v17)
    {
      break;
    }

    if (!cstdlib_memcmp(v16, v17, 0x80uLL))
    {
      goto LABEL_39;
    }

LABEL_37:
    v2 = *(v2 + 136);
    if (!v2)
    {
      return v2;
    }
  }

  if (v16 != v17)
  {
    goto LABEL_37;
  }

LABEL_39:
  if (*(v2 + 8) == -1 && *(v2 + 12) == -1 && *(v2 + 16) == -1)
  {
    *(v2 + 8) = *a2;
    *(v2 + 16) = *(a2 + 8);
  }

  return v2;
}

uint64_t CreateSubDct(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v3 = (a1 + 56);
  v4 = *(a1 + 56);
  v5 = OOCAllocator_Calloc(*(a1 + 48), 1, 144, &v8);
  result = v8;
  if (!v8)
  {
    if (v4)
    {
      do
      {
        v7 = v4;
        v4 = *(v4 + 136);
      }

      while (v4);
      v3 = (v7 + 136);
    }

    *v3 = v5;
    *(v5 + 136) = 0;
    *a2 = v5;
  }

  return result;
}

uint64_t InitSubDct(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v19 = 0;
  *a1 = 0;
  *(a1 + 16) = *(a3 + 2);
  v6 = *a3;
  *(a1 + 24) = 0u;
  v7 = (a1 + 24);
  *(a1 + 8) = v6;
  *(a1 + 40) = 0u;
  v8 = a3[2];
  if (v8)
  {
    v9 = cstdlib_strlen(v8);
    v10 = OOCAllocator_Malloc(a2, v9 + 1, &v19);
    *v7 = v10;
    result = v19;
    if (v19)
    {
      return result;
    }

    cstdlib_strcpy(v10, a3[2]);
  }

  v12 = a3[3];
  if (v12)
  {
    v13 = cstdlib_strlen(v12);
    v14 = OOCAllocator_Malloc(a2, v13 + 1, &v19);
    *(a1 + 32) = v14;
    result = v19;
    if (v19)
    {
      return result;
    }

    cstdlib_strcpy(v14, a3[3]);
  }

  if (a3[4])
  {
    v15 = OOCAllocator_Malloc(a2, 129, &v19);
    *(a1 + 40) = v15;
    result = v19;
    if (v19)
    {
      return result;
    }

    cstdlib_memcpy(v15, a3[4], 0x80uLL);
    *(*(a1 + 40) + 128) = 0;
  }

  v16 = a3[5];
  if (v16)
  {
    v17 = cstdlib_strlen(v16);
    v18 = OOCAllocator_Malloc(a2, v17 + 1, &v19);
    *(a1 + 48) = v18;
    result = v19;
    if (v19)
    {
      return result;
    }

    cstdlib_strcpy(v18, a3[5]);
  }

  return DICT_Init(a1 + 56, a2, 10000, 50000);
}

uint64_t AddEntrySubDct(_DWORD *a1, char *a2, uint64_t a3)
{
  v5 = -1;
  result = DICT_Add((a1 + 14), a2, *(a3 + 48), *(a3 + 56), &v5);
  if (!result)
  {
    if (v5)
    {
      ++*a1;
    }

    ++a1[1];
  }

  return result;
}

uint64_t edct_Open_RODCT(uint64_t a1, int *a2, uint64_t *a3)
{
  v35 = 0;
  v4 = (a2 + 6);
  v3 = *a2;
  *a3 = 0;
  v5 = v3 & 0xFFFFFF;
  if ((v3 & 0xFFFFFFu) - 8 >= 0xFFFFFFFE && !a2[2])
  {
    v10 = OOCAllocator_Calloc(a1, 1, 64, &v35);
    result = v35;
    if (v35)
    {
      return result;
    }

    *(v10 + 32) = 1;
    *(v10 + 48) = a1;
    *(v10 + 20) = *(a2 + 3);
    v11 = cstdlib_strlen(v4);
    v12 = (v11 + 1);
    if (v11)
    {
      v13 = v4;
    }

    else
    {
      v13 = 0;
    }

    *v10 = v13;
    v14 = &v4[v12];
    v15 = cstdlib_strlen(&v4[v12]);
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    *(v10 + 8) = v16;
    v17 = a2[5];
    if (!v17)
    {
      goto LABEL_45;
    }

    v18 = OOCAllocator_Calloc(a1, 1, 88, &v35);
    *(v10 + 56) = v18;
    result = v35;
    if (v35)
    {
      return result;
    }

    if (!a2[5])
    {
LABEL_45:
      *a3 = v10;
      return v35;
    }

    v19 = 0;
    v34 = &v14[4 * v17 + (v15 + 1) + (((v14 + v15 + 1) ^ (2 * (v14 + v15 + 1))) & 3)];
    v20 = &v14[v15 + 1 + (((v14 + v15 + 1) ^ (2 * (v14 + v15 + 1))) & 3)];
    v21 = v18;
    while (1)
    {
      v22 = (v34 + *&v20[4 * v19]);
      if (v5 == 6)
      {
        break;
      }

      v21[1] = v22;
      v23 = (v22 + 13);
      if (*v21)
      {
        v22 = *v21;
LABEL_21:
        if (!v22[5])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      }

      if (!v22[5])
      {
        v22 = 0;
LABEL_26:
        v21[2] = 0;
        if (v22)
        {
          goto LABEL_33;
        }

        goto LABEL_27;
      }

LABEL_22:
      v21[2] = v23;
      v23 += cstdlib_strlen(v23) + 1;
      v22 = *v21;
      if (*v21)
      {
        goto LABEL_33;
      }

LABEL_27:
      if (*(v21[1] + 24))
      {
        v21[3] = v23;
        v23 += cstdlib_strlen(v23) + 1;
        v22 = *v21;
        if (!*v21)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }

LABEL_33:
      v21[3] = 0;
      if (!v22)
      {
LABEL_29:
        if (!*(v21[1] + 28))
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

LABEL_34:
      if (!v22[6])
      {
LABEL_30:
        v21[4] = 0;
        if (!v22)
        {
          goto LABEL_31;
        }

        goto LABEL_36;
      }

LABEL_35:
      v21[4] = v23;
      v23 += 129;
      if (!v22)
      {
LABEL_31:
        if (*(v21[1] + 32))
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

LABEL_36:
      if (v22[7])
      {
LABEL_37:
        v21[5] = v23;
        v23 += cstdlib_strlen(v23) + 1;
        v22 = *v21;
        goto LABEL_38;
      }

LABEL_32:
      v21[5] = 0;
LABEL_38:
      v24 = &v23[(v23 ^ (2 * v23)) & 3];
      v21[6] = v24;
      if (v22)
      {
        v27 = v22[8];
        v25 = v22 + 8;
        v26 = v27;
      }

      else
      {
        v28 = v21[1];
        v29 = *(v28 + 36);
        v25 = (v28 + 36);
        v26 = v29;
      }

      v30 = &v24[4 * v26];
      v31 = *v30;
      v30 += 4;
      v32 = &v30[v31 + (((v30 + v31) ^ (2 * (v30 + v31))) & 3)];
      v21[7] = v30;
      v21[8] = v32;
      v21[9] = &v32[4 * *v25 + 4];
      ++v19;
      v33 = a2[5];
      if (v19 < v33)
      {
        v21 = OOCAllocator_Calloc(a1, 1, 88, &v35);
        *(v18 + 80) = v21;
        result = v35;
        if (v35)
        {
          return result;
        }

        v33 = a2[5];
        v18 = v21;
      }

      if (v19 >= v33)
      {
        goto LABEL_45;
      }
    }

    *v21 = v22;
    v23 = (v22 + 12);
    goto LABEL_21;
  }

  return err_GenerateErrorArg();
}

uint64_t edct_Open_RWDCT(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v6 = OOCAllocator_Calloc(a1, 1, 72, &v8);
  result = v8;
  if (!v8)
  {
    *(v6 + 32) = 0;
    *(v6 + 20) = 0;
    *(v6 + 24) = 0;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
    *(v6 + 48) = a1;
    if (!a2 || (result = DctFromArchive(v6, a2), !result))
    {
      result = 0;
      *a3 = v6;
    }
  }

  return result;
}

uint64_t GetNbrSubDct(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 136);
  }

  while (v1);
  return result;
}

uint64_t edct_EntryLookup_In_RODCT(char *__s1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  v60 = 0;
  v5 = *(a3 + 56);
  if (!v5)
  {
    result = 0;
    v8 = 0;
    v9 = 0;
    goto LABEL_65;
  }

  v6 = a2;
  v50 = a4;
  v51 = a5;
  v8 = 0;
  v9 = 0;
  v54 = *(a3 + 48);
  do
  {
    v61 = 0;
    v10 = *v5;
    v59 = v8;
    if (*v5)
    {
      v11 = v10 + 8;
      v12 = *v5;
    }

    else
    {
      v12 = v5[1];
      v11 = v12 + 9;
    }

    v13 = v12[2];
    v14 = v12[3];
    v58 = v12[4];
    v15 = v5[2];
    v56 = v5[5];
    v57 = v5[4];
    v16 = v5[6];
    v17 = v5[7];
    v18 = *v11;
    if (v6)
    {
      v19 = *(v6 + 8);
      if (v19)
      {
        if (!v15 || cstdlib_strcmp(v19, v15))
        {
          goto LABEL_36;
        }
      }

      v20 = *(v6 + 32);
      if (v20)
      {
        v21 = v5[5];
        if (v21)
        {
          if (cstdlib_strcmp(v20, v21))
          {
            goto LABEL_36;
          }
        }
      }

      v22 = *(v6 + 24);
      if (v22)
      {
        v23 = v5[4];
        if (v23)
        {
          if (cstdlib_memcmp(v22, v23, 0x80uLL))
          {
            goto LABEL_36;
          }
        }
      }

      v10 = *v5;
      if (*v6 != -1)
      {
        v24 = *v5;
        if (!v10)
        {
          v24 = v5[1];
        }

        if (*v6 != v24[2])
        {
          goto LABEL_36;
        }
      }

      v25 = *(v6 + 4);
      if (v25 != -1)
      {
        v26 = *v5;
        if (!v10)
        {
          v26 = v5[1];
        }

        if (v25 != v26[4])
        {
          goto LABEL_36;
        }
      }
    }

    v27 = v10 ? v10 + 8 : (v5[1] + 36);
    if (!*v27)
    {
      goto LABEL_36;
    }

    v52 = v13;
    v53 = v14;
    v28 = v18 - 1;
    v29 = cstdlib_strcmp(__s1, (v17 + *v16));
    v30 = cstdlib_strcmp(__s1, (v17 + v16[v18 - 1]));
    v31 = 0;
    LODWORD(v32) = 0;
    if ((v29 & 0x80000000) == 0 && v30 <= 0)
    {
      v33 = 0;
      while (1)
      {
        v34 = (v28 + v33) >> 1;
        v35 = cstdlib_strcmp(__s1, (v17 + v16[v34]));
        if (!v35)
        {
          break;
        }

        if (v35 > 0)
        {
          v33 = v34 + 1;
        }

        else
        {
          v28 = v34 - 1;
        }

        if (v33 > v28)
        {
          goto LABEL_36;
        }
      }

      v37 = v5[8];
      v38 = *(v37 + 4 * v34);
      v39 = *(v37 + 4 * (v34 + 1));
      if (v39 >= 0)
      {
        v40 = v39;
      }

      else
      {
        v40 = -v39;
      }

      if ((v38 & 0x80000000) != 0)
      {
        v43 = v5[9];
        v44 = (((v43 - v38) & 1) + v43 - v38);
        v45 = v43 + v40;
        v46 = v44 + 2;
        if ((v44 + 2) < v45)
        {
          v31 = 0;
          LODWORD(v32) = 0;
          while (1)
          {
            v32 = (v32 + 1);
            v31 = OOCAllocator_Realloc(v54, v31, v32 << 6, &v61);
            result = v61;
            if (v61)
            {
              break;
            }

            v47 = &v31[16 * v32];
            *(v47 - 16) = v52;
            *(v47 - 15) = v53;
            *(v47 - 14) = v58;
            *(v47 - 6) = v15;
            *(v47 - 4) = v57;
            *(v47 - 3) = v56;
            v48 = *v44;
            *(v47 - 2) = v48;
            if ((*v31 | 2) == 3)
            {
              v49 = OOCAllocator_Malloc(v54, v48, &v61);
              result = v61;
              if (v61)
              {
                break;
              }

              *(v47 - 2) = v49;
              cstdlib_memcpy(v49, v46, *(v47 - 2) & 0xFFFFFFFE);
              v48 = *v44;
            }

            else
            {
              *(v47 - 2) = v46;
            }

            v44 = &v46[v48 + (&v46[v48] & 1)];
            v46 = v44 + 2;
            if ((v44 + 2) >= v45)
            {
              goto LABEL_37;
            }
          }

LABEL_63:
          a4 = v50;
          a5 = v51;
          v8 = v59;
          goto LABEL_65;
        }

LABEL_36:
        LODWORD(v32) = 0;
        v31 = 0;
        goto LABEL_37;
      }

      v31 = OOCAllocator_Malloc(v54, 64, &v61);
      result = v61;
      if (v61)
      {
        goto LABEL_63;
      }

      *v31 = v52;
      v31[1] = v53;
      v31[2] = v58;
      *(v31 + 2) = v15;
      *(v31 + 4) = v57;
      *(v31 + 5) = v56;
      v41 = v40 - v38;
      v31[14] = v41;
      if ((v52 | 2) == 3)
      {
        v42 = OOCAllocator_Malloc(v54, v41, &v61);
        result = v61;
        if (v61)
        {
          goto LABEL_63;
        }

        *(v31 + 6) = v42;
        cstdlib_memcpy(v42, (v5[9] + v38), v31[14] & 0xFFFFFFFE);
      }

      else
      {
        *(v31 + 6) = v5[9] + v38;
      }

      LODWORD(v32) = 1;
    }

LABEL_37:
    result = v61;
    v60 = v61;
    if (v61)
    {
      goto LABEL_63;
    }

    v8 = v59;
    if (v32)
    {
      v9 = OOCAllocator_Realloc(v54, v9, (v32 + v59) << 6, &v60);
      result = v60;
      if (v60)
      {
        goto LABEL_64;
      }

      cstdlib_memcpy((v9 + (v59 << 6)), v31, v32 << 6);
      OOCAllocator_Free(v54, v31);
      v8 = v32 + v59;
    }

    v5 = v5[10];
    v6 = a2;
  }

  while (v5);
  result = v60;
LABEL_64:
  a4 = v50;
  a5 = v51;
LABEL_65:
  *a4 = v9;
  *a5 = v8;
  return result;
}

uint64_t edct_EntryLookup_In_RWDCT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unsigned int *a6)
{
  v8 = *(a4 + 56);
  v24 = -1;
  v25 = 0;
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v22[0] = 0;
      v22[1] = 0;
      v23 = 0;
      cstdlib_memset(v22, 0, 0x18uLL);
      if (!a3)
      {
        break;
      }

      if (*a3 == -1 || *a3 == *(v8 + 8))
      {
        v14 = *(a3 + 4);
        if (v14 == -1 || v14 == *(v8 + 16))
        {
          v15 = *(a3 + 8);
          if (!v15 || (v16 = *(v8 + 24)) != 0 && !cstdlib_strcmp(v15, v16))
          {
            v17 = *(a3 + 32);
            if (!v17 || (v18 = *(v8 + 48)) == 0 || !cstdlib_strcmp(v17, v18))
            {
              v19 = *(a3 + 24);
              if (!v19)
              {
                break;
              }

              v20 = *(v8 + 40);
              if (!v20 || !cstdlib_memcmp(v19, v20, 0x80uLL))
              {
                break;
              }
            }
          }
        }
      }

LABEL_24:
      v8 = *(v8 + 136);
      if (!v8)
      {
        result = v25;
        goto LABEL_27;
      }
    }

    *(v8 + 120) = -1;
    while (1)
    {
      result = DICT_Find(v8 + 56, a2, v22, &v24);
      v25 = result;
      if (result)
      {
        break;
      }

      if (!v24)
      {
        v13 = OOCAllocator_Realloc(a1, v13, (v12 + 1) << 6, &v25);
        result = v25;
        if (v25)
        {
          return result;
        }

        result = edct_CopyFoundMatch(a1, v13 + (v12 << 6), v8, v22);
        v25 = result;
        if (result)
        {
          return result;
        }

        ++v12;
      }

      if (HIDWORD(v23) != 1)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    result = 0;
    v13 = 0;
    v12 = 0;
LABEL_27:
    *a5 = v13;
    *a6 = v12;
  }

  return result;
}

uint64_t edct_CopyFoundMatch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v8 = *(a3 + 24);
  if (v8)
  {
    v9 = cstdlib_strlen(v8) + 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 32);
  if (v10)
  {
    v9 += cstdlib_strlen(v10) + 1;
  }

  v11 = *(a3 + 48);
  if (*(a3 + 40))
  {
    v9 += 128;
  }

  if (v11)
  {
    v9 += cstdlib_strlen(v11) + 1;
  }

  if (!v9)
  {
    v12 = 0;
    v15 = 0;
    v16 = 0;
LABEL_15:
    v17 = 0;
    goto LABEL_25;
  }

  v12 = OOCAllocator_Malloc(a1, v9, &v22);
  result = v22;
  if (v22)
  {
    return result;
  }

  v14 = *(a3 + 24);
  if (v14)
  {
    cstdlib_strcpy(v12, v14);
    v15 = &v12[cstdlib_strlen(v12) + 1];
  }

  else
  {
    v15 = v12;
    v12 = 0;
  }

  v18 = *(a3 + 32);
  if (v18)
  {
    cstdlib_strcpy(v15, v18);
    v16 = &v15[cstdlib_strlen(v15) + 1];
  }

  else
  {
    v16 = v15;
    v15 = 0;
  }

  v19 = *(a3 + 40);
  if (v19)
  {
    cstdlib_memcpy(v16, v19, 0x80uLL);
    v17 = v16 + 128;
  }

  else
  {
    v17 = v16;
    v16 = 0;
  }

  v20 = *(a3 + 48);
  if (!v20)
  {
    goto LABEL_15;
  }

  cstdlib_strcpy(v17, v20);
  cstdlib_strlen(v17);
LABEL_25:
  v21 = OOCAllocator_Malloc(a1, *(a4 + 16), &v22);
  result = v22;
  if (!v22)
  {
    cstdlib_memcpy(v21, *(a4 + 8), *(a4 + 16));
    *a2 = *(a3 + 8);
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
    *(a2 + 8) = *(a3 + 16);
    *(a2 + 48) = v21;
    *(a2 + 56) = *(a4 + 16);
    return v22;
  }

  return result;
}

uint64_t srvspi_MemblockInit(uint64_t a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return err_GenerateErrorArg();
  }

  *a1 = 0;
  *(a1 + 4) = a2;
  *(a1 + 8) = a3;
  return 0;
}

uint64_t srvspi_MemblockAlign(int *a1, unsigned int a2)
{
  if (!a1)
  {
    return err_GenerateErrorArg();
  }

  v2 = *a1;
  v3 = *a1 % a2;
  v4 = v3 ? a2 - v3 : 0;
  if (*(a1 + 1) && a1[1] < (v4 + v2))
  {
    return err_GenerateErrorArg();
  }

  if (v4)
  {
    *a1 = v4 + v2;
  }

  return 0;
}

uint64_t srvspi_MemblockAlloc(unsigned int *a1, int a2, void *a3)
{
  if (!a1)
  {
    return err_GenerateErrorArg();
  }

  if (a3)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      v3 += *a1;
    }

    *a3 = v3;
  }

  v4 = *a1 + a2;
  *a1 = v4;
  if (!*(a1 + 1) || a1[1] >= v4)
  {
    return 0;
  }

  else
  {
    return err_GenerateErrorArg();
  }
}

uint64_t srvspi_MemblockGetUsed(_DWORD *a1, _DWORD *a2)
{
  if (!a1 || !a2)
  {
    return err_GenerateErrorArg();
  }

  *a2 = *a1;
  return 0;
}

uint64_t srvspi_MemblockGetBegin(uint64_t a1, void *a2)
{
  if (!a1 || !a2)
  {
    return err_GenerateErrorArg();
  }

  *a2 = *(a1 + 8);
  return 0;
}

uint64_t edct_DctArchive(uint64_t a1, char *a2, int *a3, int a4)
{
  if (!a4 && *(a1 + 44) == 1 || *(a1 + 32) == 1)
  {
    return err_GenerateErrorArg();
  }

  else
  {
    return DctArchive(a1, a2, a3, a4);
  }
}

uint64_t edct_DctArchiveStream(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, int a5)
{
  v13 = 0;
  v14 = 0;
  v12 = 0;
  result = edct_DctArchive(a1, 0, &v12, a5);
  v15 = result;
  if (!result)
  {
    v11 = OOCAllocator_Malloc(*(a1 + 48), v12, &v15);
    result = v15;
    if (!v15)
    {
      result = edct_DctArchive(a1, v11, &v12, a5);
      v15 = result;
      if (!result)
      {
        result = PNEW_BinBlockStreamWriter_Con(*(a1 + 48), *(a1 + 48), a2, a3, a4, 341630714, 0x10000, 10, &v14);
        v15 = result;
        if (!result)
        {
          result = (*(v14[3] + 32))(v14 - *(v14[3] + 120) + 24, 414429700, 0x10000, &v13);
          v15 = result;
          if (!result)
          {
            result = (*(*v13 + 8))(v13 - *(*v13 + 56), v11, v12);
            v15 = result;
            if (!result)
            {
              result = (*(v14[3] + 48))(v14 - *(v14[3] + 120) + 24, v13);
              v15 = result;
              if (!result)
              {
                result = (*(*v14 + 32))(v14);
                v15 = result;
              }
            }
          }
        }
      }
    }

    if (v11)
    {
      OOCAllocator_Free(*(a1 + 48), v11);
      return v15;
    }
  }

  return result;
}

uint64_t edct_DctFreeAllEntryDataSpec(uint64_t a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  if (v5 == 1)
  {
    return edct_FreeEntryDataSpec_In_RODCT(v6, a1, a2);
  }

  else
  {
    return edct_FreeEntryDataSpec_In_RWDCT(v6, a1, a2);
  }
}

uint64_t edct_DctAddEntry(uint64_t a1, char *a2, uint64_t *a3, unsigned int a4)
{
  if (*(a1 + 32) == 1)
  {

    return err_GenerateErrorArg();
  }

  else if (a4)
  {
    v5 = a3;
    v8 = &a3[8 * a4];
    while (1)
    {
      v9 = 0;
      result = edct_CheckEntryDataHealth(v5);
      if (result)
      {
        break;
      }

      result = edct_AddEntry_RWDCT(a1, a2, v5, &v9);
      if (result)
      {
        break;
      }

      v5 += 8;
      if (v5 >= v8)
      {
        return 0;
      }
    }
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t edct_DctOpen(uint64_t a1, int *a2, int a3, uint64_t *a4)
{
  v13 = a2;
  v12 = 0;
  if (!a2)
  {
    goto LABEL_7;
  }

  result = DctDecryptArchive(&v13, &v12);
  if (result)
  {
    return result;
  }

  v8 = v13;
  if (!v13)
  {
LABEL_7:
    if (a3 == 1)
    {
      result = err_GenerateErrorArg();
      if (result)
      {
        return result;
      }

      goto LABEL_12;
    }

    v9 = a1;
    v8 = 0;
    v10 = a4;
LABEL_11:
    result = edct_Open_RWDCT(v9, v8, v10);
    if (result)
    {
      return result;
    }

    goto LABEL_12;
  }

  v9 = a1;
  v10 = a4;
  if (a3 != 1)
  {
    goto LABEL_11;
  }

  result = edct_Open_RODCT(a1, v13, a4);
  if (result)
  {
    return result;
  }

LABEL_12:
  result = 0;
  v11 = *a4;
  v11[9] = 0;
  v11[10] = 0;
  v11[11] = v12;
  return result;
}

uint64_t edct_DctUpdateBuffer(uint64_t *a1, uint64_t a2, const void *a3, uint64_t a4, _DWORD *a5)
{
  v14 = 0;
  v13 = 0;
  v12 = 0;
  result = PNEW_BinBlockStreamReader_Con(a2, a2, a3, a4, a5, &v14);
  if (!result)
  {
    if ((*(v14[4] + 56))(v14 - *(v14[4] + 224) + 32) != 341630714)
    {
      return err_GenerateErrorData();
    }

    v8 = (*(v14[4] + 64))(v14 - *(v14[4] + 224) + 32);
    if (!BinBlockStreamReader_IsVersionAccepted(v8, 0x10000))
    {
      return err_GenerateErrorVersion();
    }

    result = (*(v14[4] + 8))(v14 - *(v14[4] + 224) + 32, 414429700, 0, &v12, &v13);
    v11 = result;
    if (result)
    {
      return result;
    }

    if (BinBlockStreamReader_IsVersionAccepted(v13, 0x10000))
    {
      v9 = (*(*v12 + 24))(v12 - *(*v12 + 48));
      v10 = OOCAllocator_Malloc(a2, v9, &v11);
      *a1 = v10;
      result = v11;
      if (!v11)
      {
        result = (*(*v12 + 32))(v12 - *(*v12 + 48), v10);
        v11 = result;
        if (!result)
        {
          result = (*(v14[4] + 24))(v14 - *(v14[4] + 224) + 32, v12);
          v11 = result;
          if (!result)
          {
            return (*(*v14 + 32))(v14);
          }
        }
      }
    }

    else
    {
      return err_GenerateErrorVersion();
    }
  }

  return result;
}

uint64_t edct_DctOpenFromStream(uint64_t a1, const void *a2, uint64_t a3, _DWORD *a4, int a5, uint64_t *a6)
{
  v12 = 0;
  updated = edct_DctUpdateBuffer(&v12, a1, a2, a3, a4);
  v10 = v12;
  if (!updated)
  {
    updated = edct_DctOpen(a1, v12, a5, a6);
  }

  if (v10)
  {
    OOCAllocator_Free(a1, v10);
  }

  return updated;
}

uint64_t edct_DctGetEntryData(uint64_t a1, char *__s1, uint64_t a3, uint64_t *a4, unsigned int *a5)
{
  *a4 = 0;
  *a5 = 0;
  if (*(a1 + 32) == 1)
  {
    return edct_EntryLookup_In_RODCT(__s1, a3, a1, a4, a5);
  }

  else
  {
    return edct_EntryLookup_In_RWDCT(*(a1 + 48), __s1, a3, a1, a4, a5);
  }
}

uint64_t edct_DctRemoveEntry(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    return err_GenerateErrorArg();
  }

  else
  {
    return edct_RemoveEntry_RWDCT(a1, a2);
  }
}

uint64_t edct_DctFreeEntryData(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  if (!a3)
  {
    return 0;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  if (v7 == 1)
  {
    edct_EntryFree_In_RODCT(v8, a2, a3);
    return 0;
  }

  return edct_EntryFree_In_RWDCT(v8, a1, a2, a3);
}

uint64_t edct_DctGetInfo(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 20);
  if (*(a1 + 32))
  {
    *a2 = v4;
    *(a2 + 8) = v5;
LABEL_3:
    *(a2 + 20) = v6;
    *(a2 + 16) = *(a1 + 44);
    return v13;
  }

  v8 = *(a1 + 48);
  if (v5)
  {
    v9 = cstdlib_strlen(*(a1 + 8));
    v10 = OOCAllocator_Malloc(v8, v9 + 1, &v13);
    *(a2 + 8) = v10;
    result = v13;
    if (v13)
    {
      return result;
    }

    cstdlib_strcpy(v10, v5);
    if (!v4)
    {
LABEL_8:
      *a2 = 0;
      goto LABEL_3;
    }
  }

  else
  {
    *(a2 + 8) = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v11 = cstdlib_strlen(v4);
  v12 = OOCAllocator_Malloc(v8, v11 + 1, &v13);
  *a2 = v12;
  result = v13;
  if (!v13)
  {
    cstdlib_strcpy(v12, v4);
    goto LABEL_3;
  }

  return result;
}

uint64_t edct_DctFreeInfo(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 32))
  {
    v4 = a2[1];
    if (v4)
    {
      OOCAllocator_Free(*(a1 + 48), v4);
    }

    if (*a2)
    {
      OOCAllocator_Free(*(a1 + 48), *a2);
    }
  }

  return 0;
}

uint64_t edct_DctGetAllEntryDataSpec(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  *a2 = 0;
  *a3 = 0;
  if (*(a1 + 32) == 1)
  {
    return edct_GetEntryDataSpec_In_RODCT(a1, a2, a3);
  }

  else
  {
    return edct_GetEntryDataSpec_In_RWDCT(*(a1 + 48), a1, a2, a3);
  }
}

uint64_t edct_DctClose(uint64_t a1)
{
  if (*(a1 + 36))
  {
    return err_GenerateErrorArg();
  }

  if (*(a1 + 32) == 1)
  {
    return edct_Close_RODCT(a1);
  }

  return edct_Close_RWDCT(a1);
}

uint64_t edct_DctSetInfo(uint64_t a1, const char **a2)
{
  v13 = 0;
  if (*(a1 + 32) == 1)
  {
    return err_GenerateErrorArg();
  }

  else
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      OOCAllocator_Free(*(a1 + 48), v4);
    }

    if (*a1)
    {
      OOCAllocator_Free(*(a1 + 48), *a1);
    }

    v5 = a2[1];
    if (v5)
    {
      v6 = *(a1 + 48);
      v7 = cstdlib_strlen(v5);
      v8 = OOCAllocator_Malloc(v6, v7 + 1, &v13);
      *(a1 + 8) = v8;
      if (v13)
      {
        return v13;
      }

      cstdlib_strcpy(v8, a2[1]);
    }

    else
    {
      *(a1 + 8) = 0;
    }

    if (*a2)
    {
      v9 = *(a1 + 48);
      v10 = cstdlib_strlen(*a2);
      v11 = OOCAllocator_Malloc(v9, v10 + 1, &v13);
      *a1 = v11;
      if (!v13)
      {
        cstdlib_strcpy(v11, *a2);
      }
    }

    else
    {
      *a1 = 0;
    }
  }

  return v13;
}

uint64_t edct_DctInitSubDctFromTransSpec(uint64_t a1, uint64_t *a2)
{
  v5 = 0;
  result = CreateSubDct(a1, &v5);
  if (!result)
  {
    return InitSubDct(v5, *(a1 + 48), a2);
  }

  return result;
}

uint64_t DctIt_RO_Open(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = 0;
  v5 = OOCAllocator_Calloc(a1, 1, 80, &v7);
  result = v7;
  if (!v7)
  {
    *(v5 + 64) = *(a2 + 56);
    *(v5 + 72) = 0;
    *a3 = v5;
  }

  return result;
}

uint64_t DctIt_RO_HasEnded(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 72);
    while (1)
    {
      v3 = (*v1 ? *v1 + 32 : v1[1] + 36);
      if (v2 != *v3)
      {
        break;
      }

      v2 = 0;
      v1 = v1[10];
      *(a1 + 64) = v1;
      *(a1 + 72) = 0;
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *(a1 + 40) = 1;
  }

  return 0;
}

uint64_t DctIt_RO_Increment(uint64_t a1)
{
  v1 = *(a1 + 72) + 1;
  *(a1 + 72) = v1;
  v2 = *(a1 + 64);
  do
  {
    if (*v2)
    {
      v3 = (*v2 + 32);
    }

    else
    {
      v3 = (v2[1] + 36);
    }

    if (v1 != *v3)
    {
      break;
    }

    v1 = 0;
    v2 = v2[10];
    *(a1 + 64) = v2;
    *(a1 + 72) = 0;
    *(a1 + 48) = 1;
  }

  while (v2);
  return 0;
}

uint64_t DctIt_RO_Current(uint64_t a1)
{
  v29 = 0;
  v2 = *a1;
  v3 = *(a1 + 64);
  v4 = *v3;
  if (!*v3)
  {
    v4 = v3[1];
  }

  v27 = v4[3];
  v28 = v4[2];
  v26 = v4[4];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *(a1 + 24) = 0;
  v9 = v3[8];
  v10 = *(a1 + 72);
  v11 = *(v9 + 4 * v10);
  *(a1 + 16) = 0;
  v12 = *(v9 + 4 * (v10 + 1));
  if (v12 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = -v12;
  }

  if ((v11 & 0x80000000) != 0)
  {
    v16 = v3[9];
    v17 = (((v16 + -v11) & 1) + v16 + -v11);
    v18 = v16 + v13;
    v19 = v17 + 1;
    if ((v17 + 1) < v18)
    {
      LODWORD(v20) = 0;
      v21 = 0;
      do
      {
        if (*(a1 + 56))
        {
          v22 = OOCAllocator_Realloc(v2, v21, (v20 + 1) << 6, &v29);
          *(a1 + 16) = v22;
          v15 = v29;
          if (v29)
          {
            return v15;
          }

          v21 = v22;
          v20 = *(a1 + 24);
          v23 = v22 + (v20 << 6);
          *v23 = v28;
          *(v23 + 4) = v27;
          *(v23 + 8) = v26;
          *(v23 + 16) = v5;
          *(v23 + 24) = v6;
          *(v23 + 32) = v7;
          *(v23 + 40) = v8;
          v24 = *v17;
          *(v23 + 56) = v24;
          *(v23 + 48) = v19;
        }

        else
        {
          v24 = *v17;
        }

        v17 = (v19 + v24 + ((v19 + v24) & 1));
        LODWORD(v20) = v20 + 1;
        *(a1 + 24) = v20;
        v19 = v17 + 1;
      }

      while ((v17 + 1) < v18);
    }

    goto LABEL_18;
  }

  if (!*(a1 + 56))
  {
LABEL_10:
    *(a1 + 24) = 1;
LABEL_18:
    *(a1 + 32) = v3[7] + *(v3[6] + 4 * *(a1 + 72));
    return v29;
  }

  v14 = OOCAllocator_Malloc(v2, 64, &v29);
  *(a1 + 16) = v14;
  v15 = v29;
  if (!v29)
  {
    *v14 = v28;
    *(v14 + 4) = v27;
    *(v14 + 8) = v26;
    *(v14 + 16) = v5;
    *(v14 + 24) = v6;
    *(v14 + 32) = v7;
    *(v14 + 40) = v8;
    *(v14 + 48) = v3[9] + v11;
    *(v14 + 56) = v13 - v11;
    goto LABEL_10;
  }

  return v15;
}

uint64_t DctIt_RO_FreeLastItem(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    OOCAllocator_Free(*a1, v1);
    a1[2] = 0;
  }

  return 0;
}

uint64_t DctIt_RO_Reset(uint64_t a1)
{
  *(a1 + 64) = *(*(a1 + 8) + 56);
  *(a1 + 72) = 0;
  *(a1 + 48) = 1;
  return 0;
}

uint64_t DctIt_RW_Open(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = 0;
  v5 = OOCAllocator_Calloc(a1, 1, 144, &v8);
  result = v8;
  if (!v8)
  {
    v7 = *(a2 + 56);
    *(v5 + 64) = v7;
    if (!v7 || (result = DICTITT_Init(v5 + 72, (v7 + 56)), !result))
    {
      result = 0;
      *a3 = v5;
    }
  }

  return result;
}

uint64_t DctIt_RW_Close(uint64_t a1)
{
  if (*(a1 + 64))
  {
    return ARRAY_Flush(a1 + 96);
  }

  else
  {
    return 0;
  }
}

uint64_t DctIt_RW_Reset(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!*(a1 + 64) || (result = ARRAY_Flush(a1 + 96), !result))
  {
    v4 = *(v2 + 56);
    *(a1 + 64) = v4;
    if (v4)
    {
      result = DICTITT_Init(a1 + 72, (v4 + 56));
      if (!result)
      {
        *(a1 + 48) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DctIt_RW_HasEnded(uint64_t a1)
{
  if (*(a1 + 64))
  {
    while (!*(a1 + 80) && *(a1 + 136) == -1)
    {
      result = ARRAY_Flush(a1 + 96);
      if (result)
      {
        return result;
      }

      v3 = *(*(a1 + 64) + 136);
      *(a1 + 64) = v3;
      if (!v3)
      {
        goto LABEL_8;
      }

      result = DICTITT_Init(a1 + 72, (v3 + 56));
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  else
  {
LABEL_8:
    result = 0;
    *(a1 + 40) = 1;
  }

  return result;
}

uint64_t DctIt_RW_Increment(uint64_t a1)
{
  if (*(a1 + 136) != -1 || (result = BINTREEITT_Inc((a1 + 80)), !result))
  {
    for (; !*(a1 + 80); *(a1 + 48) = 1)
    {
      if (*(a1 + 136) != -1)
      {
        break;
      }

      result = ARRAY_Flush(a1 + 96);
      if (result)
      {
        return result;
      }

      v3 = *(*(a1 + 64) + 136);
      *(a1 + 64) = v3;
      if (!v3)
      {
        break;
      }

      result = DICTITT_Init(a1 + 72, (v3 + 56));
      if (result)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t DctIt_RW_Current(uint64_t a1)
{
  found = 0;
  __s[0] = 0;
  __s[1] = 0;
  v10 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  while (1)
  {
    DICTITT_Current((a1 + 72), &v7);
    *__s = v7;
    v10 = v8;
    if (*(a1 + 56))
    {
      v2 = OOCAllocator_Realloc(*a1, *(a1 + 16), (*(a1 + 24) + 1) << 6, &found);
      *(a1 + 16) = v2;
      if (found)
      {
        break;
      }

      found = edct_CopyFoundMatch(*a1, v2 + (*(a1 + 24) << 6), *(a1 + 64), __s);
      if (found)
      {
        break;
      }
    }

    ++*(a1 + 24);
    if (HIDWORD(v10) != 1)
    {
      if (*(a1 + 52))
      {
        v3 = *a1;
        v4 = cstdlib_strlen(__s[0]);
        v5 = OOCAllocator_Malloc(v3, v4 + 1, &found);
        *(a1 + 32) = v5;
        if (!found)
        {
          cstdlib_strcpy(v5, __s[0]);
        }
      }

      return found;
    }
  }

  return found;
}