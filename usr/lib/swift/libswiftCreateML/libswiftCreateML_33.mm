uint64_t assignWithCopy for MLSoundClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLSoundClassifier.DataSource(a1);
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = a3;
        v7 = 0;
        goto LABEL_9;
      case 1u:
        v22 = type metadata accessor for URL(0);
        (*(*(v22 - 8) + 16))(a1, a2, v22);
        v24 = 1;
        goto LABEL_8;
      case 2u:
        v16 = *a2;
        *v3 = *a2;
        v16;
        v24 = 2;
        goto LABEL_8;
      case 3u:
        v17 = *a2;
        v18 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v18);
        *a1 = v17;
        *(a1 + 8) = v18;
        *(a1 + 16) = *(a2 + 16);
        v19 = *(a2 + 24);
        *(v3 + 24) = v19;
        *(v3 + 32) = *(a2 + 32);
        v20 = *(a2 + 40);
        *(v3 + 40) = v20;
        v21 = *(a2 + 64);
        *(v3 + 48) = *(a2 + 48);
        *(v3 + 64) = v21;
        *(v3 + 80) = *(a2 + 80);
        v19;
        v20;
        v24 = 3;
        goto LABEL_8;
      case 4u:
        v8 = type metadata accessor for DataFrame(0);
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v10 = v9[12];
        *(a1 + v10) = *(a2 + v10);
        v11 = *(a2 + v10 + 8);
        *(v3 + v10 + 8) = v11;
        v12 = v9[16];
        *(v3 + v12) = *(a2 + v12);
        v13 = *(a2 + v12 + 8);
        *(v3 + v12 + 8) = v13;
        v14 = v9[20];
        *(v3 + v14 + 32) = *(a2 + v14 + 32);
        v15 = *(a2 + v14);
        *(v3 + v14 + 16) = *(a2 + v14 + 16);
        *(v3 + v14) = v15;
        v11;
        v13;
        v24 = 4;
LABEL_8:
        v7 = v24;
        a1 = v3;
        v6 = a3;
LABEL_9:
        swift_storeEnumTagMultiPayload(a1, v6, v7);
        break;
    }
  }

  return v3;
}

uint64_t outlined destroy of MLSoundClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLSoundClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

_BYTE *initializeWithTake for MLSoundClassifier.DataSource(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v9 = type metadata accessor for DataFrame(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v10[12]] = *&__src[v10[12]];
      *&__dst[v10[16]] = *&__src[v10[16]];
      v11 = v10[20];
      v12 = *&__src[v11 + 16];
      *&__dst[v11] = *&__src[v11];
      *&__dst[v11 + 16] = v12;
      __dst[v11 + 32] = __src[v11 + 32];
      v14 = 4;
      goto LABEL_7;
    case 1:
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 32))(__dst, __src, v8);
      v14 = 1;
LABEL_7:
      v7 = v14;
      v6 = a3;
      goto LABEL_8;
    case 0:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      v6 = a3;
      v7 = 0;
LABEL_8:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

_BYTE *assignWithTake for MLSoundClassifier.DataSource(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLSoundClassifier.DataSource(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v9 = type metadata accessor for DataFrame(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v10[12]] = *&__src[v10[12]];
      *&__dst[v10[16]] = *&__src[v10[16]];
      v11 = v10[20];
      v12 = *&__src[v11 + 16];
      *&__dst[v11] = *&__src[v11];
      *&__dst[v11 + 16] = v12;
      __dst[v11 + 32] = __src[v11 + 32];
      v14 = 4;
      goto LABEL_8;
    case 1:
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 32))(__dst, __src, v8);
      v14 = 1;
LABEL_8:
      v7 = v14;
      v6 = a3;
      goto LABEL_9;
    case 0:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 32))(__dst, __src, v5);
      v6 = a3;
      v7 = 0;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLSoundClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v14[0] = *(v1 - 8) + 64;
    v14[1] = v14[0];
    v14[2] = &value witness table for Builtin.BridgeObject + 64;
    v14[3] = "Q";
    v4 = type metadata accessor for DataFrame(319);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      v10 = *(v4 - 8) + 64;
      v11 = &unk_346AB8;
      v12 = &unk_346AB8;
      v13 = &unk_346AD0;
      v2 = 0;
      swift_getTupleTypeLayout(v9, 0, 4);
      v14[4] = v9;
      swift_initEnumMetadataMultiPayload(a1, 256, 5, v14, v6, v7);
    }
  }

  return v2;
}

void *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 1 << *(a3 + 32);
  v5 = ~(-1 << v4);
  if (v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a3 + 64) & v5;
  v7 = (v4 + 63) >> 6;
  v8 = 0;
  v9 = 0;
  while (v6)
  {
    _BitScanForward64(&v10, v6);
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
LABEL_20:
    if (!*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      a1[v11 >> 6] |= 1 << v11;
      if (__OFADD__(1, v8++))
      {
        BUG();
      }
    }
  }

  v12 = v9 + 1;
  if (__OFADD__(1, v9))
  {
    BUG();
  }

  if (v12 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 64);
  if (v13)
  {
    v14 = v9 + 1;
LABEL_19:
    _BitScanForward64(&v15, v13);
    v6 = v13 & (v13 - 1);
    v11 = v15 | (v14 << 6);
    v9 = v14;
    goto LABEL_20;
  }

  v14 = v9 + 2;
  if (v9 + 2 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 72);
  if (v13)
  {
    goto LABEL_19;
  }

  v14 = v9 + 3;
  if (v9 + 3 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 80);
  if (v13)
  {
    goto LABEL_19;
  }

  v14 = v9 + 4;
  if (v9 + 4 >= v7)
  {
    return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
  }

  v13 = *(a3 + 8 * v12 + 88);
  if (v13)
  {
    goto LABEL_19;
  }

  while (v9 + 5 < v7)
  {
    v13 = *(a3 + 8 * v9++ + 104);
    if (v13)
    {
      v14 = v9 + 4;
      goto LABEL_19;
    }
  }

  return specialized _NativeDictionary.extractDictionary(using:count:)(a1, a2, v8, a3);
}

void *specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, [URL]>);
    v6 = static _DictionaryStorage.allocate(capacity:)(v5);
    v40 = a2;
    if (a2 <= 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = *v44;
    }

    v8 = 0;
    v39 = v4;
    while (1)
    {
      v41 = v5;
      if (v7)
      {
        _BitScanForward64(&v9, v7);
        v43 = (v7 - 1) & v7;
        v42 = v8;
        v10 = v9 | (v8 << 6);
      }

      else
      {
        v11 = __OFADD__(1, v8);
        v12 = v8 + 1;
        if (v11)
        {
          BUG();
        }

        if (v12 >= v40)
        {
          return v6;
        }

        i = v44[v12];
        if (i)
        {
          v14 = v12;
        }

        else
        {
          v14 = v12 + 1;
          if (v12 + 1 >= v40)
          {
            return v6;
          }

          i = v44[v12 + 1];
          if (!i)
          {
            v14 = v12 + 2;
            if (v12 + 2 >= v40)
            {
              return v6;
            }

            i = v44[v12 + 2];
            if (!i)
            {
              v14 = v12 + 3;
              if (v12 + 3 >= v40)
              {
                return v6;
              }

              for (i = v44[v12 + 3]; !i; i = v44[v14])
              {
                v11 = __OFADD__(1, v14++);
                if (v11)
                {
                  BUG();
                }

                if (v14 >= v40)
                {
                  return v6;
                }
              }
            }
          }
        }

        _BitScanForward64(&v15, i);
        v43 = i & (i - 1);
        v10 = v15 | (v14 << 6);
        v42 = v14;
      }

      v16 = *(v4 + 48);
      v17 = *(v4 + 56);
      v18 = *(v16 + 16 * v10);
      v19 = *(v16 + 16 * v10 + 8);
      v20 = *(v17 + 8 * v10);
      Hasher.init(_seed:)(*(v6 + 40));
      v19;
      v37 = v20;
      v20;
      v38 = v18;
      String.hash(into:)(v36, v18);
      v21 = Hasher._finalize()() & ~(-1 << *(v6 + 32));
      v22 = v21 >> 6;
      v23 = ~*(v6 + 8 * (v21 >> 6) + 64) >> v21 << v21;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
        v25 = v24 | v21 & 0xFFFFFFFFFFFFFFC0;
        v26 = v41;
      }

      else
      {
        v27 = (63 - (-1 << *(v6 + 32))) >> 6;
        v28 = 0;
        v26 = v41;
        do
        {
          v29 = v22 + 1;
          if (v22 + 1 == v27 && (v28 & 1) != 0)
          {
            BUG();
          }

          v22 = 0;
          if (v29 != v27)
          {
            v22 = v29;
          }

          v28 |= v29 == v27;
          v30 = *(v6 + 8 * v22 + 64);
        }

        while (v30 == -1);
        v31 = ~v30;
        v32 = 64;
        if (v31)
        {
          _BitScanForward64(&v32, v31);
        }

        v25 = v32 + (v22 << 6);
      }

      *(v6 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v33 = *(v6 + 48);
      v34 = 16 * v25;
      *(v33 + v34) = v38;
      *(v33 + v34 + 8) = v19;
      *(*(v6 + 56) + 8 * v25) = v37;
      ++*(v6 + 16);
      v11 = __OFSUB__(v26, 1);
      v5 = v26 - 1;
      v8 = v42;
      if (v11)
      {
        BUG();
      }

      v4 = v39;
      v7 = v43;
      if (!v5)
      {
        return v6;
      }
    }
  }

  return v4;
}

uint64_t specialized Dictionary.Keys.endIndex.getter(uint64_t a1)
{
  result = 1 << *(a1 + 32);
  v2 = *(a1 + 36);
  return result;
}

uint64_t specialized Dictionary.Keys.subscript.getter(int64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
    BUG();
  }

  v5 = *(a4 + 8 * (a1 >> 6) + 64);
  if (!_bittest64(&v5, a1))
  {
    BUG();
  }

  if (*(a4 + 36) != a2)
  {
    BUG();
  }

  v6 = *(a4 + 48);
  v7 = 16 * a1;
  v8 = *(v6 + v7);
  *(v6 + v7 + 8);
  return v8;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = (a1 + 56);
    do
    {
      v16 = v3;
      v15 = v2;
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *v4;
      v6;
      v19 = v7;
      v7;
      v8 = String._bridgeToObjectiveC()();
      v9 = [a2 predictedLabelForString:v8];
      v10 = v9;

      if (v10)
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(v10);
        v18 = v11;
        v19;
        v6;
      }

      else
      {
        v19;
        v6;
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      v3 = v16;
      v12 = v16[2];
      if (v16[3] >> 1 <= v12)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16[3] >= 2uLL, v12 + 1, 1);
        v3 = v16;
      }

      v3[2] = v12 + 1;
      v13 = 2 * v12;
      v3[v13 + 4] = v17;
      v3[v13 + 5] = v18;
      v4 += 4;
      v2 = v15 - 1;
    }

    while (v15 != 1);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 56);
    do
    {
      v6 = v1;
      v7 = *(v2 - 1);
      v3 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v3 + 1;
      v8 = *v2;
      *v2;
      if (v9 >> 1 <= v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v4 = 2 * v3;
      _swiftEmptyArrayStorage[v4 + 4] = v7;
      _swiftEmptyArrayStorage[v4 + 5] = v8;
      v2 += 4;
      v1 = v6 - 1;
    }

    while (v6 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k145OIegnrzr_TR095_s8CreateML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  i = *(v1 - 8);
  v2 = *(i + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v74 = &v59;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v5 = *(*(v70 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v72 = &v59;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  v8 = *(*(v61 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v65 = &v59;
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v64 = v1;
  v69 = v11;
  v68 = dispatch thunk of Sequence.underestimatedCount.getter(v1, v11);
  v12 = a1 + *(v70 + 52);
  v13 = dispatch thunk of Sequence.underestimatedCount.getter(v1, v11);
  v14 = v68;
  if (v13 < v68)
  {
    v14 = v13;
  }

  v68 = v14;
  v67 = _swiftEmptyArrayStorage;
  v15 = 0;
  if (v14 > 0)
  {
    v15 = v14;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v71 = v67;
  v16 = v72;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, v72, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  i = *(i + 32);
  v17 = v16;
  v18 = v64;
  (i)(v74, v17, v64);
  v19 = v65;
  v20 = v69;
  dispatch thunk of Sequence.makeIterator()(v18, v69);
  (i)(v74, v72 + *(v70 + 52), v18);
  v70 = v19 + *(v61 + 52);
  dispatch thunk of Sequence.makeIterator()(v18, v20);
  if (v68 < 0)
  {
    BUG();
  }

  v21 = v19;
  if (v68)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36);
    v72 = (v19 + v22);
    i = v70 + v22;
    v74 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v23 = v18;
    do
    {
      dispatch thunk of Collection.endIndex.getter(v23, v74);
      if (*v72 == v60[0])
      {
        BUG();
      }

      v24 = v64;
      v25 = dispatch thunk of Collection.subscript.read(v60, v72, v64, v74);
      v66 = *v26;
      v69 = v26[1];
      v69;
      v25(v60, 0);
      v27 = v74;
      dispatch thunk of Collection.formIndex(after:)(v72, v24, v74);
      dispatch thunk of Collection.endIndex.getter(v24, v27);
      if (*i == v60[0])
      {
        v69;
        BUG();
      }

      v28 = v74;
      v30 = dispatch thunk of Collection.subscript.read(v60, i, v24, v74);
      v31 = v29[1];
      v32 = v31;
      v33 = 0xE000000000000000;
      if (v31)
      {
        v32 = *v29;
        v33 = v29[1];
      }

      v63 = v33;
      v62 = v32;
      v31;
      v30(v60, 0);
      dispatch thunk of Collection.formIndex(after:)(i, v64, v28);
      v34 = v69;
      v35 = v66;
      if (!v69)
      {
        v35 = 0;
        v34 = 0xE000000000000000;
      }

      v36 = v71;
      v67 = v71;
      v37 = v71[2];
      v38 = v71[3];
      v39 = v37 + 1;
      if (v38 >> 1 <= v37)
      {
        v71 = (v37 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 >= 2, v39, 1);
        v39 = v71;
        v36 = v67;
      }

      v36[2] = v39;
      v40 = 4 * v37;
      v36[v40 + 4] = v35;
      v36[v40 + 5] = v34;
      v36[v40 + 6] = v62;
      v71 = v36;
      v36[v40 + 7] = v63;
      v41 = v68-- == 1;
      v23 = v64;
      v21 = v65;
    }

    while (!v41);
  }

  else
  {
    v23 = v18;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
  v72 = (v21 + *(v68 + 36));
  v42 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  for (i = v42; ; v42 = i)
  {
    v43 = v42;
    dispatch thunk of Collection.endIndex.getter(v23, v42);
    if (*v72 == v60[0])
    {
      break;
    }

    v74 = dispatch thunk of Collection.subscript.read(v60, v72, v23, v43);
    v66 = *v44;
    v69 = v44[1];
    v69;
    (v74)(v60, 0);
    dispatch thunk of Collection.formIndex(after:)(v72, v23, v43);
    v74 = *(v68 + 36);
    v45 = v70;
    dispatch thunk of Collection.endIndex.getter(v23, v43);
    if (*(v45 + v74) == v60[0])
    {
      v69;
      break;
    }

    v74 += v45;
    v47 = dispatch thunk of Collection.subscript.read(v60, v74, v23, v43);
    v48 = v46[1];
    v49 = v48;
    v50 = 0xE000000000000000;
    if (v48)
    {
      v49 = *v46;
      v50 = v46[1];
    }

    v63 = v50;
    v62 = v49;
    v48;
    v47(v60, 0);
    dispatch thunk of Collection.formIndex(after:)(v74, v23, i);
    v51 = v69;
    v52 = v66;
    if (!v69)
    {
      v52 = 0;
      v51 = 0xE000000000000000;
    }

    v53 = v71;
    v67 = v71;
    v54 = v71[2];
    v55 = v71[3];
    if (v55 >> 1 <= v54)
    {
      v66 = v52;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 >= 2, v54 + 1, 1);
      v52 = v66;
      v53 = v67;
    }

    v53[2] = v54 + 1;
    v56 = 4 * v54;
    v53[v56 + 4] = v52;
    v53[v56 + 5] = v51;
    v53[v56 + 6] = v62;
    v71 = v53;
    v53[v56 + 7] = v63;
    v23 = v64;
  }

  v57 = v65;
  *(v65 + *(v61 + 56)) = 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v57, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  return v71;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Unmanaged<CFDictionaryRef>?)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v5;
  v6 = v4(a2, a3);
  v5;
  return v6;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @unowned UnsafeMutablePointer<Bool>?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v5;
  v6 = a2;
  v4(a2, a3);
  v5;
}

char *_s8CreateML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5(uint64_t a1, char *a2, uint64_t a3)
{
  TrainedModelWithData = a2;
  v5 = static MLTextClassifier.buildOptions(_:)(a3);
  if (!v3)
  {
    v38 = v5;
    v6 = _swiftEmptyArrayStorage;
    v36 = _swiftEmptyArrayStorage;
    v31 = *(a1 + 16);
    if (v31)
    {
      aBlock = _swiftEmptyArrayStorage;
      v7 = v31;
      specialized ContiguousArray.reserveCapacity(_:)(v31);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v8 = (a1 + 56);
      do
      {
        v40 = *(v8 - 3);
        v32 = *(v8 - 2);
        v34 = *(v8 - 1);
        v9 = *v8;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v11 = swift_allocObject(v10, 160, 7);
        v11[2] = 2;
        v11[3] = 4;
        v11[7] = &type metadata for String;
        v11[4] = 0x6C6562614CLL;
        v11[5] = 0xE500000000000000;
        v11[11] = &type metadata for String;
        v11[8] = v34;
        v11[9] = v9;
        v11[15] = &type metadata for String;
        v11[12] = 0x676E69727453;
        v11[13] = 0xE600000000000000;
        v11[19] = &type metadata for String;
        v11[16] = v40;
        v11[17] = v32;
        v32;
        v9;
        NSDictionary.init(dictionaryLiteral:)(v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v11);
        v12 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v12);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v12);
        specialized ContiguousArray._endMutation()(v12);
        v8 += 4;
        --v7;
      }

      while (v7);
      v36 = aBlock;
      v6 = _swiftEmptyArrayStorage;
      TrainedModelWithData = a2;
    }

    v39 = *(TrainedModelWithData + 2);
    if (v39)
    {
      aBlock = _swiftEmptyArrayStorage;
      v13 = v39;
      specialized ContiguousArray.reserveCapacity(_:)(v39);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSDictionary, NSDictionary_ptr);
      v14 = (TrainedModelWithData + 56);
      do
      {
        v41 = *(v14 - 3);
        v33 = *(v14 - 2);
        v35 = *(v14 - 1);
        v15 = *v14;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>);
        v17 = swift_allocObject(v16, 160, 7);
        v17[2] = 2;
        v17[3] = 4;
        v17[7] = &type metadata for String;
        v17[4] = 0x6C6562614CLL;
        v17[5] = 0xE500000000000000;
        v17[11] = &type metadata for String;
        v17[8] = v35;
        v17[9] = v15;
        v17[15] = &type metadata for String;
        v17[12] = 0x676E69727453;
        v17[13] = 0xE600000000000000;
        v17[19] = &type metadata for String;
        v17[16] = v41;
        v17[17] = v33;
        v33;
        v15;
        NSDictionary.init(dictionaryLiteral:)(v17);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v17);
        v18 = aBlock[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18);
        specialized ContiguousArray._endMutation()(v18);
        v14 += 4;
        --v13;
      }

      while (v13);
      v6 = aBlock;
    }

    v48 = 0;
    v19 = v36;
    if ((((v36 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v36)) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
    }

    v37 = v19;
    v20 = v19 & 0xFFFFFFFFFFFFF8;
    if ((((v6 & 0x4000000000000001) == 0) & swift_isUniquelyReferenced_nonNull_bridgeObject(v6)) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    v46 = implicit closure #1 in closure #1 in closure #3 in static MLWordTagger.createWordTaggerModel<A, B>(trainingExamples:validatingExamples:modelParameters:);
    v47 = 0;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@unowned UnsafeMutableRawPointer?, @unowned Int) -> (@unowned Unmanaged<CFDictionaryRef>?);
    v45 = &block_descriptor_8;
    v21 = _Block_copy(&aBlock);
    v46 = MLBoostedTreeRegressor.ModelParameters.maxDepth.modify;
    v47 = 0;
    v22 = v21;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @unowned UnsafeMutablePointer<Bool>?) -> ();
    v45 = &block_descriptor_3;
    v30 = _Block_copy(&aBlock);
    TrainedModelWithData = NLPClassifierModelCreateTrainedModelWithData(v38, v31, v39, v20 + 32, (v6 & 0xFFFFFFFFFFFFF8) + 32);
    _Block_release(v30);
    _Block_release(v22);
    v37;
    v23 = v48;
    if (v48)
    {
      v24 = type metadata accessor for CFErrorRef(0);
      v25 = lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef();
      TrainedModelWithData = swift_allocError(v24, v25, 0, 0);
      *v26 = v23;
      swift_willThrow(v24, v25);
      v6;
    }

    else
    {
      if (!TrainedModelWithData)
      {
        TrainedModelWithData = "TextClassifier\n\nParameters\n" + 0x8000000000000000;
        v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
        *v29 = 0xD00000000000002DLL;
        *(v29 + 8) = "TextClassifier\n\nParameters\n" + 0x8000000000000000;
        *(v29 + 16) = 0;
        *(v29 + 32) = 0;
        *(v29 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v28);
      }

      v6;
    }
  }

  return TrainedModelWithData;
}

void (*MLTextClassifier.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

uint64_t MLTextClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLTextClassifier.ModelParameters);
}

uint64_t type metadata accessor for MLTextClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier;
  if (!type metadata singleton initialization cache for MLTextClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier);
  }

  return result;
}

uint64_t MLTextClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLTextClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLTextClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLTextClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = a2;
  v11 = v3;
  v5 = *(*(type metadata accessor for MLTextClassifier.ModelParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = static _TextUtilities.getTextLabeledDictionary(from:)(a1, a3);
  if (v4)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLTextClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLTextClassifier.DataSource);
  }

  else
  {
    v10 = v8;
    outlined init with copy of MLTrainingSessionParameters(v12, &v11, type metadata accessor for MLTextClassifier.ModelParameters);
    MLTextClassifier.init(trainingData:parameters:)(v10, &v11);
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLTextClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLTextClassifier.DataSource);
  }
}

uint64_t MLTextClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v14[1] = v2;
  v4 = *(*(type metadata accessor for MLTextClassifier.ModelParameters(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v15 = v14;
  v17 = type metadata accessor for DataFrame(0);
  v16 = *(v17 - 8);
  v7 = *(v16 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(a1, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
  if (v3)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLTextClassifier.ModelParameters);
    return a1;
  }

  else
  {
    a1;
    (*(v16 + 16))(v14, v14, v17);
    v13 = v15;
    outlined init with copy of MLTrainingSessionParameters(v18, v15, type metadata accessor for MLTextClassifier.ModelParameters);
    MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(v14, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000, v13);
    outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLTextClassifier.ModelParameters);
    return (*(v16 + 8))(v14, v17);
  }
}

uint64_t MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v170 = a4;
  v175 = a3;
  v8 = v6;
  v168 = a2;
  v169 = v7;
  v172 = a6;
  v179 = a5;
  v156 = type metadata accessor for DataFrame.Rows(0);
  v155 = *(v156 - 8);
  v9 = *(v155 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v157 = &v146;
  v153 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v12 = *(*(v153 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v152 = &v146;
  v15 = *(*(type metadata accessor for MLTextClassifier.FeatureExtractorType(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v154 = &v146;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v151 = &v146;
  v161 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v20 = *(*(v161 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v162 = &v146;
  v173 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v23 = *(*(v173 - 1) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v149 = &v146;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v150 = &v146;
  v159 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v165 = *(v159 - 8);
  v29 = *(v165 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = &v146;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v160 = &v146;
  v35 = type metadata accessor for DataFrame(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v166 = &v146;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v174 = &v146;
  v171 = a1;
  v176 = v35;
  v177 = v36;
  (*(v36 + 16))(&v146, a1);
  v42 = type metadata accessor for MLTextClassifier(0);
  v43 = v8 + *(v42 + 28);
  outlined init with copy of MLTrainingSessionParameters(v172, v43, type metadata accessor for MLTextClassifier.ModelParameters);
  MLTextClassifier.ModelParameters.validateRevision()();
  v169 = v43;
  if (v44)
  {
    goto LABEL_5;
  }

  v167 = v42;
  v163 = v8;
  v45 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v46 = *(v45 + 36);
  if (!*(v43 + v46 + 8) && *(v43 + v46) <= 0)
  {
    v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
    *v55 = 0xD000000000000036;
    *(v55 + 8) = "bset of the training labels." + 0x8000000000000000;
    v51 = v177;
    *(v55 + 16) = 0;
    *(v55 + 32) = 0;
    *(v55 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v54);
    v49 = v176;
    v50 = v175;
    goto LABEL_6;
  }

  MLTextClassifier.ModelParameters.validateCustomEmbeddingURL()();
  if (v48)
  {
LABEL_5:
    v49 = v176;
    v50 = v175;
    v51 = v177;
LABEL_6:
    v50;
    v179;
    v52 = *(v51 + 8);
    v52(v171, v49);
    v52(v174, v49);
    outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(v169, type metadata accessor for MLTextClassifier.ModelParameters);
  }

  static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(v174, v168, v175, v170, v179);
  v180 = 0;
  DataFrame.subscript.getter(v170, v179, &type metadata for String);
  *&v148[0] = 0;
  *(&v148[0] + 1) = 0xE000000000000000;
  v56 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v57 = v159;
  v158 = v56;
  v58 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
  OptionalColumnProtocol.filled(with:)(v148, v159, v56);
  v165 = *(v165 + 8);
  (v165)(v58, v57);
  v59 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v60 = v45;
  v61 = v59;
  v163[1].super.isa = v59;
  v164 = v60;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v169 + *(v60 + 24), &v146, &demangling cache variable for type metadata for Any?);
  if (!v147)
  {
    BUG();
  }

  outlined init with take of Any(&v146, v148);
  v61;
  v62 = v149;
  swift_dynamicCast(v149, v148, &type metadata for Any + 8, v173, 7);
  v63 = v150;
  v64 = v175;
  v65 = v180;
  MLTextClassifier.ModelParameters.ValidationData.createValidationData(trainingData:textColumn:labelColumn:)(v174, v168, v175, v170, v179, v47);
  v180 = v65;
  if (v65)
  {
    v61;
    v64;
    v179;
    v66 = *(v177 + 8);
    v67 = v176;
    v66(v171, v176);
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
    v66(v174, v67);
    outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
    v68 = v61;
LABEL_28:
    v68;
    return outlined destroy of MLActivityClassifier.ModelParameters(v169, type metadata accessor for MLTextClassifier.ModelParameters);
  }

  v173 = v61;
  outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  v69 = v63;
  v70 = v63;
  v71 = v176;
  if (__swift_getEnumTagSinglePayload(v69, 1, v176) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v70, &demangling cache variable for type metadata for DataFrame?);
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = _swiftEmptyArrayStorage;
    v72 = v179;
    v73 = v168;
    v74 = v162;
  }

  else
  {
    (*(v177 + 32))(v166, v70, v71);
    v75 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    DataFrame.subscript.getter(v170, v179, &type metadata for String);
    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    v76 = v159;
    OptionalColumnProtocol.filled(with:)(v148, v159, v158);
    (v165)(v75, v76);
    v77 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v78 = v173;
    LOBYTE(v75) = specialized Set.isSubset(of:)(v173, v77);
    v77;
    if ((v75 & 1) == 0)
    {
      v78;
      v175;
      v179;
      v100 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
      *v101 = 0xD00000000000003ELL;
      *(v101 + 8) = " table is empty." + 0x8000000000000000;
      *(v101 + 16) = 0;
      *(v101 + 32) = 0;
      *(v101 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v100);
      v102 = *(v177 + 8);
      v103 = v176;
      v102(v171, v176);
      v102(v166, v103);
      v102(v174, v103);
      outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
      v68 = v78;
      goto LABEL_28;
    }

    v79 = v162;
    v80 = v168;
    v81 = v166;
    DataFrame.subscript.getter(v168, v175, &type metadata for String);
    v82 = *(v161 + 52);
    DataFrame.subscript.getter(v170, v179, &type metadata for String);
    v74 = v79;
    v83 = v180;
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k145OIegnrzr_TR095_s8CreateML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n(v79);
    v180 = v83;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
    (*(v177 + 8))(v81, v176);
    v73 = v80;
    v72 = v179;
  }

  DataFrame.subscript.getter(v73, v175, &type metadata for String);
  v84 = *(v161 + 52);
  DataFrame.subscript.getter(v170, v72, &type metadata for String);
  v85 = v180;
  v86 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData6ColumnVySSGAKG_SS4text_SS5labelts5NeverOTg5043_sSSSgAAS2SIgggoo_AA_AAtSS4text_SS5labelts5k145OIegnrzr_TR095_s8CreateML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n(v74);
  v180 = v85;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v74, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v175;
  v72;
  v87 = v169;
  v88 = v152;
  outlined init with copy of MLTrainingSessionParameters(v169, v152, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v88, v153);
  v90 = v151;
  v179 = v86;
  if (EnumCaseMultiPayload != 2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    goto LABEL_26;
  }

  outlined init with take of MLTextClassifier.FeatureExtractorType(v88, v151);
  v91 = v180;
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n(v86);
  v93 = *(v87 + *(v164 + 20));
  if (v93)
  {
    v180 = v91;
    v94 = v93;
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLLanguageRecognizer, NLLanguageRecognizer_ptr);
    v94 = static NLLanguageRecognizer.dominantLanguage(for:)(ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n);
    v180 = v91;
    if (v91)
    {
      ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
      v118 = v173;
      v173;
      v179;
      ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
      v119 = *(v177 + 8);
      v120 = v176;
      v119(v171, v176);
      outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLTextClassifier.FeatureExtractorType);
      v119(v174, v120);
      outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
      v68 = v118;
      goto LABEL_28;
    }
  }

  v175 = v94;
  ML16ColumnDescriptorVG_SSs5NeverOTg503_s8d131ML17FeatureVectorizerV11TransformerV10vectorized_13includingBias0A12MLComponents11DenseMatrixVyxG11TabularData0M5FrameV_SbtKFSSAA16fG54Vcfu_33_44daf68368b8b9c6f03dca699c8750fcAPSSTf3nnnpk_nTf1cn_n;
  v95 = v154;
  outlined init with copy of MLTrainingSessionParameters(v90, v154, type metadata accessor for MLTextClassifier.FeatureExtractorType);
  v96 = NLModelEmbeddingType.init(_:)(v95);
  v97 = static String._unconditionallyBridgeFromObjectiveC(_:)(v96);
  v99 = v98;
  if (!(v97 ^ 0x6D6F74737543 | v98 ^ 0xE600000000000000))
  {
    v98;
LABEL_25:
    outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLTextClassifier.FeatureExtractorType);

    goto LABEL_26;
  }

  v104 = _stringCompareWithSmolCheck(_:_:expecting:)(v97, v98, 0x6D6F74737543, 0xE600000000000000, 0);
  v99;
  if (v104)
  {
    goto LABEL_25;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLEmbedding, NLEmbedding_ptr);
  v130 = v175;
  v131 = v180;
  static NLEmbedding.requestIfNotPresent(embeddingType:language:)(v96, v175);
  v180 = v131;
  if (v131)
  {
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v173;

    v179;
    v132 = *(v177 + 8);
    v133 = v176;
    v132(v171, v176);
    outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    v132(v174, v133);
    outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
    v68 = v173;
    goto LABEL_28;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLTextClassifier.FeatureExtractorType);

LABEL_26:
  v105 = v180;
  v106 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
  ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
  ML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5 = _s8CreateML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5(v179, v106, v169);
  v108 = v176;
  ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n = v106;
  if (v105)
  {
    v106;
    v109 = v173;
    v173;
    v110 = *(v177 + 8);
    v110(v171, v108);
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v110(v174, v108);
    outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
    v109;
    v68 = v179;
    goto LABEL_28;
  }

  v111 = ML16MLTextClassifierV06createD016trainingExamples010validatingG015modelParametersSo7NLModelCx_q_AC05ModelJ0VtKSlRzSlR_SS4text_SS5labelt7ElementRtzSSAL_SSAMtANRt_r0_lFZSaySSAL_SSAMtG_AQTt2g5;
  v106;
  v112 = v163;
  v163->super.isa = v111;
  v113 = v111;
  v114.super.isa = NLModel.asCoreML()().super.isa;
  if (v115)
  {
    v173;
    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;

    v179;
    v116 = *(v177 + 8);
    v117 = v176;
    v116(v171, v176);
    v116(v174, v117);
    outlined destroy of MLActivityClassifier.ModelParameters(v172, type metadata accessor for MLTextClassifier.ModelParameters);
    v173;

    return outlined destroy of MLActivityClassifier.ModelParameters(v169, type metadata accessor for MLTextClassifier.ModelParameters);
  }

  v112[2].super.isa = v114.super.isa;
  v121 = *(v167 + 32);
  v122 = v179;
  _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(v179, v113);
  v122;
  v123 = *(ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n + 2) == 0;
  v180 = 0;
  if (v123)
  {

    ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v134 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v135 = swift_allocError(&type metadata for MLCreateError, v134, 0, 0);
    *v136 = 0xD00000000000001CLL;
    *(v136 + 8) = "CreateML/MLClassifier.swift" + 0x8000000000000000;
    *(v136 + 16) = 0;
    *(v136 + 32) = 0;
    *(v136 + 48) = 2;
    v137 = (v112 + *(v167 + 36));
    *v137 = v135;
    v127 = v137;
    v126 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v137, v126, 2);
  }

  else
  {
    v124 = *(v167 + 36);
    v125 = ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n;
    v126 = v113;
    _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(ML16MLTextClassifierV23createAnnotatedFeatures33_F2EF627AFE10E52D0E593E242B327365LL_10a24Column05labelQ0SaySS0P0_X56R0tG11f30Data0T5FrameV_S2StFZSSAH_SSAItM19_ANtXEfU_Tf3nnnpf_nTf1cn_n, v113);
    v125;
    v127 = v113;
  }

  v138 = v174;
  v139 = v157;
  DataFrame.rows.getter(v127, v126, v128, v129);
  v140 = DataFrame.Rows.count.getter();
  (*(v155 + 8))(v139, v156);
  v141 = v173[2];
  v173;
  v142 = v138;
  v143 = v172;
  static MLTextClassifier.reportAnalytics(trainingExampleCount:labelCount:algorithm:language:)(v140, v141, v172, *(v172 + *(v164 + 20)));
  v144 = *(v177 + 8);
  v145 = v176;
  v144(v171, v176);
  v144(v142, v145);
  return outlined destroy of MLActivityClassifier.ModelParameters(v143, type metadata accessor for MLTextClassifier.ModelParameters);
}

uint64_t static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v38._object = v5;
  v37 = a5;
  v38._countAndFlagsBits = a4;
  v40 = type metadata accessor for AnyColumn(0);
  v36._object = *(v40 - 8);
  v8 = *(v36._object + 8);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v39 = &v32;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v36._countAndFlagsBits = a2;
  v13._countAndFlagsBits = a2;
  v35 = a3;
  v13._object = a3;
  v41 = a1;
  v14 = DataFrame.indexOfColumn(_:)(v13);
  if (v14.is_nil)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v15._object = " natural language classifier." + 0x8000000000000000;
    v15._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v15);
    v15._countAndFlagsBits = v36._countAndFlagsBits;
    v15._object = v35;
    String.append(_:)(v15);
    v16._object = "Text column name '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000024;
LABEL_6:
    String.append(_:)(v16);
    v24 = v33;
    v25 = v34;
    v26 = static os_log_type_t.error.getter();
    goto LABEL_10;
  }

  DataFrame.subscript.getter(v14.value);
  v17 = AnyColumn.wrappedElementType.getter();
  v18 = *(v36._object + 1);
  v18(&v32, v40);
  if (!swift_dynamicCastMetatype(v17, &type metadata for String))
  {
    v25 = " in the data frame. " + 0x8000000000000000;
    v26 = static os_log_type_t.error.getter();
    v24 = 0xD00000000000002DLL;
    goto LABEL_10;
  }

  countAndFlagsBits = v38._countAndFlagsBits;
  v20._countAndFlagsBits = v38._countAndFlagsBits;
  v21 = v37;
  v20._object = v37;
  v22 = DataFrame.indexOfColumn(_:)(v20);
  if (v22.is_nil)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v23._object = " not contain string elements." + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v23);
    v23._countAndFlagsBits = countAndFlagsBits;
    v23._object = v21;
    String.append(_:)(v23);
    v16._object = "Text column name '" + 0x8000000000000000;
    v16._countAndFlagsBits = 0xD000000000000024;
    goto LABEL_6;
  }

  v27 = v39;
  DataFrame.subscript.getter(v22.value);
  v28 = AnyColumn.wrappedElementType.getter();
  v18(v27, v40);
  result = swift_dynamicCastMetatype(v28, &type metadata for String);
  if (result)
  {
    return result;
  }

  v25 = "Label column name '" + 0x8000000000000000;
  v26 = static os_log_type_t.error.getter();
  v24 = 0xD00000000000002ELL;
LABEL_10:
  v30._countAndFlagsBits = v24;
  v30._object = v25;
  log(_:type:)(v30, v26);
  v30._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v30._object, 0, 0);
  *v31 = v24;
  *(v31 + 8) = v25;
  *(v31 + 16) = 0;
  *(v31 + 32) = 0;
  *(v31 + 48) = 1;
  return swift_willThrow(&type metadata for MLCreateError, v30._object);
}

uint64_t _s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7ElementRtzlFZSaySSAK_SSALtG_Tt2g5(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a2;
  ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n(a1, v4);
  ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS4text_SS5labeltG_SSs5NeverOTg50111_s8CreateML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n(a1);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v6 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  ClassificationMetrics.init<A, B>(_:_:)(&ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B24RtzlFZS2SAK_SSALt_tXEfU_So0R0CTf1cn_n, &ML16MLTextClassifierV10evaluation2on5usingAA19MLClassifierMetricsVx_So7NLModelCtSlRzSS4text_SS5labelt7B80RtzlFZS2SAK_SSALt_tcfu_33_9884fbf80a26ee2659924377586aa6b9SSAK_SSALtSSTf3nnnpk_nTf1cn_n, &type metadata for String, v5, v5, &protocol witness table for String, v6, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v3, v7, 0);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v3, v8, 0);
}

char static MLTextClassifier.reportAnalytics(trainingExampleCount:labelCount:algorithm:language:)(int a1, int a2, uint64_t a3, uint64_t a4)
{
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_textClassifier, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_textClassifier, __PAIR128__(("Number of Images" + 0x8000000000000000), 0xD000000000000011), a2);
    v6._countAndFlagsBits = MLTextClassifier.ModelAlgorithmType.description.getter();
    object = v6._object;
    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_textClassifier, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), v6);
    object;
    if (a4)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
      v10 = v9;
    }

    else
    {
      v10 = "formers Text Embedding" + 0x8000000000000000;
      v8 = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_textClassifier, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), __PAIR128__(v10, v8));
    return v10;
  }

  return result;
}

uint64_t MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v18 = a4;
  v19 = a3;
  v22 = v6;
  v20 = a2;
  v21 = a5;
  v8 = *(*(type metadata accessor for MLTextClassifier.ModelParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(a1 + 8);
  v16 = *a1;
  v17 = v14;
  DataFrame.init(_:)(&v16);
  outlined init with copy of MLTrainingSessionParameters(a6, &v16, type metadata accessor for MLTextClassifier.ModelParameters);
  MLTextClassifier.init(trainingData:textColumn:labelColumn:parameters:)(&v16, v20, v19, v18, v21, &v16);
  return outlined destroy of MLActivityClassifier.ModelParameters(a6, type metadata accessor for MLTextClassifier.ModelParameters);
}

void *unpackLabeledTexts(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = 1 << *(a1 + 32);
  v3 = ~(-1 << v2);
  if (v2 >= 64)
  {
    v3 = -1;
  }

  v4 = *(a1 + 64) & v3;
  v46 = (v2 + 63) >> 6;
  a1;
  v5 = _swiftEmptyArrayStorage;
  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v4)
    {
LABEL_5:
      v8 = v6;
      goto LABEL_20;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v46)
    {
      goto LABEL_56;
    }

    v4 = *(v1 + 8 * v9 + 64);
    if (v4)
    {
      v8 = v6 + 1;
      goto LABEL_20;
    }

    v8 = v6 + 2;
    if (v6 + 2 >= v46)
    {
      goto LABEL_56;
    }

    v4 = *(v1 + 8 * v9 + 72);
    if (!v4)
    {
      v8 = v6 + 3;
      if (v6 + 3 >= v46)
      {
        goto LABEL_56;
      }

      v4 = *(v1 + 8 * v9 + 80);
      if (!v4)
      {
        v8 = v6 + 4;
        if (v6 + 4 >= v46)
        {
          goto LABEL_56;
        }

        v4 = *(v1 + 8 * v9 + 88);
        if (!v4)
        {
          v8 = v6 + 5;
          if (v6 + 5 >= v46)
          {
            goto LABEL_56;
          }

          v4 = *(v1 + 8 * v9 + 96);
          if (!v4)
          {
            v8 = v6 + 6;
            if (v6 + 6 >= v46)
            {
              goto LABEL_56;
            }

            v4 = *(v1 + 8 * v9 + 104);
            if (!v4)
            {
              break;
            }
          }
        }
      }
    }

LABEL_20:
    v41 = v7;
    v45 = v5;
    v42 = v4;
    _BitScanForward64(&v10, v4);
    v43 = v8;
    v11 = v10 | (v8 << 6);
    v12 = *(*(v1 + 56) + 8 * v11);
    v13 = *(v12 + 16);
    v44 = v12;
    if (v13)
    {
      v14 = 16 * v11;
      v15 = *(v1 + 48);
      v16 = *(v15 + v14);
      v17 = *(v15 + v14 + 8);
      v17;
      v12;
      v18 = static Array._allocateBufferUninitialized(minimumCapacity:)(v13, &type metadata for String);
      v19 = v18;
      v18[2] = v13;
      v18[4] = v16;
      v18[5] = v17;
      if (v13 != 1)
      {
        v20 = v18 + 6;
        v21 = v13 - 2;
        while (1)
        {
          *v20 = v16;
          v20[1] = v17;
          if (v21-- == 0)
          {
            break;
          }

          v20 += 2;
          v17;
        }

        v17;
      }
    }

    else
    {
      v12;
      v19 = _swiftEmptyArrayStorage;
    }

    v23 = v19[2];
    v24 = *(v45 + 16);
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v45);
    v27 = v45;
    if (!isUniquelyReferenced_nonNull_native || *(v45 + 24) >> 1 < v25)
    {
      if (v24 > v25)
      {
        v25 = v24;
      }

      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25, 1, v45);
    }

    if (v19[2])
    {
      v28 = v27[2];
      if ((v27[3] >> 1) - v28 < v23)
      {
        BUG();
      }

      v5 = v27;
      swift_arrayInitWithCopy(&v27[2 * v28 + 4], v19 + 4, v23, &type metadata for String);
      if (v23)
      {
        v29 = __OFADD__(v5[2], v23);
        v30 = v5[2] + v23;
        if (v29)
        {
          BUG();
        }

        v5[2] = v30;
      }
    }

    else
    {
      v5 = v27;
      if (v23)
      {
        BUG();
      }
    }

    v19;
    v31 = *(v44 + 16);
    v7 = v41;
    v32 = *(v41 + 16);
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      BUG();
    }

    v34 = swift_isUniquelyReferenced_nonNull_native(v41);
    if (!v34 || *(v41 + 24) >> 1 < v33)
    {
      if (v32 > v33)
      {
        v33 = v32;
      }

      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v33, 1, v41);
    }

    v1 = a1;
    if (*(v44 + 16))
    {
      v35 = v7[2];
      if ((v7[3] >> 1) - v35 < v31)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v7[2 * v35 + 4], v44 + 32, v31, &type metadata for String);
      if (v31)
      {
        v29 = __OFADD__(v7[2], v31);
        v36 = v7[2] + v31;
        if (v29)
        {
          BUG();
        }

        v7[2] = v36;
      }
    }

    else if (v31)
    {
      BUG();
    }

    v4 = (v42 - 1) & v42;
    v44;
    v6 = v43;
  }

  v37 = v6 + 7;
  while (v37 < v46)
  {
    v4 = *(v1 + 8 * v37++ + 64);
    if (v4)
    {
      v6 = v37 - 1;
      goto LABEL_5;
    }
  }

LABEL_56:

  v38 = specialized _copySequenceToContiguousArray<A>(_:)(v7, v5);
  v5;
  v7;
  v39 = specialized _arrayForceCast<A, B>(_:)(v38);

  return v39;
}

uint64_t specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = unpackLabeledTexts(_:)(a1);
  specialized MutableCollection<>.shuffle<A>(using:)();
  v6 = v39[2];
  if (v6)
  {
    v27 = a3;
    v7 = v39[2];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = _swiftEmptyArrayStorage;
    v29 = v39;
    v9 = v39 + 5;
    v28 = v6;
    do
    {
      v30 = v8;
      v32 = *(v9 - 1);
      v40 = v8;
      v10 = v8[2];
      v35 = v8[3];
      v37 = v10 + 1;
      v34 = *v9;
      *v9;
      v8 = v30;
      if (v35 >> 1 <= v10)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v35 >= 2, v37, 1);
        v8 = v40;
      }

      v8[2] = v37;
      v11 = 2 * v10;
      v8[v11 + 4] = v32;
      v8[v11 + 5] = v34;
      v9 += 4;
      --v7;
    }

    while (v7);
    v31 = v8;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v12 = _swiftEmptyArrayStorage;
    v13 = v29 + 7;
    do
    {
      v38 = *(v13 - 1);
      v41 = v12;
      v14 = v12[2];
      v36 = v12[3];
      v15 = v12;
      v33 = *v13;
      *v13;
      v12 = v15;
      if (v36 >> 1 <= v14)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 >= 2, v14 + 1, 1);
        v12 = v41;
      }

      v12[2] = v14 + 1;
      v16 = 2 * v14;
      v12[v16 + 4] = v38;
      v12[v16 + 5] = v33;
      v13 += 4;
      --v28;
    }

    while (v28);
    v17 = v12;

    a3 = v27;
    v18 = v31;
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Any?])>);
  v20 = swift_allocObject(v19, 80, 7);
  v20[2] = 2;
  v20[3] = 4;
  v20[4] = a2;
  v20[5] = a3;
  a3;
  v21 = specialized _arrayForceCast<A, B>(_:)(v18);
  v18;
  v20[6] = v21;
  v20[7] = a4;
  v20[8] = a5;
  a5;
  v22 = specialized _arrayForceCast<A, B>(_:)(v17);
  v17;
  v20[9] = v22;
  return DataFrame.init(dictionaryLiteral:)(v20);
}

unint64_t MLTextClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLTextClassifier(0);
  v6 = v0 + v5[7];
  v27._countAndFlagsBits = MLTextClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = v1 + v5[8];
  v24._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v24._object = v10;
  v11 = v5[9];
  v12 = v8;
  outlined init with copy of MLTrainingSessionParameters(v1 + v11, &v22, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload(&v22, v27._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
  v27._object = MLClassifierMetrics.description.getter();
  v14 = v13;
  v25 = 0xD00000000000001BLL;
  v26 = "subset of the training labels." + 0x8000000000000000;
  v15._countAndFlagsBits = v27._countAndFlagsBits;
  v27._countAndFlagsBits = v12;
  v15._object = v12;
  String.append(_:)(v15);
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  v23._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v24._object;
  String.append(_:)(v24);
  v17 = v23._object;
  String.append(_:)(v23);
  v17;
  if (v8 > 1)
  {
    v20 = object;
  }

  else
  {
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v18._countAndFlagsBits = v27._object;
    v18._object = v14;
    String.append(_:)(v18);
    v19 = v23._object;
    String.append(_:)(v23);
    object;
    v20 = v14;
    v14 = v19;
  }

  v20;
  v14;
  v27._countAndFlagsBits;
  return v25;
}

NSAttributedString MLTextClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLTextClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

id sub_23A368()
{
  v1 = v0;
  result = MLTextClassifier.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLTextClassifier(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v12 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a2[1];
    *(a1 + 1) = v5;
    v6 = a2[2];
    *(a1 + 2) = v6;
    v7 = a3[7];
    v8 = &a1[v7];
    v9 = a2 + v7;
    v61 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    v4;
    v5;
    v6;
    if (swift_getEnumCaseMultiPayload(v9, v61) == 2)
    {
      v10 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v9, 4, v10))
      {
        v11 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(v8, v9, *(*(v11 - 8) + 64));
      }

      else
      {
        (*(*(v10 - 8) + 16))(v8, v9, v10);
        __swift_storeEnumTagSinglePayload(v8, 0, 4, v10);
      }

      v13 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      v8[v13 + 8] = v9[v13 + 8];
      *&v8[v13] = *&v9[v13];
      swift_storeEnumTagMultiPayload(v8, v61, 2);
    }

    else
    {
      memcpy(v8, v9, *(*(v61 - 8) + 64));
    }

    v14 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    v15 = v14[5];
    v16 = *&v9[v15];
    *&v8[v15] = v16;
    v17 = v14[6];
    v18 = &v8[v17];
    v62 = &v9[v17];
    v19 = *&v9[v17 + 24];
    v16;
    if (v19)
    {
      *(v18 + 3) = v19;
      (**(v19 - 8))(v18, v62, v19);
    }

    else
    {
      v20 = *v62;
      *(v18 + 1) = *(v62 + 1);
      *v18 = v20;
    }

    v21 = v14[7];
    *&v8[v21] = *&v9[v21];
    v22 = *&v9[v21 + 8];
    *&v8[v21 + 8] = v22;
    v23 = v14[8];
    *&v8[v23] = *&v9[v23];
    v24 = *&v9[v23 + 8];
    *&v8[v23 + 8] = v24;
    v25 = v14[9];
    v8[v25 + 8] = v9[v25 + 8];
    *&v8[v25] = *&v9[v25];
    v26 = a3[8];
    v27 = &a1[v26];
    v28 = a2 + v26;
    v29 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v22;
    v24;
    v63 = v29;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v28, v29);
    if (EnumCaseMultiPayload == 2)
    {
      v35 = *v28;
      swift_errorRetain(*v28);
      *v27 = v35;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v27 = *v28;
      v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v31 = *(v55 + 20);
      v56 = &v27[v31];
      v32 = type metadata accessor for DataFrame(0);
      v33 = &v28[v31];
      v34 = *(*(v32 - 8) + 16);
      v34(v56, v33, v32);
      v34(&v27[*(v55 + 24)], &v28[*(v55 + 24)], v32);
    }

    else
    {
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v37 = swift_getEnumCaseMultiPayload(v28, v36);
      v38 = v37 == 1;
      v39 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v37 == 1)
      {
        v39 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v40 = __swift_instantiateConcreteTypeFromMangledName(v39);
      (*(*(v40 - 8) + 16))(v27, v28, v40);
      swift_storeEnumTagMultiPayload(v27, v36, v38);
    }

    swift_storeEnumTagMultiPayload(v27, v63, EnumCaseMultiPayload);
    v41 = a3[9];
    v12 = a1;
    v42 = &a1[v41];
    v43 = a2 + v41;
    v44 = swift_getEnumCaseMultiPayload(a2 + v41, v63);
    if (v44 == 2)
    {
      v48 = *v43;
      swift_errorRetain(*v43);
      *v42 = v48;
      swift_storeEnumTagMultiPayload(v42, v63, 2);
    }

    else if (v44 == 1)
    {
      *v42 = *v43;
      v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v45 = *(v59 + 20);
      v46 = type metadata accessor for DataFrame(0);
      v47 = *(*(v46 - 8) + 16);
      v47(&v42[v45], &v43[v45], v46);
      v47(&v42[*(v59 + 24)], &v43[*(v59 + 24)], v46);
      v12 = a1;
      swift_storeEnumTagMultiPayload(v42, v63, 1);
    }

    else
    {
      v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v50 = swift_getEnumCaseMultiPayload(v43, v49);
      v51 = v50 == 1;
      v52 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v50 == 1)
      {
        v52 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v53 = __swift_instantiateConcreteTypeFromMangledName(v52);
      (*(*(v53 - 8) + 16))(v42, v43, v53);
      swift_storeEnumTagMultiPayload(v42, v49, v51);
      swift_storeEnumTagMultiPayload(v42, v63, 0);
      return a1;
    }
  }

  return v12;
}

uint64_t destroy for MLTextClassifier(uint64_t a1, uint64_t a2)
{
  v2 = a2;

  *(a1 + 8);
  v4 = a1 + *(a2 + 28);
  v5 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  if (swift_getEnumCaseMultiPayload(v4, v5) == 2)
  {
    v6 = type metadata accessor for URL(0);
    if (!__swift_getEnumTagSinglePayload(v4, 4, v6))
    {
      (*(*(v6 - 8) + 8))(v4, v6);
    }
  }

  v7 = type metadata accessor for MLTextClassifier.ModelParameters(0);

  v8 = v7[6];
  if (*(v4 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v4 + v8));
  }

  *(v4 + v7[7] + 8);
  *(v4 + v7[8] + 8);
  v9 = (a1 + *(a2 + 32));
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v9;
      break;
    case 1:
      v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v14 = &v9[*(v30 + 20)];
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v2 = a2;
      v17(&v9[*(v30 + 24)], v18);
      break;
    case 0:
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v9, v12) == 1)
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v13 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v19 = __swift_instantiateConcreteTypeFromMangledName(v13);
      (*(*(v19 - 8) + 8))(v9, v19);
      break;
  }

  v20 = (*(v2 + 36) + a1);
  result = swift_getEnumCaseMultiPayload(v20, v10);
  switch(result)
  {
    case 2:
      return *v20;
    case 1:
      v24 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v25 = v20 + *(v24 + 20);
      v26 = type metadata accessor for DataFrame(0);
      v27 = *(*(v26 - 8) + 8);
      v27(v25, v26);
      return (v27)(v20 + *(v24 + 24), v26);
    case 0:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v20, v22) == 1)
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v28 = __swift_instantiateConcreteTypeFromMangledName(v23);
      return (*(*(v28 - 8) + 8))(v20, v28);
  }

  return result;
}

void *initializeWithCopy for MLTextClassifier(void *a1, uint64_t a2, int *a3)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  a1[1] = v4;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = a3[7];
  v7 = a1 + v6;
  v8 = (a2 + v6);
  v66 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v3;
  v4;
  v5;
  if (swift_getEnumCaseMultiPayload(v8, v66) == 2)
  {
    v9 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v8, 4, v9))
    {
      v10 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(v7, v8, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(v7, v8, v9);
      __swift_storeEnumTagSinglePayload(v7, 0, 4, v9);
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    v7[v11 + 8] = v8[v11 + 8];
    *&v7[v11] = *&v8[v11];
    swift_storeEnumTagMultiPayload(v7, v66, 2);
  }

  else
  {
    memcpy(v7, v8, *(*(v66 - 8) + 64));
  }

  v12 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v13 = v12[5];
  v14 = *&v8[v13];
  *&v7[v13] = v14;
  v15 = v12[6];
  v16 = &v7[v15];
  v67 = &v8[v15];
  v17 = *&v8[v15 + 24];
  v14;
  if (v17)
  {
    *(v16 + 3) = v17;
    (**(v17 - 8))(v16, v67, v17);
  }

  else
  {
    v18 = *v67;
    *(v16 + 1) = *(v67 + 1);
    *v16 = v18;
  }

  v19 = v12[7];
  *&v7[v19] = *&v8[v19];
  v20 = *&v8[v19 + 8];
  *&v7[v19 + 8] = v20;
  v21 = v12[8];
  *&v7[v21] = *&v8[v21];
  v22 = *&v8[v21 + 8];
  *&v7[v21 + 8] = v22;
  v23 = v12[9];
  v7[v23 + 8] = v8[v23 + 8];
  *&v7[v23] = *&v8[v23];
  v24 = a3[8];
  v25 = (a1 + v24);
  v26 = (a2 + v24);
  v27 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v20;
  v22;
  v68 = v27;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v27);
  if (EnumCaseMultiPayload == 2)
  {
    v34 = *v26;
    swift_errorRetain(v34);
    *v25 = v34;
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v25 = *v26;
      v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v29 = *(v57 + 20);
      v58 = v25 + v29;
      v30 = type metadata accessor for DataFrame(0);
      v59 = v25;
      v31 = *(*(v30 - 8) + 16);
      v32 = v26 + v29;
      v33 = a1;
      v31(v58, v32, v30);
      v31(v59 + *(v57 + 24), v26 + *(v57 + 24), v30);
      v25 = v59;
      goto LABEL_18;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v36 = swift_getEnumCaseMultiPayload(v26, v35);
    v37 = v36 == 1;
    v38 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v36 == 1)
    {
      v38 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledName(v38);
    (*(*(v39 - 8) + 16))(v25, v26, v39);
    swift_storeEnumTagMultiPayload(v25, v35, v37);
  }

  v33 = a1;
LABEL_18:
  swift_storeEnumTagMultiPayload(v25, v68, EnumCaseMultiPayload);
  v40 = a3[9];
  v41 = v33 + v40;
  v42 = (v40 + a2);
  v43 = swift_getEnumCaseMultiPayload(v40 + a2, v68);
  if (v43 == 2)
  {
    v50 = *v42;
    swift_errorRetain(*v42);
    *v41 = v50;
  }

  else if (v43 == 1)
  {
    *v41 = *v42;
    v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v44 = v42;
    v45 = *(v64 + 20);
    v61 = &v41[v45];
    v46 = type metadata accessor for DataFrame(0);
    v47 = &v44[v45];
    v48 = *(*(v46 - 8) + 16);
    v48(v61, v47, v46);
    v49 = v46;
    v33 = a1;
    v48(&v41[*(v64 + 24)], &v44[*(v64 + 24)], v49);
  }

  else
  {
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v52 = swift_getEnumCaseMultiPayload(v42, v51);
    v65 = v42;
    v53 = v52 == 1;
    v54 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v52 == 1)
    {
      v54 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
    (*(*(v55 - 8) + 16))(v41, v65, v55);
    swift_storeEnumTagMultiPayload(v41, v51, v53);
  }

  swift_storeEnumTagMultiPayload(v41, v68, v43);
  return v33;
}

uint64_t assignWithCopy for MLTextClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v7;
  v8;
  v9 = *(a2 + 16);
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;
  v9;

  v70 = a3;
  v11 = *(a3 + 28);
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v69 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    v14 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(v13, v14) == 2)
    {
      v15 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v13, 4, v15))
      {
        v16 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(v12, v13, *(*(v16 - 8) + 64));
      }

      else
      {
        (*(*(v15 - 8) + 16))(v12, v13, v15);
        __swift_storeEnumTagSinglePayload(v12, 0, 4, v15);
      }

      v17 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      v12[v17 + 8] = v13[v17 + 8];
      *&v12[v17] = *&v13[v17];
      swift_storeEnumTagMultiPayload(v12, v14, 2);
    }

    else
    {
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }
  }

  v18 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v19 = v18[5];
  v20 = *&v12[v19];
  v21 = *&v13[v19];
  *&v12[v19] = v21;
  v21;

  v22 = v18[6];
  v23 = &v12[v22];
  v24 = &v13[v22];
  v25 = *&v13[v22 + 24];
  if (*&v12[v22 + 24])
  {
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_0(&v12[v22], &v13[v22]);
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v12[v22]);
  }

  else if (v25)
  {
    *(v23 + 3) = v25;
    (**(v25 - 8))(v23, v24);
    goto LABEL_15;
  }

  v26 = *v24;
  *(v23 + 1) = *(v24 + 1);
  *v23 = v26;
LABEL_15:
  v27 = v18[7];
  *&v12[v27] = *&v13[v27];
  v28 = *&v13[v27 + 8];
  v29 = *&v12[v27 + 8];
  *&v12[v27 + 8] = v28;
  v28;
  v29;
  v30 = v18[8];
  *&v12[v30] = *&v13[v30];
  v31 = *&v13[v30 + 8];
  v32 = *&v12[v30 + 8];
  *&v12[v30 + 8] = v31;
  v31;
  v32;
  v33 = v18[9];
  v12[v33 + 8] = v13[v33 + 8];
  *&v12[v33] = *&v13[v33];
  result = v69;
  v35 = a2;
  if (v69 != a2)
  {
    v36 = *(v70 + 32);
    v37 = (v69 + v36);
    v38 = (a2 + v36);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics.Contents);
    v68 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v68);
    if (EnumCaseMultiPayload == 2)
    {
      v44 = *v38;
      swift_errorRetain(*v38);
      *v37 = v44;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v37 = *v38;
      v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v40 = *(v66 + 20);
      v67 = &v37[v40];
      v41 = type metadata accessor for DataFrame(0);
      v42 = *(*(v41 - 8) + 16);
      v43 = &v38[v40];
      v35 = a2;
      v42(v67, v43, v41);
      v42(&v37[*(v66 + 24)], &v38[*(v66 + 24)], v41);
      EnumCaseMultiPayload = 1;
    }

    else
    {
      v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v46 = swift_getEnumCaseMultiPayload(v38, v45);
      v47 = v46 == 1;
      v48 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v46 == 1)
      {
        v48 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v49 = __swift_instantiateConcreteTypeFromMangledName(v48);
      (*(*(v49 - 8) + 16))(v37, v38, v49);
      swift_storeEnumTagMultiPayload(v37, v45, v47);
      v35 = a2;
    }

    swift_storeEnumTagMultiPayload(v37, v68, EnumCaseMultiPayload);
    v50 = *(v70 + 36);
    v51 = (v69 + v50);
    v52 = (v50 + v35);
    outlined destroy of MLActivityClassifier.ModelParameters(v69 + v50, type metadata accessor for MLClassifierMetrics.Contents);
    v53 = swift_getEnumCaseMultiPayload(v52, v68);
    if (v53 == 2)
    {
      v59 = *v52;
      swift_errorRetain(*v52);
      *v51 = v59;
    }

    else if (v53 == 1)
    {
      *v51 = *v52;
      v73 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v54 = v52;
      v55 = *(v73 + 20);
      v71 = &v51[v55];
      v56 = type metadata accessor for DataFrame(0);
      v57 = &v54[v55];
      v58 = *(*(v56 - 8) + 16);
      v58(v71, v57, v56);
      v58(&v51[*(v73 + 24)], &v54[*(v73 + 24)], v56);
    }

    else
    {
      v60 = v52;
      v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v62 = swift_getEnumCaseMultiPayload(v60, v61);
      v63 = v62 == 1;
      v64 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v62 == 1)
      {
        v64 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v65 = __swift_instantiateConcreteTypeFromMangledName(v64);
      (*(*(v65 - 8) + 16))(v51, v60, v65);
      swift_storeEnumTagMultiPayload(v51, v61, v63);
    }

    swift_storeEnumTagMultiPayload(v51, v68, v53);
    return v69;
  }

  return result;
}

void *initializeWithTake for MLTextClassifier(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v5 = *(a3 + 28);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  v56 = v3;
  if (swift_getEnumCaseMultiPayload(v7, v8) == 2)
  {
    v9 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v7, 4, v9))
    {
      v10 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
      memcpy(v6, v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 32))(v6, v7, v9);
      __swift_storeEnumTagSinglePayload(v6, 0, 4, v9);
    }

    v11 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
    v6[v11 + 8] = v7[v11 + 8];
    *&v6[v11] = *&v7[v11];
    swift_storeEnumTagMultiPayload(v6, v8, 2);
    v3 = v56;
  }

  else
  {
    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

  v12 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  *&v6[v12[5]] = *&v7[v12[5]];
  v13 = v12[6];
  v14 = *&v7[v13];
  *&v6[v13 + 16] = *&v7[v13 + 16];
  *&v6[v13] = v14;
  *&v6[v12[7]] = *&v7[v12[7]];
  *&v6[v12[8]] = *&v7[v12[8]];
  v15 = v12[9];
  *&v6[v15] = *&v7[v15];
  v6[v15 + 8] = v7[v15 + 8];
  v16 = *(v3 + 32);
  v17 = a1;
  v18 = a1 + v16;
  v19 = a2 + v16;
  v55 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v55);
  if (EnumCaseMultiPayload == 1)
  {
    *v18 = *v19;
    v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v30 = *(v59 + 20);
    v53 = &v18[v30];
    v31 = type metadata accessor for DataFrame(0);
    v32 = &v19[v30];
    v33 = *(*(v31 - 8) + 32);
    v33(v53, v32, v31);
    v34 = v31;
    v3 = v56;
    v33(&v18[*(v59 + 24)], &v19[*(v59 + 24)], v34);
    v17 = a1;
    v29 = 1;
    v26 = v18;
    v27 = v55;
    v28 = v55;
LABEL_13:
    swift_storeEnumTagMultiPayload(v26, v28, v29);
    goto LABEL_15;
  }

  if (!EnumCaseMultiPayload)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v21 = swift_getEnumCaseMultiPayload(v19, v58);
    v22 = v21 == 1;
    v23 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v21 == 1)
    {
      v23 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(v23);
    (*(*(v24 - 8) + 32))(v18, v19, v24);
    v25 = v22;
    v3 = v56;
    swift_storeEnumTagMultiPayload(v18, v58, v25);
    v26 = v18;
    v27 = v55;
    v28 = v55;
    v29 = 0;
    goto LABEL_13;
  }

  v35 = v18;
  v27 = v55;
  memcpy(v35, v19, *(*(v55 - 8) + 64));
LABEL_15:
  v36 = *(v3 + 36);
  v37 = v17 + v36;
  v38 = a2 + v36;
  v39 = swift_getEnumCaseMultiPayload(v38, v27);
  if (v39 == 1)
  {
    *v37 = *v38;
    v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v48 = *(v57 + 20);
    v60 = &v37[v48];
    v49 = type metadata accessor for DataFrame(0);
    v50 = *(*(v49 - 8) + 32);
    v51 = &v38[v48];
    v17 = a1;
    v50(v60, v51, v49);
    v50(&v37[*(v57 + 24)], &v38[*(v57 + 24)], v49);
    v47 = 1;
    v45 = v37;
    v46 = v55;
  }

  else
  {
    if (v39)
    {
      memcpy(v37, v38, *(*(v27 - 8) + 64));
      return v17;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v41 = swift_getEnumCaseMultiPayload(v38, v40);
    v42 = v41 == 1;
    v43 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v41 == 1)
    {
      v43 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v44 = __swift_instantiateConcreteTypeFromMangledName(v43);
    (*(*(v44 - 8) + 32))(v37, v38, v44);
    swift_storeEnumTagMultiPayload(v37, v40, v42);
    v45 = v37;
    v46 = v55;
    v47 = 0;
  }

  swift_storeEnumTagMultiPayload(v45, v46, v47);
  return v17;
}

void *assignWithTake for MLTextClassifier(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1[2];
  a1[2] = a2[2];

  v68 = a3;
  v8 = *(a3 + 28);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v65 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
    v11 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
    if (swift_getEnumCaseMultiPayload(v10, v11) == 2)
    {
      v12 = type metadata accessor for URL(0);
      if (__swift_getEnumTagSinglePayload(v10, 4, v12))
      {
        v13 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
        memcpy(v9, v10, *(*(v13 - 8) + 64));
      }

      else
      {
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        __swift_storeEnumTagSinglePayload(v9, 0, 4, v12);
      }

      v14 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLTextClassifier.FeatureExtractorType, revision: Int?)) + 48);
      v9[v14 + 8] = v10[v14 + 8];
      *&v9[v14] = *&v10[v14];
      swift_storeEnumTagMultiPayload(v9, v11, 2);
    }

    else
    {
      memcpy(v9, v10, *(*(v11 - 8) + 64));
    }
  }

  v15 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v16 = v15[5];
  v17 = *&v9[v16];
  *&v9[v16] = *&v10[v16];

  v18 = v15[6];
  v19 = &v9[v18];
  v20 = &v10[v18];
  if (*&v9[v18 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v9[v18]);
  }

  v21 = *v20;
  *(v19 + 1) = *(v20 + 1);
  *v19 = v21;
  v22 = v15[7];
  *&v9[v22] = *&v10[v22];
  v23 = *&v9[v22 + 8];
  *&v9[v22 + 8] = *&v10[v22 + 8];
  v23;
  v24 = v15[8];
  *&v9[v24] = *&v10[v24];
  v25 = *&v9[v24 + 8];
  *&v9[v24 + 8] = *&v10[v24 + 8];
  v25;
  v26 = v15[9];
  v9[v26 + 8] = v10[v26 + 8];
  *&v9[v26] = *&v10[v26];
  v27 = v65;
  v28 = a2;
  if (v65 == a2)
  {
    return v27;
  }

  v29 = *(v68 + 32);
  v30 = v65 + v29;
  v31 = a2 + v29;
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v32);
  v72 = v32;
  if (EnumCaseMultiPayload == 1)
  {
    *v30 = *v31;
    v67 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v42 = *(v67 + 20);
    v64 = &v30[v42];
    v43 = type metadata accessor for DataFrame(0);
    v44 = *(*(v43 - 8) + 32);
    v45 = &v31[v42];
    v27 = v65;
    v44(v64, v45, v43);
    v46 = v43;
    v32 = v72;
    v44(&v30[*(v67 + 24)], &v31[*(v67 + 24)], v46);
    v28 = a2;
    v41 = 1;
    v39 = v30;
    v40 = v72;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v30, v31, *(*(v32 - 8) + 64));
      goto LABEL_19;
    }

    v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v34 = swift_getEnumCaseMultiPayload(v31, v66);
    v35 = v34 == 1;
    v36 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v34 == 1)
    {
      v36 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledName(v36);
    (*(*(v37 - 8) + 32))(v30, v31, v37);
    v38 = v35;
    v32 = v72;
    swift_storeEnumTagMultiPayload(v30, v66, v38);
    v39 = v30;
    v40 = v72;
    v41 = 0;
  }

  swift_storeEnumTagMultiPayload(v39, v40, v41);
LABEL_19:
  v47 = *(v68 + 36);
  v48 = v27 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(v27 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v32);
  if (v50 == 1)
  {
    *v48 = *v49;
    v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v69 + 20);
    v71 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = *(*(v60 - 8) + 32);
    v62 = &v49[v59];
    v27 = v65;
    v61(v71, v62, v60);
    v61(&v48[*(v69 + 24)], &v49[*(v69 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v72;
  }

  else
  {
    if (v50)
    {
      memcpy(v48, v49, *(*(v32 - 8) + 64));
      return v27;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v52 = swift_getEnumCaseMultiPayload(v49, v51);
    v53 = v52 == 1;
    v54 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v52 == 1)
    {
      v54 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
    (*(*(v55 - 8) + 32))(v48, v49, v55);
    swift_storeEnumTagMultiPayload(v48, v51, v53);
    v56 = v48;
    v57 = v72;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return v27;
}

uint64_t sub_23BAE4(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*a1 & 0xFFFFFFFF00000001) == 0)
    {
      return (*a1 >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 28);
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v6 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_23BB72(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLTextClassifier.ModelParameters(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 28);
    }

    else
    {
      v6 = type metadata accessor for MLClassifierMetrics(0);
      v7 = *(a4 + 32);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata completion function for MLTextClassifier(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.UnknownObject + 64;
  v4[1] = &value witness table for Builtin.BridgeObject + 64;
  v4[2] = &value witness table for Builtin.UnknownObject + 64;
  result = type metadata accessor for MLTextClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v4[3] = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

void specialized MutableCollection<>.shuffle<A>(using:)(uint64_t *a1)
{
  v17 = v1;
  v2 = *v1;
  v3 = *(*v1 + 2);
  if (v3 >= 2)
  {
    v4 = *a1;
    v14 = v3 - 2;
    v5 = 0;
    do
    {
      v6 = v3 * MersenneTwisterGenerator.next()();
      v7 = *(&v6 + 1);
      if (v3 > v6 && -v3 % v3 > v6)
      {
        do
        {
          v8 = v3 * MersenneTwisterGenerator.next()();
        }

        while (-v3 % v3 > v8);
        v7 = *(&v8 + 1);
      }

      v9 = __OFADD__(v5, v7);
      v10 = v5 + v7;
      if (v9)
      {
        BUG();
      }

      if (v5 != v10)
      {
        v11 = *(v2 + 2);
        if (v5 >= v11)
        {
          BUG();
        }

        if (v10 >= v11)
        {
          BUG();
        }

        v16 = *&v2[8 * v5 + 32];
        v15 = *&v2[8 * v10 + 32];
        if (!swift_isUniquelyReferenced_nonNull_native(v2))
        {
          v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
        }

        v12 = *(v2 + 2);
        if (v5 >= v12)
        {
          BUG();
        }

        *&v2[8 * v5 + 32] = v15;
        if (v10 >= v12)
        {
          BUG();
        }

        *&v2[8 * v10 + 32] = v16;
        *v17 = v2;
      }

      --v3;
    }

    while (v5++ != v14);
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  return v2;
}

uint64_t lazy protocol witness table accessor for type CFErrorRef and conformance CFErrorRef()
{
  result = lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef;
  if (!lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef)
  {
    v1 = type metadata accessor for CFErrorRef(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for CFErrorRef, v1);
    lazy protocol witness table cache variable for type CFErrorRef and conformance CFErrorRef = result;
  }

  return result;
}

uint64_t static MLSoundClassifier.createTablePrinter(hasValidation:)(int a1)
{
  v28 = a1;
  v24 = v1;
  v2 = type metadata accessor for MetricsKey(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v25 = &v22;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v27 = &v22;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MetricsKey)>);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, MetricsKey));
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v11 + 32) & ~*(v10 + 80);
  v13 = swift_allocObject(v8, v12 + *(v10 + 72), v11 | 7);
  *(v13 + 16) = 1;
  *(v13 + 24) = 2;
  v14 = v13 + v12 + *(v9 + 48);
  *(v13 + v12) = 0xD000000000000011;
  *(v13 + v12 + 8) = "eature extractor should be " + 0x8000000000000000;
  static MetricsKey.trainingAccuracy.getter();
  v15 = Dictionary.init(dictionaryLiteral:)(v13, &type metadata for String, v2, &protocol witness table for String);
  if (v28)
  {
    v16 = v27;
    static MetricsKey.validationAccuracy.getter();
    v17 = v25;
    (*(v26 + 32))(v25, v16, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v15);
    v23 = v15;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, 0xD000000000000013, ("Validation Data\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    v15 = v23;
  }

  v19 = type metadata accessor for TrainingTablePrinter(0);
  v20 = v24;
  *(v24 + *(v19 + 24)) = v15;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v20 + *(v19 + 20)) = OS_os_log.init(subsystem:category:)(0xD000000000000022, "n" + 0x8000000000000000, 0x72705F656C626174, 0xED00007265746E69);
  return Date.init()(0xD000000000000022);
}

uint64_t static MLSoundClassifier.validateFeatureExtractionParameters(featureExtractionParameters:parameters:)(uint64_t a1, uint64_t a2)
{
  v19 = *a1;
  v21 = *(a1 + 8);
  v2 = *(a1 + 16);
  v20 = *(a1 + 24);
  v22 = *(a1 + 32);
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (v19 == *(a2 + *(v3 + 24)))
  {
    if (!_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xCuLL, 0, 0, 0xFuLL, 0, 0))
    {
      goto LABEL_6;
    }

    if (v2)
    {
      v21 = 0.975;
    }

    if (v21 == MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter())
    {
LABEL_6:
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v3 + 28) + a2, v14, &demangling cache variable for type metadata for Any?);
      if (v15)
      {
        if (swift_dynamicCast(&v16, v14, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
        {
          v4 = v16;
          v5 = v17;
          v6 = v18;
          goto LABEL_12;
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for Any?);
      }

      v5 = 1;
      v4 = 1;
      v6 = 0;
LABEL_12:
      if (v22)
      {
        if (((v20 == v4) & v5) != 0)
        {
          return v6;
        }
      }

      else if (!((v20 != v4) | v5 & 1))
      {
        return v6;
      }

      v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
      *v12 = 0xD000000000000051;
      *(v12 + 8) = "del parameters: overlapFactor" + 0x8000000000000000;
      *(v12 + 16) = 0;
      *(v12 + 32) = 0;
      *(v12 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v11);
      return v6;
    }

    v7 = "feature extractor" + 0x8000000000000000;
    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    v10 = 0xD00000000000005FLL;
  }

  else
  {
    v7 = " feature values." + 0x8000000000000000;
    v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
    v10 = 0xD00000000000004DLL;
  }

  *v9 = v10;
  *(v9 + 8) = v7;
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 0;
  return swift_willThrow(&type metadata for MLCreateError, v8);
}

void static MLSoundClassifier.convertFeatures(_:)(uint64_t a1)
{
  v87 = v2;
  v85 = v1;
  v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any?]>);
  v81 = *(v82 - 8);
  v3 = *(v81 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v83 = &v61;
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double?]>);
  v78 = *(v79 - 8);
  v6 = *(v78 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v80 = &v61;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float?]>);
  v75 = *(v76 - 8);
  v9 = *(v75 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v77 = &v61;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v72 = *(v73 - 8);
  v12 = *(v72 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v74 = &v61;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v69 = *(v70 - 8);
  v15 = *(v69 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v71 = &v61;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v66 = *(v67 - 8);
  v18 = *(v66 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v68 = &v61;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v63 = *(v64 - 8);
  v21 = *(v63 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v65 = &v61;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v24 = *(v62 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v61 = &v61;
  v88 = a1;
  v28 = AnyColumn.wrappedElementType.getter();
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v30 = v28;
  if (swift_dynamicCastMetatype(v28, v29))
  {
    AnyColumn.assumingType<A>(_:)(v29, v29);
    return;
  }

  v31 = v61;
  v84 = v24;
  v86 = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  if (swift_dynamicCastMetatype(v30, v32))
  {
    v33 = AnyColumn.assumingType<A>(_:)(v32, v32);
    v34 = v62;
    Column.mapNonNil<A>(_:)(closure #1 in static MLSoundClassifier.convertFeatures(_:), 0, v62, v86);
    v35 = v31;
    v36 = v34;
    v37 = v84;
LABEL_19:
    (*(v37 + 8))(v35, v36, v33);
    return;
  }

  v38 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  if (swift_dynamicCastMetatype(v30, v38))
  {
    v39 = v65;
    v33 = AnyColumn.assumingType<A>(_:)(v38, v38);
    v40 = v64;
    Column.mapNonNil<A>(_:)(closure #2 in static MLSoundClassifier.convertFeatures(_:), 0, v64, v86);
    v35 = v39;
    v36 = v40;
    v37 = v63;
    goto LABEL_19;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v30, v41))
  {
    v42 = v68;
    v33 = AnyColumn.assumingType<A>(_:)(v41, v41);
    v43 = v67;
    Column.mapNonNil<A>(_:)(closure #3 in static MLSoundClassifier.convertFeatures(_:), 0, v67, v86);
    v35 = v42;
    v36 = v43;
    v37 = v66;
    goto LABEL_19;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v30, v44))
  {
    v45 = v71;
    v33 = AnyColumn.assumingType<A>(_:)(v44, v44);
    v46 = v70;
    Column.mapNonNil<A>(_:)(closure #4 in static MLSoundClassifier.convertFeatures(_:), 0, v70, v86);
    v35 = v45;
    v36 = v46;
    v37 = v69;
    goto LABEL_19;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  if (swift_dynamicCastMetatype(v30, v47))
  {
    v48 = v74;
    v33 = AnyColumn.assumingType<A>(_:)(v47, v47);
    v49 = v73;
    Column.mapNonNil<A>(_:)(partial apply for closure #5 in static MLSoundClassifier.convertFeatures(_:), 0, v73, v86);
    v35 = v48;
    v36 = v49;
    v37 = v72;
    goto LABEL_19;
  }

  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float?]);
  if (swift_dynamicCastMetatype(v30, v50))
  {
    v51 = v77;
    v33 = AnyColumn.assumingType<A>(_:)(v50, v50);
    v52 = v76;
    Column.mapNonNil<A>(_:)(closure #6 in static MLSoundClassifier.convertFeatures(_:), 0, v76, v86);
    v35 = v51;
    v36 = v52;
    v37 = v75;
    goto LABEL_19;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double?]);
  if (swift_dynamicCastMetatype(v30, v53))
  {
    v54 = v80;
    v33 = AnyColumn.assumingType<A>(_:)(v53, v53);
    v55 = v79;
    Column.mapNonNil<A>(_:)(closure #7 in static MLSoundClassifier.convertFeatures(_:), 0, v79, v86);
    v35 = v54;
    v36 = v55;
    v37 = v78;
    goto LABEL_19;
  }

  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any?]);
  if (swift_dynamicCastMetatype(v30, v56))
  {
    v57 = v83;
    v33 = AnyColumn.assumingType<A>(_:)(v56, v56);
    v58 = v82;
    Column.mapNonNil<A>(_:)(partial apply for closure #8 in static MLSoundClassifier.convertFeatures(_:), 0, v82, v86);
    v35 = v57;
    v36 = v58;
    v37 = v81;
    goto LABEL_19;
  }

  v59 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v59, 0, 0);
  *v60 = 0xD000000000000040;
  *(v60 + 8) = "Classifier.swift" + 0x8000000000000000;
  *(v60 + 16) = 0;
  *(v60 + 32) = 0;
  *(v60 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v59);
}

uint64_t static MLSoundClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLSoundClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t type metadata accessor for MLSoundClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier;
  if (!type metadata singleton initialization cache for MLSoundClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier);
  }

  return result;
}

void MLSoundClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSoundClassifier(0) + 24);

  *(v1 + v2) = a1;
}

void (*MLSoundClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLSoundClassifier(0) + 24);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLSoundClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLSoundClassifier.ModelParameters);
}

uint64_t MLSoundClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSoundClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSoundClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSoundClassifier.init(_:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = swift_task_alloc((*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.init(_:parameters:), 0, 0);
}

uint64_t MLSoundClassifier.init(_:parameters:)()
{
  v1 = *(v0 + 56);
  v18 = *(v0 + 48);
  v20 = *(v0 + 40);
  v2 = *(v0 + 16);
  v15 = *(v0 + 24);
  v3 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v16 = type metadata accessor for MLSoundClassifier(0);
  *(v0 + 64) = v16;
  v17 = v16[8];
  *(v0 + 96) = v17;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v4 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = *(v4 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v6 = *(v4 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v18 + 8))(v1, v20);
  *(v2 + v17) = 0;
  v19 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v17, v19, 1);
  v7 = v16[9];
  *(v0 + 100) = v7;
  v8 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v9 = swift_allocError(&type metadata for MLCreateError, v8, 0, 0);
  *v10 = 0xD0000000000000C0;
  *(v10 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v10 + 16) = 0;
  *(v10 + 32) = 0;
  *(v10 + 48) = 0;
  *(v2 + v7) = v9;
  swift_storeEnumTagMultiPayload(v7 + v2, v19, 2);
  v11 = v16[5];
  *(v0 + 104) = v11;
  outlined init with copy of MLTrainingSessionParameters(v15, v11 + v2, type metadata accessor for MLSoundClassifier.Model);
  v12 = swift_task_alloc(288);
  *(v0 + 72) = v12;
  *v12 = v0;
  v12[1] = MLSoundClassifier.init(_:parameters:);
  v13 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v6 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 24), type metadata accessor for MLSoundClassifier.Model);
  *(v4 + *(v2 + 24)) = v1;
  outlined init with take of MLClassifierMetrics(v3, v4 + *(v2 + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
  v6;
  return (*(v0 + 8))();
}

{
  v7 = *(v0 + 56);
  v1 = *(v0 + 16);
  v8 = *(v0 + 24);
  v2 = v1 + *(v0 + 104);
  v3 = v1 + *(v0 + 100);
  v4 = v1 + *(v0 + 96);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 32), type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLSoundClassifier.Model);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &demangling cache variable for type metadata for TrainingTablePrinter?);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLSoundClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLClassifierMetrics);
  v7;
  v5 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.init(_:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLSoundClassifier.init(_:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLSoundClassifier.init(_:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v65 = v3;
  v64 = a2;
  v63 = a1;
  v4 = v2;
  v57 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8);
  v56 = *(v57 + 64);
  v5 = alloca(v56);
  v6 = alloca(v56);
  v62 = &v53;
  v7 = type metadata accessor for MLSoundClassifier(0);
  v8 = *(v7 - 8);
  v9 = v7;
  v58 = v7;
  v10 = *(v8 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v55 = &v53;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v59 = &v53;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v61 = *(v60 - 8);
  v15 = v61[8];
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = type metadata accessor for TrainingTablePrinter(0);
  v66 = v4;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  v19 = *(v9 + 32);
  v20 = v4 + v19;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v22 = *(v21 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v53);
  v23 = *(v21 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v53);
  (v61[1])(&v53, v60);
  v24 = v66;
  *(v66 + v19) = 0;
  v54 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v60 = v20;
  swift_storeEnumTagMultiPayload(v20, v54, 1);
  v25 = (v24 + *(v58 + 36));
  v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v27 = swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
  *v28 = 0xD0000000000000C0;
  *(v28 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v28 + 16) = 0;
  *(v28 + 32) = 0;
  *(v28 + 48) = 0;
  *v25 = v27;
  v29 = v24;
  v61 = v25;
  v30 = v25;
  v31 = v64;
  swift_storeEnumTagMultiPayload(v30, v54, 2);
  MLSoundClassifier.ModelParameters.validate()();
  if (v32)
  {
    goto LABEL_4;
  }

  MLSoundClassifier.ModelParameters.ValidationData.validate(modelParameters:)(v31);
  *&v33 = MLSoundClassifier.DataSource.annotatedFeatures()();
  if (v36)
  {
    v31 = v64;
LABEL_4:
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLSoundClassifier.DataSource);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for TrainingTablePrinter?);
    outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLClassifierMetrics);
  }

  v38 = v33;
  if (v33)
  {
    v31 = v64;
    v39 = MLSoundClassifier.ModelParameters.ValidationData.splitFeatures(trainingData:)(v33);
    if (v40)
    {
      v38;
      goto LABEL_4;
    }

    v65 = *(&v39 + 1);
    v58 = v39;
    v38;
    outlined init with copy of MLTrainingSessionParameters(v31, v62, type metadata accessor for MLSoundClassifier.ModelParameters);
    v45 = *(v57 + 80);
    v46 = ~*(v57 + 80) & (v45 + 32);
    v47 = swift_allocObject(&unk_393FC8, v46 + v56, v45 | 7);
    *(v47 + 16) = v58;
    *(v47 + 24) = v65;
    outlined init with take of MLClassifierMetrics(v62, v47 + v46, type metadata accessor for MLSoundClassifier.ModelParameters);
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSoundClassifier.init(trainingData:parameters:), v47);

    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLSoundClassifier.DataSource);
  }

  else
  {
    v41 = MLSoundClassifier.DataSource.labeledSounds()(v34, v35, *(&v33 + 1));
    v42 = specialized Sequence.flatMap<A>(_:)(v41);
    v41;
    v31 = v64;
    v43 = MLSoundClassifier.ModelParameters.ValidationData.splitFiles(trainingData:)(v42);
    v65 = *(&v43 + 1);
    v42;
    if (v44)
    {
      v29 = v66;
      goto LABEL_4;
    }

    outlined init with copy of MLTrainingSessionParameters(v31, v62, type metadata accessor for MLSoundClassifier.ModelParameters);
    v48 = *(v57 + 80);
    v49 = ~*(v57 + 80) & (v48 + 32);
    v50 = swift_allocObject(&unk_393FA0, v49 + v56, v48 | 7);
    *(v50 + 16) = v43;
    *(v50 + 24) = v65;
    outlined init with take of MLClassifierMetrics(v62, v50 + v49, type metadata accessor for MLSoundClassifier.ModelParameters);
    v51 = v55;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #2 in MLSoundClassifier.init(trainingData:parameters:), v50);

    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLSoundClassifier.DataSource);
    v59 = v51;
  }

  v52 = v66;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, &demangling cache variable for type metadata for TrainingTablePrinter?);
  outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLClassifierMetrics);
  return outlined init with take of MLClassifierMetrics(v59, v52, type metadata accessor for MLSoundClassifier);
}

{
  v13[0] = v3;
  v13[1] = v2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v13[0] = a1;
  swift_storeEnumTagMultiPayload(v13, v8, 2);
  outlined init with copy of MLTrainingSessionParameters(a2, v13, type metadata accessor for MLSoundClassifier.ModelParameters);
  MLSoundClassifier.init(trainingData:parameters:)(v13, v13);
  return outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLSoundClassifier.ModelParameters);
}

uint64_t closure #1 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLSoundClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLSoundClassifier.init(trainingData:parameters:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2;
  if (!v2)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  outlined init with copy of MLTrainingSessionParameters(v0[5], v0[6], type metadata accessor for MLSoundClassifier.ModelParameters);
  v1;
  v2;
  v4 = swift_task_alloc(320);
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in MLSoundClassifier.init(trainingData:parameters:);
  return ((&_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu + _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu))(v0[2], v0[3], v6, v0[6]);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLSoundClassifier.init(trainingData:parameters:), 0, 0);
  }

  *(v3 + 48);
  return (*(v3 + 8))();
}

{
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)();
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = (*(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[6] = swift_task_alloc(v5);
  v4[7] = swift_task_alloc(v5);
  v6 = (*(*(type metadata accessor for MLSoundClassifier.Model(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[8] = swift_task_alloc(v6);
  v4[9] = swift_task_alloc(v6);
  v7 = type metadata accessor for TrainingTablePrinter(0);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v9 = *(v8 + 64);
  v4[12] = v9;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[13] = swift_task_alloc(v10);
  v4[14] = swift_task_alloc(v10);
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[15] = swift_task_alloc(v11);
  v4[16] = swift_task_alloc(v11);
  v4[17] = swift_task_alloc(v11);
  v4[18] = swift_task_alloc(v11);
  v12 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[19] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for MLSoundClassifier.Classifier(0) - 8);
  v4[20] = v13;
  v14 = *(v13 + 64);
  v4[21] = v14;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[22] = swift_task_alloc(v15);
  v4[23] = swift_task_alloc(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v4[24] = v16;
  v17 = *(v16 - 8);
  v4[25] = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[26] = swift_task_alloc(v18);
  v4[27] = swift_task_alloc(v18);
  v4[28] = swift_task_alloc(v18);
  return swift_task_switch(_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY0_, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY0_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 224);
  v100 = *(v7 + 200);
  v88 = *(v7 + 192);
  v91 = *(v7 + 40);
  v84 = *(v7 + 16);
  __swift_storeEnumTagSinglePayload(v84, 1, 1, *(v7 + 80));
  v9 = type metadata accessor for MLSoundClassifier(0);
  *(v7 + 232) = v9;
  v96 = *(v9 + 32);
  *(v7 + 304) = v96;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v10 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v11 = *(v10 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v8);
  v12 = *(v10 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v8);
  (*(v100 + 8))(v8, v88);
  *(v84 + v96) = 0;
  v13 = type metadata accessor for MLClassifierMetrics.Contents(0);
  *(v7 + 240) = v13;
  swift_storeEnumTagMultiPayload(v84 + v96, v13, 1);
  v89 = v9;
  v14 = *(v9 + 36);
  *(v7 + 308) = v14;
  v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v16 = swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
  *v17 = 0xD0000000000000C0;
  *(v17 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v17 + 16) = 0;
  *(v17 + 32) = 0;
  *(v17 + 48) = 0;
  *(v84 + v14) = v16;
  swift_storeEnumTagMultiPayload(v84 + v14, v13, 2);
  MLSoundClassifier.ModelParameters.validate()();
  *(v7 + 248) = v18;
  if (v18)
  {
    v19 = *(v7 + 24);
    v20 = *(v7 + 32);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v7 + 40), type metadata accessor for MLSoundClassifier.ModelParameters);
    v20;
    v19;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v7 + 16), &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (!*(v7 + 248))
    {
      outlined destroy of MLActivityClassifier.ModelParameters(*(v7 + 16) + *(*(v7 + 232) + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
    }

    v21 = *(v7 + 224);
    v22 = *(v7 + 216);
    v71 = *(v7 + 208);
    v70 = *(v7 + 184);
    v69 = *(v7 + 176);
    v68 = *(v7 + 152);
    v74 = *(v7 + 144);
    v77 = *(v7 + 136);
    v76 = *(v7 + 128);
    v85 = *(v7 + 120);
    v23 = *(v7 + 16);
    v24 = v23 + *(v7 + 308);
    v72 = *(v7 + 112);
    v81 = *(v7 + 104);
    v80 = *(v7 + 72);
    v97 = *(v7 + 64);
    v90 = *(v7 + 56);
    v101 = *(v7 + 48);
    outlined destroy of MLActivityClassifier.ModelParameters(v23 + *(v7 + 304), type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLClassifierMetrics);
    v21;
    v22;
    v71;
    v70;
    v69;
    v68;
    v74;
    v77;
    v76;
    v85;
    v72;
    v81;
    v80;
    v97;
    v90;
    v101;
    v26 = *(v7 + 8);
    return v26(v25);
  }

  v86 = *(v7 + 184);
  v28 = *(v7 + 152);
  v102 = *(v7 + 144);
  v92 = *(v7 + 80);
  v29 = *(v7 + 40);
  v98 = *(v7 + 16);
  v30 = *(v7 + 24);
  outlined init with copy of MLTrainingSessionParameters(v29, v98 + *(v89 + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v30, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_346D08);
  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm);
  *(v7 + 256) = v32;
  outlined init with copy of MLTrainingSessionParameters(v29, v28, type metadata accessor for MLSoundClassifier.ModelParameters);
  v32;
  MLSoundClassifier.Classifier.init(labels:parameters:)(v32, v28);
  v33 = type metadata accessor for EventCollector();
  swift_allocObject(v33, 32, 7);
  v87 = EventCollector.init()();
  *(v7 + 264) = v87;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v98, v102, &demangling cache variable for type metadata for TrainingTablePrinter?);
  LODWORD(v29) = __swift_getEnumTagSinglePayload(v102, 1, v92);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (v29 == 1)
  {
    v34 = *(v7 + 136);
    v35 = *(v7 + 128);
    v36 = *(v7 + 80);
    v37 = *(v7 + 16);
    static MLSoundClassifier.createTablePrinter(hasValidation:)(*(*(v7 + 32) + 16) != 0);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v36);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v34, v37, &demangling cache variable for type metadata for TrainingTablePrinter?);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, v35, &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
    {
      BUG();
    }

    v38 = *(v7 + 128);
    TrainingTablePrinter.beginTable()();
    outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for TrainingTablePrinter);
  }

  v39 = *(v7 + 120);
  v40 = *(v7 + 80);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v7 + 16), v39, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) != 1)
  {
    v99 = *(v7 + 184);
    v41 = *(v7 + 176);
    v93 = *(v7 + 168);
    v103 = *(v7 + 160);
    v42 = *(v7 + 112);
    v43 = *(v7 + 32);
    v44 = *(v7 + 104);
    outlined init with take of MLClassifierMetrics(*(v7 + 120), v42, type metadata accessor for TrainingTablePrinter);
    v45 = *(v43 + 16);
    *(v7 + 272) = v45;
    outlined init with copy of MLTrainingSessionParameters(v99, v41, type metadata accessor for MLSoundClassifier.Classifier);
    outlined init with copy of MLTrainingSessionParameters(v42, v44, type metadata accessor for TrainingTablePrinter);
    v46 = *(v103 + 80);
    v47 = ~*(v103 + 80) & (v46 + 16);
    v48 = (v93 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
    v104 = *(v7 + 176);
    v94 = *(v7 + 104);
    v50 = *(v7 + 88);
    v51 = *(v7 + 96);
    if (v45)
    {
      v78 = *(v7 + 64);
      v73 = *(v7 + 24);
      v82 = *(v7 + 32);
      v75 = v48;
      v52 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
      v53 = *(v50 + 80);
      v54 = ~v53 & (v52 + v53 + 8);
      v55 = swift_allocObject(&unk_3940A0, v54 + v51, v53 | v46 | 7);
      outlined init with take of MLClassifierMetrics(v104, v55 + v47, type metadata accessor for MLSoundClassifier.Classifier);
      *(v55 + v75) = v73;
      *(v55 + v49) = v82;
      *(v55 + v52) = v87;
      outlined init with take of MLClassifierMetrics(v94, v55 + v54, type metadata accessor for TrainingTablePrinter);
      v73;

      v82;
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:), v55);
      v56 = (v7 + 64);
    }

    else
    {
      v79 = *(v7 + 24);
      v83 = *(v7 + 72);
      v57 = *(v50 + 80);
      v58 = ~v57 & (v49 + v57 + 8);
      v59 = swift_allocObject(&unk_3940C8, v58 + v51, v57 | v46 | 7);
      outlined init with take of MLClassifierMetrics(v104, v59 + v47, type metadata accessor for MLSoundClassifier.Classifier);
      *(v59 + v48) = v79;
      *(v59 + v49) = v87;
      outlined init with take of MLClassifierMetrics(v94, v59 + v58, type metadata accessor for TrainingTablePrinter);
      v79;

      specialized blockAwait<A>(_:)(&async function pointer to partial apply for specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), v59);
      v56 = (v7 + 72);
    }

    v60 = *v56;
    v105 = *(v7 + 112);
    v61 = *(v7 + 16);
    v95 = v61;
    v62 = *(v7 + 80);

    outlined init with take of MLClassifierMetrics(v60, v61 + *(v89 + 20), type metadata accessor for MLSoundClassifier.Model);
    v63 = *(v105 + *(v62 + 20));
    static os_log_type_t.info.getter();
    v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v65 = swift_allocObject(v64, 72, 7);
    v65[2] = 1;
    v65[3] = 2;
    v65[7] = &type metadata for Int;
    v65[8] = &protocol witness table for Int;
    v65[4] = 3;
    os_log(_:dso:log:type:_:)("event: %lu", 10);
    v65;
    v66 = v95 + *(v89 + 20);
    v67 = swift_task_alloc(288);
    *(v7 + 280) = v67;
    *v67 = v7;
    v25 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TQ1_;
    v67[1] = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TQ1_;
    v26 = (&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel());
    return v26(v25);
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v7 + 120), &demangling cache variable for type metadata for TrainingTablePrinter?);
  return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, "range [0.0, 1.0), but got " + 0x8000000000000000, "CreateML/MLSoundClassifier.swift", 32, 2, 229, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TQ1_(uint64_t a1)
{
  v5 = *(*v2 + 280);
  v4 = *v2;
  *(*v2 + 288) = v1;
  v5;
  if (v1)
  {
    *(v4 + 256);
    v6 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY3_;
  }

  else
  {
    *(v4 + 296) = a1;
    v6 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY2_;
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY2_()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 216);
  v3 = *(v0 + 24);
  *(*(v0 + 16) + *(*(v0 + 232) + 24)) = *(v0 + 296);
  specialized MLSoundClassifier.evaluate<A>(on:)(v3);
  if (v1)
  {
    v57 = *(v0 + 184);
    v61 = *(v0 + 112);
    v4 = *(v0 + 40);
    v5 = *(v0 + 256);
    v6 = *(v0 + 264);
    v7 = *(v0 + 24);
    v8 = *(v0 + 32);

    v5;
    outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLSoundClassifier.ModelParameters);
    v8;
    v7;
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for TrainingTablePrinter);
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLSoundClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 16), &demangling cache variable for type metadata for TrainingTablePrinter?);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 20), type metadata accessor for MLSoundClassifier.Model);

    if (!*(v0 + 248))
    {
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
    }

    v9 = *(v0 + 224);
    v10 = *(v0 + 216);
    v54 = *(v0 + 208);
    v52 = *(v0 + 184);
    v50 = *(v0 + 176);
    v48 = *(v0 + 152);
    v46 = *(v0 + 144);
    v42 = *(v0 + 136);
    v38 = *(v0 + 128);
    v34 = *(v0 + 120);
    v11 = *(v0 + 16);
    v12 = v11 + *(v0 + 308);
    v44 = *(v0 + 112);
    v40 = *(v0 + 104);
    v36 = *(v0 + 72);
    v32 = *(v0 + 64);
    v62 = *(v0 + 56);
    v58 = *(v0 + 48);
    outlined destroy of MLActivityClassifier.ModelParameters(v11 + *(v0 + 304), type metadata accessor for MLClassifierMetrics);
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLClassifierMetrics);
    v9;
    v10;
    v54;
    v52;
    v50;
    v48;
    v46;
    v42;
    v38;
    v34;
    v44;
    v40;
    v36;
    v32;
    v62;
    v58;
    v13 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 240);
    v15 = *(v0 + 56);
    v16 = *(v0 + 272);
    v17 = *(v0 + 16) + *(v0 + 304);
    v59 = *(*(v0 + 200) + 32);
    v59(v15, *(v0 + 216), *(v0 + 192));
    v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    swift_storeEnumTagMultiPayload(v15, v63, 0);
    swift_storeEnumTagMultiPayload(v15, v14, 0);
    outlined assign with take of MLClassifierMetrics(v15, v17);
    if (v16)
    {
      v18 = *(v0 + 208);
      v19 = *(v0 + 16);
      specialized MLSoundClassifier.evaluate<A>(on:)(*(v0 + 32));
      v20 = *(v0 + 240);
      v21 = *(v0 + 48);
      v22 = *(v0 + 16) + *(v0 + 308);
      v59(v21, *(v0 + 208), *(v0 + 192));
      swift_storeEnumTagMultiPayload(v21, v63, 0);
      swift_storeEnumTagMultiPayload(v21, v20, 0);
      outlined assign with take of MLClassifierMetrics(v21, v22);
    }

    v30 = *(v0 + 264);
    v23 = *(v0 + 256);
    v53 = *(v0 + 224);
    v51 = *(v0 + 216);
    v49 = *(v0 + 208);
    v55 = *(v0 + 184);
    v47 = *(v0 + 176);
    v45 = *(v0 + 152);
    v43 = *(v0 + 144);
    v41 = *(v0 + 136);
    v39 = *(v0 + 128);
    v37 = *(v0 + 120);
    v29 = *(v0 + 112);
    v35 = *(v0 + 104);
    v33 = *(v0 + 72);
    v64 = *(v0 + 64);
    v60 = *(v0 + 56);
    v56 = *(v0 + 48);
    v24 = *(v0 + 40);
    v25 = *(v0 + 24);
    v31 = *(v0 + 32);
    v26 = *(v25 + 16);
    v27 = *(v23 + 16);
    v23;
    static MLSoundClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(v26, v27, v24);

    outlined destroy of MLActivityClassifier.ModelParameters(v24, type metadata accessor for MLSoundClassifier.ModelParameters);
    v31;
    v25;
    outlined destroy of MLActivityClassifier.ModelParameters(v29, type metadata accessor for TrainingTablePrinter);
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLSoundClassifier.Classifier);
    v53;
    v51;
    v49;
    v55;
    v47;
    v45;
    v43;
    v41;
    v39;
    v37;
    v29;
    v35;
    v33;
    v64;
    v60;
    v56;
    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5TY3_()
{
  v1 = *(v0 + 264);
  v25 = *(v0 + 184);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5;
  v4;
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for TrainingTablePrinter);
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLSoundClassifier.Classifier);
  v26 = *(v0 + 288);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 16), &demangling cache variable for type metadata for TrainingTablePrinter?);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 20), type metadata accessor for MLSoundClassifier.Model);
  if (!*(v0 + 248))
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(*(v0 + 232) + 28), type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 216);
  v24 = *(v0 + 208);
  v23 = *(v0 + 184);
  v22 = *(v0 + 176);
  v21 = *(v0 + 152);
  v20 = *(v0 + 144);
  v18 = *(v0 + 136);
  v16 = *(v0 + 128);
  v14 = *(v0 + 120);
  v8 = *(v0 + 16);
  v9 = v8 + *(v0 + 308);
  v19 = *(v0 + 112);
  v17 = *(v0 + 104);
  v15 = *(v0 + 72);
  v13 = *(v0 + 64);
  v12 = *(v0 + 56);
  v11 = *(v0 + 48);
  outlined destroy of MLActivityClassifier.ModelParameters(v8 + *(v0 + 304), type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLClassifierMetrics);
  v6;
  v7;
  v24;
  v23;
  v22;
  v21;
  v20;
  v18;
  v16;
  v14;
  v19;
  v17;
  v15;
  v13;
  v12;
  v11;
  return (*(v0 + 8))();
}

uint64_t closure #2 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #2 in MLSoundClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #2 in MLSoundClassifier.init(trainingData:parameters:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v2;
  if (!v2)
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  outlined init with copy of MLTrainingSessionParameters(v0[5], v0[6], type metadata accessor for MLSoundClassifier.ModelParameters);
  v1;
  v2;
  v4 = swift_task_alloc(128);
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  return ((&_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5Tu + _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5Tu))(v0[2], v0[3], v6, v0[6]);
}

uint64_t partial apply for closure #2 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 32));
  v7 = swift_task_alloc(80);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #2 in MLSoundClassifier.init(trainingData:parameters:)(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 32);
  v14 = *(v2 + 64);
  *(v0 + 16);
  *(v0 + 24);
  v5 = v4 + v0;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v6);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v10 = *v5;
LABEL_6:
    v10;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v4 + v0, v8))
    {
      case 0u:
      case 1u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 8))(v4 + v0, v9);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        v10 = *(v5 + 40);
        goto LABEL_6;
      case 4u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v4 + v0, v13);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v5 + *(v15 + 48) + 8);
        v10 = *(v5 + *(v15 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v11 = *(v1 + 28);
  if (*(v5 + v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v11 + v5));
  }

  return swift_deallocObject(v0, v14 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLSoundClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 32));
  v7 = swift_task_alloc(80);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSoundClassifier.init(trainingData:parameters:)(a1, v4, v5, v6);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v4[10] = a3;
  v4[9] = a2;
  v4[8] = a1;
  v5 = (*(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[12] = swift_task_alloc(v5);
  v4[13] = swift_task_alloc(v5);
  return swift_task_switch(_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY0_, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY0_()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  outlined init with copy of MLTrainingSessionParameters(*(v0 + 88), v1, type metadata accessor for MLSoundClassifier.ModelParameters);
  MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(v1, *(v2 + 16));
  v3 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
  swift_allocObject(v3, 88, 7);
  v2;
  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v2, (v0 + 16));
  v10 = MLSoundClassifier.FeatureExtractor.extractFeatures()();

  v4 = *(v0 + 80);
  swift_allocObject(v3, 88, 7);
  v4;
  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v4, (v0 + 16));
  v5 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);

  outlined init with copy of MLTrainingSessionParameters(v6, v7, type metadata accessor for MLSoundClassifier.ModelParameters);
  v8 = swift_task_alloc(320);
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TQ1_;
  return ((&_s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu + _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy04CoreB013MLShapedArrayVySfGSSG7ElementRtzApQRt_r0_lufCSayAPG_ATTt3g5Tu))(*(v0 + 64), v10, v5, *(v0 + 96));
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TQ1_()
{
  v2 = *(*v1 + 112);
  *(*v1 + 120) = v0;
  v2;
  if (v0)
  {
    v3 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY3_;
  }

  else
  {
    v3 = _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY2_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY2_()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 88), type metadata accessor for MLSoundClassifier.ModelParameters);
  v4;
  v3;
  v1;
  v2;
  return (*(v0 + 8))();
}

uint64_t _s8CreateML17MLSoundClassifierV8training10validation10parametersACx_q_AC15ModelParametersVtYaKcSlRzSlR_0A12MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG7ElementRtzAoPRt_r0_lufCSayAOG_ASTt3g5TY3_()
{
  v6 = *(v0 + 120);
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 88), type metadata accessor for MLSoundClassifier.ModelParameters);
  v4;
  v3;
  v1;
  v2;
  return (*(v0 + 8))();
}

uint64_t specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  v7 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v6[8] = v7;
  v8 = *(v7 + 64);
  v6[9] = v8;
  v6[10] = swift_task_alloc((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
}

uint64_t specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)()
{
  v1 = v0[10];
  v2 = v0[9];
  v3 = v0[8];
  v4 = v0[6];
  outlined init with copy of MLTrainingSessionParameters(v0[7], v1, type metadata accessor for TrainingTablePrinter);
  v5 = *(v3 + 80);
  v6 = ~*(v3 + 80) & (v5 + 24);
  v7 = swift_allocObject(&unk_394118, v6 + v2, v5 | 7);
  v0[11] = v7;
  *(v7 + 16) = v4;
  outlined init with take of MLClassifierMetrics(v1, v7 + v6, type metadata accessor for TrainingTablePrinter);

  v8 = swift_task_alloc(208);
  v0[12] = v8;
  *v8 = v0;
  v8[1] = specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:);
  v9 = v0[3];
  return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(v0[2], v0[4], v0[5], partial apply for closure #2 in SoundClassifierTrainingSessionDelegate.train(from:), v7);
}

{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(v4 + 104) = v0;
  v3;

  if (v0)
  {
    return swift_task_switch(specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
  }

  *(v4 + 80);
  return (*(v4 + 8))();
}

{
  *(v0 + 80);
  v1 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a5;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = *(type metadata accessor for TrainingTablePrinter(0) - 8);
  v5[7] = v6;
  v7 = *(v6 + 64);
  v5[8] = v7;
  v5[9] = swift_task_alloc((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
}

uint64_t specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[5];
  outlined init with copy of MLTrainingSessionParameters(v0[6], v1, type metadata accessor for TrainingTablePrinter);
  v5 = *(v3 + 80);
  v6 = ~*(v3 + 80) & (v5 + 24);
  v7 = swift_allocObject(&unk_3940F0, v6 + v2, v5 | 7);
  v0[10] = v7;
  *(v7 + 16) = v4;
  outlined init with take of MLClassifierMetrics(v1, v7 + v6, type metadata accessor for TrainingTablePrinter);

  v8 = swift_task_alloc(208);
  v0[11] = v8;
  *v8 = v0;
  v8[1] = specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:);
  v9 = v0[3];
  return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)))(v0[2], v0[4], partial apply for closure #1 in closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), v7);
}

{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(v4 + 96) = v0;
  v3;

  if (v0)
  {
    return swift_task_switch(specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:), 0, 0);
  }

  *(v4 + 72);
  return (*(v4 + 8))();
}

{
  *(v0 + 72);
  v1 = *(v0 + 96);
  return (*(v0 + 8))();
}

uint64_t specialized MLSoundClassifier.evaluate<A>(on:)(uint64_t a1)
{
  v25 = v2;
  v26 = a1;
  v27 = v1;
  v4 = *(type metadata accessor for MLSoundClassifier(0) - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(v3, &v22, type metadata accessor for MLSoundClassifier);
  v8 = *(v4 + 80);
  v9 = ~*(v4 + 80) & (v8 + 16);
  v10 = (v9 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject(&unk_394050, v10 + 8, v8 | 7);
  v12 = v11 + v9;
  v13 = v26;
  outlined init with take of MLClassifierMetrics(&v22, v12, type metadata accessor for MLSoundClassifier);
  *(v11 + v10) = v13;
  v13;
  v14 = v25;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for specialized closure #1 in MLSoundClassifier.evaluate<A>(on:), v11);
  v16 = v15;

  if (!v14)
  {
    MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v16, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_346D40);
    v16;
    v24 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
    v23 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v13, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_346D08);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
    ClassificationMetrics.init<A, B>(_:_:)(&v24, &v23, &type metadata for String, v19, v19, &protocol witness table for String, v20, v20);
    return v21;
  }

  return result;
}

char static MLSoundClassifier.reportAnalytics(trainingExampleCount:classCount:parameters:)(Swift::Int quantity, Swift::Int a2, uint64_t a3)
{
  result = AnalyticsReporter.init()();
  if (result)
  {
    return result;
  }

  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), quantity);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__(("Number of Images" + 0x8000000000000000), 0xD000000000000011), a2);
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(a3 + v5[5]));
  v6 = *(a3 + v5[6]);
  AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_soundClassifier, __PAIR128__(0xEE00726F74636146, 0x2070616C7265764FLL), v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a3 + v5[7], &v16, &demangling cache variable for type metadata for Any?);
  if (!v17)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v16, &demangling cache variable for type metadata for Any?);
    goto LABEL_6;
  }

  if (!swift_dynamicCast(&v18, &v16, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_6:
    v8 = 1;
    v7 = 1;
    v9 = 0;
    goto LABEL_7;
  }

  v7 = v18;
  v8 = v19;
  v9 = v20;
LABEL_7:
  v16._countAndFlagsBits = v7;
  LOBYTE(v16._object) = v8 & 1;
  v9;
  v21 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
  v11 = v10;
  if (v9)
  {
    v9;
    v12 = 0xD000000000000015;
    v13 = "Feature Extractor: ";
  }

  else
  {
    0;
    v12 = 0xD000000000000012;
    v13 = "Multilayer Perceptron";
  }

  v16._countAndFlagsBits = v21;
  v16._object = v11;
  v11;
  v14._countAndFlagsBits = v12;
  v14._object = (v13 | 0x8000000000000000);
  String.append(_:)(v14);
  v9;
  v11;
  v13 | 0x8000000000000000;
  object = v16._object;
  AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_soundClassifier, __PAIR128__(0xE90000000000006DLL, 0x687469726F676C41), v16);
  return object;
}

uint64_t MLSoundClassifier.init(checkpoint:)(uint64_t a1)
{
  v114 = v2;
  v115 = a1;
  v3 = v1;
  v99 = *(type metadata accessor for MLSoundClassifier.Model(0) - 8);
  v4 = *(v99 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v97 = &v88;
  v98 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v108 = &v88;
  v94 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v9 = *(*(v94 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v93 = &v88;
  v92 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v12 = *(*(v92 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v109 = &v88;
  v15 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v95 = &v88;
  v96 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v18 = *(*(v96 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v113 = &v88;
  v111 = type metadata accessor for URL(0);
  v104 = *(v111 - 8);
  v21 = *(v104 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v105 = &v88;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v106 = &v88;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v112 = &v88;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v117 = &v88;
  v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v101 = *(v116 - 1);
  v30 = *(v101 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = type metadata accessor for TrainingTablePrinter(0);
  v110 = v3;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v33);
  v34 = type metadata accessor for MLSoundClassifier(0);
  v102 = *(v34 + 32);
  v35 = v3 + v102;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v36 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v37 = *(v36 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v88);
  v38 = *(v36 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v88);
  (*(v101 + 8))(&v88, v116);
  v39 = v110;
  *(v110 + v102) = 0;
  v116 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v101 = v35;
  swift_storeEnumTagMultiPayload(v35, v116, 1);
  v103 = v34;
  v40 = *(v34 + 36);
  v107 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v41 = swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
  *v42 = 0xD0000000000000C0;
  *(v42 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v42 + 16) = 0;
  *(v42 + 32) = 0;
  *(v42 + 48) = 0;
  *(v39 + v40) = v41;
  v102 = v39 + v40;
  swift_storeEnumTagMultiPayload(v39 + v40, v116, 2);
  switch(*(v115 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v43 = 0x696C616974696E69;
      v44 = 0xEB0000000064657ALL;
      break;
    case 1:
      v43 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v45 = 0xE800000000000000;
      0xE800000000000000;
      v46 = v117;
      goto LABEL_9;
    case 3:
      v43 = 0x697461756C617665;
LABEL_7:
      v44 = 0xEA0000000000676ELL;
      break;
    case 4:
      v44 = 0xEB00000000676E69;
      v43 = 0x636E657265666E69;
      break;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)(v43, v44, 0x676E696E69617274, 0xE800000000000000, 0);
  v45 = v44;
  v44;
  v48 = (v47 & 1) == 0;
  v46 = v117;
  if (v48)
  {
    v117 = 0;
    v55 = v107;
    swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
    *v56 = 0xD00000000000003BLL;
    *(v56 + 8) = "s not contain string elements." + 0x8000000000000000;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v55);
    outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLCheckpoint);
  }

  else
  {
LABEL_9:
    URL.deletingLastPathComponent()(v45);
    v49 = v106;
    URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
    URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
    v50 = v104;
    v51 = v111;
    v116 = *(v104 + 8);
    v116(v49, v111);
    v52 = v105;
    (*(v50 + 16))(v105, v46, v51);
    v53 = v114;
    MLSoundClassifier.PersistentParameters.init(sessionDirectory:)(v52);
    if (v53)
    {
      v117 = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLCheckpoint);
      v54 = v116;
      v116(v112, v51);
      v54(v46, v51);
    }

    else
    {
      v114 = 0;
      v57 = v110 + *(v103 + 28);
      v58 = v96;
      v59 = v113;
      v60 = v95;
      outlined init with copy of MLTrainingSessionParameters(v113 + *(v96 + 20), v95, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v107 = *(v59 + v58[8]);
      v100 = *(v59 + v58[6]);
      v61 = v58[9];
      v104 = *(v59 + v61);
      LOBYTE(v105) = *(v59 + v61 + 8);
      v62 = *(v59 + v61 + 16);
      v63 = v94;
      v64 = *(v94 + 28);
      *(v64 + v57) = 0;
      *(v64 + v57 + 16) = 0;
      v65 = v63[8];
      *(v65 + v57) = 0;
      v106 = (v57 + v64);
      *(v65 + v57 + 8) = 1;
      *(v63[9] + v57) = 32;
      outlined init with copy of MLTrainingSessionParameters(v60, v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      *(v63[5] + v57) = v107;
      *(v63[6] + v57) = v100;
      v91 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v88 = v104;
      v89 = v105;
      v90 = v62;
      v62;
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v88, v106, &demangling cache variable for type metadata for Any?);
      outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v66 = v93;
      outlined init with copy of MLTrainingSessionParameters(v57, v93, type metadata accessor for MLSoundClassifier.ModelParameters);
      v67 = v109;
      MLSoundClassifier.Classifier.init(labels:parameters:)(&_swiftEmptySetSingleton, v66);
      v68 = lazy protocol witness table accessor for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier();
      v69 = v108;
      v70 = v112;
      v71 = v114;
      UpdatableSupervisedEstimator.readWithOptimizer(from:)(v112, v92, v68);
      if (!v71)
      {
        v76 = v97;
        outlined init with copy of MLTrainingSessionParameters(v69, v97, type metadata accessor for MLSoundClassifier.Model);
        v77 = *(v99 + 80);
        v78 = ~*(v99 + 80) & (v77 + 16);
        v79 = swift_allocObject(&unk_393FF0, v78 + v98, v77 | 7);
        outlined init with take of MLClassifierMetrics(v76, v79 + v78, type metadata accessor for MLSoundClassifier.Model);
        specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSoundClassifier.init(checkpoint:), v79);
        v114 = 0;
        v80 = v116;
        v83 = v82;

        outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLSoundClassifier.Classifier);
        outlined destroy of MLActivityClassifier.ModelParameters(v113, type metadata accessor for MLSoundClassifier.PersistentParameters);
        v84 = v111;
        v80(v112, v111);
        v80(v117, v84);
        v85 = v103;
        v86 = v110;
        *(v110 + *(v103 + 24)) = v83;
        return outlined init with take of MLClassifierMetrics(v108, v86 + *(v85 + 20), type metadata accessor for MLSoundClassifier.Model);
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLSoundClassifier.Classifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v113, type metadata accessor for MLSoundClassifier.PersistentParameters);
      v72 = v70;
      v73 = v111;
      v74 = v116;
      v116(v72, v111);
      v75 = v74(v117, v73);
      LOBYTE(v75) = 1;
      v117 = v75;
    }
  }

  v81 = v110;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v110, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (v117)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v103 + 28) + v81, type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v101, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLClassifierMetrics);
}

uint64_t closure #1 in MLSoundClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = MLSoundClassifier.DataSource.labeledSounds()(a1, a2, a3);
  if (!v3)
  {
    v6 = v5;
    v4 = static MLSoundClassifier.train(trainingData:parameters:sessionParameters:)(v5, a2, a3);
    v6;
  }

  return v4;
}

{
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v15 = a1;
  swift_storeEnumTagMultiPayload(&v15, v6, 2);
  a1;
  static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(&v15, a2, a3);
  v11 = v10;
  result = outlined destroy of MLActivityClassifier.ModelParameters(&v15, type metadata accessor for MLSoundClassifier.DataSource);
  if (!v3)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLSoundClassifier>);
    v14 = swift_allocObject(v13, *(v13 + 48), *(v13 + 52));
    return specialized MLJob.init(_:)(v14, v11);
  }

  return result;
}

void static MLSoundClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = v3;
  v46 = a3;
  v48 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v43 = &v34;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v47 = &v34;
  v10 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v51 = &v34;
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v14 = *(*(v13 - 1) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  MLSoundClassifier.ModelParameters.validate()();
  if (!v20)
  {
    v50 = &v34;
    v49 = &v34;
    MLSoundClassifier.ModelParameters.ValidationData.validate(modelParameters:)(a2);
    v45 = 0;
    v44 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    outlined init with copy of MLTrainingSessionParameters(v48, v50, type metadata accessor for MLSoundClassifier.DataSource);
    outlined init with copy of MLTrainingSessionParameters(a2, v51, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v21 = *(a2 + v13[5]);
    v48 = *(a2 + v13[6]);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a2 + v13[7], &v35, &demangling cache variable for type metadata for Any?);
    if (v38)
    {
      v22 = swift_dynamicCast(&v40, &v35, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6);
      v23 = v46;
      v24 = v47;
      if (v22)
      {
        v25 = v40;
        v26 = v41;
        v27 = v42;
      }

      else
      {
        v26 = 1;
        v25 = 1;
        v27 = 0;
      }
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v35, &demangling cache variable for type metadata for Any?);
      v26 = 1;
      v25 = 1;
      v27 = 0;
      v23 = v46;
      v24 = v47;
    }

    v28 = v49;
    v35 = v25;
    v36 = v26 & 1;
    v37 = v27;
    MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)(v51, v21, &v35, *&v48, v44);
    outlined init with copy of MLTrainingSessionParameters(v23, v24, type metadata accessor for MLTrainingSessionParameters);
    v29 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_allocObject(v29, *(v29 + 48), *(v29 + 52));
    v30 = v45;
    v31 = SoundClassifierTrainingSessionDelegate.init(trainingData:featureExtractionOnly:modelParameters:sessionParameters:)(v50, 0, v28, v24);
    if (!v30)
    {
      v38 = v29;
      v39 = &protocol witness table for SoundClassifierTrainingSessionDelegate;
      v35 = v31;
      v32 = v43;
      outlined init with copy of MLTrainingSessionParameters(v23, v43, type metadata accessor for MLTrainingSessionParameters);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>);
      swift_allocObject(v33, *(v33 + 48), *(v33 + 52));
      specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v35, v32, 19);
    }
  }
}

void *static MLSoundClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLSoundClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLSoundClassifier.extractFeatures(trainingData:parameters:sessionParameters:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v13 = *(a2 + 32);
  v4 = *a2;
  v12[1] = a2[1];
  v12[0] = v4;
  v11 = *(a2 + 32);
  v5 = *a2;
  v10[1] = a2[1];
  v10[0] = v5;
  result = static MLSoundClassifier.makeFeatureExtractionSession(trainingData:parameters:sessionParameters:)(a1, v10, a3);
  if (!v3)
  {
    v7 = result;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLSoundClassifier.DataSource>);
    v9 = swift_allocObject(v8, *(v8 + 48), *(v8 + 52));
    return specialized MLJob.init(_:)(v9, v7, v12);
  }

  return result;
}

uint64_t static MLSoundClassifier.makeFeatureExtractionSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = v3;
  v45 = a3;
  v47 = a1;
  v4 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v44 = &v33;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v39 = &v33;
  v9 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v40 = &v33;
  v42 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v12 = *(*(v42 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v41 = &v33;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v43 = *a2;
  v20 = *(a2 + 8);
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  v23 = *(a2 + 16) == 0;
  v33 = 0;
  v34 = 256;
  if (v23)
  {
    v46 = v20;
  }

  else
  {
    v46 = 0.975;
  }

  swift_storeEnumTagMultiPayload(&v33, v42, 0);
  *(&v33 + 1) = v21;
  LOBYTE(v34) = v22;
  v35 = 0;
  MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)(&v33, 25, &v33 + 8, v43, v46);
  v24 = v40;
  outlined init with copy of MLTrainingSessionParameters(v47, v40, type metadata accessor for MLSoundClassifier.DataSource);
  v47 = &v33;
  v25 = v41;
  outlined init with copy of MLTrainingSessionParameters(&v33, v41, type metadata accessor for MLSoundClassifier.ModelParameters);
  v26 = v39;
  outlined init with copy of MLTrainingSessionParameters(v45, v39, type metadata accessor for MLTrainingSessionParameters);
  v27 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
  swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
  v28 = v38;
  v29 = SoundClassifierTrainingSessionDelegate.init(trainingData:featureExtractionOnly:modelParameters:sessionParameters:)(v24, 1, v25, v26);
  if (v28)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  else
  {
    v36 = v27;
    v37 = &protocol witness table for SoundClassifierTrainingSessionDelegate;
    *(&v33 + 1) = v29;
    v30 = v44;
    outlined init with copy of MLTrainingSessionParameters(v45, v44, type metadata accessor for MLTrainingSessionParameters);
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>);
    swift_allocObject(v31, *(v31 + 48), *(v31 + 52));

    v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v33 + 8, v30, 19);
    outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for MLSoundClassifier.ModelParameters);
  }

  return v27;
}

uint64_t closure #1 in closure #1 in static MLSoundClassifier.extractFeatures(trainingData:parameters:sessionParameters:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v32 = a6;
  v26 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier.DataSource, Error>);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (a2)
  {
    v24[0] = a1;
    swift_storeEnumTagMultiPayload(v24, v8, 1);
    swift_errorRetain(a1);
    a5(v24);
  }

  else
  {
    v27 = v8;
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v24);
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v13 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v25, v24, v12, v13, 7);
    v28 = v24;
    v14 = v25;
    v30 = v25;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    v29 = a5;
    v16 = v15[12];
    v31 = v15[16];
    v17 = v15[20];
    v18 = *(v14 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
    v18;
    static SoundClassifierTrainingSessionDelegate.createDataFrame(from:)(v18);
    v18;
    *(v24 + v16) = 0x7365727574616566;
    *(&v24[1] + v16) = 0xE800000000000000;
    v19 = v31;
    *(v24 + v31) = 0x62614C7373616C63;
    *(&v24[1] + v19) = 0xEA00000000006C65;
    v20 = v26;
    *(&v24[4] + v17) = *(v26 + 32);
    v21 = *v20;
    *(&v24[2] + v17) = v20[1];
    *(v24 + v17) = v21;
    v22 = type metadata accessor for MLSoundClassifier.DataSource(0);
    swift_storeEnumTagMultiPayload(v24, v22, 4);
    swift_storeEnumTagMultiPayload(v24, v27, 0);
    v29(v24);
  }

  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Result<MLSoundClassifier.DataSource, Error>);
}

uint64_t static MLSoundClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = SoundClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for SoundClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 19);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLSoundClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  if (a2)
  {
    v19 = a1;
    swift_storeEnumTagMultiPayload(&v19, v6, 1);
    swift_errorRetain(a1);
    v23(&v19);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for SoundClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_394078, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLSoundClassifierV_Tt1g503_s8b4ML17fg80V12handleResult33_0936EF001B4864F81C630288B6304A87LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC05Soundg8TrainingX8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLSoundClassifier, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[19] = a2;
  v2[18] = a1;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v2[20] = v3;
  v2[21] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[22] = swift_task_alloc(v4);
  v2[23] = swift_task_alloc(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?);
  v2[24] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLSoundClassifier(0);
  v2[25] = v6;
  v2[26] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v2[27] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2[28] = v8;
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[29] = swift_task_alloc(v9);
  v2[30] = swift_task_alloc(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v2[31] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v2[32] = v11;
  v2[33] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.init(delegate:), 0, 0);
}

uint64_t MLSoundClassifier.init(delegate:)()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 248);
  v3 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + *(v0 + 152);
  swift_beginAccess(v3, v0 + 48, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v22 = *(v0 + 216);
  v17 = *(v0 + 152);
  v16 = *(v0 + 192);
  outlined init with take of MLClassifierMetrics(*(v0 + 248), v4, type metadata accessor for MLSoundClassifier.PersistentParameters);
  outlined init with copy of MLTrainingSessionParameters(v4 + v5[5], v22, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v20 = *(v4 + v5[8]);
  v21 = *(v4 + v5[6]);
  v8 = v5[9];
  v18 = *(v4 + v8);
  v23 = *(v4 + v8 + 8);
  v9 = *(v4 + v8 + 16);
  v10 = v7[7];
  *(v6 + v10) = 0;
  *(v6 + v10 + 16) = 0;
  v11 = v7[8];
  *(v6 + v11) = 0;
  v19 = v6 + v10;
  *(v6 + v11 + 8) = 1;
  *(v6 + v7[9]) = 32;
  outlined init with copy of MLTrainingSessionParameters(v22, v6, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(v6 + v7[5]) = v20;
  *(v6 + v7[6]) = v21;
  *(v0 + 40) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *(v0 + 16) = v18;
  *(v0 + 24) = v23;
  *(v0 + 32) = v9;
  v9;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v0 + 16, v19, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v12 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v17;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v17, v0 + 72, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v16, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  v13 = type metadata accessor for MLSoundClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v13) == 1)
  {
    BUG();
  }

  outlined init with copy of MLTrainingSessionParameters(*(v0 + 240), *(v0 + 232), type metadata accessor for MLSoundClassifier.ModelParameters);
  v14 = swift_task_alloc(112);
  *(v0 + 272) = v14;
  *v14 = v0;
  v14[1] = MLSoundClassifier.init(delegate:);
  return MLSoundClassifier.init(_:parameters:)(*(v0 + 208), *(v0 + 192), *(v0 + 232));
}

{
  v2 = *(*v1 + 272);
  *(*v1 + 280) = v0;
  v2;
  if (v0)
  {
    v3 = MLSoundClassifier.init(delegate:);
  }

  else
  {
    v3 = MLSoundClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  outlined init with take of MLClassifierMetrics(*(v0 + 208), *(v0 + 144), type metadata accessor for MLSoundClassifier);
  v4 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 96, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for MLClassifierMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 200);
  v24 = *(v0 + 184);
  v21 = *(v0 + 176);
  v19 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 240), type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLSoundClassifier.PersistentParameters);
  outlined assign with take of MLClassifierMetrics(v24, v7 + *(v6 + 32));
  v9 = v8 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, v0 + 120, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v21, &demangling cache variable for type metadata for MLClassifierMetrics?);

  if (__swift_getEnumTagSinglePayload(v21, 1, v19) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 176), &demangling cache variable for type metadata for MLClassifierMetrics?);
  }

  else
  {
    v10 = *(v0 + 200);
    v11 = *(v0 + 144);
    v12 = *(v0 + 168);
    outlined init with take of MLClassifierMetrics(*(v0 + 176), v12, type metadata accessor for MLClassifierMetrics);
    outlined assign with take of MLClassifierMetrics(v12, v11 + *(v10 + 36));
  }

  v13 = *(v0 + 248);
  v14 = *(v0 + 240);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);
  v18 = *(v0 + 208);
  v25 = *(v0 + 192);
  v23 = *(v0 + 184);
  v20 = *(v0 + 168);
  v22 = *(v0 + 176);
  *(v0 + 264);
  v13;
  v14;
  v15;
  v16;
  v18;
  v25;
  v23;
  v22;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 240);
  v4 = *(v0 + 232);
  v13 = *(v0 + 216);
  v12 = *(v0 + 208);
  v11 = *(v0 + 192);
  v10 = *(v0 + 184);
  v9 = *(v0 + 176);
  v5 = *(v0 + 152);
  v8 = *(v0 + 168);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v1;
  v2;
  v3;
  v4;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  v6 = *(v0 + 280);
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.evaluation(on:)(uint64_t a1, uint64_t a2)
{
  v15[2] = v3;
  v16 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v17 = v15;
  v10 = MLSoundClassifier.DataSource.labeledSounds()(&demangling cache variable for type metadata for ClassificationMetrics<String>, a2, v9);
  MLSoundClassifier.evaluate(on:)(v10);
  v10;
  v12 = v16;
  (*(v5 + 32))(v16, v17, v4);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v12, v13, 0);
  v14 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v12, v14, 0);
}

void *MLSoundClassifier.evaluate(on:)(uint64_t a1)
{
  v20 = a1;
  v23 = v1;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(type metadata accessor for MLSoundClassifier(0) + 28);
  v22 = v3;
  outlined init with copy of MLTrainingSessionParameters(v3 + v8, v17, type metadata accessor for MLSoundClassifier.ModelParameters);
  v9 = specialized Sequence.flatMap<A>(_:)(a1);
  v21 = v2;
  v10 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5(v9);
  v11 = *(v10 + 16);
  v10;
  MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(v17, v11);
  v12 = v18;
  v13 = v19;
  type metadata accessor for MLSoundClassifier.FeatureExtractor();
  v18 = v12;
  v19 = v13;
  v14 = v21;
  result = static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(v20, v17);
  if (!v14)
  {
    v16 = result;
    specialized MLSoundClassifier.evaluate<A>(on:)(result);
    return v16;
  }

  return result;
}

uint64_t MLSoundClassifier.evaluation(on:)(uint64_t a1)
{
  v12 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  MLSoundClassifier.evaluate(on:)(a1);
  v7 = v12;
  (*(v3 + 32))(v12, &v11, v2);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  swift_storeEnumTagMultiPayload(v7, v8, 0);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v7, v9, 0);
}

uint64_t specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(type metadata accessor for MLSoundClassifier(0) + 20);
  v4 = swift_task_alloc(352);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in MLSoundClassifier.evaluate<A>(on:);
  return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(a2, 0, 0);
}

uint64_t specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  v4;
  if (!v1)
  {
    v4 = a1;
  }

  return (*(v5 + 8))(v4);
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  return (*(v6 + 8))();
}

uint64_t MLSoundClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v45 = v3;
  v50 = a2;
  v51 = a1;
  v4 = *(*(type metadata accessor for MLSoundClassifier.Model(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v47 = &v35;
  v48 = type metadata accessor for Model(0);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v44 = &v35;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v43, v50, sizeof(v43));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v51, 0x616C43646E756F53, 0xEF72656966697373, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v46 = 0;
    v52 = &v35;
    v49 = v7;
    v50 = v11;
    v51 = v12;
    v17 = type metadata accessor for MLSoundClassifier(0);
    v18 = v47;
    outlined init with copy of MLTrainingSessionParameters(*(v17 + 20) + v45, v47, type metadata accessor for MLSoundClassifier.Model);
    v19 = *&v43[8];
    if (*&v43[8])
    {
      v20 = *v43;
      v21 = *&v43[16];
      v22 = *&v43[24];
      v23 = *&v43[32];
      v24 = *&v43[48];
      v25 = *&v43[56];
      v26 = *&v43[64];
    }

    else
    {
      v27 = NSFullUserName();
      v28 = v27;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(v28);
      v19 = v29;

      v22 = "RandomForestRegressor" + 0x8000000000000000;
      v37[0] = v20;
      v37[1] = v19;
      v37[2] = 0xD000000000000033;
      v37[3] = "RandomForestRegressor" + 0x8000000000000000;
      v38 = 0;
      v39 = 49;
      v40 = 0xE100000000000000;
      v41 = 0;
      *v42 = v20;
      *&v42[8] = v19;
      *&v42[16] = 0xD000000000000033;
      *&v42[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v42[32] = 0;
      *&v42[48] = 49;
      *&v42[56] = 0xE100000000000000;
      *&v42[64] = 0;
      outlined retain of MLModelMetadata(v37);
      outlined release of MLModelMetadata(v42, v18);
      v25 = 0xE100000000000000;
      v24 = 49;
      v23 = 0;
      v21 = 0xD000000000000033;
      v26 = 0;
    }

    *v42 = v20;
    *&v42[8] = v19;
    *&v42[16] = v21;
    *&v42[24] = v22;
    *&v42[32] = v23;
    *&v42[48] = v24;
    *&v42[56] = v25;
    *&v42[64] = v26;
    qmemcpy(v36, v42, sizeof(v36));
    outlined retain of MLModelMetadata?(v43);
    v30 = v44;
    v31 = v47;
    v32 = v46;
    specialized CoreMLExportable.export(metadata:)(v36);
    v33 = v50;
    outlined release of MLModelMetadata(v42, v43);
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLSoundClassifier.Model);
    if (v32)
    {
      return (*(v51 + 8))(v52, v33);
    }

    else
    {
      Model.write(to:)(v52);
      v34 = v51;
      (*(v49 + 8))(v30, v48);
      return (*(v34 + 8))(v52, v33);
    }
  }

  return result;
}

uint64_t MLSoundClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v18 = v3;
  v22 = a3;
  v20 = a2;
  v19 = a1;
  v23 = type metadata accessor for URL.DirectoryHint(0);
  v21 = *(v23 - 8);
  v4 = *(v21 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v24 = v17;
  v10 = type metadata accessor for URL(0);
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  qmemcpy(v17, v22, sizeof(v17));
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v10);
  (*(v21 + 104))(v17, enum case for URL.DirectoryHint.inferFromPath(_:), v23);
  v14 = v20;
  v20;
  v15 = URL.init(filePath:directoryHint:relativeTo:)(v19, v14, v17, v24);
  MLSoundClassifier.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

void (__cdecl **MLSoundClassifier.predictions(from:)(uint64_t a1))(id)
{
  v2 = v1 + *(type metadata accessor for MLSoundClassifier(0) + 28);
  type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v3 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(a1, v3, v3);
}

void (__cdecl **MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1, double a2, double a3))(id)
{
  *&v112 = v3;
  v110 = a3;
  v105 = type metadata accessor for URL(0);
  v108 = *(v105 - 8);
  v88 = *(v108 + 64);
  v5 = alloca(v88);
  v6 = alloca(v88);
  v106 = &v82;
  v7 = type metadata accessor for MLSoundClassifier(0);
  v89 = *(v7 - 8);
  v109 = *(v89 + 64);
  v8 = alloca(v109);
  v9 = alloca(v109);
  v107 = &v82;
  v102 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v10 = *(*(v102 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v114 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
  v13 = *(v7 + 28);
  v103 = v4;
  v14 = v4 + v13;
  outlined init with copy of MLTrainingSessionParameters(v14, &v82, type metadata accessor for MLSoundClassifier.ModelParameters);
  v15 = *(a1 + 16);
  MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(&v82, v15);
  v82 = v97;
  v83 = v98;
  v84 = v99;
  v85 = v100;
  v16 = v112;
  result = static MLSoundClassifier.FeatureExtractor.extractFeatures(from:options:)(a1, &v82);
  if (v16)
  {
    return result;
  }

  *&v112 = 0;
  v104 = v15;
  v111 = result;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v102 + 28) + v14, &v97, &demangling cache variable for type metadata for Any?);
  if (*(&v98 + 1))
  {
    v18 = swift_dynamicCast(&v82, &v97, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6);
    v19 = v105;
    v20 = v106;
    if (v18)
    {
      v21 = BYTE8(v82);
      v83;
      v22 = v108;
      v23 = v109;
      v24 = v110;
      if (!v21 && v110 != 0.975)
      {
        v111;
        *&v97 = 0;
        *(&v97 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(86);
        v25._object = ". The expected range is from " + 0x8000000000000000;
        v25._countAndFlagsBits = 0xD00000000000004BLL;
        String.append(_:)(v25);
        Double.write<A>(to:)(&v97, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v25._countAndFlagsBits = 0x73646E6F63657320;
        v25._object = 0xE90000000000002ELL;
        String.append(_:)(v25);
        v112 = v97;
        v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
        *v27 = v112;
        *(v27 + 16) = 0;
        *(v27 + 32) = 0;
        *(v27 + 48) = 1;
        return swift_willThrow(&type metadata for MLCreateError, v26);
      }

      goto LABEL_10;
    }

    v22 = v108;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v97, &demangling cache variable for type metadata for Any?);
    v19 = v105;
    v22 = v108;
    v20 = v106;
  }

  v23 = v109;
  v24 = v110;
LABEL_10:
  if (v24 < 0.5 || v24 > 15.0)
  {
    v111;
    *&v97 = 0;
    *(&v97 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v79._object = "ires a training checkpoint." + 0x8000000000000000;
    v79._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v79);
    Double.write<A>(to:)(&v97, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v79._object = 0xE400000000000000;
    v79._countAndFlagsBits = 544175136;
    String.append(_:)(v79);
    Double.write<A>(to:)(&v97, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v112 = v97;
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v80 = v112;
    *(v80 + 16) = 0;
    *(v80 + 32) = 0;
    *(v80 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v26);
  }

  if (v104)
  {
    v28 = *(v22 + 80);
    v93 = ~v28;
    v94 = a1 + ((v28 + 32) & ~v28);
    v109 = v23 + 7;
    v92 = v28;
    v95 = v28 + 8;
    v96 = *(v22 + 72);
    v101 = a1;
    a1;
    v113 = _swiftEmptyArrayStorage;
    v29 = 0;
    v30 = 0;
    v31 = v103;
    v32 = v107;
    while (1)
    {
      v87 = v30;
      v33 = v94 + v30 * v96;
      outlined init with copy of MLTrainingSessionParameters(v31, v32, type metadata accessor for MLSoundClassifier);
      (*(v108 + 16))(v20, v33, v19);
      v34 = *(v89 + 80);
      v35 = ~*(v89 + 80) & (v34 + 16);
      v114 = (v109 + v35) & 0xFFFFFFFFFFFFFFF8;
      v36 = v93 & (v95 + v114);
      v37 = swift_allocObject(&unk_394018, v88 + v36, v92 | v34 | 7);
      outlined init with take of MLClassifierMetrics(v107, v37 + v35, type metadata accessor for MLSoundClassifier);
      LOBYTE(v35) = v111;
      *(v37 + v114) = v111;
      (*(v108 + 32))(v37 + v36, v106, v105);
      v35;
      v38 = v112;
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:), v37);
      if (v38)
      {
        break;
      }

      v40 = v39;

      MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v40, &demangling cache variable for type metadata for ClassificationDistribution<String>, &unk_346CB8);
      v42 = 0;
      v40;
      v43 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
      v44 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm[2];
      if (v44)
      {
        v90 = 0;
        v91 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
        v45 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm + 5;
        v46 = _swiftEmptyDictionarySingleton;
        do
        {
          v102 = v44;
          v47 = *(v45 - 1);
          v86 = v45;
          v48 = *v45;
          *v45;
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v29, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v46);
          *&v97 = v46;
          v110 = v47;
          v50 = *&v47;
          *&v112 = v48;
          v51 = v46;
          v114 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v48);
          v53 = (v52 & 1) == 0;
          v54 = __OFADD__(v51[2], v53);
          v55 = v51[2] + v53;
          if (v54)
          {
            BUG();
          }

          v56 = v52;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
          v57 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v55);
          v46 = v97;
          if (v57)
          {
            v58 = v112;
            v114 = specialized __RawDictionaryStorage.find<A>(_:)(*&v110, v112);
            LOBYTE(v61) = v61 & 1;
            if ((v56 & 1) != v61)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v58, v61, v59, v60);
              BUG();
            }
          }

          v62 = v112;
          if (v56)
          {

            v63 = v114;
          }

          else
          {
            v63 = v114;
            v46[(v114 >> 6) + 8] |= 1 << v114;
            v64 = v46[6];
            v65 = 16 * v63;
            *(v64 + v65) = v110;
            *(v64 + v65 + 8) = v62;
            *(v46[7] + 8 * v63) = 0;
            v66 = v46[2];

            v54 = __OFADD__(1, v66);
            v67 = v66 + 1;
            if (v54)
            {
              BUG();
            }

            v46[2] = v67;
            v62;
          }

          v68 = v46[7];

          v69 = *(v68 + 8 * v63);
          v54 = __OFADD__(1, v69);
          v70 = v69 + 1;
          if (v54)
          {
            BUG();
          }

          *(v68 + 8 * v63) = v70;
          v62;
          v45 = v86 + 2;
          v29 = specialized OptionSet<>.init();
          v44 = v102 - 1;
        }

        while (v102 != 1);
        v29 = specialized OptionSet<>.init();
        v42 = v90;
        v43 = v91;
      }

      else
      {
        v46 = _swiftEmptyDictionarySingleton;
      }

      v43;
      v46;
      v71 = v42;
      v114 = specialized Sequence.max(by:)(v46);
      v73 = v72;
      v46;
      if (!v73)
      {
        BUG();
      }

      v46;
      v74 = swift_isUniquelyReferenced_nonNull_native(v113);
      *&v112 = v71;
      if (v74)
      {
        v75 = v113;
      }

      else
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113[2] + 1, 1, v113);
      }

      v76 = v75[2];
      v77 = v104;
      if (v75[3] >> 1 <= v76)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v75[3] >= 2uLL, v76 + 1, 1, v75);
        v77 = v104;
      }

      v31 = v103;
      v32 = v107;
      v30 = v87 + 1;
      v75[2] = v76 + 1;
      v78 = 2 * v76;
      v75[v78 + 4] = v114;
      v113 = v75;
      v75[v78 + 5] = v73;
      v19 = v105;
      v20 = v106;
      if (v30 == v77)
      {
        v111;
        v81 = v101;
        goto LABEL_41;
      }
    }

    v113;
    v101;
    v111;

    return _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v29, 0);
  }

  else
  {
    v113 = _swiftEmptyArrayStorage;
    v29 = 0;
    v81 = v111;
LABEL_41:
    v81;
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v29, 0);
    return v113;
  }
}

uint64_t closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v4[4] = a3;
  v4[3] = a2;
  v4[2] = a1;
  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  v4[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:), 0, 0);
}

uint64_t closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];
  v5 = type metadata accessor for MLSoundClassifier(0);
  outlined init with copy of MLTrainingSessionParameters(v3 + *(v5 + 20), v1, type metadata accessor for MLSoundClassifier.Model);
  v6 = specialized Dictionary.subscript.getter(v2, v4);
  v0[7] = v6;
  if (!v6)
  {
    BUG();
  }

  v7 = v6;
  v8 = swift_task_alloc(288);
  v0[8] = v8;
  *v8 = v0;
  v8[1] = closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:);
  v9 = v0[6];
  return ((&async function pointer to specialized Transformer.applied<A>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A>(to:eventHandler:)))(v7, 0, 0);
}

{
  v1 = *(v0 + 48);
  **(v0 + 16) = *(v0 + 80);
  v1;
  return (*(v0 + 8))();
}

{
  *(v0 + 48);
  v1 = *(v0 + 72);
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1)
{
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 64);
  v4 = *v2;
  v4[9] = v1;
  v6;
  v5;
  v7 = v4[6];
  if (v1)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLSoundClassifier.Model);
    v8 = closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:);
  }

  else
  {
    v4[10] = a1;
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLSoundClassifier.Model);
    v8 = closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:);
  }

  return swift_task_switch(v8, 0, 0);
}

unint64_t MLSoundClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLSoundClassifier(0);
  v6 = v0 + v5[7];
  v27._countAndFlagsBits = MLSoundClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = v1 + v5[8];
  v24._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v24._object = v10;
  v11 = v5[9];
  v12 = v8;
  outlined init with copy of MLTrainingSessionParameters(v1 + v11, &v22, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload(&v22, v27._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
  v27._object = MLClassifierMetrics.description.getter();
  v14 = v13;
  v25 = 0xD00000000000001CLL;
  v26 = "odelType" + 0x8000000000000000;
  v15._countAndFlagsBits = v27._countAndFlagsBits;
  v27._countAndFlagsBits = v12;
  v15._object = v12;
  String.append(_:)(v15);
  v23._countAndFlagsBits = 0xD00000000000001ELL;
  v23._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v24._object;
  String.append(_:)(v24);
  v17 = v23._object;
  String.append(_:)(v23);
  v17;
  if (v8 > 1)
  {
    v20 = object;
  }

  else
  {
    v23._countAndFlagsBits = 0xD000000000000020;
    v23._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v18._countAndFlagsBits = v27._object;
    v18._object = v14;
    String.append(_:)(v18);
    v19 = v23._object;
    String.append(_:)(v23);
    object;
    v20 = v14;
    v14 = v19;
  }

  v20;
  v14;
  v27._countAndFlagsBits;
  return v25;
}

NSAttributedString MLSoundClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLSoundClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t closure #1 in static MLSoundClassifier.convertFeatures(_:)(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  (*(v3 + 16))(&v11, v13, v2);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Double> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Double>, &protocol conformance descriptor for MLShapedArray<A>);
  v9 = v12;
  MLShapedArrayProtocol.init<A>(converting:)(&v11, v7, v2, v13, v8);
  return __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
}

uint64_t closure #2 in static MLSoundClassifier.convertFeatures(_:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v5 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
  v6 = v3;
  MLShapedArrayProtocol.init(converting:)(v6, v4, v5);
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
}

uint64_t closure #3 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v2 = v1;
  v10 = *a1;
  v3 = v10;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v5 = swift_allocObject(v4, 40, 7);
  v5[2] = 1;
  v5[3] = 2;
  v5[4] = *(v3 + 16);
  v3;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v7 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v10, v5, &type metadata for Float, v6, &protocol witness table for Float, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
}

uint64_t closure #4 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v16 = v1;
  v2 = *a1;
  v19 = *(*a1 + 16);
  if (v19)
  {
    v18 = _swiftEmptyArrayStorage;
    v3 = 0;
    v17 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v4 = v17;
    v5 = v19;
    v6 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = *(v4 + 8 * v3 + 32);
      v18 = v6;
      if (v6[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1);
        v4 = v17;
        v5 = v19;
        v6 = v18;
      }

      ++v3;
      v9 = v8;
      v6[2] = v7 + 1;
      *(v6 + v7++ + 8) = v9;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v18 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v11 = swift_allocObject(v10, 40, 7);
  v11[2] = 1;
  v11[3] = 2;
  v11[4] = v19;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v18, v11, &type metadata for Float, v12, &protocol witness table for Float, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v16, 0, 1, v14);
}

uint64_t closure #5 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1, float a2)
{
  v19 = v2;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v23 = _swiftEmptyArrayStorage;
    v5 = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = _swiftEmptyArrayStorage;
    v20 = v3;
    v7 = v3 + 32;
    do
    {
      outlined init with copy of Any(v7, v18);
      v22 = static MLSoundClassifier.convertToFloat(_:)(v18, a2);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for Any?);
      v23 = v6;
      v8 = v6[2];
      v9 = v6[3];
      v10 = v8 + 1;
      if (v9 >> 1 <= v8)
      {
        v21 = v8 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v8 + 1, 1);
        v10 = v21;
        v6 = v23;
      }

      v6[2] = v10;
      a2 = v22;
      *(v6 + v8 + 8) = v22;
      v7 += 32;
      --v5;
    }

    while (v5);
    v3 = v20;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v18[0] = v6;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v12 = swift_allocObject(v11, 40, 7);
  v12[2] = 1;
  v12[3] = 2;
  v12[4] = *(v3 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  v15 = v19;
  MLShapedArray.init<A>(scalars:shape:)(v18, v12, &type metadata for Float, v13, &protocol witness table for Float, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
}

float static MLSoundClassifier.convertToFloat(_:)(uint64_t a1, float a2)
{
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, v7, &demangling cache variable for type metadata for Any?);
  if (!v8)
  {
    goto LABEL_16;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, v9, &demangling cache variable for type metadata for Any?);
  if (!swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for Float, 0))
  {
    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for Double, 0))
    {
      v2 = *v10;
      goto LABEL_8;
    }

    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for Int, 0))
    {
      v2 = SLODWORD(v10[0]);
      goto LABEL_8;
    }

    v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, v3, 0))
    {
      v4 = v10[0];
      [v10[0] floatValue];
      v11 = a2;

      goto LABEL_9;
    }

    if (swift_dynamicCast(v10, v9, &type metadata for Any + 8, &type metadata for String, 0))
    {
      v5 = _sSfySfSgxcSyRzlufCSS_Tt0g5(v10[0], v10[1]);
      if ((v5 & 0x100000000) == 0)
      {
        v11 = *&v5;
        goto LABEL_9;
      }

      v2 = NAN;
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_16:
    v11 = NAN;
    goto LABEL_17;
  }

  v2 = *v10;
LABEL_8:
  v11 = v2;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
LABEL_17:
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Any?);
  return v11;
}

uint64_t closure #6 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v15 = v1;
  v2 = *a1;
  v18 = *(*a1 + 16);
  if (v18)
  {
    v17 = _swiftEmptyArrayStorage;
    v3 = 0;
    v16 = v2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v4 = v16;
    v5 = v18;
    v6 = _swiftEmptyArrayStorage;
    v7 = _swiftEmptyArrayStorage[2];
    do
    {
      v8 = 2143289344;
      if (!*(v4 + 8 * v3 + 36))
      {
        v8 = *(v4 + 8 * v3 + 32);
      }

      v17 = v6;
      if (v6[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v6[3] >= 2uLL, v7 + 1, 1);
        v4 = v16;
        v5 = v18;
        v6 = v17;
      }

      ++v3;
      v6[2] = v7 + 1;
      *(v6 + v7++ + 8) = v8;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v17 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v10 = swift_allocObject(v9, 40, 7);
  v10[2] = 1;
  v10[3] = 2;
  v10[4] = v18;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v17, v10, &type metadata for Float, v11, &protocol witness table for Float, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v15, 0, 1, v13);
}

uint64_t closure #7 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v18 = v1;
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v20 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = _swiftEmptyArrayStorage[2];
    v6 = (v2 + 40);
    v19 = v3;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      v20 = v4;
      v9 = v4[3];
      v10 = v5 + 1;
      if (v9 >> 1 <= v5)
      {
        v21 = v8;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9 >= 2, v10, 1);
        v8 = v21;
        v10 = v5 + 1;
        v4 = v20;
      }

      v11 = 2143289344;
      if ((v8 & 1) == 0)
      {
        v11 = LODWORD(v7);
      }

      v4[2] = v10;
      *(v4 + v5 + 8) = v11;
      v6 += 2;
      v5 = v10;
      --v3;
    }

    while (v3);
    v3 = v19;
  }

  v20 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v13 = swift_allocObject(v12, 40, 7);
  v13[2] = 1;
  v13[3] = 2;
  v13[4] = v3;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  MLShapedArray.init<A>(scalars:shape:)(&v20, v13, &type metadata for Float, v14, &protocol witness table for Float, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v18, 0, 1, v16);
}

uint64_t closure #8 in static MLSoundClassifier.convertFeatures(_:)(uint64_t *a1)
{
  v26 = v1;
  v2 = *a1;
  v27 = *(*a1 + 16);
  v3 = v27;
  if (v27)
  {
    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v2 + 32;
    v25 = &type metadata for Any + 8;
    while (1)
    {
      v23 = v3;
      v24 = v5;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5, v20, &demangling cache variable for type metadata for Any?);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v21, &demangling cache variable for type metadata for Any?);
      v31 = 2143289344;
      if (v22)
      {
        break;
      }

LABEL_12:
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for Any?);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, &demangling cache variable for type metadata for Any?);
      v29 = v4;
      v8 = v4[2];
      v9 = v23;
      if (v4[3] >> 1 <= v8)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v8 + 1, 1);
        v4 = v29;
      }

      v4[2] = v8 + 1;
      *(v4 + v8 + 8) = v31;
      v5 = v24 + 32;
      v3 = v9 - 1;
      if (!v3)
      {
        goto LABEL_24;
      }
    }

    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, v28, &demangling cache variable for type metadata for Any?);
    v6 = v25;
    if (swift_dynamicCast(v30, v28, v25, &type metadata for Float, 0))
    {
      v7 = *v30;
    }

    else if (swift_dynamicCast(v30, v28, v6, &type metadata for Double, 0))
    {
      v7 = *v30;
    }

    else if (swift_dynamicCast(v30, v28, v6, &type metadata for Int, 0))
    {
      v7 = SLODWORD(v30[0]);
    }

    else
    {
      v10 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      if (swift_dynamicCast(v30, v28, v6, v10, 0))
      {
        v11 = v30[0];
        [v30[0] floatValue];
        v31 = 2143289344;

        goto LABEL_11;
      }

      if (!swift_dynamicCast(v30, v28, v6, &type metadata for String, 0))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        v31 = 2143289344;
        goto LABEL_12;
      }

      v12 = _sSfySfSgxcSyRzlufCSS_Tt0g5(v30[0], v30[1]);
      if ((v12 & 0x100000000) == 0)
      {
        v31 = v12;
        goto LABEL_11;
      }

      v7 = NAN;
    }

    v31 = LODWORD(v7);
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    goto LABEL_12;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_24:
  v20[0] = v4;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v14 = swift_allocObject(v13, 40, 7);
  v14[2] = 1;
  v14[3] = 2;
  v14[4] = v27;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  v17 = v26;
  MLShapedArray.init<A>(scalars:shape:)(v20, v14, &type metadata for Float, v15, &protocol witness table for Float, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  return __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
}

unint64_t _sSfySfSgxcSyRzlufCSS_Tt0g5(unint64_t a1, uint64_t a2)
{
  v15[0] = 0;
  v13[2] = v15;
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in closure #1 in Float.init<A>(_:), v13, a1, a2, &type metadata for Bool);
    a2;
    v7 = v14[0];
  }

  else
  {
    v3 = alloca(32);
    v4 = alloca(32);
    v13[0] = partial apply for closure #1 in closure #1 in Float.init<A>(_:);
    v13[1] = v13;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v14[0] = a1;
      v14[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = (a1 > 0x20u || (v8 = 0x100003E01, !_bittest64(&v8, a1))) && (v9 = _swift_stdlib_strtof_clocale(v14, v15)) != 0 && *v9 == 0;
      a2;
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v6 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter(a1, a2);
        v6 = v12;
      }

      v7 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(v5, v6, _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_Sb_TG5TA_0);
      a2;
    }
  }

  v10 = 0;
  if (v7)
  {
    v10 = v15[0];
  }

  return (((v7 & 1) == 0) << 32) | v10;
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier)
  {
    v1 = type metadata accessor for MLSoundClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier = result;
  }

  return result;
}

uint64_t sub_244351()
{
  v1 = type metadata accessor for MLSoundClassifier.Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v18 = *(v2 + 64);
  v5 = v4 + v0;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v6);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v10 = *v5;
LABEL_6:
    v10;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v4 + v0, v8))
    {
      case 0u:
      case 1u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 8))(v4 + v0, v9);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        v10 = *(v5 + 40);
        goto LABEL_6;
      case 4u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 8))(v4 + v0, v17);
        v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v5 + *(v19 + 48) + 8);
        v10 = *(v5 + *(v19 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v11 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(v5 + v11 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v5 + v11));
  }

  v12 = *(v1 + 20) + v5;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v12, v13) == 1)
  {
    v14 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
  (*(*(v15 - 8) + 8))(v12, v15);
  return swift_deallocObject(v0, v18 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLSoundClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSoundClassifier.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSoundClassifier.init(checkpoint:)(a1);
}

uint64_t sub_24456D()
{
  v1 = type metadata accessor for MLSoundClassifier(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v59 = *(v2 + 64);
  v65 = type metadata accessor for URL(0);
  v5 = *(v65 - 8);
  v57 = *(v5 + 80);
  v66 = v5;
  v56 = *(v5 + 64);
  v58 = v4;
  v55 = v0;
  v6 = v4 + v0;
  v7 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    v8 = type metadata accessor for Date(0);
    (*(*(v8 - 8) + 8))(v6, v8);

    *(v6 + *(v7 + 24));
  }

  v64 = v6;
  v9 = v6 + v1[5];
  v10 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v13 = *v9;
LABEL_8:
    v13;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v9, v12))
    {
      case 0u:
      case 1u:
        (*(v66 + 8))(v9, v65);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v9, *(v9 + 8));
        *(v9 + 24);
        v13 = *(v9 + 40);
        goto LABEL_8;
      case 4u:
        v24 = type metadata accessor for DataFrame(0);
        (*(*(v24 - 8) + 8))(v9, v24);
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v9 + *(v25 + 48) + 8);
        v13 = *(v9 + *(v25 + 64) + 8);
        goto LABEL_8;
      default:
        break;
    }
  }

  v14 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v15 = *(v14 + 28);
  if (*(v9 + v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v9 + v15));
  }

  v16 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20) + v9;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v18 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v16, v17) == 1)
  {
    v18 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
  (*(*(v19 - 8) + 8))(v16, v19);

  v61 = v1;
  v20 = (v64 + v1[7]);
  v21 = swift_getEnumCaseMultiPayload(v20, v10);
  if (v21 == 2)
  {
    *v20;
    v22 = v64;
  }

  else
  {
    v22 = v64;
    if (v21 == 1)
    {
      v23 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v20, v23))
      {
        case 0u:
        case 1u:
          (*(v66 + 8))(v20, v65);
          break;
        case 2u:
          v29 = *v20;
          goto LABEL_23;
        case 3u:
          outlined consume of Result<_DataTable, Error>(*v20, *(v20 + 2));
          v20[3];
          v29 = v20[5];
          goto LABEL_23;
        case 4u:
          v26 = type metadata accessor for DataFrame(0);
          (*(*(v26 - 8) + 8))(v20, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          *(v20 + *(v27 + 48) + 8);
          v28 = *(v27 + 64);
          v22 = v64;
          v29 = *(v20 + v28 + 8);
LABEL_23:
          v29;
          break;
        default:
          break;
      }
    }
  }

  v30 = *(v14 + 28);
  if (*(v20 + v30 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v20 + v30));
  }

  v31 = (v22 + v1[8]);
  v32 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v33 = swift_getEnumCaseMultiPayload(v31, v32);
  switch(v33)
  {
    case 2:
      *v31;
      break;
    case 1:
      v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v62 = v3;
      v36 = &v31[*(v60 + 20)];
      v37 = type metadata accessor for DataFrame(0);
      v38 = *(*(v37 - 8) + 8);
      v39 = v36;
      v3 = v62;
      v38(v39, v37);
      v40 = v37;
      v22 = v64;
      v38(&v31[*(v60 + 24)], v40);
      v1 = v61;
      break;
    case 0:
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v31, v34) == 1)
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v35);
      (*(*(v41 - 8) + 8))(v31, v41);
      break;
  }

  v42 = (v1[9] + v22);
  v43 = swift_getEnumCaseMultiPayload(v42, v32);
  switch(v43)
  {
    case 2:
      *v42;
      break;
    case 1:
      v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v47 = &v42[*(v46 + 20)];
      v63 = v3;
      v48 = type metadata accessor for DataFrame(0);
      v49 = *(*(v48 - 8) + 8);
      v49(v47, v48);
      v50 = v48;
      v3 = v63;
      v49(&v42[*(v46 + 24)], v50);
      break;
    case 0:
      v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v42, v44) == 1)
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v51 = __swift_instantiateConcreteTypeFromMangledName(v45);
      (*(*(v51 - 8) + 8))(v42, v51);
      break;
  }

  v52 = (v59 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + v57 + 8) & ~v57;
  *(v55 + v52);
  (*(v66 + 8))(v55 + v53, v65);
  return swift_deallocObject(v55, v53 + v56, v57 | v3 | 7);
}

uint64_t partial apply for closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSoundClassifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(type metadata accessor for URL(0) - 8) + 80);
  v7 = (v5 + v6 + 8) & ~v6;
  v8 = *(v1 + v5);
  v9 = swift_task_alloc(96);
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSoundClassifier.predictions(from:overlapFactor:predictionTimeWindowSize:)(a1, v1 + v4, v8, v1 + v7);
}

id sub_244B37()
{
  v1 = v0;
  result = MLSoundClassifier.model.getter();
  *v1 = result;
  return result;
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *__src;
    *__dst = *__src;
    v9 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a3;
    v6 = type metadata accessor for TrainingTablePrinter(0);
    v118 = v5;
    if (__swift_getEnumTagSinglePayload(__src, 1, v6))
    {
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    else
    {
      v10 = type metadata accessor for Date(0);
      (*(*(v10 - 8) + 16))(__dst, __src, v10);
      v11 = *(v6 + 20);
      v12 = *&__src[v11];
      *&__dst[v11] = v12;
      v13 = *(v6 + 24);
      v14 = *&__src[v13];
      *&__dst[v13] = v14;
      v12;
      LOBYTE(v12) = v14;
      v5 = v118;
      v12;
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
    }

    v15 = v5[5];
    v16 = &__dst[v15];
    v17 = &__src[v15];
    v18 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v18);
    v126 = v18;
    if (EnumCaseMultiPayload == 2)
    {
      v25 = *v17;
      *v16 = *v17;
      v25;
      swift_storeEnumTagMultiPayload(v16, v18, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v20 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v17, v20))
      {
        case 0u:
          v21 = type metadata accessor for URL(0);
          (*(*(v21 - 8) + 16))(v16, v17, v21);
          v22 = v16;
          v23 = v20;
          v24 = 0;
          goto LABEL_17;
        case 1u:
          v40 = type metadata accessor for URL(0);
          (*(*(v40 - 8) + 16))(v16, v17, v40);
          v114 = 1;
          goto LABEL_16;
        case 2u:
          v34 = *v17;
          *v16 = *v17;
          v34;
          v114 = 2;
          goto LABEL_16;
        case 3u:
          v35 = *v17;
          v124 = v20;
          v36 = v17[8];
          outlined copy of Result<_DataTable, Error>(*v17, v36);
          *v16 = v35;
          v16[8] = v36;
          *(v16 + 2) = *(v17 + 2);
          v37 = *(v17 + 3);
          *(v16 + 3) = v37;
          *(v16 + 4) = *(v17 + 4);
          v38 = *(v17 + 5);
          *(v16 + 5) = v38;
          v39 = *(v17 + 4);
          *(v16 + 3) = *(v17 + 3);
          *(v16 + 4) = v39;
          v16[80] = v17[80];
          v37;
          LOBYTE(v37) = v38;
          v18 = v126;
          v37;
          v24 = 3;
          v22 = v16;
          v23 = v124;
          goto LABEL_17;
        case 4u:
          v26 = type metadata accessor for DataFrame(0);
          (*(*(v26 - 8) + 16))(v16, v17, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v28 = v27[12];
          *&v16[v28] = *&v17[v28];
          v29 = *&v17[v28 + 8];
          *&v16[v28 + 8] = v29;
          v30 = v27[16];
          *&v16[v30] = *&v17[v30];
          v31 = *&v17[v30 + 8];
          *&v16[v30 + 8] = v31;
          v32 = v27[20];
          v16[v32 + 32] = v17[v32 + 32];
          v33 = *&v17[v32];
          *&v16[v32 + 16] = *&v17[v32 + 16];
          *&v16[v32] = v33;
          v29;
          LOBYTE(v29) = v31;
          v18 = v126;
          v29;
          v114 = 4;
LABEL_16:
          v24 = v114;
          v22 = v16;
          v23 = v20;
LABEL_17:
          swift_storeEnumTagMultiPayload(v22, v23, v24);
          swift_storeEnumTagMultiPayload(v16, v18, 1);
          break;
      }
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    v41 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    *&v16[v41[5]] = *&v17[v41[5]];
    *&v16[v41[6]] = *&v17[v41[6]];
    v42 = v41[7];
    v43 = &v16[v42];
    v44 = &v17[v42];
    v45 = *&v17[v42 + 24];
    v125 = __dst;
    if (v45)
    {
      *(v43 + 3) = v45;
      (**(v45 - 8))(v43, v44);
    }

    else
    {
      v46 = *v44;
      *(v43 + 1) = *(v44 + 1);
      *v43 = v46;
    }

    v47 = v41[8];
    v16[v47 + 8] = v17[v47 + 8];
    *&v16[v47] = *&v17[v47];
    *&v16[v41[9]] = *&v17[v41[9]];
    v48 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
    v49 = &v16[v48];
    v50 = &v17[v48];
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v52 = swift_getEnumCaseMultiPayload(v50, v51);
    v53 = v52 == 1;
    v54 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v52 == 1)
    {
      v54 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v55 = __swift_instantiateConcreteTypeFromMangledName(v54);
    (*(*(v55 - 8) + 16))(v49, v50, v55);
    swift_storeEnumTagMultiPayload(v49, v51, v53);
    v56 = v118[6];
    v57 = *&__src[v56];
    v58 = v125;
    *&v125[v56] = v57;
    v59 = v118[7];
    v60 = &v125[v59];
    v61 = &__src[v59];
    v57;
    v62 = v126;
    v63 = swift_getEnumCaseMultiPayload(v61, v126);
    if (v63 == 2)
    {
      v65 = *v61;
      *v60 = *v61;
      v65;
      swift_storeEnumTagMultiPayload(v60, v126, 2);
    }

    else if (v63 == 1)
    {
      v121 = type metadata accessor for MLSoundClassifier.DataSource(0);
      v116 = swift_getEnumCaseMultiPayload(v61, v121);
      switch(v116)
      {
        case 0u:
        case 1u:
          v64 = type metadata accessor for URL(0);
          (*(*(v64 - 8) + 16))(v60, v61, v64);
          goto LABEL_34;
        case 2u:
          v69 = *v61;
          *v60 = *v61;
          goto LABEL_33;
        case 3u:
          v74 = *v61;
          v75 = v61[8];
          outlined copy of Result<_DataTable, Error>(*v61, v75);
          *v60 = v74;
          v60[8] = v75;
          v62 = v126;
          *(v60 + 2) = *(v61 + 2);
          v69 = *(v61 + 3);
          *(v60 + 3) = v69;
          *(v60 + 4) = *(v61 + 4);
          v71 = *(v61 + 5);
          *(v60 + 5) = v71;
          v76 = *(v61 + 4);
          *(v60 + 3) = *(v61 + 3);
          *(v60 + 4) = v76;
          v60[80] = v61[80];
          goto LABEL_32;
        case 4u:
          v66 = type metadata accessor for DataFrame(0);
          (*(*(v66 - 8) + 16))(v60, v61, v66);
          v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v68 = v67[12];
          *&v60[v68] = *&v61[v68];
          v69 = *&v61[v68 + 8];
          *&v60[v68 + 8] = v69;
          v70 = v67[16];
          *&v60[v70] = *&v61[v70];
          v71 = *&v61[v70 + 8];
          *&v60[v70 + 8] = v71;
          v72 = v67[20];
          v60[v72 + 32] = v61[v72 + 32];
          v73 = *&v61[v72];
          *&v60[v72 + 16] = *&v61[v72 + 16];
          *&v60[v72] = v73;
LABEL_32:
          v69;
          LOBYTE(v69) = v71;
          v58 = v125;
LABEL_33:
          v69;
LABEL_34:
          swift_storeEnumTagMultiPayload(v60, v121, v116);
          swift_storeEnumTagMultiPayload(v60, v62, 1);
          break;
        case 5u:
          JUMPOUT(0x245390);
      }
    }

    else
    {
      memcpy(v60, v61, *(*(v126 - 8) + 64));
    }

    *&v60[v41[5]] = *&v61[v41[5]];
    *&v60[v41[6]] = *&v61[v41[6]];
    v77 = v41[7];
    v78 = &v60[v77];
    v79 = &v61[v77];
    v80 = *&v61[v77 + 24];
    if (v80)
    {
      *(v78 + 3) = v80;
      (**(v80 - 8))(v78, v79);
    }

    else
    {
      v81 = *v79;
      *(v78 + 1) = *(v79 + 1);
      *v78 = v81;
    }

    v82 = v41[8];
    v60[v82 + 8] = v61[v82 + 8];
    *&v60[v82] = *&v61[v82];
    *&v60[v41[9]] = *&v61[v41[9]];
    v83 = v118;
    v84 = v118[8];
    v85 = &v58[v84];
    v86 = &__src[v84];
    v127 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v87 = swift_getEnumCaseMultiPayload(v86, v127);
    if (v87 == 2)
    {
      v92 = *v86;
      swift_errorRetain(*v86);
      *v85 = v92;
    }

    else if (v87 == 1)
    {
      *v85 = *v86;
      v117 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v88 = *(v117 + 20);
      v115 = &v85[v88];
      v89 = type metadata accessor for DataFrame(0);
      v122 = v85;
      v90 = *(*(v89 - 8) + 16);
      v91 = &v86[v88];
      v83 = v118;
      v90(v115, v91, v89);
      v90(&v122[*(v117 + 24)], &v86[*(v117 + 24)], v89);
      v85 = v122;
    }

    else
    {
      v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v93 = swift_getEnumCaseMultiPayload(v86, v123);
      v94 = v93 == 1;
      v95 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v93 == 1)
      {
        v95 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v96 = __swift_instantiateConcreteTypeFromMangledName(v95);
      (*(*(v96 - 8) + 16))(v85, v86, v96);
      swift_storeEnumTagMultiPayload(v85, v123, v94);
    }

    swift_storeEnumTagMultiPayload(v85, v127, v87);
    v97 = v83[9];
    v98 = &v125[v97];
    v99 = &__src[v97];
    v100 = swift_getEnumCaseMultiPayload(&__src[v97], v127);
    if (v100 == 2)
    {
      v107 = *v99;
      swift_errorRetain(*v99);
      *v98 = v107;
      v9 = v125;
      swift_storeEnumTagMultiPayload(v98, v127, 2);
    }

    else if (v100 == 1)
    {
      *v98 = *v99;
      v101 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v102 = *(v101 + 20);
      v120 = &v98[v102];
      v103 = type metadata accessor for DataFrame(0);
      v104 = &v99[v102];
      v105 = *(*(v103 - 8) + 16);
      v105(v120, v104, v103);
      v106 = *(v101 + 24);
      v9 = v125;
      v105(&v98[v106], &v99[v106], v103);
      swift_storeEnumTagMultiPayload(v98, v127, 1);
    }

    else
    {
      v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v109 = swift_getEnumCaseMultiPayload(v99, v108);
      v110 = v109 == 1;
      v111 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v109 == 1)
      {
        v111 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v112 = __swift_instantiateConcreteTypeFromMangledName(v111);
      (*(*(v112 - 8) + 16))(v98, v99, v112);
      swift_storeEnumTagMultiPayload(v98, v108, v110);
      swift_storeEnumTagMultiPayload(v98, v127, 0);
      return v125;
    }
  }

  return v9;
}

uint64_t destroy for MLSoundClassifier(uint64_t a1, int *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    v5 = type metadata accessor for Date(0);
    (*(*(v5 - 8) + 8))(a1, v5);

    *(a1 + *(v4 + 24));
  }

  v6 = a1 + a2[5];
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v7);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v11 = *v6;
LABEL_8:
    v11;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v6, v9))
    {
      case 0u:
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 8))(v6, v10);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        v11 = *(v6 + 40);
        goto LABEL_8;
      case 4u:
        v43 = type metadata accessor for DataFrame(0);
        (*(*(v43 - 8) + 8))(v6, v43);
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v6 + *(v44 + 48) + 8);
        v11 = *(v6 + *(v44 + 64) + 8);
        goto LABEL_8;
      default:
        break;
    }
  }

  v12 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v13 = *(v12 + 28);
  if (*(v6 + v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v13));
  }

  v14 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20) + v6;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v16 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v14, v15) == 1)
  {
    v16 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
  (*(*(v17 - 8) + 8))(v14, v17);

  v18 = v3 + a2[7];
  v19 = swift_getEnumCaseMultiPayload(v18, v7);
  if (v19 == 2)
  {
LABEL_17:
    v22 = *v18;
LABEL_18:
    v22;
  }

  else if (v19 == 1)
  {
    v20 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v18, v20))
    {
      case 0u:
      case 1u:
        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 8))(v18, v21);
        break;
      case 2u:
        goto LABEL_17;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v18, *(v18 + 8));
        *(v18 + 24);
        v22 = *(v18 + 40);
        goto LABEL_18;
      case 4u:
        v45 = type metadata accessor for DataFrame(0);
        (*(*(v45 - 8) + 8))(v18, v45);
        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v18 + *(v46 + 48) + 8);
        v22 = *(v18 + *(v46 + 64) + 8);
        goto LABEL_18;
      default:
        break;
    }
  }

  v23 = *(v12 + 28);
  if (*(v18 + v23 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v23 + v18));
  }

  v24 = (v3 + a2[8]);
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v26 = swift_getEnumCaseMultiPayload(v24, v25);
  switch(v26)
  {
    case 2:
      *v24;
      break;
    case 1:
      v48 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v29 = &v24[*(v48 + 20)];
      v30 = type metadata accessor for DataFrame(0);
      v47 = v3;
      v31 = *(*(v30 - 8) + 8);
      v32 = v29;
      v2 = a2;
      v31(v32, v30);
      v31(&v24[*(v48 + 24)], v30);
      v3 = v47;
      break;
    case 0:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v24, v27) == 1)
      {
        v28 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v28 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledName(v28);
      (*(*(v33 - 8) + 8))(v24, v33);
      break;
  }

  v34 = (v2[9] + v3);
  result = swift_getEnumCaseMultiPayload(v34, v25);
  switch(result)
  {
    case 2:
      return *v34;
    case 1:
      v38 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v39 = v34 + *(v38 + 20);
      v40 = type metadata accessor for DataFrame(0);
      v41 = *(*(v40 - 8) + 8);
      v41(v39, v40);
      return (v41)(v34 + *(v38 + 24), v40);
    case 0:
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v34, v36) == 1)
      {
        v37 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v37 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v42 = __swift_instantiateConcreteTypeFromMangledName(v37);
      return (*(*(v42 - 8) + 8))(v34, v42);
  }

  return result;
}

char *initializeWithCopy for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v3 = __src;
  v5 = type metadata accessor for TrainingTablePrinter(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v5))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = type metadata accessor for Date(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    v8 = *(v5 + 20);
    v9 = *&__src[v8];
    *&__dst[v8] = v9;
    v10 = *(v5 + 24);
    v11 = *&__src[v10];
    *&__dst[v10] = v11;
    v9;
    LOBYTE(v9) = v11;
    v3 = __src;
    v9;
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v5);
  }

  v12 = a3[5];
  v118 = __dst;
  v13 = &__dst[v12];
  v14 = &v3[v12];
  v15 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v14, v15);
  v125 = v15;
  if (EnumCaseMultiPayload == 2)
  {
    v22 = *v14;
    *v13 = *v14;
    v22;
    swift_storeEnumTagMultiPayload(v13, v15, 2);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v17 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v14, v17))
    {
      case 0u:
        v18 = type metadata accessor for URL(0);
        (*(*(v18 - 8) + 16))(v13, v14, v18);
        v19 = v13;
        v20 = v17;
        v21 = 0;
        goto LABEL_15;
      case 1u:
        v37 = type metadata accessor for URL(0);
        (*(*(v37 - 8) + 16))(v13, v14, v37);
        v114 = 1;
        goto LABEL_14;
      case 2u:
        v31 = *v14;
        *v13 = *v14;
        v31;
        v114 = 2;
        goto LABEL_14;
      case 3u:
        v32 = *v14;
        v33 = v14[8];
        outlined copy of Result<_DataTable, Error>(*v14, v33);
        *v13 = v32;
        v13[8] = v33;
        *(v13 + 2) = *(v14 + 2);
        v34 = *(v14 + 3);
        *(v13 + 3) = v34;
        *(v13 + 4) = *(v14 + 4);
        v35 = *(v14 + 5);
        *(v13 + 5) = v35;
        v36 = *(v14 + 4);
        *(v13 + 3) = *(v14 + 3);
        *(v13 + 4) = v36;
        v13[80] = v14[80];
        v34;
        LOBYTE(v34) = v35;
        v15 = v125;
        v34;
        v114 = 3;
        goto LABEL_14;
      case 4u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(v13, v14, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v25 = v24[12];
        *&v13[v25] = *&v14[v25];
        v26 = *&v14[v25 + 8];
        *&v13[v25 + 8] = v26;
        v27 = v24[16];
        *&v13[v27] = *&v14[v27];
        v28 = *&v14[v27 + 8];
        *&v13[v27 + 8] = v28;
        v29 = v24[20];
        v13[v29 + 32] = v14[v29 + 32];
        v30 = *&v14[v29];
        *&v13[v29 + 16] = *&v14[v29 + 16];
        *&v13[v29] = v30;
        v26;
        LOBYTE(v26) = v28;
        v15 = v125;
        v26;
        v114 = 4;
LABEL_14:
        v21 = v114;
        v19 = v13;
        v20 = v17;
LABEL_15:
        swift_storeEnumTagMultiPayload(v19, v20, v21);
        swift_storeEnumTagMultiPayload(v13, v15, 1);
        break;
    }
  }

  else
  {
    memcpy(v13, v14, *(*(v15 - 8) + 64));
  }

  v38 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v13[v38[5]] = *&v14[v38[5]];
  *&v13[v38[6]] = *&v14[v38[6]];
  v39 = v38[7];
  v40 = &v13[v39];
  v41 = &v14[v39];
  v42 = *&v14[v39 + 24];
  if (v42)
  {
    *(v40 + 3) = v42;
    (**(v42 - 8))(v40, v41);
  }

  else
  {
    v43 = *v41;
    *(v40 + 1) = *(v41 + 1);
    *v40 = v43;
  }

  v44 = v38[8];
  v13[v44 + 8] = v14[v44 + 8];
  *&v13[v44] = *&v14[v44];
  *&v13[v38[9]] = *&v14[v38[9]];
  v45 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v46 = &v13[v45];
  v47 = &v14[v45];
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v49 = swift_getEnumCaseMultiPayload(v47, v48);
  v50 = v49 == 1;
  v51 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v49 == 1)
  {
    v51 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v52 = __swift_instantiateConcreteTypeFromMangledName(v51);
  (*(*(v52 - 8) + 16))(v46, v47, v52);
  swift_storeEnumTagMultiPayload(v46, v48, v50);
  v53 = a3[6];
  v54 = __src;
  v55 = *&__src[v53];
  *&v118[v53] = v55;
  v56 = a3[7];
  v57 = &v118[v56];
  v58 = &__src[v56];
  v55;
  v59 = v125;
  v60 = swift_getEnumCaseMultiPayload(v58, v125);
  if (v60 == 2)
  {
    v62 = *v58;
    *v57 = *v58;
    v62;
    swift_storeEnumTagMultiPayload(v57, v125, 2);
  }

  else if (v60 == 1)
  {
    v119 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v116 = swift_getEnumCaseMultiPayload(v58, v119);
    switch(v116)
    {
      case 0u:
      case 1u:
        v61 = type metadata accessor for URL(0);
        (*(*(v61 - 8) + 16))(v57, v58, v61);
        goto LABEL_32;
      case 2u:
        v66 = *v58;
        *v57 = *v58;
        goto LABEL_31;
      case 3u:
        v71 = *v58;
        v72 = v58[8];
        outlined copy of Result<_DataTable, Error>(*v58, v72);
        *v57 = v71;
        v57[8] = v72;
        v54 = __src;
        *(v57 + 2) = *(v58 + 2);
        v66 = *(v58 + 3);
        *(v57 + 3) = v66;
        *(v57 + 4) = *(v58 + 4);
        v68 = *(v58 + 5);
        *(v57 + 5) = v68;
        v73 = *(v58 + 4);
        *(v57 + 3) = *(v58 + 3);
        *(v57 + 4) = v73;
        v57[80] = v58[80];
        goto LABEL_30;
      case 4u:
        v63 = type metadata accessor for DataFrame(0);
        (*(*(v63 - 8) + 16))(v57, v58, v63);
        v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v65 = v64[12];
        *&v57[v65] = *&v58[v65];
        v66 = *&v58[v65 + 8];
        *&v57[v65 + 8] = v66;
        v67 = v64[16];
        *&v57[v67] = *&v58[v67];
        v68 = *&v58[v67 + 8];
        *&v57[v67 + 8] = v68;
        v69 = v64[20];
        v57[v69 + 32] = v58[v69 + 32];
        v70 = *&v58[v69];
        *&v57[v69 + 16] = *&v58[v69 + 16];
        *&v57[v69] = v70;
LABEL_30:
        v66;
        LOBYTE(v66) = v68;
        v59 = v125;
LABEL_31:
        v66;
LABEL_32:
        swift_storeEnumTagMultiPayload(v57, v119, v116);
        swift_storeEnumTagMultiPayload(v57, v59, 1);
        break;
    }
  }

  else
  {
    memcpy(v57, v58, *(*(v125 - 8) + 64));
  }

  *&v57[v38[5]] = *&v58[v38[5]];
  *&v57[v38[6]] = *&v58[v38[6]];
  v74 = v38[7];
  v75 = &v57[v74];
  v76 = &v58[v74];
  v77 = *&v58[v74 + 24];
  if (v77)
  {
    *(v75 + 3) = v77;
    (**(v77 - 8))(v75, v76);
  }

  else
  {
    v78 = *v76;
    *(v75 + 1) = *(v76 + 1);
    *v75 = v78;
  }

  v79 = v38[8];
  v57[v79 + 8] = v58[v79 + 8];
  *&v57[v79] = *&v58[v79];
  *&v57[v38[9]] = *&v58[v38[9]];
  v80 = a3[8];
  v81 = v118;
  v82 = &v118[v80];
  v83 = &v54[v80];
  v126 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v84 = swift_getEnumCaseMultiPayload(v83, v126);
  if (v84 == 2)
  {
    v90 = *v83;
    swift_errorRetain(v90);
    *v82 = v90;
  }

  else if (v84 == 1)
  {
    *v82 = *v83;
    v120 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v85 = *(v120 + 20);
    v117 = &v82[v85];
    v86 = type metadata accessor for DataFrame(0);
    v87 = &v83[v85];
    v88 = *(*(v86 - 8) + 16);
    v88(v117, v87, v86);
    v89 = v86;
    v54 = __src;
    v88(&v82[*(v120 + 24)], &v83[*(v120 + 24)], v89);
    v81 = v118;
  }

  else
  {
    v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v91 = swift_getEnumCaseMultiPayload(v83, v121);
    v92 = v91 == 1;
    v93 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v91 == 1)
    {
      v93 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v94 = __swift_instantiateConcreteTypeFromMangledName(v93);
    (*(*(v94 - 8) + 16))(v82, v83, v94);
    swift_storeEnumTagMultiPayload(v82, v121, v92);
    v54 = __src;
  }

  swift_storeEnumTagMultiPayload(v82, v126, v84);
  v95 = a3[9];
  v96 = &v81[v95];
  v97 = &v54[v95];
  v98 = swift_getEnumCaseMultiPayload(v97, v126);
  if (v98 == 2)
  {
    v103 = *v97;
    swift_errorRetain(*v97);
    *v96 = v103;
    v115 = 2;
    goto LABEL_47;
  }

  if (v98 == 1)
  {
    *v96 = *v97;
    v123 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v99 = v97;
    v100 = *(v123 + 20);
    v101 = type metadata accessor for DataFrame(0);
    v102 = *(*(v101 - 8) + 16);
    v102(&v96[v100], &v99[v100], v101);
    v102(&v96[*(v123 + 24)], &v99[*(v123 + 24)], v101);
    v81 = v118;
    v115 = 1;
LABEL_47:
    v104 = v115;
    v105 = v96;
    v106 = v126;
    goto LABEL_51;
  }

  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v108 = swift_getEnumCaseMultiPayload(v97, v107);
  v109 = v97;
  v110 = v108 == 1;
  v111 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
  if (v108 == 1)
  {
    v111 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
  }

  v112 = __swift_instantiateConcreteTypeFromMangledName(v111);
  (*(*(v112 - 8) + 16))(v96, v109, v112);
  swift_storeEnumTagMultiPayload(v96, v107, v110);
  v105 = v96;
  v106 = v126;
  v104 = 0;
LABEL_51:
  swift_storeEnumTagMultiPayload(v105, v106, v104);
  return v81;
}

char *assignWithCopy for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v4 = type metadata accessor for TrainingTablePrinter(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v4);
  v6 = __swift_getEnumTagSinglePayload(__src, 1, v4);
  if (EnumTagSinglePayload)
  {
    if (!v6)
    {
      v7 = type metadata accessor for Date(0);
      (*(*(v7 - 8) + 16))(__dst, __src, v7);
      v8 = *(v4 + 20);
      v9 = *&__src[v8];
      *&__dst[v8] = v9;
      v10 = *(v4 + 24);
      v11 = *&__src[v10];
      *&__dst[v10] = v11;
      v9;
      v11;
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for TrainingTablePrinter);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    memcpy(__dst, __src, *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  v24 = type metadata accessor for Date(0);
  (*(*(v24 - 8) + 24))(__dst, __src, v24);
  v25 = *(v4 + 20);
  v26 = *&__src[v25];
  v27 = *&__dst[v25];
  *&__dst[v25] = v26;
  v26;

  v28 = *(v4 + 24);
  v29 = *&__src[v28];
  v30 = *&__dst[v28];
  *&__dst[v28] = v29;
  v29;
  v30;
LABEL_7:
  v13 = a3[5];
  v14 = &__dst[v13];
  v15 = &__src[v13];
  v132 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v16 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v16);
    if (EnumCaseMultiPayload == 2)
    {
      v23 = *v15;
      *v14 = *v15;
      v23;
      swift_storeEnumTagMultiPayload(v14, v16, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v18 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v15, v18))
      {
        case 0u:
          v19 = type metadata accessor for URL(0);
          (*(*(v19 - 8) + 16))(v14, v15, v19);
          v20 = v14;
          v21 = v18;
          v22 = 0;
          goto LABEL_20;
        case 1u:
          v45 = type metadata accessor for URL(0);
          (*(*(v45 - 8) + 16))(v14, v15, v45);
          v123 = 1;
          goto LABEL_19;
        case 2u:
          v39 = *v15;
          *v14 = *v15;
          v39;
          v123 = 2;
          goto LABEL_19;
        case 3u:
          v40 = *v15;
          v133 = v18;
          v41 = v15[8];
          outlined copy of Result<_DataTable, Error>(*v15, v41);
          *v14 = v40;
          v14[8] = v41;
          *(v14 + 2) = *(v15 + 2);
          v42 = *(v15 + 3);
          *(v14 + 3) = v42;
          *(v14 + 4) = *(v15 + 4);
          v43 = *(v15 + 5);
          *(v14 + 5) = v43;
          v44 = *(v15 + 4);
          *(v14 + 3) = *(v15 + 3);
          *(v14 + 4) = v44;
          v14[80] = v15[80];
          v42;
          v43;
          v22 = 3;
          v20 = v14;
          v21 = v133;
          goto LABEL_20;
        case 4u:
          v31 = type metadata accessor for DataFrame(0);
          (*(*(v31 - 8) + 16))(v14, v15, v31);
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v33 = v32[12];
          *&v14[v33] = *&v15[v33];
          v34 = *&v15[v33 + 8];
          *&v14[v33 + 8] = v34;
          v35 = v32[16];
          *&v14[v35] = *&v15[v35];
          v36 = *&v15[v35 + 8];
          *&v14[v35 + 8] = v36;
          v37 = v32[20];
          v14[v37 + 32] = v15[v37 + 32];
          v38 = *&v15[v37];
          *&v14[v37 + 16] = *&v15[v37 + 16];
          *&v14[v37] = v38;
          v34;
          v36;
          v123 = 4;
LABEL_19:
          v22 = v123;
          v20 = v14;
          v21 = v18;
LABEL_20:
          swift_storeEnumTagMultiPayload(v20, v21, v22);
          swift_storeEnumTagMultiPayload(v14, v16, 1);
          break;
      }
    }

    else
    {
      memcpy(v14, v15, *(*(v16 - 8) + 64));
    }
  }

  v46 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v14[v46[5]] = *&v15[v46[5]];
  *&v14[v46[6]] = *&v15[v46[6]];
  v47 = v46[7];
  v48 = &v14[v47];
  v49 = &v15[v47];
  v50 = *&v15[v47 + 24];
  if (*&v14[v47 + 24])
  {
    if (v50)
    {
      __swift_assign_boxed_opaque_existential_0(&v14[v47], &v15[v47]);
      goto LABEL_28;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v14[v47]);
  }

  else if (v50)
  {
    *(v48 + 3) = v50;
    (**(v50 - 8))(v48, v49);
    goto LABEL_28;
  }

  v51 = *v49;
  *(v48 + 1) = *(v49 + 1);
  *v48 = v51;
LABEL_28:
  v52 = v46[8];
  v14[v52 + 8] = v15[v52 + 8];
  *&v14[v52] = *&v15[v52];
  *&v14[v46[9]] = *&v15[v46[9]];
  v53 = type metadata accessor for MLSoundClassifier.Model(0);
  if (v132 != __src)
  {
    v54 = *(v53 + 20);
    v55 = &v15[v54];
    v56 = &v14[v54];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v58 = swift_getEnumCaseMultiPayload(v55, v57);
    v59 = v58 == 1;
    v60 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v58 == 1)
    {
      v60 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v61 = __swift_instantiateConcreteTypeFromMangledName(v60);
    (*(*(v61 - 8) + 16))(v56, v55, v61);
    swift_storeEnumTagMultiPayload(v56, v57, v59);
  }

  v62 = a3[6];
  v63 = *&__src[v62];
  v64 = *&v132[v62];
  *&v132[v62] = v63;
  v63;

  v65 = a3[7];
  v66 = &v132[v65];
  v67 = &__src[v65];
  if (v132 != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v68 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    v69 = swift_getEnumCaseMultiPayload(v67, v68);
    if (v69 == 2)
    {
      v72 = *v67;
      *v66 = *v67;
      v72;
      swift_storeEnumTagMultiPayload(v66, v68, 2);
    }

    else if (v69 == 1)
    {
      v70 = type metadata accessor for MLSoundClassifier.DataSource(0);
      v124 = swift_getEnumCaseMultiPayload(v67, v70);
      switch(v124)
      {
        case 0u:
        case 1u:
          v71 = type metadata accessor for URL(0);
          (*(*(v71 - 8) + 16))(v66, v67, v71);
          goto LABEL_44;
        case 2u:
          v76 = *v67;
          *v66 = *v67;
          goto LABEL_43;
        case 3u:
          v128 = v70;
          v81 = *v67;
          v126 = v68;
          v82 = v67[8];
          outlined copy of Result<_DataTable, Error>(*v67, v82);
          *v66 = v81;
          v66[8] = v82;
          v68 = v126;
          *(v66 + 2) = *(v67 + 2);
          v76 = *(v67 + 3);
          *(v66 + 3) = v76;
          *(v66 + 4) = *(v67 + 4);
          v78 = *(v67 + 5);
          *(v66 + 5) = v78;
          v83 = *(v67 + 4);
          *(v66 + 3) = *(v67 + 3);
          *(v66 + 4) = v83;
          v66[80] = v67[80];
          goto LABEL_42;
        case 4u:
          v73 = type metadata accessor for DataFrame(0);
          (*(*(v73 - 8) + 16))(v66, v67, v73);
          v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v75 = v74[12];
          *&v66[v75] = *&v67[v75];
          v76 = *&v67[v75 + 8];
          *&v66[v75 + 8] = v76;
          v77 = v74[16];
          *&v66[v77] = *&v67[v77];
          v128 = v70;
          v78 = *&v67[v77 + 8];
          *&v66[v77 + 8] = v78;
          v79 = v74[20];
          v66[v79 + 32] = v67[v79 + 32];
          v80 = *&v67[v79];
          *&v66[v79 + 16] = *&v67[v79 + 16];
          *&v66[v79] = v80;
LABEL_42:
          v76;
          LOBYTE(v76) = v78;
          v70 = v128;
LABEL_43:
          v76;
LABEL_44:
          swift_storeEnumTagMultiPayload(v66, v70, v124);
          swift_storeEnumTagMultiPayload(v66, v68, 1);
          break;
      }
    }

    else
    {
      memcpy(v66, v67, *(*(v68 - 8) + 64));
    }
  }

  *&v66[v46[5]] = *&v67[v46[5]];
  *&v66[v46[6]] = *&v67[v46[6]];
  v84 = v46[7];
  v85 = &v66[v84];
  v86 = &v67[v84];
  v87 = *&v67[v84 + 24];
  if (*&v66[v84 + 24])
  {
    if (v87)
    {
      __swift_assign_boxed_opaque_existential_0(&v66[v84], &v67[v84]);
      goto LABEL_52;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v66[v84]);
  }

  else if (v87)
  {
    *(v85 + 3) = v87;
    (**(v87 - 8))(v85, v86);
    goto LABEL_52;
  }

  v88 = *v86;
  *(v85 + 1) = *(v86 + 1);
  *v85 = v88;
LABEL_52:
  v89 = v46[8];
  v66[v89 + 8] = v67[v89 + 8];
  *&v66[v89] = *&v67[v89];
  *&v66[v46[9]] = *&v67[v46[9]];
  result = v132;
  if (v132 != __src)
  {
    v91 = a3[8];
    v92 = &v132[v91];
    v93 = &__src[v91];
    outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLClassifierMetrics.Contents);
    v94 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v95 = swift_getEnumCaseMultiPayload(v93, v94);
    v134 = v94;
    if (v95 == 2)
    {
      v100 = *v93;
      swift_errorRetain(*v93);
      *v92 = v100;
    }

    else if (v95 == 1)
    {
      *v92 = *v93;
      v125 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v96 = *(v125 + 20);
      v127 = &v92[v96];
      v97 = type metadata accessor for DataFrame(0);
      v98 = *(*(v97 - 8) + 16);
      v99 = &v93[v96];
      v94 = v134;
      v98(v127, v99, v97);
      v98(&v92[*(v125 + 24)], &v93[*(v125 + 24)], v97);
      v95 = 1;
    }

    else
    {
      v101 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v102 = swift_getEnumCaseMultiPayload(v93, v101);
      v103 = v102 == 1;
      v104 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v102 == 1)
      {
        v104 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v105 = __swift_instantiateConcreteTypeFromMangledName(v104);
      (*(*(v105 - 8) + 16))(v92, v93, v105);
      swift_storeEnumTagMultiPayload(v92, v101, v103);
      v94 = v134;
    }

    swift_storeEnumTagMultiPayload(v92, v94, v95);
    v106 = a3[9];
    v107 = &v132[v106];
    v108 = &__src[v106];
    outlined destroy of MLActivityClassifier.ModelParameters(&v132[v106], type metadata accessor for MLClassifierMetrics.Contents);
    v109 = swift_getEnumCaseMultiPayload(v108, v94);
    if (v109 == 2)
    {
      v116 = *v108;
      swift_errorRetain(*v108);
      *v107 = v116;
      v113 = 2;
      v114 = v107;
      v115 = v94;
    }

    else if (v109 == 1)
    {
      *v107 = *v108;
      v130 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v110 = *(v130 + 20);
      v111 = type metadata accessor for DataFrame(0);
      v112 = *(*(v111 - 8) + 16);
      v112(&v107[v110], &v108[v110], v111);
      v112(&v107[*(v130 + 24)], &v108[*(v130 + 24)], v111);
      v113 = 1;
      v114 = v107;
      v115 = v134;
    }

    else
    {
      v117 = v94;
      v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v119 = swift_getEnumCaseMultiPayload(v108, v118);
      v120 = v119 == 1;
      v121 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v119 == 1)
      {
        v121 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v122 = __swift_instantiateConcreteTypeFromMangledName(v121);
      (*(*(v122 - 8) + 16))(v107, v108, v122);
      swift_storeEnumTagMultiPayload(v107, v118, v120);
      v114 = v107;
      v115 = v117;
      v113 = 0;
    }

    swift_storeEnumTagMultiPayload(v114, v115, v113);
    return v132;
  }

  return result;
}

char *initializeWithTake for MLSoundClassifier(char *__dst, char *__src, int *a3)
{
  v3 = type metadata accessor for TrainingTablePrinter(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v3))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    memcpy(__dst, __src, *(*(v4 - 8) + 64));
  }

  else
  {
    v5 = type metadata accessor for Date(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    *&__dst[*(v3 + 20)] = *&__src[*(v3 + 20)];
    *&__dst[*(v3 + 24)] = *&__src[*(v3 + 24)];
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  }

  v6 = a3[5];
  v7 = &__dst[v6];
  v8 = &__src[v6];
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v98 = v9;
  if (swift_getEnumCaseMultiPayload(v8, v9) != 1)
  {
    memcpy(v7, v8, *(*(v9 - 8) + 64));
    goto LABEL_16;
  }

  v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
  if (EnumCaseMultiPayload == 4)
  {
    v17 = type metadata accessor for DataFrame(0);
    (*(*(v17 - 8) + 32))(v7, v8, v17);
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&v7[v18[12]] = *&v8[v18[12]];
    *&v7[v18[16]] = *&v8[v18[16]];
    v19 = v18[20];
    v20 = *&v8[v19 + 16];
    *&v7[v19] = *&v8[v19];
    *&v7[v19 + 16] = v20;
    v7[v19 + 32] = v8[v19 + 32];
    v89 = 4;
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v16 = type metadata accessor for URL(0);
    (*(*(v16 - 8) + 32))(v7, v8, v16);
    v89 = 1;
LABEL_12:
    v15 = v89;
    v13 = v7;
    v14 = v10;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(v7, v8, *(*(v10 - 8) + 64));
    goto LABEL_15;
  }

  v12 = type metadata accessor for URL(0);
  (*(*(v12 - 8) + 32))(v7, v8, v12);
  v13 = v7;
  v14 = v10;
  v15 = 0;
LABEL_13:
  swift_storeEnumTagMultiPayload(v13, v14, v15);
LABEL_15:
  swift_storeEnumTagMultiPayload(v7, v9, 1);
LABEL_16:
  v21 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v7[v21[5]] = *&v8[v21[5]];
  *&v7[v21[6]] = *&v8[v21[6]];
  v22 = v21[7];
  v23 = *&v8[v22];
  *&v7[v22 + 16] = *&v8[v22 + 16];
  *&v7[v22] = v23;
  v24 = v21[8];
  *&v7[v24] = *&v8[v24];
  v7[v24 + 8] = v8[v24 + 8];
  *&v7[v21[9]] = *&v8[v21[9]];
  v25 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v26 = &v7[v25];
  v27 = &v8[v25];
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v29 = swift_getEnumCaseMultiPayload(v27, v28);
  v30 = v29 == 1;
  v31 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v29 == 1)
  {
    v31 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(v31);
  (*(*(v32 - 8) + 32))(v26, v27, v32);
  swift_storeEnumTagMultiPayload(v26, v28, v30);
  v33 = __dst;
  *&__dst[a3[6]] = *&__src[a3[6]];
  v34 = a3[7];
  v35 = &__dst[v34];
  v36 = &__src[v34];
  if (swift_getEnumCaseMultiPayload(v36, v98) != 1)
  {
    memcpy(v35, v36, *(*(v98 - 8) + 64));
    goto LABEL_30;
  }

  v37 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v38 = swift_getEnumCaseMultiPayload(v36, v37);
  if (v38 == 4)
  {
    v44 = type metadata accessor for DataFrame(0);
    (*(*(v44 - 8) + 32))(v35, v36, v44);
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&v35[v45[12]] = *&v36[v45[12]];
    *&v35[v45[16]] = *&v36[v45[16]];
    v46 = v45[20];
    v47 = *&v36[v46 + 16];
    *&v35[v46] = *&v36[v46];
    *&v35[v46 + 16] = v47;
    v35[v46 + 32] = v36[v46 + 32];
    v90 = 4;
    goto LABEL_26;
  }

  if (v38 == 1)
  {
    v43 = type metadata accessor for URL(0);
    (*(*(v43 - 8) + 32))(v35, v36, v43);
    v90 = 1;
LABEL_26:
    v42 = v90;
    v40 = v35;
    v41 = v37;
    goto LABEL_27;
  }

  if (v38)
  {
    memcpy(v35, v36, *(*(v37 - 8) + 64));
    goto LABEL_29;
  }

  v39 = type metadata accessor for URL(0);
  (*(*(v39 - 8) + 32))(v35, v36, v39);
  v40 = v35;
  v41 = v37;
  v42 = 0;
LABEL_27:
  swift_storeEnumTagMultiPayload(v40, v41, v42);
LABEL_29:
  swift_storeEnumTagMultiPayload(v35, v98, 1);
LABEL_30:
  *&v35[v21[5]] = *&v36[v21[5]];
  *&v35[v21[6]] = *&v36[v21[6]];
  v48 = v21[7];
  v49 = *&v36[v48];
  *&v35[v48 + 16] = *&v36[v48 + 16];
  *&v35[v48] = v49;
  v50 = v21[8];
  *&v35[v50] = *&v36[v50];
  v35[v50 + 8] = v36[v50 + 8];
  *&v35[v21[9]] = *&v36[v21[9]];
  v51 = a3[8];
  v52 = &__dst[v51];
  v53 = __src;
  v54 = &__src[v51];
  v55 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v56 = swift_getEnumCaseMultiPayload(v54, v55);
  v99 = v55;
  if (v56 == 1)
  {
    *v52 = *v54;
    v91 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v67 = *(v91 + 20);
    v92 = &v52[v67];
    v68 = type metadata accessor for DataFrame(0);
    v69 = *(*(v68 - 8) + 32);
    v70 = &v54[v67];
    v53 = __src;
    v69(v92, v70, v68);
    v71 = v68;
    v55 = v99;
    v69(&v52[*(v91 + 24)], &v54[*(v91 + 24)], v71);
    v33 = __dst;
    v66 = 1;
    v64 = v52;
    v65 = v99;
LABEL_36:
    swift_storeEnumTagMultiPayload(v64, v65, v66);
    goto LABEL_38;
  }

  if (!v56)
  {
    v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v58 = swift_getEnumCaseMultiPayload(v54, v57);
    v59 = v58 == 1;
    v60 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v58 == 1)
    {
      v60 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v61 = __swift_instantiateConcreteTypeFromMangledName(v60);
    (*(*(v61 - 8) + 32))(v52, v54, v61);
    v62 = v57;
    v53 = __src;
    v63 = v59;
    v33 = __dst;
    swift_storeEnumTagMultiPayload(v52, v62, v63);
    v64 = v52;
    v65 = v55;
    v66 = 0;
    goto LABEL_36;
  }

  memcpy(v52, v54, *(*(v55 - 8) + 64));
LABEL_38:
  v72 = a3[9];
  v73 = &v33[v72];
  v74 = &v53[v72];
  v75 = swift_getEnumCaseMultiPayload(v74, v55);
  if (v75 == 1)
  {
    *v73 = *v74;
    v95 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v84 = *(v95 + 20);
    v97 = &v73[v84];
    v85 = type metadata accessor for DataFrame(0);
    v86 = *(*(v85 - 8) + 32);
    v87 = &v74[v84];
    v33 = __dst;
    v86(v97, v87, v85);
    v86(&v73[*(v95 + 24)], &v74[*(v95 + 24)], v85);
    v83 = 1;
    v81 = v73;
    v82 = v99;
  }

  else
  {
    if (v75)
    {
      memcpy(v73, v74, *(*(v55 - 8) + 64));
      return v33;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v77 = swift_getEnumCaseMultiPayload(v74, v76);
    v78 = v77 == 1;
    v79 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v77 == 1)
    {
      v79 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v80 = __swift_instantiateConcreteTypeFromMangledName(v79);
    (*(*(v80 - 8) + 32))(v73, v74, v80);
    swift_storeEnumTagMultiPayload(v73, v76, v78);
    v81 = v73;
    v82 = v99;
    v83 = 0;
  }

  swift_storeEnumTagMultiPayload(v81, v82, v83);
  return v33;
}

char *assignWithTake for MLSoundClassifier(char *__dst, char *a2, int *a3)
{
  v4 = type metadata accessor for TrainingTablePrinter(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v4);
  v6 = __swift_getEnumTagSinglePayload(a2, 1, v4);
  if (EnumTagSinglePayload)
  {
    if (!v6)
    {
      v7 = type metadata accessor for Date(0);
      v8 = a2;
      (*(*(v7 - 8) + 32))(__dst, a2, v7);
      *&__dst[*(v4 + 20)] = *&a2[*(v4 + 20)];
      *&__dst[*(v4 + 24)] = *&a2[*(v4 + 24)];
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for TrainingTablePrinter);
LABEL_6:
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
    v8 = a2;
    memcpy(__dst, a2, *(*(v9 - 8) + 64));
    goto LABEL_7;
  }

  v20 = type metadata accessor for Date(0);
  v8 = a2;
  (*(*(v20 - 8) + 40))(__dst, a2, v20);
  v21 = *(v4 + 20);
  v22 = *&__dst[v21];
  *&__dst[v21] = *&a2[v21];

  v23 = *(v4 + 24);
  v24 = *&__dst[v23];
  *&__dst[v23] = *&a2[v23];
  v24;
LABEL_7:
  v10 = a3[5];
  v11 = &__dst[v10];
  v12 = &v8[v10];
  if (__dst == v8)
  {
    goto LABEL_21;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v12, v13) != 1)
  {
    memcpy(v11, v12, *(*(v13 - 8) + 64));
    goto LABEL_21;
  }

  v14 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v14);
  if (EnumCaseMultiPayload == 4)
  {
    v26 = type metadata accessor for DataFrame(0);
    (*(*(v26 - 8) + 32))(v11, v12, v26);
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&v11[v27[12]] = *&v12[v27[12]];
    *&v11[v27[16]] = *&v12[v27[16]];
    v28 = v27[20];
    v29 = *&v12[v28 + 16];
    *&v11[v28] = *&v12[v28];
    *&v11[v28 + 16] = v29;
    v11[v28 + 32] = v12[v28 + 32];
    v111 = 4;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = type metadata accessor for URL(0);
    (*(*(v25 - 8) + 32))(v11, v12, v25);
    v111 = 1;
LABEL_17:
    v19 = v111;
    v17 = v11;
    v18 = v14;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(v11, v12, *(*(v14 - 8) + 64));
    goto LABEL_20;
  }

  v16 = type metadata accessor for URL(0);
  (*(*(v16 - 8) + 32))(v11, v12, v16);
  v17 = v11;
  v18 = v14;
  v19 = 0;
LABEL_18:
  swift_storeEnumTagMultiPayload(v17, v18, v19);
LABEL_20:
  swift_storeEnumTagMultiPayload(v11, v13, 1);
LABEL_21:
  v119 = __dst;
  v30 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v11[v30[5]] = *&v12[v30[5]];
  *&v11[v30[6]] = *&v12[v30[6]];
  v31 = v30[7];
  v32 = &v11[v31];
  v33 = &v12[v31];
  if (*&v11[v31 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v11[v31]);
  }

  v34 = *v33;
  *(v32 + 1) = *(v33 + 1);
  *v32 = v34;
  v35 = v30[8];
  *&v11[v35] = *&v12[v35];
  v11[v35 + 8] = v12[v35 + 8];
  *&v11[v30[9]] = *&v12[v30[9]];
  v36 = type metadata accessor for MLSoundClassifier.Model(0);
  v37 = v119;
  if (v119 != a2)
  {
    v38 = *(v36 + 20);
    v39 = &v12[v38];
    v40 = &v11[v38];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v42 = swift_getEnumCaseMultiPayload(v39, v41);
    v43 = v42 == 1;
    v44 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v42 == 1)
    {
      v44 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
    (*(*(v45 - 8) + 32))(v40, v39, v45);
    v46 = v41;
    v37 = v119;
    swift_storeEnumTagMultiPayload(v40, v46, v43);
  }

  v47 = a3[6];
  v48 = *&v37[v47];
  *&v37[v47] = *&a2[v47];

  v49 = a3[7];
  v50 = &v37[v49];
  v51 = &a2[v49];
  if (v37 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v52 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v51, v52) != 1)
    {
      memcpy(v50, v51, *(*(v52 - 8) + 64));
      goto LABEL_40;
    }

    v53 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v54 = swift_getEnumCaseMultiPayload(v51, v53);
    if (v54 == 4)
    {
      v60 = type metadata accessor for DataFrame(0);
      (*(*(v60 - 8) + 32))(v50, v51, v60);
      v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&v50[v61[12]] = *&v51[v61[12]];
      *&v50[v61[16]] = *&v51[v61[16]];
      v62 = v61[20];
      v63 = *&v51[v62 + 16];
      *&v50[v62] = *&v51[v62];
      *&v50[v62 + 16] = v63;
      v50[v62 + 32] = v51[v62 + 32];
      v112 = 4;
    }

    else
    {
      if (v54 != 1)
      {
        if (v54)
        {
          memcpy(v50, v51, *(*(v53 - 8) + 64));
          goto LABEL_39;
        }

        v55 = type metadata accessor for URL(0);
        (*(*(v55 - 8) + 32))(v50, v51, v55);
        v56 = v50;
        v57 = v53;
        v58 = 0;
LABEL_37:
        swift_storeEnumTagMultiPayload(v56, v57, v58);
LABEL_39:
        swift_storeEnumTagMultiPayload(v50, v52, 1);
        goto LABEL_40;
      }

      v59 = type metadata accessor for URL(0);
      (*(*(v59 - 8) + 32))(v50, v51, v59);
      v112 = 1;
    }

    v58 = v112;
    v56 = v50;
    v57 = v53;
    goto LABEL_37;
  }

LABEL_40:
  *&v50[v30[5]] = *&v51[v30[5]];
  *&v50[v30[6]] = *&v51[v30[6]];
  v64 = v30[7];
  v65 = &v50[v64];
  v66 = &v51[v64];
  if (*&v50[v64 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v50[v64]);
  }

  v67 = *v66;
  *(v65 + 1) = *(v66 + 1);
  *v65 = v67;
  v68 = v30[8];
  *&v50[v68] = *&v51[v68];
  v50[v68 + 8] = v51[v68 + 8];
  *&v50[v30[9]] = *&v51[v30[9]];
  v69 = v119;
  v70 = a2;
  if (v119 == a2)
  {
    return v69;
  }

  v71 = a3[8];
  v72 = &v119[v71];
  v73 = &a2[v71];
  outlined destroy of MLActivityClassifier.ModelParameters(v72, type metadata accessor for MLClassifierMetrics.Contents);
  v74 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v75 = swift_getEnumCaseMultiPayload(v73, v74);
  if (v75 == 1)
  {
    *v72 = *v73;
    v113 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v86 = *(v113 + 20);
    v114 = &v72[v86];
    v115 = v74;
    v87 = type metadata accessor for DataFrame(0);
    v88 = *(*(v87 - 8) + 32);
    v89 = &v73[v86];
    v69 = v119;
    v88(v114, v89, v87);
    v90 = v87;
    v74 = v115;
    v88(&v72[*(v113 + 24)], &v73[*(v113 + 24)], v90);
    v70 = a2;
    v85 = 1;
    v83 = v72;
    v84 = v115;
  }

  else
  {
    if (v75)
    {
      memcpy(v72, v73, *(*(v74 - 8) + 64));
      goto LABEL_51;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v77 = swift_getEnumCaseMultiPayload(v73, v76);
    v78 = v77 == 1;
    v79 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v77 == 1)
    {
      v79 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v80 = __swift_instantiateConcreteTypeFromMangledName(v79);
    (*(*(v80 - 8) + 32))(v72, v73, v80);
    v81 = v76;
    v70 = a2;
    v82 = v78;
    v69 = v119;
    swift_storeEnumTagMultiPayload(v72, v81, v82);
    v83 = v72;
    v84 = v74;
    v85 = 0;
  }

  swift_storeEnumTagMultiPayload(v83, v84, v85);
LABEL_51:
  v91 = a3[9];
  v92 = &v69[v91];
  v93 = &v70[v91];
  outlined destroy of MLActivityClassifier.ModelParameters(&v69[v91], type metadata accessor for MLClassifierMetrics.Contents);
  v94 = swift_getEnumCaseMultiPayload(v93, v74);
  if (v94 == 1)
  {
    *v92 = *v93;
    __srca = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v106 = __srca[5];
    v118 = &v92[v106];
    v107 = type metadata accessor for DataFrame(0);
    v116 = v74;
    v108 = *(*(v107 - 8) + 32);
    v109 = &v93[v106];
    v69 = v119;
    v108(v118, v109, v107);
    v108(&v92[__srca[6]], &v93[__srca[6]], v107);
    v105 = 1;
    v103 = v92;
    v104 = v116;
  }

  else
  {
    if (v94)
    {
      memcpy(v92, v93, *(*(v74 - 8) + 64));
      return v69;
    }

    v95 = v74;
    v96 = v93;
    v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v98 = swift_getEnumCaseMultiPayload(v96, v97);
    v99 = v98 == 1;
    v100 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v98 == 1)
    {
      v100 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v101 = __swift_instantiateConcreteTypeFromMangledName(v100);
    (*(*(v101 - 8) + 32))(v92, v96, v101);
    v102 = v99;
    v69 = v119;
    swift_storeEnumTagMultiPayload(v92, v97, v102);
    v103 = v92;
    v104 = v95;
    v105 = 0;
  }

  swift_storeEnumTagMultiPayload(v103, v104, v105);
  return v69;
}

uint64_t sub_247825(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_4:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = a3[7];
    }

    else
    {
      v5 = type metadata accessor for MLClassifierMetrics(0);
      v6 = a3[8];
    }

    goto LABEL_4;
  }

  result = 0;
  if ((*(a1 + a3[6]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[6]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_2478E3(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for MLSoundClassifier.Model(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v8 = a4[5];
LABEL_4:
    v6 = v8 + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  if (a3 != 0x7FFFFFFF)
  {
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[7];
    }

    else
    {
      v7 = type metadata accessor for MLClassifierMetrics(0);
      v8 = a4[8];
    }

    goto LABEL_4;
  }

  result = a4[6];
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLSoundClassifier(uint64_t a1)
{
  result = type metadata accessor for TrainingTablePrinter?(319);
  if (v2 <= 0x3F)
  {
    v6[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.Model(319);
    if (v3 <= 0x3F)
    {
      v6[1] = *(result - 8) + 64;
      v6[2] = &value witness table for Builtin.UnknownObject + 64;
      result = type metadata accessor for MLSoundClassifier.ModelParameters(319);
      if (v4 <= 0x3F)
      {
        v6[3] = *(result - 8) + 64;
        result = type metadata accessor for MLClassifierMetrics.Contents(319);
        if (v5 <= 0x3F)
        {
          v7 = *(result - 8) + 64;
          v8 = v7;
          swift_initStructMetadata(a1, 256, 6, v6, a1 + 16);
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for TrainingTablePrinter?(uint64_t a1)
{
  result = lazy cache variable for type metadata for TrainingTablePrinter?;
  if (!lazy cache variable for type metadata for TrainingTablePrinter?)
  {
    v2 = type metadata accessor for TrainingTablePrinter(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for TrainingTablePrinter? = result;
    }
  }

  return result;
}

char _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5Sb_Tg507_sSRys4f5VGxs5E34_pIgyrzo_ACxsAD_pIegyrzr_lTRSb_TG5SRyAGGSbsAD_pIgyrzo_Tf1cn_n(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = HIWORD(v3);
  if (a1)
  {
    result = a3(a1);
    if (!v4)
    {
      return HIBYTE(v6);
    }
  }

  else
  {
    result = (a3)(0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  return result;
}

BOOL closure #1 in closure #1 in Float.init<A>(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  result = (v3 > 0x20 || (v4 = 0x100003E01, !_bittest64(&v4, v3))) && (v6 = _swift_stdlib_strtof_clocale()) != 0 && *v6 == 0;
  *v2 = result;
  return result;
}

char specialized closure #1 in _StringGuts.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = v3;
  result = a3();
  if (!v4)
  {
    result = v7;
    *v5 = v7;
  }

  return result;
}

uint64_t specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  v8 = swift_task_alloc(112);
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier;
  return specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(a1, a2, v7, a4, a5);
}

uint64_t specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = *a3;
  v8 = *a4;
  v9 = swift_task_alloc(112);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(a1, a2, v7, v8, a5, a6);
}

uint64_t specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v4 = *a3;
  v5 = swift_task_alloc(32);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = specialized closure #1 in MLSoundClassifier.evaluate<A>(on:);
  return specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(a2, v4);
}

uint64_t sub_247D0C()
{
  v1 = type metadata accessor for MLSoundClassifier(0);
  v2 = *(v1 - 1);
  v3 = *(v2 + 80);
  v53 = *(v2 + 64);
  v52 = ~*(v2 + 80) & (v3 + 16);
  v51 = v0;
  v4 = v52 + v0;
  v5 = type metadata accessor for TrainingTablePrinter(0);
  if (!__swift_getEnumTagSinglePayload(v52 + v0, 1, v5))
  {
    v6 = type metadata accessor for Date(0);
    (*(*(v6 - 8) + 8))(v4, v6);

    *(v4 + *(v5 + 24));
  }

  v55 = v52 + v0;
  v7 = v4 + v1[5];
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v8);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_7:
    v12 = *v7;
LABEL_8:
    v12;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v7, v10))
    {
      case 0u:
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v7, v11);
        break;
      case 2u:
        goto LABEL_7;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v7, *(v7 + 8));
        *(v7 + 24);
        v12 = *(v7 + 40);
        goto LABEL_8;
      case 4u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 8))(v7, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v7 + *(v24 + 48) + 8);
        v12 = *(v7 + *(v24 + 64) + 8);
        goto LABEL_8;
      default:
        break;
    }
  }

  v13 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v14 = *(v13 + 28);
  if (*(v7 + v14 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + v14));
  }

  v15 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20) + v7;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v17 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v15, v16) == 1)
  {
    v17 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
  (*(*(v18 - 8) + 8))(v15, v18);

  v56 = v1;
  v19 = (v55 + v1[7]);
  v20 = swift_getEnumCaseMultiPayload(v19, v8);
  if (v20 == 2)
  {
    *v19;
  }

  else if (v20 == 1)
  {
    v21 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v19, v21))
    {
      case 0u:
      case 1u:
        v22 = type metadata accessor for URL(0);
        (*(*(v22 - 8) + 8))(v19, v22);
        break;
      case 2u:
        v27 = *v19;
        goto LABEL_23;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v19, *(v19 + 2));
        v19[3];
        v27 = v19[5];
        goto LABEL_23;
      case 4u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 8))(v19, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v19 + *(v26 + 48) + 8);
        v27 = *(v19 + *(v26 + 64) + 8);
LABEL_23:
        v27;
        break;
      default:
        break;
    }
  }

  v28 = *(v13 + 28);
  if (*(v19 + v28 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v19 + v28));
  }

  v29 = (v55 + v1[8]);
  v30 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v31 = swift_getEnumCaseMultiPayload(v29, v30);
  switch(v31)
  {
    case 2:
      *v29;
      break;
    case 1:
      v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v57 = v3;
      v34 = &v29[*(v54 + 20)];
      v35 = type metadata accessor for DataFrame(0);
      v36 = *(*(v35 - 8) + 8);
      v37 = v34;
      v3 = v57;
      v36(v37, v35);
      v36(&v29[*(v54 + 24)], v35);
      v1 = v56;
      break;
    case 0:
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v29, v32) == 1)
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledName(v33);
      (*(*(v38 - 8) + 8))(v29, v38);
      break;
  }

  v39 = (v1[9] + v55);
  v40 = swift_getEnumCaseMultiPayload(v39, v30);
  switch(v40)
  {
    case 2:
      *v39;
      break;
    case 1:
      v43 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v58 = v3;
      v44 = &v39[*(v43 + 20)];
      v45 = type metadata accessor for DataFrame(0);
      v46 = *(*(v45 - 8) + 8);
      v47 = v44;
      v3 = v58;
      v46(v47, v45);
      v46(&v39[*(v43 + 24)], v45);
      break;
    case 0:
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v39, v41) == 1)
      {
        v42 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v42 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v48 = __swift_instantiateConcreteTypeFromMangledName(v42);
      (*(*(v48 - 8) + 8))(v39, v48);
      break;
  }

  v49 = (v53 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v51 + v49);
  return swift_deallocObject(v51, v49 + 8, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSoundClassifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = swift_task_alloc(32);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return ((&async function pointer to specialized closure #1 in MLSoundClassifier.evaluate<A>(on:) + async function pointer to specialized closure #1 in MLSoundClassifier.evaluate<A>(on:)))(a1, v1 + v4, v1 + v5);
}

uint64_t sub_2482A4()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v5 = v1[6];
  v6 = swift_task_alloc(64);
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in static MLSoundClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t sub_248363()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v3 = *(v2 - 8);
  v32 = *(v3 + 80);
  v4 = ~*(v3 + 80) & (v32 + 16);
  v31 = *(v3 + 64);
  v30 = type metadata accessor for TrainingTablePrinter(0);
  v5 = *(v30 - 8);
  v6 = *(v5 + 80);
  v33 = *(v5 + 64);
  v29 = v1;
  v7 = v1 + v4;
  v8 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1 + v4, v8);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v12 = *v7;
LABEL_6:
    v12;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v1 + v4, v10))
    {
      case 0u:
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v1 + v4, v11);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v7, *(v7 + 8));
        *(v7 + 24);
        v12 = *(v7 + 40);
        goto LABEL_6;
      case 4u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 8))(v1 + v4, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v7 + *(v28 + 48) + 8);
        v12 = *(v7 + *(v28 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v13 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(v7 + v13 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v7 + v13));
  }

  v14 = *(v2 + 20) + v7;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v16 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (swift_getEnumCaseMultiPayload(v14, v15) == 1)
  {
    v16 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
  (*(*(v17 - 8) + 8))(v14, v17);
  v18 = v6 | v32 | 7;
  v19 = (v4 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v6 + v21 + 8) & ~v6;
  v34 = v22 + v33;
  *(v29 + v19);
  *(v29 + v20);
  v23 = *(v29 + v21);

  v24 = v29 + v22;
  v25 = type metadata accessor for Date(0);
  (*(*(v25 - 8) + 8))(v24, v25);

  *(*(v30 + 24) + v24);
  return swift_deallocObject(v29, v34, v18);
}