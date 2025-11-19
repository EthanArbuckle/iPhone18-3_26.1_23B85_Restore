void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCSgGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVAC05MetaleF0_pGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of MetalFunctionNode(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of MetalFunctionNode(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph6OutputVAC14FunctionNodeIDVGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAC08FunctioneF0VGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph5InputVAC14FunctionNodeIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7NodeDefVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of NodeDef(&v39, v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 152;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 80);
      v43 = *(v21 + 64);
      v44 = v24;
      v42 = v23;
      v26 = *(v21 + 112);
      v25 = *(v21 + 128);
      v27 = *(v21 + 96);
      v48 = *(v21 + 144);
      v46 = v26;
      v47 = v25;
      v45 = v27;
      v28 = *(v21 + 16);
      v39 = *v21;
      v40 = v28;
      v41 = v22;
      v29 = (*(v4 + 48) + v17);
      *v29 = v20;
      v29[1] = v19;
      v30 = *(v4 + 56) + v16;
      v31 = v40;
      *v30 = v39;
      *(v30 + 16) = v31;
      v32 = v41;
      v33 = v42;
      v34 = v44;
      *(v30 + 64) = v43;
      *(v30 + 80) = v34;
      *(v30 + 32) = v32;
      *(v30 + 48) = v33;
      v35 = v45;
      v36 = v46;
      v37 = v47;
      *(v30 + 144) = v48;
      *(v30 + 112) = v36;
      *(v30 + 128) = v37;
      *(v30 + 96) = v35;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMd, &_ss18_DictionaryStorageCySSSay11ShaderGraph7NodeDefV14ImplementationVGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMd, &_ss18_DictionaryStorageCyS2S19uniformPropertyName_11ShaderGraph13MetalDataTypeC4typetGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMd, &_ss18_DictionaryStorageCySi11ShaderGraph010SGDataTypeD0VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 48 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        v22 = *(v18 + 40);
        v23 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = *(v4 + 56) + 48 * v17;
        *v24 = v23;
        *(v24 + 16) = v19;
        *(v24 + 24) = v20;
        *(v24 + 32) = v21;
        *(v24 + 40) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMd, &_ss18_DictionaryStorageCy11ShaderGraph010SGDataTypeD0V6NodeIDVSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 32);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        v26 = *(v22 + 16);
        *v24 = v20;
        v24[1] = v21;
        v27 = *(v4 + 56) + v17;
        *v27 = v25;
        *(v27 + 16) = v26;
        *(v27 + 32) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *(v18 + 32);
        v20 = *v18;
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 40 * v17;
        *v22 = v20;
        *(v22 + 16) = v21;
        *(v22 + 32) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSiGMd, &_ss18_DictionaryStorageCySOSiGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMd, &_ss18_DictionaryStorageCy11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GAC0cdE0V2IDVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 40 * v17;
        v19 = *(*(v2 + 56) + 8 * v17);
        v20 = *(v18 + 32);
        v21 = *(v4 + 48) + 40 * v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 16) = v22;
        *(v21 + 32) = v20;
        *(*(v4 + 56) + 8 * v17) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph7NodeDefV12AvailabilityV8PlatformOAGGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        v19 = (*(v2 + 56) + 160 * v17);
        v20 = v19[2];
        v21 = v19[3];
        v22 = v19[5];
        v40 = v19[4];
        v41 = v22;
        v39 = v21;
        v23 = v19[9];
        v25 = v19[6];
        v24 = v19[7];
        v44 = v19[8];
        v45 = v23;
        v42 = v25;
        v43 = v24;
        v26 = v19[1];
        v36 = *v19;
        v37 = v26;
        v38 = v20;
        *(*(v4 + 48) + v17) = v18;
        v27 = (*(v4 + 56) + 160 * v17);
        v28 = v37;
        *v27 = v36;
        v27[1] = v28;
        v29 = v38;
        v30 = v39;
        v31 = v41;
        v27[4] = v40;
        v27[5] = v31;
        v27[2] = v29;
        v27[3] = v30;
        v32 = v42;
        v33 = v43;
        v34 = v45;
        v27[8] = v44;
        v27[9] = v34;
        v27[6] = v32;
        v27[7] = v33;
        result = outlined init with copy of NodeDef.Availability(&v36, &v35);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph11GeomPropDefVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = outlined init with copy of GeomPropDef(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph9InputSpecVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0cD4NodeV2IDVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMd, &_ss18_DictionaryStorageCy11ShaderGraph0cD4NodeV2IDVAGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVSSGMR);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMd, &_ss18_DictionaryStorageCy11ShaderGraph3Key33_BB047626620EACBC51AA4D451FE89E7ELLVAC0cD4NodeVGMR);
  v37 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 80 * v16;
        v18 = *(v1 + 48) + 80 * v16;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v18 + 48);
        v26 = *(v18 + 56);
        v27 = *(v18 + 64);
        LODWORD(v38) = *(v18 + 65);
        *(&v38 + 3) = *(v18 + 68);
        v28 = *(v18 + 72);
        v16 *= 48;
        v29 = *(v1 + 56) + v16;
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 16);
        v33 = *(v29 + 40);
        v34 = *(v3 + 48) + v17;
        v35 = *(v29 + 24);
        *v34 = v19;
        *(v34 + 8) = v20;
        *(v34 + 16) = v21;
        *(v34 + 24) = v22;
        *(v34 + 32) = v23;
        *(v34 + 40) = v24;
        *(v34 + 48) = v25;
        *(v34 + 56) = v26;
        *(v34 + 64) = v27;
        *(v34 + 68) = *(&v38 + 3);
        *(v34 + 65) = v38;
        *(v34 + 72) = v28;
        v36 = *(v3 + 56) + v16;
        *v36 = v30;
        *(v36 + 8) = v31;
        *(v36 + 16) = v32;
        *(v36 + 24) = v35;
        *(v36 + 40) = v33;
        outlined copy of SGDataTypeStorage(v19, v20, v21, v22, v23, v24, v25, v26, v27);

        outlined copy of NodePersonality(v30);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v37 = v3;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph14FunctionNodeIDVSSGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV8GeomPropVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[10] = *(v19 + v17 + 42);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 42) = *&v34[10];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = outlined init with copy of NodeDefinitionStore.GeomProp(&v32, &v31);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMd, &_ss18_DictionaryStorageCySS11ShaderGraph19NodeDefinitionStoreV0E0VGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 160;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 80);
        v44 = *(v19 + v17 + 64);
        v45 = v25;
        v43 = v24;
        v26 = *(v19 + v17 + 144);
        v28 = *(v19 + v17 + 96);
        v27 = *(v19 + v17 + 112);
        v48 = *(v19 + v17 + 128);
        v49 = v26;
        v46 = v28;
        v47 = v27;
        v29 = *(v19 + v17 + 16);
        v40 = *(v19 + v17);
        v41 = v29;
        v42 = v23;
        v30 = (*(v4 + 48) + v18);
        *v30 = v22;
        v30[1] = v21;
        v31 = (*(v4 + 56) + v17);
        v32 = v41;
        *v31 = v40;
        v31[1] = v32;
        v33 = v42;
        v34 = v43;
        v35 = v45;
        v31[4] = v44;
        v31[5] = v35;
        v31[2] = v33;
        v31[3] = v34;
        v36 = v46;
        v37 = v47;
        v38 = v49;
        v31[8] = v48;
        v31[9] = v38;
        v31[6] = v36;
        v31[7] = v37;

        result = outlined init with copy of NodeDefinitionStore.Node(&v40, &v39);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMd, &_ss18_DictionaryStorageCy11ShaderGraph21MetalStitchingBackendV15stitchingGraphs017_D268F7A664353381K14EC160680D6AC053for10augmenting11coreLibrary19additionalLibrariesSaySo011MTLFunctionfD0CGAC0eC7ProgramC_AC07OrderedA0VySSSo0V0_pGzSo10MTLLibrary_pSaySoAU_pGtKF11ConstantKeyL_VSSGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph13MetalDataTypeCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v19 << 6;
        v19 *= 8;
        v21 = v20 - v19;
        v22 = (*(v4 + 48) + v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = *(v22 + 40);
        v29 = v22[6];
        v30 = *(*(v4 + 56) + v19);
        v31 = *(v6 + 48) + v21;
        *v31 = v24;
        *(v31 + 8) = v23;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = v29;
        *(*(v6 + 56) + v19) = v30;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = (*(v6 + 48) + v20);
        *v28 = v23;
        v28[1] = v22;
        v29 = (*(v6 + 56) + v19);
        *v29 = v25;
        v29[1] = v26;
        v29[2] = v27;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 80 * v19;
        v21 = *(v4 + 48) + 80 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        v26 = *(v21 + 32);
        v27 = *(v21 + 40);
        v28 = *(v21 + 48);
        v29 = *(v21 + 56);
        v30 = *(v21 + 64);
        LODWORD(v37) = *(v21 + 65);
        *(&v37 + 3) = *(v21 + 68);
        v31 = *(v21 + 72);
        v19 *= 16;
        v32 = (*(v4 + 56) + v19);
        v33 = *v32;
        v34 = v32[1];
        v35 = *(v6 + 48) + v20;
        *v35 = v22;
        *(v35 + 8) = v23;
        *(v35 + 16) = v24;
        *(v35 + 24) = v25;
        *(v35 + 32) = v26;
        *(v35 + 40) = v27;
        *(v35 + 48) = v28;
        *(v35 + 56) = v29;
        *(v35 + 64) = v30;
        *(v35 + 68) = *(&v37 + 3);
        *(v35 + 65) = v37;
        *(v35 + 72) = v31;
        v36 = (*(v6 + 56) + v19);
        *v36 = v33;
        v36[1] = v34;
        outlined copy of SGDataTypeStorage(v22, v23, v24, v25, v26, v27, v28, v29, v30);
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMd, &_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMR);
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a2);
  MEMORY[0x266772770](a3);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == a2 && v14 == a3)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph5InputVGMd, &_ss11_SetStorageCy11ShaderGraph5InputVGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph6OutputVGMd, &_ss11_SetStorageCy11ShaderGraph6OutputVGMR);
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(a2);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v34 = v4;
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v33 = v4 + 56;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v32 = ~v7;
    while (1)
    {
      v9 = *(*(v34 + 48) + v8);
      if (v9 > 4)
      {
        if (*(*(v34 + 48) + v8) <= 6u)
        {
          if (v9 == 5)
          {
            v14 = 0x6E69686374697473;
            v15 = 0xEE00687061724767;
          }

          else
          {
            v14 = 0x446C616D696E696DLL;
            v15 = 0xEA0000000000746FLL;
          }
        }

        else if (v9 == 7)
        {
          v15 = 0xE800000000000000;
          v14 = 0x6870617247697061;
        }

        else if (v9 == 8)
        {
          v14 = 0xD000000000000011;
          v15 = 0x8000000265F2BCB0;
        }

        else
        {
          v14 = 0xD00000000000001ALL;
          v15 = 0x8000000265F2BCD0;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 7630692;
        }

        else
        {
          v10 = 0x62694C6C6174656DLL;
        }

        if (v9 == 3)
        {
          v11 = 0xE300000000000000;
        }

        else
        {
          v11 = 0xEC00000079726172;
        }

        if (v9 == 2)
        {
          v10 = 0x65766968637261;
          v11 = 0xE700000000000000;
        }

        v12 = *(*(v34 + 48) + v8) ? 0x7972616D6D7573 : 1701736302;
        v13 = *(*(v34 + 48) + v8) ? 0xE700000000000000 : 0xE400000000000000;
        v14 = *(*(v34 + 48) + v8) <= 1u ? v12 : v10;
        v15 = *(*(v34 + 48) + v8) <= 1u ? v13 : v11;
      }

      v16 = 0xD00000000000001ALL;
      if (a2 == 8)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0x8000000265F2BCD0;
      if (a2 == 8)
      {
        v17 = 0x8000000265F2BCB0;
      }

      if (a2 == 7)
      {
        v16 = 0x6870617247697061;
        v17 = 0xE800000000000000;
      }

      v18 = 0x6E69686374697473;
      if (a2 != 5)
      {
        v18 = 0x446C616D696E696DLL;
      }

      v19 = 0xEE00687061724767;
      if (a2 != 5)
      {
        v19 = 0xEA0000000000746FLL;
      }

      if (a2 <= 6u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (a2 == 3)
      {
        v20 = 7630692;
      }

      else
      {
        v20 = 0x62694C6C6174656DLL;
      }

      if (a2 == 3)
      {
        v21 = 0xE300000000000000;
      }

      else
      {
        v21 = 0xEC00000079726172;
      }

      if (a2 == 2)
      {
        v20 = 0x65766968637261;
        v21 = 0xE700000000000000;
      }

      if (a2)
      {
        v22 = 0x7972616D6D7573;
      }

      else
      {
        v22 = 1701736302;
      }

      if (a2)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xE400000000000000;
      }

      if (a2 <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = a2 <= 4u ? v20 : v16;
      v25 = a2 <= 4u ? v21 : v17;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_74;
      }

      v8 = (v8 + 1) & v32;
      if (((*(v33 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

LABEL_74:
    result = 0;
    LOBYTE(a2) = *(*(v34 + 48) + v8);
  }

  else
  {
LABEL_72:
    v27 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v30;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v30 = v35;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph0cD4NodeV2IDVGMd, &_ss11_SetStorageCy11ShaderGraph0cD4NodeV2IDVGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMR);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x266772750](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v26[9] = v8;
      type metadata accessor for MaterialXTarget();
      swift_dynamicCast();
      result = 0;
      *a1 = v26[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v23 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11ShaderGraph15MaterialXTargetC_Tt1g5(v7, result + 1);
    v26[0] = v23;
    v24 = *(v23 + 16);
    if (*(v23 + 24) <= v24)
    {
      specialized _NativeSet.resize(capacity:)(v24 + 1);
      v23 = v26[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v25, v23);

    *v3 = v23;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v26, *(a2 + 32));
  v13 = Hasher._finalize()();
  v14 = -1 << *(v6 + 32);
  v15 = v13 & ~v14;
  if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_11:
    v20 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26[0] = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v22, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v26[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v16 = ~v14;
  while (1)
  {
    v17 = *(*(v6 + 48) + 8 * v15);

    v19 = specialized static MaterialXTarget.== infix(_:_:)(v18, a2);

    if (v19)
    {
      break;
    }

    v15 = (v15 + 1) & v16;
    if (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v15);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *(*v4 + 40);
  Hasher.init(_seed:)();
  v8 = *a2;
  MEMORY[0x266772770](*a2);
  v45 = *(a2 + 8);
  (*(*v45 + 120))(v48);
  v42 = *(a2 + 16);
  v43 = *(a2 + 24);
  String.hash(into:)();
  v9 = *(a2 + 32);
  v40 = *(a2 + 40);
  if (v40 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v9);
  }

  v38 = a2;
  v41 = *(a2 + 48);
  MEMORY[0x266772770]();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if ((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(v6 + 48) + 56 * v12;
      if (*v14 != v8)
      {
        goto LABEL_7;
      }

      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v44 = *(v14 + 32);
      v46 = *(v14 + 40);
      v47 = *(v14 + 48);
      v17 = *(**(v14 + 8) + 128);

      if ((v17(v45) & 1) == 0)
      {

        goto LABEL_7;
      }

      if (v15 == v42 && v16 == v43)
      {

        if (v46)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_7;
        }

        if (v46)
        {
LABEL_16:
          v20 = v40;
          if (v47 != v41)
          {
            v20 = 0;
          }

          if (v20)
          {
            goto LABEL_28;
          }

          goto LABEL_7;
        }
      }

      v21 = v40 ^ 1;
      if (v44 != v9)
      {
        v21 = 0;
      }

      if (v21 == 1 && v47 == v41)
      {
LABEL_28:

        v23 = *(v6 + 48) + 56 * v12;
        v25 = *v23;
        v24 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);
        v28 = *(v23 + 32);
        v29 = *(v23 + 40);
        v30 = *(v23 + 48);
        *a1 = v25;
        *(a1 + 8) = v24;
        *(a1 + 16) = v26;
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        *(a1 + 40) = v29;
        *(a1 + 48) = v30;

        return 0;
      }

LABEL_7:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  v32 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48[0] = *v37;

  specialized _NativeSet.insertNew(_:at:isUnique:)(v38, v12, isUniquelyReferenced_nonNull_native, a3, a4);
  *v37 = v48[0];
  v34 = *(v38 + 16);
  *a1 = *v38;
  *(a1 + 16) = v34;
  *(a1 + 32) = *(v38 + 32);
  *(a1 + 48) = *(v38 + 48);
  return 1;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11ShaderGraph15MaterialXTargetC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v22 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MaterialXTarget();
      v5 = v4;
      do
      {
        v21[0] = v5;
        swift_dynamicCast();
        v16 = *(v2 + 16);
        if (*(v2 + 24) <= v16)
        {
          specialized _NativeSet.resize(capacity:)(v16 + 1);
        }

        v6 = v21[9];
        v2 = v22;
        v7 = *(v22 + 40);
        Hasher.init(_seed:)();
        v8 = *(v6 + 16);
        v9 = *(v6 + 24);
        String.hash(into:)();
        specialized Optional<A>.hash(into:)(v21, *(v6 + 32));
        result = Hasher._finalize()();
        v11 = v2 + 56;
        v12 = -1 << *(v2 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v2 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v2 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v2 + 48) + 8 * v15) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph0D5IndexVGMd, &_ss11_SetStorageCy11ShaderGraph0D5IndexVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v20);
      MEMORY[0x266772770](v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = MEMORY[0x266772750](*(v6 + 40), v18);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      v20 = *(v18 + 16);
      v21 = *(v18 + 24);
      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v31, *(v18 + 32));
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v29;
    }

    v2 = v30;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v5 + 16))
  {
    v37 = v4;
    v9 = 0;
    v38 = (v5 + 56);
    v39 = v5;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    v40 = v7;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_17:
      v21 = *(v5 + 48) + 56 * (v17 | (v9 << 6));
      v23 = *v21;
      v22 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v42 = *(v21 + 48);
      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v23);
      (*(*v22 + 120))(v43);
      String.hash(into:)();
      if (v27 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v26);
      }

      MEMORY[0x266772770](v42);
      result = Hasher._finalize()();
      v8 = v40;
      v29 = -1 << *(v40 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v40 + 48) + 56 * v15;
      v12 = v41;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(v16 + 32) = v26;
      *(v16 + 40) = v27;
      *(v16 + 48) = v42;
      ++*(v40 + 16);
      v5 = v39;
    }

    v18 = v9;
    result = v38;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v13)
      {
        break;
      }

      v20 = v38[v9];
      ++v18;
      if (v20)
      {
        v17 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v36 = 1 << *(v5 + 32);
    if (v36 >= 64)
    {
      bzero(v38, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v38 = -1 << v36;
    }

    v4 = v37;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v9, *(a1 + 32));
  Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = specialized _NativeSet.copy()();
      a3 = v9;
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v6);
  MEMORY[0x266772770](a2);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == v6 && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = v6;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_18:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_79;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_79;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(v36);
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v9;
    v10 = 0xEC00000079726172;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v11 == 5)
          {
            v16 = 0x6E69686374697473;
            v17 = 0xEE00687061724767;
          }

          else
          {
            v16 = 0x446C616D696E696DLL;
            v17 = 0xEA0000000000746FLL;
          }
        }

        else if (v11 == 7)
        {
          v17 = 0xE800000000000000;
          v16 = 0x6870617247697061;
        }

        else if (v11 == 8)
        {
          v16 = 0xD000000000000011;
          v17 = 0x8000000265F2BCB0;
        }

        else
        {
          v16 = 0xD00000000000001ALL;
          v17 = 0x8000000265F2BCD0;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 7630692;
        }

        else
        {
          v12 = 0x62694C6C6174656DLL;
        }

        if (v11 == 3)
        {
          v13 = 0xE300000000000000;
        }

        else
        {
          v13 = v10;
        }

        if (v11 == 2)
        {
          v12 = 0x65766968637261;
          v13 = 0xE700000000000000;
        }

        v14 = *(*(v7 + 48) + a2) ? 0x7972616D6D7573 : 1701736302;
        v15 = *(*(v7 + 48) + a2) ? 0xE700000000000000 : 0xE400000000000000;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
        v17 = *(*(v7 + 48) + a2) <= 1u ? v15 : v13;
      }

      v18 = 0xD00000000000001ALL;
      if (v36 == 8)
      {
        v18 = 0xD000000000000011;
      }

      v19 = 0x8000000265F2BCD0;
      if (v36 == 8)
      {
        v19 = 0x8000000265F2BCB0;
      }

      if (v36 == 7)
      {
        v18 = 0x6870617247697061;
        v19 = 0xE800000000000000;
      }

      v20 = 0x6E69686374697473;
      if (v36 != 5)
      {
        v20 = 0x446C616D696E696DLL;
      }

      v21 = 0xEE00687061724767;
      if (v36 != 5)
      {
        v21 = 0xEA0000000000746FLL;
      }

      if (v36 <= 6u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v36 == 3)
      {
        v22 = 7630692;
      }

      else
      {
        v22 = 0x62694C6C6174656DLL;
      }

      v23 = v10;
      if (v36 == 3)
      {
        v24 = 0xE300000000000000;
      }

      else
      {
        v24 = v10;
      }

      if (v36 == 2)
      {
        v22 = 0x65766968637261;
        v24 = 0xE700000000000000;
      }

      if (v36)
      {
        v25 = 0x7972616D6D7573;
      }

      else
      {
        v25 = 1701736302;
      }

      if (v36)
      {
        v26 = 0xE700000000000000;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      if (v36 <= 1u)
      {
        v22 = v25;
        v24 = v26;
      }

      v27 = v36 <= 4u ? v22 : v18;
      v28 = v36 <= 4u ? v24 : v19;
      if (v16 == v27 && v17 == v28)
      {
        goto LABEL_82;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_83;
      }

      a2 = (a2 + 1) & v35;
      v10 = v23;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_79:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_82:

LABEL_83:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v21, *(v5 + 32));
  result = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for MaterialXTarget();
    do
    {
      v14 = *(*(v8 + 48) + 8 * a2);

      v16 = specialized static MaterialXTarget.== infix(_:_:)(v15, v5);

      if (v16)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v6);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = result;
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  v35 = result;
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()(a4, a5);
      goto LABEL_36;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  v12 = *v7;
  MEMORY[0x266772770](*v7);
  v38 = *(v7 + 8);
  (*(*v38 + 120))(v42);
  v36 = *(v7 + 24);
  v37 = *(v7 + 16);
  String.hash(into:)();
  v13 = *(v7 + 32);
  v32 = *(v7 + 40);
  if (v32 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v13);
  }

  v33 = *(v7 + 48);
  MEMORY[0x266772770]();
  result = Hasher._finalize()();
  v14 = -1 << *(v10 + 32);
  a2 = result & ~v14;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = v13;
    v15 = ~v14;
    do
    {
      v16 = *(v10 + 48) + 56 * a2;
      if (*v16 != v12)
      {
        goto LABEL_14;
      }

      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v39 = *(v16 + 32);
      v40 = *(v16 + 40);
      v41 = *(v16 + 48);
      v19 = *(**(v16 + 8) + 128);

      if ((v19(v38) & 1) == 0)
      {

        goto LABEL_14;
      }

      if (v17 == v37 && v18 == v36)
      {

        if (v40)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v40)
        {
LABEL_23:
          v22 = v32;
          if (v41 != v33)
          {
            v22 = 0;
          }

          if (v22)
          {
            goto LABEL_35;
          }

          goto LABEL_14;
        }
      }

      v23 = v32 ^ 1;
      if (v39 != v31)
      {
        v23 = 0;
      }

      if (v23 == 1 && v41 == v33)
      {
LABEL_35:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

LABEL_14:
      a2 = (a2 + 1) & v15;
    }

    while (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v25 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 56 * a2;
  v27 = *(v35 + 16);
  *v26 = *v35;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v35 + 32);
  *(v26 + 48) = *(v35 + 48);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x266772750](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph0D5IndexVGMd, &_ss11_SetStorageCy11ShaderGraph0D5IndexVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 56 * (v16 | (v10 << 6));
        v20 = *(v4 + 48) + v19;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(v20 + 48);
        v28 = *(v6 + 48) + v19;
        *v28 = v22;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v27;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph0D5IndexVGMd, &_ss11_SetStorageCy11ShaderGraph0D5IndexVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v19);
      MEMORY[0x266772770](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = MEMORY[0x266772750](*(v6 + 40), v17);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      v19 = *(v17 + 16);
      v20 = *(v17 + 24);

      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v29, *(v17 + 32));
      result = Hasher._finalize()();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v19);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v4;
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v38 = (v11 + 63) >> 6;
    v39 = v5;
    v14 = result + 56;
    v40 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v42 = (v13 - 1) & v13;
LABEL_17:
      v20 = *(v5 + 48) + 56 * (v17 | (v9 << 6));
      v22 = *v20;
      v21 = *(v20 + 8);
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = *(v20 + 40);
      v43 = *(v20 + 32);
      v44 = *(v20 + 48);
      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      v41 = v22;
      MEMORY[0x266772770](v22);
      v27 = *(*v21 + 120);

      v27(v45);
      v28 = v24;
      String.hash(into:)();
      if (v25 == 1)
      {
        Hasher._combine(_:)(0);
        v29 = v43;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v29 = v43;
        MEMORY[0x266772770](v43);
      }

      MEMORY[0x266772770](v44);
      result = Hasher._finalize()();
      v8 = v40;
      v30 = -1 << *(v40 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v40 + 48) + 56 * v15;
      v13 = v42;
      *v16 = v41;
      *(v16 + 8) = v21;
      *(v16 + 16) = v28;
      *(v16 + 24) = v23;
      *(v16 + 32) = v29;
      *(v16 + 40) = v25;
      *(v16 + 48) = v44;
      ++*(v40 + 16);
      v5 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v38)
      {

        v4 = v37;
        goto LABEL_31;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v4 = v8;
  }

  return result;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v49 = *(a1 + 16);
  if (!v49)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 80);
  v45 = *(a1 + 64);
  v47 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a2 & 1);
  v15 = *a3;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v14 & 1) == (v17 & 1))
  {
    v10 = v16;
    if ((v14 & 1) == 0)
    {
LABEL_13:
      v20 = *a3;
      *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v21 = (v20[6] + 16 * v10);
      *v21 = v6;
      v21[1] = v7;
      v22 = v20[7] + 40 * v10;
      *v22 = v47;
      *(v22 + 16) = v45;
      *(v22 + 32) = v5;
      v23 = v20[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v20[2] = v25;
      if (v49 != 1)
      {
        v26 = a1 + 88;
        v27 = 1;
        while (v27 < *(a1 + 16))
        {
          v28 = *(v26 + 48);
          v46 = *(v26 + 32);
          v48 = *(v26 + 16);
          v30 = *v26;
          v29 = *(v26 + 8);

          if (!v29)
          {
            goto LABEL_24;
          }

          v31 = *a3;
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
          v34 = v31[2];
          v35 = (v33 & 1) == 0;
          v24 = __OFADD__(v34, v35);
          v36 = v34 + v35;
          if (v24)
          {
            goto LABEL_26;
          }

          v37 = v33;
          if (v31[3] < v36)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
            v38 = *a3;
            v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29);
            if ((v37 & 1) != (v39 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v37)
          {
            goto LABEL_10;
          }

          v40 = *a3;
          *(*a3 + 8 * (v32 >> 6) + 64) |= 1 << v32;
          v41 = (v40[6] + 16 * v32);
          *v41 = v30;
          v41[1] = v29;
          v42 = v40[7] + 40 * v32;
          *v42 = v48;
          *(v42 + 16) = v46;
          *(v42 + 32) = v28;
          v43 = v40[2];
          v24 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v24)
          {
            goto LABEL_27;
          }

          ++v27;
          v40[2] = v44;
          v26 += 56;
          if (v49 == v27)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 32);
  v51 = *(a1 + 56);
  v48 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = *a3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];

  if (v15 >= v12)
  {
    if (a2)
    {
      v19 = v51;
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v19 = v51;
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a2 & 1);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if ((v14 & 1) == (v18 & 1))
  {
    v13 = v17;
    v19 = v51;
    if ((v14 & 1) == 0)
    {
LABEL_12:
      v22 = *a3;
      *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      *(v22[6] + 8 * v13) = v5;
      v23 = v22[7] + 40 * v13;
      *(v23 + 16) = v19;
      *v23 = v48;
      *(v23 + 32) = v6;
      v24 = v22[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v22[2] = v26;
      if (v47 != 1)
      {
        v27 = a1 + 80;
        v28 = 1;
        while (v28 < *(a1 + 16))
        {
          v29 = *v27;
          v52 = *(v27 + 24);
          v49 = *(v27 + 8);
          v30 = *(v27 + 40);
          v31 = *a3;
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(*v27);
          v34 = v31[2];
          v35 = (v33 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_25;
          }

          v37 = v32;
          v38 = v33;
          v39 = v31[3];

          if (v39 < v36)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
            v40 = *a3;
            v41 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            if ((v38 & 1) != (v42 & 1))
            {
              goto LABEL_27;
            }

            v37 = v41;
          }

          if (v38)
          {
            goto LABEL_9;
          }

          v43 = *a3;
          *(*a3 + 8 * (v37 >> 6) + 64) |= 1 << v37;
          *(v43[6] + 8 * v37) = v29;
          v44 = v43[7] + 40 * v37;
          *(v44 + 16) = v52;
          *v44 = v49;
          *(v44 + 32) = v30;
          v45 = v43[2];
          v25 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v25)
          {
            goto LABEL_26;
          }

          ++v28;
          v43[2] = v46;
          v27 += 48;
          if (v47 == v28)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_23:

      return;
    }

LABEL_9:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v50 = a1;
  v31 = *(a1 + 16);
  if (v31)
  {
    v5 = 0;
    v6 = 32;
    while (1)
    {
      if (v5 >= *(v50 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v50 + v6 + 80);
      v41 = *(v50 + v6 + 64);
      v42 = v7;
      v8 = *(v50 + v6 + 48);
      v39 = *(v50 + v6 + 32);
      v40 = v8;
      v9 = *(v50 + v6 + 16);
      v37 = *(v50 + v6);
      v38 = v9;
      v10 = v42;
      v11 = v41;
      v34 = v39;
      v35 = v40;
      v32 = v37;
      v33 = v9;
      outlined init with copy of (Key, String)(&v37, v36);
      if (!*(&v11 + 1))
      {
        goto LABEL_14;
      }

      v43 = v32;
      v44 = v33;
      v45 = v34;
      v46 = v35;
      v47 = v11;
      v37 = v32;
      v38 = v33;
      v39 = v34;
      v40 = v35;
      v41 = v11;
      v12 = *a3;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v43);
      v15 = v12[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_18;
      }

      v19 = v14;
      if (v12[3] >= v18)
      {
        if ((a2 & 1) == 0)
        {
          v28 = v13;
          specialized _NativeDictionary.copy()();
          v13 = v28;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a2 & 1);
        v20 = *a3;
        v13 = specialized __RawDictionaryStorage.find<A>(_:)(&v43);
        if ((v19 & 1) != (v21 & 1))
        {
          goto LABEL_20;
        }
      }

      v48[2] = v45;
      v48[3] = v46;
      v49 = v47;
      v48[0] = v43;
      v48[1] = v44;
      if (v19)
      {
        break;
      }

      v22 = *a3;
      *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v23 = (v22[6] + 80 * v13);
      v24 = v46;
      v23[2] = v45;
      v23[3] = v24;
      v23[4] = v47;
      v25 = v44;
      *v23 = v43;
      v23[1] = v25;
      *(v22[7] + 16 * v13) = v10;
      v26 = v22[2];
      v17 = __OFADD__(v26, 1);
      v27 = v26 + 1;
      if (v17)
      {
        goto LABEL_19;
      }

      ++v5;
      v22[2] = v27;
      v6 += 96;
      a2 = 1;
      if (v31 == v5)
      {
        goto LABEL_14;
      }
    }

    v29 = swift_allocError();
    swift_willThrow();
    v30 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined destroy of SGDataTypeStorage(v48);

      return;
    }

LABEL_21:
    v36[0] = 0;
    v36[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

{
  v41 = a1;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v41 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    *&v40[25] = *(v41 + v5 + 57);
    v6 = *(v41 + v5 + 48);
    *v40 = *(v41 + v5 + 32);
    *&v40[16] = v6;
    v7 = *(v41 + v5 + 16);
    v38 = *(v41 + v5);
    v39 = v7;
    v8 = v40[40];
    v10 = *&v40[24];
    v9 = *&v40[32];
    v11 = *&v40[16];
    v35 = v7;
    v36 = *v40;
    v12 = v38;
    outlined init with copy of [Input](&v38, &v37, &_sSS_11ShaderGraph11GeomPropDefVtMd, &_sSS_11ShaderGraph11GeomPropDefVtMR);
    if (!*(&v12 + 1))
    {
      goto LABEL_18;
    }

    v37 = v12;
    v38 = v35;
    v39 = v36;
    *v40 = v11;
    *&v40[8] = v10;
    *&v40[16] = v9;
    v40[24] = v8;
    v13 = *a3;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v23[6] + 16 * v15) = v12;
    v24 = (v23[7] + (v15 << 6));
    v25 = v38;
    v26 = v39;
    v27 = *v40;
    *(v24 + 41) = *&v40[9];
    v24[1] = v26;
    v24[2] = v27;
    *v24 = v25;
    v28 = v23[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_22;
    }

    ++v4;
    v23[2] = v30;
    v5 += 80;
    a2 = 1;
    if (v33 == v4)
    {
      goto LABEL_18;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a2 & 1);
  v20 = *a3;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
  if ((v19 & 1) != (v22 & 1))
  {
    goto LABEL_23;
  }

  v15 = v21;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v31 = swift_allocError();
  swift_willThrow();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined destroy of GeomPropDef(&v38);

    return;
  }

LABEL_24:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  while (2)
  {
    if (v5)
    {
      v9 = *(v5 + 16);
      if (v6 != v9)
      {
        goto LABEL_14;
      }

      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      outlined destroy of [Input](&v32, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMR);
    }

    v10 = *(a1 + 16);
    if (v7 == v10)
    {
LABEL_28:

      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
LABEL_29:

      return;
    }

    if (v7 >= v10)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_36;
    }

    while (1)
    {
      v5 = *(v8 + 8 * v7);

      if (v5)
      {
        break;
      }

LABEL_10:
      ++v7;
      v11 = *(a1 + 16);
      if (v7 == v11)
      {
        goto LABEL_28;
      }

      if (v7 >= v11)
      {
        goto LABEL_31;
      }
    }

    v9 = *(v5 + 16);
    if (!v9)
    {
      v33 = 0u;
      v34 = 0u;
      v32 = 0u;
      outlined destroy of [Input](&v32, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMR);
      goto LABEL_10;
    }

    v6 = 0;
    ++v7;
LABEL_14:
    if (v6 >= v9)
    {
      goto LABEL_32;
    }

    outlined init with copy of [Input](v5 + 48 * v6 + 32, &v32, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMR);
    v36 = v33;
    v37 = v34;
    v35 = v32;
    if (!v34)
    {

      goto LABEL_29;
    }

    v30 = v6;
    v12 = a2;
    v13 = v35;
    v38 = v35;
    outlined init with take of MetalFunctionNode((&v35 + 8), &v32);
    v14 = *a3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_33;
    }

    v20 = v15;
    if (v14[3] >= v19)
    {
      if (v12)
      {
        if (v15)
        {
          goto LABEL_26;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v20)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      v24 = *a3;
      *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      *(v24[6] + 8 * v16) = v13;
      outlined init with take of MetalFunctionNode(&v32, v24[7] + 40 * v16);
      v25 = v24[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_34;
      }

      v6 = v30 + 1;
      v24[2] = v27;
      a2 = 1;
      continue;
    }

    break;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v12 & 1);
  v21 = *a3;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if ((v20 & 1) != (v23 & 1))
  {
    goto LABEL_35;
  }

  v16 = v22;
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  v28 = swift_allocError();
  swift_willThrow();
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v32);

    return;
  }

LABEL_36:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v18 = v4;
  if (v4)
  {
    v6 = 0;
    v17 = a2 + 32;
    do
    {
      v7 = (v17 + 48 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = *(v7 + 32);
      v19 = v7[5];

      String.hash(into:)();
      (*(*v10 + 120))(a1);
      MEMORY[0x266772770](*(v11 + 16));
      v13 = *(v11 + 16);
      if (v13)
      {
        v14 = (v11 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;

          String.hash(into:)();

          v14 += 2;
          --v13;
        }

        while (v13);
      }

      ++v6;
      Hasher._combine(_:)(v12);
      MEMORY[0x266772770](v19);
    }

    while (v6 != v18);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x266772770](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[7];
      v36 = v5[6];
      v37 = v6;
      v7 = v5[9];
      v38 = v5[8];
      v39 = v7;
      v8 = v5[3];
      v32 = v5[2];
      v33 = v8;
      v9 = v5[5];
      v34 = v5[4];
      v35 = v9;
      v10 = v5[1];
      v30 = *v5;
      v31 = v10;
      outlined init with copy of NodeDef.Availability(&v30, v29);
      String.hash(into:)();

      if (BYTE10(v37))
      {
        v11 = 1;
        goto LABEL_8;
      }

      v12 = *(&v30 + 1);
      v14 = v31;
      v13 = v32;
      v15 = BYTE8(v32);
      v22 = v33;
      v23 = v34;
      v18 = *(&v33 + 1);
      v19 = *(&v34 + 1);
      v24 = v35;
      v16 = BYTE1(v35);
      v25 = *(&v35 + 1);
      v26 = BYTE8(v36);
      v20 = v36;
      v21 = v37;
      v27 = BYTE8(v37);
      v28 = BYTE9(v37);
      v17 = BYTE9(v32);
      MEMORY[0x266772770](0);
      if (v17)
      {
        Hasher._combine(_:)(0);
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v12);
        if (BYTE8(v14))
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v14);
        }

        if (v15)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v13);
        }

        if (v16)
        {
LABEL_12:
          Hasher._combine(_:)(0);
          if (v28)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }
      }

      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v22);
      if (v23)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v18);
      }

      if (v24)
      {
        Hasher._combine(_:)(0);
        if (v28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v19);
        if (v28)
        {
          goto LABEL_30;
        }
      }

LABEL_28:
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v25);
      if (v26)
      {
        Hasher._combine(_:)(0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v20);
        if ((v27 & 1) == 0)
        {
LABEL_34:
          Hasher._combine(_:)(1u);
          v11 = v21;
LABEL_8:
          MEMORY[0x266772770](v11);
          if (!*(&v38 + 1))
          {
            goto LABEL_3;
          }

          goto LABEL_31;
        }
      }

LABEL_30:
      Hasher._combine(_:)(0);
      if (!*(&v38 + 1))
      {
LABEL_3:
        Hasher._combine(_:)(0);
        if (!*(&v39 + 1))
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

LABEL_31:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (!*(&v39 + 1))
      {
LABEL_32:
        Hasher._combine(_:)(0);
        goto LABEL_5;
      }

LABEL_4:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_5:
      result = outlined destroy of NodeDef.Availability(&v30);
      v5 += 10;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v28 = v4;
  if (v4)
  {
    v6 = 0;
    v27 = a2 + 32;
    do
    {
      v7 = (v27 + (v6 << 6));
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[4];
      v33 = v7[3];
      v34 = v7[5];
      v12 = v7[6];
      v13 = *(v7 + 56);

      String.hash(into:)();
      swift_beginAccess();
      v14 = *(v10 + 16);
      v15 = *(v14 + 16);
      MEMORY[0x266772770](v15);
      v36 = v15;
      if (v15)
      {
        v29 = v13;
        v30 = v12;
        v31 = v11;
        v32 = v6;
        v35 = v14 + 32;

        v16 = 0;
        do
        {
          v17 = (v35 + 48 * v16);
          v18 = *v17;
          v19 = v17[1];
          v21 = v17[2];
          v20 = v17[3];
          v22 = *(v17 + 32);
          v37 = v17[5];

          String.hash(into:)();
          (*(*v21 + 120))(a1);
          MEMORY[0x266772770](*(v20 + 16));
          v23 = *(v20 + 16);
          if (v23)
          {
            v24 = (v20 + 40);
            do
            {
              v25 = *(v24 - 1);
              v26 = *v24;

              String.hash(into:)();

              v24 += 2;
              --v23;
            }

            while (v23);
          }

          ++v16;
          Hasher._combine(_:)(v22);
          MEMORY[0x266772770](v37);
        }

        while (v16 != v36);

        v6 = v32;
        v12 = v30;
        v11 = v31;
        v13 = v29;
      }

      if (v11)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v12)
        {
LABEL_17:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:
      ++v6;
      Hasher._combine(_:)(v13);
    }

    while (v6 != v28);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  if (v4)
  {
    v6 = (a2 + 80);
    do
    {
      v7 = *(v6 - 5);
      v9 = *(v6 - 4);
      v8 = *(v6 - 3);
      v10 = *(v6 - 2);
      v11 = *(v6 - 8);
      v13 = v10;
      v14 = *v6;
      MEMORY[0x266772770](*(v6 - 6));
      v12 = *(*v7 + 120);

      v12(a1);
      String.hash(into:)();
      if (v11 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v13);
      }

      v6 += 7;
      MEMORY[0x266772770](v14);

      --v4;
    }

    while (v4);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v28 = v4;
  if (v4)
  {
    v6 = 0;
    v27 = a2 + 32;
    do
    {
      v33 = v6;
      v7 = v27 + 48 * v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v29 = *(v7 + 32);
      v30 = *(v7 + 24);
      v31 = *(v7 + 40);
      outlined copy of NodePersonality(*v7);

      v32 = v9;
      NodePersonality.hash(into:)(a1, v9);
      MEMORY[0x266772770](*(v8 + 16));
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = (v8 + 80);
        do
        {
          v13 = *(v12 - 5);
          v14 = *(v12 - 4);
          v15 = *(v12 - 3);
          v16 = *(v12 - 2);
          v17 = *(v12 - 8);
          v34 = v16;
          v36 = *v12;
          MEMORY[0x266772770](*(v12 - 6));
          v18 = *(*v13 + 120);

          v18(a1);
          String.hash(into:)();
          if (v17 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v34);
          }

          v12 += 7;
          MEMORY[0x266772770](v36);

          --v11;
        }

        while (v11);
      }

      MEMORY[0x266772770](*(v10 + 16));
      v19 = *(v10 + 16);
      if (v19)
      {
        v20 = (v10 + 80);
        do
        {
          v21 = *(v20 - 5);
          v22 = *(v20 - 4);
          v23 = *(v20 - 3);
          v24 = *(v20 - 2);
          v25 = *(v20 - 8);
          v35 = v24;
          v37 = *v20;
          MEMORY[0x266772770](*(v20 - 6));
          v26 = *(*v21 + 120);

          v26(a1);
          String.hash(into:)();
          if (v25 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v35);
          }

          v20 += 7;
          MEMORY[0x266772770](v37);

          --v19;
        }

        while (v19);
      }

      MEMORY[0x266772770](v30);
      if (v31)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v29);
      }

      outlined consume of NodePersonality(v32);

      v6 = v33 + 1;
    }

    while (v33 + 1 != v28);
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v33 = v4;
  if (v4)
  {
    v6 = 0;
    v32 = a2 + 32;
    while (1)
    {
      v35 = v6;
      v7 = (v32 + 88 * v6);
      v9 = *v7;
      v8 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = v7[5];
      v13 = v7[6];
      v40 = v11;
      v42 = v10;
      v43 = v7[4];
      v14 = v7[9];
      v41 = v7[10];
      v37 = *v7;
      v38 = v7[8];
      v36 = v8;
      v39 = v7[7];
      if (v43)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v9);
        MEMORY[0x266772770](v8);
        v15 = v11 >> 62;
        v16 = v11;
        if (v11 >> 62)
        {
          v17 = v9;
          v18 = v14;
          if (v15 == 1)
          {
            v19 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v49 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v50 = v19;
            v48 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v20 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v57 = *(&v49 + 1);
            v58 = v19;
            v56 = v20;
            v21 = v16;
            MEMORY[0x266772770](1);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v17, v8, v21, v42, v43);

            v22 = v39;

            outlined init with copy of String(&v56, v44);
            outlined init with copy of [Input](&v57, v44, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
            outlined init with copy of [Input](&v58, v44, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
            outlined init with copy of [Input](&v58 + 8, v44, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
            SGDataTypeGraph.hash(into:)(a1);
            outlined destroy of String(&v56);
            outlined destroy of [Input](&v57, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
            outlined destroy of [Input](&v58, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
            v18 = v14;
            outlined destroy of [Input](&v58 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
          }

          else
          {
            v24 = v8;
            v25 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v26 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
            v53 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            v54 = v26;
            v55 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
            v27 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v51 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v52 = v27;
            MEMORY[0x266772770](2);
            MEMORY[0x266772770](v25);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v17, v24, v40, v42, v43);

            v22 = v39;

            SGDataTypeStorage.hash(into:)();
          }
        }

        else
        {
          v23 = *(v11 + 32);
          v45 = *(v11 + 16);
          v46 = v23;
          v47 = *(v11 + 48);
          v59 = v45;
          v60 = v23;
          v61[0] = v47;
          MEMORY[0x266772770](0);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, v8, v11, v10, v43);

          v22 = v39;

          outlined init with copy of String(&v59, v44);
          outlined init with copy of [Input](&v60, v44, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
          outlined init with copy of [Input](&v60 + 8, v44, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
          outlined init with copy of MaterialXAvailability(v61, v44);
          BuiltInDefinition.hash(into:)();
          outlined destroy of String(&v59);
          v18 = v14;
          outlined destroy of [Input](&v60, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
          outlined destroy of [Input](&v60 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
          outlined destroy of MaterialXAvailability(v61);
        }

        String.hash(into:)();
      }

      else
      {
        v34 = v7[9];
        Hasher._combine(_:)(0);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, v8, v11, v10, 0);

        v18 = v34;

        v22 = v39;
      }

      v28 = *(v22 + 16);
      MEMORY[0x266772770](v28);

      if (v28)
      {
        break;
      }

LABEL_3:

      ++v6;
      specialized OrderedDictionary<>.hash(into:)(a1, v18, v41);
      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v37, v36, v40, v42, v43);

      if (v35 + 1 == v33)
      {
        return result;
      }
    }

    v29 = 0;
    while (v29 < *(v13 + 16))
    {
      v30 = *(v13 + 32 + 8 * v29);
      v31 = *(v22 + 32 + 8 * v29++);
      MEMORY[0x266772770](v30);

      specialized Set.hash(into:)(a1, v31);
      v18 = v14;

      if (v28 == v29)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    v12 = *(a1 + 32);
    v21 = *(a1 + 16);
    v22 = v12;
    v23 = *(a1 + 48);
    if (!(a2 >> 62))
    {
      v13 = *(a2 + 32);
      v26 = *(a2 + 16);
      v27 = v13;
      v28 = *(a2 + 48);
      v11 = specialized static BuiltInDefinition.== infix(_:_:)(&v21, &v26);
      return v11 & 1;
    }

LABEL_19:
    v11 = 0;
    return v11 & 1;
  }

  if (a1 >> 62 != 1)
  {
    v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v23 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v24 = v15;
    v25 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
    v16 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v21 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v22 = v16;
    if (a2 >> 62 == 2)
    {
      v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v28 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v29 = v18;
      v30 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v27 = v19;
      if (v14 == v17)
      {
        v11 = specialized static SGDataTypeStorage.== infix(_:_:)(&v21, &v26);
        return v11 & 1;
      }
    }

    goto LABEL_19;
  }

  if (a2 >> 62 != 1 || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
  {
    goto LABEL_19;
  }

  v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  if (*((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20))
  {
    v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(v3, v5) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(v2, v6) & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(v4, v7);

  if ((v10 & 1) == 0)
  {
    goto LABEL_19;
  }

  v11 = 1;
  return v11 & 1;
}

BOOL specialized static SGDataTypeGraph.TopologicalSort.Element.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v7 = a2[4];
  if ((specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(a1[2], a2[2]) & 1) == 0 || (v2 != v5 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  if (a1[6] != a2[6] || a1[7] != a2[7])
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = a2;
    v8 = a1;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(v9 + 72);
  if (v8[9])
  {
    if (!*(v9 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v8[8] != v9[8])
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return v8[10] == v9[10];
}

uint64_t specialized static SGDataTypeGraph.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(a1[3], a2[3]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(v5, v6);
}

unint64_t specialized SGDataTypeGraph.Personality.input(at:)(unint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return 0x64696C61766E69;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v2 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    if (*(v2 + 16) > result)
    {
LABEL_8:
      v3 = v2 + 32 * result;
      v5 = *(v3 + 32);
      v4 = *(v3 + 40);
      v6 = *(v3 + 48);
      v7 = *(v3 + 56);

      return v5;
    }

    __break(1u);
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(a2 + 32);
  if (*(v2 + 16) > result)
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t specialized SGDataTypeGraph.Personality.output(at:)(unint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      return 7632239;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v2 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    if (*(v2 + 16) > result)
    {
LABEL_8:
      v3 = (v2 + 24 * result);
      v4 = v3[4];
      v5 = v3[5];
      v6 = v3[6];

      return v4;
    }

    __break(1u);
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(a2 + 40);
  if (*(v2 + 16) > result)
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  v18 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v17 = a1 + 32;
  while (1)
  {
    v6 = (v17 + 24 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = (v19 + 32);
    v11 = *(v19 + 16);
    if (v11)
    {
      break;
    }

LABEL_6:

    specialized OrderedSet._appendNew(_:in:)(v8, 0);
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v14 + 1;
    v15 = v4 + 16 * v14;
    *(v15 + 32) = v7;
    *(v15 + 40) = v9;
    if (v5 == v18)
    {
      return 0;
    }
  }

  while (1)
  {
    v12 = *v10++;
    if (v12 == v8)
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.Personality.debugDescription.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v1 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

      MEMORY[0x266771550](v1, v2);

      MEMORY[0x266771550](41, 0xE100000000000000);
      return 0x706172476C6C6163;
    }

    else
    {
      v6 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v12 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v9 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v10 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v8 = SGDataTypeStorage.valueString.getter();
      MEMORY[0x266771550](8250, 0xE200000000000000);
      v7 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v7);

      return v8;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);

    return v5;
  }
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA0aB4NodeV2IDV_AA04UserB0V8AdjacentVSayAK_AOtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA0aB4NodeV2IDVG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  v22 = v3;
  if (v3)
  {
    v5 = 0;
    v21 = a1 + 32;
    do
    {
      v6 = (v21 + 56 * v5);
      v8 = v6[5];
      v7 = v6[6];
      v10 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v13 = *v6;
      v12 = v6[1];

      if (!v10)
      {
        break;
      }

      v23 = v9;
      v24 = v8;
      v14 = (v25 + 32);
      v15 = *(v25 + 16);
      if (v15)
      {
        while (1)
        {
          v16 = *v14++;
          if (v16 == v13)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_7:
      specialized OrderedSet._appendNew(_:in:)(v13, 0);
      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v18 + 1;
      v19 = (v4 + 48 * v18);
      v19[4] = v12;
      v19[5] = v10;
      v19[6] = v23;
      v19[7] = v11;
      v19[8] = v24;
      v19[9] = v7;
    }

    while (v5 != v22);
  }

  return 0;
}

__n128 specialized SGDataTypeGraph.argumentsNode.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = specialized Graph.nodes.getter(a1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 64);
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *(v5 - 2);
      if (!(v7 >> 62))
      {
        v11 = *(v5 - 1);
        v12 = *(v5 - 2);
        v8 = *v5;
        v9 = *(v7 + 16) == 0x656D756772615F5FLL && *(v7 + 24) == 0xEB0000000073746ELL;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v5 += 5;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v8 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  result = v12;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v8;
  return result;
}

__n128 specialized SGDataTypeGraph.resultNode.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = specialized Graph.nodes.getter(a1);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 64);
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *(v5 - 2);
      if (!(v7 >> 62))
      {
        v11 = *(v5 - 1);
        v12 = *(v5 - 2);
        v8 = *v5;
        v9 = *(v7 + 16) == 0x746C757365725F5FLL && *(v7 + 24) == 0xE900000000000073;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v5 += 5;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v8 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  result = v12;
  *a2 = v12;
  *(a2 + 16) = v11;
  *(a2 + 32) = v8;
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_ShyAA0B5IndexVGSaySi_AJtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = (a1 + 32 + 16 * v5);
    v7 = *v6;
    v14 = v6[1];
    v8 = (v15 + 32);
    v9 = *(v15 + 16);
    if (v9)
    {
      break;
    }

LABEL_6:

    specialized OrderedSet._appendNew(_:in:)(v7, 0);
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v12 + 1;
    *(v4 + 8 * v12 + 32) = v14;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = *v8++;
    if (v10 == v7)
    {
      break;
    }

    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_AA0B5IndexVSgSaySi_AJtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v16 = a1 + 32;
  while (1)
  {
    v6 = v16 + 32 * v5;
    v7 = *v6;
    v17 = *(v6 + 8);
    v8 = *(v6 + 24);
    v9 = (v18 + 32);
    v10 = *(v18 + 16);
    if (v10)
    {
      break;
    }

LABEL_6:
    specialized OrderedSet._appendNew(_:in:)(v7, 0);
    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v13 + 1;
    v14 = v4 + 24 * v13;
    *(v14 + 32) = v17;
    *(v14 + 48) = v8;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = *v9++;
    if (v11 == v7)
    {
      break;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph0B0V8AdjacentVyAEyx_GAC4NodeVyx_GcfCAA010SGDataTypeB0V11PersonalityV_Tt0g5Tf4g_n@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 16);
  v53[0] = *a1;
  v53[1] = v4;
  v54 = *(a1 + 32);
  if (!(v3 >> 62))
  {
    v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28) + 16);
    MEMORY[0x28223BE20](a1);
    v49 = v53;
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v48, 0, v13);
    v9 = v8;
    v10 = *(v11 + 32);
    goto LABEL_5;
  }

  if (v3 >> 62 == 1)
  {
    v5 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v6 = *(*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x30) + 16);
    MEMORY[0x28223BE20](a1);
    v49 = v53;
    v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v48, 0, v7);
    v9 = v8;
    v10 = *(v5 + 40);
LABEL_5:
    v14 = *(v10 + 16);
    goto LABEL_7;
  }

  MEMORY[0x28223BE20](a1);
  v49 = v53;
  v8 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v48, 0, 1);
  v9 = v8;
LABEL_7:
  MEMORY[0x28223BE20](v8);
  v49 = v53;
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #2 in Graph.Adjacent.init(_:), v48, 0, v15);
  v17 = *(v9 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v52 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v19 = v52;
    v20 = *(v52 + 16);
    v21 = 16 * v20;
    v22 = 40;
    v23 = MEMORY[0x277D84FA0];
    do
    {
      v24 = *(v9 + v22);
      v52 = v19;
      v25 = *(v19 + 24);
      v26 = v20 + 1;
      if (v20 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v20 + 1, 1);
        v19 = v52;
      }

      *(v19 + 16) = v26;
      v27 = v19 + v21;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      v21 += 16;
      v22 += 16;
      v20 = v26;
      --v17;
    }

    while (v17);

    v18 = MEMORY[0x277D84F90];
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v28 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_ShyAA0B5IndexVGSaySi_AJtGTt0g5Tf4g_n(v19);
  v30 = v29;
  v32 = v31;

  v33 = *(v16 + 16);
  if (v33)
  {
    v50 = v30;
    v51 = v28;
    v52 = v18;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33, 0);
    v34 = v52;
    v35 = *(v52 + 16);
    v36 = 32 * v35;
    v37 = 40;
    do
    {
      v38 = *(v16 + v37);
      v52 = v34;
      v39 = *(v34 + 24);
      v40 = v35 + 1;
      if (v35 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v35 + 1, 1);
        v34 = v52;
      }

      *(v34 + 16) = v40;
      v41 = v34 + v36;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 32) = v38;
      v36 += 32;
      v37 += 16;
      v35 = v40;
      *(v41 + 56) = 1;
      --v33;
    }

    while (v33);

    v30 = v50;
    v28 = v51;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v42 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_AA0B5IndexVSgSaySi_AJtGTt0g5Tf4g_n(v34);
  v44 = v43;
  v46 = v45;

  *a2 = v28;
  a2[1] = v30;
  a2[2] = v32;
  a2[3] = v42;
  a2[4] = v44;
  a2[5] = v46;
  return result;
}

unint64_t specialized Graph.Node<>.output(named:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = result;
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      v13 = 0;
LABEL_22:
      result = specialized Graph.Node.subscript.getter(v13, a3, a4, v22);
      v12 = v22[0];
      v21 = v22[1];
      v20 = v23;
      goto LABEL_23;
    }

    v10 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v11 = *(v10 + 16);
    v12 = 0uLL;
    if (v11)
    {
      v13 = 0;
      v14 = (v10 + 40);
      while (*(v14 - 1) != v8 || *v14 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v13;
        v14 += 3;
        v12 = 0uLL;
        if (v11 == v13)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = *(a4 + 40);
    v17 = *(v16 + 16);
    v12 = 0uLL;
    if (v17)
    {
      v13 = 0;
      v18 = (v16 + 40);
      while (*(v18 - 1) != v8 || *v18 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v13;
        v18 += 3;
        v12 = 0uLL;
        if (v17 == v13)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_20:
  v20 = 0;
  v21 = 0uLL;
LABEL_23:
  *a5 = v12;
  *(a5 + 16) = v21;
  *(a5 + 32) = v20;
  return result;
}

unint64_t specialized Graph.Node<>.input(named:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = result;
  v10 = 0uLL;
  v22 = 0u;
  if (a4 >> 62)
  {
    if (a4 >> 62 == 1)
    {
      v11 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = (v11 + 40);
        while (*(v14 - 1) != v8 || *v14 != a2)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }

          ++v13;
          v14 += 4;
          if (v12 == v13)
          {
            goto LABEL_20;
          }
        }

LABEL_22:
        result = specialized Graph.Node.subscript.getter(v13, a3, a4, v23);
        v10 = v23[1];
        v22 = v23[0];
        v20 = v24;
        v21 = v25;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v16 = *(a4 + 32);
    v17 = *(v16 + 16);
    if (v17)
    {
      v13 = 0;
      v18 = (v16 + 40);
      while (*(v18 - 1) != v8 || *v18 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v13;
        v18 += 4;
        if (v17 == v13)
        {
LABEL_20:
          v20 = 0;
          v21 = 0;
          v10 = 0uLL;
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_23:
  *a5 = v22;
  *(a5 + 16) = v10;
  *(a5 + 32) = v20;
  *(a5 + 40) = v21;
  return result;
}

uint64_t specialized Graph.connect(_:_:)(unint64_t a1, uint64_t a2, unint64_t a3, Swift::Int a4)
{
  v8 = v5;
  v13 = *v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v14 = v13[2];
  if (v14 <= a1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = v13 + 4;
  v15 = &v13[11 * a1 + 4];
  v16 = specialized OrderedSet._append(_:)(a2);
  v7 = v17;
  v19 = *(v15 + 56);
  v6 = (v15 + 56);
  v18 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v18;
  v39 = a2;
  v40 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1);
    v18 = *v6;
  }

  v8 = v18[2];
  v14 = v18[3];
  a2 = v8 + 1;
  if (v8 >= v14 >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18[2] = a2;
    v18[v8 + 4] = MEMORY[0x277D84FA0];
    *v6 = v18;
    a2 = v39;
    v8 = v40;
LABEL_9:
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v18;
    if ((v21 & 1) == 0)
    {
      v18 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v18);
      *v6 = v18;
    }

    v22 = v18[v7 + 4];
    *v6 = v18;
    v41 = v22;
    specialized Set._Variant.insert(_:)(v42, a3, a4);
    v23 = *v6;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v23;
    if ((v24 & 1) == 0)
    {
      v23 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v23);
    }

    v14 = v41;
    v23[v7 + 4] = v41;
    *v6 = v23;
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v14 = v13[2];
    if (v14 > a3)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), a2, 1);
    v18 = *v6;
  }

  v25 = &v4[11 * a3];
  v26 = specialized OrderedSet._append(_:)(a4);
  v28 = v27;
  v31 = v25[10];
  v30 = (v25 + 10);
  v29 = v31;
  if (v26)
  {
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v29;
    if ((v32 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1);
      v29 = *v30;
    }

    v34 = *(v29 + 2);
    v33 = *(v29 + 3);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v29 = *v30;
    }

    *(v29 + 2) = v34 + 1;
    v35 = &v29[24 * v34];
    *(v35 + 4) = 0;
    *(v35 + 5) = 0;
    v35[48] = 1;
    *v30 = v29;
  }

  v36 = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v29;
  if ((v36 & 1) == 0)
  {
    v29 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v29);
  }

  *v30 = v29;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v29;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v29);
    v29 = result;
  }

  v38 = &v29[24 * v28];
  *(v38 + 4) = a1;
  *(v38 + 5) = a2;
  v38[48] = 0;
  *v30 = v29;
  *v8 = v13;
  return result;
}

uint64_t specialized SGDataTypeGraph.init(_:idSequence:constants:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v75 = a1;
  if (v7)
  {
    v85 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v10 = v85;
    v11 = (a3 + 40);
    do
    {
      v4 = *(v11 - 1);
      v12 = *v11;
      v85 = v10;
      v5 = *(v10 + 16);
      v13 = *(v10 + 24);

      if (v5 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v5 + 1, 1);
        v10 = v85;
      }

      *(v10 + 16) = v5 + 1;
      v14 = v10 + 16 * v5;
      *(v14 + 32) = v4;
      *(v14 + 40) = v12;
      v11 += 14;
      --v7;
    }

    while (v7);
    v15 = v75;
  }

  else
  {
    v15 = a1;
    v10 = MEMORY[0x277D84F90];
  }

  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v10);

  v17 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v18 = *(v15 + v17);
  if (v18 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v76 = i;
    v84 = v8;
    v20 = i & ~(i >> 63);

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v76;
    if (v76 < 0)
    {
      goto LABEL_79;
    }

    v22 = 0;
    v23 = v84;
    v72 = v18 + 32;
    v73 = v18 & 0xFFFFFFFFFFFFFF8;
    v6 = v16 + 56;
    v78 = v16 + 56;
    v79 = v18 & 0xC000000000000001;
    while (1)
    {
      v5 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v80 = v23;
      if (v79)
      {
        v24 = MEMORY[0x266772030]();
      }

      else
      {
        if (v22 >= *(v73 + 16))
        {
          goto LABEL_35;
        }

        v24 = *(v72 + 8 * v22);
      }

      v25 = v24;
      v15 = *&v24[OBJC_IVAR___SGInput_name];
      v4 = *&v24[OBJC_IVAR___SGInput_name + 8];
      v26 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      v27 = *&v25[v26];
      if (*(v16 + 16))
      {
        v28 = *(v16 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = -1 << *(v16 + 32);
        v31 = v29 & ~v30;
        if ((*(v6 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = (*(v16 + 48) + 16 * v31);
            v34 = *v33 == v15 && v33[1] == v4;
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v6 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v35 = v27;
          v8 = 1;
        }

        else
        {
LABEL_26:
          v35 = v27;
          v8 = 0;
        }

        v21 = v76;
      }

      else
      {
        v35 = *&v25[v26];

        v8 = 0;
      }

      v23 = v80;
      v84 = v80;
      v37 = *(v80 + 16);
      v36 = *(v80 + 24);
      v18 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v21 = v76;
        v23 = v84;
      }

      *(v23 + 16) = v18;
      v38 = v23 + 32 * v37;
      *(v38 + 32) = v15;
      *(v38 + 40) = v4;
      *(v38 + 48) = v35;
      *(v38 + 56) = v8;
      v22 = v5;
      v6 = v16 + 56;
      if (v5 == v21)
      {
        v80 = v23;

        v15 = v75;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v80 = MEMORY[0x277D84F90];
LABEL_38:
  v39 = OBJC_IVAR___SGGraph_outputs;
  swift_beginAccess();
  v40 = *(v15 + v39);
  if (v40 >> 62)
  {
    goto LABEL_77;
  }

  v8 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v41 = MEMORY[0x277D84F90];
    if (v8)
    {
      v83 = MEMORY[0x277D84F90];
      v42 = v40;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        goto LABEL_80;
      }

      v43 = 0;
      v5 = v83;
      v44 = v42;
      v78 = v42 & 0xC000000000000001;
      v79 = v42;
      do
      {
        if (v78)
        {
          v45 = MEMORY[0x266772030](v43, v44);
        }

        else
        {
          v45 = *(v44 + 8 * v43 + 32);
        }

        v46 = v45;
        v6 = *&v45[OBJC_IVAR___SGOutput_name];
        v47 = *&v45[OBJC_IVAR___SGOutput_name + 8];
        v48 = OBJC_IVAR___SGOutput_type;
        swift_beginAccess();
        v49 = *&v46[v48];

        v83 = v5;
        v15 = *(v5 + 16);
        v50 = *(v5 + 24);
        if (v15 >= v50 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v15 + 1, 1);
          v5 = v83;
        }

        ++v43;
        *(v5 + 16) = v15 + 1;
        v51 = (v5 + 24 * v15);
        v51[4] = v6;
        v51[5] = v47;
        v51[6] = v49;
        v44 = v79;
      }

      while (v8 != v43);

      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v8 = *&v75[OBJC_IVAR___SGGraph_name];
    v16 = *&v75[OBJC_IVAR___SGGraph_name + 8];
    v86 = v41;
    v4 = *a2;
    if (__OFADD__(*a2, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    ++*a2;
    v52 = OBJC_IVAR___SGGraph_nodes;
    swift_beginAccess();
    v53 = *&v75[v52];

    v55 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph6SGNodeCG_SO_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GtsAE_pTg504_s11d8Graph010hi104B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21FunctionConstantValueVGtKcfcSO_AA0m2V4g6VyAC11j7V_GtAA6F8CKXEfU1_SiAF0tU8SequenceVAKyAQGTf1cn_n(v54, v4, a2, &v86);
    if (v69)
    {
      break;
    }

    v57 = v55;

    if (*(v57 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
      v58 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v58 = MEMORY[0x277D84F98];
    }

    v82[0] = v58;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v59, 1, v82);

    v79 = v82[0];
    if (*(_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph21FunctionConstantValueVG_SS_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_Gts5NeverOTg504_s11d8Graph010jk70B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21fgh13VGtKcfcSS_AA0p2V4i6VyAC11L12V_GtAKXEfU2_SiAKyAQGTf1cn_n(a3, v4, &v86) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
      v60 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v60 = MEMORY[0x277D84F98];
    }

    v82[0] = v60;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v61, 1, v82);
    v15 = 0;

    v78 = v82[0];
    v62 = OBJC_IVAR___SGGraph_edges;
    swift_beginAccess();
    v6 = *&v75[v62];
    if (!(v6 >> 62))
    {
      v63 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_63;
    }

LABEL_81:
    v63 = __CocoaSet.count.getter();
LABEL_63:
    v74 = v4;
    v77 = v16;

    v75 = v75;

    if (!v63)
    {
LABEL_73:

      swift_bridgeObjectRelease_n();

      v66 = v86;
      *a4 = v74;
      a4[1] = v8;
      a4[2] = v77;
      a4[3] = v80;
      a4[4] = v5;
      a4[5] = v66;
      return result;
    }

    v16 = 0;
    v4 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x266772030](v16, v6);
      }

      else
      {
        if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v40 = *(v6 + 8 * v16 + 32);
      }

      v64 = v40;
      v65 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v81 = v40;
      closure #5 in SGDataTypeGraph.init(_:idSequence:constants:)(&v81, v79, a3, v75, v78, &v86);
      if (v15)
      {

        goto LABEL_54;
      }

      ++v16;
      if (v65 == v63)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v67 = v40;
    v8 = __CocoaSet.count.getter();
    v40 = v67;
  }

LABEL_54:
}

uint64_t specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      return 0x6870617267627573;
    }

    else
    {
      v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v8 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v9 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v22 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v21[0] = v6;
      v21[1] = v7;
      v21[2] = v8;
      v21[3] = v9;
      if (v22 == 6)
      {
        v11 = *(&v21[0] + 1);
        v12 = *&v21[0];
        v13 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
        v14 = *(a1 + 16);

        if (v14)
        {
          v15 = specialized __RawDictionaryStorage.find<A>(_:)(*&v21[0], *(&v21[0] + 1));
          if (v16)
          {
            v17 = (*(a1 + 56) + 16 * v15);
            v12 = *v17;
            v11 = v17[1];

            outlined destroy of SGDataTypeStorage(v21);
          }
        }

        v18 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v18);

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v12, v11);
      }

      else
      {
        v19 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v19);

        MEMORY[0x266771550](95, 0xE100000000000000);
        v20 = SGDataTypeStorage.valueString.getter();
        MEMORY[0x266771550](v20);
      }

      return 24419;
    }
  }

  else
  {
    v4 = *(a2 + 16);
    v3 = *(a2 + 24);

    return v4;
  }
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID);
  }

  return result;
}

unint64_t specialized Graph.connectedInputIndices(for:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(a2 + 16) > result)
  {
    v2 = (a2 + 88 * result);
    v3 = v2[12];
    v4 = v2[13];
    v5 = v2[14];
    v6 = *(v5 + 16);

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
LABEL_4:
    if (v7 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v7;
    }

    v10 = (v5 + 48 + 24 * v7);
    while (1)
    {
      if (v9 == v7)
      {

        return v8;
      }

      if (v7 >= *(v4 + 16))
      {
        break;
      }

      if (v7 >= *(v5 + 16))
      {
        goto LABEL_19;
      }

      ++v7;
      v11 = v10 + 24;
      v12 = *v10;
      v10 += 24;
      if ((v12 & 1) == 0)
      {
        v15 = *(v11 - 40);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v14 + 1;
        *(v8 + 16 * v14 + 32) = v15;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *specialized SGDataTypeGraph.subgraphNodes()(uint64_t a1)
{
  specialized SGDataTypeGraph.resultNode.getter(a1, v32);
  v2 = v33;
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMR);
    v3 = swift_allocObject();
    v4 = v32[1];
    *(v3 + 32) = v32[0];
    *(v3 + 48) = v4;
    *(v3 + 16) = xmmword_265F1F670;
    *(v3 + 64) = v2;

    outlined destroy of [Input](v32, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  *&v27 = a1;
  *(&v27 + 1) = v3;
  *&v28 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
  *(&v28 + 1) = v6;
  *&v29 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v5);
  *(&v29 + 1) = v7;
  *&v30 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v5);
  *(&v30 + 1) = v8;
  v31 = v9;
  v24 = v29;
  v25 = v30;
  v26 = v9;
  v22 = v27;
  v23 = v28;
  outlined init with copy of [Input](&v27, v20, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  specialized ShallowDepthFirstNodeIterator.next()(&v34);
  v10 = v38;
  if (v38)
  {
    v11 = v36;
    v12 = v37;
    v13 = v35;
    while (v11 >> 62 == 1)
    {
      v14 = v10;
LABEL_11:
      v15 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v17 = v5[2];
      v16 = v5[3];
      if (v17 >= v16 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
      }

      v5[2] = v17 + 1;
      v18 = &v5[5 * v17];
      v18[4] = v15;
      v18[5] = v13;
      v18[6] = v11;
      v18[7] = v12;
      v18[8] = v14;
      specialized ShallowDepthFirstNodeIterator.next()(&v34);
      v13 = v35;
      v11 = v36;
      v12 = v37;
      v10 = v38;
      if (!v38)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {

      specialized ShallowDepthFirstNodeIterator.next()(&v34);
      if (!v38)
      {
        break;
      }

      v11 = v36;
      if (v36 >> 62 == 1)
      {
        v14 = v38;
        v13 = v35;
        v12 = v37;
        goto LABEL_11;
      }
    }
  }

LABEL_16:
  outlined destroy of [Input](&v27, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  v20[2] = v24;
  v20[3] = v25;
  v21 = v26;
  v20[0] = v22;
  v20[1] = v23;
  outlined destroy of [Input](v20, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  return v5;
}

uint64_t specialized SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(uint64_t *a1, uint64_t a2)
{
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SS_SSts5NeverOTg5149_s11ShaderGraph010SGDataTypeB0V18structuralEdgeList15topologicalSort14textureMappingSaySSGAC011TopologicalI0V_SDyS2SGtKFSS_SStSS3key_SS5valuet_tXEfU_Tf1cn_n(a2);
  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  *&v27[0] = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, 1, v27);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v6 = *&v27[0];
    v7 = *a1;
    v8 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = v7 + 32;
      do
      {
        v11 = *(v10 + 16);
        v27[0] = *v10;
        v27[1] = v11;
        v12 = *(v10 + 32);
        v13 = *(v10 + 48);
        v14 = *(v10 + 64);
        v28 = *(v10 + 80);
        v27[3] = v13;
        v27[4] = v14;
        v27[2] = v12;
        v15 = *(v10 + 48);
        v23 = *(v10 + 32);
        v24 = v15;
        v25 = *(v10 + 64);
        v26 = *(v10 + 80);
        v16 = *(v10 + 16);
        v21 = *v10;
        v22 = v16;
        outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(v27, v18);
        closure #3 in SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(&v21, a1, v6, &v20);
        v18[2] = v23;
        v18[3] = v24;
        v18[4] = v25;
        v19 = v26;
        v18[0] = v21;
        v18[1] = v22;
        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(v18);
        specialized Array.append<A>(contentsOf:)(v20);
        v10 += 88;
        --v9;
      }

      while (v9);
      v8 = v29;
    }

    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph and conformance SGDataTypeGraph()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph and conformance SGDataTypeGraph;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph and conformance SGDataTypeGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph and conformance SGDataTypeGraph);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SGDataTypeGraph.Personality(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.PersonalityKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.PersonalityKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}