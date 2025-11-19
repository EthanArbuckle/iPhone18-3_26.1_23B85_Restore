uint64_t sub_265D9C914()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265D9C94C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11ShaderGraph7NodeDefV14ImplementationVGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 64); ; i += 5)
    {
      v14 = *(i - 4);
      v13 = *(i - 3);
      v15 = *(i - 1);
      v33 = *(i - 2);
      v16 = *i;
      v17 = *a3;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
      v19 = v17[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        break;
      }

      v23 = v18;
      if (v17[3] >= v22)
      {
        if ((a2 & 1) == 0)
        {
          v31 = result;
          specialized _NativeDictionary.copy()();
          result = v31;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, a2 & 1);
        v24 = *a3;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_17;
        }
      }

      v26 = *a3;
      if (v23)
      {
        v6 = 24 * result;
        v7 = (v26[7] + 24 * result);
        v8 = v7[1];
        v32 = *v7;
        v9 = v7[2];

        v10 = (v26[7] + v6);
        v12 = v10[1];
        v11 = v10[2];
        *v10 = v32;
        v10[1] = v8;
        v10[2] = v9;
      }

      else
      {
        v26[(result >> 6) + 8] |= 1 << result;
        v27 = (v26[6] + 16 * result);
        *v27 = v14;
        v27[1] = v13;
        v28 = (v26[7] + 24 * result);
        *v28 = v33;
        v28[1] = v15;
        v28[2] = v16;
        v29 = v26[2];
        v21 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v21)
        {
          goto LABEL_16;
        }

        v26[2] = v30;
      }

      a2 = 1;
      if (!--v3)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3;
    LOBYTE(v5) = a2;
    v6 = result;
    v8 = *(result + 32);
    v7 = *(result + 40);
    v9 = *(result + 56);
    v49 = *(result + 48);
    v10 = *a3;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    v12 = *(v10 + 16);
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    LOBYTE(v16) = v11;
    v50 = v4;
    if (*(v10 + 24) < v15)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
      v17 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      if ((v16 & 1) == (v18 & 1))
      {
        goto LABEL_7;
      }

LABEL_5:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if ((v5 & 1) == 0)
    {
      v26 = result;
      specialized _NativeDictionary.copy()();
      result = v26;
      v19 = *v50;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_7:
    v19 = *v4;
    if (v16)
    {
LABEL_8:
      v20 = 16 * result;
      v21 = (v19[7] + 16 * result);
      v23 = *v21;
      v22 = v21[1];

      v24 = (v19[7] + v20);
      v25 = v24[1];
      *v24 = v23;
      v24[1] = v22;

LABEL_12:
      v16 = v3 - 1;
      v4 = v50;
      if (v3 == 1)
      {
        return result;
      }

      v5 = (v6 + 88);
      while (1)
      {
        v7 = *(v5 - 3);
        v9 = *(v5 - 2);
        v3 = *(v5 - 1);
        v6 = *v5;
        v37 = *v4;

        result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
        v39 = *(v37 + 16);
        v40 = (v38 & 1) == 0;
        v14 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v14)
        {
          goto LABEL_23;
        }

        v8 = v38;
        if (*(v37 + 24) < v41)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, 1);
          v42 = *v4;
          result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
          if ((v8 & 1) != (v43 & 1))
          {
            goto LABEL_5;
          }
        }

        v44 = *v4;
        if (v8)
        {
          v31 = 16 * result;
          v32 = (v44[7] + 16 * result);
          v34 = *v32;
          v33 = v32[1];

          v35 = (v44[7] + v31);
          v36 = v35[1];
          *v35 = v34;
          v35[1] = v33;
        }

        else
        {
          v44[(result >> 6) + 8] |= 1 << result;
          v45 = (v44[6] + 16 * result);
          *v45 = v7;
          v45[1] = v9;
          v46 = (v44[7] + 16 * result);
          *v46 = v3;
          v46[1] = v6;
          v47 = v44[2];
          v14 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v14)
          {
            goto LABEL_24;
          }

          v44[2] = v48;
        }

        v5 += 4;
        --v16;
        v4 = v50;
        if (!v16)
        {
          return result;
        }
      }
    }

LABEL_10:
    v19[(result >> 6) + 8] |= 1 << result;
    v27 = (v19[6] + 16 * result);
    *v27 = v8;
    v27[1] = v7;
    v28 = (v19[7] + 16 * result);
    *v28 = v49;
    v28[1] = v9;
    v29 = v19[2];
    v14 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v19[2] = v30;
    goto LABEL_12;
  }

  return result;
}

{
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  LOBYTE(v6) = a2;
  v7 = result;
  v8 = *(result + 32);
  v9 = *(result + 40);
  v10 = *a3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    goto LABEL_21;
  }

  LOBYTE(v3) = v11;
  if (v10[3] >= v15)
  {
    goto LABEL_6;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v6 & 1);
  v16 = *a3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v3 & 1) != (v17 & 1))
  {
LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  while (1)
  {
    v3 = v4 - 1;
    if (v4 == 1)
    {
      return result;
    }

    v6 = (v7 + 56);
    v4 = 1;
    while (1)
    {
      v7 = *(v6 - 1);
      v9 = *v6;
      v21 = *a3;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      v23 = v21[2];
      v24 = (v22 & 1) == 0;
      v14 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v14)
      {
        break;
      }

      v8 = v22;
      if (v21[3] < v25)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, 1);
        v26 = *a3;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        if ((v8 & 1) != (v27 & 1))
        {
          goto LABEL_5;
        }
      }

      if ((v8 & 1) == 0)
      {
        v28 = *a3;
        *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
        *(v28[6] + 8 * result) = v7;
        *(v28[7] + 8 * result) = v9;
        v29 = v28[2];
        v14 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v14)
        {
          goto LABEL_20;
        }

        v28[2] = v30;
      }

      v6 += 2;
      if (!--v3)
      {
        return result;
      }
    }

LABEL_21:
    while (1)
    {
      __break(1u);
LABEL_22:
      v31 = result;
      specialized _NativeDictionary.copy()();
      result = v31;
      if (v3)
      {
        break;
      }

LABEL_8:
      v18 = *a3;
      *(*a3 + 8 * (result >> 6) + 64) |= 1 << result;
      *(v18[6] + 8 * result) = v8;
      *(v18[7] + 8 * result) = v9;
      v19 = v18[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (!v14)
      {
        v18[2] = v20;
        goto LABEL_10;
      }

LABEL_20:
      __break(1u);
    }
  }
}

uint64_t specialized Dictionary<>.init(_:)(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = 48 * v2;
  while (v4 != v2)
  {
    if (v2 >= *(a1 + 16))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    ++v2;
    v7 = v6 + 48;
    v8 = *(a1 + v6 + 72);
    v6 += 48;
    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + v7 - 8);
      v19 = *(a1 + v7 - 16);
      v10 = *(a1 + v7);
      v11 = *(a1 + v7 + 8);
      v12 = *(a1 + v7 + 16);

      outlined copy of TextureSource();
      v20 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v14 = v5[2];
      v13 = v5[3];
      if (v14 >= v13 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v5);
      }

      v5[2] = v14 + 1;
      v15 = &v5[5 * v14];
      v15[4] = v11;
      v15[5] = v12;
      v3 = v20;
      v15[6] = v19;
      v15[7] = v9;
      v15[8] = v10;
      goto LABEL_2;
    }
  }

  v16 = specialized _arrayForceCast<A, B>(_:)(v5);

  if (*(v16 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMR);
    v17 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v21 = v17;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, 1, &v21);

  return v21;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_AC05MetaleF0_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of [Input](i, &v11, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of MetalFunctionNode(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11ShaderGraph0aB4NodeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for RESurfaceShaderMaterial(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RESurfaceShaderMaterial(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph0cD4NodeV2IDV_AGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 1);
      v8 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph5InputV_AC14FunctionNodeIDVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(__int128 *))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v9 = *(i - 1);
      v10 = *i;
      v11 = i[1];
      v12 = i[2];
      v13 = *(i + 24);
      v14 = i[4];
      v15 = i[5];
      *&v23 = *(i - 2);
      *(&v23 + 1) = v9;
      *&v24 = v10;
      *(&v24 + 1) = v11;
      *&v25 = v12;
      BYTE8(v25) = v13;
      v26 = v14;

      result = a4(&v23);
      if (v17)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = v7[6] + 56 * result;
      v19 = v24;
      *v18 = v23;
      *(v18 + 16) = v19;
      *(v18 + 32) = v25;
      *(v18 + 48) = v26;
      *(v7[7] + 8 * result) = v15;
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_11ShaderGraph010SGDataTypeD0VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMd, &_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v19 = *(a1 + 56);
  v21 = *(a1 + 72);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  v9 = v19;
  v8 = v21;
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v12 = v3[7] + 48 * result;
    *v12 = v5;
    *(v12 + 8) = v6;
    *(v12 + 16) = v9;
    *(v12 + 32) = v8;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = (v11 + 56);
    v4 = *(v11 - 5);
    v5 = *(v11 - 4);
    v6 = *(v11 - 3);
    v18 = *v11;
    v20 = *(v11 - 1);

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    v8 = v18;
    v9 = v20;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph7SGGraphC15ReplacementNodeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7SGGraphC15ReplacementNodeVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGGraphC15ReplacementNodeVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AC0cD4NodeVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[6];
      *v30 = v4[5];
      *&v30[16] = v6;
      *&v30[25] = *(v4 + 105);
      v7 = v4[4];
      v28 = v4[3];
      v29 = v7;
      v8 = v4[1];
      v26[0] = *v4;
      v26[1] = v8;
      v10 = *v4;
      v9 = v4[1];
      v27 = v4[2];
      v33 = v27;
      v34 = v28;
      v35 = v7;
      v24 = *&v30[8];
      v11 = *v30;
      v12 = *&v30[24];
      v13 = *&v30[32];
      v14 = v30[40];
      v31 = v10;
      v32 = v9;
      outlined init with copy of [Input](v26, v25, &_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AA0aB4NodeVtMd, &_s11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLV_AA0aB4NodeVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v31);
      if (v16)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v3[6] + 80 * result);
      v18 = v34;
      v17[2] = v33;
      v17[3] = v18;
      v17[4] = v35;
      v19 = v32;
      *v17 = v31;
      v17[1] = v19;
      v20 = v3[7] + 48 * result;
      *v20 = v11;
      *(v20 + 8) = v24;
      *(v20 + 24) = v12;
      *(v20 + 32) = v13;
      *(v20 + 40) = v14;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_11;
      }

      v3[2] = v23;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC05LL3for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC17OrderedDictionaryVySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_V_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[3];
      v20 = v4[2];
      v21 = v6;
      v7 = v4[5];
      v22 = v4[4];
      v23 = v7;
      v8 = v4[1];
      v19[0] = *v4;
      v19[1] = v8;
      v9 = v7;
      v27 = v6;
      v28 = v22;
      v25 = v8;
      v26 = v20;
      v24 = v19[0];
      outlined init with copy of [Input](v19, &v18, &_s11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381I14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctiondB0CGAA0cA7ProgramC_AA17OrderedDictionaryVySSSo0T0_pGzSo10MTLLibrary_pSaySoAS_pGtKF11ConstantKeyL_V_SStMd, &_s11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381I14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctiondB0CGAA0cA7ProgramC_AA17OrderedDictionaryVySSSo0T0_pGzSo10MTLLibrary_pSaySoAS_pGtKF11ConstantKeyL_V_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v24);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 80 * result);
      v13 = v27;
      v12[2] = v26;
      v12[3] = v13;
      v12[4] = v28;
      v14 = v25;
      *v12 = v24;
      v12[1] = v14;
      *(v3[7] + 16 * result) = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_11;
      }

      v3[2] = v17;
      if (!i)
      {

        return v3;
      }

      v4 += 6;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph13MetalDataTypeC_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph13MetalDataTypeCSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph13MetalDataTypeCSSGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11ShaderGraph14FunctionNodeIDV_SSTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph13MetalDataTypeC_ypSgtSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeC_ypSgtSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [Input](v4, &v16, &_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMd, &_sSS_11ShaderGraph13MetalDataTypeC_ypSgtSgtMR);
      v5 = v16;
      v6 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSNumberCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id outlined copy of SGDataTypeStorage(id result, id a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 23 || a9 == 22)
  {
    return result;
  }

  if (a9 == 6)
  {
  }

  return result;
}

void outlined consume of SGDataTypeStorage(void *a1, id a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9)
{
  if (a9 == 23 || a9 == 22)
  {
  }

  else if (a9 == 6)
  {
  }
}

uint64_t outlined consume of UserGraph.Adjacent?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_265D9E048()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t outlined consume of ShaderGraphNode?(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    outlined consume of NodePersonality(result);
  }

  return result;
}

unint64_t outlined copy of ShaderGraphNode?(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    outlined copy of NodePersonality(result);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t TextureSource.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  MEMORY[0x266772770](a4 & 1);

  return String.hash(into:)();
}

Swift::Int TextureSource.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TextureSource()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TextureSource()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x266772770](*(v0 + 16));

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TextureSource()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v3);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t TypedTexture.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  MEMORY[0x266772770](a4 & 1);
  String.hash(into:)();
  return (*(*a5 + 120))(a1);
}

Swift::Int TypedTexture.hashValue.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a3 & 1);
  String.hash(into:)();
  (*(*a4 + 120))(v7);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TypedTexture()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v3);
  String.hash(into:)();
  (*(*v4 + 120))(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TypedTexture(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  MEMORY[0x266772770](*(v1 + 16));
  String.hash(into:)();
  return (*(*v5 + 120))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TypedTexture()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v3);
  String.hash(into:)();
  (*(*v4 + 120))(v6);
  return Hasher._finalize()();
}

uint64_t TextureAssignment.uniformName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TextureAssignment.source.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  outlined copy of TextureSource();
  return v1;
}

uint64_t TextureAssignment.init(uniformName:metalType:source:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TextureAssignment(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized static TextureAssignment.== infix(_:_:)(&v5, &v7);
}

uint64_t NodeDef.metalTextureType.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  if (v2 == 0x7865545655647355 && v1 == 0xEC00000065727574)
  {
    return 2;
  }

  v4 = v0[2];
  v5 = v0[3];
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  if (v2 == 0xD000000000000014 && 0x8000000265F2DB60 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (v2 == 0x6567616D69 && v1 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0x616D6964656C6974 && v1 == 0xEA00000000006567 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000013 && 0x8000000265F2DB80 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000010 && 0x8000000265F2DBA0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD000000000000015 && 0x8000000265F2DBC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000018 && 0x8000000265F2DBE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001DLL && 0x8000000265F2DC00 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 5;
  }

  if (v2 == 0xD000000000000015 && 0x8000000265F2DC20 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD00000000000001CLL && 0x8000000265F2DC40 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (v2 == 0xD000000000000017 && 0x8000000265F2DC60 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (v2 == 0xD000000000000013 && 0x8000000265F2DC80 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000016 && 0x8000000265F2DCA0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DCC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000018 && 0x8000000265F2DCE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DD00 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DD20 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v2 == 0xD000000000000018 && 0x8000000265F2DD50 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DD70 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DD90 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001DLL && 0x8000000265F2DDC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DDE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000025 && 0x8000000265F2DE10 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  if (v2 == 0xD000000000000013 && 0x8000000265F2DE40 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000016 && 0x8000000265F2DE60 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DE80 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000018 && 0x8000000265F2DEA0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000001BLL && 0x8000000265F2DEC0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD000000000000020 && 0x8000000265F2DEE0 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (v2 == 0xD00000000000001ELL && 0x8000000265F2DF10 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v2 == 0xD00000000000002FLL && 0x8000000265F2DF30 == v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if ((v2 != 0xD000000000000013 || 0x8000000265F2DF60 != v1) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *v0;
  v8 = v0[1];
  if (v7 == 0xD000000000000024 && 0x8000000265F2DA40 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000025 && 0x8000000265F2DA70 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  if (v7 == 0xD000000000000024 && 0x8000000265F2DAA0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000025 && 0x8000000265F2DAD0 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 7;
  }

  if (v7 == 0xD000000000000026 && 0x8000000265F2DB00 == v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000027 && 0x8000000265F2DB30 == v8)
  {
    return 5;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

uint64_t MTLTextureType.sgDebugName.getter(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      return 0x6562754365707974;
    }

    switch(a1)
    {
      case 7:
        return 0x443365707974;
      case 8:
        return 0xD000000000000016;
      case 9:
        return 0xD000000000000011;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x443265707974;
      }

      if (a1 != 3)
      {
        return 0xD000000000000011;
      }

      v2 = 0x443265707974;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
    }

    if (!a1)
    {
      return 0x443165707974;
    }

    if (a1 == 1)
    {
      v2 = 0x443165707974;
      return v2 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t metalDataTypeForTexture(type:elementType:)(uint64_t a1, uint64_t a2)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v2 = type metadata accessor for Logger();
          __swift_project_value_buffer(v2, logger);
          v3 = Logger.logObject.getter();
          v4 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v3, v4))
          {
            goto LABEL_67;
          }

          v5 = swift_slowAlloc();
          v6 = swift_slowAlloc();
          v70 = v6;
          *v5 = 136315394;
          v7 = SGDataType.stringValue.getter();
          v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v70);

          *(v5 + 4) = v9;
          *(v5 + 12) = 2080;
          v10 = "type2DMultisample";
          goto LABEL_17;
        }

        switch(a2)
        {
          case 3:
            if (one-time initialization token for texture2darray_int != -1)
            {
              swift_once();
            }

            v35 = &static MetalDataType.texture2darray_int;
            goto LABEL_97;
          case 7:
            if (one-time initialization token for texture2darray_half != -1)
            {
              swift_once();
            }

            v35 = &static MetalDataType.texture2darray_half;
            goto LABEL_97;
          case 9:
            if (one-time initialization token for texture2darray_float != -1)
            {
              swift_once();
            }

            v35 = &static MetalDataType.texture2darray_float;
            goto LABEL_97;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_67;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v70 = v6;
        *v5 = 136315394;
        v67 = SGDataType.stringValue.getter();
        v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v70);

        *(v5 + 4) = v69;
        *(v5 + 12) = 2080;
        v21 = 0x443265707974;
        goto LABEL_24;
      }

      switch(a2)
      {
        case 3:
          if (one-time initialization token for texture2d_int != -1)
          {
            swift_once();
          }

          v35 = &static MetalDataType.texture2d_int;
          goto LABEL_97;
        case 7:
          if (one-time initialization token for texture2d_half != -1)
          {
            swift_once();
          }

          v35 = &static MetalDataType.texture2d_half;
          goto LABEL_97;
        case 9:
          if (one-time initialization token for texture2d_float != -1)
          {
            swift_once();
          }

          v35 = &static MetalDataType.texture2d_float;
          goto LABEL_97;
      }

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      __swift_project_value_buffer(v58, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_67;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v70 = v6;
      *v5 = 136315394;
      v59 = SGDataType.stringValue.getter();
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v70);

      *(v5 + 4) = v61;
      *(v5 + 12) = 2080;
      v33 = 0x443265707974;
LABEL_35:
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, 0xE600000000000000, &v70);
LABEL_64:

      *(v5 + 14) = v34;
      goto LABEL_65;
    }

    if (!a1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_67;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v70 = v6;
      *v5 = 136315394;
      v30 = SGDataType.stringValue.getter();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v70);

      *(v5 + 4) = v32;
      *(v5 + 12) = 2080;
      v33 = 0x443165707974;
      goto LABEL_35;
    }

    if (a1 == 1)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_67;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v70 = v6;
      *v5 = 136315394;
      v18 = SGDataType.stringValue.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v70);

      *(v5 + 4) = v20;
      *(v5 + 12) = 2080;
      v21 = 0x443165707974;
LABEL_24:
      v22 = v21 & 0xFFFFFFFFFFFFLL | 0x7241000000000000;
      v23 = 0xEB00000000796172;
LABEL_30:
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v70);

      *(v5 + 14) = v28;
LABEL_65:
      _os_log_impl(&dword_265D7D000, v3, v4, "Unsupported element type %s for texture type %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v6, -1, -1);
      v40 = v5;
LABEL_66:
      MEMORY[0x266773120](v40, -1, -1);
LABEL_67:

      return 0;
    }

    goto LABEL_68;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        switch(a2)
        {
          case 3:
            if (one-time initialization token for texture3d_int != -1)
            {
              swift_once();
            }

            v35 = &static MetalDataType.texture3d_int;
            goto LABEL_97;
          case 7:
            if (one-time initialization token for texture3d_half != -1)
            {
              swift_once();
            }

            v35 = &static MetalDataType.texture3d_half;
            goto LABEL_97;
          case 9:
            if (one-time initialization token for texture3d_float != -1)
            {
              swift_once();
            }

            v35 = &static MetalDataType.texture3d_float;
            goto LABEL_97;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for Logger();
        __swift_project_value_buffer(v62, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_67;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v70 = v6;
        *v5 = 136315394;
        v63 = SGDataType.stringValue.getter();
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v70);

        *(v5 + 4) = v65;
        *(v5 + 12) = 2080;
        v33 = 0x443365707974;
        goto LABEL_35;
      case 8:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_67;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v70 = v6;
        *v5 = 136315394;
        v37 = SGDataType.stringValue.getter();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v70);

        *(v5 + 4) = v39;
        *(v5 + 12) = 2080;
        v16 = 0xD000000000000016;
        v15 = 0x8000000265F2DFA0;
        goto LABEL_63;
      case 9:
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, logger);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_67;
        }

        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v70 = v6;
        *v5 = 136315394;
        v12 = SGDataType.stringValue.getter();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v70);

        *(v5 + 4) = v14;
        *(v5 + 12) = 2080;
        v10 = "typeTextureBuffer";
LABEL_17:
        v15 = (v10 - 32) | 0x8000000000000000;
        v16 = 0xD000000000000011;
LABEL_63:
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v70);
        goto LABEL_64;
    }

LABEL_68:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, logger);
    v3 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v44))
    {
      goto LABEL_67;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v70 = v46;
    *v45 = 136315394;
    v47 = SGDataType.stringValue.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v70);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = MTLTextureType.sgDebugName.getter(a1);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v70);

    *(v45 + 14) = v52;
    _os_log_impl(&dword_265D7D000, v3, v44, "Unsupported element type %s for texture type %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266773120](v46, -1, -1);
    v40 = v45;
    goto LABEL_66;
  }

  if (a1 != 5)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, logger);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_67;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v70 = v6;
    *v5 = 136315394;
    v25 = SGDataType.stringValue.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v70);

    *(v5 + 4) = v27;
    *(v5 + 12) = 2080;
    v22 = 0x6562754365707974;
    v23 = 0xED00007961727241;
    goto LABEL_30;
  }

  if (a2 == 7)
  {
    if (one-time initialization token for texturecube_half != -1)
    {
      swift_once();
    }

    v35 = &static MetalDataType.texturecube_half;
  }

  else
  {
    if (a2 != 9)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      __swift_project_value_buffer(v53, logger);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_67;
      }

      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v70 = v6;
      *v5 = 136315394;
      v54 = SGDataType.stringValue.getter();
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v70);

      *(v5 + 4) = v56;
      *(v5 + 12) = 2080;
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6562754365707974, 0xE800000000000000, &v70);
      goto LABEL_64;
    }

    if (one-time initialization token for texturecube_float != -1)
    {
      swift_once();
    }

    v35 = &static MetalDataType.texturecube_float;
  }

LABEL_97:
  v57 = *v35;
}

uint64_t specialized static TypedTexture.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a3)
  {
    if ((a7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return (*(*a4 + 128))(a8) & 1;
  }

  v9 = a8;
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a8 = v9;
  if (v10)
  {
    return (*(*a4 + 128))(a8) & 1;
  }

  return 0;
}

uint64_t specialized static TextureSource.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if ((a6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

BOOL specialized static TextureAssignment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(**(a1 + 16) + 128))(*(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }

    if (v5 == v7 && v6 == v8)
    {
      return 1;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    if (v5 == v7 && v6 == v8)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t specialized SGNode.textureType(nodeDefStore:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___SGNode_data);
  if (*(v1 + OBJC_IVAR___SGNode_data + 80) > 0x3Fu)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = v1;
  v5 = *v2;
  v6 = v2[1];
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(*v2, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 56) + 152 * v7;
  v10 = *(v9 + 16);
  v57[0] = *v9;
  v57[1] = v10;
  v11 = *(v9 + 80);
  v13 = *(v9 + 32);
  v12 = *(v9 + 48);
  v57[4] = *(v9 + 64);
  v57[5] = v11;
  v57[2] = v13;
  v57[3] = v12;
  v15 = *(v9 + 112);
  v14 = *(v9 + 128);
  v16 = *(v9 + 96);
  v58 = *(v9 + 144);
  v57[7] = v15;
  v57[8] = v14;
  v57[6] = v16;
  v17 = v57[0];
  if (v57[0] == __PAIR128__(0xEF65727574786554, 0x56556473555F444ELL) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v5 == 0xD000000000000024 ? (v18 = 0x8000000265F2DA40 == v6) : (v18 = 0), v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (one-time initialization token for texture2d_half != -1)
    {
      swift_once();
    }

    v19 = &static MetalDataType.texture2d_half;
LABEL_14:
    v20 = *v19;
  }

  v22 = v5 == 0xD000000000000025 && 0x8000000265F2DA70 == v6;
  if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texture2d_float != -1)
    {
      swift_once();
    }

    v19 = &static MetalDataType.texture2d_float;
    goto LABEL_14;
  }

  v23 = v5 == 0xD000000000000024 && 0x8000000265F2DAA0 == v6;
  if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texture3d_half != -1)
    {
      swift_once();
    }

    v19 = &static MetalDataType.texture3d_half;
    goto LABEL_14;
  }

  if (v5 == 0xD000000000000025 && 0x8000000265F2DAD0 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texture3d_float != -1)
    {
      swift_once();
    }

    v19 = &static MetalDataType.texture3d_float;
    goto LABEL_14;
  }

  if (v5 == 0xD000000000000026 && 0x8000000265F2DB00 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texturecube_half != -1)
    {
      swift_once();
    }

    v19 = &static MetalDataType.texturecube_half;
    goto LABEL_14;
  }

  if (v5 == 0xD000000000000027 && 0x8000000265F2DB30 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for texturecube_float != -1)
    {
      swift_once();
    }

    v19 = &static MetalDataType.texturecube_float;
    goto LABEL_14;
  }

  v24 = NodeDef.metalTextureType.getter();
  if (v25)
  {
    outlined init with copy of NodeDef(v57, v56);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, logger);
    outlined init with copy of NodeDef(v57, v56);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    outlined destroy of NodeDef(v57);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56[0] = v30;
      *v29 = 136315138;

      outlined destroy of NodeDef(v57);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, *(&v17 + 1), v56);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_265D7D000, v27, v28, "Unable to determine texture type for nodeDef %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x266773120](v30, -1, -1);
      MEMORY[0x266773120](v29, -1, -1);
    }

    else
    {

      outlined destroy of NodeDef(v57);
    }

    return 0;
  }

  v32 = v24;
  v33 = *(v4 + OBJC_IVAR___SGNode_outputs);
  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

LABEL_70:
    if (one-time initialization token for logger == -1)
    {
LABEL_71:
      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, logger);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_265D7D000, v52, v53, "Unable to find expected output on node.", v54, 2u);
        MEMORY[0x266773120](v54, -1, -1);
      }

      return 0;
    }

LABEL_77:
    swift_once();
    goto LABEL_71;
  }

  if (v33 < 0)
  {
    v50 = *(v4 + OBJC_IVAR___SGNode_outputs);
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_70;
  }

LABEL_56:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x266772030](0, v33);
    goto LABEL_59;
  }

  if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_77;
  }

  v34 = *(v33 + 32);
LABEL_59:
  v35 = v34;
  v36 = OBJC_IVAR___SGOutput_type;
  swift_beginAccess();
  v37 = SGDataType.vectorElementType()(*&v35[v36]);
  if ((v38 & 1) == 0)
  {
    v49 = metalDataTypeForTexture(type:elementType:)(v32, v37);

    return v49;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, logger);
  v40 = v35;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v55 = v44;
    *v43 = 136315138;
    v45 = *&v35[v36];
    v46 = SGDataType.stringValue.getter();
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, &v55);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_265D7D000, v41, v42, "Output type has no vector element type. %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    MEMORY[0x266773120](v44, -1, -1);
    MEMORY[0x266773120](v43, -1, -1);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type TextureSource and conformance TextureSource()
{
  result = lazy protocol witness table cache variable for type TextureSource and conformance TextureSource;
  if (!lazy protocol witness table cache variable for type TextureSource and conformance TextureSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextureSource and conformance TextureSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TypedTexture and conformance TypedTexture()
{
  result = lazy protocol witness table cache variable for type TypedTexture and conformance TypedTexture;
  if (!lazy protocol witness table cache variable for type TypedTexture and conformance TypedTexture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TypedTexture and conformance TypedTexture);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureSource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TypedTexture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TypedTexture(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TextureAssignment(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureAssignment(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph6SGNodeCG_SO_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GtsAE_pTg504_s11d8Graph010hi104B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21FunctionConstantValueVGtKcfcSO_AA0m2V4g6VyAC11j7V_GtAA6F8CKXEfU1_SiAF0tU8SequenceVAKyAQGTf1cn_n(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  if (result >> 62)
  {
    goto LABEL_30;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = result;
  v70 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v70;
    v10 = v8;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v4;
    v49 = v6 - 1;
    v50 = v8 & 0xC000000000000001;
    v53 = a2;
    v48 = v8;
    while (1)
    {
      v52 = v7;
      if (v50)
      {
        v11 = MEMORY[0x266772030](v9, v10);
      }

      else
      {
        if (v9 >= *(v46 + 16))
        {
          goto LABEL_29;
        }

        v11 = *(v10 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = *&v11[OBJC_IVAR___SGNode_data + 16];
      v64 = *&v11[OBJC_IVAR___SGNode_data];
      v65 = v13;
      v15 = *&v11[OBJC_IVAR___SGNode_data + 48];
      v14 = *&v11[OBJC_IVAR___SGNode_data + 64];
      v16 = *&v11[OBJC_IVAR___SGNode_data + 32];
      v69 = v11[OBJC_IVAR___SGNode_data + 80];
      v67 = v15;
      v68 = v14;
      v66 = v16;
      v17 = v64;
      v18 = v65;
      v19 = v16;
      v20 = v69 >> 6;
      v51 = v9;
      if (v20)
      {
        if (v20 == 1)
        {
          v21 = swift_allocObject();
          v22 = v17;
          v4 = v47;
          specialized SGDataTypeGraph.init(_:idSequence:constants:)(v71, v22, a3, MEMORY[0x277D84F90]);
          if (v47)
          {
            swift_deallocUninitializedObject();

            return v7;
          }

          v23 = v71[1];
          *(v21 + 16) = v71[0];
          *(v21 + 32) = v23;
          *(v21 + 48) = v71[2];
          v24 = v21 | 0x4000000000000000;
          v25 = *&v12[OBJC_IVAR___SGNode_name];
          v26 = *&v12[OBJC_IVAR___SGNode_name + 8];
          goto LABEL_17;
        }

        v28 = v69 & 0x3F;
        v29 = swift_allocObject();
        *(v29 + 16) = v17;
        *(v29 + 32) = v18;
        *(v29 + 48) = v19;
        v30 = v68;
        *(v29 + 64) = v67;
        *(v29 + 80) = v30;
        *(v29 + 96) = v28;
        v24 = v29 | 0x8000000000000000;
      }

      else
      {
        v27 = *(&v64 + 1);
        v24 = swift_allocObject();
        *(v24 + 16) = v17;
        *(v24 + 24) = v27;
        *(v24 + 32) = v18;
        *(v24 + 48) = v19;
      }

      v25 = *&v12[OBJC_IVAR___SGNode_name];
      v26 = *&v12[OBJC_IVAR___SGNode_name + 8];
      outlined init with copy of NodeData(&v64, &v61);
LABEL_17:

      v31 = *v73;
      v72[0] = *(*v73 + 16);
      v32 = v72[0];
      v72[1] = v53;
      v72[2] = v24;
      v72[3] = v25;
      v72[4] = v26;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      _s11ShaderGraph0B0V8AdjacentVyAEyx_GAC4NodeVyx_GcfCAA010SGDataTypeB0V11PersonalityV_Tt0g5Tf4g_n(v72, &v58);
      *&v61 = v32;
      *(&v61 + 1) = v53;
      *&v62 = v24;
      *(&v62 + 1) = v25;
      *v63 = v26;
      *&v63[8] = v58;
      *&v63[24] = v59;
      *&v63[40] = v60;
      outlined init with copy of [Input](&v61, v54, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
      }

      v34 = v31[2];
      v33 = v31[3];
      v35 = v12;
      if (v34 >= v33 >> 1)
      {
        v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v31);
      }

      a2 = v53;
      v54[0] = v32;
      v54[1] = v53;
      v54[2] = v24;
      v54[3] = v25;
      v54[4] = v26;
      v55 = v58;
      v56 = v59;
      v57 = v60;
      outlined destroy of [Input](v54, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v31[2] = v34 + 1;
      v36 = &v31[11 * v34];
      v37 = v62;
      *(v36 + 2) = v61;
      *(v36 + 3) = v37;
      v39 = *&v63[16];
      v38 = *&v63[32];
      v40 = *v63;
      v36[14] = *&v63[48];
      *(v36 + 5) = v39;
      *(v36 + 6) = v38;
      *(v36 + 4) = v40;
      *v73 = v31;

      v7 = v52;
      v70 = v52;
      v42 = *(v52 + 16);
      v41 = *(v52 + 24);
      if (v42 >= v41 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v7 = v70;
      }

      *(v7 + 16) = v42 + 1;
      v43 = (v7 + 48 * v42);
      v43[4] = v35;
      v43[5] = v32;
      v43[6] = v53;
      v43[7] = v24;
      v43[8] = v25;
      v43[9] = v26;
      if (v49 == v51)
      {
        return v7;
      }

      v9 = v51 + 1;
      v10 = v48;
      if (__OFADD__(v51 + 1, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v44 = result;
        v6 = __CocoaSet.count.getter();
        result = v44;
        goto LABEL_3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph21FunctionConstantValueVG_SS_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_Gts5NeverOTg504_s11d8Graph010jk70B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21fgh13VGtKcfcSS_AA0p2V4i6VyAC11L12V_GtAKXEfU2_SiAKyAQGTf1cn_n(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v55 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v35 = v4 - 1;
    v36 = v55;
    v7 = a1 + 64;
    v34 = a3;
    while (1)
    {
      v8 = *(v7 - 16);
      v47 = *(v7 - 32);
      v48 = v8;
      v9 = *(v7 + 48);
      v49[2] = *(v7 + 32);
      v49[3] = v9;
      v50 = *(v7 + 64);
      v10 = *(v7 + 16);
      v49[0] = *v7;
      v49[1] = v10;
      v11 = v47;
      v12 = v48;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v14 = *(v7 + 48);
      *(v13 + 64) = *(v7 + 32);
      *(v13 + 80) = v14;
      *(v13 + 96) = *(v7 + 64);
      v15 = *(v7 + 16);
      *(v13 + 32) = *v7;
      *(v13 + 48) = v15;
      v16 = v13 | 0x8000000000000000;
      *&v39 = 0x5F436E6366;
      *(&v39 + 1) = 0xE500000000000000;
      outlined init with copy of FunctionConstantValue(&v47, v42);
      outlined init with copy of SGDataTypeStorage(v49, v42);
      MEMORY[0x266771550](v11, *(&v11 + 1));
      v17 = v39;
      v18 = *a3;
      v19 = *(*a3 + 16);
      *&v53 = v19;
      *(&v53 + 1) = a2;
      *v54 = v16;
      *&v54[8] = v39;
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      _s11ShaderGraph0B0V8AdjacentVyAEyx_GAC4NodeVyx_GcfCAA010SGDataTypeB0V11PersonalityV_Tt0g5Tf4g_n(&v53, &v39);
      *&v51 = v19;
      *(&v51 + 1) = a2;
      *v52 = v16;
      *&v52[8] = v17;
      *&v52[24] = v39;
      *&v52[40] = v40;
      *&v52[56] = v41;
      outlined init with copy of [Input](&v51, v42, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
      }

      v42[0] = v19;
      v42[1] = a2;
      v42[2] = v16;
      v43 = v17;
      v44 = v39;
      v45 = v40;
      v46 = v41;
      outlined destroy of [Input](v42, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v18[2] = v21 + 1;
      v22 = &v18[11 * v21];
      v23 = *v52;
      *(v22 + 2) = v51;
      *(v22 + 3) = v23;
      v24 = *&v52[48];
      v25 = *&v52[32];
      v26 = *&v52[16];
      v22[14] = *&v52[64];
      *(v22 + 5) = v25;
      *(v22 + 6) = v24;
      *(v22 + 4) = v26;
      a3 = v34;
      *v34 = v18;

      outlined destroy of FunctionConstantValue(&v47);
      v27 = v53;
      v28 = *v54;
      v29 = *&v54[16];
      result = v36;
      v55 = v36;
      v31 = *(v36 + 16);
      v30 = *(v36 + 24);
      if (v31 >= v30 >> 1)
      {
        v37 = v53;
        v33 = *v54;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v28 = v33;
        v27 = v37;
        result = v55;
      }

      *(result + 16) = v11 + 1;
      v32 = result + 56 * v11;
      *(v32 + 32) = v11;
      *(v32 + 48) = v27;
      *(v32 + 64) = v28;
      *(v32 + 80) = v29;
      if (!v35)
      {
        break;
      }

      --v35;
      v36 = result;
      v7 += 112;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SS_SSts5NeverOTg5149_s11ShaderGraph010SGDataTypeB0V18structuralEdgeList15topologicalSort14textureMappingSaySSGAC011TopologicalI0V_SDyS2SGtKFSS_SStSS3key_SS5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v9;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v14 = (*(v3 + 56) + 16 * v7);
    v32 = *v14;
    v33 = *v12;
    v15 = v3;
    v16 = v14[1];
    v17 = *(v34 + 16);
    v18 = *(v34 + 24);

    if (v17 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
    }

    *(v34 + 16) = v17 + 1;
    v19 = (v34 + 32 * v17);
    v19[4] = v32;
    v19[5] = v16;
    v19[6] = v33;
    v19[7] = v13;
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v15;
    v4 = v30;
    v20 = *(v30 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v27 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = outlined consume of [String : String].Index._Variant(v7, v29, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v7, v29, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void SGDataTypeGraph.PersonalityKind.hash(into:)(__int128 *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v12 = v3;
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v16 = *(&v11 + 1);
      *(&v16 + 1) = v3;
      v17 = v4;
      v9[0] = *(&v3 + 1);
      MEMORY[0x266772770](1);
      outlined init with copy of String(&v17, &v15);
      outlined init with copy of [Input](&v16, &v15, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined init with copy of [Input](&v16 + 8, &v15, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined init with copy of [Input](v9, &v15, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      SGDataTypeGraph.hash(into:)(a1);
      outlined destroy of String(&v17);
      outlined destroy of [Input](&v16, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined destroy of [Input](&v16 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined destroy of [Input](v9, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    }

    else
    {
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v13 = v7;
      v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v6);
      SGDataTypeStorage.hash(into:)();
    }
  }

  else
  {
    v5 = *(a2 + 32);
    v10 = *(a2 + 16);
    v11 = v5;
    v12 = *(a2 + 48);
    v15 = v10;
    v16 = v5;
    v17 = v12;
    MEMORY[0x266772770](0);
    outlined init with copy of String(&v15, v9);
    outlined init with copy of [Input](&v16, v9, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v16 + 8, v9, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of MaterialXAvailability(&v17, v9);
    BuiltInDefinition.hash(into:)();
    outlined destroy of String(&v15);
    outlined destroy of [Input](&v16, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined destroy of [Input](&v16 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined destroy of MaterialXAvailability(&v17);
  }
}

Swift::Int SGDataTypeGraph.PersonalityKind.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = v2;
      v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v17 = *(&v12 + 1);
      v9[0] = *(&v2 + 1);
      *(&v17 + 1) = v2;
      MEMORY[0x266772770](1);
      outlined init with copy of String(&v18, &v16);
      outlined init with copy of [Input](&v17, &v16, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined init with copy of [Input](&v17 + 8, &v16, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined init with copy of [Input](v9, &v16, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      SGDataTypeGraph.hash(into:)(v10);
      outlined destroy of String(&v18);
      outlined destroy of [Input](&v17, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined destroy of [Input](&v17 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined destroy of [Input](v9, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    }

    else
    {
      v4 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      v5 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *(v4 + 64);
      v14 = *(v4 + 80);
      v15 = *(v4 + 96);
      v7 = *(v4 + 32);
      v12 = *(v4 + 48);
      v13 = v6;
      v11 = v7;
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v5);
      SGDataTypeStorage.hash(into:)();
    }
  }

  else
  {
    v3 = *(a1 + 32);
    v11 = *(a1 + 16);
    v12 = v3;
    v13 = *(a1 + 48);
    v16 = v11;
    v17 = v3;
    v18 = v13;
    MEMORY[0x266772770](0);
    outlined init with copy of String(&v16, v9);
    outlined init with copy of [Input](&v17, v9, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v17 + 8, v9, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of MaterialXAvailability(&v18, v9);
    BuiltInDefinition.hash(into:)();
    outlined destroy of String(&v16);
    outlined destroy of [Input](&v17, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined destroy of [Input](&v17 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined destroy of MaterialXAvailability(&v18);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph.PersonalityKind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  SGDataTypeGraph.PersonalityKind.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t static SGDataTypeGraph.Personality.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || (specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(a2, a6) & 1) == 0)
  {
    return 0;
  }

  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SGDataTypeGraph.Personality.hash(into:)(__int128 *a1, uint64_t a2, unint64_t a3)
{
  MEMORY[0x266772770](a2);
  if (a3 >> 62)
  {
    if (a3 >> 62 == 1)
    {
      v5 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v15 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v16 = v5;
      v14 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v20 = *(&v15 + 1);
      v21 = v6;
      v13[0] = *(&v5 + 1);
      *(&v20 + 1) = v5;
      MEMORY[0x266772770](1);
      outlined init with copy of String(&v21, &v19);
      outlined init with copy of [Input](&v20, &v19, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined init with copy of [Input](&v20 + 8, &v19, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined init with copy of [Input](v13, &v19, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
      SGDataTypeGraph.hash(into:)(a1);
      outlined destroy of String(&v21);
      outlined destroy of [Input](&v20, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
      outlined destroy of [Input](&v20 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
      outlined destroy of [Input](v13, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    }

    else
    {
      v8 = a3 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = *((a3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *(v8 + 80);
      v16 = *(v8 + 64);
      v17 = v10;
      v18 = *(v8 + 96);
      v11 = *(v8 + 48);
      v14 = *(v8 + 32);
      v15 = v11;
      MEMORY[0x266772770](2);
      MEMORY[0x266772770](v9);
      SGDataTypeStorage.hash(into:)();
    }
  }

  else
  {
    v7 = *(a3 + 32);
    v14 = *(a3 + 16);
    v15 = v7;
    v16 = *(a3 + 48);
    v19 = v14;
    v20 = v7;
    v21 = v16;
    MEMORY[0x266772770](0);
    outlined init with copy of String(&v19, v13);
    outlined init with copy of [Input](&v20, v13, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v20 + 8, v13, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of MaterialXAvailability(&v21, v13);
    BuiltInDefinition.hash(into:)();
    outlined destroy of String(&v19);
    outlined destroy of [Input](&v20, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined destroy of [Input](&v20 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined destroy of MaterialXAvailability(&v21);
  }

  return String.hash(into:)();
}

Swift::Int SGDataTypeGraph.Personality.hashValue.getter(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.Personality.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeGraph.Personality()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  SGDataTypeGraph.Personality.hash(into:)(v6, v1, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SGDataTypeGraph.Personality(__int128 *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return SGDataTypeGraph.Personality.hash(into:)(a1, *v1, v1[1]);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph.Personality()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  SGDataTypeGraph.Personality.hash(into:)(v6, v1, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeGraph.Personality(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if ((specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v2 == v4)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t SGDataTypeGraph.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t SGDataTypeGraph.graph.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

double SGDataTypeGraph.argumentsNode.getter@<D0>(uint64_t a1@<X8>)
{
  specialized SGDataTypeGraph.argumentsNode.getter(*(v1 + 40), v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double SGDataTypeGraph.resultNode.getter@<D0>(uint64_t a1@<X8>)
{
  specialized SGDataTypeGraph.resultNode.getter(*(v1 + 40), v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t SGDataTypeGraph.hash(into:)(__int128 *a1)
{
  v2 = v1;
  MEMORY[0x266772770](*v2);
  v4 = v2[1];
  v5 = v2[2];
  String.hash(into:)();
  v6 = v2[3];
  v7 = *(v6 + 16);
  MEMORY[0x266772770](v7);
  if (v7)
  {
    v8 = (v6 + 56);
    do
    {
      v9 = *(v8 - 3);
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v12 = *v8;
      v8 += 32;

      String.hash(into:)();
      MEMORY[0x266772770](v11);
      Hasher._combine(_:)(v12);

      --v7;
    }

    while (v7);
  }

  v13 = v2[4];
  v14 = *(v13 + 16);
  MEMORY[0x266772770](v14);
  if (v14)
  {
    v15 = (v13 + 48);
    do
    {
      v16 = *(v15 - 2);
      v17 = *(v15 - 1);
      v18 = *v15;
      v15 += 3;

      String.hash(into:)();
      MEMORY[0x266772770](v18);

      --v14;
    }

    while (v14);
  }

  v19 = v2[5];

  return specialized Array<A>.hash(into:)(a1, v19);
}

Swift::Int SGDataTypeGraph.hashValue.getter()
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t SGDataTypeGraph.init(id:name:inputs:outputs:graph:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeGraph()
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph()
{
  Hasher.init(_seed:)();
  SGDataTypeGraph.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeGraph(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static SGDataTypeGraph.== infix(_:_:)(v7, v8) & 1;
}

Swift::String __swiftcall SGDataTypeGraph.Personality.operationalDescription(replacements:)(Swift::OpaquePointer replacements)
{
  v2 = specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(replacements._rawValue, v1);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t SGDataTypeGraph.Personality.description.getter(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      v2 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v3 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

      MEMORY[0x266771550](v2, v3);

      MEMORY[0x266771550](41, 0xE100000000000000);
      return 0x706172476C6C6163;
    }

    else
    {
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v14 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v10 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v9 = SGDataTypeStorage.valueString.getter();
      MEMORY[0x266771550](8250, 0xE200000000000000);
      v8 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v8);

      return v9;
    }
  }

  else
  {
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);

    return v6;
  }
}

double Graph.Node<>.input(named:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  specialized Graph.Node<>.input(named:)(a1, a2, *v3, *(v3 + 16), &v7);
  v5 = v8[0];
  *a3 = v7;
  a3[1] = v5;
  result = *(v8 + 9);
  *(a3 + 25) = *(v8 + 9);
  return result;
}

double Graph.Node<>.output(named:)@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  specialized Graph.Node<>.output(named:)(a1, a2, *v3, *(v3 + 16), v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.node.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.graphName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.nodeGraphCallNode.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t SGDataTypeGraph.TopologicalSort.Element.nodeGraphCallNode.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

__n128 SGDataTypeGraph.TopologicalSort.Element.init(node:graphID:graphName:nodeGraphCallNode:elementIndex:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a1 + 32);
  result = *a1;
  v10 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v10;
  *(a8 + 32) = v8;
  *(a8 + 40) = a2;
  *(a8 + 48) = a3;
  *(a8 + 56) = a4;
  *(a8 + 64) = a5;
  *(a8 + 72) = a6 & 1;
  *(a8 + 80) = a7;
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance SGDataTypeGraph.TopologicalSort.Element(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return specialized static SGDataTypeGraph.TopologicalSort.Element.== infix(_:_:)(v7, v9);
}

Swift::Int SGDataTypeGraph.NodeID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a1);
  MEMORY[0x266772770](a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SGDataTypeGraph.NodeID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  MEMORY[0x266772770](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GraphIndex()
{
  v1 = v0[1];
  MEMORY[0x266772770](*v0);
  return MEMORY[0x266772770](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SGDataTypeGraph.NodeID()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v1);
  MEMORY[0x266772770](v2);
  return Hasher._finalize()();
}

uint64_t SGDataTypeGraph.TopologicalSort.rootGraph.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
}

__n128 SGDataTypeGraph.TopologicalSort.init(elements:graphs:nodeElements:rootGraph:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v5 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v5;
  result = *(a4 + 32);
  *(a5 + 56) = result;
  return result;
}

uint64_t SGDataTypeGraph.topologicalSort()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v51 = (v1 + 1);
  v53 = *v1;
  v54 = *(v1 + 2);
  v55 = *(v1 + 1);
  into._rawValue = MEMORY[0x277D84F90];
  graphs._rawValue = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_11ShaderGraph010SGDataTypeD0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v66.value = 0;
  v66.is_nil = 1;
  v52 = v1;
  SGDataTypeGraph.collectNodes(into:graphs:from:)(&into, &graphs, v66);
  rawValue = into._rawValue;
  v5 = *(into._rawValue + 2);
  v6 = lazy protocol witness table accessor for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID();
  v7 = MEMORY[0x2667712B0](v5, &type metadata for SGDataTypeGraph.NodeID, MEMORY[0x277D83B88], v6);
  v8 = rawValue;
  v56 = v7;
  v9 = rawValue[2];
  v10 = graphs._rawValue;
  if (!v9)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = (rawValue + 8);
  v49 = v3;
  v50 = a1;
  v57 = rawValue[2];
  v58 = graphs._rawValue;
  v48 = (rawValue + 8);
  while (2)
  {
    v13 = &v12[88 * v11];
    v14 = v11;
    while (1)
    {
      if (v14 >= v9)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_24;
      }

      if (v10[2])
      {
        v15 = *(v13 - 4);
        v16 = *(v13 - 2);
        v17 = *v13;
        v18 = *(v13 + 3);
        v19 = *(v13 + 6);
        v20 = v8;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(*(v13 + 1));
        v9 = v57;
        v10 = v58;
        v8 = v20;
        if (v22)
        {
          break;
        }
      }

      ++v14;
      v13 += 88;
      if (v11 == v9)
      {
        v3 = v49;
        a1 = v50;
        goto LABEL_22;
      }
    }

    v47 = v19;
    v23 = *(v58[7] + 48 * v21);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65 = v56;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v15);
    v27 = *(v56 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (*(v56 + 24) < v29)
    {
      v30 = v25;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, isUniquelyReferenced_nonNull_native);
      v31 = v15;
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v15);
      v34 = v33 & 1;
      v25 = v30;
      v35 = v30 & 1;
      v3 = v49;
      a1 = v50;
      if (v35 == v34)
      {
        v26 = v32;
        goto LABEL_15;
      }

LABEL_27:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v31 = v15;
    v36 = isUniquelyReferenced_nonNull_native;
    v3 = v49;
    a1 = v50;
    if ((v36 & 1) == 0)
    {
      v42 = v25;
      v43 = v26;
      specialized _NativeDictionary.copy()();
      v26 = v43;
      v25 = v42;
    }

LABEL_15:
    v37 = v65;
    v56 = v65;
    if ((v25 & 1) == 0)
    {
      *(v65 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v38 = (v37[6] + 16 * v26);
      *v38 = v23;
      v38[1] = v31;
      *(v37[7] + 8 * v26) = v47;
      v39 = v37[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (!v40)
      {
        v37[2] = v41;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(*(v65 + 56) + 8 * v26) = v47;
LABEL_19:

    v9 = v57;
    v10 = v58;
    v12 = v48;
    v8 = v20;
    if (v11 != v57)
    {
      continue;
    }

    break;
  }

LABEL_22:
  v65 = *v51;
  v44 = v52[3];
  v63 = v52[4];
  v64 = v44;
  v62 = v52[5];
  v45 = v8;
  outlined init with copy of String(&v65, v59);
  outlined init with copy of [Input](&v64, v59, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined init with copy of [Input](&v63, v59, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
  result = outlined init with copy of [Input](&v62, v59, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
  *a1 = v45;
  *(a1 + 8) = v10;
  *(a1 + 16) = v56;
  *(a1 + 24) = v53;
  *(a1 + 32) = v3;
  *(a1 + 40) = v55;
  *(a1 + 56) = v54;
  return result;
}

Swift::Void __swiftcall SGDataTypeGraph.collectNodes(into:graphs:from:)(Swift::OpaquePointer *into, Swift::OpaquePointer *graphs, Swift::Int_optional from)
{
  is_nil = from.is_nil;
  value = from.value;
  v5 = *(v3 + 40);
  specialized SGDataTypeGraph.resultNode.getter(v5, v75);
  v6 = v76;
  if (v76)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMR);
    v7 = swift_allocObject();
    v8 = v75[1];
    *(v7 + 32) = v75[0];
    *(v7 + 48) = v8;
    *(v7 + 16) = xmmword_265F1F670;
    *(v7 + 64) = v6;

    outlined destroy of [Input](v75, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = *v61;
  if (!*(graphs->_rawValue + 2) || (specialized __RawDictionaryStorage.find<A>(_:)(*v61), (v10 & 1) == 0))
  {
    v83[0] = *(v61 + 8);
    v11 = *(v61 + 24);
    v81 = *(v61 + 32);
    v82 = v11;
    outlined init with copy of String(v83, &v70);
    outlined init with copy of [Input](&v82, &v70, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v81, &v70, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);

    rawValue = graphs->_rawValue;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v70 = graphs->_rawValue;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v61, v9, isUniquelyReferenced_nonNull_native);
    graphs->_rawValue = v70;
  }

  v58 = v9;

  v14 = MEMORY[0x277D84F90];
  v15 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
  v17 = v16;
  v18 = v5;
  v19 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v14);
  v21 = v20;
  v22 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v14);
  *&v70 = v18;
  *(&v70 + 1) = v7;
  *&v71 = v15;
  *(&v71 + 1) = v17;
  *&v72 = v19;
  *(&v72 + 1) = v21;
  *&v73 = v22;
  *(&v73 + 1) = v23;
  v74 = v24;
  v68 = v73;
  v69 = v24;
  v66 = v71;
  v67 = v72;
  v65 = v70;
  outlined init with copy of [Input](&v70, v63, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  specialized ShallowDepthFirstNodeIterator.next()(&v77);
  v25 = v80;
  if (!v80)
  {
LABEL_34:
    v63[2] = v67;
    v63[3] = v68;
    v64 = v69;
    v63[0] = v65;
    v63[1] = v66;
    outlined destroy of [Input](v63, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
    outlined destroy of [Input](&v70, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
    return;
  }

  v26 = v79;
  v27 = v78;
  v57 = into;
  while (1)
  {
    v30 = v77;
    v62 = v27;
    if (*(&v27 + 1) >> 62 == 1)
    {
      break;
    }

    v43 = *(v61 + 8);
    v44 = *(v61 + 16);
    v36 = into->_rawValue;
    v45 = *(into->_rawValue + 2);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45 + 1, 1, v36);
    }

    v47 = *(v36 + 2);
    v46 = *(v36 + 3);
    v48 = v62;
    if (v47 >= v46 >> 1)
    {
      v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v36);
      v48 = v62;
      v36 = v49;
    }

    *(v36 + 2) = v47 + 1;
    v28 = &v36[88 * v47];
    *(v28 + 4) = v30;
    *(v28 + 40) = v48;
    *(v28 + 7) = v26;
    *(v28 + 8) = v25;
    *(v28 + 9) = v58;
    *(v28 + 10) = v43;
    *(v28 + 11) = v44;
    *(v28 + 12) = value;
    v28[104] = is_nil;
    v29 = v63[0];
    *(v28 + 27) = *(v63 + 3);
    *(v28 + 105) = v29;
    *(v28 + 14) = v45;
LABEL_10:
    into = v57;
    v57->_rawValue = v36;
    specialized ShallowDepthFirstNodeIterator.next()(&v77);
    v27 = v78;
    v26 = v79;
    v25 = v80;
    if (!v80)
    {
      goto LABEL_34;
    }
  }

  v55 = v77;
  v56 = v26;
  v31 = *((*(&v27 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v32 = *((*(&v27 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v84 = *((*(&v27 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v85 = v31;
  v83[1] = *((*(&v27 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v87 = *(&v84 + 1);
  v88[0] = v31;
  v86 = v32;
  v33 = *(into->_rawValue + 2);

  outlined init with copy of String(&v86, v63);
  outlined init with copy of [Input](&v87, v63, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined init with copy of [Input](v88, v63, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
  outlined init with copy of [Input](v88 + 8, v63, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
  v89.value = v33;
  v89.is_nil = 0;
  SGDataTypeGraph.collectNodes(into:graphs:from:)(into, graphs, v89);
  outlined destroy of String(&v86);
  outlined destroy of [Input](&v87, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
  outlined destroy of [Input](v88, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
  outlined destroy of [Input](v88 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
  v34 = *(v61 + 8);
  v35 = *(v61 + 16);
  v36 = into->_rawValue;
  v37 = *(into->_rawValue + 2);
  if (v37 < v33)
  {
    goto LABEL_37;
  }

  if (v33 == v37)
  {

LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    }

    v39 = *(v36 + 2);
    v38 = *(v36 + 3);
    v40 = v62;
    if (v39 >= v38 >> 1)
    {
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
      v40 = v62;
      v36 = v53;
    }

    *(v36 + 2) = v39 + 1;
    v41 = &v36[88 * v39];
    *(v41 + 4) = v55;
    *(v41 + 40) = v40;
    *(v41 + 7) = v56;
    *(v41 + 8) = v25;
    *(v41 + 9) = v58;
    *(v41 + 10) = v34;
    *(v41 + 11) = v35;
    *(v41 + 12) = value;
    v41[104] = is_nil;
    v42 = v63[0];
    *(v41 + 27) = *(v63 + 3);
    *(v41 + 105) = v42;
    *(v41 + 14) = v37;

    goto LABEL_10;
  }

  if (v33 >= v37)
  {
    goto LABEL_38;
  }

  v50 = 88 * v33;
  v51 = v33;
  while (v51 < *(v36 + 2))
  {
    if ((v36[v50 + 104] & 1) == 0 && *&v36[v50 + 96] == v33)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
      }

      if (v51 >= *(v36 + 2))
      {
        goto LABEL_36;
      }

      v52 = &v36[v50];
      *(v52 + 12) = v37;
      v52[104] = 0;
    }

    ++v51;
    v50 += 88;
    if (v37 == v51)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void specialized ShallowDepthFirstNodeIterator.next()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = v2 + 2;
  v3 = v2[2];
  v5 = 0uLL;
  if (!v3)
  {
    v10 = 0;
    v66 = 0uLL;
    goto LABEL_54;
  }

  v6 = v1;
  v69 = a1;
  while (1)
  {
    v7 = &v2[5 * v3];
    v8 = *(v7 - 1);
    v9 = *(v7 + 1);
    v10 = v7[3];
    v11 = *(v6 + 48);
    v12 = *(v6 + 56);
    v13 = *(v6 + 64);
    v14 = v12 + 32;
    v15 = *(v12 + 16);
    v70 = v9;
    v71 = v8;
    if (v11)
    {
      v16 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v8, v14, v15, v11 + 16, v11 + 32);
      if (v17)
      {
        goto LABEL_12;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (!v15)
      {
LABEL_12:
        v23 = *(v6 + 16);
        v24 = *(v6 + 32);
        v25 = *(v6 + 40);
        v73[0] = *v6;
        v22 = v73[0];
        v73[1] = v2;
        v74 = v23;
        v75 = v24;
        v76 = v25;
        v77 = v11;
        v78 = v12;
        v79 = v13;

        outlined init with copy of [Input](v73, v72, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
        v20 = specialized Graph.connectedInputIndices(for:)(v71, v22);
        outlined destroy of [Input](v73, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
        v19 = 0;
        goto LABEL_13;
      }

      v16 = 0;
      v21 = *(v7 - 1);
      while (*(v14 + 8 * v16) != v71)
      {
        if (v15 == ++v16)
        {
          goto LABEL_12;
        }
      }
    }

    if (v16 >= *(v13 + 16))
    {
      goto LABEL_59;
    }

    v18 = v13 + 16 * v16;
    v20 = *(v18 + 32);
    v19 = *(v18 + 40);

LABEL_13:
    v26 = *(v20 + 16);
    if (v19 == v26)
    {

      goto LABEL_25;
    }

    if (v19 >= v26)
    {
      goto LABEL_57;
    }

    v27 = *(v20 + 16 * v19 + 32);
    if ((v27 & 0x8000000000000000) != 0 || v27 >= *(*v6 + 16))
    {
      v29 = 0;
      v30 = 0;
      v32 = 0;
      v31 = 0;
      goto LABEL_24;
    }

    v28 = (*v6 + 88 * v27);
    v29 = v28[4];
    v30 = v28[5];
    v32 = v28[6];
    v31 = v28[7];
    v33 = v28[8];
    if (v33)
    {
      break;
    }

LABEL_24:

    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v29, v30, v32, v31, 0);
LABEL_25:
    v37 = *(v6 + 16);
    v38 = *(v6 + 24);
    v39 = (v38 + 32);
    v40 = *(v38 + 16);
    v41 = v71;
    if (v37)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v71, v39, v40, v37 + 16, v37 + 32);
      v41 = v71;
      if (v42)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (!v40)
      {
LABEL_44:
        specialized OrderedSet._append(_:)(v41);
        if (*v4)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v57 = v2[2];
            if (v57)
            {
LABEL_47:
              v58 = v57 - 1;
              v59 = &v2[5 * v57];
              v60 = v59[1];
              v61 = v59[3];
              v2[2] = v58;

              *(v6 + 8) = v2;
              v66 = v70;
              v5 = v71;
              goto LABEL_48;
            }

            goto LABEL_62;
          }

LABEL_61:
          v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          v57 = v2[2];
          if (v57)
          {
            goto LABEL_47;
          }

LABEL_62:
          __break(1u);
LABEL_63:
          swift_once();
          goto LABEL_51;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      while (1)
      {
        v48 = *v39++;
        if (v48 == v71)
        {
          break;
        }

        if (!--v40)
        {
          goto LABEL_44;
        }
      }
    }

    if (!*v4)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v43 = v2[2];
      if (!v43)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v43 = v2[2];
      if (!v43)
      {
        goto LABEL_56;
      }
    }

    v44 = v43 - 1;
    v45 = &v2[5 * v43];
    v46 = v45[1];
    v47 = v45[3];
    v2[2] = v44;

    *(v6 + 8) = v2;
LABEL_31:
    v4 = v2 + 2;
    v3 = v2[2];
    v5 = 0uLL;
    if (!v3)
    {
      v10 = 0;
      v66 = 0uLL;
LABEL_48:
      a1 = v69;
      goto LABEL_54;
    }
  }

  v34 = *v4 + 1;
  v35 = 4;
  do
  {
    if (!--v34)
    {
      v67 = *v4;
      v49 = v33;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v29, v30, v32, v31, v33);

      v68 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67 + 1, 1, v2);
      }

      v50 = v71;
      v52 = v2[2];
      v51 = v2[3];
      v53 = v52 + 1;
      v54 = v68;
      if (v52 >= v51 >> 1)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v2);
        v53 = v52 + 1;
        v54 = v68;
        v50 = v71;
        v2 = v56;
      }

      v2[2] = v53;
      v55 = &v2[5 * v52];
      v55[4] = v29;
      v55[5] = v30;
      v55[6] = v32;
      v55[7] = v31;
      v55[8] = v54;
      *(v6 + 8) = v2;
      specialized OrderedDictionary.subscript.setter(v20, v19 + 1, v50);

      v2 = *(v6 + 8);
      goto LABEL_31;
    }

    v36 = v2[v35];
    v35 += 5;
  }

  while (v36 != v27);
  outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v29, v30, v32, v31, v33);

  if (one-time initialization token for logger != -1)
  {
    goto LABEL_63;
  }

LABEL_51:
  v62 = type metadata accessor for Logger();
  __swift_project_value_buffer(v62, logger);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_265D7D000, v63, v64, "Cycle in graph", v65, 2u);
    MEMORY[0x266773120](v65, -1, -1);
  }

  v10 = 0;
  v66 = 0uLL;
  a1 = v69;
  v5 = 0uLL;
LABEL_54:
  *a1 = v5;
  *(a1 + 16) = v66;
  *(a1 + 32) = v10;
}

Swift::Void __swiftcall SGDataTypeGraph.collectGraphs(into:)(Swift::OpaquePointer *into)
{
  v41 = *(v1 + 40);
  rawValue = specialized SGDataTypeGraph.subgraphNodes()(v41);
  v37 = rawValue;
  v36 = MEMORY[0x277D84FA0];
  v4 = *(rawValue + 2);
  v33 = into;
  if (!v4)
  {

LABEL_23:

    v40 = *(v32 + 8);
    v26 = *(v32 + 3);
    v38 = *(v32 + 4);
    v39 = v26;
    rawValue = into->_rawValue;
    outlined init with copy of String(&v40, v35);
    outlined init with copy of [Input](&v39, v35, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
    outlined init with copy of [Input](&v38, v35, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
    outlined init with copy of [Input](&v41, v35, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v6 = &rawValue[40 * v4];
    v7 = *(v6 + 1);
    if (v7 >> 62 != 1)
    {
      goto LABEL_4;
    }

    v8 = *(v6 + 3);
    v34 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v10 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v12 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    if (!*(v36 + 16) || (v13 = MEMORY[0x266772750](*(v36 + 40), v34), v14 = -1 << *(v36 + 32), v15 = v13 & ~v14, ((*(v36 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0))
    {
LABEL_3:

      specialized Set._Variant.insert(_:)(&v40, v34);
      v5 = specialized SGDataTypeGraph.subgraphNodes()(v12);

      specialized Array.append<A>(contentsOf:)(v5);

      rawValue = v37;
      goto LABEL_4;
    }

    v16 = ~v14;
    while (*(*(v36 + 48) + 8 * v15) != v34)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v36 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v17 = into->_rawValue;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    }

    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[48 * v19];
    *(v20 + 2) = v34;
    *(v20 + 6) = v9;
    *(v20 + 7) = v10;
    *(v20 + 8) = v11;
    *(v20 + 9) = v12;
    into = v33;
    v33->_rawValue = v17;
    if (!*(rawValue + 2))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(rawValue);
    }

    v21 = *(rawValue + 2);
    if (!v21)
    {
      goto LABEL_28;
    }

    v22 = v21 - 1;
    v23 = &rawValue[40 * v21];
    v24 = *(v23 + 1);
    v25 = *(v23 + 3);
    *(rawValue + 2) = v22;

    v37 = rawValue;
LABEL_4:
    v4 = *(rawValue + 2);
    if (!v4)
    {

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
LABEL_24:
  v28 = *(rawValue + 2);
  v27 = *(rawValue + 3);
  if (v28 >= v27 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v28 + 1;
  v29 = &rawValue[48 * v28];
  v30 = *v32;
  v31 = v32[2];
  *(v29 + 3) = v32[1];
  *(v29 + 4) = v31;
  *(v29 + 2) = v30;
  v33->_rawValue = rawValue;
}

uint64_t SGDataTypeGraph.TopologicalSort.surfaceNodeElement(ofType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 16);
  if (!v4)
  {
    v14 = 0;
    v19 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    goto LABEL_13;
  }

  v5 = result;
  v6 = *v2 + 88 * v4 - 56;
  do
  {
    v7 = *(v6 + 16);
    v21 = *v6;
    v22 = v7;
    v8 = *(v6 + 32);
    v9 = *(v6 + 48);
    v10 = *(v6 + 64);
    v26 = *(v6 + 80);
    v24 = v9;
    v25 = v10;
    v23 = v8;
    if (!(v22 >> 62))
    {
      v11 = *(v22 + 16);
      v12 = *(v22 + 24);

      outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(&v21, v20);
      v13 = specialized Surface.init(nodeDefID:)(v11, v12);
      if (v13 <= 2)
      {
        goto LABEL_3;
      }

      if (v13 == 3)
      {

        if (v5)
        {
LABEL_12:
          v14 = v26;
          v15 = v24;
          v16 = v25;
          v17 = v22;
          v18 = v23;
          v19 = v21;
          goto LABEL_13;
        }

        goto LABEL_4;
      }

      if (v13 == 4)
      {
LABEL_3:

        if ((v5 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

LABEL_4:
      result = outlined destroy of SGDataTypeGraph.TopologicalSort.Element(&v21);
    }

    v6 -= 88;
    --v4;
  }

  while (v4);
  v14 = 0;
  v17 = 0uLL;
  v18 = 0uLL;
  v15 = 0uLL;
  v16 = 0uLL;
  v19 = 0uLL;
LABEL_13:
  *a2 = v19;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 80) = v14;
  return result;
}

uint64_t SGDataTypeGraph.Personality.inputCount.getter(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v2 = 32;
    return *(*(a2 + v2) + 16);
  }

  if (a2 >> 62 == 1)
  {
    a2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 40;
    return *(*(a2 + v2) + 16);
  }

  return 0;
}

uint64_t SGDataTypeGraph.Personality.outputCount.getter(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v2 = 40;
    return *(*(a2 + v2) + 16);
  }

  if (a2 >> 62 == 1)
  {
    a2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 48;
    return *(*(a2 + v2) + 16);
  }

  return 1;
}

uint64_t protocol witness for GraphElement.inputCount.getter in conformance SGDataTypeGraph.Personality()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 62))
  {
    v2 = 32;
    return *(*(v1 + v2) + 16);
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 40;
    return *(*(v1 + v2) + 16);
  }

  return 0;
}

uint64_t protocol witness for GraphElement.outputCount.getter in conformance SGDataTypeGraph.Personality()
{
  v1 = *(v0 + 8);
  if (!(v1 >> 62))
  {
    v2 = 40;
    return *(*(v1 + v2) + 16);
  }

  if (v1 >> 62 == 1)
  {
    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 48;
    return *(*(v1 + v2) + 16);
  }

  return 1;
}

unint64_t protocol witness for GraphElement.input(at:) in conformance SGDataTypeGraph.Personality@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SGDataTypeGraph.Personality.input(at:)(a1, *(v2 + 8));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  return result;
}

unint64_t protocol witness for GraphElement.output(at:) in conformance SGDataTypeGraph.Personality@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized SGDataTypeGraph.Personality.output(at:)(a1, *(v2 + 8));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

double SGDataTypeGraph.init(_:idSequence:constants:)@<D0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  specialized SGDataTypeGraph.init(_:idSequence:constants:)(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[1];
    *a4 = v8[0];
    a4[1] = v7;
    result = *&v9;
    a4[2] = v9;
  }

  return result;
}

Swift::Int __swiftcall InfiniteIntegerSequence.next()()
{
  result = *v0;
  if (__OFADD__(*v0, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v0;
  }

  return result;
}

void closure #5 in SGDataTypeGraph.init(_:idSequence:constants:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = *(*a1 + OBJC_IVAR___SGEdge_from);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v14 = Strong;
  v54 = a6;
  v15 = *(v11 + OBJC_IVAR___SGEdge_to);
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {

LABEL_13:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v29 = 0xD000000000000020;
    *(v29 + 8) = 0x8000000265F2E090;
    *(v29 + 16) = 21;
    swift_willThrow();
    return;
  }

  v60 = v16;
  if (!*(a2 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v18 & 1) == 0) || (v19 = *(a2 + 56), v20 = (v19 + 40 * v17), v51 = *v20, v53 = v20[2], v52 = v20[4], v21 = specialized __RawDictionaryStorage.find<A>(_:)(v60), (v22 & 1) == 0))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v28 = 0xD000000000000020;
    *(v28 + 8) = 0x8000000265F2E090;
    *(v28 + 16) = 21;
    swift_willThrow();

    return;
  }

  v23 = (v19 + 40 * v21);
  v50 = *v23;
  v24 = v23[2];
  v25 = v23[4];
  v26 = v12 + OBJC_IVAR___SGOutput_name;
  specialized Graph.Node<>.output(named:)(*v26, *(v26 + 8), v51, v53, v57);
  if (!v58)
  {

LABEL_16:
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v30 = 0xD000000000000020;
    *(v30 + 8) = 0x8000000265F2E090;
    *(v30 + 16) = 21;
    swift_willThrow();

    return;
  }

  v51 = v58;
  v48 = v57[0];
  v49 = v57[1];
  specialized Graph.Node<>.input(named:)(*(v15 + OBJC_IVAR___SGInput_name), *(v15 + OBJC_IVAR___SGInput_name + 8), v50, v24, v59);
  if (!v59[3])
  {

    outlined destroy of [Input](v57, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    goto LABEL_16;
  }

  v27 = v59[0];
  v50 = v59[1];
  if (!*(a3 + 16) || v14 != *(a4 + OBJC_IVAR___SGGraph_argumentsNode) || !*(a5 + 16))
  {

    v31 = v48;
LABEL_18:
    specialized Graph.connect(_:_:)(v31, v49, v27, v50);

    outlined destroy of [Input](v59, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
    return;
  }

  v47 = v59[0];
  v32 = *v26;
  v33 = *(v26 + 8);
  v53 = v24 & 0x3FFFFFFFFFFFFFFFLL;

  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v33);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    v31 = v48;
LABEL_31:
    v27 = v47;
    goto LABEL_18;
  }

  v38 = 40;
  v39 = *(a5 + 56) + 40 * v34;
  v40 = *(v39 + 32);
  v41 = *(v39 + 16);
  v55[0] = *v39;
  v55[1] = v41;
  v56 = v40;
  v42 = v41;
  if (!(v41 >> 62))
  {
    goto LABEL_24;
  }

  if (v41 >> 62 == 1)
  {
    v42 = v41 & 0x3FFFFFFFFFFFFFFFLL;
    v38 = 48;
LABEL_24:
    v43 = *(*(v42 + v38) + 16);
    goto LABEL_27;
  }

  v43 = 1;
LABEL_27:
  MEMORY[0x28223BE20](v37);
  v46[2] = v55;

  v44 = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.outputs.getter, v46, 0, v43);
  v45 = v48;
  if (!v44[2])
  {
LABEL_30:

    v31 = v45;
    goto LABEL_31;
  }

  outlined destroy of [Input](v57, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V6OutputVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  if (v44[2])
  {
    v45 = v44[4];
    v49 = v44[5];
    v51 = v44[7];

    goto LABEL_30;
  }

  __break(1u);
}

uint64_t closure #3 in SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v7 = *(a1 + 6);
  v6 = *(a1 + 7);
  v8 = *(a2 + 8);
  if (!*(v8 + 16) || (v9 = v4, v12 = a1[1], v113 = *a1, v114 = v12, v111 = *(a1 + 10), v13 = *(a1 + 4), v14 = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 5)), (v15 & 1) == 0))
  {
    lazy protocol witness table accessor for type APIError and conformance APIError();
    swift_allocError();
    *v23 = v7;
    *(v23 + 8) = v6;
    *(v23 + 16) = 21;
    swift_willThrow();
  }

  v104 = a3;
  v16 = (*(v8 + 56) + 48 * v14);
  v17 = *v16;
  v18 = v16[2];
  v19 = v16[3];
  v20 = v16[4];
  v135 = v16[5];
  v127 = v113;
  v128 = v114;
  *&v129 = v13;
  v21 = v114;
  v107 = a4;
  v102 = v17;
  if (v114 >> 62)
  {
    if (v114 >> 62 != 1)
    {
      v25 = 0;
      goto LABEL_10;
    }

    v21 = v114 & 0x3FFFFFFFFFFFFFFFLL;
    v22 = 40;
  }

  else
  {
    v22 = 32;
  }

  v25 = *(*(v21 + v22) + 16);
LABEL_10:
  v103 = a2;
  v90[2] = &v127;
  v110 = MEMORY[0x28223BE20](v18);

  v109 = v19;

  v108 = v20;

  result = specialized Sequence.compactMap<A>(_:)(partial apply for specialized closure #1 in Graph.Node.inputs.getter, v90, 0, v25);
  v26 = result;
  v106 = v9;
  v27 = *(result + 16);
  if (v27)
  {
    v28 = 0;
    v29 = result + 32;
    v112 = v27 - 1;
    v30 = MEMORY[0x277D84F90];
    *&v113 = result + 32;
    do
    {
      *&v114 = v30;
      v31 = (v29 + 48 * v28);
      v32 = v28;
      while (1)
      {
        if (v32 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_50;
        }

        v33 = *v31;
        v34 = v31[1];
        *&v134[9] = *(v31 + 25);
        v133 = v33;
        *v134 = v34;
        v28 = v32 + 1;

        specialized Graph.edge(to:)(&v133, v135, &v127);
        outlined destroy of [Input](&v133, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V5InputVyAA010SGDataTypeB0V11PersonalityV_GMR);
        if (*(&v128 + 1))
        {
          break;
        }

        v123 = v129;
        v124 = v130;
        v125 = v131;
        v126 = v132;
        v121 = v127;
        v122 = v128;
        result = outlined destroy of [Input](&v121, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
        v31 += 3;
        ++v32;
        if (v27 == v28)
        {
          v30 = v114;
          goto LABEL_24;
        }
      }

      v123 = v129;
      v124 = v130;
      v125 = v131;
      v126 = v132;
      v121 = v127;
      v122 = v128;
      v35 = v114;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        v35 = result;
      }

      v36 = v35;
      v37 = v35[2];
      v38 = v36;
      v39 = v36[3];
      v40 = v37 + 1;
      if (v37 >= v39 >> 1)
      {
        *&v114 = v37 + 1;
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v37 + 1, 1, v38);
        v40 = v114;
        v38 = result;
      }

      v117 = v123;
      v118 = v124;
      v119 = v125;
      v120 = v126;
      v41 = v121;
      v115 = v121;
      v116 = v122;
      v38[2] = v40;
      v42 = &v38[11 * v37];
      v30 = v38;
      *(v42 + 3) = v116;
      v43 = v117;
      v44 = v118;
      v45 = v119;
      *(v42 + 112) = v120;
      *(v42 + 5) = v44;
      *(v42 + 6) = v45;
      *(v42 + 4) = v43;
      *(v42 + 2) = v41;
      v29 = v113;
    }

    while (v112 != v32);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

LABEL_24:

  v46 = v30[2];
  if (v46)
  {
    v47 = 0;
    v48 = v135 + 32;
    v49 = MEMORY[0x277D84F90];
    v50 = 32;
    *&v114 = v30;
    v112 = v135 + 32;
    *&v113 = v46;
    v100 = 32;
    v101 = v46 - 1;
LABEL_26:
    v105 = v49;
    v51 = v50 + 88 * v47;
    v52 = v47;
    while (v52 < v30[2])
    {
      v53 = *(v30 + v51 + 80);
      v55 = *(v30 + v51 + 48);
      v54 = *(v30 + v51 + 64);
      v129 = *(v30 + v51 + 32);
      v130 = v55;
      v131 = v54;
      v56 = *(v30 + v51 + 16);
      v127 = *(v30 + v51);
      v128 = v56;
      v132 = v53;
      if ((*(&v129 + 1) & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v57 = *(v135 + 16);
      if (*(&v129 + 1) >= v57)
      {
        goto LABEL_52;
      }

      v58 = (v48 + 88 * *(&v129 + 1));
      v59 = v58[4];
      if (v59)
      {
        if (v127 >= v57)
        {
          goto LABEL_53;
        }

        v60 = *v58;
        v61 = v58[1];
        v63 = v58[2];
        v62 = v58[3];
        v64 = (v48 + 88 * v127);
        v65 = v64[4];
        if (v65)
        {
          v95 = *(&v130 + 1);
          v94 = *(&v131 + 1);
          v96 = v131;
          v92 = v129;
          v93 = v128;
          v67 = v64[2];
          v66 = v64[3];
          v69 = *v64;
          v68 = v64[1];
          v97 = v69;
          v98 = v68;
          v99 = v66;
          outlined init with copy of [Input](&v127, &v121, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v60, v61, v63, v62, v59);
          v70 = v97;
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v97, v98, v67, v99, v65);

          v71 = v104;
          v91 = specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(v104, v67);
          v98 = v72;

          v99 = v67;

          v73 = specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(v71, v63);
          v75 = v74;

          v76 = v70;
          v47 = v52 + 1;
          v77 = *v103 + 72;
          v78 = *(*v103 + 16) + 1;
          do
          {
            if (!--v78)
            {

              lazy protocol witness table accessor for type APIError and conformance APIError();
              swift_allocError();
              *v89 = 0xD000000000000028;
              *(v89 + 8) = 0x8000000265F2E040;
              *(v89 + 16) = 21;
              swift_willThrow();

              outlined destroy of [Input](&v127, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
            }

            v79 = v77;
            v77 += 88;
          }

          while (*v79 != v102 || *(v79 - 5) != v76);
          v80 = *(v77 - 48);
          *&v121 = 0;
          *(&v121 + 1) = 0xE000000000000000;
          v97 = v75;
          _StringGuts.grow(_:)(23);

          *&v121 = v91;
          *(&v121 + 1) = v98;
          MEMORY[0x266771550](58, 0xE100000000000000);
          *&v115 = v80;
          v81 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v81);

          MEMORY[0x266771550](58, 0xE100000000000000);
          v82 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v82);

          MEMORY[0x266771550](58, 0xE100000000000000);
          MEMORY[0x266771550](v93, *(&v93 + 1));
          MEMORY[0x266771550](124, 0xE100000000000000);
          MEMORY[0x266771550](v73, v97);

          MEMORY[0x266771550](58, 0xE100000000000000);
          *&v115 = v111;
          v83 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x266771550](v83);

          MEMORY[0x266771550](58, 0xE100000000000000);
          v84 = SGDataType.stringValue.getter();
          MEMORY[0x266771550](v84);

          MEMORY[0x266771550](58, 0xE100000000000000);
          MEMORY[0x266771550](v95, v96);

          outlined destroy of [Input](&v127, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
          v85 = v121;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 2) + 1, 1, v105);
            v105 = result;
          }

          v87 = *(v105 + 2);
          v86 = *(v105 + 3);
          v30 = v114;
          if (v87 >= v86 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v105);
            v105 = result;
          }

          v88 = v105;
          *(v105 + 2) = v87 + 1;
          *&v88[16 * v87 + 32] = v85;
          v49 = v88;
          v50 = v100;
          v48 = v112;
          v46 = v113;
          if (v101 != v52)
          {
            goto LABEL_26;
          }

          goto LABEL_47;
        }

        outlined init with copy of [Input](&v127, &v121, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v60, v61, v63, v62, v59);

        result = outlined destroy of [Input](&v127, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V4EdgeVyAA010SGDataTypeB0V11PersonalityV_GMR);
        v30 = v114;
        v48 = v112;
        v46 = v113;
      }

      ++v52;
      v51 += 88;
      if (v46 == v52)
      {
        v49 = v105;
        goto LABEL_47;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
LABEL_47:

    *v107 = v49;
  }

  return result;
}

uint64_t specialized OrderedSet._reserveCapacity(_:persistent:)(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  v9 = result;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && v9 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(v11 + 16) > v9)
    {
      v19 = *(v11 + 16);
    }

    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = v14[2] & 0x3FLL;
      v16 = specialized static _HashTable.scale(forCapacity:)(v9);
      v17 = v16;
      if (a2)
      {
        v18 = v16;
        if (v15 >= v16)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_beginAccess();
        v18 = v14[3] & 0x3FLL;
        if (v15 >= v17)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      if (v18 <= v17)
      {
        v21 = v17;
      }

      else
      {
        v21 = v18;
      }

LABEL_26:
      v23 = a4(v11, v21, 0, v18);

      *v7 = v23;
      return result;
    }
  }

  v20 = specialized static _HashTable.scale(forCapacity:)(v9);
  v17 = v20;
  v15 = 0;
  if (a2)
  {
    v18 = v20;
  }

  else
  {
    v18 = 0;
  }

  if (v20 > 0)
  {
    goto LABEL_15;
  }

LABEL_19:
  result = specialized static _HashTable.scale(forCapacity:)(*(v11 + 16));
  if (v18 <= v17)
  {
    v22 = v17;
  }

  else
  {
    v22 = v18;
  }

  if (result <= v22)
  {
    v21 = v22;
  }

  else
  {
    v21 = result;
  }

  if (v21 < v15)
  {
    goto LABEL_26;
  }

  if (v14)
  {
    v24 = *v7;
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      v26 = *v7;
      if (!*v7)
      {
LABEL_42:
        __break(1u);
        return result;
      }

      v27 = v26[2];
      v28 = (v27 & 0x3F) << v27;
      v29 = __OFADD__(v28, 64);
      v30 = v28 + 64;
      if (v29)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v32 = v30 - 1;
      v31 = v30 < 1;
      v33 = v30 + 62;
      if (!v31)
      {
        v33 = v32;
      }

      v34 = v33 >> 6;
      type metadata accessor for _HashTable.Storage();
      v35 = 8 * v34;
      v25 = swift_allocObject();
      v36 = v26[3];
      v25[2] = v27;
      v25[3] = v36;
      memcpy(v25 + 4, v26 + 4, v35);

      *v7 = v25;
      if (v25)
      {
        goto LABEL_31;
      }

      goto LABEL_38;
    }
  }

  v25 = *v7;
  if (!*v7)
  {
LABEL_38:
    if (!v18)
    {
      return result;
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_31:
  result = swift_beginAccess();
  if ((v25[3] & 0x3FLL) != v18)
  {
    v25[3] = v25[3] & 0xFFFFFFFFFFFFFFC0 | v18 & 0x3F;
  }

  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        outlined init with take of MetalFunctionNode(v22, v33);
      }

      else
      {
        outlined init with copy of MetalFunctionNode(v22, v33);
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of MetalFunctionNode(v33, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 152 * v22;
      if (v44)
      {
        v45 = *(v26 + 8);
        v46 = *(v26 + 24);
        v47 = *v26;
        v48 = *(v26 + 32);
        v49 = *(v26 + 48);
        v50 = *(v26 + 16);
        v51 = *(v26 + 72);
        v52 = *(v26 + 80);
        v55 = *(v26 + 88);
        v56 = *(v26 + 96);
        v57 = *(v26 + 112);
        v58 = *(v26 + 128);
        v53 = *(v26 + 64);
        v54 = *(v26 + 144);
      }

      else
      {
        v27 = *(v26 + 16);
        v60 = *v26;
        v61 = v27;
        v28 = *(v26 + 80);
        v30 = *(v26 + 32);
        v29 = *(v26 + 48);
        v64 = *(v26 + 64);
        v65 = v28;
        v62 = v30;
        v63 = v29;
        v32 = *(v26 + 112);
        v31 = *(v26 + 128);
        v33 = *(v26 + 96);
        v69 = *(v26 + 144);
        v67 = v32;
        v68 = v31;
        v66 = v33;
        v57 = v32;
        v58 = v31;
        v56 = v33;
        v54 = v69;
        v55 = *(&v65 + 1);
        v52 = v65;
        v53 = v64;
        v48 = v30;
        v49 = v63;
        v50 = v61;
        v51 = *(&v64 + 1);
        v46 = *(&v61 + 1);
        v45 = *(&v60 + 1);
        v47 = v60;

        outlined init with copy of NodeDef(&v60, v59);
      }

      v34 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 152 * v16;
      *v18 = v47;
      *(v18 + 8) = v45;
      *(v18 + 16) = v50;
      *(v18 + 24) = v46;
      *(v18 + 32) = v48;
      *(v18 + 48) = v49;
      *(v18 + 64) = v53;
      *(v18 + 72) = v51;
      *(v18 + 80) = v52;
      *(v18 + 88) = v55;
      *(v18 + 96) = v56;
      *(v18 + 112) = v57;
      *(v18 + 128) = v58;
      *(v18 + 144) = v54;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMd, &_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMd, &_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 48 * v21;
      v38 = *v23;
      v24 = *(v23 + 24);
      v39 = *(v23 + 16);
      v25 = *(v23 + 32);
      v26 = *(v23 + 40);
      if ((v37 & 1) == 0)
      {
      }

      result = MEMORY[0x266772750](*(v8 + 40), v22);
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 48 * v16;
      *v17 = v38;
      *(v17 + 16) = v39;
      *(v17 + 24) = v24;
      *(v17 + 32) = v25;
      *(v17 + 40) = v26;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMd, &_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = a2;
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v24);
      MEMORY[0x266772770](v23);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v23;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 40 * v22;
      v40 = *v26;
      v41 = *(v26 + 16);
      v27 = *(v26 + 32);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 40 * v16;
      *v18 = v40;
      *(v18 + 16) = v41;
      *(v18 + 32) = v27;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = *(v5 + 56) + 40 * v21;
      v34 = *v23;
      v35 = *(v23 + 16);
      v24 = *(v23 + 32);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x266772750](*(v8 + 40), v22);
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = *(v8 + 56) + 40 * v16;
      *v17 = v34;
      *(v17 + 16) = v35;
      *(v17 + 32) = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSiGMd, &_ss18_DictionaryStorageCySOSiGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = a2;
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      result = MEMORY[0x266772750](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph13TextureSourceOSayAC05TypedE0VGGMd, &_ss18_DictionaryStorageCy11ShaderGraph13TextureSourceOSayAC05TypedE0VGGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v22 + 8 * v21);
      if ((v42 & 1) == 0)
      {
        v28 = *v23;
        v29 = *(v23 + 8);
        v30 = *(v23 + 16);
        outlined copy of TextureSource();
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v26);
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(*(v8 + 56) + 8 * v16) = v27;
      ++*(v8 + 16);
      v5 = v41;
      v13 = v43;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v43 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v43 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    v16 = v5;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v16 + 48) + 40 * v22);
      v48 = *v23;
      v24 = v23[2];
      v47 = v23[1];
      v25 = v23[4];
      v45 = *(*(v16 + 56) + 8 * v22);
      v46 = v23[3];
      if ((v44 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v48);
      MEMORY[0x266772770](v47);
      if (v24 >> 62)
      {
        if (v24 >> 62 == 1)
        {
          v27 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          *&v49[15] = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v28 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          *&v49[17] = v27;
          *&v49[19] = v28;
          MEMORY[0x266772770](1);
          SGDataTypeGraph.hash(into:)(v49);
        }

        else
        {
          v30 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v31 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
          *&v49[25] = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
          *&v49[27] = v31;
          v50 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
          v32 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
          *&v49[21] = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          *&v49[23] = v32;
          MEMORY[0x266772770](2);
          v33 = v30;
          v16 = v43;
          MEMORY[0x266772770](v33);
          SGDataTypeStorage.hash(into:)();
        }
      }

      else
      {
        v29 = *(v24 + 32);
        *&v49[9] = *(v24 + 16);
        *&v49[11] = v29;
        *&v49[13] = *(v24 + 48);
        MEMORY[0x266772770](0);
        BuiltInDefinition.hash(into:)();
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v17 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v8 + 48) + 40 * v17);
      *v18 = v48;
      v18[1] = v47;
      v18[2] = v24;
      v18[3] = v46;
      v18[4] = v25;
      *(*(v8 + 56) + 8 * v17) = v45;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_41;
    }

    v41 = 1 << *(v16 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v10, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v43 + 16) = 0;
  }

LABEL_41:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v24 = v21 | (v9 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = *(v5 + 56) + 160 * v24;
      if (v41)
      {
        v43 = *v26;
        v49 = *(v26 + 72);
        v50 = *(v26 + 88);
        *v51 = *(v26 + 104);
        *&v51[15] = *(v26 + 119);
        v45 = *(v26 + 8);
        v46 = *(v26 + 24);
        v47 = *(v26 + 40);
        v48 = *(v26 + 56);
        v42 = *(v26 + 128);
        v44 = *(v26 + 144);
      }

      else
      {
        v27 = *(v26 + 16);
        *v52 = *v26;
        *&v52[16] = v27;
        v28 = *(v26 + 80);
        v30 = *(v26 + 32);
        v29 = *(v26 + 48);
        *&v52[64] = *(v26 + 64);
        *&v52[80] = v28;
        *&v52[32] = v30;
        *&v52[48] = v29;
        v31 = *(v26 + 144);
        v33 = *(v26 + 96);
        v32 = *(v26 + 112);
        v53 = *(v26 + 128);
        v54 = v31;
        *&v52[96] = v33;
        *&v52[112] = v32;
        v44 = v31;
        v42 = v53;
        v43 = v52[0];
        outlined init with copy of NodeDef.Availability(v52, &v45);
        v49 = *&v52[72];
        v50 = *&v52[88];
        *v51 = *&v52[104];
        *&v51[15] = *&v52[119];
        v45 = *&v52[8];
        v46 = *&v52[24];
        v47 = *&v52[40];
        v48 = *&v52[56];
      }

      v34 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v16) >> 6;
        while (++v18 != v36 || (v35 & 1) == 0)
        {
          v37 = v18 == v36;
          if (v18 == v36)
          {
            v18 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v18);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *&v52[39] = v47;
      *&v52[55] = v48;
      *&v52[7] = v45;
      *&v52[23] = v46;
      *&v52[118] = *&v51[15];
      *&v52[87] = v50;
      *&v52[103] = *v51;
      *&v52[71] = v49;
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v25;
      v20 = *(v8 + 56) + 160 * v19;
      *v20 = v43;
      *(v20 + 65) = *&v52[64];
      *(v20 + 81) = *&v52[80];
      *(v20 + 97) = *&v52[96];
      *(v20 + 107) = *&v52[106];
      *(v20 + 1) = *v52;
      *(v20 + 17) = *&v52[16];
      *(v20 + 33) = *&v52[32];
      *(v20 + 49) = *&v52[48];
      *(v20 + 128) = v42;
      *(v20 + 144) = v44;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_18;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_37;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v42)
      {
        v43 = *(v26 + 8);
        v44 = *v26;
        v45 = *(v26 + 32);
        v27 = *(v26 + 40);
        v48 = *(v26 + 24);
        v49 = *(v26 + 48);
        v46 = *(v26 + 56);
        v47 = *(v26 + 41);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        *&v51[9] = *(v26 + 41);
        *&v50[16] = v29;
        *v51 = v30;
        *v50 = v28;
        v46 = v51[24];
        v47 = BYTE9(v30);
        v48 = *(&v29 + 1);
        v49 = *&v51[16];
        v45 = v30;
        v27 = BYTE8(v30);
        v44 = v28;
        v43 = *&v50[8];

        outlined init with copy of GeomPropDef(v50, v52);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      v50[0] = v27;
      v52[0] = v46;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v44;
      *(v18 + 8) = v43;
      *(v18 + 24) = v48;
      *(v18 + 32) = v45;
      *(v18 + 40) = v27;
      *(v18 + 41) = v47;
      *(v18 + 48) = v49;
      *(v18 + 56) = v46;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMR);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      if (v45)
      {
        v23 = *(v5 + 56);
        v24 = *(v5 + 48) + 80 * v22;
        v25 = *(v24 + 48);
        v58 = *(v24 + 32);
        v59 = v25;
        v60 = *(v24 + 64);
        v26 = *(v24 + 16);
        v56 = *v24;
        v57 = v26;
        v27 = *(v24 + 72);
        v28 = v23 + 48 * v22;
        v29 = *v28;
        v49 = *(v28 + 8);
        v47 = *(v28 + 32);
        v48 = *(v28 + 24);
        v46 = *(v28 + 40);
      }

      else
      {
        v30 = *(v5 + 48) + 80 * v22;
        v51 = *v30;
        v32 = *(v30 + 32);
        v31 = *(v30 + 48);
        v33 = *(v30 + 64);
        v52 = *(v30 + 16);
        v53 = v32;
        LOBYTE(v55) = v33;
        v54 = v31;
        v27 = *(v30 + 72);
        v34 = *(v5 + 56) + 48 * v22;
        v29 = *v34;
        v49 = *(v34 + 8);
        v47 = *(v34 + 32);
        v48 = *(v34 + 24);
        v46 = *(v34 + 40);
        outlined init with copy of SGDataTypeStorage(&v51, v50);

        outlined copy of NodePersonality(v29);
        v58 = v53;
        v59 = v54;
        v60 = v55;
        v56 = v51;
        v57 = v52;
      }

      v63 = v58;
      v64 = v59;
      v65 = v60;
      v61 = v56;
      v62 = v57;
      v53 = v58;
      v54 = v59;
      LOBYTE(v55) = v60;
      v51 = v56;
      v52 = v57;
      v35 = *(v8 + 40);
      Hasher.init(_seed:)();
      SGDataTypeStorage.hash(into:)();
      (*(*v27 + 120))(v50);
      result = Hasher._finalize()();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 80 * v16;
      *(v17 + 16) = v52;
      *(v17 + 32) = v53;
      *(v17 + 48) = v54;
      *(v17 + 64) = v55;
      *v17 = v51;
      *(v17 + 72) = v27;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v29;
      *(v18 + 8) = v49;
      *(v18 + 24) = v48;
      *(v18 + 32) = v47;
      *(v18 + 40) = v46;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      if ((v37 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v22);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay11ShaderGraph19NodeDefinitionStoreV0E0VGGMd, &_ss18_DictionaryStorageCySSSay11ShaderGraph19NodeDefinitionStoreV0E0VGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v42)
      {
        v47 = *(v26 + 16);
        v45 = *v26;
        v46 = *(v26 + 24);
        v43 = *(v26 + 8);
        v44 = *(v26 + 32);
        v48 = *(v26 + 48);
        v27 = *(v26 + 56);
        v49 = *(v26 + 57);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        *&v51[10] = *(v26 + 42);
        v50[1] = v29;
        *v51 = v30;
        v50[0] = v28;
        v49 = v51[25];
        v27 = v51[24];
        v47 = v29;
        v48 = *&v51[16];
        v46 = *(&v29 + 1);
        v44 = v30;
        v43 = *(&v28 + 1);
        v45 = v28;

        outlined init with copy of NodeDefinitionStore.GeomProp(v50, v52);
      }

      v31 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v50[0]) = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v45;
      *(v18 + 8) = v43;
      *(v18 + 16) = v47;
      *(v18 + 24) = v46;
      *(v18 + 32) = v44;
      *(v18 + 48) = v48;
      *(v18 + 56) = v27;
      *(v18 + 57) = v49;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 160 * v22;
      if (v44)
      {
        v45 = *(v26 + 8);
        v46 = *(v26 + 24);
        v47 = *v26;
        v48 = *(v26 + 32);
        v49 = *(v26 + 48);
        v50 = *(v26 + 16);
        v51 = *(v26 + 72);
        v52 = *(v26 + 80);
        v53 = *(v26 + 64);
        v54 = *(v26 + 88);
        v56 = *(v26 + 96);
        v55 = *(v26 + 104);
        v57 = *(v26 + 112);
        v60 = *(v26 + 128);
        v61 = *(v26 + 144);
        v58 = *(v26 + 136);
        v59 = *(v26 + 152);
      }

      else
      {
        v27 = *(v26 + 16);
        v63[0] = *v26;
        v63[1] = v27;
        v28 = *(v26 + 80);
        v30 = *(v26 + 32);
        v29 = *(v26 + 48);
        v66 = *(v26 + 64);
        v67 = v28;
        v64 = v30;
        v65 = v29;
        v31 = *(v26 + 144);
        v33 = *(v26 + 96);
        v32 = *(v26 + 112);
        v70 = *(v26 + 128);
        v71 = v31;
        v68 = v33;
        v69 = v32;
        v60 = v70;
        v61 = v31;
        v58 = *(&v70 + 1);
        v59 = *(&v31 + 1);
        v57 = v32;
        v55 = *(&v33 + 1);
        v56 = v33;
        v52 = v67;
        v53 = v66;
        v54 = *(&v67 + 1);
        v51 = *(&v66 + 1);
        v48 = v64;
        v49 = v65;
        v46 = *(&v27 + 1);
        v50 = v27;
        v45 = *(&v63[0] + 1);
        v47 = *&v63[0];

        outlined init with copy of NodeDefinitionStore.Node(v63, v62);
      }

      v34 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 160 * v16;
      *v18 = v47;
      *(v18 + 8) = v45;
      *(v18 + 16) = v50;
      *(v18 + 24) = v46;
      *(v18 + 32) = v48;
      *(v18 + 48) = v49;
      *(v18 + 64) = v53;
      *(v18 + 72) = v51;
      *(v18 + 80) = v52;
      *(v18 + 88) = v54;
      *(v18 + 96) = v56;
      *(v18 + 104) = v55;
      *(v18 + 112) = v57;
      *(v18 + 128) = v60;
      *(v18 + 136) = v58;
      *(v18 + 144) = v61;
      *(v18 + 152) = v59;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMd, &_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = *(v7 + 56);
      v25 = *(v7 + 48) + 56 * v23;
      v26 = *(v25 + 8);
      v44 = *v25;
      v27 = *(v25 + 16);
      v28 = *(v25 + 24);
      v41 = *(v25 + 32);
      v43 = *(v25 + 40);
      v42 = *(v25 + 48);
      v40 = *(v24 + 8 * v23);
      if ((v39 & 1) == 0)
      {
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v44);
      (*(*v26 + 120))(v45);
      String.hash(into:)();
      if (v43)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v41);
      }

      MEMORY[0x266772770](v42);
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 56 * v18;
      *v19 = v44;
      *(v19 + 8) = v26;
      *(v19 + 16) = v27;
      *(v19 + 24) = v28;
      *(v19 + 32) = v41;
      *(v19 + 40) = v43;
      *(v19 + 48) = v42;
      *(*(v10 + 56) + 8 * v18) = v40;
      ++*(v10 + 16);
      v7 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_38;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v4;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_38:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      v25 = (*(v7 + 48) + 16 * v24);
      v26 = v25[1];
      v27 = (*(v7 + 56) + 24 * v24);
      v28 = v27[1];
      v42 = *v27;
      v43 = *v25;
      v29 = v27[2];
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v43;
      v19[1] = v26;
      v20 = (*(v10 + 56) + 24 * v18);
      *v20 = v42;
      v20[1] = v28;
      v20[2] = v29;
      ++*(v10 + 16);
      v7 = v40;
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = a2;
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v23);
      result = Hasher._finalize()();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v34 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v46 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v24 = v21 | (v11 << 6);
      if (v47)
      {
        v25 = *(v7 + 56);
        v26 = *(v7 + 48) + 80 * v24;
        v59 = *(v26 + 64);
        v27 = *(v26 + 48);
        v57 = *(v26 + 32);
        v58 = v27;
        v28 = *(v26 + 16);
        v55 = *v26;
        v56 = v28;
        v29 = *(v26 + 72);
        v30 = (v25 + 16 * v24);
        v31 = v30[1];
        v48 = *v30;
      }

      else
      {
        v32 = *(v7 + 48) + 80 * v24;
        v50 = *v32;
        v34 = *(v32 + 32);
        v33 = *(v32 + 48);
        v35 = *(v32 + 64);
        v51 = *(v32 + 16);
        v52 = v34;
        LOBYTE(v54) = v35;
        v53 = v33;
        v29 = *(v32 + 72);
        v36 = (*(v7 + 56) + 16 * v24);
        v31 = v36[1];
        v48 = *v36;
        outlined init with copy of SGDataTypeStorage(&v50, v49);
        v57 = v52;
        v58 = v53;
        v59 = v54;
        v55 = v50;
        v56 = v51;
      }

      v62 = v57;
      v63 = v58;
      v64 = v59;
      v60 = v55;
      v61 = v56;
      v52 = v57;
      v53 = v58;
      LOBYTE(v54) = v59;
      v50 = v55;
      v51 = v56;
      v37 = *(v10 + 40);
      Hasher.init(_seed:)();
      SGDataTypeStorage.hash(into:)();
      (*(*v29 + 120))(v49);
      result = Hasher._finalize()();
      v38 = -1 << *(v10 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v17 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v17 + 8 * v40);
          if (v44 != -1)
          {
            v18 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v39) & ~*(v17 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 80 * v18;
      *(v19 + 16) = v51;
      *(v19 + 32) = v52;
      *(v19 + 48) = v53;
      *(v19 + 64) = v54;
      *v19 = v50;
      *(v19 + 72) = v29;
      v20 = (*(v10 + 56) + 16 * v18);
      *v20 = v48;
      v20[1] = v31;
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v5 = v46;
      goto LABEL_36;
    }

    v45 = 1 << *(v7 + 32);
    v5 = v46;
    if (v45 >= 64)
    {
      bzero((v7 + 64), ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v45;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v5 = v10;
  return result;
}

{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}