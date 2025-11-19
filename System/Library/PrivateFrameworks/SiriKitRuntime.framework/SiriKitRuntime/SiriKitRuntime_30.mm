uint64_t InterruptibleTaskManager.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = (*(v12 + 56) + 80 * v9);
    v15 = v14[3];
    a3[2] = v14[2];
    a3[3] = v15;
    a3[4] = v14[4];
    v16 = v14[1];
    *a3 = *v14;
    a3[1] = v16;
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Parse();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Parse();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA06ActingC0_p0A9Utilities0A11EnvironmentCtMR, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMd, &_s11SiriKitFlow5InputV_AA03AnyC0C0A9Utilities0A11EnvironmentCtMR, specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a2);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v22 = *(v15 - 8);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v14 + *(v22 + 72) * v9, a3, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, MEMORY[0x1E69D0AA8], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a3);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, MEMORY[0x1E69D0100], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a3);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  return specialized Dictionary._Variant.removeValue(forKey:)(specialized __RawDictionaryStorage.find<A>(_:), MEMORY[0x1E69E6D30], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a1);
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(specialized __RawDictionaryStorage.find<A>(_:), MEMORY[0x1E69D0820], specialized _NativeDictionary._delete(at:), specialized _NativeDictionary.copy(), a1);
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, _OWORD *a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = a1();
  if (v13)
  {
    v14 = v12;
    v15 = *v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v9;
    v21 = *v9;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v21;
    }

    v18 = *(v17 + 48);
    v19 = a2(0);
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v14, v19);
    outlined init with take of Any((*(v17 + 56) + 32 * v14), a5);
    a3(v14, v17);
    *v9 = v17;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    a4(v15, v18);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v31 = *(v24 - 8);
    outlined init with take of (offset: Int, element: Siri_Nlu_External_UserParse)(v23 + *(v31 + 72) * v22, a6, a2, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t type metadata completion function for InterruptibleTaskResult(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for InterruptibleTaskResult(char *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = &v8[((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8];

    return v3;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 3;
      v9 = v12 + 3;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 == 2)
  {
    v16 = *a2;
    v17 = *a2;
    *v3 = v16;
    v3[v5] = 2;
  }

  else if (v9 == 1)
  {
    v14 = *a2;
    v15 = *a2;
    *v3 = v14;
    v3[v5] = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    v3[v5] = 0;
  }

  return v3;
}

unsigned __int8 *assignWithCopy for InterruptibleTaskResult(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 2 || v8 == 1)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = *(a2 + v7);
  v14 = v13 - 3;
  if (v13 < 3)
  {
    goto LABEL_37;
  }

  if (v7 <= 3)
  {
    v15 = v7;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_35:
    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_35;
  }

LABEL_37:
  if (v13 == 2)
  {
    v21 = *a2;
    v22 = v21;
    *a1 = v21;
    v20 = 2;
  }

  else if (v13 == 1)
  {
    v18 = *a2;
    v19 = v18;
    *a1 = v18;
    v20 = 1;
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    v20 = 0;
  }

  a1[v7] = v20;
  return a1;
}

void *initializeWithTake for InterruptibleTaskResult(void *result, unsigned __int8 *a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  v4 = a2[v3];
  v5 = v4 - 3;
  if (v4 < 3)
  {
    goto LABEL_18;
  }

  if (v3 <= 3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 4;
  }

  if (v6 <= 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = *a2;
  }

  else if (v6 == 2)
  {
    v7 = *a2;
  }

  else if (v6 == 3)
  {
    v7 = *a2 | (a2[2] << 16);
  }

  else
  {
    v7 = *a2;
  }

  v8 = (v7 | (v5 << (8 * v3))) + 3;
  v4 = v7 + 3;
  if (v3 < 4)
  {
    v4 = v8;
  }

LABEL_18:
  if (v4 == 2)
  {
    *result = *a2;
    v9 = 2;
  }

  else if (v4 == 1)
  {
    *result = *a2;
    v9 = 1;
  }

  else
  {
    v10 = result;
    (*(*(*(a3 + 16) - 8) + 32))();
    result = v10;
    v9 = 0;
  }

  *(result + v3) = v9;
  return result;
}

unsigned __int8 *assignWithTake for InterruptibleTaskResult(unsigned __int8 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 2 || v8 == 1)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = *(a2 + v7);
  v14 = v13 - 3;
  if (v13 < 3)
  {
    goto LABEL_37;
  }

  if (v7 <= 3)
  {
    v15 = v7;
  }

  else
  {
    v15 = 4;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (*(a2 + 2) << 16);
    }

    else
    {
      v16 = *a2;
    }

LABEL_35:
    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_37;
  }

  if (v15)
  {
    v16 = *a2;
    goto LABEL_35;
  }

LABEL_37:
  if (v13 == 2)
  {
    *a1 = *a2;
    v18 = 2;
  }

  else if (v13 == 1)
  {
    *a1 = *a2;
    v18 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 0;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t getEnumTagSinglePayload for InterruptibleTaskResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void storeEnumTagSinglePayload for InterruptibleTaskResult(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t getEnumTag for InterruptibleTaskResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for InterruptibleTaskResult(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRTA_15(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return _s14SiriKitRuntime21ParaphraseProbeResultOIegHr_ACs5Error_pIegHTrzo_TR(a1, v5);
}

uint64_t InvocationStateImpl.aceId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InvocationStateImpl.aceId.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.refId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t InvocationStateImpl.refId.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t InvocationStateImpl.inputOrigin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 24);
  v4 = type metadata accessor for InputOrigin();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.inputOrigin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 24);
  v4 = type metadata accessor for InputOrigin();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.interactionType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 28);
  v4 = type metadata accessor for InteractionType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.interactionType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 28);
  v4 = type metadata accessor for InteractionType();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.responseMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 40);
  v4 = type metadata accessor for ResponseMode();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.responseMode.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 40);
  v4 = type metadata accessor for ResponseMode();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.multiUserState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InvocationStateImpl() + 44);

  return outlined init with copy of MultiUserState(v3, a1);
}

uint64_t InvocationStateImpl.multiUserState.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for InvocationStateImpl() + 44);

  return outlined assign with take of MultiUserState(a1, v3);
}

uint64_t InvocationStateImpl.sessionHandOffContinuityID.getter()
{
  v1 = (v0 + *(type metadata accessor for InvocationStateImpl() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InvocationStateImpl.sessionHandOffContinuityID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.isEyesFree.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isVoiceTriggerEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isTextToSpeechEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isRecognizeMyVoiceEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isDirectAction.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t InvocationStateImpl.siriLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 72);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.siriLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 72);
  v4 = type metadata accessor for Locale();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.siriVoiceGender.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 76);
  v4 = type metadata accessor for SiriVoiceGender();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.siriVoiceGender.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 76);
  v4 = type metadata accessor for SiriVoiceGender();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *InvocationStateImpl.remoteContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl() + 80));
  v2 = v1;
  return v1;
}

void InvocationStateImpl.remoteContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 80);

  *(v1 + v3) = a1;
}

uint64_t InvocationStateImpl.executionRequestId.getter()
{
  v1 = (v0 + *(type metadata accessor for InvocationStateImpl() + 84));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InvocationStateImpl.executionRequestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl() + 84));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.interactionId.getter()
{
  v1 = (v0 + *(type metadata accessor for InvocationStateImpl() + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InvocationStateImpl.interactionId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl() + 88));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.preferencesLanguageCode.getter()
{
  v1 = (v0 + *(type metadata accessor for InvocationStateImpl() + 92));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InvocationStateImpl.preferencesLanguageCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl() + 92));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.restrictions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 104);
  v4 = type metadata accessor for Restrictions();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t InvocationStateImpl.restrictions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 104);
  v4 = type metadata accessor for Restrictions();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t InvocationStateImpl.currentDeviceAssistantId.getter()
{
  v1 = (v0 + *(type metadata accessor for InvocationStateImpl() + 112));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InvocationStateImpl.currentDeviceAssistantId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InvocationStateImpl() + 112));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InvocationStateImpl.voiceTriggerEventInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for InvocationStateImpl() + 116));
}

uint64_t InvocationStateImpl.voiceTriggerEventInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InvocationStateImpl() + 116);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t InvocationStateImpl.voiceAudioSessionId.setter(int a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isSystemApertureEnabled.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isLiveActivitiesSupported.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t InvocationStateImpl.isInAmbient.setter(char a1)
{
  result = type metadata accessor for InvocationStateImpl();
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t AFHomeInfo.asInternalHomeInfo.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  HomeInfo.init()();
  v9 = [v1 homeIdentifier];
  if (v9)
  {
    v10 = v9;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  outlined init with take of UUID?(v6, v8);
  type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    outlined destroy of ReferenceResolutionClientProtocol?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v12 + 8))(v8, v11);
  }

  return HomeInfo.homeIdentifier.setter();
}

uint64_t protocol witness for InvocationState.siriLocale.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for InvocationState.siriVoiceGender.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = type metadata accessor for SiriVoiceGender();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *protocol witness for InvocationState.remoteContext.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));
  v3 = v2;
  return v2;
}

uint64_t protocol witness for InvocationState.executionRequestId.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = (v1 + *(a1 + 84));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for InvocationState.preferencesLanguageCode.getter in conformance InvocationStateImpl(uint64_t a1)
{
  v2 = (v1 + *(a1 + 92));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t protocol witness for InvocationState.restrictions.getter in conformance InvocationStateImpl@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 104);
  v5 = type metadata accessor for Restrictions();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t outlined assign with take of MultiUserState(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserState();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *assignWithCopy for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);

  v8 = a3[6];
  v9 = type metadata accessor for InputOrigin();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  v10 = a3[7];
  v11 = type metadata accessor for InteractionType();
  (*(*(v11 - 8) + 24))(&a1[v10], &a2[v10], v11);
  v12 = a3[8];
  v13 = type metadata accessor for AudioSource();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(&a1[v12], 1, v13);
  v17 = v15(&a2[v12], 1, v13);
  if (v16)
  {
    if (!v17)
    {
      (*(v14 + 16))(&a1[v12], &a2[v12], v13);
      (*(v14 + 56))(&a1[v12], 0, 1, v13);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v17)
  {
    (*(v14 + 8))(&a1[v12], v13);
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v12], &a2[v12], *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 24))(&a1[v12], &a2[v12], v13);
LABEL_7:
  v19 = a3[9];
  v20 = type metadata accessor for AudioDestination();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&a1[v19], 1, v20);
  v24 = v22(&a2[v19], 1, v20);
  if (v23)
  {
    if (!v24)
    {
      (*(v21 + 16))(&a1[v19], &a2[v19], v20);
      (*(v21 + 56))(&a1[v19], 0, 1, v20);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v24)
  {
    (*(v21 + 8))(&a1[v19], v20);
LABEL_12:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v19], &a2[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 24))(&a1[v19], &a2[v19], v20);
LABEL_13:
  v26 = a3[10];
  v27 = type metadata accessor for ResponseMode();
  (*(*(v27 - 8) + 24))(&a1[v26], &a2[v26], v27);
  v28 = a3[11];
  v29 = type metadata accessor for MultiUserContext();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  v32 = v31(&a1[v28], 1, v29);
  v33 = v31(&a2[v28], 1, v29);
  if (v32)
  {
    if (!v33)
    {
      (*(v30 + 16))(&a1[v28], &a2[v28], v29);
      (*(v30 + 56))(&a1[v28], 0, 1, v29);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v33)
  {
    (*(v30 + 8))(&a1[v28], v29);
LABEL_18:
    v34 = type metadata accessor for MultiUserState();
    memcpy(&a1[v28], &a2[v28], *(*(v34 - 8) + 64));
    goto LABEL_19;
  }

  (*(v30 + 24))(&a1[v28], &a2[v28], v29);
LABEL_19:
  v35 = a3[12];
  v36 = &a1[v35];
  v37 = &a2[v35];
  *v36 = *v37;
  v38 = *(v36 + 1);
  *(v36 + 1) = *(v37 + 1);

  a1[a3[13]] = a2[a3[13]];
  a1[a3[14]] = a2[a3[14]];
  a1[a3[15]] = a2[a3[15]];
  a1[a3[16]] = a2[a3[16]];
  a1[a3[17]] = a2[a3[17]];
  v39 = a3[18];
  v40 = type metadata accessor for Locale();
  (*(*(v40 - 8) + 24))(&a1[v39], &a2[v39], v40);
  v41 = a3[19];
  v42 = type metadata accessor for SiriVoiceGender();
  (*(*(v42 - 8) + 24))(&a1[v41], &a2[v41], v42);
  v43 = a3[20];
  v44 = *&a1[v43];
  v45 = *&a2[v43];
  *&a1[v43] = v45;
  v46 = v45;

  v47 = a3[21];
  v48 = &a1[v47];
  v49 = &a2[v47];
  *v48 = *v49;
  v50 = *(v48 + 1);
  *(v48 + 1) = *(v49 + 1);

  v51 = a3[22];
  v52 = &a1[v51];
  v53 = &a2[v51];
  *v52 = *v53;
  v54 = *(v52 + 1);
  *(v52 + 1) = *(v53 + 1);

  v55 = a3[23];
  v56 = &a1[v55];
  v57 = &a2[v55];
  *v56 = *v57;
  v58 = *(v56 + 1);
  *(v56 + 1) = *(v57 + 1);

  v59 = a3[24];
  v60 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  v63 = v62(&a1[v59], 1, v60);
  v64 = v62(&a2[v59], 1, v60);
  if (v63)
  {
    if (!v64)
    {
      (*(v61 + 16))(&a1[v59], &a2[v59], v60);
      (*(v61 + 56))(&a1[v59], 0, 1, v60);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v64)
  {
    (*(v61 + 8))(&a1[v59], v60);
LABEL_24:
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v59], &a2[v59], *(*(v65 - 8) + 64));
    goto LABEL_25;
  }

  (*(v61 + 24))(&a1[v59], &a2[v59], v60);
LABEL_25:
  v66 = a3[25];
  v67 = type metadata accessor for BargeInContext();
  v68 = *(v67 - 8);
  v69 = *(v68 + 48);
  v70 = v69(&a1[v66], 1, v67);
  v71 = v69(&a2[v66], 1, v67);
  if (v70)
  {
    if (!v71)
    {
      (*(v68 + 16))(&a1[v66], &a2[v66], v67);
      (*(v68 + 56))(&a1[v66], 0, 1, v67);
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v71)
  {
    (*(v68 + 8))(&a1[v66], v67);
LABEL_30:
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v66], &a2[v66], *(*(v72 - 8) + 64));
    goto LABEL_31;
  }

  (*(v68 + 24))(&a1[v66], &a2[v66], v67);
LABEL_31:
  v73 = a3[26];
  v74 = type metadata accessor for Restrictions();
  (*(*(v74 - 8) + 24))(&a1[v73], &a2[v73], v74);
  v75 = a3[27];
  v76 = type metadata accessor for HomeInfo();
  v77 = *(v76 - 8);
  v78 = *(v77 + 48);
  v79 = v78(&a1[v75], 1, v76);
  v80 = v78(&a2[v75], 1, v76);
  if (!v79)
  {
    if (!v80)
    {
      (*(v77 + 24))(&a1[v75], &a2[v75], v76);
      goto LABEL_37;
    }

    (*(v77 + 8))(&a1[v75], v76);
    goto LABEL_36;
  }

  if (v80)
  {
LABEL_36:
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v75], &a2[v75], *(*(v81 - 8) + 64));
    goto LABEL_37;
  }

  (*(v77 + 16))(&a1[v75], &a2[v75], v76);
  (*(v77 + 56))(&a1[v75], 0, 1, v76);
LABEL_37:
  v82 = a3[28];
  v83 = &a1[v82];
  v84 = &a2[v82];
  *v83 = *v84;
  v85 = *(v83 + 1);
  *(v83 + 1) = *(v84 + 1);

  v86 = a3[29];
  v87 = *&a1[v86];
  *&a1[v86] = *&a2[v86];

  *&a1[a3[30]] = *&a2[a3[30]];
  a1[a3[31]] = a2[a3[31]];
  a1[a3[32]] = a2[a3[32]];
  a1[a3[33]] = a2[a3[33]];
  return a1;
}

char *initializeWithTake for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = type metadata accessor for InputOrigin();
  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  v9 = a3[7];
  v10 = type metadata accessor for InteractionType();
  (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
  v11 = a3[8];
  v12 = type metadata accessor for AudioSource();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  v15 = a3[9];
  v16 = type metadata accessor for AudioDestination();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(&a2[v15], 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v15], &a2[v15], *(*(v18 - 8) + 64));
  }

  else
  {
    (*(v17 + 32))(&a1[v15], &a2[v15], v16);
    (*(v17 + 56))(&a1[v15], 0, 1, v16);
  }

  v19 = a3[10];
  v20 = type metadata accessor for ResponseMode();
  (*(*(v20 - 8) + 32))(&a1[v19], &a2[v19], v20);
  v21 = a3[11];
  v22 = type metadata accessor for MultiUserContext();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(&a2[v21], 1, v22))
  {
    v24 = type metadata accessor for MultiUserState();
    memcpy(&a1[v21], &a2[v21], *(*(v24 - 8) + 64));
  }

  else
  {
    (*(v23 + 32))(&a1[v21], &a2[v21], v22);
    (*(v23 + 56))(&a1[v21], 0, 1, v22);
  }

  v25 = a3[13];
  *&a1[a3[12]] = *&a2[a3[12]];
  a1[v25] = a2[v25];
  v26 = a3[15];
  a1[a3[14]] = a2[a3[14]];
  a1[v26] = a2[v26];
  v27 = a3[17];
  a1[a3[16]] = a2[a3[16]];
  a1[v27] = a2[v27];
  v28 = a3[18];
  v29 = type metadata accessor for Locale();
  (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
  v30 = a3[19];
  v31 = type metadata accessor for SiriVoiceGender();
  (*(*(v31 - 8) + 32))(&a1[v30], &a2[v30], v31);
  v32 = a3[21];
  *&a1[a3[20]] = *&a2[a3[20]];
  *&a1[v32] = *&a2[v32];
  v33 = a3[23];
  *&a1[a3[22]] = *&a2[a3[22]];
  *&a1[v33] = *&a2[v33];
  v34 = a3[24];
  v35 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(&a2[v34], 1, v35))
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v34], &a2[v34], *(*(v37 - 8) + 64));
  }

  else
  {
    (*(v36 + 32))(&a1[v34], &a2[v34], v35);
    (*(v36 + 56))(&a1[v34], 0, 1, v35);
  }

  v38 = a3[25];
  v39 = type metadata accessor for BargeInContext();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(&a2[v38], 1, v39))
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v38], &a2[v38], *(*(v41 - 8) + 64));
  }

  else
  {
    (*(v40 + 32))(&a1[v38], &a2[v38], v39);
    (*(v40 + 56))(&a1[v38], 0, 1, v39);
  }

  v42 = a3[26];
  v43 = type metadata accessor for Restrictions();
  (*(*(v43 - 8) + 32))(&a1[v42], &a2[v42], v43);
  v44 = a3[27];
  v45 = type metadata accessor for HomeInfo();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(&a2[v44], 1, v45))
  {
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v44], &a2[v44], *(*(v47 - 8) + 64));
  }

  else
  {
    (*(v46 + 32))(&a1[v44], &a2[v44], v45);
    (*(v46 + 56))(&a1[v44], 0, 1, v45);
  }

  v48 = a3[29];
  *&a1[a3[28]] = *&a2[a3[28]];
  *&a1[v48] = *&a2[v48];
  v49 = a3[31];
  *&a1[a3[30]] = *&a2[a3[30]];
  a1[v49] = a2[v49];
  v50 = a3[33];
  a1[a3[32]] = a2[a3[32]];
  a1[v50] = a2[v50];
  return a1;
}

char *assignWithTake for InvocationStateImpl(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a2 + 3);
  v9 = *(a1 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v8;

  v10 = a3[6];
  v11 = type metadata accessor for InputOrigin();
  (*(*(v11 - 8) + 40))(&a1[v10], &a2[v10], v11);
  v12 = a3[7];
  v13 = type metadata accessor for InteractionType();
  (*(*(v13 - 8) + 40))(&a1[v12], &a2[v12], v13);
  v14 = a3[8];
  v15 = type metadata accessor for AudioSource();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  v18 = v17(&a1[v14], 1, v15);
  v19 = v17(&a2[v14], 1, v15);
  if (v18)
  {
    if (!v19)
    {
      (*(v16 + 32))(&a1[v14], &a2[v14], v15);
      (*(v16 + 56))(&a1[v14], 0, 1, v15);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v19)
  {
    (*(v16 + 8))(&a1[v14], v15);
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11AudioSourceVSgMd, &_s13SiriUtilities11AudioSourceVSgMR);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  (*(v16 + 40))(&a1[v14], &a2[v14], v15);
LABEL_7:
  v21 = a3[9];
  v22 = type metadata accessor for AudioDestination();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(&a1[v21], 1, v22);
  v26 = v24(&a2[v21], 1, v22);
  if (v25)
  {
    if (!v26)
    {
      (*(v23 + 32))(&a1[v21], &a2[v21], v22);
      (*(v23 + 56))(&a1[v21], 0, 1, v22);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v26)
  {
    (*(v23 + 8))(&a1[v21], v22);
LABEL_12:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities16AudioDestinationVSgMd, &_s13SiriUtilities16AudioDestinationVSgMR);
    memcpy(&a1[v21], &a2[v21], *(*(v27 - 8) + 64));
    goto LABEL_13;
  }

  (*(v23 + 40))(&a1[v21], &a2[v21], v22);
LABEL_13:
  v28 = a3[10];
  v29 = type metadata accessor for ResponseMode();
  (*(*(v29 - 8) + 40))(&a1[v28], &a2[v28], v29);
  v30 = a3[11];
  v31 = type metadata accessor for MultiUserContext();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(&a1[v30], 1, v31);
  v35 = v33(&a2[v30], 1, v31);
  if (v34)
  {
    if (!v35)
    {
      (*(v32 + 32))(&a1[v30], &a2[v30], v31);
      (*(v32 + 56))(&a1[v30], 0, 1, v31);
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v35)
  {
    (*(v32 + 8))(&a1[v30], v31);
LABEL_18:
    v36 = type metadata accessor for MultiUserState();
    memcpy(&a1[v30], &a2[v30], *(*(v36 - 8) + 64));
    goto LABEL_19;
  }

  (*(v32 + 40))(&a1[v30], &a2[v30], v31);
LABEL_19:
  v37 = a3[12];
  v38 = &a1[v37];
  v39 = &a2[v37];
  v41 = *v39;
  v40 = *(v39 + 1);
  v42 = *(v38 + 1);
  *v38 = v41;
  *(v38 + 1) = v40;

  v43 = a3[14];
  a1[a3[13]] = a2[a3[13]];
  a1[v43] = a2[v43];
  v44 = a3[16];
  a1[a3[15]] = a2[a3[15]];
  a1[v44] = a2[v44];
  v45 = a3[18];
  a1[a3[17]] = a2[a3[17]];
  v46 = type metadata accessor for Locale();
  (*(*(v46 - 8) + 40))(&a1[v45], &a2[v45], v46);
  v47 = a3[19];
  v48 = type metadata accessor for SiriVoiceGender();
  (*(*(v48 - 8) + 40))(&a1[v47], &a2[v47], v48);
  v49 = a3[20];
  v50 = *&a1[v49];
  *&a1[v49] = *&a2[v49];

  v51 = a3[21];
  v52 = &a1[v51];
  v53 = &a2[v51];
  v55 = *v53;
  v54 = *(v53 + 1);
  v56 = *(v52 + 1);
  *v52 = v55;
  *(v52 + 1) = v54;

  v57 = a3[22];
  v58 = &a1[v57];
  v59 = &a2[v57];
  v61 = *v59;
  v60 = *(v59 + 1);
  v62 = *(v58 + 1);
  *v58 = v61;
  *(v58 + 1) = v60;

  v63 = a3[23];
  v64 = &a1[v63];
  v65 = &a2[v63];
  v67 = *v65;
  v66 = *(v65 + 1);
  v68 = *(v64 + 1);
  *v64 = v67;
  *(v64 + 1) = v66;

  v69 = a3[24];
  v70 = type metadata accessor for PersonalDomainsAuthenticationMode();
  v71 = *(v70 - 8);
  v72 = *(v71 + 48);
  v73 = v72(&a1[v69], 1, v70);
  v74 = v72(&a2[v69], 1, v70);
  if (v73)
  {
    if (!v74)
    {
      (*(v71 + 32))(&a1[v69], &a2[v69], v70);
      (*(v71 + 56))(&a1[v69], 0, 1, v70);
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v74)
  {
    (*(v71 + 8))(&a1[v69], v70);
LABEL_24:
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMd, &_s13SiriUtilities33PersonalDomainsAuthenticationModeOSgMR);
    memcpy(&a1[v69], &a2[v69], *(*(v75 - 8) + 64));
    goto LABEL_25;
  }

  (*(v71 + 40))(&a1[v69], &a2[v69], v70);
LABEL_25:
  v76 = a3[25];
  v77 = type metadata accessor for BargeInContext();
  v78 = *(v77 - 8);
  v79 = *(v78 + 48);
  v80 = v79(&a1[v76], 1, v77);
  v81 = v79(&a2[v76], 1, v77);
  if (v80)
  {
    if (!v81)
    {
      (*(v78 + 32))(&a1[v76], &a2[v76], v77);
      (*(v78 + 56))(&a1[v76], 0, 1, v77);
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (v81)
  {
    (*(v78 + 8))(&a1[v76], v77);
LABEL_30:
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities14BargeInContextVSgMd, &_s13SiriUtilities14BargeInContextVSgMR);
    memcpy(&a1[v76], &a2[v76], *(*(v82 - 8) + 64));
    goto LABEL_31;
  }

  (*(v78 + 40))(&a1[v76], &a2[v76], v77);
LABEL_31:
  v83 = a3[26];
  v84 = type metadata accessor for Restrictions();
  (*(*(v84 - 8) + 40))(&a1[v83], &a2[v83], v84);
  v85 = a3[27];
  v86 = type metadata accessor for HomeInfo();
  v87 = *(v86 - 8);
  v88 = *(v87 + 48);
  v89 = v88(&a1[v85], 1, v86);
  v90 = v88(&a2[v85], 1, v86);
  if (!v89)
  {
    if (!v90)
    {
      (*(v87 + 40))(&a1[v85], &a2[v85], v86);
      goto LABEL_37;
    }

    (*(v87 + 8))(&a1[v85], v86);
    goto LABEL_36;
  }

  if (v90)
  {
LABEL_36:
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities8HomeInfoVSgMd, &_s13SiriUtilities8HomeInfoVSgMR);
    memcpy(&a1[v85], &a2[v85], *(*(v91 - 8) + 64));
    goto LABEL_37;
  }

  (*(v87 + 32))(&a1[v85], &a2[v85], v86);
  (*(v87 + 56))(&a1[v85], 0, 1, v86);
LABEL_37:
  v92 = a3[28];
  v93 = &a1[v92];
  v94 = &a2[v92];
  v96 = *v94;
  v95 = *(v94 + 1);
  v97 = *(v93 + 1);
  *v93 = v96;
  *(v93 + 1) = v95;

  v98 = a3[29];
  v99 = *&a1[v98];
  *&a1[v98] = *&a2[v98];

  v100 = a3[31];
  *&a1[a3[30]] = *&a2[a3[30]];
  a1[v100] = a2[v100];
  v101 = a3[33];
  a1[a3[32]] = a2[a3[32]];
  a1[v101] = a2[v101];
  return a1;
}

void type metadata completion function for InvocationStateImpl()
{
  v0 = type metadata accessor for InputOrigin();
  if (v1 <= 0x3F)
  {
    v24 = *(v0 - 8) + 64;
    v2 = type metadata accessor for InteractionType();
    if (v3 <= 0x3F)
    {
      v25 = *(v2 - 8) + 64;
      type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for AudioSource?, MEMORY[0x1E69D3410]);
      if (v5 <= 0x3F)
      {
        v26 = *(v4 - 8) + 64;
        type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for AudioDestination?, MEMORY[0x1E69D35C0]);
        if (v7 <= 0x3F)
        {
          v27 = *(v6 - 8) + 64;
          v8 = type metadata accessor for ResponseMode();
          if (v9 <= 0x3F)
          {
            v28 = *(v8 - 8) + 64;
            v10 = type metadata accessor for MultiUserState();
            if (v11 <= 0x3F)
            {
              v29 = *(v10 - 8) + 64;
              v12 = type metadata accessor for Locale();
              if (v13 <= 0x3F)
              {
                v30 = *(v12 - 8) + 64;
                v14 = type metadata accessor for SiriVoiceGender();
                if (v15 <= 0x3F)
                {
                  v31 = *(v14 - 8) + 64;
                  type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for PersonalDomainsAuthenticationMode?, MEMORY[0x1E69D3668]);
                  if (v17 <= 0x3F)
                  {
                    v32 = *(v16 - 8) + 64;
                    type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for BargeInContext?, MEMORY[0x1E69D3588]);
                    if (v19 <= 0x3F)
                    {
                      v33 = *(v18 - 8) + 64;
                      v20 = type metadata accessor for Restrictions();
                      if (v21 <= 0x3F)
                      {
                        v34 = *(v20 - 8) + 64;
                        type metadata accessor for AudioSource?(319, &lazy cache variable for type metadata for HomeInfo?, MEMORY[0x1E69D3670]);
                        if (v23 <= 0x3F)
                        {
                          v35 = *(v22 - 8) + 64;
                          swift_initStructMetadata();
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

void type metadata accessor for AudioSource?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t JetsamHelper.defaultTimeout.unsafeMutableAddressor()
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for DispatchTimeInterval();

  return __swift_project_value_buffer(v0, static JetsamHelper.defaultTimeout);
}

char *JetsamHelper.__allocating_init(name:queue:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = &v11[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = dispatch_semaphore_create(1);
  *(v11 + 5) = a3;
  v13 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v14 = type metadata accessor for DispatchTimeInterval();
  (*(*(v14 - 8) + 32))(&v11[v13], a4, v14);
  return v11;
}

Swift::Void __swiftcall JetsamHelper.ensureJetsamTransaction()()
{
  v1 = v0;
  v2 = v0[4];
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.ensureJetsamTransaction()(v1);
  OS_dispatch_semaphore.signal()();
}

Swift::Bool __swiftcall JetsamHelper.releaseJetsamTransaction()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  OS_dispatch_semaphore.wait()();
  closure #1 in JetsamHelper.releaseJetsamTransaction()(v1, &v4);
  OS_dispatch_semaphore.signal()();
  return v4;
}

uint64_t one-time initialization function for defaultTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static JetsamHelper.defaultTimeout);
  *__swift_project_value_buffer(v0, static JetsamHelper.defaultTimeout) = 180;
  v1 = *MEMORY[0x1E69E7F48];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

{
  v0 = type metadata accessor for DispatchTimeInterval();
  __swift_allocate_value_buffer(v0, static SiriAceLocationProvider.defaultTimeout);
  *__swift_project_value_buffer(v0, static SiriAceLocationProvider.defaultTimeout) = 50;
  v1 = *MEMORY[0x1E69E7F38];
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t static JetsamHelper.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static JetsamHelper.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *JetsamHelper.init(name:queue:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = &v4[OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = dispatch_semaphore_create(1);
  *(v4 + 5) = a3;
  v8 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v9 = type metadata accessor for DispatchTimeInterval();
  (*(*(v9 - 8) + 32))(&v4[v8], a4, v9);
  return v4;
}

void closure #1 in closure #1 in JetsamHelper.ensureJetsamTransaction()()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v20[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + 32);
    OS_dispatch_semaphore.wait()();
    closure #1 in JetsamHelper.releaseJetsamTransaction()(v6, v20);
    OS_dispatch_semaphore.signal()();
    if (one-time initialization token for executor != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.executor);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20[0] = v12;
      *v11 = 136315394;
      v13 = *(v6 + 16);
      v14 = *(v6 + 24);

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v20);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      (*(v1 + 16))(v4, v6 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout, v0);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v20);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1DC659000, v9, v10, "os_transaction(%s) released after %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v12, -1, -1);
      MEMORY[0x1E12A2F50](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t JetsamHelper.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_timeout;
  v3 = type metadata accessor for DispatchTimeInterval();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  outlined consume of (transaction: OS_os_transaction?, timer: OS_dispatch_source_timer)?(*(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction), *(v0 + OBJC_IVAR____TtC14SiriKitRuntime12JetsamHelper_transaction + 8));
  return v0;
}

uint64_t type metadata completion function for JetsamHelper()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t static LaunchAppMetricsLogger.logAnalytics(launchApp:)(void *a1)
{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

id specialized static LaunchAppMetricsLogger.getSparseCommand(command:)(void *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7860]) init];
  v9 = [a1 appId];
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    [v11 setAppId_];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v6, v2);
  return v8;
}

{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v7 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7718]) init];
  v9 = [a1 appId];
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    [v11 setAppId_];
  }

  v12 = [a1 launchId];
  if (v12)
  {
    v13 = v12;
    [v8 setLaunchId_];
  }

  v14 = [a1 applicationClientIdentifier];
  if (v14)
  {
    v15 = v14;
    [v8 setApplicationClientIdentifier_];
  }

  v16 = [a1 callbacks];
  if (v16)
  {
    v17 = v16;
    v18 = v8;
    [v18 setCallbacks_];
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(void *a1)
{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

{
  return specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(a1, specialized static LaunchAppMetricsLogger.getSparseCommand(command:));
}

uint64_t specialized static LaunchAppMetricsLogger.logAnalytics(launchApp:)(void *a1, uint64_t (*a2)(id))
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v9 = static Log.executor;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  if (one-time initialization token for instrumentation != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.instrumentation);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_1DC659000, v12, v13, "Logging LaunchApp to AFAnalytics: %@", v14, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v15, -1, -1);
    MEMORY[0x1E12A2F50](v14, -1, -1);
  }

  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v31 = v17;
  v18 = a2(v11);
  v19 = [v18 dictionary];
  if (v19)
  {
    v20 = v19;
    v30 = type metadata accessor for NSMutableDictionary();
    *&v29 = v20;
    outlined init with take of Any(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v17;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, 0x6C46746E65696C43, 0xEE0077656956776FLL, isUniquelyReferenced_nonNull_native);
    v22 = v27;
    v31 = v27;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x6C46746E65696C43, 0xEE0077656956776FLL, &v29);
    outlined destroy of ReferenceResolutionClientProtocol?(&v29, &_sypSgMd, &_sypSgMR);
    v22 = v31;
  }

  v23 = [objc_opt_self() sharedAnalytics];
  if (v23)
  {
    v24 = v23;
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v22);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v24 logEventWithType:3700 context:isa];
  }

  else
  {
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t type metadata accessor for NSMutableDictionary()
{
  result = lazy cache variable for type metadata for NSMutableDictionary;
  if (!lazy cache variable for type metadata for NSMutableDictionary)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSMutableDictionary);
  }

  return result;
}

uint64_t one-time initialization function for kLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.executor);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(char *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  v5 = __swift_project_boxed_opaque_existential_1(a2, v3);

  return specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(a1, v5, v3, v4);
}

uint64_t closure #1 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(uint64_t *a1, uint64_t a2, char **a3, char **a4)
{
  v6 = a1[1];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v23 = *(a1 + 34);
  v21 = *a1;
  v22 = a1[2];
  if (a2 && v7)
  {
    v10 = specialized Set.contains(_:)(a1[2], v7, a2);
    if (v8 && (v10 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (v8)
  {
LABEL_5:
    swift_beginAccess();
    v11 = *a4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      *a4 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
      *a4 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[40 * v14];
    goto LABEL_16;
  }

  swift_beginAccess();
  v16 = *a3;

  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if ((v17 & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
    *a3 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
    *a3 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v15 = &v16[40 * v19];
LABEL_16:
  *(v15 + 4) = v21;
  *(v15 + 5) = v6;
  *(v15 + 6) = v22;
  *(v15 + 7) = v7;
  v15[64] = v8;
  v15[65] = v9;
  v15[66] = v23;
  return swift_endAccess();
}

uint64_t closure #2 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[3];
  v19 = a1[2];
  v20 = *(a1 + 32);
  v8 = *(a1 + 33);
  v9 = *(a1 + 34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DCA6B020;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001DCA84690;
  v11 = MEMORY[0x1E69E6370];
  *(inited + 48) = v8;
  v12 = v11;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000014;
  v13 = MEMORY[0x1E69E6158];
  *(inited + 88) = 0x80000001DCA7DDD0;
  *(inited + 96) = v6;
  *(inited + 104) = v5;
  *(inited + 120) = v13;
  *(inited + 128) = 0x6E65657263536E6FLL;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 168) = v11;
  *(inited + 144) = v9;

  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  if (v7)
  {
    v25 = v13;
    *&v24 = v19;
    *(&v24 + 1) = v7;
    outlined init with take of Any(&v24, v23);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v14;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0x69746E456B6E696CLL, 0xEE00657079547974, isUniquelyReferenced_nonNull_native);
    v14 = v26;
  }

  v25 = v12;
  LOBYTE(v24) = v20;
  outlined init with take of Any(&v24, v23);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v26 = v14;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, 0xD000000000000016, 0x80000001DCA846B0, v16);
  v17 = v26;
  *a4 = a2;
  a4[1] = a3;
  a4[2] = v17;
}

uint64_t specialized LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(char *a1, uint64_t a2, uint64_t a3, os_log_t a4)
{
  v5 = a1;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = *(v6 + 16);
  v146 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = v11;
  v10(v8);
  v12 = *v5;
  if (!*v5)
  {
    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, kLogger);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v6;
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DC659000, v29, v30, "[LinkParseExpansion] Skipping parse expansion as could not find systemProtocol from parse.", v32, 2u);
      v33 = v32;
      v6 = v31;
      MEMORY[0x1E12A2F50](v33, -1, -1);
    }

    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_90;
  }

  v145 = v6;
  v13 = one-time initialization token for kLogger;
  v14 = v12;
  if (v13 != -1)
  {
LABEL_92:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, kLogger);
  v17 = v14;
  v160 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v153 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v153;
    *(v20 + 4) = v153;
    *v21 = v12;
    v23 = v22;
    _os_log_impl(&dword_1DC659000, v18, v19, "[LinkParseExpansion] Evaluating compatible Link actions for %@", v20, 0xCu);
    outlined destroy of ReferenceResolutionClientProtocol?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1E12A2F50](v21, -1, -1);
    MEMORY[0x1E12A2F50](v20, -1, -1);
  }

  if (v5[32])
  {
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DC659000, v24, v25, "[LinkParseExpansion] Detected noEntity parse, using entities directly from SRR entity pool.", v26, 2u);
      MEMORY[0x1E12A2F50](v26, -1, -1);
    }

    v27 = (a4[2].isa)(v147, a4);
  }

  else
  {
    v27 = *(v5 + 2);
    if (*(v27 + 16))
    {
      v35 = *(v5 + 2);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DC659000, v36, v37, "[LinkParseExpansion] Detected parse with explicitly mentioned entity type.", v38, 2u);
        MEMORY[0x1E12A2F50](v38, -1, -1);
      }
    }

    else
    {
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1DC659000, v39, v40, "[LinkParseExpansion] Detected parse without explicitly mentioned entity type.", v41, 2u);
        MEMORY[0x1E12A2F50](v41, -1, -1);
      }

      v27 = *(v5 + 1);
    }
  }

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v168 = v45;
    *v44 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    v46 = Dictionary.description.getter();
    v48 = v47;

    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v168);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_1DC659000, v42, v43, "[LinkParseExpansion] Considering salient entities types: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x1E12A2F50](v45, -1, -1);
    MEMORY[0x1E12A2F50](v44, -1, -1);
  }

  v50 = MEMORY[0x1E69E7CC0];
  v176 = MEMORY[0x1E69E7CC0];
  (a4[3].isa)(v147, a4);
  v51 = dispatch thunk of _AnySequenceBox._makeIterator()();

  v161 = v51;
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v53 = v169;
  if (!v169)
  {
    v55 = v50;
    goto LABEL_83;
  }

  v54 = v168;
  *&v52 = 136315650;
  v148 = v52;
  v55 = v50;
  v157 = v5;
  v159 = v27;
  while (2)
  {
    v149 = v55;
    while (1)
    {
      v57 = *(&v53 + 1);
      v56 = v53;
      v58 = *(v5 + 3);
      v59 = *(v58 + 16);
      v162 = v54;
      v163 = v53;
      if (!v59)
      {
        goto LABEL_37;
      }

      v60 = *(v58 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v61 = Hasher._finalize()();
      v62 = -1 << *(v58 + 32);
      v63 = v61 & ~v62;
      if (((*(v58 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        break;
      }

      v64 = ~v62;
      while (1)
      {
        v65 = (*(v58 + 48) + 16 * v63);
        v54 = v162;
        v56 = v163;
        if (*v65 == v162 && v163 == v65[1])
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v54 = v162;
          v56 = v163;
          break;
        }

        v63 = (v63 + 1) & v64;
        if (((*(v58 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

LABEL_37:
      if (*(v27 + 16) && (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v54, v56), (v68 & 1) != 0))
      {
        v69 = *(*(v27 + 56) + 8 * v67);
      }

      else
      {
        v69 = 0;
      }

      v175 = v50;
      v167 = v50;
      if (*(v57 + 16))
      {
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v153);
        if (v71)
        {
          v72 = *(*(v57 + 56) + 8 * v70);

          specialized Sequence.forEach(_:)(v72, v69, &v175, &v167);
        }
      }

      a4 = v163;

      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v155 = v74;
        v156 = v73;
        v75 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v164 = v154;
        *v75 = v148;
        *(v75 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, a4, &v164);
        *(v75 + 12) = 2080;
        swift_beginAccess();
        v76 = v175;
        v77 = *(v175 + 2);
        *&v158 = v75;
        if (v77)
        {
          v166 = v50;

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v77, 0);
          v50 = v166;
          v152 = v76;
          v5 = v76 + 56;
          do
          {
            v78 = *(v5 - 3);
            v79 = *(v5 - 2);
            v80 = *v5;
            if (*v5)
            {
              v81 = *(v5 - 1);
              v168 = *(v5 - 3);
              *&v169 = v79;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v81, v80);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v78 = v168;
              v79 = v169;
            }

            else
            {
              v82 = *(v5 - 2);
            }

            v166 = v50;
            v84 = *(v50 + 16);
            v83 = *(v50 + 24);
            if (v84 >= v83 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1);
              v50 = v166;
            }

            v5 += 40;
            *(v50 + 16) = v84 + 1;
            v85 = v50 + 16 * v84;
            *(v85 + 32) = v78;
            *(v85 + 40) = v79;
            --v77;
          }

          while (v77);

          v75 = v158;
        }

        v168 = v50;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        v87 = lazy protocol witness table accessor for type [String] and conformance [A]();
        v88 = BidirectionalCollection<>.joined(separator:)();
        v90 = v89;

        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v90, &v164);

        *(v75 + 14) = v91;
        *(v75 + 22) = 2080;
        swift_beginAccess();
        v92 = v167;
        v93 = *(v167 + 2);
        if (v93)
        {
          v151 = v87;
          v152 = v86;
          v166 = MEMORY[0x1E69E7CC0];

          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
          v94 = v166;
          v150 = v92;
          v95 = (v92 + 56);
          do
          {
            v96 = *(v95 - 3);
            v5 = *(v95 - 2);
            v97 = *v95;
            if (*v95)
            {
              v98 = *(v95 - 1);
              v168 = *(v95 - 3);
              *&v169 = v5;
              swift_bridgeObjectRetain_n();

              MEMORY[0x1E12A1580](60, 0xE100000000000000);
              MEMORY[0x1E12A1580](v98, v97);
              MEMORY[0x1E12A1580](62, 0xE100000000000000);

              v96 = v168;
              v5 = v169;
            }

            else
            {
              v99 = *(v95 - 2);
            }

            v166 = v94;
            v101 = *(v94 + 16);
            v100 = *(v94 + 24);
            if (v101 >= v100 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1);
              v94 = v166;
            }

            v95 += 5;
            *(v94 + 16) = v101 + 1;
            v102 = v94 + 16 * v101;
            *(v102 + 32) = v96;
            *(v102 + 40) = v5;
            --v93;
          }

          while (v93);

          v50 = MEMORY[0x1E69E7CC0];
          v75 = v158;
        }

        else
        {
          v50 = MEMORY[0x1E69E7CC0];
          v94 = MEMORY[0x1E69E7CC0];
        }

        v168 = v94;
        v103 = BidirectionalCollection<>.joined(separator:)();
        v105 = v104;

        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v105, &v164);

        *(v75 + 24) = v106;
        a4 = v156;
        _os_log_impl(&dword_1DC659000, v156, v155, "[LinkParseExpansion] %s Compatible actions: [%s] Incompatible actions: [%s]", v75, 0x20u);
        v107 = v154;
        swift_arrayDestroy();
        MEMORY[0x1E12A2F50](v107, -1, -1);
        MEMORY[0x1E12A2F50](v75, -1, -1);

        v27 = v159;
      }

      else
      {
      }

      swift_beginAccess();
      v108 = v175;
      v12 = *(v175 + 2);
      if (v12)
      {
        v166 = v50;

        v14 = &v166;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
        v109 = 0;
        v110 = v166;
        v111 = v108 + 66;
        while (v109 < *(v108 + 2))
        {
          v112 = *(v111 - 26);
          v113 = *(v111 - 18);
          v114 = *(v111 - 10);
          v115 = *(v111 - 2);
          v116 = *(v111 - 1);
          v117 = *v111;
          v168 = *(v111 - 34);
          *&v169 = v112;
          *(&v169 + 1) = v113;
          v170 = v114;
          v171 = v115;
          v172 = v116;
          v173 = v117;

          closure #2 in LinkActionFilter.compatibleLinkActions(parseMetadata:expansionContext:)(&v168, v162, v163, &v164);
          v14 = v170;

          a4 = v164;
          v118 = v165;
          v166 = v110;
          v120 = v110[2];
          v119 = v110[3];
          v5 = (v120 + 1);
          if (v120 >= v119 >> 1)
          {
            v14 = &v166;
            v158 = v165;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1);
            v118 = v158;
            v110 = v166;
          }

          ++v109;
          v110[2] = v5;
          v121 = &v110[3 * v120];
          v121[4] = a4;
          *(v121 + 5) = v118;
          v111 += 40;
          if (v12 == v109)
          {

            v27 = v159;
            v50 = MEMORY[0x1E69E7CC0];
            goto LABEL_74;
          }
        }

        __break(1u);
        goto LABEL_92;
      }

      v110 = v50;
LABEL_74:
      specialized Array.append<A>(contentsOf:)(v110);

      dispatch thunk of _AnyIteratorBoxBase.next()();
      v54 = v168;
      v53 = v169;
      v5 = v157;
      if (!v169)
      {
        v55 = v149;
        goto LABEL_83;
      }
    }

LABEL_76:

    v55 = v149;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
    }

    v123 = *(v55 + 2);
    v122 = *(v55 + 3);
    v124 = v162;
    v125 = v163;
    if (v123 >= v122 >> 1)
    {
      v127 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v55);
      v125 = v163;
      v124 = v162;
      v55 = v127;
    }

    *(v55 + 2) = v123 + 1;
    v126 = &v55[16 * v123];
    *(v126 + 4) = v124;
    *(v126 + 5) = v125;
    dispatch thunk of _AnyIteratorBoxBase.next()();
    v54 = v168;
    v53 = v169;
    if (v169)
    {
      continue;
    }

    break;
  }

LABEL_83:

  if (*(v55 + 2))
  {
    v128 = *(v5 + 2);
    v168 = *(v5 + 1);
    v164 = v128;
    v129 = *(v5 + 3);
    v130 = v153;
    outlined init with copy of [String : Set<String>](&v168, &v175);
    outlined init with copy of [String : Set<String>](&v164, &v175);

    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.debug.getter();

    outlined destroy of ReferenceResolutionClientProtocol?(&v168, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);
    outlined destroy of ReferenceResolutionClientProtocol?(&v164, &_sSDySSShySSGGMd, &_sSDySSShySSGGMR);

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v175 = v134;
      *v133 = 136315394;
      v163 = v130;

      v135 = MEMORY[0x1E12A16D0](v55, MEMORY[0x1E69E6158]);
      v137 = v136;

      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, &v175);

      *(v133 + 4) = v138;
      *(v133 + 12) = 2080;
      v139 = Set.description.getter();
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, &v175);

      *(v133 + 14) = v141;
      _os_log_impl(&dword_1DC659000, v131, v132, "[LinkParseExpansion] Skipped %s as the parse explicitly refers to %s", v133, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12A2F50](v134, -1, -1);
      MEMORY[0x1E12A2F50](v133, -1, -1);

      v142 = &v177;
      goto LABEL_87;
    }
  }

  else
  {

    v142 = &v174;
LABEL_87:
  }

  v34 = v176;
  v6 = v145;
LABEL_90:
  (*(v6 + 8))(v146, v147);
  return v34;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGG_G_SSs5NeverOTg504_s14gh9Runtime20J59ExpansionContextV07SessionF0C16debugDescriptionSSvgS2SXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v31 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v31;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v7 = result;
    v8 = 0;
    v24 = v1 + 72;
    v25 = v2;
    v26 = v1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      v27 = v8;
      v28 = *(v1 + 36);
      v11 = (*(v1 + 48) + 16 * v7);
      v29 = *v11;
      v30 = v11[1];
      swift_bridgeObjectRetain_n();
      MEMORY[0x1E12A1580](0x5D2E2E2E5B203ALL, 0xE700000000000000);

      v12 = v4;
      v32 = v4;
      v13 = v1;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v15 + 1;
      v16 = v12 + 16 * v15;
      *(v16 + 32) = v29;
      *(v16 + 40) = v30;
      v9 = 1 << *(v13 + 32);
      if (v7 >= v9)
      {
        goto LABEL_23;
      }

      v5 = v26;
      v17 = *(v26 + 8 * v10);
      if ((v17 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v13;
      v4 = v12;
      if (v28 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v18 = v17 & (-2 << (v7 & 0x3F));
      if (v18)
      {
        v9 = __clz(__rbit64(v18)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v10 << 6;
        v20 = v10 + 1;
        v21 = (v24 + 8 * v10);
        while (v20 < (v9 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = outlined consume of Set<String>.Index._Variant(v7, v28, 0);
            v9 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<String>.Index._Variant(v7, v28, 0);
      }

LABEL_4:
      v8 = v27 + 1;
      v7 = v9;
      if (v27 + 1 == v25)
      {
        return v4;
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
  }

  return result;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D34C0], &lazy protocol witness table cache variable for type DeviceIdiom and conformance DeviceIdiom, MEMORY[0x1E69D34C0]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D2340], &lazy protocol witness table cache variable for type MatchInfo.AliasType and conformance MatchInfo.AliasType, MEMORY[0x1E69D2340]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x1E69D0568], &lazy protocol witness table cache variable for type RequestType and conformance RequestType, MEMORY[0x1E69D0568]);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = type metadata accessor for DeviceClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
  v11 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    outlined init with copy of ReferenceResolutionClientProtocol?(v16, v13, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    outlined init with copy of ReferenceResolutionClientProtocol?(v32, &v13[v19], &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    outlined init with copy of ReferenceResolutionClientProtocol?(v13, v33, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass, MEMORY[0x1E69D3460]);
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities11DeviceClassOSg_ADtMd, &_s13SiriUtilities11DeviceClassOSg_ADtMR);
    goto LABEL_5;
  }

  outlined destroy of ReferenceResolutionClientProtocol?(v13, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  return 1;
}

Swift::Void __swiftcall LinkExpansionContextBuilder.newSessionStarted()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static MessageBusActor.shared;
  v8 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v0;

  v10 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC14SiriKitRuntime20LinkExpansionContextV07SessionJ0C_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v9);
  v11 = *(v0 + 104);
  *(v0 + 104) = v10;
}

Swift::Void __swiftcall LinkExpansionContextBuilder.newTurnStarted()()
{
  v1 = v0;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, kLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DC659000, v3, v4, "[LinkExpansionContext] New turn started", v5, 2u);
    MEMORY[0x1E12A2F50](v5, -1, -1);
  }

  swift_beginAccess();
  v6 = *(v1 + 16);
  *(v1 + 16) = 0;
}

uint64_t LinkExpansionContextBuilder.build(rrCandidates:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for OSSignpostID();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static MessageBusActor.shared;
  v2[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.build(rrCandidates:), v6, 0);
}

{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.build(rrCandidates:), v3, 0);
}

uint64_t LinkExpansionContextBuilder.build(rrCandidates:)()
{
  if (one-time initialization token for executor != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[10];
  v3 = static Log.executor;
  v0[15] = static Log.executor;
  v4 = v3;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v5 = *(v2 + 104);
  v0[16] = v5;
  if (v5)
  {
    v6 = *(MEMORY[0x1E69E86C0] + 4);

    v7 = swift_task_alloc();
    v0[17] = v7;
    v8 = type metadata accessor for LinkExpansionContext.SessionContext();
    *v7 = v0;
    v7[1] = LinkExpansionContextBuilder.build(rrCandidates:);

    return MEMORY[0x1EEE6DA40](v0 + 8, v5, v8);
  }

  else
  {
    v9 = v0[14];

    if (one-time initialization token for kLogger != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, kLogger);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC659000, v11, v12, "[LinkExpansionContext] Trying to build LinkExpansionContext before newSessionStarted was called! Returning empty context.", v13, 2u);
      MEMORY[0x1E12A2F50](v13, -1, -1);
    }

    if (one-time initialization token for emptyContext != -1)
    {
      swift_once();
    }

    v15 = static LinkExpansionContext.emptyContext;
    v14 = unk_1ECCA1100;
    v16 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[11];

    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v18 + 8))(v17, v19);

    v20 = v0[1];

    return v20(v15, v14);
  }
}

{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.build(rrCandidates:), v3, 0);
}

{
  v1 = v0[10];
  v0[18] = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[14];

    v4 = v0[18];
    v5 = v0[15];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9(v4, v2);
  }

  else
  {
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = LinkExpansionContextBuilder.build(rrCandidates:);
    v12 = v0[9];
    v13 = v0[10];

    return LinkExpansionContextBuilder.collectTurnContext(rrCandidates:)(v12);
  }
}

{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[10];

  v4 = *(v3 + 16);
  *(v3 + 16) = v1;
  v5 = v0[20];

  v6 = v0[18];
  v7 = v0[15];
  v9 = v0[12];
  v8 = v0[13];
  v10 = v0[11];
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11(v6, v5);
}

uint64_t *LinkExpansionContext.emptyContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContext.emptyContext;
}

BOOL RRCandidate.isOnScreen.getter()
{
  v59 = type metadata accessor for RRDataSourceMetadataValue();
  v0 = *(v59 - 8);
  v1 = v0[8];
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v50 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v50 - v8;
  v9 = type metadata accessor for RRMetadata();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v50 - v15;
  v16 = type metadata accessor for RREntity();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  v21 = RREntity.metadata.getter();
  (*(v17 + 8))(v20, v16);
  v22 = *(v21 + 16);
  if (v22)
  {
    v25 = *(v10 + 16);
    v24 = v10 + 16;
    v23 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v50 = v21;
    v27 = v21 + v26;
    v28 = *(v24 + 56);
    v62 = (v24 + 16);
    v63 = v28;
    v61 = (v24 + 72);
    v60 = *MEMORY[0x1E69D27E8];
    v52 = (v24 + 80);
    v53 = (v24 - 8);
    v58 = v0;
    v29 = (v0 + 4);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v59;
    v54 = v25;
    v55 = v24;
    do
    {
      v32 = v64;
      v23(v64, v27, v9);
      (*v62)(v13, v32, v9);
      v33 = (*v61)(v13, v9);
      if (v33 == v60)
      {
        (*v52)(v13, v9);
        v34 = *v29;
        v35 = v57;
        (*v29)(v57, v13, v31);
        v36 = v30;
        v37 = v56;
        v34(v56, v35, v31);
        v38 = v37;
        v30 = v36;
        v34(v65, v38, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
        }

        v40 = v30[2];
        v39 = v30[3];
        if (v40 >= v39 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1, v40 + 1, 1, v30);
        }

        v30[2] = v40 + 1;
        v41 = v30 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + v58[9] * v40;
        v31 = v59;
        v34(v41, v65, v59);
        v23 = v54;
      }

      else
      {
        (*v53)(v13, v9);
      }

      v27 += v63;
      --v22;
    }

    while (v22);

    v42 = v30;
    v0 = v58;
  }

  else
  {

    v42 = MEMORY[0x1E69E7CC0];
    v31 = v59;
  }

  v43 = v0[13];
  v44 = v51;
  v43(v51, *MEMORY[0x1E69D2918], v31);
  v45 = specialized Sequence<>.contains(_:)(v44, v42, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);
  v46 = v0[1];
  v46(v44, v31);
  if (v45)
  {
    v43(v44, *MEMORY[0x1E69D28F8], v31);
    v47 = specialized Sequence<>.contains(_:)(v44, v42, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);

    v46(v44, v31);
    return !v47;
  }

  else
  {

    return 0;
  }
}

uint64_t RRCandidate.isCommonApp.getter()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  (*(v1 + 8))(v4, v0);
  v5 = UsoTask.verbString.getter();
  v7 = v6;

  if (one-time initialization token for kUsoCommonAppEntityName != -1)
  {
    swift_once();
  }

  if (v5 == kUsoCommonAppEntityName._countAndFlagsBits && v7 == kUsoCommonAppEntityName._object)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void *LinkExpansionContextBuilder.__allocating_init(metadataProvider:viewActionsProvider:)(uint64_t *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = a1[3];
  v5 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v9);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = specialized LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(v11, v19, v4, v6, v13, v5, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v21;
}

uint64_t LinkActionMetadata.logDescription.getter()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *(v0 + 2);
    v7 = *v0;
    v8 = v7;
    outlined init with copy of String(&v8, &v6);
    MEMORY[0x1E12A1580](60, 0xE100000000000000);
    MEMORY[0x1E12A1580](v2, v1);
    MEMORY[0x1E12A1580](62, 0xE100000000000000);
    return v7;
  }

  else
  {
    v3 = *v0;
    v4 = *(v0 + 1);
  }

  return v3;
}

uint64_t one-time initialization function for kUsoCommonAppEntityName()
{
  result = MEMORY[0x1E129C9D0](0xD000000000000012, 0x80000001DCA84990);
  if (v3)
  {
    v4 = v1;
    v5 = v2;
  }

  else
  {
    v5 = 0xEA00000000007070;
    v4 = 0x415F6E6F6D6D6F63;
  }

  kUsoCommonAppEntityName._countAndFlagsBits = v4;
  kUsoCommonAppEntityName._object = v5;
  return result;
}

uint64_t LinkActionMetadata.linkActionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LinkActionMetadata.entityTypeMetadata.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return v1;
}

void __swiftcall LinkActionMetadata.init(linkActionId:entityTypeMetadata:defaultAction:onScreen:)(SiriKitRuntime::LinkActionMetadata *__return_ptr retstr, Swift::String linkActionId, SiriKitRuntime::EntityTypeMetadata entityTypeMetadata, Swift::Bool defaultAction, Swift::Bool onScreen)
{
  retstr->linkActionId = linkActionId;
  retstr->entityTypeMetadata = entityTypeMetadata;
  retstr->defaultAction = defaultAction;
  retstr->onScreen = onScreen;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LinkActionMetadata(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return specialized static LinkActionMetadata.== infix(_:_:)(&v5, &v7) & 1;
}

uint64_t *LinkExpansionContext.SessionContext.emptySessionContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptySessionContext != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContext.SessionContext.emptySessionContext;
}

uint64_t *LinkExpansionContext.TurnContext.emptyTurnContext.unsafeMutableAddressor()
{
  if (one-time initialization token for emptyTurnContext != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContext.TurnContext.emptyTurnContext;
}

uint64_t static LinkExpansionContext.emptyContext.getter()
{
  if (one-time initialization token for emptyContext != -1)
  {
    swift_once();
  }

  v0 = static LinkExpansionContext.emptyContext;

  return v0;
}

uint64_t LinkExpansionContext.SessionContext.__allocating_init(linkActionMetadata:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t one-time initialization function for emptySessionContext()
{
  type metadata accessor for LinkExpansionContext.SessionContext();
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CC8];
  static LinkExpansionContext.SessionContext.emptySessionContext = result;
  return result;
}

unint64_t LinkExpansionContext.SessionContext.debugDescription.getter()
{
  v1 = *(v0 + 16);

  v3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD4KeysVySSSDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGG_G_SSs5NeverOTg504_s14gh9Runtime20J59ExpansionContextV07SessionF0C16debugDescriptionSSvgS2SXEfU_Tf1cn_n(v2);

  _StringGuts.grow(_:)(42);

  v4 = MEMORY[0x1E12A16D0](v3, MEMORY[0x1E69E6158]);
  v6 = v5;

  MEMORY[0x1E12A1580](v4, v6);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0xD000000000000027;
}

uint64_t LinkExpansionContext.SessionContext.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LinkExpansionContext.SessionContext.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void *LinkExpansionContext.TurnContext.__allocating_init(onScreenActions:onScreenAppBundleIds:onScreenEntityTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *LinkExpansionContext.TurnContext.init(onScreenActions:onScreenAppBundleIds:onScreenEntityTypes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *one-time initialization function for emptyTurnContext()
{
  type metadata accessor for LinkExpansionContext.TurnContext();
  result = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  v2 = MEMORY[0x1E69E7CD0];
  result[2] = MEMORY[0x1E69E7CC8];
  result[3] = v2;
  result[4] = v1;
  static LinkExpansionContext.TurnContext.emptyTurnContext = result;
  return result;
}

uint64_t LinkExpansionContext.TurnContext.debugDescription.getter()
{
  _StringGuts.grow(_:)(58);
  MEMORY[0x1E12A1580](0xD000000000000022, 0x80000001DCA84720);
  v1 = *(v0 + 24);
  v2 = Set.description.getter();
  MEMORY[0x1E12A1580](v2);

  MEMORY[0x1E12A1580](0xD000000000000013, 0x80000001DCA84750);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  v4 = Dictionary.description.getter();
  MEMORY[0x1E12A1580](v4);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0;
}

void *LinkExpansionContext.TurnContext.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t LinkExpansionContext.TurnContext.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t LinkExpansionContext.LinkActionMetadataView.next()()
{
  v1 = 0;
  v2 = 0;
  v3 = v0[2];
  v4 = v0[3];
  if (v4 >= *(v3 + 16))
  {
    return v1;
  }

  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = v3 + 16 * v4;
  v1 = *(v5 + 32);
  v2 = *(v5 + 40);
  v6 = *(v0[1] + 16);
  v7 = *(v6 + 16);

  if (!v7)
  {
LABEL_9:
    if (one-time initialization token for kLogger == -1)
    {
LABEL_10:
      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, kLogger);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25 = v22;
        *v21 = 136315138;
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v2, &v25);

        *(v21 + 4) = v23;
        _os_log_impl(&dword_1DC659000, v19, v20, "Could not find action metadata for %s in sessionContext! The sessionContext must have been mutated. Ending iteration of action metadata early.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x1E12A2F50](v22, -1, -1);
        MEMORY[0x1E12A2F50](v21, -1, -1);
      }

      else
      {
      }

      return 0;
    }

LABEL_20:
    swift_once();
    goto LABEL_10;
  }

  v8 = v0;

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
  if ((v10 & 1) == 0)
  {

    goto LABEL_9;
  }

  v11 = *(*(v6 + 56) + 8 * v9);

  v12 = v0;
  v13 = *(*v0 + 16);
  v14 = *(v13 + 16);

  if (v14)
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v1, v2);
    if (v16)
    {
      v17 = *(*(v13 + 56) + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CD0];
    }

    v12 = v8;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CD0];
  }

  specialized _NativeDictionary.mapValues<A>(_:)(v11, v17);

  swift_bridgeObjectRelease_n();
  v12[3] = v4 + 1;
  return v1;
}

uint64_t closure #1 in LinkExpansionContext.LinkActionMetadataView.next()@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(*result + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v24 = a3;
    v31 = MEMORY[0x1E69E7CC0];
    v25 = *result;
    v26 = *(*result + 16);
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v7 = v25;
    v6 = v26;
    v8 = 0;
    v4 = v31;
    v9 = a2 + 56;
    while (v8 < *(v7 + 16))
    {
      v10 = v25 + 32 + 40 * v8;
      v11 = *v10;
      v12 = *(v10 + 8);
      v27 = *(v10 + 33);
      v28 = *(v10 + 32);
      v29 = *(v10 + 16);
      v30 = *(v10 + 24);
      if (*(a2 + 16))
      {
        v13 = *(a2 + 40);
        Hasher.init(_seed:)();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        String.hash(into:)();
        v14 = Hasher._finalize()();
        v15 = -1 << *(a2 + 32);
        v16 = v14 & ~v15;
        if ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(a2 + 48) + 16 * v16);
            v19 = *v18 == v11 && v18[1] == v12;
            if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v20 = 1;
        }

        else
        {
LABEL_13:

          v20 = 0;
        }

        v7 = v25;
        v6 = v26;
      }

      else
      {

        v20 = 0;
      }

      v22 = *(v31 + 16);
      v21 = *(v31 + 24);
      if (v22 >= v21 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v7 = v25;
        v6 = v26;
      }

      ++v8;
      *(v31 + 16) = v22 + 1;
      v23 = v31 + 40 * v22;
      *(v23 + 32) = v11;
      *(v23 + 40) = v12;
      *(v23 + 48) = v29;
      *(v23 + 56) = v30;
      *(v23 + 64) = v28;
      *(v23 + 65) = v27;
      *(v23 + 66) = v20;
      v9 = a2 + 56;
      if (v8 == v6)
      {
        a3 = v24;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:
    *a3 = v4;
  }

  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance LinkExpansionContext.LinkActionMetadataView@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = v3;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance LinkExpansionContext.LinkActionMetadataView()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = specialized _copySequenceToContiguousArray<A>(_:)();

  return v5;
}

void *specialized Sequence._copyContents(initializing:)(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = result;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!a2)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_14:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = a6;
    v7[3] = a7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = LinkExpansionContext.LinkActionMetadataView.next()();
      if (!v12)
      {
        a4 = v15;
        a5 = v16;
        v8 = v10 - 1;
        goto LABEL_13;
      }

      *v9 = v11;
      v9[1] = v12;
      v9[2] = v13;
      if (v8 == v10)
      {
        break;
      }

      v9 += 3;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a4 = v15;
    a5 = v16;
LABEL_13:
    a6 = v17;
    a7 = v18;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for IteratorProtocol.next() in conformance LinkExpansionContext.LinkActionMetadataView@<X0>(uint64_t *a1@<X8>)
{
  result = LinkExpansionContext.LinkActionMetadataView.next()();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t LinkExpansionContext.debugDescription.getter()
{
  _StringGuts.grow(_:)(55);
  MEMORY[0x1E12A1580](0xD000000000000021, 0x80000001DCA84770);
  type metadata accessor for LinkExpansionContext.TurnContext();

  v0 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v0);

  MEMORY[0x1E12A1580](0xD000000000000011, 0x80000001DCA847A0);
  type metadata accessor for LinkExpansionContext.SessionContext();

  v1 = String.init<A>(reflecting:)();
  MEMORY[0x1E12A1580](v1);

  MEMORY[0x1E12A1580](41, 0xE100000000000000);
  return 0;
}

void *LinkExpansionContext.actionMetadata.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v4 + 16), 0);
  v8 = specialized Sequence._copySequenceContents(initializing:)(&v9, v6 + 4, v5, v4);

  outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  if (v8 != v5)
  {
    __break(1u);
LABEL_4:

    v6 = MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMd, &_ss12_SequenceBoxCy14SiriKitRuntime20LinkExpansionContextV0F18ActionMetadataView33_96F732C182F07CCE7D79D4AD573D548BLLVGMR);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a1;
  result[4] = v6;
  result[5] = 0;
  return result;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LinkExpansionContext()
{
  v1 = *v0;
  v2 = v0[1];
  return LinkExpansionContext.debugDescription.getter();
}

uint64_t one-time initialization function for appsDenyList()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for appsDenyList);
  swift_arrayDestroy();
  v1 = specialized Set.union<A>(_:)(&outlined read-only object #1 of one-time initialization function for appsDenyList, v0);
  result = swift_arrayDestroy();
  static LinkExpansionContextBuilder.appsDenyList = v1;
  return result;
}

uint64_t *LinkExpansionContextBuilder.appsDenyList.unsafeMutableAddressor()
{
  if (one-time initialization token for appsDenyList != -1)
  {
    swift_once();
  }

  return &static LinkExpansionContextBuilder.appsDenyList;
}

uint64_t static LinkExpansionContextBuilder.appsDenyList.getter()
{
  if (one-time initialization token for appsDenyList != -1)
  {
    swift_once();
  }
}

uint64_t LinkExpansionContextBuilder.linkExpansionTurnContext.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t LinkExpansionContextBuilder.linkExpansionTurnContext.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a2[3];
  v15 = a2[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v17 = *(*(v14 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = specialized LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(v12, v20, v3, v7, v14, v6, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t closure #1 in LinkExpansionContextBuilder.newSessionStarted()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a1;
  v4[7] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v5, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.newSessionStarted()()
{
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, kLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[LinkExpansionContext] Collecting SessionContext", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[7];

  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  v8 = *(v7 + 8);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = closure #1 in LinkExpansionContextBuilder.newSessionStarted();

  return v12(v6, v7);
}

{
  v16 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  v4 = specialized LinkExpansionContextBuilder.extractActionMetadata(allLinkActionsMetadata:)(v1);

  type metadata accessor for LinkExpansionContext.SessionContext();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v0 + 40) = v5;

    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1DC659000, v6, v7, "[LinkExpansionContext] SessionContext: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E12A2F50](v9, -1, -1);
    MEMORY[0x1E12A2F50](v8, -1, -1);
  }

  **(v0 + 48) = v5;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t closure #1 in LinkExpansionContextBuilder.newSessionStarted()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.newSessionStarted(), v3, 0);
}

uint64_t partial apply for closure #1 in LinkExpansionContextBuilder.newSessionStarted()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in LinkExpansionContextBuilder.newSessionStarted()(a1, v4, v5, v6);
}

uint64_t LinkExpansionContextBuilder.collectTurnContext(rrCandidates:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.collectTurnContext(rrCandidates:), v3, 0);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.collectTurnContext(rrCandidates:), v3, 0);
}

uint64_t LinkExpansionContextBuilder.collectTurnContext(rrCandidates:)()
{
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = __swift_project_value_buffer(v1, kLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DC659000, v2, v3, "[LinkExpansionContext] Collecting TurnContext", v4, 2u);
    MEMORY[0x1E12A2F50](v4, -1, -1);
  }

  v5 = v0[6];

  v6 = specialized LinkExpansionContextBuilder.extractOnScreenBundleIDsFromRRCandidates(_:)(v5);
  v0[10] = v6;
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = LinkExpansionContextBuilder.collectTurnContext(rrCandidates:);
  v8 = v0[7];

  return LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(v6);
}

{
  v18 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];

  v6 = specialized LinkExpansionContextBuilder.extractOnScreenEntityTypesFromRRCandidates(_:)(v5);
  type metadata accessor for LinkExpansionContext.TurnContext();
  v7 = swift_allocObject();
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v6;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v0[5] = v7;

    v12 = String.init<A>(reflecting:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DC659000, v8, v9, "[LinkExpansionContext] TurnContext: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E12A2F50](v11, -1, -1);
    MEMORY[0x1E12A2F50](v10, -1, -1);
  }

  v15 = v0[1];

  return v15(v7);
}

uint64_t LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static MessageBusActor.shared;
  v2[8] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v3, 0);
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v3, 0);
}

uint64_t LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)()
{
  v1 = *(v0 + 56);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);

  return v8(v2, v3);
}

{
  v1 = v0[6];
  v2 = v0[7];
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v0[10]);

  v4 = specialized _NativeSet.intersection(_:)(v1, v3);
  v0[11] = v4;
  v0[5] = MEMORY[0x1E69E7CC8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ShySSGtMd, &_sSS_ShySSGtMR);
  v6 = static MessageBusActor.shared;
  v0[12] = static MessageBusActor.shared;
  v7 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v8 = swift_task_alloc();
  v0[13] = v8;
  v8[2] = v4;
  v8[3] = v2;
  v8[4] = v0 + 5;
  v9 = *(MEMORY[0x1E69E87D8] + 4);

  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v10, v5, v11, v6, v7, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v8, v5);
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 64);
  v7 = *v0;

  return MEMORY[0x1EEE6DFA0](LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v5, 0);
}

{
  v1 = v0[8];

  v2 = v0[5];
  v3 = v0[1];

  return v3(v2);
}

uint64_t RRCandidate.isAppEntityType.getter()
{
  v0 = type metadata accessor for RREntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v8 = *(v1 + 8);
  v8(v7, v0);
  v9 = UsoTask.verbString.getter();
  v11 = v10;

  RRCandidate.entity.getter();
  RREntity.usoEntity.getter();
  v8(v4, v0);
  v12 = UsoEntity.attributes.getter();

  if (!*(v12 + 16))
  {
    goto LABEL_10;
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(1701869940, 0xE400000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    goto LABEL_11;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v15 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12A1FE0](0, v15);
LABEL_8:

    v18 = dispatch thunk of UsoValue.getAsEntity()();

    if (v18)
    {
      v19 = UsoTask.verbString.getter();
      v21 = v20;

      goto LABEL_12;
    }

LABEL_11:
    v19 = 0;
    v21 = 0;
LABEL_12:
    if (v9 == 0xD000000000000010 && 0x80000001DCA847C0 == v11)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    if (v21)
    {
      if (v19 == 0xD000000000000014 && v21 == 0x80000001DCA847E0)
      {

        v24 = 1;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v24 & 1;
    }

LABEL_23:
    v24 = 0;
    return v24 & 1;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySS_ShySSGt_GMd, &_sScG8IteratorVySS_ShySSGt_GMR);
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = static MessageBusActor.shared;
  v5[25] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v10, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)()
{
  v1 = *(v0 + 136);
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 136) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v45 = *(v0 + 136);

  v13 = 0;
  v43 = v8;
  v44 = v3;
  while (v7)
  {
LABEL_10:
    v17 = *(v0 + 160);
    v16 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = (*(v45 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v7)))));
    v20 = v19[1];
    v46 = *v19;
    v21 = type metadata accessor for TaskPriority();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v16, 1, 1, v21);
    v23 = swift_allocObject();
    v23[2] = 0;
    v47 = v23 + 2;
    v23[3] = 0;
    v23[4] = v46;
    v23[5] = v20;
    v23[6] = v18;
    outlined init with copy of ReferenceResolutionClientProtocol?(v16, v17, &_sScPSgMd, &_sScPSgMR);
    LODWORD(v16) = (*(v22 + 48))(v17, 1, v21);

    v24 = *(v0 + 160);
    if (v16 == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(*(v0 + 160), &_sScPSgMd, &_sScPSgMR);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v22 + 8))(v24, v21);
    }

    if (*v47)
    {
      v25 = v23[3];
      v26 = *v47;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v27 = dispatch thunk of Actor.unownedExecutor.getter();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = **(v0 + 128);
    v31 = swift_allocObject();
    *(v31 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
    *(v31 + 24) = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ShySSGtMd, &_sSS_ShySSGtMR);
    v32 = v29 | v27;
    if (v29 | v27)
    {
      v32 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v27;
      *(v0 + 40) = v29;
    }

    v14 = *(v0 + 168);
    v7 &= v7 - 1;
    *(v0 + 72) = 1;
    *(v0 + 80) = v32;
    *(v0 + 88) = v30;
    swift_task_create();

    v9 = outlined destroy of ReferenceResolutionClientProtocol?(v14, &_sScPSgMd, &_sScPSgMR);
    v8 = v43;
    v3 = v44;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8A8](v9, v10, v11, v12);
    }

    if (v15 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v15);
    ++v13;
    if (v7)
    {
      v13 = v15;
      goto LABEL_10;
    }
  }

  v33 = *(v0 + 192);
  v35 = *(v0 + 128);
  v34 = *(v0 + 136);

  v36 = *v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_ShySSGtMd, &_sSS_ShySSGtMR);
  TaskGroup.makeAsyncIterator()();
  v37 = static MessageBusActor.shared;
  *(v0 + 208) = static MessageBusActor.shared;
  v38 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
  v39 = *(MEMORY[0x1E69E8588] + 4);

  v40 = swift_task_alloc();
  *(v0 + 216) = v40;
  *v40 = v0;
  v40[1] = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  v41 = *(v0 + 192);
  v12 = *(v0 + 176);
  v9 = v0 + 96;
  v10 = v37;
  v11 = v38;

  return MEMORY[0x1EEE6D8A8](v9, v10, v11, v12);
}

{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v3, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  if (v1)
  {
    v3 = v0[14];
    v4 = v0[19];
    v5 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v4;
    v0[15] = *v4;
    *v4 = 0x8000000000000000;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
    v12 = *(v7 + 16);
    v13 = (v9 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v4) = v9;
      if (*(v7 + 24) < v15)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v0[15];
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v1);
        if ((v4 & 1) != (v9 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_12:
        if (v4)
        {
LABEL_13:
          v22 = v8;

          v23 = v0[15];
          v24 = v23[7];
          v25 = *(v24 + 8 * v22);
          *(v24 + 8 * v22) = v3;

          goto LABEL_18;
        }

LABEL_16:
        v23 = v0[15];
        v23[(v8 >> 6) + 8] |= 1 << v8;
        v27 = (v23[6] + 16 * v8);
        *v27 = v2;
        v27[1] = v1;
        *(v23[7] + 8 * v8) = v3;
        v28 = v23[2];
        v14 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v14)
        {
          __break(1u);
          return MEMORY[0x1EEE6D8A8](v8, v9, v10, v11);
        }

        v23[2] = v29;
LABEL_18:
        v30 = v0[19];
        v31 = *v30;
        *v30 = v23;

        v32 = static MessageBusActor.shared;
        v0[26] = static MessageBusActor.shared;
        v33 = _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type MessageBusActor and conformance MessageBusActor, type metadata accessor for MessageBusActor);
        v34 = *(MEMORY[0x1E69E8588] + 4);

        v35 = swift_task_alloc();
        v0[27] = v35;
        *v35 = v0;
        v35[1] = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
        v36 = v0[24];
        v11 = v0[22];
        v8 = (v0 + 12);
        v9 = v32;
        v10 = v33;

        return MEMORY[0x1EEE6D8A8](v8, v9, v10, v11);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    v26 = v8;
    specialized _NativeDictionary.copy()();
    v8 = v26;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v18 = v0[25];
  v20 = v0[20];
  v19 = v0[21];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v21 = v0[1];

  return v21();
}

{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  v8 = v0[7];
  v7 = v0[8];

  return v10(v8, v7, v2, v3);
}

{
  v44 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  if (v1 >> 62)
  {
    if (*(v0 + 88) < 0)
    {
      v42 = *(v0 + 88);
    }

    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v43 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
LABEL_29:
      swift_once();
      goto LABEL_18;
    }

    v4 = v43;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1E12A1FE0](v5, *(v0 + 88));
        v6 = [swift_unknownObjectRetain() actionIdentifier];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        swift_unknownObjectRelease_n();
        v43 = v4;
        v11 = *(v4 + 16);
        v10 = *(v4 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v4 = v43;
        }

        ++v5;
        *(v4 + 16) = v11 + 1;
        v12 = v4 + 16 * v11;
        *(v12 + 32) = v7;
        *(v12 + 40) = v9;
      }

      while (v3 != v5);
    }

    else
    {
      v13 = (*(v0 + 88) + 32);
      v14 = v3;
      do
      {
        v15 = *v13;
        v16 = [v15 actionIdentifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v43 = v4;
        v21 = *(v4 + 16);
        v20 = *(v4 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v4 = v43;
        }

        *(v4 + 16) = v21 + 1;
        v22 = v4 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v13;
        --v14;
      }

      while (v14);
    }
  }

  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);

  if (*(v1 + 16) == v3)
  {
    v23 = *(v0 + 88);
    goto LABEL_21;
  }

  if (one-time initialization token for kLogger != -1)
  {
    goto LABEL_29;
  }

LABEL_18:
  v24 = *(v0 + 88);
  v25 = *(v0 + 64);
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, kLogger);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 88);
  if (v29)
  {
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v43 = v34;
    *v33 = 136315394;
    *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v43);
    *(v33 + 12) = 2080;
    v35 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNViewAction, 0x1E69AD080);
    v36 = MEMORY[0x1E12A16D0](v30, v35);
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v43);

    *(v33 + 14) = v39;
    _os_log_impl(&dword_1DC659000, v27, v28, "Multiple viewActions for a given action identifier on screen for '%s'\nDisambiguting to a viewAction instance is not supported, the action will be routed to any instance matching the action identifier.\nViewActions: %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v34, -1, -1);
    MEMORY[0x1E12A2F50](v33, -1, -1);

    goto LABEL_22;
  }

LABEL_21:

LABEL_22:
  **(v0 + 40) = v1;
  v40 = *(v0 + 8);

  return v40();
}

{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), 0, 0);
}

uint64_t closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)()
{
  v1 = v0[12];
  v2 = v0[10];
  *v2 = v0[11];
  v2[1] = v1;
  v3 = one-time initialization token for shared;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static MessageBusActor.shared;
  v0[14] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v4, 0);
}

{
  v1 = v0[12];
  v2 = v0[11];
  outlined init with copy of ReferenceResolutionClientProtocol(v0[13] + 64, (v0 + 2));
  v3 = swift_task_alloc();
  v0[15] = v3;
  v3[2] = v0 + 2;
  v3[3] = v2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);

  return specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:)(0xD00000000000001CLL, 0x80000001DCA849B0, &async function pointer to partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:));
}

{
  v1 = *(v0 + 112);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), 0, 0);
}

{
  v1 = *(v0 + 136);
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(*(v0 + 80) + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v4, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static MessageBusActor.shared;
  v4[9] = static MessageBusActor.shared;

  return MEMORY[0x1EEE6DFA0](closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:), v5, 0);
}

uint64_t closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v7 = *(v3 + 72);
  if (v1)
  {
    v8 = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  }

  else
  {
    v8 = closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:);
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void *LinkExpansionContextBuilder.deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v2 = v0[13];

  return v0;
}

uint64_t LinkExpansionContextBuilder.__deallocating_deinit()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  v2 = v0[13];

  return swift_deallocClassInstance();
}

uint64_t specialized _copySequenceToContiguousArray<A>(_:)()
{

  result = LinkExpansionContext.LinkActionMetadataView.next()();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0;
  if (v1)
  {
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      if (!v4)
      {
        v6 = v3[3];
        if (((v6 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v7 = v2;
        v8 = v1;
        v9 = result;
        v10 = v6 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGtGMR);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size(v12) - 32) / 24;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          if (v12 != v3 || v14 >= &v3[3 * v15 + 4])
          {
            memmove(v12 + 4, v3 + 4, 24 * v15);
          }

          v3[2] = 0;
        }

        v5 = (v14 + 24 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v12;
        result = v9;
        v1 = v8;
        v2 = v7;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        break;
      }

      *v5 = result;
      v5[1] = v1;
      v5[2] = v2;
      v5 += 3;
      result = LinkExpansionContext.LinkActionMetadataView.next()();
      if (!v1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:

  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v12, v6, a2, a1);

    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.intersection(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v27 = Hasher._finalize()();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return specialized _NativeSet.extractSubset(using:count:)(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v41 = Hasher._finalize()();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *specialized LinkExpansionContextBuilder.init(metadataProvider:viewActionsProvider:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a3[6] = a4;
  a3[7] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  a3[11] = a5;
  a3[12] = a7;
  v14 = __swift_allocate_boxed_opaque_existential_0(a3 + 8);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  a3[2] = 0;
  a3[13] = 0;
  return a3;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 48) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5TQ0_;

  return v6(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *v0;

  v5 = *(v1 + 24);
  *v3 = *(v1 + 16);
  *(v3 + 8) = v5;
  v6 = *(v4 + 8);

  return v6();
}

uint64_t specialized static LinkActionMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v9 = *(a1 + 16) == *(a2 + 16) && v5 == v7;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v7)
  {
    goto LABEL_17;
  }

  if (((v6 ^ v8) & 1) == 0 && ((*(a1 + 33) ^ *(a2 + 33)) & 1) == 0)
  {
    v10 = *(a1 + 34) ^ *(a2 + 34) ^ 1;
    return v10 & 1;
  }

LABEL_17:
  v10 = 0;
  return v10 & 1;
}

uint64_t destroy for LinkActionMetadata(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

uint64_t initializeWithCopy for LinkActionMetadata(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);

  return a1;
}

uint64_t assignWithCopy for LinkActionMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 __swift_memcpy35_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for LinkActionMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = *(a2 + 24);
  v7 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v6;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinkActionMetadata(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
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

uint64_t storeEnumTagSinglePayload for LinkActionMetadata(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for LinkExpansionContext(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];
}

void *initializeBufferWithCopyOfBuffer for LinkExpansionContext(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for LinkExpansionContext(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;

  return a1;
}

uint64_t *assignWithTake for LinkExpansionContext(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  return a1;
}

uint64_t destroy for LinkExpansionContext.LinkActionMetadataView(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];
}

void *initializeWithCopy for LinkExpansionContext.LinkActionMetadataView(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

uint64_t *assignWithCopy for LinkExpansionContext.LinkActionMetadataView(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  v6 = a1[2];
  a1[2] = a2[2];

  a1[3] = a2[3];
  return a1;
}

uint64_t *assignWithTake for LinkExpansionContext.LinkActionMetadataView(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  a1[3] = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for LinkExpansionContext.LinkActionMetadataView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LinkExpansionContext.LinkActionMetadataView(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView()
{
  result = lazy protocol witness table cache variable for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView;
  if (!lazy protocol witness table cache variable for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkExpansionContext.LinkActionMetadataView and conformance LinkExpansionContext.LinkActionMetadataView);
  }

  return result;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v5 = result;
  v6 = 0;
  v24 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v23 = result + 64;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(*(v24 + 48) + 8 * v17);
      v27 = *(*(v24 + 56) + 8 * v17);
      v19 = v18;

      closure #1 in LinkExpansionContext.LinkActionMetadataView.next()(&v27, a2, &v26);

      if (v2)
      {
        break;
      }

      *(v23 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(v5[6] + 8 * v17) = v19;
      *(v5[7] + 8 * v17) = v26;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v5[2] = v22;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v5;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized LinkExpansionContextBuilder.extractOnScreenBundleIDsFromRRCandidates(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v145 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v111 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v111 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v111 - v11;
  v148 = type metadata accessor for RRMetadata();
  v13 = *(v148 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v148);
  v16 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v111 - v18;
  v140 = type metadata accessor for RREntity();
  v20 = *(v140 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v133 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v121 = &v111 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v111 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v131 = &v111 - v28;
  v139 = type metadata accessor for RRCandidate();
  v29 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v132 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v116 = &v111 - v32;
  v36.n128_f64[0] = MEMORY[0x1EEE9AC00](v33);
  v37 = &v111 - v34;
  v130 = *(a1 + 16);
  v112 = v35;
  if (v130)
  {
    v147 = v16;
    v38 = 0;
    v40 = *(v35 + 16);
    v39 = v35 + 16;
    v127 = v40;
    v113 = (*(v39 + 64) + 32) & ~*(v39 + 64);
    v126 = a1 + v113;
    v135 = *(v39 + 56);
    v138 = (v20 + 8);
    v125 = (v39 - 8);
    v153 = (v13 + 32);
    v154 = v13 + 16;
    v152 = (v13 + 88);
    v151 = *MEMORY[0x1E69D27E8];
    v142 = (v13 + 8);
    v141 = (v13 + 96);
    v150 = (v3 + 32);
    v120 = *MEMORY[0x1E69D2918];
    v119 = (v3 + 104);
    v143 = v3;
    v118 = (v3 + 8);
    v115 = *MEMORY[0x1E69D28F8];
    v128 = v39;
    v114 = (v39 + 16);
    v117 = MEMORY[0x1E69E7CC0];
    v149 = v2;
    v134 = v12;
    v129 = v20;
    v123 = v13;
    v136 = &v111 - v34;
    while (1)
    {
      v137 = v38;
      v127(v37, v126 + v135 * v38, v139, v36);
      if (one-time initialization token for appsDenyList != -1)
      {
        swift_once();
      }

      v41 = static LinkExpansionContextBuilder.appsDenyList;
      v42 = v131;
      RRCandidate.entity.getter();
      v43 = RREntity.id.getter();
      v45 = v44;
      v46 = *v138;
      (*v138)(v42, v140);
      if (*(v41 + 16) && (v47 = *(v41 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v48 = Hasher._finalize()(), v49 = -1 << *(v41 + 32), v50 = v48 & ~v49, ((*(v41 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
      {
        v51 = ~v49;
        while (1)
        {
          v52 = (*(v41 + 48) + 16 * v50);
          v53 = *v52 == v43 && v52[1] == v45;
          if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v50 = (v50 + 1) & v51;
          if (((*(v41 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        v37 = v136;
      }

      else
      {
LABEL_16:

        v54 = v124;
        v37 = v136;
        RRCandidate.entity.getter();
        RREntity.usoEntity.getter();
        v46(v54, v140);
        v55 = UsoTask.verbString.getter();
        v57 = v56;

        if (one-time initialization token for kUsoCommonAppEntityName != -1)
        {
          swift_once();
        }

        v58 = v134;
        v59 = v123;
        if (v55 == kUsoCommonAppEntityName._countAndFlagsBits && v57 == kUsoCommonAppEntityName._object)
        {

LABEL_22:
          v61 = v121;
          RRCandidate.entity.getter();
          v62 = RREntity.metadata.getter();
          v46(v61, v140);
          v63 = *(v62 + 16);
          if (v63)
          {
            v64 = (*(v59 + 80) + 32) & ~*(v59 + 80);
            v122 = v62;
            v65 = v62 + v64;
            v66 = *(v59 + 72);
            v67 = *(v59 + 16);
            v68 = MEMORY[0x1E69E7CC0];
            v69 = v148;
            v70 = v149;
            v71 = v147;
            v146 = v67;
            v67(v19, v65, v148);
            while (1)
            {
              (*v153)(v71, v19, v69);
              v72 = (*v152)(v71, v69);
              if (v72 == v151)
              {
                v73 = v19;
                (*v141)(v71, v69);
                v74 = *v150;
                v75 = v145;
                (*v150)(v145, v71, v70);
                v76 = v70;
                v77 = v144;
                v74(v144, v75, v76);
                v74(v155, v77, v76);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v68[2] + 1, 1, v68);
                }

                v79 = v68[2];
                v78 = v68[3];
                v80 = v143;
                v71 = v147;
                if (v79 >= v78 >> 1)
                {
                  v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v78 > 1, v79 + 1, 1, v68);
                  v80 = v143;
                  v68 = v82;
                }

                v68[2] = v79 + 1;
                v81 = v68 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79;
                v70 = v149;
                v74(v81, v155, v149);
                v19 = v73;
                v69 = v148;
                v67 = v146;
              }

              else
              {
                (*v142)(v71, v69);
              }

              v65 += v66;
              if (!--v63)
              {
                break;
              }

              v67(v19, v65, v69);
            }

            v58 = v134;
          }

          else
          {

            v68 = MEMORY[0x1E69E7CC0];
          }

          v83 = *v119;
          v84 = v149;
          (*v119)(v58, v120, v149);
          v85 = specialized Sequence<>.contains(_:)(v58, v68, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);
          v86 = *v118;
          (*v118)(v58, v84);
          if (v85)
          {
            v83(v58, v115, v84);
            v87 = specialized Sequence<>.contains(_:)(v58, v68, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);

            v86(v58, v84);
            if (v87)
            {
              v37 = v136;
              (*v125)(v136, v139);
            }

            else
            {
              v88 = *v114;
              v37 = v136;
              (*v114)(v116, v136, v139);
              v89 = v117;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v157 = v89;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 16) + 1, 1);
                v89 = v157;
              }

              v92 = *(v89 + 16);
              v91 = *(v89 + 24);
              if (v92 >= v91 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1);
                v89 = v157;
              }

              *(v89 + 16) = v92 + 1;
              v117 = v89;
              v88((v89 + v113 + v92 * v135), v116, v139);
            }
          }

          else
          {
            v37 = v136;
            (*v125)(v136, v139);
          }

          goto LABEL_4;
        }

        v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v60)
        {
          goto LABEL_22;
        }
      }

      (*v125)(v37, v139);
LABEL_4:
      v20 = v129;
      v38 = v137 + 1;
      if (v137 + 1 == v130)
      {
        goto LABEL_46;
      }
    }
  }

  v117 = MEMORY[0x1E69E7CC0];
LABEL_46:
  v93 = *(v117 + 16);
  if (v93)
  {
    v156 = MEMORY[0x1E69E7CC0];
    v94 = v117;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v93, 0);
    v95 = v156;
    v96 = v112 + 16;
    v97 = *(v112 + 16);
    v98 = v94 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
    v154 = *(v112 + 72);
    v155 = v97;
    v152 = (v112 + 8);
    v153 = (v20 + 8);
    v99 = v132;
    do
    {
      v100 = v139;
      v101 = v96;
      (v155)(v99, v98, v139);
      v102 = v133;
      RRCandidate.entity.getter();
      v103 = RREntity.id.getter();
      v105 = v104;
      (*v153)(v102, v140);
      (*v152)(v99, v100);
      v156 = v95;
      v107 = *(v95 + 16);
      v106 = *(v95 + 24);
      if (v107 >= v106 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v106 > 1), v107 + 1, 1);
        v95 = v156;
      }

      *(v95 + 16) = v107 + 1;
      v108 = v95 + 16 * v107;
      *(v108 + 32) = v103;
      *(v108 + 40) = v105;
      v98 += v154;
      --v93;
      v96 = v101;
    }

    while (v93);
  }

  else
  {

    v95 = MEMORY[0x1E69E7CC0];
  }

  v109 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v95);

  return v109;
}

uint64_t _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say32SiriReferenceResolutionDataModel11RRCandidateVGTt1g504_s14d141KitRuntime27LinkExpansionContextBuilderC42extractOnScreenEntityTypesFromRRCandidates33_96F732C182F07CCE7D79D4AD573D548BLLySDySSShySSGGSay0A28efg7Model11I58VGFSSAJcfu_32c81b42e3f50092687f7f7eb8a52d50f3AJSSTf3nnpk_nTf1nc_nTf4g_n(uint64_t a1)
{
  v2 = type metadata accessor for RREntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for RRCandidate();
  v7 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v48 - v11;
  v12 = MEMORY[0x1E69E7CC8];
  v63 = MEMORY[0x1E69E7CC8];
  v13 = *(a1 + 16);
  if (!v13)
  {
    return v12;
  }

  v15 = *(v10 + 16);
  v14 = v10 + 16;
  v50 = *(v14 + 64);
  v16 = *(v14 + 56);
  v55 = (v50 + 32) & ~v50;
  v17 = a1 + v55;
  v56 = (v3 + 8);
  v57 = v15;
  v59 = (v14 + 16);
  v49 = xmmword_1DCA66060;
  v51 = v6;
  v52 = v2;
  v53 = v16;
  v54 = v14;
  while (1)
  {
    v60 = v13;
    v57(v61, v17, v62);
    RRCandidate.entity.getter();
    v21 = RREntity.appBundleId.getter();
    v23 = v22;
    v24 = v6;
    (*v56)(v6, v2);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v23);
    v27 = v12[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v12[3] < v29)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, 1);
      v12 = v63;
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_19;
      }

      v26 = v31;
    }

    if (v30)
    {

      v33 = v12[7];
      v34 = *v59;
      (*v59)(v58, v61, v62);
      v35 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        *(v33 + 8 * v26) = v35;
      }

      v37 = v60;
      v39 = v35[2];
      v38 = v35[3];
      if (v39 >= v38 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v35);
        *(v33 + 8 * v26) = v35;
      }

      v2 = v52;
      v18 = v53;
      v35[2] = v39 + 1;
      v19 = v35 + v55 + v39 * v18;
      v20 = v18;
      v34(v19, v58, v62);
      v6 = v51;
    }

    else
    {
      v40 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR);
      v41 = v55;
      v42 = swift_allocObject();
      *(v42 + 16) = v49;
      (*v59)((v42 + v41), v61, v62);
      v12[(v26 >> 6) + 8] |= 1 << v26;
      v43 = (v12[6] + 16 * v26);
      *v43 = v21;
      v43[1] = v23;
      *(v12[7] + 8 * v26) = v42;
      v44 = v12[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_18;
      }

      v12[2] = v46;
      v2 = v40;
      v20 = v53;
      v6 = v24;
      v37 = v60;
    }

    v17 += v20;
    v13 = v37 - 1;
    if (!v13)
    {
      return v12;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized LinkExpansionContextBuilder.extractOnScreenEntityTypesFromRRCandidates(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RRDataSourceMetadataValue();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v119 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v112 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v143 = &v112 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v112 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v112 - v13;
  v15 = type metadata accessor for RRMetadata();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v153 = &v112 - v20;
  v138 = type metadata accessor for RREntity();
  v21 = *(v138 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v130 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v112 - v25;
  v139 = type metadata accessor for RRCandidate();
  v26 = *(*(v139 - 8) + 64);
  MEMORY[0x1EEE9AC00](v139);
  v115 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v136 = &v112 - v29;
  v32.n128_f64[0] = MEMORY[0x1EEE9AC00](v30);
  v134 = &v112 - v33;
  v34 = *(a1 + 16);
  v116 = v31;
  v129 = v34;
  v112 = v21;
  if (v34)
  {
    v35 = 0;
    v37 = *(v31 + 16);
    v36 = v31 + 16;
    v125 = v37;
    v113 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v124 = a1 + v113;
    v131 = *(v36 + 56);
    v123 = (v21 + 8);
    v151 = v16 + 32;
    v152 = v16 + 16;
    v150 = (v16 + 88);
    LODWORD(v149) = *MEMORY[0x1E69D27E8];
    v140 = (v16 + 96);
    v141 = (v16 + 8);
    v148 = (v3 + 32);
    v122 = *MEMORY[0x1E69D2918];
    v133 = (v3 + 104);
    v121 = (v3 + 8);
    v118 = *MEMORY[0x1E69D28F8];
    v114 = (v36 + 16);
    v126 = v36;
    v120 = (v36 - 8);
    v117 = MEMORY[0x1E69E7CC0];
    v142 = v2;
    v127 = v16;
    v147 = v15;
    v145 = v3;
    v128 = v14;
    v37(v134, a1 + v113, v139, v32);
    while (1)
    {
      v39 = v130;
      RRCandidate.entity.getter();
      v40 = RREntity.metadata.getter();
      (*v123)(v39, v138);
      v41 = *(v40 + 16);
      if (v41)
      {
        v135 = v35;
        v42 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v132 = v40;
        v43 = v40 + v42;
        v44 = *(v16 + 72);
        v45 = *(v16 + 16);
        v46 = MEMORY[0x1E69E7CC0];
        v47 = v146;
        do
        {
          v48 = v153;
          v45(v153, v43, v15);
          (*v151)(v47, v48, v15);
          v49 = (*v150)(v47, v15);
          if (v49 == v149)
          {
            (*v140)(v47, v15);
            v50 = *v148;
            v51 = v144;
            (*v148)(v144, v47, v2);
            v52 = v143;
            v50(v143, v51, v2);
            v50(v154, v52, v2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
            }

            v54 = *(v46 + 2);
            v53 = *(v46 + 3);
            v47 = v146;
            if (v54 >= v53 >> 1)
            {
              v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v53 > 1, v54 + 1, 1, v46);
            }

            *(v46 + 2) = v54 + 1;
            v2 = v142;
            v50(&v46[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v54], v154, v142);
            v15 = v147;
          }

          else
          {
            (*v141)(v47, v15);
          }

          v43 += v44;
          --v41;
        }

        while (v41);

        v3 = v145;
        v35 = v135;
      }

      else
      {

        v46 = MEMORY[0x1E69E7CC0];
      }

      v135 = v35 + 1;
      v55 = *v133;
      v56 = v128;
      (*v133)(v128, v122, v2);
      v57 = 0;
      v58 = *(v46 + 2);
      do
      {
        if (v58 == v57)
        {
          (*v121)(v56, v2);

LABEL_4:
          (*v120)(v134, v139);
          v15 = v147;
          goto LABEL_5;
        }

        v59 = v57 + 1;
        v60 = &v46[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v57];
        _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        v57 = v59;
      }

      while ((v61 & 1) == 0);
      v62 = *v121;
      (*v121)(v56, v2);
      v63 = v119;
      v55(v119, v118, v2);
      v64 = specialized Sequence<>.contains(_:)(v63, v46, MEMORY[0x1E69D2920], &lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x1E69D2920]);

      v62(v63, v2);
      if (v64 || (RRCandidate.isAppEntityType.getter() & 1) == 0)
      {
        goto LABEL_4;
      }

      v65 = *v114;
      (*v114)(v115, v134, v139);
      v66 = v117;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v66;
      v155 = v66;
      v15 = v147;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 16) + 1, 1);
        v68 = v155;
      }

      v70 = *(v68 + 16);
      v69 = *(v68 + 24);
      if (v70 >= v69 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v69 > 1, v70 + 1, 1);
        v68 = v155;
      }

      *(v68 + 16) = v70 + 1;
      v117 = v68;
      v65((v68 + v113 + v70 * v131), v115, v139);
LABEL_5:
      v35 = v135;
      v16 = v127;
      if (v135 == v129)
      {
        break;
      }

      v125(v134, v124 + v131 * v135, v139, v38);
    }
  }

  else
  {
    v117 = MEMORY[0x1E69E7CC0];
  }

  v71 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSS_Say32SiriReferenceResolutionDataModel11RRCandidateVGTt1g504_s14d141KitRuntime27LinkExpansionContextBuilderC42extractOnScreenEntityTypesFromRRCandidates33_96F732C182F07CCE7D79D4AD573D548BLLySDySSShySSGGSay0A28efg7Model11I58VGFSSAJcfu_32c81b42e3f50092687f7f7eb8a52d50f3AJSSTf3nnpk_nTf1nc_nTf4g_n(v117);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
  result = static _DictionaryStorage.copy(original:)();
  v73 = result;
  v74 = 0;
  v75 = *(v71 + 64);
  v141 = (v71 + 64);
  v145 = v71;
  v76 = 1 << *(v71 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & v75;
  v79 = (v76 + 63) >> 6;
  v80 = v116;
  v152 = v116 + 16;
  v81 = (v112 + 8);
  v82 = (v116 + 8);
  v143 = (result + 64);
  v144 = result;
  v142 = v79;
  if (v78)
  {
    while (1)
    {
      v83 = __clz(__rbit64(v78));
      v84 = (v78 - 1) & v78;
LABEL_39:
      v87 = v83 | (v74 << 6);
      v146 = v84;
      v147 = v74;
      v88 = *(v145 + 56);
      v89 = *(v145 + 48) + 16 * v87;
      v90 = *(v89 + 8);
      v150 = *v89;
      v151 = v87;
      v91 = *(v88 + 8 * v87);
      v92 = *(v91 + 16);
      v148 = v91;
      v149 = v90;
      if (v92)
      {
        v93 = v91 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v94 = *(v80 + 72);
        v153 = *(v80 + 16);
        v154 = v94;

        v95 = MEMORY[0x1E69E7CC0];
        do
        {
          v97 = v136;
          v98 = v139;
          (v153)(v136, v93, v139);
          v99 = v137;
          RRCandidate.entity.getter();
          v100 = RREntity.dataType.getter();
          v102 = v101;
          (*v81)(v99, v138);
          (*v82)(v97, v98);
          if (v102)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v95 + 2) + 1, 1, v95);
            }

            v104 = *(v95 + 2);
            v103 = *(v95 + 3);
            if (v104 >= v103 >> 1)
            {
              v95 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v104 + 1, 1, v95);
            }

            *(v95 + 2) = v104 + 1;
            v96 = &v95[16 * v104];
            *(v96 + 4) = v100;
            *(v96 + 5) = v102;
          }

          v93 += v154;
          --v92;
        }

        while (v92);
      }

      else
      {

        v95 = MEMORY[0x1E69E7CC0];
      }

      v105 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v95);

      v106 = v151;
      v73 = v144;
      *&v143[(v151 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v151;
      v107 = (v73[6] + 16 * v106);
      v108 = v149;
      *v107 = v150;
      v107[1] = v108;
      *(v73[7] + 8 * v106) = v105;
      v109 = v73[2];
      v110 = __OFADD__(v109, 1);
      v111 = v109 + 1;
      if (v110)
      {
        break;
      }

      v73[2] = v111;
      v80 = v116;
      v78 = v146;
      v74 = v147;
      v79 = v142;
      if (!v146)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
LABEL_34:
    v85 = v74;
    while (1)
    {
      v74 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v74 >= v79)
      {

        return v73;
      }

      v86 = v141[v74];
      ++v85;
      if (v86)
      {
        v83 = __clz(__rbit64(v86));
        v84 = (v86 - 1) & v86;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized LinkExpansionContext.LinkActionMetadataView.init(sessionContext:turnContext:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return a2;
  }

  v7 = a2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v3, 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v8, v4 + 4, v3, v2);

  result = outlined consume of Set<RemoteConversationClient>.Iterator._Variant();
  if (v5 == v3)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return closure #1 in closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(a1, v4, v5, v6, v7, v8);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in AceServiceInvokerImpl.submit<A>(_:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSS_ShySSGt_TG5(a1, v5);
}

uint64_t partial apply for closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for FlowContextPublishing.publish(dialogEngineOutput:executionSource:) in conformance AceServiceInvokerImpl;

  return closure #1 in LinkExpansionContextBuilder.fetchViewActionIdentifiers(for:)(a1, v4, v5, v6);
}

uint64_t specialized LinkExpansionContextBuilder.getAssociatedEntityTypeMetadata(actionMetadata:)(void *a1)
{
  v2 = [a1 typeSpecificMetadata];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for LNActionTypeSpecificMetadataKey(0);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type LNActionTypeSpecificMetadataKey and conformance LNActionTypeSpecificMetadataKey, type metadata accessor for LNActionTypeSpecificMetadataKey);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69AC1B8]), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v23);

      if (swift_dynamicCast())
      {
        return v22;
      }
    }

    else
    {
    }
  }

  v8 = [a1 parameters];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNActionParameterMetadata, 0x1E69AC688);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E12A1FE0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v15 = [v12 valueType];
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = [v16 memberValueType];

        v15 = v17;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;

        v20 = [v19 typeName];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v21;
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t specialized LinkExpansionContextBuilder.extractActionMetadata(allLinkActionsMetadata:)(uint64_t a1)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v112 = a1;

  v117 = 0;
  v8 = 0;
  v110 = v7;
  v111 = a1 + 64;
LABEL_6:
  if (v6)
  {
    v116 = v2;
    v10 = v8;
  }

  else
  {
    do
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_87;
      }

      if (v10 >= v7)
      {

        _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v117);
        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v8;
    }

    while (!v6);
    v116 = v2;
  }

  v114 = v10;
  v115 = (v6 - 1) & v6;
  v11 = __clz(__rbit64(v6)) | (v10 << 6);
  v12 = (*(v112 + 48) + 16 * v11);
  v13 = v12[1];
  v120 = *v12;
  v14 = *(*(v112 + 56) + 8 * v11);

  v15 = v14;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo16LNSystemProtocolC_Say14SiriKitRuntime18LinkActionMetadataVGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = [v15 systemProtocolDefaults];
  v18 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  v131 = v18;
  v119 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v113 = v15;
  v19 = [v15 actions];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNActionMetadata, 0x1E69AC678);
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = 0;
  v22 = v20 + 64;
  v132 = v20;
  v23 = 1 << *(v20 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(v20 + 64);
  v26 = (v23 + 63) >> 6;
  v121 = v16;
  v130 = v13;
  v128 = v20 + 64;
  v127 = v26;
LABEL_18:
  if (v25)
  {
    v136 = v16;
    v27 = v21;
LABEL_24:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = v28 | (v27 << 6);
    v30 = (*(v132 + 48) + 16 * v29);
    v129 = *v30;
    v31 = *(*(v132 + 56) + 8 * v29);
    v135 = v30[1];

    v32 = v31;
    v126 = specialized LinkExpansionContextBuilder.getAssociatedEntityTypeMetadata(actionMetadata:)(v32);
    v133 = v32;
    v134 = v33;
    v35 = v34;
    v36 = [v32 systemProtocolMetadata];
    type metadata accessor for LNSystemProtocolIdentifier(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24LNSystemProtocolMetadata_pMd, &_sSo24LNSystemProtocolMetadata_pMR);
    _s14SiriKitRuntime15MessageBusActorCACScAAAWlTm_5(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, type metadata accessor for LNSystemProtocolIdentifier);
    v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = 0;
    v39 = 1 << *(v37 + 32);
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v41 = v40 & *(v37 + 64);
    v42 = (v39 + 63) >> 6;
    v125 = v35 & 1;
    while (1)
    {
      while (1)
      {
        v43 = v38;
        if (!v41)
        {
          while (1)
          {
            v38 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
              goto LABEL_86;
            }

            if (v38 >= v42)
            {
              break;
            }

            v41 = *(v37 + 64 + 8 * v38);
            ++v43;
            if (v41)
            {
              goto LABEL_32;
            }
          }

          v85 = [v133 systemProtocols];
          v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v86 >> 62)
          {
            v87 = __CocoaSet.count.getter();
          }

          else
          {
            v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = v130;
          v16 = v136;

          if (v87 == 1)
          {
          }

          else
          {
            if (one-time initialization token for kLogger != -1)
            {
              swift_once();
            }

            v88 = type metadata accessor for Logger();
            __swift_project_value_buffer(v88, kLogger);

            v89 = v133;
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              v93 = swift_slowAlloc();
              v138[0] = v93;
              *v92 = 136315650;
              *(v92 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v130, v138);
              *(v92 + 12) = 2080;
              v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v135, v138);

              *(v92 + 14) = v94;
              *(v92 + 22) = 2080;
              v95 = [v89 systemProtocols];
              v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              v97 = MEMORY[0x1E12A16D0](v96, v131);
              v99 = v98;

              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v138);

              *(v92 + 24) = v100;
              v13 = v130;
              _os_log_impl(&dword_1DC659000, v90, v91, "[LinkExpansionContext] Expected exactly one systemProtocol for %s:%s, got %s", v92, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1E12A2F50](v93, -1, -1);
              v101 = v92;
              v16 = v136;
              MEMORY[0x1E12A2F50](v101, -1, -1);
            }

            else
            {
            }
          }

          v21 = v27;
          v22 = v128;
          v26 = v127;
          goto LABEL_18;
        }

LABEL_32:
        v44 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v45 = *(*(v37 + 48) + ((v38 << 9) | (8 * v44)));
        v46 = objc_opt_self();
        v47 = v45;
        v48 = [v46 protocolOrNilWithIdentifier_];
        if (v48)
        {
          break;
        }
      }

      v49 = v48;
      if (*(v119 + 16) && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v51 & 1) != 0))
      {
        v52 = (*(v119 + 56) + 16 * v50);
        if (*v52 == v129 && v52[1] == v135)
        {
          v109 = 1;
        }

        else
        {
          v109 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v109 = 0;
      }

      _sxRi_zRi0_zlySDySSSbGIsegr_SgWOe(v117);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v136;
      v118 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
      v55 = *(v136 + 16);
      v56 = (v54 & 1) == 0;
      v57 = v55 + v56;
      if (__OFADD__(v55, v56))
      {
        goto LABEL_88;
      }

      if (*(v136 + 24) < v57)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = v136;
        if (v54)
        {
          goto LABEL_51;
        }

LABEL_49:
        v59[(v118 >> 6) + 8] |= 1 << v118;
        *(v59[6] + 8 * v118) = v49;
        *(v59[7] + 8 * v118) = MEMORY[0x1E69E7CC0];
        v60 = v59[2];
        v61 = __OFADD__(v60, 1);
        v62 = v60 + 1;
        if (v61)
        {
          goto LABEL_89;
        }

        v59[2] = v62;
        v63 = v49;
        goto LABEL_51;
      }

      v108 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMd, &_ss18_DictionaryStorageCySo16LNSystemProtocolCSay14SiriKitRuntime18LinkActionMetadataVGGMR);
      v124 = static _DictionaryStorage.copy(original:)();
      if (*(v136 + 16))
      {
        v70 = (v124 + 64);
        v71 = (v136 + 64);
        v72 = ((1 << *(v124 + 32)) + 63) >> 6;
        if (v124 != v136 || v70 >= &v71[8 * v72])
        {
          memmove(v70, v71, 8 * v72);
        }

        v73 = 0;
        *(v124 + 16) = *(v136 + 16);
        v74 = 1 << *(v136 + 32);
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        else
        {
          v75 = -1;
        }

        v76 = v75 & *(v136 + 64);
        v77 = (v74 + 63) >> 6;
        v103 = v77;
        if (v76)
        {
          do
          {
            v78 = __clz(__rbit64(v76));
            v104 = (v76 - 1) & v76;
LABEL_71:
            v81 = v78 | (v73 << 6);
            v82 = *(*(v136 + 48) + 8 * v81);
            v83 = *(*(v136 + 56) + 8 * v81);
            *(*(v124 + 48) + 8 * v81) = v82;
            *(*(v124 + 56) + 8 * v81) = v83;
            v84 = v82;

            v77 = v103;
            v76 = v104;
          }

          while (v104);
        }

        v79 = v73;
        while (1)
        {
          v73 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_90;
          }

          if (v73 >= v77)
          {
            break;
          }

          v80 = *(v136 + 64 + 8 * v73);
          ++v79;
          if (v80)
          {
            v78 = __clz(__rbit64(v80));
            v104 = (v80 - 1) & v80;
            goto LABEL_71;
          }
        }
      }

      v59 = v124;
      if ((v108 & 1) == 0)
      {
        goto LABEL_49;
      }

LABEL_51:
      v121 = v59;
      v137 = v59[7];
      v106 = *(v137 + 8 * v118);
      v64 = swift_isUniquelyReferenced_nonNull_native();
      v65 = v106;
      *(v137 + 8 * v118) = v106;
      if ((v64 & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 16) + 1, 1, v106);
        *(v137 + 8 * v118) = v65;
      }

      v67 = *(v65 + 2);
      v66 = *(v65 + 3);
      v107 = v67 + 1;
      if (v67 >= v66 >> 1)
      {
        *(v137 + 8 * v118) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v107, 1, v65);
      }

      v68 = *(v137 + 8 * v118);
      *(v68 + 16) = v107;
      v69 = v68 + 40 * v67;
      *(v69 + 32) = v129;
      *(v69 + 40) = v135;
      *(v69 + 48) = v126;
      *(v69 + 56) = v134;
      *(v69 + 64) = v125;
      *(v69 + 65) = v109 & 1;
      v117 = specialized thunk for @callee_guaranteed () -> (@owned [String]);
      v136 = v121;
    }

    v105 = v54;
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v57, isUniquelyReferenced_nonNull_native);
    v123 = v138[0];
    v118 = specialized __RawDictionaryStorage.find<A>(_:)(v49);
    if ((v105 & 1) != (v58 & 1))
    {
      goto LABEL_91;
    }

    v59 = v123;
    if (v105)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  while (1)
  {
    v27 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      v9 = swift_isUniquelyReferenced_nonNull_native();
      v138[0] = v116;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121, v120, v13, v9);

      v2 = v138[0];
      v8 = v114;
      v6 = v115;
      v7 = v110;
      v3 = v111;
      goto LABEL_6;
    }

    v25 = *(v22 + 8 * v27);
    ++v21;
    if (v25)
    {
      v136 = v16;
      goto LABEL_24;
    }
  }

LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:)(uint64_t a1, uint64_t a2, int *a3)
{
  v3[10] = a1;
  v3[11] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[12] = static MessageBusActor.shared;

  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  v3[13] = v6;
  *v6 = v3;
  v6[1] = specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:);

  return v8(v3 + 8);
}

uint64_t specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:)()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:);
  }

  else
  {
    v4 = specialized LinkExpansionContextBuilder.loggingExceptions<A>(messagePrefix:_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

{
  v1 = v0[12];

  v2 = v0[8];
  v3 = v0[1];

  return v3(v2);
}

{
  v23 = v0;
  v1 = v0[12];

  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v3 = v0[11];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, kLogger);

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v22);
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[7];
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v22);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1DC659000, v6, v7, "[LinkExpansionContext] %s : %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A2F50](v13, -1, -1);
    MEMORY[0x1E12A2F50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20(0);
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

uint64_t LinkMetadataProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  return v0;
}

Swift::Int LinkMetadataProvider.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A23F0](0);
  return Hasher._finalize()();
}

uint64_t LinkMetadataProvider.actionMetadata()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.actionMetadata(), 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = LinkMetadataProvider.actionMetadata();
  v3 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v3);
}

uint64_t LinkMetadataProvider.actionMetadata()(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.actionMetadata(), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t LinkMetadataProvider.conditionallyEnabledActionMetadata()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.conditionallyEnabledActionMetadata(), 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = LinkMetadataProvider.conditionallyEnabledActionMetadata();
  v3 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v3);
}

{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC8];

  return v1(v2);
}

uint64_t LinkMetadataProvider.conditionallyEnabledActionMetadata()(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.conditionallyEnabledActionMetadata(), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t LinkMetadataProvider.bundles()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.bundles(), 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = LinkMetadataProvider.bundles();
  v3 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v3);
}

{

  v1 = *(v0 + 8);
  v2 = MEMORY[0x1E69E7CC0];

  return v1(v2);
}

uint64_t LinkMetadataProvider.bundles()(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](LinkMetadataProvider.bundles(), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t LinkMetadataProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LinkMetadataProviding.conditionallyEnabledActionMetadata() in conformance LinkMetadataProvider()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for LinkMetadataProviding.conditionallyEnabledActionMetadata() in conformance LinkMetadataProvider, 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = LinkMetadataProvider.actionMetadata();
  v3 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v3);
}

uint64_t protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider()
{
  *(v1 + 16) = *v0;
  return MEMORY[0x1EEE6DFA0](protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider, 0, 0);
}

{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider;
  v3 = *(v0 + 16);

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(3, 30, v3);
}

uint64_t protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](protocol witness for LinkMetadataProviding.bundles() in conformance LinkMetadataProvider, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:), 0, 0);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:), 0, 0);
}

{
  v6 = *MEMORY[0x1E69E9840];
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:), 0, 0);
}

uint64_t specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)()
{
  v37 = v0;
  v36[1] = *MEMORY[0x1E69E9840];
  v1 = v0[9];
  lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors();
  v2 = swift_allocError();
  if (v1 < 1)
  {
    v15 = v0[11];
    swift_willThrow();

    v16 = v0[1];
    v17 = *MEMORY[0x1E69E9840];

    return v16();
  }

  else
  {
    v0[12] = 0;
    v3 = *(v0[11] + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA70640;
    *(inited + 32) = [objc_opt_self() conditionallyEnabledProtocol];
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v5 = *(inited + 16);
    swift_arrayDestroy();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
    lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v0[7] = 0;
    v7 = [v3 actionsConformingToSystemProtocols:isa logicalType:2 bundleIdentifier:0 error:v0 + 7];

    v8 = v0[7];
    if (v7)
    {
      v9 = v0[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
      v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v8;

      v12 = v0[1];
      v13 = *MEMORY[0x1E69E9840];

      return v12(v10);
    }

    else
    {
      v18 = v8;
      v19 = _convertNSErrorToError(_:)();
      v0[13] = v19;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Logger.executor);
      v21 = v19;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = v0[9];
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v36[0] = v26;
        *v25 = 134218498;
        *(v25 + 4) = 0;
        *(v25 + 12) = 2048;
        *(v25 + 14) = v24;
        *(v25 + 22) = 2080;
        v0[8] = v19;
        v27 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v28 = String.init<A>(describing:)();
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v36);

        *(v25 + 24) = v30;
        _os_log_impl(&dword_1DC659000, v22, v23, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v25, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x1E12A2F50](v26, -1, -1);
        MEMORY[0x1E12A2F50](v25, -1, -1);
      }

      v31 = v0[10];
      if (!is_mul_ok(v31, 0xF4240uLL))
      {
        __break(1u);
      }

      v32 = v19;
      v33 = *(MEMORY[0x1E69E86C8] + 4);
      v34 = swift_task_alloc();
      v0[14] = v34;
      *v34 = v0;
      v34[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
      v35 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DA60](1000000 * v31);
    }
  }
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  else
  {

    v4 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v38 = v0;
  v37[1] = *MEMORY[0x1E69E9840];
  v1 = v0[12] + 1;
  if (v1 == v0[9])
  {
    v2 = v0[13];
    v3 = v0[11];
    swift_willThrow();

    v4 = v0[1];
    v5 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = v0[13];
    v0[12] = v1;
    v8 = *(v0[11] + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DCA70640;
    *(inited + 32) = [objc_opt_self() conditionallyEnabledProtocol];
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo16LNSystemProtocolC_SayAEGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v10 = *(inited + 16);
    swift_arrayDestroy();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x1E69ACA48);
    lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
    isa = Set._bridgeToObjectiveC()().super.isa;

    v0[7] = 0;
    v12 = [v8 actionsConformingToSystemProtocols:isa logicalType:2 bundleIdentifier:0 error:v0 + 7];

    v13 = v0[7];
    if (v12)
    {
      v14 = v0[11];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v13;

      v17 = v0[1];
      v18 = *MEMORY[0x1E69E9840];

      return v17(v15);
    }

    else
    {
      v19 = v13;
      v20 = _convertNSErrorToError(_:)();
      v0[13] = v20;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.executor);
      v22 = v20;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[9];
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v37[0] = v27;
        *v26 = 134218498;
        *(v26 + 4) = v1;
        *(v26 + 12) = 2048;
        *(v26 + 14) = v25;
        *(v26 + 22) = 2080;
        v0[8] = v20;
        v28 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v29 = String.init<A>(describing:)();
        v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v37);

        *(v26 + 24) = v31;
        _os_log_impl(&dword_1DC659000, v23, v24, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v26, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1E12A2F50](v27, -1, -1);
        MEMORY[0x1E12A2F50](v26, -1, -1);
      }

      v32 = v0[10];
      if (!is_mul_ok(v32, 0xF4240uLL))
      {
        __break(1u);
      }

      v33 = v20;
      v34 = *(MEMORY[0x1E69E86C8] + 4);
      v35 = swift_task_alloc();
      v0[14] = v35;
      *v35 = v0;
      v35[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
      v36 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DA60](1000000 * v32);
    }
  }
}

{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[15];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

{
  v35 = v0;
  v34[1] = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors();
  v2 = swift_allocError();
  if (v1 < 1)
  {
    v13 = v0[6];
    swift_willThrow();

    v14 = v0[1];
    v15 = *MEMORY[0x1E69E9840];

    return v14();
  }

  else
  {
    v0[7] = 0;
    v3 = *(v0[6] + 16);
    v0[2] = 0;
    v4 = [v3 bundlesWithError_];
    v5 = v0[2];
    if (v4)
    {
      v6 = v0[6];
      v7 = v4;
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v5;

      v10 = v0[1];
      v11 = *MEMORY[0x1E69E9840];

      return v10(v8);
    }

    else
    {
      v16 = v5;
      v17 = _convertNSErrorToError(_:)();
      v0[8] = v17;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.executor);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v0[4];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34[0] = v24;
        *v23 = 134218498;
        *(v23 + 4) = 0;
        *(v23 + 12) = 2048;
        *(v23 + 14) = v22;
        *(v23 + 22) = 2080;
        v0[3] = v17;
        v25 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v34);

        *(v23 + 24) = v28;
        _os_log_impl(&dword_1DC659000, v20, v21, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v23, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A2F50](v24, -1, -1);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      v29 = v0[5];
      if (!is_mul_ok(v29, 0xF4240uLL))
      {
        __break(1u);
      }

      v30 = v17;
      v31 = *(MEMORY[0x1E69E86C8] + 4);
      v32 = swift_task_alloc();
      v0[9] = v32;
      *v32 = v0;
      v32[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
      v33 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DA60](1000000 * v29);
    }
  }
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  else
  {

    v4 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v36 = v0;
  v35[1] = *MEMORY[0x1E69E9840];
  v1 = v0[7] + 1;
  if (v1 == v0[4])
  {
    v2 = v0[8];
    v3 = v0[6];
    swift_willThrow();

    v4 = v0[1];
    v5 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = v0[8];
    v0[7] = v1;
    v8 = *(v0[6] + 16);
    v0[2] = 0;
    v9 = [v8 bundlesWithError_];
    v10 = v0[2];
    if (v9)
    {
      v11 = v0[6];
      v12 = v9;
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v10;

      v15 = v0[1];
      v16 = *MEMORY[0x1E69E9840];

      return v15(v13);
    }

    else
    {
      v17 = v10;
      v18 = _convertNSErrorToError(_:)();
      v0[8] = v18;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.executor);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[4];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35[0] = v25;
        *v24 = 134218498;
        *(v24 + 4) = v1;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v23;
        *(v24 + 22) = 2080;
        v0[3] = v18;
        v26 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

        *(v24 + 24) = v29;
        _os_log_impl(&dword_1DC659000, v21, v22, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v24, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E12A2F50](v25, -1, -1);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      v30 = v0[5];
      if (!is_mul_ok(v30, 0xF4240uLL))
      {
        __break(1u);
      }

      v31 = v18;
      v32 = *(MEMORY[0x1E69E86C8] + 4);
      v33 = swift_task_alloc();
      v0[9] = v33;
      *v33 = v0;
      v33[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
      v34 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DA60](1000000 * v30);
    }
  }
}

{
  v35 = v0;
  v34[1] = *MEMORY[0x1E69E9840];
  v1 = v0[4];
  lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors();
  v2 = swift_allocError();
  if (v1 < 1)
  {
    v13 = v0[6];
    swift_willThrow();

    v14 = v0[1];
    v15 = *MEMORY[0x1E69E9840];

    return v14();
  }

  else
  {
    v0[7] = 0;
    v3 = *(v0[6] + 16);
    v0[2] = 0;
    v4 = [v3 actionsAndSystemProtocolDefaultsForBundleIdentifier:0 error:v0 + 2];
    v5 = v0[2];
    if (v4)
    {
      v6 = v4;
      v7 = v0[6];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNBundleActionsMetadata, 0x1E69AC730);
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v5;

      v10 = v0[1];
      v11 = *MEMORY[0x1E69E9840];

      return v10(v8);
    }

    else
    {
      v16 = v5;
      v17 = _convertNSErrorToError(_:)();
      v0[8] = v17;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.executor);
      v19 = v17;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v0[4];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v34[0] = v24;
        *v23 = 134218498;
        *(v23 + 4) = 0;
        *(v23 + 12) = 2048;
        *(v23 + 14) = v22;
        *(v23 + 22) = 2080;
        v0[3] = v17;
        v25 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v26 = String.init<A>(describing:)();
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v34);

        *(v23 + 24) = v28;
        _os_log_impl(&dword_1DC659000, v20, v21, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v23, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A2F50](v24, -1, -1);
        MEMORY[0x1E12A2F50](v23, -1, -1);
      }

      v29 = v0[5];
      if (!is_mul_ok(v29, 0xF4240uLL))
      {
        __break(1u);
      }

      v30 = v17;
      v31 = *(MEMORY[0x1E69E86C8] + 4);
      v32 = swift_task_alloc();
      v0[9] = v32;
      *v32 = v0;
      v32[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
      v33 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DA60](1000000 * v29);
    }
  }
}

{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  else
  {

    v4 = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
  }

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v36 = v0;
  v35[1] = *MEMORY[0x1E69E9840];
  v1 = v0[7] + 1;
  if (v1 == v0[4])
  {
    v2 = v0[8];
    v3 = v0[6];
    swift_willThrow();

    v4 = v0[1];
    v5 = *MEMORY[0x1E69E9840];

    return v4();
  }

  else
  {
    v7 = v0[8];
    v0[7] = v1;
    v8 = *(v0[6] + 16);
    v0[2] = 0;
    v9 = [v8 actionsAndSystemProtocolDefaultsForBundleIdentifier:0 error:v0 + 2];
    v10 = v0[2];
    if (v9)
    {
      v11 = v9;
      v12 = v0[6];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for LNBundleActionsMetadata, 0x1E69AC730);
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v10;

      v15 = v0[1];
      v16 = *MEMORY[0x1E69E9840];

      return v15(v13);
    }

    else
    {
      v17 = v10;
      v18 = _convertNSErrorToError(_:)();
      v0[8] = v18;

      swift_willThrow();
      if (one-time initialization token for executor != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.executor);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = v0[4];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v35[0] = v25;
        *v24 = 134218498;
        *(v24 + 4) = v1;
        *(v24 + 12) = 2048;
        *(v24 + 14) = v23;
        *(v24 + 22) = 2080;
        v0[3] = v18;
        v26 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v27 = String.init<A>(describing:)();
        v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

        *(v24 + 24) = v29;
        _os_log_impl(&dword_1DC659000, v21, v22, "[LinkMetadataProvider] Attempt %ld of %ld - %s", v24, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E12A2F50](v25, -1, -1);
        MEMORY[0x1E12A2F50](v24, -1, -1);
      }

      v30 = v0[5];
      if (!is_mul_ok(v30, 0xF4240uLL))
      {
        __break(1u);
      }

      v31 = v18;
      v32 = *(MEMORY[0x1E69E86C8] + 4);
      v33 = swift_task_alloc();
      v0[9] = v33;
      *v33 = v0;
      v33[1] = specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:);
      v34 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DA60](1000000 * v30);
    }
  }
}

{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = v0[6];

  v3 = v0[10];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

{
  v2 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69E9840];

  return specialized LinkMetadataProvider.retry<A>(maximumAttempts:backoffMilliseconds:_:)();
}

unint64_t lazy protocol witness table accessor for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors()
{
  result = lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors;
  if (!lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors;
  if (!lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkMetadataProvider.Errors and conformance LinkMetadataProvider.Errors);
  }

  return result;
}

uint64_t dispatch thunk of LinkMetadataProviding.actionMetadata()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LinkMetadataProviding.conditionallyEnabledActionMetadata()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = AppShortcutStateProvider.intentsStates(appShortcutTargets:conditionalIntentMetadata:);

  return v9(a1, a2);
}

uint64_t dispatch thunk of LinkMetadataProviding.bundles()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for AppShortcutStateProviding.intentsStates(appShortcutTargets:conditionalIntentMetadata:) in conformance AppShortcutStateProvider;

  return v9(a1, a2);
}

void *specialized SimpleOrderedDictionary.values()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (v12 + 56);
    v30 = v12;
    v16 = (v12 + 48);
    v17 = (a2 + 40);
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (*(a1 + 16))
      {
        v19 = *(v17 - 1);
        v20 = *v17;

        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v20);
        if (v22)
        {
          outlined init with copy of ReferenceResolutionClientProtocol?(*(a1 + 56) + *(v30 + 72) * v21, v7, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestMR);
          v23 = 0;
        }

        else
        {
          v23 = 1;
        }

        (*v15)(v7, v23, 1, v8);

        if ((*v16)(v7, 1, v8) != 1)
        {
          v24 = v29;
          outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(v7, v29);
          outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(v24, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
          }

          v26 = v18[2];
          v25 = v18[3];
          if (v26 >= v25 >> 1)
          {
            v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25 > 1, v26 + 1, 1, v18);
          }

          v18[2] = v26 + 1;
          outlined init with take of (topAction: RankedAction, alternativeParses: [CamParse])(v31, v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26);
          goto LABEL_5;
        }
      }

      else
      {
        (*v15)(v7, 1, 1, v8);
      }

      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMd, &_s7SiriCam12RankedActionV03topD0_SayAA0B5ParseOG17alternativeParsestSgMR);
LABEL_5:
      v17 += 2;
      if (!--v14)
      {
        return v18;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v36 - v6;
  v8 = type metadata accessor for Parse();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v41 = v36 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(*(v15 - 8) + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 16);
  if (!v21)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = *(v17 + 16);
  v22 = v17 + 16;
  v24 = a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v46 = *(v22 + 56);
  v47 = v23;
  v36[1] = v9 + 16;
  v44 = (v22 - 8);
  v45 = (v9 + 56);
  v42 = (v9 + 32);
  v43 = (v9 + 48);
  v25 = MEMORY[0x1E69E7CC0];
  v39 = v12;
  v40 = v9;
  v37 = v15;
  v38 = a1;
  v48 = v22;
  v23(v20, v24, v15, v18);
  while (1)
  {
    if (*(a1 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v20), (v28 & 1) != 0))
    {
      (*(v9 + 16))(v7, *(a1 + 56) + *(v9 + 72) * v27, v8);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    (*v45)(v7, v29, 1, v8);
    (*v44)(v20, v15);
    if ((*v43)(v7, 1, v8) == 1)
    {
      outlined destroy of ReferenceResolutionClientProtocol?(v7, &_s11SiriKitFlow5ParseOSgMd, &_s11SiriKitFlow5ParseOSgMR);
    }

    else
    {
      v30 = v41;
      v31 = *v42;
      (*v42)(v41, v7, v8);
      v31(v12, v30, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
      }

      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32 > 1, v33 + 1, 1, v25);
      }

      v25[2] = v33 + 1;
      v9 = v40;
      v34 = v25 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v40 + 72) * v33;
      v12 = v39;
      v31(v34, v39, v8);
      v15 = v37;
      a1 = v38;
    }

    v24 += v46;
    if (!--v21)
    {
      break;
    }

    v47(v20, v24, v15, v26);
  }

  return v25;
}

uint64_t static EntityTypeMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        return (a3 ^ a6 ^ 1) & 1;
      }

      v6 = a3;
      v7 = a6;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v6;
      a6 = v7;
      if (v8)
      {
        return (a3 ^ a6 ^ 1) & 1;
      }
    }
  }

  else if (!a5)
  {
    return (a3 ^ a6 ^ 1) & 1;
  }

  return 0;
}