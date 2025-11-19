void *specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
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
  return specialized _NativeDictionary.copy()(MEMORY[0x277D5DA48], &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C18_Nlu_External_SpanVGMR);
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMd, &_ss18_DictionaryStorageCySS12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    v16 = *(v6 + 64);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v17 = v15 & v16;
    v18 = (v14 + 63) >> 6;
    if ((v15 & v16) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        outlined init with copy of MediaUserStateCenter?(*(v6 + 56) + v28, v32, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    v8 = v34;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySDyS2SGGGMd, &_ss18_DictionaryStorageCySSSaySDyS2SGGGMR);
}

{
  v1 = v0;
  v2 = type metadata accessor for PommesDialogStateManager.DialogValue();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch24PommesDialogStateManagerC0G5Value33_DDAE567450B270DABF8F98FB8100F132LLVGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        outlined init with copy of PommesBridgeResultCandidateState(*(v6 + 56) + v28, v32, type metadata accessor for PommesDialogStateManager.DialogValue);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        outlined init with take of PommesBridgeResultCandidateState(v27, *(v29 + 56) + v28, type metadata accessor for PommesDialogStateManager.DialogValue);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch7AppDataVGMR);
  v29 = v0;
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
        v17 = 16 * v16;
        v18 = (*(v1 + 48) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        v16 *= 40;
        v21 = (*(v1 + 56) + v16);
        v23 = *v21;
        v22 = v21[1];
        v24 = v21[2];
        v25 = v21[3];
        v26 = v21[4];
        v27 = (*(v3 + 48) + v17);
        *v27 = v19;
        v27[1] = v20;
        v28 = (*(v3 + 56) + v16);
        *v28 = v23;
        v28[1] = v22;
        v28[2] = v24;
        v28[3] = v25;
        v28[4] = v26;
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

    *v29 = v3;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMd, &_ss18_DictionaryStorageCySS8Dispatch0C13TimeoutResultOGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch21DomainAffinityKVStoreCGMR);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSDySSSfGGMd, &_ss18_DictionaryStorageCySSSDySSSfGGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSaySSGGMd, &_ss18_DictionaryStorageCySSSaySSGGMR);
}

{
  v1 = v0;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v31, v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMd, &_ss18_DictionaryStorageCy10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeOSfGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v26 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v5 + 64;
    for (i = v33 + 32; v14; *(*(v25 + 56) + 4 * v19) = v24)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = v33;
      v21 = *(v33 + 72) * v19;
      v22 = v30;
      v23 = v31;
      (*(v33 + 16))(v30, *(v5 + 48) + v21, v31);
      v24 = *(*(v5 + 56) + 4 * v19);
      v25 = v32;
      result = (*(v20 + 32))(*(v32 + 48) + v21, v22, v23);
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

        v1 = v26;
        v7 = v32;
        goto LABEL_18;
      }

      v18 = *(v27 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSaySSGGMR);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMd, &_ss18_DictionaryStorageCy21SiriInformationSearch19OnScreenContextTypeOSSGMR);
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
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
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMd, &_ss18_DictionaryStorageCySSSay20SiriInformationTypes15WarmupComponentOGGMR);
}

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMd, &_ss18_DictionaryStorageCySSSo15StateCacheEntryCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo12NSDictionaryCGMd, &_ss18_DictionaryStorageCySSSo12NSDictionaryCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch18AudioItemCandidateCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMd, &_ss18_DictionaryStorageCySS21SiriInformationSearch12PommesResultCGMR);
}

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v45 = a1(0);
  v47 = *(v45 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v45, v8);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *v3;
  v11 = static _DictionaryStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v6;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v12;
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
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        LOBYTE(v20) = *(*(v4 + 56) + v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + v19) = v20;
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for PommesBridgeResultCandidateState(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PommesCandidateId();
  v41 = *(v38 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v38, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMd, &_ss18_DictionaryStorageCy20SiriInformationTypes17PommesCandidateIdO0cD6Search0f12BridgeResultG5StateVGMR);
  v9 = *v0;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = v41;
        v27 = *(v41 + 72) * v25;
        v28 = v38;
        (*(v41 + 16))(v21, *(v9 + 48) + v27, v38);
        v29 = v39;
        v30 = *(v40 + 72) * v25;
        outlined init with copy of PommesBridgeResultCandidateState(*(v9 + 56) + v30, v39, type metadata accessor for PommesBridgeResultCandidateState);
        v31 = v42;
        (*(v26 + 32))(*(v42 + 48) + v27, v21, v28);
        result = outlined init with take of PommesBridgeResultCandidateState(v29, *(v31 + 56) + v30, type metadata accessor for PommesBridgeResultCandidateState);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DDFA80](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SiriInformationSearch19AudioTypeFeaturiserC13ExactMatchKey33_F1B61A3F9E84F78A1DE0179177191518LLV_SayAIGTt0g5Tf4g_n(uint64_t a1)
{
  matched = type metadata accessor for AudioTypeFeaturiser.ExactMatchKey(0);
  v3 = *(matched - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](matched, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v17 - v10;
  v12 = *(a1 + 16);
  v13 = lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type AudioTypeFeaturiser.ExactMatchKey and conformance AudioTypeFeaturiser.ExactMatchKey, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
  result = MEMORY[0x223DDFA80](v12, matched, v13);
  v18 = result;
  if (v12)
  {
    v15 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v16 = *(v3 + 72);
    do
    {
      outlined init with copy of PommesBridgeResultCandidateState(v15, v8, type metadata accessor for AudioTypeFeaturiser.ExactMatchKey);
      specialized Set._Variant.insert(_:)(v11, v8);
      outlined destroy of AudioTypeFeaturiser.ExactMatchKey(v11);
      v15 += v16;
      --v12;
    }

    while (v12);
    return v18;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for LNSystemProtocol();
    v5 = lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(&lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject, type metadata accessor for LNSystemProtocol);
    result = MEMORY[0x223DDFA80](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223DDFF80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t outlined init with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of PommesBridgeResultCandidateState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PommesBridgeResultCandidateState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t static SearchProxy.defaultRRClient()@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = NSProcessInfo.isRunningUnitTests.getter();

  if (v3)
  {
    v4 = &type metadata for EmptyReferenceResolver;
    result = lazy protocol witness table accessor for type EmptyReferenceResolver and conformance EmptyReferenceResolver();
  }

  else
  {
    v4 = type metadata accessor for ReferenceResolutionClient();
    *a1 = ReferenceResolutionClient.__allocating_init()();
    result = MEMORY[0x277D5FDD8];
  }

  a1[3] = v4;
  a1[4] = result;
  return result;
}

uint64_t SearchProxy.addGenerativeModelSupport(to:)()
{
  type metadata accessor for SiriEnvironment();
  static SiriEnvironment.default.getter();
  SiriEnvironment.currentDevice.getter();

  v0 = MEMORY[0x223DDF550](0xD000000000000024, 0x80000002234DBDD0);
  MGGetBoolAnswer();

  if (AFIsInternalInstall())
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD00000000000002CLL, 0x80000002234DFC10);
      v5 = [v3 BOOLForKey_];

      if (v5)
      {
        if (one-time initialization token for overrides != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        __swift_project_value_buffer(v6, static Logger.overrides);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          MEMORY[0x223DE0F80](v9, -1, -1);
        }
      }
    }
  }

  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
  Apple_Parsec_Search_PegasusQueryContext.isGenerativeModelDevice.setter();
  return v10(&v12, 0);
}

uint64_t SearchProxy.appendClientEntities(_:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v11 - 8) + 16))(a3, a2, v11);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v52[0] = v45;
    *v15 = 136315138;
    v16 = *(a1 + 16);
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v40 = v15;
      v41 = v14;
      v42 = v13;
      v43 = a3;
      v51[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v51[0];
      v19 = *(v6 + 16);
      v18 = v6 + 16;
      v20 = *(v18 + 64);
      v44 = a1;
      v21 = a1 + ((v20 + 32) & ~v20);
      v46 = *(v18 + 56);
      v47 = v19;
      v48 = v18;
      v22 = (v18 - 8);
      do
      {
        v23 = v49;
        v47(v10, v21, v49);
        v24 = Apple_Parsec_Siri_Context_ClientEntity.summarizedDescription.getter();
        v26 = v25;
        (*v22)(v10, v23);
        v51[0] = v17;
        v28 = *(v17 + 16);
        v27 = *(v17 + 24);
        if (v28 >= v27 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v17 = v51[0];
        }

        *(v17 + 16) = v28 + 1;
        v29 = v17 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v21 += v46;
        --v16;
      }

      while (v16);
      a1 = v44;
      v13 = v42;
      LOBYTE(v14) = v41;
      v15 = v40;
    }

    v51[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v30 = BidirectionalCollection<>.joined(separator:)();
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v52);

    *(v15 + 4) = v33;
    _os_log_impl(&dword_2232BB000, v13, v14, "Adding client entities to request: [%s]", v15, 0xCu);
    v34 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x223DE0F80](v34, -1, -1);
    MEMORY[0x223DE0F80](v15, -1, -1);
  }

  v35 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.modify();
  v36 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.onDeviceContext.modify();
  v37 = Apple_Parsec_Siri_Context_OnDeviceContext.entities.modify();
  specialized Array.append<A>(contentsOf:)(a1);
  v37(v50, 0);
  v36(v51, 0);
  return v35(v52, 0);
}

void SearchProxy.addMAFStateFlags(to:dataProviderManager:)(uint64_t a1, id *a2)
{
  [a2[15] currentNavigationState];
  IsNavigating = AFNavigationStateIsNavigating();
  v5 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isNavigationMode.setter();
  v5(v34, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.pommes);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v9 = 136315138;
    if (IsNavigating)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (IsNavigating)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v34);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2232BB000, v7, v8, "Navigation mode: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x223DE0F80](v10, -1, -1);
    MEMORY[0x223DE0F80](v9, -1, -1);
  }

  v14 = AFDeviceSupportsSystemAssistantExperience();
  if (AFIsInternalInstall())
  {
    v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v16 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v17 = [v15 initWithSuiteName_];

    if (v17)
    {
      v18 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DFC40);
      v19 = [v17 BOOLForKey_];

      if (v19)
      {
        if (one-time initialization token for overrides != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v6, static Logger.overrides);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          MEMORY[0x223DE0F80](v22, -1, -1);
        }

        v14 = 1;
      }
    }
  }

  v23 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isSaeRequest.setter();
  v23(v34, 0);
  v24 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.modify();
  v25 = Apple_Parsec_Search_PegasusQueryContext.appleIntelligenceStatus.modify();
  Apple_Parsec_Search_AppleIntelligenceStatus.isEnabled.setter();
  v25(&v33, 0);
  v24(v34, 0);
  (*(*a2 + 64))(a1);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136315138;
    if (v14)
    {
      v30 = 1702195828;
    }

    else
    {
      v30 = 0x65736C6166;
    }

    if (v14)
    {
      v31 = 0xE400000000000000;
    }

    else
    {
      v31 = 0xE500000000000000;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v34);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2232BB000, v26, v27, "SAE request: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }
}

uint64_t SearchProxy.addDialogState(to:using:)(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 136))();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.pommes);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = *(v2 + 16);

    _os_log_impl(&dword_2232BB000, v4, v5, "Adding %{public}ld dialog state values to request", v6, 0xCu);
    MEMORY[0x223DE0F80](v6, -1, -1);
  }

  else
  {
  }

  v7 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.modify();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.dialogState.setter();
  return v7(&v9, 0);
}

uint64_t Apple_Parsec_Siri_Context_ClientEntity.summarizedDescription.getter()
{
  v42 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntityAlignment();
  v40 = *(v42 - 8);
  v0 = *(v40 + 64);
  MEMORY[0x28223BE20](v42, v1);
  v41 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntitySource();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity.ClientEntityType();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(107);
  MEMORY[0x223DDF6D0](0x7974202020200A7BLL, 0xEC000000203A6570);
  Apple_Parsec_Siri_Context_ClientEntity.type.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v10 + 8))(v14, v9);
  MEMORY[0x223DDF6D0](0x756F73202020200ALL, 0xED0000203A656372);
  Apple_Parsec_Siri_Context_ClientEntity.source.getter();
  _print_unlocked<A, B>(_:_:)();
  (*(v4 + 8))(v8, v3);
  MEMORY[0x223DDF6D0](0x6F6373202020200ALL, 0xEC000000203A6572);
  Apple_Parsec_Siri_Context_ClientEntity.score.getter();
  Double.write<A>(to:)();
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DFC60);
  v15 = Apple_Parsec_Siri_Context_ClientEntity.ontologyLabel.getter();
  MEMORY[0x223DDF6D0](v15);

  v16 = MEMORY[0x223DDF6D0](0xD000000000000025, 0x80000002234DFC80);
  v17 = MEMORY[0x223DDA830](v16);
  v18 = *(v17 + 16);
  if (v18)
  {
    v43 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v43;
    v21 = v40 + 16;
    v20 = *(v40 + 16);
    v22 = *(v40 + 80);
    v38 = v17;
    v23 = v17 + ((v22 + 32) & ~v22);
    v39 = *(v40 + 72);
    v40 = v20;
    v24 = (v21 - 8);
    do
    {
      v25 = v41;
      v26 = v42;
      v27 = (v40)(v41, v23, v42);
      v28 = MEMORY[0x223DDB770](v27);
      v30 = v29;
      (*v24)(v25, v26);
      v43 = v19;
      v32 = *(v19 + 16);
      v31 = *(v19 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v32 + 1;
      v33 = v19 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v23 += v39;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v34 = MEMORY[0x223DDF850](v19, MEMORY[0x277D837D0]);
  v36 = v35;

  MEMORY[0x223DDF6D0](v34, v36);

  MEMORY[0x223DDF6D0](32010, 0xE200000000000000);
  return v44;
}

uint64_t Siri_Nlu_External_UserParse.firstCallTask()()
{
  v2 = Siri_Nlu_External_Span.matcherNames.getter();
  v3 = specialized Sequence.flatMap<A>(_:)(v2);

  if (!v0)
  {
    if (v3 >> 62)
    {
      goto LABEL_18;
    }

    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v1 = MEMORY[0x223DDFF80](v5, v3);
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v1;
          }

LABEL_10:

          static UsoTask_CodegenConverter.convert(task:)();

          v8[0] = v8[2];
          v8[1] = v9;
          if (*(&v9 + 1))
          {
            type metadata accessor for UsoTask_call_common_PhoneCall();
            if (swift_dynamicCast())
            {
              goto LABEL_16;
            }
          }

          else
          {

            outlined destroy of Any?(v8);
          }

          ++v5;
          if (v6 == v4)
          {
            goto LABEL_19;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_18:
        v4 = __CocoaSet.count.getter();
        if (!v4)
        {
          goto LABEL_19;
        }
      }

      v1 = *(v3 + 8 * v5 + 32);

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

LABEL_19:

    return 0;
  }

  return v1;
}

BOOL UsoTask.isCallTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v5)
  {
    outlined destroy of Any?(v4);
    goto LABEL_5;
  }

  type metadata accessor for UsoTask_call_common_PhoneCall();
  if (!swift_dynamicCast())
  {
LABEL_5:
    v0 = 0;
    goto LABEL_6;
  }

  v0 = v3;
LABEL_6:
  v1 = v0 != 0;

  return v1;
}

uint64_t NSDictionary.arrayValue<A>(for:)()
{
  v1 = MEMORY[0x223DDF550]();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
    v3 = swift_dynamicCast();
    if (v3)
    {
      *&v10[0] = v7;
      MEMORY[0x28223BE20](v3, v4);
      lazy protocol witness table accessor for type [Any] and conformance [A]();
      v5 = Sequence.compactMap<A>(_:)();

      return v5;
    }
  }

  else
  {
    outlined destroy of Any?(v10);
  }

  return 0;
}

Swift::String_optional __swiftcall NSDictionary.stringValue(for:)(Swift::String a1)
{
  v2 = MEMORY[0x223DDF550](a1._countAndFlagsBits, a1._object);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (*(&v12 + 1))
  {
    v4 = swift_dynamicCast();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }
  }

  else
  {
    outlined destroy of Any?(v13);
    v6 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::Bool_optional __swiftcall NSDictionary.BOOLeanValue(for:)(Swift::String a1)
{
  v2 = MEMORY[0x223DDF550](a1._countAndFlagsBits, a1._object);
  v3 = [v1 objectForKey_];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(v8);
    return 2;
  }
}

uint64_t closure #1 in NSDictionary.arrayValue<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Any(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

unint64_t lazy protocol witness table accessor for type [Any] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Any] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Any] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayypGMd, &_sSayypGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Any] and conformance [A]);
  }

  return result;
}

uint64_t CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v95 = *(v98 - 8);
  v4 = *(v95 + 64);
  v6 = MEMORY[0x28223BE20](v98, v5);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v95 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v95 - v14;
  v103 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v107 = *(v103 - 8);
  v16 = *(v107 + 64);
  MEMORY[0x28223BE20](v103, v17);
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Siri_Nlu_External_UserParse();
  v19 = *(*(v106 - 8) + 64);
  MEMORY[0x28223BE20](v106, v20);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a3 + 16);
  v96 = v8;
  v97 = v12;
  v99 = v15;
  if (v25)
  {
    v27 = *(v21 + 16);
    v26 = v21 + 16;
    v28 = a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v104 = *(v26 + 56);
    v105 = v27;
    v29 = (v26 - 8);
    v108 = MEMORY[0x277D84F90];
    while (1)
    {
      v30 = v106;
      v31 = v26;
      (v105)(v24, v28, v106);
      v32 = Siri_Nlu_External_Span.matcherNames.getter();
      (*v29)(v24, v30);
      v33 = *(v32 + 16);
      v34 = v108[2];
      v35 = v34 + v33;
      if (__OFADD__(v34, v33))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v108;
      if (!isUniquelyReferenced_nonNull_native || v35 > v108[3] >> 1)
      {
        if (v34 <= v35)
        {
          v38 = v34 + v33;
        }

        else
        {
          v38 = v34;
        }

        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v38, 1, v108);
      }

      v39 = *(v32 + 16);
      v108 = v37;
      if (v39)
      {
        if ((v37[3] >> 1) - v37[2] < v33)
        {
          goto LABEL_64;
        }

        v40 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v41 = *(v107 + 72);
        swift_arrayInitWithCopy();

        v26 = v31;
        if (v33)
        {
          v42 = v108[2];
          v43 = __OFADD__(v42, v33);
          v44 = v42 + v33;
          if (v43)
          {
            goto LABEL_65;
          }

          v108[2] = v44;
        }
      }

      else
      {

        v26 = v31;
        if (v33)
        {
          goto LABEL_63;
        }
      }

      v28 += v104;
      if (!--v25)
      {
        goto LABEL_18;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v108 = MEMORY[0x277D84F90];
LABEL_18:
  v45 = MEMORY[0x277D84F90];
  *&v111 = MEMORY[0x277D84F90];
  v46 = v108[2];
  if (v46)
  {
    v33 = *(v107 + 16);
    v47 = v108 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v106 = *(v107 + 72);
    v100 = MEMORY[0x277D84F90];
    v107 += 16;
    v105 = (v107 - 8);
    *&v22 = 136315138;
    v101 = v22;
    v48 = v102;
    v25 = v103;
    v104 = v33;
    (v33)(v102, v47, v103);
    while (1)
    {
      v49 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      if (v49 >> 62)
      {
        v52 = v49;
        v53 = __CocoaSet.count.getter();
        v49 = v52;
        if (!v53)
        {
LABEL_31:

          (*v105)(v48, v25);
          goto LABEL_20;
        }
      }

      else if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      if ((v49 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DDFF80](0);
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v50 = *(v49 + 32);
      }

      v51 = (*v105)(v48, v25);
      MEMORY[0x223DDF820](v51);
      if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v54 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v33 = v104;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v100 = v111;
LABEL_20:
      v47 += v106;
      if (!--v46)
      {

        v45 = MEMORY[0x277D84F90];
        v25 = v100;
        goto LABEL_35;
      }

      (v33)(v48, v47, v25);
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_35:
  v126 = v45;
  v33 = v25 & 0xFFFFFFFFFFFFFF8;
  if (v25 >> 62)
  {
LABEL_67:
    v55 = __CocoaSet.count.getter();
    goto LABEL_37;
  }

  v55 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_37:
  v56 = 0;
  v57 = v25 & 0xC000000000000001;
  v108 = MEMORY[0x277D84F90];
  while (v55 != v56)
  {
    if (v57)
    {
      v58 = v25;
      v25 = MEMORY[0x223DDFF80](v56, v25);
      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v56 >= *(v33 + 16))
      {
        goto LABEL_61;
      }

      v58 = v25;
      v25 = *(v25 + 8 * v56 + 32);

      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    v60 = specialized CallBusinessNoResultsExperiencesResolver.convertToCommonPhoneCallEntity(task:)();

    ++v56;
    v25 = v58;
    if (v60)
    {
      MEMORY[0x223DDF820](v61);
      if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v62 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v25 = v58;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v108 = v126;
      v56 = v59;
    }
  }

  v63 = v108;
  *&v111 = v108;
  *(&v111 + 1) = closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v112 = 0;
  *(&v112 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  *&v113 = 0;
  *(&v113 + 1) = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  *&v114 = 0;
  *(&v114 + 1) = closure #5 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v115 = 0;
  *(&v115 + 1) = closure #6 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v116 = 0;
  *(&v116 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  *&v117 = 0;
  *(&v117 + 1) = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  *&v118 = 0;
  *(&v118 + 1) = closure #7 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v119 = 0;
  *(&v119 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  *&v120 = 0;
  *(&v120 + 1) = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  *&v121 = 0;
  *(&v121 + 1) = closure #8 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  *&v122 = 0;
  *(&v122 + 1) = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
  v123 = 0;
  v124 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
  v125 = 0;
  v133 = v117;
  v134 = v118;
  v139 = 0;
  v137 = v121;
  v138 = v122;
  v135 = v119;
  v136 = v120;
  v131 = v115;
  v132 = v116;
  v129 = v113;
  v130 = v114;
  v127 = v111;
  v128 = v112;
  v64 = specialized LazyFilterSequence<>.startIndex.getter();
  v66 = v65;
  v68 = v67;
  v109[0] = v63;
  v109[1] = closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:);
  v109[2] = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v70 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0060](&v110, v69, v70);
  v71 = v99;
  v72 = v97;
  if (v64 == v110 && (v68 & 1) != 0)
  {
    goto LABEL_54;
  }

  specialized FlattenSequence<>.subscript.getter(v64, v66, v68 & 1, v63, closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:), 0, specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:), 0, closure #5 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:));
  dispatch thunk of CodeGenListEntry.entry.getter();

  if (!v109[0])
  {
    __break(1u);
    goto LABEL_69;
  }

  v110 = v109[0];
  closure #7 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)(&v110);

  if (!v109[0])
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  dispatch thunk of UsoEntity_common_Person.name.getter();
  v75 = v74;

  if (!v75)
  {
LABEL_70:
    __break(1u);
    return result;
  }

LABEL_54:
  v76 = outlined destroy of MediaUserStateCenter?(&v111, &_ss15LazyMapSequenceVys0a6FilterC0VyAByAByADyAByAByADyABys07FlattenC0VyAByAByADyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAG16CodeGenListEntryCyAG0hi1_J6_AgentCGGSgGGAPGAPGGANSgGGANGAG0hi1_J7_PersonCSgGGA0_GSSSgGGSSGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyAByAByADyAByAByADyABys07FlattenC0VyAByAByADyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAG16CodeGenListEntryCyAG0hi1_J6_AgentCGGSgGGAPGAPGGANSgGGANGAG0hi1_J7_PersonCSgGGA0_GSSSgGGSSGMR);
  MEMORY[0x28223BE20](v76, v77);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v78 = v98;
  static Message.with(_:)();

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  __swift_project_value_buffer(v79, static Logger.pommes);
  v80 = v95;
  v81 = *(v95 + 16);
  v81(v72, v71, v78);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = v80;
    v86 = swift_slowAlloc();
    v109[0] = v86;
    *v84 = 136315138;
    v107 = Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.getter();
    v108 = v81;
    v88 = v87;
    v89 = *(v85 + 8);
    v89(v72, v98);
    v90 = v89;
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v88, v109);
    v81 = v108;

    *(v84 + 4) = v91;
    _os_log_impl(&dword_2232BB000, v82, v83, "Making PhoneCallExperience for CallBusinessNoResultsExperiencesResolver with phoneCall.name=%s", v84, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x223DE0F80](v86, -1, -1);
    v92 = v84;
    v78 = v98;
    MEMORY[0x223DE0F80](v92, -1, -1);
  }

  else
  {

    v90 = *(v80 + 8);
    v90(v72, v78);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_2234D0FE0;
  type metadata accessor for PhoneCallExperience();
  v94 = v99;
  v81(v96, v99, v78);
  *(v93 + 32) = PhoneCallExperience.__allocating_init(phoneCall:queryConfidenceScore:)();
  v90(v94, v78);
  return v93;
}

uint64_t closure #4 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of UsoEntity_common_PhoneCall.recipients.getter();
  *a2 = result;
  return result;
}

uint64_t closure #7 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)(uint64_t *a1)
{
  v1 = *a1;
  CodeGenBase.entity.getter();
  type metadata accessor for UsoEntity_common_Person();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();
}

uint64_t closure #8 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = dispatch thunk of UsoEntity_common_Person.name.getter();
  *a2 = result;
  a2[1] = v5;
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized LazyMapSequence<>.subscript.read(v4, a2);
  return protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>specialized ;
}

void protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>specialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*specialized LazyMapSequence<>.subscript.read(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x48uLL);
  }

  v6 = v5;
  *a1 = v5;
  v8 = *(v2 + 40);
  v7 = *(v2 + 48);
  v10 = *(v2 + 56);
  v9 = *(v2 + 64);
  *(v5 + 64) = a2;
  v11 = v5 + 64;
  *(v5 + 32) = *v2;
  *(v5 + 48) = *(v2 + 16);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v13 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v14 = LazyMapSequence<>.subscript.read(v6, v11, v12, v13);
  v16 = *v15;

  (v14)(v6, 0);
  v18 = v16;
  v8(&v19, &v18);

  v18 = v19;
  v10(&v18);

  return LazyMapSequence<>.subscript.readspecialized ;
}

void LazyMapSequence<>.subscript.readspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);

  free(v1);
}

void (*LazyMapSequence<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  v11 = *(a4 + 8);
  v12 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  if (v8)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(*(AssociatedTypeWitness - 8) + 64));
  }

  v16 = v15;
  v10[4] = v15;
  v17 = *(a3 + 24);
  v10[5] = v17;
  v18 = *(v17 - 8);
  v10[6] = v18;
  v19 = *(v18 + 64);
  if (v8)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(v19);
  }

  v10[7] = v20;
  v21 = v4 + *(a3 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);
  v24 = dispatch thunk of Collection.subscript.read();
  (*(v14 + 16))(v16);
  v24(v10, 0);
  v22(v16);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return LazyMapSequence<>.subscript.read;
}

void LazyMapSequence<>.subscript.read(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v3 = *(*a1 + 32);
  (*(*(*a1 + 48) + 8))(v2, *(*a1 + 40));
  free(v2);
  free(v3);

  free(v1);
}

uint64_t specialized LazyFilterSequence<>.startIndex.getter()
{
  v1 = v0[7];
  v42 = v0[6];
  v43 = v1;
  v44 = v0[8];
  v2 = *(v0 + 19);
  v45 = *(v0 + 18);
  v3 = v0[3];
  v38 = v0[2];
  v39 = v3;
  v4 = v0[5];
  v40 = v0[4];
  v41 = v4;
  v5 = v0[1];
  v36 = *v0;
  v37 = v5;
  v28 = *(v0 + 20);
  v29 = v2;
  v26 = *(v0 + 22);
  v27 = *(v0 + 21);
  v6 = specialized LazyFilterSequence<>.startIndex.getter();
  v8 = v7;
  v10 = v9;
  *&v34 = v6;
  *(&v34 + 1) = v7;
  v35 = v9 & 1;
  v11 = v36;
  v12 = v37;
  v24 = v39;
  v25 = *(&v38 + 1);
  v23 = *(&v39 + 1);
  v22 = *(&v40 + 1);
  v21 = *(&v42 + 1);
  v20 = *(&v43 + 1);
  v13 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v32 = v36;
  v33 = v37;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  MEMORY[0x223DE0060](&v30, v14, v13);
  if (v6 != v30 || (v10 & 1) == 0)
  {
    v15 = *(v0 + 23);
    v16 = *(v0 + 24);
    do
    {
      *&v30 = specialized FlattenSequence<>.subscript.getter(v6, v8, v10 & 1, v11, *(&v11 + 1), v12, v25, v24, v23);
      v22(&v32, &v30);

      v21(&v30, &v32);

      v31 = v30;
      v20(&v32, &v31);

      v29(&v30, &v32);

      v31 = v30;
      v27(&v32, &v31);

      v30 = v32;
      v17 = v15(&v30);

      if (v17)
      {
        break;
      }

      specialized LazyFilterSequence<>.formIndex(after:)(&v34);
      v8 = *(&v34 + 1);
      v6 = v34;
      v10 = v35;
      v32 = v11;
      v33 = v12;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      MEMORY[0x223DE0060](&v30, v18, v13);
    }

    while (v6 != v30 || (v10 & 1) == 0);
  }

  return v6;
}

{
  v1 = v0[5];
  v38 = v0[4];
  v39 = v1;
  v2 = *(v0 + 13);
  v40 = *(v0 + 12);
  v3 = v0[1];
  v34 = *v0;
  v35 = v3;
  v4 = v0[3];
  v36 = v0[2];
  v37 = v4;
  v25 = *(v0 + 14);
  v26 = v2;
  v23 = *(v0 + 16);
  v24 = *(v0 + 15);
  v5 = specialized LazyFilterSequence<>.startIndex.getter();
  v7 = v6;
  v9 = v8;
  v31 = v5;
  v32 = v6;
  v33 = v8 & 1;
  v10 = v34;
  v11 = v35;
  v21 = v37;
  v22 = *(&v36 + 1);
  v20 = *(&v37 + 1);
  v19 = *(&v38 + 1);
  v12 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v28 = v34;
  v29 = v35;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  MEMORY[0x223DE0060](&v30, v13, v12);
  if (v5 != v30 || (v9 & 1) == 0)
  {
    v15 = *(v0 + 17);
    v14 = *(v0 + 18);
    do
    {
      v30 = specialized FlattenSequence<>.subscript.getter(v5, v7, v9 & 1, v10, *(&v10 + 1), v11, v22, v21, v20);
      v19(&v28, &v30);

      v26(&v30, &v28);

      v27 = v30;
      v24(&v28, &v27);

      v30 = v28;
      v16 = v15(&v30);

      if (v16)
      {
        break;
      }

      specialized LazyFilterSequence<>.formIndex(after:)(&v31);
      v5 = v31;
      v7 = v32;
      v9 = v33;
      v28 = v10;
      v29 = v11;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      MEMORY[0x223DE0060](&v30, v17, v12);
    }

    while (v5 != v30 || (v9 & 1) == 0);
  }

  return v5;
}

{
  v1 = v0[3];
  v31 = v0[2];
  v32 = v1;
  v2 = *(v0 + 9);
  v33 = *(v0 + 8);
  v3 = v0[1];
  v29 = *v0;
  v30 = v3;
  v24 = *(v0 + 10);
  v25 = v2;
  v4 = specialized FlattenSequence<>.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v9 = v29;
  v10 = v30;
  v22 = v32;
  v23 = *(&v31 + 1);
  v21 = *(&v32 + 1);
  v11 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v26 = v29;
  v27 = v30;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v20 = v11;
  MEMORY[0x223DE0060](&v28, v12, v11);
  if (v4 != v28 || (v8 & 1) == 0)
  {
    v13 = *(v0 + 11);
    v14 = *(v0 + 12);
    do
    {
      v28 = specialized FlattenSequence<>.subscript.getter(v4, v6, v8 & 1, v9, *(&v9 + 1), v10, v23, v22, v21);
      v25(&v26, &v28);

      v28 = v26;
      v15 = v13(&v28);

      if (v15)
      {
        break;
      }

      v4 = specialized FlattenSequence<>._index(after:)(v4, v6, v8 & 1);
      v6 = v16;
      v8 = v17;
      v26 = v9;
      v27 = v10;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      MEMORY[0x223DE0060](&v28, v18, v20);
    }

    while (v4 != v28 || (v8 & 1) == 0);
  }

  return v4;
}

{
  v1 = v0;
  v2 = v0[1];
  v4 = v0[2];
  v18 = *v0;
  v3 = v18;
  v19 = v2;
  v14 = v2;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v6 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0050](&v17, v5, v6);
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = v17;
  if (v17 != v7)
  {
    v9 = v1[3];
    v1 = v1[4];
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DDFF80](v8, v3);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          v7 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(v3 + 8 * v8 + 32);
      }

      v15 = v10;
      v14(&v16, &v15);

      v15 = v16;
      v11 = v9(&v15);

      if (v11)
      {
        return v8;
      }

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      v17 = ++v8;
    }

    while (v12 != v7);
  }

  return v7;
}

void *specialized LazyFilterSequence<>.formIndex(after:)(__int128 *a1)
{
  v4 = *(a1 + 16);
  v32 = *a1;
  v17 = v32;
  v33 = v4;
  v5 = v1[5];
  v38 = v1[4];
  v39 = v5;
  v6 = *(v1 + 13);
  v40 = *(v1 + 12);
  v7 = v1[1];
  v34 = *v1;
  v35 = v7;
  v8 = v1[3];
  v36 = v1[2];
  v37 = v8;
  v25 = *(v1 + 14);
  v26 = v6;
  v23 = *(v1 + 16);
  v24 = *(v1 + 15);
  v9 = v34;
  v10 = v7;
  v19 = *(&v8 + 1);
  v20 = v8;
  v18 = *(&v38 + 1);
  v29 = v34;
  v30 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v27 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0060](&v31, v11);
  if (v17 != v31 || (v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  while (1)
  {
    v13 = *(v22 + 136);
    v12 = *(v22 + 144);
    v31 = specialized FlattenSequence<>.subscript.getter(v4, v2, v3, v9, *(&v9 + 1), v10, v21, v20, v19);
    v18(&v29, &v31);

    v26(&v31, &v29);

    v28 = v31;
    v24(&v29, &v28);

    v31 = v29;
    v14 = v13(&v31);

    if (v14)
    {
      break;
    }

LABEL_5:
    specialized LazyFilterSequence<>.formIndex(after:)(&v32);
    v29 = v9;
    v30 = v10;
    result = MEMORY[0x223DE0060](&v31, v11, v27);
    v2 = *(&v32 + 1);
    v4 = v32;
    v3 = v33;
    if (v32 == v31 && (v33 & 1) != 0)
    {
      v3 = 1;
      v4 = v31;
      break;
    }
  }

  *a1 = v4;
  *(a1 + 1) = v2;
  *(a1 + 16) = v3;
  return result;
}

void *specialized LazyFilterSequence<>.formIndex(after:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v1[1];
  v27 = *v1;
  v28 = v5;
  v6 = v1[3];
  v29 = v1[2];
  v30 = v6;
  v21 = *(v1 + 9);
  v31 = *(v1 + 8);
  v20 = *(v1 + 10);
  v7 = v27;
  v8 = v28;
  v17 = v6;
  v18 = *(&v29 + 1);
  v16 = *(&v6 + 1);
  v24 = v27;
  v25 = v28;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v22 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v23 = v9;
  MEMORY[0x223DE0060](&v26, v9);
  if (v2 != v26 || (v4 & 1) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  while (1)
  {
    v11 = *(v19 + 88);
    v10 = *(v19 + 96);
    v26 = specialized FlattenSequence<>.subscript.getter(v2, v3, v4 & 1, v7, *(&v7 + 1), v8, v18, v17, v16);
    v21(&v24, &v26);

    v26 = v24;
    LOBYTE(v10) = v11(&v26);

    if (v10)
    {
      break;
    }

LABEL_5:
    v2 = specialized FlattenSequence<>._index(after:)(v2, v3, v4 & 1);
    v3 = v13;
    v4 = v14;
    v24 = v7;
    v25 = v8;
    result = MEMORY[0x223DE0060](&v26, v23, v22);
    if (v2 == v26 && (v4 & 1) != 0)
    {
      v4 = 1;
      break;
    }
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

unint64_t *specialized LazyFilterSequence<>.formIndex(after:)(unint64_t *result)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v19[0] = v3;
  v19[1] = v2;
  v15 = v2;
  v19[2] = v4;
  v5 = *result;
  v18 = *result;
  v14 = result;
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 == v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  while (2)
  {
    v9 = v1[3];
    v8 = v1[4];
    lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
    v5 = v3 & 0xC000000000000001;
    v13 = v3;
    v10 = v3 + 32;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
      v1 = v19;
      result = LazyMapSequence<>.formIndex(after:)();
      v3 = v18;
      if (v18 == v7)
      {
        v3 = v7;
LABEL_13:
        *v14 = v3;
        return result;
      }

      if (!v5)
      {
        break;
      }

      v11 = MEMORY[0x223DDFF80](v18, v13);
LABEL_9:
      v16 = v11;
      v15(&v17, &v16);

      v16 = v17;
      v12 = v9(&v16);

      if (v12)
      {
        goto LABEL_13;
      }
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      if (v18 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v11 = *(v10 + 8 * v18);

      goto LABEL_9;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    result = __CocoaSet.count.getter();
    if (v5 != result)
    {
      v7 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t specialized FlattenSequence<>.startIndex.getter()
{
  v1 = v0;
  v2 = v0[1];
  v25 = *v0;
  v26 = v2;
  v17 = *(v0 + 5);
  v27 = *(v0 + 4);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v18 = v25;
  v19 = *(v0 + 2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v7 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  MEMORY[0x223DE0060](&v20, v6, v7);
  v8 = v20;
  v9 = specialized LazyFilterSequence<>.startIndex.getter();
  v24 = v9;
  if (v9 != v8)
  {
    v10 = v9;
    do
    {
      v20 = *v1;
      v21 = *(v1 + 2);
      v22 = v10;
      v11 = LazyMapSequence<>.subscript.read(&v18, &v22, v6, v7);
      v13 = *v12;

      (v11)(&v18, 0);
      *&v18 = v13;
      v17(&v23, &v18);

      *&v20 = v23;
      v4(&v18, &v20);

      if (v18 >> 62)
      {
        v15 = __CocoaSet.count.getter();

        if (v15)
        {
          return v10;
        }
      }

      else
      {
        v14 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v14)
        {
          return v10;
        }
      }

      specialized LazyFilterSequence<>.formIndex(after:)(&v24);
      v10 = v24;
    }

    while (v24 != v8);
  }

  v18 = *v1;
  v19 = *(v1 + 2);
  MEMORY[0x223DE0060](&v20, v6, v7);
  return v20;
}

uint64_t specialized FlattenSequence<>._index(after:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = v3[3];
  v33 = v3[2];
  v34 = v6;
  v35 = *(v3 + 8);
  v7 = v3[1];
  v31 = *v3;
  v32 = v7;
  v36 = v31;
  v37 = v7;
  v38 = *(v3 + 4);
  v8 = *(&v33 + 1);
  v9 = *(&v34 + 1);
  v29 = a1;
  v27 = v31;
  v28 = *(v3 + 2);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v22 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v23 = v11;
  v12 = LazyMapSequence<>.subscript.read(&v25, &v29, v11, v22);
  v14 = *v13;

  (v12)(&v25, 0);
  *&v25 = v14;
  v8(&v30, &v25);

  *&v27 = v30;
  v9(&v25, &v27);

  if (a3)
  {
    __break(1u);
    return result;
  }

  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v25 >> 62)
  {
LABEL_8:
    v16 = __CocoaSet.count.getter();
    goto LABEL_5;
  }

  v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v17 = a1;

  if (a2 + 1 == v16)
  {
    *&v25 = a1;
    specialized LazyFilterSequence<>.formIndex(after:)(&v25);
    v17 = v25;
    *&v27 = v25;
    v25 = *v4;
    v26 = *(v4 + 2);
    MEMORY[0x223DE0060](&v30, v23, v22);
    if (v17 == v30)
    {
LABEL_10:
      v25 = *v4;
      v26 = *(v4 + 2);
      MEMORY[0x223DE0060](&v30, v23, v22);
      return v30;
    }

    else
    {
      lazy protocol witness table accessor for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>, &_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMd, &_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMR, lazy protocol witness table accessor for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>);
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMd, &_ss15LazyMapSequenceVyABys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGANGMR);
        v18 = specialized protocol witness for Collection.subscript.read in conformance <> LazyMapSequence<A, B>(&v25, v17);
        v20 = *v19;

        (v18)(&v25, 0);
        v21 = v20 >> 62 ? __CocoaSet.count.getter() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v21)
        {
          break;
        }

        specialized LazyFilterSequence<>.formIndex(after:)(&v27);
        v25 = *v4;
        v26 = *(v4 + 2);
        MEMORY[0x223DE0060](&v30, v23, v22);
        v17 = v27;
        if (v27 == v30)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v17;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = *a1;
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized CallBusinessNoResultsExperiencesResolver.convertToCommonPhoneCallEntity(task:)()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(v17, v15);
  if (v16)
  {
    outlined init with copy of Any?(v15, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology23Uso_VerbTemplate_TargetCyAA0C23Entity_common_PhoneCallCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Target.target.getter();
LABEL_8:

      outlined destroy of MediaUserStateCenter?(v17, &_sypSgMd, &_sypSgMR);
      v0 = v13;
      __swift_destroy_boxed_opaque_existential_1(v14);
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology26Uso_VerbTemplate_ReferenceCyAA0C23Entity_common_PhoneCallCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMd, &_s12SiriOntology32Uso_VerbTemplate_ReferenceTargetCyAA0C23Entity_common_PhoneCallCGMR);
    if (swift_dynamicCast())
    {
      dispatch thunk of Uso_VerbTemplate_ReferenceTarget.target.getter();
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.pommes);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14[0] = v5;
    *v4 = 136315394;
    v6 = UsoTask.verbString.getter();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v14);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    v9 = UsoTask.baseEntityAsString.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_2232BB000, v2, v3, "Cannot transform UsoTask to task with common_PhoneCall: <UsoTask verbString: %s entityString: %s>", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v5, -1, -1);
    MEMORY[0x223DE0F80](v4, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v17, &_sypSgMd, &_sypSgMR);
  v0 = 0;
LABEL_15:
  outlined destroy of MediaUserStateCenter?(v15, &_sypSgMd, &_sypSgMR);
  return v0;
}

unint64_t lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMd, &_sSay12SiriOntology26UsoEntity_common_PhoneCallCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UsoEntity_common_PhoneCall] and conformance [A]);
  }

  return result;
}

uint64_t specialized FlattenSequence<>.subscript.getter(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t *), uint64_t a8, void (*a9)(uint64_t *__return_ptr, void *))
{
  v20[2] = a6;
  v21 = a1;
  v20[0] = a4;
  v20[1] = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR);
  v13 = lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]();
  v14 = LazyMapSequence<>.subscript.read(v19, &v21, v12, v13);
  v16 = *v15;

  (v14)(v19, 0);
  v19[0] = v16;
  a7(&v22, v19);

  v20[0] = v22;
  a9(v19, v20);

  if ((a3 & 1) == 0)
  {
    if ((v19[0] & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x223DDFF80](a2, v19[0]);
      goto LABEL_6;
    }

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v19[0] & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v18 = *(v19[0] + 8 * a2 + 32);

LABEL_6:

      return v18;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #9 in CallBusinessNoResultsExperiencesResolver.buildExperiences(from:with:)()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams.name.setter();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams and conformance Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGANGMR);
    lazy protocol witness table accessor for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>()
{
  result = lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>;
  if (!lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18LazyFilterSequenceVys0a3MapC0VySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0VySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAE16CodeGenListEntryCyAE0gh1_I6_AgentCGGSgGGMR);
    lazy protocol witness table accessor for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>(&lazy protocol witness table cache variable for type LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?> and conformance <> LazyMapSequence<A, B>, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMd, &_ss15LazyMapSequenceVySay12SiriOntology26UsoEntity_common_PhoneCallCGSayAC16CodeGenListEntryCyAC0fg1_H6_AgentCGGSgGMR, lazy protocol witness table accessor for type [UsoEntity_common_PhoneCall] and conformance [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>> and conformance <> LazyFilterSequence<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type LazyMapSequence<LazyMapSequence<LazyFilterSequence<LazyMapSequence<[UsoEntity_common_PhoneCall], [CodeGenListEntry<UsoEntity_common_Agent>]?>>, [CodeGenListEntry<UsoEntity_common_Agent>]>, [CodeGenListEntry<UsoEntity_common_Agent>]> and conformance <> LazyMapSequence<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id AudioQueueStateManager.__allocating_init(queueStateObserver:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_mutable_project_boxed_opaque_existential_1(a1, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v6, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = specialized AudioQueueStateManager.init(queueStateObserver:)(v9, v3, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t one-time initialization function for mediaTypeMap()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtGMd, &_ss23_ContiguousArrayStorageCySS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtGMR);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMd, &_sSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOtMR);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2234D1950;
  result = *MEMORY[0x277D27B08];
  if (!*MEMORY[0x277D27B08])
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = (v3 + v2);
  v6 = *(v0 + 48);
  *v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[1] = v7;
  v8 = *MEMORY[0x277D39B50];
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v10 = *(*(v9 - 8) + 104);
  v10(v5 + v6, v8, v9);
  result = *MEMORY[0x277D27B10];
  if (!*MEMORY[0x277D27B10])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = (v5 + v1);
  v12 = *(v0 + 48);
  *v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11[1] = v13;
  v10(v5 + v1 + v12, *MEMORY[0x277D39B60], v9);
  result = *MEMORY[0x277D27AF0];
  if (!*MEMORY[0x277D27AF0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = (v5 + 2 * v1);
  v15 = *(v0 + 48);
  *v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14[1] = v16;
  v10(v14 + v15, *MEMORY[0x277D39B68], v9);
  result = *MEMORY[0x277D27B00];
  if (!*MEMORY[0x277D27B00])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = (v5 + 3 * v1);
  v18 = *(v0 + 48);
  *v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[1] = v19;
  v20 = *MEMORY[0x277D39B38];
  v10(v17 + v18, v20, v9);
  result = *MEMORY[0x277D27AF8];
  if (*MEMORY[0x277D27AF8])
  {
    v21 = (v5 + 4 * v1);
    v22 = *(v0 + 48);
    *v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21[1] = v23;
    v10(v21 + v22, v20, v9);
    v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOTt0g5Tf4g_n(v3);
    swift_setDeallocating();
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    static AudioQueueStateManager.mediaTypeMap = v24;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id AudioQueueStateManager.init(queueStateObserver:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized AudioQueueStateManager.init(queueStateObserver:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t AudioQueueStateManager.nowPlayingObserver(_:playbackStateDidChangeFrom:to:lastPlaying:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  if (a1)
  {
    a1 = type metadata accessor for SOMediaNowPlayingObserver();
    v9 = &protocol witness table for SOMediaNowPlayingObserver;
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v14[1] = 0;
    v14[2] = 0;
  }

  v14[0] = v10;
  v14[3] = a1;
  v14[4] = v9;
  v11 = *((*MEMORY[0x277D85000] & *v4) + 0x130);
  v12 = v8;
  v11(v14, a2, a3, a4);
  return outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMd, &_s21SiriInformationSearch24MediaNowPlayingObserving_pSgMR);
}

uint64_t AudioQueueStateManager.audioQueueStateItem(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v63 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItemType();
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URLComponents();
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.init()();
  v25 = (*(*a1 + 136))(v24);
  v27 = v26 != 0;
  if (v26)
  {
    v25 = Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.setter();
  }

  v28 = (*(*a1 + 144))(v25);
  if (v29)
  {
    v28 = Apple_Parsec_Siri_V2alpha_AudioQueueStateItem.artist.setter();
    v27 = 1;
  }

  v30 = (*(*a1 + 152))(v28);
  if (v31)
  {
    v30 = Apple_Parsec_Siri_V2alpha_AmpUserState.xpAbCookie.setter();
    v27 = 1;
  }

  v32 = (*(*a1 + 184))(v30);
  v33 = *a1;
  if ((v32 & 1) == 0)
  {
    v34 = (*(v33 + 224))();
    v48 = v71;
    if (!v49)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v67 = v19;
  v34 = (*(v33 + 176))();
  if (v35)
  {
    v36 = v35;
    v63 = v34;
    v37 = *MEMORY[0x277CEF030];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v13;
    v38 = *MEMORY[0x277CEF028];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v18;
    v66 = a2;
    v40 = v8;
    v41 = v39;
    v43 = v42;
    URLComponents.init()();

    URLComponents.scheme.setter();

    v44 = v41;
    v8 = v40;
    MEMORY[0x223DD8CC0](v44, v43);
    v72 = 47;
    v73 = 0xE100000000000000;
    MEMORY[0x223DDF6D0](v63, v36);

    MEMORY[0x223DD8CD0](v72, v73);
    URLComponents.string.getter();
    v46 = v45;

    a2 = v66;

    v34 = (*(v68 + 8))(v17, v64);
    v47 = v46;
    v18 = v65;
    v19 = v67;
    v48 = v71;
    if (!v47)
    {
      goto LABEL_14;
    }

LABEL_12:
    v34 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter();
    v27 = 1;
    goto LABEL_14;
  }

  v19 = v67;
  v48 = v71;
LABEL_14:
  v50 = (*(*a1 + 160))(v34);
  if (v51)
  {
    v52 = v51;
    v53 = v50;
    if (one-time initialization token for mediaTypeMap != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v54 = static AudioQueueStateManager.mediaTypeMap;
    v55 = v69;
    if (*(static AudioQueueStateManager.mediaTypeMap + 2) && (v56 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v52), (v57 & 1) != 0))
    {
      (*(v70 + 16))(v8, v54[7] + *(v70 + 72) * v56, v48);
      v58 = 0;
    }

    else
    {
      v58 = 1;
    }

    v59 = v70;
    (*(v70 + 56))(v8, v58, 1, v48);
    swift_endAccess();

    v60 = *(v59 + 48);
    if (v60(v8, 1, v48) == 1)
    {
      (*(v59 + 104))(v55, *MEMORY[0x277D39B38], v48);
      if (v60(v8, 1, v48) != 1)
      {
        outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMd, &_s10PegasusAPI49Apple_Parsec_Siri_V2alpha_AudioQueueStateItemTypeOSgMR);
      }
    }

    else
    {
      (*(v59 + 32))(v55, v8, v48);
    }

    Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.setter();
    goto LABEL_28;
  }

  if (v27)
  {
LABEL_28:
    (*(v19 + 32))(a2, v23, v18);
    v61 = 0;
    return (*(v19 + 56))(a2, v61, 1, v18);
  }

  (*(v19 + 8))(v23, v18);
  v61 = 1;
  return (*(v19 + 56))(a2, v61, 1, v18);
}

id AudioQueueStateManager.currentQueueState()@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v65 = &v56 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateItem();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v58 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v57 = &v56 - v12;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioEntitySource();
  v63 = *(v13 - 8);
  v64 = v13;
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v62 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
  v59 = *(v61 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v61, v18);
  v60 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v69 = *(v20 - 8);
  v21 = *(v69 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
  [*(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock) lock];
  v26 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache);
  v27 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache);
  v28 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache + 8);
  v30 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache);
  v29 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache + 8);
  type metadata accessor for NowPlayingInfo();
  swift_allocObject();
  v31 = v26;

  v32 = NowPlayingInfo.init(_:_:_:)(v26, v27, v28, v30, v29);
  if (v32)
  {
    v33 = v32;
    v56 = v25;
    v34 = v68;
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.init()();
    v35 = v33[3] - 1;
    if (v35 > 3)
    {
      v36 = MEMORY[0x277D392A0];
    }

    else
    {
      v36 = qword_2784DACE8[v35];
    }

    v39 = v1;
    (*(v59 + 104))(v60, *v36, v61);
    v40 = Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.setter();
    v41 = (*(*v33 + 184))(v40);
    v42 = MEMORY[0x277D396D0];
    if ((v41 & 1) == 0)
    {
      v42 = MEMORY[0x277D396C8];
    }

    (*(v63 + 104))(v62, *v42, v64);
    v43 = Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.source.setter();
    v44 = v33[5];
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v33[4] & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v46 = v33[5];

      v43 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.setter();
    }

    v47 = (*(*v33 + 192))(v43);
    v48 = v67;
    if ((v47 & 0x100000000) == 0)
    {
      v47 = Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.nowPlayingQueueIndex.setter();
    }

    v49 = v34;
    if (((*(*v33 + 200))(v47) & 0x100000000) == 0)
    {
      Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.nowPlayingQueueCount.setter();
    }

    v50 = v65;
    AudioQueueStateManager.audioQueueStateItem(from:)(v33, v65);
    v51 = v66;
    if ((*(v66 + 48))(v50, 1, v48) == 1)
    {
      v52 = outlined destroy of MediaUserStateCenter?(v50, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateItemVSgMR);
    }

    else
    {
      v53 = v57;
      (*(v51 + 32))(v57, v50, v48);
      (*(v51 + 16))(v58, v53, v48);
      Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.audioQueueStateItem.setter();
      v52 = (*(v51 + 8))(v53, v48);
    }

    v54 = v69;
    v55 = v56;
    (*(*v33 + 208))(v52);
    Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.currentListeningToContainer.setter();

    (*(v54 + 32))(v49, v24, v20);
    (*(v54 + 56))(v49, 0, 1, v20);
    return [*(v39 + v55) unlock];
  }

  else
  {
    (*(v69 + 56))(v68, 1, 1, v20);
    v37 = *(v1 + v25);

    return [v37 unlock];
  }
}

id AudioQueueStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioQueueStateManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioQueueStateManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized AudioQueueStateManager.init(queueStateObserver:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v15[3] = a3;
  v15[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_updateAudioQueueStateCacheGroup;
  *&a2[v8] = dispatch_group_create();
  a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_isObserverRegistered] = 0;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_lock;
  *&a2[v9] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_nowPlayingInfoCache] = 0;
  v10 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateCache];
  *v10 = 0;
  v10[8] = 1;
  v11 = &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_applicationBundleIdentifierCache];
  *v11 = 0;
  v11[1] = 0;
  outlined init with copy of AppDataProviding(v15, &a2[OBJC_IVAR____TtC21SiriInformationSearch22AudioQueueStateManager_queueStateObserver]);
  v14.receiver = a2;
  v14.super_class = type metadata accessor for AudioQueueStateManager();
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t DefaultExperiencesResolver.init()@<X0>(uint64_t a1@<X8>)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return outlined assign with take of SportsPersonalizationExperiencesResolver?(v2, a1);
}

uint64_t outlined assign with take of SportsPersonalizationExperiencesResolver?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DefaultExperiencesResolver.init(sportsPersonalizationResolver:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v5 = *(a1 + 32);
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0;
  return outlined assign with take of SportsPersonalizationExperiencesResolver?(v4, a2);
}

unint64_t DefaultExperiencesResolver.buildExperiences(from:with:)(uint64_t a1, uint64_t (*a2)(char *, uint64_t))
{
  v79 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v66 = &v64 - v7;
  v64 = type metadata accessor for PerformanceUtil.Ticket(0);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64, v9);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v74 = *(v11 - 8);
  v75 = v11;
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v80 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v27 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v78 = v28;
  (*(v22 + 8))(v26, v21);
  v69 = v2;
  v29 = specialized ExperiencesResolver.defaultExperiences(from:with:)(a1, v79);
  v77 = v29;
  if (one-time initialization token for shared != -1)
  {
    v29 = swift_once();
  }

  v31 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v29, v30);
  v72 = a1;
  v62 = a1;
  Date.init()();
  v32 = *(*v31 + 200);
  v33 = *v31 + 200;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v62 = &v61;
  v63 = v67;
  LOBYTE(v61) = 2;
  v76 = v31;
  v71 = v32;
  v70 = v33;
  v32(&v84, 0xD000000000000034, 0x80000002234DFF90, 0, v20, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 39, "buildExperiences(from:with:)", 28, v61, partial apply for closure #1 in DefaultExperiencesResolver.buildExperiences(from:with:));
  v36 = *(v16 + 8);
  v35 = v16 + 8;
  v34 = v36;
  v73 = v15;
  v36(v20, v15);
  specialized Array.append<A>(contentsOf:)(v77);
  v37 = v84;
  if (v27 == 0x7374726F7073 && v78 == 0xE600000000000000)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      return v37;
    }
  }

  outlined init with copy of SportsPersonalizationExperiencesResolver?(v69, &v81);
  v77 = v37;
  v79 = v34;
  v68 = v35;
  if (*(&v82 + 1))
  {
    v84 = v81;
    v85 = v82;
    v86 = v83;
  }

  else
  {
    *(&v85 + 1) = type metadata accessor for SportsResolver();
    v86 = &protocol witness table for SportsResolver;
    __swift_allocate_boxed_opaque_existential_1(&v84);
    SportsResolver.init()();
    if (*(&v82 + 1))
    {
      outlined destroy of MediaUserStateCenter?(&v81, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);
    }
  }

  v39 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  MEMORY[0x28223BE20](v39, v40);
  Date.init()();
  v62 = &v61;
  v63 = MEMORY[0x277D839B0];
  LOBYTE(v61) = 2;
  v41 = v71;
  v71(&v81, 0xD000000000000052, 0x80000002234E0010, 0, v20, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 48, "buildExperiences(from:with:)", 28, v61, partial apply for closure #2 in DefaultExperiencesResolver.buildExperiences(from:with:));
  v42 = v73;
  v43 = v79(v20, v73);
  if (v81)
  {

    v78 = &v64;
    MEMORY[0x28223BE20](v45, v46);
    Date.init()();
    v62 = &v61;
    v63 = v67;
    LOBYTE(v61) = 2;
    v41(&v81, 0xD000000000000035, 0x80000002234E00C0, 0, v20, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 54, "buildExperiences(from:with:)", 28, v61, partial apply for closure #3 in DefaultExperiencesResolver.buildExperiences(from:with:));
    v79(v20, v42);
    v37 = v81;
    (*(v74 + 8))(v80, v75);
    outlined destroy of SportsPersonalizationExperiencesResolver(&v84);
  }

  else
  {
    v78 = 0;
    MEMORY[0x28223BE20](v43, v44);
    v47 = v80;
    Date.init()();
    v62 = &v61;
    v63 = MEMORY[0x277D839B0];
    LOBYTE(v61) = 2;
    v41(&v81, 0xD00000000000004ALL, 0x80000002234E0070, 0, v20, "SiriInformationSearch/DefaultExperiencesResolver.swift", 54, 2, 59, "buildExperiences(from:with:)", 28, v61, partial apply for closure #4 in DefaultExperiencesResolver.buildExperiences(from:with:));
    v79(v20, v42);
    v49 = v74;
    v48 = v75;
    if (v81 == 1)
    {
      v50 = v65;
      Date.init()();
      v51 = v64;
      v52 = v50 + *(v64 + 20);
      *v52 = "SiriInformationSearch/DefaultExperiencesResolver.swift";
      *(v52 + 8) = 54;
      *(v52 + 16) = 2;
      *(v50 + v51[6]) = 67;
      v53 = v50 + v51[7];
      *v53 = "buildExperiences(from:with:)";
      *(v53 + 8) = 28;
      *(v53 + 16) = 2;
      v54 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003CLL);
      v55 = (v50 + v51[8]);
      *v55 = v54;
      v55[1] = v56;
      v57 = v66;
      (*(v49 + 16))(v66, v47, v48);
      (*(v49 + 56))(v57, 0, 1, v48);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      v59 = __swift_project_value_buffer(v58, static Logger.pommes);
      _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(2, v57, v59);
      outlined destroy of MediaUserStateCenter?(v57, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      (*(*v76 + 184))(v50, 0);
      outlined destroy of PerformanceUtil.Ticket(v50);
    }

    (*(v49 + 8))(v47, v48);
    outlined destroy of SportsPersonalizationExperiencesResolver(&v84);
    return v77;
  }

  return v37;
}

uint64_t closure #1 in DefaultExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for ClientExperienceSignals();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = specialized PhoneCallExperiencesResolver.buildExperiences(from:with:)(a1);
  result = outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a2 = v10;
  return result;
}

uint64_t outlined init with copy of SportsPersonalizationExperiencesResolver?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMd, &_s21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in DefaultExperiencesResolver.buildExperiences(from:with:)@<X0>(_BYTE *a1@<X8>)
{
  result = specialized static SportsPersonalizationExperiencesResolver.isSupportedPersonalizationInstruction(_:)(*(v1 + 16));
  *a1 = result & 1;
  return result;
}

uint64_t closure #3 in DefaultExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for ClientExperienceSignals();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)(a1, v8);
  result = outlined destroy of MediaUserStateCenter?(v8, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a2 = v10;
  return result;
}

BOOL partial apply for closure #4 in DefaultExperiencesResolver.buildExperiences(from:with:)@<W0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = static SportsPersonalizationExperiencesResolver.hasPersonalizationInstruction(_:)();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_21SiriInformationSearch40SportsPersonalizationExperiencesResolverVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for DefaultExperiencesResolver(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultExperiencesResolver(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t AudioItemCandidate.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier + 8);

  return v1;
}

uint64_t AudioItemCandidate.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8);

  return v1;
}

uint64_t AudioItemCandidate.artist.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
  v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);

  return v1;
}

uint64_t AudioItemCandidate.itemType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

float AudioItemCandidate.score.getter()
{
  v1 = v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.score.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id AudioItemCandidate.features.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void AudioItemCandidate.features.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t AudioItemCandidate.personaId.getter()
{
  v1 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AudioItemCandidate.BackingItem(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *v5;
    v7 = ClientAudioResult.vocabularyResult.getter();
    v8 = VocabularyResult.personaId.getter();

    return v8;
  }

  else
  {
    outlined destroy of AudioItemCandidate.BackingItem(v5);
    return 0;
  }
}

uint64_t outlined init with copy of AudioItemCandidate.BackingItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AudioItemCandidate.BackingItem(uint64_t a1)
{
  v2 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AudioItemCandidate.Features.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioItemCandidate.__allocating_init(serverResult:)(uint64_t a1)
{
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v2 = *(v39 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v39, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  swift_storeEnumTagMultiPayload();
  v14 = Apple_Parsec_Siri_V2alpha_AudioItem.identifier.getter();
  v33 = v15;
  v16 = Apple_Parsec_Siri_V2alpha_AudioItem.title.getter();
  v36 = v17;
  v37 = v16;
  v18 = Apple_Parsec_Siri_V2alpha_AudioItem.artist.getter();
  v34 = v19;
  v35 = v18;
  Apple_Parsec_Siri_V2alpha_AudioItem.type.getter();
  v38 = Apple_Parsec_Siri_V2alpha_AudioItem.requiresSubscription.getter();
  v20 = [objc_allocWithZone(type metadata accessor for AudioItemCandidate.Features()) init];
  v21 = type metadata accessor for AudioItemCandidate(0);
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score] = 1065353216;
  outlined init with copy of AudioItemCandidate.BackingItem(v11, &v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem]);
  v23 = &v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier];
  v24 = v33;
  *v23 = v14;
  v23[1] = v24;
  v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source] = 0;
  v25 = &v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title];
  v26 = v36;
  *v25 = v37;
  v25[1] = v26;
  v27 = &v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist];
  v28 = v34;
  *v27 = v35;
  v27[1] = v28;
  v29 = v39;
  (*(v2 + 16))(&v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v6, v39);
  v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription] = v38 & 1;
  v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded] = 0;
  *&v22[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features] = v20;
  v40.receiver = v22;
  v40.super_class = v21;
  v30 = objc_msgSendSuper2(&v40, sel_init);
  (*(v13 + 8))(a1, v12);
  (*(v2 + 8))(v6, v29);
  outlined destroy of AudioItemCandidate.BackingItem(v11);
  return v30;
}

uint64_t AudioItemCandidate.deduplicationKey.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title);
  v9 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8);
  v10 = String.lowercased()();
  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8))
  {
    v11 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
    v12 = String.lowercased()();
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  v30 = v10;

  MEMORY[0x223DDF6D0](countAndFlagsBits, object);

  v17 = v30;
  v16 = v17._object;
  v15 = v17._countAndFlagsBits;
  (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v2);
  v18 = String.init<A>(describing:)();
  v20 = v19;
  v30 = __PAIR128__(v16, v15);

  MEMORY[0x223DDF6D0](v18, v20);

  v24 = v30;
  v22 = v24._object;
  v23 = v24._countAndFlagsBits;
  v25 = (*((*MEMORY[0x277D85000] & *v1) + 0xD0))(v21);
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0x6B6E616C62;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  *&v30 = v23;
  *(&v30 + 1) = v22;

  MEMORY[0x223DDF6D0](v27, v28);

  return v30;
}

id AudioItemCandidate.toAudioResult()()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of AudioItemCandidate.BackingItem(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v19 = *v16;
    MEMORY[0x28223BE20](EnumCaseMultiPayload, v18);
    *(&v32 - 2) = v1;
    *(&v32 - 1) = v19;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioItem and conformance Apple_Parsec_Siri_V2alpha_AudioItem();
    static Message.with(_:)();
    v20 = *(v3 + 16);
    v20(v8, v11, v2);
    v21 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded);
    v22 = type metadata accessor for AudioResult();
    v23 = objc_allocWithZone(v22);
    v23[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = 2;
    v24 = &v23[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
    *v24 = 0;
    v24[8] = 0;
    v20(&v23[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem], v8, v2);
    v23[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = v21;
    v33.receiver = v23;
    v33.super_class = v22;
    v25 = objc_msgSendSuper2(&v33, sel_init);
  }

  else
  {
    (*(v3 + 32))(v11, v16, v2);
    v26 = *(v3 + 16);
    v26(v8, v11, v2);
    v27 = type metadata accessor for AudioResult();
    v28 = objc_allocWithZone(v27);
    v28[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_itemSource] = 1;
    v29 = &v28[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_persistentId];
    *v29 = 0;
    v29[8] = 0;
    v26(&v28[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_audioItem], v8, v2);
    v28[OBJC_IVAR____TtC21SiriInformationSearch11AudioResult_isDownloaded] = 0;
    v34.receiver = v28;
    v34.super_class = v27;
    v25 = objc_msgSendSuper2(&v34, sel_init);
  }

  v30 = *(v3 + 8);
  v30(v8, v2);
  v30(v11, v2);
  return v25;
}

uint64_t closure #1 in AudioItemCandidate.toAudioResult()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier);
  v9 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier + 8);

  Apple_Parsec_Siri_V2alpha_AudioItem.identifier.setter();
  v12 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title);
  v11 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8);

  Apple_Parsec_Siri_V2alpha_AudioItem.title.setter();
  if (*(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8))
  {
    v13 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
    v14 = *(a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  }

  Apple_Parsec_Siri_V2alpha_AudioItem.artist.setter();
  (*(v4 + 16))(v8, a2 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType, v3);
  Apple_Parsec_Siri_V2alpha_AudioItem.type.setter();
  dispatch thunk of ClientAudioResult.sharedUserIDFromPlayableMusicAccount.getter();
  return Apple_Parsec_Siri_V2alpha_AudioItem.sharedUserIDFromPlayableMusicAccount.setter();
}

float AudioItemCandidate.Features.audioTypeMatch.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.Features.audioTypeMatch.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float AudioItemCandidate.Features.sourceMatchFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.Features.sourceMatchFactor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float AudioItemCandidate.Features.sourceTypePriority.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.Features.sourceTypePriority.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float AudioItemCandidate.Features.downloadedBoostFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.Features.downloadedBoostFactor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float AudioItemCandidate.Features.usersOwnContentBoostFactor.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.Features.usersOwnContentBoostFactor.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float AudioItemCandidate.Features.qTreeScore.getter()
{
  v1 = v0 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore;
  swift_beginAccess();
  return *v1;
}

uint64_t AudioItemCandidate.Features.qTreeScore.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t AudioItemCandidate.Features.description.getter()
{
  _StringGuts.grow(_:)(167);
  v1 = MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234E0100);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v1);
  Float.write<A>(to:)();
  v3 = MEMORY[0x223DDF6D0](0xD000000000000018, 0x80000002234E0120);
  (*((*v2 & *v0) + 0x98))(v3);
  Float.write<A>(to:)();
  v4 = MEMORY[0x223DDF6D0](0xD000000000000019, 0x80000002234E0140);
  (*((*v2 & *v0) + 0xB0))(v4);
  Float.write<A>(to:)();
  v5 = MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E0160);
  (*((*v2 & *v0) + 0xC8))(v5);
  Float.write<A>(to:)();
  v6 = MEMORY[0x223DDF6D0](0xD000000000000021, 0x80000002234E0180);
  (*((*v2 & *v0) + 0xE0))(v6);
  Float.write<A>(to:)();
  v7 = MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234E01B0);
  (*((*v2 & *v0) + 0xF8))(v7);
  Float.write<A>(to:)();
  MEMORY[0x223DDF6D0](2099257354, 0xE400000000000000);
  return 0;
}

id AudioItemCandidate.Features.init()()
{
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_audioTypeMatch] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceMatchFactor] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_sourceTypePriority] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_downloadedBoostFactor] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_usersOwnContentBoostFactor] = 0;
  *&v0[OBJC_IVAR____TtCC21SiriInformationSearch18AudioItemCandidate8Features_qTreeScore] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioItemCandidate.Features();
  return objc_msgSendSuper2(&v2, sel_init);
}

SiriInformationSearch::AudioItemCandidate::Source_optional __swiftcall AudioItemCandidate.Source.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AudioItemCandidate.Source.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = SiriInformationSearch_AudioItemCandidate_Source_client;
  }

  else
  {
    v4.value = SiriInformationSearch_AudioItemCandidate_Source_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t AudioItemCandidate.Source.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E65696C63;
  }

  else
  {
    return 0x726576726573;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AudioItemCandidate.Source(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x746E65696C63;
  }

  else
  {
    v2 = 0x726576726573;
  }

  if (*a2)
  {
    v3 = 0x746E65696C63;
  }

  else
  {
    v3 = 0x726576726573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AudioItemCandidate.Source()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AudioItemCandidate.Source()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AudioItemCandidate.Source()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AudioItemCandidate.Source@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AudioItemCandidate.Source.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AudioItemCandidate.Source(uint64_t *a1@<X8>)
{
  v2 = 0x726576726573;
  if (*v1)
  {
    v2 = 0x746E65696C63;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

id @objc AudioItemCandidate.Features.description.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x223DDF550](v5, v7);

  return v8;
}

uint64_t AudioItemCandidate.description.getter()
{
  _StringGuts.grow(_:)(59);
  v1 = MEMORY[0x223DDF6D0](0x74616469646E6163, 0xED0000207B203A65);
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v1);
  MEMORY[0x223DDF6D0](v3);

  v4 = MEMORY[0x223DDF6D0](0x65726F637320200ALL, 0xEA0000000000203ALL);
  (*((*v2 & *v0) + 0xA0))(v4);
  Float.write<A>(to:)();
  v5 = MEMORY[0x223DDF6D0](0x6F7372657020200ALL, 0xEE00203A6449616ELL);
  v6 = (*((*v2 & *v0) + 0xD0))(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  MEMORY[0x223DDF6D0](v6, v8);

  v9 = MEMORY[0x223DDF6D0](0x757461656620200ALL, 0xEC0000003A736572);
  v10 = (*((*v2 & *v0) + 0xB8))(v9);
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  MEMORY[0x223DDF6D0](v12, v14);

  MEMORY[0x223DDF6D0](32010, 0xE200000000000000);
  return 0;
}

uint64_t AudioItemCandidate.summary.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v13 = 0;
  v14 = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x223DDF6D0](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier + 8));
  MEMORY[0x223DDF6D0](0x656C74697420200ALL, 0xEB0000000022203ALL);
  MEMORY[0x223DDF6D0](*(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title), *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title + 8));
  MEMORY[0x223DDF6D0](0x7473697472612022, 0xEB0000000022203ALL);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist);
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist + 8);
  }

  MEMORY[0x223DDF6D0](v4, v2);

  MEMORY[0x223DDF6D0](0x6570797420200A22, 0xEA0000000000203ALL);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x223DDF6D0](0x6372756F7320200ALL, 0xEC000000203A2065);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source);
  if (v5)
  {
    v6 = 0x746E65696C63;
  }

  else
  {
    v6 = 0x726576726573;
  }

  MEMORY[0x223DDF6D0](v6, 0xE600000000000000);

  if (v5)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      v12[0] = 0;
      v12[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded);
      v12[0] = 0xD000000000000010;
      v12[1] = 0x80000002234E01D0;
      goto LABEL_14;
    }
  }

  else
  {
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription);
  strcpy(v12, "\n  subReq'd : ");
  HIBYTE(v12[1]) = -18;
LABEL_14:
  if (v8)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v8)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v9, v10);

  MEMORY[0x223DDF6D0](v12[0], v12[1]);

  return v13;
}

id AudioItemCandidate.Features.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static AudioItemCandidate.BackingItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMd, &_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMR);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19 - 8, v21);
  v24 = &v31 - v23;
  v25 = *(v22 + 56);
  outlined init with copy of AudioItemCandidate.BackingItem(a1, &v31 - v23);
  outlined init with copy of AudioItemCandidate.BackingItem(a2, &v24[v25]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of AudioItemCandidate.BackingItem(v24, v15);
    v26 = *v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v27 = *&v24[v25];
      type metadata accessor for NSObject();
      v28 = static NSObject.== infix(_:_:)();

LABEL_9:
      outlined destroy of AudioItemCandidate.BackingItem(v24);
      return v28 & 1;
    }
  }

  else
  {
    outlined init with copy of AudioItemCandidate.BackingItem(v24, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v5 + 32))(v9, &v24[v25], v4);
      v28 = static Apple_Parsec_Siri_V2alpha_AudioItem.== infix(_:_:)();
      v29 = *(v5 + 8);
      v29(v9, v4);
      v29(v18, v4);
      goto LABEL_9;
    }

    (*(v5 + 8))(v18, v4);
  }

  outlined destroy of (AudioItemCandidate.BackingItem, AudioItemCandidate.BackingItem)(v24);
  v28 = 0;
  return v28 & 1;
}

id specialized AudioItemCandidate.__allocating_init(clientResult:mediaItemRankingSignals:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioItemCandidate.BackingItem(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v97 = (&v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v98 = *(v8 - 8);
  v99 = v8;
  v9 = v98[8];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v96 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v100 = &v88 - v14;
  type metadata accessor for ClientAudioResult();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  v17 = a1;
  v18 = ClientAudioResult.vocabularyResult.getter();
  if (one-time initialization token for pommes != -1)
  {
LABEL_30:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.pommes);
  v20 = v17;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();

  v23 = os_log_type_enabled(v21, v22);
  v95 = v18;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v92 = v20;
    v25 = v24;
    v26 = swift_slowAlloc();
    v93 = v4;
    v27 = v26;
    v102 = v26;
    *v25 = 136315138;
    PommesResult.resultId.getter();
    v28 = v16;
    v29 = String.debugDescription.getter();
    v30 = a2;
    v32 = v31;

    v33 = v29;
    v16 = v28;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v102);
    a2 = v30;

    *(v25 + 4) = v34;
    _os_log_impl(&dword_2232BB000, v21, v22, "Identifier being set as resultId: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v35 = v27;
    v18 = v95;
    v4 = v93;
    MEMORY[0x223DE0F80](v35, -1, -1);
    v36 = v25;
    v20 = v92;
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

  v37 = v20;
  v93 = PommesResult.resultId.getter();
  v39 = v38;

  dispatch thunk of VocabularyResult.fieldType.getter();
  UInt16.audioType.getter();
  v40 = VocabularyResult.itemType.getter();
  v94 = a2;
  if (v40 == 42184)
  {
    v44 = VocabularyResult.fields.getter();
    v88 = v16;
    v91 = v39;
    if (!v44)
    {
      goto LABEL_33;
    }

    v45 = v44;
    a2 = v44 & 0xFFFFFFFFFFFFFF8;
    if (v44 >> 62)
    {
      v46 = __CocoaSet.count.getter();
      if (v46)
      {
LABEL_13:
        v17 = 0;
        v18 = (v45 & 0xC000000000000001);
        v16 = 42189;
        while (1)
        {
          if (v18)
          {
            v47 = MEMORY[0x223DDFF80](v17, v45);
          }

          else
          {
            if (v17 >= *(a2 + 16))
            {
              goto LABEL_29;
            }

            v47 = *(v45 + 8 * v17 + 32);
          }

          v48 = v47;
          v49 = (v17 + 1);
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (VocabularyField.fieldType.getter() == 42189)
          {
            break;
          }

          ++v17;
          if (v49 == v46)
          {
            goto LABEL_32;
          }
        }

        v58 = VocabularyField.value.getter();
        v60 = v59;

        a2 = v94;
        v16 = v88;
        v92 = v60;
        if (v60)
        {
          goto LABEL_34;
        }

LABEL_33:
        v58 = VocabularyResult.semanticValue.getter();
        v92 = v61;

LABEL_34:
        v62 = VocabularyResult.fields.getter();
        v90 = v58;
        if (v62)
        {
          v63 = v62;
          v64 = v62 & 0xFFFFFFFFFFFFFF8;
          if (v62 >> 62)
          {
            goto LABEL_50;
          }

          for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
          {
            v66 = 0;
            while (1)
            {
              if ((v63 & 0xC000000000000001) != 0)
              {
                v67 = MEMORY[0x223DDFF80](v66, v63);
              }

              else
              {
                if (v66 >= *(v64 + 16))
                {
                  goto LABEL_49;
                }

                v67 = *(v63 + 8 * v66 + 32);
              }

              v68 = v67;
              v69 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                break;
              }

              if (VocabularyField.fieldType.getter() == 42190)
              {

                v89 = VocabularyField.value.getter();
                v42 = v70;

                goto LABEL_52;
              }

              ++v66;
              if (v69 == i)
              {
                goto LABEL_51;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            ;
          }

LABEL_51:

          v89 = 0;
          v42 = 0;
LABEL_52:
          a2 = v94;
          v16 = v88;
          goto LABEL_53;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        goto LABEL_13;
      }
    }

LABEL_32:

    a2 = v94;
    v16 = v88;
    goto LABEL_33;
  }

  if (v40 == 18540)
  {
    v91 = v39;
    v90 = VocabularyResult.semanticValue.getter();
    v92 = v41;
    if (a2)
    {
      v42 = *(a2 + 24);
      v89 = *(a2 + 16);

LABEL_53:
      *v97 = v16;
      swift_storeEnumTagMultiPayload();
      v71 = v98[2];
      v71(v96, v100, v99);
      if (a2)
      {
        v72 = *(a2 + 34);
      }

      else
      {
        v72 = 0;
      }

      v73 = objc_allocWithZone(type metadata accessor for AudioItemCandidate.Features());
      v74 = v37;
      v75 = [v73 init];
      v76 = type metadata accessor for AudioItemCandidate(0);
      v77 = objc_allocWithZone(v76);
      *&v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_score] = 1065353216;
      v78 = v97;
      outlined init with copy of AudioItemCandidate.BackingItem(v97, &v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_backingItem]);
      v79 = &v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_identifier];
      v80 = v91;
      *v79 = v93;
      v79[1] = v80;
      v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source] = 1;
      v81 = &v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_title];
      v82 = v92;
      *v81 = v90;
      v81[1] = v82;
      v83 = &v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_artist];
      *v83 = v89;
      v83[1] = v42;
      v84 = v96;
      v85 = v99;
      v71(&v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType], v96, v99);
      v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_requiresSubscription] = 0;
      v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_isDownloaded] = v72;
      *&v77[OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_features] = v75;
      v101.receiver = v77;
      v101.super_class = v76;
      v86 = objc_msgSendSuper2(&v101, sel_init);

      v87 = v98[1];
      v87(v84, v85);
      outlined destroy of AudioItemCandidate.BackingItem(v78);
      v87(v100, v85);
      return v86;
    }

LABEL_46:
    v89 = 0;
    v42 = 0;
    goto LABEL_53;
  }

  v50 = v18;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v102 = v54;
    *v53 = 136315138;
    VocabularyResult.itemType.getter();
    v55 = UInt16.cascadeDescription.getter();
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v102);

    *(v53 + 4) = v57;
    _os_log_impl(&dword_2232BB000, v51, v52, "AudioItemCandidate : initializer does not support item type : %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x223DE0F80](v54, -1, -1);
    MEMORY[0x223DE0F80](v53, -1, -1);
  }

  else
  {
  }

  (v98[1])(v100, v99);
  return 0;
}

unint64_t lazy protocol witness table accessor for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source()
{
  result = lazy protocol witness table cache variable for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source;
  if (!lazy protocol witness table cache variable for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioItemCandidate.Source and conformance AudioItemCandidate.Source);
  }

  return result;
}

uint64_t type metadata completion function for AudioItemCandidate()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for AudioItemCandidate.BackingItem(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t type metadata completion function for AudioItemCandidate.BackingItem()
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItem();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ClientAudioResult();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t outlined destroy of (AudioItemCandidate.BackingItem, AudioItemCandidate.BackingItem)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMd, &_s21SiriInformationSearch18AudioItemCandidateC07BackingE033_39A65E8D769182CAD4F711B84F5C7A7FLLO_AFtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t ContactProfileSliceResolver.__allocating_init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v27 = a6;
  v28 = a8;
  v15 = *(v8 + 48);
  v16 = *(v8 + 52);
  v17 = swift_allocObject();
  v19 = a7[3];
  v18 = a7[4];
  v20 = __swift_mutable_project_boxed_opaque_existential_1(a7, v19);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v20, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23);
  v25 = specialized ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(a1, a2, a3, a4, a5, v27, v23, v28, v17, v19, v18);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v25;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2, void *a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_34:
    v36 = a3;
    v37 = __CocoaSet.count.getter();
    a3 = v36;
    v5 = v37;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v42 = v5;
      v43 = v4 & 0xFFFFFFFFFFFFFF8;
      v39 = v4;
      v40 = a3;
      v41 = v4 & 0xC000000000000001;
      v38 = a2;
      do
      {
        if (v7)
        {
          v8 = MEMORY[0x223DDFF80](v6, v4);
        }

        else
        {
          if (v6 >= *(v43 + 16))
          {
            goto LABEL_31;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v11 = [v8 contactIdentifier];
        if (v11)
        {
          v44 = v9;
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;

          if (*(*a2 + 16))
          {
            v16 = v4;
            v17 = v7;
            v18 = v13;
            specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
            if (v19)
            {

              v7 = v17;
              v4 = v16;
              v5 = v42;
              goto LABEL_5;
            }

            v20 = *a2;
          }

          else
          {
            v18 = v13;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v22 = *a2;
          v45 = *a2;
          *a2 = 0x8000000000000000;
          v4 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v15);
          v24 = *(v22 + 16);
          v25 = (v23 & 1) == 0;
          v26 = v24 + v25;
          if (__OFADD__(v24, v25))
          {
            goto LABEL_32;
          }

          a2 = v23;
          if (*(v22 + 24) >= v26)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
            v27 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v15);
            if ((a2 & 1) != (v28 & 1))
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            v4 = v27;
          }

          if (a2)
          {
            *(v45[7] + v4) = 1;
          }

          else
          {
            v45[(v4 >> 6) + 8] |= 1 << v4;
            v29 = (v45[6] + 16 * v4);
            *v29 = v18;
            v29[1] = v15;
            *(v45[7] + v4) = 1;
            v30 = v45[2];
            v31 = __OFADD__(v30, 1);
            v32 = v30 + 1;
            if (v31)
            {
              goto LABEL_33;
            }

            v45[2] = v32;
          }

          a2 = v38;
          v33 = *v38;
          *v38 = v45;

          v34 = v44;
          MEMORY[0x223DDF820]();
          v4 = v39;
          v7 = v41;
          if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v35 = *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v7 = v41;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v5 = v42;
        }

        else
        {
        }

LABEL_5:
        ++v6;
      }

      while (v10 != v5);
    }
  }
}

uint64_t ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  v24 = a6;
  v25 = a8;
  v16 = a7[3];
  v15 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = specialized ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(a1, a2, a3, a4, a5, v24, v20, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a7);
  return v22;
}

uint64_t ContactProfileSliceResolver.resolveRelationship()@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x277D396E0], v2);
  v8 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);
  v9 = *(v1 + 152);
  v10 = *(v1 + 160);
  v11 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId;
  v12 = (*(*v8 + 128))(v9, v10, v1 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, v7);
  ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(0, v7, v15);
  (*(*v8 + 136))(v9, v10, v1 + v11, v12);

  return (*(v3 + 8))(v7, v2);
}

void ContactProfileSliceResolver.resolveNameSlice(label:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);
  v15 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId;
  v16 = *(v2 + 160);
  v17 = *(v2 + 152);
  v19 = (*(*v5 + 128))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2234CF910;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277D39720], v6);
  v12(v11 + v8, *MEMORY[0x277D39730], v6);
  v12(v11 + 2 * v8, *MEMORY[0x277D39728], v6);
  LOBYTE(v7) = specialized Sequence<>.contains(_:)(a1, v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v7)
  {
    ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(1, a1, a2);
    (*(*v5 + 136))(v17, v16, v3 + v15, v19);
  }

  else
  {
    (*(*v5 + 144))(v17, v16, v3 + v15, v19, 2);

    v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    v14 = *(*(v13 - 8) + 56);

    v14(a2, 1, 1, v13);
  }
}

size_t ContactProfileSliceResolver.resolveContactSlice(requestType:label:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Person();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v66 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v65 = *(v18 - 8);
  v19 = *(v65 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x223DDBBA0](v21);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    (*(*(v47 - 8) + 56))(a3, 1, 1, v47);
  }

  v27 = specialized ContactProfileSliceResolver.buildContactQuery(request:contactName:)(a1 & 1, v24, v25);

  v28 = ContactProfileSliceResolver.searchContacts(contactQuery:)(v27);

  if (!v28)
  {
    v48 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    v49 = *(*(v48 - 8) + 56);

    return v49(a3, 1, 1, v48);
  }

  if (v28 >> 62)
  {
    v29 = __CocoaSet.count.getter();
    v54 = a2;
    v55 = a3;
    if (v29)
    {
      goto LABEL_7;
    }

LABEL_23:

    v32 = MEMORY[0x277D84F90];
LABEL_24:
    v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
    MEMORY[0x28223BE20](v50, v51);
    *(&v53 - 2) = v54;
    *(&v53 - 1) = v32;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
    v52 = v55;
    static Message.with(_:)();

    return (*(*(v50 - 8) + 56))(v52, 0, 1, v50);
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = a2;
  v55 = a3;
  if (!v29)
  {
    goto LABEL_23;
  }

LABEL_7:
  v64 = v28;
  v68 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29 & ~(v29 >> 63), 0);
  v63 = v29;
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v68;
    v33 = v64;
    v58 = (v14 + 16);
    v59 = v64 & 0xC000000000000001;
    v56 = v65 + 32;
    v57 = (v14 + 8);
    v60 = v23;
    v61 = v18;
    v62 = v4;
    do
    {
      if (v59)
      {
        v34 = MEMORY[0x223DDFF80](v31);
      }

      else
      {
        v34 = *(v33 + 8 * v31 + 32);
      }

      v36 = v34;
      *(&v53 - 2) = MEMORY[0x28223BE20](v34, v35);
      *(&v53 - 1) = v4;
      v37 = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_Person and conformance Apple_Parsec_Siri_V2alpha_Person, MEMORY[0x277D38FC0]);
      v38 = v66;
      static Message.with(_:)();
      v67[3] = v13;
      v67[4] = v37;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
      (*v58)(boxed_opaque_existential_1, v38, v13);
      defaultAnyTypeURLPrefix.getter();
      Google_Protobuf_Any.init(message:partial:typePrefix:)();
      v41 = v60;
      v40 = v61;
      v42 = type metadata accessor for Google_Protobuf_Any();
      v43 = (*(*(v42 - 8) + 56))(v12, 0, 1, v42);
      MEMORY[0x28223BE20](v43, v44);
      *(&v53 - 2) = v12;
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValue and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValue, MEMORY[0x277D39768]);
      static Message.with(_:)();

      (*v57)(v66, v13);
      outlined destroy of MediaUserStateCenter?(v12, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
      v68 = v32;
      v46 = *(v32 + 16);
      v45 = *(v32 + 24);
      if (v46 >= v45 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45 > 1, v46 + 1, 1);
        v32 = v68;
      }

      ++v31;
      *(v32 + 16) = v46 + 1;
      (*(v65 + 32))(v32 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v46, v41, v40);
      v4 = v62;
      v33 = v64;
    }

    while (v63 != v31);

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Google_Protobuf_Any();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueResolutionState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19, v21);
  (*(v23 + 104))(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D39AD8]);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();
  (*(v14 + 104))(v18, *MEMORY[0x277D39D58], v13);
  Apple_Parsec_Siri_V2alpha_ProfileSliceValue.state.setter();
  outlined init with copy of Google_Protobuf_Any?(v27, v6);
  v24 = *(v8 + 48);
  if (v24(v6, 1, v7) == 1)
  {
    Google_Protobuf_Any.init()();
    if (v24(v6, 1, v7) != 1)
    {
      outlined destroy of MediaUserStateCenter?(v6, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMd, &_s21InternalSwiftProtobuf07Google_C4_AnyVSgMR);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
  }

  return Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.setter();
}

uint64_t closure #2 in ContactProfileSliceResolver.resolveContactSlice(requestType:label:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  Apple_Parsec_Siri_V2alpha_ProfileSlice.label.setter();

  return Apple_Parsec_Siri_V2alpha_ProfileSlice.values.setter();
}

unint64_t ContactProfileSliceResolver.searchContacts(contactQuery:)(uint64_t a1)
{
  v61 = a1;
  v1 = type metadata accessor for Date();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for RecommenderType();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v60, v8);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27ContactHandleTypePreferenceVSgMd, &_s13SiriInference27ContactHandleTypePreferenceVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = v59 - v14;
  v16 = type metadata accessor for SearchSuggestedContacts();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ContactResolverDomain();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v25 = type metadata accessor for Locale();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8, v27);
  v28 = type metadata accessor for ContactResolverConfig();
  v64 = *(v28 - 8);
  v65 = v28;
  v29 = *(v64 + 64);
  MEMORY[0x28223BE20](v28, v30);
  v32 = v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AppDataProviding(v59[1] + 16, v68);
  static Locale.current.getter();
  static ContactResolverDomain.all.getter();
  (*(v17 + 104))(v21, *MEMORY[0x277D56148], v16);
  static ContactHandleTypePreference.preferPhone.getter();
  v33 = type metadata accessor for ContactHandleTypePreference();
  (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
  (*(v6 + 104))(v10, *MEMORY[0x277D560D0], v60);
  v57 = 0u;
  LOWORD(v56) = 0;
  v55 = 0u;
  v34 = ContactResolverConfig.init(intentId:intentTypeName:locale:logRunTimeData:processNLv3SpeechAlternatives:bundleIds:domainsToSearchForHistory:searchSuggestedContacts:handleTypePreference:recommender:customGenerator:includeResolutionSignals:commsHasForcePrompted:crrCommsAppSelectionJointId:)();
  if (one-time initialization token for shared != -1)
  {
    v34 = swift_once();
  }

  v36 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v34, v35);
  v56 = v68;
  *&v57 = v61;
  *(&v57 + 1) = v32;
  Date.init()();
  v37 = *(*v36 + 200);
  *(&v57 + 1) = &v55;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8INPersonCGSgMd, &_sSaySo8INPersonCGSgMR);
  LOBYTE(v56) = 2;
  v37(&v67, 0xD000000000000029, 0x80000002234E04F0, 0, v5, "SiriInformationSearch/ContactProfileSliceResolver.swift", 55, 2, 132, "searchContacts(contactQuery:)", 29, v56, partial apply for closure #1 in ContactProfileSliceResolver.searchContacts(contactQuery:));
  (*(v62 + 8))(v5, v63);
  if (v67)
  {
    v38 = specialized Sequence.flatMap<A>(_:)(v67);

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static Logger.pommes);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      if (v38 >> 62)
      {
        v43 = __CocoaSet.count.getter();
      }

      else
      {
        v43 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v42 + 4) = v43;

      _os_log_impl(&dword_2232BB000, v40, v41, "NameProfileResolver: Resolved contacts %ld", v42, 0xCu);
      MEMORY[0x223DE0F80](v42, -1, -1);
    }

    else
    {
    }

    v49 = MEMORY[0x277D84F90];
    v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v66 = v49;
    specialized Sequence.forEach(_:)(v38, &v67, &v66);

    v48 = v66;

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134217984;
      if (v48 >> 62)
      {
        v53 = __CocoaSet.count.getter();
      }

      else
      {
        v53 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v52 + 4) = v53;

      _os_log_impl(&dword_2232BB000, v50, v51, "NameProfileResolver: Deduped resolved contacts %ld", v52, 0xCu);
      MEMORY[0x223DE0F80](v52, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    __swift_project_value_buffer(v44, static Logger.pommes);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2232BB000, v45, v46, "NameProfileResolver: No resolved contacts", v47, 2u);
      MEMORY[0x223DE0F80](v47, -1, -1);
    }

    v48 = 0;
  }

  (*(v64 + 8))(v32, v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v48;
}

uint64_t closure #1 in ContactProfileSliceResolver.searchContacts(contactQuery:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(v9 + 8))(a2, a3, v8, v9);
  if (v4)
  {

    result = 0;
  }

  *a4 = result;
  return result;
}

uint64_t static ContactProfileSliceResolver.toContactNode(occupantNode:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference12ContactQueryVSgMd, &_s13SiriInference12ContactQueryVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference24ContactRelationshipQueryVSgMd, &_s13SiriInference24ContactRelationshipQueryVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v29 - v18;
  ContactQuery.init()();
  OccupantIntentNode.fullName.getter();
  ContactQuery.fullName.setter();
  if (ContactQuery.fullName.getter() || v20 != 0xE000000000000000)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  OccupantIntentNode.firstName.getter();
  ContactQuery.givenName.setter();
  OccupantIntentNode.lastName.getter();
  ContactQuery.familyName.setter();
LABEL_6:
  OccupantIntentNode.nickname.getter();
  ContactQuery.nickname.setter();
  OccupantIntentNode.namePrefix.getter();
  v22 = type metadata accessor for PersonOntologyNode.PersonNamePrefix();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v19, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMd, &_s12SiriOntology06PersonB4NodeC0C10NamePrefixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePrefix.rawValue.getter();
    (*(v23 + 8))(v19, v22);
  }

  ContactQuery.namePrefix.setter();
  OccupantIntentNode.namePostfix.getter();
  v24 = type metadata accessor for PersonOntologyNode.PersonNamePostfix();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v14, 1, v24) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMd, &_s12SiriOntology06PersonB4NodeC0C11NamePostfixOSgMR);
  }

  else
  {
    PersonOntologyNode.PersonNamePostfix.rawValue.getter();
    (*(v25 + 8))(v14, v24);
  }

  ContactQuery.nameSuffix.setter();
  OccupantIntentNode.company.getter();
  ContactQuery.organizationName.setter();
  OccupantIntentNode.relationship.getter();
  v26 = type metadata accessor for ContactQuery();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  ContactRelationshipQuery.init(label:fromContact:)();
  v27 = type metadata accessor for ContactRelationshipQuery();
  (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  return ContactQuery.relationship.setter();
}

id closure #1 in ContactProfileSliceResolver.buildPerson(person:)(uint64_t a1, void *a2, uint64_t a3)
{
  v26[1] = a3;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v27 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v26 - v11;
  v13 = [a2 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  v14 = [a2 contactIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26[0] = v4;
    v18 = v17;

    Apple_Parsec_Siri_V2alpha_Person.contactIdentifier.setter();
    ContactProfileSliceResolver.getAddresses(identifier:)(v16, v18);
    v4 = v26[0];

    Apple_Parsec_Siri_V2alpha_Person.addresses.setter();
  }

  result = [a2 nameComponents];
  if (result)
  {
    v20 = v27;
    v21 = result;
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v12, v20, v4);
    PersonNameComponents.givenName.getter();
    if (v22)
    {
      Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
    }

    PersonNameComponents.familyName.getter();
    if (v23)
    {
      Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
    }

    PersonNameComponents.middleName.getter();
    if (v24)
    {
      Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
    }

    PersonNameComponents.nickname.getter();
    if (v25)
    {
      Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
    }

    return (*(v5 + 8))(v12, v4);
  }

  return result;
}

void ContactProfileSliceResolver.getAddresses(identifier:)(uint64_t a1, uint64_t *a2)
{
  v44 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress();
  v45 = *(v4 - 8);
  v5 = v45[8];
  v7 = MEMORY[0x28223BE20](v4, v6);
  v47 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v46 = v42 - v10;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    v15 = swift_once();
  }

  v43 = v42;
  v19 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v15, v16);
  v38 = v2;
  v39 = a1;
  v40 = v44;
  Date.init()();
  v20 = *(*v19 + 200);
  v40 = &v37;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9CNContactCSgMd, &_sSo9CNContactCSgMR);
  LOBYTE(v38) = 2;
  v20(&v48, 0xD00000000000003ALL, 0x80000002234E0450, 0, v18, "SiriInformationSearch/ContactProfileSliceResolver.swift", 55, 2, 221, "getAddresses(identifier:)", 25, v38, partial apply for closure #1 in ContactProfileSliceResolver.getAddresses(identifier:));
  (*(v12 + 8))(v18, v11);
  v21 = v48;
  if (!v48)
  {
    return;
  }

  v22 = [v48 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14CNLabeledValueCMd, &_sSo14CNLabeledValueCMR);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v23;
  if (v23 >> 62)
  {
    v36 = __CocoaSet.count.getter();
    v24 = v23;
    v25 = v36;
    v42[0] = v21;
    if (v36)
    {
      goto LABEL_6;
    }

LABEL_19:

    return;
  }

  v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v42[0] = v21;
  if (!v25)
  {
    goto LABEL_19;
  }

LABEL_6:
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = (v45 + 2);
    v42[2] = v45 + 1;
    v43 = (v24 & 0xC000000000000001);
    v42[1] = v45 + 4;
    v28 = MEMORY[0x277D84F90];
    v44 = v24;
    do
    {
      if (v43)
      {
        v29 = MEMORY[0x223DDFF80](v26);
      }

      else
      {
        v29 = *(v24 + 8 * v26 + 32);
      }

      v31 = v29;
      v40 = MEMORY[0x28223BE20](v29, v30);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress, MEMORY[0x277D39648]);
      v32 = v46;
      static Message.with(_:)();
      (*v27)(v47, v32, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28[2] + 1, 1, v28);
      }

      v34 = v28[2];
      v33 = v28[3];
      if (v34 >= v33 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v28);
      }

      ++v26;

      v35 = v45;
      (v45[1])(v46, v4);
      v28[2] = v34 + 1;
      (v35[4])(v28 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v34, v47, v4);
      v24 = v44;
    }

    while (v25 != v26);
    goto LABEL_19;
  }

  __break(1u);
}

void closure #1 in ContactProfileSliceResolver.getAddresses(identifier:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore);
  v6 = MEMORY[0x223DDF550](a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2234D0FE0;
  v8 = *MEMORY[0x277CBD0C8];
  *(v7 + 32) = *MEMORY[0x277CBD0C8];
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16[0] = 0;
  v11 = [v5 unifiedContactWithIdentifier:v6 keysToFetch:isa error:v16];

  v12 = v16[0];
  if (!v11)
  {
    v13 = v12;
    v14 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *a4 = v11;
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t closure #2 in ContactProfileSliceResolver.getAddresses(identifier:)(int a1, id a2)
{
  v3 = [a2 label];
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  Apple_Parsec_Siri_V2alpha_Person.givenName.setter();
  v5 = [a2 value];
  v6 = [v5 street];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_Person.middleName.setter();
  v7 = [a2 value];
  v8 = [v7 city];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_Person.familyName.setter();
  v9 = [a2 value];
  v10 = [v9 ISOCountryCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_ContactAddress.countryCode.setter();
  v11 = [a2 value];
  v12 = [v11 postalCode];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Apple_Parsec_Siri_V2alpha_Person.fullName.setter();
  v13 = [a2 value];
  v14 = [v13 state];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Apple_Parsec_Siri_V2alpha_Person.nickname.setter();
}

uint64_t ContactProfileSliceResolver.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v12 = *(v0 + 144);
  v11 = *(v0 + 136);
  v10 = *(v0 + 120);
  outlined consume of AssistantDataSnapshot?(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v5 = *(v0 + 160);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v6 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);

  return v0;
}

uint64_t ContactProfileSliceResolver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v14 = *(v0 + 144);
  v13 = *(v0 + 136);
  v12 = *(v0 + 120);
  outlined consume of AssistantDataSnapshot?(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v5 = *(v0 + 160);

  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v6 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil);

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized ContactProfileSliceResolver.init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a9 + 16));
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a7, a10);
  v20 = a1[3];
  *(a9 + 88) = a1[2];
  *(a9 + 104) = v20;
  *(a9 + 120) = a1[4];
  *(a9 + 130) = *(a1 + 74);
  v21 = a1[1];
  *(a9 + 56) = *a1;
  *(a9 + 72) = v21;
  *(a9 + 152) = a2;
  *(a9 + 160) = a3;
  outlined init with take of PommesCandidateId?(a4, a9 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_pommesCandidateId);
  v22 = OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_resolutionRequest;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  (*(*(v23 - 8) + 32))(a9 + v22, a5, v23);
  *(a9 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_contactStore) = a8;
  *(a9 + OBJC_IVAR____TtC21SiriInformationSearch27ContactProfileSliceResolver_instrumentationUtil) = a6;
  return a9;
}

uint64_t outlined consume of AssistantDataSnapshot?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t type metadata accessor for ContactProfileSliceResolver()
{
  result = type metadata singleton initialization cache for ContactProfileSliceResolver;
  if (!type metadata singleton initialization cache for ContactProfileSliceResolver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ContactProfileSliceResolver()
{
  type metadata accessor for PommesCandidateId?();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of ContactProfileSliceResolver.__allocating_init(from:requestId:pommesCandidateId:profileResolutionRequest:instrumentationUtil:contactResolver:contactStore:)(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(v1 + 136);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  v8[4] = *(a1 + 64);
  v9 = v2;
  v10 = v3;
  return v4(v8);
}

void type metadata accessor for PommesCandidateId?()
{
  if (!lazy cache variable for type metadata for PommesCandidateId?)
  {
    type metadata accessor for PommesCandidateId();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PommesCandidateId?);
    }
  }
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [INPerson] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [INPerson] and conformance [A];
  if (!lazy protocol witness table cache variable for type [INPerson] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [INPerson] and conformance [A]);
  }

  return result;
}

uint64_t specialized ContactProfileSliceResolver.buildContactQuery(request:contactName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = type metadata accessor for ContactQuery();
  v102 = *(v93 - 8);
  v5 = *(v102 + 64);
  v7 = MEMORY[0x28223BE20](v93, v6);
  v91 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v98 = &v85 - v10;
  v103 = type metadata accessor for OccupantIntentNode();
  v90 = *(v103 - 8);
  v11 = *(v90 + 64);
  v13 = MEMORY[0x28223BE20](v103, v12);
  v87 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v88 = &v85 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v97 = &v85 - v19;
  v20 = type metadata accessor for NonTerminalIntentNode();
  v100 = *(v20 - 8);
  v101 = v20;
  v21 = *(v100 + 64);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v92 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v85 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology15TerminalElementV5ValueOSgMd, &_s12SiriOntology15TerminalElementV5ValueOSgMR);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8, v30);
  v32 = (&v85 - v31);
  v33 = type metadata accessor for TerminalIntentNode();
  v99 = *(v33 - 8);
  v34 = *(v99 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v85 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v32 = a2;
  v32[1] = a3;
  v38 = *MEMORY[0x277D5E5C8];
  v39 = type metadata accessor for TerminalElement.Value();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v32, v38, v39);
  (*(v40 + 56))(v32, 0, 1, v39);

  v41 = v97;
  TerminalIntentNode.init(name:value:semanticTags:)();
  v42 = type metadata accessor for AddressOntologyNode.OccupantNode();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = AddressOntologyNode.OccupantNode.init(name:multicardinal:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology10IntentNode_pGMR);
  v46 = swift_allocObject();
  v89 = xmmword_2234CF920;
  *(v46 + 16) = xmmword_2234CF920;
  v47 = MEMORY[0x277D5E670];
  *(v46 + 56) = v33;
  *(v46 + 64) = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
  v49 = *(v99 + 16);
  v94 = v37;
  v95 = v33;
  v49(boxed_opaque_existential_1, v37, v33);
  v50 = v98;
  NonTerminalIntentNode.init(name:childNodes:resultIDs:)();
  v51 = *(v100 + 16);
  v96 = v27;
  v51(v92, v27, v101);

  v92 = v45;
  OccupantIntentNode.init(intentNode:ontologyNode:)();
  type metadata accessor for ContactProfileSliceResolver();
  static ContactProfileSliceResolver.toContactNode(occupantNode:)();
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  __swift_project_value_buffer(v52, static Logger.pommes);
  v53 = v90;
  v54 = *(v90 + 16);
  v55 = v88;
  v54(v88, v41, v103);
  v56 = v91;
  v57 = v93;
  (*(v102 + 16))(v91, v50, v93);
  v58 = Logger.logObject.getter();
  v86 = static os_log_type_t.debug.getter();
  v59 = v55;
  if (os_log_type_enabled(v58, v86))
  {
    v60 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v104[0] = v85;
    *v60 = 136315394;
    v61 = v103;
    v54(v87, v55, v103);
    v62 = String.init<A>(describing:)();
    v63 = v61;
    v64 = v58;
    v65 = v56;
    v66 = v57;
    v68 = v67;
    v69 = *(v53 + 8);
    v69(v59, v63);
    v70 = v69;
    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v68, v104);
    v57 = v66;
    v72 = v102;

    *(v60 + 4) = v71;
    *(v60 + 12) = 2080;
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(&lazy protocol witness table cache variable for type ContactQuery and conformance ContactQuery, MEMORY[0x277D55FF8]);
    v73 = dispatch thunk of CustomStringConvertible.description.getter();
    v75 = v74;
    (*(v72 + 8))(v65, v57);
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v104);
    v50 = v98;

    *(v60 + 14) = v76;
    _os_log_impl(&dword_2232BB000, v64, v86, "NameProfileResolver: occupant node %s contactQuery %s", v60, 0x16u);
    v77 = v85;
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v77, -1, -1);
    v78 = v60;
    v41 = v97;
    MEMORY[0x223DE0F80](v78, -1, -1);
  }

  else
  {

    (*(v102 + 8))(v56, v57);
    v79 = *(v53 + 8);
    v79(v59, v103);
    v70 = v79;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference12ContactQueryVGMR);
  v80 = v102;
  v81 = *(v102 + 72);
  v82 = (*(v102 + 80) + 32) & ~*(v102 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = v89;
  (*(v80 + 32))(v83 + v82, v50, v57);

  v70(v41, v103);
  (*(v100 + 8))(v96, v101);
  (*(v99 + 8))(v94, v95);
  return v83;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ContactAddress and conformance Apple_Parsec_Siri_V2alpha_ContactAddress(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t UInt16.mpMediaEntityType.getter(unsigned __int16 a1)
{
  if (a1 - 18557 <= 9)
  {
    if (((1 << (a1 - 125)) & 0x35B) != 0)
    {
      return 0;
    }

    if (a1 == 18559)
    {
      return 3;
    }

    if (a1 == 18564)
    {
      return 2;
    }
  }

  v2 = 7;
  if (a1 != 18556)
  {
    v2 = a1 == 18562;
  }

  if (a1 == 18555)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t PegasusProxy.__allocating_init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v11 = v10;
  v46 = a7;
  v47 = a8;
  v44 = a4;
  v45 = a6;
  v42 = a1;
  v43 = a2;
  v41 = a10;
  v14 = *(v11 + 48);
  v15 = *(v11 + 52);
  v16 = swift_allocObject();
  v17 = a3[3];
  v39 = a3[4];
  v40 = v16;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a3, v17);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v18, v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = a5[3];
  v38 = a5[4];
  v24 = __swift_mutable_project_boxed_opaque_existential_1(a5, v23);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24, v24);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = a9[3];
  v30 = a9[4];
  v31 = __swift_mutable_project_boxed_opaque_existential_1(a9, v29);
  v32 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v31, v31);
  v34 = &v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v35 + 16))(v34);
  v36 = specialized PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(v42, v43, v21, v44, v27, v45, v46, v47, v34, v41, v40, v29, v17, v23, v30, v39, v38);

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v36;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg504_s21h19InformationSearch12d59ProxyC22addRewrittenUtterances2to12delegatedUDASay0D3API013f1_g4_a9_i4_dC5K67VGAJ_0A8NLUTypes0A36_Nlu_External_DelegatedUserDialogActVtFA2IXEfU_AF0f1_g1_h1_i1_R9UtteranceVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v25[1] = v2;
    v33 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v33;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v29 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v30 = v13;
    v14 = a1 + v29;
    v27 = *(v12 + 56);
    v28 = (v12 + 16);
    v26 = xmmword_2234CF920;
    v31 = v12;
    do
    {
      v30(v9, v14, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVGMR);
      v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
      v16 = *(v15 - 8);
      v17 = *(v16 + 72);
      v18 = v4;
      v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v26;
      (*(v16 + 16))(v20 + v19, v32, v15);
      Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.setter();
      v33 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21 > 1, v22 + 1, 1);
        v11 = v33;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v27;
      (*v28)(v11 + v29 + v22 * v27, v9, v18);
      v14 += v23;
      --v10;
      v4 = v18;
    }

    while (v10);
  }

  return v11;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVG_AHs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a1;
  v23 = a2;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v12;
  }

  v24 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v12 = v24;
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = a3 + v20;
  v19 = (v6 + 32);
  v14 = *(v6 + 72);
  while (1)
  {
    v22(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v24 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
      v12 = v24;
    }

    *(v12 + 16) = v16 + 1;
    (*v19)(v12 + v20 + v16 * v14, v10, v21);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriNLUTypes0D18_Nlu_External_SpanVG_10PegasusAPI013Apple_Parsec_D21_Context_ClientEntityVsAE_pTg5(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for Apple_Parsec_Siri_Context_ClientEntity();
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v19, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v23;
    v13 = *(type metadata accessor for Siri_Nlu_External_Span() - 8);
    v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18[1] = v6 + 32;
    v18[0] = *(v13 + 72);
    while (1)
    {
      v20(v14, &v22);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v23 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 > 1, v16 + 1, 1);
        v12 = v23;
      }

      *(v12 + 16) = v16 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v10, v19);
      v14 += v18[0];
      if (!--v11)
      {
        return v12;
      }
    }
  }

  return v12;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay12SiriOntology010Com_Apple_D26_Product_Proto_DisplayHintVG_10PegasusAPI0g8_Parsec_d9_Context_ljK0Vs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v27 = a1;
  v28 = a2;
  v26 = a4(0);
  v11 = *(v26 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v26, v13);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v23 = a5;
  a5(0, v16, 0);
  v17 = v29;
  v18 = *(a6(0) - 8);
  v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v25 = v11 + 32;
  v24 = *(v18 + 72);
  while (1)
  {
    v27(v19);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v29 = v17;
    v21 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v21 >= v20 >> 1)
    {
      v23(v20 > 1, v21 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v21 + 1;
    (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v15, v26);
    v19 += v24;
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t PegasusSearchResponse.init(request:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t static PegasusProxy.multiUserContext(for:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserContext.UserIdentityClassification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_MultiUserContext.init()();
  v8 = type metadata accessor for PommesSearchRequest(0);
  v9 = (a1 + *(v8 + 84));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  Apple_Parsec_Siri_V2alpha_MultiUserContext.sharedUserID.setter();
  v12 = *(a1 + *(v8 + 88));
  if (v12 > 4)
  {
    v13 = MEMORY[0x277D39690];
  }

  else
  {
    v13 = qword_2784DAE00[v12];
  }

  (*(v3 + 104))(v7, *v13, v2);
  return Apple_Parsec_Siri_V2alpha_MultiUserContext.userIdentificationClassification.setter();
}

uint64_t PegasusSearchResponse.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PegasusSearchResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PegasusSearchResponse(0) + 20);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::Int PegasusError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1);
  return Hasher._finalize()();
}

uint64_t OnDeviceLabels.userSpanLabels.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t OnDeviceLabels.onScreenContextLabels.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

SiriInformationSearch::OnDeviceLabels __swiftcall OnDeviceLabels.init()()
{
  v0 = MEMORY[0x277D84F90];
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = v0;
  result.onScreenContextLabels._rawValue = v1;
  result.userSpanLabels._rawValue = v2;
  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.summarizedDescription.getter()
{
  v1 = type metadata accessor for Latencyinfopb_KfedLatencyInfo();
  v114 = *(v1 - 8);
  v115 = v1;
  v2 = *(v114 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v113 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v111 = *(v112 - 8);
  v5 = *(v111 + 64);
  MEMORY[0x28223BE20](v112, v6);
  v110 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error();
  v108 = *(v109 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v109, v9);
  v107 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v122 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v126 = *(v131 - 8);
  v15 = *(v126 + 64);
  v17 = MEMORY[0x28223BE20](v131, v16);
  v117 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v106 - v20;
  v130 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v22 = *(v130 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v130, v24);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v119 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v106 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v118 = &v106 - v39;
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v44 = MEMORY[0x28223BE20](v40, v43);
  v46 = &v106 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v47);
  v116 = &v106 - v48;
  v125 = v0;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v49 = *(v28 + 8);
  v120 = v28 + 8;
  v121 = v27;
  v127 = v49;
  v50 = v49(v35, v27);
  v51 = v41;
  v52 = v40;
  v53 = MEMORY[0x223DDB9C0](v50);
  result = (*(v22 + 8))(v26, v130);
  v130 = *(v53 + 16);
  if (v130)
  {
    v55 = 0;
    v129 = v53 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v128 = v41 + 16;
    v56 = (v126 + 8);
    v57 = (v41 + 8);
    while (v55 < *(v53 + 16))
    {
      v58 = v51;
      (*(v51 + 16))(v46, v129 + *(v51 + 72) * v55, v52);
      v59 = v52;
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
      v60 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.print.getter();
      v62 = v61;
      (*v56)(v21, v131);

      v63 = HIBYTE(v62) & 0xF;
      if ((v62 & 0x2000000000000000) == 0)
      {
        v63 = v60 & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {

        v65 = v118;
        (*(v58 + 32))(v118, v46, v59);
        v64 = 0;
        v52 = v59;
        v51 = v58;
        goto LABEL_10;
      }

      ++v55;
      result = (*v57)(v46, v59);
      v52 = v59;
      v51 = v58;
      if (v130 == v55)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v64 = 1;
    v65 = v118;
LABEL_10:
    (*(v51 + 56))(v65, v64, 1, v52);
    v66 = (*(v51 + 48))(v65, 1, v52);
    v67 = v121;
    v68 = v127;
    if (v66 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v65, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentVSgMR);
      v118 = 0;
      v130 = 0xE000000000000000;
      v128 = 0;
      v129 = 0xE000000000000000;
    }

    else
    {
      v69 = v116;
      (*(v51 + 32))(v116, v65, v52);
      v70 = v117;
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
      v118 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.speak.getter();
      v129 = v71;
      v72 = v67;
      v73 = *(v126 + 8);
      v74 = v131;
      v73(v70, v131);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
      v128 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
      v130 = v75;
      v73(v70, v74);
      v67 = v72;
      (*(v51 + 8))(v69, v52);
    }

    v76 = v124;
    v78 = v122;
    v77 = v123;
    v79 = v119;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
    v80 = v68(v79, v67);
    v81 = v67;
    v82 = MEMORY[0x223DDBA80](v80);
    v83 = *(v77 + 8);
    v83(v78, v76);
    v84 = *(v82 + 16);

    if (v84)
    {

      v133 = 0;
      v134 = 0xE000000000000000;
      _StringGuts.grow(_:)(57);
      MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234E0580);
      v85 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
      MEMORY[0x223DDF6D0](v85);

      MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E05A0);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
      v127(v79, v81);
      v86 = Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.summarizedDescription.getter();
      v88 = v87;
      v83(v78, v76);
      MEMORY[0x223DDF6D0](v86, v88);

      v89 = 0x5D202020200ALL;
      v90 = 0xE600000000000000;
    }

    else
    {
      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasError.getter())
      {

        v133 = 0;
        v134 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v133 = 0xD000000000000013;
        v134 = 0x80000002234E0580;
        v91 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
        MEMORY[0x223DDF6D0](v91);

        MEMORY[0x223DDF6D0](0x7265202020200A2CLL, 0xED0000203A726F72);
        v92 = v107;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.error.getter();
        v93 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.message.getter();
        v95 = v94;
        (*(v108 + 8))(v92, v109);
        MEMORY[0x223DDF6D0](v93, v95);
      }

      else
      {
        v133 = 0;
        v134 = 0xE000000000000000;
        _StringGuts.grow(_:)(163);
        MEMORY[0x223DDF6D0](0xD000000000000013, 0x80000002234E0580);
        v96 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryString.getter();
        MEMORY[0x223DDF6D0](v96);

        MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E05C0);
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
        Double.write<A>(to:)();
        MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234E05E0);
        v97 = v110;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v98 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
        v100 = v99;
        v101 = *(v111 + 8);
        v102 = v112;
        v101(v97, v112);
        MEMORY[0x223DDF6D0](v98, v100);

        MEMORY[0x223DDF6D0](0xD00000000000001DLL, 0x80000002234E0600);
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        v103 = v113;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.getter();
        v101(v97, v102);
        v104 = Latencyinfopb_KfedLatencyInfo.overallMs.getter();
        (*(v114 + 8))(v103, v115);
        v132 = v104;
        v105 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223DDF6D0](v105);

        MEMORY[0x223DDF6D0](0xD00000000000001CLL, 0x80000002234E0620);
        MEMORY[0x223DDF6D0](v118, v129);

        MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234E0640);
        MEMORY[0x223DDF6D0](v128, v130);
      }

      v89 = 32010;
      v90 = 0xE200000000000000;
    }

    MEMORY[0x223DDF6D0](v89, v90);
    return v133;
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.summarizedDescription.getter()
{
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  v3 = MEMORY[0x28223BE20](v26, v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x223DDBA80](v3);
  v7 = *(v6 + 16);
  if (v7)
  {
    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v29;
    v10 = *(v0 + 16);
    v9 = v0 + 16;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    v22 = v6;
    v23 = (v9 - 8);
    do
    {
      v12 = v26;
      v13 = v9;
      v25(v5, v11, v26);
      v27 = 9;
      v28 = 0xE100000000000000;
      v14 = Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.summarizedDescription.getter();
      MEMORY[0x223DDF6D0](v14);

      v16 = v27;
      v15 = v28;
      (*v23)(v5, v12);
      v29 = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v16;
      *(v19 + 40) = v15;
      v11 += v24;
      --v7;
      v9 = v13;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v27 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v20 = BidirectionalCollection<>.joined(separator:)();

  return v20;
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.summarizedDescription.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v0, v1);
  *&v57 = String.init<A>(describing:)();
  *(&v57 + 1) = v7;
  v54 = lazy protocol witness table accessor for type String and conformance String();
  v8 = MEMORY[0x223DDFE20](10, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0]);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 56;
    v52 = *(v8 + 16);
    v50 = v9 - 1;
    v12 = MEMORY[0x277D84F90];
    v53 = v8;
    v51 = v8 + 56;
    do
    {
      v13 = (v11 + 32 * v10);
      v14 = v10;
      while (1)
      {
        if (v14 >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v16 = *(v13 - 3);
        v15 = *(v13 - 2);
        v5 = *(v13 - 1);
        v17 = *v13;
        v10 = v14 + 1;
        *&v57 = v16;
        *(&v57 + 1) = v15;
        v58 = v5;
        v59 = v17;
        v55 = 8250;
        v56 = 0xE200000000000000;
        lazy protocol witness table accessor for type Substring and conformance Substring();

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v13 += 4;
        ++v14;
        v8 = v53;
        if (v52 == v10)
        {
          goto LABEL_15;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1);
        v12 = v60;
      }

      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      v21 = v12;
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
        v21 = v60;
      }

      *(v21 + 16) = v20 + 1;
      v22 = (v21 + 32 * v20);
      v22[4] = v16;
      v22[5] = v15;
      v22[6] = v5;
      v22[7] = v17;
      v11 = v51;
      v12 = v21;
      v8 = v53;
    }

    while (v50 != v14);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v23 = *(v12 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = v12 + 56;
    v53 = v23 - 1;
    v5 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D83E40];
    v54 = v12 + 56;
LABEL_17:
    v27 = (v25 + 32 * v24);
    v28 = v24;
    while (v28 < *(v12 + 16))
    {
      v24 = v28 + 1;
      v29 = *(v27 - 1);
      v30 = *v27;
      v57 = *(v27 - 3);
      v58 = v29;
      v59 = v30;
      v31 = lazy protocol witness table accessor for type Substring and conformance Substring();

      v32 = MEMORY[0x223DDFE20](58, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, v26, v31);
      v33 = *(v32 + 16);
      if (v33)
      {
        v52 = v12;
        v34 = (v32 + 32 * v33);
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[3];
        v51 = v34[2];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
        }

        v39 = *(v5 + 2);
        v38 = *(v5 + 3);
        if (v39 >= v38 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v5);
        }

        *(v5 + 2) = v39 + 1;
        v40 = &v5[32 * v39];
        *(v40 + 4) = v35;
        *(v40 + 5) = v36;
        v12 = v52;
        *(v40 + 6) = v51;
        *(v40 + 7) = v37;
        v25 = v54;
        if (v53 != v28)
        {
          goto LABEL_17;
        }

        goto LABEL_29;
      }

      v27 += 4;
      ++v28;
      if (v23 == v24)
      {
        goto LABEL_29;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
    if (!*(result + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_29:

  if (!*(v5 + 2))
  {
    goto LABEL_33;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  if (*(v5 + 2))
  {
LABEL_32:
    *&v57 = 58;
    *(&v57 + 1) = 0xE100000000000000;
    v42 = MEMORY[0x223DDF600](*(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7));
    v44 = v43;

    v55 = v42;
    v56 = v44;
    String.append<A>(contentsOf:)();
    *(v5 + 4) = MEMORY[0x223DDFD80](v55, v56);
    *(v5 + 5) = v45;
    *(v5 + 6) = v46;
    *(v5 + 7) = v47;
LABEL_33:
    *&v57 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [Substring] and conformance [A], &_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    v48 = Sequence<>.joined(separator:)();

    return v48;
  }

LABEL_37:
  __break(1u);
  return result;
}

void (*protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = dispatch thunk of BasePegasusProxy.metadata.modify();
  return protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant;
}

void protocol witness for PegasusProxyClient.metadata.modify in conformance PegasusProxyForAssistant(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t PegasusProxy.enablePromptContextLogging.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t one-time initialization function for allowedClientEntityLabels()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for allowedClientEntityLabels);
  result = swift_arrayDestroy();
  static PegasusProxy.allowedClientEntityLabels = v0;
  return result;
}

uint64_t static PegasusProxy.defaultLocationManager()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AssistantLocationProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = specialized AssistantLocationProvider.init(serviceHelper:)(0);
  a1[3] = v2;
  a1[4] = &protocol witness table for AssistantLocationProvider;
  *a1 = result;
  return result;
}

uint64_t key path setter for PegasusProxy.client : PegasusProxy(_OWORD *a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *(v3 + 80) = *a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t PegasusProxy.phoneCallStateManager.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = a1;
}

uint64_t closure #1 in variable initialization expression of PegasusProxy.requestCancellableQueue()
{
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v19, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5, v7);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v18[1] = "til.logEndOfPegasusRequest";
  (*(v12 + 104))(v16, *MEMORY[0x277D851C8], v11);
  v18[0] = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v16, v11);
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v4, *MEMORY[0x277D85260], v19);
  return OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
}

uint64_t PegasusProxy.__allocating_init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:profileSliceResolvingDataProvider:pimsEnablementProvider:pegasusClientBuilder:locationManager:networkAvailabilityProvider:instrumentationUtil:preferences:rrClient:contactStore:muxContextManager:dialogStateManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, void *a11, uint64_t *a12, uint64_t a13, void *a14, uint64_t a15)
{
  v89 = a7;
  v88 = a6;
  v94 = a5;
  v95 = a4;
  v100 = a3;
  v99 = a2;
  v72 = a1;
  v85 = a15;
  v92 = a13;
  v87 = a10;
  v86 = a9;
  v101 = a11;
  v82 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v81 = *(v82 - 8);
  v16 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v17);
  v80 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS.QoSClass();
  v77 = *(v79 - 8);
  v19 = *(v77 + 64);
  MEMORY[0x28223BE20](v79, v20);
  v76 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.Attributes();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v74 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8, v28);
  v71 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a8;
  outlined init with copy of AppDataProviding(a8, v110);
  v91 = a12;
  outlined init with copy of AppDataProviding(a12, v109);
  type metadata accessor for AppDataProvider();
  v30 = swift_allocObject();
  *(&v107 + 1) = &type metadata for PommesSystemAppChecking;
  v108 = &protocol witness table for PommesSystemAppChecking;
  v31 = objc_allocWithZone(MEMORY[0x277D23C38]);
  v84 = a14;

  v83 = v101;
  v32 = v95;

  *(v30 + 56) = [v31 init];
  outlined init with take of PommesAppChecking(&v106, v30 + 16);
  v33 = [objc_opt_self() sharedPreferences];
  v101 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v30, v33);

  v34 = swift_allocObject();
  *(&v107 + 1) = &type metadata for PommesSystemAppChecking;
  v108 = &protocol witness table for PommesSystemAppChecking;
  *(v34 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  outlined init with take of PommesAppChecking(&v106, v34 + 16);
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v98 = _s21SiriInformationSearch0A22KitAppInfoDataProviderC4make03appgH0014satisfyingAppsgH0010foregroundeH00jc4ViewH0AA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0eG9Providing_p_AA010SatisfyinglgH0_pSgAA010ForegroundeH0_pAA0ecnH0_pSgtFZTf4enenn_nAA0egH0C_AA012RunningBoardyeH0VTt3g5(v34, 0, 0, &v106);

  outlined destroy of MediaUserStateCenter?(&v106, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMd, &_s21SiriInformationSearch03AppC12ViewProvider_pSgMR);
  v35 = type metadata accessor for MarketplaceInfoDataProvider();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
  v40 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
  (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
  swift_allocObject();
  v78 = specialized AnyDataProvider.init<A>(provider:)(v38);
  type metadata accessor for PairedDeviceDataProvider();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
  swift_allocObject();
  v75 = specialized AnyDataProvider.init<A>(provider:)(v41);
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v106, &v103, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v42 = type metadata accessor for GMAvailabilityPolicyDataProvider();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(&v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
  swift_allocObject();
  v73 = specialized AnyDataProvider.init<A>(provider:)(v45);
  outlined destroy of MediaUserStateCenter?(&v106, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
  v46 = type metadata accessor for CarPlaySessionDataProvider();
  v47 = objc_allocWithZone(v46);
  v48 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
  *&v47[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
  v47[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
  *&v47[v48] = 0;
  v102.receiver = v47;
  v102.super_class = v46;
  v49 = objc_msgSendSuper2(&v102, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
  swift_allocObject();
  v97 = specialized AnyDataProvider.init<A>(provider:)(v49);
  type metadata accessor for SiriEnvironment();
  v96 = static SiriEnvironment.default.getter();
  type metadata accessor for DataProviderManager();
  v50 = swift_allocObject();
  *(&v107 + 1) = &type metadata for PommesSystemAppChecking;
  v108 = &protocol witness table for PommesSystemAppChecking;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  v51 = v77;
  v52 = v76;
  v53 = v79;
  (*(v77 + 104))(v76, *MEMORY[0x277D851C8], v79);
  static OS_dispatch_queue.global(qos:)();
  (*(v51 + 8))(v52, v53);
  (*(v81 + 104))(v80, *MEMORY[0x277D85260], v82);
  v54 = v98;
  v55 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v50 + 128) = 0u;
  *(v50 + 144) = 0u;
  *(v50 + 160) = 0u;
  *(v50 + 176) = 0;
  v56 = v72;
  *(v50 + 16) = v55;
  *(v50 + 24) = v56;
  v57 = v100;
  *(v50 + 32) = v99;
  *(v50 + 40) = v57;
  *(v50 + 48) = v101;
  *(v50 + 56) = v54;
  if (v32)
  {

    v58 = v32;
    v59 = v84;
  }

  else
  {
    type metadata accessor for AnalyticsComponentIdGenerator();
    v103 = 0u;
    v104 = 0u;
    v105 = 0;
    v60 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v61 = swift_allocObject();
    *(v61 + 16) = 0;
    *(v61 + 24) = v60;

    v62 = v84;
    v58 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(&v103, v61, v84);

    outlined destroy of MediaUserStateCenter?(&v103, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v59 = v62;
  }

  v63 = v78;
  *(v50 + 64) = v58;
  *(v50 + 72) = v63;
  *(v50 + 80) = v75;
  *(v50 + 96) = v97;
  *(v50 + 104) = v59;
  v64 = v83;
  *(v50 + 112) = v96;
  *(v50 + 120) = v64;
  *(v50 + 128) = 0;
  *(v50 + 136) = 0;
  v84 = v64;

  outlined init with copy of AppDataProviding(&v106, &v103);
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(&v103, v50 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
  swift_endAccess();
  *(v50 + 88) = v73;
  v65 = *(**(v50 + 40) + 160);

  v65(1);

  v66 = *(**(v50 + 48) + 160);

  v66(1);

  (*(**(v50 + 56) + 160))(1);

  v67 = v84;

  __swift_destroy_boxed_opaque_existential_1(&v106);
  v68 = v92;
  outlined init with copy of AppDataProviding(v92, &v106);
  *(&v104 + 1) = &type metadata for PIMSEnablementProvider;
  v105 = &protocol witness table for PIMSEnablementProvider;
  v69 = (*(v90 + 512))(v88, v89, v110, v86, &v103, v87, v109, v50, &v106, v85);

  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v94);
  return v69;
}

uint64_t PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  v39 = a4;
  v41 = a7;
  v42 = a8;
  v40 = a6;
  v36 = a1;
  v37 = a2;
  v12 = a3[3];
  v34 = a3[4];
  v35 = a10;
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, v12);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13, v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = a5[3];
  v33 = a5[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a5, v18);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19, v19);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22);
  v24 = a9[3];
  v25 = a9[4];
  v26 = __swift_mutable_project_boxed_opaque_existential_1(a9, v24);
  v27 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v26, v26);
  v29 = &v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  v31 = specialized PegasusProxy.init(pegasusClientBuilder:locationManager:networkAvailabilityProvider:pimsEnablementProvider:instrumentationUtil:rrClient:dataProviderManager:contactStore:dialogStateManager:)(v36, v37, v16, v39, v22, v40, v41, v42, v29, v35, v38, v24, v12, v18, v25, v34, v33);

  __swift_destroy_boxed_opaque_existential_1(a9);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v31;
}

uint64_t PegasusProxy.setServiceHelper(_:)(uint64_t a1)
{
  v2 = v1;
  (*(**(v1 + 184) + 288))();
  type metadata accessor for PommesPhoneCallStateManager();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 3;
  *(v4 + 16) = a1;
  v5 = *(*v2 + 376);
  swift_unknownObjectRetain();
  v5(v4);
  v6 = v2[15];
  v7 = v2[16];
  __swift_project_boxed_opaque_existential_1(v2 + 12, v6);
  return (*(v7 + 40))(a1, v6, v7);
}

Swift::Void __swiftcall PegasusProxy.prepareForSearchAtRequestStart()()
{
  v1 = v0;
  v2 = type metadata accessor for PerformanceUtil.Ticket(0);
  v3 = *(*(v2 - 1) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.pommes);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2232BB000, v8, v9, "Fetching location", v10, 2u);
    MEMORY[0x223DE0F80](v10, -1, -1);
  }

  Date.init()();
  v11 = &v6[v2[5]];
  *v11 = "SiriInformationSearch/PegasusProxy.swift";
  *(v11 + 1) = 40;
  v11[16] = 2;
  *&v6[v2[6]] = 354;
  v12 = &v6[v2[7]];
  *v12 = "prepareForSearchAtRequestStart()";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v13 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD000000000000024);
  v14 = &v6[v2[8]];
  *v14 = v13;
  v14[1] = v15;
  v16 = v1[15];
  v17 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v16);
  (*(v17 + 8))(v16, v17);

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  (*(*static PerformanceUtil.shared + 184))(v6, 0);
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v6, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v298 = a3;
  v297 = a2;
  v4 = type metadata accessor for PommesSearchRequest(0);
  v5 = v4 - 8;
  v269 = *(v4 - 8);
  v6 = *(v269 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v270 = v8;
  v277 = &v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SignpostToken();
  v267 = *(v9 - 8);
  v10 = *(v267 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8, v11);
  v276 = &v246 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v246 - v15;
  v282 = type metadata accessor for DispatchWorkItemFlags();
  v291 = *(v282 - 8);
  v17 = *(v291 + 64);
  MEMORY[0x28223BE20](v282, v18);
  v281 = &v246 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for DispatchQoS();
  v290 = *(v280 - 8);
  v20 = *(v290 + 64);
  MEMORY[0x28223BE20](v280, v21);
  v279 = &v246 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v266 = &v246 - v26;
  v265 = type metadata accessor for PerformanceUtil.Ticket(0);
  v27 = *(*(v265 - 8) + 64);
  MEMORY[0x28223BE20](v265, v28);
  v278 = &v246 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8, v32);
  v273 = &v246 - v33;
  v294 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v292 = *(v294 - 8);
  v34 = *(v292 + 64);
  v36 = MEMORY[0x28223BE20](v294, v35);
  v274 = &v246 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v272 = &v246 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v284 = &v246 - v43;
  v271 = v44;
  MEMORY[0x28223BE20](v42, v45);
  v287 = &v246 - v46;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v285 = *(Context - 8);
  v47 = *(v285 + 64);
  MEMORY[0x28223BE20](Context, v48);
  v293 = &v246 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v50 = *(*(v295 - 1) + 64);
  MEMORY[0x28223BE20](v295, v51);
  v296 = &v246 - v52;
  v300 = type metadata accessor for Date();
  v299 = *(v300 - 8);
  v53 = v299[8];
  MEMORY[0x28223BE20](v300, v54);
  v56 = &v246 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UUID();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v61 = MEMORY[0x28223BE20](v57, v60);
  v275 = &v246 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = v62;
  MEMORY[0x28223BE20](v61, v63);
  v310 = &v246 - v64;
  v307 = type metadata accessor for PommesCandidateId();
  v305 = *(v307 - 8);
  v65 = *(v305 + 64);
  v67 = MEMORY[0x28223BE20](v307, v66);
  v289 = &v246 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v263 = v68;
  MEMORY[0x28223BE20](v67, v69);
  v71 = (&v246 - v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v261 = *(v72 - 8);
  v73 = *(v261 + 64);
  v75 = MEMORY[0x28223BE20](v72 - 8, v74);
  v288 = &v246 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = v76;
  MEMORY[0x28223BE20](v75, v77);
  v79 = &v246 - v78;
  v80 = (a1 + *(v5 + 40));
  v82 = *v80;
  v81 = v80[1];
  v301 = v58;
  v306 = v82;
  if (v81)
  {

    UUID.init(uuidString:)();
  }

  else
  {
    (*(v58 + 56))(&v246 - v78, 1, 1, v57);
  }

  v309 = v81;
  v283 = v16;
  v304 = v79;
  v308 = v71;
  v83 = PommesSearchRequest.pommesCandidateId.getter(v71);
  v303 = a1;
  if (one-time initialization token for shared != -1)
  {
    v83 = swift_once();
  }

  v85 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v83, v84);
  v242 = v311;
  v243 = v306;
  v244 = v309;
  Date.init()();
  v86 = *(*v85 + 200);
  v302 = v57;
  v244 = &v241;
  v245 = v57;
  LOBYTE(v242) = 2;
  v86(0xD000000000000040, 0x80000002234E07E0, 0, v56, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 401, "search(pommesSearchRequest:completion:)", 39, v242, partial apply for closure #2 in PegasusProxy.search(pommesSearchRequest:completion:));
  v87 = v299[1];
  v88 = v300;
  v87(v56, v300);
  Date.init()();
  LOBYTE(v242) = 2;
  v89 = v311;
  v299 = v85;
  (v86)(0xD00000000000003ALL, 0x80000002234E0830, 0, v56, "SiriInformationSearch/PegasusProxy.swift", 40, 2, 408, "search(pommesSearchRequest:completion:)", 39, v242, partial apply for closure #3 in PegasusProxy.search(pommesSearchRequest:completion:), v311, MEMORY[0x277D84F78] + 8);
  v87(v56, v88);
  LOBYTE(v85) = AFSupportsSiriInCall();
  v90 = v303;
  v91 = closure #4 in PegasusProxy.search(pommesSearchRequest:completion:)(v303);
  if ((v85 & 1) == 0)
  {
    v92 = v91;
    v93 = (*(*v89 + 368))();
    if (v93)
    {
      v94 = (*(*v93 + 144))(v306, v309, 0);

      if (!(v92 & 1 | ((v94 & 1) == 0)))
      {

        v105 = v304;
        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v223 = type metadata accessor for Logger();
        __swift_project_value_buffer(v223, static Logger.pommes);
        v224 = Logger.logObject.getter();
        v225 = static os_log_type_t.info.getter();
        v226 = os_log_type_enabled(v224, v225);
        v110 = v302;
        v104 = v308;
        if (v226)
        {
          v227 = swift_slowAlloc();
          *v227 = 0;
          _os_log_impl(&dword_2232BB000, v224, v225, "SiriInCall is not supported and user is on phone call, unable to complete search", v227, 2u);
          MEMORY[0x223DE0F80](v227, -1, -1);
        }

        v112 = 10;
        goto LABEL_25;
      }
    }
  }

  v95 = v89[17];
  if ((dispatch thunk of NetworkAvailability.isAvailable.getter() & 1) == 0)
  {

    v104 = v308;
    v105 = v304;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    __swift_project_value_buffer(v106, static Logger.pommes);
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.info.getter();
    v109 = os_log_type_enabled(v107, v108);
    v110 = v302;
    if (v109)
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_2232BB000, v107, v108, "Network is unavailable, unable to complete search", v111, 2u);
      MEMORY[0x223DE0F80](v111, -1, -1);
    }

    v112 = 2;
LABEL_25:
    v228 = v296;
    *v296 = v112;
    swift_storeEnumTagMultiPayload();
    v297(v228);
    outlined destroy of MediaUserStateCenter?(v228, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(v301 + 8))(v310, v110);
    (*(v305 + 8))(v104, v307);
    return outlined destroy of MediaUserStateCenter?(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  v96 = v293;
  static Apple_Parsec_Search_PegasusQueryContext.build(for:withLocationManager:dataProviderManager:)(v90, (v89 + 12), v89[23], v293);
  v97 = v294;
  v300 = swift_allocBox();
  v99 = v98;
  v100 = swift_allocObject();
  v101 = MEMORY[0x277D84F90];
  v102 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC21SiriInformationSearch19OnScreenContextTypeO_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v100 + 16) = v101;
  *(v100 + 24) = v102;
  v103 = v287;
  (*(*v89 + 584))(v90, v96, v100 + 16);
  v260 = v100;
  v113 = v292;
  v296 = v99;
  v295 = *(v292 + 32);
  (v295)(v99, v103, v97);
  v114 = *(v113 + 16);
  v115 = v284;
  (v114)(v284, v296, v97);
  v314 = 0;
  aBlock = 0u;
  v313 = 0u;
  v116 = v273;
  static TaskPriority.background.getter();
  v117 = type metadata accessor for TaskPriority();
  (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
  outlined init with copy of MediaUserStateCenter?(&aBlock, v316, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  v118 = v272;
  (v114)(v272, v115, v97);
  v119 = (*(v113 + 80) + 72) & ~*(v113 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = 0;
  *(v120 + 24) = 0;
  v121 = v316[1];
  *(v120 + 32) = v316[0];
  *(v120 + 48) = v121;
  *(v120 + 64) = v317;
  v122 = v120 + v119;
  v123 = v294;
  (v295)(v122, v118, v294);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v116, &async function pointer to partial apply for closure #1 in static CurareDonation.donateCurareInfo(for:into:), v120);

  outlined destroy of MediaUserStateCenter?(&aBlock, &_s21SiriInformationSearch23CurareInteractionStream_pSgMd, &_s21SiriInformationSearch23CurareInteractionStream_pSgMR);
  v124 = *(v113 + 8);
  v124(v115, v123);
  v125 = v274;
  v287 = (v113 + 16);
  v273 = v114;
  (v114)(v274, v296, v123);
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, MEMORY[0x277D38D70]);
  v126 = Message.serializedData(partial:)();
  v295 = 0;
  v292 = v113 + 8;
  v272 = v124;
  v229 = v123;
  v230 = v126;
  v232 = v231;
  v124(v125, v229);
  v233 = v232;
  v234 = v232 >> 62;
  if ((v232 >> 62) > 1)
  {
    v239 = v230;
    v236 = v311;
    if (v234 == 2)
    {
      v235 = *(v230 + 16);
      v240 = *(v230 + 24);
      outlined consume of Data._Representation(v239, v233);
      v238 = v240 - v235;
      if (__OFSUB__(v240, v235))
      {
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      outlined consume of Data._Representation(v230, v232);
      v238 = 0;
    }

LABEL_16:
    v127 = vcvtd_n_f64_s64(v238, 0xAuLL);
    v128 = v278;
    Date.init()();
    v129 = v265;
    v130 = v128 + *(v265 + 20);
    *v130 = "SiriInformationSearch/PegasusProxy.swift";
    *(v130 + 8) = 40;
    *(v130 + 16) = 2;
    *(v128 + v129[6]) = 465;
    v131 = v128 + v129[7];
    *v131 = "search(pommesSearchRequest:completion:)";
    *(v131 + 8) = 39;
    *(v131 + 16) = 2;
    v132 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002CLL);
    v133 = (v128 + v129[8]);
    *v133 = v132;
    v133[1] = v134;
    v135 = v236[22];
    v136 = v305;
    v138 = (v305 + 16);
    v137 = *(v305 + 16);
    v139 = v266;
    v140 = v307;
    v137(v266, v308, v307);
    (*(v136 + 56))(v139, 0, 1, v140);
    v141 = v304;
    v142 = v310;
    (*(*v135 + 128))(v304, v310, v139, v127);
    outlined destroy of MediaUserStateCenter?(v139, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v143 = (*(*v299 + 184))(v128, 0);
    v144 = *(*v236 + 344);
    v248 = *v236 + 344;
    v247 = v144;
    (v144)(v143);
    v146 = v145;
    ObjectType = swift_getObjectType();
    v148 = (*(v146 + 32))(ObjectType, v146);
    v299 = v148;
    swift_unknownObjectRelease();
    *&aBlock = v148;
    v266 = swift_allocObject();
    swift_weakInit();
    v149 = v288;
    outlined init with copy of MediaUserStateCenter?(v141, v288, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v150 = v301;
    v151 = *(v301 + 16);
    v152 = v275;
    v153 = v302;
    v250 = v301 + 16;
    v249 = v151;
    v151(v275, v142, v302);
    v274 = v138;
    v271 = v137;
    v137(v289, v308, v140);
    v154 = *(v261 + 80);
    v155 = (v154 + 24) & ~v154;
    v156 = *(v150 + 80);
    v157 = (v262 + v156 + v155) & ~v156;
    v158 = v305;
    v159 = *(v305 + 80);
    v160 = (v264 + v159 + v157) & ~v159;
    v161 = (v263 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
    v251 = v154 | v156 | v159 | 7;
    v162 = swift_allocObject();
    *(v162 + 16) = v266;
    v264 = v155;
    outlined init with take of UUID?(v149, v162 + v155);
    v163 = *(v150 + 32);
    v263 = v157;
    v256 = v150 + 32;
    v254 = v163;
    v163(v162 + v157, v152, v153);
    v164 = v158 + 32;
    v165 = *(v158 + 32);
    v265 = v160;
    v166 = v311;
    v253 = v164;
    v252 = v165;
    v165(v162 + v160, v289, v307);
    v262 = v161;
    *(v162 + v161) = v260;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<Apple_Parsec_Feedback_V2_FeedbackPayload, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy10PegasusAPI025Apple_Parsec_Feedback_V2_H7PayloadVs5NeverOGMR);
    v167 = Publisher<>.sink(receiveValue:)();

    v168 = v166[19];
    v169 = swift_allocObject();
    *(v169 + 16) = v166;
    *(v169 + 24) = v167;
    v314 = partial apply for closure #6 in PegasusProxy.search(pommesSearchRequest:completion:);
    v315 = v169;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v313 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v313 + 1) = &block_descriptor_17;
    v170 = _Block_copy(&aBlock);

    v299 = v167;

    v171 = v279;
    static DispatchQoS.unspecified.getter();
    *&v316[0] = MEMORY[0x277D84F90];
    v172 = _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v174 = lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v175 = v281;
    v259 = v173;
    v255 = v174;
    v176 = v282;
    v261 = v172;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v266 = v168;
    MEMORY[0x223DDFBF0](0, v171, v175, v170);
    _Block_release(v170);
    v177 = *(v291 + 8);
    v291 += 8;
    v258 = v177;
    v177(v175, v176);
    v178 = *(v290 + 8);
    v290 += 8;
    v257 = v178;
    v178(v171, v280);

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v179 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v179, static Signposter.pommes);
    v180 = v283;
    v181 = OSSignposter.begin(name:context:)("proxy.request", 13, 2u, 0, v283);
    v182 = v247;
    (v247)(v181);
    v184 = v183;
    v182();
    v186 = v185;
    v187 = swift_getObjectType();
    v188 = (*(v186 + 8))(v187, v186);
    swift_unknownObjectRelease();
    v189 = specialized static PegasusOverrideUtil.headerOverrides.getter();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v188;
    v191 = v295;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v189, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &aBlock);
    if (!v191)
    {
      v192 = swift_getObjectType();

      (*(v184 + 16))(aBlock, v192, v184);
      v193 = swift_unknownObjectRelease();
      (v182)(v193);
      v195 = v194;
      v196 = swift_getObjectType();
      v197 = v284;
      v198 = v294;
      (v273)(v284, v296, v294);
      v199 = (*(v195 + 48))(v197, v196, v195);
      v296 = v199;
      swift_unknownObjectRelease();
      (v272)(v197, v198);
      *&aBlock = v199;
      outlined init with copy of MediaUserStateCenter?(v304, v288, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v200 = v275;
      v201 = v302;
      v249(v275, v310, v302);
      v202 = v289;
      v203 = v166;
      v271(v289, v308, v307);
      _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v303, v277, type metadata accessor for PommesSearchRequest);
      _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v180, v276, type metadata accessor for SignpostToken);
      v204 = v262;
      v205 = (v262 + 23) & 0xFFFFFFFFFFFFFFF8;
      v206 = (v205 + *(v269 + 80) + 8) & ~*(v269 + 80);
      v207 = (v270 + *(v267 + 80) + v206) & ~*(v267 + 80);
      v208 = (v268 + v207 + 7) & 0xFFFFFFFFFFFFFFF8;
      v209 = swift_allocObject();
      *(v209 + 16) = v203;
      outlined init with take of UUID?(v288, v209 + v264);
      v254(v209 + v263, v200, v201);
      v210 = v202;
      v211 = v307;
      v252(v209 + v265, v210, v307);
      v212 = (v209 + v204);
      v213 = v309;
      *v212 = v306;
      v212[1] = v213;
      *(v209 + v205) = v300;
      outlined init with take of PommesSearchRequest(v277, v209 + v206, type metadata accessor for PommesSearchRequest);
      outlined init with take of PommesSearchRequest(v276, v209 + v207, type metadata accessor for SignpostToken);
      v214 = (v209 + v208);
      v215 = v298;
      *v214 = v297;
      v214[1] = v215;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Result<Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, PegasusProxyForAssistant.Error>, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMd, &_s7Combine12AnyPublisherVys6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_iE8ResponseV0E3Kit0E17ProxyForAssistantC5ErrorOGs5NeverOGMR);
      v216 = Publisher<>.sink(receiveValue:)();

      v217 = swift_allocObject();
      *(v217 + 16) = v203;
      *(v217 + 24) = v216;
      v314 = partial apply for closure #9 in PegasusProxy.search(pommesSearchRequest:completion:);
      v315 = v217;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v313 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v313 + 1) = &block_descriptor_22_0;
      v218 = _Block_copy(&aBlock);

      v219 = v279;
      static DispatchQoS.unspecified.getter();
      *&v316[0] = MEMORY[0x277D84F90];
      v220 = v281;
      v221 = v282;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x223DDFBF0](0, v219, v220, v218);
      _Block_release(v218);

      v258(v220, v221);
      v257(v219, v280);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v283, type metadata accessor for SignpostToken);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v278, type metadata accessor for PerformanceUtil.Ticket);
      (*(v285 + 8))(v293, Context);
      (*(v301 + 8))(v310, v201);
      (*(v305 + 8))(v308, v211);
      outlined destroy of MediaUserStateCenter?(v304, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    goto LABEL_37;
  }

  v235 = v230;
  v236 = v311;
  if (!v234)
  {
    v237 = BYTE6(v233);
    outlined consume of Data._Representation(v230, v233);
    v238 = v237;
    goto LABEL_16;
  }

LABEL_33:
  outlined consume of Data._Representation(v235, v233);
  LODWORD(v238) = HIDWORD(v235) - v235;
  if (!__OFSUB__(HIDWORD(v235), v235))
  {
    v238 = v238;
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:

  __break(1u);
  return result;
}

uint64_t closure #4 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = v21 - v5;
  v7 = type metadata accessor for InputOrigin();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v21 - v15;
  v17 = type metadata accessor for PommesSearchRequest(0);
  outlined init with copy of MediaUserStateCenter?(a1 + *(v17 + 56), v6, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v6, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
    v18 = 0;
  }

  else
  {
    (*(v8 + 32))(v16, v6, v7);
    (*(v8 + 104))(v13, *MEMORY[0x277D61C48], v7);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin, MEMORY[0x277D61CA8]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v21[2] == v21[0] && v21[3] == v21[1])
    {
      v18 = 1;
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v19 = *(v8 + 8);
    v19(v13, v7);
    v19(v16, v7);
  }

  return v18 & 1;
}

uint64_t closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v72 = a6;
  v77 = a5;
  v76 = a4;
  v75 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v82 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v83 = *(v84 - 8);
  v11 = *(v83 + 64);
  MEMORY[0x28223BE20](v84, v12);
  v81 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload();
  v80 = *(v92 - 8);
  v14 = *(v80 + 64);
  MEMORY[0x28223BE20](v92, v15);
  v91 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for PommesCandidateId();
  v78 = *(v90 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v90, v17);
  v89 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for UUID();
  v74 = *(v88 - 8);
  v18 = *(v74 + 64);
  MEMORY[0x28223BE20](v88, v19);
  v87 = v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v73 = *(v20 - 8);
  v21 = *(v73 + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = v66 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
  v26 = *(*(v25 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v25 - 8, v27);
  v30 = v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = v66 - v32;
  v79 = a1;
  Apple_Parsec_Feedback_V2_FeedbackPayload.containedFeedback.getter();
  v34 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    outlined init with copy of MediaUserStateCenter?(v33, v30, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
    v69 = v35;
    v36 = *(v35 + 88);
    v71 = v30;
    v70 = v34;
    v37 = v36(v30, v34);
    if (v37 == *MEMORY[0x277D38C70])
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
LABEL_9:
        (*(v69 + 8))(v71, v70);
        return outlined destroy of MediaUserStateCenter?(v33, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
      }

      v66[1] = *(Strong + 152);

      v68 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v67 = v24;
      outlined init with copy of MediaUserStateCenter?(v75, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v39 = v74;
      (*(v74 + 16))(v87, v76, v88);
      v40 = v78;
      (*(v78 + 16))(v89, v77, v90);
      v41 = v80;
      (*(v80 + 16))(v91, v79, v92);
      v42 = (*(v73 + 80) + 24) & ~*(v73 + 80);
      v43 = (v21 + *(v39 + 80) + v42) & ~*(v39 + 80);
      v44 = (v18 + *(v40 + 80) + v43) & ~*(v40 + 80);
      v45 = (v16 + *(v41 + 80) + v44) & ~*(v41 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = v68;
      outlined init with take of UUID?(v67, v46 + v42);
      (*(v39 + 32))(v46 + v43, v87, v88);
      (*(v40 + 32))(v46 + v44, v89, v90);
      (*(v41 + 32))(v46 + v45, v91, v92);
      *(v46 + ((v14 + v45 + 7) & 0xFFFFFFFFFFFFFFF8)) = v72;
      v98 = partial apply for closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:);
      v99 = v46;
      aBlock = MEMORY[0x277D85DD0];
      v95 = 1107296256;
      v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v97 = &block_descriptor_81;
      v47 = _Block_copy(&aBlock);

      v48 = v81;
      static DispatchQoS.unspecified.getter();
      v93 = MEMORY[0x277D84F90];
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v49 = v82;
      v50 = v86;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v51 = v48;
      v52 = v49;
      v53 = v47;
      v54 = &v98;
    }

    else
    {
      if (v37 != *MEMORY[0x277D38C68])
      {
        goto LABEL_9;
      }

      swift_beginAccess();
      v55 = swift_weakLoadStrong();
      if (!v55)
      {
        goto LABEL_9;
      }

      v72 = *(v55 + 152);

      v68 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v67 = v24;
      outlined init with copy of MediaUserStateCenter?(v75, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v56 = v74;
      (*(v74 + 16))(v87, v76, v88);
      v57 = v78;
      (*(v78 + 16))(v89, v77, v90);
      v58 = v80;
      (*(v80 + 16))(v91, v79, v92);
      v59 = (*(v73 + 80) + 24) & ~*(v73 + 80);
      v60 = (v21 + *(v56 + 80) + v59) & ~*(v56 + 80);
      v61 = (v18 + *(v57 + 80) + v60) & ~*(v57 + 80);
      v62 = (v16 + *(v58 + 80) + v61) & ~*(v58 + 80);
      v63 = swift_allocObject();
      *(v63 + 16) = v68;
      outlined init with take of UUID?(v67, v63 + v59);
      (*(v56 + 32))(v63 + v60, v87, v88);
      (*(v57 + 32))(v63 + v61, v89, v90);
      (*(v58 + 32))(v63 + v62, v91, v92);
      v98 = partial apply for closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:);
      v99 = v63;
      aBlock = MEMORY[0x277D85DD0];
      v95 = 1107296256;
      v96 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v97 = &block_descriptor_74;
      v47 = _Block_copy(&aBlock);

      v48 = v81;
      static DispatchQoS.unspecified.getter();
      v93 = MEMORY[0x277D84F90];
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v49 = v82;
      v50 = v86;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v51 = v48;
      v52 = v49;
      v53 = v47;
      v54 = &v100;
    }

    v64 = *(v54 - 32);
    MEMORY[0x223DDFBF0](0, v51, v52, v53);
    _Block_release(v47);

    (*(v85 + 8))(v49, v50);
    (*(v83 + 8))(v48, v84);

    goto LABEL_9;
  }

  return outlined destroy of MediaUserStateCenter?(v33, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMd, &_s10PegasusAPI025Apple_Parsec_Feedback_V2_E7PayloadV015OneOf_ContainedE0OSgMR);
}

uint64_t closure #1 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback();
  v11 = *(started - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](started, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v30 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = *(result + 176);
    v30 = a2;

    v23 = type metadata accessor for PommesCandidateId();
    v24 = *(v23 - 8);
    v31 = started;
    v25 = a3;
    v26 = v24;
    (*(v24 + 16))(v20, a4, v23);
    (*(v26 + 56))(v20, 0, 1, v23);
    Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.getter();
    swift_beginAccess();
    v28 = *(a6 + 16);
    v27 = *(a6 + 24);
    v29 = *(*v22 + 176);

    v29(v30, v25, v20, v15, v28, v27);

    (*(v11 + 8))(v15, v31);
    return outlined destroy of MediaUserStateCenter?(v20, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  }

  return result;
}

uint64_t closure #2 in closure #5 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v23 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 176);

    v20 = type metadata accessor for PommesCandidateId();
    v21 = a3;
    v22 = *(v20 - 8);
    (*(v22 + 16))(v17, a4, v20);
    (*(v22 + 56))(v17, 0, 1, v20);
    Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.getter();
    (*(*v19 + 184))(a2, v21, v17, v12);

    (*(v8 + 8))(v12, v7);
    return outlined destroy of MediaUserStateCenter?(v17, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  }

  return result;
}

uint64_t closure #6 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v4, a2);
  swift_endAccess();
}

uint64_t closure #8 in PegasusProxy.search(pommesSearchRequest:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12)
{
  v383 = a8;
  v341 = a7;
  v340 = a6;
  v380 = a5;
  v382 = a4;
  v381 = a3;
  v386 = a2;
  v378 = a1;
  v368 = a12;
  v379 = a11;
  v365 = a10;
  v374 = type metadata accessor for DispatchWorkItemFlags();
  v373 = *(v374 - 8);
  v12 = *(v373 + 64);
  MEMORY[0x28223BE20](v374, v13);
  v371 = &v320 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = type metadata accessor for DispatchQoS();
  v370 = *(v372 - 8);
  v15 = *(v370 + 64);
  MEMORY[0x28223BE20](v372, v16);
  v369 = &v320 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v358 = type metadata accessor for PegasusProxyForAssistant.Error();
  v357 = *(v358 - 1);
  v18 = *(v357 + 8);
  v20 = MEMORY[0x28223BE20](v358, v19);
  v359 = &v320 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v361 = &v320 - v23;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
  v24 = *(*(v366 - 8) + 64);
  MEMORY[0x28223BE20](v366, v25);
  v367 = &v320 - v26;
  v328 = type metadata accessor for PegasusSearchResponse(0);
  v27 = *(*(v328 - 8) + 64);
  MEMORY[0x28223BE20](v328, v28);
  v329 = &v320 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v350 = type metadata accessor for JSONEncodingOptions();
  v349 = *(v350 - 8);
  v30 = *(v349 + 64);
  MEMORY[0x28223BE20](v350, v31);
  v353 = &v320 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v354 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext();
  v360 = *(v354 - 8);
  v33 = *(v360 + 64);
  v35 = MEMORY[0x28223BE20](v354, v34);
  v352 = &v320 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v351 = &v320 - v38;
  v344 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v343 = *(v344 - 8);
  v39 = *(v343 + 64);
  MEMORY[0x28223BE20](v344, v40);
  v326 = &v320 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8, v44);
  v339 = &v320 - v45;
  v336 = type metadata accessor for Latencyinfopb_KfedLatencyInfo();
  v335 = *(v336 - 8);
  v46 = *(v335 + 64);
  MEMORY[0x28223BE20](v336, v47);
  v334 = &v320 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v347 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v338 = *(v347 - 8);
  v49 = *(v338 + 64);
  v51 = MEMORY[0x28223BE20](v347, v50);
  v333 = &v320 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v337 = &v320 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8, v57);
  v346 = &v320 - v58;
  v332 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v331 = *(v332 - 8);
  v59 = *(v331 + 64);
  MEMORY[0x28223BE20](v332, v60);
  v330 = &v320 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62 - 8, v64);
  v384 = &v320 - v65;
  v375 = type metadata accessor for PerformanceUtil.Ticket(0);
  v66 = *(*(v375 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v375, v67);
  v348 = &v320 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68, v70);
  v362 = &v320 - v71;
  v363 = type metadata accessor for Apple_Parsec_Siri_V1alpha_StatusCode();
  v376 = *(v363 - 8);
  v72 = *(v376 + 64);
  v74 = MEMORY[0x28223BE20](v363, v73);
  v355 = &v320 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v74, v76);
  v364 = &v320 - v78;
  MEMORY[0x28223BE20](v77, v79);
  v81 = &v320 - v80;
  v377 = 0;
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v83 = *(v82 - 1);
  v84 = *(v83 + 64);
  v86 = MEMORY[0x28223BE20](v82, v85);
  v327 = &v320 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x28223BE20](v86, v88);
  v91 = &v320 - v90;
  v93 = MEMORY[0x28223BE20](v89, v92);
  v95 = &v320 - v94;
  MEMORY[0x28223BE20](v93, v96);
  v98 = &v320 - v97;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMd, &_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMR);
  v100 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99, v101);
  v103 = &v320 - v102;
  v342 = swift_projectBox();
  outlined init with copy of MediaUserStateCenter?(v378, v103, &_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMd, &_ss6ResultOy10PegasusAPI026Apple_Parsec_Siri_V2alpha_fB8ResponseV0B3Kit0B17ProxyForAssistantC5ErrorOGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v104 = v357;
    v105 = v361;
    v106 = v358;
    (*(v357 + 4))(v361, v103, v358);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v107, static Signposter.pommes);
    OSSignposter.end(token:message:)(v365, 0x726F727265, 0xE500000000000000);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static Logger.pommes);
    v109 = *(v104 + 2);
    v110 = v359;
    v109(v359, v105, v106);
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = v109;
      v114 = v106;
      v115 = swift_slowAlloc();
      v116 = v104;
      v117 = swift_slowAlloc();
      aBlock[0] = v117;
      *v115 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type PegasusProxyForAssistant.Error and conformance PegasusProxyForAssistant.Error, MEMORY[0x277D39E50]);
      v118 = Error.localizedDescription.getter();
      v119 = v110;
      v120 = v118;
      v122 = v121;
      v385 = *(v116 + 1);
      (v385)(v119, v114);
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, aBlock);

      *(v115 + 4) = v123;
      _os_log_impl(&dword_2232BB000, v111, v112, "Pegasus error on client.searchResponsePublisher: %s", v115, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x223DE0F80](v117, -1, -1);
      v124 = v115;
      v106 = v114;
      v109 = v113;
      v105 = v361;
      MEMORY[0x223DE0F80](v124, -1, -1);
    }

    else
    {

      v385 = *(v104 + 1);
      (v385)(v110, v106);
    }

    v139 = v362;
    Date.init()();
    v140 = v375;
    v141 = v139 + *(v375 + 20);
    *v141 = "SiriInformationSearch/PegasusProxy.swift";
    *(v141 + 8) = 40;
    *(v141 + 16) = 2;
    *(v139 + v140[6]) = 578;
    v142 = v139 + v140[7];
    *v142 = "search(pommesSearchRequest:completion:)";
    *(v142 + 8) = 39;
    *(v142 + 16) = 2;
    v143 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL);
    v144 = (v139 + v140[8]);
    *v144 = v143;
    v144[1] = v145;
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type PegasusProxyForAssistant.Error and conformance PegasusProxyForAssistant.Error, MEMORY[0x277D39E50]);
    v146 = swift_allocError();
    v109(v147, v105, v106);
    v148 = _convertErrorToNSError(_:)();
    v149 = [v148 code];

    v150 = v386;
    v151 = *(v386 + 176);
    v152 = type metadata accessor for PommesCandidateId();
    v153 = v106;
    v154 = *(v152 - 8);
    v155 = v384;
    (*(v154 + 16))(v384, v380, v152);
    (*(v154 + 56))(v155, 0, 1, v152);
    (*(*v151 + 152))(v381, v382, v155, 1, v149, 0);
    outlined destroy of MediaUserStateCenter?(v155, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    (*(*static PerformanceUtil.shared + 184))(v139, 0);
    v156 = v367;
    *v367 = 3;
    swift_storeEnumTagMultiPayload();
    v379(v156);
    outlined destroy of MediaUserStateCenter?(v156, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v139, type metadata accessor for PerformanceUtil.Ticket);
    (v385)(v105, v153);
    goto LABEL_78;
  }

  (*(v83 + 32))(v98, v103, v82);
  v125 = v82;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v126 = type metadata accessor for Logger();
  v127 = __swift_project_value_buffer(v126, static Logger.pommes);
  v128 = *(v83 + 16);
  v359 = (v83 + 16);
  v358 = v128;
  (v128)(v95, v98, v82);
  v383 = v127;
  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.debug.getter();
  v131 = os_log_type_enabled(v129, v130);
  v385 = v98;
  v357 = v91;
  v356 = v82;
  v345 = v83;
  if (v131)
  {
    v132 = v83;
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    aBlock[0] = v134;
    *v133 = 136315138;
    v82 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.summarizedDescription.getter();
    v136 = v135;
    (*(v132 + 8))(v95, v356);
    v137 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v136, aBlock);

    *(v133 + 4) = v137;
    _os_log_impl(&dword_2232BB000, v129, v130, "Pegasus: PegasusResponse: %s", v133, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v134);
    v138 = v134;
    v125 = v356;
    MEMORY[0x223DE0F80](v138, -1, -1);
    MEMORY[0x223DE0F80](v133, -1, -1);
  }

  else
  {

    (*(v83 + 8))(v95, v82);
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
  v157 = v376;
  v158 = v363;
  v159 = (*(v376 + 88))(v81, v363);
  v160 = *MEMORY[0x277D39258];
  v150 = *(v157 + 8);
  v161 = v81;
  v162 = v158;
  v378 = v157 + 8;
  (v150)(v161, v158);
  v163 = v159 == v160;
  v164 = v360;
  v361 = v150;
  if (v163)
  {
    v165 = v362;
    Date.init()();
    v166 = v375;
    v167 = &v165[*(v375 + 20)];
    *v167 = "SiriInformationSearch/PegasusProxy.swift";
    *(v167 + 1) = 40;
    v167[16] = 2;
    *&v165[v166[6]] = 514;
    v168 = &v165[v166[7]];
    *v168 = "search(pommesSearchRequest:completion:)";
    *(v168 + 1) = 39;
    v168[16] = 2;
    v169 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002BLL);
    v170 = &v165[v166[8]];
    *v170 = v169;
    v170[1] = v171;
    v172 = v386;
    v173 = *(v386 + 176);
    v174 = type metadata accessor for PommesCandidateId();
    v175 = *(v174 - 8);
    v176 = v384;
    (*(v175 + 16))(v384, v380, v174);
    (*(v175 + 56))(v176, 0, 1, v174);
    (*(*v173 + 152))(v381, v382, v176, 5, 0, 1);
    outlined destroy of MediaUserStateCenter?(v176, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    v177 = v165;
    v178 = v377;
    if (one-time initialization token for shared == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_39;
  }

  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0]);
  v193 = v377;
  v194 = Message.serializedData(partial:)();
  v196 = v386;
  if (!v193)
  {
    v255 = v195 >> 62;
    v377 = 0;
    if ((v195 >> 62) > 1)
    {
      goto LABEL_64;
    }

    if (!v255)
    {
      v256 = BYTE6(v195);
      outlined consume of Data._Representation(v194, v195);
      v197 = v256;
      goto LABEL_28;
    }

    v318 = HIDWORD(v194);
    v319 = v194;
    result = outlined consume of Data._Representation(v194, v195);
    LODWORD(v197) = v318 - v319;
    if (!__OFSUB__(v318, v319))
    {
      v197 = v197;
      goto LABEL_28;
    }

LABEL_85:
    __break(1u);
    return result;
  }

  v197 = 0;
  v377 = 0;
  while (1)
  {
LABEL_28:
    v198 = vcvtd_n_f64_s64(v197, 0xAuLL);
    v199 = v348;
    Date.init()();
    v200 = v375;
    v201 = &v199[*(v375 + 20)];
    *v201 = "SiriInformationSearch/PegasusProxy.swift";
    *(v201 + 1) = 40;
    v201[16] = 2;
    *&v199[v200[6]] = 524;
    v202 = &v199[v200[7]];
    *v202 = "search(pommesSearchRequest:completion:)";
    *(v202 + 1) = 39;
    v202[16] = 2;
    v203 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000002ALL);
    v204 = &v199[v200[8]];
    *v204 = v203;
    v204[1] = v205;
    v206 = *(v196 + 176);
    v207 = type metadata accessor for PommesCandidateId();
    v208 = *(v207 - 8);
    v209 = *(v208 + 16);
    v210 = v384;
    v323 = v208 + 16;
    v322 = v209;
    v209(v384, v380, v207);
    v211 = *(v208 + 56);
    v325 = v207;
    v324 = v208 + 56;
    v321 = v211;
    v211(v210, 0, 1, v207);
    v212 = v385;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
    v214 = v213;
    v215 = v330;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
    (*(v331 + 8))(v215, v332);
    v216 = v337;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v362 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v218 = v217;
    v219 = *(v338 + 8);
    v220 = v347;
    v219(v216, v347);
    v375 = v219;
    LODWORD(v338) = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasRewrittenUtteranceIdx.getter();
    v221 = v333;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v222 = v334;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.latencyInfo.getter();
    v219(v221, v220);
    v223 = v212;
    v224 = v384;
    v225 = v364;
    v226 = v346;
    (*(*v206 + 144))(v381, v382, v384, v364, v346, v362, v218, v338 & 1, v214, v198, v222);

    (*(v335 + 8))(v222, v336);
    outlined destroy of MediaUserStateCenter?(v226, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
    v227 = v225;
    v228 = v223;
    v162 = v363;
    (v361)(v227, v363);
    outlined destroy of MediaUserStateCenter?(v224, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

    v229 = v339;
    UUID.init(uuidString:)();

    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v230 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusSelfOpaquePayloads.getter();
    v231 = v347;
    v232 = v375;
    (v375)(v216);
    v233 = *(*v206 + 160);
    v362 = v206;
    v233(v229, v230);

    outlined destroy of MediaUserStateCenter?(v229, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v234 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
    v236 = v235;
    v232(v216, v231);
    if (v234 == 1936744813 && v236 == 0xE400000000000000)
    {

      v237 = v377;
LABEL_37:
      v247 = v384;
      v248 = v325;
      v322(v384, v380, v325);
      v321(v247, 0, 1, v248);
      v249 = v342;
      swift_beginAccess();
      v250 = v343;
      v251 = v326;
      v252 = v249;
      v253 = v344;
      (*(v343 + 16))(v326, v252, v344);
      v254 = type metadata accessor for PommesSearchRequest(0);
      (*(*v362 + 168))(v381, v382, v247, v251, v228, a9 + *(v254 + 44));
      (*(v250 + 8))(v251, v253);
      outlined destroy of MediaUserStateCenter?(v247, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      goto LABEL_38;
    }

    v246 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v237 = v377;
    if ((v246 & 1) != 0 || v234 == 7300455 && v236 == 0xE300000000000000)
    {

      goto LABEL_37;
    }

    v317 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v317)
    {
      goto LABEL_37;
    }

LABEL_38:
    v172 = v386;
    v164 = v360;
    v177 = v348;
    v178 = v237;
    if (one-time initialization token for shared != -1)
    {
LABEL_39:
      swift_once();
    }

LABEL_20:
    (*(*static PerformanceUtil.shared + 184))(v177, 0);
    _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v177, type metadata accessor for PerformanceUtil.Ticket);
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.debug.getter();
    v181 = os_log_type_enabled(v179, v180);
    v182 = v352;
    if (v181)
    {
      v183 = swift_slowAlloc();
      *v183 = 0;
      _os_log_impl(&dword_2232BB000, v179, v180, "Saving SearchConversationContext from Pegasus response", v183, 2u);
      MEMORY[0x223DE0F80](v183, -1, -1);
    }

    v184 = v351;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchConversationContext.getter();
    v185 = OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_searchConversationContext;
    swift_beginAccess();
    v186 = v354;
    (*(v164 + 40))(v172 + v185, v184, v354);
    swift_endAccess();
    (*(v164 + 16))(v182, v172 + v185, v186);
    v187 = v353;
    JSONEncodingOptions.init()();
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Search_SearchConversationContext and conformance Apple_Parsec_Search_SearchConversationContext, MEMORY[0x277D38C60]);
    v188 = Message.jsonString(options:)();
    if (v178)
    {
      (*(v349 + 8))(v187, v350);
      (*(v164 + 8))(v182, v186);
      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 0;
        _os_log_impl(&dword_2232BB000, v190, v191, "Could not convert SearchConversationContext to JSON after Pegasus response", v192, 2u);
        MEMORY[0x223DE0F80](v192, -1, -1);
      }
    }

    else
    {
      v238 = v189;
      v239 = v188;
      (*(v349 + 8))(v187, v350);
      (*(v164 + 8))(v182, v186);

      v240 = Logger.logObject.getter();
      v241 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v240, v241))
      {
        v242 = swift_slowAlloc();
        v243 = swift_slowAlloc();
        aBlock[0] = v243;
        *v242 = 136315138;
        v244 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v239, v238, aBlock);

        *(v242 + 4) = v244;
        _os_log_impl(&dword_2232BB000, v240, v241, "SearchConversationContext JSON after Pegasus response: %s", v242, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v243);
        v245 = v243;
        v162 = v363;
        MEMORY[0x223DE0F80](v245, -1, -1);
        MEMORY[0x223DE0F80](v242, -1, -1);
      }

      else
      {
      }
    }

    v257 = v364;
    v258 = v385;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
    v259 = *(v376 + 104);
    v260 = v355;
    v259(v355, *MEMORY[0x277D39270], v162);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V1alpha_StatusCode and conformance Apple_Parsec_Siri_V1alpha_StatusCode, MEMORY[0x277D39278]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v261 = v361;
    (v361)(v260, v162);
    (v261)(v257, v162);
    if (aBlock[0] != v387)
    {
      break;
    }

    v262 = v357;
    v125 = v356;
    (v358)(v357, v258, v356);
    v263 = Logger.logObject.getter();
    LOBYTE(v193) = static os_log_type_t.debug.getter();
    v264 = os_log_type_enabled(v263, v193);
    v150 = v386;
    if (!v264)
    {
      v278 = *(v345 + 8);
      (v278)(v262, v125);
      v82 = v379;
LABEL_72:

      v289 = v327;
      (v358)(v327, v385, v125);
      v290 = Logger.logObject.getter();
      v291 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v290, v291))
      {
        v292 = swift_slowAlloc();
        v384 = v278;
        v293 = v292;
        v294 = swift_slowAlloc();
        aBlock[0] = v294;
        *v293 = 136315138;
        v295 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
        v297 = v296;
        v298 = Data.base64EncodedString(options:)(0);
        outlined consume of Data._Representation(v295, v297);
        (v384)(v289, v125);
        v82 = v379;
        v299 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v298._countAndFlagsBits, v298._object, aBlock);
        v150 = v386;

        *(v293 + 4) = v299;
        _os_log_impl(&dword_2232BB000, v290, v291, "Pegasus conversation context bytes: %s", v293, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v294);
        MEMORY[0x223DE0F80](v294, -1, -1);
        v300 = v293;
        v278 = v384;
        MEMORY[0x223DE0F80](v300, -1, -1);
      }

      else
      {

        (v278)(v289, v125);
      }

      v301 = v367;
      v302 = v329;
      v303 = v328;
      v304 = v385;
      v305 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
      v306 = (v150 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
      v307 = *(v150 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext);
      v308 = *(v150 + OBJC_IVAR____TtC21SiriInformationSearch12PegasusProxy_persistentPegasusConversationContext + 8);
      *v306 = v305;
      v306[1] = v309;
      outlined consume of Data?(v307, v308);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v310 = type metadata accessor for OSSignposter();
      __swift_project_value_buffer(v310, static Signposter.pommes);
      OSSignposter.end(token:message:)(v365, 0x73736563637573, 0xE700000000000000);
      v311 = v342;
      swift_beginAccess();
      (*(v343 + 16))(v302, v311, v344);
      (v358)(v302 + *(v303 + 20), v304, v125);
      _s21SiriInformationSearch06PommesC7RequestVWOcTm_0(v302, v301, type metadata accessor for PegasusSearchResponse);
      swift_storeEnumTagMultiPayload();
      v82(v301);
      outlined destroy of MediaUserStateCenter?(v301, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
      _s21SiriInformationSearch15PerformanceUtilC6TicketVWOhTm_0(v302, type metadata accessor for PegasusSearchResponse);
      (v278)(v304, v125);
      goto LABEL_78;
    }

    v196 = swift_slowAlloc();
    *v196 = 134217984;
    v265 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
    v267 = v266 >> 62;
    v82 = v379;
    if ((v266 >> 62) <= 1)
    {
      if (!v267)
      {
        v268 = BYTE6(v266);
        outlined consume of Data._Representation(v265, v266);
        v269 = v268;
LABEL_71:
        v278 = *(v345 + 8);
        (v278)(v357, v125);
        *(v196 + 4) = v269;
        _os_log_impl(&dword_2232BB000, v263, v193, "Stashing persistent Pegasus conversation context (%ld bytes)", v196, 0xCu);
        MEMORY[0x223DE0F80](v196, -1, -1);
        goto LABEL_72;
      }

LABEL_68:
      v286 = HIDWORD(v265);
      v287 = v265;
      result = outlined consume of Data._Representation(v265, v266);
      if (__OFSUB__(v286, v287))
      {
        __break(1u);
        goto LABEL_85;
      }

      v269 = v286 - v287;
      goto LABEL_71;
    }

    if (v267 != 2)
    {
      outlined consume of Data._Representation(v265, v266);
      v269 = 0;
      goto LABEL_71;
    }

    v283 = *(v265 + 16);
    v282 = *(v265 + 24);
    v194 = outlined consume of Data._Representation(v265, v266);
    v284 = __OFSUB__(v282, v283);
    v269 = v282 - v283;
    if (!v284)
    {
      goto LABEL_71;
    }

    __break(1u);
LABEL_64:
    if (v255 == 2)
    {
      v285 = *(v194 + 16);
      v263 = *(v194 + 24);
      v265 = outlined consume of Data._Representation(v194, v195);
      v197 = v263 - v285;
      if (__OFSUB__(v263, v285))
      {
        __break(1u);
        goto LABEL_68;
      }
    }

    else
    {
      outlined consume of Data._Representation(v194, v195);
      v197 = 0;
    }
  }

  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.searchStatus.getter();
  v259(v260, *MEMORY[0x277D39268], v162);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (v261)(v260, v162);
  (v261)(v257, v162);
  if (aBlock[0] == v387)
  {
    v270 = Logger.logObject.getter();
    v271 = static os_log_type_t.debug.getter();
    v272 = os_log_type_enabled(v270, v271);
    v273 = v379;
    v150 = v386;
    if (v272)
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&dword_2232BB000, v270, v271, "Pegasus returned no results", v274, 2u);
      MEMORY[0x223DE0F80](v274, -1, -1);
    }

    v275 = v367;
    v276 = v356;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v277 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v277, static Signposter.pommes);
    OSSignposter.end(token:message:)(v365, 0x746C757365526F6ELL, 0xE900000000000073);
    *v275 = 11;
    swift_storeEnumTagMultiPayload();
    v273(v275);
    outlined destroy of MediaUserStateCenter?(v275, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(v345 + 8))(v385, v276);
  }

  else
  {
    v279 = v367;
    v280 = v379;
    v150 = v386;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v281 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v281, static Signposter.pommes);
    OSSignposter.end(token:message:)(v365, 0x4573757361676570, 0xEC000000726F7272);
    *v279 = 0;
    swift_storeEnumTagMultiPayload();
    v280(v279);
    outlined destroy of MediaUserStateCenter?(v279, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMd, &_ss6ResultOy21SiriInformationSearch07PegasusD8ResponseVAC0E5ErrorOGMR);
    (*(v345 + 8))(v385, v356);
  }

LABEL_78:
  v312 = *(v150 + 152);
  aBlock[4] = partial apply for closure #1 in closure #8 in PegasusProxy.search(pommesSearchRequest:completion:);
  aBlock[5] = v150;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_67;
  v313 = _Block_copy(aBlock);

  v314 = v369;
  static DispatchQoS.unspecified.getter();
  v388 = MEMORY[0x277D84F90];
  _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v315 = v371;
  v316 = v374;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223DDFBF0](0, v314, v315, v313);
  _Block_release(v313);
  (*(v373 + 8))(v315, v316);
  (*(v370 + 8))(v314, v372);
}