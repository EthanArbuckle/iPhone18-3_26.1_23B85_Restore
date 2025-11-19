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

    return kaldi::OffsetFileInputImpl::MyType("lua_stack_arg");
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

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
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
        if (!LDO_FreeLDOTreeNodeVector(v2, &v9))
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

  LDO_FreeLDOTreeNodeVector(v12, &v9);
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

    return kaldi::OffsetFileInputImpl::MyType("lua_stack_arg");
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
      v9 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*v3);
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
            v10 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v8);
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

    return kaldi::OffsetFileInputImpl::MyType("lua_stack_arg");
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

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
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

    lua_setfield(a1, -1001000, "LUA_LOG_PFLOGCALLBACK");
    lua_setfield(a1, -1001000, "LUA_LOG_HHEAP");
    lua_setfield(a1, -1001000, "LUA_LOG_HLOG");
  }

  return 0;
}

uint64_t log_LuaLog(void *a1)
{
  if (!lua_isstring(a1, 1))
  {
    return 0;
  }

  v2 = lua_tolstring(a1, 1, 0);
  if (lua_getfield(a1, -1001000, "LUA_LOG_HLOG") != 2)
  {
    return 0;
  }

  v3 = lua_touserdata(a1, -1);
  if (lua_getfield(a1, -1001000, "LUA_LOG_HHEAP") != 2)
  {
    return 0;
  }

  v4 = lua_touserdata(a1, -1);
  if (lua_getfield(a1, -1001000, "LUA_LOG_PFLOGCALLBACK") != 2)
  {
    return 0;
  }

  v5 = lua_touserdata(a1, -1);
  v6 = strlen(v2);
  v7 = v6;
  v8 = 0;
  v9 = v6;
  if (v6)
  {
    v10 = 0;
    do
    {
      v11 = &v2[v10];
      if (*v11 == 37)
      {
        if (v11[1] == 37)
        {
          ++v10;
        }

        else
        {
          LOWORD(v8) = v8 + 1;
        }
      }

      ++v10;
    }

    while (v10 < v6);
    v8 = v8;
  }

  v12 = heap_Calloc(v4, 1, v6 + v8 + 1);
  if (v12)
  {
    v13 = v12;
    if (v9)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = &v2[v15];
        v17 = *v16;
        if (v17 == 37)
        {
          if (v16[1] == 37)
          {
            ++v15;
          }

          else
          {
            v5(v3, "Escaping non-escaped percent symbol");
          }

          LOBYTE(v17) = 37;
          *(v13 + v14++) = 37;
        }

        *(v13 + v14) = v17;
        ++v15;
        ++v14;
      }

      while (v15 < v7);
    }

    v5(v3, v13);
    heap_Free(v4, v13);
    return 0;
  }

  return LuaVMUtil_error(a1, "Error in Log.log");
}

uint64_t logvm_LuaLog(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(&v9[14] + 9, 0, 23);
  memset(&v9[1] + 9, 0, 208);
  v8[0] = 0;
  v8[1] = 0;
  if (lua_getfield(a1, -1001000, "LUA_LOG_HLOG") == 2)
  {
    v2 = lua_touserdata(a1, -1);
    if (lua_getfield(a1, -1001000, "LUA_LOG_PFLOGCALLBACK") == 2)
    {
      v3 = lua_touserdata(a1, -1);
      if (lua_getfield(a1, -1001000, "LUA_LOG_ALLOCATED_BYTES"))
      {
        v4 = lua_touserdata(a1, -1);
        if (lua_getfield(a1, -1001000, "LUA_LOG_PEAK_ALLOCATED_BYTES"))
        {
          v5 = lua_touserdata(a1, -1);
          strcpy(v9, "LUA VM bytes: allocated=");
          LH_itoa(*v4, v8, 0xAu);
          __strcat_chk();
          __strcat_chk();
          LH_itoa(*v5, v8, 0xAu);
          __strcat_chk();
          v3(v2, v9);
        }
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t luaopen_Log(void *a1)
{
  lua_createtable(a1, 0, 2);
  luaL_setfuncs(a1, &lib_m_4, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "Log");
  return 0;
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

    return kaldi::OffsetFileInputImpl::MyType("Invalid LUA_DICTIONARYLOOKUP_PSPIOBJSTDCTLKP");
  }
}

uint64_t hlpGetPartNumber(uint64_t a1, uint64_t a2, uint64_t a3, char *__s1, char *a5)
{
  v17 = 0;
  if (strcmp(__s1, "tn"))
  {
    v10 = FE_DCT_TO_PARAM_NAME_MAP;
    v11 = 2;
    while (--v11)
    {
      v12 = v10 + 2;
      v13 = strcmp(__s1, v10[2]);
      v10 = v12;
      if (!v13)
      {
        goto LABEL_7;
      }
    }

LABEL_10:
    result = 0;
    v15 = 1;
    goto LABEL_11;
  }

  v12 = FE_DCT_TO_PARAM_NAME_MAP;
LABEL_7:
  v14 = v12[1];
  if (!v14)
  {
    goto LABEL_10;
  }

  if (((*(a1 + 256))(a2, a3, v14, "1", &v17) & 0x80000000) == 0)
  {
    v15 = atoi(v17);
    result = 0;
LABEL_11:
    *a5 = v15;
    return result;
  }

  return kaldi::OffsetFileInputImpl::MyType("pfGetCfgParamVal returned an error");
}

uint64_t hlpSplitAndPush(void *a1, const char *a2, const char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  lua_createtable(a1, 0, 0);
  if (a2)
  {
    v6 = strlen(a2);
    if (v6 >= 0x100)
    {
      v7 = 256;
    }

    else
    {
      v7 = v6;
    }

    __strncpy_chk();
    *(v15 + v7) = *a3;
    v8 = strstr(v15, a3);
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = v15;
      do
      {
        *v9 = 0;
        lua_pushstring(a1, v11);
        v12 = LuaVMUtil_u32_index_to_luainteger(v10);
        lua_rawseti(a1, -2, v12);
        ++v10;
        v11 = v9 + 1;
        v9 = strstr(v9 + 1, a3);
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t hlpSplitAndPushTN(void *a1, char *__s1, char *__s2)
{
  v6 = strstr(__s1, __s2);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szNormOrth");
    if (result)
    {
      return result;
    }
  }

  v8 = strstr(v7 + 1, __s2);
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szTnLabel");
    if (result)
    {
      return result;
    }
  }

  v10 = strstr(v9 + 1, __s2);
  v11 = v10;
  if (v10)
  {
    *v10 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szDomainLabel");
    if (result)
    {
      return result;
    }
  }

  v12 = strstr(v11 + 1, __s2);
  v13 = v12;
  if (v12)
  {
    *v12 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szStdOrth");
    if (result)
    {
      return result;
    }
  }

  v14 = strstr(v13 + 1, __s2);
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
    v16 = atoi(v13 + 1);
    lua_pushinteger(a1, v16);
    lua_setfield(a1, -2, "sens");
    v17 = atoi(v15 + 1);
    lua_pushinteger(a1, v17);
    lua_setfield(a1, -2, "prio");
    return 0;
  }

  result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szSens");
  if (!result)
  {
    goto LABEL_11;
  }

  return result;
}

uint64_t hlpSplitAndPushG2P(void *a1, char *__s1, char *__s2)
{
  v6 = strstr(__s1, __s2);
  v7 = v6;
  if (v6)
  {
    *v6 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szPhon");
    if (result)
    {
      return result;
    }
  }

  v8 = strstr(v7 + 1, __s2);
  v9 = v8;
  if (v8)
  {
    *v8 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szTnLabel");
    if (result)
    {
      return result;
    }
  }

  v10 = strstr(v9 + 1, __s2);
  v11 = v10;
  if (v10)
  {
    *v10 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szDomainLabel");
    if (result)
    {
      return result;
    }
  }

  v12 = strstr(v11 + 1, __s2);
  v13 = v12;
  if (v12)
  {
    *v12 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szPos");
    if (result)
    {
      return result;
    }
  }

  v14 = strstr(v13 + 1, __s2);
  v15 = v14;
  if (v14)
  {
    *v14 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szCgn");
    if (result)
    {
      return result;
    }
  }

  v16 = strstr(v15 + 1, __s2);
  v17 = v16;
  if (v16)
  {
    *v16 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szPrio");
    if (result)
    {
      return result;
    }
  }

  v18 = strstr(v17 + 1, __s2);
  v19 = v18;
  if (v18)
  {
    *v18 = 0;
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("Unable to parse szMde");
    if (result)
    {
      return result;
    }
  }

  v20 = v19 + 1;
  v21 = strstr(v20, __s2);
  v22 = v21;
  if (v21)
  {
    *v21 = 0;
  }

  else
  {
    v25 = kaldi::OffsetFileInputImpl::MyType("Unable to parse szLng");
    v23 = v20;
    if (v25)
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
  v27 = atoi(v15 + 1);
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
          return kaldi::OffsetFileInputImpl::MyType("pfPartLookupAddonDct returned an error");
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
  v27 = *MEMORY[0x1E69E9840];
  v26 = 0;
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
  v12 = 0u;
  v13 = 0u;
  *__dst = 0u;
  v11 = 0u;
  *&v9 = safeh_GetNullHandle();
  *(&v9 + 1) = v2;
  v7 = 0;
  v8 = 0;
  if (lua_isstring(a1, 1))
  {
    v3 = lua_tolstring(a1, 1, 0);
    if (lua_isstring(a1, 2))
    {
      v4 = lua_tolstring(a1, 2, 0);
      strncpy(__dst, v4, 0x100uLL);
    }

    else
    {
      __dst[0] = 0;
    }

    if (!hlpGetDctHandleAndInterface(a1, &v8, &v9))
    {
      if (((*(v8 + 256))(v9, *(&v9 + 1), v3, __dst, &v7) & 0x80000000) == 0)
      {
        lua_pushstring(a1, v7);
        result = 1;
        goto LABEL_7;
      }

      kaldi::OffsetFileInputImpl::MyType("pfGetCfgParamVal returned an error");
    }
  }

  result = LuaVMUtil_error(a1, "Error in DictionaryLookup:get_fe_parameter_value");
LABEL_7:
  v6 = *MEMORY[0x1E69E9840];
  return result;
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

  if (((*(v5 + 240))(v6, *(&v6 + 1), v3, v4, &v13, &__c_1, &__c, v12, 0) & 0x80000000) == 0)
  {
    v8 = __c_1;
    if (__c_1 && v13)
    {
      v9 = strchr(*v13, __c);
      if (!v9)
      {
        goto LABEL_13;
      }

      *v9 = 0;
      v8 = __c_1;
    }

    if (!v8)
    {
      lua_pushnil(a1);
      return 1;
    }

LABEL_13:
    lua_pushstring(a1, *v13);
    return 1;
  }

  kaldi::OffsetFileInputImpl::MyType("pfPartLookupAddonDct returned an error");
  return LuaVMUtil_error(a1, "Error in DictionaryLookup:single_lookup");
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
    kaldi::OffsetFileInputImpl::MyType("pfPartLookupAddonDct returned an error");
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
  lua_createtable(a1, 0, 5);
  luaL_setfuncs(a1, &lib_m_5, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "DictionaryLookup");
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
  lua_createtable(a1, 0, 27);
  luaL_setfuncs(a1, &lib_m_6, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "Parameters");
  return 0;
}

uint64_t hlpReadCLMInputTables(void *a1, int a2, uint64_t a3, unsigned int *a4, uint64_t *a5)
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
      return kaldi::nnet1::UpdatableComponent::IsUpdatable(0);
    }
  }

  return result;
}

uint64_t hlpGetCLMOutputTables(uint64_t a1, unsigned int a2, kaldi::nnet1::UpdatableComponent **a3, kaldi::nnet1::UpdatableComponent **a4)
{
  v7 = 4 * a2;
  v8 = heap_Alloc(*(a1 + 8), v7);
  *a3 = v8;
  if (v8)
  {
    v8 = heap_Alloc(*(a1 + 8), v7);
    *a4 = v8;
    if (v8)
    {
      return 0;
    }
  }

  return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
}

void hlpWriteCLMOutputTables(void *a1, int a2, uint64_t a3, uint64_t a4)
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
  lua_createtable(a1, 0, 12);
  luaL_setfuncs(a1, &lib_m_7, 0, v2, v3, v4, v5, v6);
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
  }

  return LuaVMUtil_error(a1, "Error in NN.CLM_QueryModelExists_LuaNN");
}

uint64_t CLM_Predict_LuaNN(void *a1)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    v11 = "Invalid OBJC";
LABEL_9:
    kaldi::OffsetFileInputImpl::MyType(v11);
    return LuaVMUtil_error(a1, "Error in NN:CLM_Predict_LuaNN");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    v11 = "Invalid Rsrc";
    goto LABEL_9;
  }

  v5 = Rsrc;
  if (!lua_isstring(a1, 1))
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_17;
  }

  v6 = lua_tolstring(a1, 1, 0);
  v7 = hlpReadCLMInputTables(a1, 2, v5, &v18, &v23);
  v8 = v23;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    if (!v23)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (!v23)
  {
    lua_createtable(a1, 0, 0);
    lua_createtable(a1, 0, 0);
    v9 = 2;
    v10 = 1;
    goto LABEL_17;
  }

  if (hlpReadCLMInputTables(a1, 3, v5, &v18, &v22))
  {
    goto LABEL_13;
  }

  v13 = v22;
  if (!v22)
  {
    goto LABEL_33;
  }

  if (hlpReadCLMInputTables(a1, 4, v5, &v18, &v21))
  {
LABEL_13:
    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v14 = v21;
  if (!v21)
  {
LABEL_33:
    lua_createtable(a1, 0, 0);
    lua_createtable(a1, 0, 0);
    goto LABEL_34;
  }

  if (hlpGetCLMOutputTables(v5, v18, &v19, &v20))
  {
    goto LABEL_13;
  }

  v25 = 0uLL;
  if (auxGetObjectHandleAndInterface(v3, &v24, &v25))
  {
    goto LABEL_13;
  }

  v15 = v19;
  v16 = v20;
  v17 = (*(v24 + 128))(v25, *(&v25 + 1), v6, v8, v13, v14, &v18, v19, v20);
  objc_ReleaseObject(v3, "FE_NN");
  if (v17 < 0)
  {
    goto LABEL_13;
  }

  hlpWriteCLMOutputTables(a1, v18, v15, v16);
LABEL_34:
  v10 = 1;
  v9 = 2;
LABEL_14:
  heap_Free(*(v5 + 8), v8);
  if (v22)
  {
    heap_Free(*(v5 + 8), v22);
  }

LABEL_17:
  if (v21)
  {
    heap_Free(*(v5 + 8), v21);
  }

  if (v19)
  {
    heap_Free(*(v5 + 8), v19);
  }

  if (v20)
  {
    heap_Free(*(v5 + 8), v20);
  }

  if ((v10 & 1) == 0)
  {
    return LuaVMUtil_error(a1, "Error in NN:CLM_Predict_LuaNN");
  }

  return v9;
}

uint64_t auxGetObjectHandleAndInterface(uint64_t a1, void *a2, _OWORD *a3)
{
  v7 = 0;
  if ((objc_GetObject(a1, "FE_NN", &v7) & 0x80000000) != 0)
  {
    return kaldi::OffsetFileInputImpl::MyType("Invalid SSFT_OBJC_FE_NN");
  }

  v5 = v7;
  if (!v7)
  {
    return kaldi::OffsetFileInputImpl::MyType("Invalid SSFT_OBJC_FE_NN");
  }

  result = 0;
  *a2 = *(v7 + 8);
  *a3 = *(v5 + 16);
  return result;
}

uint64_t luaopen_CLM(void *a1)
{
  lua_createtable(a1, 0, 5);
  luaL_setfuncs(a1, &lib_m_8, 0, v2, v3, v4, v5, v6);
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
    return LuaVMUtil_error(a1, "Error in CLM.TokenizeLHP");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    kaldi::OffsetFileInputImpl::MyType("Invalid Rsrc");
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
  v7 = (2 * strlen(v6)) | 1;
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
          v8 = 4 * strlen(v7) + 4;
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
      kaldi::OffsetFileInputImpl::MyType("Invalid Rsrc");
    }

    objc_ReleaseObject(v3, "CLMOBJECT");
  }

  else
  {
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
  }

  return LuaVMUtil_error(a1, "Error in CLM.ConvertLHP");
}

uint64_t CLM_ConvertAndAlignLHP_LuaCLM(void *a1)
{
  v18 = 0;
  Objc = LuaVMUtil_GetObjc(a1);
  if (!Objc)
  {
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
    goto LABEL_13;
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    kaldi::OffsetFileInputImpl::MyType("Invalid Rsrc");
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
  v8 = 16 * strlen(v7) + 16;
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
      if (*v10 && *v12)
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
    return LuaVMUtil_error(a1, "Error in CLM.RemoveInvalidLHP");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    kaldi::OffsetFileInputImpl::MyType("Invalid Rsrc");
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
  v8 = strlen(v7);
  v9 = heap_Calloc(*(v5 + 8), 1, v8 + 1);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v16 = 0uLL;
  strcpy(v9, v7);
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
    kaldi::OffsetFileInputImpl::MyType("Invalid OBJC");
    return LuaVMUtil_error(a1, "Error in CLM.ValidateTranscription");
  }

  v3 = Objc;
  Rsrc = LuaVMUtil_GetRsrc(a1);
  if (!Rsrc)
  {
    kaldi::OffsetFileInputImpl::MyType("Invalid Rsrc");
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
  v9 = strlen(v8);
  v10 = heap_Calloc(*(v5 + 8), 1, v9 + 1);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v17 = 0uLL;
  strcpy(v10, v8);
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
    return kaldi::OffsetFileInputImpl::MyType("Invalid SSFT_OBJC_CLM");
  }

  v5 = v7;
  if (!v7)
  {
    return kaldi::OffsetFileInputImpl::MyType("Invalid SSFT_OBJC_CLM");
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
  luaL_setfuncs(a1, &lib_m_9, 0, v2, v3, v4, v5, v6);
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
  __s2 = 0;
  v15 = 0;
  v13 = 0;
  *v14 = 0;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  if (lua_gettop(a1) >= 2 && !LuaVMUtil_luastring_to_string(a1, 1, &v17))
  {
    if (v17)
    {
      if (!LuaVMUtil_luastring_to_string(a1, 2, &__s2))
      {
        if (__s2)
        {
          if (!LDOString_ComputeCPtrLength(__s2, 0, &v15))
          {
            if (v15)
            {
              lua_getallocf(a1, &v13);
              v4 = *(v13 + 8);
              if (v4)
              {
                if (!PNEW_LDOString_ConFromCPtr(*(v13 + 8), *(v13 + 8), v17, v14) && !PtrList_Con(v11, v4, 4u, 4))
                {
                  if (!LHString_Split(*v14, __s2, v11))
                  {
                    lua_createtable(a1, 0, 0);
                    if (kaldi::MatrixBase<float>::Stride(v11))
                    {
                      v5 = 0;
                      v6 = 0;
                      do
                      {
                        v7 = PtrList_ItemN(v11, v6);
                        if (v7)
                        {
                          v8 = v7;
                          v9 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(v7);
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

                      while (v6 < kaldi::MatrixBase<float>::Stride(v11));
                    }

                    PtrList_RemoveAll(v11);
                    if (!PtrList_Des(v11) && !OOC_PlacementDeleteObject(v4, *v14))
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

  if (*v14)
  {
    v2 = LDOString_BorrowAllocator(*v14);
    OOC_PlacementDeleteObject(v2, *v14);
    *v14 = 0;
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
    __strncpy_chk();
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
  luaL_setfuncs(a1, &lib_m_10, 0, v2, v3, v4, v5, v6);
  lua_setglobal(a1, "Utilities");
  return 0;
}

uint64_t LuaVMLDO_Con(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  memset(v18, 0, sizeof(v18));
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
    a1[7] = a5;
    a1[2] = 0;
    v11 = a1 + 2;
    v12 = OOCAllocator_Calloc(a2, 1, 16, &LuaStateWithMemoryLogging);
    a1[8] = v12;
    result = LuaStateWithMemoryLogging;
    if (!LuaStateWithMemoryLogging)
    {
      v13 = a1[1];
      *v12 = 0;
      v12[1] = v13;
      LuaStateWithMemoryLogging = LuaStateFactoryMemLog_Con(v18, v13);
      if (LuaStateWithMemoryLogging)
      {
        goto LABEL_4;
      }

      NullHandle = safeh_GetNullHandle();
      if (safeh_HandlesEqual(a1[3], a1[4], NullHandle, v16))
      {
        goto LABEL_9;
      }

      if ((InitRsrcFunction(a1[3], a1[4], a1 + 5) & 0x80000000) != 0)
      {
        v17 = "InitRsrcFunction returned an error";
      }

      else
      {
        if ((objc_GetObject(*(a1[5] + 48), "FE_DCTLKP", a1 + 6) & 0x80000000) == 0)
        {
LABEL_9:
          LuaStateWithMemoryLogging = LuaStateFactoryMemLog_CreateLuaStateWithMemoryLogging(v18, a1 + 2, a1[8]);
          if (!LuaStateWithMemoryLogging)
          {
            LuaStateWithMemoryLogging = __LuaVMLDO_ProtectedRegisterRSRC(a1);
            if (!LuaStateWithMemoryLogging)
            {
              LuaStateWithMemoryLogging = __LuaVMLDO_OpenLibs(a1);
            }
          }

          (*(v18[0] + 16))(v18);
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
LABEL_21:
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

          goto LABEL_5;
        }

        v17 = "objc_GetObject returned an error";
      }

      result = kaldi::OffsetFileInputImpl::MyType(v17);
      LuaStateWithMemoryLogging = result;
      goto LABEL_21;
    }
  }

LABEL_5:
  v14 = a1[8];
  if (v14)
  {
    OOCAllocator_Free(a1[1], v14);
    return LuaStateWithMemoryLogging;
  }

  return result;
}

kaldi::nnet1::UpdatableComponent *__LuaVMLDO_ProtectedRegisterRSRC(uint64_t a1)
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

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(result);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("Error in __LuaVMLDO_ProtectedRegisterRSRC");
    }
  }

  return result;
}

kaldi::nnet1::UpdatableComponent *__LuaVMLDO_OpenLibs(uint64_t *a1)
{
  v2 = luaL_openlibs(a1[2]);
  if (v2)
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v2);
  }

  else
  {
    result = __LuaVMLDO_OpenLib(a1, luaopen_Log);
    if (result)
    {
      return result;
    }

    lua_pushcclosure(a1[2], init_LuaLog, 0);
    v4 = a1[5];
    if (v4 && a1[7])
    {
      lua_pushlightuserdata(a1[2], *(v4 + 32));
      lua_pushlightuserdata(a1[2], *(a1[5] + 8));
      lua_pushlightuserdata(a1[2], a1[7]);
    }

    else
    {
      lua_pushnil(a1[2]);
      lua_pushnil(a1[2]);
      lua_pushnil(a1[2]);
    }

    v5 = a1[8];
    v6 = a1[2];
    if (v5)
    {
      lua_pushlightuserdata(v6, v5);
      lua_pushlightuserdata(a1[2], a1[8] + 4);
    }

    else
    {
      lua_pushnil(v6);
      lua_pushnil(a1[2]);
    }

    v7 = lua_pcallk(a1[2], 5, 0, 0, 0, 0);
    if (v7)
    {
      if (v7 == 4)
      {
        result = kaldi::nnet1::UpdatableComponent::IsUpdatable(v7);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = kaldi::OffsetFileInputImpl::MyType("Error in __LuaVMLDO_OpenLogLib");
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
      v8 = a1[6];
      v9 = a1[2];
      if (v8)
      {
        lua_pushlightuserdata(v9, v8);
      }

      else
      {
        lua_pushnil(v9);
      }

      v10 = lua_pcallk(a1[2], 1, 0, 0, 0, 0);
      if (!v10 || (v10 != 4 ? (result = kaldi::OffsetFileInputImpl::MyType("Error in __LuaVMLDO_OpenDictionaryLookupLib")) : (result = kaldi::nnet1::UpdatableComponent::IsUpdatable(v10)), !result))
      {
        result = __LuaVMLDO_OpenLib(a1, luaopen_Parameters);
        if (!result)
        {
          lua_pushcclosure(a1[2], init_LuaParameters, 0);
          v11 = a1[5];
          v12 = a1[2];
          if (v11)
          {
            lua_pushlightuserdata(v12, *(v11 + 40));
          }

          else
          {
            lua_pushnil(v12);
          }

          v13 = lua_pcallk(a1[2], 1, 0, 0, 0, 0);
          if (!v13 || (v13 != 4 ? (result = kaldi::OffsetFileInputImpl::MyType("Error in __LuaVMLDO_OpenParametersLib")) : (result = kaldi::nnet1::UpdatableComponent::IsUpdatable(v13)), !result))
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

  return result;
}

uint64_t __LuaVMLDO_ReleaseObjects(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 48);
    if (result)
    {
      if (*(v2 + 48))
      {
        return objc_ReleaseObject(result, "FE_DCTLKP");
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

  v3 = a1[8];
  if (v3)
  {
    OOCAllocator_Free(a1[1], v3);
  }

  __LuaVMLDO_ReleaseObjects(a1);

  return Object_Des();
}

uint64_t LuaVMLDO_IsLuaCodeAvailable(_WORD *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v23 = 0;
  v22 = 0;
  memset(v25, 0, sizeof(v25));
  *a4 = 0;
  if (!a3)
  {
    v16 = __LuaVMLDO_ComposeBrokerString(a1, a2, v25);
    if (v16)
    {
      goto LABEL_18;
    }

    goto LABEL_5;
  }

  __strcpy_chk();
  if (LH_stricmp(a3, "clm"))
  {
LABEL_5:
    v8 = "LUAC";
    goto LABEL_6;
  }

  v8 = "CLMP";
LABEL_6:
  v17 = ssftriff_reader_ObjOpen(a1, a2, 2, v25, v8, 1031, &v24);
  if ((v17 & 0x80000000) == 0)
  {
    Chunk = ssftriff_reader_FindChunk(v24, "LUAA", 0, &v23, &v22);
    if (Chunk < 0)
    {
      if ((Chunk & 0x1FFF) == 0x14)
      {
        v16 = 0;
        goto LABEL_18;
      }

      v19 = "ssftriff_reader_FindChunk returned an error";
    }

    else
    {
      if ((ssftriff_reader_CloseChunk(v24) & 0x80000000) == 0)
      {
        v16 = 0;
        *a4 = 1;
        goto LABEL_18;
      }

      v19 = "ssftriff_reader_CloseChunk returned an error";
    }

LABEL_17:
    v16 = kaldi::OffsetFileInputImpl::MyType(v19);
    goto LABEL_18;
  }

  v16 = 0;
  if ((v17 & 0x1FFF) != 3 && (v17 & 0x1FFF) != 0xD)
  {
    v19 = "ssftriff_reader_ObjOpen returned an error";
    goto LABEL_17;
  }

LABEL_18:
  if (v24 && (ssftriff_reader_ObjClose(v24, v9, v10, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    *a4 = 0;
    v16 = kaldi::OffsetFileInputImpl::MyType("ssftriff_reader_ObjClose returned an error");
  }

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t __LuaVMLDO_ComposeBrokerString(_WORD *a1, int a2, char *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = 0;
  v7 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  *&v18[13] = 0u;
  v17 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__src = 0u;
  if ((InitRsrcFunction(a1, a2, &v9) & 0x80000000) != 0)
  {
    v5 = "InitRsrcFunction returned an error";
    goto LABEL_8;
  }

  if ((paramc_ParamGetStr(*(v9 + 40), "langcode", &v8) & 0x80000000) != 0 || (paramc_ParamGetStr(*(v9 + 40), "fecfg", &v7) & 0x80000000) != 0)
  {
    v5 = "paramc_ParamGetStr returned an error";
LABEL_8:
    result = kaldi::OffsetFileInputImpl::MyType(v5);
    goto LABEL_9;
  }

  strcpy(v18, "amalgamated/");
  __strcat_chk();
  __strcat_chk();
  __strcat_chk();
  if ((brokeraux_ComposeBrokerString(v9, v18, 1, 1, v8, 0, 0, __src, 0x80uLL) & 0x80000000) != 0)
  {
    v5 = "brokeraux_ComposeBrokerString returned an error";
    goto LABEL_8;
  }

  strcpy(a3, __src);
  result = 0;
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
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

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(v6);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("Error in LuaVMLDO_IsLuaFunctionAvailable");
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

kaldi::nnet1::UpdatableComponent *LuaVMLDO_LoadScriptFromBuffer(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = luaL_loadbufferx(*(a1 + 16), a2, a3, "@ldoscriptchunk", 0);
  if (result || (result = lua_pcallk(*(a1 + 16), 0, 0, 0, 0, 0), result))
  {
    if (result == 4)
    {

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(result);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("Error in LuaVMLDO_LoadScriptFromBuffer");
    }
  }

  return result;
}

uint64_t LuaVMLDO_LoadScriptFromRIFF(uint64_t a1, char *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  memset(v29, 0, sizeof(v29));
  if (!*(a1 + 40))
  {
    v6 = "No valid resources are available";
    goto LABEL_28;
  }

  if (a2)
  {
    __strcpy_chk();
    if (!LH_stricmp(a2, "clm"))
    {
      v4 = 0;
      v5 = "CLMP";
      goto LABEL_8;
    }
  }

  else
  {
    result = __LuaVMLDO_ComposeBrokerString(*(a1 + 24), *(a1 + 32), v29);
    v28 = result;
    if (result)
    {
      goto LABEL_29;
    }
  }

  v5 = "LUAC";
  v4 = 1;
LABEL_8:
  v15 = ssftriff_reader_ObjOpen(*(a1 + 24), *(a1 + 32), 2, v29, v5, 1031, &v27);
  if (v15 < 0)
  {
    v18 = v15;
    result = 0;
    v19 = v18 & 0x1FFF;
    if (v19 == 3 || v19 == 13)
    {
      goto LABEL_29;
    }

    v6 = "ssftriff_reader_OpenChunk returned an error";
LABEL_28:
    result = kaldi::OffsetFileInputImpl::MyType(v6);
    v28 = result;
    goto LABEL_29;
  }

  if ((ssftriff_reader_FindChunk(v27, "LUAA", 0, &v25, &v26) & 0x80000000) != 0)
  {
    v6 = "ssftriff_reader_FindChunk returned an error";
    goto LABEL_28;
  }

  v16 = OOCAllocator_Calloc(*(a1 + 8), v25, 1, &v28);
  if (v28)
  {
    goto LABEL_23;
  }

  if (v4)
  {
    v17 = 0;
  }

  else
  {
    v24 = v25;
    if ((ssftriff_reader_ReadStringZ(v27, v26, v25, 0, v16, &v24) & 0x80000000) != 0)
    {
LABEL_21:
      ScriptFromBuffer = kaldi::OffsetFileInputImpl::MyType("ssftriff_reader_ReadStringZ returned an error");
      goto LABEL_22;
    }

    v17 = v24;
  }

  if ((ssftriff_reader_ReadStringZ(v27, v26, v25, v17, v16, &v25) & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  ScriptFromBuffer = LuaVMLDO_LoadScriptFromBuffer(a1, v16, v25 - 1);
LABEL_22:
  v28 = ScriptFromBuffer;
LABEL_23:
  if (v16)
  {
    OOCAllocator_Free(*(a1 + 8), v16);
  }

  v21 = ssftriff_reader_CloseChunk(v27);
  result = v28;
  if (v21 < 0 && !v28)
  {
    v6 = "ssftriff_reader_CloseChunk returned an error";
    goto LABEL_28;
  }

LABEL_29:
  if (v27)
  {
    v22 = ssftriff_reader_ObjClose(v27, v8, v9, v10, v11, v12, v13, v14);
    result = v28;
    if (v22 < 0 && !v28)
    {
      result = kaldi::OffsetFileInputImpl::MyType("ssftriff_reader_ObjClose returned an error");
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

kaldi::nnet1::UpdatableComponent *LuaVMLDO_RunFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  result = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (result)
  {
    if (result == 4)
    {
LABEL_3:

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(result);
    }

    v7 = "Error in LuaVMLDO_IsLuaFunctionAvailable";
  }

  else if (lua_type(*(a1 + 16), -1) == 6)
  {
    lua_pushcclosure(*(a1 + 16), __LuaVMLDO_CreateLuaLDO, 0);
    lua_pushlightuserdata(*(a1 + 16), a3);
    result = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
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

    v7 = "Error in LuaVMLDO_RunFunction";
  }

  else
  {
    v7 = "szFunctionName";
  }

  return kaldi::OffsetFileInputImpl::MyType(v7);
}

uint64_t __LuaVMLDO_CreateLuaLDO(uint64_t *a1)
{
  v2 = lua_touserdata(a1, 1);
  *lua_newuserdata(a1, 8uLL) = v2;
  getMetatableLua(a1, "vocalizer.LDO");
  lua_setmetatable(a1, -2);
  return 1;
}

kaldi::nnet1::UpdatableComponent *LuaVMLDO_RunFunctionReturningPointerToString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (!v8)
  {
    if (lua_type(*(a1 + 16), -1) == 6)
    {
      result = __LuaVMLDO_PushStringProtected(*(a1 + 16), a3);
      if (result)
      {
        return result;
      }

      v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
      if (v8)
      {
        if (v8 == 4)
        {
          goto LABEL_3;
        }

        v10 = "Error in LuaVMLDO_RunFunctionReturningStringPointer";
        goto LABEL_16;
      }

      if (lua_isstring(*(a1 + 16), -1))
      {
        v11 = lua_tolstring(*(a1 + 16), -1, 0);
        result = 0;
        *a4 = v11;
        return result;
      }
    }

    v10 = "szFunctionName";
    goto LABEL_16;
  }

  if (v8 == 4)
  {
LABEL_3:

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
  }

  v10 = "Error in LuaVMLDO_IsLuaFunctionAvailable";
LABEL_16:

  return kaldi::OffsetFileInputImpl::MyType(v10);
}

kaldi::nnet1::UpdatableComponent *__LuaVMLDO_PushStringProtected(uint64_t a1, uint64_t a2)
{
  lua_pushcclosure(a1, __LuaVMLDO_PushStringProtected_AuxCFunction, 0);
  lua_pushlightuserdata(a1, a2);
  result = lua_pcallk(a1, 1, 1, 0, 0, 0);
  if (result)
  {
    if (result == 4)
    {

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(result);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("Error in __LuaVMLDO_PushStringProtected");
    }
  }

  return result;
}

kaldi::nnet1::UpdatableComponent *LuaVMLDO_RunFunctionReturningString(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, char *a5)
{
  __s = 0;
  v8 = LuaVMLDO_RunFunctionReturningPointerToString(a1, a2, a3, &__s);
  if (!v8)
  {
    if (strlen(__s) + 1 <= a4)
    {
      strcpy(a5, __s);
    }

    else
    {
      kaldi::OffsetFileInputImpl::MyType("Buffer too small");
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

      kaldi::nnet1::UpdatableComponent::IsUpdatable(v6);
      return;
    }

    v7 = "Error in LuaVMLDO_IsLuaFunctionAvailable";
  }

  else if (lua_type(*(a1 + 16), -1) == 6)
  {
    v6 = lua_pcallk(*(a1 + 16), 0, 1, 0, 0, 0);
    if (v6)
    {
      if (v6 == 4)
      {
        goto LABEL_3;
      }

      v7 = "Error in LuaVMLDO_RunFunctionReturningTable";
    }

    else if (lua_type(*(a1 + 16), -1) == 5)
    {
      lua_pushnil(*(a1 + 16));
      while (1)
      {
        if (!lua_next(*(a1 + 16), -2))
        {
          lua_settop(*(a1 + 16), 0xFFFFFFFE);
          return;
        }

        if (!lua_isstring(*(a1 + 16), -2))
        {
          v7 = "key";
          goto LABEL_12;
        }

        v8 = lua_tolstring(*(a1 + 16), -2, 0);
        if (lua_type(*(a1 + 16), -1) != 1)
        {
          break;
        }

        v9 = lua_toBOOLean(*(a1 + 16), -1) == 1;
        LDOObject_SetBoolAttribute(a3, v8, v9);
        if (v10)
        {
          return;
        }

        lua_settop(*(a1 + 16), 0xFFFFFFFE);
      }

      v7 = "value";
    }

    else
    {
      v7 = "tResult";
    }
  }

  else
  {
    v7 = "szFunctionName";
  }

LABEL_12:

  kaldi::OffsetFileInputImpl::MyType(v7);
}

kaldi::nnet1::UpdatableComponent *LuaVMLDO_RunFunctionWithLDOAndTableArguments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  result = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (result)
  {
    if (result == 4)
    {
LABEL_3:

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(result);
    }

    v9 = "Error in LuaVMLDO_IsLuaFunctionAvailable";
  }

  else if (lua_type(*(a1 + 16), -1) == 6)
  {
    lua_pushcclosure(*(a1 + 16), __LuaVMLDO_CreateLuaLDO, 0);
    lua_pushlightuserdata(*(a1 + 16), a3);
    result = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
    if (!result)
    {
      lua_pushcclosure(*(a1 + 16), __LuaVMLDO_PushTableFromLDOObject, 0);
      lua_pushlightuserdata(*(a1 + 16), a4);
      result = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
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

    v9 = "Error in LuaVMLDO_RunFunctionWithLDOAndTableArguments";
  }

  else
  {
    v9 = "szFunctionName";
  }

  return kaldi::OffsetFileInputImpl::MyType(v9);
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
      v6 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(*v4);
      lua_pushstring(a1, v6);
      lua_pushBOOLean(a1, v5 == 1);
      lua_settable(a1, -3);
    }

    v4 += 32;
  }

  return 1;
}

uint64_t LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  lua_pushcclosure(*(a1 + 16), __LuaVMLDO_ProtectedGetGlobal, 0);
  lua_pushlightuserdata(*(a1 + 16), a2);
  v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
  if (!v8)
  {
    if (lua_type(*(a1 + 16), -1) != 6)
    {
      v10 = "szFunctionName";
      goto LABEL_11;
    }

    result = __LuaVMLDO_PushStringProtected(*(a1 + 16), a3);
    if (result)
    {
      return result;
    }

    v8 = lua_pcallk(*(a1 + 16), 1, 1, 0, 0, 0);
    if (!v8)
    {
      if (lua_type(*(a1 + 16), -1) == 5)
      {
        lua_pushnil(*(a1 + 16));
        while (1)
        {
          if (!lua_next(*(a1 + 16), -2))
          {
            lua_settop(*(a1 + 16), 0xFFFFFFFE);
            return 0;
          }

          if (!lua_isstring(*(a1 + 16), -2))
          {
            v10 = "key";
            goto LABEL_11;
          }

          v11 = lua_tolstring(*(a1 + 16), -2, 0);
          if (!lua_isstring(*(a1 + 16), -1))
          {
            break;
          }

          v12 = lua_tolstring(*(a1 + 16), -1, 0);
          result = LDOObject_SetStringAttribute(a4, v11, v12);
          if (result)
          {
            return result;
          }

          lua_settop(*(a1 + 16), 0xFFFFFFFE);
        }

        v10 = "value";
      }

      else
      {
        v10 = "tResult";
      }

      goto LABEL_11;
    }
  }

  if (v8 == 4)
  {

    return kaldi::nnet1::UpdatableComponent::IsUpdatable(v8);
  }

  v10 = "Error in LuaVMLDO_RunFunctionWithStringArgumentReturningTableWithStrings";
LABEL_11:

  return kaldi::OffsetFileInputImpl::MyType(v10);
}

uint64_t PNEW_LuaVMLDO_Con(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  v14 = 0;
  v12 = OOCAllocator_Malloc(a1, 72, &v14);
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

kaldi::nnet1::UpdatableComponent *__LuaVMLDO_OpenLib(uint64_t a1, uint64_t a2)
{
  lua_pushcclosure(*(a1 + 16), a2, 0);
  result = lua_pcallk(*(a1 + 16), 0, 0, 0, 0, 0);
  if (result)
  {
    if (result == 4)
    {

      return kaldi::nnet1::UpdatableComponent::IsUpdatable(result);
    }

    else
    {

      return kaldi::OffsetFileInputImpl::MyType("Error in __LuaVMLDO_OpenLib");
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

uint64_t LuaVMUtil_pushLuaStringAndDestroy(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Properties(a2);
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

    return kaldi::OffsetFileInputImpl::MyType("index");
  }
}

uint64_t LuaVMUtil_luainteger_to_u32(void *a1, int a2, _DWORD *a3)
{
  if (!lua_isinteger(a1, a2) || (v6 = lua_tointegerx(a1, a2, 0), v6 < 0))
  {

    return kaldi::OffsetFileInputImpl::MyType("index");
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

    return kaldi::OffsetFileInputImpl::MyType("index");
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

    return kaldi::OffsetFileInputImpl::MyType("index");
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

    return kaldi::OffsetFileInputImpl::MyType("index");
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
  v17 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &off_1F42D1CF0, sizeof(__dst));
  luaL_checkversion_(a1, 136, 503.0, v2, v3, v4, v5, v6, v7, v15);
  lua_createtable(a1, 0, 24);
  luaL_setfuncs(a1, __dst, 0, v8, v9, v10, v11, v12);
  lua_pushlstring(a1, "[", 0xEuLL);
  lua_setfield(a1, -2, "charpattern");
  lua_setglobal(a1, "luautf8");
  v13 = *MEMORY[0x1E69E9840];
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

uint64_t Lutf8_reverse(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v36 = *MEMORY[0x1E69E9840];
  memset(v35, 0, 512);
  v34 = 0;
  v2 = luaL_checklstring(v1, 1, &v34);
  v3 = v34;
  v4 = (v2 + v34);
  v5 = lua_toBOOLean(v1, 2);
  luaL_buffinit(v1, v35);
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

        luaL_addlstring(v35, v14, v4 - v14, v6, v7, v8, v9, v10);
        v4 = v14;
      }

      while (v2 < v14);
    }

    goto LABEL_26;
  }

  if (v3 < 1)
  {
LABEL_26:
    luaL_pushresult(v35);
    result = 1;
    goto LABEL_27;
  }

  v15 = v4;
  while (1)
  {
    LODWORD(v34) = 0;
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
    utf8_safe_decode(v1, v4, &v34);
    if (WORD1(v34) > 0x10u || (v34 & 0x1FF800) == 55296)
    {
      break;
    }

    if (!utf8_iscompose(v34))
    {
      luaL_addlstring(v35, v4, v15 - v4, v26, v27, v28, v29, v30);
      v15 = v4;
    }

    if (v2 >= v4)
    {
      goto LABEL_26;
    }
  }

  result = luaL_error(v1, "invalid UTF-8 code", v19, v20, v21, v22, v23, v24, v33);
LABEL_27:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t Lutf8_lower(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v20 = *MEMORY[0x1E69E9840];
  v2 = lua_type(v1, 1);
  if (v2 == 4)
  {
    memset(v19, 0, 512);
    v18 = 0;
    v5 = lua_tolstring(v1, 1, &v18);
    v6 = v18;
    luaL_buffinit(v1, v19);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v18) = 0;
        v5 = utf8_safe_decode(v1, v5, &v18);
        v8 = utf8_tolower(v18);
        add_utf8char(v19, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v19);
    goto LABEL_8;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(v1, 1, 0);
    v4 = utf8_tolower(v3);
    lua_pushinteger(v1, v4);
LABEL_8:
    v15 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v17 = *MEMORY[0x1E69E9840];

  return typeerror_0(v1);
}

uint64_t Lutf8_upper(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v20 = *MEMORY[0x1E69E9840];
  v2 = lua_type(v1, 1);
  if (v2 == 4)
  {
    memset(v19, 0, 512);
    v18 = 0;
    v5 = lua_tolstring(v1, 1, &v18);
    v6 = v18;
    luaL_buffinit(v1, v19);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v18) = 0;
        v5 = utf8_safe_decode(v1, v5, &v18);
        v8 = utf8_toupper(v18);
        add_utf8char(v19, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v19);
    goto LABEL_8;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(v1, 1, 0);
    v4 = utf8_toupper(v3);
    lua_pushinteger(v1, v4);
LABEL_8:
    v15 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v17 = *MEMORY[0x1E69E9840];

  return typeerror_0(v1);
}

uint64_t Lutf8_title(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v20 = *MEMORY[0x1E69E9840];
  v2 = lua_type(v1, 1);
  if (v2 == 4)
  {
    memset(v19, 0, 512);
    v18 = 0;
    v5 = lua_tolstring(v1, 1, &v18);
    v6 = v18;
    luaL_buffinit(v1, v19);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v18) = 0;
        v5 = utf8_safe_decode(v1, v5, &v18);
        v8 = utf8_totitle(v18);
        add_utf8char(v19, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v19);
    goto LABEL_8;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(v1, 1, 0);
    v4 = utf8_totitle(v3);
    lua_pushinteger(v1, v4);
LABEL_8:
    v15 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v17 = *MEMORY[0x1E69E9840];

  return typeerror_0(v1);
}

uint64_t Lutf8_fold(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v20 = *MEMORY[0x1E69E9840];
  v2 = lua_type(v1, 1);
  if (v2 == 4)
  {
    memset(v19, 0, 512);
    v18 = 0;
    v5 = lua_tolstring(v1, 1, &v18);
    v6 = v18;
    luaL_buffinit(v1, v19);
    if (v6 >= 1)
    {
      v7 = &v5[v6];
      do
      {
        LODWORD(v18) = 0;
        v5 = utf8_safe_decode(v1, v5, &v18);
        v8 = utf8_tofold(v18);
        add_utf8char(v19, v8, v9, v10, v11, v12, v13, v14);
      }

      while (v5 < v7);
    }

    luaL_pushresult(v19);
    goto LABEL_8;
  }

  if (v2 == 3)
  {
    v3 = lua_tointegerx(v1, 1, 0);
    v4 = utf8_tofold(v3);
    lua_pushinteger(v1, v4);
LABEL_8:
    v15 = *MEMORY[0x1E69E9840];
    return 1;
  }

  v17 = *MEMORY[0x1E69E9840];

  return typeerror_0(v1);
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

uint64_t Lutf8_char(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v15 = *MEMORY[0x1E69E9840];
  v2 = lua_gettop(v1);
  memset(v14, 0, 512);
  luaL_buffinit(v1, v14);
  if (v2 >= 1)
  {
    v3 = 1;
    do
    {
      v4 = luaL_checkinteger(v1, v3);
      v11 = v4;
      if (v4 >= 1114112)
      {
        luaL_argerror(v1, v3);
      }

      add_utf8char(v14, v11, v5, v6, v7, v8, v9, v10);
      v3 = (v3 + 1);
      --v2;
    }

    while (v2);
  }

  luaL_pushresult(v14);
  v12 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t Lutf8_escape(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v22 = *MEMORY[0x1E69E9840];
  *&v21[0] = 0;
  v2 = luaL_checklstring(v1, 1, v21);
  v3 = *&v21[0];
  memset(v21, 0, 512);
  luaL_buffinit(v1, v21);
  if (v3 < 1)
  {
    goto LABEL_40;
  }

  v4 = &v2[v3];
  do
  {
    v20 = 0;
    v5 = utf8_safe_decode(v1, v2, &v20);
    v2 = v5;
    v12 = v20;
    if (v20 != 37)
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
          v2 = utf8_safe_decode(v1, v5, &v20);
          v12 = v20;
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
      luaL_error(v1, "invalid escape '%c'", v6, v7, v8, v9, v10, v11, *v2);
      v17 = v16;
      goto LABEL_22;
    }

    ++v2;
LABEL_25:
    v20 = v12;
LABEL_26:
    add_utf8char(v21, v12, v6, v7, v8, v9, v10, v11);
  }

  while (v2 < v4);
LABEL_40:
  luaL_pushresult(v21);
  v18 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t Lutf8_insert(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v29 = *MEMORY[0x1E69E9840];
  *&v28[0] = 0;
  v2 = luaL_checklstring(v1, 1, v28);
  v3 = *&v28[0];
  v4 = v2 + *&v28[0];
  v27 = 0;
  memset(v28, 0, 512);
  v5 = 2;
  if (lua_type(v1, 2) != 3)
  {
    v8 = v4;
    goto LABEL_10;
  }

  v6 = lua_tointegerx(v1, 2, 0);
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

  luaL_argerror(v1, 2);
LABEL_8:
  v5 = 3;
LABEL_10:
  v9 = luaL_checklstring(v1, v5, &v27);
  luaL_buffinit(v1, v28);
  luaL_addlstring(v28, v2, v8 - v2, v10, v11, v12, v13, v14);
  luaL_addlstring(v28, v9, v27, v15, v16, v17, v18, v19);
  luaL_addlstring(v28, v8, v4 - v8, v20, v21, v22, v23, v24);
  luaL_pushresult(v28);
  v25 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t Lutf8_remove(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v19 = *MEMORY[0x1E69E9840];
  *&v18[0] = 0;
  v2 = luaL_checklstring(v1, 1, v18);
  v3 = *&v18[0];
  v17 = luaL_optinteger(v1, 2, -1);
  v16 = luaL_optinteger(v1, 3, -1);
  if (utf8_range(v2, &v2[v3], &v17, &v16))
  {
    memset(v18, 0, 512);
    luaL_buffinit(v1, v18);
    luaL_addlstring(v18, v2, v17, v4, v5, v6, v7, v8);
    luaL_addlstring(v18, &v2[v16], v3 - v16, v9, v10, v11, v12, v13);
    luaL_pushresult(v18);
  }

  else
  {
    lua_settop(v1, 1u);
  }

  v14 = *MEMORY[0x1E69E9840];
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

uint64_t Lutf8_gsub(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v90 = *MEMORY[0x1E69E9840];
  *&v89[0] = 0;
  v2 = luaL_checklstring(v1, 1, v89);
  v3 = *&v89[0];
  v53 = &v2[*&v89[0]];
  *&v89[0] = 0;
  v4 = luaL_checklstring(v1, 2, v89);
  v5 = &v4[*&v89[0]];
  v6 = lua_type(v1, 3);
  v54 = luaL_optinteger(v1, 4, v3 + 1);
  v55 = *v4;
  v7 = 0uLL;
  memset(v89, 0, 512);
  if ((v6 - 3) >= 4)
  {
    luaL_argerror(v1, 3);
    v7 = 0uLL;
  }

  v86 = v7;
  v87 = v7;
  v84 = v7;
  v85 = v7;
  v82 = v7;
  v83 = v7;
  v80 = v7;
  v81 = v7;
  v78 = v7;
  v79 = v7;
  v76 = v7;
  v77 = v7;
  v74 = v7;
  v75 = v7;
  v72 = v7;
  v73 = v7;
  v70 = v7;
  v71 = v7;
  v68 = v7;
  v69 = v7;
  v66 = v7;
  v67 = v7;
  v64 = v7;
  v65 = v7;
  v62 = v7;
  v63 = v7;
  v60 = v7;
  v61 = v7;
  v58 = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  luaL_buffinit(v1, v89);
  v13 = 0;
  LODWORD(v56) = 200;
  if (v55 == 94)
  {
    ++v4;
  }

  *(&v56 + 1) = v2;
  *&v57 = v53;
  *(&v57 + 1) = v5;
  *&v58 = v1;
  v52 = v6;
  while (v13 < v54)
  {
    DWORD2(v58) = 0;
    matched = match_1(&v56, v2, v4, v8, v9, v10, v11, v12);
    if (!matched)
    {
      goto LABEL_31;
    }

    v15 = matched;
    v16 = v58;
    if (v6 == 5)
    {
      push_onecapture_0(&v56, 0, v2, matched, v9, v10, v11, v12, v51);
      lua_gettable(v16, 3);
    }

    else
    {
      if (v6 != 6)
      {
        v88 = 0;
        v31 = lua_tolstring(v58, 3, &v88);
        if (v88 < 1)
        {
          goto LABEL_30;
        }

        v32 = v31;
        v33 = v31 + v88;
        while (2)
        {
          LODWORD(v88) = 0;
          v32 = utf8_safe_decode(v58, v32, &v88);
          v40 = v88;
          if (v88 == 37)
          {
            v41 = v58;
            v32 = utf8_safe_decode(v58, v32, &v88);
            v42 = v88;
            if (utf8_isdigit(v88))
            {
              if (v42 == 48)
              {
                luaL_addlstring(v89, v2, v15 - v2, v35, v36, v37, v38, v39);
              }

              else
              {
                push_onecapture_0(&v56, v42 - 49, v2, v15, v36, v37, v38, v39, v51);
                luaL_addvalue(v89);
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
              v40 = v88;
            }
          }

          break;
        }

        add_utf8char(v89, v40, v34, v35, v36, v37, v38, v39);
        goto LABEL_26;
      }

      lua_pushvalue(v58, 3);
      v22 = push_captures_0(&v56, v2, v15, v17, v18, v19, v20, v21);
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

    luaL_addvalue(v89);
LABEL_30:
    ++v13;
    v6 = v52;
    if (v15 <= v2)
    {
LABEL_31:
      if (v2 >= v53)
      {
        break;
      }

      LODWORD(v88) = 0;
      v15 = utf8_safe_decode(v1, v2, &v88);
      add_utf8char(v89, v88, v43, v44, v45, v46, v47, v48);
    }

    v2 = v15;
    if (v55 == 94)
    {
      goto LABEL_36;
    }
  }

  v15 = v2;
LABEL_36:
  luaL_addlstring(v89, v15, v53 - v15, v8, v9, v10, v11, v12);
  luaL_pushresult(v89);
  lua_pushinteger(v1, v13);
  v49 = *MEMORY[0x1E69E9840];
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
  v19 = *MEMORY[0x1E69E9840];
  if (a2 >= 0x80)
  {
    v9 = &v18;
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
    v17[v11 >> 32] = a2 | (2 * ~v13);
    v8 = v12;
  }

  else
  {
    v18 = a2;
    v8 = 1;
  }

  result = luaL_addlstring(a1, &v17[-v8 + 8], v8, a4, a5, a6, a7, a8);
  v16 = *MEMORY[0x1E69E9840];
  return result;
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
  *&v57 = 0;
  v4 = luaL_checklstring(a1, 1, &v57);
  v5 = v57;
  v6 = v4 + v57;
  *&v57 = 0;
  v7 = luaL_checklstring(a1, 2, &v57);
  v8 = v57;
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
      goto LABEL_51;
    }
  }

  v56 = v4;
  v18 = &v7[v8];
  v55 = a2;
  if (a2)
  {
    if (!lua_toBOOLean(a1, 4) && v8 >= 1)
    {
      v19 = v7;
      while (!strpbrk(v19, "^$*+?.([%-"))
      {
        v19 += strlen(v19) + 1;
        if (v19 >= v18)
        {
          goto LABEL_14;
        }
      }

      goto LABEL_22;
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
          v24 = *v7;
          v22 = v7 + 1;
          v23 = v24;
          do
          {
            v25 = memchr(v17, v23, v21);
            if (!v25)
            {
              break;
            }

            v26 = v25;
            v27 = v25 + 1;
            if (!memcmp(v25 + 1, v22, v8 - 1))
            {
              v17 = v26;
              goto LABEL_67;
            }

            v28 = &v17[v21];
            v17 = v27;
            v21 = v28 - v27;
          }

          while (v28 != v27);
        }
      }
    }

    else if (v17)
    {
LABEL_67:
      v49 = &v17[v8];
      if ((v17[v8] & 0xC0) == 0x80)
      {
        v50 = &v17[v8 + 1];
        do
        {
          v51 = v50;
          v52 = v50 - 1;
          if (v50 - 1 >= v6)
          {
            break;
          }

          ++v50;
        }

        while ((*v51 & 0xC0) == 0x80);
        if (v52 >= v6)
        {
          v49 = v6;
        }

        else
        {
          v49 = v51;
        }
      }

      v53 = (get_index(v17, v56, v6) + 1);
      lua_pushinteger(a1, v53);
      index = get_index(v49, v17, v6);
      lua_pushinteger(a1, v53 + index - 1);
      return 2;
    }

LABEL_51:
    lua_pushnil(a1);
    return 1;
  }

LABEL_22:
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
  v29 = *v7;
  if (v29 == 94)
  {
    ++v7;
  }

  if (v10 < 0)
  {
    if (v5 < 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = 0;
      v31 = v56;
      do
      {
        v32 = v31 + 1;
        do
        {
          v31 = v32;
          v33 = (v32 - 1);
          if ((v32 - 1) >= v6)
          {
            break;
          }

          ++v32;
        }

        while ((*v31 & 0xC0) == 0x80);
        if (v33 >= v6)
        {
          v31 = v6;
        }

        ++v30;
      }

      while (v31 < v6);
    }

    v10 += v30 + 1;
  }

  LODWORD(v57) = 200;
  *(&v57 + 1) = v56;
  *&v58 = v6;
  *(&v58 + 1) = v18;
  *&v59 = a1;
  while (1)
  {
    DWORD2(v59) = 0;
    matched = match_1(&v57, v17, v7, v12, v13, v14, v15, v16);
    if (matched)
    {
      break;
    }

    if (v17 != v6)
    {
      ++v10;
      v35 = v17 + 1;
      do
      {
        v36 = v35;
        v37 = (v35 - 1);
        if ((v35 - 1) >= v6)
        {
          break;
        }

        ++v35;
      }

      while ((*v36 & 0xC0) == 0x80);
      v17 = v37 >= v6 ? v6 : v36;
      if (v29 != 94 && v17 <= v6)
      {
        continue;
      }
    }

    goto LABEL_51;
  }

  v39 = matched;
  if (!v55)
  {
    return push_captures_0(&v57, v17, matched, v12, v13, v14, v15, v16);
  }

  lua_pushinteger(a1, v10);
  if (v17 >= v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0;
    do
    {
      v41 = v17 + 1;
      do
      {
        v42 = v41;
        v43 = (v41 - 1);
        if ((v41 - 1) >= v39)
        {
          break;
        }

        ++v41;
      }

      while ((*v42 & 0xC0) == 0x80);
      if (v43 >= v39)
      {
        v17 = v39;
      }

      else
      {
        v17 = v42;
      }

      ++v40;
    }

    while (v17 < v39);
  }

  lua_pushinteger(a1, v10 + v40 - 1);
  return push_captures_0(&v57, 0, 0, v44, v45, v46, v47, v48) + 2;
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
  result = match_1(a1, a2, a3);
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
    matched = match_1(v25, v12, v5, v7, v8, v9, v10, v11);
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

uint64_t Dictionary_Con(uint64_t a1, uint64_t a2, char **a3, _OWORD *a4, uint64_t a5, _DWORD *a6, int a7)
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
    return kaldi::PipeInputImpl::MyType("Wrong Buffer Type");
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
  v22 = result;
  if (!result)
  {
    *a1 = &__Dictionary;
    *(a1 + 56) = &unk_1F42D1EF8;
    *(a1 + 64) = &unk_1F42D1F10;
    *(a1 + 72) = &unk_1F42D1F48;
    *(a1 + 80) = &unk_1F42D1F70;
    *(a1 + 88) = &unk_1F42D1F88;
    *(a1 + 96) = &unk_1F42D1FA0;
    *(a1 + 104) = &unk_1F42D1FB0;
    *(a1 + 112) = &unk_1F42D1FC8;
    *(a1 + 24) = &unk_1F42D1EB0;
    *(a1 + 120) = a2;
    *(a1 + 136) = a4;
    *(a1 + 152) = a5;
    *(a1 + 184) = 0;
    v11 = OOCAllocator_Calloc(a2, 1, 40, &v22);
    *(a1 + 144) = v11;
    result = v22;
    if (!v22)
    {
      v12 = a3 && a4 == 0;
      v13 = v12;
      if (!v12)
      {
        goto LABEL_17;
      }

      result = cloneString(*(a1 + 120), v11, *a3);
      v22 = result;
      if (!result)
      {
        v14 = *(a1 + 144);
        v15 = strchr(*v14, 124);
        if (v15)
        {
          *v15 = 0;
          v14 = *(a1 + 144);
        }

        result = cloneString(*(a1 + 120), v14 + 2, a3[2]);
        v22 = result;
        if (!result)
        {
          result = cloneString(*(a1 + 120), (*(a1 + 144) + 24), a3[3]);
          v22 = result;
          if (!result)
          {
LABEL_17:
            result = edct_DctOpen(*(a1 + 120), *(a1 + 136), a5, (a1 + 128));
            v22 = result;
            if (!result)
            {
              if (!v13)
              {
LABEL_25:
                result = __Dictionary_CheckAndFillTranscriptionSpec(a1);
                v22 = result;
                if (!result)
                {
                  return PNEW_TranscriptionTokenizer_Con(*(a1 + 120), *(a1 + 120), (a1 + 160));
                }

                return result;
              }

              v21 = 0;
              v19 = 0u;
              v20 = 0u;
              v18 = 0u;
              v16 = *(a1 + 144);
              *&v20 = *(v16 + 24);
              v17 = -1;
              LODWORD(v18) = -1;
              *(&v18 + 1) = 0;
              v19 = 0uLL;
              result = __ConvertDictionaryLanguageModelToEDCTModelInfo(a1, *(v16 + 16), &v19 + 1);
              v22 = result;
              if (!result)
              {
                if (**(a1 + 144))
                {
                  *(&v18 + 1) = **(a1 + 144);
                }

                result = edct_DctInitSubDctFromTransSpec(*(a1 + 128), &v17);
                v22 = result;
                if (!result)
                {
                  if (*(&v19 + 1))
                  {
                    OOCAllocator_Free(*(a1 + 120), *(&v19 + 1));
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
    v6 = strlen(__s);
    v7 = OOCAllocator_Malloc(a1, v6 + 1, &v9);
    *a2 = v7;
    result = v9;
    if (!v9)
    {
      strncpy(v7, __s, v6 + 1);
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
    v6 = v9;
    if (!v9)
    {
      *(v5 + 128) = 0;
      *(v5 + 96) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 32) = 0u;
      *(v5 + 48) = 0u;
      *v5 = 0u;
      *(v5 + 16) = 0u;
      v7 = strlen(a2);
      memcpy(*a3, a2, v7);
      return v9;
    }
  }

  else
  {
    v6 = 0;
    *a3 = 0;
  }

  return v6;
}

uint64_t __Dictionary_CheckAndFillTranscriptionSpec(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  result = edct_DctGetAllEntryDataSpec(*(a1 + 128), &v11, &v12);
  if (!result)
  {
    if (v12)
    {
      v3 = 0;
      v4 = 0;
      while (1)
      {
        result = checkAndFillField(*(a1 + 120), 1, *(v11 + v3 + 8), *(a1 + 144));
        if (result)
        {
          break;
        }

        result = checkAndFillField(*(a1 + 120), 1, *(v11 + v3 + 16), (*(a1 + 144) + 8));
        if (result)
        {
          break;
        }

        v5 = *(a1 + 120);
        v6 = v11;
        v7 = *(v11 + v3 + 24);
        v8 = *(a1 + 144);
        if (v7 && !*(v8 + 16))
        {
          result = cloneString(v5, (v8 + 16), v7);
          if (result)
          {
            return result;
          }

          v5 = *(a1 + 120);
          v6 = v11;
          v8 = *(a1 + 144);
        }

        v9 = *(v6 + v3 + 32);
        if (v9)
        {
          if (!*(v8 + 24))
          {
            result = cloneString(v5, (v8 + 24), v9);
            if (result)
            {
              break;
            }
          }
        }

        ++v4;
        v10 = v12;
        v3 += 40;
        if (v4 >= v12)
        {
          return edct_DctFreeAllEntryDataSpec(*(a1 + 128), v11, v10);
        }
      }
    }

    else
    {
      v10 = 0;
      return edct_DctFreeAllEntryDataSpec(*(a1 + 128), v11, v10);
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

uint64_t Dictionary_AddWord(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (!**(a1 + 144))
  {
    result = __Dictionary_CheckAndFillTranscriptionSpec(a1);
    if (result)
    {
      return result;
    }
  }

  v8 = *a4;
  if (!*a4 || (v9 = *(a1 + 144), v10 = strlen(*v9), strncmp(v8, *v9, v10)))
  {
    v11 = "pEntrySpec->szLangInfo";
LABEL_5:

    return kaldi::OffsetFileInputImpl::MyType(v11);
  }

  v13 = *(a4 + 8);
  if (v13)
  {
    v14 = v9[1];
    if (v14)
    {
      if (strcmp(v13, v14))
      {
        v11 = "pEntrySpec->szLangOfOriginInfo";
        goto LABEL_5;
      }
    }
  }

  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = v9[2];
    if (v16)
    {
      if (strcmp(v15, v16))
      {
        v11 = "pEntrySpec->szLangModelInfo";
        goto LABEL_5;
      }
    }
  }

  v17 = *(a4 + 24);
  if (v17)
  {
    v18 = v9[3];
    if (v18)
    {
      if (strcmp(v17, v18))
      {
        v11 = "pEntrySpec->szEngineVersion";
        goto LABEL_5;
      }
    }
  }

  v19 = strchr(v8, 124);
  v20 = v19;
  if (v19)
  {
    *v19 = 0;
  }

  v29 = 0uLL;
  *&v30 = 0;
  v21 = *a3 - 1;
  if (v21 < 8 && ((0x8Bu >> v21) & 1) != 0)
  {
    *&v28 = __PAIR64__(dword_1C37BD130[v21], dword_1C37BD110[v21]);
  }

  else
  {
    result = kaldi::OffsetFileInputImpl::MyType("pTransType");
    if (result)
    {
      return result;
    }
  }

  v22 = *(a4 + 24);
  DWORD2(v28) = -1;
  v23 = *(a3 + 8);
  v24 = *(a3 + 16);
  *(&v30 + 1) = v22;
  *&v31 = v23;
  DWORD2(v31) = v24;
  if (v23)
  {
    if (*a3 == 1 && v24)
    {
      v25 = (v24 + v23 - 1);
      v26 = v24 - 1;
      do
      {
        if (*v25--)
        {
          break;
        }

        DWORD2(v31) = v26--;
      }

      while (v26 != -1);
    }

    result = __ConvertDictionaryLanguageModelToEDCTModelInfo(a1, *(a4 + 16), &v30);
    if (result)
    {
      return result;
    }

    if (*a4)
    {
      *&v29 = *a4;
    }
  }

  else
  {
    result = kaldi::PipeInputImpl::MyType("Unexpected Data!");
    if (result)
    {
      return result;
    }
  }

  result = edct_DctAddEntry(*(a1 + 128), a2, &v28, 1u);
  if (!v20 || result)
  {
    if (result)
    {
      return result;
    }
  }

  else
  {
    *v20 = 124;
  }

  if (v30)
  {
    OOCAllocator_Free(*(a1 + 120), v30);
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
    v6 = strlen(v4) + 25;
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
        strcpy(**a2, v4);
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
  v16 = 0;
  *a3 = 0;
  edct_DctItOpen(*(a1 + 120), v5, &v16);
  if (!v7)
  {
    v14 = 0;
    if (!edct_DctItHasEnded(v16, &v14))
    {
      v8 = 0;
      while (v14 != 1)
      {
        if (!edct_DctItCurrent(v16, &__s, 0, 0, 0))
        {
          v9 = strlen(__s);
          if (!edct_DctItIncrement(v16))
          {
            v8 += v9 + 9;
            v14 = 0;
            HasEnded = edct_DctItHasEnded(v16, &v14);
            if (!HasEnded)
            {
              continue;
            }
          }
        }

        return;
      }

      if (!edct_DctItClose(v16))
      {
        if (!v8)
        {
LABEL_2:
          *a3 = 0;
          *a2 = 0;
          return;
        }

        edct_DctItOpen(*(a1 + 120), *(a1 + 128), &v16);
        HasEnded = v10;
        if (!v10)
        {
          v11 = OOCAllocator_Malloc(*(a1 + 120), v8, &HasEnded);
          *a2 = v11;
          if (!HasEnded)
          {
            v14 = 0;
            HasEnded = edct_DctItHasEnded(v16, &v14);
            if (!HasEnded)
            {
              v12 = 0;
              v13 = v11 + v8;
              while (v14 != 1)
              {
                HasEnded = edct_DctItCurrent(v16, &__s, 0, 0, 0);
                if (!HasEnded)
                {
                  if (v11)
                  {
                    v13 += ~strlen(__s);
                    *v11++ = v13;
                    strcpy(v13, __s);
                    ++v12;
                  }

                  HasEnded = edct_DctItIncrement(v16);
                  if (!HasEnded)
                  {
                    v14 = 0;
                    HasEnded = edct_DctItHasEnded(v16, &v14);
                    if (!HasEnded)
                    {
                      continue;
                    }
                  }
                }

                return;
              }

              if (!edct_DctItClose(v16))
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
                v21 = 0;
                v22 = 2;
              }

              else if (v15 == 3 && v16 == 1)
              {
                v21 = 0;
                v22 = 8;
              }

              else
              {
                v19 = v16 & 0xFFFFFFFE;
                if (v15 != 2 || v19 != 2)
                {
                  v21 = kaldi::OffsetFileInputImpl::MyType("ContentType");
                  goto LABEL_29;
                }

                v21 = 0;
                v22 = 4;
              }
            }

            else
            {
              v21 = 0;
              v22 = 1;
            }

            *v14 = v22;
LABEL_29:
            v51 = v21;
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

                  memcpy(v37, v30, v31);
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
                memcpy(v35, v36, v34);
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

              memcpy(v38, *(v13 + 48), *(v14 + 16));
              goto LABEL_67;
            }

            result = kaldi::PipeInputImpl::MyType("Invalid dictionary buffer!");
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

void Dictionary_Merge(uint64_t a1, _OWORD *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
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
      kaldi::PipeInputImpl::MyType("Wrong Buffer Type");
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
                    if (!strcmp(v6, v10))
                    {
                      goto LABEL_26;
                    }

LABEL_34:
                    kaldi::OffsetFileInputImpl::MyType("pIStreamInterface");
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

uint64_t PNEW_Dictionary_Con(uint64_t a1, uint64_t a2, char **a3, _OWORD *a4, uint64_t a5, _DWORD *a6, int a7, uint64_t *a8)
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

uint64_t checkAndFillField(uint64_t a1, int a2, char *__s, char **a4)
{
  if (!__s)
  {
    return 0;
  }

  if (a2 && !lhi_IsValidLanguageString(__s))
  {

    return kaldi::PipeInputImpl::MyType("dictionary contains invalid language code");
  }

  else
  {
    if (*a4)
    {
      return 0;
    }

    return cloneString(a1, a4, __s);
  }
}