char *specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(char *result)
{
  v1 = *(result + 6);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = result;
  v3 = *(result + 9);
  if (v1 >= *(v3 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 8 * v1 + 32);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v17 = result;
    v18 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v7 = 0;
    v8 = v18;
    v9 = *(v18 + 2);
    v10 = 40 * v9;
    do
    {
      v11 = *(v4 + 32 + 8 * v7);
      v18 = v8;
      v12 = *(v8 + 3);
      v13 = v9 + v7 + 1;
      if (v9 + v7 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + v7 + 1, 1);
        v8 = v18;
      }

      ++v7;
      *(v8 + 2) = v13;
      v14 = &v8[v10];
      *(v14 + 4) = v11;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      *(v14 + 7) = 0;
      v10 += 40;
      v14[64] = 1;
    }

    while (v5 != v7);

    v2 = v17;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A8FC9400;
  *(inited + 32) = v6;
  specialized static EarleyRecognizer.predictAndComplete(recognizerGrammar:chart:items:)(v2, inited, v6, &v18);
  swift_setDeallocating();
  v16 = *(inited + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_sSay19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  swift_arrayDestroy();
  return v18;
}

uint64_t specialized static EarleyRecognizer.createRootRecognizer(for:vocabularyManager:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v14[0] = *a1;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v7;
  v14[5] = v6;
  type metadata accessor for EarleyRecognizer.RecognizerGrammar();
  v8 = swift_allocObject();

  EarleyRecognizer.RecognizerGrammar.init(grammar:vocabularyManager:)(v14, a2);
  v9 = specialized static EarleyRecognizer.createRootItems(recognizerGrammar:)(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMd, &_ss23_ContiguousArrayStorageCySay19TokenGenerationCore16EarleyRecognizerC5StateVGGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A8FC9400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FC9400;
  *(v11 + 32) = v9;
  *(v10 + 32) = v11;
  type metadata accessor for EarleyRecognizer();
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 28) = -1;
  *(v12 + 24) = 0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;
  *(v12 + 48) = MEMORY[0x1E69E7CC0];

  return v12;
}

uint64_t specialized static EarleyRecognizer.parse(recognizerGrammar:element:with:items:)(void *a1, unsigned int *a2, uint64_t *a3, char **a4)
{
  v4 = a4;
  v58 = *a2;
  v6 = *(a2 + 4);
  v7 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v9 + 2));
  }

  else
  {
    v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC19TokenGenerationCore16EarleyRecognizerC4ItemV_Tt1g5(0, *(v9 + 3) >> 1);

    *v4 = v10;
  }

  v49 = *a3;
  v50 = a3;
  v51 = a3[1];
  result = EarleyRecognizer.Chart.lastState.getter(*a3, v51, &v64);
  v12 = v64;
  if (!v64)
  {
    __break(1u);
    return result;
  }

  v13 = *(v64 + 16);
  if (!v13)
  {
LABEL_29:

    if (*(*v4 + 2))
    {
      v12 = v51;
      specialized static EarleyRecognizer.predictAndComplete(recognizerGrammar:chart:items:)(a1, v49, v51, v4);
      v36 = *v4;
      v37 = *(*v4 + 2);
      v13 = MEMORY[0x1E69E7CC0];
      if (v37)
      {
        v64 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
        v38 = 0;
        v13 = v64;
        v39 = *(v64 + 16);
        v40 = 40 * v39;
        do
        {
          v41 = *&v36[v38 + 32];
          v42 = *&v36[v38 + 48];
          v43 = v36[v38 + 64];
          v64 = v13;
          v44 = *(v13 + 24);
          v45 = v39 + 1;
          if (v39 >= v44 >> 1)
          {
            v60 = v42;
            v63 = v41;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v39 + 1, 1);
            v42 = v60;
            v41 = v63;
            v13 = v64;
          }

          *(v13 + 16) = v45;
          v46 = v13 + v40 + v38;
          *(v46 + 32) = v41;
          *(v46 + 48) = v42;
          *(v46 + 64) = v43;
          v38 += 40;
          v39 = v45;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v12 = v51;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  v14 = a1[4];
  v15 = a1[7];
  v16 = v14 + 32;
  v17 = (v64 + 64);
  v52 = v64;
  v53 = v4;
  v56 = v14 + 32;
  v57 = v14;
  v55 = v6;
  while (1)
  {
    v19 = *(v17 - 4);
    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v19 >= *(v15 + 16))
    {
      goto LABEL_42;
    }

    v20 = *(v17 - 3);
    v21 = *(v15 + 40 + 24 * v19);
    if (v20 < *(v21 + 16))
    {
      v22 = v21 + 16 * v20;
      if (!*(v22 + 40))
      {
        v23 = *(v22 + 32);
        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v23 >= *(v14 + 16))
        {
          goto LABEL_44;
        }

        v24 = *(v17 - 1);
        v25 = *v17;
        v26 = v16 + 16 * v23;
        v27 = *v26;
        v28 = *(v26 + 8);
        if (v6)
        {
          if (v28 && (v28 == 1 || v58 == v27))
          {
            goto LABEL_25;
          }
        }

        else if (v28)
        {
          if (v28 == 1)
          {
            v61 = *(v17 - 1);
            v29 = *v17;
            v30 = [v27 longCharacterIsMember_];
            v25 = v29;
            v6 = v55;
            v24 = v61;
            v16 = v56;
            v14 = v57;
            if (v30)
            {
LABEL_25:
              v59 = v25;
              v62 = v24;
              v31 = *v4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
              }

              v33 = *(v31 + 2);
              v32 = *(v31 + 3);
              v16 = v56;
              v14 = v57;
              v34 = v62;
              if (v33 >= v32 >> 1)
              {
                v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
                v34 = v62;
                v16 = v56;
                v14 = v57;
                v31 = v35;
              }

              *(v31 + 2) = v33 + 1;
              v18 = &v31[40 * v33];
              *(v18 + 4) = v19;
              *(v18 + 5) = v20 + 1;
              *(v18 + 3) = v34;
              v18[64] = v59;
              v12 = v52;
              v4 = v53;
              *v53 = v31;
              v6 = v55;
            }
          }
        }

        else if (v58 == v27)
        {
          goto LABEL_25;
        }
      }
    }

    v17 += 40;
    if (!--v13)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
  v12 = result;
LABEL_38:
  v48 = *(v12 + 16);
  v47 = *(v12 + 24);
  if (v48 >= v47 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v12, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore16EarleyRecognizerC5StateVGMR);
    v12 = result;
  }

  *(v12 + 16) = v48 + 1;
  *(v12 + 8 * v48 + 32) = v13;
  v50[1] = v12;
  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.State and conformance EarleyRecognizer.State()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.State and conformance EarleyRecognizer.State;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.State and conformance EarleyRecognizer.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.State and conformance EarleyRecognizer.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.State(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.RecognizerValidatorCache(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.RecognizerValidatorCache(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.Item(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.Item(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.RecognizerRule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.RecognizerRule(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.Chart and conformance EarleyRecognizer.Chart);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerRule and conformance EarleyRecognizer.RecognizerRule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.Item and conformance EarleyRecognizer.Item);
  }

  return result;
}

id outlined copy of Prompt.Turn.Segment(id result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (a3 >> 60) & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_18:
    }

    if (v8 == 1)
    {

      return outlined copy of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        outlined copy of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (v8 != 4)
        {
          return result;
        }
      }

      goto LABEL_18;
    }

    return result;
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void outlined consume of Prompt.Turn.Segment(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | (a3 >> 60) & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_18:

      return;
    }

    if (v8 == 1)
    {

      outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 == 3)
      {
        outlined consume of Data._Representation(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (v8 != 4)
        {
          return;
        }
      }

      goto LABEL_18;
    }
  }
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined init with copy of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined consume of JSON(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 4 || a3 == 3)
  {
  }

  return result;
}

uint64_t outlined copy of JSON(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 4 || a3 == 3)
  {
  }

  return result;
}

uint64_t outlined init with take of TerminalSymbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of TerminalSymbol(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of (key: TerminalSymbol, value: Int)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMd, &_s19TokenGenerationCore14TerminalSymbolO3key_Si5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of TerminalSymbol(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TerminalSymbol(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PromptTemplateInfo.RichVariableBinding.Component(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type EarleyRecognizer and conformance EarleyRecognizer(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EarleyRecognizer.RecognizerTerminalSymbol(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for EarleyRecognizer.RecognizerTerminalSymbol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for EarleyRecognizer.RecognizerSymbol(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for EarleyRecognizer.RecognizerSymbol(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol()
{
  result = lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol;
  if (!lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EarleyRecognizer.RecognizerSymbol and conformance EarleyRecognizer.RecognizerSymbol);
  }

  return result;
}

unint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for TerminalSymbol(0);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  v9 = specialized Collection.count.getter(a1, a2);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v11 = v9;
  v50 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v37[1] = v2;
    v13 = 0;
    v14 = v47;
    v10 = v50;
    v15 = (a1 >> 59) & 1;
    if ((v47 & 0x1000000000000000) == 0)
    {
      LOBYTE(v15) = 1;
    }

    v16 = 4 << v15;
    v17 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v17 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v45 = v16;
    v46 = v17;
    v39 = v47 & 0xFFFFFFFFFFFFFFLL;
    v40 = v8;
    v38 = (v47 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v18 = 15;
    v41 = v11;
    v42 = a1;
    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v20 = v18 & 0xC;
      v21 = (v18 & 1) == 0 || v20 == v16;
      v22 = v21;
      if (v21)
      {
        result = v18;
        if (v20 == v16)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, a1, v47);
          v14 = v47;
        }

        v23 = result >> 16;
        if (result >> 16 >= v46)
        {
          goto LABEL_59;
        }

        if ((result & 1) == 0)
        {
          v24 = _StringGuts.scalarAlignSlow(_:)(result, a1, v47);
          v14 = v47;
          v23 = v24 >> 16;
        }
      }

      else
      {
        v23 = v18 >> 16;
        result = v18;
        if (v18 >> 16 >= v46)
        {
          goto LABEL_60;
        }
      }

      if ((v14 & 0x1000000000000000) != 0)
      {
        v27 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      }

      else
      {
        if ((v14 & 0x2000000000000000) != 0)
        {
          v48 = a1;
          v49 = v39;
          v26 = &v48 + v23;
        }

        else
        {
          v25 = v38;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v25 = _StringObject.sharedUTF8.getter();
          }

          v26 = (v25 + v23);
        }

        v27 = *v26;
        if (*v26 < 0)
        {
          v36 = (__clz(v27 ^ 0xFF) - 24);
          if (v36 > 2)
          {
            if (v36 == 3)
            {
              v27 = ((v27 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
            }

            else
            {
              v27 = ((v27 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
            }
          }

          else if (v36 != 1)
          {
            v27 = v26[1] & 0x3F | ((v27 & 0x1F) << 6);
          }
        }
      }

      v28 = v40;
      *v40 = v27;
      swift_storeEnumTagMultiPayload();
      v50 = v10;
      v30 = *(v10 + 16);
      v29 = *(v10 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v10 = v50;
      }

      *(v10 + 16) = v30 + 1;
      result = _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v28, v10 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v30, type metadata accessor for TerminalSymbol);
      if (v22)
      {
        v16 = v45;
        v31 = v41;
        a1 = v42;
        v14 = v47;
        if (v20 == v45)
        {
          result = _StringGuts._slowEnsureMatchingEncoding(_:)(v18, v42, v47);
          v14 = v47;
          v18 = result;
        }

        if (v46 <= v18 >> 16)
        {
          goto LABEL_61;
        }

        if ((v18 & 1) == 0)
        {
          result = _StringGuts.scalarAlignSlow(_:)(v18, a1, v47);
          v14 = v47;
          v18 = v18 & 0xC | result & 0xFFFFFFFFFFFFFFF3 | 1;
        }
      }

      else
      {
        v16 = v45;
        v31 = v41;
        a1 = v42;
        v14 = v47;
        if (v46 <= v18 >> 16)
        {
          goto LABEL_62;
        }
      }

      if ((v14 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        v14 = v47;
        v18 = result;
      }

      else
      {
        v32 = v18 >> 16;
        if ((v14 & 0x2000000000000000) != 0)
        {
          v48 = a1;
          v49 = v39;
          v33 = *(&v48 + v32);
        }

        else
        {
          result = v38;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = _StringObject.sharedUTF8.getter();
            v14 = v47;
          }

          v33 = *(result + v32);
        }

        v34 = v33;
        v35 = __clz(v33 ^ 0xFF) - 24;
        if (v34 >= 0)
        {
          LOBYTE(v35) = 1;
        }

        v18 = ((v32 + v35) << 16) | 5;
        v16 = v45;
      }

      ++v13;
      if (v19 == v31)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS6symbol_Si8positionSi8prioritytMd, &_sSS6symbol_Si8positionSi8prioritytMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A35ComponentValueCustomDataTransformer_pMd, &_s9PromptKit0A35ComponentValueCustomDataTransformer_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v7;
  if (__OFADD__(v8, v7))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v13 = *(v5 + 24) >> 1, v13 < v9))
  {
    if (v8 <= v9)
    {
      v14 = v8 + v7;
    }

    else
    {
      v14 = v8;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v14, 1, v5);
    v5 = result;
    v13 = *(result + 24) >> 1;
  }

  v15 = v13 - *(v5 + 16);
  if (v6 == a3)
  {
    if (v7 <= 0)
    {
      v7 = 0;
      goto LABEL_16;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < v7)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v7 <= 0)
    {
      goto LABEL_16;
    }

    v16 = *(v5 + 16);
    v17 = __OFADD__(v16, v7);
    v18 = v16 + v7;
    if (!v17)
    {
      *(v5 + 16) = v18;
LABEL_16:
      if (v7 != v15)
      {
LABEL_17:
        result = swift_unknownObjectRelease();
        *v4 = v5;
        return result;
      }

LABEL_21:

      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Symbol);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69A0AD0]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Prompt.Delimiter);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69C6360]);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Prompt.Attachment);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v16 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t specialized Array.append<A>(contentsOf:)(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v5 = specialized Collection.count.getter(a1, a2);
  v6 = *v2;
  v7 = *(*v2 + 2);
  v8 = v7 + v5;
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = v5;
  v10 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v12 = *(v6 + 3) >> 1, v12 < v8))
  {
    if (v7 <= v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v6);
    v12 = *(v6 + 3) >> 1;
  }

  v14 = *(v6 + 2);
  v15 = v12 - v14;
  v16 = specialized Sequence._copySequenceContents(initializing:)(&v45, &v6[4 * v14 + 32], v12 - v14, v4, v3);
  if (v16 < v9)
  {
    goto LABEL_15;
  }

  if (v16 >= 1)
  {
    v17 = *(v6 + 2);
    v18 = __OFADD__(v17, v16);
    v19 = v17 + v16;
    if (v18)
    {
      __break(1u);
LABEL_24:
      v43 = v3;
      v44 = v4 & 0xFFFFFFFFFFFFFFLL;
      v27 = &v43 + v8;
      v24 = *(&v43 + v8);
      if ((*(&v43 + v8) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v40 = (__clz(v24 ^ 0xFF) - 24);
      if (v40 > 2)
      {
        if (v40 == 3)
        {
          v24 = ((v24 & 0xF) << 12) | ((v27[1] & 0x3F) << 6) | v27[2] & 0x3F;
          v26 = 3;
        }

        else
        {
          v24 = ((v24 & 0xF) << 18) | ((v27[1] & 0x3F) << 12) | ((v27[2] & 0x3F) << 6) | v27[3] & 0x3F;
          v26 = 4;
        }

        goto LABEL_26;
      }

      if (v40 == 1)
      {
LABEL_25:
        v26 = 1;
      }

      else
      {
        v26 = 2;
        v24 = v27[1] & 0x3F | ((v24 & 0x1F) << 6);
      }

LABEL_26:
      v25 = 0;
      goto LABEL_27;
    }

    *(v6 + 2) = v19;
  }

  if (v16 == v15)
  {
LABEL_16:
    v8 = v47;
    v9 = v48;
    if (v47 >= v48)
    {
      goto LABEL_13;
    }

    v19 = *(v6 + 2);
    v3 = v45;
    v4 = v46;
    if ((v46 & 0x1000000000000000) != 0)
    {
      v41 = *(v6 + 2);
      v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v19 = v41;
      v25 = (v4 & 0x2000000000000000) == 0;
      goto LABEL_27;
    }

    if ((v46 & 0x2000000000000000) == 0)
    {
      if ((v45 & 0x1000000000000000) != 0)
      {
        v21 = (v46 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v42 = *(v6 + 2);
        v21 = _StringObject.sharedUTF8.getter();
        v19 = v42;
      }

      v22 = (v21 + v8);
      v23 = *(v21 + v8);
      v24 = *(v21 + v8);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      v39 = (__clz(v24 ^ 0xFF) - 24);
      if (v39 > 2)
      {
        if (v39 == 3)
        {
          v24 = ((v24 & 0xF) << 12) | ((v22[1] & 0x3F) << 6) | v22[2] & 0x3F;
          v25 = 1;
          v26 = 3;
        }

        else
        {
          v24 = ((v24 & 0xF) << 18) | ((v22[1] & 0x3F) << 12) | ((v22[2] & 0x3F) << 6) | v22[3] & 0x3F;
          v25 = 1;
          v26 = 4;
        }
      }

      else
      {
        if (v39 == 1)
        {
LABEL_22:
          v25 = 1;
          v26 = 1;
          goto LABEL_27;
        }

        v25 = 1;
        v26 = 2;
        v24 = v22[1] & 0x3F | ((v24 & 0x1F) << 6);
      }

LABEL_27:
      v28 = v26 + v8;
      while (1)
      {
        v29 = *(v6 + 3);
        v30 = v29 >> 1;
        if ((v29 >> 1) < v19 + 1)
        {
          break;
        }

        if (v19 < v30)
        {
          goto LABEL_32;
        }

LABEL_29:
        *(v6 + 2) = v19;
      }

      v36 = v19;
      v37 = v24;
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v19 + 1, 1, v6);
      v19 = v36;
      v6 = v38;
      v24 = v37;
      v30 = *(v6 + 3) >> 1;
      if (v36 >= v30)
      {
        goto LABEL_29;
      }

LABEL_32:
      v31 = v19 + 8;
      while (1)
      {
        *&v6[4 * v31] = v24;
        if (v28 >= v9)
        {
          *(v6 + 2) = v31 - 7;
          goto LABEL_13;
        }

        if ((v4 & 0x1000000000000000) != 0)
        {
          v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
        }

        else
        {
          if (v25)
          {
            v33 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v3 & 0x1000000000000000) == 0)
            {
              v33 = _StringObject.sharedUTF8.getter();
            }

            v34 = (v33 + v28);
          }

          else
          {
            v43 = v3;
            v44 = v4 & 0xFFFFFFFFFFFFFFLL;
            v34 = &v43 + v28;
          }

          v24 = *v34;
          if ((*v34 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v35 = (__clz(v24 ^ 0xFF) - 24);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              v24 = ((v24 & 0xF) << 12) | ((v34[1] & 0x3F) << 6) | v34[2] & 0x3F;
              v32 = 3;
            }

            else
            {
              v24 = ((v24 & 0xF) << 18) | ((v34[1] & 0x3F) << 12) | ((v34[2] & 0x3F) << 6) | v34[3] & 0x3F;
              v32 = 4;
            }

            goto LABEL_34;
          }

          if (v35 == 1)
          {
LABEL_43:
            v32 = 1;
          }

          else
          {
            v24 = v34[1] & 0x3F | ((v24 & 0x1F) << 6);
            v32 = 2;
          }
        }

LABEL_34:
        v28 += v32;
        if (++v31 - v30 == 8)
        {
          v19 = v30;
          goto LABEL_29;
        }
      }
    }

    goto LABEL_24;
  }

LABEL_13:

  *v2 = v6;
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t static Symbol.nonterminal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Symbol(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static Symbol.terminal(_:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(a1, a2);
  type metadata accessor for Symbol(0);

  return swift_storeEnumTagMultiPayload();
}

TokenGenerationCore::Rule __swiftcall Rule.init(symbol:_:)(Swift::String symbol, Swift::OpaquePointer _)
{
  *v2 = symbol;
  *(v2 + 16) = _;
  result.symbol.identifier = symbol;
  result.expression.choices = _;
  return result;
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v37 = a2;
  v38 = a1;
  v35 = a4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
  v34 = *(v39 - 8);
  v7 = *(v34 + 64);
  v8 = MEMORY[0x1EEE9AC00](v39);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v33 - v11;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v40 = a3;

  v18 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v10;
      v41 = v5;
      v20 = v18;
LABEL_9:
      v21 = __clz(__rbit64(v15)) | (v20 << 6);
      v22 = *(v40 + 56);
      v23 = (*(v40 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = type metadata accessor for CharacterSet();
      v27 = *(v26 - 8);
      v28 = v22 + *(v27 + 72) * v21;
      v29 = v36;
      (*(v27 + 16))(&v36[*(v39 + 48)], v28, v26);
      *v29 = v24;
      v29[1] = v25;
      v10 = v19;
      outlined init with take of (key: String, value: CharacterSet)(v29, v19);

      v30 = v41;
      v31 = v38(v19);
      v5 = v30;
      if (v30)
      {
        outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
      }

      if (v31)
      {
        break;
      }

      v15 &= v15 - 1;
      result = outlined destroy of [Regex2BNF.CharacterPredicate](v19, &_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
      v18 = v20;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    v32 = v35;
    outlined init with take of (key: String, value: CharacterSet)(v10, v35);
    return (*(v34 + 56))(v32, 0, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return (*(v34 + 56))(v35, 1, 1, v39);
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v19 = v10;
        v41 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t NonTerminalSymbol.description.getter()
{
  MEMORY[0x1AC57C120](*v0, v0[1]);
  MEMORY[0x1AC57C120](62, 0xE100000000000000);
  return 60;
}

uint64_t TerminalSymbol.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TerminalSymbol(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v1, v10, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *v10;
      v28 = 34;
      v29 = 0xE100000000000000;
      if (v12 > 0x7F)
      {
        v22 = (v12 & 0x3F) << 8;
        if (v12 >= 0x800)
        {
          v23 = v12 >> 12;
          v24 = (v22 | (v12 >> 6) & 0x3F) << 8;
          v25 = HIWORD(v12);
          v13 = (((v24 | (v12 >> 12) & 0x3F) << 8) | (v12 >> 18)) - 2122219023;
          v26 = v23 + v24 + 8487393;
          if (!v25)
          {
            v13 = v26;
          }
        }

        else
        {
          v13 = (v12 >> 6) + v22 + 33217;
        }
      }

      else
      {
        v13 = v12 + 1;
      }

      v27[1] = (v13 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v13) >> 3))));
      v14 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1AC57C120](v14);

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
      return v28;
    }

LABEL_7:
    (*(v3 + 32))(v6, v10, v2);
    v15 = CharacterSet.description.getter();
    (*(v3 + 8))(v6, v2);
    return v15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_7;
  }

  v17 = *v10;
  v28 = 30757;
  v29 = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7508];
  *(v18 + 16) = xmmword_1A8FC9400;
  v20 = MEMORY[0x1E69E7558];
  *(v18 + 56) = v19;
  *(v18 + 64) = v20;
  *(v18 + 32) = v17;
  v21 = String.init(format:_:)();
  MEMORY[0x1AC57C120](v21);

  return v28;
}

uint64_t type metadata accessor for Symbol(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Bool __swiftcall Rule.isRecursiveRule()()
{
  v1 = type metadata accessor for Symbol(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[2];
  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = *v0;
  v16 = v0[1];
  while (v9 < *(v7 + 16))
  {
    v11 = *(v7 + 32 + 8 * v9);
    if (*(v11 + 16))
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v6, type metadata accessor for Symbol);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v10 == *v6 && v16 == v6[1])
        {
          v14 = v6[1];

          return 1;
        }

        v12 = v6[1];
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v13)
        {
          return 1;
        }
      }

      else
      {
        result = outlined destroy of Symbol(v6, type metadata accessor for Symbol);
      }
    }

    if (v8 == ++v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for characterSetLookup()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_10Foundation12CharacterSetVtGMd, &_ss23_ContiguousArrayStorageCySS_10Foundation12CharacterSetVtGMR);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation12CharacterSetVtMd, &_sSS_10Foundation12CharacterSetVtMR);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1A8FCA180;
  v9 = (v8 + v7);
  v10 = *(v5 + 48);
  *v9 = 0x48435F4C4147454CLL;
  v9[1] = 0xEF52455443415241;
  static CharacterSet.illegalCharacters.getter();
  CharacterSet.inverted.getter();
  (*(v1 + 8))(v4, v0);
  v11 = (v9 + v6);
  v12 = *(v5 + 48);
  *v11 = 0xD000000000000010;
  v11[1] = 0x80000001A8FD8B20;
  CharacterSet.init(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v13 = (v9 + 2 * v6);
  v14 = *(v5 + 48);
  *v13 = 0xD000000000000029;
  v13[1] = 0x80000001A8FD8B40;
  CharacterSet.init(charactersIn:)();
  v15._countAndFlagsBits = 0xC08090D0A5C22;
  v15._object = 0xE700000000000000;
  CharacterSet.remove(charactersIn:)(v15);
  v16 = (v9 + 3 * v6);
  v17 = *(v5 + 48);
  *v16 = 0xD000000000000015;
  v16[1] = 0x80000001A8FD8B70;
  static CharacterSet.swiftIdentifierHead.getter();
  v18 = (v9 + 4 * v6);
  v19 = *(v5 + 48);
  *v18 = 0xD00000000000001ALL;
  v18[1] = 0x80000001A8FD8B90;
  static CharacterSet.swiftIdentifierHead.getter();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  CharacterSet.insert(charactersIn:)();
  v20 = (v9 + 5 * v6);
  v21 = *(v5 + 48);
  *v20 = 0xD000000000000012;
  v20[1] = 0x80000001A8FD8BB0;
  static CharacterSet.controlCharacters.getter();
  v22 = (v9 + 6 * v6);
  v23 = *(v5 + 48);
  *v22 = 0x4150534554494857;
  v22[1] = 0xEB00000000534543;
  static CharacterSet.whitespaces.getter();
  v24 = (v9 + 7 * v6);
  v25 = *(v5 + 48);
  *v24 = 0xD000000000000018;
  v24[1] = 0x80000001A8FD8BD0;
  static CharacterSet.whitespacesAndNewlines.getter();
  v26 = *(v5 + 48);
  strcpy(&v9[v6], "DECIMAL_DIGITS");
  HIBYTE(v9[v6 + 1]) = -18;
  static CharacterSet.decimalDigits.getter();
  v27 = (v9 + 9 * v6);
  v28 = *(v5 + 48);
  *v27 = 0x5352455454454CLL;
  v27[1] = 0xE700000000000000;
  static CharacterSet.letters.getter();
  v29 = (v9 + 10 * v6);
  v30 = *(v5 + 48);
  *v29 = 0xD000000000000011;
  v29[1] = 0x80000001A8FD8BF0;
  static CharacterSet.lowercaseLetters.getter();
  v31 = (v9 + 11 * v6);
  v32 = *(v5 + 48);
  *v31 = 0xD000000000000011;
  v31[1] = 0x80000001A8FD8C10;
  static CharacterSet.uppercaseLetters.getter();
  v33 = (v9 + 12 * v6);
  v34 = *(v5 + 48);
  *v33 = 0xD000000000000013;
  v33[1] = 0x80000001A8FD8C30;
  static CharacterSet.nonBaseCharacters.getter();
  v35 = v9 + 13 * v6;
  v36 = *(v5 + 48);
  strcpy(v35, "ALPHANUMERICS");
  *(v35 + 7) = -4864;
  static CharacterSet.alphanumerics.getter();
  v37 = v9 + 14 * v6;
  v38 = *(v5 + 48);
  strcpy(v37, "DECOMPOSABLES");
  *(v37 + 7) = -4864;
  static CharacterSet.decomposables.getter();
  v39 = (v9 + 15 * v6);
  v40 = *(v5 + 48);
  *v39 = 0xD000000000000012;
  v39[1] = 0x80000001A8FD8C50;
  static CharacterSet.illegalCharacters.getter();
  v41 = &v9[2 * v6];
  v42 = *(v5 + 48);
  *v41 = 0xD000000000000016;
  v41[1] = 0x80000001A8FD8C70;
  static CharacterSet.punctuationCharacters.getter();
  v43 = (v9 + 17 * v6);
  v44 = *(v5 + 48);
  *v43 = 0xD000000000000013;
  v43[1] = 0x80000001A8FD8C90;
  static CharacterSet.capitalizedLetters.getter();
  v45 = (v9 + 18 * v6);
  v46 = *(v5 + 48);
  *v45 = 0x534C4F424D5953;
  v45[1] = 0xE700000000000000;
  static CharacterSet.symbols.getter();
  v47 = (v9 + 19 * v6);
  v48 = *(v5 + 48);
  *v47 = 0x53454E494C57454ELL;
  v47[1] = 0xE800000000000000;
  static CharacterSet.newlines.getter();
  v49 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation12CharacterSetVTt0g5Tf4g_n(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static Grammar.characterSetLookup = v49;
  return result;
}

uint64_t Grammar.root.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 Grammar.init(backusNaurForm:prependSpaceToRootRule:)@<Q0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = static BackusNaurParser.parsedRules(_:)(a1, a2);

  if (!v4)
  {
    Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v7, a3 & 1, MEMORY[0x1E69E7CC0], v11);
    v9 = v11[1];
    result = v12;
    v10 = v13;
    *a4 = v11[0];
    *(a4 + 8) = v9;
    *(a4 + 16) = result;
    *(a4 + 32) = v10;
  }

  return result;
}

__n128 Grammar.init(rules:prependSpaceToRootRule:)@<Q0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(a1, a2, MEMORY[0x1E69E7CC0], v8);
  if (!v3)
  {
    v6 = v8[1];
    result = v9;
    v7 = v10;
    *a3 = v8[0];
    *(a3 + 8) = v6;
    *(a3 + 16) = result;
    *(a3 + 32) = v7;
  }

  return result;
}

uint64_t Grammar.init(backusNaurForm:prependSpaceToRootRule:cacheableResursiveNonTerminals:)@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = static BackusNaurParser.parsedRules(_:)(a1, a2);

  if (v5)
  {
  }

  result = Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)(v9, a3 & 1, a4, v14);
  v11 = v14[1];
  v12 = v15;
  v13 = v16;
  *a5 = v14[0];
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 32) = v13;
  return result;
}

uint64_t Grammar.init(rules:prependSpaceToRootRule:cacheableResursiveNonTerminals:)@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v104 = a3;
  v121 = a2;
  v103[0] = a4;
  v6 = type metadata accessor for CharacterSet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v110 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v109 = v103 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v119 = v103 - v13;

  v15 = Array<A>.nonTerminals()(v14);

  v16 = *(v15 + 16);
  if (v16)
  {
    v113 = a1;
    v17 = 0;
    v103[1] = v15;
    v18 = v15 + 32;
    *&v116 = v7 + 16;
    v114 = v7 + 32;
    v118 = MEMORY[0x1E69E7CC0];
    v105 = (v7 + 8);
    v108 = xmmword_1A8FC9400;
    v107 = v16;
    v106 = v15 + 32;
    do
    {
      v19 = (v18 + 16 * v17);
      v20 = *v19;
      v4 = v19[1];
      v21 = one-time initialization token for characterSetLookup;

      if (v21 != -1)
      {
        swift_once();
      }

      v22 = static Grammar.characterSetLookup;
      if (*(static Grammar.characterSetLookup + 16) && (, *&v117 = v20, v23 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v4), v25 = v24, , (v25 & 1) != 0))
      {
        v26 = *(v7 + 72);
        v27 = *(v22 + 56) + v26 * v23;
        v28 = v109;
        v115 = *(v7 + 16);
        v115(v109, v27, v6);
        v29 = v7;
        v111 = *(v7 + 32);
        v111(v119, v28, v6);
        v30 = v118;
        v31 = v118[2] + 1;
        while (--v31)
        {
          v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
          lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
          v30 = (v30 + v26);
          if (dispatch thunk of static Equatable.== infix(_:_:)())
          {
            (*v105)(v119, v6);

            v7 = v29;
            v16 = v107;
            v18 = v106;
            goto LABEL_4;
          }
        }

        v115(v110, v119, v6);
        v7 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v118[2] + 1, 1, v118);
        }

        v18 = v106;
        v34 = v118[2];
        v33 = v118[3];
        if (v34 >= v33 >> 1)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v118);
        }

        v35 = v118;
        v118[2] = v34 + 1;
        v111(&v35[((*(v7 + 80) + 32) & ~*(v7 + 80)) + v34 * v26], v110, v6);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
        v36 = swift_allocObject();
        *(v36 + 16) = v108;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v37 = *(type metadata accessor for Symbol(0) - 8);
        v38 = *(v37 + 72);
        v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = swift_allocObject();
        *(v40 + 16) = v108;
        v115((v40 + v39), v119, v6);
        type metadata accessor for TerminalSymbol(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        *(v36 + 32) = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v113 + 2) + 1, 1, v113);
        }

        v16 = v107;
        v42 = *(v113 + 2);
        v41 = *(v113 + 3);
        if (v42 >= v41 >> 1)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v113);
        }

        (*v105)(v119, v6);
        v43 = v113;
        *(v113 + 2) = v42 + 1;
        v44 = &v43[24 * v42];
        *(v44 + 4) = v117;
        *(v44 + 5) = v4;
        *(v44 + 6) = v36;
      }

      else
      {
      }

LABEL_4:
      ++v17;
    }

    while (v17 != v16);

    a1 = v113;
  }

  else
  {

    v118 = MEMORY[0x1E69E7CC0];
  }

  v45 = MEMORY[0x1E69E7CC0];
  v46 = *(a1 + 2);
  v113 = a1;
  if (v46)
  {
    v120[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
    v47 = v120[0];
    v48 = (a1 + 40);
    v49 = v46;
    do
    {
      v51 = *(v48 - 1);
      v50 = *v48;
      v120[0] = v47;
      v53 = *(v47 + 16);
      v52 = *(v47 + 24);

      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v47 = v120[0];
      }

      *(v47 + 16) = v53 + 1;
      v54 = v47 + 16 * v53;
      *(v54 + 32) = v51;
      *(v54 + 40) = v50;
      v48 += 3;
      --v49;
    }

    while (v49);
    v55 = v47;
    v120[0] = v45;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
    v56 = v120[0];
    v57 = v113 + 48;
    do
    {
      v4 = *v57;
      v120[0] = v56;
      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      v60 = v59 + 1;

      if (v59 >= v58 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
        v56 = v120[0];
      }

      *(v56 + 16) = v60;
      *(v56 + 8 * v59 + 32) = v4;
      v57 += 24;
      --v46;
    }

    while (v46);
    v120[0] = v45;
LABEL_35:
    v61 = 0;
    *&v117 = v56 + 32;
    *&v116 = v55;
    v115 = v56;
    v114 = v60;
    while (v61 < *(v56 + 16))
    {
      v119 = v61;
      v62 = *(v117 + 8 * v61);
      v63 = *(v62 + 16);

      if (v63)
      {
        v61 = 0;
        v46 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v61 >= *(v62 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          v64 = *(v62 + 32 + 8 * v61);
          v4 = *(v64 + 16);
          v55 = *(v46 + 16);
          v65 = v4 + v55;
          if (__OFADD__(v55, v4))
          {
            goto LABEL_71;
          }

          v66 = *(v62 + 32 + 8 * v61);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v65 <= *(v46 + 24) >> 1)
          {
            if (!*(v64 + 16))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v55 <= v65)
            {
              v68 = v4 + v55;
            }

            else
            {
              v68 = v55;
            }

            v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v68, 1, v46);
            if (!*(v64 + 16))
            {
LABEL_41:

              if (v4)
              {
                goto LABEL_72;
              }

              goto LABEL_42;
            }
          }

          v55 = *(v46 + 16);
          v69 = (*(v46 + 24) >> 1) - v55;
          v70 = *(type metadata accessor for Symbol(0) - 8);
          if (v69 < v4)
          {
            goto LABEL_73;
          }

          v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
          v72 = *(v70 + 72);
          swift_arrayInitWithCopy();

          if (v4)
          {
            v73 = *(v46 + 16);
            v74 = __OFADD__(v73, v4);
            v75 = v4 + v73;
            if (v74)
            {
              __break(1u);
LABEL_87:
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
              v119 = swift_allocObject();
              v116 = xmmword_1A8FC9410;
              *(v119 + 1) = xmmword_1A8FC9410;
              *&v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
              v92 = *(type metadata accessor for Symbol(0) - 8);
              v93 = *(v92 + 72);
              v94 = (*(v92 + 80) + 32) & ~*(v92 + 80);
              v95 = swift_allocObject();
              *(v95 + 16) = v116;

              v96 = v112;
              v97 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x20uLL, 0xE100000000000000);
              v112 = v96;
              *(v95 + v94) = v97;
              swift_storeEnumTagMultiPayload();
              v98 = (v95 + v94 + v93);
              *v98 = v46;
              v98[1] = v61;
              swift_storeEnumTagMultiPayload();
              v99 = v119;
              *(v119 + 4) = v95;
              v100 = swift_allocObject();
              v117 = xmmword_1A8FC9400;
              *(v100 + 16) = xmmword_1A8FC9400;
              v101 = (v100 + v94);
              *v101 = v46;
              v101[1] = v61;
              swift_storeEnumTagMultiPayload();
              *(v99 + 5) = v100;

              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
              v102 = swift_allocObject();
              *(v102 + 16) = v117;
              v46 = 0x45444E4550455250;
              v61 = 0xEF45434150535F44;
              *(v102 + 32) = 0x45444E4550455250;
              *(v102 + 40) = 0xEF45434150535F44;
              v55 = v99;
              *(v102 + 48) = v99;
              v120[0] = v102;

              specialized Array.append<A>(contentsOf:)(v113);
              v4 = v120[0];
              goto LABEL_76;
            }

            *(v46 + 16) = v75;
          }

LABEL_42:
          if (v63 == ++v61)
          {
            goto LABEL_37;
          }
        }
      }

      v46 = MEMORY[0x1E69E7CC0];
LABEL_37:
      v61 = (v119 + 1);

      specialized Array.append<A>(contentsOf:)(v46, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Symbol);
      v55 = v116;
      v56 = v115;
      if (v61 == v114)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  v60 = *(v45 + 16);
  v120[0] = v45;
  v55 = v45;
  v56 = v45;
  if (v60)
  {
    goto LABEL_35;
  }

LABEL_57:
  v76 = v55;

  v77 = v120[0];
  v55 = Array<A>.nonTerminals()(v120[0]);
  Array<A>.terminals()(v77);

  v61 = *(v55 + 2);
  if (v61)
  {
    v79 = 0;
    v46 = (v55 + 40);
    v4 = v120;
    while (v79 < *(v55 + 2))
    {
      v81 = *(v46 - 8);
      v80 = *v46;
      v120[0] = v81;
      v120[1] = v80;
      MEMORY[0x1EEE9AC00](v78);
      v103[-2] = v120;

      v82 = v112;
      v83 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), &v103[-4], v76);
      v112 = v82;
      if ((v83 & 1) == 0)
      {

        lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
        swift_allocError();
        *v85 = v81;
        *(v85 + 8) = v80;
        *(v85 + 16) = 0;
        goto LABEL_69;
      }

      ++v79;
      v46 += 16;
      if (v61 == v79)
      {
        goto LABEL_62;
      }
    }

LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
    goto LABEL_77;
  }

LABEL_62:

  v4 = v113;
  if (!*(v113 + 2))
  {

    lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
    swift_allocError();
    *v86 = 0;
    *(v86 + 8) = 0;
    *(v86 + 16) = 3;
LABEL_69:
    swift_willThrow();
  }

  v46 = *(v113 + 4);
  v61 = *(v113 + 5);
  v55 = *(v113 + 6);
  if (v121)
  {
    if (v46 == 0x45444E4550455250 && v61 == 0xEF45434150535F44)
    {
      v84 = *(v113 + 5);

      v46 = 0x45444E4550455250;
      v61 = 0xEF45434150535F44;
      goto LABEL_76;
    }

LABEL_74:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_87;
    }
  }

LABEL_76:
  GuidedGenerationOverrides.init()(v120);
  if (one-time initialization token for isInternalInstall != -1)
  {
    goto LABEL_90;
  }

LABEL_77:
  v87 = v112;
  if (!isInternalInstall || ((v120[8])(&v122, v120[5]), v122 == 2) || (v122 & 1) == 0)
  {

    specialized static Grammar.validateNoRightRecursiveRules(rules:)(v89);
    if (!v87)
    {
      outlined destroy of GuidedGenerationOverrides(v120);

      goto LABEL_85;
    }

    swift_bridgeObjectRelease_n();
    outlined destroy of GuidedGenerationOverrides(v120);
  }

  result = outlined destroy of GuidedGenerationOverrides(v120);
LABEL_85:
  v90 = v103[0];
  *v103[0] = v104;
  v90[1] = v46;
  v90[2] = v61;
  v90[3] = v55;
  v91 = v118;
  v90[4] = v4;
  v90[5] = v91;
  return result;
}

uint64_t static NonTerminalSymbol.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t Rule.description.getter()
{
  v1 = type metadata accessor for Symbol(0);
  v39 = *(v1 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v35 = v0[1];
    v36 = v5;
    v44 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = 0;
    v12 = v44;
    v40 = v7 + 32;
    v37 = v8;
    v38 = v7;
    while (v11 < *(v7 + 16))
    {
      v43 = v11;
      v13 = *(v40 + 8 * v11);
      v14 = *(v13 + 16);
      if (v14)
      {
        v42 = v12;
        v46 = v9;

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
        v15 = v46;
        v16 = *(v39 + 80);
        v41 = v13;
        v17 = v13 + ((v16 + 32) & ~v16);
        v18 = *(v39 + 72);
        do
        {
          _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v17, v4, type metadata accessor for Symbol);
          v19 = Symbol.description.getter();
          v21 = v20;
          outlined destroy of Symbol(v4, type metadata accessor for Symbol);
          v46 = v15;
          v23 = *(v15 + 16);
          v22 = *(v15 + 24);
          if (v23 >= v22 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
            v15 = v46;
          }

          *(v15 + 16) = v23 + 1;
          v24 = v15 + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
          v17 += v18;
          --v14;
        }

        while (v14);
        v12 = v42;
        v9 = MEMORY[0x1E69E7CC0];
        v8 = v37;
        v7 = v38;
      }

      else
      {
        v25 = *(v40 + 8 * v11);

        v15 = v9;
      }

      v46 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v26 = BidirectionalCollection<>.joined(separator:)();
      v28 = v27;

      v44 = v12;
      v30 = *(v12 + 16);
      v29 = *(v12 + 24);
      if (v30 >= v29 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v12 = v44;
      }

      v11 = v43 + 1;
      *(v12 + 16) = v30 + 1;
      v31 = v12 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      if (v11 == v8)
      {
        v6 = v35;
        v5 = v36;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v44 = 60;
    v45 = 0xE100000000000000;
    MEMORY[0x1AC57C120](v5, v6);
    MEMORY[0x1AC57C120](0x203D3A3A203ELL, 0xE600000000000000);
    v46 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    MEMORY[0x1AC57C120](v32, v34);

    return v44;
  }

  return result;
}

uint64_t Symbol.description.getter()
{
  v52 = type metadata accessor for TerminalSymbol(0);
  v1 = *(v52 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v52);
  v5 = (v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v50 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v50 - v9;
  v11 = type metadata accessor for Symbol(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v0, v14, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v14;
      v17 = *(*v14 + 16);
      if (v17)
      {
        v59 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
        v18 = v59;
        v19 = v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
        v20 = *(v1 + 72);
        v50[1] = v16;
        v51 = v20;
        do
        {
          _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v19, v8, type metadata accessor for TerminalSymbol);
          _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v8, v5, type metadata accessor for TerminalSymbol);
          v21 = swift_getEnumCaseMultiPayload();
          if ((v21 - 1) >= 2)
          {
            if (v21)
            {
              v26 = TerminalSymbol.description.getter();
            }

            else
            {
              v24 = *v5;
              if (*v5 > 0x7F)
              {
                v31 = (*v5 & 0x3F) << 8;
                if (v24 >= 0x800)
                {
                  v32 = v24 >> 12;
                  v33 = (v31 | (v24 >> 6) & 0x3F) << 8;
                  v34 = HIWORD(v24);
                  v25 = (((v33 | (v24 >> 12) & 0x3F) << 8) | (v24 >> 18)) - 2122219023;
                  v35 = v32 + v33 + 8487393;
                  if (!v34)
                  {
                    v25 = v35;
                  }
                }

                else
                {
                  v25 = (v24 >> 6) + v31 + 33217;
                }
              }

              else
              {
                v25 = v24 + 1;
              }

              v57 = (v25 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v25) >> 3))));
              v26 = static String._uncheckedFromUTF8(_:)();
            }

            v22 = v26;
            v23 = v27;
            outlined destroy of Symbol(v8, type metadata accessor for TerminalSymbol);
          }

          else
          {
            outlined destroy of Symbol(v5, type metadata accessor for TerminalSymbol);
            outlined destroy of Symbol(v8, type metadata accessor for TerminalSymbol);
            v22 = 0;
            v23 = 0xE000000000000000;
          }

          v59 = v18;
          v29 = *(v18 + 16);
          v28 = *(v18 + 24);
          if (v29 >= v28 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
            v18 = v59;
          }

          *(v18 + 16) = v29 + 1;
          v30 = v18 + 16 * v29;
          *(v30 + 32) = v22;
          *(v30 + 40) = v23;
          v19 += v51;
          --v17;
        }

        while (v17);
      }

      else
      {
        v40 = *v14;

        v18 = MEMORY[0x1E69E7CC0];
      }

      v59 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v41 = BidirectionalCollection<>.joined(separator:)();
      v43 = v42;

      v59 = 34;
      v60 = 0xE100000000000000;
      v57 = v41;
      v58 = v43;
      v55 = 92;
      v56 = 0xE100000000000000;
      v53 = 23644;
      v54 = 0xE200000000000000;
      lazy protocol witness table accessor for type String and conformance String();
      v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v46 = v45;

      v57 = v44;
      v58 = v46;
      v55 = 34;
      v56 = 0xE100000000000000;
      v53 = 8796;
      v54 = 0xE200000000000000;
      v47 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v49 = v48;

      MEMORY[0x1AC57C120](v47, v49);

      MEMORY[0x1AC57C120](34, 0xE100000000000000);
    }

    else
    {
      v38 = *v14;
      v39 = v14[1];
      v59 = 60;
      v60 = 0xE100000000000000;
      MEMORY[0x1AC57C120](v38, v39);
      MEMORY[0x1AC57C120](62, 0xE100000000000000);
    }

    return v59;
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v14, v10, type metadata accessor for TerminalSymbol);
    v36 = TerminalSymbol.description.getter();
    outlined destroy of Symbol(v10, type metadata accessor for TerminalSymbol);
    return v36;
  }
}

uint64_t Array<A>.nonTerminals()(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = v34;
    v5 = (v2 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v34 + 16);
      v7 = *(v34 + 24);
      v9 = v8 + 1;

      if (v8 >= v7 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
      }

      *(v34 + 16) = v9;
      *(v34 + 8 * v8 + 32) = v6;
      v5 += 3;
      --v1;
    }

    while (v1);
    v35 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    v35 = MEMORY[0x1E69E7CC0];
    v10 = MEMORY[0x1E69E7CC0];
    if (!v9)
    {
LABEL_31:

      v30 = Array<A>.nonTerminals()(v10);

      return v30;
    }
  }

  v11 = 0;
  v32 = v4;
  v33 = v4 + 32;
  v31 = v9;
  while (1)
  {
    if (v11 >= *(v4 + 16))
    {
      goto LABEL_37;
    }

    v13 = *(v33 + 8 * v11);
    v14 = *(v13 + 16);

    if (v14)
    {
      break;
    }

    v12 = MEMORY[0x1E69E7CC0];
LABEL_10:
    ++v11;

    result = specialized Array.append<A>(contentsOf:)(v12, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Symbol);
    v4 = v32;
    if (v11 == v31)
    {
      v10 = v35;
      goto LABEL_31;
    }
  }

  v15 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (v15 < *(v13 + 16))
  {
    v16 = *(v13 + 32 + 8 * v15);
    v17 = *(v16 + 16);
    v18 = v12[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      goto LABEL_33;
    }

    v20 = *(v13 + 32 + 8 * v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v19 <= v12[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v22 = v18 + v17;
      }

      else
      {
        v22 = v18;
      }

      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v22, 1, v12);
      if (*(v16 + 16))
      {
LABEL_26:
        v23 = (v12[3] >> 1) - v12[2];
        result = type metadata accessor for Symbol(0);
        v24 = *(result - 8);
        if (v23 < v17)
        {
          goto LABEL_35;
        }

        v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
        v26 = *(v24 + 72);
        swift_arrayInitWithCopy();

        if (v17)
        {
          v27 = v12[2];
          v28 = __OFADD__(v27, v17);
          v29 = v27 + v17;
          if (v28)
          {
            goto LABEL_36;
          }

          v12[2] = v29;
        }

        goto LABEL_15;
      }
    }

    if (v17)
    {
      goto LABEL_34;
    }

LABEL_15:
    if (v14 == ++v15)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

TokenGenerationCore::Rule __swiftcall Rule.init(nonterminal:_:)(TokenGenerationCore::NonTerminalSymbol nonterminal, Swift::OpaquePointer _)
{
  v3 = *(nonterminal.identifier._countAndFlagsBits + 8);
  *v2 = *nonterminal.identifier._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = nonterminal.identifier._object;
  result.symbol = nonterminal;
  result.expression.choices = _;
  return result;
}

char *Array<A>.nonTerminals()(uint64_t a1)
{
  v2 = type metadata accessor for Symbol(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v9 = v20 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v12 = *(v7 + 72);
  v13 = MEMORY[0x1E69E7CC0];
  v20[1] = v2;
  do
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v11, v9, type metadata accessor for Symbol);
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v9, v6, type metadata accessor for Symbol);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v14 = *v6;
      v15 = v6[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v17 = *(v13 + 2);
      v16 = *(v13 + 3);
      if (v17 >= v16 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v13);
      }

      *(v13 + 2) = v17 + 1;
      v18 = &v13[16 * v17];
      *(v18 + 4) = v14;
      *(v18 + 5) = v15;
    }

    else
    {
      outlined destroy of Symbol(v6, type metadata accessor for Symbol);
    }

    v11 += v12;
    --v10;
  }

  while (v10);
  return v13;
}

size_t Array<A>.terminals()(uint64_t a1)
{
  v32 = type metadata accessor for TerminalSymbol(0);
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Symbol(0);
  v5 = *(*(v34 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v34);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v30 - v10;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v14 = MEMORY[0x1E69E7CC0];
  v33 = *(v9 + 72);
  v30 = xmmword_1A8FC9400;
  while (1)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v13, v11, type metadata accessor for Symbol);
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v11, v8, type metadata accessor for Symbol);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        result = outlined destroy of Symbol(v11, type metadata accessor for Symbol);
        v17 = *v8;
      }

      else
      {
        outlined destroy of Symbol(v8, type metadata accessor for Symbol);
        result = outlined destroy of Symbol(v11, type metadata accessor for Symbol);
        v17 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v18 = v31;
      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v8, v31, type metadata accessor for TerminalSymbol);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore14TerminalSymbolOGMR);
      v19 = *(v2 + 72);
      v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = v30;
      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v18, v17 + v20, type metadata accessor for TerminalSymbol);
      result = outlined destroy of Symbol(v11, type metadata accessor for Symbol);
    }

    v21 = *(v17 + 16);
    v22 = v14[2];
    v23 = v22 + v21;
    if (__OFADD__(v22, v21))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v23 <= v14[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 <= v23)
      {
        v24 = v22 + v21;
      }

      else
      {
        v24 = v22;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v24, 1, v14);
      v14 = result;
      if (*(v17 + 16))
      {
LABEL_19:
        if ((v14[3] >> 1) - v14[2] < v21)
        {
          goto LABEL_27;
        }

        v25 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v26 = *(v2 + 72);
        swift_arrayInitWithCopy();

        if (v21)
        {
          v27 = v14[2];
          v28 = __OFADD__(v27, v21);
          v29 = v27 + v21;
          if (v28)
          {
            goto LABEL_28;
          }

          v14[2] = v29;
        }

        goto LABEL_4;
      }
    }

    if (v21)
    {
      goto LABEL_26;
    }

LABEL_4:
    v13 += v33;
    if (!--v12)
    {
      return v14;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t Grammar.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v40 - v4;
  v6 = *(v0 + 32);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v9 = 0;
    v10 = v6 + 48;
    v43 = *(v6 + 16);
    v40 = v7 - 1;
    v41 = v6 + 48;
    do
    {
      v42 = v8;
      v11 = (v10 + 24 * v9);
      v12 = v9;
      while (1)
      {
        if (v12 >= *(v6 + 16))
        {
          __break(1u);
          return result;
        }

        v14 = *(v11 - 2);
        v13 = *(v11 - 1);
        v15 = *v11;
        v16 = one-time initialization token for characterSetLookup;
        swift_bridgeObjectRetain_n();

        if (v16 != -1)
        {
          swift_once();
        }

        v17 = static Grammar.characterSetLookup;
        if (!*(static Grammar.characterSetLookup + 16))
        {
          break;
        }

        v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_12;
        }

        ++v12;
        v21 = *(v17 + 56);
        v22 = type metadata accessor for CharacterSet();
        v23 = *(v22 - 8);
        (*(v23 + 16))(v5, v21 + *(v23 + 72) * v18, v22);
        (*(v23 + 56))(v5, 0, 1, v22);

        result = outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
        v11 += 3;
        if (v43 == v12)
        {
          v8 = v42;
          goto LABEL_17;
        }
      }

LABEL_12:
      v24 = type metadata accessor for CharacterSet();
      (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
      outlined destroy of [Regex2BNF.CharacterPredicate](v5, &_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
      v8 = v42;
      result = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
        v8 = v44;
      }

      v26 = *(v8 + 16);
      v25 = *(v8 + 24);
      if (v26 >= v25 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v8 = v44;
      }

      v9 = v12 + 1;
      *(v8 + 16) = v26 + 1;
      v27 = (v8 + 24 * v26);
      v27[4] = v14;
      v27[5] = v13;
      v27[6] = v15;
      v10 = v41;
    }

    while (v40 != v12);
  }

LABEL_17:
  v28 = *(v8 + 16);
  if (v28)
  {
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
    v29 = v46;
    v30 = (v8 + 40);
    do
    {
      v31 = *v30;
      v44 = *(v30 - 1);
      v45 = v31;
      v32 = Rule.description.getter();
      v46 = v29;
      v35 = *(v29 + 16);
      v34 = *(v29 + 24);
      if (v35 >= v34 >> 1)
      {
        v37 = v32;
        v38 = v33;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        v33 = v38;
        v32 = v37;
        v29 = v46;
      }

      *(v29 + 16) = v35 + 1;
      v36 = v29 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v30 = (v30 + 24);
      --v28;
    }

    while (v28);
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v44 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v39 = BidirectionalCollection<>.joined(separator:)();

  return v39;
}

uint64_t Grammar.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for CharacterSet();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v25[1] = v1[1];
  v26 = v10;
  MEMORY[0x1AC57CB80](*(v7 + 16));
  v12 = *(v7 + 16);
  if (v12)
  {
    v13 = (v7 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      String.hash(into:)();

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(v8 + 16));
  v16 = *(v8 + 16);
  if (v16)
  {
    v17 = (v8 + 32);
    do
    {
      v18 = *v17++;

      specialized Array<A>.hash(into:)(a1, v18);

      --v16;
    }

    while (v16);
  }

  specialized Array<A>.hash(into:)(a1, v26);
  result = MEMORY[0x1AC57CB80](*(v11 + 16));
  v20 = *(v11 + 16);
  if (v20)
  {
    v21 = *(v27 + 16);
    v22 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v23 = *(v27 + 72);
    v24 = (v27 + 8);
    do
    {
      v21(v6, v22, v3);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
      dispatch thunk of Hashable.hash(into:)();
      result = (*v24)(v6, v3);
      v22 += v23;
      --v20;
    }

    while (v20);
  }

  return result;
}

Swift::Int Grammar.hashValue.getter()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = *(v0 + 2);
  v7 = *(v0 + 1);
  v8 = v2;
  Hasher.init(_seed:)();
  Grammar.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Grammar()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = *(v0 + 2);
  v7 = *(v0 + 1);
  v8 = v2;
  Hasher.init(_seed:)();
  Grammar.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Grammar()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = *(v0 + 2);
  v7 = *(v0 + 1);
  v8 = v2;
  Hasher.init(_seed:)();
  Grammar.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t Rule.symbol.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Rule.symbol.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t Rule.expression.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 16);

  *(v1 + 16) = v2;
  return result;
}

uint64_t static Rule.serialize(_:)(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Array<A>.description.getter(a1);
  static String.Encoding.utf8.getter();
  v7 = String.data(using:allowLossyConversion:)();
  v9 = v8;

  result = (*(v3 + 8))(v6, v2);
  if (v9 >> 60 != 15)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v16;
    v4 = (a1 + 40);
    do
    {
      v14 = *(v4 - 1);
      v15 = *v4;
      v5 = Rule.description.getter();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 = (v4 + 24);
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

unint64_t static Rule.deserializeRules(fromSerializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (v6)
  {
    a2 = static BackusNaurParser.parsedRules(_:)(v5, v6);
  }

  else
  {
    lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
  }

  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Rule.CodingKeys()
{
  if (*v0)
  {
    result = 0x6973736572707865;
  }

  else
  {
    result = 0x6C6F626D7973;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Rule.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Rule.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Rule.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Rule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v15 = v9;
  v16 = 0;
  lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  v11 = v13[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v11)
  {
    v14 = v13[0];
    v16 = 1;
    lazy protocol witness table accessor for type Expression and conformance Expression();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t Rule.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  String.hash(into:)();
  result = MEMORY[0x1AC57CB80](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;

      specialized Array<A>.hash(into:)(a1, v9);

      --v7;
    }

    while (v7);
  }

  return result;
}

Swift::Int Rule.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC57CB80](*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;

      specialized Array<A>.hash(into:)(v8, v6);

      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t Rule.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore4RuleV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v15[0];
  v11 = v15[1];
  v16 = 1;
  lazy protocol witness table accessor for type Expression and conformance Expression();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v15[0];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Rule()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Rule.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Rule()
{
  v2[9] = *v0;
  v3 = *(v0 + 8);
  Hasher.init(_seed:)();
  Rule.hash(into:)(v2);
  return Hasher._finalize()();
}

size_t Array<A>.updatingReferences(from:to:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v54 = type metadata accessor for Symbol(0);
  v6 = *(v54 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v54);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v39 - v11);
  v40 = *(a3 + 16);
  if (!v40)
  {

    return a3;
  }

  v13 = *a1;
  v52 = a1[1];
  v53 = v13;
  v14 = *a2;
  v50 = a2[1];
  v51 = v14;

  v16 = 0;
  while (1)
  {
    if (v16 >= *(a3 + 16))
    {
      goto LABEL_37;
    }

    v42 = v16;
    v17 = (a3 + 24 * v16);
    v18 = v17[5];
    v41 = v17[4];
    v19 = v17[6];
    v20 = *(v19 + 16);
    v44 = v18;
    v45 = a3;

    result = swift_bridgeObjectRetain_n();
    v43 = v19;
    v46 = v20;
    if (v20)
    {
      break;
    }

LABEL_25:
    swift_bridgeObjectRetain_n();

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      a3 = v45;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v45);
      a3 = result;
    }

    if (v42 >= *(a3 + 16))
    {
      goto LABEL_38;
    }

    v34 = (a3 + 24 * v42);
    v35 = v34[5];
    v36 = v34[6];
    v37 = v42 + 1;
    v38 = v44;
    v34[4] = v41;
    v34[5] = v38;
    v34[6] = v19;

    swift_bridgeObjectRelease_n();

    v16 = v37;
    if (v37 == v40)
    {
      return a3;
    }
  }

  v21 = 0;
  v19 = v43;
  while (1)
  {
    if (v21 >= *(v19 + 16))
    {
      goto LABEL_35;
    }

    v47 = v21;
    v48 = v19;
    v22 = *(v19 + 8 * v21 + 32);
    v23 = v22[2];
    result = swift_bridgeObjectRetain_n();
    v49 = v22;
    if (v23)
    {
      break;
    }

LABEL_21:
    swift_bridgeObjectRetain_n();

    v19 = v48;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
    }

    if (v47 >= *(v19 + 16))
    {
      goto LABEL_36;
    }

    v31 = v47 + 1;
    v32 = v19 + 8 * v47;
    v33 = *(v32 + 32);
    *(v32 + 32) = v22;
    swift_bridgeObjectRelease_n();

    v21 = v31;
    if (v31 == v46)
    {
      goto LABEL_25;
    }
  }

  v24 = 0;
  v22 = v49;
  while (v24 < v22[2])
  {
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = *(v6 + 72) * v24;
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22 + v25 + v26, v12, type metadata accessor for Symbol);
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v12, v10, type metadata accessor for Symbol);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      outlined destroy of Symbol(v10, type metadata accessor for Symbol);
      goto LABEL_17;
    }

    if (*v10 == v53 && v10[1] == v52)
    {
      v27 = v10[1];
    }

    else
    {
      v28 = v10[1];
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    outlined destroy of Symbol(v12, type metadata accessor for Symbol);
    v30 = v50;
    *v12 = v51;
    v12[1] = v30;
    swift_storeEnumTagMultiPayload();

LABEL_17:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
      v22 = result;
    }

    if (v24 >= v22[2])
    {
      goto LABEL_34;
    }

    ++v24;
    result = outlined assign with take of Symbol(v12, v22 + v25 + v26);
    if (v23 == v24)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Symbol.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x696D7265746E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E696D726574;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Symbol.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Symbol.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.NonterminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.NonterminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.TerminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.TerminalCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Symbol.NonterminalCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Symbol.TerminalSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Symbol.TerminalSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Symbol.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - v10;
  v38 = type metadata accessor for TerminalSymbol(0);
  v12 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Symbol(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v19 = *(v48 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v22 = &v37 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v47, v18, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v18;
      LOBYTE(v49) = 1;
      lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();
      v26 = v41;
      v27 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14TerminalSymbolOGMd, &_sSay19TokenGenerationCore14TerminalSymbolOGMR);
      lazy protocol witness table accessor for type [TerminalSymbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [TerminalSymbol] and conformance <A> [A], &lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol);
      v28 = v44;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v43 + 8))(v26, v28);
      (*(v19 + 8))(v22, v27);
    }

    else
    {
      v33 = *v18;
      v32 = v18[1];
      LOBYTE(v49) = 2;
      lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();
      v34 = v42;
      v35 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v33;
      v50 = v32;
      lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
      v36 = v46;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v45 + 8))(v34, v36);
      (*(v19 + 8))(v22, v35);
    }
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v18, v14, type metadata accessor for TerminalSymbol);
    LOBYTE(v49) = 0;
    lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();
    v29 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol);
    v30 = v40;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v39 + 8))(v11, v30);
    outlined destroy of Symbol(v14, type metadata accessor for TerminalSymbol);
    return (*(v19 + 8))(v22, v29);
  }
}

uint64_t Symbol.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TerminalSymbol(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Symbol(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v11, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v13 = *v11;
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1AC57CB80](1);
      specialized Array<A>.hash(into:)(a1, v13);
    }

    else
    {
      v15 = v11[1];
      MEMORY[0x1AC57CB80](2);
      String.hash(into:)();
    }
  }

  else
  {
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v11, v7, type metadata accessor for TerminalSymbol);
    MEMORY[0x1AC57CB80](0);
    TerminalSymbol.hash(into:)();
    return outlined destroy of Symbol(v7, type metadata accessor for TerminalSymbol);
  }
}

uint64_t Symbol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO21NonterminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v67 = *(v64 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v73 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO26TerminalSequenceCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO18TerminalCodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v65 = *(v8 - 8);
  v66 = v8;
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v59 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6SymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v75 = *(v71 - 8);
  v11 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v13 = &v59 - v12;
  v14 = type metadata accessor for Symbol(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v59 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v28 = a1[3];
  v27 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys();
  v29 = v76;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v29)
  {
    v61 = v21;
    v62 = v24;
    v60 = v18;
    v31 = v70;
    v30 = v71;
    v33 = v72;
    v32 = v73;
    v76 = v26;
    v63 = v14;
    v34 = v74;
    v35 = KeyedDecodingContainer.allKeys.getter();
    v36 = *(v35 + 16);
    if (!v36 || ((v37 = *(v35 + 32), v36 == 1) ? (v38 = v37 == 3) : (v38 = 1), v38))
    {
      v39 = v13;
      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v30;
      v43 = v42;
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v43 = v63;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v75 + 8))(v39, v41);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v35 + 32))
      {
        if (v37 == 1)
        {
          LOBYTE(v77) = 1;
          lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore14TerminalSymbolOGMd, &_sSay19TokenGenerationCore14TerminalSymbolOGMR);
          lazy protocol witness table accessor for type [TerminalSymbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [TerminalSymbol] and conformance <A> [A], &lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol);
          v46 = v69;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v68 + 8))(v33, v46);
          (*(v75 + 8))(v13, v30);
          swift_unknownObjectRelease();
          v56 = v61;
          *v61 = v77;
        }

        else
        {
          LOBYTE(v77) = 2;
          lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys();
          v51 = v32;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v34;
          lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
          v53 = v51;
          v54 = v64;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v55 = v75;
          (*(v67 + 8))(v53, v54);
          (*(v55 + 8))(v13, v30);
          swift_unknownObjectRelease();
          v57 = v78;
          v56 = v60;
          *v60 = v77;
          v56[1] = v57;
        }

        swift_storeEnumTagMultiPayload();
        v58 = v56;
        v50 = v76;
        _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v58, v76, type metadata accessor for Symbol);
      }

      else
      {
        LOBYTE(v77) = 0;
        lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for TerminalSymbol(0);
        lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol);
        v47 = v62;
        v48 = v30;
        v49 = v66;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v65 + 8))(v31, v49);
        (*(v75 + 8))(v13, v48);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v50 = v76;
        _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v47, v76, type metadata accessor for Symbol);
        v45 = v34;
      }

      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v50, v45, type metadata accessor for Symbol);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v79);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TerminalSymbol.contains(_:)(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for TerminalSymbol(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v7, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = 0;
    }

    else
    {
      v14 = *v7 == a1;
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v14 = CharacterSet.contains(_:)();
    (*(v9 + 8))(v12, v8);
  }

  return v14 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TerminalSymbol.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TerminalSymbol.Kind()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TerminalSymbol.Kind()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TerminalSymbol.Kind@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TerminalSymbol.Kind.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TerminalSymbol.Kind(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000072;
  v3 = 0x80000001A8FD8270;
  v4 = 0xD00000000000001BLL;
  if (*v1 != 2)
  {
    v4 = 0x65646F4338667475;
    v3 = 0xEC00000074696E55;
  }

  if (*v1)
  {
    v2 = 0xEC00000074655372;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x6574636172616863;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TerminalSymbol.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TerminalSymbol.CodingKeys()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TerminalSymbol.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TerminalSymbol.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized TerminalSymbol.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TerminalSymbol.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1684957547;
  v5 = 0xEC00000074655372;
  v6 = 0x6574636172616863;
  v7 = 0x80000001A8FD8270;
  v8 = 0xD00000000000001BLL;
  if (v2 != 3)
  {
    v8 = 0x65646F4338667475;
    v7 = 0xEC00000074696E55;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574636172616863;
    v3 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TerminalSymbol.CodingKeys()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0x6574636172616863;
  v4 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v4 = 0x65646F4338667475;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance TerminalSymbol.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized TerminalSymbol.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TerminalSymbol.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetSgMd, &_sSS3key_10Foundation12CharacterSetV5valuetSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v51 = (&v51 - v8);
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v51 - v14;
  v15 = type metadata accessor for TerminalSymbol(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v51 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v58 = *(v22 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v21, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined destroy of Symbol(v21, type metadata accessor for TerminalSymbol);
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of Symbol(v21, type metadata accessor for TerminalSymbol);
    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v64 = v28;
  v63 = 0;
  lazy protocol witness table accessor for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind();
  v29 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v29)
  {
    return (*(v58 + 8))(v25, v22);
  }

  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v2, v19, type metadata accessor for TerminalSymbol);
  v30 = swift_getEnumCaseMultiPayload();
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      v50 = *v19;
      v62 = 4;
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v58 + 8))(v25, v22);
    }

    v32 = v54;
    v33 = (*(v56 + 32))(v54, v19, v55);
    if (one-time initialization token for characterSetLookup != -1)
    {
      v33 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v33);
    *(&v51 - 2) = v32;
    v34 = v52;
    specialized Sequence.first(where:)(partial apply for closure #2 in TerminalSymbol.encode(to:), (&v51 - 4), v35, v52);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
    result = (*(*(v36 - 8) + 48))(v34, 1, v36);
    if (result != 1)
    {
      v39 = *v34;
      v38 = v34[1];
      v40 = v55;
      v41 = *(v56 + 8);
      v41(v34 + *(v36 + 48), v55);
      v61 = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v58 + 8))(v25, v22);

      v42 = v54;
      return (v41)(v42, v40);
    }

    __break(1u);
  }

  else
  {
    if (!v30)
    {
      v31 = *v19;
      v59 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      return (*(v58 + 8))(v25, v22);
    }

    v43 = v53;
    v44 = (*(v56 + 32))(v53, v19, v55);
    if (one-time initialization token for characterSetLookup != -1)
    {
      v44 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v44);
    *(&v51 - 2) = v43;
    v45 = v51;
    specialized Sequence.first(where:)(partial apply for closure #1 in TerminalSymbol.encode(to:), (&v51 - 4), v46, v51);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
    result = (*(*(v47 - 8) + 48))(v45, 1, v47);
    if (result != 1)
    {
      v49 = *v45;
      v48 = v45[1];
      v40 = v55;
      v41 = *(v56 + 8);
      v41(v45 + *(v47 + 48), v55);
      v60 = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v58 + 8))(v25, v22);

      v42 = v53;
      return (v41)(v42, v40);
    }
  }

  __break(1u);
  return result;
}

uint64_t TerminalSymbol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore14TerminalSymbolO10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v48 - v7;
  v9 = type metadata accessor for TerminalSymbol(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v13 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v15 = v53;
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v51 = v12;
  v16 = v52;
  v17 = v5;
  LOBYTE(v56) = 0;
  lazy protocol witness table accessor for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = v8;
  v18 = v4;
  v19 = v17;
  if (v54 > 1u)
  {
    if (v54 != 2)
    {
      LOBYTE(v54) = 2;
      v32 = v50;
      v33 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v17 + 8))(v32, v4);
      v20 = v53;
      v34 = v51;
      *v51 = v33;
      v43 = v34;
      goto LABEL_24;
    }

    LOBYTE(v54) = 3;
    result = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v53;
    if (one-time initialization token for characterSetLookup != -1)
    {
      v44 = result;
      v45 = v31;
      swift_once();
      result = v44;
      v31 = v45;
      v19 = v17;
    }

    v35 = static Grammar.characterSetLookup;
    if (*(static Grammar.characterSetLookup + 16))
    {
      v49 = v31;
      result = specialized __RawDictionaryStorage.find<A>(_:)(result, v31);
      if (v36)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_28;
  }

  v20 = v53;
  if (!v54)
  {
    LOBYTE(v54) = 1;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    if (HIWORD(v21) > 0x10u || (v21 & 0xFFFFF800) == 55296)
    {
      v24 = v19;
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v52 = v26;
      v27 = v20[4];
      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      dispatch thunk of Decoder.codingPath.getter();
      v54 = 0;
      v55 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v54 = 0xD00000000000001ALL;
      v55 = 0x80000001A8FD8A20;
      v56 = v22;
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v28);

      v29 = v52;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v29, *MEMORY[0x1E69E6B00], v25);
      swift_willThrow();
      (*(v24 + 8))(v50, v18);
LABEL_25:
      v15 = v20;
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    (*(v19 + 8))(v50, v4);
    v43 = v51;
    *v51 = v22;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v43, v16, type metadata accessor for TerminalSymbol);
    goto LABEL_25;
  }

  LOBYTE(v54) = 2;
  result = KeyedDecodingContainer.decode(_:forKey:)();
  if (one-time initialization token for characterSetLookup != -1)
  {
LABEL_28:
    v46 = result;
    v47 = v31;
    swift_once();
    result = v46;
    v31 = v47;
    v19 = v17;
  }

  v35 = static Grammar.characterSetLookup;
  if (!*(static Grammar.characterSetLookup + 16))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v49 = v31;
  result = specialized __RawDictionaryStorage.find<A>(_:)(result, v31);
  if (v37)
  {
LABEL_23:
    v38 = result;
    v39 = *(v35 + 56);
    v40 = type metadata accessor for CharacterSet();
    v41 = *(v40 - 8);
    v42 = v39 + *(v41 + 72) * v38;
    v43 = v51;
    (*(v41 + 16))(v51, v42, v40);
    (*(v19 + 8))(v50, v4);

    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

void TerminalSymbol.hash(into:)()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TerminalSymbol(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v0, v9, type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v11 = *v9;
      MEMORY[0x1AC57CB80](0);
      Hasher._combine(_:)(v11);
      return;
    }

    (*(v2 + 32))(v5, v9, v1);
    v12 = 1;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v2 + 32))(v5, v9, v1);
    v12 = 2;
LABEL_7:
    MEMORY[0x1AC57CB80](v12);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
    return;
  }

  v13 = *v9;
  MEMORY[0x1AC57CB80](3);
  Hasher._combine(_:)(v13);
}

Swift::Int Symbol.hashValue.getter(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Symbol(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Symbol(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NonTerminalSymbol.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NonTerminalSymbol.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NonTerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NonTerminalSymbol.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NonTerminalSymbol.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t NonTerminalSymbol.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int NonTerminalSymbol.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NonTerminalSymbol.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NonTerminalSymbol(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore17NonTerminalSymbolV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Expression.choices.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Expression.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736563696F6863 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Expression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Expression.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Expression.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6ChoiceVGMd, &_sSay19TokenGenerationCore6ChoiceVGMR);
  lazy protocol witness table accessor for type [Choice] and conformance <A> [A](&lazy protocol witness table cache variable for type [Choice] and conformance <A> [A], lazy protocol witness table accessor for type Choice and conformance Choice);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

uint64_t Expression.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  result = MEMORY[0x1AC57CB80](*(*v1 + 16));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = (v3 + 32);
    do
    {
      v7 = *v6++;

      specialized Array<A>.hash(into:)(a1, v7);

      --v5;
    }

    while (v5);
  }

  return result;
}

Swift::Int Expression.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;

      specialized Array<A>.hash(into:)(v6, v4);

      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t Expression.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore10ExpressionV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6ChoiceVGMd, &_sSay19TokenGenerationCore6ChoiceVGMR);
    lazy protocol witness table accessor for type [Choice] and conformance <A> [A](&lazy protocol witness table cache variable for type [Choice] and conformance <A> [A], lazy protocol witness table accessor for type Choice and conformance Choice);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Expression()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  Expression.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Expression()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  Expression.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Symbol.NonterminalCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Symbol.NonterminalCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC57CB80](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Choice.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Choice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Choice.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Choice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedEncodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6SymbolOGMd, &_sSay19TokenGenerationCore6SymbolOGMR);
  lazy protocol witness table accessor for type [Symbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [Symbol] and conformance <A> [A], &lazy protocol witness table cache variable for type Symbol and conformance Symbol);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

Swift::Int Choice.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t Choice.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMd, &_ss22KeyedDecodingContainerVy19TokenGenerationCore6ChoiceV10CodingKeys33_FD89BF8DB07CC083F3A49A1D922ED557LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19TokenGenerationCore6SymbolOGMd, &_sSay19TokenGenerationCore6SymbolOGMR);
    lazy protocol witness table accessor for type [Symbol] and conformance <A> [A](&lazy protocol witness table cache variable for type [Symbol] and conformance <A> [A], &lazy protocol witness table cache variable for type Symbol and conformance Symbol);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Choice()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Choice()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

unint64_t InvalidGrammar.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    if (*(v0 + 16))
    {
      _StringGuts.grow(_:)(41);

      v3 = 0xD000000000000027;
    }

    else
    {
      _StringGuts.grow(_:)(33);

      v3 = 0xD00000000000001FLL;
    }

    goto LABEL_7;
  }

  if (*(v0 + 16) == 2)
  {
    _StringGuts.grow(_:)(27);

    v3 = 0xD000000000000019;
LABEL_7:
    v5 = v3;
    MEMORY[0x1AC57C120](v2, v1);
    return v5;
  }

  return 0xD000000000000028;
}

uint64_t InvalidGrammar.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return MEMORY[0x1AC57CB80](0);
    }

    v3 = 3;
  }

  else if (*(v0 + 16))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC57CB80](v3);

  return String.hash(into:)();
}

Swift::Int InvalidGrammar.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x1AC57CB80](0);
      return Hasher._finalize()();
    }

    v4 = 3;
  }

  else if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1AC57CB80](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance InvalidGrammar()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x1AC57CB80](0);
      return Hasher._finalize()();
    }

    v4 = 3;
  }

  else if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1AC57CB80](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance InvalidGrammar()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return MEMORY[0x1AC57CB80](0);
    }

    v3 = 3;
  }

  else if (*(v0 + 16))
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1AC57CB80](v3);

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance InvalidGrammar()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x1AC57CB80](0);
      return Hasher._finalize()();
    }

    v4 = 3;
  }

  else if (v3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x1AC57CB80](v4);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, MEMORY[0x1E69E5ED0]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v8 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CharacterSet();
  v5 = MEMORY[0x1E69680B8];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, MEMORY[0x1E69680B8]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69680B8], &lazy protocol witness table cache variable for type CharacterSet and conformance CharacterSet, v5, MEMORY[0x1E69680C8]);
}

{
  v3 = MEMORY[0x1AC57CB60](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for JSONSchema();
  v5 = MEMORY[0x1E69A0AF8];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, MEMORY[0x1E69A0AF8]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69A0AF8], &lazy protocol witness table cache variable for type JSONSchema and conformance JSONSchema, v5, MEMORY[0x1E69A0B10]);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for JSONSchema.Property();
  v5 = MEMORY[0x1E69A0AD0];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type JSONSchema.Property and conformance JSONSchema.Property, MEMORY[0x1E69A0AD0]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69A0AD0], &lazy protocol witness table cache variable for type JSONSchema.Property and conformance JSONSchema.Property, v5, MEMORY[0x1E69A0AE0]);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for SpecialToken();
  v5 = MEMORY[0x1E69C63C0];
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type SpecialToken and conformance SpecialToken, MEMORY[0x1E69C63C0]);
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, MEMORY[0x1E69C63C0], &lazy protocol witness table cache variable for type SpecialToken and conformance SpecialToken, v5, MEMORY[0x1E69C63D0]);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  v3 = MEMORY[0x1AC57CB50](*(v1 + 40), a1, 1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, TerminalSymbol.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, Prompt.SpecialToken.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(v10);
  v7 = Hasher._finalize()();

  return a3(a1, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = type metadata accessor for TerminalSymbol(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(*(v2 + 48) + v13 * v11, v9, type metadata accessor for TerminalSymbol);
      v14 = specialized static TerminalSymbol.== infix(_:_:)(v9, a1);
      outlined destroy of Symbol(v9, type metadata accessor for TerminalSymbol);
      if (v14)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC57C5A0](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v43 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  v13 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v43 - v14;
  v54 = type metadata accessor for Prompt.SpecialToken(0);
  v16 = *(*(v54 - 1) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v19 = (&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v3 + 64;
  v52 = v3;
  v20 = -1 << *(v3 + 32);
  v21 = a2 & ~v20;
  if ((*(v3 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v49 = ~v20;
    v22 = *a1;
    v23 = a1[1];
    v24 = (v7 + 48);
    v43 = (v7 + 32);
    v46 = (v7 + 8);
    v50 = *(v17 + 72);
    v53 = a1;
    v25 = v47;
    do
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(*(v52 + 48) + v50 * v21, v19, type metadata accessor for Prompt.SpecialToken);
      v26 = *v19 == v22 && v19[1] == v23;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_5;
      }

      v27 = v23;
      v28 = v22;
      v29 = v54[5];
      v30 = *(v48 + 48);
      outlined init with copy of Locale?(v19 + v29, v15);
      outlined init with copy of Locale?(v53 + v29, &v15[v30]);
      v31 = *v24;
      if ((*v24)(v15, 1, v6) == 1)
      {
        v32 = v31(&v15[v30], 1, v6);
        v22 = v28;
        if (v32 != 1)
        {
          goto LABEL_4;
        }

        outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v23 = v27;
      }

      else
      {
        outlined init with copy of Locale?(v15, v25);
        if (v31(&v15[v30], 1, v6) == 1)
        {
          (*v46)(v25, v6);
          v22 = v28;
LABEL_4:
          outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
          v23 = v27;
          goto LABEL_5;
        }

        v33 = v44;
        (*v43)(v44, &v15[v30], v6);
        lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770]);
        v45 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = *v46;
        v35 = v33;
        v25 = v47;
        (*v46)(v35, v6);
        v34(v25, v6);
        outlined destroy of [Regex2BNF.CharacterPredicate](v15, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
        v22 = v28;
        v23 = v27;
        if ((v45 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v36 = v54[6];
      v37 = (v19 + v36);
      v38 = *(v19 + v36 + 8);
      v39 = (v53 + v36);
      v40 = v39[1];
      if (v38)
      {
        if (!v40)
        {
          goto LABEL_5;
        }

        v41 = *v37 == *v39 && v38 == v40;
        if (!v41 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      else if (v40)
      {
        goto LABEL_5;
      }

      if (*(v19 + v54[7]) == *(v53 + v54[7]))
      {
        outlined destroy of Symbol(v19, type metadata accessor for Prompt.SpecialToken);
        return v21;
      }

LABEL_5:
      outlined destroy of Symbol(v19, type metadata accessor for Prompt.SpecialToken);
      v21 = (v21 + 1) & v49;
    }

    while (((*(v51 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
  }

  return v21;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar()
{
  result = lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar;
  if (!lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar;
  if (!lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvalidGrammar and conformance InvalidGrammar);
  }

  return result;
}

uint64_t specialized static InvalidGrammar.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of InvalidGrammar(v6, v5, 2u);
          outlined copy of InvalidGrammar(v3, v2, 2u);
          outlined consume of InvalidGrammar(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        outlined copy of InvalidGrammar(v14, v2, 2u);
        outlined copy of InvalidGrammar(v3, v2, 2u);
        outlined consume of InvalidGrammar(v3, v2, 2u);
        v20 = v3;
        v21 = v2;
        v22 = 2;
        goto LABEL_32;
      }

      goto LABEL_27;
    }

    if (v7 != 3 || (v5 | v6) != 0)
    {
      goto LABEL_27;
    }

    outlined consume of InvalidGrammar(*a1, v2, 3u);
    v20 = 0;
    v21 = 0;
    v22 = 3;
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v8 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
          outlined copy of InvalidGrammar(v6, v5, 0);
          outlined copy of InvalidGrammar(v3, v2, 0);
          outlined consume of InvalidGrammar(v3, v2, 0);
          v11 = v6;
          v12 = v5;
          v13 = 0;
LABEL_22:
          outlined consume of InvalidGrammar(v11, v12, v13);
          return v10 & 1;
        }

        outlined copy of InvalidGrammar(v8, v2, 0);
        outlined copy of InvalidGrammar(v3, v2, 0);
        outlined consume of InvalidGrammar(v3, v2, 0);
        v20 = v3;
        v21 = v2;
        v22 = 0;
        goto LABEL_32;
      }

LABEL_27:
      outlined copy of InvalidGrammar(*a2, *(a2 + 8), v7);
      outlined copy of InvalidGrammar(v3, v2, v4);
      outlined consume of InvalidGrammar(v3, v2, v4);
      outlined consume of InvalidGrammar(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_27;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of InvalidGrammar(v6, v5, 1u);
      outlined copy of InvalidGrammar(v3, v2, 1u);
      outlined consume of InvalidGrammar(v3, v2, 1u);
      v11 = v6;
      v12 = v5;
      v13 = 1;
      goto LABEL_22;
    }

    outlined copy of InvalidGrammar(v16, v2, 1u);
    outlined copy of InvalidGrammar(v3, v2, 1u);
    outlined consume of InvalidGrammar(v3, v2, 1u);
    v20 = v3;
    v21 = v2;
    v22 = 1;
  }

LABEL_32:
  outlined consume of InvalidGrammar(v20, v21, v22);
  return 1;
}

uint64_t specialized static TerminalSymbol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = type metadata accessor for CharacterSet();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = type metadata accessor for TerminalSymbol(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v41 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v41 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v41 - v25;
  v27 = *(v24 + 56);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(a1, &v41 - v25, type metadata accessor for TerminalSymbol);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v44, &v26[v27], type metadata accessor for TerminalSymbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v26, v21, type metadata accessor for TerminalSymbol);
      if (!swift_getEnumCaseMultiPayload())
      {
        v29 = *v21;
        v30 = *&v26[v27];
LABEL_12:
        v35 = v29 == v30;
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v26, v19, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v42;
      v37 = v43;
      (*(v42 + 32))(v8, &v26[v27], v43);
      v35 = static CharacterSet.== infix(_:_:)();
      v39 = *(v38 + 8);
      v39(v8, v37);
      v39(v19, v37);
      goto LABEL_13;
    }

    v16 = v19;
LABEL_15:
    (*(v42 + 8))(v16, v43);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 2)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v26, v13, type metadata accessor for TerminalSymbol);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v29 = *v13;
      v30 = v26[v27];
      goto LABEL_12;
    }

LABEL_16:
    outlined destroy of [Regex2BNF.CharacterPredicate](v26, &_s19TokenGenerationCore14TerminalSymbolO_ACtMd, &_s19TokenGenerationCore14TerminalSymbolO_ACtMR);
    v35 = 0;
    return v35 & 1;
  }

  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v26, v16, type metadata accessor for TerminalSymbol);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_15;
  }

  v32 = v42;
  v31 = v43;
  v33 = &v26[v27];
  v34 = v41;
  (*(v42 + 32))(v41, v33, v43);
  v35 = static CharacterSet.== infix(_:_:)();
  v36 = *(v32 + 8);
  v36(v34, v31);
  v36(v16, v31);
LABEL_13:
  outlined destroy of Symbol(v26, type metadata accessor for TerminalSymbol);
  return v35 & 1;
}

uint64_t specialized static Rule.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v2, v3);

  return v5 & 1;
}

uint64_t specialized static Symbol.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TerminalSymbol(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Symbol(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v33 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v33 - v21;
  v23 = (&v33 + *(v20 + 56) - v21);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(a1, &v33 - v21, type metadata accessor for Symbol);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(a2, v23, type metadata accessor for Symbol);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v17, type metadata accessor for Symbol);
    if (!swift_getEnumCaseMultiPayload())
    {
      _s19TokenGenerationCore14TerminalSymbolOWObTm_0(v23, v7, type metadata accessor for TerminalSymbol);
      v26 = specialized static TerminalSymbol.== infix(_:_:)(v17, v7);
      outlined destroy of Symbol(v7, type metadata accessor for TerminalSymbol);
      outlined destroy of Symbol(v17, type metadata accessor for TerminalSymbol);
      goto LABEL_18;
    }

    outlined destroy of Symbol(v17, type metadata accessor for TerminalSymbol);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v15, type metadata accessor for Symbol);
    v25 = *v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore14TerminalSymbolO_Tt1g5(v25, *v23);

LABEL_18:
      outlined destroy of Symbol(v22, type metadata accessor for Symbol);
      return v26 & 1;
    }

    goto LABEL_14;
  }

  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v22, v12, type metadata accessor for Symbol);
  v28 = *v12;
  v27 = v12[1];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_14:

LABEL_15:
    outlined destroy of [Regex2BNF.CharacterPredicate](v22, &_s19TokenGenerationCore6SymbolO_ACtMd, &_s19TokenGenerationCore6SymbolO_ACtMR);
    goto LABEL_16;
  }

  if (v28 == *v23 && v27 == v23[1])
  {

    goto LABEL_20;
  }

  v30 = v23[1];
  v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v31)
  {
LABEL_20:
    outlined destroy of Symbol(v22, type metadata accessor for Symbol);
    v26 = 1;
    return v26 & 1;
  }

  outlined destroy of Symbol(v22, type metadata accessor for Symbol);
LABEL_16:
  v26 = 0;
  return v26 & 1;
}

uint64_t specialized static Grammar.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*a1, *a2) & 1) == 0 || (v2 != v7 || v4 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_bridgeObjectRetain_n();

  swift_bridgeObjectRetain_n();
  v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore6ChoiceV_Tt1g5(v3, v8);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  if ((v12 & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ19TokenGenerationCore4RuleV_Tt1g5(v6, v11) & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation12CharacterSetV_Tt1g5(v5, v10);
}

uint64_t specialized static Grammar.validateNoRightRecursiveRules(rules:)(uint64_t a1)
{
  v2 = type metadata accessor for Symbol(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v47 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v42 - v8);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return result;
  }

  v11 = 0;
  v12 = a1 + 32;
  v42 = a1 + 32;
  v43 = v10;
  while (1)
  {
    v13 = (v12 + 24 * v11);
    v14 = v13[2];
    v15 = *(v14 + 16);
    if (v15)
    {
      break;
    }

LABEL_4:
    if (++v11 == v10)
    {
      return result;
    }
  }

  v44 = v11;
  v16 = v13[1];
  v50 = *v13;
  v48 = v16;
  swift_bridgeObjectRetain_n();
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  while (1)
  {
    if (v17 >= *(v14 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = *(v14 + 8 * v17 + 32);
    v19 = *(v18 + 16);
    if (v19)
    {
      break;
    }

LABEL_8:
    if (v15 == ++v17)
    {
      swift_bridgeObjectRelease_n();
      result = swift_bridgeObjectRelease_n();
      v10 = v43;
      v11 = v44;
      v12 = v42;
      goto LABEL_4;
    }
  }

  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v54 = *(v3 + 72);
  _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v18 + v20 + v54 * (v19 - 1), v9, type metadata accessor for Symbol);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = outlined destroy of Symbol(v9, type metadata accessor for Symbol);
    goto LABEL_8;
  }

  if (v50 == *v9 && v48 == v9[1])
  {
    v21 = v9[1];

    goto LABEL_18;
  }

  v46 = v20;
  LODWORD(v49) = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v49 & 1) == 0)
  {

    goto LABEL_8;
  }

  v20 = v46;
LABEL_18:
  v51 = v50;
  v52 = v48;
  v53 = v14;
  v22 = Rule.description.getter();
  v24 = v23;

  v25 = *(v18 + 16);
  if (v25)
  {
    v49 = v22;
    v50 = v24;
    v51 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v51;
    v27 = v18 + v20;
    do
    {
      v28 = v47;
      _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(v27, v47, type metadata accessor for Symbol);
      v29 = Symbol.description.getter();
      v31 = v30;
      outlined destroy of Symbol(v28, type metadata accessor for Symbol);
      v51 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v26 = v51;
      }

      *(v26 + 16) = v33 + 1;
      v34 = v26 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v27 += v54;
      --v25;
    }

    while (v25);

    v22 = v49;
    v24 = v50;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v51 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  v51 = 0;
  v52 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v51 = 0x203A656C7552;
  v52 = 0xE600000000000000;
  MEMORY[0x1AC57C120](v22, v24);

  MEMORY[0x1AC57C120](0xD00000000000001ELL, 0x80000001A8FD8B00);
  MEMORY[0x1AC57C120](v35, v37);

  v38 = v51;
  v39 = v52;
  lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
  v40 = swift_allocError();
  *v41 = v38;
  *(v41 + 8) = v39;
  *(v41 + 16) = 1;
  v45 = v40;
  return swift_willThrow();
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Symbol(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type GuidedGenerationError and conformance GuidedGenerationError()
{
  result = lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError;
  if (!lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError;
  if (!lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GuidedGenerationError and conformance GuidedGenerationError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rule.CodingKeys and conformance Rule.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys;
  if (!lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule.CodingKeys and conformance Rule.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol()
{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol and conformance NonTerminalSymbol);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Expression and conformance Expression()
{
  result = lazy protocol witness table cache variable for type Expression and conformance Expression;
  if (!lazy protocol witness table cache variable for type Expression and conformance Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression and conformance Expression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression and conformance Expression;
  if (!lazy protocol witness table cache variable for type Expression and conformance Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression and conformance Expression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression and conformance Expression;
  if (!lazy protocol witness table cache variable for type Expression and conformance Expression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression and conformance Expression);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.CodingKeys and conformance Symbol.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.CodingKeys and conformance Symbol.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.NonterminalCodingKeys and conformance Symbol.NonterminalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalSequenceCodingKeys and conformance Symbol.TerminalSequenceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys()
{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys;
  if (!lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Symbol.TerminalCodingKeys and conformance Symbol.TerminalCodingKeys);
  }

  return result;
}

uint64_t _s19TokenGenerationCore14TerminalSymbolOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [TerminalSymbol] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore14TerminalSymbolOGMd, &_sSay19TokenGenerationCore14TerminalSymbolOGMR);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(a2, type metadata accessor for TerminalSymbol);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.CodingKeys and conformance TerminalSymbol.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind()
{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind;
  if (!lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TerminalSymbol.Kind and conformance TerminalSymbol.Kind);
  }

  return result;
}

uint64_t partial apply for closure #2 in TerminalSymbol.encode(to:)()
{
  return partial apply for closure #2 in TerminalSymbol.encode(to:)() & 1;
}

{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR) + 48);
  return static CharacterSet.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys;
  if (!lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NonTerminalSymbol.CodingKeys and conformance NonTerminalSymbol.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Expression.CodingKeys and conformance Expression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys;
  if (!lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Expression.CodingKeys and conformance Expression.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Choice and conformance Choice()
{
  result = lazy protocol witness table cache variable for type Choice and conformance Choice;
  if (!lazy protocol witness table cache variable for type Choice and conformance Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice and conformance Choice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice and conformance Choice;
  if (!lazy protocol witness table cache variable for type Choice and conformance Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice and conformance Choice);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice and conformance Choice;
  if (!lazy protocol witness table cache variable for type Choice and conformance Choice)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice and conformance Choice);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Choice] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore6ChoiceVGMd, &_sSay19TokenGenerationCore6ChoiceVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Choice.CodingKeys and conformance Choice.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys;
  if (!lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Choice.CodingKeys and conformance Choice.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Symbol] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19TokenGenerationCore6SymbolOGMd, &_sSay19TokenGenerationCore6SymbolOGMR);
    lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(a2, type metadata accessor for Symbol);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Grammar and conformance Grammar()
{
  result = lazy protocol witness table cache variable for type Grammar and conformance Grammar;
  if (!lazy protocol witness table cache variable for type Grammar and conformance Grammar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Grammar and conformance Grammar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Rule and conformance Rule()
{
  result = lazy protocol witness table cache variable for type Rule and conformance Rule;
  if (!lazy protocol witness table cache variable for type Rule and conformance Rule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule and conformance Rule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Rule and conformance Rule;
  if (!lazy protocol witness table cache variable for type Rule and conformance Rule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Rule and conformance Rule);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for TerminalSymbol(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol);
  result = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(&lazy protocol witness table cache variable for type TerminalSymbol and conformance TerminalSymbol, type metadata accessor for TerminalSymbol);
  *(a1 + 16) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for NonTerminalSymbol(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  result = lazy protocol witness table accessor for type NonTerminalSymbol and conformance NonTerminalSymbol();
  *(a1 + 16) = result;
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

uint64_t getEnumTagSinglePayload for Grammar(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for Grammar(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Rule(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for Rule(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Symbol()
{
  type metadata accessor for TerminalSymbol(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for [TerminalSymbol]();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for [TerminalSymbol]()
{
  if (!lazy cache variable for type metadata for [TerminalSymbol])
  {
    type metadata accessor for TerminalSymbol(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [TerminalSymbol]);
    }
  }
}

uint64_t type metadata completion function for TerminalSymbol()
{
  result = type metadata accessor for CharacterSet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19TokenGenerationCore14InvalidGrammarO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t getEnumTagSinglePayload for TerminalSymbol.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalSymbol.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TerminalSymbol.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TerminalSymbol.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Symbol.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Symbol.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Choice.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Choice.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Rule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Rule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized Symbol.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E696D726574 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8FD8AE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696D7265746E6F6ELL && a2 == 0xEB000000006C616ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t specialized TerminalSymbol.Kind.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TerminalSymbol.Kind.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized TerminalSymbol.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TerminalSymbol.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined assign with take of Symbol(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Symbol(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of InvalidGrammar(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined consume of InvalidGrammar(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t outlined init with take of (key: String, value: CharacterSet)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_10Foundation12CharacterSetV5valuetMd, &_sSS3key_10Foundation12CharacterSetV5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore14TerminalSymbolO_Tt1g5Tm(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      v7 = a3(0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v8 + 16) = a2;
      v9 = *(v7 - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      outlined init with copy of Symbol(v6, v8 + v10, a4);
      v11 = a2 - 1;
      if (a2 != 1)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12 + v10;
        do
        {
          outlined init with copy of Symbol(v6, v13, a4);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    _s19TokenGenerationCore6SymbolOWOhTm_0(v6, a4);
    return v8;
  }

  return result;
}

uint64_t static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(uint64_t *a1, int64_t a2, char a3, uint64_t a4, char a5)
{
  v10 = type metadata accessor for Symbol(0);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v16 = a1[1];
  if ((a3 & 1) == 0 && a2 < 0 || (a5 & 1) == 0 && a4 < 0)
  {
    goto LABEL_5;
  }

  if (a3)
  {
    if ((a5 & 1) == 0)
    {
      if (!a4)
      {
        strcpy(v203, "__EmptyListOf");
        *&v203[14] = -4864;
        v138 = v13;
        MEMORY[0x1AC57C120](v17, v16);
        v139 = *v203;
        v140 = *&v203[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
        v141 = swift_allocObject();
        v201 = xmmword_1A8FC9400;
        *(v141 + 16) = xmmword_1A8FC9400;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
        v142 = *(v138 + 72);
        v143 = (*(v138 + 80) + 32) & ~*(v138 + 80);
        v144 = swift_allocObject();
        *(v144 + 16) = v201;
        *(v144 + v143) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5D5BuLL, 0xE200000000000000);
        swift_storeEnumTagMultiPayload();
        *(v141 + 32) = v144;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
        v17 = swift_allocObject();
        *(v17 + 16) = v201;
        *(v17 + 32) = v139;
        *(v17 + 40) = v140;
        *(v17 + 48) = v141;
        return v17;
      }

      *&v200 = v13;
      if (a4 < 2)
      {
        __break(1u);
      }

      else
      {
        v19 = a4 - 1;
        v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(a4 - 1, 0);
        v21 = a4;
        v22 = v20;
        v196 = v21;
        result = specialized Sequence._copyContents(initializing:)(v203, (v20 + 4), v19, 2, v21);
        if (result == v19)
        {
          v23 = v22[2];
          v24 = MEMORY[0x1E69E7CC0];
          *&v201 = v16;
          if (v23)
          {
            v193 = v10;
            v204 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
            v25 = 4;
            v26 = v204;
            do
            {
              listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v22[v25], v17, v16, v203);
              v27 = *v203;
              v28 = *&v203[8];
              v204 = v26;
              v30 = *(v26 + 16);
              v29 = *(v26 + 24);
              if (v30 >= v29 >> 1)
              {
                v199 = *&v203[8];
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
                v28 = v199;
                v26 = v204;
              }

              *(v26 + 16) = v30 + 1;
              v31 = v26 + 24 * v30;
              *(v31 + 32) = v27;
              *(v31 + 40) = v28;
              ++v25;
              --v23;
              v16 = v201;
            }

            while (v23);

            v24 = MEMORY[0x1E69E7CC0];
          }

          else
          {

            v26 = MEMORY[0x1E69E7CC0];
          }

          v145 = *(v26 + 16);
          v197 = v17;
          if (v145)
          {
            *v203 = v24;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v145, 0);
            v146 = *v203;
            v147 = *(v200 + 80);
            v148 = (v147 + 32) & ~v147;
            v195 = *(v200 + 72);
            *&v199 = v148 + v195;
            *&v194 = v26;
            v149 = (v26 + 40);
            v198 = xmmword_1A8FC9400;
            *&v200 = v147 | 7;
            do
            {
              v151 = *(v149 - 1);
              v150 = *v149;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
              v152 = swift_allocObject();
              *(v152 + 16) = v198;
              v153 = (v152 + v148);
              *v153 = v151;
              v153[1] = v150;
              swift_storeEnumTagMultiPayload();
              *v203 = v146;
              v155 = *(v146 + 16);
              v154 = *(v146 + 24);

              if (v155 >= v154 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1);
                v146 = *v203;
              }

              *(v146 + 16) = v155 + 1;
              *(v146 + 8 * v155 + 32) = v152;
              v149 += 3;
              --v145;
              v156 = v200;
            }

            while (v145);
            v17 = v197;
            v26 = v194;
          }

          else
          {
            v157 = *(v200 + 80);
            v148 = (v157 + 32) & ~v157;
            v195 = *(v200 + 72);
            v156 = v157 | 7;
            v146 = MEMORY[0x1E69E7CC0];
          }

          *&v200 = v156;
          *&v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
          v158 = swift_allocObject();
          v199 = xmmword_1A8FC9400;
          *&v191 = v158;
          *(v158 + 16) = xmmword_1A8FC9400;
          v159 = (v158 + v148);
          v160 = v201;
          *v159 = v17;
          v159[1] = v160;
          swift_storeEnumTagMultiPayload();
          v161 = swift_allocObject();
          *(v161 + 16) = v199;

          v162 = v202;
          v163 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
          *&v194 = v162;
          *(v161 + v148) = v163;
          swift_storeEnumTagMultiPayload();
          *v203 = 0;
          *&v203[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(18);

          strcpy(v203, "__ListOfAtMost");
          v203[15] = -18;
          v164 = v196;
          v204 = v196;
          v165 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1AC57C120](v165);

          MEMORY[0x1AC57C120](v197, v160);
          v190 = *v203;
          v202 = *&v203[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
          v166 = v148;
          inited = swift_initStackObject();
          v192 = xmmword_1A8FC9410;
          *(inited + 16) = xmmword_1A8FC9410;
          *(inited + 32) = v191;
          *(inited + 40) = v161;
          *v203 = v146;
          specialized Array.append<A>(contentsOf:)(inited);
          *&v191 = *v203;
          *v203 = 0;
          *&v203[8] = 0xE000000000000000;
          _StringGuts.grow(_:)(19);

          *v203 = 0x4F79617272415F5FLL;
          *&v203[8] = 0xEF74736F4D744166;
          v204 = v164;
          v168 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1AC57C120](v168);

          MEMORY[0x1AC57C120](v197, v201);
          *&v201 = *v203;
          v197 = *&v203[8];
          v169 = swift_allocObject();
          *(v169 + 16) = v199;
          v170 = v195;
          v171 = 2 * v195;
          v172 = swift_allocObject();
          *(v172 + 16) = xmmword_1A8FCB600;
          v173 = (v172 + v166);
          *v173 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
          swift_storeEnumTagMultiPayload();
          v174 = (v172 + v166 + v170);
          v175 = v190;
          v176 = v202;
          *v174 = v190;
          v174[1] = v176;
          swift_storeEnumTagMultiPayload();

          *(v173 + v171) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
          swift_storeEnumTagMultiPayload();
          *(v169 + 32) = v172;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
          v177 = swift_allocObject();
          *(v177 + 16) = v192;
          v178 = v197;
          *(v177 + 32) = v201;
          *(v177 + 40) = v178;
          *(v177 + 48) = v169;
          *(v177 + 56) = v175;
          v179 = v191;
          *(v177 + 64) = v202;
          *(v177 + 72) = v179;
          *v203 = v177;
          specialized Array.append<A>(contentsOf:)(v26);
          return *v203;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_21:
    v58 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v59 = swift_allocObject();
    v60 = v17;
    v197 = v17;
    v17 = v59;
    v192 = xmmword_1A8FC9410;
    *(v59 + 16) = xmmword_1A8FC9410;
    strcpy(v203, "__ArrayOf");
    *&v203[10] = 0;
    *&v203[12] = -385875968;
    MEMORY[0x1AC57C120](v60, v16);
    v190 = *v203;
    v189 = *&v203[8];
    *&v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
    *&v194 = swift_allocObject();
    v200 = xmmword_1A8FCB600;
    *(v194 + 16) = xmmword_1A8FCB600;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
    v62 = *(v58 + 72);
    v63 = (*(v58 + 80) + 32) & ~*(v58 + 80);
    *&v198 = *(v58 + 80);
    *&v199 = v61;
    v64 = swift_allocObject();
    v188 = xmmword_1A8FC9400;
    *(v64 + 16) = xmmword_1A8FC9400;
    v65 = v202;
    v66 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5D5BuLL, 0xE200000000000000);
    v187 = v65;
    *(v64 + v63) = v66;
    swift_storeEnumTagMultiPayload();
    v67 = v194;
    *(v194 + 32) = v64;
    v195 = 2 * v62;
    v202 = 3 * v62;
    v68 = swift_allocObject();
    *(v68 + 16) = v200;
    v69 = (v68 + v63);
    v70 = v187;
    *v69 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v71 = (v68 + v63 + v62);
    *v71 = v197;
    v71[1] = v16;
    swift_storeEnumTagMultiPayload();

    v72 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
    v186 = v70;
    v73 = v195;
    *(v69 + v195) = v72;
    v74 = v73;
    swift_storeEnumTagMultiPayload();
    *(v67 + 40) = v68;
    v187 = 4 * v62;
    v75 = v62;
    v196 = v62;
    v76 = swift_allocObject();
    v77 = v16;
    v78 = v10;
    v185 = v76;
    *(v76 + 16) = xmmword_1A8FCB620;
    v79 = (v76 + v63);
    v80 = v186;
    *v79 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v81 = (v79 + v75);
    v82 = v197;
    *v81 = v197;
    v81[1] = v77;
    swift_storeEnumTagMultiPayload();

    *(v79 + v74) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
    swift_storeEnumTagMultiPayload();
    v83 = (v79 + v202);
    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    MEMORY[0x1AC57C120](v82, v77);
    v84 = *&v203[8];
    *v83 = *v203;
    v83[1] = v84;
    v193 = v78;
    swift_storeEnumTagMultiPayload();
    v85 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
    v186 = v80;
    *(v79 + v187) = v85;
    swift_storeEnumTagMultiPayload();
    v86 = v194;
    *(v194 + 48) = v185;
    v87 = v189;
    *(v17 + 32) = v190;
    *(v17 + 40) = v87;
    *(v17 + 48) = v86;
    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    v88 = v82;
    *&v201 = v77;
    MEMORY[0x1AC57C120](v82, v77);
    *&v194 = *v203;
    v190 = *&v203[8];
    v89 = swift_allocObject();
    *(v89 + 16) = v192;
    v90 = swift_allocObject();
    *(v90 + 16) = v188;
    v91 = (v90 + v63);
    *v91 = v88;
    v91[1] = v77;
    swift_storeEnumTagMultiPayload();
    *(v89 + 32) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = v200;
    v93 = (v92 + v63);
    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    v94 = v201;

    MEMORY[0x1AC57C120](v88, v94);
    v95 = *&v203[8];
    *v93 = *v203;
    v93[1] = v95;
    swift_storeEnumTagMultiPayload();
    v96 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
    *(v93 + v196) = v96;
    swift_storeEnumTagMultiPayload();
    v97 = (v93 + v195);
    *v97 = v197;
    v97[1] = v94;
    swift_storeEnumTagMultiPayload();
    *(v89 + 40) = v92;
    v98 = v190;
    *(v17 + 56) = v194;
    *(v17 + 64) = v98;
    *(v17 + 72) = v89;

    return v17;
  }

  if (a5)
  {
    if (a2 >= 1)
    {
      v32 = v13;
      listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(a2, *a1, a1[1], v203);
      v33 = *v203;
      *&v192 = 0x80000001A8FD8CB0;
      v200 = *&v203[8];
      listOfItemsRule #1 () in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v17, v16, v203);
      *&v199 = *v203;
      v189 = v200;
      v198 = *&v203[8];
      *v203 = 0;
      *&v203[8] = 0xE000000000000000;
      _StringGuts.grow(_:)(19);

      *v203 = 0x664F7473694C5F5FLL;
      *&v203[8] = 0xEF747361654C7441;
      v204 = a2;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v34);

      MEMORY[0x1AC57C120](v17, v16);
      v195 = *v203;
      *&v194 = *&v203[8];
      v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1A8FC9410;
      v36 = v35;
      v196 = v35;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
      v197 = v17;
      v38 = *(v32 + 72);
      v39 = *(v32 + 80);
      *&v201 = v16;
      v40 = (v39 + 32) & ~v39;
      v186 = v37;
      v41 = swift_allocObject();
      v188 = xmmword_1A8FC9400;
      *(v41 + 16) = xmmword_1A8FC9400;
      v42 = (v41 + v40);
      *&v191 = v33;
      *v42 = v33;
      v42[1] = v200;
      swift_storeEnumTagMultiPayload();
      *(v36 + 32) = v41;
      v183 = v38;
      v185 = 3 * v38;
      v38 *= 2;
      v187 = v38;
      v43 = swift_allocObject();
      v184 = xmmword_1A8FCB600;
      *(v43 + 16) = xmmword_1A8FCB600;
      v44 = (v43 + v40);
      *v44 = v33;
      v44[1] = v200;
      swift_storeEnumTagMultiPayload();
      swift_bridgeObjectRetain_n();
      v45 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      v46 = v183;
      *(v44 + v183) = v45;
      swift_storeEnumTagMultiPayload();
      v47 = (v43 + v40 + v38);
      *v47 = v199;
      v47[1] = v198;
      swift_storeEnumTagMultiPayload();
      *(v196 + 40) = v43;
      *v203 = 0;
      *&v203[8] = 0xE000000000000000;

      _StringGuts.grow(_:)(20);

      *v203 = 0xD000000000000010;
      *&v203[8] = v192;
      v204 = a2;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1AC57C120](v48);

      MEMORY[0x1AC57C120](v197, v201);
      v202 = *v203;
      *&v201 = *&v203[8];
      v49 = swift_allocObject();
      *(v49 + 16) = v188;
      v50 = swift_allocObject();
      *(v50 + 16) = v184;
      v51 = (v50 + v40);
      *v51 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
      swift_storeEnumTagMultiPayload();
      v52 = (v51 + v46);
      v53 = v195;
      v54 = v194;
      *v52 = v195;
      v52[1] = v54;
      swift_storeEnumTagMultiPayload();

      v55 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
      *(v51 + v187) = v55;
      swift_storeEnumTagMultiPayload();
      *(v49 + 32) = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1A8FCB610;
      v56 = v201;
      *(v17 + 32) = v202;
      *(v17 + 40) = v56;
      *(v17 + 48) = v49;
      *(v17 + 56) = v53;
      v57 = v196;
      *(v17 + 64) = v54;
      *(v17 + 72) = v57;
      *(v17 + 80) = v191;
      *(v17 + 88) = v200;
      *(v17 + 104) = v199;
      *(v17 + 112) = v198;
      return v17;
    }

    goto LABEL_21;
  }

  if (a4 < a2)
  {
LABEL_5:
    lazy protocol witness table accessor for type InvalidGrammar and conformance InvalidGrammar();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = v16;
    *(v18 + 16) = 2;
    swift_willThrow();

    return v17;
  }

  if (!a2)
  {
    *v203 = *a1;
    *&v203[8] = v16;
    v180 = v202;
    v181 = static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(v203, 0, 1, a4, 0);
    if (!v180)
    {
      return v181;
    }

    return v17;
  }

  v99 = *a1;
  v100 = a1[1];
  v101 = v13;
  listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)(a2, v99, v100, v203);
  *&v192 = *v203;
  v194 = *&v203[8];
  *v203 = 0;
  *&v203[8] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *v203 = 0xD000000000000014;
  *&v203[8] = 0x80000001A8FD8CD0;
  MEMORY[0x1AC57C120](v17, v16);
  *&v199 = *v203;
  v195 = *&v203[8];
  *&v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  *&v198 = swift_allocObject();
  v191 = xmmword_1A8FC9410;
  *(v198 + 16) = xmmword_1A8FC9410;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v196 = a4;
  v197 = v17;
  v103 = *(v101 + 72);
  *&v201 = v16;
  v104 = *(v101 + 80);
  v105 = (v104 + 32) & ~v104;
  v106 = swift_allocObject();
  v200 = xmmword_1A8FC9400;
  *(v106 + 16) = xmmword_1A8FC9400;
  v107 = v202;
  v108 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0, 0xE000000000000000);
  v190 = v107;
  *(v106 + v105) = v108;
  swift_storeEnumTagMultiPayload();
  v109 = v198;
  *(v198 + 32) = v106;
  v189 = 2 * v103;
  v187 = v104;
  v202 = v102;
  v110 = swift_allocObject();
  *(v110 + 16) = v191;
  v186 = v105;
  v111 = v190;
  v112 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
  v190 = v111;
  *(v110 + v105) = v112;
  swift_storeEnumTagMultiPayload();
  *&v191 = v103;
  v113 = (v110 + v105 + v103);
  v114 = v197;
  *v113 = v197;
  v115 = v201;
  v113[1] = v201;
  swift_storeEnumTagMultiPayload();
  *(v109 + 40) = v110;
  v116 = v195;
  *v15 = v199;
  v15[1] = v116;
  result = swift_storeEnumTagMultiPayload();
  v117 = v196 - a2;
  if (!__OFSUB__(v196, a2))
  {
    v118 = v196;

    v182 = _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore14TerminalSymbolO_Tt1g5Tm(v15, v117, type metadata accessor for Symbol, type metadata accessor for Symbol);
    *v203 = 0;
    *&v203[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v203, "__ListOf");
    v203[9] = 0;
    *&v203[10] = 0;
    *&v203[12] = -402653184;
    v204 = a2;
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v119);

    MEMORY[0x1AC57C120](28500, 0xE200000000000000);
    v204 = v118;
    v120 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v120);

    MEMORY[0x1AC57C120](v114, v115);
    *&v184 = *v203;
    v183 = *&v203[8];
    v121 = swift_allocObject();
    *(v121 + 16) = v200;
    v185 = v121;
    v122 = v191;
    v123 = v186;
    v124 = swift_allocObject();
    *(v124 + 16) = v200;
    v125 = (v124 + v123);
    *v125 = v192;
    v125[1] = v194;
    swift_storeEnumTagMultiPayload();
    *v203 = v124;

    specialized Array.append<A>(contentsOf:)(v182);
    *(v121 + 32) = *v203;
    *v203 = 0;
    *&v203[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    strcpy(v203, "__ArrayOf");
    *&v203[10] = 0;
    *&v203[12] = -385875968;
    v204 = a2;
    v126 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v126);

    MEMORY[0x1AC57C120](28500, 0xE200000000000000);
    v204 = v196;
    v127 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC57C120](v127);

    MEMORY[0x1AC57C120](v197, v201);
    *&v201 = *v203;
    v197 = *&v203[8];
    v128 = swift_allocObject();
    *(v128 + 16) = v200;
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_1A8FCB600;
    v130 = (v129 + v123);
    *v130 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5BuLL, 0xE100000000000000);
    swift_storeEnumTagMultiPayload();
    v131 = (v129 + v123 + v122);
    v132 = v184;
    v133 = v183;
    *v131 = v184;
    v131[1] = v133;
    swift_storeEnumTagMultiPayload();

    v134 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x5DuLL, 0xE100000000000000);
    *(v130 + v189) = v134;
    swift_storeEnumTagMultiPayload();
    *(v128 + 32) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore4RuleVGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A8FCB610;
    v135 = v197;
    *(v17 + 32) = v201;
    *(v17 + 40) = v135;
    *(v17 + 48) = v128;
    *(v17 + 56) = v132;
    v136 = v185;
    *(v17 + 64) = v133;
    *(v17 + 72) = v136;
    *(v17 + 80) = v192;
    *(v17 + 88) = v194;
    v137 = v195;
    *(v17 + 104) = v199;
    *(v17 + 112) = v137;
    *(v17 + 120) = v198;
    return v17;
  }

LABEL_40:
  __break(1u);
  return result;
}

double listOfNItemsRule #1 (_:) in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)@<D0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a3;
  v8 = type metadata accessor for Symbol(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v32 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v16 = (&v32 - v15);
  if (a1 < 1)
  {
    __break(1u);
LABEL_11:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1 > 1, v16, 1, v5);
    goto LABEL_9;
  }

  v32 = v14;
  v34 = a4;
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1, 0, MEMORY[0x1E69E7CC0]);
  v33 = a1;
  v17 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      v18 = v37;
      *v16 = v36;
      v16[1] = v18;
      swift_storeEnumTagMultiPayload();
      v20 = v5[2];
      v19 = v5[3];

      if (v20 >= v19 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v5);
      }

      v5[2] = v20 + 1;
      v21 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v22 = *(v35 + 72);
      outlined init with take of Symbol(v16, v5 + v21 + v22 * v20);
      *v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
      swift_storeEnumTagMultiPayload();
      v24 = v5[2];
      v23 = v5[3];
      if (v24 >= v23 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v23 > 1, v24 + 1, 1, v5);
      }

      v5[2] = v24 + 1;
      outlined init with take of Symbol(v13, v5 + v21 + v24 * v22);
      --v17;
    }

    while (v17);
  }

  v25 = v37;
  v4 = v32;
  *v32 = v36;
  *(v4 + 8) = v25;
  swift_storeEnumTagMultiPayload();
  a4 = v5[2];
  a1 = v5[3];
  v16 = (a4 + 1);

  if (a4 >= a1 >> 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  v5[2] = v16;
  outlined init with take of Symbol(v4, v5 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * a4);
  v39 = 0x664F7473694C5F5FLL;
  v40 = 0xE800000000000000;
  v38 = v33;
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1AC57C120](v26);

  MEMORY[0x1AC57C120](v36, v37);
  v27 = v39;
  v28 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v29 = swift_allocObject();
  *&result = 1;
  *(v29 + 16) = xmmword_1A8FC9400;
  *(v29 + 32) = v5;
  v31 = v34;
  *v34 = v27;
  v31[1] = v28;
  v31[2] = v29;
  return result;
}

uint64_t listOfItemsRule #1 () in static Grammar.arrayRules(itemSymbol:minItems:maxItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  MEMORY[0x1AC57C120]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6ChoiceVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A8FC9410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMd, &_ss23_ContiguousArrayStorageCy19TokenGenerationCore6SymbolOGMR);
  v6 = *(type metadata accessor for Symbol(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A8FC9400;
  v10 = (v9 + v8);
  *v10 = a1;
  v10[1] = a2;
  swift_storeEnumTagMultiPayload();
  *(v5 + 32) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A8FCB600;
  v12 = (v11 + v8);

  MEMORY[0x1AC57C120](a1, a2);
  *v12 = 0x664F7473694C5F5FLL;
  v12[1] = 0xE800000000000000;
  swift_storeEnumTagMultiPayload();
  *(v12 + v7) = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSS17UnicodeScalarViewV_19TokenGenerationCore14TerminalSymbolOs5NeverOTg504_s19gh5Core6k21O8terminalyACSSFZAA08j5D0Os7d2O6E6VXEfU_Tf1cn_n(0x202CuLL, 0xE200000000000000);
  swift_storeEnumTagMultiPayload();
  v13 = (v12 + 2 * v7);
  *v13 = a1;
  v13[1] = a2;
  swift_storeEnumTagMultiPayload();
  *(v5 + 40) = v11;
  *a3 = 0x664F7473694C5F5FLL;
  a3[1] = 0xE800000000000000;
  a3[2] = v5;
}

uint64_t _sSa9repeating5countSayxGx_SitcfC19TokenGenerationCore9Regex2BNFO6SymbolO_Tt1g5Tf4gn_n(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v6 = result;
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v9 = v8;
    *(v8 + 16) = a4;
    *(v8 + 32) = v6;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    v10 = a4 - 1;
    if (v10)
    {
      v11 = (v8 + 72);
      do
      {
        outlined copy of Regex2BNF.Symbol(v6, a2, a3);
        *(v11 - 2) = v6;
        *(v11 - 1) = a2;
        *v11 = a3;
        v11 += 24;
        --v10;
      }

      while (v10);
    }

    outlined copy of Regex2BNF.Symbol(v6, a2, a3);
    return v9;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSS_Tt1g5Tf4gn_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}