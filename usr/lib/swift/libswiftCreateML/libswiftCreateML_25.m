unint64_t specialized _NativeDictionary._unsafeInsertNew(key:value:)(Swift::UInt a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  Hasher.init(_seed:)(*(a5 + 40));
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v11, a1);
  }

  v7 = Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)(~(-1 << *(a5 + 32)) & v7, a5 + 64);
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v9 = *(a5 + 48);
  v10 = 24 * result;
  *(v9 + v10) = a1;
  *(v9 + v10 + 8) = a2;
  *(v9 + v10 + 16) = a3 & 1;
  *(*(a5 + 56) + 8 * result) = v12;
  ++*(a5 + 16);
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t *a1, int a2, uint64_t *a3)
{
  v4 = v3;
  v60 = a3;
  v67 = a2;
  v5 = *a1;
  v48 = a1[1];
  v6 = a1[2];
  v49 = a1[3];
  v7 = a1[4];
  v50 = a1[5];
  v59 = a1[6];
  v5;
  v54 = v6;
  v6;
  v55 = v7;
  v7;
  v59;
  v8 = 0;
  v58 = v5;
  while (1)
  {
    if (v8 == CMLDictionary.size.getter())
    {
LABEL_17:
      v59, 2;
      v55, 2;
      v54, 2;
      return v58, 2;
    }

    v9 = CMLDictionary.keyAndValue(at:)(v8);
    v66 = v4;
    if (v4)
    {
      swift_unexpectedError(v66, "CreateML/DictionaryType.swift", 29, 1, 75);
      BUG();
    }

    v11 = v9;
    v12 = v10;
    v8 = specialized RandomAccessCollection<>.index(after:)(v8, CMLDictionary.size.getter);
    v51[0] = v11;
    v51[1] = v12;
    v48(v51);
    v12;
    v11;
    v61 = v45[0];
    v62 = v45[1];
    v63 = v46;
    LOBYTE(v64) = v47;
    if ((v49(&v61) & 1) == 0)
    {
      outlined consume of (MLDataValue, MLDataValue)?(v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);
      goto LABEL_6;
    }

    v50(&v61);
    outlined consume of (MLDataValue, MLDataValue)?(v61, *(&v61 + 1), v62, *(&v62 + 1), v63, v64);
    if (v41 == 0xFF)
    {
      goto LABEL_17;
    }

    v61 = v40;
    LOBYTE(v62) = v41;
    v53 = v42;
    v52 = v43;
    v68 = v44;
    v13 = *v60;
    v56 = *(&v40 + 1);
    v57 = v40;
    v65 = v41;
    v15 = (specialized __RawDictionaryStorage.find<A>(_:))();
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(*(v13 + 16), v16);
    v18 = *(v13 + 16) + v16;
    if (v17)
    {
      BUG();
    }

    v19 = v14;
    if (*(v13 + 24) >= v18)
    {
      if ((v67 & 1) == 0)
      {
        LOBYTE(v67) = v14;
        v31 = v15;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLDataValue, MLDataValue>);
        _NativeDictionary.copy()();
        v15 = v31;
        v19 = v67;
      }
    }

    else
    {
      v20 = v60;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, v67);
      v21 = *v20;
      v22 = v56;
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v56, v65);
      LOBYTE(v24) = v24 & 1;
      if ((v19 & 1) != v24)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v22, v24, v23, v15);
        BUG();
      }
    }

    if (v19)
    {
      break;
    }

    v25 = *v60;
    v25[(v15 >> 6) + 8] |= 1 << v15;
    v26 = v25[6];
    v27 = 24 * v15;
    *(v26 + v27) = v57;
    *(v26 + v27 + 8) = v56;
    *(v26 + v27 + 16) = v41;
    v28 = v25[7];
    *(v28 + v27) = v53;
    *(v28 + v27 + 8) = v52;
    *(v28 + v27 + 16) = v68;
    v29 = v25[2];
    v17 = __OFADD__(1, v29);
    v30 = v29 + 1;
    if (v17)
    {
      BUG();
    }

    v25[2] = v30;
    LOBYTE(v25) = 1;
    v67 = v25;
LABEL_6:
    v4 = v66;
  }

  v33 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v51[0] = v33;
  v66 = v33;
  swift_errorRetain(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v51, v34, &type metadata for _MergeError, 0))
  {
    *&v45[0] = 0;
    *(&v45[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v39._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v39._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v39);
    _print_unlocked<A, B>(_:_:)(&v61, v45, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, *&v45[0], *(&v45[0] + 1), "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v35 = v59;
  v59;
  v36 = v55;
  v55;
  v37 = v54;
  v54;
  v38 = v58;
  v58;
  outlined consume of MLDataValue(v53, v52, v68);
  outlined consume of MLDataValue(v57, v56, v65);
  v35;
  v36;
  v37;
  v38;
  return v51[0];
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 == 255)
  {
    BUG();
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v5 = *(a1 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  *v1 = *a1;
  *(v1 + 8) = v7;
  *(v1 + 16) = v2;
  *(v1 + 24) = v5;
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  outlined copy of MLDataValue(v6, v7, v2);
  return outlined copy of MLDataValue(v5, v4, v3);
}

BOOL specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:)(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(v5 + 9) = *(a1 + 25);
  v5[0] = v2;
  v4 = v1;
  return specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:)(&v4);
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(__int128 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  *(v5 + 9) = *(a1 + 25);
  v5[0] = v2;
  v4 = v1;
  return specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)(&v4);
}

uint64_t lazy protocol witness table accessor for type MLDataTable.Row and conformance MLDataTable.Row()
{
  result = lazy protocol witness table cache variable for type MLDataTable.Row and conformance MLDataTable.Row;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row and conformance MLDataTable.Row)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row, &type metadata for MLDataTable.Row);
    lazy protocol witness table cache variable for type MLDataTable.Row and conformance MLDataTable.Row = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values()
{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values;
  if (!lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLDataTable.Row.Values, &type metadata for MLDataTable.Row.Values);
    lazy protocol witness table cache variable for type MLDataTable.Row.Values and conformance MLDataTable.Row.Values = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<MLDataTable.Row.Values> and conformance <> Slice<A>(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Slice<MLDataTable.Row.Values>);
    a2();
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLDataTable.Row(uint64_t *a1, uint64_t *a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataTable.Row(a1, a2);
}

{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  a1[2] = v5;
  v3;
  v4;
  v5;
  return a1;
}

uint64_t destroy for MLDataTable.Row(void *a1, uint64_t a2)
{
  *a1;
  a1[1], a2;
  return a1[2];
}

uint64_t *assignWithCopy for MLDataTable.Row(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6, a2;
  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v7;
  v8;
  return a1;
}

void *assignWithTake for MLDataTable.Row(void *a1, uint64_t a2)
{
  *a1;
  v3 = a1[1];
  *a1 = *a2;
  v3, a2;
  v4 = a1[2];
  a1[2] = *(a2 + 16);
  v4;
  return a1;
}

void outlined consume of (MLDataValue, MLDataValue)?(void *a1, void *a2, char a3, void *a4, void *a5, char a6)
{
  if (a3 != -1)
  {
    outlined consume of MLDataValue(a1, a2, a3);
    outlined consume of MLDataValue(a4, a5, a6);
  }
}

uint64_t MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  *(v4 + 80) = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 88) = *a2;
  *(v4 + 25) = *(a2 + 8);
  *(v4 + 96) = *a3;
  *(v4 + 26) = *(a3 + 8);
  return swift_task_switch(MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:), 0, 0);
}

uint64_t MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(double a1)
{
  v33 = *(v1 + 26);
  v24 = *(v1 + 96);
  v32 = *(v1 + 25);
  v27 = *(v1 + 88);
  v2 = *(v1 + 80);
  v3 = *(v1 + 72);
  v29 = *(v1 + 64);
  v28 = *(v1 + 56);
  v26 = *(v1 + 48);
  v4 = objc_allocWithZone(MLModel);
  v26[2] = [v4 init];
  v30 = type metadata accessor for MLHandActionClassifier(0);
  v5 = (v26 + v30[8]);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v6 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v7 = *(v6 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v2);
  v8 = *(v6 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v2);
  v25 = *(v3 + 8);
  v25(v2, v29);
  *v5 = 0;
  v31 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v5, v31, 1);
  v9 = (v26 + v30[9]);
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v10 = *(v6 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v2);
  v11 = *(v6 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v2);
  v25(v2, v29);
  *v9 = 0;
  swift_storeEnumTagMultiPayload(v9, v31, 1);
  outlined init with copy of MLTrainingSessionParameters(v28, v26 + v30[7], type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined copy of Result<_DataTable, Error>(v27, v32);
  v12._countAndFlagsBits = 0x6C6562616CLL;
  v12._object = 0xE500000000000000;
  specialized MLDataTable.subscript.getter(v12, v27, v32);
  outlined consume of Result<_DataTable, Error>(v27, v32);
  specialized MLDataColumn.dropDuplicates()(v20, v21);
  outlined consume of Result<_DataTable, Error>(v20, v21);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v22, v23, a1);
  *v26 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v14 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v1 + 104) = v14;
  v15 = *(v28 + *(v14 + 28));
  *(v1 + 112) = v15;
  v16 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v26[1] = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5, 0, 21, 3, v15);
  *(v1 + 16) = v27;
  *(v1 + 24) = v32;
  *(v1 + 32) = v24;
  *(v1 + 40) = v33;
  v17 = swift_task_alloc(304);
  *(v1 + 120) = v17;
  *v17 = v1;
  v17[1] = MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  v18 = *(v1 + 48);
  return MLHandActionClassifier.runTrainingLoop(trainingData:validationData:loadPretrain:)(v1 + 16, v1 + 32, 1);
}

uint64_t MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(v5 + 128) = v0;
  v2;
  outlined consume of MLDataTable?(*(v5 + 32), *(v5 + 40));
  if (v0)
  {
    v3 = MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  else
  {
    v3 = MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = AnalyticsReporter.init()();
  v2 = *(v0 + 25);
  v3 = *(v0 + 88);
  if (v1)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined consume of Result<_DataTable, Error>(v3, v2);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v3, v2);
    v14 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v3, v2 & 1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(("nClassifier.swift" + 0x8000000000000000), 0xD000000000000010), v14);
    v4._countAndFlagsBits = 0x6C6562616CLL;
    v4._object = 0xE500000000000000;
    MLDataTable.subscript.getter(v4);
    outlined consume of Result<_DataTable, Error>(v3, v2 & 1);
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v10, v11);
    if (v13)
    {
      outlined consume of Result<_DataTable, Error>(v12, 1);
      v5 = -1.0;
    }

    else
    {
      v6 = *(v12 + 16);

      LODWORD(v6) = CMLColumn.size.getter();
      outlined consume of Result<_DataTable, Error>(v12, 0);
      outlined consume of Result<_DataTable, Error>(v12, 0);
      v5 = v6;
    }

    v7 = *(v0 + 56);
    v8 = *(v0 + 104);
    v15 = *(v0 + 112);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), v5);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(v7 + *(v8 + 24)));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(("Number of Labels" + 0x8000000000000000), 0xD000000000000016), v15);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_handActionClassifier, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), *(v7 + *(v8 + 20)));
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  *(v0 + 80);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 25);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 56), type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined consume of Result<_DataTable, Error>(v1, v4);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLHandActionClassifier);
  v2;
  v5 = *(v0 + 128);
  return (*(v0 + 8))();
}

uint64_t MLHandActionClassifier.evaluation(on:parameters:)(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v42 = v5;
  v32 = a2;
  v39 = v4;
  v33 = type metadata accessor for LearningPhase(0);
  v34 = *(v33 - 8);
  v7 = *(v34 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v35 = &v29;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v40 = &v29;
  v15 = *(a1 + 8);
  v29 = *a1;
  v30 = v15;
  v31 = v6;
  v16 = *v6;
  v17 = v42;
  v18 = static MLHandActionClassifier.makeLabeledKeypointsSequenceFeatures(from:classLabels:)(&v29, v16, a3);
  if (v17)
  {
    goto LABEL_4;
  }

  v41 = v10;
  v42 = v11;
  v38 = v16;
  v37 = *(v16 + 16);
  v19 = v18;
  v20 = v35;
  v21 = v33;
  v36 = 0;
  v22 = v34;
  (*(v34 + 104))(v35, enum case for LearningPhase.inference(_:), v33);
  _s8CreateML22MLHandActionClassifierV11makeDataset4from16classLabelsCount10parameters13learningPhase14NeuralNetworks0G0VySaySi5label_So12MLMultiArrayC9keypointstGAI10DataSampleVyAI6TensorVATGGx_SiAC15ModelParametersVAI08LearningN0OtSkRzSiAL_AnOt7ElementRtzlFZAP_Tt4g5(v19, v37, v32, v20);
  (*(v22 + 8))(v20, v21);
  v19;
  v23 = v31[1];
  v24 = v40;
  v17 = v36;
  v25 = MLHandActionClassifier.GraphCNN.evaluate(_:)(v40);
  if (v17)
  {
    (*(v42 + 8))(v24, v41);
LABEL_4:
    v26 = v39;
    *v39 = v17;
    v27 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v26, v27, 2);
  }

  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(a3, a4, v25, v38, 0);
  (*(v42 + 8))(v24, v41);
}

uint64_t MLHandActionClassifier.write(to:metadata:)(uint64_t a1, const void *a2, double a3, double a4)
{
  v23 = v4;
  v6 = type metadata accessor for URL(0);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v22 = &v19;
  v25 = v5;
  MLHandActionClassifier.addHandActionClassifierSpecificMetadata(_:)(a2);
  v24 = a1;
  v10 = URL.pathExtension.getter();
  v12 = v11;
  if (v10 ^ 0x67616B6361706C6DLL | v11 ^ 0xE900000000000065)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)(v10, v11, 0x67616B6361706C6DLL, 0xE900000000000065, 0);
    v12;
    if ((v13 & 1) == 0)
    {
      qmemcpy(v20, v21, sizeof(v20));
      MLHandActionClassifier.writeLegacyModel(to:metadata:)(v24, v20);
      return outlined release of MLModelMetadata?(v21, outlined consume of MLModelMetadata?);
    }
  }

  else
  {
    v11;
  }

  v14 = v22;
  v15 = v23;
  static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v24, 0xD000000000000014, ("HandPoseClassifier" + 0x8000000000000000), 0x67616B6361706C6DLL, 0xE900000000000065);
  if (!v15)
  {
    v16 = v14;
    v17 = *(v25 + 8);
    qmemcpy(v20, v21, sizeof(v20));
    MLHandActionClassifier.GraphCNN.writeMLPackage(to:metadata:)(v16, v20, a3, a4);
    (*(v26 + 8))(v16, v6);
  }

  return outlined release of MLModelMetadata?(v21, outlined consume of MLModelMetadata?);
}

uint64_t static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = v3;
  v5 = *(a1 + 8);
  v40 = *a1;
  v41 = v5;
  v38 = a2;
  v6._countAndFlagsBits = a2;
  *&v36 = a3;
  v6._object = a3;
  MLDataTable.subscript.getter(v6);
  if (LOBYTE(v39._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 1);
  }

  else
  {

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
    outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
    if (v40 == 3)
    {
      v7 = *(a1 + 8);
      v39._countAndFlagsBits = *a1;
      LOBYTE(v39._object) = v7;
      v8._countAndFlagsBits = v38;
      v8._object = v36;
      MLDataTable.subscript.getter(v8);
      specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:), 0, v40, v41);
      outlined consume of Result<_DataTable, Error>(v40, v41);
      countAndFlagsBits = v39._countAndFlagsBits;
      LOBYTE(v42) = v39._object;
      v9 = *(a1 + 8);
      v40 = *a1;
      v41 = v9;
      v8._countAndFlagsBits = v38;
      v8._object = v36;
      MLDataTable.subscript.getter(v8);
      v10 = -1;
      v35 = -1;
      if (!LOBYTE(v39._object))
      {
        v11 = *(v39._countAndFlagsBits + 16);

        v10 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, 0);
      }

      outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, v39._object);
      v42 = v42;
      specialized MLDataColumn.dropMissing()(countAndFlagsBits, v42);
      if (!v41)
      {
        v34 = v10;
        v12 = *(v40 + 16);
        outlined copy of Result<_DataTable, Error>(v40, 0);
        v10 = v34;
        v35 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v40, 0);
      }

      outlined consume of Result<_DataTable, Error>(v40, v41);
      v13 = __OFSUB__(v10, v35);
      v14 = v10 - v35;
      if (v13)
      {
        BUG();
      }

      if (v14)
      {
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        _StringGuts.grow(_:)(236);
        v15._object = "validation_confusion" + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v15);
        v16 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v18 = v17;
        v15._countAndFlagsBits = v16;
        v15._object = v17;
        String.append(_:)(v15);
        v18;
        v15._object = "mn into MLMultiArray format. " + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000006BLL;
        String.append(_:)(v15);
        v19 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v21 = v20;
        v15._countAndFlagsBits = v19;
        v15._object = v20;
        String.append(_:)(v15);
        v21;
        v15._object = 0xE200000000000000;
        v15._countAndFlagsBits = 8236;
        String.append(_:)(v15);
        v40 = 21;
        v22 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v24 = v23;
        v15._countAndFlagsBits = v22;
        v15._object = v23;
        String.append(_:)(v15);
        v24;
        v15._object = "ld have a dimension of [1, " + 0x8000000000000000;
        v15._countAndFlagsBits = 0xD00000000000003CLL;
        String.append(_:)(v15);
        v15._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v15._object, 0, 0);
        *v25 = v39;
        *(v25 + 16) = 0;
        *(v25 + 32) = 0;
        *(v25 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v15._object);
        return outlined consume of Result<_DataTable, Error>(countAndFlagsBits, v42);
      }

      v36;
      specialized MLDataTable.subscript.setter(countAndFlagsBits, v42, v38, v36);
    }
  }

  v28 = *(a1 + 8);
  v39._countAndFlagsBits = *a1;
  v27 = v39._countAndFlagsBits;
  LOBYTE(v39._object) = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v29, v32);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v38;
  v31 = v36;
  inited[5] = v36;
  LOBYTE(v40) = 5;
  v31;
  outlined copy of Result<_DataTable, Error>(v27, v28);
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v39, inited, &v40);
  outlined consume of Result<_DataTable, Error>(v39._countAndFlagsBits, v39._object);
  swift_setDeallocating(inited);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t static MLHandActionClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLHandActionClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLHandActionClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 28), v2, type metadata accessor for MLHandActionClassifier.ModelParameters);
}

uint64_t MLHandActionClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 32), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandActionClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLHandActionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLHandActionClassifier.Prediction.frameRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MLHandActionClassifier.Prediction.results.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16), a2;
  *(v2 + 16) = a1;
  return result;
}

uint64_t MLHandActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v92 = v4;
  v91 = a2;
  v83 = a1;
  v5 = v3;
  v89 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v73 = *(v89 - 8);
  v72 = *(v73 + 64);
  v6 = alloca(v72);
  v7 = alloca(v72);
  v77 = &v71;
  v8 = type metadata accessor for MLHandActionClassifier(0);
  v9 = *(v8 - 8);
  v10 = v8;
  v87 = v8;
  v11 = *(v9 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v71 = &v71;
  v74 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v14 = *(*(v74 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v82 = &v71;
  v17 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v75 = &v71;
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v80 = *(v90 - 8);
  v20 = *(v80 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  *v5 = _swiftEmptyArrayStorage;
  v23 = objc_allocWithZone(MLModel);
  v24 = [v23 init];
  v76 = v5;
  v84 = v24;
  v5[2] = v24;
  v25 = *(v10 + 32);
  v26 = v5 + v25;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  *&v27 = COERCE_DOUBLE(type metadata accessor for MLClassifierMetrics.Precomputed(0));
  v88 = *&v27;
  v28 = *(v27 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v71);
  v29 = *(v27 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v71);
  v85 = *(v80 + 8);
  v85(&v71, v90);
  v30 = v76;
  *(v76 + v25) = 0;
  v86 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v80 = v26;
  swift_storeEnumTagMultiPayload(v26, v86, 1);
  v31 = *(v87 + 36);
  v32 = v30 + v31;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v33 = v88;
  v34 = *(*&v88 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v71);
  v35 = *(*&v33 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v71);
  v36 = v83;
  v85(&v71, v90);
  *(v76 + v31) = 0;
  v90 = v32;
  v37 = v91;
  swift_storeEnumTagMultiPayload(v32, v86, 1);
  v38 = v92;
  MLHandActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(&v93, &v78, a3);
  if (v38)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLHandActionClassifier.DataSource);
LABEL_10:

    v48 = v90;
LABEL_11:
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLClassifierMetrics);
  }

  v92 = 0;
  v39 = v93;
  v87 = v78;
  LOBYTE(v85) = v79;
  v40 = v94;
  v86 = v93;
  if (v94 == 0xFF)
  {
    LODWORD(v88) = v94;
    v44 = v92;
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    v42 = v44;
  }

  else
  {
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v78 = v39;
    v79 = v40 & 1;
    v88 = *(v91 + *(v89 + 40));
    outlined copy of Result<_DataTable, Error>(v39, v40);
    v41 = v92;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(&v78, 0, v88);
    v42 = v41;
    if (v41)
    {
      outlined consume of MLDataTable?(v87, v85);
      v43 = v86;
      outlined consume of MLDataTable?(v86, v40);
      outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLHandActionClassifier.ModelParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v83, type metadata accessor for MLHandActionClassifier.DataSource);
      outlined consume of MLDataTable?(v43, v40);
      goto LABEL_10;
    }

    LODWORD(v88) = v40;
    outlined consume of MLDataTable?(v86, v40);
  }

  v95 = v94;
  v45 = v85;
  v81 = v93;
  if (v85 == 0xFF)
  {
    v47 = v91;
    v50 = v82;
    outlined init with copy of MLTrainingSessionParameters(v91, v82, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    if (swift_getEnumCaseMultiPayload(v50, v74) == 1)
    {
      v51 = v75;
      outlined init with take of MLClassifierMetrics(v50, v75, type metadata accessor for MLHandActionClassifier.DataSource);
      MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
      v92 = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLHandActionClassifier.DataSource);
      v58 = v93;
      v89 = v93;
      LOBYTE(v58) = v94;
      v82 = v58;
      v47 = v91;
    }

    else
    {
      v92 = v42;
      outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v54 = empty;
      v82 = 0;
      v55 = type metadata accessor for CMLTable();
      v56 = swift_allocObject(v55, 24, 7);
      *(v56 + 16) = v54;
      v57 = type metadata accessor for _DataTable();
      swift_allocObject(v57, 40, 7);
      v89 = _DataTable.init(impl:)(v56);
    }
  }

  else
  {
    v46 = v87;
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v78 = v46;
    v79 = v45 & 1;
    v47 = v91;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(&v78, 0, *(v91 + *(v89 + 40)));
    v92 = 0;
    v52 = v93;
    v89 = v93;
    LOBYTE(v52) = v94;
    v82 = v52;
  }

  v59 = v77;
  outlined init with copy of MLTrainingSessionParameters(v47, v77, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v60 = *(v73 + 80);
  v61 = ~*(v73 + 80) & (v60 + 41);
  v62 = v59;
  v63 = swift_allocObject(&unk_3929F8, v61 + v72, v60 | 7);
  v64 = v81;
  *(v63 + 16) = v81;
  v65 = v95;
  *(v63 + 24) = v95 & 1;
  *(v63 + 32) = v89;
  *(v63 + 40) = v82 & 1;
  outlined init with take of MLClassifierMetrics(v62, v63 + v61, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v66 = v64;
  v67 = v65;
  outlined copy of Result<_DataTable, Error>(v66, v65);
  v68 = v82;
  outlined copy of Result<_DataTable, Error>(v89, v82);
  v69 = v71;
  v70 = v92;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandActionClassifier.init(trainingData:parameters:), v63);
  v92 = v70;
  if (v70)
  {

    outlined consume of MLDataTable?(v87, v85);
    outlined consume of MLDataTable?(v86, SLOBYTE(v88));
    outlined consume of Result<_DataTable, Error>(v89, v68);
    outlined consume of Result<_DataTable, Error>(v81, v67);
    outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLHandActionClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v83, type metadata accessor for MLHandActionClassifier.DataSource);

    v48 = v90;
    goto LABEL_11;
  }

  outlined consume of MLDataTable?(v87, v85);
  outlined consume of MLDataTable?(v86, SLOBYTE(v88));
  outlined consume of Result<_DataTable, Error>(v89, v68);
  outlined consume of Result<_DataTable, Error>(v81, v67);
  outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLHandActionClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v83, type metadata accessor for MLHandActionClassifier.DataSource);

  outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLClassifierMetrics);
  return outlined init with take of MLClassifierMetrics(v69, v76, type metadata accessor for MLHandActionClassifier);
}

uint64_t closure #1 in MLHandActionClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a6;
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 25) = a3;
  *(v6 + 56) = a2;
  *(v6 + 48) = a1;
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined copy of Result<_DataTable, Error>(a2, a3);
  outlined copy of Result<_DataTable, Error>(a4, a5);
  return swift_task_switch(closure #1 in MLHandActionClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLHandActionClassifier.init(trainingData:parameters:)()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 72);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v3 & 1;
  *(v0 + 32) = v5;
  *(v0 + 40) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v6 = swift_task_alloc(144);
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLHandPoseClassifier.init(trainingData:parameters:);
  return MLHandActionClassifier.init(trainingFeatures:validationFeatures:parameters:)(*(v0 + 48), v0 + 16, v0 + 32, *(v0 + 80));
}

uint64_t MLHandActionClassifier.init(model:parameters:metricsAttributes:classLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v59 = a4;
  v53 = a3;
  v8 = v6;
  v56 = a2;
  v47 = v7;
  v57 = a1;
  v9 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v51 = &v43;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v48 = &v43;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v60 = *(v55 - 8);
  v14 = *(v60 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = objc_allocWithZone(MLModel);
  v18 = [v17 init];
  v50 = v8;
  v8[2] = v18;
  v58 = type metadata accessor for MLHandActionClassifier(0);
  v19 = v58[8];
  v20 = v8 + v19;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v46 = v21;
  v22 = *(v21 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v43);
  v23 = *(v21 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v43);
  v60 = *(v60 + 8);
  (v60)(&v43, v55);
  v24 = v50;
  *(v50 + v19) = 0;
  v54 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v49 = v20;
  swift_storeEnumTagMultiPayload(v20, v54, 1);
  v25 = v58[9];
  v26 = v24 + v25;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v27 = v46;
  v28 = *(v46 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v43);
  v29 = *(v27 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v43);
  v30 = v50;
  (v60)(&v43, v55);
  *(v30 + v25) = 0;
  v31 = v59;
  v55 = v26;
  swift_storeEnumTagMultiPayload(v26, v54, 1);
  v30[1] = v57;
  outlined init with copy of MLTrainingSessionParameters(v56, v30 + v58[7], type metadata accessor for MLHandActionClassifier.ModelParameters);
  *v30 = v31;

  v31;
  v32 = v53;
  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v53);
  if (!v45)
  {
    v31;
    v32;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for Any?);
LABEL_7:
    v37 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v37, 0, 0);
    *v38 = 0xD00000000000002CLL;
    *(v38 + 8) = "training_confusion" + 0x8000000000000000;
    *(v38 + 16) = 0;
    *(v38 + 32) = 0;
    *(v38 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v37);

    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLHandActionClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLHandActionClassifier);
  }

  v33 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  if (!swift_dynamicCast(&v52, v44, &type metadata for Any + 8, v33, 6))
  {
    v59;
    v32;
    goto LABEL_7;
  }

  v54 = v33;
  v34 = v48;
  v60 = v52;
  v35 = v59;
  v36 = v47;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(a5, a6, v52, v59, 0);
  v58 = v36;
  if (v36)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLHandActionClassifier.ModelParameters);

    v53;
    v35;

    return outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLHandActionClassifier);
  }

  outlined assign with take of MLClassifierMetrics(v34, v49);
  v40 = v53;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v53);
  v40;
  if (!v45)
  {

    v59;

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for Any?);
    return outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  if (!swift_dynamicCast(&v52, v44, &type metadata for Any + 8, v54, 6))
  {

    v59;

    return outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLHandActionClassifier.ModelParameters);
  }

  v41 = v59;
  v42 = v58;
  static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(a5, a6, v52, v59, 0);
  outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLHandActionClassifier.ModelParameters);

  v41;

  if (v42)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLHandActionClassifier);
  }

  return outlined assign with take of MLClassifierMetrics(v51, v55);
}

void *MLHandActionClassifier.init(checkpoint:)(uint64_t a1, __m128 a2)
{
  v85._countAndFlagsBits = v3;
  v74 = a1;
  v4 = v2;
  v71 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v5 = *(*(v71 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v84 = &v66;
  v72 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v8 = *(*(v72 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v81 = &v66;
  v75 = type metadata accessor for URL(0);
  v80 = *(v75 - 8);
  v11 = *(v80 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v76 = &v66;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v78 = &v66;
  v86 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v82 = *(v86 - 8);
  v16 = *(v82 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v85._object = v4;
  *v4 = _swiftEmptyArrayStorage;
  v19 = objc_allocWithZone(MLModel);
  v79 = [v19 init];
  v20 = type metadata accessor for MLHandActionClassifier(0);
  v83 = *(v20 + 32);
  v21 = v4 + v83;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v22 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v77 = v22;
  v23 = *(v22 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v66);
  v24 = *(v22 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v66);
  v82 = *(v82 + 8);
  (v82)(&v66, v86);
  object = v85._object;
  *(v85._object + v83) = 0;
  v83 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v70 = v21;
  swift_storeEnumTagMultiPayload(v21, v83, 1);
  v73 = v20;
  v26 = *(v20 + 36);
  v27 = object + v26;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v28 = v77;
  v29 = *(v77 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v66);
  v30 = *(v28 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v66);
  (v82)(&v66, v86);
  *(v85._object + v26) = 0;
  v82 = v27;
  v31 = v27;
  v32 = v78;
  v33 = v74;
  swift_storeEnumTagMultiPayload(v31, v83, 1);
  URL.deletingLastPathComponent()();
  v34 = v75;
  v35 = v76;
  (*(v80 + 16))(v76, v32, v75);
  countAndFlagsBits = v85._countAndFlagsBits;
  MLHandActionClassifier.PersistentParameters.init(sessionDirectory:)(v35);
  v86 = countAndFlagsBits;
  if (countAndFlagsBits)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLCheckpoint);
    (*(v80 + 8))(v32, v34);
LABEL_3:

    goto LABEL_12;
  }

  v37 = v34;
  v38 = v81;
  v39 = v84;
  outlined init with copy of MLTrainingSessionParameters(v81, v84, type metadata accessor for MLHandActionClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(v39, v71) == 3)
  {
    v40 = *(v39 + 8);
    v41 = *v39;
    v42 = *(v39 + 24);
    v85._countAndFlagsBits = *(v39 + 32);
    v43 = *(v39 + 40);
    v44 = *(v39 + 56);
    v42;
    v44;
    outlined copy of Result<_DataTable, Error>(v41, v40);
    v45._countAndFlagsBits = v85._countAndFlagsBits;
    v45._object = v43;
    specialized MLDataTable.subscript.getter(v45, v41, v40);
    v43;
    outlined consume of Result<_DataTable, Error>(v41, v40);
    v46 = v66;
    LOBYTE(v44) = v67;
    specialized MLDataColumn.dropDuplicates()(v66, v67);
    outlined consume of Result<_DataTable, Error>(v46, v44);
    v85._countAndFlagsBits = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v68, v69, *a2.i64);
    outlined consume of Result<_DataTable, Error>(v41, v40);
    v47 = v85._object;
  }

  else
  {
    v48 = v86;
    v49 = static _VideoUtilities.videoURLsPerClass(from:)(v38, a2);
    v86 = v48;
    v47 = v85._object;
    if (v48)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v74, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      (*(v80 + 8))(v78, v37);
      outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLHandActionClassifier.DataSource);
      goto LABEL_3;
    }

    v50 = v49;
    v85._countAndFlagsBits = specialized _copyCollectionToContiguousArray<A>(_:)(v49);
    v50;
    outlined destroy of MLActivityClassifier.ModelParameters(v84, type metadata accessor for MLHandActionClassifier.DataSource);
  }

  v51 = v47 + *(v73 + 28);
  v52 = v72;
  v53 = v81;
  outlined init with copy of MLTrainingSessionParameters(v81 + *(v72 + 20), v51, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v76 = *(v53 + v52[6]);
  v83 = *(v53 + v52[7]);
  v54 = *(v53 + v52[8]);
  v77 = *(v53 + v52[10]);
  v84 = *(v53 + v52[9]);
  v55 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v55[5] + v51) = v76;
  *(v55[6] + v51) = v83;
  *(v55[7] + v51) = v54;
  *(v55[8] + v51) = v77;
  *(v55[10] + v51) = v84;
  v56 = type metadata accessor for MLHandActionClassifier.GraphCNN(0);
  swift_allocObject(v56, *(v56 + 48), *(v56 + 52));
  v57 = MLHandActionClassifier.GraphCNN.init(classLabels:export:numOfKeypoints:numOfKeypointsChannels:windowSize:)(v85._countAndFlagsBits, 0, 21, 3, v54);
  v58 = v74;
  v59 = v86;
  MLHandActionClassifier.GraphCNN.updateGraphCNN(from:)(v74);
  if (!v59)
  {

    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLHandActionClassifier.init(checkpoint:), v57);
    v86 = 0;
    v62 = v80;
    v64 = v63;

    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    (*(v62 + 8))(v78, v75);

    result = v85._object;
    *(v85._object + 2) = v64;
    result[1] = v57;
    return result;
  }

  v86 = v59;
  v60 = v85._object;
  v61 = v80;

  outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  (*(v61 + 8))(v78, v75);

  outlined destroy of MLActivityClassifier.ModelParameters(v60 + *(v73 + 28), type metadata accessor for MLHandActionClassifier.ModelParameters);
LABEL_12:
  outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v82, type metadata accessor for MLClassifierMetrics);
}

uint64_t closure #1 in MLHandActionClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(80);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return MLHandActionClassifier.GraphCNN.compile()();
}

void *static MLHandActionClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandActionClassifier>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

uint64_t static MLHandActionClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = v3;
  v26 = a2;
  v24 = a1;
  v5 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v21;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  outlined init with copy of MLTrainingSessionParameters(v24, &v21, type metadata accessor for MLHandActionClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v26, &v21, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v26 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v21, type metadata accessor for MLTrainingSessionParameters);
  v16 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = v23;
  result = HandActionClassifierTrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v21, &v21, &v21);
  if (!v17)
  {
    v22[3] = v16;
    v22[4] = &protocol witness table for HandActionClassifierTrainingSessionDelegate;
    v22[0] = result;
    v19 = v25;
    outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLTrainingSessionParameters);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v22, v19, 25);
  }

  return result;
}

void *static MLHandActionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLHandActionClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLHandActionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = HandActionClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for HandActionClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 25);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLHandActionClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v56 = a5;
  v55 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLHandActionClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v43;
  v50 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v11 = *(*(v50 - 1) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = &v43;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v51 = &v43;
  v17 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = alloca(v18);
  v22 = alloca(v18);
  if (a2)
  {
    v43 = a1;
    swift_storeEnumTagMultiPayload(&v43, v6, 1);
    swift_errorRetain(a1);
    v55(&v43);
    v23 = &demangling cache variable for type metadata for Result<MLHandActionClassifier, Error>;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
  }

  v53 = v17;
  v57 = &v43;
  v54 = &v43;
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v44);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v26 = type metadata accessor for HandActionClassifierTrainingSessionDelegate(0);
  result = swift_dynamicCast(&v49, v44, v25, v26, 6);
  if (result)
  {
    v27 = *(v49 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
    if (v27)
    {
      v59 = v49;
      v28 = v49 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
      swift_beginAccess(v49 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v44, 0, 0);
      v29 = v28;
      v10 = v51;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v51, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
      v30 = v50;
      if (__swift_getEnumTagSinglePayload(v10, 1, v50))
      {

        v23 = &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?;
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v23);
      }

      v31 = v52;
      outlined init with copy of MLTrainingSessionParameters(v10, v52, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      v58 = v27;

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
      outlined init with copy of MLTrainingSessionParameters(v31 + v30[5], &v43, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
      v32 = *(v31 + v30[7]);
      v33 = *(v31 + v30[8]);
      v34 = *(v31 + v30[10]);
      v35 = *(v31 + v30[9]);
      v36 = v53;
      *&v44[v53[5] - 8] = *(v31 + v30[6]);
      *&v44[v36[6] - 8] = v32;
      *&v44[v36[7] - 8] = v33;
      *&v44[v36[8] - 8] = v34;
      *&v44[v36[10] - 8] = v35;
      outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      v37 = v57;
      outlined init with take of MLClassifierMetrics(&v43, v57, type metadata accessor for MLHandActionClassifier.ModelParameters);
      v38 = *(v59 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
      if (v38)
      {
        v39 = alloca(48);
        v40 = alloca(48);
        v45 = v58;
        v46 = v37;
        v47 = v59;
        v48 = v38;
        v38;
        v41 = v54;
        _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML22MLHandActionClassifierV_s5Error_pTt1g5(partial apply for closure #1 in closure #1 in closure #1 in static MLHandActionClassifier.resume(_:), &v43);
        v38;
        v55(v41);

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for Result<MLHandActionClassifier, Error>);
        v42 = v57;
      }

      else
      {

        v42 = v37;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLHandActionClassifier.ModelParameters);
    }

    else
    {
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in static MLHandActionClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v18 = a5;
  v16[0] = v8;
  v17 = a3;
  v16[1] = v7;
  v10 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLTrainingSessionParameters(a2, v16, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v13 = *(v17 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  v13;
  a4;
  v14 = v16[0];
  result = MLHandActionClassifier.init(model:parameters:metricsAttributes:classLabels:)(a1, v16, v13, a4, a6, a7);
  if (v14)
  {
    result = v18;
    *v18 = v14;
  }

  return result;
}

uint64_t static MLHandActionClassifier.buildFeatureTable(features:labels:sessionIds:videoFiles:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a3;
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v5, v15);
  *(inited + 16) = 4;
  *(inited + 24) = 8;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v23 = a1;
  v16 = &v23;
  a1;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v7 & 1;
  v23;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v23 = a2;
  v17 = &v23;
  a2;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 88) = v8 & 1;
  v23;
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = 0xEA00000000006469;
  v23 = v22;
  v18 = &v23;
  v22;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v9 & 1;
  v23;
  *(inited + 128) = 0x7461506F65646976;
  *(inited + 136) = 0xE900000000000068;
  v23 = v21;
  v19 = &v23;
  v21;
  *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 152) = v10 & 1;
  v23;
  v11 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v11);
  result = v23;
  v13 = v24;
  v14 = v20;
  *v20 = v23;
  *(v14 + 8) = v13;
  return result;
}

void closure #1 in static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(uint64_t a1)
{
  if (*(a1 + 16) == 3)
  {
    v2 = *a1;
    static MLHandActionClassifier.convertSequenceToMultiArray(value:)(&v2);
  }

  else
  {
    *v1 = 0;
  }
}

void static MLHandActionClassifier.convertSequenceToMultiArray(value:)(uint64_t *a1)
{
  v139 = v1;
  v2 = *a1;
  v135 = COERCE_DOUBLE(_swiftEmptyArrayStorage);
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v3 = objc_allocWithZone(NSNumber);
  [v3 initWithInteger:1];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v3);
  v4 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v4);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v4);
  specialized ContiguousArray._endMutation()(v4);
  v5 = objc_allocWithZone(NSNumber);
  [v5 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v5);
  v6 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v6);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v6);
  specialized ContiguousArray._endMutation()(v6);
  v7 = objc_allocWithZone(NSNumber);
  [v7 initWithInteger:21];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v7);
  v8 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v8);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v8);
  specialized ContiguousArray._endMutation()(v8);
  objc_allocWithZone(MLMultiArray);
  v9 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (!v9)
  {
    goto LABEL_67;
  }

  v10 = v9;
  v125 = UnsafeMutableBufferPointer.init(_:)(v10, &type metadata for Double);
  v141 = v10;

  v11 = CMLSequence.size.getter();
  v12 = specialized RandomAccessCollection<>.distance(from:to:)(0, v11);

  if (v12 != 1)
  {

LABEL_67:
    *v139 = 0;
    return;
  }

  v121[1] = v2;
  v13 = 0.0;
  v122 = 0;

LABEL_4:
  specialized EnumeratedSequence.Iterator.next()(v13);
  v14 = *&v135;
  v15 = v136;
  v16 = v137;
  v17 = v138;
  if (v138 == 3)
  {
    outlined copy of MLDataValue(v136, v137, 3u);
    outlined copy of MLDataValue(v15, v16, 3u);
    v134 = v15;
    v131 = v16;
    v18 = CMLSequence.size.getter();
    v16 = v131;
    v15 = v134;
    v19 = specialized RandomAccessCollection<>.distance(from:to:)(0, v18);
    v133 = v14;
    outlined consume of (offset: Int, element: MLDataValue)?(v14, v15, v16, 3);
    if (v19 == 3)
    {
      outlined copy of MLDataValue(v15, v16, 3u);
      v20 = 0;
      while (1)
      {
        if (v20 == CMLSequence.size.getter())
        {

          v105 = v133;
          v106 = v131;
          outlined consume of (offset: Int, element: MLDataValue)?(v133, v15, v131, 3);
          outlined consume of (offset: Int, element: MLDataValue)?(v105, v15, v106, 3);
          goto LABEL_4;
        }

        v22 = v20;
        v21 = CMLSequence.value(at:)(v20);
        MLDataValue.init(_:)(v21, v13);
        v23 = v135;
        v130 = v136;
        v24 = v137;
        v25 = CMLSequence.size.getter();
        v124 = v22;
        if (v22 >= v25)
        {
          BUG();
        }

        v26 = v130;
        if (v24 != 3)
        {
          break;
        }

        outlined copy of MLDataValue(*&v23, v130, 3u);
        outlined copy of MLDataValue(*&v23, v26, 3u);
        v27 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v28 = v23;
        v29 = CMLSequence.size.getter();
        v132 = v28;
        outlined consume of MLDataValue(*&v28, v26, 3);
        if (v27 < 0 || v29 < v27)
        {
          BUG();
        }

        if (v27 != 21)
        {
          v23 = v132;
          outlined consume of MLDataValue(*&v132, v26, 3);
          v24 = 3;
          break;
        }

        v30 = v132;

        if (CMLSequence.size.getter())
        {
          v31 = 0;
          while (1)
          {
            v32 = CMLSequence.value(at:)(v31);
            v33 = CMLFeatureValue.type.getter();
            v123 = v31;
            switch(v33)
            {
              case 0:
                v34 = v32[2];

                v142 = COERCE_DOUBLE(specialized handling<A, B>(_:_:)(v34));
                v32;
                object = 0;
                v143 = 0.0;
                goto LABEL_39;
              case 1:
                v71 = v32[2];

                specialized handling<A, B>(_:_:)(v71);
                v140 = v13;
                *&v70 = COERCE_DOUBLE(v32);
                v13 = v140;
                v142 = v140;
                LOBYTE(v70) = 1;
                goto LABEL_37;
              case 2:

                v64 = CMLFeatureValue.stringValue()();
                v142 = *&v64._countAndFlagsBits;
                if (v65)
                {
                  v65;

                  BUG();
                }

                object = v64._object;
                *&v66 = COERCE_DOUBLE(v32);
                LOBYTE(v66) = 2;
                v143 = *&v66;
                goto LABEL_39;
              case 3:
                v67 = v32[2];

                v68 = specialized handling<A, B>(_:_:)(v67);
                if (!v68)
                {
                  BUG();
                }

                v32;
                v69 = type metadata accessor for CMLSequence();
                *&v70 = COERCE_DOUBLE(swift_allocObject(v69, 25, 7));
                *(v70 + 16) = v68;
                v142 = *&v70;
                *(v70 + 24) = 1;
                LOBYTE(v70) = 3;
                goto LABEL_37;
              case 4:
                v36 = v32[2];

                v37 = specialized handling<A, B>(_:_:)(v36);
                if (!v37)
                {
                  BUG();
                }

                v129 = v32;
                v38 = type metadata accessor for CMLDictionary();
                *&v39 = COERCE_DOUBLE(swift_initStackObject(v38, &v118));
                *(v39 + 16) = v37;
                v128 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                swift_retain_n(v39, 2);
                v40 = 0;
                v142 = COERCE_DOUBLE(_swiftEmptyDictionarySingleton);
                v140 = *&v39;
                while (v40 != CMLDictionary.size.getter())
                {
                  CMLDictionary.keyAndValue(at:)(v40);
                  v42 = v41;
                  v40 = specialized RandomAccessCollection<>.index(after:)(v40);
                  v43 = CMLFeatureValue.stringValue()();
                  if (v44)
                  {
                    v44;

                    *&v39 = v140;
                  }

                  else
                  {
                    v45 = v43._object;
                    v143 = *&v43._countAndFlagsBits;

                    MLDataValue.init(_:)(v42, v13);

                    v127 = v135;
                    v126 = v136;
                    v144 = v137;
                    *&v46 = v143;
                    v135 = v143;
                    v136 = v45;
                    LOBYTE(v137) = 2;
                    v47 = v45;
                    *(&v46 + 1) = v45;
                    v48 = v142;
                    specialized __RawDictionaryStorage.find<A>(_:)(v46, 2, v13);
                    *&v46 = (v50 & 1) == 0;
                    v51 = __OFADD__(*(*&v48 + 16), v46);
                    v52 = *(*&v48 + 16) + v46;
                    if (v51)
                    {
                      BUG();
                    }

                    v53 = v50;
                    if (*(*&v48 + 24) < v52)
                    {
                      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, 1u);
                      *&v54 = v143;
                      *(&v54 + 1) = v47;
                      specialized __RawDictionaryStorage.find<A>(_:)(v54, 2, v13);
                      LOBYTE(v56) = v56 & 1;
                      v57 = v53;
                      if ((v53 & 1) != v56)
                      {
                        LOBYTE(v57) = v53 & 1;
                        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, v47, v56, v57, v55);
                        BUG();
                      }
                    }

                    if (v53)
                    {
                      v115 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
                      swift_willThrow(&type metadata for _MergeError, &protocol witness table for _MergeError);
                      v121[0] = v115;
                      swift_errorRetain(v115);
                      v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
                      if (swift_dynamicCast(&demangling cache variable for type metadata for Error, v121, v116, &type metadata for _MergeError, 0))
                      {
                        v119 = 0;
                        v120 = 0xE000000000000000;
                        _StringGuts.grow(_:)(30);
                        v117._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
                        v117._countAndFlagsBits = 0xD00000000000001BLL;
                        String.append(_:)(v117);
                        _print_unlocked<A, B>(_:_:)(&v135, &v119, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
                        v117._countAndFlagsBits = 39;
                        v117._object = 0xE100000000000000;
                        String.append(_:)(v117);
                        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
                        BUG();
                      }

                      outlined consume of MLDataValue(*&v127, v126, v144);
                      outlined consume of MLDataValue(*&v135, v136, v137);

                      v121[0];
                      swift_unexpectedError(v115, "Swift/Dictionary.swift", 22, 1, 489);
                      BUG();
                    }

                    v58 = v128;
                    *(*&v128 + 8 * (v49 >> 6) + 64) |= 1 << v49;
                    v59 = *(*&v58 + 48);
                    v60 = 24 * v49;
                    *(v59 + v60) = v143;
                    *(v59 + v60 + 8) = v47;
                    *(v59 + v60 + 16) = 2;
                    v61 = *(*&v58 + 56);
                    *(v61 + v60) = v127;
                    *(v61 + v60 + 8) = v126;
                    *(v61 + v60 + 16) = v144;
                    v62 = *(*&v58 + 16);
                    v51 = __OFADD__(1, v62);
                    v63 = v62 + 1;
                    if (v51)
                    {
                      BUG();
                    }

                    v142 = v58;
                    *(*&v58 + 16) = v63;
                    *&v39 = v140;
                  }
                }

                v129;
                *&v101 = COERCE_DOUBLE(v39);
                LOBYTE(v101) = 4;
                v143 = *&v101;
                object = 0;
                v31 = v123;
                goto LABEL_39;
              case 5:
                *&v72 = COERCE_DOUBLE();
                LOBYTE(v72) = 6;
                v143 = *&v72;
                v142 = 0.0;
                goto LABEL_38;
              case 6:

                MLDataValue.MultiArrayType.init(from:)(v32);
                v142 = v135;
                if (v135 == 0.0)
                {
                  BUG();
                }

                *&v70 = COERCE_DOUBLE();
                LOBYTE(v70) = 5;
LABEL_37:
                v143 = *&v70;
LABEL_38:
                object = 0;
LABEL_39:
                if (v31 >= CMLSequence.size.getter())
                {
                  BUG();
                }

                v129 = object;
                v73 = v141;
                v74 = [v141 strides];
                v75 = v74;
                v140 = COERCE_DOUBLE(type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr));
                v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v75, *&v140);

                if ((v76 & 0xC000000000000003) != 0)
                {
                  v77 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v76);
                }

                else
                {
                  if (!*(&dword_10 + (v76 & 0xFFFFFFFFFFFFF8)))
                  {
                    BUG();
                  }

                  v77 = *(v76 + 32);
                }

                v78 = v77;
                v76;
                v79 = [v78 integerValue];

                v81 = v79;
                v80 = v133 * v79;
                if (!is_mul_ok(v133, v81))
                {
                  BUG();
                }

                v82 = [v73 strides];
                v83 = v82;
                v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v83, *&v140);

                if ((v84 & 0xC000000000000003) != 0)
                {
                  v85 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v84);
                }

                else
                {
                  if (*(&dword_10 + (v84 & 0xFFFFFFFFFFFFF8)) < 2uLL)
                  {
                    BUG();
                  }

                  v85 = *(v84 + 40);
                }

                v86 = v85;
                v84;
                v87 = [v86 integerValue];

                v89 = v87;
                v88 = v124 * v87;
                if (!is_mul_ok(v124, v89))
                {
                  BUG();
                }

                v51 = __OFADD__(v88, v80);
                v90 = v88 + v80;
                if (v51)
                {
                  BUG();
                }

                v91 = [v141 strides];
                v92 = v91;
                v93 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v92, *&v140);
                (objc_release)(v92);
                if ((v93 & 0xC000000000000003) != 0)
                {
                  v95 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v93);
                  v94 = v130;
                }

                else
                {
                  v94 = v130;
                  if (*(&dword_10 + (v93 & 0xFFFFFFFFFFFFF8)) < 3uLL)
                  {
                    BUG();
                  }

                  v95 = *(v93 + 48);
                }

                v93;
                v96 = [v95 integerValue];

                v97 = v123;
                v99 = v96;
                v98 = v123 * v96;
                if (!is_mul_ok(v123, v99))
                {
                  BUG();
                }

                v51 = __OFADD__(v98, v90);
                v100 = v98 + v90;
                if (v51)
                {
                  BUG();
                }

                if (LOBYTE(v143))
                {
                  v30 = v132;
                  if (LOBYTE(v143) != 1)
                  {
                    outlined consume of MLDataValue(*&v142, v129, SLOBYTE(v143));
                    outlined consume of MLDataValue(*&v30, v94, 3);
                    outlined consume of MLDataValue(*&v30, v94, 3);
                    v107 = v133;
                    v108 = v134;
                    v109 = v131;
                    outlined consume of (offset: Int, element: MLDataValue)?(v133, v134, v131, 3);
                    outlined consume of (offset: Int, element: MLDataValue)?(v107, v108, v109, 3);

                    goto LABEL_71;
                  }

                  *(v125 + 8 * v100) = v142;
                }

                else
                {
                  v13 = SLODWORD(v142);
                  *(v125 + 8 * v100) = SLODWORD(v142);
                  v30 = v132;
                }

                v31 = v97 + 1;
                if (v31 == CMLSequence.size.getter())
                {
                  goto LABEL_64;
                }

                break;
            }
          }
        }

LABEL_64:
        v102 = v124 + 1;

        v103 = v130;
        outlined consume of MLDataValue(*&v30, v130, 3);
        v104 = *&v30;
        v20 = v102;
        outlined consume of MLDataValue(v104, v103, 3);
        v15 = v134;
      }

      outlined consume of MLDataValue(*&v23, v26, v24);
      v110 = v133;
      v111 = v134;
      v112 = v131;
      outlined consume of (offset: Int, element: MLDataValue)?(v133, v134, v131, 3);
      outlined consume of (offset: Int, element: MLDataValue)?(v110, v111, v112, 3);
LABEL_71:

      goto LABEL_67;
    }

    v113 = v133;
    outlined consume of (offset: Int, element: MLDataValue)?(v133, v15, v16, 3);
    v17 = 3;
  }

  else
  {
    if (v138 == 255)
    {

      MLDataValue.MultiArrayType.init(_:)(v141);
      *v139 = v135;
      return;
    }

    v113 = *&v135;
  }

  v114 = v139;
  outlined consume of (offset: Int, element: MLDataValue)?(v113, v15, v16, v17);
  *v114 = 0;
}

void *MLHandActionClassifier.modelPrediction(on:using:)(void *a1, void *a2)
{
  v4 = (v3 + *(type metadata accessor for MLHandActionClassifier(0) + 28));
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v6 = static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(a1, kCMTimeZero.value, *&kCMTimeZero.timescale, kCMTimeZero.epoch, kCMTimeIndefinite.value, *&kCMTimeIndefinite.timescale, *(v4 + *(v5 + 40)), kCMTimeIndefinite.epoch);
  if (!v2)
  {
    v22 = v6[2];
    if (v22)
    {
      v18 = v4;
      v20 = v6;
      specialized ContiguousArray.reserveCapacity(_:)(v22);
      v7 = 0;
      do
      {
        v8 = v20[v7 + 4];
        v7 = v7 + 1;
        v8;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v8);
        v9 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v9);
        specialized ContiguousArray._endMutation()(v9);
      }

      while (v22 != v7);
      v20;
      v4 = v18;
    }

    else
    {
      v6;
    }

    v10 = static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(_swiftEmptyArrayStorage, *(v4 + *(v5 + 28)), 21);
    _swiftEmptyArrayStorage;
    v12 = *(v10 + 16);
    if (v12)
    {
      v17 = v10;
      v13 = (v10 + 40);
      v4 = _swiftEmptyArrayStorage;
      do
      {
        v21 = v12;
        v16 = *v13;
        v23 = *(v13 - 1);
        v19 = MLHandActionClassifier.modelPrediction(on:using:)(v23, a2);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v14 = v4[2];
        if (v4[3] >> 1 <= v14)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v14 + 1, 1, v4);
        }

        v4[2] = v14 + 1;
        v15 = 3 * v14;
        *&v4[v15 + 4] = v16;
        v4[v15 + 6] = v19;

        v13 = (v13 + 24);
        v12 = v21 - 1;
      }

      while (v21 != 1);
      v17;
    }

    else
    {
      v10;
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

{
  v4 = [a1 shape];
  v5 = v4;
  v6 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v5, v6);

  v8 = specialized Array._getCount()(v7);
  v7;
  if (v8 != 3)
  {
    goto LABEL_19;
  }

  v9 = [a1 shape];
  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v10, v6);

  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v13 = swift_allocObject(v12, 56, 7);
  v13[2] = 3;
  v13[3] = 7;
  v14 = *(type metadata accessor for MLHandActionClassifier(0) + 28) + v3;
  v15 = *(*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28) + v14);
  v16 = objc_allocWithZone(NSNumber);
  v13[4] = [v16 initWithInteger:v15];
  v17 = objc_allocWithZone(NSNumber);
  v13[5] = [v17 initWithInteger:3];
  v18 = objc_allocWithZone(NSNumber);
  v13[6] = [v18 initWithInteger:21];
  v3 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(v11, v13);
  v11;
  v13;
  if (v3)
  {
    v66 = v6;
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v19, v87);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = 0x7365736F70;
    inited[5] = 0xE500000000000000;
    v21 = objc_opt_self(MLFeatureValue);
    v22 = [v21 featureValueWithMultiArray:a1];
    v23 = v22;
    inited[9] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
    inited[6] = v23;
    v24 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v3 = objc_allocWithZone(MLDictionaryFeatureProvider);
    v25 = @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(v24);
    if (!v2)
    {
      v3 = v25;
      v86[0] = 0;
      v26 = [a2 predictionFromFeatures:v25 error:v86];
      v27 = v26;
      v28 = v86[0];
      if (v27)
      {
        v68 = v3;
        v3 = 0xD000000000000012;
        v29 = v27;
        v86[0];
        v30 = String._bridgeToObjectiveC()();
        v69 = v29;
        v31 = [v29 featureValueForName:v30];
        v32 = v31;

        if (v32)
        {
          v33 = [v32 dictionaryValue];
          v34 = v33;

          v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(v34, &type metadata for AnyHashable, v66, &protocol witness table for AnyHashable);
          v36 = *(v35 + 16);
          if (v36)
          {
            v72 = _swiftEmptyArrayStorage;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
            v3 = _swiftEmptyArrayStorage;
            v37 = specialized Dictionary.startIndex.getter(v35);
            v39 = v35 + 64;
            v40 = v36 - 1;
            v63 = v35 + 64;
            for (i = v35; ; v38 = *(i + 36))
            {
              if (v37 < 0 || v37 >= 1 << *(v35 + 32))
              {
                BUG();
              }

              v67 = v40;
              v41 = v37 >> 6;
              v42 = *(v39 + 8 * (v37 >> 6));
              if (!_bittest64(&v42, v37))
              {
                BUG();
              }

              if (v38 != *(v35 + 36))
              {
                BUG();
              }

              v60 = 1 << v37;
              v61 = v38;
              v43 = v37;
              outlined init with copy of AnyHashable(*(v35 + 48) + 40 * v37, v86);
              v65 = v43;
              v44 = *(*(v35 + 56) + 8 * v43);
              v86[5] = v44;
              outlined init with copy of AnyHashable(v86, v83);
              v85 = v44;
              v81 = v84;
              v82 = v44;
              v80[1] = v83[1];
              v80[0] = v83[0];
              v45 = v44;
              v45;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, v75, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));

              v79 = v76;
              v46 = *&v75[0];
              v78[1] = v75[1];
              v78[0] = v75[0];
              swift_dynamicCast(&v70, v78, &type metadata for AnyHashable, &type metadata for String, 7);
              outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, v73, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v47 = v74;
              [v74 doubleValue];

              outlined destroy of AnyHashable(v73);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, &demangling cache variable for type metadata for (key: AnyHashable, value: NSNumber));
              v48 = v70;
              v49 = v71;
              v72 = v3;
              v50 = *(v3 + 16);
              v51 = v50 + 1;
              if (*(v3 + 24) >> 1 <= v50)
              {
                v64 = v71;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v3 + 24) >= 2uLL, v51, 1);
                v51 = v50 + 1;
                v49 = v64;
                v3 = v72;
              }

              *(v3 + 16) = v51;
              v52 = 24 * v50;
              *(v3 + v52 + 32) = v48;
              *(v3 + v52 + 40) = v49;
              *(v3 + v52 + 48) = v46;
              v35 = i;
              v53 = -1 << *(i + 32);
              if (v65 >= -v53)
              {
                BUG();
              }

              v39 = v63;
              if ((v60 & *(v63 + 8 * v41)) == 0)
              {
                BUG();
              }

              if (v61 != *(i + 36))
              {
                BUG();
              }

              v37 = _HashTable.occupiedBucket(after:)(v65, v63, ~v53);
              v40 = v67 - 1;
              if (!v67)
              {
                break;
              }
            }

            i;
            swift_unknownObjectRelease(v69);
          }

          else
          {
            v35;
            swift_unknownObjectRelease(v69);

            return _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
          *v59 = 0xD000000000000028;
          *(v59 + 8) = "labelProbabilities" + 0x8000000000000000;
          *(v59 + 16) = 0;
          *(v59 + 32) = 0;
          *(v59 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v58);

          swift_unknownObjectRelease(v29);
        }
      }

      else
      {
        v57 = v86[0];
        _convertNSErrorToError(_:)(v28);

        swift_willThrow(v57, "predictionFromFeatures:error:");
      }
    }
  }

  else
  {
LABEL_19:
    v54 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v54, 0, 0);
    *v55 = 0xD000000000000025;
    *(v55 + 8) = "rt requested type" + 0x8000000000000000;
    *(v55 + 16) = 0;
    *(v55 + 32) = 0;
    *(v55 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v54);
  }

  return v3;
}

void *closure #1 in MLHandActionClassifier.predictions(from:)(void *a1, uint64_t a2, void *a3)
{
  v6 = v3;
  result = MLHandActionClassifier.modelPrediction(on:using:)(a1, *(a2 + 16));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *v6 = result;
  }

  return result;
}

uint64_t MLHandActionClassifier.evaluation(on:)(double a1, double a2)
{
  result = MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
  if (!v2)
  {
    v8 = v6;
    v9 = v7;
    v5 = type metadata accessor for MLHandActionClassifier(0);
    MLHandActionClassifier.evaluation(on:parameters:)(&v6, v3 + *(v5 + 28), 30.0, a2);
    return outlined consume of Result<_DataTable, Error>(v8, v9);
  }

  return result;
}

void *MLHandActionClassifier.addHandActionClassifierSpecificMetadata(_:)(const void *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MLHandActionClassifier(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v137 = &v116;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v149 = &v116;
  v10 = type metadata accessor for Logger(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  qmemcpy(v119, a1, sizeof(v119));
  v132 = v3;
  if (!v119[1])
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
    inited = swift_initStackObject(v31, v117);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 0xD000000000000016;
    inited[5] = "Number of Labels" + 0x8000000000000000;
    v33 = v2 + *(v4 + 28);
    v34 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v120 = *&v33[*(v34 + 28)];
    inited[6] = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    inited[7] = v35;
    inited[8] = 0xD000000000000011;
    inited[9] = "lassification algorithm." + 0x8000000000000000;
    inited[10] = Double.description.getter(*&v33[*(v34 + 40)]);
    inited[11] = v36;
    v142 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for String, &protocol witness table for String);
    v37 = NSFullUserName();
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)(v38);
    v41 = v40;

    *v118 = v39;
    *&v118[8] = v41;
    *&v118[16] = 0xD000000000000033;
    *&v118[24] = "RandomForestRegressor" + 0x8000000000000000;
    *&v118[32] = 0;
    *&v118[48] = 49;
    *&v118[56] = 0xE100000000000000;
    v42 = v142;
    *&v118[64] = v142;
    v120 = v39;
    v121 = v41;
    v122 = 0xD000000000000033;
    v123 = "RandomForestRegressor" + 0x8000000000000000;
    v124 = 0;
    v125 = 49;
    v126 = 0xE100000000000000;
    v127 = v142;
    outlined retain of MLModelMetadata(v118);
    result = outlined release of MLModelMetadata(&v120, v42);
    qmemcpy(v132, v118, 0x48uLL);
    return result;
  }

  v150 = v4;
  log = v2;
  v135 = v119[0];
  v142 = v119[2];
  v17 = v119[3];
  v133 = v119[4];
  v18 = v119[5];
  v134 = v119[6];
  v19 = v119[7];
  v145 = v119[1];
  v146 = v119[3];
  v136 = v119[7];
  if (v119[8])
  {
    v140 = &v116;
    v139 = &v116;
    v148 = v10;
    v147 = v11;
    v20 = v119[8];
    v119[1];
    v17;
    v19;
    outlined release of MLModelMetadata?(v119, outlined copy of MLModelMetadata?);
    v143 = v18;
    v18;
    v20;
    v21 = specialized Dictionary.subscript.getter(0xD000000000000016, ("Number of Labels" + 0x8000000000000000), v20);
    v151 = v20;
    if (v22)
    {
      v128 = "Number of Labels" + 0x8000000000000000;
      v141 = 0xD000000000000016;
      v23 = log + *(v150 + 28);
      v144 = v21;
      v24 = v22;
      v25 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
      v26 = *&v23[*(v25 + 28)];
      v120 = v26;
      v27 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v29 = v28;
      if (!(v27 ^ v144 | v28 ^ v24))
      {
        v24;
        v30 = v29;
LABEL_11:
        v30;
        v64 = v151;
        goto LABEL_19;
      }

      v129 = v25;
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)(v144, v24, v27, v28, 0);
      v29;
      if (v63)
      {
        v30 = v24;
        goto LABEL_11;
      }

      v130 = v26;
      if (one-time initialization token for logger != -1)
      {
        swift_once(&one-time initialization token for logger, one-time initialization function for logger);
      }

      v65 = v148;
      v66 = __swift_project_value_buffer(v148, static MLHandActionClassifier.logger);
      v67 = v140;
      (*(v147 + 16))(v140, v66, v65);
      v68 = v149;
      outlined init with copy of MLTrainingSessionParameters(log, v149, type metadata accessor for MLHandActionClassifier);
      v69 = v24;
      v24;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();
      v72 = v71;
      if (os_log_type_enabled(v70, v71))
      {
        v73 = swift_slowAlloc(22, -1);
        *type = v72;
        v74 = v73;
        v131 = swift_slowAlloc(32, -1);
        v120 = v131;
        *v74 = 136315394;
        v69;
        *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v69, &v120);
        swift_bridgeObjectRelease_n(v69, 3);
        *(v74 + 12) = 2048;
        v75 = v68;
        v76 = *(*(v129 + 28) + *(v150 + 28) + v68);
        outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLHandActionClassifier);
        *(v74 + 14) = v76;
        _os_log_impl(&dword_0, v70, type[0], "Prediction window size %s is set incorrectly, change it to %ld frames.", v74, 0x16u);
        v77 = v131;
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v77, -1, -1;
        v74, -1, -1;
      }

      else
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLHandActionClassifier);

        swift_bridgeObjectRelease_n(v69, 2);
      }

      (*(v147 + 8))(v67, v148);
      v78 = v151;
      v120 = v130;
      v79 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v81 = v80;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v78);
      v120 = v78;
      v58 = isUniquelyReferenced_nonNull_native;
      v59 = v79;
      v60 = v81;
      v61 = v141;
      v62 = v128;
    }

    else
    {
      v53 = log + *(v150 + 28);
      v120 = *&v53[*(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28)];
      v54 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v56 = v55;
      v57 = swift_isUniquelyReferenced_nonNull_native(v20);
      v120 = v20;
      v58 = v57;
      v59 = v54;
      v60 = v56;
      v61 = 0xD000000000000016;
      v62 = "Number of Labels" + 0x8000000000000000;
    }

    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v60, v61, v62, v58);
    v64 = v120;
LABEL_19:
    v83 = specialized Dictionary.subscript.getter(0xD000000000000011, ("lassification algorithm." + 0x8000000000000000), v64);
    if (v84)
    {
      v85 = v84;
      v144 = ("lassification algorithm." + 0x8000000000000000);
      v149 = v64;
      v86 = log + *(v150 + 28);
      v87 = v83;
      v88 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
      v140 = *&v86[*(v88 + 40)];
      v89 = Double.description.getter(*&v140);
      v91 = v90;
      if (v87 == v89 && v85 == v90)
      {
        v151;
        v85;
        v92 = v91;
LABEL_26:
        v92;
        v47 = v145;
        v52 = v146;
        v48 = v143;
        v51 = v149;
        goto LABEL_34;
      }

      v99 = _stringCompareWithSmolCheck(_:_:expecting:)(v87, v85, v89, v90, 0);
      v91;
      if (v99)
      {
        v151;
        v92 = v85;
        goto LABEL_26;
      }

      v141 = v88;
      if (one-time initialization token for logger != -1)
      {
        swift_once(&one-time initialization token for logger, one-time initialization function for logger);
      }

      v100 = v148;
      v101 = __swift_project_value_buffer(v148, static MLHandActionClassifier.logger);
      (*(v147 + 16))(v139, v101, v100);
      v102 = v137;
      outlined init with copy of MLTrainingSessionParameters(log, v137, type metadata accessor for MLHandActionClassifier);
      v85;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.info.getter();
      log = v103;
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc(22, -1);
        v106 = swift_slowAlloc(32, -1);
        v120 = v106;
        *v105 = 136315394;
        v85;
        *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v85, &v120);
        swift_bridgeObjectRelease_n(v85, 3);
        *(v105 + 12) = 2048;
        v107 = v137;
        *(v105 + 14) = *(v137 + *(v150 + 28) + *(v141 + 40));
        outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLHandActionClassifier);
        v108 = log;
        _os_log_impl(&dword_0, log, v104, "Target frame rate %s is set incorrectly, change it to %f.", v105, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        v106, -1, -1;
        v105, -1, -1;
        v109 = v108;
      }

      else
      {
        swift_bridgeObjectRelease_n(v85, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLHandActionClassifier);
        v109 = log;
      }

      (*(v147 + 8))(v139, v148);
      v110 = Double.description.getter(*&v140);
      v112 = v111;
      v113 = v149;
      v114 = swift_isUniquelyReferenced_nonNull_native(v149);
      v120 = v113;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, v112, 0xD000000000000011, v144, v114);
      v151;
      v51 = v120;
      v47 = v145;
    }

    else
    {
      v93 = log + *(v150 + 28);
      v94 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
      v95 = Double.description.getter(*&v93[*(v94 + 40)]);
      v47 = v145;
      v96 = v95;
      log = v97;
      v98 = swift_isUniquelyReferenced_nonNull_native(v64);
      v120 = v64;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v96, log, 0xD000000000000011, ("lassification algorithm." + 0x8000000000000000), v98);
      v151;
      v51 = v120;
    }

    v52 = v146;
    v48 = v143;
    goto LABEL_34;
  }

  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  v45 = swift_allocObject(v44, 96, 7);
  v45[2] = 2;
  v45[3] = 4;
  v45[4] = 0xD000000000000016;
  v45[5] = "Number of Labels" + 0x8000000000000000;
  v46 = log + *(v150 + 28);
  log = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v120 = *&v46[*(log + 7)];
  v47 = v145;
  v145;
  v17;
  v136;
  outlined release of MLModelMetadata?(v119, outlined copy of MLModelMetadata?);
  v48 = v18;
  v18;
  v45[6] = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v45[7] = v49;
  v45[8] = 0xD000000000000011;
  v45[9] = "lassification algorithm." + 0x8000000000000000;
  v45[10] = Double.description.getter(*&v46[*(log + 10)]);
  v45[11] = v50;
  v51 = Dictionary.init(dictionaryLiteral:)(v45, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v52 = v146;
LABEL_34:
  v149 = v51;
  *v118 = v135;
  *&v118[8] = v47;
  *&v118[16] = v142;
  *&v118[24] = v52;
  *&v118[32] = v133;
  *&v118[40] = v48;
  *&v118[48] = v134;
  v115 = v136;
  *&v118[56] = v136;
  *&v118[64] = v51;
  outlined retain of MLModelMetadata(v118);
  v47;
  v52;
  v48;
  v115;
  qmemcpy(v132, v118, 0x48uLL);
  v120 = v135;
  v121 = v47;
  v122 = v142;
  v123 = v52;
  *&v124 = v133;
  *(&v124 + 1) = v48;
  v125 = v134;
  v126 = v115;
  v127 = v149;
  return outlined release of MLModelMetadata(&v120, v119);
}

uint64_t MLHandActionClassifier.writeLegacyModel(to:metadata:)(uint64_t a1, const void *a2)
{
  v23 = v2;
  v18 = v3;
  v17 = a2;
  v19 = type metadata accessor for Model(0);
  v20 = *(v19 - 8);
  v4 = *(v20 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v22 = v16;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v23;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0xD000000000000014, ("HandPoseClassifier" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v12)
  {
    v21 = v16;
    v23 = v7;
    v14 = *(v18 + 8);
    qmemcpy(v16, v17, sizeof(v16));
    MLHandActionClassifier.GraphCNN.export(metadata:)(v16);
    v15 = v21;
    Model.write(to:)(v21);
    (*(v20 + 8))(v22, v19);
    return (*(v8 + 8))(v15, v23);
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandActionClassifier;
  if (!type metadata singleton initialization cache for MLHandActionClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandActionClassifier);
  }

  return result;
}

uint64_t MLHandActionClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3, double a4, double a5)
{
  v20 = v5;
  v24 = a3;
  v22 = a2;
  v21 = a1;
  v25 = type metadata accessor for URL.DirectoryHint(0);
  v23 = *(v25 - 8);
  v6 = *(v23 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v26 = v19;
  v12 = type metadata accessor for URL(0);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v19, v24, sizeof(v19));
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v12);
  (*(v23 + 104))(v19, enum case for URL.DirectoryHint.inferFromPath(_:), v25);
  v16 = v22;
  v22;
  v17 = URL.init(filePath:directoryHint:relativeTo:)(v21, v16, v19, v26);
  MLHandActionClassifier.write(to:metadata:)(v19, v19, v17, a5);
  return (*(v27 + 8))(v19, v12);
}

unint64_t MLHandActionClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLHandActionClassifier(0);
  v6 = v0 + v5[7];
  v27._countAndFlagsBits = MLHandActionClassifier.ModelParameters.description.getter();
  v8 = v7;
  v9 = v1 + v5[8];
  v24._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v24._object = v10;
  v11 = v5[9];
  v12 = v8;
  outlined init with copy of MLTrainingSessionParameters(v1 + v11, &v22, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload(&v22, v27._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v22, type metadata accessor for MLClassifierMetrics.Contents);
  v27._object = MLClassifierMetrics.accuracyDescription.getter();
  v14 = v13;
  v25 = 0xD000000000000021;
  v26 = "used as dictionary key" + 0x8000000000000000;
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

NSAttributedString MLHandActionClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLHandActionClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t sub_1A1160()
{
  v1 = *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 41);
  v4 = *(v1 + 64);
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  outlined consume of Result<_DataTable, Error>(*(v0 + 32), *(v0 + 40));
  v5 = v3 + v0;
  v6 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v7))
    {
      case 0u:
        v17 = type metadata accessor for URL(0);
        v18 = *(*(v17 - 8) + 8);
        v18(v3 + v0, v17);
        v19 = v4;
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v18(v5 + v10[12], v17);
        *(v5 + v10[16] + 8);
        *(v5 + v10[20] + 8);
        *(v5 + v10[24] + 8);
        v11 = v10[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 8))(v3 + v0, v8);
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        v9 = *(v5 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v5, *(v5 + 8));
        *(v5 + 24);
        *(v5 + 40);
        *(v5 + 56);
        v9 = *(v5 + 72);
        goto LABEL_10;
      case 5u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 8))(v3 + v0, v12);
        v19 = v4;
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v5 + v13[12] + 8);
        *(v5 + v13[16] + 8);
        v11 = v13[20];
        goto LABEL_9;
      case 6u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v3 + v0, v14);
        v19 = v4;
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v5 + v15[12] + 8);
        *(v5 + v15[16] + 8);
        *(v5 + v15[20] + 8);
        v11 = v15[24];
LABEL_9:
        v4 = v19;
        v9 = *(v5 + v11 + 8);
LABEL_10:
        v9;
        break;
      default:
        return swift_deallocObject(v0, v4 + v3, v2 | 7);
    }
  }

  return swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t partial apply for closure #1 in MLHandActionClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v9 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 41));
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandActionClassifier.init(trainingData:parameters:)(a1, v4, v9, v5, v10, v6);
}

id @nonobjc MLDictionaryFeatureProvider.init(dictionary:)(uint64_t a1)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a1, &type metadata for String;
  v7 = 0;
  v3 = [v1 initWithDictionary:isa error:&v7];

  v4 = v7;
  if (v3)
  {
    v7;
  }

  else
  {
    v5 = v7;
    _convertNSErrorToError(_:)(v4);

    swift_willThrow();
  }

  return v3;
}

uint64_t partial apply for closure #1 in MLHandActionClassifier.init(checkpoint:)(uint64_t a1)
{
  v2 = swift_task_alloc(48);
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLHandActionClassifier.init(checkpoint:)(a1);
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier(void *a1, void *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v14 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    a1[1] = a2[1];
    v5 = a2[2];
    a1[2] = v5;
    v6 = a3[7];
    __dst = a1 + v6;
    v8 = a2 + v6;
    v101 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    v4;

    v9 = v5;
    v10 = v101;
    v9;
    v100 = a1;
    if (swift_getEnumCaseMultiPayload(v8, v101) == 1)
    {
      v11 = __dst;
      v12 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v12);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v24 = type metadata accessor for URL(0);
          v25 = *(*(v24 - 8) + 16);
          v25(__dst, v8, v24);
          v108 = v12;
          v26 = v8;
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v25(&__dst[v27[12]], &v26[v27[12]], v24);
          v28 = v27[16];
          *&__dst[v28] = *&v26[v28];
          v29 = *&v26[v28 + 8];
          *&__dst[v28 + 8] = v29;
          v30 = v27[20];
          *&__dst[v30] = *&v26[v30];
          v31 = *&v26[v30 + 8];
          *&__dst[v30 + 8] = v31;
          v32 = v27[24];
          *&__dst[v32] = *&v26[v32];
          v33 = *&v26[v32 + 8];
          *&__dst[v32 + 8] = v33;
          v34 = v27[28];
          *&__dst[v34] = *&v26[v34];
          v35 = *&v26[v34 + 8];
          *&__dst[v34 + 8] = v35;
          v29;
          v31;
          LOBYTE(v29) = v33;
          v10 = v101;
          v29;
          v23 = v35;
          v8 = v26;
          goto LABEL_12;
        case 1u:
        case 2u:
          v13 = type metadata accessor for URL(0);
          (*(*(v13 - 8) + 16))(__dst, v8, v13);
          goto LABEL_16;
        case 3u:
          v36 = *v8;
          v108 = v12;
          v37 = v101;
          v38 = v8;
          v39 = v8[8];
          outlined copy of Result<_DataTable, Error>(v36, v39);
          *__dst = v36;
          __dst[8] = v39;
          *(__dst + 2) = *(v38 + 2);
          v40 = *(v38 + 3);
          *(__dst + 3) = v40;
          *(__dst + 4) = *(v38 + 4);
          v41 = *(v38 + 5);
          *(__dst + 5) = v41;
          *(__dst + 6) = *(v38 + 6);
          v42 = *(v38 + 7);
          *(__dst + 7) = v42;
          goto LABEL_11;
        case 4u:
          v16 = *v8;
          v107 = v12;
          v17 = v8;
          v18 = v8[8];
          outlined copy of Result<_DataTable, Error>(v16, v18);
          *__dst = v16;
          __dst[8] = v18;
          *(__dst + 2) = *(v17 + 2);
          v19 = *(v17 + 3);
          *(__dst + 3) = v19;
          *(__dst + 4) = *(v17 + 4);
          v20 = *(v17 + 5);
          *(__dst + 5) = v20;
          *(__dst + 6) = *(v17 + 6);
          v21 = *(v17 + 7);
          *(__dst + 7) = v21;
          *(__dst + 8) = *(v17 + 8);
          v22 = *(v17 + 9);
          *(__dst + 9) = v22;
          v19;
          v20;
          LOBYTE(v19) = v21;
          v8 = v17;
          v12 = v107;
          v19;
          v23 = v22;
          v11 = __dst;
          goto LABEL_14;
        case 5u:
          v43 = type metadata accessor for DataFrame(0);
          (*(*(v43 - 8) + 16))(__dst, v8, v43);
          v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v45 = v44[12];
          *&__dst[v45] = *&v8[v45];
          v40 = *&v8[v45 + 8];
          *&__dst[v45 + 8] = v40;
          v46 = v44[16];
          *&__dst[v46] = *&v8[v46];
          v41 = *&v8[v46 + 8];
          *&__dst[v46 + 8] = v41;
          v47 = v44[20];
          *&__dst[v47] = *&v8[v47];
          v108 = v12;
          v37 = v101;
          v38 = v8;
          v42 = *&v8[v47 + 8];
          *&__dst[v47 + 8] = v42;
LABEL_11:
          v40;
          v41;
          v23 = v42;
          v8 = v38;
          v10 = v37;
LABEL_12:
          v12 = v108;
          break;
        case 6u:
          v48 = type metadata accessor for DataFrame(0);
          (*(*(v48 - 8) + 16))(__dst, v8, v48);
          v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v50 = v49[12];
          *&__dst[v50] = *&v8[v50];
          v51 = *&v8[v50 + 8];
          *&__dst[v50 + 8] = v51;
          v52 = v49[16];
          *&__dst[v52] = *&v8[v52];
          v53 = *&v8[v52 + 8];
          *&__dst[v52 + 8] = v53;
          v54 = v49[20];
          *&__dst[v54] = *&v8[v54];
          v109 = v12;
          v55 = v8;
          v56 = *&v8[v54 + 8];
          *&__dst[v54 + 8] = v56;
          v57 = v49[24];
          *&__dst[v57] = *&v55[v57];
          v58 = *&v55[v57 + 8];
          *&__dst[v57 + 8] = v58;
          v51;
          v53;
          LOBYTE(v51) = v56;
          v8 = v55;
          v12 = v109;
          v51;
          v23 = v58;
LABEL_14:
          v10 = v101;
          break;
      }

      v23;
LABEL_16:
      v15 = a2;
      swift_storeEnumTagMultiPayload(v11, v12, EnumCaseMultiPayload);
      swift_storeEnumTagMultiPayload(v11, v10, 1);
    }

    else
    {
      v11 = __dst;
      memcpy(__dst, v8, *(*(v101 - 8) + 64));
      v15 = a2;
    }

    v59 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    *&v11[v59[5]] = *&v8[v59[5]];
    *&v11[v59[6]] = *&v8[v59[6]];
    *&v11[v59[7]] = *&v8[v59[7]];
    *&v11[v59[8]] = *&v8[v59[8]];
    *&v11[v59[10]] = *&v8[v59[10]];
    v60 = a3[8];
    v61 = v100;
    v62 = v100 + v60;
    v63 = v15 + v60;
    v102 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v64 = swift_getEnumCaseMultiPayload(v63, v102);
    if (v64 == 2)
    {
      v70 = *v63;
      swift_errorRetain(*v63);
      *v62 = v70;
      v61 = v100;
    }

    else if (v64 == 1)
    {
      *v62 = *v63;
      v97 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v65 = *(v97 + 20);
      v110 = &v62[v65];
      v66 = type metadata accessor for DataFrame(0);
      __dstb = v62;
      v67 = *(*(v66 - 8) + 16);
      v68 = &v63[v65];
      v15 = a2;
      v67(v110, v68, v66);
      v69 = v66;
      v61 = v100;
      v67(&__dstb[*(v97 + 24)], &v63[*(v97 + 24)], v69);
      v62 = __dstb;
    }

    else
    {
      __dsta = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v71 = swift_getEnumCaseMultiPayload(v63, __dsta);
      v72 = v71 == 1;
      v73 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v71 == 1)
      {
        v73 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v74 = __swift_instantiateConcreteTypeFromMangledName(v73);
      (*(*(v74 - 8) + 16))(v62, v63, v74);
      swift_storeEnumTagMultiPayload(v62, __dsta, v72);
      v15 = a2;
    }

    swift_storeEnumTagMultiPayload(v62, v102, v64);
    v75 = a3[9];
    v76 = (v61 + v75);
    v77 = v15 + v75;
    v78 = swift_getEnumCaseMultiPayload(v77, v102);
    if (v78 == 2)
    {
      v89 = *v77;
      swift_errorRetain(*v77);
      *v76 = v89;
      v14 = v100;
      v86 = 2;
      v87 = v76;
      v88 = v102;
      goto LABEL_28;
    }

    if (v78 == 1)
    {
      *v76 = *v77;
      v79 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v80 = v77;
      v81 = *(v79 + 20);
      v99 = v76 + v81;
      v82 = type metadata accessor for DataFrame(0);
      v83 = &v80[v81];
      v84 = *(*(v82 - 8) + 16);
      v84(v99, v83, v82);
      v85 = *(v79 + 24);
      v14 = v100;
      v84(v76 + v85, &v80[v85], v82);
      v86 = 1;
      v87 = v76;
      v88 = v102;
LABEL_28:
      swift_storeEnumTagMultiPayload(v87, v88, v86);
      return v14;
    }

    v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v91 = swift_getEnumCaseMultiPayload(v77, v90);
    v92 = v91 == 1;
    v93 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v91 == 1)
    {
      v93 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v94 = __swift_instantiateConcreteTypeFromMangledName(v93);
    (*(*(v94 - 8) + 16))(v76, v77, v94);
    swift_storeEnumTagMultiPayload(v76, v90, v92);
    swift_storeEnumTagMultiPayload(v76, v102, 0);
    return v100;
  }

  return v14;
}

uint64_t destroy for MLHandActionClassifier(uint64_t a1, int *a2)
{
  *a1;
  v3 = *(a1 + 8);

  v4 = a1 + a2[7];
  v5 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v4, v5) == 1)
  {
    v6 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v4, v6))
    {
      case 0u:
        v9 = type metadata accessor for URL(0);
        v10 = *(*(v9 - 8) + 8);
        v10(v4, v9);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v10(v4 + v11[12], v9);
        *(v4 + v11[16] + 8);
        *(v4 + v11[20] + 8);
        *(v4 + v11[24] + 8);
        v12 = v11[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 8))(v4, v7);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v4, *(v4 + 8));
        *(v4 + 24);
        *(v4 + 40);
        v8 = *(v4 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v4, *(v4 + 8));
        *(v4 + 24);
        *(v4 + 40);
        *(v4 + 56);
        v8 = *(v4 + 72);
        goto LABEL_10;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v4, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v4 + v14[12] + 8);
        *(v4 + v14[16] + 8);
        v12 = v14[20];
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 8))(v4, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v4 + v16[12] + 8);
        *(v4 + v16[16] + 8);
        *(v4 + v16[20] + 8);
        v12 = v16[24];
LABEL_9:
        v8 = *(v4 + v12 + 8);
LABEL_10:
        v8;
        break;
      default:
        break;
    }
  }

  v17 = (a1 + a2[8]);
  v18 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v18);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v17;
      break;
    case 1:
      v36 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v22 = &v17[*(v36 + 20)];
      v23 = type metadata accessor for DataFrame(0);
      v24 = v22;
      v25 = *(*(v23 - 8) + 8);
      v25(v24, v23);
      v25(&v17[*(v36 + 24)], v23);
      break;
    case 0:
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v17, v20) == 1)
      {
        v21 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v21 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v26 = __swift_instantiateConcreteTypeFromMangledName(v21);
      (*(*(v26 - 8) + 8))(v17, v26);
      break;
  }

  v27 = (a2[9] + a1);
  result = swift_getEnumCaseMultiPayload(v27, v18);
  switch(result)
  {
    case 2:
      return *v27;
    case 1:
      v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v32 = v27 + *(v31 + 20);
      v33 = type metadata accessor for DataFrame(0);
      v34 = *(*(v33 - 8) + 8);
      v34(v32, v33);
      return (v34)(v27 + *(v31 + 24), v33);
    case 0:
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v27, v29) == 1)
      {
        v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v35 = __swift_instantiateConcreteTypeFromMangledName(v30);
      return (*(*(v35 - 8) + 8))(v27, v35);
  }

  return result;
}

void *initializeWithCopy for MLHandActionClassifier(void *a1, void *a2, int *a3)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = a2[2];
  a1[2] = v4;
  v5 = a3[7];
  __dst = a1 + v5;
  v6 = a2 + v5;
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v3;
  v8 = v7;

  v4;
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v94 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v94);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v21 = type metadata accessor for URL(0);
        v98 = v7;
        v22 = *(*(v21 - 8) + 16);
        v10 = __dst;
        v23 = v21;
        v22(__dst, v6);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        (v22)(&__dst[v24[12]], &v6[v24[12]], v23);
        v25 = v24[16];
        *&__dst[v25] = *&v6[v25];
        v26 = *&v6[v25 + 8];
        *&__dst[v25 + 8] = v26;
        v27 = v24[20];
        *&__dst[v27] = *&v6[v27];
        v28 = *&v6[v27 + 8];
        *&__dst[v27 + 8] = v28;
        v29 = v24[24];
        *&__dst[v29] = *&v6[v29];
        v30 = *&v6[v29 + 8];
        *&__dst[v29 + 8] = v30;
        v31 = v24[28];
        *&__dst[v31] = *&v6[v31];
        v32 = *&v6[v31 + 8];
        *&__dst[v31 + 8] = v32;
        v26;
        v28;
        v33 = v30;
        v8 = v98;
        goto LABEL_9;
      case 1u:
      case 2u:
        v9 = type metadata accessor for URL(0);
        v10 = __dst;
        (*(*(v9 - 8) + 16))(__dst, v6, v9);
        goto LABEL_12;
      case 3u:
        v34 = *v6;
        v99 = v6[8];
        outlined copy of Result<_DataTable, Error>(*v6, v99);
        v10 = __dst;
        *__dst = v34;
        __dst[8] = v99;
        *(__dst + 2) = *(v6 + 2);
        v35 = *(v6 + 3);
        *(__dst + 3) = v35;
        *(__dst + 4) = *(v6 + 4);
        v36 = *(v6 + 5);
        *(__dst + 5) = v36;
        *(__dst + 6) = *(v6 + 6);
        v32 = *(v6 + 7);
        *(__dst + 7) = v32;
        v35;
        v33 = v36;
        goto LABEL_9;
      case 4u:
        v14 = *v6;
        v15 = v6[8];
        outlined copy of Result<_DataTable, Error>(*v6, v15);
        *__dst = v14;
        __dst[8] = v15;
        *(__dst + 2) = *(v6 + 2);
        v16 = *(v6 + 3);
        *(__dst + 3) = v16;
        *(__dst + 4) = *(v6 + 4);
        v17 = *(v6 + 5);
        *(__dst + 5) = v17;
        *(__dst + 6) = *(v6 + 6);
        v18 = *(v6 + 7);
        *(__dst + 7) = v18;
        *(__dst + 8) = *(v6 + 8);
        v97 = v8;
        v19 = *(v6 + 9);
        *(__dst + 9) = v19;
        v16;
        v17;
        v18;
        v20 = v19;
        v8 = v97;
        v10 = __dst;
        break;
      case 5u:
        v37 = type metadata accessor for DataFrame(0);
        v10 = __dst;
        (*(*(v37 - 8) + 16))(__dst, v6, v37);
        v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v39 = v38[12];
        *&__dst[v39] = *&v6[v39];
        v40 = *&v6[v39 + 8];
        *&__dst[v39 + 8] = v40;
        v41 = v38[16];
        *&__dst[v41] = *&v6[v41];
        v42 = v6;
        v43 = *&v6[v41 + 8];
        *&__dst[v41 + 8] = v43;
        v44 = v38[20];
        *&__dst[v44] = *&v42[v44];
        v32 = *&v42[v44 + 8];
        *&__dst[v44 + 8] = v32;
        v40;
        v33 = v43;
        v6 = v42;
LABEL_9:
        v33;
        v20 = v32;
        break;
      case 6u:
        v45 = type metadata accessor for DataFrame(0);
        v10 = __dst;
        (*(*(v45 - 8) + 16))(__dst, v6, v45);
        v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v47 = v46[12];
        *&__dst[v47] = *&v6[v47];
        v48 = *&v6[v47 + 8];
        *&__dst[v47 + 8] = v48;
        v49 = v46[16];
        *&__dst[v49] = *&v6[v49];
        v50 = *&v6[v49 + 8];
        *&__dst[v49 + 8] = v50;
        v51 = v46[20];
        *&__dst[v51] = *&v6[v51];
        v52 = *&v6[v51 + 8];
        *&__dst[v51 + 8] = v52;
        v53 = v46[24];
        *&__dst[v53] = *&v6[v53];
        v100 = v8;
        v54 = *&v6[v53 + 8];
        *&__dst[v53 + 8] = v54;
        v48;
        v50;
        v52;
        v20 = v54;
        v8 = v100;
        break;
    }

    v20;
LABEL_12:
    v13 = a2;
    swift_storeEnumTagMultiPayload(v10, v94, EnumCaseMultiPayload);
    swift_storeEnumTagMultiPayload(v10, v8, 1);
    v12 = a1;
  }

  else
  {
    v11 = *(*(v7 - 8) + 64);
    v10 = __dst;
    memcpy(__dst, v6, v11);
    v12 = a1;
    v13 = a2;
  }

  v55 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v10[v55[5]] = *&v6[v55[5]];
  *&v10[v55[6]] = *&v6[v55[6]];
  *&v10[v55[7]] = *&v6[v55[7]];
  *&v10[v55[8]] = *&v6[v55[8]];
  *&v10[v55[10]] = *&v6[v55[10]];
  v56 = a3[8];
  v57 = (v12 + v56);
  v58 = (v13 + v56);
  __dsta = type metadata accessor for MLClassifierMetrics.Contents(0);
  v59 = swift_getEnumCaseMultiPayload(v58, __dsta);
  if (v59 == 2)
  {
    v65 = *v58;
    swift_errorRetain(v65);
    *v57 = v65;
  }

  else if (v59 == 1)
  {
    *v57 = *v58;
    v95 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v60 = *(v95 + 20);
    v88 = v57 + v60;
    v61 = type metadata accessor for DataFrame(0);
    v62 = v58 + v60;
    v63 = *(*(v61 - 8) + 16);
    v63(v88, v62, v61);
    v64 = v61;
    v13 = a2;
    v63(v57 + *(v95 + 24), v58 + *(v95 + 24), v64);
    v12 = a1;
  }

  else
  {
    v96 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v66 = swift_getEnumCaseMultiPayload(v58, v96);
    v67 = v66 == 1;
    v68 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v66 == 1)
    {
      v68 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v69 = __swift_instantiateConcreteTypeFromMangledName(v68);
    (*(*(v69 - 8) + 16))(v57, v58, v69);
    swift_storeEnumTagMultiPayload(v57, v96, v67);
    v13 = a2;
  }

  swift_storeEnumTagMultiPayload(v57, __dsta, v59);
  v70 = a3[9];
  v71 = v12 + v70;
  v72 = v13 + v70;
  v73 = swift_getEnumCaseMultiPayload(v72, __dsta);
  if (v73 == 2)
  {
    v80 = *v72;
    swift_errorRetain(*v72);
    *v71 = v80;
  }

  else if (v73 == 1)
  {
    *v71 = *v72;
    v102 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v74 = v72;
    v75 = *(v102 + 20);
    v90 = &v71[v75];
    v76 = type metadata accessor for DataFrame(0);
    v77 = &v74[v75];
    v78 = *(*(v76 - 8) + 16);
    v78(v90, v77, v76);
    v79 = v76;
    v12 = a1;
    v78(&v71[*(v102 + 24)], &v74[*(v102 + 24)], v79);
  }

  else
  {
    v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v82 = swift_getEnumCaseMultiPayload(v72, v81);
    v103 = v72;
    v83 = v82 == 1;
    v84 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v82 == 1)
    {
      v84 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v85 = __swift_instantiateConcreteTypeFromMangledName(v84);
    (*(*(v85 - 8) + 16))(v71, v103, v85);
    swift_storeEnumTagMultiPayload(v71, v81, v83);
  }

  swift_storeEnumTagMultiPayload(v71, __dsta, v73);
  return v12;
}

void *assignWithCopy for MLHandActionClassifier(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v6;
  v7;
  v8 = a1[1];
  a1[1] = a2[1];

  v9 = a2[2];
  v10 = a1[2];
  a1[2] = v9;
  v9;

  v74 = a3;
  v11 = *(a3 + 28);
  v12 = a1 + v11;
  v13 = a2 + v11;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v12, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v14 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v13, v14) == 1)
    {
      v76 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v13, v76);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v90 = type metadata accessor for URL(0);
          v20 = *(*(v90 - 8) + 16);
          v20(v12, v13, v90);
          v86 = v14;
          v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v20(&v12[v21[12]], &v13[v21[12]], v90);
          v4 = a2;
          v22 = v21[16];
          *&v12[v22] = *&v13[v22];
          v23 = *&v13[v22 + 8];
          *&v12[v22 + 8] = v23;
          v24 = v21[20];
          *&v12[v24] = *&v13[v24];
          v91 = *&v13[v24 + 8];
          *&v12[v24 + 8] = v91;
          v25 = v21[24];
          *&v12[v25] = *&v13[v25];
          v82 = *&v13[v25 + 8];
          *&v12[v25 + 8] = v82;
          v26 = v21[28];
          *&v12[v26] = *&v13[v26];
          goto LABEL_11;
        case 1u:
        case 2u:
          v15 = type metadata accessor for URL(0);
          (*(*(v15 - 8) + 16))(v12, v13, v15);
          goto LABEL_14;
        case 3u:
          v87 = v14;
          v27 = *v13;
          v92 = v13[8];
          outlined copy of Result<_DataTable, Error>(*v13, v92);
          *v12 = v27;
          v12[8] = v92;
          *(v12 + 2) = *(v13 + 2);
          v28 = *(v13 + 3);
          *(v12 + 3) = v28;
          *(v12 + 4) = *(v13 + 4);
          v29 = *(v13 + 5);
          *(v12 + 5) = v29;
          *(v12 + 6) = *(v13 + 6);
          v93 = *(v13 + 7);
          *(v12 + 7) = v93;
          v28;
          LOBYTE(v28) = v29;
          v14 = v87;
          v28;
          v19 = v93;
          goto LABEL_13;
        case 4u:
          v85 = v14;
          v16 = *v13;
          v88 = v13[8];
          outlined copy of Result<_DataTable, Error>(*v13, v88);
          *v12 = v16;
          v12[8] = v88;
          *(v12 + 2) = *(v13 + 2);
          v17 = *(v13 + 3);
          *(v12 + 3) = v17;
          *(v12 + 4) = *(v13 + 4);
          v18 = *(v13 + 5);
          *(v12 + 5) = v18;
          *(v12 + 6) = *(v13 + 6);
          v89 = *(v13 + 7);
          *(v12 + 7) = v89;
          *(v12 + 8) = *(v13 + 8);
          v81 = *(v13 + 9);
          *(v12 + 9) = v81;
          v17;
          LOBYTE(v17) = v18;
          v14 = v85;
          v17;
          v89;
          v19 = v81;
          goto LABEL_13;
        case 5u:
          v30 = type metadata accessor for DataFrame(0);
          (*(*(v30 - 8) + 16))(v12, v13, v30);
          v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v32 = v31[12];
          *&v12[v32] = *&v13[v32];
          v33 = *&v13[v32 + 8];
          *&v12[v32 + 8] = v33;
          v34 = v31[16];
          *&v12[v34] = *&v13[v34];
          v94 = *&v13[v34 + 8];
          *&v12[v34 + 8] = v94;
          v35 = v31[20];
          *&v12[v35] = *&v13[v35];
          v86 = v14;
          v36 = *&v13[v35 + 8];
          *&v12[v35 + 8] = v36;
          v33;
          v37 = v94;
          goto LABEL_12;
        case 6u:
          v38 = type metadata accessor for DataFrame(0);
          (*(*(v38 - 8) + 16))(v12, v13, v38);
          v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v40 = v39[12];
          *&v12[v40] = *&v13[v40];
          v23 = *&v13[v40 + 8];
          *&v12[v40 + 8] = v23;
          v41 = v39[16];
          *&v12[v41] = *&v13[v41];
          v91 = *&v13[v41 + 8];
          *&v12[v41 + 8] = v91;
          v42 = v39[20];
          *&v12[v42] = *&v13[v42];
          v82 = *&v13[v42 + 8];
          *&v12[v42 + 8] = v82;
          v26 = v39[24];
          *&v12[v26] = *&v13[v26];
          v86 = v14;
LABEL_11:
          v36 = *&v13[v26 + 8];
          *&v12[v26 + 8] = v36;
          v23;
          v91;
          v37 = v82;
LABEL_12:
          v37;
          v19 = v36;
          v14 = v86;
LABEL_13:
          v19;
LABEL_14:
          swift_storeEnumTagMultiPayload(v12, v76, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v12, v14, 1);
          break;
      }
    }

    else
    {
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }
  }

  v43 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v12[v43[5]] = *&v13[v43[5]];
  *&v12[v43[6]] = *&v13[v43[6]];
  *&v12[v43[7]] = *&v13[v43[7]];
  *&v12[v43[8]] = *&v13[v43[8]];
  *&v12[v43[10]] = *&v13[v43[10]];
  if (a1 != v4)
  {
    v44 = *(v74 + 32);
    v45 = a1 + v44;
    v46 = v4 + v44;
    outlined destroy of MLActivityClassifier.ModelParameters(v45, type metadata accessor for MLClassifierMetrics.Contents);
    v77 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v47 = swift_getEnumCaseMultiPayload(v46, v77);
    v73 = a1;
    v83 = v4;
    if (v47 == 2)
    {
      v52 = *v46;
      swift_errorRetain(*v46);
      *v45 = v52;
    }

    else if (v47 == 1)
    {
      *v45 = *v46;
      v79 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v48 = *(v79 + 20);
      v95 = &v45[v48];
      v49 = type metadata accessor for DataFrame(0);
      v50 = *(*(v49 - 8) + 16);
      v51 = &v46[v48];
      a1 = v73;
      v50(v95, v51, v49);
      v50(&v45[*(v79 + 24)], &v46[*(v79 + 24)], v49);
      v47 = 1;
    }

    else
    {
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v54 = swift_getEnumCaseMultiPayload(v46, v53);
      v55 = v54 == 1;
      v56 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v54 == 1)
      {
        v56 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v57 = __swift_instantiateConcreteTypeFromMangledName(v56);
      (*(*(v57 - 8) + 16))(v45, v46, v57);
      swift_storeEnumTagMultiPayload(v45, v53, v55);
      a1 = v73;
    }

    swift_storeEnumTagMultiPayload(v45, v77, v47);
    v58 = *(v74 + 36);
    v59 = a1 + v58;
    v60 = v83 + v58;
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v58, type metadata accessor for MLClassifierMetrics.Contents);
    v61 = swift_getEnumCaseMultiPayload(v60, v77);
    if (v61 == 2)
    {
      v66 = *v60;
      swift_errorRetain(v66);
      *v59 = v66;
    }

    else if (v61 == 1)
    {
      *v59 = *v60;
      v75 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v62 = *(v75 + 20);
      v80 = &v59[v62];
      v63 = type metadata accessor for DataFrame(0);
      v64 = *(*(v63 - 8) + 16);
      v65 = &v60[v62];
      a1 = v73;
      v64(v80, v65, v63);
      v64(&v59[*(v75 + 24)], &v60[*(v75 + 24)], v63);
      v61 = 1;
    }

    else
    {
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v68 = swift_getEnumCaseMultiPayload(v60, v67);
      v84 = v60;
      v69 = v68 == 1;
      v70 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v68 == 1)
      {
        v70 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v71 = __swift_instantiateConcreteTypeFromMangledName(v70);
      (*(*(v71 - 8) + 16))(v59, v84, v71);
      swift_storeEnumTagMultiPayload(v59, v67, v69);
    }

    swift_storeEnumTagMultiPayload(v59, v77, v61);
  }

  return a1;
}

uint64_t initializeWithTake for MLHandActionClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = a2;
  v4 = a1;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a3[7];
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
  {
    v72 = type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v7, v72))
    {
      case 0u:
        v63 = type metadata accessor for URL(0);
        v9 = *(*(v63 - 8) + 32);
        v9(v6, v7, v63);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v9(&v6[v10[12]], &v7[v10[12]], v63);
        v4 = a1;
        *&v6[v10[16]] = *&v7[v10[16]];
        *&v6[v10[20]] = *&v7[v10[20]];
        *&v6[v10[24]] = *&v7[v10[24]];
        v11 = v10[28];
        v3 = a2;
        *&v6[v11] = *&v7[v11];
        v12 = v6;
        v13 = v72;
        v14 = 0;
        goto LABEL_11;
      case 1u:
        v16 = type metadata accessor for URL(0);
        (*(*(v16 - 8) + 32))(v6, v7, v16);
        v61 = 1;
        goto LABEL_10;
      case 2u:
        v15 = type metadata accessor for URL(0);
        (*(*(v15 - 8) + 32))(v6, v7, v15);
        v61 = 2;
        goto LABEL_10;
      case 5u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 32))(v6, v7, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v6[v18[12]] = *&v7[v18[12]];
        *&v6[v18[16]] = *&v7[v18[16]];
        *&v6[v18[20]] = *&v7[v18[20]];
        v61 = 5;
        goto LABEL_10;
      case 6u:
        v19 = type metadata accessor for DataFrame(0);
        (*(*(v19 - 8) + 32))(v6, v7, v19);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v6[v20[12]] = *&v7[v20[12]];
        *&v6[v20[16]] = *&v7[v20[16]];
        *&v6[v20[20]] = *&v7[v20[20]];
        *&v6[v20[24]] = *&v7[v20[24]];
        v61 = 6;
LABEL_10:
        v14 = v61;
        v12 = v6;
        v13 = v72;
LABEL_11:
        swift_storeEnumTagMultiPayload(v12, v13, v14);
        break;
      default:
        memcpy(v6, v7, *(*(v72 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v6, v8, 1);
  }

  else
  {
    memcpy(v6, v7, *(*(v8 - 8) + 64));
  }

  v21 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v6[v21[5]] = *&v7[v21[5]];
  *&v6[v21[6]] = *&v7[v21[6]];
  *&v6[v21[7]] = *&v7[v21[7]];
  *&v6[v21[8]] = *&v7[v21[8]];
  *&v6[v21[10]] = *&v7[v21[10]];
  v22 = a3[8];
  v23 = (v4 + v22);
  v24 = (v3 + v22);
  v25 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v24, v25);
  v73 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    *v23 = *v24;
    v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v36 = *(v64 + 20);
    v62 = &v23[v36];
    v70 = v4;
    v37 = type metadata accessor for DataFrame(0);
    v67 = v3;
    v38 = *(*(v37 - 8) + 32);
    v39 = &v24[v36];
    v25 = v73;
    v38(v62, v39, v37);
    v40 = v37;
    v4 = v70;
    v38(&v23[*(v64 + 24)], &v24[*(v64 + 24)], v40);
    v3 = v67;
    v35 = 1;
    v33 = v23;
    v34 = v73;
LABEL_19:
    swift_storeEnumTagMultiPayload(v33, v34, v35);
    goto LABEL_21;
  }

  if (!EnumCaseMultiPayload)
  {
    v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v27 = swift_getEnumCaseMultiPayload(v24, v69);
    v28 = v3;
    v29 = v27 == 1;
    v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v27 == 1)
    {
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
    (*(*(v31 - 8) + 32))(v23, v24, v31);
    v32 = v29;
    v3 = v28;
    v25 = v73;
    swift_storeEnumTagMultiPayload(v23, v69, v32);
    v33 = v23;
    v34 = v73;
    v35 = 0;
    goto LABEL_19;
  }

  memcpy(v23, v24, *(*(v25 - 8) + 64));
LABEL_21:
  v41 = a3[9];
  v42 = (v4 + v41);
  v43 = (v41 + v3);
  v44 = swift_getEnumCaseMultiPayload(v43, v25);
  if (v44 == 1)
  {
    *v42 = *v43;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v71 = v4;
    v56 = *(v66 + 20);
    v68 = &v42[v56];
    v57 = type metadata accessor for DataFrame(0);
    v58 = *(*(v57 - 8) + 32);
    v59 = &v43[v56];
    v4 = v71;
    v58(v68, v59, v57);
    v58(&v42[*(v66 + 24)], &v43[*(v66 + 24)], v57);
    v55 = 1;
    v53 = v42;
    v54 = v73;
  }

  else
  {
    if (v44)
    {
      memcpy(v42, v43, *(*(v25 - 8) + 64));
      return v4;
    }

    v45 = v43;
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v45, v46);
    v48 = v4;
    v49 = v47 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 32))(v42, v45, v51);
    v52 = v49;
    v4 = v48;
    swift_storeEnumTagMultiPayload(v42, v46, v52);
    v53 = v42;
    v54 = v73;
    v55 = 0;
  }

  swift_storeEnumTagMultiPayload(v53, v54, v55);
  return v4;
}

uint64_t *assignWithTake for MLHandActionClassifier(uint64_t *a1, uint64_t *a2, int *a3)
{
  v4 = a2;
  v6 = *a1;
  *a1 = *a2;
  v6;
  v7 = a1[1];
  a1[1] = a2[1];

  v8 = a1[2];
  a1[2] = a2[2];

  v9 = a3[7];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v65 = a3;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
    v12 = type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
    {
      v71 = type metadata accessor for MLHandActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v11, v71))
      {
        case 0u:
          v67 = type metadata accessor for URL(0);
          v13 = *(*(v67 - 8) + 32);
          v13(v10, v11, v67);
          v63 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v13(&v10[v63[12]], &v11[v63[12]], v67);
          v4 = a2;
          *&v10[v63[16]] = *&v11[v63[16]];
          *&v10[v63[20]] = *&v11[v63[20]];
          *&v10[v63[24]] = *&v11[v63[24]];
          *&v10[v63[28]] = *&v11[v63[28]];
          v14 = v10;
          v15 = v71;
          v16 = 0;
          goto LABEL_12;
        case 1u:
          v18 = type metadata accessor for URL(0);
          (*(*(v18 - 8) + 32))(v10, v11, v18);
          v60 = 1;
          goto LABEL_11;
        case 2u:
          v17 = type metadata accessor for URL(0);
          (*(*(v17 - 8) + 32))(v10, v11, v17);
          v60 = 2;
          goto LABEL_11;
        case 5u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 32))(v10, v11, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v10[v20[12]] = *&v11[v20[12]];
          *&v10[v20[16]] = *&v11[v20[16]];
          *&v10[v20[20]] = *&v11[v20[20]];
          v60 = 5;
          goto LABEL_11;
        case 6u:
          v21 = type metadata accessor for DataFrame(0);
          (*(*(v21 - 8) + 32))(v10, v11, v21);
          v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v10[v22[12]] = *&v11[v22[12]];
          *&v10[v22[16]] = *&v11[v22[16]];
          *&v10[v22[20]] = *&v11[v22[20]];
          *&v10[v22[24]] = *&v11[v22[24]];
          v60 = 6;
LABEL_11:
          v16 = v60;
          v14 = v10;
          v15 = v71;
LABEL_12:
          swift_storeEnumTagMultiPayload(v14, v15, v16);
          break;
        default:
          memcpy(v10, v11, *(*(v71 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v10, v12, 1);
    }

    else
    {
      memcpy(v10, v11, *(*(v12 - 8) + 64));
    }

    a3 = v65;
  }

  v23 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *&v10[v23[5]] = *&v11[v23[5]];
  *&v10[v23[6]] = *&v11[v23[6]];
  *&v10[v23[7]] = *&v11[v23[7]];
  *&v10[v23[8]] = *&v11[v23[8]];
  *&v10[v23[10]] = *&v11[v23[10]];
  if (a1 == v4)
  {
    return a1;
  }

  v24 = a3[8];
  v25 = a1 + v24;
  v26 = v4 + v24;
  outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLClassifierMetrics.Contents);
  v72 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v72);
  if (EnumCaseMultiPayload == 1)
  {
    *v25 = *v26;
    v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v37 = *(v64 + 20);
    v61 = &v25[v37];
    v62 = v4;
    v38 = type metadata accessor for DataFrame(0);
    v69 = *(*(v38 - 8) + 32);
    v39 = &v26[v37];
    a3 = v65;
    v69(v61, v39, v38);
    v40 = v38;
    v4 = v62;
    v69(&v25[*(v64 + 24)], &v26[*(v64 + 24)], v40);
    v36 = 1;
    v33 = v25;
    v34 = v72;
    v35 = v72;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v41 = v26;
      v34 = v72;
      memcpy(v25, v41, *(*(v72 - 8) + 64));
      goto LABEL_24;
    }

    v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v28 = swift_getEnumCaseMultiPayload(v26, v68);
    v29 = v28 == 1;
    v30 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v28 == 1)
    {
      v30 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledName(v30);
    (*(*(v31 - 8) + 32))(v25, v26, v31);
    v32 = v29;
    a3 = v65;
    swift_storeEnumTagMultiPayload(v25, v68, v32);
    v33 = v25;
    v34 = v72;
    v35 = v72;
    v36 = 0;
  }

  swift_storeEnumTagMultiPayload(v33, v35, v36);
LABEL_24:
  v42 = a3[9];
  v43 = a1 + v42;
  v44 = v4 + v42;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v42, type metadata accessor for MLClassifierMetrics.Contents);
  v45 = swift_getEnumCaseMultiPayload(v44, v34);
  if (v45 == 1)
  {
    *v43 = *v44;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v55 = *(v66 + 20);
    v70 = &v43[v55];
    v56 = type metadata accessor for DataFrame(0);
    v57 = &v44[v55];
    v58 = *(*(v56 - 8) + 32);
    v58(v70, v57, v56);
    v58(&v43[*(v66 + 24)], &v44[*(v66 + 24)], v56);
    v54 = 1;
    v52 = v43;
    v53 = v72;
  }

  else
  {
    if (v45)
    {
      memcpy(v43, v44, *(*(v34 - 8) + 64));
      return a1;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v44, v46);
    v48 = v44;
    v49 = v47 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 32))(v43, v48, v51);
    swift_storeEnumTagMultiPayload(v43, v46, v49);
    v52 = v43;
    v53 = v72;
    v54 = 0;
  }

  swift_storeEnumTagMultiPayload(v52, v53, v54);
  return a1;
}

uint64_t sub_1A3849(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
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

void sub_1A38E6(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
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

uint64_t type metadata completion function for MLHandActionClassifier(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  v4[1] = &value witness table for Builtin.NativeObject + 64;
  v4[2] = &value witness table for Builtin.UnknownObject + 64;
  result = type metadata accessor for MLHandActionClassifier.ModelParameters(319);
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

uint64_t static MLSoundClassifier.__Defaults.validation.getter()
{
  v1 = v0;
  if (one-time initialization token for validation != -1)
  {
    swift_once(&one-time initialization token for validation, one-time initialization function for validation);
  }

  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v3 = __swift_project_value_buffer(v2, static MLSoundClassifier.__Defaults.validation);
  return outlined init with copy of MLSoundClassifier.ModelParameters.ValidationData(v3, v1);
}

uint64_t static MLSoundClassifier.__Defaults.algorithm.getter()
{
  *result = 1;
  *(result + 8) = 1;
  *(result + 16) = 0;
  return result;
}

uint64_t one-time initialization function for validation()
{
  v0 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_value_buffer(v0, static MLSoundClassifier.__Defaults.validation);
  v1 = __swift_project_value_buffer(v0, static MLSoundClassifier.__Defaults.validation);
  *v1 = 0;
  *(v1 + 16) = 256;
  return swift_storeEnumTagMultiPayload(v1, v0, 0);
}

{
  v0 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  __swift_allocate_value_buffer(v0, static MLImageClassifier.__Defaults.validation);
  v1 = __swift_project_value_buffer(v0, static MLImageClassifier.__Defaults.validation);
  *v1 = 0;
  *(v1 + 16) = 256;
  return swift_storeEnumTagMultiPayload(v1, v0, 0);
}

uint64_t static MLSoundClassifier.__Defaults.featureExtractor.getter()
{
  *result = 1;
  *(result + 8) = 1;
  return result;
}

uint64_t MLSupportVectorClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 8, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLSupportVectorClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLSupportVectorClassifier.ModelParameters.validationData : MLSupportVectorClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLSupportVectorClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLSupportVectorClassifier.ModelParameters.validationData : MLSupportVectorClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLSupportVectorClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLSupportVectorClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  v15 = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v13 + 1);
  if (v8 == 0xFF)
  {
    v13 = 0;
    v14 = 256;
  }

  else
  {
    v16 = v7;
    v9 = v8;
    v10 = v8 & 1;
    v17 = v10;
    v21 = v9;
    outlined copy of Result<_DataTable, Error>(v7, v9);
    v20 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v16, v17);
    if (v20)
    {
      *&v13 = v7;
      BYTE8(v13) = v10;
      v12 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v7, v21);
      v12 = 3;
    }

    v2 = v12;
  }

  swift_storeEnumTagMultiPayload(&v13, v3, v2);
  outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18 + 8);
}

uint64_t MLSupportVectorClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 8, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLSupportVectorClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLSupportVectorClassifier.ModelParameters.validationData.getter(a2);
  return MLSupportVectorClassifier.ModelParameters.validationData.modify;
}

uint64_t MLSupportVectorClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLSupportVectorClassifier.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLSupportVectorClassifier.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLSupportVectorClassifier.ModelParameters.validation : MLSupportVectorClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(a1, v6);
  return MLSupportVectorClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLSupportVectorClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 8);
}

void (*MLSupportVectorClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Any?(v1 + 8, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLSupportVectorClassifier.ModelParameters.validation.modify;
}

void MLSupportVectorClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 128) + 8;
  if (a2)
  {
    v10 = *(*a1 + 144);
    outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(*(*a1 + 152), v4);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(v10, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(v3, v9);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t MLSupportVectorClassifier.ModelParameters.init(validation:maxIterations:penalty:convergenceThreshold:featureRescaling:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v19 = a5;
  v20 = a4;
  v17 = a1;
  v7 = v5;
  v8 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v18 = v7 + 8;
  *(v7 + 24) = 0;
  *(v7 + 8) = 0;
  *v7 = a2;
  *(v7 + 40) = v20;
  *(v7 + 48) = v19;
  *(v7 + 56) = a3 & 1;
  v12 = v17;
  outlined init with copy of MLSupportVectorClassifier.ModelParameters.ValidationData(v17, &v15);
  v16[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLSupportVectorClassifier.ModelParameters.ValidationData(&v15, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v18);
  return outlined destroy of MLSupportVectorClassifier.ModelParameters.ValidationData(v12);
}

uint64_t MLSupportVectorClassifier.ModelParameters.init(validationData:maxIterations:penalty:convergenceThreshold:featureRescaling:)(uint64_t *a1, uint64_t a2, char a3, double a4, double a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *v5 = a2;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = a3 & 1;
  v9 = v6;
  v10 = v7;
  return MLSupportVectorClassifier.ModelParameters.validationData.setter(&v9);
}

unint64_t MLSupportVectorClassifier.ModelParameters.description.getter(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(19);
  0xE000000000000000, a2;
  v17._countAndFlagsBits = *v2;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v3._object;
  v5 = v3;
  String.append(_:)(v3);
  object, v5._object;
  v5._object = 0xE100000000000000;
  v5._countAndFlagsBits = 10;
  String.append(_:)(v5);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x3A79746C616E6550;
  v5._object = 0xE900000000000020;
  String.append(_:)(v5);
  v6 = *(v2 + 40);
  Double.write<A>(to:)(&v17, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v7 = v17;
  v8 = v17._object;
  String.append(_:)(v17);
  v8, v7._object;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _StringGuts.grow(_:)(26);
  v7._object = "ml.actionClassifier" + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  v9 = *(v2 + 48);
  Double.write<A>(to:)(&v17, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v12 = v17;
  v10 = v17._object;
  String.append(_:)(v17);
  v10, v12._object;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  v17._object, v12._object;
  v17._countAndFlagsBits = 0xD000000000000013;
  v11 = *(v2 + 56);
  v12._countAndFlagsBits = 0x65736C6166;
  if (v11)
  {
    v12._countAndFlagsBits = 1702195828;
  }

  v17._object = "Convergence Threshold: " + 0x8000000000000000;
  v12._object = ((v11 ^ 1u | 0xFFFFFFFFFFFFFFE4) << 56);
  String.append(_:)(v12);
  v12._object, v12._object;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v17._object;
  v15 = v17;
  String.append(_:)(v17);
  v14, v15._object;
  return 0xD000000000000010;
}

unint64_t MLSupportVectorClassifier.ModelParameters.playgroundDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLSupportVectorClassifier.ModelParameters.description.getter(a1, a2);
  v3[3] = &type metadata for String;
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t initializeWithCopy for MLSupportVectorClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = *(a2 + 32);
  if (v6)
  {
    *(a1 + 32) = v6;
    (**(v6 - 8))(v4, v5);
  }

  else
  {
    v7 = *v5;
    v4[1] = v5[1];
    *v4 = v7;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithCopy for MLSupportVectorClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v2)
    {
      *(a1 + 32) = v2;
      (**(v2 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 8), (a2 + 8));
LABEL_8:
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

_OWORD *__swift_memcpy57_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  *(a1 + 41) = *(a2 + 41);
  a1[2] = v5;
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLSupportVectorClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }

  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLSupportVectorClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      v4 = v3 & 0xFFFFFFFF00000001;
      v5 = (v3 >> 1) - 1;
      v6 = -1;
      if (v5 >= 0)
      {
        v6 = v5;
      }

      v2 = v4 != 0 ? -1 : v6;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLSupportVectorClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 56) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 57) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * a2;
    }
  }
}

uint64_t static _PowerUtilities.createPowerAssertion()()
{
  AssertionID = 0;
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  v2 = IOPMAssertionCreateWithName(v0, 0xFFu, v1, &AssertionID);

  if (v2)
  {
    v3 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v3, 0, 0);
    v4 = 45;
    *v5 = 0xD00000000000002DLL;
    *(v5 + 8) = "ssertion Request" + 0x8000000000000000;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v3);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v7 = swift_allocObject(v6, 72, 7);
    *(v7 + 16) = 1;
    *(v7 + 24) = 2;
    v4 = AssertionID;
    *(v7 + 56) = &type metadata for UInt32;
    *(v7 + 64) = &protocol witness table for UInt32;
    *(v7 + 32) = v4;
    type metadata accessor for OS_os_log();
    v8 = static OS_os_log.default.getter(0);
    static os_log_type_t.default.getter(0);
    os_log(_:dso:log:type:_:)("Created power assertion %d for CreateML\n", 40);
    v7;
  }

  return v4;
}

char static _PowerUtilities.endPowerAssertion(from:)(IOPMAssertionID AssertionID)
{
  if (!AssertionID)
  {
    return 0;
  }

  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v2 = swift_allocObject(v1, 72, 7);
  *(v2 + 16) = 1;
  *(v2 + 24) = 2;
  *(v2 + 56) = &type metadata for UInt32;
  *(v2 + 64) = &protocol witness table for UInt32;
  *(v2 + 32) = AssertionID;
  type metadata accessor for OS_os_log();
  v3 = static OS_os_log.default.getter(0);
  static os_log_type_t.default.getter(0);
  os_log(_:dso:log:type:_:)("Releasing power assertion %d ", 29);
  v2;

  if (IOPMAssertionRelease(AssertionID))
  {
    v4 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v4, 0, 0);
    *v5 = 0xD00000000000002ELL;
    *(v5 + 8) = "Releasing power assertion %d " + 0x8000000000000000;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v4);
  }

  else
  {
    v7 = static OS_os_log.default.getter(AssertionID);
    v8 = static os_log_type_t.default.getter(AssertionID);
    os_log(_:dso:log:type:_:)("succeeded for CreateML\n", 23, 2, &dword_0, v7, v8, _swiftEmptyArrayStorage);

    return 1;
  }
}

uint64_t MLWordEmbedding.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v14 = v2;
  v11 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v12 = *(v3 + 8);
  *v13 = _mm_loadu_si128((v3 + 24));
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0x65626D4564726F57, 0xED0000676E696464, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v14 = v4;
    si128 = _mm_load_si128(v13);
    v13[0] = si128.i64[0];
    static MLWordEmbedding.write(dictionary:parameters:to:metadata:)(v12, si128.i64, &si128, v11);

    return (*(v5 + 8))(&si128, v14);
  }

  return result;
}

NSURL *static MLWordEmbedding.write(dictionary:parameters:to:metadata:)(uint64_t a1, uint64_t *a2, uint64_t a3, const void *a4)
{
  v12 = *a2;
  v13 = a2[1];
  qmemcpy(v15, a4, sizeof(v15));
  v4 = static _TextUtilities.optionsDictionary(from:)(v15);
  v14 = objc_opt_self(NLEmbedding);
  v5 = specialized _dictionaryUpCast<A, B, C, D>(_:)(a1);
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v4);
  v4;
  v15[0] = 0;
  LOBYTE(v5) = outlined bridged method (mbnnnbnnn) of @objc static NLEmbedding.writeMLModel(for:language:revision:to:options:)(v5, v12, v13, v7, v8, v15, v14);

  v9 = v15[0];
  if (v5)
  {
    v15[0];
  }

  else
  {
    v11 = v15[0];
    _convertNSErrorToError(_:)(v9);

    swift_willThrow(v11, v12);
  }

  return __stack_chk_guard;
}

uint64_t MLWordEmbedding.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v17 = v2;
  v19 = a2;
  stringa = string._object;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v14 = *v3;
  v20 = *(v3 + 2);
  v15 = *(v3 + 24);
  v16 = *(v3 + 40);
  v21 = &v10;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x65626D4564726F57, 0xED0000676E696464);
  if (!v2)
  {
    v10 = v14;
    v11 = v20;
    v12 = v15;
    v13 = v16;
    MLWordEmbedding.write(to:metadata:)(v21, v19);
    return (*(v5 + 8))(v21, v4);
  }

  return result;
}

uint64_t outlined bridged method (mbnnnbnnn) of @objc static NLEmbedding.writeMLModel(for:language:revision:to:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, id a7)
{
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [NSNumber]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a1;
  v10 = Dictionary._bridgeToObjectiveC()().super.isa;
  a5;
  LODWORD(a3) = [a7 writeEmbeddingMLModelForDictionary:isa language:a2 revision:a3 toURL:a4 options:v10 error:?];

  return a3;
}

uint64_t initializeBufferWithCopyOfBuffer for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = v11 + ((v5 + 16) & ~v5);
  }

  else
  {
    v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v54 = v7;
    switch(swift_getEnumCaseMultiPayload(a2, v7))
    {
      case 0u:
        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        v9 = v7;
        v10 = 0;
        goto LABEL_10;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 16))(a1, a2, v26);
        v49 = 1;
        goto LABEL_9;
      case 2u:
        v20 = *a2;
        *v4 = *a2;
        v20;
        v49 = 2;
        goto LABEL_9;
      case 3u:
        v21 = *a2;
        v22 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v22);
        *a1 = v21;
        *(a1 + 8) = v22;
        *(a1 + 16) = *(a2 + 16);
        v23 = *(a2 + 24);
        *(v4 + 24) = v23;
        *(v4 + 32) = *(a2 + 32);
        v24 = *(a2 + 40);
        *(v4 + 40) = v24;
        v25 = *(a2 + 64);
        *(v4 + 48) = *(a2 + 48);
        *(v4 + 64) = v25;
        *(v4 + 80) = *(a2 + 80);
        v23;
        v24;
        v10 = 3;
        a1 = v4;
        v9 = v54;
        goto LABEL_10;
      case 4u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v14 = v13[12];
        *(a1 + v14) = *(a2 + v14);
        v15 = *(a2 + v14 + 8);
        *(v4 + v14 + 8) = v15;
        v16 = v13[16];
        *(v4 + v16) = *(a2 + v16);
        v17 = *(a2 + v16 + 8);
        *(v4 + v16 + 8) = v17;
        v18 = v13[20];
        *(v4 + v18 + 32) = *(a2 + v18 + 32);
        v19 = *(a2 + v18);
        *(v4 + v18 + 16) = *(a2 + v18 + 16);
        *(v4 + v18) = v19;
        v15;
        v17;
        v49 = 4;
LABEL_9:
        v10 = v49;
        a1 = v4;
        v9 = v7;
LABEL_10:
        swift_storeEnumTagMultiPayload(a1, v9, v10);
        v27 = a3[5];
        v28 = (v4 + v27);
        v29 = a2 + v27;
        v52 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v29, v52);
        if (EnumCaseMultiPayload == 2)
        {
          v35 = *v29;
          *v28 = *v29;
          v35;
          swift_storeEnumTagMultiPayload(v28, v52, 2);
        }

        else if (EnumCaseMultiPayload == 1)
        {
          switch(swift_getEnumCaseMultiPayload(v29, v54))
          {
            case 0u:
              v31 = type metadata accessor for URL(0);
              (*(*(v31 - 8) + 16))(v28, v29, v31);
              v32 = v28;
              v33 = v54;
              v34 = 0;
              goto LABEL_23;
            case 1u:
              v45 = type metadata accessor for URL(0);
              (*(*(v45 - 8) + 16))(v28, v29, v45);
              v50 = 1;
              goto LABEL_22;
            case 2u:
              v42 = *v29;
              *v28 = *v29;
              v42;
              v50 = 2;
LABEL_22:
              v34 = v50;
              v32 = v28;
              v33 = v54;
LABEL_23:
              swift_storeEnumTagMultiPayload(v32, v33, v34);
              swift_storeEnumTagMultiPayload(v28, v52, 1);
              break;
            case 3u:
              v51 = *v29;
              v53 = *(v29 + 8);
              outlined copy of Result<_DataTable, Error>(*v29, v53);
              *v28 = v51;
              v28[8] = v53;
              *(v28 + 2) = *(v29 + 16);
              *(v28 + 3) = *(v29 + 24);
              *(v28 + 4) = *(v29 + 32);
              *(v28 + 5) = *(v29 + 40);
              v43 = *(v29 + 64);
              *(v28 + 3) = *(v29 + 48);
              *(v28 + 4) = v43;
              v44 = *(v29 + 80);
              JUMPOUT(0x1A5303);
            case 4u:
              v36 = type metadata accessor for DataFrame(0);
              (*(*(v36 - 8) + 16))(v28, v29, v36);
              v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
              v38 = v37[12];
              *&v28[v38] = *(v29 + v38);
              *&v28[v38 + 8] = *(v29 + v38 + 8);
              v39 = v37[16];
              *&v28[v39] = *(v29 + v39);
              *&v28[v39 + 8] = *(v29 + v39 + 8);
              v40 = v37[20];
              v28[v40 + 32] = *(v29 + v40 + 32);
              v41 = *(v29 + v40);
              *&v28[v40 + 16] = *(v29 + v40 + 16);
              *&v28[v40] = v41;
              JUMPOUT(0x1A5272);
            case 5u:
              JUMPOUT(0x1A53BCLL);
          }
        }

        else
        {
          memcpy(v28, v29, *(*(v52 - 8) + 64));
        }

        *(v4 + a3[6]) = *(a2 + a3[6]);
        *(v4 + a3[7]) = *(a2 + a3[7]);
        *(v4 + a3[8]) = *(a2 + a3[8]);
        v46 = a3[9];
        *(v4 + v46 + 8) = *(a2 + v46 + 8);
        *(v4 + v46) = *(a2 + v46);
        v47 = *(a2 + v46 + 16);
        *(v4 + v46 + 16) = v47;
        v47;
        break;
    }
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSoundClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a1, v3))
  {
    case 0u:
    case 1u:
      v4 = type metadata accessor for URL(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      break;
    case 2u:
      v7 = *a1;
      goto LABEL_6;
    case 3u:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      v7 = *(a1 + 40);
      goto LABEL_6;
    case 4u:
      v5 = type metadata accessor for DataFrame(0);
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *(a1 + *(v6 + 48) + 8);
      v7 = *(a1 + *(v6 + 64) + 8);
LABEL_6:
      v7;
      break;
    default:
      break;
  }

  v8 = a1 + *(a2 + 20);
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_11:
    v12 = *v8;
LABEL_12:
    v12;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    switch(swift_getEnumCaseMultiPayload(v8, v3))
    {
      case 0u:
      case 1u:
        v11 = type metadata accessor for URL(0);
        (*(*(v11 - 8) + 8))(v8, v11);
        break;
      case 2u:
        goto LABEL_11;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v8, *(v8 + 8));
        *(v8 + 24);
        v12 = *(v8 + 40);
        goto LABEL_12;
      case 4u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(v8, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v8 + *(v15 + 48) + 8);
        v12 = *(v8 + *(v15 + 64) + 8);
        goto LABEL_12;
      default:
        return *(a1 + *(a2 + 36) + 16);
    }
  }

  return *(a1 + *(a2 + 36) + 16);
}

uint64_t initializeWithCopy for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = a1;
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  switch(swift_getEnumCaseMultiPayload(a2, v6))
  {
    case 0u:
      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = v6;
      v9 = v6;
      v10 = 0;
      goto LABEL_8;
    case 1u:
      v27 = type metadata accessor for URL(0);
      (*(*(v27 - 8) + 16))(a1, a2, v27);
      v52 = 1;
      goto LABEL_7;
    case 2u:
      v20 = *a2;
      *v5 = *a2;
      v20;
      v52 = 2;
      goto LABEL_7;
    case 3u:
      v21 = a3;
      v22 = *a2;
      v57 = v6;
      v23 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v23);
      *a1 = v22;
      *(a1 + 8) = v23;
      *(a1 + 16) = *(a2 + 16);
      v24 = *(a2 + 24);
      *(v5 + 24) = v24;
      *(v5 + 32) = *(a2 + 32);
      v25 = *(a2 + 40);
      *(v5 + 40) = v25;
      v26 = *(a2 + 64);
      *(v5 + 48) = *(a2 + 48);
      *(v5 + 64) = v26;
      *(v5 + 80) = *(a2 + 80);
      v24;
      LOBYTE(v24) = v25;
      a3 = v21;
      v24;
      v10 = 3;
      a1 = v5;
      v9 = v57;
      v8 = v57;
      goto LABEL_8;
    case 4u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v13 = v12[12];
      *(a1 + v13) = *(a2 + v13);
      v14 = *(a2 + v13 + 8);
      *(v5 + v13 + 8) = v14;
      v15 = v12[16];
      *(v5 + v15) = *(a2 + v15);
      v16 = a3;
      v17 = *(a2 + v15 + 8);
      *(v5 + v15 + 8) = v17;
      v18 = v12[20];
      *(v5 + v18 + 32) = *(a2 + v18 + 32);
      v19 = *(a2 + v18);
      *(v5 + v18 + 16) = *(a2 + v18 + 16);
      *(v5 + v18) = v19;
      v14;
      LOBYTE(v14) = v17;
      a3 = v16;
      v14;
      v52 = 4;
LABEL_7:
      v10 = v52;
      a1 = v5;
      v8 = v6;
      v9 = v6;
LABEL_8:
      swift_storeEnumTagMultiPayload(a1, v9, v10);
      v55 = a3;
      v28 = a3[5];
      v29 = (v5 + v28);
      v30 = (a2 + v28);
      v58 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v30, v58);
      if (EnumCaseMultiPayload == 2)
      {
        v36 = *v30;
        *v29 = *v30;
        v36;
        v37 = 2;
        v38 = v29;
        v39 = v58;
      }

      else
      {
        if (EnumCaseMultiPayload != 1)
        {
          memcpy(v29, v30, *(*(v58 - 8) + 64));
          goto LABEL_23;
        }

        switch(swift_getEnumCaseMultiPayload(v30, v8))
        {
          case 0u:
            v32 = type metadata accessor for URL(0);
            (*(*(v32 - 8) + 16))(v29, v30, v32);
            v33 = v29;
            v34 = v8;
            v35 = 0;
            goto LABEL_21;
          case 1u:
            v48 = type metadata accessor for URL(0);
            (*(*(v48 - 8) + 16))(v29, v30, v48);
            v53 = 1;
            goto LABEL_20;
          case 2u:
            v46 = *v30;
            *v29 = *v30;
            v46;
            v53 = 2;
LABEL_20:
            v35 = v53;
            v33 = v29;
            v34 = v8;
LABEL_21:
            swift_storeEnumTagMultiPayload(v33, v34, v35);
            v39 = v58;
            v37 = 1;
            v38 = v29;
            break;
          case 3u:
            v54 = *v30;
            v56 = v30[8];
            outlined copy of Result<_DataTable, Error>(*v30, v56);
            *v29 = v54;
            *(v29 + 8) = v56;
            v29[2] = *(v30 + 2);
            v29[3] = *(v30 + 3);
            v47 = *(v30 + 4);
            JUMPOUT(0x1A58C3);
          case 4u:
            v40 = type metadata accessor for DataFrame(0);
            (*(*(v40 - 8) + 16))(v29, v30, v40);
            v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
            v42 = v41[12];
            *(v29 + v42) = *&v30[v42];
            *(v29 + v42 + 8) = *&v30[v42 + 8];
            v43 = v41[16];
            *(v29 + v43) = *&v30[v43];
            *(v29 + v43 + 8) = *&v30[v43 + 8];
            v44 = v41[20];
            *(v29 + v44 + 32) = v30[v44 + 32];
            v45 = *&v30[v44];
            *(v29 + v44 + 16) = *&v30[v44 + 16];
            *(v29 + v44) = v45;
            JUMPOUT(0x1A585ELL);
        }
      }

      swift_storeEnumTagMultiPayload(v38, v39, v37);
LABEL_23:
      *(v5 + v55[6]) = *(a2 + v55[6]);
      *(v5 + v55[7]) = *(a2 + v55[7]);
      *(v5 + v55[8]) = *(a2 + v55[8]);
      v49 = v55[9];
      *(v5 + v49 + 8) = *(a2 + v49 + 8);
      *(v5 + v49) = *(a2 + v49);
      v50 = *(a2 + v49 + 16);
      *(v5 + v49 + 16) = v50;
      v50;
      return v5;
  }
}

uint64_t assignWithCopy for MLSoundClassifier.PersistentParameters(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLSoundClassifier.DataSource);
    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    v55 = v6;
    switch(swift_getEnumCaseMultiPayload(a2, v6))
    {
      case 0u:
        v7 = type metadata accessor for URL(0);
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = v6;
        v9 = 0;
        goto LABEL_9;
      case 1u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v49 = 1;
        goto LABEL_8;
      case 2u:
        v18 = *a2;
        *v5 = *a2;
        v18;
        v49 = 2;
        goto LABEL_8;
      case 3u:
        v19 = *a2;
        v20 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v20);
        *a1 = v19;
        *(a1 + 8) = v20;
        *(a1 + 16) = *(a2 + 16);
        v21 = *(a2 + 24);
        *(v5 + 24) = v21;
        *(v5 + 32) = *(a2 + 32);
        v22 = *(a2 + 40);
        *(v5 + 40) = v22;
        v23 = *(a2 + 64);
        *(v5 + 48) = *(a2 + 48);
        *(v5 + 64) = v23;
        *(v5 + 80) = *(a2 + 80);
        v21;
        v22;
        v9 = 3;
        a1 = v5;
        v8 = v55;
        goto LABEL_9;
      case 4u:
        v10 = type metadata accessor for DataFrame(0);
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v12 = v11[12];
        *(a1 + v12) = *(a2 + v12);
        v13 = *(a2 + v12 + 8);
        *(v5 + v12 + 8) = v13;
        v14 = v11[16];
        *(v5 + v14) = *(a2 + v14);
        v15 = *(a2 + v14 + 8);
        *(v5 + v14 + 8) = v15;
        v16 = v11[20];
        *(v5 + v16 + 32) = *(a2 + v16 + 32);
        v17 = *(a2 + v16);
        *(v5 + v16 + 16) = *(a2 + v16 + 16);
        *(v5 + v16) = v17;
        v13;
        v15;
        v49 = 4;
LABEL_8:
        v9 = v49;
        a1 = v5;
        v8 = v6;
LABEL_9:
        swift_storeEnumTagMultiPayload(a1, v8, v9);
        v25 = a3[5];
        v26 = (v5 + v25);
        v27 = a2 + v25;
        outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
        v52 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v27, v52);
        if (EnumCaseMultiPayload == 2)
        {
          v33 = *v27;
          *v26 = *v27;
          v33;
          swift_storeEnumTagMultiPayload(v26, v52, 2);
        }

        else if (EnumCaseMultiPayload == 1)
        {
          switch(swift_getEnumCaseMultiPayload(v27, v55))
          {
            case 0u:
              v29 = type metadata accessor for URL(0);
              (*(*(v29 - 8) + 16))(v26, v27, v29);
              v30 = v26;
              v31 = v55;
              v32 = 0;
              goto LABEL_21;
            case 1u:
              v44 = type metadata accessor for URL(0);
              (*(*(v44 - 8) + 16))(v26, v27, v44);
              v50 = 1;
              goto LABEL_20;
            case 2u:
              v41 = *v27;
              *v26 = *v27;
              v41;
              v50 = 2;
              goto LABEL_20;
            case 3u:
              v51 = *v27;
              v54 = *(v27 + 8);
              outlined copy of Result<_DataTable, Error>(*v27, v54);
              *v26 = v51;
              v26[8] = v54;
              *(v26 + 2) = *(v27 + 16);
              *(v26 + 3) = *(v27 + 24);
              *(v26 + 4) = *(v27 + 32);
              *(v26 + 5) = *(v27 + 40);
              v42 = *(v27 + 64);
              *(v26 + 3) = *(v27 + 48);
              *(v26 + 4) = v42;
              v43 = *(v27 + 80);
              JUMPOUT(0x1A5D20);
            case 4u:
              v34 = type metadata accessor for DataFrame(0);
              (*(*(v34 - 8) + 16))(v26, v27, v34);
              v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
              v36 = v35[12];
              *&v26[v36] = *(v27 + v36);
              v37 = *(v27 + v36 + 8);
              *&v26[v36 + 8] = v37;
              v38 = v35[16];
              *&v26[v38] = *(v27 + v38);
              v53 = *(v27 + v38 + 8);
              *&v26[v38 + 8] = v53;
              v39 = v35[20];
              v26[v39 + 32] = *(v27 + v39 + 32);
              v40 = *(v27 + v39);
              *&v26[v39 + 16] = *(v27 + v39 + 16);
              *&v26[v39] = v40;
              v37;
              v53;
              v50 = 4;
LABEL_20:
              v32 = v50;
              v30 = v26;
              v31 = v55;
LABEL_21:
              swift_storeEnumTagMultiPayload(v30, v31, v32);
              swift_storeEnumTagMultiPayload(v26, v52, 1);
              break;
          }
        }

        else
        {
          memcpy(v26, v27, *(*(v52 - 8) + 64));
        }

        break;
    }
  }

  *(v5 + a3[6]) = *(a2 + a3[6]);
  *(v5 + a3[7]) = *(a2 + a3[7]);
  *(v5 + a3[8]) = *(a2 + a3[8]);
  v45 = a3[9];
  *(v5 + v45 + 8) = *(a2 + v45 + 8);
  *(v5 + v45) = *(a2 + v45);
  v46 = *(a2 + v45 + 16);
  v47 = *(v5 + v45 + 16);
  *(v5 + v45 + 16) = v46;
  v46;
  v47;
  return v5;
}

_BYTE *initializeWithTake for MLSoundClassifier.PersistentParameters(_BYTE *__dst, _BYTE *__src, int *a3)
{
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  v35 = v6;
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 32))(__dst, __src, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&__dst[v13[12]] = *&__src[v13[12]];
      *&__dst[v13[16]] = *&__src[v13[16]];
      v14 = v13[20];
      v15 = *&__src[v14 + 16];
      *&__dst[v14] = *&__src[v14];
      *&__dst[v14 + 16] = v15;
      __dst[v14 + 32] = __src[v14 + 32];
      v32 = 4;
      goto LABEL_7;
    case 1:
      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v32 = 1;
LABEL_7:
      v10 = v32;
      v9 = v6;
      goto LABEL_8;
    case 0:
      v8 = type metadata accessor for URL(0);
      (*(*(v8 - 8) + 32))(__dst, __src, v8);
      v9 = v6;
      v10 = 0;
LABEL_8:
      swift_storeEnumTagMultiPayload(__dst, v9, v10);
      goto LABEL_10;
  }

  memcpy(__dst, __src, *(*(v6 - 8) + 64));
LABEL_10:
  v34 = a3;
  v16 = a3[5];
  v17 = &__dst[v16];
  v18 = &__src[v16];
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v20 = swift_getEnumCaseMultiPayload(v18, v35);
    if (v20 == 4)
    {
      v26 = type metadata accessor for DataFrame(0);
      (*(*(v26 - 8) + 32))(v17, v18, v26);
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&v17[v27[12]] = *&v18[v27[12]];
      *&v17[v27[16]] = *&v18[v27[16]];
      v28 = v27[20];
      v29 = *&v18[v28 + 16];
      *&v17[v28] = *&v18[v28];
      *&v17[v28 + 16] = v29;
      v17[v28 + 32] = v18[v28 + 32];
      v33 = 4;
    }

    else
    {
      if (v20 != 1)
      {
        if (v20)
        {
          memcpy(v17, v18, *(*(v35 - 8) + 64));
          goto LABEL_21;
        }

        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 32))(v17, v18, v21);
        v22 = v17;
        v23 = v35;
        v24 = 0;
LABEL_19:
        swift_storeEnumTagMultiPayload(v22, v23, v24);
LABEL_21:
        swift_storeEnumTagMultiPayload(v17, v19, 1);
        goto LABEL_22;
      }

      v25 = type metadata accessor for URL(0);
      (*(*(v25 - 8) + 32))(v17, v18, v25);
      v33 = 1;
    }

    v24 = v33;
    v22 = v17;
    v23 = v35;
    goto LABEL_19;
  }

  memcpy(v17, v18, *(*(v19 - 8) + 64));
LABEL_22:
  *&__dst[v34[6]] = *&__src[v34[6]];
  *&__dst[v34[7]] = *&__src[v34[7]];
  *&__dst[v34[8]] = *&__src[v34[8]];
  v30 = v34[9];
  *&__dst[v30 + 16] = *&__src[v30 + 16];
  *&__dst[v30] = *&__src[v30];
  return __dst;
}

_BYTE *assignWithTake for MLSoundClassifier.PersistentParameters(_BYTE *__dst, _BYTE *__src, int *a3)
{
  if (__dst == __src)
  {
    goto LABEL_22;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.DataSource);
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  v36 = v6;
  if (EnumCaseMultiPayload == 4)
  {
    v12 = type metadata accessor for DataFrame(0);
    (*(*(v12 - 8) + 32))(__dst, __src, v12);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v13[12]] = *&__src[v13[12]];
    *&__dst[v13[16]] = *&__src[v13[16]];
    v14 = v13[20];
    v15 = *&__src[v14 + 16];
    *&__dst[v14] = *&__src[v14];
    *&__dst[v14 + 16] = v15;
    __dst[v14 + 32] = __src[v14 + 32];
    v33 = 4;
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = type metadata accessor for URL(0);
    (*(*(v11 - 8) + 32))(__dst, __src, v11);
    v33 = 1;
LABEL_8:
    v10 = v33;
    v9 = v6;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
    goto LABEL_11;
  }

  v8 = type metadata accessor for URL(0);
  (*(*(v8 - 8) + 32))(__dst, __src, v8);
  v9 = v6;
  v10 = 0;
LABEL_9:
  swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_11:
  v35 = a3;
  v16 = a3[5];
  v17 = &__dst[v16];
  v18 = &__src[v16];
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v19 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v34 = v19;
    v20 = swift_getEnumCaseMultiPayload(v18, v36);
    if (v20 == 4)
    {
      v26 = type metadata accessor for DataFrame(0);
      v21 = v17;
      (*(*(v26 - 8) + 32))(v17, v18, v26);
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      *&v17[v27[12]] = *&v18[v27[12]];
      *&v17[v27[16]] = *&v18[v27[16]];
      v28 = v27[20];
      v29 = *&v18[v28 + 16];
      *&v17[v28] = *&v18[v28];
      *&v17[v28 + 16] = v29;
      v17[v28 + 32] = v18[v28 + 32];
      v24 = 4;
      v25 = v17;
    }

    else
    {
      v21 = v17;
      if (v20 != 1)
      {
        a3 = v35;
        if (v20)
        {
          memcpy(v21, v18, *(*(v36 - 8) + 64));
        }

        else
        {
          v22 = type metadata accessor for URL(0);
          (*(*(v22 - 8) + 32))(v21, v18, v22);
          swift_storeEnumTagMultiPayload(v21, v36, 0);
        }

        goto LABEL_21;
      }

      v23 = type metadata accessor for URL(0);
      (*(*(v23 - 8) + 32))(v17, v18, v23);
      v24 = 1;
      v25 = v17;
    }

    swift_storeEnumTagMultiPayload(v25, v36, v24);
    a3 = v35;
LABEL_21:
    swift_storeEnumTagMultiPayload(v21, v34, 1);
    goto LABEL_22;
  }

  memcpy(v17, v18, *(*(v19 - 8) + 64));
  a3 = v35;
LABEL_22:
  *&__dst[a3[6]] = *&__src[a3[6]];
  *&__dst[a3[7]] = *&__src[a3[7]];
  *&__dst[a3[8]] = *&__src[a3[8]];
  v30 = a3[9];
  __dst[v30 + 8] = __src[v30 + 8];
  *&__dst[v30] = *&__src[v30];
  v31 = *&__dst[v30 + 16];
  *&__dst[v30 + 16] = *&__src[v30 + 16];
  v31;
  return __dst;
}

uint64_t sub_1A638E(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v6 = 0;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v4 = *(a3 + 20) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v8 = -1;
  if (((*(a1 + *(a3 + 36) + 16) >> 1) - 1) >= 0)
  {
    v8 = (*(a1 + *(a3 + 36) + 16) >> 1) - 1;
  }

  v9 = v8 + 1;
  if ((*(a1 + *(a3 + 36) + 16) & 0xFFFFFFFF00000001) == 0)
  {
    return v9;
  }

  return v6;
}

uint64_t sub_1A6436(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(v7 - 8) + 84) == a3)
  {
    v6 = *(a4 + 20) + a1;
    return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
  }

  result = *(a4 + 36);
  *(a1 + result + 16) = 2 * a2;
  return result;
}

uint64_t type metadata accessor for MLSoundClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLSoundClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.DataSource(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = &value witness table for Builtin.Int64 + 64;
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &unk_3445A8;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, a3, isUniquelyReferenced_nonNull_native);
    a3;
    result = v8;
    *v3 = v8;
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for Any?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Any?);
    return a3;
  }

  return result;
}

{
  v20 = v3;
  v19 = a3;
  v21 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLProgram.Block?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLProgram.Block(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (__swift_getEnumTagSinglePayload(a1, 1, v7) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for MLProgram.Block?);
    v12 = v19;
    specialized Dictionary._Variant.removeValue(forKey:)(v21, v19, &demangling cache variable for type metadata for _NativeDictionary<String, MLProgram.Block>, &type metadata accessor for MLProgram.Block);
    v12;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v17, &demangling cache variable for type metadata for MLProgram.Block?);
  }

  else
  {
    (*(v8 + 32))(&v17, a1, v7);
    v14 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v20);
    v18 = *v14;
    v16 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v17, v21, v19, isUniquelyReferenced_nonNull_native);
    v16;
    result = v18;
    *v14 = v18;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v2);
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v8;
    v4 = type metadata accessor for CodingUserInfoKey(0);
    return (*(*(v4 - 8) + 8))(a2, v4);
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for Sendable?);
    specialized Dictionary._Variant.removeValue(forKey:)(a2);
    v6 = type metadata accessor for CodingUserInfoKey(0);
    (*(*(v6 - 8) + 8))(a2, v6);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Sendable?);
  }
}

uint64_t MLSoundClassifier.PersistentParameters.init(trainingData:modelParameters:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v17 = v4[6];
  v19 = v4[7];
  v18 = v4[8];
  v5 = v4[9];
  *(v3 + v5) = 1;
  *(v3 + v5 + 8) = 1;
  v16 = v5;
  *(v3 + v5 + 16) = 0;
  v15 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, v3, type metadata accessor for MLSoundClassifier.DataSource);
  outlined init with copy of MLTrainingSessionParameters(a2, v3 + v4[5], type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *(v3 + v17) = *(a2 + v6[6]);
  *(v3 + v19) = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  *(v3 + v18) = *(a2 + v6[5]);
  outlined init with copy of Any?(a2 + v6[7], v10);
  if (!v11)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Any?);
    goto LABEL_5;
  }

  if (!swift_dynamicCast(&v12, v10, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
LABEL_5:
    v7 = 1;
    v18 = 1;
    v19 = 0;
    goto LABEL_6;
  }

  v18 = v12;
  v7 = v13;
  v19 = v14;
LABEL_6:
  outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLSoundClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v15, type metadata accessor for MLSoundClassifier.DataSource);
  v8 = v16;
  *(v3 + v16 + 16);
  *(v3 + v8) = v18;
  *(v3 + v8 + 8) = v7 & 1;
  result = v19;
  *(v3 + v8 + 16) = v19;
  return result;
}

NSURL *MLSoundClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v98 = v1;
  v101 = v2;
  v92 = a1;
  v3 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v86 = v78;
  v97 = type metadata accessor for URL(0);
  v94 = *(v97 - 8);
  v6 = *(v94 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v81 = v78;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v80 = v78;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v79 = v78;
  v83 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v83 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v82 = v78;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v87 = v78;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v93 = v78;
  v88 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v20 = *(*(v88 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v84 = v78;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v25, v107);
  *(inited + 16) = 5;
  *(inited + 24) = 10;
  *(inited + 32) = 0x676E696E69617274;
  *(inited + 40) = 0xE800000000000000;
  v27 = MLSoundClassifier.DataSource.dictionary.getter();
  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 72) = v99;
  *(inited + 48) = v27;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v28 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v29 = v101;
  v85 = v101 + v28[5];
  outlined init with copy of MLTrainingSessionParameters(v85, v93, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v100 = v28;
  v30 = v29;
  v89 = *(v29 + v28[8]);
  v90 = *(v29 + v28[6]);
  v31 = v28[9];
  v32 = *(v29 + v31);
  LOBYTE(v91) = *(v30 + v31 + 8);
  v95 = *(v30 + v31 + 16);
  v33 = v88;
  v34 = *(v88 + 28);
  *&v78[v34] = 0;
  *(&v80 + v34) = 0;
  v35 = *(v33 + 32);
  *&v78[v35] = 0;
  v96 = &v78[v34];
  v78[v35 + 8] = 1;
  *&v78[*(v33 + 36)] = 32;
  outlined init with copy of MLTrainingSessionParameters(v93, v78, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v36 = v88;
  *&v78[*(v88 + 20)] = v89;
  *&v78[*(v36 + 24)] = v90;
  v106 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *&v104 = v32;
  BYTE8(v104) = v91;
  v105 = v95;
  v95;
  outlined assign with take of Any?(&v104, v96);
  v37 = v93;
  outlined destroy of MLActivityClassifier.ModelParameters(v93, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  outlined init with copy of MLTrainingSessionParameters(v78, v37, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  outlined destroy of MLActivityClassifier.ModelParameters(v78, type metadata accessor for MLSoundClassifier.ModelParameters);
  v38 = MLSoundClassifier.ModelParameters.ValidationData.dictionary.getter();
  outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(inited + 120) = v99;
  *(inited + 96) = v38;
  *(inited + 128) = 0x70616C7265766FLL;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 168) = &type metadata for Double;
  *(inited + 144) = v90;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v89;
  *(inited + 224) = 0x687469726F676C61;
  *(inited + 232) = 0xE90000000000006DLL;
  v39 = *(v101 + v31);
  v40 = *(v101 + v31 + 8);
  v91 = v31;
  v41 = *(v101 + v31 + 16);
  *&v104 = v39;
  BYTE8(v104) = v40;
  v105 = v41;
  v41;
  v42 = MLSoundClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter();
  v41;
  *(inited + 264) = v99;
  *(inited + 240) = v42;
  v43 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v44 = *(v101 + *(v100 + 28));
  v106 = &type metadata for Double;
  *&v104 = v44.i64[0];
  outlined init with take of Any(&v104, v103);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v43);
  v102 = v43;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v103, 0xD000000000000010, ("sertion %d for CreateML\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  v46 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *&v104 = 0;
  v48 = [v46 dataWithPropertyList:isa format:200 options:0 error:&v104];
  v49 = v48;

  v50 = v104;
  if (!v49)
  {
    v56 = v50;
    _convertNSErrorToError(_:)(v50);

    swift_willThrow(v56, "dataWithPropertyList:format:options:error:");
    return __stack_chk_guard;
  }

  v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v49);
  v53 = v52;

  v54 = v79;
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v55 = v98;
  Data.write(to:options:)(v54, 0, v51, v53);
  if (!v55)
  {
    v96 = v53;
    v99 = 0;
    v95 = *(v94 + 8);
    *v44.i64 = v95(v54, v97);
    MLSoundClassifier.DataSource.table.getter(v44);
    v57 = BYTE8(v104);
    v100 = v51;
    if (BYTE8(v104) != 0xFF)
    {
      v98 = v104;
      BYTE8(v104) &= 1u;
      v58 = v80;
      URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
      v59 = v99;
      MLDataTable.write(to:)(v58);
      if (v59)
      {
        v95(v58, v97);
        outlined consume of Data._Representation(v100, v96);
        v60 = v57;
        v61 = v98;
LABEL_15:
        outlined consume of MLDataTable?(v61, v60);
        return __stack_chk_guard;
      }

      v99 = 0;
      v95(v58, v97);
      outlined consume of MLDataTable?(v98, v57);
    }

    v62 = v93;
    outlined init with copy of MLTrainingSessionParameters(v85, v93, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v98 = *(v101 + v91);
    LOBYTE(v94) = *(v101 + v91 + 8);
    v101 = *(v101 + v91 + 16);
    v63 = v88;
    v64 = *(v88 + 28);
    v65 = v84;
    v66 = v84;
    *&v84[v64 + 16] = 0;
    *&v66[v64] = 0;
    v67 = v63[8];
    *&v66[v67] = 0;
    v68 = &v66[v64];
    *(v65 + v67 + 8) = 1;
    *(v65 + v63[9]) = 32;
    outlined init with copy of MLTrainingSessionParameters(v62, v65, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    *(v65 + v63[5]) = v89;
    v69 = v90;
    *(v65 + v63[6]) = v90;
    v106 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    *&v104 = v98;
    BYTE8(v104) = v94;
    v105 = v101;
    v101;
    outlined assign with take of Any?(&v104, v68);
    outlined destroy of MLActivityClassifier.ModelParameters(v62, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v70 = v87;
    outlined init with copy of MLTrainingSessionParameters(v65, v87, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    outlined destroy of MLActivityClassifier.ModelParameters(v65, type metadata accessor for MLSoundClassifier.ModelParameters);
    v71 = v82;
    outlined init with copy of MLTrainingSessionParameters(v70, v82, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v72 = -1;
    switch(swift_getEnumCaseMultiPayload(v71, v83))
    {
      case 0u:
      case 3u:
        goto LABEL_12;
      case 1u:
        v73 = v86;
        outlined init with take of MLClassifierMetrics(v71, v86, type metadata accessor for MLSoundClassifier.DataSource);
        MLSoundClassifier.DataSource.table.getter(v69);
        v70 = v87;
        outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLSoundClassifier.DataSource);
        v74 = v104;
        v72 = BYTE8(v104);
        break;
      case 2u:
        outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
LABEL_12:
        v74 = 0;
        break;
    }

    v75 = v100;
    outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v76 = v81;
    if (v72 == -1)
    {
      outlined consume of Data._Representation(v75, v96);
      return __stack_chk_guard;
    }

    *&v104 = v74;
    BYTE8(v104) = v72 & 1;
    v101 = v74;
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
    MLDataTable.write(to:)(v76);
    v95(v76, v97);
    outlined consume of Data._Representation(v100, v96);
    v60 = v72;
    v61 = v101;
    goto LABEL_15;
  }

  (*(v94 + 8))(v54, v97);
  outlined consume of Data._Representation(v51, v53);
  return __stack_chk_guard;
}

NSURL *MLSoundClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t *a1)
{
  v108 = v2;
  v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v96 = &v92;
  v103 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v103 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v97 = &v92;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.DataSource?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v93 = &v92;
  v94 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v13 = *(*(v94 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v95 = &v92;
  v113 = type metadata accessor for URL(0);
  v107 = *(v113 - 8);
  v16 = *(v107 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v105 = &v92;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v102 = &v92;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v110 = &v92;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v25 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v26 = *(v25 + 36);
  *(v3 + v26) = 1;
  *(v3 + v26 + 8) = 1;
  v109 = v3;
  v101 = v26;
  *(v3 + v26 + 16) = 0;
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v27 = v108;
  v28 = Data.init(contentsOf:options:)(&v92, 0);
  v108 = v27;
  if (!v27)
  {
    v32 = v29;
    v106 = v25;
    v116 = a1;
    v33 = *(v107 + 8);
    v34 = v28;
    v33(&v92, v113);
    v35 = objc_opt_self(NSPropertyListSerialization);
    v115 = v34;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v114 = v32;
    v119 = 0;
    v37 = [v35 propertyListWithData:isa options:0 format:0 error:&v119];
    v38 = v37;

    v39 = v119;
    if (!v38)
    {
      v44 = v39;
      _convertNSErrorToError(_:)(v39);

      swift_willThrow(v44, "propertyListWithData:options:format:error:");
      outlined consume of Data._Representation(v115, v114);
      v33(v116, v113);
      goto LABEL_20;
    }

    v112 = v33;
    _bridgeAnyObjectToAny(_:)(v38);
    swift_unknownObjectRelease(v38);
    outlined init with copy of Any(v123, &v119);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    if (!swift_dynamicCast(&v118, &v119, &type metadata for Any + 8, v40, 6))
    {
      v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
      *v46 = 0xD000000000000037;
      *(v46 + 8) = "parameters.plist" + 0x8000000000000000;
      *(v46 + 16) = 0;
      *(v46 + 32) = 0;
      *(v46 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v45);
      outlined consume of Data._Representation(v115, v114);
      v47 = v116;
LABEL_18:
      v112(v47, v113);
      goto LABEL_19;
    }

    v111 = &type metadata for Any + 8;
    v104 = v40;
    v41 = v118;
    specialized Dictionary.subscript.getter(0x70616C7265766FLL, 0xE700000000000000, v118);
    v42 = v116;
    if (!v122)
    {
      goto LABEL_15;
    }

    v117 = v41;
    if (swift_dynamicCast(&v118, &v119, v111, &type metadata for Double, 6))
    {
      v98 = v118;
      v41 = v117;
      specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v117);
      if (!v122)
      {
        goto LABEL_15;
      }

      if (swift_dynamicCast(&v118, &v119, v111, &type metadata for Int, 6))
      {
        v99 = v118;
        v41 = v117;
        specialized Dictionary.subscript.getter(0x687469726F676C61, 0xE90000000000006DLL, v117);
        if (v122)
        {
          if (swift_dynamicCast(&v118, &v119, v111, v104, 6))
          {
            MLSoundClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(v118);
            v43 = v121;
            if (v121 != 2)
            {
              v100 = v119;
              v51 = v120;
              specialized Dictionary.subscript.getter(0xD000000000000010, ("sertion %d for CreateML\n" + 0x8000000000000000), v117);
              if (v122)
              {
                v52 = swift_dynamicCast(&v118, &v119, v111, &type metadata for Double, 6);
                v53 = v106;
                if (v52)
                {
                  v54 = v118;
                }

                else
                {
                  v54 = 0x3FEF333333333333;
                }
              }

              else
              {
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
                v54 = 0x3FEF333333333333;
                v53 = v106;
              }

              v55 = v53[6];
              v56 = v53[7];
              v57 = v53[8];
              v58 = v109;
              *(v109 + v56) = v54;
              *(v58 + v57) = v99;
              *(v58 + v55) = v98;
              v59 = v101;
              *(v58 + v101 + 16);
              *(v58 + v59) = v100;
              *(v58 + v59 + 8) = v51 & 1;
              *(v58 + v59 + 16) = v43;
              v60 = v110;
              URL.appendingPathComponent(_:)(1635017060, 0xE400000000000000);
              v61 = v117;
              specialized Dictionary.subscript.getter(0x676E696E69617274, 0xE800000000000000, v117);
              if (v122)
              {
                v62 = swift_dynamicCast(&v118, &v119, v111, v104, 6);
                v63 = v113;
                if (v62)
                {
                  v64 = v118;
                  v65 = v102;
                  v107 = *(v107 + 16);
                  (v107)(v102, v60, v113);
                  v66 = v65;
                  v67 = v93;
                  MLSoundClassifier.DataSource.init(dictionary:tableFile:)(v64, v66);
                  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v94);
                  v69 = v116;
                  if (EnumTagSinglePayload != 1)
                  {
                    v77 = v95;
                    outlined init with take of MLClassifierMetrics(v67, v95, type metadata accessor for MLSoundClassifier.DataSource);
                    outlined init with take of MLClassifierMetrics(v77, v109, type metadata accessor for MLSoundClassifier.DataSource);
                    v78 = v105;
                    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
                    v79 = v117;
                    specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v117);
                    v79;
                    if (v122)
                    {
                      if (swift_dynamicCast(&v118, &v119, v111, v104, 6))
                      {
                        v80 = v118;
                        v81 = v102;
                        v82 = v113;
                        (v107)(v102, v78, v113);
                        v83 = v96;
                        MLSoundClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v80, v81);
                        if (__swift_getEnumTagSinglePayload(v83, 1, v103) != 1)
                        {
                          outlined consume of Data._Representation(v115, v114);
                          v90 = v112;
                          v112(v116, v82);
                          v90(v105, v82);
                          v90(v110, v82);
                          __swift_destroy_boxed_opaque_existential_1Tm(v123);
                          v91 = v97;
                          outlined init with take of MLClassifierMetrics(v83, v97, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
                          outlined init with take of MLClassifierMetrics(v91, v106[5] + v109, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
                          return __stack_chk_guard;
                        }

                        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for MLSoundClassifier.ModelParameters.ValidationData?);
                        v84 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                        swift_allocError(&type metadata for MLCreateError, v84, 0, 0);
                        *v85 = 0xD000000000000037;
                        *(v85 + 8) = "ion Classification algorithm." + 0x8000000000000000;
                        *(v85 + 16) = 0;
                        *(v85 + 32) = 0;
                        *(v85 + 48) = 0;
                        swift_willThrow(&type metadata for MLCreateError, v84);
                        outlined consume of Data._Representation(v115, v114);
                        v86 = v112;
                        v112(v116, v82);
                        v86(v105, v82);
                        v86(v110, v82);
                        __swift_destroy_boxed_opaque_existential_1Tm(v123);
                        outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLSoundClassifier.DataSource);
                        goto LABEL_20;
                      }

                      outlined consume of Data._Representation(v115, v114);
                    }

                    else
                    {
                      outlined consume of Data._Representation(v115, v114);
                      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
                    }

                    v87 = v103;
                    v88 = v113;
                    v89 = v112;
                    v112(v116, v113);
                    v89(v105, v88);
                    v89(v110, v88);
                    __swift_destroy_boxed_opaque_existential_1Tm(v123);
                    swift_storeEnumTagMultiPayload(v106[5] + v109, v87, 3);
                    return __stack_chk_guard;
                  }

                  v117;
                  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for MLSoundClassifier.DataSource?);
                  v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                  swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
                  *v71 = 0xD000000000000035;
                  *(v71 + 8) = "o load validation data." + 0x8000000000000000;
                  *(v71 + 16) = 0;
                  *(v71 + 32) = 0;
                  *(v71 + 48) = 0;
                  swift_willThrow(&type metadata for MLCreateError, v70);
                  outlined consume of Data._Representation(v115, v114);
                  v72 = v112;
                  v112(v69, v63);
                  v72(v110, v63);
                  goto LABEL_19;
                }

                v61;
                v74 = v112;
                v73 = v63;
              }

              else
              {
                v61;
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
                v73 = v113;
                v74 = v112;
              }

              v75 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v75, 0, 0);
              *v76 = 0xD00000000000002ELL;
              *(v76 + 8) = "audioFeaturePrint" + 0x8000000000000000;
              *(v76 + 16) = 0;
              *(v76 + 32) = 0;
              *(v76 + 48) = 0;
              swift_willThrow(&type metadata for MLCreateError, v75);
              outlined consume of Data._Representation(v115, v114);
              v74(v116, v73);
              v74(v110, v73);
LABEL_19:
              __swift_destroy_boxed_opaque_existential_1Tm(v123);
              goto LABEL_20;
            }

            v117;
            v42 = v116;
            goto LABEL_17;
          }

          goto LABEL_16;
        }

LABEL_15:
        v41;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v119, &demangling cache variable for type metadata for Any?);
LABEL_17:
        v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
        *v49 = 0xD000000000000034;
        *(v49 + 8) = "ad training parameters." + 0x8000000000000000;
        *(v49 + 16) = 0;
        *(v49 + 32) = 0;
        *(v49 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v48);
        outlined consume of Data._Representation(v115, v114);
        v47 = v42;
        goto LABEL_18;
      }
    }

LABEL_16:
    v117;
    goto LABEL_17;
  }

  v30 = *(v107 + 8);
  v31 = v113;
  v30(a1, v113);
  v30(&v92, v31);
LABEL_20:
  *(v109 + v101 + 16);
  return __stack_chk_guard;
}

uint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.init(dictionary:)(uint64_t a1)
{
  v3 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_40;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_40;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v4, v31);
  if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_40;
  }

  v37 = v34;
  v6 = v35;
  specialized Dictionary.subscript.getter(0x6E6F6973726576, 0xE700000000000000, a1);
  if (v32)
  {
    if (!swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for Int, 6))
    {
      goto LABEL_15;
    }

    v33 = v34;
    specialized Dictionary.subscript.getter(0x6966697373616C63, 0xEA00000000007265, a1);
    if (v32)
    {
      if (swift_dynamicCast(&v34, v31, &type metadata for Any + 8, &type metadata for String, 6))
      {
        v7 = v34;
        v8 = v35;
        LOBYTE(v36) = (v37 ^ 0x687369676776 | v6 ^ 0xE600000000000000) == 0;
        v39 = v35;
        v38 = v34;
        if (!(v37 ^ 0x687369676776 | v6 ^ 0xE600000000000000) || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(0x687369676776, 0xE600000000000000, v37, v6, 0), v7 = v38, v10 = v37, v8 = v39, (v9 & 1) != 0))
        {
          if (!(v7 ^ 0xD000000000000012 | v8 ^ (&aLogisticRegres_0[-32] | 0x8000000000000000)) || (v11 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aLogisticRegres_0[-32] | 0x8000000000000000, v7, v8, 0), v12 = v38, v10 = v37, v8 = v39, (v11 & 1) != 0))
          {
            v13 = v8;
            v6;
            a1;
            v13;
            result = v33;
            *v3 = v33;
            *(v3 + 8) = 0;
            return result;
          }

          if (v36)
          {
            goto LABEL_45;
          }
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)(0x687369676776, 0xE600000000000000, v10, v6, 0);
        v12 = v38;
        v17 = v37;
        v8 = v39;
        if (v16)
        {
LABEL_45:
          if (!(v12 ^ 0xD000000000000015 | v8 ^ (&aMultilayerPerc_0[-32] | 0x8000000000000000)) || (v18 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000015, &aMultilayerPerc_0[-32] | 0x8000000000000000, v12, v8, 0), v12 = v38, v17 = v37, v8 = v39, (v18 & 1) != 0))
          {
            v19 = v8;
            specialized Dictionary.subscript.getter(0x69735F726579616CLL, 0xEB0000000073657ALL, a1);
            v19;
            v6;
            a1;
            if (v32)
            {
              v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
              result = swift_dynamicCast(&v34, v31, &type metadata for Any + 8, v20, 6);
              if (result)
              {
                result = v34;
                *v3 = v33;
                *(v3 + 8) = 0;
LABEL_23:
                *(v3 + 16) = result;
                return result;
              }

              goto LABEL_42;
            }

            goto LABEL_14;
          }
        }

        v21 = 0xD000000000000013;
        v22 = v17 ^ 0xD000000000000013 | v6 ^ (&aAudioFeaturePr_0[-32] | 0x8000000000000000);
        v40 = v22 == 0;
        if (v22)
        {
          v36 = 0xD000000000000013;
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aAudioFeaturePr_0[-32] | 0x8000000000000000, v17, v6, 0);
          v21 = v36;
          v12 = v38;
          v24 = v37;
          v8 = v39;
          if ((v23 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        if (!(v12 ^ 0xD000000000000012 | v8 ^ (&aLogisticRegres_0[-32] | 0x8000000000000000)) || (v36 = v21, v25 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aLogisticRegres_0[-32] | 0x8000000000000000, v12, v8, 0), v21 = v36, v26 = v38, v24 = v37, v8 = v39, (v25 & 1) != 0))
        {
          v27 = v8;
          v6;
          a1;
          v27;
          result = v33;
          *v3 = v33;
          *(v3 + 8) = 1;
          *(v3 + 16) = 0;
          return result;
        }

        if (!v40)
        {
LABEL_30:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)(v21, &aAudioFeaturePr_0[-32] | 0x8000000000000000, v24, v6, 0) & 1) == 0)
          {
            goto LABEL_38;
          }

          v8 = v39;
          v26 = v38;
        }

        if (v26 ^ 0xD000000000000015 | v8 ^ (&aMultilayerPerc_0[-32] | 0x8000000000000000))
        {
          v28 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000015, &aMultilayerPerc_0[-32] | 0x8000000000000000, v26, v8, 0);
          v29 = v39;
          if ((v28 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xCuLL, 0, 0, 0xFuLL, 0, 0))
        {
          specialized Dictionary.subscript.getter(0x69735F726579616CLL, 0xEB0000000073657ALL, a1);
          v39;
          v6;
          a1;
          if (v32)
          {
            v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
            result = swift_dynamicCast(&v34, v31, &type metadata for Any + 8, v30, 6);
            if (result)
            {
              result = v34;
              *v3 = v33;
              *(v3 + 8) = 1;
              goto LABEL_23;
            }

            goto LABEL_42;
          }

          goto LABEL_14;
        }

LABEL_38:
        v29 = v39;
LABEL_39:
        v29;
        v6;
LABEL_40:
        v15 = a1;
        goto LABEL_41;
      }

LABEL_15:
      a1;
      v15 = v6;
LABEL_41:
      result = v15;
      goto LABEL_42;
    }
  }

  a1;
  v6;
LABEL_14:
  result = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, &demangling cache variable for type metadata for Any?);
LABEL_42:
  *v3 = 0;
  *(v3 + 16) = 2;
  return result;
}

uint64_t MLSoundClassifier.DataSource.init(dictionary:tableFile:)(uint64_t *a1, uint64_t a2)
{
  v74 = a2;
  v3 = v2;
  v68 = type metadata accessor for URL(0);
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  if (a1[2])
  {
    v64 = &v44;
    v75 = v4;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
    if (v13)
    {
      v71 = v8;
      outlined init with copy of Any(a1[7] + 32 * v12, v45);
      v67 = &type metadata for Any + 8;
      if (swift_dynamicCast(__src, v45, &type metadata for Any + 8, &type metadata for String, 6))
      {
        v70 = v3;
        v14 = __src[0];
        if (!(*&__src[0] ^ 0xD000000000000013 | *(&__src[0] + 1) ^ (&aLabeledDirecto[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aLabeledDirecto[-32] | 0x8000000000000000, *&__src[0], *(&__src[0] + 1), 0) & 1) != 0)
        {
          *(&v14 + 1);
          specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
          a1;
          v3 = v70;
          v15 = v68;
          if (v46)
          {
            v16 = swift_dynamicCast(__src, v45, v67, &type metadata for String, 6);
            v8 = v71;
            if (v16)
            {
              v17 = *(&__src[0] + 1);
              v18 = v64;
              URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
              v17;
              (*(v75 + 8))(v74, v15);
              v19 = v18;
              v20 = v8;
              v21 = 0;
LABEL_22:
              swift_storeEnumTagMultiPayload(v19, v20, v21);
LABEL_23:
              outlined init with take of MLClassifierMetrics(v18, v3, type metadata accessor for MLSoundClassifier.DataSource);
              v22 = 0;
              return __swift_storeEnumTagSinglePayload(v3, v22, 1, v8);
            }

            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (!(v14 ^ 0x5F64656C6562616CLL | *(&v14 + 1) ^ 0xED000073656C6966) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x5F64656C6562616CLL, 0xED000073656C6966, v14, *(&v14 + 1), 0) & 1) != 0)
        {
          *(&v14 + 1);
          specialized Dictionary.subscript.getter(1752457584, 0xE400000000000000, a1);
          a1;
          v3 = v70;
          v15 = v68;
          if (!v46)
          {
LABEL_24:
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for Any?);
            v8 = v71;
            goto LABEL_25;
          }

          v24 = swift_dynamicCast(__src, v45, v67, &type metadata for String, 6);
          v8 = v71;
          if (v24)
          {
            v25 = *(&__src[0] + 1);
            v18 = v64;
            URL.init(fileURLWithPath:)(*&__src[0], *(&__src[0] + 1));
            v25;
            (*(v75 + 8))(v74, v15);
            v43 = 1;
LABEL_21:
            v21 = v43;
            v19 = v18;
            v20 = v8;
            goto LABEL_22;
          }

          goto LABEL_25;
        }

        if (!(v14 ^ 0x79625F73656C6966 | *(&v14 + 1) ^ 0xEE006C6562616C5FLL) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x79625F73656C6966, 0xEE006C6562616C5FLL, v14, *(&v14 + 1), 0) & 1) != 0)
        {
          *(&v14 + 1);
          specialized Dictionary.subscript.getter(0x73656C6966, 0xE500000000000000, a1);
          a1;
          v3 = v70;
          v8 = v71;
          v15 = v68;
          if (!v46)
          {
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v45, &demangling cache variable for type metadata for Any?);
            goto LABEL_25;
          }

          v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
          if (swift_dynamicCast(__src, v45, v67, v26, 6))
          {
            v27 = *&__src[0];
            v28 = specialized _NativeDictionary.mapValues<A>(_:)(*&__src[0]);
            v3 = v70;
            v29 = v28;
            v27;
            (*(v75 + 8))(v74, v15);
            v18 = v64;
            *v64 = v29;
            v8 = v71;
            v43 = 2;
            goto LABEL_21;
          }

LABEL_25:
          (*(v75 + 8))(v74, v15);
          goto LABEL_14;
        }

        if (v14 ^ 0x7365727574616566 | *(&v14 + 1) ^ 0xE800000000000000)
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x7365727574616566, 0xE800000000000000, v14, *(&v14 + 1), 0);
          *(&v14 + 1);
          v30 = v75;
          if ((v31 & 1) == 0)
          {
            (*(v75 + 8))(v74, v68);
            a1;
            goto LABEL_52;
          }
        }

        else
        {
          *(&v14 + 1);
          v30 = v75;
        }

        v69 = &v44;
        v32 = v68;
        (*(v30 + 16))(&v44, v74, v68);
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
        LOBYTE(v45[0]) = 1;
        v45[1] = 44;
        v45[2] = 0xE100000000000000;
        v46 = 0;
        v47 = 0xE000000000000000;
        v48 = 92;
        v49 = 0xE100000000000000;
        v50 = 1;
        v51 = 34;
        v52 = 0xE100000000000000;
        v53 = 1;
        v54 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        v55 = 10;
        v56 = 0xE100000000000000;
        v57 = 0;
        v58 = 1;
        v59 = 0;
        outlined retain of MLDataTable.ParsingOptions(__src);
        outlined release of MLDataTable.ParsingOptions(v45, 0xE000000000000000);
        memcpy(__dst, __src, sizeof(__dst));
        MLDataTable.init(contentsOf:options:)(v69, __dst);
        v33 = v65;
        v34 = v66;
        specialized Dictionary.subscript.getter(0x5F65727574616566, 0xEE006E6D756C6F63, a1);
        if (__dst[3])
        {
          if (!swift_dynamicCast(&v65, __dst, v67, &type metadata for String, 6))
          {
            outlined consume of Result<_DataTable, Error>(v33, v34);
LABEL_49:
            a1;
            goto LABEL_50;
          }

          v62 = v65;
          v69 = v66;
          specialized Dictionary.subscript.getter(0x6F635F6C6562616CLL, 0xEC0000006E6D756CLL, a1);
          if (__dst[3])
          {
            if (swift_dynamicCast(&v65, __dst, v67, &type metadata for String, 6))
            {
              v63 = v65;
              v35 = v66;
              specialized Dictionary.subscript.getter(0x6574656D61726170, 0xEA00000000007372, a1);
              a1;
              if (__dst[3])
              {
                v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
                if (swift_dynamicCast(&v65, __dst, v67, v36, 6))
                {
                  MLSoundClassifier.FeatureExtractionParameters.init(dictionary:)(v65);
                  (*(v75 + 8))(v74, v68);
                  if (LOBYTE(__dst[4]) != 0xFF)
                  {
                    v37 = __dst[3];
                    v38 = __dst[1];
                    v39 = __dst[0];
                    LOBYTE(v65) = v34 & 1;
                    v72 = __dst[2] & 1;
                    v73 = __dst[4] & 1;
                    v18 = v64;
                    *v64 = v33;
                    *(v18 + 8) = v65;
                    *(v18 + 16) = v62;
                    *(v18 + 24) = v69;
                    *(v18 + 32) = v63;
                    *(v18 + 40) = v35;
                    *(v18 + 48) = v39;
                    *(v18 + 56) = v38;
                    *(v18 + 64) = v72;
                    *(v18 + 72) = v37;
                    *(v18 + 80) = v73;
                    v8 = v71;
                    swift_storeEnumTagMultiPayload(v18, v71, 3);
                    v3 = v70;
                    goto LABEL_23;
                  }

                  v35;
                  v69;
                  outlined consume of Result<_DataTable, Error>(v33, v34);
LABEL_52:
                  v22 = 1;
                  v3 = v70;
                  v8 = v71;
                  return __swift_storeEnumTagSinglePayload(v3, v22, 1, v8);
                }

                outlined consume of Result<_DataTable, Error>(v33, v34);
                v35;
                v69;
              }

              else
              {
                outlined consume of Result<_DataTable, Error>(v33, v34);
                v35;
                v69;
                outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
              }

              v41 = v74;
              v42 = v68;
              v40 = v75;
LABEL_51:
              (*(v40 + 8))(v41, v42);
              goto LABEL_52;
            }

            outlined consume of Result<_DataTable, Error>(v33, v34);
            a1;
            a1 = v69;
            goto LABEL_49;
          }

          outlined consume of Result<_DataTable, Error>(v33, v34);
          a1;
          a1 = v69;
        }

        else
        {
          outlined consume of Result<_DataTable, Error>(v33, v34);
        }

        a1;
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(__dst, &demangling cache variable for type metadata for Any?);
LABEL_50:
        v40 = v75;
        v41 = v74;
        v42 = v32;
        goto LABEL_51;
      }

      a1;
      v8 = v71;
    }

    else
    {
      a1;
    }

    v4 = v75;
  }

  else
  {
    a1;
  }

  (*(v4 + 8))(v74, v68);
LABEL_14:
  v22 = 1;
  return __swift_storeEnumTagSinglePayload(v3, v22, 1, v8);
}

uint64_t MLSoundClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v52 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v47 = &v37;
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v19 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = v3;
  outlined init with copy of Any(*(a1 + 56) + 32 * v19, &v41);
  v49 = (&type metadata for Any + 8);
  if (!swift_dynamicCast(&v45, &v41, &type metadata for Any + 8, &type metadata for String, 6))
  {
    v3 = v51;
    goto LABEL_9;
  }

  v21 = v46;
  if (v45 ^ 0x656E6F6E | v46 ^ 0xE400000000000000)
  {
    v48 = v45;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(1701736302, 0xE400000000000000, v45, v46, 0) & 1) == 0)
    {
      if (!(v48 ^ 0x756F735F61746164 | v21 ^ 0xEB00000000656372) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x756F735F61746164, 0xEB00000000656372, v48, v21, 0) & 1) != 0)
      {
        v21;
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v27, 6))
          {
            v49 = v45;
            v28 = v39;
            (*(v5 + 16))(v39, v50, v4);
            v29 = v38;
            MLSoundClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for MLSoundClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLSoundClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLSoundClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any?);
        }

        v3 = v51;
        (*(v5 + 8))(v50, v4);
        goto LABEL_10;
      }

      if (!(v48 ^ 0x74696C7073 | v21 ^ 0xE500000000000000))
      {
        v21;
        v3 = v51;
        goto LABEL_24;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)(0x74696C7073, 0xE500000000000000, v48, v21, 0);
      v21;
      v3 = v51;
      if (v31)
      {
LABEL_24:
        specialized Dictionary.subscript.getter(1635017060, 0xE400000000000000, a1);
        a1;
        if (v44)
        {
          v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
          if (swift_dynamicCast(&v45, &v41, v49, v32, 6))
          {
            MLSplitStrategy.init(dictionary:)(v45);
            (*(v5 + 8))(v50, v4);
            if (!v43)
            {
              v33 = v42;
              v24 = v47;
              *v47 = v41;
              *(v24 + 16) = v33;
              *(v24 + 17) = HIBYTE(v33) & 1;
              v22 = 0;
              goto LABEL_29;
            }

LABEL_10:
            v25 = 1;
LABEL_11:
            v23 = v52;
            return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
          }
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v41, &demangling cache variable for type metadata for Any?);
        }

        v23 = v52;
        (*(v5 + 8))(v50, v4);
        v25 = 1;
        return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
      }

LABEL_9:
      (*(v5 + 8))(v50, v4);
      a1;
      goto LABEL_10;
    }
  }

  (*(v5 + 8))(v50, v4);
  a1;
  v21;
  v22 = 3;
  v23 = v52;
  v24 = v47;
LABEL_7:
  swift_storeEnumTagMultiPayload(v24, v23, v22);
  v3 = v51;
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

uint64_t MLSoundClassifier.DataSource.dictionary.getter()
{
  v1 = v0;
  v55 = type metadata accessor for URL(0);
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLTrainingSessionParameters(v1, &v35, type metadata accessor for MLSoundClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v35, v6))
  {
    case 0u:
      v10 = v55;
      v56 = v2;
      (*(v2 + 32))(&v35, &v35, v55);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v11, v45);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      v13 = "session_id_column" + 0x8000000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0xD000000000000013;
      goto LABEL_9;
    case 1u:
      v10 = v55;
      v56 = v2;
      (*(v2 + 32))(&v35, &v35, v55);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      inited = swift_initStackObject(v11, v44);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x5F64656C6562616CLL;
      v13 = 0xED000073656C6966;
LABEL_9:
      inited[7] = v13;
      inited[10] = 1752457584;
      inited[11] = 0xE400000000000000;
      v32 = URL.path.getter(v11);
      inited[15] = &type metadata for String;
      inited[12] = v32;
      inited[13] = v33;
      v31 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      (*(v56 + 8))(&v35, v10);
      return v31;
    case 2u:
      v22 = v35;
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v24 = swift_initStackObject(v23, v43);
      *(v24 + 16) = 2;
      *(v24 + 24) = 4;
      *(v24 + 32) = 1684957547;
      *(v24 + 40) = 0xE400000000000000;
      *(v24 + 72) = &type metadata for String;
      strcpy((v24 + 48), "files_by_label");
      *(v24 + 63) = -18;
      *(v24 + 80) = 0x73656C6966;
      *(v24 + 88) = 0xE500000000000000;
      v25 = specialized _NativeDictionary.mapValues<A>(_:)(v22);
      v22;
      *(v24 + 120) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
      *(v24 + 96) = v25;
      v26 = &type metadata for Any + 8;
      v27 = v24;
      return Dictionary.init(dictionaryLiteral:)(v27, &type metadata for String, v26, &protocol witness table for String);
    case 3u:
      v54 = v37;
      v16 = v38;
      v52 = v39[0];
      v53 = v39[1];
      v55 = v39[2];
      v56 = v39[3];
      v19 = v40;
      v51 = v41;
      v20 = v42;
      outlined consume of Result<_DataTable, Error>(v35, v36);
      goto LABEL_6;
    case 4u:
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v15 = v14[12];
      v54 = *(&v35 + v15);
      v16 = *(&v35 + v15 + 8);
      v17 = v14[16];
      v52 = *(&v35 + v17);
      v53 = *(&v35 + v17 + 8);
      v18 = v14[20];
      v55 = *(&v35 + v18);
      v56 = *(&v35 + v18 + 8);
      v19 = *(&v37 + v18);
      v51 = *(&v39[-1] + v18);
      v20 = *(v39 + v18);
      v21 = type metadata accessor for DataFrame(0);
      (*(*(v21 - 8) + 8))(&v35, v21);
LABEL_6:
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v29 = swift_initStackObject(v28, &v37);
      *(v29 + 16) = 4;
      *(v29 + 24) = 8;
      *(v29 + 32) = 1684957547;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 72) = &type metadata for String;
      *(v29 + 48) = 0x7365727574616566;
      *(v29 + 56) = 0xE800000000000000;
      strcpy((v29 + 80), "feature_column");
      *(v29 + 95) = -18;
      *(v29 + 120) = &type metadata for String;
      *(v29 + 96) = v54;
      *(v29 + 104) = v16;
      strcpy((v29 + 128), "label_column");
      *(v29 + 141) = 0;
      *(v29 + 142) = -5120;
      *(v29 + 168) = &type metadata for String;
      *(v29 + 144) = v52;
      *(v29 + 152) = v53;
      *(v29 + 176) = 0x6574656D61726170;
      *(v29 + 184) = 0xEA00000000007372;
      v46 = v55;
      v47 = v56;
      v48 = v19 & 1;
      v49 = v51;
      v50 = v20 & 1;
      v30 = MLSoundClassifier.FeatureExtractionParameters.dictionary.getter();
      *(v29 + 216) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      *(v29 + 192) = v30;
      v26 = &type metadata for Any + 8;
      v27 = v29;
      return Dictionary.init(dictionaryLiteral:)(v27, &type metadata for String, v26, &protocol witness table for String);
    case 5u:
      JUMPOUT(0x1A98C8);
  }
}

uint64_t MLSoundClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLTrainingSessionParameters(v0, &v26, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(&v26, v5))
  {
    case 0u:
      v9 = v27;
      v10 = v28;
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v35 = v26;
      inited = swift_initStackObject(v11, &v26);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x74696C7073;
      inited[7] = 0xE500000000000000;
      inited[10] = 1635017060;
      inited[11] = 0xE400000000000000;
      v32 = v35;
      v33 = v9;
      v34 = v10;
      v13 = MLSplitStrategy.dictionary.getter();
      inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      inited[12] = v13;
      v14 = &type metadata for Any + 8;
      v15 = inited;
      goto LABEL_5;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v26, &v26, type metadata accessor for MLSoundClassifier.DataSource);
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v23 = swift_initStackObject(v22, v30);
      v23[2] = 2;
      v23[3] = 4;
      v23[4] = 1684957547;
      v23[5] = 0xE400000000000000;
      v23[9] = &type metadata for String;
      v23[6] = 0x756F735F61746164;
      v23[7] = 0xEB00000000656372;
      v23[10] = 1635017060;
      v23[11] = 0xE400000000000000;
      v24 = MLSoundClassifier.DataSource.dictionary.getter();
      v23[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v23[12] = v24;
      v19 = Dictionary.init(dictionaryLiteral:)(v23, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      goto LABEL_7;
    case 2u:
      swift_storeEnumTagMultiPayload(&v26, v1, 2);
      v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v17 = swift_initStackObject(v16, v29);
      v17[2] = 2;
      v17[3] = 4;
      v17[4] = 1684957547;
      v17[5] = 0xE400000000000000;
      v17[9] = &type metadata for String;
      v17[6] = 0x756F735F61746164;
      v17[7] = 0xEB00000000656372;
      v17[10] = 1635017060;
      v17[11] = 0xE400000000000000;
      v18 = MLSoundClassifier.DataSource.dictionary.getter();
      v17[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v17[12] = v18;
      v19 = Dictionary.init(dictionaryLiteral:)(v17, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
LABEL_7:
      outlined destroy of MLActivityClassifier.ModelParameters(&v26, type metadata accessor for MLSoundClassifier.DataSource);
      break;
    case 3u:
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v21 = swift_initStackObject(v20, v31);
      v21[2] = 1;
      v21[3] = 2;
      v21[4] = 1684957547;
      v21[5] = 0xE400000000000000;
      v21[9] = &type metadata for String;
      v21[6] = 1701736302;
      v21[7] = 0xE400000000000000;
      v14 = &type metadata for Any + 8;
      v15 = v21;
LABEL_5:
      v19 = Dictionary.init(dictionaryLiteral:)(v15, &type metadata for String, v14, &protocol witness table for String);
      break;
  }

  return v19;
}

uint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.dictionary.getter()
{
  v24 = *v0;
  v23 = v0[2];
  v1 = *(v0 + 8);
  v2 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v21 = &type metadata for String;
  if (v1)
  {
    *&v20 = 0xD000000000000013;
    *(&v20 + 1) = "time_window_size" + 0x8000000000000000;
    outlined init with take of Any(&v20, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
    v25 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v4 = v25;
    v21 = &type metadata for String;
    *&v20 = 0x646E756F73;
    *(&v20 + 1) = 0xE500000000000000;
    outlined init with take of Any(&v20, v22);
    v5 = swift_isUniquelyReferenced_nonNull_native(v4);
    v25 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1701869940, 0xE400000000000000, v5);
    v6 = v25;
    v21 = &type metadata for Int;
    *&v20 = v24;
    outlined init with take of Any(&v20, v22);
    v7 = swift_isUniquelyReferenced_nonNull_native(v6);
    v25 = v6;
  }

  else
  {
    *&v20 = 0x687369676776;
    *(&v20 + 1) = 0xE600000000000000;
    outlined init with take of Any(&v20, v22);
    v8 = swift_isUniquelyReferenced_nonNull_native(v2);
    v25 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1684957547, 0xE400000000000000, v8);
    v9 = v25;
    v21 = &type metadata for Int;
    *&v20 = v24;
    outlined init with take of Any(&v20, v22);
    v7 = swift_isUniquelyReferenced_nonNull_native(v9);
    v25 = v9;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6E6F6973726576, 0xE700000000000000, v7);
  v10 = v25;
  v11 = v23;
  v21 = &type metadata for String;
  if (v23)
  {
    *&v20 = 0xD000000000000015;
    *(&v20 + 1) = "audio_feature_print" + 0x8000000000000000;
    outlined init with take of Any(&v20, v22);
    v11;
    v12 = swift_isUniquelyReferenced_nonNull_native(v10);
    v25 = v10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6966697373616C63, 0xEA00000000007265, v12);
    v13 = v25;
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    *&v20 = v11;
    outlined init with take of Any(&v20, v22);
    v14 = swift_isUniquelyReferenced_nonNull_native(v13);
    v25 = v13;
    v15 = v14;
    v16 = 0x69735F726579616CLL;
    v17 = 0xEB0000000073657ALL;
  }

  else
  {
    *&v20 = 0xD000000000000012;
    *(&v20 + 1) = "multilayer_perceptron" + 0x8000000000000000;
    outlined init with take of Any(&v20, v22);
    v18 = swift_isUniquelyReferenced_nonNull_native(v10);
    v25 = v10;
    v15 = v18;
    v16 = 0x6966697373616C63;
    v17 = 0xEA00000000007265;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v16, v17, v15);
  return v25;
}

void *MLSoundClassifier.DataSource.table.getter(__m128 a1)
{
  v37 = v1;
  v3 = type metadata accessor for DataFrame(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v36 = &v29;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v35 = &v29;
  v10 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLTrainingSessionParameters(v2, &v29, type metadata accessor for MLSoundClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v29, v10))
  {
    case 0u:
    case 1u:
      v14 = type metadata accessor for URL(0);
      (*(*(v14 - 8) + 8))(&v29, v14);
      goto LABEL_5;
    case 2u:
      outlined destroy of MLActivityClassifier.ModelParameters(&v29, type metadata accessor for MLSoundClassifier.DataSource);
LABEL_5:
      result = v37;
      *v37 = 0;
      *(result + 8) = -1;
      break;
    case 3u:
      v23 = v29;
      v24 = v30;
      v25 = v34;
      v32;
      v25;
      result = v37;
      *v37 = v23;
      *(result + 8) = v24;
      break;
    case 4u:
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
      v16 = *(v15 + 48);
      v32 = *(&v29 + v16);
      v17 = *(&v29 + v16 + 8);
      *(&v29 + *(v15 + 64) + 8);
      v18 = v35;
      v31 = v3;
      v30 = v4;
      (*(v4 + 32))(v35, &v29, v3);
      static MLSoundClassifier.DataSource.reformatFeatures(dataFrame:featureColumn:)(v18, v32, v17);
      v19 = v36;
      v17;
      v20 = v35;
      v21 = v31;
      v22 = v30;
      *a1.i64 = (*(v30 + 16))(v19, v35, v31);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v19, 0, a1);
      (*(v22 + 8))(v20, v21);
      result = v33;
      v27 = v34;
      v28 = v37;
      *v37 = v33;
      *(v28 + 8) = v27;
      break;
  }

  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.dictionary.getter()
{
  v11 = *v0;
  v1 = v0[3];
  v2 = *(v0 + 32);
  if (*(v0 + 16))
  {
    v3 = 0x3FEF333333333333;
  }

  else
  {
    v3 = v0[1];
  }

  v12 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v4, v8);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  strcpy((inited + 32), "overlap_factor");
  *(inited + 47) = -18;
  *(inited + 72) = &type metadata for Double;
  *(inited + 48) = v11;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = "sertion %d for CreateML\n" + 0x8000000000000000;
  *(inited + 120) = &type metadata for Double;
  *(inited + 96) = v12;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = "logistic_regressor" + 0x8000000000000000;
  v9 = v1;
  v10 = v2;
  v6 = MLSoundClassifier.ModelParameters.FeatureExtractorType.dictionary.getter();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 144) = v6;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  specialized Dictionary.subscript.getter(0x5F70616C7265766FLL, 0xEE00726F74636166, a1);
  if (!v11)
  {
    goto LABEL_9;
  }

  if (!swift_dynamicCast(v12, &v9, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_11:
    result = a1;
    goto LABEL_12;
  }

  v7 = v12[0];
  specialized Dictionary.subscript.getter(0xD000000000000011, ("logistic_regressor" + 0x8000000000000000), a1);
  if (!v11)
  {
LABEL_9:
    a1;
    goto LABEL_10;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  if (!swift_dynamicCast(v12, &v9, &type metadata for Any + 8, v3, 6))
  {
    goto LABEL_11;
  }

  MLSoundClassifier.ModelParameters.FeatureExtractorType.init(dictionary:)(v12[0]);
  v4 = v10;
  if (v10 == -1)
  {
    goto LABEL_11;
  }

  v8 = v9;
  specialized Dictionary.subscript.getter(0xD000000000000010, ("sertion %d for CreateML\n" + 0x8000000000000000), a1);
  a1;
  if (!v11)
  {
LABEL_10:
    result = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v9, &demangling cache variable for type metadata for Any?);
    goto LABEL_12;
  }

  result = swift_dynamicCast(v12, &v9, &type metadata for Any + 8, &type metadata for Double, 6);
  if (result)
  {
    v6 = v12[0];
    *v2 = v7;
    *(v2 + 8) = v6;
    *(v2 + 16) = 0;
    result = v8;
    *(v2 + 24) = v8;
    *(v2 + 32) = v4 & 1;
    return result;
  }

LABEL_12:
  *(v2 + 16) = 0;
  *v2 = 0;
  *(v2 + 32) = -1;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.FeatureExtractorType.dictionary.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v2 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    v13 = &type metadata for String;
    *&v12 = 0xD000000000000011;
    *(&v12 + 1) = "feature_extractor" + 0x8000000000000000;
    v15 = v1;
    outlined init with take of Any(&v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v2);
    v16 = v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1684957547, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v4 = v16;
    v13 = &type metadata for String;
    *&v12 = 0x646E756F73;
    *(&v12 + 1) = 0xE500000000000000;
    outlined init with take of Any(&v12, v14);
    v5 = swift_isUniquelyReferenced_nonNull_native(v4);
    v16 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 1701869940, 0xE400000000000000, v5);
    v6 = v16;
    v13 = &type metadata for Int;
    *&v12 = v15;
    outlined init with take of Any(&v12, v14);
    v7 = swift_isUniquelyReferenced_nonNull_native(v6);
    v16 = v6;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, 0x6E6F697369766572, 0xE800000000000000, v7);
    return v16;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
    inited = swift_initStackObject(v9, v11);
    inited[2] = 2;
    inited[3] = 4;
    inited[4] = 1684957547;
    inited[5] = 0xE400000000000000;
    inited[9] = &type metadata for String;
    inited[6] = 0x687369676776;
    inited[7] = 0xE600000000000000;
    inited[10] = 0x6E6F697369766572;
    inited[11] = 0xE800000000000000;
    inited[15] = &type metadata for Int;
    inited[12] = v1;
    return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  }
}

char MLSoundClassifier.ModelParameters.FeatureExtractorType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  specialized Dictionary.subscript.getter(0x6E6F697369766572, 0xE800000000000000, a1);
  if (v13)
  {
    if (swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for Int, 6))
    {
      v3 = v14;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
  }

  v3 = 1;
LABEL_6:
  specialized Dictionary.subscript.getter(1684957547, 0xE400000000000000, a1);
  if (!v13)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
    goto LABEL_12;
  }

  if (!swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for String, 6))
  {
LABEL_12:
    a1;
    goto LABEL_13;
  }

  v16 = v2;
  v4 = v14;
  v5 = v15;
  if (v14 ^ 0x687369676776 | v15 ^ 0xE600000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x687369676776, 0xE600000000000000, v14, v15, 0) & 1) == 0)
  {
    v7 = &aAudiofeaturepr[-32] | 0x8000000000000000;
    if (!(v4 ^ 0xD000000000000011 | v7 ^ v5))
    {
      v5;
      goto LABEL_18;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, v7, v4, v5, 0);
    v5;
    if (v8)
    {
LABEL_18:
      specialized Dictionary.subscript.getter(1701869940, 0xE400000000000000, a1);
      a1;
      if (v13)
      {
        if (swift_dynamicCast(&v14, v12, &type metadata for Any + 8, &type metadata for String, 6))
        {
          v9 = v14;
          v10 = v15;
          v2 = v16;
LABEL_23:
          if (!(v9 ^ 0x646E756F73 | v10 ^ 0xE500000000000000))
          {
            v10;
            result = 1;
            goto LABEL_14;
          }

          v11 = _stringCompareWithSmolCheck(_:_:expecting:)(v9, v10, 0x646E756F73, 0xE500000000000000, 0);
          v10;
          result = 1;
          if (v11)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, &demangling cache variable for type metadata for Any?);
      }

      v2 = v16;
      v9 = 0x646E756F73;
      v10 = 0xE500000000000000;
      goto LABEL_23;
    }

    a1;
    v2 = v16;
LABEL_13:
    result = -1;
    v3 = 0;
    goto LABEL_14;
  }

  v5;
  a1;
  result = 0;
  v2 = v16;
LABEL_14:
  *v2 = v3;
  *(v2 + 8) = result;
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v6 = *v3;
  v6;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v9 = v8;
  result = v6;
  if (v9)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v4);
    v13 = *v4;
    v12 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);
    *(*(v13 + 48) + 16 * v7 + 8);
    outlined init with take of Any((*(v13 + 56) + 32 * v7), v5);
    result = _NativeDictionary._delete(at:)(v7, v13, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
    *v4 = v13;
  }

  else
  {
    v5[1] = 0;
    *v5 = 0;
  }

  return result;
}

{
  return specialized Dictionary._Variant.removeValue(forKey:)(a1, a2, &demangling cache variable for type metadata for _NativeDictionary<String, Tensor>, &type metadata accessor for Tensor);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = v5;
  v7 = v4;
  v8 = *v5;
  v8;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  v11 = v10;
  v8;
  if (v11)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v6);
    v18 = *v6;
    v20 = v7;
    v13 = *(*v6 + 24);
    __swift_instantiateConcreteTypeFromMangledName(a3);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v13);
    *(*(v18 + 48) + 16 * v9 + 8);
    v14 = *(v18 + 56);
    v15 = a4(0);
    (*(*(v15 - 8) + 32))(v20, v14 + v9 * *(*(v15 - 8) + 72), v15);
    _NativeDictionary._delete(at:)(v9, v18, &type metadata for String, v15, &protocol witness table for String);
    *v6 = v18;
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v15);
  }

  else
  {
    v17 = a4(0);
    return __swift_storeEnumTagSinglePayload(v7, 1, 1, v17);
  }
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *v2;
  v5;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v8 = v7;
  result = v5;
  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v15 = *v3;
    v16 = v4;
    v11 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<CodingUserInfoKey, Sendable>);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    v12 = *(v15 + 48);
    v13 = type metadata accessor for CodingUserInfoKey(0);
    (*(*(v13 - 8) + 8))(v12 + v6 * *(*(v13 - 8) + 72), v13);
    outlined init with take of Any((*(v15 + 56) + 32 * v6), v16);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    result = _NativeDictionary._delete(at:)(v6, v15, v13, v14, &protocol witness table for CodingUserInfoKey);
    *v3 = v15;
  }

  else
  {
    v4[1] = 0;
    *v4 = 0;
  }

  return result;
}

{
  v3 = v2;
  v4 = v1;
  v5 = *v2;
  v5;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v8 = v7;
  result = v5;
  if (v8)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v3);
    v12 = *v3;
    v11 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<AnyHashable, Any>);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11);
    outlined destroy of AnyHashable(*(v12 + 48) + 40 * v6);
    outlined init with take of Any((*(v12 + 56) + 32 * v6), v4);
    result = _NativeDictionary._delete(at:)(v6, v12, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
    *v3 = v12;
  }

  else
  {
    v4[1] = 0;
    *v4 = 0;
  }

  return result;
}

void EventCollector.add(_:)()
{
  v1 = *(v0 + 16);
  specialized NSLocking.withLock<A>(_:)(partial apply for closure #1 in EventCollector.add(_:));
}

uint64_t EventCollector.init()()
{
  v1 = objc_allocWithZone(NSLock);
  *(v0 + 16) = [v1 init];
  *(v0 + 24) = &_swiftEmptyArrayStorage;
  return v0;
}

uint64_t closure #1 in EventCollector.add(_:)(uint64_t a1, uint64_t a2)
{
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v2 = *(*(a1 + 24) + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v2);
  v3 = *(a1 + 24);
  *(v3 + 16) = v2 + 1;
  v5 = type metadata accessor for Event(0, a2, v4);
  result = (*(*(v5 - 8) + 16))(v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)) + *(*(v5 - 8) + 72) * v2, a2, v5);
  *(a1 + 24) = v3;
  return result;
}

uint64_t closure #1 in closure #1 in EventCollector.getLast<A>(metric:type:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = Event.metrics.getter();
  specialized Dictionary.subscript.getter(a2, v3);
  v3;
  LOBYTE(v2) = v6 != 0;
  outlined destroy of Sendable?(v5);
  return v2;
}

uint64_t outlined destroy of Sendable?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

id @nonobjc VNCoreMLModel.__allocating_init(for:)(id a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = 0;
  v2 = [ObjCClassFromMetadata modelForMLModel:a1 error:&v7];
  v3 = v2;
  v4 = v7;
  if (v3)
  {
    v7;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)(v4);

    swift_willThrow();
  }

  return v3;
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1)
{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, VNRecognizedObjectObservation_ptr);
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, VNPixelBufferObservation_ptr);
}

{
  v1 = *(a1 + 16);
  v17 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    for (i = a1 + 32; ; i += 32)
    {
      outlined init with copy of URL?(i, v12, &demangling cache variable for type metadata for Any?);
      v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
      if (!swift_dynamicCast(&v13, v12, v4, &type metadata for String, 6))
      {
        break;
      }

      v5 = v13;
      v6 = v14;
      v17 = v2;
      v7 = v2[2];
      v8 = v2[3];
      v9 = v7 + 1;
      if (v8 >> 1 <= v7)
      {
        v15 = v14;
        v16 = v13;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v8 >= 2, v9, 1);
        v6 = v15;
        v5 = v16;
        v2 = v17;
      }

      v2[2] = v9;
      v10 = 2 * v7;
      v2[v10 + 4] = v5;
      v2[v10 + 5] = v6;
      if (!--v1)
      {
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

{
  return specialized _arrayConditionalCast<A, B>(_:)(a1, VNRecognizedPointsObservation_ptr);
}

void *specialized _arrayConditionalCast<A, B>(_:)(uint64_t a1, void *a2)
{
  v2 = specialized Array._getCount()(a1);
  specialized ContiguousArray.reserveCapacity(_:)(v2);
  v12 = specialized Array._getCount()(a1);
  if (!v12)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  while (1)
  {
    v4 = (a1 & 0xC000000000000003) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)(v3, a1) : *(a1 + 8 * v3 + 32);
    v5 = v4;
    if (__OFADD__(1, v3++))
    {
      BUG();
    }

    v7 = objc_opt_self(*a2);
    v8 = swift_dynamicCastObjCClass(v5, v7);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v5);
    v10 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v10);
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v10, v9);
    specialized ContiguousArray._endMutation()();
    if (v3 == v12)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return 0;
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.prediction(from:)(CGImageRef from)
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v4);
  v5 = MLImageClassifier.performRequest(url:cgImage:)(v9, from);
  v7 = v6;
  outlined destroy of URL?(v9);
  result._countAndFlagsBits = v5;
  result._object = v7;
  return result;
}

uint64_t MLImageClassifier.performRequest(url:cgImage:)(void *a1, void *a2)
{
  v74 = v2;
  v68[0] = a2;
  v73 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v72 = &v66;
  v71 = type metadata accessor for URL(0);
  v7 = *(v71 - 1);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v67 = &v66;
  v11 = alloca(v8);
  v12 = alloca(v8);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v13 = *v3;
  v14 = v74;
  v15 = @nonobjc VNCoreMLModel.__allocating_init(for:)(v13);
  if (v14)
  {
    return v7;
  }

  v16 = v15;
  v70 = v7;
  v17 = objc_allocWithZone(VNCoreMLRequest);
  v74 = [v17 initWithModel:v16];
  v18 = v16;
  v19 = v72;
  outlined init with copy of URL?(v73, v72, &demangling cache variable for type metadata for URL?);
  if (__swift_getEnumTagSinglePayload(v19, 1, v71) == 1)
  {
    v20 = v18;
    outlined destroy of URL?(v72);
    v21 = v68[0];
    if (!v68[0])
    {
      v56 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v56, 0, 0);
      *v57 = 0xD000000000000019;
      *(v57 + 8) = "the vision request." + 0x8000000000000000;
      *(v57 + 16) = 0;
      *(v57 + 32) = 0;
      *(v57 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v56);
      v7 = &objc_release;

      v55 = v20;
      goto LABEL_16;
    }

    v69 = 0;
    v73 = v18;
    v22 = type metadata accessor for VNImageOption(0);
    v23 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
    v24 = v21;
    v25 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v22, &type metadata for Any + 8, v23);
    objc_allocWithZone(VNImageRequestHandler);
    v26 = @nonobjc VNImageRequestHandler.init(cgImage:options:)(v24, v25);
  }

  else
  {
    v69 = 0;
    v73 = v18;
    (*(v70 + 32))(&v66, v72, v71);
    v27 = objc_opt_self(NSFileManager);
    v28 = [v27 defaultManager];
    v29 = v28;
    v72 = &v66;
    URL.path.getter(v28);
    v31 = v30;
    v32 = String._bridgeToObjectiveC()();
    v31;
    LOBYTE(v31) = [v29 fileExistsAtPath:v32];

    if (!v31)
    {
      *&v75 = 0;
      *(&v75 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(38);
      *(&v75 + 1);
      *&v75 = 0xD000000000000012;
      *(&v75 + 1) = "Input image is not valid." + 0x8000000000000000;
      v58 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v59 = v72;
      v60 = v71;
      v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(v71, v58);
      object = v61._object;
      String.append(_:)(v61);
      object;
      v63._object = "Input image URL: '" + 0x8000000000000000;
      v63._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v63);
      *v68 = v75;
      v63._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v63._object, 0, 0);
      *v64 = *v68;
      *(v64 + 16) = 0;
      *(v64 + 32) = 0;
      *(v64 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v63._object);
      v7 = &objc_release;

      (*(v70 + 8))(v59, v60);
      return v7;
    }

    v33 = v67;
    v34 = v71;
    v35 = v70;
    (*(v70 + 16))(v67, v72, v71);
    v36 = type metadata accessor for VNImageOption(0);
    v37 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
    v38 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v36, &type metadata for Any + 8, v37);
    objc_allocWithZone(VNImageRequestHandler);
    v26 = @nonobjc VNImageRequestHandler.init(url:options:)(v33, v38);
    (*(v35 + 8))(v72, v34);
  }

  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v40 = swift_allocObject(v39, 40, 7);
  v40[2] = 1;
  v40[3] = 3;
  v41 = v74;
  v40[4] = v74;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v74 = v41;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v40;
  *&v75 = 0;
  v43 = v26;
  v44 = [v26 performRequests:isa error:&v75];

  v7 = v75;
  if (!v44)
  {
    v54 = v75;
    _convertNSErrorToError(_:)(v7);
    v7 = &objc_release;

    swift_willThrow(v54, "performRequests:error:");
    v55 = v73;
LABEL_16:

    return v7;
  }

  v71 = v43;
  v45 = v74;
  v7;
  v74 = v45;
  v46 = outlined bridged method (ob) of @objc VNRequest.results.getter(v45);
  if (v46 && (v47 = v46, v7 = specialized _arrayConditionalCast<A, B>(_:)(v46, VNClassificationObservation_ptr), v47, v7))
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v7 & 0xC000000000000003) == 0, v7);
    if ((v7 & 0xC000000000000003) != 0)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v7);
    }

    else
    {
      v48 = *(v7 + 32);
    }

    v49 = v48;
    v7;
    v50 = [v49 identifier];
    v51 = v50;

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(v51);
  }

  else
  {
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = 0xD000000000000033;
    *(v53 + 8) = "ventCollector" + 0x8000000000000000;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v52);
  }

  return v7;
}

uint64_t MLImageClassifier.prediction(from:)(uint64_t a1)
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 16))(&v7, a1, v4);
  __swift_storeEnumTagSinglePayload(&v7, 0, 1, v4);
  v5 = MLImageClassifier.performRequest(url:cgImage:)(&v7, 0);
  outlined destroy of URL?(&v7);
  return v5;
}

void *MLImageClassifier.predictions(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for URL(0);
  v6 = v4;
  v7 = *(v4 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 16);
  if (v11)
  {
    v24 = v2;
    v26 = _swiftEmptyArrayStorage;
    v22 = v11;
    v28 = a1;
    v29 = &v20;
    specialized ContiguousArray.reserveCapacity(_:)(v11);
    v12 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v28;
    v21 = *(v7 + 16);
    v25 = v7;
    v23 = *(v7 + 72);
    while (1)
    {
      v13 = v29;
      v28 = v12;
      v21(v29, v12, v6);
      static ImageReader.read(url:)(v13);
      v27 = v3;
      if (v3)
      {
        break;
      }

      v14 = v29;
      (*(v25 + 8))(v29, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v14);
      v15 = v26[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v15);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v15);
      specialized ContiguousArray._endMutation()(v15);
      v12 = v23 + v28;
      v16 = v22-- == 1;
      v3 = v27;
      if (v16)
      {
        v17 = v26;
        goto LABEL_7;
      }
    }

    (*(v25 + 8))(v29, v6);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_7:
    v18 = v3;
    v3 = MLImageClassifier.performRequests(_:)(v17);
    v17;
    v27 = v18;
  }

  return v3;
}

void *MLImageClassifier.performRequests(_:)(uint64_t a1)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v3 = *v2;
  result = @nonobjc VNCoreMLModel.__allocating_init(for:)(v3);
  if (!v1)
  {
    v5 = result;
    v8 = _swiftEmptyArrayStorage;
    v6 = _objc_autoreleasePoolPush();
    closure #1 in MLImageClassifier.performRequests(_:)(v5, a1, &v8, &v7);
    _objc_autoreleasePoolPop(v6);

    return v8;
  }

  return result;
}

NSURL *closure #1 in MLImageClassifier.performRequests(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v5 = a2;
  v6 = objc_allocWithZone(VNCoreMLRequest);
  v7 = [v6 initWithModel:a1];
  v47 = specialized Array._getCount()(a2);
  if (v47)
  {
    v46 = v7;
    v49 = a4;
    a2;
    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000003) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = __OFADD__(1, v8);
      v12 = v8 + 1;
      if (v11)
      {
        BUG();
      }

      v45 = v12;
      v13 = type metadata accessor for VNImageOption(0);
      v14 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
      v15 = v10;
      v16 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v13, &type metadata for Any + 8, v14);
      objc_allocWithZone(VNImageRequestHandler);
      v50 = v15;
      v17 = @nonobjc VNImageRequestHandler.init(ciImage:options:)(v15, v16);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
      v19 = swift_allocObject(v18, 40, 7);
      v19[2] = 1;
      v19[3] = 3;
      v19[4] = v46;
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
      v20 = v46;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v19;
      v55 = 0;
      v22 = "performRequests:error:";
      v51 = v17;
      LOBYTE(v19) = [v17 performRequests:isa error:&v55];

      v23 = v55;
      if (!v19)
      {
        break;
      }

      v24 = v20;
      v23;
      v48 = v24;
      v25 = outlined bridged method (ob) of @objc VNRequest.results.getter(v24);
      if (!v25 || (v26 = v25, v27 = specialized _arrayConditionalCast<A, B>(_:)(v25, VNClassificationObservation_ptr), v26, !v27))
      {
        a2;
        v39 = &type metadata for MLCreateError;
        v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v40 = v17;
        v41 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
        *v42 = 0xD000000000000033;
        *(v42 + 8) = "ventCollector" + 0x8000000000000000;
        *(v42 + 16) = 0;
        *(v42 + 32) = 0;
        *(v42 + 48) = 0;
        v43 = v50;
        goto LABEL_23;
      }

      if ((v27 & 0xC000000000000003) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v27);
      }

      else
      {
        if (!*(&dword_10 + (v27 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v28 = *(v27 + 32);
      }

      v29 = v28;
      v27;
      v30 = [v29 identifier];
      v31 = v30;

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)(v31);
      v33 = v32;

      v34 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a3);
      *a3 = v34;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
        *a3 = v34;
      }

      v36 = v34[2];
      if (v34[3] >> 1 <= v36)
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34[3] >= 2uLL, v36 + 1, 1, v34);
        *a3 = v34;
      }

      v34[2] = v36 + 1;
      v37 = 2 * v36;
      v34[v37 + 4] = v52;
      v34[v37 + 5] = v33;

      v8 = v45;
      v5 = a2;
      if (v45 == v47)
      {

        a2;
        return __stack_chk_guard;
      }
    }

    v44 = v55;
    a2;
    v41 = _convertNSErrorToError(_:)(v23);
    v39 = v44;

    v43 = v51;
    v40 = v50;
LABEL_23:
    swift_willThrow(v39, v22);

    *v49 = v41;
    return __stack_chk_guard;
  }

  else
  {

    return __stack_chk_guard;
  }
}

id @nonobjc VNImageRequestHandler.init(url:options:)(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(v2);
  v5 = v4;
  type metadata accessor for VNImageOption(0);
  lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  v7 = [v3 initWithURL:v5 options:isa];

  v8 = type metadata accessor for URL(0);
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id @nonobjc VNImageRequestHandler.init(ciImage:options:)(id a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  v4 = [v2 initWithCIImage:a1 options:isa];

  return v4;
}

uint64_t outlined bridged method (ob) of @objc VNRequest.results.getter(id a1)
{
  v1 = [a1 results];
  v2 = v1;

  if (!v2)
  {
    return 0;
  }

  v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNObservation, VNObservation_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v2, v3);

  return v4;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t MLGazetteer.ModelParameters.description.getter()
{
  v6 = *v0;
  v6;
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v6 = String.init<A>(describing:)(&v6, v1);
  v7 = v2;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = v6;
  v4 = v7;
  v6 = 0x65676175676E614CLL;
  v7 = 0xEA0000000000203ALL;
  v3._object = v4;
  String.append(_:)(v3);
  v4;
  return v6;
}

id MLGazetteer.ModelParameters.language.getter()
{
  v1 = *v0;
  *v0;
  return v1;
}

uint64_t MLGazetteer.ModelParameters.debugDescription.getter()
{
  v8 = *v0;
  v1 = v8;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v8 = String.init<A>(describing:)(&v8, v3);
  v9 = v4;
  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v5._countAndFlagsBits = v8;
  v6 = v9;
  v8 = 0x65676175676E614CLL;
  v9 = 0xEA0000000000203ALL;
  v5._object = v6;
  String.append(_:)(v5);

  v6;
  return v8;
}

void *MLGazetteer.ModelParameters.playgroundDescription.getter()
{
  v2 = v0;
  *&v11 = *v1;
  v3 = v11;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  *&v11 = String.init<A>(describing:)(&v11, v5);
  *(&v11 + 1) = v6;
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v8 = *(&v11 + 1);
  v7._countAndFlagsBits = v11;
  *&v11 = 0x65676175676E614CLL;
  *(&v11 + 1) = 0xEA0000000000203ALL;
  v7._object = v8;
  String.append(_:)(v7);

  v8;
  v9 = v11;
  result = &type metadata for String;
  *(v2 + 24) = &type metadata for String;
  *v2 = v9;
  return result;
}

void **initializeBufferWithCopyOfBuffer for MLGazetteer.ModelParameters(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v3;
  return a1;
}

void **assignWithCopy for MLGazetteer.ModelParameters(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v4;

  return a1;
}

void **assignWithTake for MLGazetteer.ModelParameters(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for MLGazetteer.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = -1;
      if (((*a1 >> 1) - 1) >= 0)
      {
        v3 = (*a1 >> 1) - 1;
      }

      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : v3;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLGazetteer.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 8) = 0;
    }

    if (a2)
    {
      *a1 = 2 * a2;
    }
  }
}

uint64_t *MLDataTable.group<A>(columnsNamed:aggregators:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v76 = v4;
  fromColumnName._object = a2;
  v93 = 0;
  v91 = *(a3 - 8);
  v7 = *(v91 + 8);
  v8 = alloca(v7);
  v9 = alloca(v7);
  aggColumnName = v71;
  v81 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v75 = *(AssociatedTypeWitness - 8);
  v10 = *(v75 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v84 = v71;
  v78 = *v5;
  v13 = *(v5 + 8);
  v14 = tc_v1_flex_list_create(0);
  if (!v14)
  {
    BUG();
  }

  v15 = v14;
  v89 = v13;
  v16 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v16, v72);
  v77 = v15;
  *(inited + 16) = v15;
  v86 = inited;
  *(inited + 24) = 1;
  v18 = a1[2];
  if (v18)
  {
    v92 = v6;
    fromColumnName._countAndFlagsBits = type metadata accessor for CMLFeatureValue();
    a1;
    v82 = a1;
    v19 = a1 + 5;
    do
    {
      v87 = v18;
      v20 = *(v19 - 1);
      v21 = *v19;
      swift_bridgeObjectRetain_n(*v19, 2);
      v22 = v93;
      v23 = CMLFeatureValue.__allocating_init(_:)(v20, v21);
      if (v22)
      {
        v66 = "CreateML/MLDataValueConvertible.swift";
        v67 = 37;
        v68 = 170;
        goto LABEL_57;
      }

      v24 = v23;
      v21;
      CMLSequence.append(_:)(v24);

      v93 = 0;
      v19 += 2;
      v18 = v87 - 1;
    }

    while (v87 != &dword_0 + 1);
    v82;
    v6 = v92;
  }

  v25 = tc_v1_groupby_aggregator_create(0);
  if (!v25)
  {
    BUG();
  }

  v26 = v25;
  v27 = type metadata accessor for CMLAggregator();
  v92 = swift_initStackObject(v27, v73);
  *(v92 + 16) = v26;
  (*(v91 + 2))(aggColumnName, fromColumnName._object, v6);
  v28 = v81;
  dispatch thunk of Sequence.makeIterator()(v6, v81);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v28, v6, AssociatedTypeWitness, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (!toColumnName._countAndFlagsBits)
    {
      break;
    }

    object = toColumnName._object;
    v30 = v80;
    countAndFlagsBits = toColumnName._countAndFlagsBits;
    v80;
    countAndFlagsBits;
    outlined consume of MLDataTable.Aggregator?(countAndFlagsBits, object, v30);
    v31 = *(countAndFlagsBits + 16);
    if (v31)
    {
      v32 = (countAndFlagsBits + 48);
      aggColumnName = v30;
      fromColumnName._countAndFlagsBits = object;
      while (1)
      {
        fromColumnName._object = v31;
        v33 = *(v32 - 2);
        v81 = *v32;
        v34 = 0x616E6F6974636944;
        v35 = 0xEF656772654D7972;
        switch(v81)
        {
          case 0:
            break;
          case 1:
            v34 = 0x6E696D677241;
            goto LABEL_15;
          case 2:
            v34 = 0x78616D677241;
LABEL_15:
            v35 = 0xE600000000000000;
            break;
          case 3:
            switch(v33)
            {
              case 0:
              case 2:
                JUMPOUT(0x1AD3D1);
              case 1:
                JUMPOUT(0x1AD3CBLL);
            }
        }

        v91 = v32;
        v36 = *(v32 - 1);
        toColumnName._countAndFlagsBits = fromColumnName._countAndFlagsBits;
        v30 = aggColumnName;
        toColumnName._object = aggColumnName;
        aggColumnName;
        v87 = v36;
        v37 = v36;
        LODWORD(v36) = v81;
        outlined copy of MLDataTable.Aggregator.Operations(v33, v37, v81);
        v38._countAndFlagsBits = v34;
        v38._object = v35;
        String.append(_:)(v38);
        v35;
        v39 = toColumnName._countAndFlagsBits;
        v40 = toColumnName._object;
        switch(v36)
        {
          case 0:
            v82 = toColumnName._object;
            v87;
            JUMPOUT(0x1AD0C0);
          case 1:
            v87;
            v95._countAndFlagsBits = v33;
            v95._object = v87;
            CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(0, __PAIR128__(v40, v39), __PAIR128__(v30, fromColumnName._countAndFlagsBits), v95);
            if (v22)
            {
              v66 = "CreateML/MLDataTable+Group.swift";
              v67 = 32;
              v70 = 125;
              goto LABEL_56;
            }

            v93 = 0;
            v40;
            v41 = v33;
            v42 = v87;
            v43 = v87;
            v44 = v33;
            v69 = 1;
            goto LABEL_26;
          case 2:
            v87;
            v94._countAndFlagsBits = v33;
            v94._object = v87;
            CMLAggregator.add(isMax:toColumnName:aggColumnName:outputColumnName:)(1, __PAIR128__(v40, v39), __PAIR128__(v30, fromColumnName._countAndFlagsBits), v94);
            if (v22)
            {
              v66 = "CreateML/MLDataTable+Group.swift";
              v67 = 32;
              v68 = 131;
              goto LABEL_57;
            }

            v93 = 0;
            v40;
            v41 = v33;
            v42 = v87;
            v43 = v87;
            v44 = v33;
            v69 = 2;
LABEL_26:
            outlined consume of MLDataTable.Aggregator.Operations(v41, v43, v69);
            outlined consume of MLDataTable.Aggregator.Operations(v44, v42, v69);
            goto LABEL_38;
          case 3:
            switch(v33)
            {
              case 0:
                JUMPOUT(0x1AD187);
              case 1:
                JUMPOUT(0x1AD40BLL);
              case 2:
                JUMPOUT(0x1AD30ELL);
              case 3:
                JUMPOUT(0x1AD361);
              case 4:
                JUMPOUT(0x1AD269);
              case 5:
                toColumnName._object;
                v45._countAndFlagsBits = 0x746E756F43;
                v46._countAndFlagsBits = 0x746E756F63;
                v45._object = 0xE500000000000000;
                v46._object = 0xE500000000000000;
                v47._countAndFlagsBits = 0;
                v47._object = 0xE000000000000000;
                CMLAggregator.add(operation:toColumnName:fromColumnName:)(v46, v45, v47);
                JUMPOUT(0x1AD477);
              case 6:
                JUMPOUT(0x1AD4CFLL);
              case 7:
                JUMPOUT(0x1AD3B8);
              case 8:
                v48._countAndFlagsBits = 0x7461636E6F63;
                v48._object = 0xE600000000000000;
                v49._countAndFlagsBits = fromColumnName._countAndFlagsBits;
                v30 = aggColumnName;
                v49._object = aggColumnName;
                CMLAggregator.add(operation:toColumnName:fromColumnName:)(v48, toColumnName, v49);
                if (v22)
                {
                  v66 = "CreateML/MLDataTable+Group.swift";
                  v67 = 32;
                  v70 = 96;
LABEL_56:
                  v68 = v70;
LABEL_57:
                  swift_unexpectedError(v22, v66, v67, 1, v68);
                  BUG();
                }

                v93 = 0;
                v40;
LABEL_38:
                v32 = v91 + 24;
                v31 = fromColumnName._object - 1;
                if (fromColumnName._object == &dword_0 + 1)
                {
                  goto LABEL_39;
                }

                break;
              case 9:
                JUMPOUT(0x1AD2C5);
            }

            return result;
        }
      }
    }

LABEL_39:
    v30;
    countAndFlagsBits;
  }

  (*(v75 + 8))(v84, AssociatedTypeWitness);
  v50 = v78;
  if (v89)
  {
    toColumnName._countAndFlagsBits = v78;
    outlined copy of Result<_DataTable, Error>(v78, 1);
    swift_errorRetain(v50);
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v52 = _getErrorEmbeddedNSError<A>(_:)(&toColumnName, v51, &protocol self-conformance witness table for Error);
    if (v52)
    {
      v53 = v52;
      outlined consume of Result<_DataTable, Error>(v50, 1);
    }

    else
    {
      v53 = swift_allocError(v51, &protocol self-conformance witness table for Error, 0, 0);
      *v59 = v50;
    }

    v58 = 1;
    v57 = v50;
    goto LABEL_47;
  }

  v54 = *(*(v78 + 16) + 16);
  v55 = *(v92 + 16);
  outlined copy of Result<_DataTable, Error>(v78, 0);
  v53 = v93;
  v56 = specialized handling<A, B, C, D>(_:_:_:_:)(v54, v77, v55);
  if (v53)
  {
    v57 = v50;
    v58 = 0;
LABEL_47:
    outlined consume of Result<_DataTable, Error>(v57, v58);

    v60 = 1;
    goto LABEL_48;
  }

  v62 = v56;
  if (!v56)
  {
    BUG();
  }

  v60 = 0;
  v63 = type metadata accessor for CMLTable();
  v64 = swift_allocObject(v63, 24, 7);
  *(v64 + 16) = v62;
  v65 = type metadata accessor for _DataTable();
  swift_allocObject(v65, 40, 7);
  v53 = _DataTable.init(impl:)(v64);
  outlined consume of Result<_DataTable, Error>(v78, 0);

LABEL_48:
  result = v76;
  *v76 = v53;
  *(result + 8) = v60;
  return result;
}

uint64_t MLDataTable.Aggregator.operations.setter(uint64_t a1, uint64_t a2)
{
  result = *v2, a2;
  *v2 = a1;
  return result;
}

uint64_t MLDataTable.Aggregator.columnName.getter()
{
  v1 = *(v0 + 8);
  *(v0 + 16);
  return v1;
}

uint64_t MLDataTable.Aggregator.columnName.setter(uint64_t a1, uint64_t a2)
{
  result = *(v2 + 16), a2;
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *MLDataTable.Aggregator.init(operations:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *result = a1;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t outlined consume of MLDataTable.Aggregator?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1, a2;
    return a3, a2;
  }

  return result;
}

uint64_t outlined copy of MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return a2;
  }

  return result;
}

uint64_t outlined consume of MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return a2, a2;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2)
{
  return initializeBufferWithCopyOfBuffer for MLDataTable.Aggregator.Operations(a1, a2);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  outlined copy of MLDataTable.Aggregator.Operations(*a2, v3, v4);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

uint64_t assignWithCopy for MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of MLDataTable.Aggregator.Operations(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of MLDataTable.Aggregator.Operations(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for MLDataTable.Aggregator.Operations(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of MLDataTable.Aggregator.Operations(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLDataTable.Aggregator.Operations(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 16) >= 4u)
      {
        v2 = *(a1 + 16) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}