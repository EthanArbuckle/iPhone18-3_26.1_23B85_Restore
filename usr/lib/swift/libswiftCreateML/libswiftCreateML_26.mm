void storeEnumTagSinglePayload for MLDataTable.Aggregator.Operations(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 253;
    *(a1 + 16) = 0;
    if (a3 >= 0xFD)
    {
      *(a1 + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(a1 + 17) = 0;
    }

    if (a2)
    {
      *(a1 + 16) = -a2;
    }
  }
}

uint64_t getEnumTag for MLDataTable.Aggregator.Operations(uint64_t a1)
{
  result = (*a1 + 3);
  if (*(a1 + 16) < 3u)
  {
    return *(a1 + 16);
  }

  return result;
}

void destructiveInjectEnumTag for MLDataTable.Aggregator.Operations(uint64_t a1, unsigned int a2)
{
  if (a2 >= 3)
  {
    *a1 = a2 - 3;
    *(a1 + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(a1 + 16) = a2;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5159_s8CreateML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  v22 = *(a1 + 16);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = _swiftEmptyArrayStorage;
  v4 = specialized _NativeSet.startIndex.getter(a1);
  v6 = v5;
  v8 = v7;
  do
  {
    if (v4 < 0 || v4 >= 1 << *(v2 + 32))
    {
      BUG();
    }

    v9 = *(v2 + 8 * (v4 >> 6) + 56);
    if (!_bittest64(&v9, v4))
    {
      BUG();
    }

    if (*(v2 + 36) != v6)
    {
      BUG();
    }

    v10 = *(v2 + 48);
    v11 = *(v10 + 16 * v4);
    v24 = v3;
    v12 = *(v10 + 16 * v4 + 8);
    v12;
    v21 = String.count.getter(v11, v12);
    v13 = v12;
    v3 = v24;
    v13;
    v14 = v24[2];
    v15 = v24[3];
    v16 = v14 + 1;
    if (v15 >> 1 <= v14)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v14 + 1, 1);
      v16 = v14 + 1;
      v3 = v24;
    }

    v3[2] = v16;
    v3[v14 + 4] = v21;
    v2 = a1;
    v17 = specialized _NativeSet.index(after:)(v4, v6, v8 & 1, a1);
    v4 = v17;
    v6 = v18;
    v8 = v19;
    --v22;
  }

  while (v22);
  outlined consume of [MLDataValue : MLDataValue].Index._Variant(v17, v18, v19);
  return v3;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Sis5NeverOTg5169_s8CreateML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = (a1 + 40);
    do
    {
      v9 = v1;
      v3 = *(v2 - 1);
      v4 = *v2;
      *v2;
      v5 = String.count.getter(v3, v4);
      v4;
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v6 + 1;
      }

      _swiftEmptyArrayStorage[2] = v7;
      _swiftEmptyArrayStorage[v6 + 4] = v5;
      v2 += 2;
      v1 = v9 - 1;
    }

    while (v9 != 1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t MLClassifierMetrics.description.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLClassifierMetrics.Contents(v0, &v14);
  if (swift_getEnumCaseMultiPayload(&v14, v1) > 1)
  {
    v11 = v14;
    v15 = 0;
    v16 = 0xE000000000000000;
    v17[0] = v14;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v17, &v15, v12, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v11;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLClassifierMetrics.Contents);
    v15 = 0xD000000000000023;
    v16 = "Empty ArraySlice" + 0x8000000000000000;
    v5._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
    object = v5._object;
    String.append(_:)(v5);
    object;
    v7._countAndFlagsBits = MLClassifierMetrics.Contents.confusionMatrixDescription.getter();
    v8 = v7._object;
    String.append(_:)(v7);
    v8;
    v9._countAndFlagsBits = MLClassifierMetrics.precisionRecallDescription.getter();
    v10 = v9._object;
    String.append(_:)(v9);
    v10;
  }

  return v15;
}

uint64_t MLClassifierMetrics.isValid.getter()
{
  v7[0] = v0;
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v7);
  LOBYTE(v2) = swift_getEnumCaseMultiPayload(v7, v2) < 2;
  outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLClassifierMetrics.Contents);
  return v2;
}

double MLClassifierMetrics.classificationError.getter()
{
  v16[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLClassifierMetrics.Contents);
      v14 = 0.0;
      return 1.0 - v14;
    }

    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for MLClassifierMetrics.Precomputed);
    v16[0] = 1.0 - v16[0];
    v13 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for AnyClassificationMetrics);
    v16[0] = AnyClassificationMetrics.accuracy.getter();
    v13 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v16, v13);
  v14 = v16[0];
  return 1.0 - v14;
}

uint64_t MLClassifierMetrics.init(classificationError:confusion:precisionRecall:)(uint64_t *a1, uint64_t *a2, double a3)
{
  v15 = a3;
  v4 = v3;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v13 = *a1;
  v14 = v5;
  v8 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v9 = *(v8 + 20);
  DataFrame.init(_:)(&v13);
  v13 = v6;
  v14 = v7;
  v10 = *(v8 + 24);
  DataFrame.init(_:)(&v13);
  *v4 = v15;
  v11 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v4, v11, 1);
}

uint64_t MLClassifierMetrics.error.getter()
{
  v1 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLClassifierMetrics.Contents(v0, v6);
  if (swift_getEnumCaseMultiPayload(v6, v1) == 2)
  {
    return v6[0];
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v6, type metadata accessor for MLClassifierMetrics.Contents);
  return 0;
}

double MLClassifierMetrics.Contents.accuracy.getter()
{
  v15[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v8);
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of MLClassifierMetrics(v15, v15, type metadata accessor for AnyClassificationMetrics);
    v15[0] = AnyClassificationMetrics.accuracy.getter();
    v13 = type metadata accessor for AnyClassificationMetrics;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with take of MLClassifierMetrics(v15, v15, type metadata accessor for MLClassifierMetrics.Precomputed);
    v15[0] = 1.0 - v15[0];
    v13 = type metadata accessor for MLClassifierMetrics.Precomputed;
LABEL_5:
    outlined destroy of MLActivityClassifier.ModelParameters(v15, v13);
    return v15[0];
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLClassifierMetrics.Contents);
  return 0.0;
}

uint64_t MLClassifierMetrics.confusion.getter(__m128 a1)
{
  v2 = v1;
  v3 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  *a1.i64 = MLClassifierMetrics.confusionDataFrame.getter();
  MLDataTable.init(_:convertArraysToShapedArrays:)(&v17, 0, a1);
  MLDataTable.willMutate()();
  v6._countAndFlagsBits = 0x6574636964657250;
  v7._countAndFlagsBits = 0x6574636964657270;
  v7._object = 0xEF7373616C635F64;
  v6._object = 0xE900000000000064;
  MLDataTable.renameImpl(named:to:)(v7, v6);
  if (!v19)
  {
    v8 = v18;
    outlined copy of Result<_DataTable, Error>(v18, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  MLDataTable.willMutate()();
  v9._countAndFlagsBits = 0x7373616C63;
  v10._countAndFlagsBits = 0x62614C2065757254;
  v10._object = 0xEA00000000006C65;
  v9._object = 0xE500000000000000;
  MLDataTable.renameImpl(named:to:)(v9, v10);
  if (!v19)
  {
    v11 = v18;
    outlined copy of Result<_DataTable, Error>(v18, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v11, 0);
  }

  MLDataTable.willMutate()();
  v12._countAndFlagsBits = 0x746E756F43;
  v13._countAndFlagsBits = 0x746E756F63;
  v13._object = 0xE500000000000000;
  v12._object = 0xE500000000000000;
  result = MLDataTable.renameImpl(named:to:)(v13, v12);
  v15 = v19;
  v16 = v18;
  if (!v19)
  {
    outlined copy of Result<_DataTable, Error>(v18, 0);
    _DataTable.columnNamesDidChange()();
    result = outlined consume of Result<_DataTable, Error>(v16, 0);
  }

  *v2 = v16;
  *(v2 + 8) = v15;
  return result;
}

uint64_t MLClassifierMetrics.confusionDataFrame.getter()
{
  v47 = v1;
  v50 = v0;
  v42 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v2 = *(*(v42 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v41 = &v40;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v40;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v40;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v49 = &v40;
  v17 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v48 = &v40;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLClassifierMetrics.Contents(v47, &v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v40, v20);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(&v40, type metadata accessor for MLClassifierMetrics.Contents);
      return DataFrame.init()(&v40);
    }

    v25 = v41;
    outlined init with take of MLClassifierMetrics(&v40, v41, type metadata accessor for MLClassifierMetrics.Precomputed);
    v26 = v25 + *(v42 + 20);
    v27 = type metadata accessor for DataFrame(0);
    (*(*(v27 - 8) + 16))(v50, v26, v27);
    v28 = v25;
    v29 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    v47 = v9;
    v30 = v44;
    v31 = v43;
    v32 = v48;
    outlined init with take of MLClassifierMetrics(&v40, v48, type metadata accessor for AnyClassificationMetrics);
    v33 = v32;
    v34 = v49;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v49, &demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    if (swift_getEnumCaseMultiPayload(v34, v13) == 1)
    {
      v35 = v45;
      (*(v45 + 32))(v30, v49, v31);
      _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSi_Tt1g5(v30);
      v36 = v30;
      v37 = v31;
    }

    else
    {
      v39 = v46;
      v35 = v47;
      (*(v47 + 32))(v46, v49, v8);
      _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v39);
      v36 = v39;
      v37 = v8;
    }

    (*(v35 + 8))(v36, v37);
    v29 = type metadata accessor for AnyClassificationMetrics;
    v28 = v48;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v28, v29);
}

uint64_t MLClassifierMetrics.precisionRecall.getter(__m128 a1)
{
  v6 = v1;
  v2 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *a1.i64 = MLClassifierMetrics.precisionRecallDataFrame.getter(0);
  return MLDataTable.init(_:convertArraysToShapedArrays:)(&v6, 0, a1);
}

uint64_t MLClassifierMetrics.precisionRecallDataFrame.getter()
{
  v47 = v1;
  v50 = v0;
  v42 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v2 = *(*(v42 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v41 = &v40;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v45 = *(v43 - 8);
  v5 = *(v45 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v40;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v40;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v49 = &v40;
  v17 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v48 = &v40;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLClassifierMetrics.Contents(v47, &v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v40, v20);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(&v40, type metadata accessor for MLClassifierMetrics.Contents);
      return DataFrame.init()();
    }

    v25 = v41;
    outlined init with take of MLClassifierMetrics(&v40, v41, type metadata accessor for MLClassifierMetrics.Precomputed);
    v26 = v25 + *(v42 + 24);
    v27 = type metadata accessor for DataFrame(0);
    (*(*(v27 - 8) + 16))(v50, v26, v27);
    v28 = v25;
    v29 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    v47 = v9;
    v30 = v44;
    v31 = v43;
    v32 = v48;
    outlined init with take of MLClassifierMetrics(&v40, v48, type metadata accessor for AnyClassificationMetrics);
    v33 = v32;
    v34 = v49;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, v49, &demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    if (swift_getEnumCaseMultiPayload(v34, v13) == 1)
    {
      v35 = v45;
      (*(v45 + 32))(v30, v49, v31);
      _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSi_Tt1g5(v30);
      v36 = v30;
      v37 = v31;
    }

    else
    {
      v39 = v46;
      v35 = v47;
      (*(v47 + 32))(v46, v49, v8);
      _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v39);
      v36 = v39;
      v37 = v8;
    }

    (*(v35 + 8))(v36, v37);
    v29 = type metadata accessor for AnyClassificationMetrics;
    v28 = v48;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v28, v29);
}

void *MLClassifierMetrics.Contents.stringLabels.getter()
{
  v16[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16[0];
      return &_swiftEmptySetSingleton;
    }

    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for MLClassifierMetrics.Precomputed);
    v13 = MLClassifierMetrics.Precomputed.stringLabels.getter(v16);
    v14 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v16, v16, type metadata accessor for AnyClassificationMetrics);
    v13 = AnyClassificationMetrics.stringLabels.getter(v16);
    v14 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v16, v14);
  return v13;
}

uint64_t MLClassifierMetrics.Precomputed.stringLabels.getter()
{
  v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v80 = *(v75 - 8);
  v1 = v80[8];
  v2 = alloca(v1);
  v3 = alloca(v1);
  v82 = &v69;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v76 = &v69;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v83 = *(v7 - 8);
  v8 = *(v83 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v72 = *(v77 - 8);
  v11 = *(v72 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v79 = &v69;
  v78 = type metadata accessor for AnyColumn(0);
  v74 = *(v78 - 8);
  v14 = *(v74 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = *(type metadata accessor for MLClassifierMetrics.Precomputed(0) + 24) + v0;
  DataFrame.subscript.getter(0x7373616C63, 0xE500000000000000);
  v18 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v18, &type metadata for Int))
  {
    v80 = &v69;
    v19 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    v70[0] = 0;
    v20 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
    v21 = v79;
    OptionalColumnProtocol.filled(with:)(v70, v7, v20);
    (*(v83 + 8))(&v69, v7, v19);
    v22 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
    v23 = v77;
    v24 = dispatch thunk of Collection.count.getter(v77, v22);
    v25 = v23;
    v26 = v21;
    if (v24)
    {
      v27 = v24;
      v71[0] = _swiftEmptyArrayStorage;
      v28 = 0;
      if (v24 > 0)
      {
        v28 = v24;
      }

      v29 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28, 0);
      v83 = v71[0];
      v82 = v22;
      dispatch thunk of Collection.startIndex.getter(v23, v22);
      if (v27 < 0)
      {
        BUG();
      }

      v30 = v82;
      v26 = v79;
      v31 = v83;
      v25 = v29;
      do
      {
        v83 = v27;
        v32 = v26;
        v33 = v25;
        v34 = dispatch thunk of Collection.subscript.read(v70, &v81, v25, v30);
        v36 = *v35;
        v34(v70, 0);
        v70[0] = v36;
        v37 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v71[0] = v31;
        v39 = v32;
        v40 = v31[2];
        v41 = v31[3];
        if (v41 >> 1 <= v40)
        {
          v75 = v37;
          v76 = v38;
          v46 = v39;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 >= 2, v40 + 1, 1);
          v38 = v76;
          v37 = v75;
          v39 = v46;
          v31 = v71[0];
        }

        v31[2] = v40 + 1;
        v42 = 2 * v40;
        v31[v42 + 4] = v37;
        v31[v42 + 5] = v38;
        v43 = v39;
        v44 = v33;
        v45 = v82;
        dispatch thunk of Collection.formIndex(after:)(&v81, v44, v82);
        v27 = v83 - 1;
        v25 = v77;
        v26 = v43;
        v30 = v45;
      }

      while (v83 != 1);
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
    }

    (*(v72 + 8))(v26, v25);
    v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v31);
    v53 = v80;
    goto LABEL_15;
  }

  v47 = v82;
  if (swift_dynamicCastMetatype(v18, &type metadata for String))
  {
    v48 = v47;
    v49 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    v70[0] = 0;
    v70[1] = 0xE000000000000000;
    v50 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v51 = v75;
    OptionalColumnProtocol.filled(with:)(v70, v75, v50);
    (v80[1])(v48, v51, v49);
    v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v53 = &v69;
LABEL_15:
    v54 = v78;
    goto LABEL_16;
  }

  v56 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v57 = v78;
  v58 = dispatch thunk of Collection.count.getter(v78, v56);
  if (v58)
  {
    v81 = _swiftEmptyArrayStorage;
    v59 = 0;
    if (v58 > 0)
    {
      v59 = v58;
    }

    v83 = v58;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v59, 0);
    v60 = v81;
    v80 = &v69;
    dispatch thunk of Collection.startIndex.getter(v57, v56);
    v61 = v83;
    if (v83 < 0)
    {
      BUG();
    }

    v62 = v80;
    v79 = v56;
    do
    {
      v83 = v61;
      v63 = dispatch thunk of Collection.subscript.read(v70, &v73, v57, v56);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, v71, &demangling cache variable for type metadata for Any?);
      v63(v70, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71, v70, &demangling cache variable for type metadata for Any?);
      v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
      v77 = String.init<A>(describing:)(v70, v65);
      v82 = v66;
      outlined destroy of Any?(v71);
      v81 = v60;
      v56 = v79;
      v67 = v60[2];
      if (v60[3] >> 1 <= v67)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v60[3] >= 2uLL, v67 + 1, 1);
        v60 = v81;
      }

      v60[2] = v67 + 1;
      v68 = 2 * v67;
      v60[v68 + 4] = v77;
      v60[v68 + 5] = v82;
      v57 = v78;
      dispatch thunk of Collection.formIndex(after:)(&v73, v78, v56);
      v61 = v83 - 1;
    }

    while (v83 != 1);
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
    v62 = &v69;
  }

  v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v60);
  v53 = v62;
  v54 = v57;
LABEL_16:
  (*(v74 + 8))(v53, v54);
  return v52;
}

uint64_t MLClassifierMetrics.Contents.labelCount.getter()
{
  v17[0] = v0;
  v2 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  outlined init with copy of MLClassifierMetrics.Contents(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v17[0];
      return 0;
    }

    outlined init with take of MLClassifierMetrics(v17, v17, type metadata accessor for MLClassifierMetrics.Precomputed);
    v13 = MLClassifierMetrics.Precomputed.stringLabels.getter(v17);
    v14 = *(v13 + 16);
    v13;
    v15 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(v17, v17, type metadata accessor for AnyClassificationMetrics);
    v14 = AnyClassificationMetrics.labelCount.getter(v17);
    v15 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v17, v15);
  return v14;
}

uint64_t MLClassifierMetrics.Contents.exampleCount.getter()
{
  v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v25 = *(v26 - 8);
  v1 = *(v25 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v27 = &v24;
  v4 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v28 = &v24;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  outlined init with copy of MLClassifierMetrics.Contents(v0, &v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v24, v11);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(&v24, type metadata accessor for MLClassifierMetrics.Contents);
      return 0;
    }

    v16 = v28;
    outlined init with take of MLClassifierMetrics(&v24, v28, type metadata accessor for MLClassifierMetrics.Precomputed);
    v17 = v16 + *(v4 + 20);
    v18 = v27;
    DataFrame.subscript.getter(0x746E756F63, 0xE500000000000000, &type metadata for Int);
    v19 = v26;
    Column<A>.sum()(v26, &protocol witness table for Int);
    (*(v25 + 8))(v18, v19);
    v20 = v24;
    v21 = v16;
    v22 = type metadata accessor for MLClassifierMetrics.Precomputed;
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v24, &v24, type metadata accessor for AnyClassificationMetrics);
    v20 = AnyClassificationMetrics.exampleCount.getter();
    v21 = &v24;
    v22 = type metadata accessor for AnyClassificationMetrics;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v21, v22);
  return v20;
}

unint64_t MLClassifierMetrics.accuracyDescription.getter()
{
  _StringGuts.grow(_:)(23);
  0xE000000000000000;
  MLClassifierMetrics.Contents.exampleCount.getter();
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v0._object;
  String.append(_:)(v0);
  object;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  _StringGuts.grow(_:)(22);
  0xE000000000000000;
  MLClassifierMetrics.Contents.labelCount.getter();
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v4 = v3._object;
  String.append(_:)(v3);
  v4;
  v2._countAndFlagsBits = 10;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v2._countAndFlagsBits = 0xD000000000000013;
  v2._object = "Number of examples: " + 0x8000000000000000;
  String.append(_:)(v2);
  "Number of examples: " + 0x8000000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v6 = swift_allocObject(v5, 72, 7);
  *(v6 + 16) = 1;
  *(v6 + 24) = 2;
  v7 = MLClassifierMetrics.Contents.accuracy.getter();
  *(v6 + 56) = &type metadata for Double;
  *(v6 + 64) = &protocol witness table for Double;
  *(v6 + 32) = v7 * 100.0;
  v8._countAndFlagsBits = String.init(format:_:)(0xD000000000000011, "Number of classes: " + 0x8000000000000000, v6);
  v9 = v8._object;
  String.append(_:)(v8);
  v9;
  return 0xD000000000000014;
}

char *MLClassifierMetrics.Contents.confusionMatrixDescription.getter()
{
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v79 = *(v83 - 8);
  v0 = *(v79 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v3 = MLClassifierMetrics.Contents.stringLabels.getter();
  v3;
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(v3);
  v3;
  v91[0] = v4;
  specialized MutableCollection<>.sort(by:)(v91);
  v3;
  v5 = v91[0];
  MLClassifierMetrics.Contents.confusionMatrix(labels:)(v91[0]);
  v82 = v5;
  ML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_Sis5NeverOTg5169_s8CreateML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(v5);
  v7 = specialized Sequence<>.max()(ML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n);
  v9 = v8;
  ML19MLClassifierMetricsV8ContentsO26confusionMatrixDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n;
  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v10 = v7;
  }

  v90 = v10;
  v74 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
  v77 = &v73;
  v11 = MLShapedArrayProtocol.scalars.getter(v83, v74);
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13)
  {
    v91[0] = _swiftEmptyArrayStorage;
    v14 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v15 = v91[0];
    v81 = v12;
    v86 = v13;
    do
    {
      v16 = _mm_cvtsi32_si128(*(v12 + 4 * v14 + 32));
      if ((_mm_cvtsi128_si32(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        BUG();
      }

      if (*v16.i32 <= -9.2233731e18)
      {
        BUG();
      }

      if (*v16.i32 >= 9.223372e18)
      {
        BUG();
      }

      v89._countAndFlagsBits = *v16.i32;
      v17 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v19 = v18;
      v20 = String.count.getter(v17, v18);
      v19;
      v91[0] = v15;
      v21 = *(v15 + 2);
      if (*(v15 + 3) >> 1 <= v21)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v15 + 3) >= 2uLL, v21 + 1, 1);
        v15 = v91[0];
      }

      ++v14;
      *(v15 + 2) = v21 + 1;
      *&v15[8 * v21 + 32] = v20;
      v12 = v81;
    }

    while (v86 != v14);
    v81;
  }

  else
  {
    v11;
    v15 = _swiftEmptyArrayStorage;
  }

  v22 = specialized Sequence<>.max()(v15);
  v24 = v23;
  v15;
  if (v24)
  {
    v22 = 0;
    if (v90 > 0)
    {
      v22 = v90;
    }
  }

  else if (v22 <= v90)
  {
    v22 = v90;
  }

  v25 = __OFADD__(1, v22);
  v26 = v22 + 1;
  if (v25)
  {
    BUG();
  }

  v27 = String.count.getter(0x6572505C65757254, 0xE900000000000064);
  v28 = v90;
  if (v27 > v90)
  {
    v28 = v27;
  }

  v90 = v28 + 1;
  if (__OFADD__(1, v28))
  {
    BUG();
  }

  v81 = v26;
  v29 = v82;
  v30 = specialized Collection.prefix(_:)(20, v82);
  v78 = v31;
  v87 = v32;
  v88 = v33;
  v91[0] = 0xD00000000000001ELL;
  v91[1] = "%@ %-15.2f %-15.2f\n" + 0x8000000000000000;
  v34 = *(v29 + 16) < 0x15uLL;
  v80 = v30;
  if (!v34)
  {
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v89._object;
    v89._countAndFlagsBits = 0xD000000000000010;
    v89._object = "\n******CONFUSION MATRIX******\n" + 0x8000000000000000;
    v84 = 20;
    v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v35._object;
    String.append(_:)(v35);
    object;
    v37._object = 0xE400000000000000;
    v37._countAndFlagsBits = 762929709;
    String.append(_:)(v37);
    v84 = 20;
    v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v39 = v38._object;
    String.append(_:)(v38);
    v39;
    v37._countAndFlagsBits = 0xA2A2A2A2A2029;
    v37._object = 0xE700000000000000;
    String.append(_:)(v37);
    v40 = v89._object;
    v30 = v80;
    String.append(_:)(v89);
    v40;
  }

  v41._object = "Empty ArraySlice" + 0x8000000000000000;
  v41._countAndFlagsBits = 0xD000000000000023;
  String.append(_:)(v41);
  v89._countAndFlagsBits = 0x6572505C65757254;
  v89._object = 0xE900000000000064;
  v84 = 32;
  v85 = 0xE100000000000000;
  v86 = lazy protocol witness table accessor for type String and conformance String();
  v42 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v90, &v84, 0, &type metadata for String, &type metadata for String, v86, v86);
  v44 = v43;
  v41._countAndFlagsBits = v42;
  v41._object = v43;
  String.append(_:)(v41);
  v44;
  v45 = v88 >> 1;
  v46 = v87;
  v88 = v45;
  if (v87 == v45)
  {
    v47._countAndFlagsBits = 10;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = v83;
  }

  else
  {
    if (v87 >= v45)
    {
      BUG();
    }

    swift_unknownObjectRetain(v30);
    v49 = 16 * v46 + v78 + 8;
    v50 = v88;
    v51 = v86;
    do
    {
      v89 = *(v49 - 8);
      v84 = 32;
      v85 = 0xE100000000000000;
      v52._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v81, &v84, 0, &type metadata for String, &type metadata for String, v51, v51);
      v53 = v52._object;
      String.append(_:)(v52);
      v53;
      --v50;
      v49 += 16;
    }

    while (v87 != v50);
    v54 = v80;
    swift_unknownObjectRelease(v80);
    v55._countAndFlagsBits = 10;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    v56 = v87;
    v82 = (v88 - v87);
    if (__OFSUB__(v88, v87))
    {
      BUG();
    }

    if ((v88 - v87) < 0)
    {
      BUG();
    }

    swift_unknownObjectRetain(v54);
    v57 = 1;
    v76 = 0;
    v48 = v83;
    do
    {
      v75 = v57;
      v87 = v56;
      v89 = *(v78 + 16 * v56);
      v84 = 32;
      v85 = 0xE100000000000000;
      v58._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v90, &v84, 0, &type metadata for String, &type metadata for String, v86, v86);
      v59 = v58._object;
      String.append(_:)(v58);
      v59;
      if (v82)
      {
        v60 = 0;
        do
        {
          v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
          v62 = swift_allocObject(v61, 48, 7);
          v62[2] = 2;
          v62[3] = 4;
          v62[4] = v76;
          v62[5] = v60;
          MLShapedArrayProtocol.subscript.getter(v62, v48, v74);
          v62;
          v63 = _mm_cvtsi32_si128(v89._countAndFlagsBits);
          if ((_mm_cvtsi128_si32(v63) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            BUG();
          }

          if (*v63.i32 <= -9.2233731e18)
          {
            BUG();
          }

          if (*v63.i32 >= 9.223372e18)
          {
            BUG();
          }

          ++v60;
          v89._countAndFlagsBits = *v63.i32;
          v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v65 = v64._object;
          v89 = v64;
          v84 = 32;
          v85 = 0xE100000000000000;
          v66 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v81, &v84, 0, &type metadata for String, &type metadata for String, v86, v86);
          v68 = v67;
          v65;
          v69._countAndFlagsBits = v66;
          v69._object = v68;
          String.append(_:)(v69);
          v69._countAndFlagsBits = v68;
          v48 = v83;
          v69._countAndFlagsBits;
        }

        while (v82 != v60);
      }

      v70._countAndFlagsBits = 10;
      v70._object = 0xE100000000000000;
      String.append(_:)(v70);
      v57 = v75 + 1;
      if (__OFADD__(1, v75))
      {
        BUG();
      }

      v56 = v87 + 1;
      v76 = v75;
    }

    while (v87 + 1 != v88);
    v30 = v80;
    swift_unknownObjectRelease(v80);
  }

  v71 = v79;
  swift_unknownObjectRelease(v30);
  (*(v71 + 8))(v77, v48);
  return v91[0];
}

unint64_t MLClassifierMetrics.precisionRecallDescription.getter()
{
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v56 = *(v61 - 8);
  v0 = *(v56 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v60 = v46;
  v3 = alloca(v0);
  v4 = alloca(v0);
  v63 = v46;
  v70 = type metadata accessor for AnyColumn(0);
  v64 = *(v70 - 8);
  v5 = *(v64 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v65 = v46;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v57 = *(v62 - 8);
  v8 = *(v57 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v69 = v46;
  v11 = type metadata accessor for DataFrame(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  MLClassifierMetrics.precisionRecallDataFrame.getter();
  v66 = v46;
  if (DataFrameProtocol.isEmpty.getter(v11, &protocol witness table for DataFrame))
  {
    (*(v12 + 8))(v66, v11);
    return 0;
  }

  else
  {
    v59 = v12;
    v58 = v11;
    v17 = MLClassifierMetrics.Contents.stringLabels.getter();
    ML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySSG_Sis5NeverOTg5159_s8CreateML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n(v17);
    v17;
    v19 = specialized Sequence<>.max()(ML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n);
    LOBYTE(v17) = v20;
    ML19MLClassifierMetricsV26precisionRecallDescription33_21E6E2EACFD6F93017C79EF6BCC906FCLLSSvgSiSScfu_33_1a2cfc70c67f85f4b89db78a8cf64951SSSiTf3nnnpk_nTf1cn_n;
    if (v17)
    {
      v19 = 0;
    }

    v48 = 0xD000000000000041;
    v49 = "ifierMetrics.swift" + 0x8000000000000000;
    v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v21 = swift_allocObject(v52, 152, 7);
    *(v21 + 16) = 3;
    *(v21 + 24) = 6;
    v67 = 0x7373616C43;
    v68 = 0xE500000000000000;
    v50 = 32;
    v51 = 0xE100000000000000;
    v22 = lazy protocol witness table accessor for type String and conformance String();
    v53 = v19;
    v54 = v22;
    v23 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v19, &v50, 0, &type metadata for String, &type metadata for String, v22, v22);
    v25 = v24;
    *(v21 + 56) = &type metadata for String;
    v26 = lazy protocol witness table accessor for type String and conformance String();
    *(v21 + 64) = v26;
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    *(v21 + 96) = &type metadata for String;
    *(v21 + 104) = v26;
    strcpy((v21 + 72), "Precision(%)");
    *(v21 + 85) = 0;
    *(v21 + 86) = -5120;
    *(v21 + 136) = &type metadata for String;
    v55 = v26;
    *(v21 + 144) = v26;
    *(v21 + 112) = 0x25286C6C61636552;
    *(v21 + 120) = 0xE900000000000029;
    v27._countAndFlagsBits = String.init(format:_:)(0x4035312D25204025, 0xEF0A4035312D2520, v21);
    object = v27._object;
    String.append(_:)(v27);
    object;
    v29 = v65;
    DataFrame.subscript.getter(0x7373616C63, 0xE500000000000000);
    AnyColumn.convertedToStrings()();
    (*(v64 + 8))(v29, v70);
    DataFrame.subscript.getter(0x6F69736963657270, 0xE90000000000006ELL, &type metadata for Double);
    v30 = v60;
    DataFrame.subscript.getter(0x6C6C61636572, 0xE600000000000000, &type metadata for Double);
    v31 = Column.count.getter(v62);
    v64 = v31;
    if (v31 < 0)
    {
      BUG();
    }

    if (v31)
    {
      v65 = "----------------\n" + 0x8000000000000000;
      v70 = 0;
      do
      {
        v32 = swift_allocObject(v52, 152, 7);
        *(v32 + 16) = 3;
        *(v32 + 24) = 6;
        Column.subscript.getter(v70, v62);
        v33 = v68;
        if (!v68)
        {
          BUG();
        }

        v50 = v67;
        v51 = v68;
        v47[0] = 32;
        v47[1] = 0xE100000000000000;
        v34 = StringProtocol.padding<A>(toLength:withPad:startingAt:)(v53, v47, 0, &type metadata for String, &type metadata for String, v54, v54);
        v36 = v35;
        v33;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = v55;
        *(v32 + 32) = v34;
        *(v32 + 40) = v36;
        v37 = v61;
        Column.subscript.getter(v70, v61);
        if (v68)
        {
          BUG();
        }

        v38 = *&v67 * 100.0;
        *(v32 + 96) = &type metadata for Double;
        *(v32 + 104) = &protocol witness table for Double;
        *(v32 + 72) = v38;
        v30 = v60;
        Column.subscript.getter(v70, v37);
        if (v68)
        {
          BUG();
        }

        v39 = v70 + 1;
        v40 = *&v67 * 100.0;
        *(v32 + 136) = &type metadata for Double;
        *(v32 + 144) = &protocol witness table for Double;
        *(v32 + 112) = v40;
        v41._countAndFlagsBits = String.init(format:_:)(0xD000000000000013, v65, v32);
        v42 = v41._object;
        String.append(_:)(v41);
        v42;
        v70 = v39;
      }

      while (v64 != v39);
    }

    v43._countAndFlagsBits = 10;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    v44 = *(v56 + 8);
    v43._countAndFlagsBits = v30;
    v45 = v61;
    v44(v43._countAndFlagsBits, v61);
    v44(v63, v45);
    (*(v57 + 8))(v69, v62);
    (*(v59 + 8))(v66, v58);
    return v48;
  }
}

uint64_t MLClassifierMetrics.playgroundDescription.getter()
{
  v1 = v0;
  v2 = MLClassifierMetrics.accuracyDescription.getter();
  v4 = v3;
  objc_allocWithZone(NSAttributedString);
  v5 = @nonobjc NSAttributedString.init(string:attributes:)(v2, v4, 0);
  result = type metadata accessor for NSAttributedString();
  v1[3] = result;
  *v1 = v5;
  return result;
}

uint64_t MLClassifierMetrics.Contents.confusionMatrix(labels:)(void *a1)
{
  v128 = v2;
  v125 = a1;
  v3 = v1;
  v106 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v123 = *(v106 - 8);
  v4 = *(v123 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v99 = &v97;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v124 = &v97;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Int>>);
  v102 = *(v115 - 8);
  v9 = *(v102 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v116 = &v97;
  v129 = type metadata accessor for AnyColumn(0);
  v126 = *(v129 - 8);
  v12 = *(v126 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v113 = &v97;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v110 = *(v108 - 8);
  v15 = *(v110 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v98 = &v97;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v97 = &v97;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v109 = &v97;
  v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v103 = *(v121 - 8);
  v22 = *(v103 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v114 = &v97;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v112 = &v97;
  v117 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v104 = *(v117 - 8);
  v27 = *(v104 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v111 = &v97;
  v30 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v107 = &v97;
  v34 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v37 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  outlined init with copy of MLClassifierMetrics.Contents(v128, &v97);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v97, v37);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v105 = v3;
      v42 = v107;
      outlined init with take of MLClassifierMetrics(&v97, v107, type metadata accessor for MLClassifierMetrics.Precomputed);
      LODWORD(v119) = 0;
      v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v43 = swift_allocObject(v100, 48, 7);
      v43[2] = 2;
      v43[3] = 4;
      v44 = v125[2];
      v43[4] = v44;
      v122 = v44;
      v43[5] = v44;
      v101 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      MLShapedArrayProtocol.init(repeating:shape:)(&v119, v43, v117, v101);
      v128 = v42 + *(v30 + 20);
      v45 = v113;
      DataFrame.subscript.getter(0x7373616C63, 0xE500000000000000);
      v46 = v109;
      AnyColumn.convertedToStrings()();
      v126 = *(v126 + 8);
      (v126)(v45, v129);
      v119 = 0;
      v120 = 0xE000000000000000;
      v118 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v47 = v108;
      OptionalColumnProtocol.filled(with:)(&v119, v108, v118);
      v48 = *(v110 + 8);
      v48(v46, v47);
      DataFrame.subscript.getter(0x6574636964657270, 0xEF7373616C635F64);
      AnyColumn.convertedToStrings()();
      (v126)(v45, v129);
      v119 = 0;
      v120 = 0xE000000000000000;
      OptionalColumnProtocol.filled(with:)(&v119, v47, v118);
      v113 = v48;
      v48(v46, v47);
      v49 = v124;
      DataFrame.subscript.getter(0x746E756F63, 0xE500000000000000, &type metadata for Int);
      v119 = 0;
      v50 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
      v51 = v106;
      OptionalColumnProtocol.filled(with:)(&v119, v106, v50);
      v126 = *(v123 + 8);
      (v126)(v49, v51);
      v52 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type FilledColumn<Column<Int>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Int>>, &protocol conformance descriptor for FilledColumn<A>);
      v53 = v115;
      dispatch thunk of Collection.startIndex.getter(v115, v52);
      dispatch thunk of Collection.endIndex.getter(v53, v52);
      v54 = dispatch thunk of Collection.distance(from:to:)(&v119, &v127, v53, v52);
      v109 = v54;
      if (v54 < 0)
      {
        BUG();
      }

      if (v54)
      {
        v118 = (v125 + 9);
        v55 = 0;
        do
        {
          v128 = v55;
          v127 = v55;
          v56 = v97;
          FilledColumn.base.getter(v121);
          v57 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
          v58 = v108;
          v123 = v57;
          v59 = dispatch thunk of Collection.subscript.read(&v119, &v127, v108, v57);
          v129 = *v60;
          v61 = v60[1];
          v61;
          v59(&v119, 0);
          (v113)(v56, v58);
          if (!v61)
          {
            FilledColumn.defaultValue.getter(v121);
            v129 = v119;
            v61 = v120;
          }

          v62 = v128;
          if (!v122)
          {
            goto LABEL_23;
          }

          v63 = v125[4];
          v64 = v125[5];
          if (v63 == v129 && v64 == v61 || (_stringCompareWithSmolCheck(_:_:expecting:)(v125[4], v125[5], v129, v61, 0) & 1) != 0)
          {
            v124 = v64;
            v65 = 0;
          }

          else
          {
            if (v122 == 1)
            {
              goto LABEL_23;
            }

            v124 = v64;
            v83 = v125[6];
            v84 = v125[7];
            if (v83 != v129 || (v65 = 1, v84 != v61))
            {
              v65 = 1;
              if ((_stringCompareWithSmolCheck(_:_:expecting:)(v83, v84, v129, v61, 0) & 1) == 0)
              {
                v85 = v118;
                v86 = 2;
                while (v122 != v86)
                {
                  v65 = v86;
                  if (v129 ^ *(v85 - 1) | v61 ^ *v85)
                  {
                    v87 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v85 - 1), *v85, v129, v61, 0);
                    v86 = v65 + 1;
                    v85 += 2;
                    if ((v87 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  goto LABEL_13;
                }

LABEL_23:
                v82 = v61;
                goto LABEL_24;
              }
            }
          }

LABEL_13:
          v129 = v63;
          v110 = v65;
          v61;
          v127 = v62;
          v66 = v98;
          FilledColumn.base.getter(v121);
          v67 = v108;
          v68 = dispatch thunk of Collection.subscript.read(&v119, &v127, v108, v123);
          v123 = *v69;
          v70 = v69[1];
          v70;
          v68(&v119, 0);
          v71 = v67;
          v72 = v123;
          (v113)(v66, v71);
          if (!v70)
          {
            FilledColumn.defaultValue.getter(v121);
            v72 = v119;
            v70 = v120;
          }

          if (v129 == v72 && v124 == v70 || (_stringCompareWithSmolCheck(_:_:expecting:)(v129, v124, v72, v70, 0) & 1) != 0)
          {
            v73 = 0;
LABEL_19:
            v70;
            v74 = swift_allocObject(v100, 48, 7);
            v74[2] = 2;
            v74[3] = 4;
            v74[4] = v110;
            v74[5] = v73;
            v127 = v62;
            v75 = v99;
            FilledColumn.base.getter(v115);
            v76 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Int> and conformance Column<A>, &demangling cache variable for type metadata for Column<Int>, &protocol conformance descriptor for Column<A>);
            v77 = v106;
            v78 = dispatch thunk of Collection.subscript.read(&v119, &v127, v106, v76);
            v80 = *v79;
            v81 = *(v79 + 8);
            v78(&v119, 0);
            (v126)(v75, v77);
            if (v81 == 1)
            {
              FilledColumn.defaultValue.getter(v115);
              LODWORD(v80) = v119;
            }

            *&v119 = v80;
            MLShapedArrayProtocol.subscript.setter(&v119, v74, v117, v101);
            v62 = v128;
            goto LABEL_25;
          }

          if (v122 != 1)
          {
            v88 = v125[6];
            v89 = v125[7];
            if (v88 == v72)
            {
              v73 = 1;
              if (v89 == v70)
              {
                goto LABEL_19;
              }
            }

            v73 = 1;
            if (_stringCompareWithSmolCheck(_:_:expecting:)(v88, v89, v72, v70, 0))
            {
              goto LABEL_19;
            }

            v90 = v118;
            v91 = 2;
            while (v122 != v91)
            {
              if (v122 <= v91)
              {
                BUG();
              }

              v73 = v91;
              if (v72 ^ *(v90 - 1) | v70 ^ *v90)
              {
                v92 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v90 - 1), *v90, v72, v70, 0);
                v91 = v73 + 1;
                v90 += 2;
                if ((v92 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_19;
            }
          }

          v82 = v70;
LABEL_24:
          v82;
LABEL_25:
          v55 = v62 + 1;
        }

        while (v55 != v109);
      }

      (*(v102 + 8))(v116, v115);
      v95 = *(v103 + 8);
      v96 = v121;
      v95(v114, v121);
      v95(v112, v96);
      outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLClassifierMetrics.Precomputed);
      return (*(v104 + 32))(v105, v111, v117);
    }

    else
    {
      v97;
      v94 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      return MLShapedArrayProtocol.init(arrayLiteral:)(_swiftEmptyArrayStorage, v117, v94);
    }
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v97, &v97, type metadata accessor for AnyClassificationMetrics);
    AnyClassificationMetrics.makeConfusionMatrix()();
    return outlined destroy of MLActivityClassifier.ModelParameters(&v97, type metadata accessor for AnyClassificationMetrics);
  }
}

void *initializeBufferWithCopyOfBuffer for MLClassifierMetrics(void *a1, char *a2)
{
  v3 = a1;
  v4 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v4);
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *a2;
      swift_errorRetain(*a2);
      *a1 = v12;
      v21 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v16 = swift_getEnumCaseMultiPayload(a2, v15);
        v17 = v16 == 1;
        v18 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v16 == 1)
        {
          v18 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v19 = __swift_instantiateConcreteTypeFromMangledName(v18);
        (*(*(v19 - 8) + 16))(v3, a2, v19);
        swift_storeEnumTagMultiPayload(v3, v15, v17);
        a1 = v3;
        v14 = v4;
        v13 = 0;
        goto LABEL_11;
      }

      *a1 = *a2;
      v22 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = *(v22 + 20);
      v23 = a1 + v7;
      v8 = type metadata accessor for DataFrame(0);
      v9 = &a2[v7];
      v10 = *(*(v8 - 8) + 16);
      v10(v23, v9, v8);
      v10(a1 + *(v22 + 24), &a2[*(v22 + 24)], v8);
      v21 = 1;
    }

    v13 = v21;
    v14 = v4;
LABEL_11:
    swift_storeEnumTagMultiPayload(a1, v14, v13);
    return v3;
  }

  v11 = *a2;
  *v3 = *a2;
  v3 = (v11 + ((v5 + 16) & ~v5));

  return v3;
}

uint64_t destroy for MLClassifierMetrics(void *a1)
{
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  result = swift_getEnumCaseMultiPayload(a1, v2);
  switch(result)
  {
    case 2:
      return *a1;
    case 1:
      v6 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = a1 + *(v6 + 20);
      v8 = type metadata accessor for DataFrame(0);
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      return (v9)(a1 + *(v6 + 24), v8);
    case 0:
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(a1, v4) == 1)
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledName(v5);
      return (*(*(v10 - 8) + 8))(a1, v10);
  }

  return result;
}

void *initializeWithCopy for MLClassifierMetrics(void *a1, char *a2)
{
  v2 = a1;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  if (EnumCaseMultiPayload == 2)
  {
    v10 = *a2;
    swift_errorRetain(*a2);
    *a1 = v10;
    v8 = 2;
    v9 = v3;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v5 = *(v19 + 20);
    v6 = type metadata accessor for DataFrame(0);
    v18 = v3;
    v7 = *(*(v6 - 8) + 16);
    v7(a1 + v5, &a2[v5], v6);
    v7(a1 + *(v19 + 24), &a2[*(v19 + 24)], v6);
    v8 = 1;
    v9 = v18;
  }

  else
  {
    v11 = v3;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v13 = swift_getEnumCaseMultiPayload(a2, v12);
    v14 = v13 == 1;
    v15 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v13 == 1)
    {
      v15 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
    (*(*(v16 - 8) + 16))(v2, a2, v16);
    swift_storeEnumTagMultiPayload(v2, v12, v14);
    a1 = v2;
    v9 = v11;
    v8 = 0;
  }

  swift_storeEnumTagMultiPayload(a1, v9, v8);
  return v2;
}

char *assignWithCopy for MLClassifierMetrics(char *a1, char *a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifierMetrics.Contents);
    v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *a2;
      swift_errorRetain(*a2);
      *a1 = v10;
      v8 = 2;
      v9 = v3;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v5 = *(v19 + 20);
      v6 = type metadata accessor for DataFrame(0);
      v18 = v3;
      v7 = *(*(v6 - 8) + 16);
      v7(&a1[v5], &a2[v5], v6);
      v7(&a1[*(v19 + 24)], &a2[*(v19 + 24)], v6);
      v8 = 1;
      v9 = v18;
    }

    else
    {
      v11 = v3;
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v13 = swift_getEnumCaseMultiPayload(a2, v12);
      v14 = v13 == 1;
      v15 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v13 == 1)
      {
        v15 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
      (*(*(v16 - 8) + 16))(v2, a2, v16);
      swift_storeEnumTagMultiPayload(v2, v12, v14);
      a1 = v2;
      v9 = v11;
      v8 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v9, v8);
  }

  return v2;
}

char *initializeWithTake for MLClassifierMetrics(char *__dst, char *__src)
{
  v2 = __dst;
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v17 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v12 = *(v17 + 20);
    v13 = type metadata accessor for DataFrame(0);
    v16 = v3;
    v14 = *(*(v13 - 8) + 32);
    v14(&__dst[v12], &__src[v12], v13);
    v14(&__dst[*(v17 + 24)], &__src[*(v17 + 24)], v13);
    v11 = 1;
    v10 = v16;
LABEL_7:
    swift_storeEnumTagMultiPayload(__dst, v10, v11);
    return v2;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    v7 = v6 == 1;
    v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v6 == 1)
    {
      v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
    (*(*(v9 - 8) + 32))(v2, __src, v9);
    swift_storeEnumTagMultiPayload(v2, v5, v7);
    __dst = v2;
    v10 = v3;
    v11 = 0;
    goto LABEL_7;
  }

  return memcpy(__dst, __src, *(*(v3 - 8) + 64));
}

char *assignWithTake for MLClassifierMetrics(char *__dst, char *__src)
{
  v2 = __dst;
  if (__dst == __src)
  {
    return v2;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLClassifierMetrics.Contents);
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v17 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v12 = *(v17 + 20);
    v13 = type metadata accessor for DataFrame(0);
    v16 = v3;
    v14 = *(*(v13 - 8) + 32);
    v14(&__dst[v12], &__src[v12], v13);
    v14(&__dst[*(v17 + 24)], &__src[*(v17 + 24)], v13);
    v11 = 1;
    v10 = v16;
LABEL_8:
    swift_storeEnumTagMultiPayload(__dst, v10, v11);
    return v2;
  }

  if (!EnumCaseMultiPayload)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    v7 = v6 == 1;
    v8 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v6 == 1)
    {
      v8 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
    (*(*(v9 - 8) + 32))(v2, __src, v9);
    swift_storeEnumTagMultiPayload(v2, v5, v7);
    __dst = v2;
    v10 = v3;
    v11 = 0;
    goto LABEL_8;
  }

  return memcpy(__dst, __src, *(*(v3 - 8) + 64));
}

uint64_t type metadata completion function for MLClassifierMetrics(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for MLClassifierMetrics.Contents(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLClassifierMetrics.Contents(void *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *a2;
      swift_errorRetain(*a2);
      *a1 = v13;
      v22 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v17 = swift_getEnumCaseMultiPayload(a2, v16);
        v18 = v17 == 1;
        v19 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v17 == 1)
        {
          v19 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v20 = __swift_instantiateConcreteTypeFromMangledName(v19);
        (*(*(v20 - 8) + 16))(v4, a2, v20);
        swift_storeEnumTagMultiPayload(v4, v16, v18);
        a1 = v4;
        v15 = a3;
        v14 = 0;
        goto LABEL_11;
      }

      *a1 = *a2;
      v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v8 = *(v23 + 20);
      v24 = a1 + v8;
      v9 = type metadata accessor for DataFrame(0);
      v10 = &a2[v8];
      v11 = *(*(v9 - 8) + 16);
      v11(v24, v10, v9);
      v11(a1 + *(v23 + 24), &a2[*(v23 + 24)], v9);
      v22 = 1;
    }

    v14 = v22;
    v15 = a3;
LABEL_11:
    swift_storeEnumTagMultiPayload(a1, v15, v14);
    return v4;
  }

  v12 = *a2;
  *v4 = *a2;
  v4 = (v12 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for MLClassifierMetrics.Contents(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 2:
      return *a1;
    case 1:
      v6 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = a1 + *(v6 + 20);
      v8 = type metadata accessor for DataFrame(0);
      v9 = *(*(v8 - 8) + 8);
      v9(v7, v8);
      return (v9)(a1 + *(v6 + 24), v8);
    case 0:
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(a1, v4) == 1)
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v5 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v10 = __swift_instantiateConcreteTypeFromMangledName(v5);
      return (*(*(v10 - 8) + 8))(a1, v10);
  }

  return result;
}

void *initializeWithCopy for MLClassifierMetrics.Contents(void *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v11 = *a2;
    swift_errorRetain(*a2);
    *a1 = v11;
    v9 = 2;
    v10 = a3;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v20 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v6 = *(v20 + 20);
    v7 = type metadata accessor for DataFrame(0);
    v19 = a3;
    v8 = *(*(v7 - 8) + 16);
    v8(a1 + v6, &a2[v6], v7);
    v8(a1 + *(v20 + 24), &a2[*(v20 + 24)], v7);
    v9 = 1;
    v10 = v19;
  }

  else
  {
    v12 = a3;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v14 = swift_getEnumCaseMultiPayload(a2, v13);
    v15 = v14 == 1;
    v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v14 == 1)
    {
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
    (*(*(v17 - 8) + 16))(v4, a2, v17);
    swift_storeEnumTagMultiPayload(v4, v13, v15);
    a1 = v4;
    v10 = v12;
    v9 = 0;
  }

  swift_storeEnumTagMultiPayload(a1, v10, v9);
  return v4;
}

char *assignWithCopy for MLClassifierMetrics.Contents(char *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLClassifierMetrics.Contents);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *a2;
      swift_errorRetain(*a2);
      *a1 = v11;
      v20 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v15 = swift_getEnumCaseMultiPayload(a2, v14);
        v16 = v15 == 1;
        v17 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v15 == 1)
        {
          v17 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
        (*(*(v18 - 8) + 16))(v3, a2, v18);
        swift_storeEnumTagMultiPayload(v3, v14, v16);
        a1 = v3;
        v13 = a3;
        v12 = 0;
        goto LABEL_10;
      }

      *a1 = *a2;
      v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v7 = *(v21 + 20);
      v22 = &a1[v7];
      v8 = type metadata accessor for DataFrame(0);
      v9 = &a2[v7];
      v10 = *(*(v8 - 8) + 16);
      v10(v22, v9, v8);
      v10(&a1[*(v21 + 24)], &a2[*(v21 + 24)], v8);
      v20 = 1;
    }

    v12 = v20;
    v13 = a3;
LABEL_10:
    swift_storeEnumTagMultiPayload(a1, v13, v12);
  }

  return v3;
}

char *initializeWithTake for MLClassifierMetrics.Contents(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v18 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v13 = *(v18 + 20);
    v14 = type metadata accessor for DataFrame(0);
    v17 = a3;
    v15 = *(*(v14 - 8) + 32);
    v15(&__dst[v13], &__src[v13], v14);
    v15(&__dst[*(v18 + 24)], &__src[*(v18 + 24)], v14);
    v12 = 1;
    v11 = v17;
LABEL_7:
    swift_storeEnumTagMultiPayload(__dst, v11, v12);
    return v4;
  }

  if (!EnumCaseMultiPayload)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v7 = swift_getEnumCaseMultiPayload(__src, v6);
    v8 = v7 == 1;
    v9 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v7 == 1)
    {
      v9 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
    (*(*(v10 - 8) + 32))(v4, __src, v10);
    swift_storeEnumTagMultiPayload(v4, v6, v8);
    __dst = v4;
    v11 = a3;
    v12 = 0;
    goto LABEL_7;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithTake for MLClassifierMetrics.Contents(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  if (__dst == __src)
  {
    return v3;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLClassifierMetrics.Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 1)
  {
    *__dst = *__src;
    v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v14 = *(v19 + 20);
    v20 = &__dst[v14];
    v15 = type metadata accessor for DataFrame(0);
    v16 = &__src[v14];
    v17 = *(*(v15 - 8) + 32);
    v17(v20, v16, v15);
    v17(&__dst[*(v19 + 24)], &__src[*(v19 + 24)], v15);
    v13 = 1;
    v12 = a3;
LABEL_8:
    swift_storeEnumTagMultiPayload(__dst, v12, v13);
    return v3;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v8 = swift_getEnumCaseMultiPayload(__src, v7);
    v9 = v8 == 1;
    v10 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v8 == 1)
    {
      v10 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
    (*(*(v11 - 8) + 32))(v3, __src, v11);
    swift_storeEnumTagMultiPayload(v3, v7, v9);
    __dst = v3;
    v12 = a3;
    v13 = 0;
    goto LABEL_8;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLClassifierMetrics.Contents(uint64_t a1)
{
  result = type metadata accessor for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(319);
  if (v2 <= 0x3F)
  {
    v6[0] = *(result - 8) + 64;
    result = type metadata accessor for MLClassifierMetrics.Precomputed(319);
    if (v5 <= 0x3F)
    {
      v6[1] = *(result - 8) + 64;
      v6[2] = "\b";
      swift_initEnumMetadataMultiPayload(a1, 256, 3, v6, v3, v4);
      return 0;
    }
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLClassifierMetrics.Precomputed(void *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
    v11;
  }

  else
  {
    *a1 = *a2;
    v7 = *(a3 + 20);
    v13 = a1 + v7;
    v8 = type metadata accessor for DataFrame(0);
    v9 = &a2[v7];
    v10 = *(*(v8 - 8) + 16);
    v10(v13, v9, v8);
    v10(a1 + *(a3 + 24), &a2[*(a3 + 24)], v8);
  }

  return v4;
}

uint64_t destroy for MLClassifierMetrics.Precomputed(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for DataFrame(0);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  return (v4)(a1 + *(a2 + 24), v3);
}

char *initializeWithCopy for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 16);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

char *assignWithCopy for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 24);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

char *initializeWithTake for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 32);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

char *assignWithTake for MLClassifierMetrics.Precomputed(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = type metadata accessor for DataFrame(0);
  v5 = *(*(v4 - 8) + 40);
  v5(&a1[v3], &a2[v3], v4);
  v5(&a1[*(a3 + 24)], &a2[*(a3 + 24)], v4);
  return a1;
}

uint64_t type metadata completion function for MLClassifierMetrics.Precomputed(uint64_t a1)
{
  v3 = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    v5 = v4;
    swift_initStructMetadata(a1, 256, 3, &v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn()
{
  result = lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn;
  if (!lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn)
  {
    v1 = type metadata accessor for AnyColumn(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AnyColumn, v1);
    lazy protocol witness table cache variable for type AnyColumn and conformance AnyColumn = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *__src;
    *v3 = *__src;
    v3 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 16))(__dst, __src, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v19 = *(v18 + 48);
        *&__dst[v19] = *&__src[v19];
        v20 = *&__src[v19 + 8];
        *&v3[v19 + 8] = v20;
        v21 = *(v18 + 64);
        *&v3[v21] = *&__src[v21];
        v22 = *&__src[v21 + 8];
        *&v3[v21 + 8] = v22;
        v20;
        v22;
        swift_storeEnumTagMultiPayload(v3, a3, 3);
        break;
      case 2:
        v13 = *__src;
        v14 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v14);
        *__dst = v13;
        __dst[8] = v14;
        *(__dst + 2) = *(__src + 2);
        v15 = *(__src + 3);
        *(v3 + 3) = v15;
        *(v3 + 4) = *(__src + 4);
        v16 = *(__src + 5);
        *(v3 + 5) = v16;
        v15;
        v16;
        swift_storeEnumTagMultiPayload(v3, a3, 2);
        break;
      case 1:
        v8 = type metadata accessor for MLObjectDetector.DataSource(0);
        switch(swift_getEnumCaseMultiPayload(__src, v8))
        {
          case 0u:
            v9 = type metadata accessor for URL(0);
            (*(*(v9 - 8) + 16))(__dst, __src, v9);
            v10 = v8;
            v11 = 0;
            break;
          case 1u:
            v34 = type metadata accessor for URL(0);
            v38 = v8;
            v35 = *(*(v34 - 8) + 16);
            v35(__dst, __src, v34);
            v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
            v35(&__dst[*(v36 + 48)], &__src[*(v36 + 48)], v34);
            v37 = 1;
            goto LABEL_14;
          case 2u:
            v24 = *__src;
            v38 = v8;
            v25 = __src[8];
            outlined copy of Result<_DataTable, Error>(*__src, v25);
            *__dst = v24;
            __dst[8] = v25;
            *(__dst + 2) = *(__src + 2);
            v26 = *(__src + 3);
            *(v3 + 3) = v26;
            *(v3 + 4) = *(__src + 4);
            v27 = *(__src + 5);
            *(v3 + 5) = v27;
            v26;
            v27;
            v37 = 2;
LABEL_14:
            v11 = v37;
            __dst = v3;
            v10 = v38;
            break;
          case 3u:
            v28 = type metadata accessor for DataFrame(0);
            (*(*(v28 - 8) + 16))(__dst, __src, v28);
            v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
            v30 = *(v29 + 48);
            *&__dst[v30] = *&__src[v30];
            v31 = *&__src[v30 + 8];
            *&v3[v30 + 8] = v31;
            v32 = *(v29 + 64);
            *&v3[v32] = *&__src[v32];
            v33 = *&__src[v32 + 8];
            *&v3[v32 + 8] = v33;
            v31;
            v33;
            v11 = 3;
            __dst = v3;
            v10 = v8;
            break;
          case 4u:
            JUMPOUT(0x1B250CLL);
        }

        swift_storeEnumTagMultiPayload(__dst, v10, v11);
        swift_storeEnumTagMultiPayload(v3, a3, 1);
        break;
      default:
        return memcpy(__dst, __src, *(v4 + 64));
    }
  }

  return v3;
}

uint64_t destroy for MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 3:
LABEL_7:
      v5 = type metadata accessor for DataFrame(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(a1 + *(v6 + 48) + 8);
      return *(a1 + *(v6 + 64) + 8);
    case 2:
LABEL_6:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      return *(a1 + 40);
    case 1:
      v3 = type metadata accessor for MLObjectDetector.DataSource(0);
      result = swift_getEnumCaseMultiPayload(a1, v3);
      switch(result)
      {
        case 0:
          v4 = type metadata accessor for URL(0);
          result = (*(*(v4 - 8) + 8))(a1, v4);
          break;
        case 1:
          v7 = type metadata accessor for URL(0);
          v8 = *(*(v7 - 8) + 8);
          v8(a1, v7);
          v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
          result = (v8)(v9, v7);
          break;
        case 2:
          goto LABEL_6;
        case 3:
          goto LABEL_7;
        default:
          return result;
      }

      break;
  }

  return result;
}

char *initializeWithCopy for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v14 = type metadata accessor for DataFrame(0);
      (*(*(v14 - 8) + 16))(__dst, __src, v14);
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v16 = *(v15 + 48);
      *&__dst[v16] = *&__src[v16];
      v17 = *&__src[v16 + 8];
      *&v4[v16 + 8] = v17;
      v18 = *(v15 + 64);
      *&v4[v18] = *&__src[v18];
      v19 = *&__src[v18 + 8];
      *&v4[v18 + 8] = v19;
      v17;
      v19;
      swift_storeEnumTagMultiPayload(v4, a3, 3);
      break;
    case 2:
      v10 = *__src;
      v11 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v11);
      *__dst = v10;
      __dst[8] = v11;
      *(__dst + 2) = *(__src + 2);
      v12 = *(__src + 3);
      *(v4 + 3) = v12;
      *(v4 + 4) = *(__src + 4);
      v13 = *(__src + 5);
      *(v4 + 5) = v13;
      v12;
      v13;
      swift_storeEnumTagMultiPayload(v4, a3, 2);
      break;
    case 1:
      v6 = type metadata accessor for MLObjectDetector.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v6))
      {
        case 0u:
          v7 = type metadata accessor for URL(0);
          (*(*(v7 - 8) + 16))(__dst, __src, v7);
          v8 = v6;
          v9 = 0;
          break;
        case 1u:
          v31 = type metadata accessor for URL(0);
          v35 = v6;
          v32 = *(*(v31 - 8) + 16);
          v32(__dst, __src, v31);
          v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v32(&__dst[*(v33 + 48)], &__src[*(v33 + 48)], v31);
          v34 = 1;
          goto LABEL_12;
        case 2u:
          v21 = *__src;
          v35 = v6;
          v22 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v22);
          *__dst = v21;
          __dst[8] = v22;
          *(__dst + 2) = *(__src + 2);
          v23 = *(__src + 3);
          *(v4 + 3) = v23;
          *(v4 + 4) = *(__src + 4);
          v24 = *(__src + 5);
          *(v4 + 5) = v24;
          v23;
          v24;
          v34 = 2;
LABEL_12:
          v9 = v34;
          __dst = v4;
          v8 = v35;
          break;
        case 3u:
          v25 = type metadata accessor for DataFrame(0);
          (*(*(v25 - 8) + 16))(__dst, __src, v25);
          v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
          v27 = *(v26 + 48);
          *&__dst[v27] = *&__src[v27];
          v28 = *&__src[v27 + 8];
          *&v4[v27 + 8] = v28;
          v29 = *(v26 + 64);
          *&v4[v29] = *&__src[v29];
          v30 = *&__src[v29 + 8];
          *&v4[v29 + 8] = v30;
          v28;
          v30;
          v9 = 3;
          __dst = v4;
          v8 = v6;
          break;
      }

      swift_storeEnumTagMultiPayload(__dst, v8, v9);
      swift_storeEnumTagMultiPayload(v4, a3, 1);
      break;
    default:
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  return v4;
}

char *assignWithCopy for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLObjectDetector.ModelParameters.ValidationData(__dst, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
    switch(EnumCaseMultiPayload)
    {
      case 3:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 16))(__dst, __src, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v16 = *(v15 + 48);
        *&__dst[v16] = *&__src[v16];
        v17 = *&__src[v16 + 8];
        *&v3[v16 + 8] = v17;
        v18 = *(v15 + 64);
        *&v3[v18] = *&__src[v18];
        v19 = *&__src[v18 + 8];
        *&v3[v18 + 8] = v19;
        v17;
        v19;
        swift_storeEnumTagMultiPayload(v3, a3, 3);
        break;
      case 2:
        v10 = *__src;
        v11 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v11);
        *__dst = v10;
        __dst[8] = v11;
        *(__dst + 2) = *(__src + 2);
        v12 = *(__src + 3);
        *(v3 + 3) = v12;
        *(v3 + 4) = *(__src + 4);
        v13 = *(__src + 5);
        *(v3 + 5) = v13;
        v12;
        v13;
        swift_storeEnumTagMultiPayload(v3, a3, 2);
        break;
      case 1:
        v6 = type metadata accessor for MLObjectDetector.DataSource(0);
        switch(swift_getEnumCaseMultiPayload(__src, v6))
        {
          case 0u:
            v7 = type metadata accessor for URL(0);
            (*(*(v7 - 8) + 16))(__dst, __src, v7);
            v8 = v6;
            v9 = 0;
            break;
          case 1u:
            v31 = type metadata accessor for URL(0);
            v35 = v6;
            v32 = *(*(v31 - 8) + 16);
            v32(__dst, __src, v31);
            v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
            v32(&__dst[*(v33 + 48)], &__src[*(v33 + 48)], v31);
            v34 = 1;
            goto LABEL_13;
          case 2u:
            v21 = *__src;
            v35 = v6;
            v22 = __src[8];
            outlined copy of Result<_DataTable, Error>(*__src, v22);
            *__dst = v21;
            __dst[8] = v22;
            *(__dst + 2) = *(__src + 2);
            v23 = *(__src + 3);
            *(v3 + 3) = v23;
            *(v3 + 4) = *(__src + 4);
            v24 = *(__src + 5);
            *(v3 + 5) = v24;
            v23;
            v24;
            v34 = 2;
LABEL_13:
            v9 = v34;
            __dst = v3;
            v8 = v35;
            break;
          case 3u:
            v25 = type metadata accessor for DataFrame(0);
            (*(*(v25 - 8) + 16))(__dst, __src, v25);
            v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
            v27 = *(v26 + 48);
            *&__dst[v27] = *&__src[v27];
            v28 = *&__src[v27 + 8];
            *&v3[v27 + 8] = v28;
            v29 = *(v26 + 64);
            *&v3[v29] = *&__src[v29];
            v30 = *&__src[v29 + 8];
            *&v3[v29 + 8] = v30;
            v28;
            v30;
            v9 = 3;
            __dst = v3;
            v8 = v6;
            break;
        }

        swift_storeEnumTagMultiPayload(__dst, v8, v9);
        swift_storeEnumTagMultiPayload(v3, a3, 1);
        break;
      default:
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }
  }

  return v3;
}

uint64_t type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLObjectDetector.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLObjectDetector.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLObjectDetector.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLObjectDetector.DataSource(0);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    if (v6 == 3)
    {
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v16 + 48)] = *&__src[*(v16 + 48)];
      *&__dst[*(v16 + 64)] = *&__src[*(v16 + 64)];
      v17 = 3;
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          memcpy(__dst, __src, *(*(v5 - 8) + 64));
          goto LABEL_14;
        }

        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 32))(__dst, __src, v7);
        v8 = v5;
        v9 = 0;
LABEL_12:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
LABEL_14:
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        return __dst;
      }

      v18 = type metadata accessor for URL(0);
      v13 = *(*(v18 - 8) + 32);
      v13(__dst, __src, v18);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v13(&__dst[*(v14 + 48)], &__src[*(v14 + 48)], v18);
      v17 = 1;
    }

    v9 = v17;
    v8 = v5;
    goto LABEL_12;
  }

  v10 = type metadata accessor for DataFrame(0);
  (*(*(v10 - 8) + 32))(__dst, __src, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
  *&__dst[*(v11 + 48)] = *&__src[*(v11 + 48)];
  *&__dst[*(v11 + 64)] = *&__src[*(v11 + 64)];
  swift_storeEnumTagMultiPayload(__dst, a3, 3);
  return __dst;
}

char *assignWithTake for MLObjectDetector.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLObjectDetector.ModelParameters.ValidationData(__dst, type metadata accessor for MLObjectDetector.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }

    v5 = type metadata accessor for MLObjectDetector.DataSource(0);
    v6 = swift_getEnumCaseMultiPayload(__src, v5);
    if (v6 == 3)
    {
      v15 = type metadata accessor for DataFrame(0);
      (*(*(v15 - 8) + 32))(__dst, __src, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v16 + 48)] = *&__src[*(v16 + 48)];
      *&__dst[*(v16 + 64)] = *&__src[*(v16 + 64)];
      v17 = 3;
    }

    else
    {
      if (v6 != 1)
      {
        if (v6)
        {
          memcpy(__dst, __src, *(*(v5 - 8) + 64));
          goto LABEL_15;
        }

        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 32))(__dst, __src, v7);
        v8 = v5;
        v9 = 0;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v8, v9);
LABEL_15:
        swift_storeEnumTagMultiPayload(__dst, a3, 1);
        return __dst;
      }

      v18 = type metadata accessor for URL(0);
      v13 = *(*(v18 - 8) + 32);
      v13(__dst, __src, v18);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v13(&__dst[*(v14 + 48)], &__src[*(v14 + 48)], v18);
      v17 = 1;
    }

    v9 = v17;
    v8 = v5;
    goto LABEL_13;
  }

  v10 = type metadata accessor for DataFrame(0);
  (*(*(v10 - 8) + 32))(__dst, __src, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
  *&__dst[*(v11 + 48)] = *&__src[*(v11 + 48)];
  *&__dst[*(v11 + 64)] = *&__src[*(v11 + 64)];
  swift_storeEnumTagMultiPayload(__dst, a3, 3);
  return __dst;
}

uint64_t type metadata completion function for MLObjectDetector.ModelParameters.ValidationData(uint64_t a1)
{
  v7[0] = &unk_3447A8;
  result = type metadata accessor for MLObjectDetector.DataSource(319);
  if (v2 <= 0x3F)
  {
    v7[1] = *(result - 8) + 64;
    v7[2] = &unk_3447C0;
    result = type metadata accessor for DataFrame(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout3(v6, *(result - 8) + 64, &unk_3447D8, &unk_3447D8);
      v7[3] = v6;
      swift_initEnumMetadataMultiPayload(a1, 256, 4, v7, v4, v5);
      return 0;
    }
  }

  return result;
}

void *MLObjectDetector.ModelParameters.ValidationData.generateTables(trainingData:)(void *a1, uint64_t *a2, uint64_t a3, __m128 a4)
{
  v128[1] = v4;
  v135 = v5;
  v126 = a2;
  v125 = a1;
  v127._countAndFlagsBits = type metadata accessor for DataFrame(0);
  v128[0] = *(v127._countAndFlagsBits - 8);
  v7 = *(v128[0] + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v127._object = &v110;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v133 = &v110;
  v12 = *(*(type metadata accessor for MLObjectDetector.DataSource(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  named = &v110;
  v15 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = *a3;
  v20 = *(a3 + 8);
  outlined init with copy of MLObjectDetector.ModelParameters.ValidationData(v135, &v110);
  switch(swift_getEnumCaseMultiPayload(&v110, v15))
  {
    case 0u:
      v118 = v19;
      v119 = v20 & 1;
      v129 = v110;
      v130 = v111;
      MLDataTable.randomSplit(strategy:)(&v131, &v120, &v129);
      result = v131;
      v22 = v132;
      v23 = v121;
      v24 = v125;
      *v125 = v120;
      *(v24 + 8) = v23;
      v25 = v126;
      *v126 = result;
      *(v25 + 8) = v22;
      break;
    case 1u:
      v49 = named;
      outlined init with take of MLObjectDetector.DataSource(&v110, named);
      v50 = v125;
      *v125 = v19;
      *(v50 + 8) = v20 & 1;
      outlined copy of Result<_DataTable, Error>(v19, v20);
      v51 = v128[1];
      static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(v49, 0, 0, 0, 0, a4);
      if (v51)
      {
        outlined consume of Result<_DataTable, Error>(v19, v20);
        result = outlined destroy of MLObjectDetector.ModelParameters.ValidationData(named, type metadata accessor for MLObjectDetector.DataSource);
      }

      else
      {
        outlined destroy of MLObjectDetector.ModelParameters.ValidationData(named, type metadata accessor for MLObjectDetector.DataSource);
        result = v129;
        v61 = BYTE8(v129);
        v62 = v126;
        *v126 = v129;
        *(v62 + 8) = v61;
      }

      break;
    case 2u:
      v123._object = v19;
      v33 = v110;
      LOBYTE(v135) = BYTE8(v110);
      named = v112;
      v131 = v110;
      LOBYTE(v132) = BYTE8(v110);
      v133 = v114;
      v128[0] = v113;
      v127._countAndFlagsBits = v111;
      if (BYTE8(v110))
      {
        outlined copy of Result<_DataTable, Error>(v110, 1);
        outlined copy of Result<_DataTable, Error>(v33, 1);
        v34 = tc_v1_flex_list_create(0);
        if (!v34)
        {
          BUG();
        }

        v35 = v34;
        outlined consume of Result<_DataTable, Error>(v33, 1);
        v36 = type metadata accessor for CMLSequence();
        v37 = swift_allocObject(v36, 25, 7);
        *(v37 + 16) = v35;
        *(v37 + 24) = 1;
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v110, 0);
        outlined copy of Result<_DataTable, Error>(v33, 0);
        _DataTable.columnNames.getter(v33);
        outlined consume of Result<_DataTable, Error>(v33, 0);
        v37 = v129;
      }

      v55 = CMLSequence.size.getter();
      v56 = specialized RandomAccessCollection<>.distance(from:to:)(0, v55);
      v37;
      v136 = v20;
      if (!v56)
      {
        goto LABEL_23;
      }

      if (v135)
      {
        outlined copy of Result<_DataTable, Error>(v33, 1);
        v57 = tc_v1_flex_list_create(0);
        if (!v57)
        {
          BUG();
        }

        v58 = v57;
        v59 = type metadata accessor for CMLSequence();
        v60 = swift_allocObject(v59, 25, 7);
        *(v60 + 16) = v58;
        *(v60 + 24) = 1;
        outlined consume of Result<_DataTable, Error>(v33, 1);
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v33, 0);
        _DataTable.columnNames.getter(v33);
        outlined consume of Result<_DataTable, Error>(v33, 0);
        v60 = v120;
      }

      *&v129 = v128[0];
      *(&v129 + 1) = v133;
      v63 = alloca(24);
      v64 = alloca(32);
      v111 = &v129;
      v65 = v128[1];
      v66 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v110, v60);
      v128[1] = v65;

      if ((v66 & 1) == 0)
      {
        named;
        outlined consume of Result<_DataTable, Error>(v33, v135);
        *&v129 = 0;
        *(&v129 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        *(&v129 + 1);
        *&v129 = 0xD00000000000002ALL;
        *(&v129 + 1) = "Accuracy: %.2f%%\n" + 0x8000000000000000;
        v71._countAndFlagsBits = v128[0];
        v72 = v133;
        v71._object = v133;
        String.append(_:)(v71);
        v72;
        v71._countAndFlagsBits = 46;
        v71._object = 0xE100000000000000;
        String.append(_:)(v71);
        *&v128[1] = v129;
        v71._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v71._object, 0, 0);
        *v73 = *&v128[1];
        *(v73 + 16) = 0;
        *(v73 + 32) = 0;
        *(v73 + 48) = 1;
        swift_willThrow(&type metadata for MLCreateError, v71._object);
        result = outlined consume of Result<_DataTable, Error>(v131, v132);
      }

      else
      {
LABEL_23:
        v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v67, v116);
        inited[2] = 1;
        inited[3] = 2;
        inited[4] = v127._countAndFlagsBits;
        v69 = named;
        inited[5] = named;
        *&v129 = v33;
        BYTE8(v129) = v135;
        v69;
        v70 = v128[1];
        static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v129, 0x6C69466567616D49, 0xED0000656D614E65, inited);
        if (!v70)
        {
          *&v129 = v33;
          BYTE8(v129) = v135;
          v83 = swift_initStackObject(v67, v117);
          v83[2] = 1;
          v83[3] = 2;
          v83[4] = v128[0];
          v84 = v133;
          v83[5] = v133;
          v84;
          static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v129, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v83);
          v128[1] = 0;
          v89 = v128[0];
          swift_setDeallocating(v83);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          outlined consume of Result<_DataTable, Error>(v33, v135);
          swift_setDeallocating(inited);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          MLDataTable.willMutate()();
          v90._object = 0xED0000656D616E65;
          v90._countAndFlagsBits = 0x6C69666567616D69;
          v91._countAndFlagsBits = v127._countAndFlagsBits;
          v91._object = named;
          MLDataTable.renameImpl(named:to:)(v91, v90);
          if (!v132)
          {
            v92 = v131;
            outlined copy of Result<_DataTable, Error>(v131, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v92, 0);
          }

          named;
          MLDataTable.willMutate()();
          v93._countAndFlagsBits = 0x697461746F6E6E61;
          v94._countAndFlagsBits = v89;
          v95 = v133;
          v94._object = v133;
          v93._object = 0xEA00000000006E6FLL;
          MLDataTable.renameImpl(named:to:)(v94, v93);
          LOBYTE(v135) = v132;
          object = v123._object;
          if (v132)
          {
            v95;
            v97 = v131;
          }

          else
          {
            v97 = v131;
            outlined copy of Result<_DataTable, Error>(v131, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v97, 0);
            v95;
          }

          v98 = v125;
          *v125 = object;
          v99 = v136;
          *(v98 + 8) = v136 & 1;
          v100 = v126;
          *v126 = v97;
          *(v100 + 8) = v135;
          goto LABEL_42;
        }

        v128[1] = v70;
        inited;
        v133;
        named;
        v85 = v135;
        outlined consume of Result<_DataTable, Error>(v33, v135);
        result = outlined consume of Result<_DataTable, Error>(v33, v85);
      }

      break;
    case 3u:
      v123._object = v19;
      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v39 = *(v38 + 48);
      v123._countAndFlagsBits = *(&v110 + v39);
      named = *(&v110 + v39 + 8);
      v40 = *(v38 + 64);
      v124._countAndFlagsBits = *(&v110 + v40);
      v135 = *(&v110 + v40 + 8);
      countAndFlagsBits = v127._countAndFlagsBits;
      v42 = v128[0];
      (*(v128[0] + 32))(v133, &v110, v127._countAndFlagsBits);
      v43 = DataFrame.columns.getter();
      v44 = *(v43 + 16);
      v43;
      if (v44 && (v45._countAndFlagsBits = v124._countAndFlagsBits, v45._object = v135, DataFrame.indexOfColumn(_:)(v45).is_nil))
      {
        named;
        *&v129 = 0;
        *(&v129 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        *(&v129 + 1);
        *&v129 = 0xD00000000000002ALL;
        *(&v129 + 1) = "Accuracy: %.2f%%\n" + 0x8000000000000000;
        v46._countAndFlagsBits = v124._countAndFlagsBits;
        v47 = v135;
        v46._object = v135;
        String.append(_:)(v46);
        v47;
        v46._countAndFlagsBits = 46;
        v46._object = 0xE100000000000000;
        String.append(_:)(v46);
        *&v128[1] = v129;
        v46._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v46._object, 0, 0);
        *v48 = *&v128[1];
        *(v48 + 16) = 0;
        *(v48 + 32) = 0;
        *(v48 + 48) = 1;
        swift_willThrow(&type metadata for MLCreateError, v46._object);
        result = (*(v42 + 8))(v133, countAndFlagsBits);
      }

      else
      {
        v52 = countAndFlagsBits;
        v53 = v127._object;
        *a4.i64 = (*(v42 + 16))(v127._object, v133, v52);
        v54 = v128[1];
        MLDataTable.init(_:convertArraysToShapedArrays:)(v53, 0, a4);
        if (v54)
        {
          (*(v42 + 8))(v133, v52);
          v135;
          result = named;
        }

        else
        {
          v136 = v20;
          v74 = v129;
          v75 = DWORD2(v129);
          v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
          v128[1] = 0;
          v122 = v76;
          v77 = swift_initStackObject(v76, &v110);
          v77[2] = 1;
          v77[3] = 2;
          v77[4] = v123._countAndFlagsBits;
          v78 = named;
          v77[5] = named;
          v131 = v74;
          LOBYTE(v132) = v75 & 1;
          v127._object = v74;
          v79 = v74;
          v80 = v77;
          HIDWORD(v124._object) = v75;
          outlined copy of Result<_DataTable, Error>(v79, v75);
          v78;
          v81 = v128[1];
          static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v131, 0x6C69466567616D49, 0xED0000656D614E65, v80);
          if (v81)
          {
            v82 = v127._object;
            v80;
            v135;
            named;
            v88 = BYTE4(v124._object);
            outlined consume of Result<_DataTable, Error>(v82, SBYTE4(v124._object));
            outlined consume of Result<_DataTable, Error>(v82, v88);
            result = (*(v128[0] + 8))(v133, v127._countAndFlagsBits);
          }

          else
          {
            v131 = v127._object;
            LOBYTE(v132) = v75 & 1;
            v86 = swift_initStackObject(v122, v115);
            v86[2] = 1;
            v86[3] = 2;
            v86[4] = v124._countAndFlagsBits;
            v87 = v135;
            v86[5] = v135;
            v87;
            static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v131, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v86);
            swift_setDeallocating(v86);
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            outlined consume of Result<_DataTable, Error>(v127._object, SBYTE4(v124._object));
            swift_setDeallocating(v80);
            specialized _ContiguousArrayStorage.__deallocating_deinit();
            MLDataTable.willMutate()();
            v101._countAndFlagsBits = 0x6C69666567616D69;
            v102._countAndFlagsBits = v123._countAndFlagsBits;
            v102._object = named;
            v101._object = 0xED0000656D616E65;
            MLDataTable.renameImpl(named:to:)(v102, v101);
            if (!BYTE8(v129))
            {
              v103 = v129;
              outlined copy of Result<_DataTable, Error>(v129, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v103, 0);
            }

            named;
            MLDataTable.willMutate()();
            v104._countAndFlagsBits = 0x697461746F6E6E61;
            v105._countAndFlagsBits = v124._countAndFlagsBits;
            v105._object = v135;
            v104._object = 0xEA00000000006E6FLL;
            MLDataTable.renameImpl(named:to:)(v105, v104);
            v106 = v125;
            object = v123._object;
            if (!BYTE8(v129))
            {
              v107 = v129;
              outlined copy of Result<_DataTable, Error>(v129, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v107, 0);
            }

            v135;
            (*(v128[0] + 8))(v133, v127._countAndFlagsBits);
            *v106 = object;
            v99 = v136;
            *(v106 + 8) = v136 & 1;
            v108 = BYTE8(v129);
            v109 = v126;
            *v126 = v129;
            *(v109 + 8) = v108;
LABEL_42:
            result = outlined copy of Result<_DataTable, Error>(object, v99);
          }
        }
      }

      break;
    case 4u:
      v26 = v125;
      *v125 = v19;
      *(v26 + 8) = v20 & 1;
      outlined copy of Result<_DataTable, Error>(v19, v20);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v28 = empty;
      v29 = type metadata accessor for CMLTable();
      v30 = swift_allocObject(v29, 24, 7);
      *(v30 + 16) = v28;
      v31 = type metadata accessor for _DataTable();
      swift_allocObject(v31, 40, 7);
      result = _DataTable.init(impl:)(v30);
      v32 = v126;
      *v126 = result;
      *(v32 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLObjectDetector.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLObjectDetector.ModelParameters.ValidationData(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _Model.evaluation(from:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 16);
  v5 = *a1;
  v6 = v2;
  return CMLModel.evaluate(table:)(&v5);
}

uint64_t _Model.attributes.getter(double a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 40);
  }

  else
  {
    v3 = _Model.getAttributes()(a1);
    v4 = *(v1 + 40);
    *(v1 + 40) = v3;
    v3;
    v4;
    LOBYTE(v2) = 0;
  }

  v2;
  return v3;
}

uint64_t _Model.write(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  object = v2;
  *&v95 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v96 = v81;
  v94 = type metadata accessor for URL(0);
  v91 = *(v94 - 8);
  v7 = *(v91 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v87 = *a2;
  v93 = a2[1];
  v85 = a2[2];
  v86 = a2[3];
  v83 = a2[4];
  v84 = a2[5];
  v97 = a2[6];
  v101 = a2[7];
  v99 = a2[8];
  v90 = v3;
  v10 = ModelType.description.getter(*(v3 + 32));
  v12 = v11;
  v13 = object;
  static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v95, v10, v11, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (v13)
  {
    return v12;
  }

  v98 = v81;
  v12;
  v15 = *(v90 + 16);
  v16 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v94);
  v92 = CMLModel.export(to:)(v16);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, &demangling cache variable for type metadata for URL?);
  v17 = tc_v1_flex_dict_create(0);
  if (!v17)
  {
    BUG();
  }

  v18 = v17;
  v96 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v96, v81);
  *(inited + 16) = v18;
  v20 = v93;
  v100 = inited;
  if (v93)
  {
    v21 = type metadata accessor for CMLFeatureValue();
    v20;
    object = v21;
    v22 = CMLFeatureValue.__allocating_init(_:)(v87, v20);
    CMLDictionary.add(key:value:)(0x726F68747561, 0xE600000000000000, v22);

    v23 = v86;
    v86;
    v24 = CMLFeatureValue.__allocating_init(_:)(v85, v23);
    CMLDictionary.add(key:value:)(0xD000000000000011, ("No data found for label '" + 0x8000000000000000), v24);

    v25 = v84;
    v26 = v83;
    if (v84)
    {
      v84;
      v27 = CMLFeatureValue.__allocating_init(_:)(v26, v25);
      CMLDictionary.add(key:value:)(0x65736E6563696CLL, 0xE700000000000000, v27);
    }

    v28 = v97;
    v29 = v101;
    v101;
    v30 = CMLFeatureValue.__allocating_init(_:)(v28, v29);
    CMLDictionary.add(key:value:)(0x5F6E6F6973726576, 0xEE00676E69727473, v30);
  }

  else
  {
    v31 = NSFullUserName();
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)(v32);
    v35 = v34;

    type metadata accessor for CMLFeatureValue();
    v35;
    v36 = CMLFeatureValue.__allocating_init(_:)(v33, v35);
    v35;
    CMLDictionary.add(key:value:)(0x726F68747561, 0xE600000000000000, v36);
  }

  *&v95 = 0;
  v37 = v93 == 0;

  v38 = getOSVersion()();
  countAndFlagsBits = v38._countAndFlagsBits;
  object = v38._object;
  v40 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v41 = v99;
  if (!v37 && v99 != 0)
  {
    v99;
    v40;
    v40 = v41;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v40);
  v88 = v40;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  v43 = v88;
  v44 = tc_v1_flex_dict_create(0);
  if (!v44)
  {
    BUG();
  }

  v45 = v44;
  v99 = swift_initStackObject(v96, v82);
  *(v99 + 16) = v45;
  v46 = 1 << *(v43 + 32);
  v47 = ~(-1 << v46);
  if (v46 >= 64)
  {
    v47 = -1;
  }

  v48 = *(v43 + 64) & v47;
  v101 = (v46 + 63) >> 6;

  v49 = 0;
  v50 = v91;
  v97 = v43;
  while (1)
  {
    if (v48)
    {
      goto LABEL_31;
    }

    v51 = v49 + 1;
    if (__OFADD__(1, v49))
    {
      BUG();
    }

    if (v51 >= v101)
    {
      break;
    }

    v48 = *(v43 + 8 * v51 + 64);
    if (v48)
    {
      ++v49;
    }

    else
    {
      v52 = v49 + 2;
      if (v49 + 2 >= v101)
      {
        break;
      }

      v48 = *(v43 + 8 * v51 + 72);
      if (v48)
      {
        goto LABEL_30;
      }

      v52 = v49 + 3;
      if (v49 + 3 >= v101)
      {
        break;
      }

      v48 = *(v43 + 8 * v51 + 80);
      if (v48)
      {
        goto LABEL_30;
      }

      v52 = v49 + 4;
      if (v49 + 4 >= v101)
      {
        break;
      }

      v48 = *(v43 + 8 * v51 + 88);
      if (v48)
      {
        goto LABEL_30;
      }

      v52 = v49 + 5;
      if (v49 + 5 >= v101)
      {
        break;
      }

      v48 = *(v43 + 8 * v51 + 96);
      if (v48)
      {
        goto LABEL_30;
      }

      v52 = v49 + 6;
      if (v49 + 6 >= v101)
      {
        break;
      }

      v48 = *(v43 + 8 * v51 + 104);
      if (v48)
      {
LABEL_30:
        v49 = v52;
      }

      else
      {
        v65 = v49 + 7;
        do
        {
          if (v65 >= v101)
          {
            goto LABEL_37;
          }

          v48 = *(v43 + 8 * v65++ + 64);
        }

        while (!v48);
        v49 = v65 - 1;
      }
    }

LABEL_31:
    v90 = v48;
    _BitScanForward64(&v53, v48);
    v96 = v49;
    v54 = (v49 << 10) | (16 * v53);
    v55 = *(v43 + 48);
    v56 = *(v43 + 56);
    v93 = *(v55 + v54);
    v57 = *(v55 + v54 + 8);
    v58 = *(v56 + v54);
    v59 = *(v56 + v54 + 8);
    type metadata accessor for CMLFeatureValue();
    swift_bridgeObjectRetain_n(v59, 2);
    object = v57;
    v57;
    v60 = v95;
    v61 = CMLFeatureValue.__allocating_init(_:)(v58, v59);
    v62 = v60;
    if (v60)
    {
      v78 = "CreateML/MLDataValueConvertible.swift";
      v79 = 37;
      v80 = 170;
      goto LABEL_43;
    }

    v63 = v61;
    v59;
    CMLDictionary.add(key:value:)(v93, object, v63);
    *&v95 = 0;
    v64 = (v90 - 1) & v90;
    object;
    v48 = v64;

    v50 = v91;
    v43 = v97;
    v49 = v96;
  }

LABEL_37:

  type metadata accessor for CMLFeatureValue();
  v66 = v99;

  v67 = v95;
  v68 = CMLFeatureValue.__allocating_init(_:)(v66);
  v62 = v67;
  if (v67)
  {
    v78 = "CreateML/_Model.swift";
    v79 = 21;
    v80 = 187;
LABEL_43:
    swift_unexpectedError(v62, v78, v79, 1, v80);
    BUG();
  }

  object = v68;
  v69 = v100;
  CMLDictionary.add(key:value:)(0x6665645F72657375, 0xEC00000064656E69, v68);

  CMLModel.addMetadata(_:)(v69);
  CMLModel.save(to:)(v98);
  object = 0;
  v88 = 0;
  v89 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v70 = v89;
  v89;
  v88 = 0xD000000000000024;
  v89 = "del to be an MLProgram" + 0x8000000000000000;
  v71._countAndFlagsBits = URL.path.getter(v70);
  v72 = v71._object;
  String.append(_:)(v71);
  v72;
  v73._countAndFlagsBits = 46;
  v73._object = 0xE100000000000000;
  String.append(_:)(v73);
  v74 = v88;
  v75 = v89;
  v76 = static os_log_type_t.info.getter();
  v73._countAndFlagsBits = v74;
  v73._object = v75;
  log(_:type:)(v73, v76);

  v75;
  v77 = v99;
  swift_setDeallocating(v99);
  tc_v1_release(*(v77 + 16));
  return (*(v50 + 8))(v98, v94);
}

uint64_t _Model.write(toFile:metadata:)(uint64_t a1, void *a2, const void *a3)
{
  v20 = v3;
  string = a2;
  v18._countAndFlagsBits = a1;
  v19 = type metadata accessor for URL(0);
  v6 = *(v19 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  qmemcpy(v16, a3, sizeof(v16));
  v18._object = v4;
  v10 = ModelType.description.getter(v4[8]);
  v12 = v11;
  v13._countAndFlagsBits = v18._countAndFlagsBits;
  v13._object = string;
  v14 = v20;
  static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(v13, v10, v11);
  if (v14)
  {
    return v12;
  }

  v20 = v6;
  v12;
  _Model.write(to:metadata:)(v16, v16);
  return (*(v20 + 8))(v16, v19);
}

uint64_t _Model.makeClassifierMetrics(onTraining:onValidation:)(char a1, int a2, double a3)
{
  v42 = v3;
  v41 = a2;
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "CreateML/_Model.swift", 21, 2, 322, 0);
      BUG();
    }

    v40 = -2.315841784746334e77;
    v31 = 0xD00000000000001ALL;
    v39 = 0xD00000000000001BLL;
    v4 = "should_apply_flip";
    v5 = "e MLClassifierMetrics.";
    v6 = "validation_confusion_matrix";
  }

  else
  {
    v31 = 0xD000000000000018;
    v39 = 0xD000000000000019;
    v4 = "rainingSessionDelegate";
    v5 = "e trainingMetrics.";
    v6 = "training_confusion_matrix";
    v40 = -2.315841784746333e77;
  }

  v7 = v4 | 0x8000000000000000;
  v8 = v5 | 0x8000000000000000;
  v38 = v6 | 0x8000000000000000;
  v9 = _Model.attributes.getter(a3);
  specialized Dictionary.subscript.getter(*&v40, v7, v9);
  v7;
  v9;
  if (!v34)
  {
    v8;
    v22 = v38;
LABEL_14:
    v22;
LABEL_15:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v32, &demangling cache variable for type metadata for Any?);
LABEL_19:
    v17 = v42;
    goto LABEL_20;
  }

  v10 = v8;
  v11 = v38;
  if (!swift_dynamicCast(&v35, &v32, &type metadata for Any + 8, &type metadata for MLDataValue, 6))
  {
LABEL_17:
    v8;
    goto LABEL_18;
  }

  if (v37 != 1)
  {
    outlined consume of MLDataValue(v35, v36, v37);
    goto LABEL_17;
  }

  v40 = *&v35;
  v12 = _Model.attributes.getter(a3);
  specialized Dictionary.subscript.getter(v39, v10, v12);
  v10;
  v12;
  if (!v34)
  {
    v22 = v11;
    goto LABEL_14;
  }

  if (!swift_dynamicCast(&v35, &v32, &type metadata for Any + 8, &type metadata for MLDataTable, 6))
  {
LABEL_18:
    v11;
    goto LABEL_19;
  }

  v39 = v35;
  v13 = v36;
  v14 = _Model.attributes.getter(a3);
  specialized Dictionary.subscript.getter(v31, v11, v14);
  v11;
  v14;
  if (!v34)
  {
    outlined consume of Result<_DataTable, Error>(v39, v13);
    goto LABEL_15;
  }

  v15 = v39;
  v16 = swift_dynamicCast(&v35, &v32, &type metadata for Any + 8, &type metadata for MLDataTable, 6);
  v17 = v42;
  if (v16)
  {
    v38 = v35;
    LOBYTE(v41) = v36;
    v40 = 1.0 - v40;
    v32 = v15;
    v18 = v13;
    v33 = v13 & 1;
    v19 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v20 = v17 + *(v19 + 20);
    outlined copy of Result<_DataTable, Error>(v15, v18);
    DataFrame.init(_:)(&v32);
    v32 = v38;
    v33 = v41;
    v21 = *(v19 + 24);
    DataFrame.init(_:)(&v32);
    v17 = v42;
    outlined consume of Result<_DataTable, Error>(v15, v18);
    *v17 = v40;
    v30 = 1;
    goto LABEL_24;
  }

  outlined consume of Result<_DataTable, Error>(v15, v13);
LABEL_20:
  v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v24 = swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
  if (v41 == 2)
  {
    v26 = "validation_report_by_class" + 0x8000000000000000;
    v27 = 0xD000000000000022;
  }

  else
  {
    v26 = "essor\n\nParameters\n" + 0x8000000000000000;
    v27 = 0xD0000000000000C0;
  }

  *v25 = v27;
  *(v25 + 8) = v26;
  *(v25 + 32) = 0;
  *(v25 + 16) = 0;
  *(v25 + 48) = 0;
  *v17 = v24;
  v30 = 2;
LABEL_24:
  v28 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v17, v28, v30);
}

uint64_t _Model.classifierEvaluation(_:)(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = *(a1 + 8);
  if (v4 == -1)
  {
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v9 = 0xD000000000000013;
    *(v9 + 8) = "CreateML/_Model.swift" + 0x8000000000000000;
    *(v9 + 16) = 0;
    *(v9 + 32) = 0;
    *(v9 + 48) = 1;
    *v3 = v8;
    v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v3, v10, 2);
  }

  else
  {
    v13 = *a1;
    v5 = v13;
    v6 = v4;
    v14 = v4 & 1;
    outlined copy of Result<_DataTable, Error>(v13, v4);
    v11 = _Model.evaluation(from:)(&v13);
    static _Model.makeClassifierEvaluationMetrics(_:classes:)(v11, 0, a2);

    return outlined consume of MLDataTable?(v5, v6);
  }
}

uint64_t _Model.getAttributes()(double a1)
{
  v128 = _swiftEmptyArrayStorage;
  v133 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v120[1] = *(v1 + 16);
  v2 = CMLModel.listFields()();
  MLDataValue.init(_:)(v2, a1);
  if (v115 != 3)
  {
    BUG();
  }

  v3 = v113;
  v122 = v114;
  swift_retain_n(v113, 2);
  v124 = v113;
  if (CMLSequence.size.getter())
  {
    v128 = _swiftEmptyArrayStorage;
    v4 = 0;
    do
    {
      v131 = v4;
      v5 = CMLSequence.value(at:)(v4);
      switch(CMLFeatureValue.type.getter())
      {
        case 0u:
          v6 = *(v5 + 16);

          v136 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v6));
          v5;
          goto LABEL_40;
        case 1u:
          v51 = *(v5 + 16);

          specialized handling<A, B>(_:_:)(v51);
          v138 = a1;
          v5;
          a1 = v138;
          v136 = v138;
          goto LABEL_40;
        case 2u:

          v43 = CMLFeatureValue.stringValue()();
          v136 = *&v43._countAndFlagsBits;
          if (v44)
          {
            v44;

            BUG();
          }

          object = v43._object;
          v5;
          v46 = 1;
          goto LABEL_42;
        case 3u:
          v47 = *(v5 + 16);

          v48 = specialized handling<A, B>(_:_:)(v47);
          if (!v48)
          {
            BUG();
          }

          v5;
          object = 0;
          v49 = type metadata accessor for CMLSequence();
          *&v50 = COERCE_DOUBLE(swift_allocObject(v49, 25, 7));
          *(v50 + 16) = v48;
          v136 = *&v50;
          *(v50 + 24) = 1;
          goto LABEL_41;
        case 4u:
          v7 = *(v5 + 16);
          v129 = v5;

          v8 = specialized handling<A, B>(_:_:)(v7);
          if (!v8)
          {
            BUG();
          }

          v121 = type metadata accessor for CMLDictionary();
          v9 = COERCE_DOUBLE(swift_initStackObject(v121, v112));
          *(*&v9 + 16) = v8;
          v135 = _swiftEmptyDictionarySingleton;
          swift_retain_n(*&v9, 2);
          v10 = 0;
          v136 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
          v138 = v9;
          break;
        case 5u:

          v136 = 0.0;
          goto LABEL_40;
        case 6u:

          MLDataValue.MultiArrayType.init(from:)(v5);
          v136 = *&v125;
          if (!v125)
          {
            BUG();
          }

LABEL_40:
          object = 0;
LABEL_41:
          v46 = 0;
          goto LABEL_42;
      }

      while (v10 != CMLDictionary.size.getter())
      {
        CMLDictionary.keyAndValue(at:)(v10);
        v12 = v11;
        v10 = specialized RandomAccessCollection<>.index(after:)(v10);
        v13 = CMLFeatureValue.stringValue()();
        if (v14)
        {
          v14;

          v9 = v138;
        }

        else
        {
          v130 = v13._object;
          countAndFlagsBits = v13._countAndFlagsBits;

          switch(CMLFeatureValue.type.getter())
          {
            case 0u:
              v15 = *(v12 + 16);

              v137 = specialized handling<A, B>(_:_:)(v15);
              JUMPOUT(0x1B50D4);
            case 1u:
              v24 = *(v12 + 16);

              specialized handling<A, B>(_:_:)(v24);
              v137 = *&a1;
              JUMPOUT(0x1B5264);
            case 2u:

              v137 = CMLFeatureValue.stringValue()()._countAndFlagsBits;
              if (!v19)
              {
                JUMPOUT(0x1B51C4);
              }

              v19;

              BUG();
            case 3u:
              v20 = *(v12 + 16);

              v21 = specialized handling<A, B>(_:_:)(v20);
              if (v21)
              {
                v22 = type metadata accessor for CMLSequence();
                v23 = swift_allocObject(v22, 25, 7);
                v23[2] = v21;
                v137 = v23;
                JUMPOUT(0x1B5229);
              }

              BUG();
            case 4u:
              v16 = *(v12 + 16);

              v17 = specialized handling<A, B>(_:_:)(v16);
              if (v17)
              {
                v18 = swift_allocObject(v121, 24, 7);
                *(v18 + 16) = v17;
                v113 = v18;
                v114 = closure #1 in MLDataValue.DictionaryType.init(from:);
                v115 = 0;
                v116 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                v117 = 0;
                v118 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                v119 = 0;
                _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(&v113);
                JUMPOUT(0x1B5188);
              }

              BUG();
            case 5u:
              JUMPOUT(0x1B5285);
            case 6u:

              MLDataValue.MultiArrayType.init(from:)(v12);
              v137 = v125;
              if (!v125)
              {
                BUG();
              }

              v12;
              v132 = 0;
              *&v25 = countAndFlagsBits;
              *&v125 = countAndFlagsBits;
              *(&v25 + 1) = v130;
              *(&v125 + 1) = v130;
              LOBYTE(v126) = 2;
              v26 = v136;
              specialized __RawDictionaryStorage.find<A>(_:)(v25, 2, a1);
              *&v25 = (v28 & 1) == 0;
              v29 = __OFADD__(*(*&v26 + 16), v25);
              v30 = *(*&v26 + 16) + v25;
              if (v29)
              {
                BUG();
              }

              v31 = v28;
              if (*(*&v26 + 24) < v30)
              {
                specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1u);
                *&v32 = countAndFlagsBits;
                *(&v32 + 1) = v130;
                specialized __RawDictionaryStorage.find<A>(_:)(v32, 2, a1);
                LOBYTE(v34) = v34 & 1;
                v35 = v31;
                LOBYTE(v35) = v31 & 1;
                if ((v31 & 1) != v34)
                {
                  *&v32 = &type metadata for MLDataValue;
LABEL_105:
                  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v32, *(&v32 + 1), v34, v35, v33);
                  BUG();
                }
              }

              v36 = v132;
              if (v31)
              {
                v109 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
                v120[0] = v109;
                swift_errorRetain(v109);
                v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v120, v110, &type metadata for _MergeError, 0))
                {
                  *&v123[0] = 0;
                  *(&v123[0] + 1) = 0xE000000000000000;
                  _StringGuts.grow(_:)(30);
                  v111._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                  v111._countAndFlagsBits = 0xD00000000000001BLL;
                  String.append(_:)(v111);
                  _print_unlocked<A, B>(_:_:)(&v125, v123, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                  v111._countAndFlagsBits = 39;
                  v111._object = 0xE100000000000000;
                  String.append(_:)(v111);
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, *&v123[0], *(&v123[0] + 1), "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                  BUG();
                }

                outlined consume of MLDataValue(v137, v132, 5);
                outlined consume of MLDataValue(v125, *(&v125 + 1), v126);

                v120[0];
                swift_unexpectedError(v109, "Swift/Dictionary.swift", 22, 1, 489);
                BUG();
              }

              v37 = v135;
              v135[(v27 >> 6) + 8] |= 1 << v27;
              v38 = v37[6];
              v39 = 24 * v27;
              *(v38 + v39) = countAndFlagsBits;
              *(v38 + v39 + 8) = v130;
              *(v38 + v39 + 16) = 2;
              v40 = v37[7];
              *(v40 + v39) = v137;
              *(v40 + v39 + 8) = v36;
              *(v40 + v39 + 16) = 5;
              v41 = v37[2];
              v29 = __OFADD__(1, v41);
              v42 = v41 + 1;
              if (v29)
              {
                BUG();
              }

              v136 = *&v37;
              v37[2] = v42;
              v9 = v138;
              break;
          }
        }
      }

      v129;
      *&v9;
      object = 0;
      v46 = 0;
LABEL_42:
      v52 = CMLSequence.size.getter();
      v53 = v131;
      if (v131 >= v52)
      {
        BUG();
      }

      if (!v46)
      {
        BUG();
      }

      if (swift_isUniquelyReferenced_nonNull_native(v128))
      {
        v54 = v128;
      }

      else
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v128[2] + 1, 1, v128);
      }

      v55 = v54[2];
      if (v54[3] >> 1 <= v55)
      {
        v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54[3] >= 2uLL, v55 + 1, 1, v54);
      }

      v54[2] = v55 + 1;
      v56 = 2 * v55;
      *&v54[v56 + 4] = v136;
      v128 = v54;
      v54[v56 + 5] = object;
      v3 = v124;
      v4 = v53 + 1;
    }

    while (v53 + 1 != CMLSequence.size.getter());
  }

  v57 = v128[2];
  if (v57)
  {
    v58 = v128 + 5;
    while (1)
    {
      v131 = v57;
      v59 = v3;
      v60 = *(v58 - 1);
      v61 = *v58;
      *v58;
      countAndFlagsBits = v60;
      v138 = *&v61;
      v62 = CMLModel.getValue(field:)(v60, v61);
      v130 = v58;
      _Model.Output.init(variant:)(v62, a1);
      v63 = *(&v125 + 1);
      v136 = *&v125;
      v64 = v126 >> 5;
      LODWORD(v129) = v126;
      if (v64 == 2)
      {
        break;
      }

      v3 = v59;
      v65 = v131;
      if (v64 == 1)
      {
        v127 = &type metadata for MLUntypedColumn;
        v74 = *&v136;
        *&v125 = v136;
        BYTE8(v125) &= 1u;
        outlined init with take of Any(&v125, v123);
        outlined copy of Result<_DataTable, Error>(v74, v63);
        v137 = v63;
        outlined copy of Result<_DataTable, Error>(v74, v63);
        v75 = v133;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v133);
        v135 = v75;
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v138);
        v78 = (v77 & 1) == 0;
        v29 = __OFADD__(v75[2], v78);
        v79 = v75[2] + v78;
        if (v29)
        {
          BUG();
        }

        v80 = v77;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v79))
        {
          *(&v32 + 1) = v138;
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v138);
          LOBYTE(v34) = v34 & 1;
          v65 = v131;
          if ((v80 & 1) != v34)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v65 = v131;
        }

        v90 = v137;
        v91 = v135;
        v133 = v135;
        if ((v80 & 1) == 0)
        {
          v135[(v70 >> 6) + 8] |= 1 << v70;
          v92 = v91[6];
          v93 = 16 * v70;
          *(v92 + v93) = countAndFlagsBits;
          *(v92 + v93 + 8) = v138;
          outlined init with take of Any(v123, (v91[7] + 32 * v70));
          v94 = v133;
          v95 = *(v133 + 16);
          v29 = __OFADD__(1, v95);
          v96 = v95 + 1;
          if (v29)
          {
            BUG();
          }

          goto LABEL_82;
        }

LABEL_80:
        v100 = v90;
        v101 = (v91[7] + 32 * v70);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        outlined init with take of Any(v123, v101);
        *&v138;
        goto LABEL_83;
      }

      if (!v64)
      {
        v127 = &type metadata for MLDataTable;
        v66 = *&v136;
        *&v125 = v136;
        BYTE8(v125) &= 1u;
        outlined init with take of Any(&v125, v123);
        outlined copy of Result<_DataTable, Error>(v66, v63);
        v137 = v63;
        outlined copy of Result<_DataTable, Error>(v66, v63);
        v67 = v133;
        v68 = swift_isUniquelyReferenced_nonNull_native(v133);
        v135 = v67;
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v138);
        v71 = (v69 & 1) == 0;
        v29 = __OFADD__(v67[2], v71);
        v72 = v67[2] + v71;
        if (v29)
        {
          BUG();
        }

        v73 = v69;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v68, v72))
        {
          *(&v32 + 1) = v138;
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v138);
          LOBYTE(v34) = v34 & 1;
          v65 = v131;
          if ((v73 & 1) != v34)
          {
            goto LABEL_103;
          }
        }

        else
        {
          v65 = v131;
        }

        v90 = v137;
        v91 = v135;
        v133 = v135;
        if (v73)
        {
          goto LABEL_80;
        }

        v135[(v70 >> 6) + 8] |= 1 << v70;
        v102 = v91[6];
        v103 = 16 * v70;
        *(v102 + v103) = countAndFlagsBits;
        *(v102 + v103 + 8) = v138;
        outlined init with take of Any(v123, (v91[7] + 32 * v70));
        v94 = v133;
        v104 = *(v133 + 16);
        v29 = __OFADD__(1, v104);
        v96 = v104 + 1;
        if (v29)
        {
          BUG();
        }

LABEL_82:
        v100 = v90;
        *(v94 + 16) = v96;
LABEL_83:
        v105 = v136;
        v106 = v129;
        outlined consume of _Model.Output(*&v136, v100, v129);
        outlined consume of _Model.Output(*&v105, v100, v106);
        v89 = v130;
        v3 = v124;
        goto LABEL_84;
      }

      *&v138;
      outlined consume of _Model.Output(*&v136, v63, v129);
      v89 = v130;
LABEL_84:
      v58 = (v89 + 16);
      v57 = v65 - 1;
      if (!v57)
      {
        goto LABEL_85;
      }
    }

    v127 = &type metadata for MLDataValue;
    v82 = v136;
    *&v125 = v136;
    LOBYTE(v126) = v126 & 0x1F;
    v81 = v126;
    outlined init with take of Any(&v125, v123);
    outlined copy of MLDataValue(*&v82, v63, v81);
    v137 = v63;
    outlined copy of MLDataValue(*&v82, v63, v81);
    v83 = v133;
    v84 = swift_isUniquelyReferenced_nonNull_native(v133);
    v135 = v83;
    v70 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v138);
    v86 = (v85 & 1) == 0;
    v29 = __OFADD__(v83[2], v86);
    v87 = v83[2] + v86;
    if (v29)
    {
      BUG();
    }

    v88 = v85;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v84, v87))
    {
      *(&v32 + 1) = v138;
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, *&v138);
      LOBYTE(v34) = v34 & 1;
      v65 = v131;
      if ((v88 & 1) != v34)
      {
LABEL_103:
        *&v32 = &type metadata for String;
        goto LABEL_105;
      }
    }

    else
    {
      v65 = v131;
    }

    v90 = v137;
    v91 = v135;
    v133 = v135;
    if ((v88 & 1) == 0)
    {
      v135[(v70 >> 6) + 8] |= 1 << v70;
      v97 = v91[6];
      v98 = 16 * v70;
      *(v97 + v98) = countAndFlagsBits;
      *(v97 + v98 + 8) = v138;
      outlined init with take of Any(v123, (v91[7] + 32 * v70));
      v94 = v133;
      v99 = *(v133 + 16);
      v29 = __OFADD__(1, v99);
      v96 = v99 + 1;
      if (v29)
      {
        BUG();
      }

      goto LABEL_82;
    }

    goto LABEL_80;
  }

LABEL_85:
  v128;
  v107 = v122;
  outlined consume of MLDataValue(v3, v122, 3);
  outlined consume of MLDataValue(v3, v107, 3);
  return v133;
}

uint64_t _Model.init(impl:)(uint64_t a1)
{
  v2[3] = v1;
  v2[2] = a1;
  v2[4] = *v1;
  return swift_task_switch(_Model.init(impl:), 0, 0);
}

{
  v4 = *(*v2 + 56);
  v3 = *v2;
  v3[8] = a1;
  v3[9] = v1;
  v4;
  if (v1)
  {
    v3[6];
    v5 = _Model.init(impl:);
  }

  else
  {
    v5 = _Model.init(impl:);
  }

  return swift_task_switch(v5, 0, 0);
}

uint64_t _Model.init(impl:)()
{
  v1 = *(v0 + 16);
  *(*(v0 + 24) + 40) = 0;
  *(v0 + 40) = CMLModel.name()();
  if (v2)
  {
    v3 = *(v0 + 16);

    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    *(v4 + 40);
    swift_deallocPartialClassInstance(v4, v5, 48, 7);
    return (*(v0 + 8))();
  }

  else
  {
    v7 = swift_task_alloc(288);
    *(v0 + 56) = v7;
    *v7 = v0;
    v7[1] = _Model.init(impl:);
    v8 = *(v0 + 16);
    return CMLModel.compile()(_Model.init(impl:));
  }
}

{
  v1.value = ModelType.init(nameKey:)(*(v0 + 40)).value;
  if (v1.value == CreateML_ModelType_unknownDefault)
  {
    BUG();
  }

  value = v1.value;
  v3 = *(v0 + 64);
  v4 = *(v0 + 24);
  *(v4 + 16) = *(v0 + 16);
  *(v4 + 24) = v3;
  *(v4 + 32) = value;

  v3;
  if (!AnalyticsReporter.init()())
  {
    v5._countAndFlagsBits = value;
    v5._object = &dword_0 + 2;
    AnalyticsReporter.reportTemplateUsed(model:mode:)(v5);
  }

  v6 = *(v0 + 16);

  return (*(v0 + 8))(*(v0 + 24));
}

uint64_t _Model.init(impl:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16);
  v3 = *(v2 + 72);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  *(v4 + 40), a2;
  swift_deallocPartialClassInstance(v4, v5, 48, 7);
  return (*(v2 + 8))();
}

uint64_t *_Model.init(type:)(int a1)
{
  v21 = *v2;
  v2[5] = 0;
  v3 = objc_allocWithZone(MLModel);
  v2[3] = [v3 init];
  v5 = ModelType.nameKey.getter(a1);
  v6 = v4;
  v23 = a1;
  if ((v4 & 0x1000000000000000) == 0 && v4 & 0x2000000000000000 | v5 & 0x1000000000000000)
  {
    v7 = alloca(32);
    v8 = alloca(32);
    v21 = 0;
    v20 = closure #1 in CMLModel.init(name:);
    if ((v4 & 0x2000000000000000) != 0)
    {
      v19 = v5;
      v20 = v4 & 0xFFFFFFFFFFFFFFLL;
      v12 = specialized handling<A, B>(_:_:)(&v19);
      if (v1)
      {
        v6;
        goto LABEL_10;
      }

      if (!v12)
      {
        BUG();
      }

      v24 = v12;
      v6;
LABEL_15:
      v13 = v24;
      v14 = type metadata accessor for CMLModel();
      v15 = swift_allocObject(v14, 24, 7);
      *(v15 + 16) = v13;
      v2[2] = v15;
      *(v2 + 32) = v23;
      return v2;
    }

    v22 = &v18;
    if ((v5 & 0x1000000000000000) != 0)
    {
      v9 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = _StringObject.sharedUTF8.getter(v5, v4);
      v10 = v17;
    }

    v11 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v9, v10, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
    if (v1)
    {
      goto LABEL_7;
    }

    v24 = v11;
LABEL_12:
    v6;
    goto LABEL_15;
  }

  _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v5, v4, &type metadata for OpaquePointer);
  if (!v1)
  {
    goto LABEL_12;
  }

LABEL_7:
  v6;
LABEL_10:

  v2[5];
  swift_deallocPartialClassInstance(v2, v21, 48, 7);
  return v2;
}

uint64_t _Model.init(type:parameters:modelOptions:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = v3;
  *(v4 + 48) = a3;
  *(v4 + 40) = a2;
  *(v4 + 108) = a1;
  *(v4 + 64) = *v3;
  return swift_task_switch(_Model.init(type:parameters:modelOptions:), 0, 0);
}

uint64_t _Model.init(type:parameters:modelOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(*(v7 + 56) + 40) = 0;
  *(v7 + 104) = static _PowerUtilities.createPowerAssertion()();
  v30 = (v7 + 32);
  v9 = ModelType.nameKey.getter(*(v7 + 108));
  v10 = v8;
  if ((v8 & 0x1000000000000000) != 0 || !(v8 & 0x2000000000000000 | v9 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v9, v8, &type metadata for OpaquePointer);
LABEL_8:
    v10;
    goto LABEL_11;
  }

  v11 = swift_task_alloc(32);
  *(v11 + 24) = 0;
  v28 = v11;
  *(v11 + 16) = closure #1 in CMLModel.init(name:);
  if ((v10 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = _StringObject.sharedUTF8.getter(v9, v10);
      v13 = v27;
    }

    *v30 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v12, v13, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v28;
    goto LABEL_8;
  }

  *(v7 + 16) = v9;
  *(v7 + 24) = v10 & 0xFFFFFFFFFFFFFFLL;
  v14 = specialized handling<A, B>(_:_:)(v7 + 16);
  if (!v14)
  {
    BUG();
  }

  *v30 = v14;
  v10;
  v28;
LABEL_11:
  v15 = *(v7 + 32);
  v16 = *(v7 + 48);
  v17 = type metadata accessor for CMLModel();
  v18 = swift_allocObject(v17, 24, 7);
  *(v7 + 72) = v18;
  *(v18 + 16) = v15;
  if (v16)
  {

    CMLModel.initialize(options:)(v16);
  }

  if (AnalyticsReporter.init()())
  {
    CMLModel.callFunction(name:arguments:)(5, *(v7 + 40));
  }

  else
  {
    v19._countAndFlagsBits = ModelType.nameKey.getter(*(v7 + 108));
    v19._object = v20;
    v21.value = ModelType.init(nameKey:)(v19).value;
    if (v21.value == CreateML_ModelType_unknownDefault)
    {
      BUG();
    }

    value = v21.value;
    v23 = *(v7 + 40);
    Current = CFAbsoluteTimeGetCurrent();
    v24._object = &dword_0 + 2;
    v24._countAndFlagsBits = value;
    AnalyticsReporter.reportTemplateUsed(model:mode:)(v24);
    CMLModel.callFunction(name:arguments:)(5, v23);

    AnalyticsReporter.reportEventDuration(model:task:startTime:)(value, __PAIR128__(0xE800000000000000, 0x676E696E69617254), Current);
  }

  v25 = swift_task_alloc(288);
  *(v7 + 80) = v25;
  *v25 = v7;
  v25[1] = _Model.init(type:parameters:modelOptions:);
  return CMLModel.compile()(_Model.init(type:parameters:modelOptions:));
}

uint64_t _Model.init(type:parameters:modelOptions:)(uint64_t a1)
{
  v3 = *(*v2 + 80);
  v6 = *v2;
  *(v6 + 88) = a1;
  *(v6 + 96) = v1;
  v3;
  if (v1)
  {
    v4 = _Model.init(type:parameters:modelOptions:);
  }

  else
  {
    v4 = _Model.init(type:parameters:modelOptions:);
  }

  return swift_task_switch(v4, 0, 0);
}

uint64_t _Model.init(type:parameters:modelOptions:)()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  v3 = *(v0 + 88);
  v4 = *(v0 + 104);
  *(v2 + 24) = v3;
  v3;
  static _PowerUtilities.endPowerAssertion(from:)(v4);
  v5 = *(v0 + 72);
  v6 = *(v0 + 88);
  if (v1)
  {
    v7 = *(v0 + 40);
    v15 = *(v0 + 48);

    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    *(v8 + 40);
    swift_deallocPartialClassInstance(v8, v9, 48, 7);
    v10 = *(v0 + 8);
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = *(v0 + 40);
    v17 = *(v0 + 48);
    v16 = *(v0 + 108);

    *(v11 + 16) = v5;
    *(v11 + 32) = v16;
    v10 = *(v0 + 8);
    v13 = *(v0 + 56);
  }

  return v10();
}

uint64_t _Model.init(type:parameters:modelOptions:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  v4 = *(v2 + 48);
  *(v2 + 40);
  v3;
  v4;
  v5 = *(v2 + 96);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  *(v6 + 40), a2;
  swift_deallocPartialClassInstance(v6, v7, 48, 7);
  return (*(v2 + 8))();
}

uint64_t static _Model.makeClassifierEvaluationMetrics(_:classes:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 16);
  if (tc_v1_variant_is_parameters(v5))
  {
    v6 = specialized handling<A, B>(_:_:)(v5);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLParameters();
    *(swift_initStackObject(v7, v26) + 16) = v6;
    v8 = CMLParameters.featureValue(for:)(61);
    specialized handling<A, B>(_:_:)(*(v8 + 16));
    v30 = a3;

    v14 = CMLParameters.table(for:)(62);
    v31 = type metadata accessor for _DataTable();
    swift_allocObject(v31, 40, 7);
    v15 = _DataTable.init(impl:)(v14);
    if (a2)
    {
      v28 = v15;
      v29 = 0;

      static _MetricUtilities.supplementConfusionMatrixWithMissingClasses(_:classes:)(&v28, a2, a3);

      outlined consume of Result<_DataTable, Error>(v28, v29);
      v16 = v34;
      v32 = v34;
      LOBYTE(v16) = v35;
      v33 = v16;
    }

    else
    {
      v33 = 0;
      v32 = v15;
    }

    v17 = CMLParameters.table(for:)(63);
    v18 = 1.0 - v30;
    v30 = 1.0 - v30;
    swift_allocObject(v31, 40, 7);
    v19 = _DataTable.init(impl:)(v17);
    if (a2)
    {
      v28 = v19;
      v29 = 0;

      static _MetricUtilities.supplementPrecisionRecallWithMissingClasses(_:classes:)(&v28, a2, v18);

      outlined consume of Result<_DataTable, Error>(v28, v29);
      v31 = v34;
      v20 = v35;
    }

    else
    {
      v31 = v19;
      v20 = 0;
    }

    v34 = v32;
    v21 = v33;
    v35 = v33 & 1;
    v27 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v22 = v4 + *(v27 + 20);
    LODWORD(v33) = v21;
    outlined copy of Result<_DataTable, Error>(v32, v21);
    DataFrame.init(_:)(&v34);
    v23 = v31;
    v34 = v31;
    v35 = v20 & 1;
    v24 = v4 + *(v27 + 24);
    outlined copy of Result<_DataTable, Error>(v31, v20);
    DataFrame.init(_:)(&v34);

    outlined consume of Result<_DataTable, Error>(v32, v33);
    outlined consume of Result<_DataTable, Error>(v23, v20);
    *v4 = v30;
    v25 = 1;
  }

  else
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v10 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    *v11 = 0xD000000000000026;
    *(v11 + 8) = "Invalid input data." + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
    *v4 = v10;
    v25 = 2;
  }

  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload(v4, v12, v25);
}

uint64_t _Model.deinit(uint64_t a1, uint64_t a2)
{
  *(v2 + 16);

  *(v2 + 40), a2;
  return v2;
}

void outlined consume of _Model.Output(void *a1, void *a2, unsigned __int8 a3)
{
  switch(a3 >> 5)
  {
    case 0:
    case 1:
      outlined consume of Result<_DataTable, Error>(a1, a2);
      break;
    case 2:
      outlined consume of MLDataValue(a1, a2, a3 & 0x1F);
      break;
    case 3:
      a2;
      break;
    case 5:
    case 6:

      break;
    default:
      return;
  }
}

uint64_t specialized MLDataValueConvertible.featureValue.getter(uint64_t a1, uint64_t a2)
{
  v7[3] = &type metadata for String;
  v7[4] = &protocol witness table for String;
  v7[0] = a1;
  v7[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_0Tm(v7, &type metadata for String);
  v3 = *v2;
  v4 = v2[1];
  type metadata accessor for CMLFeatureValue();
  a2;
  v4;
  v5 = CMLFeatureValue.__allocating_init(_:)(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v5;
}

uint64_t specialized _UntypedColumn.init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized MLDataValueConvertible.featureValue.getter(a1, a2);
  if (a3 < 0)
  {
    BUG();
  }

  v6 = specialized handling<A, B, C>(_:_:_:)(*(v5 + 16), a3);
  if (!v6)
  {
    BUG();
  }

  v7 = type metadata accessor for CMLColumn();
  v8 = swift_allocObject(v7, 24, 7);
  *(v8 + 16) = v6;
  a2;
  *(v3 + 16) = v8;
  return v3;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v36 = v1;
  strcpy((v2 + 16), "style_transfer");
  *(v2 + 31) = -18;
  v3 = v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v4 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v31 = v3;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v6 = empty;
  v7 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
  v8 = type metadata accessor for CMLParameters();
  v9 = swift_allocObject(v8, 24, 7);
  *(v9 + 16) = v6;
  v32 = v7;
  *(v2 + v7) = v9;
  v10 = v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v35 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v11 = *(v2 + 16);
  v34 = v2;
  v12 = *(v2 + 24);
  v33 = v10;
  if ((v12 & 0x1000000000000000) != 0 || !(v12 & 0x2000000000000000 | v11 & 0x1000000000000000))
  {
    v12;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v11, v12, &type metadata for OpaquePointer);
    if (!v36)
    {
      v12;
      v24 = v30;
      goto LABEL_14;
    }
  }

  else
  {
    v37 = v29;
    v13 = alloca(32);
    v14 = alloca(32);
    v31 = 0;
    v30 = closure #1 in CMLModel.init(name:);
    if ((v12 & 0x2000000000000000) == 0)
    {
      if ((v11 & 0x1000000000000000) != 0)
      {
        v15 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v16 = v11 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = _StringObject.sharedUTF8.getter(v11, v12);
        v16 = v28;
      }

      v12;
      v17 = v36;
      v18 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v15, v16, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v17)
      {
        goto LABEL_10;
      }

      v24 = v18;
      v12;
LABEL_14:
      v25 = type metadata accessor for CMLModel();
      v26 = swift_allocObject(v25, 24, 7);
      *(v26 + 16) = v24;
      outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLTrainingSessionParameters);
      v21 = v34;
      *(v34 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v26;
      return v21;
    }

    v29[0] = v11;
    v29[1] = v12 & 0xFFFFFFFFFFFFFFLL;
    v12;
    v19 = v36;
    v20 = specialized handling<A, B>(_:_:)(v29);
    if (!v19)
    {
      v24 = v20;
      if (!v20)
      {
        BUG();
      }

      v12;
      goto LABEL_14;
    }
  }

LABEL_10:
  v12;
  outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLTrainingSessionParameters);
  v21 = v34;
  *(v34 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  v22 = *(v21 + v32);

  v23 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v21, v23, *(*v21 + 48), *(*v21 + 52));
  return v21;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = v3;
  v50 = a3;
  v57 = a2;
  v54 = a1;
  v56 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v5 = *(*(v56 - 1) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v51 = v44;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  strcpy((v4 + 16), "style_transfer");
  *(v4 + 31) = -18;
  v53 = v4;
  v11 = v4 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  v12 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v55 = v11;
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v14 = empty;
  v15 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args;
  v16 = type metadata accessor for CMLParameters();
  v17 = swift_allocObject(v16, 24, 7);
  *(v17 + 16) = v14;
  v49 = v15;
  *(v53 + v15) = v17;
  outlined init with copy of MLTrainingSessionParameters(v54, v44, type metadata accessor for MLStyleTransfer.DataSource);
  v18 = v51;
  outlined init with copy of MLTrainingSessionParameters(v57, v51, type metadata accessor for MLStyleTransfer.ModelParameters);
  v44[v12[5]] = *v18;
  v19 = v56;
  *&v44[v12[7]] = 4 * (*&v18[*(v56 + 8)] / 4);
  *&v44[v12[8]] = *&v18[v19[9]];
  outlined init with copy of MLTrainingSessionParameters(&v18[v19[5]], &v44[v12[6]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LOBYTE(v19) = v18[v19[10]];
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLStyleTransfer.ModelParameters);
  v44[v12[9]] = v19;
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v12);
  v20 = v55;
  swift_beginAccess(v55, &v45, 33, 0);
  outlined assign with take of MLStyleTransfer.PersistentParameters?(v44, v20);
  swift_endAccess(&v45);
  v21 = v53;
  v51 = (v53 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters);
  outlined init with copy of MLTrainingSessionParameters(v50, v53 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  if ((v23 & 0x1000000000000000) != 0 || !(v23 & 0x2000000000000000 | v22 & 0x1000000000000000))
  {
    *(v21 + 24);
    v42 = v52;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v22, v23, &type metadata for OpaquePointer);
    if (!v42)
    {
      v55 = 0;
      v23;
      v37 = v48;
LABEL_12:
      v38 = v57;
LABEL_15:
      v39 = type metadata accessor for CMLModel();
      v40 = swift_allocObject(v39, 24, 7);
      *(v40 + 16) = v37;
      outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLStyleTransfer.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLStyleTransfer.DataSource);
      v34 = v53;
      *(v53 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v40;
      return v34;
    }
  }

  else
  {
    v56 = v44;
    v24 = alloca(32);
    v25 = alloca(32);
    v47 = 0;
    v46 = closure #1 in CMLModel.init(name:);
    if ((v23 & 0x2000000000000000) == 0)
    {
      if ((v22 & 0x1000000000000000) != 0)
      {
        v26 = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v27 = v22 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v26 = _StringObject.sharedUTF8.getter(v22, v23);
        v27 = v43;
      }

      v23;
      v28 = v52;
      v29 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v26, v27, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v28)
      {
        goto LABEL_10;
      }

      v37 = v29;
      v55 = 0;
      v23;
      goto LABEL_12;
    }

    v45 = v22;
    v46 = v23 & 0xFFFFFFFFFFFFFFLL;
    v23;
    v30 = v52;
    v31 = specialized handling<A, B>(_:_:)(&v45);
    if (!v30)
    {
      v37 = v31;
      v55 = 0;
      v38 = v57;
      if (!v31)
      {
        BUG();
      }

      v23;
      goto LABEL_15;
    }
  }

LABEL_10:
  v23;
  v32 = v54;
  v33 = v57;
  outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLStyleTransfer.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLStyleTransfer.DataSource);
  v34 = v53;
  *(v53 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v55, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  v35 = *(v34 + v49);

  v36 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v34, v36, *(*v34 + 48), *(*v34 + 52));
  return v34;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.setUp()()
{
  v207 = v0;
  v188 = type metadata accessor for _Model.Parameters(0);
  v3 = *(*(v188 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v187 = &v179;
  v6 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v179 = &v179;
  v9 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v180 = &v179;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v206 = &v179;
  v199 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v14 = *(*(v199 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v182 = &v179;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v186 = &v179;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v181 = &v179;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v209 = &v179;
  v23 = alloca(v14);
  v24 = alloca(v14);
  v200 = &v179;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v185 = &v179;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v197 = &v179;
  v30 = alloca(v25);
  v31 = alloca(v25);
  v205 = &v179;
  v32 = alloca(v25);
  v33 = alloca(v25);
  v217 = &v179;
  v189 = type metadata accessor for MLTrainingSessionParameters(0);
  v34 = *(*(v189 - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v216 = &v179;
  v218 = type metadata accessor for URL(0);
  v203 = *(v218 - 8);
  v37 = *(v203 + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v196 = &v179;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v201 = &v179;
  v42 = alloca(v37);
  v43 = alloca(v37);
  v204 = &v179;
  v44 = alloca(v37);
  v45 = alloca(v37);
  v208 = &v179;
  v46 = alloca(v37);
  v47 = alloca(v37);
  v194 = &v179;
  v48 = alloca(v37);
  v49 = alloca(v37);
  v210 = &v179;
  v50 = alloca(v37);
  v51 = alloca(v37);
  v212 = &v179;
  v52 = alloca(v37);
  v53 = alloca(v37);
  v211 = &v179;
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v55 = alloca(v54);
  v56 = alloca(v54);
  v183 = &v179;
  v57 = alloca(v54);
  v58 = alloca(v54);
  v59 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v60 = *(*(v59 - 8) + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v202 = &v179;
  v63 = objc_opt_self(NSFileManager);
  v64 = [v63 defaultManager];
  v214 = v64;
  v193 = v1;
  v65 = v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v1 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v222, 0, 0);
  v184 = v65;
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v65, &v179);
  v195 = v59;
  if (__swift_getEnumTagSinglePayload(&v179, 1, v59) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v179, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
    v66 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v66, 0, 0);
    *v67 = 0xD000000000000061;
    *(v67 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v67 + 16) = 0;
    *(v67 + 32) = 0;
    *(v67 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v66);

    return;
  }

  v68 = v202;
  outlined init with take of MLClassifierMetrics(&v179, v202, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v192 = v193 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v69 = v216;
  outlined init with copy of MLTrainingSessionParameters(v193 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, v216, type metadata accessor for MLTrainingSessionParameters);
  v70 = v69;
  v71 = v217;
  outlined init with take of URL?(v70, v217);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v218);
  v215 = v68;
  if (EnumTagSinglePayload == 1)
  {
    v73 = NSTemporaryDirectory();
    v74 = v73;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)(v74);
    v77 = v76;

    URL.init(fileURLWithPath:isDirectory:)(v75, v77, 1);
    v77;
    v78 = v218;
    if (__swift_getEnumTagSinglePayload(v217, 1, v218) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for URL?);
    }
  }

  else
  {
    v78 = v218;
    (*(v203 + 32))(v211, v217, v218);
  }

  URL.appendingPathComponent(_:isDirectory:)(0xD000000000000010, "Content column doesn't exist" + 0x8000000000000000, 1);
  URL.path.getter(0xD000000000000010);
  v80 = v79;
  v81 = String._bridgeToObjectiveC()();
  v80;
  LOBYTE(v80) = [v214 fileExistsAtPath:v81];

  if (!v80)
  {
    URL._bridgeToObjectiveC()(v82);
    v84 = v83;
    v220 = 0;
    v85 = [v214 createDirectoryAtURL:v83 withIntermediateDirectories:0 attributes:0 error:&v220];

    v86 = v220;
    if (!v85)
    {
      v145 = v220;
      _convertNSErrorToError(_:)(v86);

      swift_willThrow(v145, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:");
      v113 = *(v203 + 8);
      v114 = v212;
      v112 = v218;
      goto LABEL_20;
    }

    v220;
    v78 = v218;
  }

  v87 = v194;
  URL.appendingPathComponent(_:)(0x656C797473, 0xE500000000000000);
  URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
  v217 = *(v203 + 8);
  (v217)(v87, v78);
  v88 = v208;
  URL.appendingPathComponent(_:isDirectory:)(0x746E65746E6F63, 0xE700000000000000, 1);
  v89 = v88;
  URL.path.getter(0x746E65746E6F63);
  v91 = v90;
  v92 = String._bridgeToObjectiveC()();
  v91;
  v93 = v214;
  LOBYTE(v91) = [v214 fileExistsAtPath:v92];

  if (!v91)
  {
    URL._bridgeToObjectiveC()(v94);
    v96 = v95;
    v220 = 0;
    v97 = [v93 createDirectoryAtURL:v95 withIntermediateDirectories:0 attributes:0 error:&v220];

    v98 = v220;
    if (!v97)
    {
      v148 = v220;
      _convertNSErrorToError(_:)(v98);

      swift_willThrow(v148, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:");
      v149 = v218;
      v150 = v217;
      (v217)(v89, v218);
      (v150)(v210, v149);
      (v150)(v212, v149);
      (v150)(v211, v149);
      goto LABEL_21;
    }

    v220;
  }

  v99 = v195;
  v100 = v215;
  v198 = v195[5];
  LOBYTE(v216) = *(v215 + v198);
  v101 = v199;
  v102 = v200;
  v103 = v200 + *(v199 + 20);
  v202 = (v202 + v195[6]);
  outlined init with copy of MLTrainingSessionParameters(v202, v103, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v104 = *(v100 + v99[7]);
  v105 = *(v100 + v99[8]);
  *(v102 + v101[6]) = 1;
  v106 = v101[10];
  *v102 = v216;
  *(v102 + v101[7]) = 500;
  *(v102 + v101[8]) = v104;
  v107 = v101[9];
  v191 = v105;
  *(v102 + v107) = v105;
  v213 = *(v100 + v99[9]);
  *(v102 + v106) = v213;
  v190 = v104;
  v216 = (4 * (v104 / 4));
  outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLStyleTransfer.ModelParameters);
  v108 = *(v203 + 16);
  v109 = v205;
  (v108)(v205, v210, v218);
  __swift_storeEnumTagSinglePayload(v109, 0, 1, v218);
  v110 = v197;
  v200 = v108;
  (v108)(v197, v208, v218);
  __swift_storeEnumTagSinglePayload(v110, 0, 1, v218);
  v111 = v207;
  MLStyleTransfer.DataSource.preprocessDataSource(textelDensity:styleImageDestination:contentImagesDestination:)(v201, &v220, v216, v109, v110, v2);
  if (v111)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v110, &demangling cache variable for type metadata for URL?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v109, &demangling cache variable for type metadata for URL?);
    v112 = v218;
    v113 = v217;
    (v217)(v208, v218);
    (v113)(v210, v112);
    v114 = v212;
LABEL_20:
    (v113)(v114, v112);
    (v113)(v211, v112);
LABEL_21:
    v146 = type metadata accessor for MLStyleTransfer.PersistentParameters;
    v147 = v215;
LABEL_22:
    outlined destroy of MLActivityClassifier.ModelParameters(v147, v146);
    return;
  }

  v216 = 0;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v110, &demangling cache variable for type metadata for URL?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v109, &demangling cache variable for type metadata for URL?);
  v207 = v220;
  LOBYTE(v205) = v221;
  v197 = *(v203 + 32);
  (v197)(v204, v201, v218);
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v116 = v199;
  v117 = v206 + *(v115 + 48);
  v203 = *(v115 + 64);
  v118 = v200;
  (v200)(v206, v210, v218);
  (v118)(v117, v208, v218);
  v119 = v180;
  outlined init with copy of MLTrainingSessionParameters(v215, v180, type metadata accessor for MLStyleTransfer.DataSource);
  v120 = v119 + *(v115 + 48);
  v121 = *(v115 + 64);
  v201 = *(v119 + v121);
  LOBYTE(v117) = *(v119 + v121 + 8);
  v122 = v217;
  (v217)(v120, v218);
  (v122)(v119, v218);
  v123 = v203;
  v124 = v206;
  *(v206 + v203) = v201;
  *(v124 + v123 + 8) = v117;
  v125 = v215;
  LOBYTE(v203) = *(v215 + v198);
  v126 = v209;
  v127 = v202;
  v201 = (v209 + v116[5]);
  outlined init with copy of MLTrainingSessionParameters(v202, v201, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *(v126 + v116[6]) = 1;
  v128 = v116[10];
  *v126 = v203;
  *(v126 + v116[7]) = 500;
  *(v126 + v116[8]) = v190;
  *(v126 + v116[9]) = v191;
  *(v126 + v128) = v213;
  LOBYTE(v125) = *(v125 + v198);
  v129 = v181;
  v130 = v181 + v116[5];
  outlined init with copy of MLTrainingSessionParameters(v127, v130, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *v129 = v125;
  v131 = v218;
  v132 = v179;
  outlined init with take of MLClassifierMetrics(v130, v179, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LODWORD(v130) = __swift_getEnumTagSinglePayload(v132, 1, v131);
  outlined destroy of MLActivityClassifier.ModelParameters(v132, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (v130 != 1)
  {
    v133 = v194;
    v134 = v131;
    v135 = v215;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
    (v217)(v133, v134);
    LOBYTE(v135) = *(v135 + v198);
    v136 = v186;
    v137 = v186 + *(v199 + 20);
    outlined init with copy of MLTrainingSessionParameters(v202, v137, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *v136 = v135;
    v138 = v134;
    v139 = v196;
    v140 = v185;
    (v200)(v185, v196, v138);
    __swift_storeEnumTagSinglePayload(v140, 0, 1, v138);
    v202 = v137;
    v141 = v216;
    MLStyleTransfer.ModelParameters.ValidationData.preprocessValidationData(to:)(v140);
    v216 = v141;
    if (v141)
    {
      outlined consume of Result<_DataTable, Error>(v207, v205);

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, &demangling cache variable for type metadata for URL?);
      v142 = v217;
      (v217)(v139, v138);
      outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for MLStyleTransfer.DataSource);
      (v142)(v204, v138);
      (v142)(v208, v138);
      (v142)(v210, v138);
      (v142)(v212, v138);
      (v142)(v211, v138);
      outlined destroy of MLActivityClassifier.ModelParameters(v215, type metadata accessor for MLStyleTransfer.PersistentParameters);
      v143 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData;
      v144 = v202;
      goto LABEL_18;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v140, &demangling cache variable for type metadata for URL?);
    outlined destroy of MLActivityClassifier.ModelParameters(v202, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v151 = v201;
    outlined destroy of MLActivityClassifier.ModelParameters(v201, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    (v197)(v151, v139, v138);
    __swift_storeEnumTagSinglePayload(v151, 0, 1, v138);
  }

  v152 = v209;
  v153 = v183;
  outlined init with copy of MLTrainingSessionParameters(v206, v183, type metadata accessor for MLStyleTransfer.DataSource);
  v154 = v182;
  outlined init with copy of MLTrainingSessionParameters(v152, v182, type metadata accessor for MLStyleTransfer.ModelParameters);
  v155 = v195;
  *(v153 + v195[5]) = *v154;
  v156 = v199;
  *(v153 + v155[7]) = 4 * (*(v154 + *(v199 + 32)) / 4);
  *(v153 + v155[8]) = *(v154 + v156[9]);
  outlined init with copy of MLTrainingSessionParameters(v154 + v156[5], v153 + v155[6], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LOBYTE(v156) = *(v154 + v156[10]);
  outlined destroy of MLActivityClassifier.ModelParameters(v154, type metadata accessor for MLStyleTransfer.ModelParameters);
  *(v153 + v155[9]) = v156;
  __swift_storeEnumTagSinglePayload(v153, 0, 1, v155);
  v157 = v184;
  swift_beginAccess(v184, &v220, 33, 0);
  outlined assign with take of MLStyleTransfer.PersistentParameters?(v153, v157);
  swift_endAccess(&v220);
  v220 = v207;
  v158 = v205;
  v221 = v205 & 1;
  v159 = v204;
  v160 = v216;
  v161 = static MLStyleTransfer.validateAndConvertParameters(_:styleImage:contentTable:)(v209, v204, &v220);
  if (!v160)
  {
    v165 = v161;
    v168 = CMLParameters.featureValue(for:)(47);
    v169 = specialized handling<A, B>(_:_:)(*(v168 + 16));
    v216 = 0;
    v170 = v169;
    if (!v169)
    {
      BUG();
    }

    v171 = type metadata accessor for CMLDictionary();
    inited = swift_initStackObject(v171, v219);
    *(inited + 16) = v170;
    v173 = v187;
    *v187 = *(v192 + *(v189 + 20));
    swift_storeEnumTagMultiPayload(v173, v188, 20);
    CMLDictionary.add(_:)(v173);
    outlined destroy of MLActivityClassifier.ModelParameters(v173, type metadata accessor for _Model.Parameters);
    type metadata accessor for CMLFeatureValue();

    v174 = v216;
    v175 = CMLFeatureValue.__allocating_init(_:)(inited);
    if (v174)
    {

      outlined consume of Result<_DataTable, Error>(v207, v205);

      outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for MLStyleTransfer.DataSource);
      v166 = v218;
      v167 = v217;
      (v217)(v204, v218);
      (v167)(v208, v166);
      (v167)(v210, v166);
      (v167)(v212, v166);
      (v167)(v211, v166);
      outlined destroy of MLActivityClassifier.ModelParameters(v215, type metadata accessor for MLStyleTransfer.PersistentParameters);
      v146 = type metadata accessor for MLStyleTransfer.ModelParameters;
      v147 = v209;
      goto LABEL_22;
    }

    CMLParameters.add(key:featureValue:)(47, v175);

    v176 = *(v193 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

    CMLModel.callFunction(name:arguments:)(0, v165);
    v216 = 0;

    outlined consume of Result<_DataTable, Error>(v207, v205);

    outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for MLStyleTransfer.DataSource);
    v177 = v218;
    v178 = v217;
    (v217)(v204, v218);
    (v178)(v208, v177);
    (v178)(v210, v177);
    (v178)(v212, v177);
    (v178)(v211, v177);
    v143 = type metadata accessor for MLStyleTransfer.PersistentParameters;
    v144 = v215;
LABEL_18:
    outlined destroy of MLActivityClassifier.ModelParameters(v144, v143);
    outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for MLStyleTransfer.ModelParameters);
    return;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v206, type metadata accessor for MLStyleTransfer.DataSource);
  v162 = v159;
  v163 = v218;
  v164 = v217;
  (v217)(v162, v218);
  (v164)(v208, v163);
  (v164)(v210, v163);
  (v164)(v212, v163);
  (v164)(v211, v163);
  outlined destroy of MLActivityClassifier.ModelParameters(v215, type metadata accessor for MLStyleTransfer.PersistentParameters);
  outlined consume of Result<_DataTable, Error>(v207, v158);
  outlined destroy of MLActivityClassifier.ModelParameters(v209, type metadata accessor for MLStyleTransfer.ModelParameters);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v169 = v1;
  v178 = v2;
  rawValue = from._rawValue;
  v3 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v162 = &v150;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v180 = &v150;
  v181 = type metadata accessor for MLCheckpoint(0);
  v9 = *(*(v181 - 1) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v184 = &v150;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v157 = &v150;
  v15 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v158 = &v150;
  v185 = type metadata accessor for URL(0);
  v186 = *(v185 - 8);
  v18 = *(v186 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v163 = &v150;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v171 = &v150;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v164 = &v150;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v176 = &v150;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v182 = &v150;
  v29 = alloca(v18);
  v30 = alloca(v18);
  v161 = &v150;
  v31 = alloca(v18);
  v32 = alloca(v18);
  v160 = &v150;
  v33 = alloca(v18);
  v34 = alloca(v18);
  v170 = &v150;
  v35 = alloca(v18);
  v36 = alloca(v18);
  v168 = &v150;
  v37 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v165 = &v150;
  v41 = alloca(v38);
  v42 = alloca(v38);
  v183 = &v150;
  v43 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v44 = *(*(v43 - 1) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v177 = &v150;
  v47 = alloca(v44);
  v48 = alloca(v44);
  v174 = &v150;
  v49 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v167 = &v150;
  v52 = alloca(v49);
  v53 = alloca(v49);
  v54 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v55 = alloca(v54);
  v56 = alloca(v54);
  v156 = &v150;
  v57 = v178 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v178 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v151, 0, 0);
  v159 = v57;
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v57, &v150);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v150, 1, v43);
  v166 = v37;
  v175 = v43;
  if (EnumTagSinglePayload)
  {
    v59 = &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?;
    v60 = &v150;
LABEL_3:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, v59);
    goto LABEL_11;
  }

  v61 = v174;
  outlined init with copy of MLTrainingSessionParameters(&v150, v174, type metadata accessor for MLStyleTransfer.PersistentParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v150, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  v187 = *(v61 + v43[5]);
  v62 = *(v37 + 20);
  v63 = v183;
  v64 = v183 + v62;
  outlined init with copy of MLTrainingSessionParameters(v61 + v43[6], v64, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *v63 = v187;
  v65 = v185;
  outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v66 = v156;
  outlined init with take of MLClassifierMetrics(v64, v156, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LODWORD(v64) = __swift_getEnumTagSinglePayload(v66, 1, v65);
  outlined destroy of MLActivityClassifier.ModelParameters(v66, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (v64 != 1)
  {
    v67 = v158;
    outlined init with copy of MLTrainingSessionParameters(v178 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, v158, type metadata accessor for MLTrainingSessionParameters);
    v68 = v157;
    outlined init with take of URL?(v67, v157);
    if (__swift_getEnumTagSinglePayload(v68, 1, v65) == 1)
    {
      v59 = &demangling cache variable for type metadata for URL?;
      v60 = v68;
      goto LABEL_3;
    }

    v69 = v68;
    v70 = v186;
    (*(v186 + 32))(v168, v69, v65);
    v71 = v161;
    URL.appendingPathComponent(_:isDirectory:)(0xD000000000000010, "Content column doesn't exist" + 0x8000000000000000, 1);
    v72 = v160;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    v73 = *(v70 + 8);
    v74 = v185;
    v75 = v71;
    v76 = v73;
    v73(v75, v185);
    URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
    v76(v72, v74);
    v183 = MLStyleTransfer.TrainingSessionDelegate.trainingParameters.modify(&v154);
    v78 = v77;
    v79 = v175;
    if (__swift_getEnumTagSinglePayload(v77, 1, v175))
    {
      (v183)(&v154, 0);
      v80 = v170;
    }

    else
    {
      v81 = v79[6] + v78;
      outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      v82 = v170;
      (*(v186 + 16))(v81, v170, v74);
      __swift_storeEnumTagSinglePayload(v81, 0, 1, v74);
      (v183)(&v154, 0);
      v80 = v82;
    }

    v76(v80, v74);
    v76(v168, v74);
  }

LABEL_11:
  v83 = v180;
  specialized BidirectionalCollection.last.getter(rawValue);
  v84 = v181;
  if (__swift_getEnumTagSinglePayload(v83, 1, v181) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for MLCheckpoint?);
    v85 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v85, 0, 0);
    *v86 = 0xD00000000000001DLL;
    *(v86 + 8) = "reated." + 0x8000000000000000;
    *(v86 + 16) = 0;
    *(v86 + 32) = 0;
    *(v86 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v85);
    return;
  }

  v87 = 0xEA0000000000676ELL;
  v88 = v83;
  v89 = v184;
  outlined init with take of MLClassifierMetrics(v88, v184, type metadata accessor for MLCheckpoint);
  switch(*(v89 + v84[5]))
  {
    case 0:
      v91 = *(v89 + v84[5]);
      v90 = 0x696C616974696E69;
      v87 = 0xEB0000000064657ALL;
      goto LABEL_19;
    case 1:
      v90 = 0x6974636172747865;
      goto LABEL_19;
    case 2:
      0xE800000000000000;
      goto LABEL_20;
    case 3:
      v90 = 0x697461756C617665;
      goto LABEL_19;
    case 4:
      v87 = &loc_308EF - 0x14FFFFFFFF9B9A86;
      v90 = 0x636E657265666E69;
LABEL_19:
      v92 = *(v89 + v84[5]);
      v93 = _stringCompareWithSmolCheck(_:_:expecting:)(v90, v87, 0x676E696E69617274, 0xE800000000000000, 0);
      v87;
      if ((v93 & 1) == 0)
      {
        v105 = "" + 0x8000000000000000;
        v106 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v106, 0, 0);
        v108 = 0xD000000000000028;
        goto LABEL_35;
      }

LABEL_20:
      v94 = v185;
      (*(v186 + 16))(v182, v184, v185);
      v96 = URL.absoluteString.getter();
      v97 = v95;
      if ((v95 & 0x1000000000000000) != 0 || !(v95 & 0x2000000000000000 | v96 & 0x1000000000000000))
      {
        v148 = v169;
        _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v96, v95, &type metadata for OpaquePointer);
        if (!v148)
        {
          v97;
          v100 = v167;
          goto LABEL_33;
        }

LABEL_30:
        (*(v186 + 8))(v182, v94);
        v97;
        goto LABEL_36;
      }

      v98 = alloca(32);
      v99 = alloca(32);
      v153 = 0;
      v152 = closure #1 in CMLModel.init(url:);
      v100 = v167;
      if ((v95 & 0x2000000000000000) != 0)
      {
        v154 = v96;
        v155 = v95 & 0xFFFFFFFFFFFFFFLL;
        v109 = v169;
        v104 = specialized handling<A, B>(_:_:)(&v154);
        if (!v109)
        {
          if (!v104)
          {
            BUG();
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if ((v96 & 0x1000000000000000) != 0)
      {
        v101 = (v95 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v102 = v96 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v101 = _StringObject.sharedUTF8.getter(v96, v95);
        v102 = v149;
      }

      v103 = v169;
      v104 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v101, v102, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
      if (v103)
      {
LABEL_29:
        v94 = v185;
        goto LABEL_30;
      }

LABEL_32:
      v172 = v104;
      v97;
LABEL_33:
      v110 = v172;
      rawValue = *(v186 + 8);
      rawValue(v182, v185);
      v111 = type metadata accessor for CMLModel();
      v112 = swift_allocObject(v111, 24, 7);
      *(v112 + 16) = v110;
      v113 = *(v178 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
      v180 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
      *(v178 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model) = v112;

      outlined init with copy of MLStyleTransfer.PersistentParameters?(v159, v100);
      if (__swift_getEnumTagSinglePayload(v100, 1, v175) != 1)
      {
        v114 = v177;
        outlined init with take of MLClassifierMetrics(v100, v177, type metadata accessor for MLStyleTransfer.PersistentParameters);
        v115 = v162;
        outlined init with copy of MLTrainingSessionParameters(v114, v162, type metadata accessor for MLStyleTransfer.DataSource);
        v116 = v115 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?)) + 48);
        v117 = *(v186 + 32);
        v118 = v115;
        v119 = v185;
        v117(v171, v118, v185);
        v120 = v116;
        v121 = v119;
        v122 = v163;
        v181 = v117;
        v123 = (v117)(v163, v120, v121);
        static MLStyleTransfer.generateTrainingTable(directoryURL:)(v122, v123);
        v124 = v121;
        rawValue(v122, v121);
        v182 = v154;
        LODWORD(v186) = v155;
        v125 = v164;
        v126 = v121;
        v127 = v181;
        (v181)(v164, v171, v126);
        v128 = v124;
        v129 = v182;
        (v127)(v176, v125, v128);
        v172 = v129;
        v173 = v186 & 1;
        outlined copy of Result<_DataTable, Error>(v129, v186);
        v130._object = 0xEB00000000734C52;
        v130._countAndFlagsBits = 0x55746E65746E6F63;
        MLDataTable.subscript.getter(v130);
        outlined consume of Result<_DataTable, Error>(v172, v173);
        v131 = v154;
        if (v155)
        {
          outlined consume of Result<_DataTable, Error>(v154, 1);
          v132 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v132, 0, 0);
          *v133 = 0xD00000000000001CLL;
          *(v133 + 8) = "rt a new session." + 0x8000000000000000;
          *(v133 + 16) = 0;
          *(v133 + 32) = 0;
          *(v133 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v132);
          v134 = v186;
          v135 = v129;
        }

        else
        {
          v181 = v154[2];

          outlined consume of Result<_DataTable, Error>(v131, 0);
          v136 = URL.path.getter(v131);
          v138 = v137;
          v139 = type metadata accessor for _UntypedColumn();
          swift_allocObject(v139, 24, 7);
          v174 = specialized _UntypedColumn.init<A>(repeating:count:)(v136, v138, 1);
          v183 = v174[2];
          v178 = *(v180 + v178);
          v140 = v177;
          LOBYTE(v180) = *(v177 + v175[5]);
          v141 = v166;
          v142 = v165;
          outlined init with copy of MLTrainingSessionParameters(v177 + v175[6], v165 + v166[5], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
          v143 = *(v140 + v175[7]);
          v144 = v175;
          v145 = *(v140 + v175[8]);
          *(v142 + v141[6]) = 1;
          v146 = v141[10];
          *v142 = v180;
          *(v142 + v141[7]) = 500;
          *(v142 + v141[8]) = v143;
          *(v142 + v141[9]) = v145;
          LODWORD(v180) = *(v140 + v144[9]);
          *(v142 + v146) = v180;
          v147 = v183;

          outlined destroy of MLActivityClassifier.ModelParameters(v142, type metadata accessor for MLStyleTransfer.ModelParameters);
          CMLModel.resume(style:content:device:)(v147, v181, v180);

          v134 = v186;
          v135 = v182;
        }

        outlined consume of Result<_DataTable, Error>(v135, v134);
        rawValue(v176, v185);
        outlined destroy of MLActivityClassifier.ModelParameters(v177, type metadata accessor for MLStyleTransfer.PersistentParameters);
        goto LABEL_36;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v100, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
      v105 = "tylized validation result" + 0x8000000000000000;
      v106 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v106, 0, 0);
      v108 = 0xD000000000000061;
LABEL_35:
      *v107 = v108;
      *(v107 + 8) = v105;
      *(v107 + 16) = 0;
      *(v107 + 32) = 0;
      *(v107 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v106);
LABEL_36:
      outlined destroy of MLActivityClassifier.ModelParameters(v184, type metadata accessor for MLCheckpoint);
      return;
  }
}

uint64_t CMLModel.resume(style:content:device:)(uint64_t a1, uint64_t a2, int a3)
{
  v27 = v4;
  v28 = a3;
  v29 = a2;
  v26 = type metadata accessor for _Model.Parameters(0);
  v5 = *(*(v26 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v22;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v9 = empty;
  v10 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v10, v23);
  *(inited + 16) = v9;
  CMLParameters.add(key:column:)(71, a1);
  if (v3)
  {
  }

  CMLParameters.add(key:column:)(72, v29);
  v12 = tc_v1_flex_dict_create(0);
  if (!v12)
  {
    BUG();
  }

  v13 = v12;
  v14 = type metadata accessor for CMLDictionary();
  v15 = swift_initStackObject(v14, v24);
  *(v15 + 16) = v13;
  v16 = v28;
  v17 = 1869903201;
  if (v28)
  {
    v17 = 7696483;
  }

  v18 = v25;
  *v25 = v17;
  *(v18 + 8) = (((v16 & 1) == 0) << 56) - 0x1D00000000000000;
  swift_storeEnumTagMultiPayload(v18, v26, 9);
  CMLDictionary.add(_:)(v18);
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for _Model.Parameters);
  type metadata accessor for CMLFeatureValue();

  v29 = v15;
  v19 = CMLFeatureValue.__allocating_init(_:)(v15);
  CMLParameters.add(key:featureValue:)(47, v19);

  CMLModel.callFunction(name:arguments:)(3, inited);

  v20 = v29;
  swift_setDeallocating(v29);
  tc_v1_release(*(v20 + 16));
  swift_setDeallocating(inited);
  return tc_v1_release(*(inited + 16));
}

unint64_t MLStyleTransfer.TrainingSessionDelegate.saveImage(from:to:)(uint64_t a1, const __CFURL *a2)
{
  url = a2;
  v3 = type metadata accessor for UTType(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v33 = &v32;
  result = CMLMultiArray.data()();
  if (!v2)
  {
    v35 = v3;
    v34 = v4;
    v36 = 0;
    v38 = _swiftEmptyArrayStorage;
    v9 = 0;
    v41 = result;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 786432, 0);
    v10 = v41;
    v11 = v38;
    do
    {
      v12 = *(v10 + 8 * v9);
      if ((v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (*&v12 <= -1.0)
      {
        BUG();
      }

      if (*&v12 >= 256.0)
      {
        BUG();
      }

      v38 = v11;
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v14 >> 1 <= v13)
      {
        v40 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v13 + 1, 1);
        v12 = v40;
        v10 = v41;
        v11 = v38;
      }

      ++v9;
      *(v11 + 16) = v13 + 1;
      *(v11 + v13 + 32) = *&v12;
    }

    while (v9 != 786432);
    v40 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5(v11);
    v41 = v15;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v17 = CGDataProviderCreateWithCFData(isa);

    if (!v17)
    {
      goto LABEL_14;
    }

    v18 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    if (!v18)
    {
      BUG();
    }

    v19 = v18;
    v20 = CGImageCreate(0x200uLL, 0x200uLL, 8uLL, 0x18uLL, 0x600uLL, v18, 0, v17, 0, 0, kCGRenderingIntentDefault);

    v21 = v34;
    if (v20)
    {
      image = v20;
      URL._bridgeToObjectiveC()(image);
      url = v22;
      v23 = v33;
      static UTType.png.getter(-1.0, 256.0);
      UTType.identifier.getter();
      v25 = v24;
      (*(v21 + 8))(v23, v35);
      v26 = String._bridgeToObjectiveC()();
      v25;
      v27 = url;
      v28 = CGImageDestinationCreateWithURL(url, v26, 1uLL, 0);

      if (!v28)
      {
        BUG();
      }

      v29 = image;
      CGImageDestinationAddImage(v28, image, 0);
      CGImageDestinationFinalize(v28);

      return outlined consume of Data._Representation(v40, v41);
    }

    else
    {
LABEL_14:
      v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
      *v31 = 0xD000000000000029;
      *(v31 + 8) = "column is invalid" + 0x8000000000000000;
      *(v31 + 16) = 0;
      *(v31 + 32) = 0;
      *(v31 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v30);
      return outlined consume of Data._Representation(v40, v41);
    }
  }

  return result;
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5(uint64_t a1)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [UInt8]);
  v8 = lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]();
  v6[0] = a1;
  v1 = *__swift_project_boxed_opaque_existential_0Tm(v6, v7);
  v2 = v1 + 32;
  v3 = v1 + 32 + *(v1 + 16);
  a1;
  closure #1 in Data.init<A>(_:)(v2, v3);
  v4 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  a1;
  return v4;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v4 = v1;
  v152 = v2;
  v136 = type metadata accessor for UUID(0);
  v135 = *(v136 - 8);
  v6 = *(v135 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v137 = v129;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v146 = v129;
  v12 = type metadata accessor for MLTrainingSessionParameters(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v139 = v129;
  v16 = type metadata accessor for URL(0);
  v161 = *(v16 - 8);
  v17 = *(v161 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v138 = v129;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v145 = v129;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v151 = v129;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v159 = v129;
  v148 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v26 = *(*(v148 - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v156 = v129;
  v149 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v29 = *(*(v149 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v150 = v129;
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v157 = v129;
  v35 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  v36 = v152;
  v37 = *(*(v35 - 8) + 64);
  v38 = alloca(v37);
  v39 = alloca(v37);
  v153 = v129;
  v40 = alloca(v37);
  v41 = alloca(v37);
  v42 = alloca(v37);
  v43 = alloca(v37);
  v160 = v129;
  v44 = *(*(v12 + 20) + v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters);
  if (__OFADD__(v44, from))
  {
    BUG();
  }

  v45 = *(v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters + *(v12 + 28));
  v46 = v45 - from;
  if (__OFSUB__(v45, from))
  {
    BUG();
  }

  if (v44 < v46)
  {
    v46 = *(*(v12 + 20) + v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters);
  }

  if (v46 < 0)
  {
    BUG();
  }

  v147 = v129;
  v140 = v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters;
  v144 = v45;
  v143 = v44 + from;
  v158 = v16;
  v142 = v46;
  if (v46)
  {
    v155 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
    v163 = *(v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);
    v47 = v46;
    do
    {
      v48 = *(v36 + v155);

      CMLModel.callFunction(name:arguments:)(1, v163);
      if (v4)
      {
        goto LABEL_11;
      }

      --v47;
      v4 = 0;
      v36 = v152;
    }

    while (v47);
  }

  v47 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model;
  v49 = *(v36 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
  v50 = v4;
  v51 = *(v36 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(2, v51);
  if (v50)
  {
LABEL_11:

    goto LABEL_23;
  }

  v155 = v47;
  v163 = 0;

  v54 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v162 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for MLProgress.Metric, &type metadata for Any + 8, v54);
  v55 = v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v152 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v129, 0, 0);
  v56 = v157;
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v55, v157);
  v57 = v149;
  if (!__swift_getEnumTagSinglePayload(v56, 1, v149))
  {
    v154 = _swiftEmptyArrayStorage;
    v58 = v150;
    outlined init with copy of MLTrainingSessionParameters(v56, v150, type metadata accessor for MLStyleTransfer.PersistentParameters);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
    v59 = *(v58 + v57[5]);
    v60 = v58 + v57[6];
    v61 = v156;
    v62 = &v156[*(v148 + 20)];
    outlined init with copy of MLTrainingSessionParameters(v60, v62, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *v61 = v59;
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLStyleTransfer.PersistentParameters);
    v63 = v62;
    v64 = v147;
    outlined init with take of MLClassifierMetrics(v63, v147, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v65 = v160;
    outlined init with take of MLClassifierMetrics(v64, v160, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v66 = v153;
    outlined init with copy of MLTrainingSessionParameters(v65, v153, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    v47 = v158;
    if (__swift_getEnumTagSinglePayload(v66, 1, v158) == 1)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      v67 = v66;
LABEL_17:
      outlined destroy of MLActivityClassifier.ModelParameters(v67, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      goto LABEL_18;
    }

    v79 = v159;
    v149 = *(v161 + 32);
    (v149)(v159, v66, v47);
    v80 = *(v152 + v155);

    v81 = v163;
    v82 = CMLModel.predict(validationURL:)(v79);
    if (v81)
    {

      (*(v161 + 8))(v79, v47);
      outlined destroy of MLActivityClassifier.ModelParameters(v160, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      v52 = v162;
      goto LABEL_23;
    }

    v83 = v82;

    v47 = specialized handling<A, B>(_:_:)(*(v83 + 16));
    v157 = v83;
    v84 = v162;
    if (!v47)
    {
      BUG();
    }

    v85 = type metadata accessor for CMLColumn();
    inited = swift_initStackObject(v85, v130);
    *(inited + 16) = v47;
    if (CMLColumn.size.getter() == 1)
    {
      v153 = v47;
      v87 = CMLColumn.value(at:)(0);
      v156 = inited;
      v92 = specialized handling<A, B>(_:_:)(*(v87 + 16));
      v163 = 0;
      v47 = v92;
      if (!v92)
      {
        BUG();
      }

      v93 = type metadata accessor for CMLMultiArray();
      v94 = swift_initStackObject(v93, v131);
      *(v94 + 16) = v47;
      v95 = v163;
      v96 = CMLMultiArray.shape()();
      v163 = v95;
      v97 = v161;
      if (v95)
      {
        swift_setDeallocating(v156);
        tc_v1_release(v153);

        (*(v97 + 8))(v159, v158);
        goto LABEL_37;
      }

      v98 = specialized _copyCollectionToContiguousArray<A>(_:)(v96, 3);
      v99 = v98[2];
      v148 = v94;
      if (v99)
      {
        *&v133 = _swiftEmptyArrayStorage;
        v47 = 0;
        v150 = v99;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v99, 0);
        v100 = v150;
        v154 = v133;
        do
        {
          v101 = v98[v47 + 4];
          if (v101 < 0)
          {
            BUG();
          }

          v102 = v154;
          *&v133 = v154;
          v103 = v154[2];
          v104 = v154[3];
          v105 = v103 + 1;
          if (v104 >> 1 <= v103)
          {
            v147 = v154[2];
            v154 = (v103 + 1);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v104 >= 2, v105, 1);
            v105 = v154;
            v103 = v147;
            v100 = v150;
            v102 = v133;
          }

          ++v47;
          v102[2] = v105;
          v154 = v102;
          v102[v103 + 4] = v101;
        }

        while (v100 != v47);
      }

      v106 = v158;
      v107 = v154;
      v108 = specialized Sequence<>.elementsEqual<A>(_:)(&outlined read-only object #0 of MLStyleTransfer.TrainingSessionDelegate.train(from:), v154);
      v107;
      if (v108)
      {
        v109 = v139;
        outlined init with copy of MLTrainingSessionParameters(v140, v139, type metadata accessor for MLTrainingSessionParameters);
        v110 = v146;
        outlined init with take of URL?(v109, v146);
        if (__swift_getEnumTagSinglePayload(v110, 1, v106) == 1)
        {
          v111 = NSTemporaryDirectory();
          v112 = v111;
          v149 = static String._unconditionallyBridgeFromObjectiveC(_:)(v112);
          v114 = v113;

          URL.init(fileURLWithPath:isDirectory:)(v149, v114, 1);
          v114;
          if (__swift_getEnumTagSinglePayload(v110, 1, v106) != 1)
          {
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for URL?);
          }
        }

        else
        {
          (v149)(v151, v110, v106);
        }

        v117 = v137;
        UUID.init()();
        v118 = UUID.uuidString.getter();
        v120 = v119;
        (*(v135 + 8))(v117, v136);
        v121 = v138;
        URL.appendingPathComponent(_:)(v118, v120);
        v120;
        v122 = v145;
        URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
        v123 = v122;
        v124 = *(v161 + 8);
        v125 = v158;
        v124(v121, v158);
        v47 = v148;
        v126 = v163;
        MLStyleTransfer.TrainingSessionDelegate.saveImage(from:to:)(v148, v123);
        v163 = v126;
        if (!v126)
        {
          v134 = v125;
          v127 = __swift_allocate_boxed_opaque_existential_0(&v133);
          (*(v161 + 16))(v127, v123, v125);
          outlined init with take of Any(&v133, v132);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v162);
          v141 = v162;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v132, 6, isUniquelyReferenced_nonNull_native);

          v162 = v141;
          v124(v145, v125);
          v124(v151, v125);
          v124(v159, v125);
          v67 = v160;
          goto LABEL_17;
        }

        v124(v123, v125);
        v124(v151, v125);
        v124(v159, v125);
LABEL_37:
        outlined destroy of MLActivityClassifier.ModelParameters(v160, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
        v52 = v162;
        goto LABEL_23;
      }

      v162;
      v115 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v115, 0, 0);
      *v116 = 0xD00000000000001CLL;
      *(v116 + 8) = "3TrainingSessionDelegate" + 0x8000000000000000;
      *(v116 + 16) = 0;
      *(v116 + 32) = 0;
      *(v116 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v115);
      swift_setDeallocating(v156);
      tc_v1_release(v153);

      v90 = v159;
      v91 = v106;
    }

    else
    {
      v84;
      v88 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v88, 0, 0);
      *v89 = 0xD00000000000001CLL;
      *(v89 + 8) = "3TrainingSessionDelegate" + 0x8000000000000000;
      *(v89 + 16) = 0;
      *(v89 + 32) = 0;
      *(v89 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v88);
      swift_setDeallocating(inited);
      tc_v1_release(v47);

      v90 = v159;
      v91 = v158;
    }

    (*(v161 + 8))(v90, v91);
    v52 = outlined destroy of MLActivityClassifier.ModelParameters(v160, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    goto LABEL_23;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
LABEL_18:
  v68 = *(v152 + v155);

  v69 = CMLModel.contentLoss.getter(v3);
  v71 = v70;

  v47 = v162;
  if ((v71 & 1) == 0)
  {
    v134 = &type metadata for Double;
    *&v133 = v69;
    outlined init with take of Any(&v133, v132);
    v72 = swift_isUniquelyReferenced_nonNull_native(v47);
    v141 = v47;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v132, 1, v72);
    v47 = v141;
  }

  v73 = *(v152 + v155);

  v74 = CMLModel.styleLoss.getter(v3);
  v76 = v75;

  if ((v76 & 1) == 0)
  {
    v134 = &type metadata for Double;
    *&v133 = v74;
    outlined init with take of Any(&v133, v132);
    v77 = swift_isUniquelyReferenced_nonNull_native(v47);
    v141 = v47;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v132, 2, v77);
    v47 = v141;
  }

  v52 = v142;
  v53 = v143 >= v144;
LABEL_23:
  v78 = v47;
  result.metrics._rawValue = v78;
  result._0 = v52;
  result.finished = v53;
  return result;
}

uint64_t CMLModel.predict(validationURL:)(uint64_t a1)
{
  v28 = v1;
  v25 = v2;
  v27 = a1;
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v4 = empty;
  v5 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v5, v20);
  *(inited + 16) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v9 + 32) & ~*(v8 + 80);
  v11 = swift_allocObject(v6, v10 + *(v8 + 72), v9 | 7);
  *(v11 + 16) = 1;
  *(v11 + 24) = 2;
  (*(v8 + 16))(v11 + v10, v27, v7);
  v12 = v28;
  static MLStyleTransfer.generateTrainingTable(urls:)(v11);
  if (v12)
  {

    swift_setDeallocating(v11);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    swift_setDeallocating(v11);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v13 = v24;
    v21 = v23;
    v22 = v24 & 1;
    v28 = v23;
    outlined copy of Result<_DataTable, Error>(v23, v24);
    v14._countAndFlagsBits = 0x55746E65746E6F63;
    v14._object = 0xEB00000000734C52;
    MLDataTable.subscript.getter(v14);
    outlined consume of Result<_DataTable, Error>(v21, v22);
    v11 = v23;
    if (v24)
    {
      outlined consume of Result<_DataTable, Error>(v23, 1);
      v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
      *v16 = 0xD000000000000021;
      *(v16 + 8) = "checkpoint inference failed." + 0x8000000000000000;
      *(v16 + 16) = 0;
      *(v16 + 32) = 0;
      *(v16 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v15);
      outlined consume of Result<_DataTable, Error>(v28, v13);
    }

    else
    {
      LODWORD(v27) = v13;
      v17 = *(v23 + 16);

      outlined consume of Result<_DataTable, Error>(v11, 0);
      v18 = inited;
      CMLParameters.add(key:column:)(4, v17);
      v11 = CMLModel.callFunction(name:arguments:)(10, v18);

      outlined consume of Result<_DataTable, Error>(v28, v27);
      swift_setDeallocating(v18);
      tc_v1_release(*(v18 + 16));
    }
  }

  return v11;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.TrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v3 = *(v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
  v4 = *(v2 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(4, v4);

  if (!v1)
  {
  }

  v5._0 = 1;
  v5.finished = 1;
  return v5;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0xEB0000000064657ALL;
  v5 = *a2;
  v20 = v3;
  v19 = a1;
  switch(v5)
  {
    case 0:
      v6 = 0x696C616974696E69;
      break;
    case 1:
      v6 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v6 = 0x697461756C617665;
LABEL_7:
      v4 = 0xEA0000000000676ELL;
      break;
    case 4:
      v4 = 0xEB00000000676E69;
      v6 = 0x636E657265666E69;
      break;
  }

  v7 = 0;
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v4, 0x676E696E69617274, 0xE800000000000000, 0);
  v4;
  if (v8)
  {
LABEL_9:
    empty = tc_v1_parameters_create_empty(0);
    if (!empty)
    {
      BUG();
    }

    v10 = empty;
    v11 = type metadata accessor for CMLParameters();
    inited = swift_initStackObject(v11, v18);
    *(inited + 16) = v10;
    v7 = type metadata accessor for CMLFeatureValue();
    v13 = URL.path.getter(0);
    v15 = CMLFeatureValue.__allocating_init(_:)(v13, v14);
    if (v2)
    {
    }

    else
    {
      v7 = v15;
      CMLParameters.add(key:featureValue:)(7, v15);

      v16 = *(v20 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

      CMLModel.callFunction(name:arguments:)(6, inited);

      swift_setDeallocating(inited);
      tc_v1_release(*(inited + 16));

      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of MLStyleTransfer.PersistentParameters?(v10, &v14);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
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
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLStyleTransfer.PersistentParameters);
    MLStyleTransfer.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLStyleTransfer.PersistentParameters);
  }
}

NSURL *MLStyleTransfer.TrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v31 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
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
  v32 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v13 = *(*(v32 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v34 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLStyleTransfer.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters + v31;
    swift_beginAccess(OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters + v31, v28, 0, 0);
    v21 = v35;
    outlined init with copy of MLStyleTransfer.PersistentParameters?(v20, v35);
    v22 = v21;
    v23 = v32;
    if (__swift_getEnumTagSinglePayload(v22, 1, v32) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
      v24 = v33;
      outlined init with take of MLClassifierMetrics(v36, v33, type metadata accessor for MLStyleTransfer.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLStyleTransfer.PersistentParameters?(v24, v20);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v34;
      outlined init with take of MLClassifierMetrics(v35, v34, type metadata accessor for MLStyleTransfer.PersistentParameters);
      v26 = v36;
      MLStyleTransfer.TrainingSessionDelegate.verifyParametersCompatibility(_:_:phase:)(v36, v25);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLStyleTransfer.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLStyleTransfer.PersistentParameters);
    }
  }

  return result;
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.verifyParametersCompatibility(_:_:phase:)(uint64_t a1, uint64_t a2)
{
  v75 = v2;
  v85 = a2;
  v3 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v4 = *(*(v3 - 1) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v73 = v71;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v74 = v71;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v72 = v71;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v13 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v77 = v13[5];
  LOBYTE(v87) = *(a1 + v77);
  v14 = &v71[v3[5]];
  v79 = a1 + v13[6];
  outlined init with copy of MLTrainingSessionParameters(v79, v14, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v15 = *(a1 + v13[7]);
  v16 = *(a1 + v13[8]);
  v83 = a1;
  *&v71[v3[6]] = 1;
  v17 = v3[10];
  v71[0] = v87;
  *&v71[v3[7]] = 500;
  v18 = v3[8];
  v87 = v15;
  *&v71[v18] = v15;
  v19 = v3[9];
  v86 = v16;
  *&v71[v19] = v16;
  v88 = *(a1 + v13[9]);
  v71[v17] = v88;
  v76 = v71[0];
  outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLStyleTransfer.ModelParameters);
  v82 = v13[5];
  LOBYTE(v84) = *(v85 + v82);
  v20 = v72;
  v21 = &v72[v3[5]];
  v81 = v85 + v13[6];
  outlined init with copy of MLTrainingSessionParameters(v81, v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v22 = *(v85 + v13[7]);
  v23 = *(v85 + v13[8]);
  v24 = v85;
  *&v20[v3[6]] = 1;
  v25 = v3[10];
  *v20 = v84;
  *&v20[v3[7]] = 500;
  v26 = v3[8];
  v84 = v22;
  *&v20[v26] = v22;
  v27 = v3[9];
  v80 = v23;
  *&v20[v27] = v23;
  v89 = *(v24 + v13[9]);
  v20[v25] = v89;
  LODWORD(v13) = *v20;
  outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
  v28 = specialized == infix<A>(_:_:)(v76, v13);
  v29 = *(v83 + v77);
  v30 = v3[5];
  if (v28)
  {
    outlined init with copy of MLTrainingSessionParameters(v79, &v71[v30], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v71[v3[6]] = 1;
    v31 = v3[10];
    v71[0] = v29;
    *&v71[v3[7]] = 500;
    *&v71[v3[8]] = v87;
    *&v71[v3[9]] = v86;
    v71[v31] = v88;
    outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLStyleTransfer.ModelParameters);
    v32 = *(v85 + v82);
    outlined init with copy of MLTrainingSessionParameters(v81, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v20[v3[6]] = 1;
    v33 = v3[10];
    *v20 = v32;
    *&v20[v3[7]] = 500;
    *&v20[v3[8]] = v84;
    *&v20[v3[9]] = v80;
    v20[v33] = v89;
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
    v34 = *(v83 + v77);
    outlined init with copy of MLTrainingSessionParameters(v79, &v71[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v71[v3[6]] = 1;
    v35 = v3[10];
    v71[0] = v34;
    *&v71[v3[7]] = 500;
    v36 = v87;
    *&v71[v3[8]] = v87;
    *&v71[v3[9]] = v86;
    v71[v35] = v88;
    outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLStyleTransfer.ModelParameters);
    if (v36 == v84)
    {
      v37 = *(v85 + v82);
      outlined init with copy of MLTrainingSessionParameters(v81, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v20[v3[6]] = 1;
      v38 = v3[10];
      *v20 = v37;
      *&v20[v3[7]] = 500;
      *&v20[v3[8]] = v87;
      v39 = v80;
      *&v20[v3[9]] = v80;
      v20[v38] = v89;
      result = outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
      if (v86 == v39)
      {
        return result;
      }

      v41 = *(v83 + v77);
      outlined init with copy of MLTrainingSessionParameters(v79, &v71[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v71[v3[6]] = 1;
      v42 = v3[10];
      v71[0] = v41;
      *&v71[v3[7]] = 500;
      *&v71[v3[8]] = v87;
      v43 = v86;
      *&v71[v3[9]] = v86;
      v71[v42] = v88;
      outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLStyleTransfer.ModelParameters);
      v78 = v43;
      v83 = lazy protocol witness table accessor for type Int and conformance Int();
      v86 = BinaryInteger.description.getter(&type metadata for Int, v83);
      v84 = v44;
      v45 = *(v85 + v82);
      outlined init with copy of MLTrainingSessionParameters(v81, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v20[v3[6]] = 1;
      v46 = v3[10];
      *v20 = v45;
      *&v20[v3[7]] = 500;
      *&v20[v3[8]] = v87;
      v47 = v3[9];
      v48 = v80;
      *&v20[v47] = v80;
      v20[v46] = v89;
      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
      v78 = v48;
      v49 = BinaryInteger.description.getter(&type metadata for Int, v83);
      v51 = v50;
      v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
      strcpy(v53, "Style Strength");
      *(v53 + 15) = -18;
      *(v53 + 16) = v86;
      v54 = v84;
    }

    else
    {
      v78 = v87;
      v83 = lazy protocol witness table accessor for type Int and conformance Int();
      v87 = BinaryInteger.description.getter(&type metadata for Int, v83);
      v86 = v66;
      v67 = *(v85 + v82);
      outlined init with copy of MLTrainingSessionParameters(v81, &v20[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      *&v20[v3[6]] = 1;
      v68 = v3[10];
      *v20 = v67;
      *&v20[v3[7]] = 500;
      v69 = v84;
      *&v20[v3[8]] = v84;
      *&v20[v3[9]] = v80;
      v20[v68] = v89;
      outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLStyleTransfer.ModelParameters);
      v78 = v69;
      v49 = BinaryInteger.description.getter(&type metadata for Int, v83);
      v51 = v70;
      v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
      strcpy(v53, "Textel Density");
      *(v53 + 15) = -18;
      *(v53 + 16) = v87;
      v54 = v86;
    }

    *(v53 + 24) = v54;
    *(v53 + 32) = v49;
    *(v53 + 40) = v51;
  }

  else
  {
    v55 = v74;
    outlined init with copy of MLTrainingSessionParameters(v79, &v74[v30], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v55[v3[6]] = 1;
    v56 = v3[10];
    *v55 = v29;
    *&v55[v3[7]] = 500;
    *&v55[v3[8]] = v87;
    *&v55[v3[9]] = v86;
    v55[v56] = v88;
    v57 = *v55;
    v58 = "volutional neural network lite)";
    v59 = "volutional neural network lite)";
    if (*v55)
    {
      v59 = "parallelTreeCount";
    }

    v86 = 0xD00000000000004FLL;
    v60 = v57 == 0;
    v61 = 0xD000000000000046;
    if (!v60)
    {
      v61 = 0xD00000000000004FLL;
    }

    v87 = v61;
    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLStyleTransfer.ModelParameters);
    v62 = v59 | 0x8000000000000000;
    LOBYTE(v85) = *(v85 + v82);
    v63 = v73;
    outlined init with copy of MLTrainingSessionParameters(v81, &v73[v3[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    *&v63[v3[6]] = 1;
    v64 = v3[10];
    *v63 = v85;
    *&v63[v3[7]] = 500;
    *&v63[v3[8]] = v84;
    *&v63[v3[9]] = v80;
    v63[v64] = v89;
    v65 = 0xD000000000000046;
    if (*v63)
    {
      v65 = v86;
      v58 = "parallelTreeCount";
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v63, type metadata accessor for MLStyleTransfer.ModelParameters);
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = 0x687469726F676C41;
    *(v53 + 8) = 0xE90000000000006DLL;
    *(v53 + 16) = v87;
    *(v53 + 24) = v62;
    *(v53 + 32) = v65;
    *(v53 + 40) = v58 | 0x8000000000000000;
  }

  *(v53 + 48) = 3;
  return swift_willThrow(&type metadata for MLCreateError, v52);
}

uint64_t MLStyleTransfer.TrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  v1 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);

  v2 = *(v0 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_args);

  return v0;
}

uint64_t type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLStyleTransfer.TrainingSessionDelegate;
  if (!type metadata singleton initialization cache for MLStyleTransfer.TrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLStyleTransfer.TrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer.TrainingSessionDelegate(uint64_t a1)
{
  v4[0] = &unk_344878;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[1] = *(result - 8) + 64;
    result = type metadata accessor for MLStyleTransfer.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = &value witness table for Builtin.NativeObject + 64;
      v4[4] = &value witness table for Builtin.NativeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 5, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLStyleTransfer.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLStyleTransfer.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLStyleTransfer.PersistentParameters?)
  {
    v2 = type metadata accessor for MLStyleTransfer.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLStyleTransfer.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance MLStyleTransfer.TrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = MLStyleTransfer.TrainingSessionDelegate.evaluate(from:)(a1);
  if (!v7)
  {
    v5 = 1;
    v6 = 1;
  }

  return (*(v2 + 8))(v5, v6, *(&v4 + 1));
}

uint64_t outlined init with copy of MLStyleTransfer.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLStyleTransfer.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [UInt8] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [UInt8]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [UInt8] and conformance <A> [A] = result;
  }

  return result;
}

uint64_t closure #1 in Data.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = 0xC000000000000000;
  if (a1 && (v5 = a2 - a1, a2 != a1))
  {
    if (v5 <= 14)
    {
      result = Data.InlineData.init(_:)(a1, a2, 0xC000000000000000);
      v4 = v8 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      result = Data.LargeSlice.init(_:)(a1, a2, 0xC000000000000000);
      v4 = v9 | 0x8000000000000000;
    }

    else
    {
      result = Data.InlineSlice.init(_:)(a1, a2, 0xC000000000000000);
      v4 = v7 | 0x4000000000000000;
    }
  }

  else
  {
    result = 0;
  }

  *v3 = result;
  v3[1] = v4;
  return result;
}

uint64_t __swift_memcpy3_1(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 2) = *(a2 + 2);
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.AnnotationType(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && (a2 + 33554177 >= 0x1000000 ? (v2 = *(a1 + 3)) : (v2 = *(a1 + 3)), v2))
    {
      v3 = (*a1 | (*(a1 + 2) << 16)) + (v2 << 24) - 16776962;
    }

    else
    {
      v4 = *a1;
      v5 = v4 - 2;
      v6 = v4 < 2;
      v3 = -1;
      if (!v6)
      {
        v3 = v5;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MLObjectDetector.AnnotationType(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = (a3 + 33554177 < 0x1000000) + 1;
  if (a3 < 0xFF)
  {
    result = 0;
  }

  if (a2 > 0xFE)
  {
    v4 = a2 - 255;
    *a1 = v4;
    *(a1 + 2) = BYTE2(v4);
    if (result)
    {
      v5 = HIBYTE(v4) + 1;
      if (result == 2)
      {
        *(a1 + 3) = v5;
      }

      else
      {
        *(a1 + 3) = v5;
      }
    }
  }

  else
  {
    if (result)
    {
      if (result == 2)
      {
        *(a1 + 3) = 0;
      }

      else
      {
        *(a1 + 3) = 0;
      }
    }

    if (a2)
    {
      *a1 = a2 + 1;
    }
  }

  return result;
}

void MLRandomForestClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLRandomForestClassifier(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLRandomForestClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRandomForestClassifier;
  if (!type metadata singleton initialization cache for MLRandomForestClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRandomForestClassifier);
  }

  return result;
}

uint64_t MLRandomForestClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v15 = v3;
  v16 = v2;
  v17 = type metadata accessor for DataFrame(0);
  v18 = *(v17 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  outlined copy of Result<_DataTable, Error>(v13, v10);
  DataFrame.init(_:)(&v13);
  v11 = v15;
  MLRandomForestClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLRandomForestClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(v8 + 28);
  v28 = v2;
  v10._rawValue = *(v2 + v9);
  v27 = a1;
  DataFrame.validateContainsColumns(_:context:)(v10, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v11)
  {
    goto LABEL_6;
  }

  v29 = &v25;
  v30 = v4;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v12, v26);
  inited[2] = 1;
  inited[3] = 2;
  v14 = *(v8 + 24);
  v15 = *(v28 + v14 + 8);
  inited[4] = *(v28 + v14);
  inited[5] = v15;
  v15;
  v16 = v27;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  if (v11)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v4 = v30;
LABEL_6:
    *v4 = v11;
    v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v19 = 2;
    v20 = v4;
    v21 = v18;
    return swift_storeEnumTagMultiPayload(v20, v21, v19);
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v17 = v29;
  AnyTreeClassifierModel.computeMetrics(on:)(v16);
  v23 = v17;
  v24 = v30;
  outlined init with take of MLClassifierMetrics(v23, v30, type metadata accessor for AnyClassificationMetrics);
  v20 = v24;
  v21 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v19 = 0;
  return swift_storeEnumTagMultiPayload(v20, v21, v19);
}

{
  v11 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v7);
  DataFrame.init(_:)(&v9);
  MLRandomForestClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLRandomForestClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for AnyTreeClassifierModel(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v34;
  v47 = type metadata accessor for Model(0);
  v7 = *(v47 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v43 = &v34;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v42, v49, sizeof(v42));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD000000000000016, ("parameter-images" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = v46;
    outlined init with copy of MLTrainingSessionParameters(v44, v46, type metadata accessor for AnyTreeClassifierModel);
    v18 = *&v42[8];
    if (*&v42[8])
    {
      v19 = *v42;
      v20 = *&v42[16];
      v21 = *&v42[24];
      v22 = *&v42[32];
      v23 = *&v42[48];
      v24 = *&v42[56];
      v25 = *&v42[64];
    }

    else
    {
      v26 = NSFullUserName();
      v27 = v26;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v27);
      v18 = v28;

      v21 = "RandomForestRegressor" + 0x8000000000000000;
      v36[0] = v19;
      v36[1] = v18;
      v36[2] = 0xD000000000000033;
      v36[3] = "RandomForestRegressor" + 0x8000000000000000;
      v37 = 0;
      v38 = 49;
      v39 = 0xE100000000000000;
      v40 = 0;
      *v41 = v19;
      *&v41[8] = v18;
      *&v41[16] = 0xD000000000000033;
      *&v41[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v41[32] = 0;
      *&v41[48] = 49;
      *&v41[56] = 0xE100000000000000;
      *&v41[64] = 0;
      outlined retain of MLModelMetadata(v36);
      outlined release of MLModelMetadata(v41, v17);
      v24 = 0xE100000000000000;
      v23 = 49;
      v22 = 0;
      v20 = 0xD000000000000033;
      v25 = 0;
    }

    *v41 = v19;
    *&v41[8] = v18;
    *&v41[16] = v20;
    *&v41[24] = v21;
    *&v41[32] = v22;
    *&v41[48] = v23;
    *&v41[56] = v24;
    *&v41[64] = v25;
    qmemcpy(v35, v41, sizeof(v35));
    outlined retain of MLModelMetadata?(v42);
    v29 = v43;
    v30 = v46;
    v31 = v45;
    specialized CoreMLExportable.export(metadata:)(v35);
    v32 = v49;
    outlined release of MLModelMetadata(v41, v42);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for AnyTreeClassifierModel);
    if (v31)
    {
      return (*(v50 + 8))(v51, v32);
    }

    else
    {
      Model.write(to:)(v51);
      v33 = v50;
      (*(v48 + 8))(v29, v47);
      return (*(v33 + 8))(v51, v32);
    }
  }

  return result;
}

uint64_t MLRandomForestClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLRandomForestClassifier.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLRandomForestClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLRandomForestClassifier(0);
  v6 = v0 + v5[8];
  v27._countAndFlagsBits = MLRandomForestClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = v1 + v5[9];
  v24._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v24._object = v10;
  v11 = v5[10];
  v12 = v8;
  outlined init with copy of MLTrainingSessionParameters(v1 + v11, &v22, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload(&v22, v27._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
  v27._object = MLClassifierMetrics.description.getter();
  v14 = v13;
  v25 = 0xD000000000000023;
  v26 = "RandomForestClassifier" + 0x8000000000000000;
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

NSAttributedString MLRandomForestClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLRandomForestClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void *specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  v29 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<String?>);
    v2 = static _SetStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
  v4 = -1 << *(v29 + 32);
  v5 = v3;
  v6 = ~(-1 << -v4);
  if (-v4 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v29 + 56) & v6;
  v31 = v29 + 56;
  v32 = (63 - v4) >> 6;
  v29;
  if (v5 == &type metadata for String)
  {
    v17 = 0;
    for (i = v2; ; v2 = i)
    {
      if (v7)
      {
        v18 = v17;
      }

      else
      {
        v19 = v17 + 1;
        if (__OFADD__(1, v17))
        {
          BUG();
        }

        if (v19 >= v32)
        {
          goto LABEL_31;
        }

        v7 = *(v31 + 8 * v19);
        if (v7)
        {
          v18 = v17 + 1;
        }

        else
        {
          v18 = v17 + 2;
          if (v17 + 2 >= v32)
          {
            goto LABEL_55;
          }

          v7 = *(v31 + 8 * v19 + 8);
          if (!v7)
          {
            v18 = v17 + 3;
            if (v17 + 3 >= v32)
            {
              goto LABEL_55;
            }

            v7 = *(v31 + 8 * v19 + 16);
            if (!v7)
            {
              v18 = v17 + 4;
              if (v17 + 4 >= v32)
              {
                goto LABEL_55;
              }

              v7 = *(v31 + 8 * v19 + 24);
              if (!v7)
              {
                v18 = v17 + 5;
                if (v17 + 5 >= v32)
                {
                  goto LABEL_55;
                }

                v7 = *(v31 + 8 * v19 + 32);
                if (!v7)
                {
                  v18 = v17 + 6;
                  if (v17 + 6 >= v32)
                  {
                    goto LABEL_55;
                  }

                  v7 = *(v31 + 8 * v19 + 40);
                  if (!v7)
                  {
                    v20 = v17 + 7;
                    if (v17 + 7 >= v32)
                    {
                      goto LABEL_55;
                    }

                    v7 = *(v31 + 8 * v19 + 48);
                    if (!v7)
                    {
                      while (1)
                      {
                        v18 = v20 + 1;
                        if (v20 + 1 >= v32)
                        {
                          break;
                        }

                        v7 = *(v29 + 8 * v20++ + 64);
                        if (v7)
                        {
                          goto LABEL_54;
                        }
                      }

LABEL_55:
                      v2 = i;
                      goto LABEL_31;
                    }

                    v18 = v17 + 7;
                  }
                }
              }
            }
          }
        }
      }

LABEL_54:
      _BitScanForward64(&v21, v7);
      v7 &= v7 - 1;
      v22 = *(v29 + 48);
      v23 = (v18 << 10) | (16 * v21);
      v24 = *(v22 + v23 + 8);
      v27 = *(v22 + v23);
      v28 = v24;
      v24;
      swift_dynamicCast(&v25, &v27, &type metadata for String, &type metadata for String, 7);
      specialized _NativeSet._unsafeUpdate(with:)(v25, v26);
      v17 = v18;
    }
  }

  for (j = 0; ; j = v9)
  {
    if (v7)
    {
      v9 = j;
      goto LABEL_29;
    }

    v10 = j + 1;
    if (__OFADD__(1, j))
    {
      BUG();
    }

    if (v10 >= v32)
    {
      goto LABEL_30;
    }

    v7 = *(v31 + 8 * v10);
    if (v7)
    {
      v9 = j + 1;
      goto LABEL_29;
    }

    v9 = j + 2;
    if (j + 2 >= v32)
    {
      goto LABEL_30;
    }

    v7 = *(v31 + 8 * v10 + 8);
    if (!v7)
    {
      v9 = j + 3;
      if (j + 3 >= v32)
      {
        goto LABEL_30;
      }

      v7 = *(v31 + 8 * v10 + 16);
      if (!v7)
      {
        v9 = j + 4;
        if (j + 4 >= v32)
        {
          goto LABEL_30;
        }

        v7 = *(v31 + 8 * v10 + 24);
        if (!v7)
        {
          v9 = j + 5;
          if (j + 5 >= v32)
          {
            goto LABEL_30;
          }

          v7 = *(v31 + 8 * v10 + 32);
          if (!v7)
          {
            v9 = j + 6;
            if (j + 6 >= v32)
            {
              goto LABEL_30;
            }

            v7 = *(v31 + 8 * v10 + 40);
            if (!v7)
            {
              break;
            }
          }
        }
      }
    }

LABEL_29:
    _BitScanForward64(&v12, v7);
    v7 &= v7 - 1;
    v13 = *(v29 + 48);
    v14 = (v9 << 10) | (16 * v12);
    v15 = *(v13 + v14 + 8);
    v27 = *(v13 + v14);
    v28 = v15;
    v15;
    swift_dynamicCast(&v25, &v27, &type metadata for String, v5, 7);
    specialized _NativeSet._unsafeInsertNew(_:)(v25, v26, v2);
  }

  v11 = j + 7;
  if (j + 7 >= v32)
  {
    goto LABEL_30;
  }

  v7 = *(v31 + 8 * v10 + 48);
  if (v7)
  {
    v9 = j + 7;
    goto LABEL_29;
  }

  while (1)
  {
    v9 = v11 + 1;
    if (v11 + 1 >= v32)
    {
      break;
    }

    v7 = *(v29 + 8 * v11++ + 64);
    if (v7)
    {
      goto LABEL_29;
    }
  }

LABEL_30:

LABEL_31:
  outlined consume of [String : [Double]].Iterator._Variant(v29);
  return v2;
}

{
  v34 = a1;
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _SetStorage<Int?>);
    v2 = static _SetStorage.allocate(capacity:)(v1);
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = -1 << *(v34 + 32);
  v36 = v34 + 56;
  v4 = ~(-1 << -v3);
  if (-v3 >= 64)
  {
    v4 = -1;
  }

  j = *(v34 + 56) & v4;
  v31 = v3;
  v35 = (63 - v3) >> 6;
  v34;

  for (i = 0; ; i = v30)
  {
    if (j)
    {
      v7 = i;
      goto LABEL_23;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v35)
    {
      break;
    }

    j = *(v36 + 8 * v8);
    if (j)
    {
      v7 = i + 1;
    }

    else
    {
      v7 = i + 2;
      if (i + 2 >= v35)
      {
        break;
      }

      j = *(v36 + 8 * v8 + 8);
      if (!j)
      {
        v7 = i + 3;
        if (i + 3 >= v35)
        {
          break;
        }

        j = *(v36 + 8 * v8 + 16);
        if (!j)
        {
          v7 = i + 4;
          if (i + 4 >= v35)
          {
            break;
          }

          j = *(v36 + 8 * v8 + 24);
          if (!j)
          {
            v7 = i + 5;
            if (i + 5 >= v35)
            {
              break;
            }

            j = *(v36 + 8 * v8 + 32);
            if (!j)
            {
              v7 = i + 6;
              if (i + 6 >= v35)
              {
                break;
              }

              j = *(v36 + 8 * v8 + 40);
              if (!j)
              {
                v7 = i + 7;
                if (i + 7 >= v35)
                {
                  break;
                }

                for (j = *(v36 + 8 * v8 + 48); !j; j = *(v36 + 8 * v7))
                {
                  if (__OFADD__(1, v7++))
                  {
                    BUG();
                  }

                  if (v7 >= v35)
                  {
                    goto LABEL_44;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_23:
    _BitScanForward64(&v9, j);
    v10 = *(v34 + 48);
    v30 = v7;
    v29[0] = *(v10 + ((v7 << 9) | (8 * v9)));
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
    swift_dynamicCast(&v32, v29, &type metadata for Int, v11, 7);
    v12 = v32;
    v13 = v33;
    Hasher.init(_seed:)(v2[5]);
    if (v13 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v12);
    }

    v14 = Hasher._finalize()() & ~(-1 << *(v2 + 32));
    v15 = v14 >> 6;
    v16 = ~v2[(v14 >> 6) + 7] >> v14 << v14;
    if (v16)
    {
      _BitScanForward64(&v17, v16);
      v18 = v17 | v14 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = (63 - (-1 << *(v2 + 32))) >> 6;
      v20 = 0;
      do
      {
        v21 = v15 + 1;
        if (v15 + 1 == v19 && (v20 & 1) != 0)
        {
          BUG();
        }

        v15 = 0;
        if (v21 != v19)
        {
          v15 = v21;
        }

        v20 |= v21 == v19;
        v22 = v2[v15 + 7];
      }

      while (v22 == -1);
      v23 = ~v22;
      v24 = 64;
      if (v23)
      {
        _BitScanForward64(&v24, v23);
      }

      v18 = v24 + (v15 << 6);
    }

    j &= j - 1;
    v2[(v18 >> 6) + 7] |= 1 << v18;
    v25 = v2[6];
    v26 = 16 * v18;
    *(v25 + v26) = v12;
    *(v25 + v26 + 8) = v13;
    ++v2[2];
  }

LABEL_44:

  outlined consume of [String : [Double]].Iterator._Variant(v34);
  return v2;
}

void MLRandomForestClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLRandomForestClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLRandomForestClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLRandomForestClassifier.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLRandomForestClassifier(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLRandomForestClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLRandomForestClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLRandomForestClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLRandomForestClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLRandomForestClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  return outlined init with copy of MLRandomForestClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLRandomForestClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLRandomForestClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLRandomForestClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLRandomForestClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLRandomForestClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v6[10] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 80);
  v19 = *(v0 + 72);
  v21 = *(v0 + 64);
  v16 = *(v0 + 48);
  v15 = *(v0 + 32);
  v2 = *(v0 + 16);
  v18 = v2;
  v17 = type metadata accessor for MLRandomForestClassifier(0);
  *(v0 + 88) = v17;
  v3 = v17[9];
  *(v0 + 120) = v3;
  v4 = v2 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v5 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v6 = *(v5 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v7 = *(v5 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v19 + 8))(v1, v21);
  *(v18 + v3) = 0;
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v4, v20, 1);
  v8 = v17[10];
  *(v0 + 124) = v8;
  v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v10 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
  *v11 = 0xD0000000000000C0;
  *(v11 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v11 + 16) = 0;
  *(v11 + 32) = 0;
  *(v11 + 48) = 0;
  *(v18 + v8) = v10;
  swift_storeEnumTagMultiPayload(v18 + v8, v20, 2);
  *(v18 + v17[7]) = v16;
  *(v18 + v17[6]) = v15;
  v12 = swift_task_alloc(288);
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:);
  v13 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v4 + *(v1 + 20)) = *(v0 + 112);
  outlined init with take of MLClassifierMetrics(v5, v4, type metadata accessor for AnyTreeClassifierModel);
  qmemcpy((v4 + *(v1 + 32)), v3, 0x58uLL);
  v2;
  return (*(v0 + 8))();
}

{
  v8 = *(v0 + 80);
  v9 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v2 + *(v0 + 124);
  v5 = v2 + *(v0 + 120);
  outlined destroy of MLRandomForestClassifier.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for AnyTreeClassifierModel);
  v1;
  v9;
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v8;
  v6 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 96);
  v4 = *v2;
  *(*v2 + 104) = v1;
  v5;
  if (v1)
  {
    v6 = MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v204 = a4;
  _ = a3;
  v7 = v5;
  v202 = v5;
  v215._countAndFlagsBits = a2;
  v214 = v6;
  v220 = a5;
  v215._object = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v189 = v168;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v186 = v168;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v190 = v168;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v187 = v168;
  v184 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v18 = *(v184 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v182 = v168;
  v183 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v213 = v168;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v180 = v168;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v198 = v168;
  v195 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v195 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v200 = v168;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v207 = v168;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v192 = v168;
  v36 = *(*(type metadata accessor for AnyTreeClassifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v212 = v168;
  v222 = type metadata accessor for DataFrame(0);
  v210 = *(v222 - 8);
  v39 = *(v210 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v197 = v168;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v201 = v168;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v199 = v168;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v193 = v168;
  v205 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v205 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v223 = v168;
  v211 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v211 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v188 = v168;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v185 = v168;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v194 = v168;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v206 = v168;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v179 = v168;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v217 = v168;
  v216 = type metadata accessor for BoostedTreeConfiguration(0);
  v218 = *(v216 - 8);
  v64 = *(v218 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v181 = v168;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v208 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v224 = *(v208 - 1);
  v69 = *(v224 + 8);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v209 = type metadata accessor for MLRandomForestClassifier(0);
  v203 = *(v209 + 9);
  v72 = v7 + v203;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v73 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v74 = *(v73 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v168);
  v75 = *(v73 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v168);
  (*(v224 + 1))(v168, v208);
  v76 = v202;
  *(v202 + v203) = 0;
  v77 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v203 = v72;
  swift_storeEnumTagMultiPayload(v72, v77, 1);
  v224 = *(v209 + 10);
  v208 = &v224[v76];
  v78 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v79 = swift_allocError(&type metadata for MLCreateError, v78, 0, 0);
  *v80 = 0xD0000000000000C0;
  *(v80 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v80 + 16) = 0;
  *(v80 + 32) = 0;
  *(v80 + 48) = 0;
  *&v224[v76] = v79;
  v81 = v220;
  v196 = v77;
  swift_storeEnumTagMultiPayload(v208, v77, 2);
  outlined init with copy of MLRandomForestClassifier.ModelParameters(v81, v169);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.parallelTreeCount.setter(10);
  BoostedTreeConfiguration.maximumDepth.setter(v170);
  BoostedTreeConfiguration.maximumIterations.setter(v171);
  BoostedTreeConfiguration.minimumLossReduction.setter(v172);
  BoostedTreeConfiguration.minimumChildWeight.setter(v173);
  BoostedTreeConfiguration.randomSeed.setter(v174);
  BoostedTreeConfiguration.rowSubsample.setter(v175);
  v219 = v168;
  BoostedTreeConfiguration.columnSubsample.setter(v176);
  outlined destroy of MLRandomForestClassifier.ModelParameters(v169);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &v177, &demangling cache variable for type metadata for Any?);
  if (!v178)
  {
    BUG();
  }

  v82 = v217;
  v83 = v217 + *(v211 + 48);
  outlined init with take of Any(&v177, v169);
  swift_dynamicCast(v223, v169, &type metadata for Any + 8, v205, 7);
  object = v215._object;
  v85 = v214;
  MLRandomForestClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v82, v83, v215._object);
  v224 = v85;
  if (v85)
  {
    _;
    v204;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    (*(v210 + 8))(object, v222);
    outlined destroy of MLActivityClassifier.ModelParameters(v223, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
    v86 = v219;
    v87 = v216;
LABEL_6:
    (*(v218 + 8))(v86, v87);
LABEL_7:
    outlined destroy of MLActivityClassifier.ModelParameters(v203, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v208, type metadata accessor for MLClassifierMetrics);
  }

  v88 = v82;
  v191 = v83;
  outlined destroy of MLActivityClassifier.ModelParameters(v223, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v89 = v82;
  v90 = _;
  v91 = v204;
  v92 = v224;
  v93 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v89, v215._countAndFlagsBits, _, v204);
  v224 = v92;
  v94 = v216;
  if (v92)
  {
    v90;
    v91;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    (*(v210 + 8))(v215._object, v222);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v86 = v219;
    v87 = v94;
    goto LABEL_6;
  }

  v214 = v93;
  v91;
  v96 = v179;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, v179, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v97 = v96 + *(v211 + 48);
  if (__swift_getEnumTagSinglePayload(v97, 1, v222) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v97, &demangling cache variable for type metadata for DataFrame?);
    v223 = *(v210 + 8);
    v223(v96, v222);
    goto LABEL_10;
  }

  v108 = v97;
  v109 = v222;
  v110 = v210;
  (*(v210 + 32))(v193, v108, v222);
  v223 = *(v110 + 8);
  v223(v96, v109);
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v111, v168);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v215._countAndFlagsBits;
  inited[5] = v90;
  v90;
  v113 = v193;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v114)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    _;
    v214;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    v115 = v222;
    v116 = v223;
    v223(v215._object, v222);
    v116(v113, v115);
LABEL_20:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v218 + 8))(v219, v216);
    goto LABEL_7;
  }

  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v124 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v125 = swift_allocObject(v124, 48, 7);
  v125[2] = 2;
  v125[3] = 4;
  v125[4] = &type metadata for String;
  v125[5] = &type metadata for Int;
  v126._countAndFlagsBits = v215._countAndFlagsBits;
  v126._object = _;
  v127 = v113;
  DataFrame.validateColumnTypes(_:_:context:)(v126, v125, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v128)
  {
    _;
    v214;
    v125;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    v129 = v222;
    v130 = v223;
    v223(v215._object, v222);
    v130(v127, v129);
    goto LABEL_20;
  }

  v224 = 0;
  v223(v113, v222);
  v125;
  v90 = _;
LABEL_10:
  v98 = v217;
  v99 = v206;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v206, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  DataFrame.subscript.getter(v215._countAndFlagsBits, v90);
  v100 = v99;
  v101 = v222;
  v102 = v223;
  v223(v100, v222);
  v103 = v98;
  v104 = v194;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, v194, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v105 = v180;
  outlined init with take of DataFrame?(v104 + *(v211 + 48), v180);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, 1, v101);
  v107 = v102;
  if (EnumTagSinglePayload == 1)
  {
    v102(v104, v101);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v198, 1, 1, v195);
  }

  else
  {
    v117 = v198;
    v118 = v107;
    DataFrame.subscript.getter(v215._countAndFlagsBits, _);
    v118(v105, v101);
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v195);
    v118(v194, v101);
  }

  v119 = _;
  v206 += *(v211 + 48);
  v120 = v181;
  (*(v218 + 16))(v181, v219, v216);
  v119;
  v121 = v214;
  v214;
  v122 = v224;
  AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(v192, v198, v215._countAndFlagsBits, v119, v121, v120);
  if (v122)
  {
    v119;
    v121;
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    v223(v215._object, v222);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v218 + 8))(v219, v216);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v206, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_7;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v206, &demangling cache variable for type metadata for DataFrame?);
  v123 = v213;
  AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(v217, v191, 0, 0);
  v224 = 0;
  if (!AnalyticsReporter.init()())
  {
    v131 = v217;
    v132 = v185;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, v185, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v133 = v132 + *(v211 + 48);
    v134 = DataFrame.shape.getter(v131);
    v223(v132, v222);
    v135 = v134;
    v123 = v213;
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_randomForestClassifier, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v135);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v133, &demangling cache variable for type metadata for DataFrame?);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_randomForestClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), *(*(v212 + 3) + 16));
  }

  v136 = v209;
  v137 = *(v209 + 6);
  v138 = v202;
  *(v202 + v137) = v215._countAndFlagsBits;
  *(v138 + v137 + 8) = _;
  v204 = v138 + v136[8];
  outlined init with copy of MLRandomForestClassifier.ModelParameters(v220, v204);
  *(v138 + v136[7]) = v214;
  v139 = v182;
  outlined init with copy of MLTrainingSessionParameters(v123, v182, type metadata accessor for AnyTreeClassifierModel);
  v140 = *(v184 + 80);
  v141 = ~*(v184 + 80) & (v140 + 16);
  v142 = swift_allocObject(&unk_392E08, v141 + v183, v140 | 7);
  outlined init with take of MLClassifierMetrics(v139, v142 + v141, type metadata accessor for AnyTreeClassifierModel);
  v143 = v224;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v142);
  if (v143)
  {

    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    v223(v215._object, v222);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v218 + 8))(v219, v216);
    outlined destroy of MLActivityClassifier.ModelParameters(v212, type metadata accessor for AnyTreeClassifier);
    v214;
    _;
LABEL_27:
    outlined destroy of MLRandomForestClassifier.ModelParameters(v204);
    goto LABEL_7;
  }

  v145 = v144;

  v146 = *(v209 + 5);
  v209 = v145;
  *(v138 + v146) = v145;
  outlined init with copy of MLTrainingSessionParameters(v213, v138, type metadata accessor for AnyTreeClassifierModel);
  v147 = v217;
  AnyTreeClassifierModel.applied(to:eventHandler:)(v217, 0, 0);
  v224 = 0;
  v148 = v138;
  v149 = *v138;
  v150 = v148[1];
  DataFrame.subscript.getter(v149, v150);
  v215._countAndFlagsBits = v149;
  v205 = v150;
  DataFrame.subscript.getter(v149, v150);
  v151 = v186;
  AnyClassificationMetrics.init(_:_:)(v207, v200);
  v152 = v147;
  v153 = v222;
  v223(v199, v222);
  v154 = v187;
  outlined init with take of MLClassifierMetrics(v151, v187, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v154, v196, 0);
  outlined assign with take of MLClassifierMetrics(v154, v203);
  v155 = v188;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v152, v188, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v156 = v155 + *(v211 + 48);
  if (__swift_getEnumTagSinglePayload(v156, 1, v153) == 1)
  {
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    v157 = v223;
    v223(v215._object, v153);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v218 + 8))(v219, v216);
    outlined destroy of MLActivityClassifier.ModelParameters(v212, type metadata accessor for AnyTreeClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v156, &demangling cache variable for type metadata for DataFrame?);
    return v157(v155, v153);
  }

  else
  {
    v158 = v201;
    (*(v210 + 32))(v201, v156, v153);
    v223(v155, v153);
    v159 = v224;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v158, 0, 0);
    v224 = v159;
    if (v159)
    {
      outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
      v160 = v223;
      v223(v215._object, v153);
      v160(v158, v153);
      v161 = v202;
      v162 = v217;
      outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifierModel);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v162, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v218 + 8))(v219, v216);
      outlined destroy of MLActivityClassifier.ModelParameters(v212, type metadata accessor for AnyTreeClassifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v161, type metadata accessor for AnyTreeClassifierModel);
      v214;
      _;

      goto LABEL_27;
    }

    countAndFlagsBits = v215._countAndFlagsBits;
    DataFrame.subscript.getter(v215._countAndFlagsBits, v205);
    v164 = v200;
    DataFrame.subscript.getter(countAndFlagsBits, v205);
    v165 = v189;
    AnyClassificationMetrics.init(_:_:)(v207, v164);
    v166 = v223;
    v223(v197, v153);
    outlined destroy of MLRandomForestClassifier.ModelParameters(v220);
    v166(v215._object, v153);
    v166(v201, v153);
    outlined destroy of MLActivityClassifier.ModelParameters(v213, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v217, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v218 + 8))(v219, v216);
    v167 = v190;
    outlined init with take of MLClassifierMetrics(v165, v190, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v167, v196, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v212, type metadata accessor for AnyTreeClassifier);
    return outlined assign with take of MLClassifierMetrics(v167, v208);
  }
}

uint64_t closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  v5;
  if (v1)
  {
    return (*(v6 + 8))();
  }

  *(v4 + 32) = a1;
  return swift_task_switch(closure #1 in MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v12 = *a1;
  v13 = v9;
  DataFrame.init(_:)(&v12);
  outlined init with copy of MLRandomForestClassifier.ModelParameters(a5, &v12);
  MLRandomForestClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v16, v15, v14, &v12);
  return outlined destroy of MLRandomForestClassifier.ModelParameters(a5);
}

uint64_t MLRandomForestClassifier.init(checkpoint:)(uint64_t a1)
{
  v77 = v2;
  v95 = a1;
  v3 = v1;
  v89 = v1;
  v88 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v88 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v87 = v76;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v86 = v76;
  v9 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v78 = v76;
  v96 = type metadata accessor for AnyTreeClassifier(0);
  v12 = *(*(v96 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v81 = v76;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v92 = v76;
  v85 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v17 = *(v85 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v82 = v76;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v84 = v76;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v79 = v76;
  v83 = v17;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v93 = v76;
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v91 = *(v90 - 8);
  v26 = *(v91 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = type metadata accessor for MLRandomForestClassifier(0);
  v94 = *(v29 + 36);
  v30 = v94 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v32 = *(v31 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v76);
  v33 = *(v31 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v76);
  (*(v91 + 8))(v76, v90);
  v34 = v89;
  *(v89 + v94) = 0;
  v35 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v90 = v30;
  swift_storeEnumTagMultiPayload(v30, v35, 1);
  v94 = v29;
  v36 = *(v29 + 40);
  v37 = v36 + v34;
  v80 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v38 = swift_allocError(&type metadata for MLCreateError, v80, 0, 0);
  *v39 = 0xD0000000000000C0;
  *(v39 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v39 + 16) = 0;
  *(v39 + 32) = 0;
  *(v39 + 48) = 0;
  *(v89 + v36) = v38;
  v40 = v95;
  v91 = v37;
  swift_storeEnumTagMultiPayload(v37, v35, 2);
  switch(*(v40 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v41 = 0x696C616974696E69;
      v42 = 0xEB0000000064657ALL;
      break;
    case 1:
      v41 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      v43 = v96;
      v44 = v92;
      goto LABEL_9;
    case 3:
      v41 = 0x697461756C617665;
LABEL_7:
      v42 = 0xEA0000000000676ELL;
      break;
    case 4:
      v42 = 0xEB00000000676E69;
      v41 = 0x636E657265666E69;
      break;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)(v41, v42, 0x676E696E69617274, 0xE800000000000000, 0);
  v42;
  v43 = v96;
  v44 = v92;
  if ((v45 & 1) == 0)
  {
    v55 = v80;
    swift_allocError(&type metadata for MLCreateError, v80, 0, 0);
    *v56 = 0xD00000000000004ELL;
    *(v56 + 8) = "sifier\n\nParameters\n" + 0x8000000000000000;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v55);
    v57 = type metadata accessor for MLCheckpoint;
    v58 = v95;
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
    outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLClassifierMetrics);
  }

LABEL_9:
  v46 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
  v47 = v78;
  BoostedTreeConfiguration.init()();
  AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v46, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v47);
  v48 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
  v49 = v79;
  v92 = v48;
  v50 = v77;
  UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v95, v43, v48);
  outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for AnyTreeClassifier);
  if (v50)
  {
    v51 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    BoostedTreeConfiguration.init()();
    v52 = v47;
    v53 = v81;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v51, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v52);
    v54 = v82;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v95, v96, v92);
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for AnyTreeClassifier);
    v50;
    v59 = v54;
  }

  else
  {
    v59 = v49;
  }

  v96 = 0;
  v60 = v93;
  outlined init with take of MLClassifierMetrics(v59, v93, type metadata accessor for AnyTreeClassifierModel);
  v61 = v84;
  outlined init with copy of MLTrainingSessionParameters(v60, v84, type metadata accessor for AnyTreeClassifierModel);
  v62 = *(v85 + 80);
  v63 = ~*(v85 + 80) & (v62 + 16);
  v64 = swift_allocObject(&unk_392E30, v63 + v83, v62 | 7);
  outlined init with take of MLClassifierMetrics(v61, v64 + v63, type metadata accessor for AnyTreeClassifierModel);
  v65 = v96;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLRandomForestClassifier.init(checkpoint:), v64);
  v67 = v66;

  if (v65)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v95, type metadata accessor for MLCheckpoint);
    v57 = type metadata accessor for AnyTreeClassifierModel;
    v58 = v93;
    goto LABEL_15;
  }

  v69 = v89;
  *(v89 + *(v94 + 20)) = v67;
  outlined init with copy of MLTrainingSessionParameters(v93, v69, type metadata accessor for AnyTreeClassifierModel);
  v70 = v86;
  *v86 = 0;
  *(v70 + 16) = 256;
  swift_storeEnumTagMultiPayload(v70, v88, 0);
  v71 = *(v94 + 32);
  v96 = v69 + v71;
  *(v69 + v71 + 16) = 0;
  *(v69 + v71) = 0;
  *(v69 + v71 + 32) = 6;
  *(v69 + v71 + 40) = 10;
  *(v69 + v71 + 48) = _mm_loadh_ps(&qword_33D880);
  *(v69 + v71 + 64) = 42;
  *(v69 + v71 + 72) = xmmword_33E240;
  v72 = v87;
  outlined init with copy of MLTrainingSessionParameters(v70, v87, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v76[3] = v88;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
  outlined init with take of MLClassifierMetrics(v72, boxed_opaque_existential_0, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v76, v96);
  outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  v74 = v94;
  v75 = *(v94 + 24);
  *(v69 + v75) = 0;
  *(v69 + v75 + 8) = 0xE000000000000000;
  outlined destroy of MLActivityClassifier.ModelParameters(v95, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v93, type metadata accessor for AnyTreeClassifierModel);
  result = *(v74 + 28);
  *(v69 + result) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t closure #1 in MLRandomForestClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v22 = a5;
  v23 = a4;
  v24 = a3;
  v25 = a2;
  v7 = type metadata accessor for DataFrame(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = *(a1 + 8);
  v19 = *a1;
  v20 = v12;
  outlined copy of Result<_DataTable, Error>(v19, v12);
  DataFrame.init(_:)(&v19);
  v13 = static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v7 = type metadata accessor for DataFrame(0);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 8);
  v14 = *a1;
  v15 = v11;
  outlined copy of Result<_DataTable, Error>(v14, v11);
  DataFrame.init(_:)(&v14);
  v12 = static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLRandomForestClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLRandomForestClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLRandomForestClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLRandomForestClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = v6;
  v65 = a6;
  v60 = a5;
  v62 = a4;
  v63 = a3;
  v56 = a2;
  v67 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v59 = v44;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v57 = v44;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v58 = v44;
  v15 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v61 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v68 = v44;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v64 = v44;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &v54, &demangling cache variable for type metadata for Any?);
  if (!v55)
  {
    BUG();
  }

  v26 = &v44[*(v61 + 48)];
  v66 = v44;
  outlined init with take of Any(&v54, &v45);
  v27 = v66;
  swift_dynamicCast(v44, &v45, &type metadata for Any + 8, v15, 7);
  v28 = v69;
  MLRandomForestClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v67);
  outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData);
  if (!v28)
  {
    v67 = 0;
    v29 = v64;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v64, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v61;
    v69 = v29 + *(v61 + 48);
    v31 = v27;
    v32 = v68;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v68, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLRandomForestClassifier.ModelParameters(v60, &v45);
    v62;
    v63;
    v34 = v58;
    BoostedTreeConfiguration.init()();
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.parallelTreeCount.setter(10);
    BoostedTreeConfiguration.maximumDepth.setter(v47);
    BoostedTreeConfiguration.maximumIterations.setter(v48);
    BoostedTreeConfiguration.minimumLossReduction.setter(v49);
    BoostedTreeConfiguration.minimumChildWeight.setter(v50);
    BoostedTreeConfiguration.randomSeed.setter(v51);
    BoostedTreeConfiguration.rowSubsample.setter(v52);
    BoostedTreeConfiguration.columnSubsample.setter(v53);
    outlined destroy of MLRandomForestClassifier.ModelParameters(&v45);
    v35 = v57;
    outlined init with copy of MLTrainingSessionParameters(v65, v57, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
    v36 = v67;
    v37 = TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v64, v33, v56, v63, v62, v34, v35);
    if (v36)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v38 = type metadata accessor for DataFrame(0);
      (*(*(v38 - 8) + 8))(v68, v38);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v69, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v39 = v37;
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 8))(v68, v40);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v69, &demangling cache variable for type metadata for DataFrame?);
      v46 = v27;
      v47 = &protocol witness table for TreeClassifierTrainingSessionDelegate;
      *&v45 = v39;
      v41 = v59;
      outlined init with copy of MLTrainingSessionParameters(v65, v59, type metadata accessor for MLTrainingSessionParameters);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>);
      swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v45, v41, 1);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v66, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLRandomForestClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 1);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLRandomForestClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_392E68, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLRandomForestClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLRandomForestClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[37] = a2;
  v2[36] = a1;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v2[38] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[39] = swift_task_alloc(v4);
  v2[40] = swift_task_alloc(v4);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[41] = swift_task_alloc(v5);
  v2[42] = swift_task_alloc(v5);
  v6 = type metadata accessor for MLClassifierMetrics(0);
  v2[43] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[44] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLRandomForestClassifier(0);
  v2[45] = v8;
  v2[46] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[47] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[48] = v10;
  v11 = *(v10 - 8);
  v2[49] = v11;
  v2[50] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[51] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[52] = v13;
  v2[53] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLRandomForestClassifier.init(delegate:), 0, 0);
}

uint64_t MLRandomForestClassifier.init(delegate:)()
{
  v1 = v0[52];
  v2 = v0[51];
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v0[37];
  swift_beginAccess(v3, v0 + 24, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[53];
  v5 = v0[52];
  v6 = v0[50];
  v18 = v0[49];
  v15 = v0[48];
  v16 = v0[47];
  v7 = v0[37];
  v14 = v0[44];
  outlined init with take of MLClassifierMetrics(v0[51], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLRandomForestClassifier.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, v0 + 27, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLRandomForestClassifier.ModelParameters((v0 + 2), (v0 + 13));
  v19;
  v9;
  v12 = swift_task_alloc(128);
  v0[54] = v12;
  *v12 = v0;
  v12[1] = MLRandomForestClassifier.init(delegate:);
  return MLRandomForestClassifier.init(_:targetColumn:featureColumns:parameters:)(v0[46], v0[44], v17, v19, v9, (v0 + 13));
}

{
  v2 = *(*v1 + 432);
  *(*v1 + 440) = v0;
  v2;
  if (v0)
  {
    v3 = MLRandomForestClassifier.init(delegate:);
  }

  else
  {
    v3 = MLRandomForestClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 296);
  outlined init with take of MLClassifierMetrics(*(v0 + 368), *(v0 + 288), type metadata accessor for MLRandomForestClassifier);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 240, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 424);
  v22 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 336);
  v29 = *(v0 + 328);
  v26 = *(v0 + 304);
  v24 = *(v0 + 288);
  v8 = *(v0 + 296);
  outlined destroy of MLRandomForestClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined init with take of MLClassifierMetrics(v7, v6, type metadata accessor for AnyClassificationMetrics);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v6, v9, 0);
  outlined assign with take of MLClassifierMetrics(v6, v24 + *(v22 + 36));
  v10 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, v0 + 264, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v29, &demangling cache variable for type metadata for AnyClassificationMetrics?);

  if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 328), &demangling cache variable for type metadata for AnyClassificationMetrics?);
  }

  else
  {
    v30 = *(v0 + 360);
    v11 = *(v0 + 320);
    v12 = *(v0 + 288);
    v27 = v9;
    v13 = *(v0 + 312);
    outlined init with take of MLClassifierMetrics(*(v0 + 328), v11, type metadata accessor for AnyClassificationMetrics);
    outlined init with take of MLClassifierMetrics(v11, v13, type metadata accessor for AnyClassificationMetrics);
    v14 = v12 + *(v30 + 40);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined init with take of MLClassifierMetrics(v13, v14, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v14, v27, 0);
  }

  v15 = *(v0 + 408);
  v16 = *(v0 + 400);
  v17 = *(v0 + 376);
  v18 = *(v0 + 368);
  v20 = *(v0 + 352);
  v25 = *(v0 + 344);
  v23 = *(v0 + 336);
  v21 = *(v0 + 328);
  v28 = *(v0 + 312);
  v31 = *(v0 + 320);
  *(v0 + 424);
  v15;
  v16;
  v17;
  v18;
  v20;
  v25;
  v23;
  v21;
  v31;
  v28;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 424);
  v2 = *(v0 + 408);
  v3 = *(v0 + 400);
  v14 = *(v0 + 376);
  v13 = *(v0 + 368);
  v12 = *(v0 + 352);
  v11 = *(v0 + 344);
  v10 = *(v0 + 336);
  v9 = *(v0 + 328);
  v8 = *(v0 + 320);
  v4 = *(v0 + 296);
  v7 = *(v0 + 312);

  outlined destroy of MLRandomForestClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v14;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  v7;
  v5 = *(v0 + 440);
  return (*(v0 + 8))();
}