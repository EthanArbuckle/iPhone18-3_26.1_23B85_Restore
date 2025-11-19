uint64_t specialized _NativeDictionary.index(after:)(int64_t a1, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    BUG();
  }

  v5 = -1 << *(a4 + 32);
  if (a1 < 0 || -v5 <= a1)
  {
    BUG();
  }

  v6 = *(a4 + 64 + 8 * (a1 >> 6));
  if (!_bittest64(&v6, a1))
  {
    BUG();
  }

  if (*(a4 + 36) != a2)
  {
    BUG();
  }

  result = _HashTable.occupiedBucket(after:)(a1, a4 + 64, ~v5);
  v8 = *(a4 + 36);
  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index()
{
  result = lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index;
  if (!lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.DictionaryType.Index, &type metadata for MLDataValue.DictionaryType.Index);
    lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index;
  if (!lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.DictionaryType.Index, &type metadata for MLDataValue.DictionaryType.Index);
    lazy protocol witness table cache variable for type MLDataValue.DictionaryType.Index and conformance MLDataValue.DictionaryType.Index = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType()
{
  result = lazy protocol witness table cache variable for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType;
  if (!lazy protocol witness table cache variable for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataValue.DictionaryType, &type metadata for MLDataValue.DictionaryType);
    lazy protocol witness table cache variable for type MLDataValue.DictionaryType and conformance MLDataValue.DictionaryType = result;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataValue.DictionaryType.Index(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataValue.DictionaryType.Index(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLDataValue.DictionaryType.Index(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of [A : B].Index._Variant<A, B>(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLDataValue.DictionaryType.Index(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v4, v5, v6);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Slice<CMLDictionary> and conformance <> Slice<A>(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!*a1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<CMLDictionary>);
    lazy protocol witness table accessor for type CMLDictionary and conformance CMLDictionary(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CMLDictionary and conformance CMLDictionary(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for CMLDictionary();
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sis5NeverOTg5058_s8CreateML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n(uint64_t a1, uint64_t a2, __m128d a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v21 = *(a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v5 = v21;
    v6 = a1;
    v7 = a2;
    v8 = _swiftEmptyArrayStorage;
    v9 = xmmword_33DFE0;
    v10 = xmmword_345A50;
    v11 = 0x7FEFFFFFFFFFFFFFLL;
    do
    {
      a3.f64[0] = *(v7 + 16) * *(v6 + 8 * v4 + 32);
      v12 = _mm_or_pd(_mm_and_pd(a3, v9), v10);
      v12.f64[0] = v12.f64[0] + a3.f64[0];
      a3 = _mm_round_sd(a3, v12, 11);
      if ((*&a3.f64[0] & 0x7FFFFFFFFFFFFFFFLL) > v11)
      {
        BUG();
      }

      if (a3.f64[0] <= -9.223372036854778e18)
      {
        BUG();
      }

      if (a3.f64[0] >= 9.223372036854776e18)
      {
        BUG();
      }

      v18 = v8;
      v13 = v8[2];
      v14 = v8[3];
      v15 = v13 + 1;
      if (v14 >> 1 <= v13)
      {
        v16 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v15, 1);
        v15 = v13 + 1;
        a3 = *&a3.f64[0];
        v11 = v16;
        v10 = xmmword_345A50;
        v9 = xmmword_33DFE0;
        v5 = v21;
        v6 = a1;
        v7 = a2;
        v8 = v18;
      }

      ++v4;
      v8[2] = v15;
      v8[v13 + 4] = a3.f64[0];
    }

    while (v5 != v4);
    v7;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 56);
  do
  {
    v4 = *v3;
    v8 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      v7 = *v3;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v8;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 4;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v8 = v7;
  v10 = *(a1 + 16);
  if (v10)
  {
    v26 = *(a1 + 16);
    v33 = a3;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = (a1 + 48);
    v28 = v33 & 1;
    v27 = a2;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v30 = *(v11 - 2);
      v31 = v12;
      LOBYTE(v32) = v13;
      outlined copy of MLDataValue(v30, v12, v13);
      closure #1 in stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(&v30, a2, v28, a4, a5, a6, a7);
      if (v8)
      {
        outlined consume of MLDataValue(v30, v31, v32);

        outlined consume of Result<_DataTable, Error>(v27, v33);
        a7;
        a5;
        BUG();
      }

      outlined consume of MLDataValue(v30, v31, v32);
      v14 = v22;
      v15 = v23;
      v16 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      v18 = v16 + 1;
      if (v17 >> 1 <= v16)
      {
        v34 = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 >= 2, v18, 1);
        v18 = v16 + 1;
        v15 = v34;
        v14 = v22;
      }

      _swiftEmptyArrayStorage[2] = v18;
      v19 = 3 * v16;
      *&_swiftEmptyArrayStorage[v19 + 4] = v14;
      LOBYTE(_swiftEmptyArrayStorage[v19 + 6]) = v15;
      v11 += 24;
      v20 = v26-- == 1;
      v8 = 0;
      a2 = v27;
    }

    while (!v20);
    outlined consume of Result<_DataTable, Error>(v27, v33);
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(a2, a3);
  }

  a7;
  a5;
  return _swiftEmptyArrayStorage;
}

Swift::Int __swiftcall timestampSeed()()
{
  v8[0] = v0;
  v1 = type metadata accessor for Date(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  Date.init()(0);
  v8[0] = Date.timeIntervalSince1970.getter(0);
  (*(v2 + 8))(v8, v1);
  v6 = v8[0] * 1000.0;
  if (COERCE__INT64(fabs(v8[0] * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v6 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v6 >= 9.223372036854776e18)
  {
    BUG();
  }

  return v6;
}

uint64_t specialized Sequence<>.min()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    do
    {
      v3 = fmin(*(a1 + 8 * v5++ + 40), v2);
      v2 = v3;
    }

    while (v1 - 1 != v5);
  }

  return *&v3;
}

void *stratifiedSplitGenerator<A>(proportions:generator:fileURLAndLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v74 = a4;
  v75 = a2;
  v76 = a1;
  v81 = type metadata accessor for URL(0);
  v7 = *(v81 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  a3;
  v93 = specialized _copyCollectionToContiguousArray<A>(_:)(a3);
  specialized MutableCollection<>.sort(by:)(&v93);
  v85 = v5;
  if (v5)
  {

    BUG();
  }

  a3;
  v11 = v93;
  v78 = *(v93 + 2);
  if (v78)
  {
    v77 = v93 + 32;
    v12 = 0;
    v92 = _swiftEmptyArrayStorage;
    v80 = a3;
    v71 = &v66;
    v88 = v7;
    v82 = v93;
    while (1)
    {
      if (v12 >= *(v11 + 2))
      {
        BUG();
      }

      v79 = v12;
      v13 = 16 * v12;
      v14 = *&v77[v13];
      v15 = *&v77[v13 + 8];
      swift_bridgeObjectRetain_n(v15, 2);
      v84 = v14;
      v16 = specialized Dictionary.subscript.getter(v14, v15, a3);
      v90 = v15;
      v15;
      if (!v16)
      {
        BUG();
      }

      v86 = v16;
      v17 = specialized _copyCollectionToContiguousArray<A>(_:)(0, *(v16 + 16));
      v18 = v76;
      v19 = v85;
      v20 = randomSplit<A>(indices:proportions:generator:)(v17, v76, v75, v74, v73);
      v85 = v19;
      if (v19)
      {
        break;
      }

      v89 = v20;

      v72 = *(v18 + 16);
      if (v72)
      {
        v21 = 0;
        v22 = v88;
        v23 = v92;
        v24 = v89;
        do
        {
          v25 = v23[2] <= v21;
          v26 = v23;
          v87 = v21;
          if (v25)
          {
            v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
            v28 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v27, &protocol witness table for String);
            if (!swift_isUniquelyReferenced_nonNull_native(v26))
            {
              v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
            }

            v29 = v26[2];
            v21 = v87;
            if (v26[3] >> 1 <= v29)
            {
              v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26[3] >= 2uLL, v29 + 1, 1, v26);
              v21 = v87;
              v26 = v63;
            }

            v24 = v89;
            v26[2] = v29 + 1;
            v26[v29 + 4] = v28;
            v22 = v88;
          }

          if (v21 >= *(v24 + 16))
          {
            BUG();
          }

          v30 = *(v24 + 8 * v21 + 32);
          v31 = *(v30 + 16);
          v91 = _swiftEmptyArrayStorage;
          if (v31)
          {
            v92 = v26;
            v93 = _swiftEmptyArrayStorage;
            v30;
            v68 = v31;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
            v91 = v93;
            v69 = (*(v22 + 80) + 32) & ~*(v22 + 80);
            v70 = v69 + v86;
            v32 = 0;
            v33 = v81;
            v67 = v30;
            do
            {
              v34 = *(v30 + 8 * v32 + 32);
              if (v34 < 0)
              {
                BUG();
              }

              if (v34 >= *(v86 + 16))
              {
                BUG();
              }

              v83 = *(v22 + 72);
              v35 = v71;
              (*(v22 + 16))(v71, v70 + v83 * v34, v33);
              v36 = v91;
              v93 = v91;
              v37 = v22;
              v38 = *(v91 + 2);
              v39 = *(v91 + 3);
              v40 = v38 + 1;
              if (v39 >> 1 <= v38)
              {
                v91 = (v38 + 1);
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v39 >= 2, v40, 1);
                v40 = v91;
                v37 = v88;
                v33 = v81;
                v36 = v93;
              }

              ++v32;
              *(v36 + 2) = v40;
              v91 = v36;
              v41 = &v36[v69 + v83 * v38];
              v22 = v37;
              (*(v37 + 32))(v41, v35, v33);
              v30 = v67;
            }

            while (v68 != v32);
            v67;
            v26 = v92;
          }

          v90;
          if (!swift_isUniquelyReferenced_nonNull_native(v26))
          {
            v26 = specialized _ArrayBuffer._consumeAndCreateNew()(v26);
          }

          if (v87 >= v26[2])
          {
            BUG();
          }

          v42 = v87;
          LOBYTE(v83) = swift_isUniquelyReferenced_nonNull_native(v26[v87 + 4]);
          v93 = v26[v42 + 4];
          v43 = v93;
          v92 = v26;
          v26[v42 + 4] = 0x8000000000000000;
          v45 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v90);
          v46 = (v44 & 1) == 0;
          v47 = __OFADD__(*(v43 + 2), v46);
          v48 = *(v43 + 2) + v46;
          if (v47)
          {
            BUG();
          }

          v49 = v44;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v83, v48))
          {
            v50 = v90;
            v45 = specialized __RawDictionaryStorage.find<A>(_:)(v84, v90);
            LOBYTE(v53) = v53 & 1;
            if ((v49 & 1) != v53)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v50, v53, v51, v52);
              BUG();
            }
          }

          v54 = v49;
          a3 = v80;
          v55 = v93;
          if (v54)
          {
            v56 = *(v93 + 7);
            *(v56 + 8 * v45);
            *(v56 + 8 * v45) = v91;
            v90;
          }

          else
          {
            *&v93[8 * (v45 >> 6) + 64] |= 1 << v45;
            v57 = *(v55 + 6);
            v58 = 16 * v45;
            *(v57 + v58) = v84;
            *(v57 + v58 + 8) = v90;
            *(*(v55 + 7) + 8 * v45) = v91;
            v59 = *(v55 + 2);
            v47 = __OFADD__(1, v59);
            v60 = v59 + 1;
            if (v47)
            {
              BUG();
            }

            *(v55 + 2) = v60;
          }

          v23 = v92;
          v61 = v87;
          v92[v87 + 4] = v55;
          v21 = v61 + 1;
          v22 = v88;
          v62 = v79;
          v24 = v89;
        }

        while (v21 != v72);
      }

      else
      {
        v23 = v92;
        v62 = v79;
        v24 = v89;
      }

      v92 = v23;
      v64 = v24;
      v90;
      v86;
      v64;
      v12 = v62 + 1;
      v11 = v82;
      if (v62 + 1 == v78)
      {

        return v92;
      }
    }

    v92;

    v86;
    v90;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

uint64_t randomSplit<A>(indices:proportions:generator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v11 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v66 = *(a2 + 16);
  v9 = COERCE_DOUBLE(specialized Sequence<>.min()(a2));
  if (v10)
  {
    BUG();
  }

  if (v9 < 0.0)
  {
    v5 = 0xD00000000000002ALL;
    v11 = "";
LABEL_16:
    v24 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v24, 0, 0);
    *v25 = v5;
    *(v25 + 8) = v11 | 0x8000000000000000;
    *(v25 + 16) = 0;
    *(v25 + 32) = 0;
    *(v25 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v24);
  }

  v12 = COERCE_DOUBLE(specialized Sequence<>.max()(a2));
  if (v13)
  {
    BUG();
  }

  if (v12 <= 0.0)
  {
    v5 = 0xD00000000000002DLL;
    v11 = "e proportions are allowed.";
    goto LABEL_16;
  }

  v61 = *(a1 + 16);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v15 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v16 = 0.0;
  v62 = Sequence.shuffled<A>(using:)(a3, v14, a4, v15, a5);
  v17 = 0;
  do
  {
    v16 = v16 + *(a2 + 8 * v17++ + 32);
  }

  while (v66 != v17);
  v18 = 0;
  v69 = v16;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
  v19 = a2;
  v20 = v66;
  v21 = _swiftEmptyArrayStorage[2];
  do
  {
    v22 = *(v19 + 8 * v18 + 32);
    v23 = v21 + 1;
    if (_swiftEmptyArrayStorage[3] >> 1 <= v21)
    {
      v64 = *(v19 + 8 * v18 + 32);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v23, 1);
      v16 = v69;
      v23 = v21 + 1;
      v19 = a2;
      v20 = v66;
    }

    ++v18;
    _swiftEmptyArrayStorage[2] = v23;
    *&_swiftEmptyArrayStorage[v21 + 4] = v22 / v16;
    v21 = v23;
  }

  while (v20 != v18);
  v67 = v23;

  v27 = 0;
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
  v29 = v28[2];
  v30 = 8 * v29;
  v31 = &_swiftEmptyArrayStorage[4];
  do
  {
    if (v27 + v29)
    {
      v32 = *(&v28[v27 + 3] + v30);
    }

    else
    {
      v32 = 0;
    }

    v33 = *&v31[v27];
    v34 = v29 + v27 + 1;
    if (v28[3] >> 1 <= (v27 + v29))
    {
      v35 = v28[3] >= 2uLL;
      v36 = v28;
      v70 = v29;
      v73 = v30;
      v37 = v31;
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v35, v29 + v27 + 1, 1, v36);
      v32 = *&v32.f64[0];
      v31 = v37;
      v30 = v73;
      v29 = v70;
      v23 = v67;
      v28 = v38;
    }

    v28[2] = v34;
    *(&v28[v27++ + 4] + v30) = v33 + v32.f64[0];
  }

  while (v23 != v27);
  _swiftEmptyArrayStorage;
  a1;
  ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySdG_Sis5NeverOTg5058_s8CreateML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n(v28, a1, v32);
  v28;
  v40 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  v41 = 0;
  v42 = 0;
  v43 = _swiftEmptyArrayStorage;
  v65 = ML11randomSplit7indices11proportions9generatorSayi7SiGGAF_i15SdGxztKSGRzlFSiL6XEfU1_SaySiGTf1cn_n;
  do
  {
    if (v42 >= v40[2])
    {
      BUG();
    }

    if (v41 >= v40[v42 + 4])
    {
      v44 = _swiftEmptyArrayStorage;
    }

    else
    {
      v74 = v43;
      v68 = v42;
      v71 = v41;
      v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
      v45 = v41;
      v42 = v68;
      v43 = v74;
      v46 = v65;
      v47 = a1;
      v48 = v61;
      v49 = v62;
      do
      {
        if (v45 < 0)
        {
          BUG();
        }

        if (v41 >= *(v49 + 16))
        {
          BUG();
        }

        v50 = *(v49 + 8 * v41 + 32);
        if (v50 >= v48)
        {
          BUG();
        }

        v51 = *(v47 + 8 * v50 + 32);
        v52 = v44[2];
        if (v44[3] >> 1 <= v52)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44[3] >= 2uLL, v52 + 1, 1, v44);
          v45 = v71;
          v42 = v68;
          v43 = v74;
          v46 = v65;
          v49 = v62;
          v48 = v61;
          v47 = a1;
        }

        v44[2] = v52 + 1;
        v44[v52 + 4] = v51;
        ++v41;
      }

      while (v41 < v46[v42 + 4]);
    }

    v75 = v44;
    v53 = v42;
    v54 = v43;
    if (swift_isUniquelyReferenced_nonNull_native(v43))
    {
      v43 = v54;
    }

    else
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 16) + 1, 1, v54);
    }

    v55 = v43[2];
    v56 = v66;
    v40 = v65;
    v57 = v75;
    if (v43[3] >> 1 <= v55)
    {
      v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43[3] >= 2uLL, v55 + 1, 1, v43);
      v57 = v75;
      v58 = v53;
      v40 = v65;
      v56 = v66;
      v43 = v59;
    }

    else
    {
      v58 = v53;
    }

    v42 = v58 + 1;
    v43[2] = v55 + 1;
    v43[v55 + 4] = v57;
  }

  while (v42 != v56);
  v60 = v43;
  v40;
  v62;
  return v60;
}

uint64_t stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7, uint64_t a8)
{
  v71 = a2;
  v10 = v9;
  v72 = a6;
  v89 = a5;
  v73 = a1;
  v11 = *a3;
  v103 = *(a3 + 8);
  v93._countAndFlagsBits = a4;
  v80 = v11;
  v74 = v8;
  if (v103)
  {
    countAndFlagsBits = a4;
    v98 = v9;
    outlined copy of Result<_DataTable, Error>(v11, 1);
    v13 = tc_v1_flex_list_create(0);
    if (!v13)
    {
      BUG();
    }

    v14 = v11;
    v15 = v13;
    v16 = type metadata accessor for CMLSequence();
    v17 = swift_allocObject(v16, 25, 7);
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v14, 1);
    v10 = v98;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v11, 0);
    _DataTable.columnNames.getter(v11);
    countAndFlagsBits = v93._countAndFlagsBits;
    outlined consume of Result<_DataTable, Error>(v11, 0);
    v17 = v99;
  }

  *&v101 = countAndFlagsBits;
  *(&v101 + 1) = v89;
  v18 = alloca(24);
  v19 = alloca(32);
  v73 = &v101;
  v20 = v10;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v71, v17);

  if (v21)
  {
    v93._object = v20;
    v22 = v80;
    *&v101 = v80;
    v23 = v103;
    BYTE8(v101) = v103;
    v97 = v103;
    outlined copy of Result<_DataTable, Error>(v80, v103);
    v24._countAndFlagsBits = v93._countAndFlagsBits;
    v24._object = v89;
    MLDataTable.subscript.getter(v24);
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v84 = v99;
    v85 = v100;
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v84, v85);
    v99 = v101;
    LOBYTE(v100) = BYTE8(v101);
    v90 = Array<A>.init(_:)(&v99, a7);
    *&v101 = v22;
    BYTE8(v101) = v23;
    v25 = v23;
    outlined copy of Result<_DataTable, Error>(v22, v97);
    v26 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    if (v26 < 0)
    {
      BUG();
    }

    v96 = specialized _copyCollectionToContiguousArray<A>(_:)(0, v26);
    v99 = v22;
    LOBYTE(v100) = v25;
    *&v101 = v22;
    BYTE8(v101) = v25;
    v27 = v97;
    outlined copy of Result<_DataTable, Error>(v22, v97);
    outlined copy of Result<_DataTable, Error>(v22, v27);
    v28 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v94 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v28);
    v29 = v90;
    v76 = v90[2];
    if (v76)
    {
      v30 = v27;
      v31 = 0;
      v32 = v93._countAndFlagsBits;
      while (1)
      {
        if (v31 >= v29[2])
        {
          BUG();
        }

        v75 = v31;
        v33 = 3 * v31;
        v34 = v29[3 * v31 + 4];
        v35 = v29[3 * v31 + 5];
        v36 = v29[v33 + 6];
        *&v101 = v80;
        BYTE8(v101) = v103;
        outlined copy of Result<_DataTable, Error>(v80, v30);
        outlined copy of MLDataValue(v34, v35, v36);
        v37._countAndFlagsBits = v32;
        v37._object = v89;
        MLDataTable.subscript.getter(v37);
        outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
        v91 = v78;
        LOBYTE(v92) = v79;
        v82 = v34;
        v81 = v35;
        *(&v101 + 1) = v35;
        v95 = v36;
        v102 = v36;
        static MLUntypedColumn.== infix(_:_:)(&v91, &v101);
        outlined consume of Result<_DataTable, Error>(v91, v92);
        *&v101 = v84;
        BYTE8(v101) = v85;
        v38 = Array<A>.init(_:)(&v101, a7);
        v39 = v38[2];
        if (v39)
        {
          v98 = v96[2];

          v77 = v38;
          v40 = v38 + 6;
          v41 = 0;
          v42 = _swiftEmptyArrayStorage;
          v88 = v39;
          do
          {
            if (v98 == v41)
            {
              break;
            }

            if (v41 >= v96[2])
            {
              BUG();
            }

            if (!*v40 && *(v40 - 2) == 1)
            {
              v87 = *(v40 - 1);
              v43 = v96[v41 + 4];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v42);
              *&v101 = v42;
              v86 = v43;
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1);
                v42 = v101;
              }

              v45 = v42[2];
              v46 = v42[3];
              v47 = v45 + 1;
              if (v46 >> 1 <= v45)
              {
                v83 = v45 + 1;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46 >= 2, v45 + 1, 1);
                v47 = v83;
                v42 = v101;
              }

              v42[2] = v47;
              v48 = 4 * v45;
              v42[v48 + 4] = 1;
              v42[v48 + 5] = v87;
              LOBYTE(v42[v48 + 6]) = 0;
              v42[v48 + 7] = v86;
              v39 = v88;
            }

            ++v41;
            v40 += 24;
          }

          while (v39 != v41);

          v38 = v77;
        }

        else
        {
          v42 = _swiftEmptyArrayStorage;
        }

        v38;
        object = v93._object;
        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n(v42);

        v51 = specialized _copyCollectionToContiguousArray<A>(_:)(0, ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2]);
        v52 = v73;
        v53 = randomSplit<A>(indices:proportions:generator:)(v51, v73, v71, v72, a8);
        v93._object = object;
        if (object)
        {
          break;
        }

        v54 = v53;

        v88 = *(v52 + 16);
        if (v88)
        {
          v55 = 0;
          v56 = v94;
          v87 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
          do
          {
            if (v55 >= *(v54 + 16))
            {
              BUG();
            }

            v98 = *(*(v54 + 8 * v55 + 32) + 16);
            if (v98)
            {
              v57 = 0;
              v86 = v55;
              do
              {
                v58 = *(v54 + 8 * v55 + 32);
                if (v57 >= *(v58 + 16))
                {
                  BUG();
                }

                v59 = *(v58 + 8 * v57 + 32);
                if (v59 < 0)
                {
                  BUG();
                }

                if (v59 >= ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2])
                {
                  BUG();
                }

                v60 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[v59 + 4];
                if (!swift_isUniquelyReferenced_nonNull_native(v56))
                {
                  v56 = specialized _ArrayBuffer._consumeAndCreateNew()(v56);
                }

                if (v60 < 0)
                {
                  BUG();
                }

                if (v60 >= v56[2])
                {
                  BUG();
                }

                ++v57;
                v55 = v86;
                v56[v60 + 4] = v86;
                ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = v87;
              }

              while (v98 != v57);
            }

            ++v55;
          }

          while (v55 != v88);
          v94 = v56;
        }

        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
        v54;
        v31 = v75 + 1;
        outlined consume of MLDataValue(v82, v81, v95);
        v32 = v93._countAndFlagsBits;
        v30 = v97;
        v29 = v90;
        if (v31 == v76)
        {
          goto LABEL_41;
        }
      }

      ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;

      outlined consume of MLDataValue(v82, v81, v95);
      v94;
      v90;

      return outlined consume of Result<_DataTable, Error>(v99, v100);
    }

    else
    {
LABEL_41:

      v29;
      *&v101 = v94;
      v61 = alloca(24);
      v62 = alloca(32);
      v104 = &v101;
      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      v65 = v64;
      v101;
      MLDataTable.willMutate()();
      *&v101 = ML14_UntypedColumnC_s5Error_pTt1g5;
      BYTE8(v101) = v65 & 1;
      LODWORD(v98) = v65;
      outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v65);
      MLDataTable.addImpl(newColumn:named:)(&v101, 0x6F69746974726170, 0xE90000000000006ELL);
      outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
      v66 = v100;
      if (v100)
      {
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v98);
        v67 = v99;
      }

      else
      {
        v67 = v99;
        outlined copy of Result<_DataTable, Error>(v99, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v67, 0);
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v98);
      }

      result = v74;
      *v74 = v67;
      *(result + 8) = v66;
    }
  }

  else
  {
    v68 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v68, 0, 0);
    *v69 = 0xD000000000000022;
    *(v69 + 8) = "lue from annotation." + 0x8000000000000000;
    *(v69 + 16) = 0;
    *(v69 + 32) = 0;
    *(v69 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v68);
  }

  return result;
}

uint64_t stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7, void *a8, uint64_t a9, uint64_t a10)
{
  v153 = a4;
  countAndFlagsBits = v11;
  v144._countAndFlagsBits = a6;
  v143 = a5;
  v139 = a1;
  v13 = *a3;
  v156 = *(a3 + 8);
  v145 = v13;
  v130 = v10;
  v138 = a2;
  if (v156)
  {
    v152._countAndFlagsBits = v11;
    outlined copy of Result<_DataTable, Error>(v13, 1);
    v14 = tc_v1_flex_list_create(0);
    if (!v14)
    {
      BUG();
    }

    v15 = v14;
    v16 = type metadata accessor for CMLSequence();
    v17 = swift_allocObject(v16, 25, 7);
    *(v17 + 16) = v15;
    *(v17 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v13, 1);
    countAndFlagsBits = v152._countAndFlagsBits;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v13, 0);
    _DataTable.columnNames.getter(v13);
    outlined consume of Result<_DataTable, Error>(v13, 0);
    v17 = v146;
  }

  v152._countAndFlagsBits = &v125;
  v18 = v153;
  v154._countAndFlagsBits = v153;
  v19 = v143;
  v154._object = v143;
  v20 = alloca(24);
  v21 = alloca(32);
  v127 = &v154;
  v22 = countAndFlagsBits;
  v23 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v125, v17);
  v150 = v22;

  if ((v23 & 1) == 0)
  {
    v154._countAndFlagsBits = 0x2064696C61766E49;
    v154._object = 0xE800000000000000;
    v29._countAndFlagsBits = v18;
    v29._object = v19;
    String.append(_:)(v29);
    v29._countAndFlagsBits = 46;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = v154;
LABEL_27:
    v152 = v30;
    v63 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v63, 0, 0);
    *v64 = v152;
    *(v64 + 16) = 0;
    *(v64 + 32) = 0;
    *(v64 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v63);
  }

  if (v156)
  {
    v24 = v145;
    outlined copy of Result<_DataTable, Error>(v145, 1);
    v25 = tc_v1_flex_list_create(0);
    if (!v25)
    {
      BUG();
    }

    v26 = v25;
    v27 = type metadata accessor for CMLSequence();
    v28 = swift_allocObject(v27, 25, 7);
    *(v28 + 16) = v26;
    *(v28 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v24, 1);
  }

  else
  {
    v31 = v145;
    v32 = v145;
    outlined copy of Result<_DataTable, Error>(v145, 0);
    _DataTable.columnNames.getter(v32);
    outlined consume of Result<_DataTable, Error>(v31, 0);
    v28 = v146;
  }

  v33 = v144._countAndFlagsBits;
  v154._countAndFlagsBits = v144._countAndFlagsBits;
  v154._object = a8;
  v34 = alloca(24);
  v35 = alloca(32);
  v158 = &v154;
  v36 = v150;
  v37 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v157, v28);
  v152._countAndFlagsBits = v36;

  if ((v37 & 1) == 0)
  {
    v154._countAndFlagsBits = 0x2064696C61766E49;
    v154._object = 0xE800000000000000;
    v62._countAndFlagsBits = v33;
    v62._object = a8;
    String.append(_:)(v62);
    v62._countAndFlagsBits = 46;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    v30 = v154;
    goto LABEL_27;
  }

  v38 = v145;
  v146 = v145;
  LOBYTE(v147) = v156;
  v154._countAndFlagsBits = v145;
  LOBYTE(v154._object) = v156;
  v39 = v156;
  outlined copy of Result<_DataTable, Error>(v145, v156);
  outlined copy of Result<_DataTable, Error>(v38, v39);
  v40._countAndFlagsBits = v153;
  v40._object = v143;
  MLDataTable.subscript.getter(v40);
  outlined consume of Result<_DataTable, Error>(v154._countAndFlagsBits, v154._object);
  v128 = v148;
  v129 = object;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v128, v129);
  v148 = v154._countAndFlagsBits;
  object = v154._object;
  v41 = Array<A>.init(_:)(&v148, a7);
  v40._countAndFlagsBits = v38;
  LODWORD(v38) = v39;
  v140 = v39;
  outlined copy of Result<_DataTable, Error>(v40._countAndFlagsBits, v39);
  v42 = v143;
  v143;
  a8;
  v43 = v152._countAndFlagsBits;
  ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n(v41, v145, v38, v153, v42, v144._countAndFlagsBits, a8);
  v131 = v43;
  v44 = v41[2];
  v41;
  v132 = v41;
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5(v41, 0, v44);
  v144._object = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5(_swiftEmptyArrayStorage, v44);
  v148 = v145;
  object = v156;
  outlined copy of Result<_DataTable, Error>(v145, v140);
  v40._countAndFlagsBits = v153;
  v40._object = v42;
  MLDataTable.subscript.getter(v40);
  outlined consume of Result<_DataTable, Error>(v148, object);
  v148 = v154._countAndFlagsBits;
  object = v154._object;
  v46 = Array<A>.init(_:)(&v148, a7);
  v137 = v46[2];
  if (v137)
  {
    v151 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
    v134 = v46;
    v47 = (v46 + 6);
    v48 = 0;
    do
    {
      v152._countAndFlagsBits = v48;
      v49 = v151;
      if (!v151[2])
      {
        BUG();
      }

      v50 = *(v47 - 2);
      v51 = *(v47 - 1);
      v150 = v47;
      v52 = *v47;
      outlined copy of MLDataValue(v50, v51, *v47);
      outlined copy of MLDataValue(v50, v51, v52);
      *&v53 = v50;
      *(&v53 + 1) = v51;
      specialized __RawDictionaryStorage.find<A>(_:)(v53, v52, a7);
      if ((v55 & 1) == 0)
      {
        outlined consume of MLDataValue(v50, v51, v52);
        BUG();
      }

      v56 = *(*(v49 + 56) + 8 * v54);
      LODWORD(v135) = v52;
      outlined consume of MLDataValue(v50, v51, v52);
      v57 = v144._object;
      if (!swift_isUniquelyReferenced_nonNull_native(v144._object))
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
      }

      if (v56 < 0)
      {
        BUG();
      }

      if (v56 >= v57[2])
      {
        BUG();
      }

      v141 = v50;
      v58 = v57[v56 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v58);
      v142 = v56;
      v57[v56 + 4] = v58;
      v144._object = v57;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        v57[v142 + 4] = v58;
      }

      v136 = v51;
      v60 = v58[2];
      if (v58[3] >> 1 <= v60)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58[3] >= 2uLL, v60 + 1, 1, v58);
        *(v144._object + v142 + 4) = v58;
      }

      v61 = v152._countAndFlagsBits;
      v58[2] = v60 + 1;
      v58[v60 + 4] = v61;
      v48 = (v61 + 1);
      outlined consume of MLDataValue(v141, v136, v135);
      v47 = (v150 + 3);
    }

    while (v137 != v48);
    v151;
    v46 = v134;
  }

  else
  {
    ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
  }

  v46;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v66, v126);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x73656369646E69;
  *(inited + 40) = 0xE700000000000000;
  v154._countAndFlagsBits = v144._object;
  v68 = alloca(24);
  v69 = alloca(24);
  v158 = &v154;
  v144._object;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA22MLDataValueConvertible7ElementRpzlufcAA08_UntypedD0CyKXEfU_SaySaySiGG_TG5TA_0);
  *(inited + 56) = v70 & 1;
  v154._countAndFlagsBits;
  *(inited + 64) = v144._countAndFlagsBits;
  *(inited + 72) = a8;
  v154._countAndFlagsBits = ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n;
  v71 = alloca(24);
  v72 = alloca(24);
  v158 = &v154;
  a8;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0);
  *(inited + 88) = v73 & 1;
  v154._countAndFlagsBits;
  *(inited + 96) = v153;
  v74 = v143;
  *(inited + 104) = v143;
  v154._countAndFlagsBits = v132;
  v75 = alloca(24);
  v76 = alloca(24);
  v158 = &v154;
  v74;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 120) = v77 & 1;
  v154._countAndFlagsBits;
  v78 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v79 = v131;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v78);
  if (v79)
  {
    v144._object;
    return outlined consume of Result<_DataTable, Error>(v146, v147);
  }

  v80 = v154._countAndFlagsBits;
  v81 = v154._object;
  MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(v139, v144._countAndFlagsBits, a8, v138, a9, a10, a7);
  LOBYTE(v139) = v81;
  v138 = v80;
  v152._countAndFlagsBits = 0;
  v151 = v154._countAndFlagsBits;
  LOBYTE(v144._countAndFlagsBits) = v154._object;
  v148 = v145;
  object = v156;
  outlined copy of Result<_DataTable, Error>(v145, v140);
  v82._countAndFlagsBits = v153;
  v82._object = v143;
  MLDataTable.subscript.getter(v82);
  outlined consume of Result<_DataTable, Error>(v148, object);
  v83 = v154._countAndFlagsBits;
  v84 = v154._object;
  if (LOBYTE(v154._object))
  {
    v85 = -1;
  }

  else
  {
    v86 = *(v154._countAndFlagsBits + 16);

    v85 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v83, 0);
  }

  outlined consume of Result<_DataTable, Error>(v83, v84);
  v150 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v85);
  v148 = v151;
  object = v144._countAndFlagsBits;
  LODWORD(v142) = LOBYTE(v144._countAndFlagsBits);
  outlined copy of Result<_DataTable, Error>(v151, v144._countAndFlagsBits);
  v87._countAndFlagsBits = 0x73656369646E69;
  v87._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v87);
  outlined consume of Result<_DataTable, Error>(v148, object);
  v88 = v154._countAndFlagsBits;
  if (LOBYTE(v154._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v154._countAndFlagsBits, 1);
LABEL_78:
    BUG();
  }

  v89 = *(v154._countAndFlagsBits + 16);

  v90 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v88, 0);
  v91 = v88;
  v92 = 0;
  outlined consume of Result<_DataTable, Error>(v88, 0);
  v145 = v90;
  if (v90 < 0)
  {
    goto LABEL_78;
  }

  v93 = v151;
  if (v90)
  {
    v153 = 0;
    while (!LOBYTE(v144._countAndFlagsBits))
    {
      v94 = *(v93 + 16);
      outlined copy of Result<_DataTable, Error>(v93, 0);

      v95 = v152._countAndFlagsBits;
      v96 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v94, 0x73656369646E69, 0xE700000000000000);
      v97 = v95;
      if (v95)
      {
        v95;

LABEL_74:
        v154._object = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        v154._object;
        v154._countAndFlagsBits = 0xD00000000000001FLL;
        v154._object = "ml.activityclassifier" + 0x8000000000000000;
        v121._countAndFlagsBits = 0x73656369646E69;
        v121._object = 0xE700000000000000;
        String.append(_:)(v121);
        v121._object = 0xE100000000000000;
        v121._countAndFlagsBits = 34;
        String.append(_:)(v121);
        v152 = v154;
        v122 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v123 = swift_allocError(&type metadata for MLCreateError, v122, 0, 0);
        *v124 = v152;
        *(v124 + 16) = 0;
        *(v124 + 32) = 0;
        *(v124 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v151, v142);
        outlined consume of Result<_DataTable, Error>(v123, 1);
LABEL_75:
        BUG();
      }

      v98 = v96;

      outlined consume of Result<_DataTable, Error>(v93, 0);
      v99 = type metadata accessor for _UntypedColumn();
      v100 = swift_allocObject(v99, 24, 7);
      *(v100 + 16) = v98;

      _UntypedColumn.valueAtIndex(index:)(v153, a7);
      outlined consume of Result<_DataTable, Error>(v100, 0);
      outlined consume of Result<_DataTable, Error>(v100, 0);
      if (v155 != 3)
      {
        goto LABEL_75;
      }

      v143 = v154._object;
      v101 = v154._countAndFlagsBits;

      if (CMLSequence.size.getter())
      {
        v102 = 0;
        v137 = v101;
        while (1)
        {
          v103 = CMLSequence.value(at:)(v102);
          v152._countAndFlagsBits = v97;
          if (v97)
          {
            swift_unexpectedError(v152._countAndFlagsBits, "CreateML/SequenceType.swift", 27, 1, 36);
            BUG();
          }

          MLDataValue.init(_:)(v103, a7);
          v135 = v154._object;
          v104 = v154._countAndFlagsBits;
          v105 = v155;
          LODWORD(v136) = v155;
          outlined copy of MLDataValue(v154._countAndFlagsBits, v154._object, v155);
          v141 = v104;
          outlined consume of MLDataValue(v104, v135, v136);
          if (v102 >= CMLSequence.size.getter())
          {
            BUG();
          }

          if (v105)
          {
            BUG();
          }

          v106 = v102;
          v107 = v151;
          outlined copy of Result<_DataTable, Error>(v151, 0);
          v108._countAndFlagsBits = 0x6F69746974726170;
          v108._object = 0xE90000000000006ELL;
          specialized MLDataTable.subscript.getter(v108, v107, v142);
          outlined consume of Result<_DataTable, Error>(v107, 0);
          v109 = v148;
          if (object)
          {
            break;
          }

          outlined copy of Result<_DataTable, Error>(v148, 0);
          _UntypedColumn.valueAtIndex(index:)(v153, a7);
          outlined consume of Result<_DataTable, Error>(v109, 0);
          v111 = v154._countAndFlagsBits;
          v110 = v150;
          if (v155)
          {
            outlined consume of MLDataValue(v154._countAndFlagsBits, v154._object, v155);
            outlined consume of Result<_DataTable, Error>(v109, 0);
            goto LABEL_50;
          }

          outlined consume of Result<_DataTable, Error>(v109, 0);
          if (!swift_isUniquelyReferenced_nonNull_native(v110))
          {
LABEL_57:
            v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
          }

LABEL_52:
          if (v141 < 0)
          {
            BUG();
          }

          if (v141 >= v110[2])
          {
            BUG();
          }

          v150 = v110;
          v110[v141 + 4] = v111;
          v102 = v106 + 1;
          v101 = v137;
          v112 = v106 + 1 == CMLSequence.size.getter();
          v97 = v152._countAndFlagsBits;
          if (v112)
          {
            goto LABEL_58;
          }
        }

        outlined consume of Result<_DataTable, Error>(v148, 1);
        v110 = v150;
LABEL_50:
        v111 = 0;
        if (!swift_isUniquelyReferenced_nonNull_native(v110))
        {
          goto LABEL_57;
        }

        v111 = 0;
        goto LABEL_52;
      }

LABEL_58:
      v152._countAndFlagsBits = v97;
      v113 = v153 + 1;

      v91 = v101;
      v92 = v143;
      outlined consume of MLDataValue(v101, v143, 3);
      v153 = v113;
      v93 = v151;
      if (v113 == v145)
      {
        goto LABEL_59;
      }
    }

    swift_willThrow(v91, v92);
    outlined copy of Result<_DataTable, Error>(v93, 1);
    goto LABEL_74;
  }

LABEL_59:
  v144._object;
  v154._countAndFlagsBits = v150;
  v114 = alloca(24);
  v115 = alloca(32);
  v158 = &v154;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v118 = v117;
  v154._countAndFlagsBits;
  MLDataTable.willMutate()();
  v154._countAndFlagsBits = ML14_UntypedColumnC_s5Error_pTt1g5;
  LOBYTE(v154._object) = v118 & 1;
  LODWORD(v150) = v118;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v118);
  MLDataTable.addImpl(newColumn:named:)(&v154, 0x6F69746974726170, 0xE90000000000006ELL);
  outlined consume of Result<_DataTable, Error>(v154._countAndFlagsBits, v154._object);
  v119 = v147;
  if (v147)
  {
    outlined consume of Result<_DataTable, Error>(v138, v139);
    outlined consume of Result<_DataTable, Error>(v151, v142);
    v120 = v146;
  }

  else
  {
    v120 = v146;
    outlined copy of Result<_DataTable, Error>(v146, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v120, 0);
    outlined consume of Result<_DataTable, Error>(v138, v139);
    outlined consume of Result<_DataTable, Error>(v151, v142);
  }

  outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v150);
  result = v130;
  *v130 = v120;
  *(result + 8) = v119;
  return result;
}

char closure #1 in stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v20._countAndFlagsBits = a4;
  v18 = v7;
  v20._object = a5;
  v26 = *(a1 + 16);
  *&v23 = a2;
  v25 = a3;
  v8 = a3 & 1;
  BYTE8(v23) = a3 & 1;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  MLDataTable.subscript.getter(v20);
  outlined consume of Result<_DataTable, Error>(a2, SBYTE8(v23));
  v21 = v16;
  v22 = v17;
  v9 = *a1;
  v23 = *a1;
  v24 = v26;
  static MLUntypedColumn.== infix(_:_:)(&v21, &v23);
  outlined consume of Result<_DataTable, Error>(v21, v22);
  *&v23 = a2;
  BYTE8(v23) = v8;
  v21 = v14;
  v22 = v15;
  outlined copy of Result<_DataTable, Error>(a2, v25);
  MLDataTable.subscript.getter(&v21);
  outlined consume of Result<_DataTable, Error>(v21, v22);
  outlined consume of Result<_DataTable, Error>(v23, SBYTE8(v23));
  *&v23 = v16;
  BYTE8(v23) = v17;
  v10._countAndFlagsBits = a6;
  v10._object = a7;
  MLDataTable.subscript.getter(v10);
  outlined consume of Result<_DataTable, Error>(v23, SBYTE8(v23));
  v11 = v21;
  if (v22)
  {
    outlined consume of Result<_DataTable, Error>(v21, 1);
    v12 = 0;
    result = 6;
  }

  else
  {

    _UntypedColumn.valueAtIndex(index:)(0, *&v9);
    outlined consume of Result<_DataTable, Error>(v11, 0);
    outlined consume of Result<_DataTable, Error>(v11, 0);
    v12 = v23;
    result = v24;
  }

  *v18 = v12;
  *(v18 + 16) = result;
  return result;
}

unint64_t MersenneTwisterGenerator.twist()()
{
  v1 = v0;
  v2 = *(v0 + 120);
  v3 = 156;
  v4 = 0;
  do
  {
    v5 = v2[2];
    if (v4 >= v5)
    {
      BUG();
    }

    v6 = v3 / 0x270;
    v7 = 0;
    if (v4 != 623)
    {
      v7 = v4 + 1;
    }

    if (v7 >= v5)
    {
      BUG();
    }

    v8 = v2[v7 + 4] % 0x270uLL;
    v9 = ((v8 | (HIDWORD(v2[v4 + 4]) << 32)) >> 1) ^ 0xB5026F5AA96619E9;
    if ((v8 & 1) == 0)
    {
      v9 = (v8 | (HIDWORD(v2[v4 + 4]) << 32)) >> 1;
    }

    if (v4 + 156 - 624 * v6 >= v5)
    {
      BUG();
    }

    v16 = v4 + 1;
    v15 = v3;
    v10 = *(&v2[v4] + 1280 - 4992 * v6);
    v11 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
    *(v11 + 120) = v2;
    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = v11;
    }

    else
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v1 = v11;
      v2 = v14;
    }

    if (v4 >= v2[2])
    {
      BUG();
    }

    v2[v4 + 4] = v9 ^ v10;
    *(v1 + 120) = v2;
    *(v1 + 128) = 0;
    v3 = v15 + 1;
    result = ++v4;
  }

  while (v16 != 624);
  return result;
}

void *MersenneTwisterGenerator.init(seed:)(uint64_t a1)
{
  v1[2] = 32;
  v1[3] = 624;
  v1[4] = 156;
  v1[5] = 31;
  v1[6] = 0xB5026F5AA96619E9;
  v1[7] = 29;
  v1[8] = 0x5555555555555555;
  v1[9] = 17;
  v1[10] = 0x71D67FFFEDA60000;
  v1[11] = 37;
  v1[12] = 0xFFF7EEE000000000;
  v1[13] = 43;
  v1[14] = 0x5851F42D4C957F2DLL;
  v1[16] = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>);
  v3 = swift_allocObject(v2, 40, 7);
  v3[2] = 1;
  v3[3] = 2;
  v3[4] = a1;
  v4 = 0;
  do
  {
    v5 = v4 + 1;
    if (v4 >= v4 + 1)
    {
      BUG();
    }

    v6 = 1284865837 * (LODWORD(v3[v4 + 4]) ^ (v3[v4 + 4] >> 30)) + 0x5851F42D00000000 * (v3[v4 + 4] ^ (v3[v4 + 4] >> 30)) + 0x4C957F2D00000000 * ((v3[v4 + 4] ^ (v3[v4 + 4] >> 30)) >> 32);
    v7 = __CFADD__(v5, v6);
    v8 = v5 + v6;
    if (v7)
    {
      BUG();
    }

    if (v3[3] >> 1 <= v5)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v4 + 2, 1, v3);
    }

    v3[2] = v4 + 2;
    v3[v4++ + 5] = v8;
  }

  while (v5 != 623);
  v1[15] = v3;
  return v1;
}

Swift::UInt64 __swiftcall MersenneTwisterGenerator.next()()
{
  v1 = *(v0 + 128);
  if (v1 == 624)
  {
    MersenneTwisterGenerator.twist()();
    v1 = *(v0 + 128);
  }

  if (v1 < 0)
  {
    BUG();
  }

  v2 = *(v0 + 120);
  if (v1 >= *(v2 + 16))
  {
    BUG();
  }

  v3 = *(v2 + 8 * v1 + 32);
  v4 = v3 ^ (v3 >> 29) & 0x555555555 ^ ((v3 ^ (v3 >> 29) & 0x555555555) << 17) & 0x71D67FFFEDA60000 ^ (((v3 ^ (v3 >> 29) & 0x55555555 ^ ((v3 ^ (v3 >> 29) & 0x55555555) << 17) & 0xEDA60000) & 0x7FFBF77) << 37);
  result = v4 ^ (v4 >> 43);
  *(v0 + 128) = v1 + 1;
  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Range<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v1);
    lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A> = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Range<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v1);
    lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A> = result;
  }

  return result;
}

void *MLTextClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:textColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v17 = a4;
  v18 = a3;
  v19 = a6;
  result = static _TextUtilities.getTextLabeledDictionary(from:)(v8, a7);
  if (!v7)
  {
    v10 = result;
    specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(result, a5, v19, v18, v17);
    v10;
    if (a2 < 0)
    {
      BUG();
    }

    v19 = v15;
    v11 = v16;
    v12 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v12, 136, 7);
    v15 = MersenneTwisterGenerator.init(seed:)(a2);
    v13 = v19;
    specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, &v15, v19, v16, v18, v17, a7);

    return outlined consume of Result<_DataTable, Error>(v13, v11);
  }

  return result;
}

uint64_t specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a4;
  v39 = a3;
  v41 = v5;
  v40 = a2;
  v37 = a5;
  v49 = unpackLabeledTexts(_:)(a1);
  specialized MutableCollection<>.shuffle<A>(using:)();
  v7 = v49;
  v8 = v49[2];
  if (v8)
  {
    v49 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v43 = v7;
    v10 = v7 + 5;
    v42 = v8;
    do
    {
      v44 = v9;
      v45 = *(v10 - 1);
      v11 = *v10;
      v49 = v9;
      v12 = v9[2];
      v47 = v9[3];
      v48 = (v12 + 1);
      v46 = v11;
      v11;
      v9 = v44;
      if (v47 >> 1 <= v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 >= 2, v48, 1);
        v9 = v49;
      }

      v9[2] = v48;
      v13 = 2 * v12;
      v9[v13 + 4] = v45;
      v9[v13 + 5] = v46;
      v10 += 4;
      --v8;
    }

    while (v8);
    v44 = v9;
    v49 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
    v14 = _swiftEmptyArrayStorage;
    v15 = v43 + 7;
    do
    {
      v48 = *(v15 - 1);
      v16 = *v15;
      v49 = v14;
      v17 = v14[2];
      v47 = v14[3];
      v46 = v17 + 1;
      v45 = v16;
      v18 = v14;
      v16;
      v14 = v18;
      if (v47 >> 1 <= v17)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 >= 2, v46, 1);
        v14 = v49;
      }

      v14[2] = v17 + 1;
      v19 = 2 * v17;
      v14[v19 + 4] = v48;
      v14[v19 + 5] = v45;
      v15 += 4;
      --v42;
    }

    while (v42);
    v48 = v14;

    v20 = v44;
  }

  else
  {

    v20 = _swiftEmptyArrayStorage;
    v48 = _swiftEmptyArrayStorage;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v21, v35);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = v40;
  v23 = v39;
  *(inited + 40) = v39;
  v49 = v20;
  v24 = alloca(24);
  v25 = alloca(32);
  v36 = &v49;
  v23;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v26 & 1;
  v49;
  *(inited + 64) = v38;
  v27 = v37;
  *(inited + 72) = v37;
  v49 = v48;
  v28 = alloca(24);
  v29 = alloca(32);
  v36 = &v49;
  v27;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 88) = v30 & 1;
  v49;
  v31 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  result = _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v31);
  if (!v6)
  {
    result = v49;
    v33 = v50;
    v34 = v41;
    *v41 = v49;
    *(v34 + 8) = v33;
  }

  return result;
}

uint64_t type metadata accessor for MLTextClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLTextClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.DataSource);
  }

  return result;
}

uint64_t LinearRegressorTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  DataFrame.init()(v2);
  v4 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  v5 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  v7 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  v9 = type metadata accessor for MLLinearRegressor.Model(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v1 + v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
  *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v1 + v11 + 16) = -1;
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

char **LinearRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = v7;
  v48 = a6;
  v50 = a5;
  v45 = a4;
  v47 = a2;
  v52 = a1;
  v51 = *v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v39;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = &v39;
  v16 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  v17 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v41 = v16;
  v44 = v17;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  DataFrame.init()(v16);
  v18 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  v53 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v53);
  v19 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  v20 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v21 = v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model;
  v22 = type metadata accessor for MLLinearRegressor.Model(0);
  v23 = v45;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  v24 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics) = 0;
  *(v8 + v24 + 16) = -1;
  v25 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics;
  *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics) = 0;
  *(v8 + v25 + 16) = -1;
  v43 = a3;
  v26 = a3;
  v27 = v50;
  v28 = v49;
  v29 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v52, v26, v23, v50);
  v49 = v28;
  if (v28)
  {
    v23;
    v27;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLLinearRegressor.ModelParameters(v48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for DataFrame?);
    v30 = v53;
    v31 = *(*(v53 - 8) + 8);
    v31(v52, v53);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    v31(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v30);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16));
    outlined consume of MLRegressorMetrics?(*(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8), *(v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16));
    swift_deallocPartialClassInstance(v8, v51, *(*v8 + 12), *(*v8 + 26));
  }

  else
  {
    v51 = v29;
    v27;
    v50 = *(v53 - 8);
    v32 = v42;
    (*(v50 + 16))(v42, v52);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, v46, &demangling cache variable for type metadata for DataFrame?);
    v33 = v44;
    outlined init with copy of MLLinearRegressor.ModelParameters(v48, v32 + *(v44 + 32));
    v34 = v33;
    v35 = v32 + *(v33 + 20);
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v53);
    outlined assign with take of MLLinearRegressor.Regressor?(v46, v35, &demangling cache variable for type metadata for DataFrame?);
    v36 = *(v34 + 24);
    *(v32 + v36) = v43;
    *(v32 + v36 + 8) = v45;
    *(v32 + *(v34 + 28)) = v51;
    outlined destroy of MLLinearRegressor.ModelParameters(v48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, &demangling cache variable for type metadata for DataFrame?);
    (*(v50 + 8))(v52, v53);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
    v37 = v41;
    swift_beginAccess(v41, v40, 33, 0);
    outlined assign with take of MLLinearRegressor.Regressor?(v32, v37, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    swift_endAccess(v40);
    outlined init with take of MLClassifierMetrics(a7, v8 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  }

  return v8;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LinearRegressorTrainingSessionDelegate.setUp()()
{
  v44 = v0;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v39 = v37;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = v37;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v41 = v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = v44 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v44 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, v37, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v37, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v42 = v12;
  if (__swift_getEnumTagSinglePayload(v37, 1, v12) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v37, v37, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v17 = v44;
  v18 = v44 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v44 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v38, 33, 0);
  v19 = type metadata accessor for DataFrame(0);
  (*(*(v19 - 8) + 24))(v18, v37, v19);
  swift_endAccess(v38);
  v20 = v42;
  v21 = &v37[v42[5]];
  v22 = v17 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v17 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, v38, 33, 0);
  outlined assign with copy of DataFrame?(v21, v22);
  swift_endAccess(v38);
  v23 = v20[6];
  v43 = *&v37[v23];
  v24 = *&v37[v23 + 8];
  v25 = *&v37[v20[7]];
  v26 = v20[8];
  v42 = v37;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v37[v26], v38);
  v24;
  v25;
  v27 = v41;
  MLLinearRegressor.Regressor.init(annotationColumnName:featureColumnNames:parameters:)(v43, v24, v25, v38);
  v28 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  v29 = v44 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v44 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v38, 33, 0);
  outlined assign with take of MLLinearRegressor.Regressor?(v27, v29, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  swift_endAccess(v38);
  v30 = v29;
  v31 = v40;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v40, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  if (__swift_getEnumTagSinglePayload(v31, 1, v28) == 1)
  {
    BUG();
  }

  v43 = *v40;
  v32 = v40[1];
  v33 = v40 + *(v28 + 28);
  v41 = type metadata accessor for MLLinearRegressor.Model(0);
  v34 = v39;
  v35 = &v39[*(v41 + 6)];
  v32;
  BaseLinearRegressor.makeTransformer()();
  *v34 = v43;
  *(v34 + 8) = v32;
  *(v34 + 16) = 0;
  *(v34 + 32) = 0;
  outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLLinearRegressor.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLLinearRegressor.Regressor);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v41);
  v36 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v44;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v44, v38, 33, 0);
  outlined assign with take of MLLinearRegressor.Regressor?(v34, v36, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
  swift_endAccess(v38);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> LinearRegressorTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v65 = v1;
  v69 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v64 = v57;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v61 = v57;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v62 = v57;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v60 = v57;
  v68 = type metadata accessor for MLCheckpoint(0);
  v14 = *(*(v68 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v67 = v57;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, v58, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v57, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v63 = v20;
  if (__swift_getEnumTagSinglePayload(v57, 1, v20) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v57, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v57, v57, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v25 = v60;
  specialized BidirectionalCollection.last.getter(rawValue);
  if (__swift_getEnumTagSinglePayload(v25, 1, v68) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, &demangling cache variable for type metadata for MLCheckpoint?);
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = 0xD00000000000001DLL;
    *(v27 + 8) = "reated." + 0x8000000000000000;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v26);
LABEL_16:
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLLinearRegressor.PersistentParameters);
    return;
  }

  v28 = 0xEB0000000064657ALL;
  v29 = v67;
  outlined init with take of MLClassifierMetrics(v25, v67, type metadata accessor for MLCheckpoint);
  switch(*(v29 + *(v68 + 20)))
  {
    case 0:
      v31 = *(v29 + *(v68 + 20));
      v30 = 0x696C616974696E69;
      break;
    case 1:
      v30 = 0x6974636172747865;
      goto LABEL_10;
    case 2:
      0xE800000000000000;
      goto LABEL_12;
    case 3:
      v30 = 0x697461756C617665;
LABEL_10:
      v28 = 0xEA0000000000676ELL;
      break;
    case 4:
      v28 = 0xEB00000000676E69;
      v30 = 0x636E657265666E69;
      break;
  }

  v32 = *(v29 + *(v68 + 20));
  v33 = _stringCompareWithSmolCheck(_:_:expecting:)(v30, v28, 0x676E696E69617274, 0xE800000000000000, 0);
  v28;
  if ((v33 & 1) == 0)
  {
    v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
    *v56 = 0xD000000000000027;
    *(v56 + 8) = "ingSessionDelegate" + 0x8000000000000000;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v55);
    outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLCheckpoint);
    goto LABEL_16;
  }

LABEL_12:
  v34 = v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  swift_beginAccess(v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData, v59, 33, 0);
  v35 = type metadata accessor for DataFrame(0);
  (*(*(v35 - 8) + 24))(v34, v57, v35);
  swift_endAccess(v59);
  v36 = v63;
  v37 = &v57[v63[5]];
  v38 = v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData;
  swift_beginAccess(v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, v59, 33, 0);
  outlined assign with copy of DataFrame?(v37, v38);
  swift_endAccess(v59);
  v39 = v36[6];
  v68 = *&v57[v39];
  v40 = *&v57[v39 + 8];
  v41 = *&v57[v36[7]];
  v42 = v36[8];
  rawValue = v57;
  outlined init with copy of MLLinearRegressor.ModelParameters(&v57[v42], v59);
  v43 = v40;
  v40;
  v41;
  v44 = v62;
  MLLinearRegressor.Regressor.init(annotationColumnName:featureColumnNames:parameters:)(v68, v43, v41, v59);
  v45 = type metadata accessor for MLLinearRegressor.Regressor(0);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v45);
  v46 = v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
  swift_beginAccess(v69 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v59, 33, 0);
  outlined assign with take of MLLinearRegressor.Regressor?(v44, v46, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  swift_endAccess(v59);
  v47 = v46;
  v48 = v61;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v47, v61, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  if (__swift_getEnumTagSinglePayload(v48, 1, v45) == 1)
  {
    BUG();
  }

  v49 = lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor();
  v50 = v64;
  v51 = v67;
  v52 = v65;
  SupervisedTabularEstimator.read(from:)(v67, v45, v49);
  outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLLinearRegressor.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLLinearRegressor.Regressor);
  if (!v52)
  {
    v53 = type metadata accessor for MLLinearRegressor.Model(0);
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v53);
    v54 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v69;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v69, v59, 33, 0);
    outlined assign with take of MLLinearRegressor.Regressor?(v50, v54, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    swift_endAccess(v59);
  }
}

uint64_t LinearRegressorTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[15] = v1;
  v2[14] = a1;
  v3 = type metadata accessor for MetricsKey(0);
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v2[18] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v2[19] = v5;
  v6 = *(v5 - 8);
  v2[20] = v6;
  v2[21] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  v2[22] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v2[23] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(LinearRegressorTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t LinearRegressorTrainingSessionDelegate.train(from:)()
{
  v1 = v0[23];
  v2 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v0[15];
  swift_beginAccess(v2, v0 + 2, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, v1, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v3 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  if (v2 == 1)
  {
    BUG();
  }

  v4 = v0[14];
  v5 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters + v0[15];
  v6 = type metadata accessor for MLTrainingSessionParameters(0);
  v7 = *(*(v6 + 20) + v5);
  if (__OFADD__(v7, v4))
  {
    BUG();
  }

  v8 = *(v5 + *(v6 + 28));
  v9 = v8 - v4;
  if (__OFSUB__(v8, v4))
  {
    BUG();
  }

  v10 = v0;
  v46 = v8;
  v49 = v7 + v4;
  v11 = v0 + 5;
  v12 = v0 + 8;
  v56 = v10 + 11;
  if (v7 < v9)
  {
    v9 = v7;
  }

  v13 = type metadata accessor for EventCollector();
  swift_allocObject(v13, 32, 7);
  v14 = EventCollector.init()();
  if (v9 < 0)
  {
    BUG();
  }

  v50 = v14;
  v48 = v9;
  v55 = v10;
  if (v9)
  {
    v15 = v10[15];
    v16 = v10[20];
    v17 = v12;
    v18 = v15 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
    v44 = (OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v15);
    v53 = v15 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
    swift_beginAccess(v15 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v11, 0, 0);
    v45 = v18;
    swift_beginAccess(v18, v17, 0, 0);
    v19 = v48;
    v47 = v16;
    do
    {
      v51 = v19;
      v20 = v10[22];
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, v20, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
      v21 = type metadata accessor for MLLinearRegressor.Regressor(0);
      if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
      {
        BUG();
      }

      (*(v16 + 16))(v10[21], v45, v10[19]);
      swift_beginAccess(v44, v56, 33, 0);
      v22 = type metadata accessor for MLLinearRegressor.Model(0);
      if (__swift_getEnumTagSinglePayload(v44, 1, v22) == 1)
      {
        BUG();
      }

      v23 = v10[21];
      v24 = v10[22];

      MLLinearRegressor.Regressor.update(_:with:eventHandler:)(v44, v23, partial apply for closure #1 in LinearRegressorTrainingSessionDelegate.train(from:), v50);
      v25 = v10[22];
      v26 = v10[19];
      v27 = v55[21];
      swift_endAccess(v56);

      v28 = v27;
      v10 = v55;
      v16 = v47;
      (*(v47 + 8))(v28, v26);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLLinearRegressor.Regressor);
      --v19;
    }

    while (v51 != 1);
  }

  v29 = v10[18];
  v57 = v10[16];
  v30 = v10[17];
  static MetricsKey.trainingMaximumError.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v33 = v32;
  v34 = *(v30 + 8);
  v34(v29, v57);
  if ((v33 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(8, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v36 = v55[16];
  v37 = v55[18];
  static MetricsKey.trainingError.getter();
  v58 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v39 = v38;
  v34(v37, v36);
  if ((v39 & 1) == 0)
  {
    v40 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(7, v40, *&v58);
  }

  v41 = v55[23];
  v42 = v55[22];
  v52 = v55[18];
  v54 = v55[21];
  v59 = specialized _dictionaryUpCast<A, B, C, D>(_:)(_swiftEmptyDictionarySingleton);

  _swiftEmptyDictionarySingleton;
  v41;
  v42;
  v54;
  v52;
  return (v55[1])(v48, v59, v49 >= v46);
}

uint64_t LinearRegressorTrainingSessionDelegate.evaluate(from:)()
{
  v1[25] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v1[26] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v1[27] = v3;
  v4 = *(v3 - 8);
  v1[28] = v4;
  v1[29] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[32] = swift_task_alloc(v7);
  v1[33] = swift_task_alloc(v7);
  v1[34] = swift_task_alloc(v7);
  v1[35] = swift_task_alloc(v7);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[36] = swift_task_alloc(v8);
  v1[37] = swift_task_alloc(v8);
  v9 = type metadata accessor for DataFrame(0);
  v1[38] = v9;
  v10 = *(v9 - 8);
  v1[39] = v10;
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[40] = swift_task_alloc(v11);
  v1[41] = swift_task_alloc(v11);
  v1[42] = swift_task_alloc(v11);
  v1[43] = swift_task_alloc(v11);
  return swift_task_switch(LinearRegressorTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + *(v0 + 200);
  v2 = 0;
  swift_beginAccess(v1, v0 + 16, 0, 0);
  v3 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  if (!__swift_getEnumTagSinglePayload(v1, 1, v3))
  {
    v8 = *(v0 + 296);
    v9 = *(v3 + 24);
    v73 = *(v1 + v9);
    v70 = *(v1 + v9 + 8);
    v10 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + *(v0 + 200);
    swift_beginAccess(v10, v0 + 40, 0, 0);
    v62 = v10;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v8, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    v67 = type metadata accessor for MLLinearRegressor.Model(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v67) == 1)
    {
      BUG();
    }

    v76 = *(v0 + 344);
    v11 = *(v0 + 336);
    v12 = *(v0 + 312);
    v13 = *(v0 + 304);
    v85 = *(v0 + 296);
    v14 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData + *(v0 + 200);
    swift_beginAccess(v14, v0 + 64, 0, 0);
    v80 = v14;
    (*(v12 + 16))(v11, v14, v13);
    v70;
    MLLinearRegressor.Model.applied(to:eventHandler:)(v11, 0, 0);
    v59 = *(v0 + 344);
    v44 = *(v0 + 304);
    v16 = *(v0 + 296);
    v53 = *(v0 + 280);
    v65 = *(v0 + 272);
    v51 = *(v0 + 240);
    v17 = *(v0 + 232);
    v55 = *(v0 + 224);
    v86 = *(v0 + 216);
    v49 = *(v0 + 200);
    v46 = *(v0 + 208);
    v56 = *(*(v0 + 312) + 8);
    (v56)(*(v0 + 336));
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLLinearRegressor.Model);
    DataFrame.subscript.getter(v73, v70, &type metadata for Double);
    *(v0 + 136) = 0;
    v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
    OptionalColumnProtocol.filled(with:)(v0 + 136, v86, v60);
    v18 = *(v55 + 8);
    v18(v17, v86);
    swift_beginAccess(v80, v0 + 88, 32, 0);
    DataFrame.subscript.getter(v73, v70, &type metadata for Double);
    swift_endAccess(v0 + 88);
    *(v0 + 144) = 0;
    OptionalColumnProtocol.filled(with:)(v0 + 144, v86, v60);
    v58 = v18;
    v18(v17, v86);
    v87 = lazy protocol witness table accessor for type Double and conformance Double();
    v19 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
    maximumAbsoluteError<A, B, C>(_:_:)(v53, v65, &type metadata for Double, v51, v51, v87, v19, v19);
    v81 = *(v0 + 152);
    v20 = v19;
    rootMeanSquaredError<A, B, C>(_:_:)(v53, v65, &type metadata for Double, v51, v51, v87, v19, v19);
    v21 = *(v0 + 160);
    v22 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics;
    v23 = *(v49 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
    v24 = *(v49 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8);
    *(v49 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics) = v81;
    *(v49 + v22 + 8) = v21;
    v25 = *(v49 + v22 + 16);
    *(v49 + v22 + 16) = 0;
    outlined consume of MLRegressorMetrics?(v23, v24, v25);
    v26 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData + v49;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData + v49, v0 + 112, 0, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, v46, &demangling cache variable for type metadata for DataFrame?);
    if (__swift_getEnumTagSinglePayload(v46, 1, v44) == 1)
    {
      v88 = *(v0 + 344);
      v74 = *(v0 + 304);
      v27 = *(v0 + 280);
      v28 = *(v0 + 272);
      v29 = *(v0 + 248);
      v30 = *(v0 + 240);
      v77 = *(v0 + 200);
      v82 = *(v0 + 208);
      v70;
      v31 = *(v29 + 8);
      v31(v28, v30);
      v31(v27, v30);
      v56(v88, v74);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, &demangling cache variable for type metadata for DataFrame?);
      v32 = (v77 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
      v33 = *(v77 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
      v34 = *(v77 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
      v35 = *v32;
      *(v32 - 1) = 0;
      v36 = -1;
    }

    else
    {
      v37 = *(v0 + 288);
      (*(*(v0 + 312) + 32))(*(v0 + 328), *(v0 + 208), *(v0 + 304));
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, v37, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
      if (__swift_getEnumTagSinglePayload(v37, 1, v67) == 1)
      {
        BUG();
      }

      v38 = *(v0 + 288);
      v39 = *(v0 + 320);
      MLLinearRegressor.Model.applied(to:eventHandler:)(*(v0 + 328), 0, 0);
      v83 = *(v0 + 328);
      v63 = *(v0 + 344);
      v68 = *(v0 + 320);
      v50 = *(v0 + 304);
      v47 = *(v0 + 280);
      v48 = *(v0 + 272);
      v78 = *(v0 + 264);
      v57 = *(v0 + 256);
      v52 = *(v0 + 248);
      v54 = *(v0 + 240);
      v40 = *(v0 + 232);
      v45 = *(v0 + 200);
      v41 = *(v0 + 216);
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 288), type metadata accessor for MLLinearRegressor.Model);
      DataFrame.subscript.getter(v73, v70, &type metadata for Double);
      *(v0 + 168) = 0;
      OptionalColumnProtocol.filled(with:)(v0 + 168, v41, v60);
      v58(v40, v41);
      DataFrame.subscript.getter(v73, v70, &type metadata for Double);
      v70;
      *(v0 + 176) = 0;
      OptionalColumnProtocol.filled(with:)(v0 + 176, v41, v60);
      v58(v40, v41);
      maximumAbsoluteError<A, B, C>(_:_:)(v78, v57, &type metadata for Double, v54, v54, v87, v20, v20);
      v71 = *(v0 + 184);
      rootMeanSquaredError<A, B, C>(_:_:)(v78, v57, &type metadata for Double, v54, v54, v87, v20, v20);
      v42 = *(v52 + 8);
      v42(v57, v54);
      v42(v78, v54);
      v56(v68, v50);
      v56(v83, v50);
      v42(v48, v54);
      v42(v47, v54);
      v56(v63, v50);
      v43 = *(v0 + 192);
      v32 = (v45 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
      v33 = *(v45 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
      v34 = *(v45 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
      v35 = *v32;
      *(v32 - 2) = v71;
      *(v32 - 1) = v43;
      v36 = 0;
    }

    *v32 = v36;
    outlined consume of MLRegressorMetrics?(v33, v34, v35);
    v2 = 1;
  }

  v69 = v2;
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  v6 = *(v0 + 320);
  v7 = *(v0 + 296);
  v64 = *(v0 + 288);
  v66 = *(v0 + 280);
  v61 = *(v0 + 272);
  v79 = *(v0 + 264);
  v72 = *(v0 + 256);
  v75 = *(v0 + 208);
  v84 = *(v0 + 232);
  *(v0 + 344);
  v4;
  v5;
  v6;
  v7;
  v64;
  v66;
  v61;
  v79;
  v72;
  v84;
  v75;
  return (*(v0 + 8))(v69, 1);
}

uint64_t LinearRegressorTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = v2;
  v30 = v3;
  v32 = a1;
  v5 = 0xEB0000000064657ALL;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v31 = v27;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Regressor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *a2;
  v29 = v27;
  switch(v12)
  {
    case 0:
      v13 = v2;
      v14 = 0x696C616974696E69;
      break;
    case 1:
      v13 = v2;
      v14 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v13 = v2;
      v14 = 0x697461756C617665;
LABEL_7:
      v5 = 0xEA0000000000676ELL;
      break;
    case 4:
      v13 = v2;
      v5 = 0xEB00000000676E69;
      v14 = 0x636E657265666E69;
      break;
  }

  LODWORD(v15) = 0;
  v16 = _stringCompareWithSmolCheck(_:_:expecting:)(v14, v5, 0x676E696E69617274, 0xE800000000000000, 0);
  v5;
  v17 = (v16 & 1) == 0;
  v4 = v13;
  if (!v17)
  {
LABEL_9:
    v18 = v30;
    v19 = v30 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor;
    swift_beginAccess(v30 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, v27, 0, 0);
    v20 = v29;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v29, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
    v21 = type metadata accessor for MLLinearRegressor.Regressor(0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      BUG();
    }

    v22 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v18;
    swift_beginAccess(v22, v28, 0, 0);
    v23 = v22;
    v15 = v31;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v31, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
    v24 = type metadata accessor for MLLinearRegressor.Model(0);
    if (__swift_getEnumTagSinglePayload(v15, 1, v24) == 1)
    {
      BUG();
    }

    v25 = lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor();
    SupervisedTabularEstimator.write(_:to:overwrite:)(v15, v32, 1, v21, v25);
    outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLLinearRegressor.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLLinearRegressor.Regressor);
    if (!v4)
    {
      LOBYTE(v15) = 1;
    }
  }

  return v15;
}

uint64_t LinearRegressorTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v11);
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLLinearRegressor.PersistentParameters);
    MLLinearRegressor.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLLinearRegressor.PersistentParameters);
  }
}

NSURL *LinearRegressorTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v33 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v32 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLLinearRegressor.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for MLLinearRegressor.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLLinearRegressor.Regressor?(v24, v20, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for MLLinearRegressor.PersistentParameters);
      v26 = v36;
      LinearRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLLinearRegressor.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLLinearRegressor.PersistentParameters);
    }
  }

  return result;
}

uint64_t LinearRegressorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = v2;
  v5 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v6 = *(v5 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a2 + v6);
  v10 = *(a2 + v6 + 8);
  v45 = a1;
  v46 = v5;
  if (v9 ^ v7 | v10 ^ v8 && (v43 = a2, v11 = v7, v12 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v9, v10, 0), v5 = v46, a1 = v45, v13 = v11, a2 = v43, (v12 & 1) == 0))
  {
    v39 = v9;
    v40 = v10;
    v45 = v8;
    v46 = v13;
    v8;
    v10;
    v21 = String.init<A>(_:)(&v39, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
    v44 = v32;
    v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    v20 = 0xED00006E6D756C6FLL;
    v22 = 0x6320746567726154;
  }

  else
  {
    v14 = *(a1 + *(v5 + 28));
    v14;
    v41 = v14;
    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v14);
    v16 = *(a2 + *(v5 + 28));
    v16;
    v43 = v16;
    v17 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v15, v17);
    v15;
    v17;
    if (v18)
    {
      result = static MLLinearRegressor.ModelParameters.firstIncompatibility(_:_:)(*(v46 + 32) + v45, *(v46 + 32) + a2);
      v20 = v34;
      if (!v34)
      {
        return result;
      }

      v44 = v38;
      v21 = v37;
      v45 = v36;
      v22 = v33;
      v46 = v35;
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
    }

    else
    {
      v42 = "Classifier.swift" + 0x8000000000000000;
      v41;
      v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
      v46 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v45 = v27;
      v41;
      v43;
      v28 = BidirectionalCollection<>.joined(separator:)(8236, 0xE200000000000000, v25, v26);
      v30 = v29;
      v20 = "Classifier.swift" + 0x8000000000000000;
      v43;
      v39 = v28;
      v40 = v30;
      v21 = String.init<A>(_:)(&v39, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v44 = v31;
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
      v22 = 0xD000000000000011;
    }
  }

  *v24 = v22;
  *(v24 + 8) = v20;
  *(v24 + 16) = v46;
  *(v24 + 24) = v45;
  *(v24 + 32) = v21;
  *(v24 + 40) = v44;
  *(v24 + 48) = 3;
  return swift_willThrow(&type metadata for MLCreateError, v23);
}

uint64_t LinearRegressorTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v1 = v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingData;
  v2 = type metadata accessor for DataFrame(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationData, &demangling cache variable for type metadata for DataFrame?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_regressor, &demangling cache variable for type metadata for MLLinearRegressor.Regressor?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16));
  outlined consume of MLRegressorMetrics?(*(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8), *(v0 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16));
  return v0;
}

uint64_t type metadata accessor for LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for LinearRegressorTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for LinearRegressorTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for LinearRegressorTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLinearRegressor.PersistentParameters?, type metadata accessor for MLLinearRegressor.PersistentParameters);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      result = type metadata accessor for DataFrame(319);
      if (v4 <= 0x3F)
      {
        v8[2] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for DataFrame?, &type metadata accessor for DataFrame);
        if (v5 <= 0x3F)
        {
          v8[3] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLinearRegressor.Regressor?, type metadata accessor for MLLinearRegressor.Regressor);
          if (v6 <= 0x3F)
          {
            v8[4] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLLinearRegressor.Model?, type metadata accessor for MLLinearRegressor.Model);
            if (v7 <= 0x3F)
            {
              v8[5] = *(result - 8) + 64;
              v8[6] = &unk_345B38;
              v8[7] = &unk_345B38;
              result = swift_updateClassMetadata2(a1, 256, 8, v8, a1 + 80);
              if (!result)
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance LinearRegressorTrainingSessionDelegate(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_task_alloc(192);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LinearRegressorTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance LinearRegressorTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(352);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return LinearRegressorTrainingSessionDelegate.evaluate(from:)();
}

uint64_t lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor()
{
  result = lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor;
  if (!lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor)
  {
    v1 = type metadata accessor for MLLinearRegressor.Regressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLinearRegressor.Regressor, v1);
    lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor;
  if (!lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor)
  {
    v1 = type metadata accessor for MLLinearRegressor.Regressor(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLinearRegressor.Regressor, v1);
    lazy protocol witness table cache variable for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor = result;
  }

  return result;
}

uint64_t outlined consume of MLRegressorMetrics?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of Result<_RegressorMetrics, Error>(a1, a2, a3);
  }

  return result;
}

uint64_t outlined assign with take of MLLinearRegressor.Regressor?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 40))(a2, a1, v3);
  return a2;
}

uint64_t CMLParameters.Key.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x6F635F6C6562616CLL;
      break;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
    case 73:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x69746164696C6176;
      break;
    case 4:
      result = 1635017060;
      break;
    case 5:
      result = 0x746567726174;
      break;
    case 6:
      result = 0x736E6F6974706FLL;
      break;
    case 7:
      result = 7107189;
      break;
    case 8:
      result = 1752457584;
      break;
    case 9:
      result = 0x61625F726F727265;
      break;
    case 10:
      result = 0x726564616568;
      break;
    case 11:
      result = 0x6574696D696C6564;
      break;
    case 12:
      result = 0x5F746E656D6D6F63;
      break;
    case 13:
      result = 0x635F657061637365;
      break;
    case 14:
      result = 0x715F656C62756F64;
      break;
    case 15:
      result = 0x68635F65746F7571;
      break;
    case 16:
    case 64:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x65756C61765F616ELL;
      break;
    case 18:
      result = 0x7265745F656E696CLL;
      break;
    case 19:
      result = 0x635F74757074756FLL;
      break;
    case 20:
      result = 0x696D696C5F776F72;
      break;
    case 21:
      result = 0x776F725F70696B73;
      break;
    case 22:
      result = 0x6C6F635F74786574;
      break;
    case 23:
      result = 0x6E6F697461636F6CLL;
      break;
    case 24:
      result = 0x635F6874676E656CLL;
      break;
    case 25:
      result = 1954047348;
      break;
    case 26:
      result = 0x6F635F6E656B6F74;
      break;
    case 27:
      result = 0x656D616E656C6966;
      break;
    case 28:
      result = 0x6974636964657270;
      break;
    case 29:
      result = 0x63697274656DLL;
      break;
    case 30:
      result = 0x6F7272655F78616DLL;
      break;
    case 31:
      result = 1702063474;
      break;
    case 32:
    case 54:
    case 62:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x7374706F5FLL;
      break;
    case 34:
      result = 0x745F74757074756FLL;
      break;
    case 35:
      result = 0x646C656966;
      break;
    case 36:
      result = 0x65665F6F69647561;
      break;
    case 37:
      result = 0x5F6E6F6973736573;
      break;
    case 38:
      result = 0x736D657469;
      break;
    case 39:
      result = 107;
      break;
    case 40:
      result = 0x65736F62726576;
      break;
    case 41:
      result = 0x5F6C6C615F746567;
      break;
    case 42:
      result = 0x74657361746164;
      break;
    case 43:
      result = 0x7461645F72657375;
      break;
    case 44:
      result = 0x7461645F6D657469;
      break;
    case 45:
      result = 0x61645F6172747865;
      break;
    case 46:
      result = 0x5F7473657261656ELL;
      break;
    case 47:
      result = 1937010799;
      break;
    case 48:
      result = 0x7972657571;
      break;
    case 49:
      result = 0x6B5F706F74;
      break;
    case 50:
      result = 0x7463697274736572;
      break;
    case 51:
      result = 0x6564756C637865;
      break;
    case 52:
      result = 0xD00000000000001DLL;
      break;
    case 53:
    case 56:
      result = 0xD000000000000017;
      break;
    case 55:
      result = 0x7366666F747563;
      break;
    case 57:
      result = 0xD000000000000011;
      break;
    case 58:
      result = 0xD000000000000014;
      break;
    case 59:
      result = 0xD000000000000016;
      break;
    case 60:
      result = 0xD000000000000019;
      break;
    case 61:
      result = 0x7963617275636361;
      break;
    case 63:
      result = 0x625F74726F706572;
      break;
    case 65:
      result = 0x6F69736963657270;
      break;
    case 66:
      result = 0x6C6C61636572;
      break;
    case 67:
      result = 6518113;
      break;
    case 68:
      result = 0x767275635F636F72;
      break;
    case 69:
      result = 0x65726F63735F3166;
      break;
    case 70:
      result = 0x73736F6C5F676F6CLL;
      break;
    case 71:
      result = 0x656C797473;
      break;
    case 72:
      result = 0x746E65746E6F63;
      break;
    case 74:
      result = 0xD000000000000011;
      break;
    case 75:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t MLTextClassifier.FeatureExtractorType.description.getter()
{
  v1 = type metadata accessor for URL(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLTextClassifier.FeatureExtractorType(v0, &v15);
  switch(__swift_getEnumTagSinglePayload(&v15, 4, v1))
  {
    case 0u:
      (*(v2 + 32))(&v15, &v15, v1);
      v16 = 0;
      v17 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      v9 = v17;
      v17;
      v16 = 0xD00000000000001ALL;
      v17 = "image_column_name" + 0x8000000000000000;
      v10._countAndFlagsBits = URL.path.getter(v9);
      object = v10._object;
      String.append(_:)(v10);
      object;
      v12._countAndFlagsBits = 39;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = v16;
      (*(v2 + 8))(&v15, v1);
      break;
    case 1u:
      v13 = 0xD000000000000015;
      break;
    case 2u:
      v13 = 0xD000000000000016;
      break;
    case 3u:
      v13 = 0xD000000000000027;
      break;
    case 4u:
      v13 = 0xD000000000000046;
      break;
  }

  return v13;
}

uint64_t type metadata accessor for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.FeatureExtractorType;
  if (!type metadata singleton initialization cache for MLTextClassifier.FeatureExtractorType)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.FeatureExtractorType);
  }

  return result;
}

uint64_t outlined init with copy of MLTextClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

unint64_t MLTextClassifier.FeatureExtractorType.playgroundDescription.getter()
{
  v1 = v0;
  result = MLTextClassifier.FeatureExtractorType.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

id NLModelEmbeddingType.init(_:)(uint64_t a1)
{
  v10[0] = v1;
  v2 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLTextClassifier.FeatureExtractorType(a1, v10);
  v5 = type metadata accessor for URL(0);
  switch(__swift_getEnumTagSinglePayload(v10, 4, v5))
  {
    case 0u:
      v7 = NLModelEmbeddingTypeCustom;
      outlined destroy of MLTextClassifier.FeatureExtractorType(a1);
      outlined destroy of MLTextClassifier.FeatureExtractorType(v10);
      return v7;
    case 1u:
      v6 = &NLModelEmbeddingTypeStatic;
      goto LABEL_6;
    case 2u:
    case 3u:
      v6 = &NLModelEmbeddingTypeDynamic;
      goto LABEL_6;
    case 4u:
      v6 = &NLModelEmbeddingTypeContextual;
LABEL_6:
      v9 = *v6;
      outlined destroy of MLTextClassifier.FeatureExtractorType(a1);
      return v9;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLTextClassifier.FeatureExtractorType(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *__src;
    *v3 = *__src;
    v3 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v6))
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    (*(*(v6 - 8) + 16))(__dst, __src, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 4, v6);
  }

  return v3;
}

uint64_t destroy for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(a1, 4, v1);
  if (!result)
  {
    return (*(*(v1 - 8) + 8))(a1, v1);
  }

  return result;
}

void *initializeWithCopy for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 16))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  return __dst;
}

void *assignWithCopy for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 4, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 4, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 24))(__dst, __src, v3);
      return __dst;
    }

    (*(v6 + 8))(__dst, v3);
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  if (v5)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v3 - 8) + 16))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v3);
  return __dst;
}

void *initializeWithTake for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  return __dst;
}

void *assignWithTake for MLTextClassifier.FeatureExtractorType(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 4, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 4, v3);
  if (!EnumTagSinglePayload)
  {
    v6 = *(v3 - 8);
    if (!v5)
    {
      (*(v6 + 40))(__dst, __src, v3);
      return __dst;
    }

    (*(v6 + 8))(__dst, v3);
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  if (v5)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v3 - 8) + 32))(__dst, __src, v3);
  __swift_storeEnumTagSinglePayload(__dst, 0, 4, v3);
  return __dst;
}

uint64_t sub_1EEF73(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v2);
  v4 = EnumTagSinglePayload - 4;
  if (EnumTagSinglePayload < 5)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_1EEFC1(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  if (a2)
  {
    v4 = a2 + 4;
  }

  v5 = type metadata accessor for URL(0);
  return __swift_storeEnumTagSinglePayload(a1, v4, a3, v5);
}

uint64_t type metadata completion function for MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload(a1, 256, *(result - 8) + 64, 4);
    return 0;
  }

  return result;
}

uint64_t outlined destroy of MLTextClassifier.FeatureExtractorType(uint64_t a1)
{
  v1 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLTextClassifier.ModelAlgorithmType.description.getter()
{
  return MLTextClassifier.ModelAlgorithmType.description.getter();
}

{
  v1 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTextClassifier.ModelAlgorithmType(v0, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v4);
  if (!EnumCaseMultiPayload)
  {
    return 0x20746E452078614DLL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0xD00000000000001ELL;
  }

  outlined init with take of MLTextClassifier.FeatureExtractorType(v15, v15);
  v10 = MLTextClassifier.FeatureExtractorType.description.getter();
  v12 = v11;
  v15[0] = v10;
  v15[1] = v11;
  v11;
  v13._countAndFlagsBits = 0x6C65646F4D20;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v12;
  v9 = v15[0];
  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  return v9;
}

uint64_t type metadata accessor for MLTextClassifier.ModelAlgorithmType(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.ModelAlgorithmType;
  if (!type metadata singleton initialization cache for MLTextClassifier.ModelAlgorithmType)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.ModelAlgorithmType);
  }

  return result;
}

uint64_t outlined init with copy of MLTextClassifier.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *MLTextClassifier.ModelAlgorithmType.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTextClassifier.ModelAlgorithmType(v1, &v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v18, v6);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = "Dynamic Text Embedding" + 0x8000000000000000;
      v12 = 0xD00000000000001ELL;
    }

    else
    {
      outlined init with take of MLTextClassifier.FeatureExtractorType(&v18, &v18);
      v13 = MLTextClassifier.FeatureExtractorType.description.getter();
      v15 = v14;
      v19 = v13;
      v20 = v14;
      v14;
      v16._countAndFlagsBits = 0x6C65646F4D20;
      v16._object = 0xE600000000000000;
      String.append(_:)(v16);
      v15;
      v12 = v19;
      v11 = v20;
      outlined destroy of MLActivityClassifier.ModelParameters(&v18, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    }
  }

  else
  {
    v11 = 0xED00006C65646F4DLL;
    v12 = 0x20746E452078614DLL;
  }

  result = &type metadata for String;
  v2[3] = &type metadata for String;
  *v2 = v12;
  v2[1] = v11;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *__src;
    *v3 = *__src;
    v3 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    v7 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v7))
    {
      v8 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v8 - 8) + 64));
    }

    else
    {
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v7);
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v11 + 8] = __src[v11 + 8];
    *&__dst[v11] = *&__src[v11];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return v3;
}

uint64_t destroy for MLTextClassifier.ModelAlgorithmType(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    v3 = type metadata accessor for URL(0);
    result = __swift_getEnumTagSinglePayload(a1, 4, v3);
    if (!result)
    {
      return (*(*(v3 - 8) + 8))(a1, v3);
    }
  }

  return result;
}

char *initializeWithCopy for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 16))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
  __dst[v7 + 8] = __src[v7 + 8];
  *&__dst[v7] = *&__src[v7];
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

char *assignWithCopy for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v4))
    {
      v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(*(v4 - 8) + 16))(__dst, __src, v4);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v7 + 8] = __src[v7 + 8];
    *&__dst[v7] = *&__src[v7];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return __dst;
}

char *initializeWithTake for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 4, v4))
  {
    v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
    memcpy(__dst, __src, *(*(v5 - 8) + 64));
  }

  else
  {
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
  }

  v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
  __dst[v7 + 8] = __src[v7 + 8];
  *&__dst[v7] = *&__src[v7];
  swift_storeEnumTagMultiPayload(__dst, a3, 2);
  return __dst;
}

char *assignWithTake for MLTextClassifier.ModelAlgorithmType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    if (swift_getEnumCaseMultiPayload(__src, a3) != 2)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v4 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(__src, 4, v4))
    {
      v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }

    else
    {
      (*(*(v4 - 8) + 32))(__dst, __src, v4);
      __swift_storeEnumTagSinglePayload(__dst, 0, 4, v4);
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    __dst[v7 + 8] = __src[v7 + 8];
    *&__dst[v7] = *&__src[v7];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
  }

  return __dst;
}

uint64_t type metadata completion function for MLTextClassifier.ModelAlgorithmType(uint64_t a1)
{
  v6[0] = "\t";
  v6[1] = "\t";
  result = type metadata accessor for MLTextClassifier.FeatureExtractorType(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2(v5, *(result - 8) + 64);
    v6[2] = v5;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v6, v3, v4);
    return 0;
  }

  return result;
}

uint64_t static MLImageClassifier.__Defaults.validation.getter(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = v4;
  if (*a1 != -1)
  {
    swift_once(a1, a4);
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  return outlined init with copy of MLTrainingSessionParameters(v8, v6, a2);
}

uint64_t one-time initialization function for algorithm()
{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  __swift_allocate_value_buffer(v0, static MLImageClassifier.__Defaults.algorithm);
  v1 = __swift_project_value_buffer(v0, static MLImageClassifier.__Defaults.algorithm);
  v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  *v1 = 2;
  *(v1 + 8) = 0;
  v3 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  result = swift_storeEnumTagMultiPayload(v1, v3, 0);
  *(v1 + v2) = 0;
  return result;
}

uint64_t MLWordTagger.write(to:metadata:)(uint64_t a1, const void *a2)
{
  qmemcpy(v5, a2, 0x48uLL);
  v3 = *v2;
  return NLModel.write(to:defaultName:metadata:)(a1, 0x6767615464726F57, 0xEA00000000007265, v5);
}

uint64_t MLWordTagger.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  qmemcpy(v5, a2, 0x48uLL);
  v3 = *v2;
  return NLModel.write(toFile:defaultName:metadata:)(string, 0x6767615464726F57, 0xEA00000000007265, v5);
}

uint64_t *initializeBufferWithCopyOfBuffer for AnyClassificationMetrics(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v4 = *(*(v3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v2 = *a2;
    v2 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(a2, v3) == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = 1;
      v7 = v3;
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v7 = v3;
      v6 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v7, v6);
  }

  return v2;
}

uint64_t destroy for AnyClassificationMetrics(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v2);
  v4 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (EnumCaseMultiPayload == 1)
  {
    v4 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t initializeWithCopy for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithCopy for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t outlined destroy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t initializeWithTake for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithTake for AnyClassificationMetrics(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(a1);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t type metadata accessor for AnyClassificationMetrics(uint64_t a1)
{
  result = type metadata singleton initialization cache for AnyClassificationMetrics;
  if (!type metadata singleton initialization cache for AnyClassificationMetrics)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AnyClassificationMetrics);
  }

  return result;
}

uint64_t type metadata completion function for AnyClassificationMetrics(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>;
  if (!lazy cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ClassificationMetrics<String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>> = result;
    }
  }

  return result;
}

uint64_t AnyClassificationMetrics.init(_:_:)(uint64_t a1, uint64_t a2)
{
  v50 = v2;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v46 = *(v43 - 8);
  v3 = *(v46 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v45 = &v40;
  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v6 = *(*(v42 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v40;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v53 = &v40;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v49 = *(v11 - 8);
  v12 = *(v49 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v15 = *(*(v47 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v40;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v54 = &v40;
  v51 = a1;
  v20 = AnyColumn.wrappedElementType.getter();
  v52 = a2;
  v21 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v20, &type metadata for String) && swift_dynamicCastMetatype(v21, &type metadata for String))
  {
    v22 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v40 = 0;
    v41 = 0xE000000000000000;
    v53 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    OptionalColumnProtocol.filled(with:)(&v40, v11, v53);
    v23 = *(v49 + 8);
    v23(&v40, v11, v22);
    v24 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v40 = 0;
    v41 = 0xE000000000000000;
    v25 = v48;
    OptionalColumnProtocol.filled(with:)(&v40, v11, v53);
    v23(&v40, v11, v24);
    v26 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v27 = v50;
    ClassificationMetrics.init<A, B>(_:_:)(v54, v25, &type metadata for String, v47, v47, &protocol witness table for String, v26, v26);
    v28 = 0;
  }

  else
  {
    if (!swift_dynamicCastMetatype(v20, &type metadata for Int) || !swift_dynamicCastMetatype(v21, &type metadata for Int))
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, "sificationMetrics.swift" + 0x8000000000000000, "CreateML/AnyClassificationMetrics.swift", 39, 2, 74, 0);
      BUG();
    }

    v29 = v45;
    v30 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v40 = 0;
    v54 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v31 = v43;
    OptionalColumnProtocol.filled(with:)(&v40, v43, v54);
    v32 = *(v46 + 8);
    v32(v29, v31, v30);
    v33 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v40 = 0;
    v34 = v44;
    OptionalColumnProtocol.filled(with:)(&v40, v31, v54);
    v32(v29, v31, v33);
    v35 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v27 = v50;
    ClassificationMetrics.init<A, B>(_:_:)(v53, v34, &type metadata for Int, v42, v42, &protocol witness table for Int, v35, v35);
    v28 = 1;
  }

  v36 = type metadata accessor for AnyColumn(0);
  v37 = *(*(v36 - 8) + 8);
  v37(v52, v36);
  v37(v51, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  return swift_storeEnumTagMultiPayload(v27, v38, v28);
}

uint64_t AnyClassificationMetrics.stringLabels.getter()
{
  v45 = v0;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v42 = *(v43 - 8);
  v1 = *(v42 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v41 = v36;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v45, v36);
  if (swift_getEnumCaseMultiPayload(v36, v9) == 1)
  {
    v13 = v41;
    v14 = v43;
    (*(v42 + 32))(v41, v36, v43);
    v15 = ClassificationMetrics.labels.getter(v14);
    v16 = *(v15 + 16);
    if (v16)
    {
      v44 = _swiftEmptyArrayStorage;
      v37 = v16;
      v17 = v15;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v18 = v44;
      v19 = specialized _NativeSet.startIndex.getter(v17);
      v21 = v20;
      v23 = v22;
      v38 = v17;
      do
      {
        if (v19 < 0 || v19 >= 1 << *(v17 + 32))
        {
          BUG();
        }

        v24 = *(v17 + 8 * (v19 >> 6) + 56);
        if (!_bittest64(&v24, v19))
        {
          BUG();
        }

        if (*(v17 + 36) != v21)
        {
          BUG();
        }

        v45 = v21;
        v36[1] = *(*(v17 + 48) + 8 * v19);
        v25 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v44 = v18;
        v27 = v18[2];
        v28 = v18[3];
        if (v28 >> 1 <= v27)
        {
          v39 = v25;
          v40 = v26;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28 >= 2, v27 + 1, 1);
          v26 = v40;
          v25 = v39;
          v18 = v44;
        }

        v18[2] = v27 + 1;
        v29 = 2 * v27;
        v18[v29 + 4] = v25;
        v18[v29 + 5] = v26;
        v17 = v38;
        v30 = specialized _NativeSet.index(after:)(v19, v45, v23 & 1, v38);
        v19 = v30;
        v21 = v31;
        v23 = v32;
        v33 = v37-- == 1;
        v13 = v41;
      }

      while (!v33);
      outlined consume of Set<Int>.Index._Variant(v30, v31, v32);
      v17;
      v14 = v43;
    }

    else
    {
      v15;
      v18 = _swiftEmptyArrayStorage;
    }

    v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v18);
    (*(v42 + 8))(v13, v14);
  }

  else
  {
    (*(v5 + 32))(v36, v36, v4);
    v34 = ClassificationMetrics.labels.getter(v4);
    (*(v5 + 8))(v36, v4);
  }

  return v34;
}

uint64_t AnyClassificationMetrics.labelCount.getter()
{
  v22 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v23 = *(v1 - 8);
  v2 = *(v23 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v24 = &v21;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v25 = &v21;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v22, &v21);
  if (swift_getEnumCaseMultiPayload(&v21, v10) == 1)
  {
    v14 = v24;
    v15 = v23;
    (*(v23 + 32))(v24, &v21, v1);
    v16 = ClassificationMetrics.labels.getter(v1);
    v17 = *(v16 + 16);
    v16;
    (*(v15 + 8))(v14, v1);
  }

  else
  {
    v18 = v25;
    (*(v6 + 32))(v25, &v21, v5);
    v19 = ClassificationMetrics.labels.getter(v5);
    v17 = *(v19 + 16);
    v19;
    (*(v6 + 8))(v18, v5);
  }

  return v17;
}

uint64_t AnyClassificationMetrics.exampleCount.getter()
{
  v20 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v21 = *(v1 - 8);
  v2 = *(v21 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v22 = &v19;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v23 = &v19;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v20, &v19);
  if (swift_getEnumCaseMultiPayload(&v19, v10) == 1)
  {
    v14 = v22;
    v15 = v21;
    (*(v21 + 32))(v22, &v19, v1);
    v16 = ClassificationMetrics.exampleCount.getter(v1);
    (*(v15 + 8))(v14, v1);
  }

  else
  {
    v17 = v23;
    (*(v6 + 32))(v23, &v19, v5);
    v16 = ClassificationMetrics.exampleCount.getter(v5);
    (*(v6 + 8))(v17, v5);
  }

  return v16;
}

double AnyClassificationMetrics.accuracy.getter()
{
  v22 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v20 = &v18;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v21 = &v18;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(*&v22, &v18);
  if (swift_getEnumCaseMultiPayload(&v18, v10) == 1)
  {
    v14 = v20;
    v15 = v19;
    (*(v19 + 32))(v20, &v18, v1);
    v22 = ClassificationMetrics.accuracy.getter(v1);
    (*(v15 + 8))(v14, v1);
  }

  else
  {
    v16 = v21;
    (*(v6 + 32))(v21, &v18, v5);
    v22 = ClassificationMetrics.accuracy.getter(v5);
    (*(v6 + 8))(v16, v5);
  }

  return v22;
}

uint64_t outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t AnyClassificationMetrics.makeConfusionMatrix()()
{
  v19 = v1;
  v23 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v20 = *(v2 - 8);
  v3 = *(v20 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v21 = &v19;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v22 = &v19;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v19, &v19);
  if (swift_getEnumCaseMultiPayload(&v19, v11) == 1)
  {
    v15 = v21;
    v16 = v20;
    (*(v20 + 32))(v21, &v19, v2);
    ClassificationMetrics.makeConfusionMatrix<>()(v2, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
    return (*(v16 + 8))(v15, v2);
  }

  else
  {
    v18 = v22;
    (*(v7 + 32))(v22, &v19, v6);
    ClassificationMetrics.makeConfusionMatrix<>()(v6, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    return (*(v7 + 8))(v18, v6);
  }
}

uint64_t outlined consume of Set<Int>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1, a2;
  }

  return result;
}

uint64_t destroy for MLObjectDetector.PersistentParameters(uint64_t a1)
{
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  v1 = *(a1 + 24);
  if (v1 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*(a1 + 16), v1);
  }

  *(a1 + 40);
  return *(a1 + 56);
}

uint64_t initializeWithCopy for MLObjectDetector.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = (a2 + 16);
  v6 = *(a2 + 24);
  if (v6 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 16) = *v5;
  }

  else
  {
    v7 = *v5;
    outlined copy of Result<_DataTable, Error>(*v5, v6);
    *(a1 + 16) = v7;
    *(a1 + 24) = v6 & 1;
  }

  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  *(a1 + 48) = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a1 + 56) = v9;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  v8;
  v9;
  return a1;
}

uint64_t assignWithCopy for MLObjectDetector.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Result<_DataTable, Error>(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  outlined consume of Result<_DataTable, Error>(v6, v7);
  v8 = (a1 + 16);
  v9 = (a2 + 16);
  v10 = *(a2 + 24);
  if (*(a1 + 24) == 0xFF)
  {
    if (v10 == -1)
    {
      *(a1 + 24) = *(a2 + 24);
      *v8 = *v9;
    }

    else
    {
      v14 = *v9;
      outlined copy of Result<_DataTable, Error>(*v9, v10);
      *(a1 + 16) = v14;
      *(a1 + 24) = v10 & 1;
    }
  }

  else if (v10 == -1)
  {
    outlined destroy of MLDataTable(a1 + 16);
    *v8 = *v9;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    v11 = *v9;
    outlined copy of Result<_DataTable, Error>(*v9, v10);
    v12 = *(a1 + 16);
    *(a1 + 16) = v11;
    v13 = *(a1 + 24);
    *(a1 + 24) = v10 & 1;
    outlined consume of Result<_DataTable, Error>(v12, v13);
  }

  *(a1 + 32) = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a1 + 40);
  *(a1 + 40) = v15;
  v15;
  v16;
  *(a1 + 48) = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a1 + 56);
  *(a1 + 56) = v17;
  v17;
  v18;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  return a1;
}

uint64_t assignWithTake for MLObjectDetector.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of Result<_DataTable, Error>(v5, v6);
  v7 = (a1 + 16);
  v8 = (a2 + 16);
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    *(a1 + 24) = *(a2 + 24);
    *v7 = *v8;
  }

  else
  {
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      outlined destroy of MLDataTable(a1 + 16);
      *v7 = *v8;
      *(a1 + 24) = *(a2 + 24);
    }

    else
    {
      v11 = *(a1 + 16);
      *(a1 + 16) = *v8;
      *(a1 + 24) = v10 & 1;
      outlined consume of Result<_DataTable, Error>(v11, v9);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  v12 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);
  v12;
  *(a1 + 48) = *(a2 + 48);
  v13 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  v13;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.PersistentParameters(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 40) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 40) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLObjectDetector.PersistentParameters(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 128) = 0;
    if (a3 < 0)
    {
      *(a1 + 129) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 129) = 0;
    }

    if (a2)
    {
      *(a1 + 40) = 2 * (a2 - 1);
    }
  }
}

uint64_t MLObjectDetector.PersistentParameters.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v28 = &v19;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v24 = *(v1 + 72);
  v11 = *(v1 + 80);
  v23 = *(v1 + 88);
  v31 = *(v1 + 96);
  v12 = *(v1 + 104);
  v29 = *(v1 + 112);
  v22 = *(v1 + 120);
  v30 = *(v1 + 128);
  v32 = v10;
  v25 = v9;
  if (v10 == -1)
  {
    swift_storeEnumTagMultiPayload(v28, v3, 4);
  }

  else
  {
    v19 = v9;
    v20 = v10 & 1;
    strcpy(v21, "imagefilename");
    HIWORD(v21[1]) = -4864;
    v22 = 0x697461746F6E6E61;
    v23 = 0xEA00000000006E6FLL;
    swift_storeEnumTagMultiPayload(&v19, v3, 2);
    outlined init with take of MLObjectDetector.ModelParameters.ValidationData(&v19, v28);
  }

  v26 = v12;
  v27 = v29;
  v13 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v14 = v13[5];
  v15 = v13[6];
  *(v2 + v13[7]) = 13;
  *(v2 + v13[8]) = 13;
  *(v2 + v13[9]) = 0;
  v16 = v13[10];
  v29 = v2 + v16;
  *(v2 + v16 + 16) = 0;
  *(v2 + v16) = 0;
  v17 = v28;
  outlined init with copy of MLObjectDetector.ModelParameters.ValidationData(v28, v2);
  *(v2 + v14) = v24;
  *(v2 + v14 + 8) = v11 & 1;
  *(v2 + v15) = v23;
  *(v2 + v15 + 8) = v31 & 1;
  MLObjectDetector.ModelParameters.gridSize.setter(v26, v27);
  v21[1] = &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType;
  v19 = v22;
  v20 = v30 & 1;
  outlined copy of MLDataTable?(v25, v32);
  outlined assign with take of Any?(&v19, v29);
  return outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
}

uint64_t MLObjectDetector.PersistentParameters.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 *a7, uint64_t a8)
{
  v55 = a3;
  __dst = v8;
  v62 = a6;
  v56 = a5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a2;
  v13 = *(a2 + 8);
  v74 = *a7;
  v75 = *(a7 + 2);
  v14 = v11 & 1;
  v70 = v11 & 1;
  v57 = v10;
  v61 = v11;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v58 = v12;
  outlined copy of MLDataTable?(v12, v13);
  outlined consume of MLDataTable?(0, 255);
  v15 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v16 = v15[5];
  v17 = *(a8 + v16);
  v18 = *(a8 + v16 + 8);
  v71 = v18;
  v19 = v15[6];
  v20 = *(a8 + v19 + 8);
  v72 = v20;
  v21 = *(a8 + v15[7]);
  v22 = *(a8 + v19);
  if (v21 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v21 >= 9.223372036854776e18)
  {
    BUG();
  }

  v23 = v15[8];
  v24 = *(a8 + v23);
  if (v24 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v24 >= 9.223372036854776e18)
  {
    BUG();
  }

  v66 = *(a8 + v23);
  v65 = v21;
  v68 = v20;
  v67 = v18;
  v60 = v22;
  v64 = v13;
  outlined init with copy of Any?(a8 + v15[10], v51);
  v59 = v17;
  v69 = v14;
  if (!v52)
  {
    a4;
    v62;
    outlined destroy of Any?(v51);
    goto LABEL_9;
  }

  a4;
  v62;
  if (!swift_dynamicCast(&v33, v51, &type metadata for Any + 8, &type metadata for MLObjectDetector.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_9:
    v25 = 1;
    v63 = 0;
    goto LABEL_10;
  }

  v63 = v33;
  v25 = v34;
LABEL_10:
  v26 = v65;
  *&v27 = v66;
  v65 = v27;
  *&v66 = v26;
  outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
  __src[0] = v57;
  LOBYTE(__src[1]) = v69;
  __src[2] = v58;
  LOBYTE(__src[3]) = v64;
  __src[4] = v55;
  __src[5] = a4;
  v54 = a4;
  __src[6] = v56;
  __src[7] = v62;
  LOWORD(__src[8]) = v74;
  BYTE2(__src[8]) = v75;
  __src[9] = v59;
  LOBYTE(__src[10]) = v67;
  __src[11] = v60;
  LOBYTE(__src[12]) = v68;
  v73 = v25 & 1;
  __src[13] = v26;
  *&__src[14] = v27;
  __src[15] = v63;
  LOBYTE(__src[16]) = v25 & 1;
  outlined retain of MLObjectDetector.PersistentParameters(__src);
  a4;
  v28 = v62;
  v62;
  v29 = v58;
  LOBYTE(v27) = v64;
  outlined consume of MLDataTable?(v58, v64);
  v30 = v57;
  outlined consume of Result<_DataTable, Error>(v57, v61);
  memcpy(__dst, __src, 0x81uLL);
  v33 = v30;
  v34 = v70;
  v35 = v29;
  v36 = LOBYTE(v27);
  v37 = v55;
  v38 = v54;
  v39 = v56;
  v40 = v28;
  v41 = v74;
  v42 = v75;
  v43 = v59;
  v44 = v71;
  v45 = v60;
  v46 = v72;
  v47 = v66;
  v48 = v65;
  v49 = v63;
  v50 = v73;
  return outlined release of MLObjectDetector.PersistentParameters(&v33);
}

NSURL *MLObjectDetector.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v87 = v2;
  v76 = v1;
  v3 = type metadata accessor for URL(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v88 = &v75;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v93 = &v75;
  v10 = alloca(v5);
  v11 = alloca(v5);
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v12 = v87;
  v13 = Data.init(contentsOf:options:)(&v75, 0);
  v87 = v12;
  if (v12)
  {
    v15 = *(v4 + 8);
    v15(a1, v3);
    v15(&v75, v3);
    v16 = 0;
    v17 = -1;
    v18 = 0;
    goto LABEL_24;
  }

  v94 = a1;
  v19 = *(v4 + 8);
  v20 = v14;
  v21 = v13;
  v89 = v19;
  v19(&v75, v3);
  v22 = objc_opt_self(NSPropertyListSerialization);
  v91 = v21;
  v90 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v131 = 0;
  v24 = [v22 propertyListWithData:isa options:0 format:0 error:&v131];
  v25 = v24;

  v26 = v131;
  v27 = v3;
  if (!v25)
  {
    v34 = v26;
    _convertNSErrorToError(_:)(v26);

    swift_willThrow(v34, "propertyListWithData:options:format:error:");
    outlined consume of Data._Representation(v91, v90);
    v16 = 0;
    v89(v94, v3);
LABEL_23:
    v17 = -1;
    v18 = 0;
    goto LABEL_24;
  }

  _bridgeAnyObjectToAny(_:)(v25);
  swift_unknownObjectRelease(v25);
  outlined init with copy of Any(v148, &v131);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  v97 = &type metadata for Any + 8;
  if (!swift_dynamicCast(__src, &v131, &type metadata for Any + 8, v28, 6))
  {
    v35 = v27;
    v36 = "parameters.plist" + 0x8000000000000000;
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    v39 = 0xD000000000000037;
LABEL_22:
    *v38 = v39;
    *(v38 + 8) = v36;
    v16 = 0;
    *(v38 + 16) = 0;
    *(v38 + 32) = 0;
    *(v38 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v37);
    outlined consume of Data._Representation(v91, v90);
    v89(v94, v35);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    goto LABEL_23;
  }

  v85 = v28;
  v29 = *&__src[0];
  specialized Dictionary.subscript.getter(0x6C6F436567616D69, 0xEF656D614E6E6D75, *&__src[0]);
  if (!*(&v132 + 1))
  {
    v35 = v27;
LABEL_18:
    v29;
    outlined destroy of Any?(&v131);
LABEL_21:
    v36 = "labeled_directories" + 0x8000000000000000;
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    v39 = 0xD00000000000003FLL;
    goto LABEL_22;
  }

  v104 = v29;
  if (!swift_dynamicCast(__src, &v131, v97, &type metadata for String, 6))
  {
    v35 = v27;
LABEL_20:
    v104;
    goto LABEL_21;
  }

  v92 = v27;
  v30 = *(&__src[0] + 1);
  v77 = *&__src[0];
  v29 = v104;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("oth String or both Int." + 0x8000000000000000), v104);
  if (!*(&v132 + 1))
  {
    v35 = v92;
    v30;
    goto LABEL_18;
  }

  v98 = v30;
  if (!swift_dynamicCast(__src, &v131, v97, &type metadata for String, 6))
  {
    v35 = v92;
    v98;
    goto LABEL_20;
  }

  v31 = *(&__src[0] + 1);
  v78 = *&__src[0];
  v32 = v98;
  v98;
  v31;
  v33 = v104;
  specialized Dictionary.subscript.getter(0x697461746F6E6E61, 0xEE00657079546E6FLL, v104);
  v96 = v31;
  if (!*(&v132 + 1))
  {
    v32;
    v31;
    v33;
    outlined destroy of Any?(&v131);
LABEL_29:
    v41 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v41, 0, 0);
    *v42 = 0xD000000000000044;
    *(v42 + 8) = "featureExtractorType" + 0x8000000000000000;
    v16 = 0;
    *(v42 + 16) = 0;
    *(v42 + 32) = 0;
    *(v42 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v41);
    outlined consume of Data._Representation(v91, v90);
    v43 = v94;
    v44 = v92;
LABEL_30:
    v89(v43, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    v18 = 1;
LABEL_31:
    v17 = -1;
    goto LABEL_24;
  }

  if (!swift_dynamicCast(__src, &v131, v97, v85, 6) || (MLObjectDetector.AnnotationType.init(dictionary:)(*&__src[0]), v131 == 2))
  {
    v98;
    v96;
    v104;
    goto LABEL_29;
  }

  v81 = v131;
  v82 = BYTE2(v131);
  specialized Dictionary.subscript.getter(0x7A69536863746162, 0xE900000000000065, v104);
  if (*(&v132 + 1))
  {
    v45 = swift_dynamicCast(__src, &v131, v97, &type metadata for Int, 6);
    if (v45)
    {
      v83 = *&__src[0];
    }

    else
    {
      v83 = 0;
    }

    v47 = v104;
    v46 = v45 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&v131);
    v46 = 1;
    v83 = 0;
    v47 = v104;
  }

  v99 = v46;
  v101 = v46;
  specialized Dictionary.subscript.getter(0x617265744978616DLL, 0xED0000736E6F6974, v47);
  if (*(&v132 + 1))
  {
    v48 = swift_dynamicCast(__src, &v131, v97, &type metadata for Int, 6);
    v49 = v98;
    if (v48)
    {
      v84 = *&__src[0];
    }

    else
    {
      v84 = 0;
    }

    v51 = v104;
    v50 = v48 ^ 1;
  }

  else
  {
    outlined destroy of Any?(&v131);
    v50 = 1;
    v84 = 0;
    v51 = v104;
    v49 = v98;
  }

  v100 = v50;
  v102 = v50;
  if (*(v51 + 16) && (v52 = specialized __RawDictionaryStorage.find<A>(_:)(0x7464695764697267, 0xE900000000000068), (v53 & 1) != 0))
  {
    outlined init with copy of Any(*(v51 + 56) + 32 * v52, __src);
  }

  else
  {
    memset(__src, 0, 32);
  }

  __dst[1] = __src[1];
  __dst[0] = __src[0];
  if (*(&__src[1] + 1))
  {
    outlined init with take of Any(__dst, &v131);
  }

  else
  {
    *(&v132 + 1) = &type metadata for Int;
    *&v131 = 13;
    outlined destroy of Any?(__dst);
  }

  v54 = v49;
  if (!swift_dynamicCast(__src, &v131, v97, &type metadata for Int, 6))
  {
    goto LABEL_63;
  }

  v79 = *&__src[0];
  v55 = v104;
  if (*(v104 + 16))
  {
    v56 = specialized __RawDictionaryStorage.find<A>(_:)(0x6769654864697267, 0xEA00000000007468);
    if (v57)
    {
      outlined init with copy of Any(*(v55 + 56) + 32 * v56, &v131);
    }

    else
    {
      v132 = 0;
      v131 = 0;
    }
  }

  else
  {
    v132 = 0;
    v131 = 0;
  }

  __src[1] = v132;
  __src[0] = v131;
  if (*(&v132 + 1))
  {
    outlined init with take of Any(__src, &v146);
  }

  else
  {
    v147 = &type metadata for Int;
    *&v146 = 13;
    outlined destroy of Any?(__src);
  }

  if (!swift_dynamicCast(&v106, &v146, v97, &type metadata for Int, 6))
  {
LABEL_63:
    v59 = v92;
    v54;
    v96;
    v104;
    v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
    *v61 = 0xD00000000000003ELL;
    *(v61 + 8) = "lid annotation type." + 0x8000000000000000;
    v16 = 0;
    *(v61 + 16) = 0;
    *(v61 + 32) = 0;
    *(v61 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v60);
    outlined consume of Data._Representation(v91, v90);
    v43 = v94;
    v44 = v59;
    goto LABEL_30;
  }

  v80 = v106;
  URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
  v18 = 1;
  LOBYTE(__src[0]) = 1;
  *(&__src[0] + 1) = 44;
  __src[1] = 0xE100000000000000;
  *&__src[2] = 0xE000000000000000;
  *(&__src[2] + 1) = 92;
  *&__src[3] = 0xE100000000000000;
  BYTE8(__src[3]) = 1;
  *&__src[4] = 34;
  *(&__src[4] + 1) = 0xE100000000000000;
  LOBYTE(__src[5]) = 1;
  *(&__src[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  *&__src[6] = 10;
  *(&__src[6] + 1) = 0xE100000000000000;
  __src[7] = 0;
  LOBYTE(__src[8]) = 1;
  *(&__src[8] + 1) = 0;
  LOBYTE(__dst[0]) = 1;
  LOBYTE(v131) = 1;
  *(&v131 + 1) = 44;
  v132 = 0xE100000000000000;
  v133 = 0xE000000000000000;
  v134 = 92;
  v135 = 0xE100000000000000;
  v136 = 1;
  v137 = 34;
  v138 = 0xE100000000000000;
  v139 = 1;
  v140 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v141 = 10;
  v142 = 0xE100000000000000;
  v143 = 0;
  v144 = 1;
  v145 = 0;
  outlined retain of MLDataTable.ParsingOptions(__src);
  outlined release of MLDataTable.ParsingOptions(&v131, &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:));
  memcpy(__dst, __src, sizeof(__dst));
  v58 = v87;
  MLDataTable.init(contentsOf:options:)(v93, __dst);
  if (v58)
  {
    v16 = 0;
    outlined consume of Data._Representation(v91, v90);
    v98;
    v96;
    v104;
    v89(v94, v92);
    __swift_destroy_boxed_opaque_existential_1Tm(v148);
    goto LABEL_31;
  }

  LOBYTE(v105) = v129;
  v86 = v128;
  v95 = v129;
  outlined copy of Result<_DataTable, Error>(v128, v129);
  v62 = v88;
  v87 = 0;
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
  LOBYTE(v115[0]) = 1;
  *(&v115[0] + 1) = 44;
  v115[1] = 0xE100000000000000;
  *&v115[2] = 0xE000000000000000;
  *(&v115[2] + 1) = 92;
  *&v115[3] = 0xE100000000000000;
  BYTE8(v115[3]) = 1;
  *&v115[4] = 34;
  *(&v115[4] + 1) = 0xE100000000000000;
  LOBYTE(v115[5]) = 1;
  *(&v115[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  *&v115[6] = 10;
  *(&v115[6] + 1) = 0xE100000000000000;
  v115[7] = 0;
  LOBYTE(v115[8]) = 1;
  *(&v115[8] + 1) = 0;
  LOBYTE(v114[0]) = 1;
  LOBYTE(v116[0]) = 1;
  v116[1] = 44;
  v116[2] = 0xE100000000000000;
  v116[3] = 0;
  v116[4] = 0xE000000000000000;
  v116[5] = 92;
  v116[6] = 0xE100000000000000;
  v117 = 1;
  v118 = 34;
  v119 = 0xE100000000000000;
  v120 = 1;
  v121 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
  v122 = 10;
  v123 = 0xE100000000000000;
  v124 = 0;
  v125 = 1;
  v126 = 0;
  outlined retain of MLDataTable.ParsingOptions(v115);
  outlined release of MLDataTable.ParsingOptions(v116, 92);
  memcpy(v114, v115, sizeof(v114));
  v63 = v87;
  MLDataTable.init(contentsOf:options:)(v62, v114);
  if (v63)
  {
    v64 = 0;
    v63;
    v17 = -1;
  }

  else
  {
    v64 = v111[0];
    v17 = v111[1];
  }

  v93 = v64;
  LODWORD(v88) = v17;
  outlined copy of MLDataTable?(v64, v17);
  outlined consume of MLDataTable?(0, 255);
  v65 = v104;
  specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v104);
  v65;
  if (v114[3])
  {
    v87 = 0;
    if (swift_dynamicCast(v111, v114, v97, v85, 6))
    {
      MLObjectDetector.ModelParameters.ModelAlgorithmType.init(dictionary:)(v111[0]);
      if (!v113)
      {
        v69 = ((v82 << 16) | v81) >> 8;
        LODWORD(v104) = ((v82 << 16) | v81) >> 16;
        v70 = v81 & 1;
        LOBYTE(v69) = BYTE1(v81) & 1;
        LODWORD(v85) = v69;
        v71 = v112;
        v97 = v111[17];
        outlined consume of Data._Representation(v91, v90);
        v89(v94, v92);
        __swift_destroy_boxed_opaque_existential_1Tm(v148);
        v111[0] = v86;
        LOBYTE(v111[1]) = v95;
        v111[2] = v93;
        LOBYTE(v111[3]) = v88;
        v111[4] = v77;
        v111[5] = v98;
        v111[6] = v78;
        v72 = v96;
        v111[7] = v96;
        LOBYTE(v111[8]) = v70;
        BYTE1(v111[8]) = v85;
        BYTE2(v111[8]) = v104;
        v111[9] = v83;
        LOBYTE(v111[10]) = v99;
        v111[11] = v84;
        LOBYTE(v111[12]) = v100;
        v103 = v71 & 1;
        v111[13] = v79;
        v111[14] = v80;
        v111[15] = v97;
        LOBYTE(v111[16]) = v71 & 1;
        outlined retain of MLObjectDetector.PersistentParameters(v111);
        v98;
        v72;
        v73 = v93;
        outlined consume of MLDataTable?(v93, v88);
        v74 = v86;
        outlined consume of Result<_DataTable, Error>(v86, v95);
        memcpy(v76, v111, 0x81uLL);
        v114[0] = v74;
        LOBYTE(v114[1]) = v105;
        *(&v114[1] + 1) = *v110;
        HIDWORD(v114[1]) = *&v110[3];
        v114[2] = v73;
        LOBYTE(v114[3]) = v88;
        *(&v114[3] + 1) = *v109;
        HIDWORD(v114[3]) = *&v109[3];
        v114[4] = v77;
        v114[5] = v98;
        v114[6] = v78;
        v114[7] = v96;
        LOBYTE(v114[8]) = v70;
        BYTE1(v114[8]) = v85;
        BYTE2(v114[8]) = v104;
        *(&v114[8] + 3) = *&v108[7];
        HIBYTE(v114[8]) = v108[11];
        v114[9] = v83;
        LOBYTE(v114[10]) = v101;
        *(&v114[10] + 1) = *v108;
        HIDWORD(v114[10]) = *&v108[3];
        v114[11] = v84;
        LOBYTE(v114[12]) = v102;
        *(&v114[12] + 1) = *v107;
        HIDWORD(v114[12]) = *&v107[3];
        v114[13] = v79;
        v114[14] = v80;
        v114[15] = v97;
        LOBYTE(v114[16]) = v103;
        outlined release of MLObjectDetector.PersistentParameters(v114);
        return __stack_chk_guard;
      }

      v98;
      v96;
      outlined consume of MLDataTable?(v93, v88);
      v66 = v86;
      outlined consume of Result<_DataTable, Error>(v86, v95);
    }

    else
    {
      outlined consume of MLDataTable?(v93, v88);
      v66 = v86;
      outlined consume of Result<_DataTable, Error>(v86, v95);
      v98;
      v96;
    }
  }

  else
  {
    outlined consume of MLDataTable?(v93, v88);
    v66 = v86;
    outlined consume of Result<_DataTable, Error>(v86, v95);
    v98;
    v96;
    outlined destroy of Any?(v114);
  }

  v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
  *v68 = 0xD000000000000023;
  *(v68 + 8) = "contains an invalid grid size." + 0x8000000000000000;
  *(v68 + 16) = 0;
  *(v68 + 32) = 0;
  *(v68 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v67);
  outlined consume of Data._Representation(v91, v90);
  v89(v94, v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v148);
  outlined consume of Result<_DataTable, Error>(v66, v105);
  v18 = 1;
  v16 = v93;
LABEL_24:
  outlined consume of MLDataTable?(v16, v17);
  if (v18)
  {
    v96;
    v98;
  }

  return __stack_chk_guard;
}

uint64_t MLObjectDetector.AnnotationType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_31;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_31;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v21);
  if (!swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_31;
  }

  v5 = v25;
  if (v24 ^ 0x676E69646E756F62 | v25 ^ 0xEC000000786F625FLL)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)(v24, v25, 0x676E69646E756F62, 0xEC000000786F625FLL, 0);
    v5;
    if ((v6 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v25;
  }

  specialized Dictionary.subscript.getter(0x7374696E75, 0xE500000000000000, a1);
  if (!v22)
  {
    goto LABEL_16;
  }

  if (!swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_31;
  }

  v7 = v25;
  if (v24 ^ 0x6C65786970 | v25 ^ 0xE500000000000000 && (v8 = v24, (_stringCompareWithSmolCheck(_:_:expecting:)(0x6C65786970, 0xE500000000000000, v24, v25, 0) & 1) == 0))
  {
    if (v8 ^ 0x7A696C616D726F6ELL | v7 ^ 0xEA00000000006465)
    {
      LODWORD(v8) = _stringCompareWithSmolCheck(_:_:expecting:)(0x7A696C616D726F6ELL, 0xEA00000000006465, v8, v7, 0);
      v7;
      v11 = (v8 & 1) == 0;
      LOBYTE(v8) = 1;
      if (v11)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v7;
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    v7;
    LODWORD(v8) = 0;
  }

  specialized Dictionary.subscript.getter(0x6E696769726FLL, 0xE600000000000000, a1);
  if (!v22)
  {
LABEL_16:
    a1;
LABEL_17:
    outlined destroy of Any?(v21);
    goto LABEL_32;
  }

  if (!swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_31;
  }

  v23 = v8;
  v9 = v24;
  v10 = v25;
  if (!(v24 ^ 0x7466656C5F706F74 | v25 ^ 0xE800000000000000))
  {
    v25;
    v26 = 0;
    goto LABEL_27;
  }

  v26 = 0;
  if (_stringCompareWithSmolCheck(_:_:expecting:)(0x7466656C5F706F74, 0xE800000000000000, v24, v25, 0))
  {
    v10;
    goto LABEL_27;
  }

  if (!(v9 ^ 0x6C5F6D6F74746F62 | v10 ^ 0xEB00000000746665))
  {
    v10;
    v26 = 256;
    goto LABEL_27;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6C5F6D6F74746F62, 0xEB00000000746665, v9, v10, 0);
  v10;
  v26 = 256;
  if ((v12 & 1) == 0)
  {
LABEL_31:
    a1;
    goto LABEL_32;
  }

LABEL_27:
  specialized Dictionary.subscript.getter(0x726F68636E61, 0xE600000000000000, a1);
  a1;
  if (!v22)
  {
    goto LABEL_17;
  }

  if (swift_dynamicCast(&v24, v21, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v13 = v24;
    v14 = v25;
    if (!(v24 ^ 0x7265746E6563 | v25 ^ 0xE600000000000000))
    {
      v25;
      v15 = 0;
      v16 = v23;
LABEL_39:
      v17 = v16 | v26 | (v15 << 16);
      goto LABEL_33;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7265746E6563, 0xE600000000000000, v24, v25, 0);
    v16 = v23;
    if (v19)
    {
      v14;
      v15 = 0;
      goto LABEL_39;
    }

    if (!(v13 ^ 0x7466656C5F706F74 | v14 ^ 0xE800000000000000) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x7466656C5F706F74, 0xE800000000000000, v13, v14, 0) & 1) != 0)
    {
      v14;
      v15 = 1;
      goto LABEL_39;
    }

    if (!(v13 ^ 0x6C5F6D6F74746F62 | v14 ^ 0xEB00000000746665))
    {
      v14;
      v15 = 2;
      goto LABEL_39;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6C5F6D6F74746F62, 0xEB00000000746665, v13, v14, 0);
    v14;
    v15 = 2;
    if (v20)
    {
      goto LABEL_39;
    }
  }

LABEL_32:
  v17 = 2;
LABEL_33:
  *v2 = v17;
  result = HIWORD(v17);
  *(v2 + 2) = result;
  return result;
}

char MLObjectDetector.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x687469726F676C61, 0xE90000000000006DLL);
  if ((v4 & 1) == 0)
  {
    goto LABEL_14;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v14);
  if (!swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_14;
  }

  v5 = v16;
  v6 = v17;
  if (v16 ^ 0x2D74656E6B726164 | v17 ^ 0xEC0000006F6C6F79 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x2D74656E6B726164, 0xEC0000006F6C6F79, v16, v17, 0) & 1) == 0)
  {
    v10 = &aTransferlearni[-32] | 0x8000000000000000;
    if (!(v5 ^ 0xD000000000000010 | v10 ^ v6))
    {
      v6;
      goto LABEL_11;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000010, v10, v5, v6, 0);
    v6;
    if (v11)
    {
LABEL_11:
      specialized Dictionary.subscript.getter(0x6E6F697369766572, 0xE800000000000000, a1);
      if (v15)
      {
        if (swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for Int, 6))
        {
          v8 = v16;
          goto LABEL_19;
        }
      }

      else
      {
        outlined destroy of Any?(v14);
      }

      v8 = 1;
LABEL_19:
      specialized Dictionary.subscript.getter(0xD000000000000014, ("transferLearning" + 0x8000000000000000), a1);
      a1;
      if (v15)
      {
        if (swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for String, 6))
        {
          v12 = v17;
          if (!(v16 ^ 0x72507463656A626FLL | v17 ^ 0xEB00000000746E69))
          {
            v17;
            v7 = 0;
            goto LABEL_7;
          }

          v7 = 0;
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)(0x72507463656A626FLL, 0xEB00000000746E69, v16, v17, 0);
          v12;
          result = 0;
          if (v13)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        outlined destroy of Any?(v14);
      }

LABEL_15:
      result = 1;
      v8 = 0;
      v7 = 0;
      goto LABEL_16;
    }

LABEL_14:
    a1;
    goto LABEL_15;
  }

  v6;
  a1;
  v7 = 1;
  v8 = 0;
LABEL_7:
  result = 0;
LABEL_16:
  *v2 = v8;
  *(v2 + 8) = v7;
  *(v2 + 9) = result;
  return result;
}

NSURL *MLObjectDetector.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v40 = v1;
  v49 = a1;
  v53 = type metadata accessor for URL(0);
  v48 = *(v53 - 8);
  v3 = *(v48 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v46 = &v35;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v44 = &v35;
  v8 = alloca(v3);
  v9 = alloca(v3);
  v41 = &v35;
  v45 = *v2;
  v56 = *(v2 + 8);
  v47 = *(v2 + 16);
  v57 = *(v2 + 24);
  v39 = *(v2 + 32);
  v10 = *(v2 + 40);
  v38 = *(v2 + 48);
  v11 = *(v2 + 56);
  v54 = *(v2 + 64);
  v55 = *(v2 + 66);
  v43 = *(v2 + 72);
  v42 = *(v2 + 88);
  LOBYTE(v52) = *(v2 + 96);
  LOBYTE(v50) = *(v2 + 128);
  LOBYTE(v51) = *(v2 + 80);
  v37 = *(v2 + 104);
  v36 = *(v2 + 112);
  v35 = *(v2 + 120);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v12, v62);
  *(inited + 16) = 6;
  *(inited + 24) = 12;
  *(inited + 32) = 0x6C6F436567616D69;
  *(inited + 40) = 0xEF656D614E6E6D75;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v39;
  *(inited + 56) = v10;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = "oth String or both Int." + 0x8000000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v38;
  *(inited + 104) = v11;
  strcpy((inited + 128), "annotationType");
  *(inited + 143) = -18;
  LOWORD(v60) = v54;
  BYTE2(v60) = v55;
  v10;
  v11;
  v14 = MLObjectDetector.AnnotationType.dictionary.getter();
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 168) = v15;
  *(inited + 144) = v14;
  *(inited + 176) = 0x7464695764697267;
  *(inited + 184) = 0xE900000000000068;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v37;
  *(inited + 224) = 0x6769654864697267;
  *(inited + 232) = 0xEA00000000007468;
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v36;
  *(inited + 272) = 0x687469726F676C61;
  *(inited + 280) = 0xE90000000000006DLL;
  *&v60 = v35;
  BYTE8(v60) = v50;
  v16 = MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter();
  *(inited + 312) = v15;
  *(inited + 288) = v16;
  v17 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  if (!v51)
  {
    v61 = &type metadata for Int;
    *&v60 = v43;
    outlined init with take of Any(&v60, v59);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v17);
    v58 = v17;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, 0x7A69536863746162, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v17 = v58;
  }

  if ((v52 & 1) == 0)
  {
    v61 = &type metadata for Int;
    *&v60 = v42;
    outlined init with take of Any(&v60, v59);
    v19 = swift_isUniquelyReferenced_nonNull_native(v17);
    v58 = v17;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, 0x617265744978616DLL, 0xED0000736E6F6974, v19);
    v17 = v58;
  }

  v20 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v17;
  *&v60 = 0;
  v22 = [v20 dataWithPropertyList:isa format:200 options:0 error:&v60];
  v23 = v22;

  v24 = v60;
  if (v23)
  {
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v23);
    v52 = v26;

    v27 = v41;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    v28 = v52;
    v29 = v40;
    Data.write(to:options:)(v27, 0, v25, v52);
    if (v29)
    {
      (*(v48 + 8))(v27, v53);
      outlined consume of Data._Representation(v25, v28);
    }

    else
    {
      v51 = v25;
      v31 = *(v48 + 8);
      v31(v27, v53);
      *&v60 = v45;
      BYTE8(v60) = v56 & 1;
      outlined copy of Result<_DataTable, Error>(v45, v56);
      v32 = v44;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      MLDataTable.write(to:)(v32);
      v31(v32, v53);
      outlined consume of Result<_DataTable, Error>(v60, SBYTE8(v60));
      if (v57 == -1)
      {
        outlined consume of Data._Representation(v51, v52);
      }

      else
      {
        v50 = v31;
        *&v60 = v47;
        BYTE8(v60) = v57 & 1;
        outlined copy of MLDataTable?(v47, v57);
        v33 = v46;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
        MLDataTable.write(to:)(v33);
        outlined consume of Data._Representation(v51, v52);
        v50(v33, v53);
        outlined consume of Result<_DataTable, Error>(v60, SBYTE8(v60));
      }
    }
  }

  else
  {
    v30 = v24;
    _convertNSErrorToError(_:)(v24);

    swift_willThrow(v30, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t MLObjectDetector.AnnotationType.dictionary.getter()
{
  v1 = 0xE800000000000000;
  v2 = 0x7466656C5F706F74;
  v13 = v0[2];
  v3 = 0x7466656C5F706F74;
  if (v0[1])
  {
    v3 = 0x6C5F6D6F74746F62;
    v1 = 0xEB00000000746665;
  }

  v4 = *v0 == 0;
  v5 = 0x6C65786970;
  if (!v4)
  {
    v5 = 0x7A696C616D726F6ELL;
  }

  v6 = 0xEA00000000006465;
  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v7, v12);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 48), "bounding_box");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  *(inited + 80) = 0x7374696E75;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v5;
  *(inited + 104) = v6;
  *(inited + 128) = 0x6E696769726FLL;
  v9 = 0xE600000000000000;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 144) = v3;
  *(inited + 152) = v1;
  *(inited + 176) = 0x726F68636E61;
  v10 = v13;
  *(inited + 184) = 0xE600000000000000;
  if (v10)
  {
    if (v10 == 1)
    {
      v9 = 0xE800000000000000;
    }

    else
    {
      v2 = 0x6C5F6D6F74746F62;
      v9 = 0xEB00000000746665;
    }
  }

  else
  {
    v2 = 0x7265746E6563;
  }

  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v2;
  *(inited + 200) = v9;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t MLObjectDetector.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v1 = *(v0 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  if (v1 == 1)
  {
    inited = swift_initStackObject(v2, v6);
    *(inited + 16) = 1;
    *(inited + 24) = 2;
    *(inited + 32) = 0x687469726F676C61;
    *(inited + 40) = 0xE90000000000006DLL;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 48), "darknet-yolo");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;
  }

  else
  {
    inited = swift_initStackObject(v2, v5);
    *(inited + 16) = 3;
    *(inited + 24) = 6;
    *(inited + 32) = 0x687469726F676C61;
    *(inited + 40) = 0xE90000000000006DLL;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0xD000000000000010;
    *(inited + 56) = "annotationColumnName" + 0x8000000000000000;
    *(inited + 80) = 0xD000000000000014;
    *(inited + 88) = "transferLearning" + 0x8000000000000000;
    *(inited + 120) = &type metadata for String;
    *(inited + 96) = 0x72507463656A626FLL;
    *(inited + 104) = 0xEB00000000746E69;
    *(inited + 128) = 0x6E6F697369766572;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 168) = &type metadata for Int;
    *(inited + 144) = 1;
  }

  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t outlined init with take of MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t specialized handling<A, B>(_:_:)(uint64_t a1)
{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_flex_list);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_flex_dict);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_ndarray);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_column_names);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_ndarray);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_flex_dict);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_flex_list);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_create_from_list);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_unique);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_text_summary);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_flexible_type);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_sframe);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_sarray);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_model);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_variant_parameters);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_drop_na);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_sum);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_min);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_max);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_mean);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_std);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sarray_create_copy);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_unique);
}

{
  v70 = 0;
  v1 = tc_v1_ft_create_from_int64(a1, &v70);
  v2 = v70;
  if (v70)
  {
    v3 = tc_v1_error_message(v70);
    if (!v3)
    {
      BUG();
    }

    v52 = v2;
    v51 = v1;
    v68 = String.init(cString:)(v3);
    v53 = v4;
    v69 = v4;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v5 = lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v8 = v7;
    v53;
    v68 = v6;
    v54 = v8;
    v69 = v8;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v11 = v10;
    v54;
    v68 = v9;
    v55 = v11;
    v69 = v11;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v14 = v13;
    v55;
    v68 = v12;
    v56 = v14;
    v69 = v14;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v17 = v16;
    v56;
    v68 = v15;
    v57 = v17;
    v69 = v17;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v20 = v19;
    v57;
    v68 = v18;
    v58 = v20;
    v69 = v20;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v23 = v22;
    v58;
    v68 = v21;
    v69 = v23;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v26 = v25;
    v23;
    v68 = v24;
    v59 = v26;
    v69 = v26;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v29 = v28;
    v59;
    v68 = v27;
    v60 = v29;
    v69 = v29;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v32 = v31;
    v60;
    v68 = v30;
    v61 = v32;
    v69 = v32;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v35 = v34;
    v61;
    v68 = v33;
    v62 = v35;
    v69 = v35;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v38 = v37;
    v62;
    v68 = v36;
    v63 = v38;
    v69 = v38;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v41 = v40;
    v63;
    v68 = v39;
    v64 = v41;
    v69 = v41;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v44 = v43;
    v64;
    type metadata accessor for OS_os_log();
    v44;
    v45 = static OS_os_log.default.getter();
    v65 = static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v42;
    v47[5] = v44;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v45, v65, v47);

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v42;
    *(v49 + 8) = v44;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
    return v51;
  }

  return v1;
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_create_from_cstring);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_read_json);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_load);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_model_new);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_model_load);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_string_data);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_model_name);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_strides);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_shape);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_num_rows);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_sframe_num_columns);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_num_dimensions);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ndarray_data);
}

{
  return specialized handling<A, B>(_:_:)(a1, &tc_v1_ft_int64);
}

uint64_t specialized handling<A, B>(_:_:)()
{
  v69 = 0;
  v0 = tc_v1_ft_create_from_double(&v69);
  v1 = v69;
  if (v69)
  {
    v2 = tc_v1_error_message(v69);
    if (!v2)
    {
      BUG();
    }

    v51 = v1;
    v50 = v0;
    v67 = String.init(cString:)(v2);
    v52 = v3;
    v68 = v3;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v7 = v6;
    v52;
    v67 = v5;
    v53 = v7;
    v68 = v7;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v10 = v9;
    v53;
    v67 = v8;
    v54 = v10;
    v68 = v10;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v13 = v12;
    v54;
    v67 = v11;
    v55 = v13;
    v68 = v13;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v16 = v15;
    v55;
    v67 = v14;
    v56 = v16;
    v68 = v16;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v19 = v18;
    v56;
    v67 = v17;
    v57 = v19;
    v68 = v19;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v22 = v21;
    v57;
    v67 = v20;
    v68 = v22;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v25 = v24;
    v22;
    v67 = v23;
    v58 = v25;
    v68 = v25;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v28 = v27;
    v58;
    v67 = v26;
    v59 = v28;
    v68 = v28;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v31 = v30;
    v59;
    v67 = v29;
    v60 = v31;
    v68 = v31;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v34 = v33;
    v60;
    v67 = v32;
    v61 = v34;
    v68 = v34;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v37 = v36;
    v61;
    v67 = v35;
    v62 = v37;
    v68 = v37;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v40 = v39;
    v62;
    v67 = v38;
    v63 = v40;
    v68 = v40;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v43 = v42;
    v63;
    type metadata accessor for OS_os_log();
    v43;
    v44 = static OS_os_log.default.getter();
    v64 = static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v41;
    v46[5] = v43;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v44, v64, v46);

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v41;
    *(v48 + 8) = v43;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v51);
    return v50;
  }

  return v0;
}

uint64_t specialized handling<A, B>(_:_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v71 = 0;
  v2 = a2(a1, &v71);
  v3 = v71;
  if (v71)
  {
    v4 = tc_v1_error_message(v71);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v69 = String.init(cString:)(v4);
    v54 = v5;
    v70 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v69 = v7;
    v55 = v9;
    v70 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v69 = v10;
    v56 = v12;
    v70 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v69 = v13;
    v57 = v15;
    v70 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v69 = v16;
    v58 = v18;
    v70 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v69 = v19;
    v59 = v21;
    v70 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v69 = v22;
    v70 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v69 = v25;
    v60 = v27;
    v70 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v69 = v28;
    v61 = v30;
    v70 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v69 = v31;
    v62 = v33;
    v70 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v69 = v34;
    v63 = v36;
    v70 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v69 = v37;
    v64 = v39;
    v70 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v69 = v40;
    v65 = v42;
    v70 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v65;
    type metadata accessor for OS_os_log();
    v45;
    v46 = static OS_os_log.default.getter();
    v66 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v43;
    v48[5] = v45;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v66, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v43;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

{
  v71 = 0;
  v2 = a2(a1, &v71);
  v3 = v71;
  if (v71)
  {
    v4 = tc_v1_error_message(v71);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v69 = String.init(cString:)(v4);
    v54 = v5;
    v70 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v69 = v7;
    v55 = v9;
    v70 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v69 = v10;
    v56 = v12;
    v70 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v69 = v13;
    v57 = v15;
    v70 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v69 = v16;
    v58 = v18;
    v70 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v69 = v19;
    v59 = v21;
    v70 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v69 = v22;
    v70 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v69 = v25;
    v60 = v27;
    v70 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v69 = v28;
    v61 = v30;
    v70 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v69 = v31;
    v62 = v33;
    v70 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v69 = v34;
    v63 = v36;
    v70 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v69 = v37;
    v64 = v39;
    v70 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v69 = v40;
    v65 = v42;
    v70 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v65;
    type metadata accessor for OS_os_log();
    v45;
    v46 = static OS_os_log.default.getter();
    v66 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v43;
    v48[5] = v45;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v66, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v43;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

NSURL *specialized handling<A, B>(_:_:)(uint64_t a1)
{
  v68 = 0;
  tc_v1_ft_double(a1, &v68);
  v1 = v68;
  if (v68)
  {
    v2 = tc_v1_error_message(v68);
    if (!v2)
    {
      BUG();
    }

    v50 = v1;
    v66 = String.init(cString:)(v2);
    v51 = v3;
    v67 = v3;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v65 = static ErrorString.table;
    v64 = xmmword_3A3830;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v7 = v6;
    v51;
    v66 = v5;
    v52 = v7;
    v67 = v7;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v65 = static ErrorString.column;
    v64 = xmmword_3A3850;
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v10 = v9;
    v52;
    v66 = v8;
    v53 = v10;
    v67 = v10;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v65 = static ErrorString.tableMap;
    v64 = xmmword_3A3870;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v13 = v12;
    v53;
    v66 = v11;
    v54 = v13;
    v67 = v13;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v65 = static ErrorString.columnMap;
    v64 = xmmword_3A3890;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v16 = v15;
    v54;
    v66 = v14;
    v55 = v16;
    v67 = v16;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v65 = static ErrorString.drop;
    v64 = xmmword_3A38B0;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v19 = v18;
    v55;
    v66 = v17;
    v56 = v19;
    v67 = v19;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v65 = static ErrorString.sequence;
    v64 = xmmword_3A38D0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v22 = v21;
    v56;
    v66 = v20;
    v57 = v22;
    v67 = v22;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v65 = static ErrorString.double;
    v64 = xmmword_3A38F0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v25 = v24;
    v57;
    v66 = v23;
    v58 = v25;
    v67 = v25;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v65 = static ErrorString.integer;
    v64 = xmmword_3A3910;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v28 = v27;
    v58;
    v66 = v26;
    v59 = v28;
    v67 = v28;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v65 = static ErrorString.error;
    v64 = xmmword_3A3930;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v31 = v30;
    v59;
    v66 = v29;
    v60 = v31;
    v67 = v31;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v65 = static ErrorString.archive;
    v64 = xmmword_3A3950;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v34 = v33;
    v60;
    v66 = v32;
    v61 = v34;
    v67 = v34;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v65 = static ErrorString.limit;
    v64 = xmmword_3A3970;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v37 = v36;
    v61;
    v66 = v35;
    v62 = v37;
    v67 = v37;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v65 = static ErrorString.supportedStackTypes;
    v64 = xmmword_3A3990;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v40 = v39;
    v62;
    v66 = v38;
    v67 = v40;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v65 = static ErrorString.sortTypes;
    v64 = xmmword_3A39B0;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v43 = v42;
    v40;
    type metadata accessor for OS_os_log();
    v43;
    v44 = static OS_os_log.default.getter();
    v63 = static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v41;
    v46[5] = v43;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v44, v63, v46);

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v41;
    *(v48 + 8) = v43;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v50);
  }

  return __stack_chk_guard;
}

{
  v68 = 0;
  tc_v1_sarray_materialize(a1, &v68);
  v1 = v68;
  if (v68)
  {
    v2 = tc_v1_error_message(v68);
    if (!v2)
    {
      BUG();
    }

    v50 = v1;
    v66 = String.init(cString:)(v2);
    v51 = v3;
    v67 = v3;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v65 = static ErrorString.table;
    v64 = xmmword_3A3830;
    v4 = lazy protocol witness table accessor for type String and conformance String();
    v5 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v7 = v6;
    v51;
    v66 = v5;
    v52 = v7;
    v67 = v7;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v65 = static ErrorString.column;
    v64 = xmmword_3A3850;
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v10 = v9;
    v52;
    v66 = v8;
    v53 = v10;
    v67 = v10;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v65 = static ErrorString.tableMap;
    v64 = xmmword_3A3870;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v13 = v12;
    v53;
    v66 = v11;
    v54 = v13;
    v67 = v13;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v65 = static ErrorString.columnMap;
    v64 = xmmword_3A3890;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v16 = v15;
    v54;
    v66 = v14;
    v55 = v16;
    v67 = v16;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v65 = static ErrorString.drop;
    v64 = xmmword_3A38B0;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v19 = v18;
    v55;
    v66 = v17;
    v56 = v19;
    v67 = v19;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v65 = static ErrorString.sequence;
    v64 = xmmword_3A38D0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v22 = v21;
    v56;
    v66 = v20;
    v57 = v22;
    v67 = v22;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v65 = static ErrorString.double;
    v64 = xmmword_3A38F0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v25 = v24;
    v57;
    v66 = v23;
    v58 = v25;
    v67 = v25;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v65 = static ErrorString.integer;
    v64 = xmmword_3A3910;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v28 = v27;
    v58;
    v66 = v26;
    v59 = v28;
    v67 = v28;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v65 = static ErrorString.error;
    v64 = xmmword_3A3930;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v31 = v30;
    v59;
    v66 = v29;
    v60 = v31;
    v67 = v31;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v65 = static ErrorString.archive;
    v64 = xmmword_3A3950;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v34 = v33;
    v60;
    v66 = v32;
    v61 = v34;
    v67 = v34;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v65 = static ErrorString.limit;
    v64 = xmmword_3A3970;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v37 = v36;
    v61;
    v66 = v35;
    v62 = v37;
    v67 = v37;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v65 = static ErrorString.supportedStackTypes;
    v64 = xmmword_3A3990;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v40 = v39;
    v62;
    v66 = v38;
    v67 = v40;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v65 = static ErrorString.sortTypes;
    v64 = xmmword_3A39B0;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v65, &v64, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v4, v4, v4);
    v43 = v42;
    v40;
    type metadata accessor for OS_os_log();
    v43;
    v44 = static OS_os_log.default.getter(v43);
    v63 = static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v41;
    v46[5] = v43;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v44, v63, v46);

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v41;
    *(v48 + 8) = v43;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v47);
    tc_v1_release(v50);
  }

  return __stack_chk_guard;
}

uint64_t specialized handling<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2)
{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_flex_list_extract_element);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_extract_row);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_extract_element);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_head);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_create_from_const);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_tail);
}

{
  v71 = 0;
  v2 = tc_v1_flex_list_add_element(a1, a2, &v71);
  v3 = v71;
  if (v71)
  {
    v4 = tc_v1_error_message(v71);
    if (!v4)
    {
      BUG();
    }

    v53 = v3;
    v52 = v2;
    v69 = String.init(cString:)(v4);
    v54 = v5;
    v70 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v69 = v7;
    v55 = v9;
    v70 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v69 = v10;
    v56 = v12;
    v70 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v69 = v13;
    v57 = v15;
    v70 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v69 = v16;
    v58 = v18;
    v70 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v69 = v19;
    v59 = v21;
    v70 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v69 = v22;
    v70 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v69 = v25;
    v60 = v27;
    v70 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v69 = v28;
    v61 = v30;
    v70 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v69 = v31;
    v62 = v33;
    v70 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v69 = v34;
    v63 = v36;
    v70 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v69 = v37;
    v64 = v39;
    v70 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v69 = v40;
    v65 = v42;
    v70 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v45 = v44;
    v65;
    type metadata accessor for OS_os_log();
    v45;
    v46 = static OS_os_log.default.getter();
    v66 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v43;
    v48[5] = v45;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v66, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v43;
    *(v50 + 8) = v45;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v2;
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_extract_column_by_name);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_parameters_retrieve_flexible_type);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_parameters_retrieve_sframe);
}

{
  v70 = 0;
  v2 = tc_v1_flex_enum_list_add_element(a1, a2, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v65 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0);
    v53 = static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v65;
    v65;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v45, v53, v47);

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v65;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v48);
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

{
  v70 = 0;
  v2 = tc_v1_sarray_create_from_sequence(a1, a2, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v65 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0);
    v53 = static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v65;
    v65;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v45, v53, v47);

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v65;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v48);
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_append);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_append);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_apply_mask);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sarray_replace_na);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_plot_get_next_data);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_read_csv);
}

{
  v70 = 0;
  v2 = tc_v1_sframe_column_type(a1, a2, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v65 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0);
    v53 = static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v65;
    v65;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v45, v53, v47);

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v65;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_head);
}

{
  return specialized handling<A, B, C>(_:_:_:)(a1, a2, &tc_v1_sframe_tail);
}

{
  v70 = 0;
  v2 = tc_v1_plot_finished_streaming(a1, a2, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v51 = v3;
    v52 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v43 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v65 = v44;
    v42;
    type metadata accessor for OS_os_log();
    v45 = static OS_os_log.default.getter(0);
    v53 = static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v43;
    v47[5] = v65;
    v2 = v65;
    v65;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v45, v53, v47);

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v43;
    *(v49 + 8) = v65;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v48);
    tc_v1_release(v51);
    LOBYTE(v2) = v52;
  }

  return v2;
}

uint64_t specialized handling<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t *))
{
  v72 = 0;
  v3 = a3(a1, a2, &v72);
  v4 = v72;
  if (v72)
  {
    v5 = tc_v1_error_message(v72);
    if (!v5)
    {
      BUG();
    }

    v54 = v4;
    v53 = v3;
    v70 = String.init(cString:)(v5);
    v55 = v6;
    v71 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v69 = static ErrorString.table;
    v68 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v70 = v8;
    v56 = v10;
    v71 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v69 = static ErrorString.column;
    v68 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v70 = v11;
    v57 = v13;
    v71 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v69 = static ErrorString.tableMap;
    v68 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v70 = v14;
    v58 = v16;
    v71 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v69 = static ErrorString.columnMap;
    v68 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v70 = v17;
    v59 = v19;
    v71 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v69 = static ErrorString.drop;
    v68 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v70 = v20;
    v60 = v22;
    v71 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v69 = static ErrorString.sequence;
    v68 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v70 = v23;
    v71 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v69 = static ErrorString.double;
    v68 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v70 = v26;
    v61 = v28;
    v71 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v69 = static ErrorString.integer;
    v68 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v70 = v29;
    v62 = v31;
    v71 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v69 = static ErrorString.error;
    v68 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v70 = v32;
    v63 = v34;
    v71 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v69 = static ErrorString.archive;
    v68 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v70 = v35;
    v64 = v37;
    v71 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v69 = static ErrorString.limit;
    v68 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v70 = v38;
    v65 = v40;
    v71 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v69 = static ErrorString.supportedStackTypes;
    v68 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v70 = v41;
    v66 = v43;
    v71 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v69 = static ErrorString.sortTypes;
    v68 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v69, &v68, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v46 = v45;
    v66;
    type metadata accessor for OS_os_log();
    v46;
    v47 = static OS_os_log.default.getter();
    v67 = static os_log_type_t.error.getter();
    v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v49 = swift_allocObject(v48, 72, 7);
    v49[2] = 1;
    v49[3] = 2;
    v49[7] = &type metadata for String;
    v49[8] = lazy protocol witness table accessor for type String and conformance String();
    v49[4] = v44;
    v49[5] = v46;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v47, v67, v49);

    v49;
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = v44;
    *(v51 + 8) = v46;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v54);
    return v53;
  }

  return v3;
}

{
  v71 = 0;
  v3 = a3(a1, a2, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v52 = v3;
    v69 = String.init(cString:)(v5);
    v55 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v69 = v8;
    v56 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v69 = v11;
    v57 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v69 = v14;
    v58 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v69 = v17;
    v59 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v69 = v20;
    v60 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v69 = v23;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v66 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter(0);
    v54 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v44;
    v48[5] = v66;
    v66;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v54, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v44;
    *(v50 + 8) = v66;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow();
    tc_v1_release(v53);
    return v52;
  }

  return v3;
}

{
  v71 = 0;
  v3 = a3(a1, a2, &v71);
  v4 = v71;
  if (v71)
  {
    v5 = tc_v1_error_message(v71);
    if (!v5)
    {
      BUG();
    }

    v53 = v4;
    v52 = v3;
    v69 = String.init(cString:)(v5);
    v55 = v6;
    v70 = v6;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v68 = static ErrorString.table;
    v67 = xmmword_3A3830;
    v7 = lazy protocol witness table accessor for type String and conformance String();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v10 = v9;
    v55;
    v69 = v8;
    v56 = v10;
    v70 = v10;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v68 = static ErrorString.column;
    v67 = xmmword_3A3850;
    v11 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v13 = v12;
    v56;
    v69 = v11;
    v57 = v13;
    v70 = v13;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v68 = static ErrorString.tableMap;
    v67 = xmmword_3A3870;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v16 = v15;
    v57;
    v69 = v14;
    v58 = v16;
    v70 = v16;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v68 = static ErrorString.columnMap;
    v67 = xmmword_3A3890;
    v17 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v19 = v18;
    v58;
    v69 = v17;
    v59 = v19;
    v70 = v19;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v68 = static ErrorString.drop;
    v67 = xmmword_3A38B0;
    v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v22 = v21;
    v59;
    v69 = v20;
    v60 = v22;
    v70 = v22;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v68 = static ErrorString.sequence;
    v67 = xmmword_3A38D0;
    v23 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v25 = v24;
    v60;
    v69 = v23;
    v70 = v25;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v68 = static ErrorString.double;
    v67 = xmmword_3A38F0;
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v28 = v27;
    v25;
    v69 = v26;
    v61 = v28;
    v70 = v28;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v68 = static ErrorString.integer;
    v67 = xmmword_3A3910;
    v29 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v31 = v30;
    v61;
    v69 = v29;
    v62 = v31;
    v70 = v31;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v68 = static ErrorString.error;
    v67 = xmmword_3A3930;
    v32 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v34 = v33;
    v62;
    v69 = v32;
    v63 = v34;
    v70 = v34;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v68 = static ErrorString.archive;
    v67 = xmmword_3A3950;
    v35 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v37 = v36;
    v63;
    v69 = v35;
    v64 = v37;
    v70 = v37;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v68 = static ErrorString.limit;
    v67 = xmmword_3A3970;
    v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v40 = v39;
    v64;
    v69 = v38;
    v65 = v40;
    v70 = v40;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v68 = static ErrorString.supportedStackTypes;
    v67 = xmmword_3A3990;
    v41 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v43 = v42;
    v65;
    v69 = v41;
    v70 = v43;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v68 = static ErrorString.sortTypes;
    v67 = xmmword_3A39B0;
    v44 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v68, &v67, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v7, v7, v7);
    v66 = v45;
    v43;
    type metadata accessor for OS_os_log();
    v46 = static OS_os_log.default.getter(0);
    v54 = static os_log_type_t.error.getter();
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v48 = swift_allocObject(v47, 72, 7);
    v48[2] = 1;
    v48[3] = 2;
    v48[7] = &type metadata for String;
    v48[8] = lazy protocol witness table accessor for type String and conformance String();
    v48[4] = v44;
    v48[5] = v66;
    v66;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v46, v54, v48);

    v48;
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = v44;
    *(v50 + 8) = v66;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v49);
    tc_v1_release(v53);
    return v52;
  }

  return v3;
}

uint64_t specialized handling<A, B, C>(_:_:_:)(uint64_t a1, char a2)
{
  v70 = 0;
  v2 = tc_v1_sarray_sort(a1, a2 & 1, &v70);
  v3 = v70;
  if (v70)
  {
    v4 = tc_v1_error_message(v70);
    if (!v4)
    {
      BUG();
    }

    v52 = v3;
    v51 = v2;
    v68 = String.init(cString:)(v4);
    v54 = v5;
    v69 = v5;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v67 = static ErrorString.table;
    v66 = xmmword_3A3830;
    v6 = lazy protocol witness table accessor for type String and conformance String();
    v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v9 = v8;
    v54;
    v68 = v7;
    v55 = v9;
    v69 = v9;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v67 = static ErrorString.column;
    v66 = xmmword_3A3850;
    v10 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v12 = v11;
    v55;
    v68 = v10;
    v56 = v12;
    v69 = v12;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v67 = static ErrorString.tableMap;
    v66 = xmmword_3A3870;
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v15 = v14;
    v56;
    v68 = v13;
    v57 = v15;
    v69 = v15;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v67 = static ErrorString.columnMap;
    v66 = xmmword_3A3890;
    v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v18 = v17;
    v57;
    v68 = v16;
    v58 = v18;
    v69 = v18;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v67 = static ErrorString.drop;
    v66 = xmmword_3A38B0;
    v19 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v21 = v20;
    v58;
    v68 = v19;
    v59 = v21;
    v69 = v21;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v67 = static ErrorString.sequence;
    v66 = xmmword_3A38D0;
    v22 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v24 = v23;
    v59;
    v68 = v22;
    v69 = v24;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v67 = static ErrorString.double;
    v66 = xmmword_3A38F0;
    v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v27 = v26;
    v24;
    v68 = v25;
    v60 = v27;
    v69 = v27;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v67 = static ErrorString.integer;
    v66 = xmmword_3A3910;
    v28 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v30 = v29;
    v60;
    v68 = v28;
    v61 = v30;
    v69 = v30;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v67 = static ErrorString.error;
    v66 = xmmword_3A3930;
    v31 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v33 = v32;
    v61;
    v68 = v31;
    v62 = v33;
    v69 = v33;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v67 = static ErrorString.archive;
    v66 = xmmword_3A3950;
    v34 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v36 = v35;
    v62;
    v68 = v34;
    v63 = v36;
    v69 = v36;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v67 = static ErrorString.limit;
    v66 = xmmword_3A3970;
    v37 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v39 = v38;
    v63;
    v68 = v37;
    v64 = v39;
    v69 = v39;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v67 = static ErrorString.supportedStackTypes;
    v66 = xmmword_3A3990;
    v40 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v42 = v41;
    v64;
    v68 = v40;
    v69 = v42;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v67 = static ErrorString.sortTypes;
    v66 = xmmword_3A39B0;
    v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v67, &v66, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v6, v6, v6);
    v65 = v43;
    v42;
    type metadata accessor for OS_os_log();
    v44 = static OS_os_log.default.getter(0);
    v45 = static os_log_type_t.error.getter();
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v47 = swift_allocObject(v46, 72, 7);
    v47[2] = 1;
    v47[3] = 2;
    v47[7] = &type metadata for String;
    v47[8] = lazy protocol witness table accessor for type String and conformance String();
    v47[4] = v53;
    v47[5] = v65;
    v65;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v44, v45, v47);

    v47;
    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    *v49 = v53;
    *(v49 + 8) = v65;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v48);
    tc_v1_release(v52);
    return v51;
  }

  return v2;
}

NSURL *specialized handling<A, B, C>(_:_:_:)(uint64_t a1, uint64_t a2)
{
  v69 = 0;
  tc_v1_sframe_remove_column(a1, a2, &v69);
  v2 = v69;
  if (v69)
  {
    v3 = tc_v1_error_message(v69);
    if (!v3)
    {
      BUG();
    }

    v50 = v2;
    v67 = String.init(cString:)(v3);
    v52 = v4;
    v68 = v4;
    if (one-time initialization token for table != -1)
    {
      swift_once(&one-time initialization token for table, one-time initialization function for table);
    }

    v66 = static ErrorString.table;
    v65 = xmmword_3A3830;
    v5 = lazy protocol witness table accessor for type String and conformance String();
    v6 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v8 = v7;
    v52;
    v67 = v6;
    v53 = v8;
    v68 = v8;
    if (one-time initialization token for column != -1)
    {
      swift_once(&one-time initialization token for column, one-time initialization function for column);
    }

    v66 = static ErrorString.column;
    v65 = xmmword_3A3850;
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v11 = v10;
    v53;
    v67 = v9;
    v54 = v11;
    v68 = v11;
    if (one-time initialization token for tableMap != -1)
    {
      swift_once(&one-time initialization token for tableMap, one-time initialization function for tableMap);
    }

    v66 = static ErrorString.tableMap;
    v65 = xmmword_3A3870;
    v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v14 = v13;
    v54;
    v67 = v12;
    v55 = v14;
    v68 = v14;
    if (one-time initialization token for columnMap != -1)
    {
      swift_once(&one-time initialization token for columnMap, one-time initialization function for columnMap);
    }

    v66 = static ErrorString.columnMap;
    v65 = xmmword_3A3890;
    v15 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v17 = v16;
    v55;
    v67 = v15;
    v56 = v17;
    v68 = v17;
    if (one-time initialization token for drop != -1)
    {
      swift_once(&one-time initialization token for drop, one-time initialization function for drop);
    }

    v66 = static ErrorString.drop;
    v65 = xmmword_3A38B0;
    v18 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v20 = v19;
    v56;
    v67 = v18;
    v57 = v20;
    v68 = v20;
    if (one-time initialization token for sequence != -1)
    {
      swift_once(&one-time initialization token for sequence, one-time initialization function for sequence);
    }

    v66 = static ErrorString.sequence;
    v65 = xmmword_3A38D0;
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v23 = v22;
    v57;
    v67 = v21;
    v58 = v23;
    v68 = v23;
    if (one-time initialization token for double != -1)
    {
      swift_once(&one-time initialization token for double, one-time initialization function for double);
    }

    v66 = static ErrorString.double;
    v65 = xmmword_3A38F0;
    v24 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v26 = v25;
    v58;
    v67 = v24;
    v59 = v26;
    v68 = v26;
    if (one-time initialization token for integer != -1)
    {
      swift_once(&one-time initialization token for integer, one-time initialization function for integer);
    }

    v66 = static ErrorString.integer;
    v65 = xmmword_3A3910;
    v27 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 1, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v29 = v28;
    v59;
    v67 = v27;
    v60 = v29;
    v68 = v29;
    if (one-time initialization token for error != -1)
    {
      swift_once(&one-time initialization token for error, one-time initialization function for error);
    }

    v66 = static ErrorString.error;
    v65 = xmmword_3A3930;
    v30 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v32 = v31;
    v60;
    v67 = v30;
    v61 = v32;
    v68 = v32;
    if (one-time initialization token for archive != -1)
    {
      swift_once(&one-time initialization token for archive, one-time initialization function for archive);
    }

    v66 = static ErrorString.archive;
    v65 = xmmword_3A3950;
    v33 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v35 = v34;
    v61;
    v67 = v33;
    v62 = v35;
    v68 = v35;
    if (one-time initialization token for limit != -1)
    {
      swift_once(&one-time initialization token for limit, one-time initialization function for limit);
    }

    v66 = static ErrorString.limit;
    v65 = xmmword_3A3970;
    v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v38 = v37;
    v62;
    v67 = v36;
    v63 = v38;
    v68 = v38;
    if (one-time initialization token for supportedStackTypes != -1)
    {
      swift_once(&one-time initialization token for supportedStackTypes, one-time initialization function for supportedStackTypes);
    }

    v66 = static ErrorString.supportedStackTypes;
    v65 = xmmword_3A3990;
    v39 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v41 = v40;
    v63;
    v67 = v39;
    v68 = v41;
    if (one-time initialization token for sortTypes != -1)
    {
      swift_once(&one-time initialization token for sortTypes, one-time initialization function for sortTypes);
    }

    v66 = static ErrorString.sortTypes;
    v65 = xmmword_3A39B0;
    v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(&v66, &v65, 0, 0, 0, 1, &type metadata for String, &type metadata for String, &type metadata for String, v5, v5, v5);
    v64 = v43;
    v41;
    type metadata accessor for OS_os_log();
    v44 = static OS_os_log.default.getter(0);
    v51 = static os_log_type_t.error.getter();
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v46 = swift_allocObject(v45, 72, 7);
    v46[2] = 1;
    v46[3] = 2;
    v46[7] = &type metadata for String;
    v46[8] = lazy protocol witness table accessor for type String and conformance String();
    v46[4] = v42;
    v46[5] = v64;
    v64;
    os_log(_:dso:log:type:_:)("%@ \n", 4, 2, &dword_0, v44, v51, v46);

    v46;
    v47 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v47, 0, 0);
    *v48 = v42;
    *(v48 + 8) = v64;
    *(v48 + 16) = 0;
    *(v48 + 32) = 0;
    *(v48 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v47);
    tc_v1_release(v50);
  }

  return __stack_chk_guard;
}