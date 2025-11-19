uint64_t MLStyleTransfer.init(model:parameters:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);

  *v3 = v1;
  v5 = type metadata accessor for MLStyleTransfer(0);
  outlined init with take of MLClassifierMetrics(v2, v3 + *(v5 + 20), type metadata accessor for MLStyleTransfer.ModelParameters);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLStyleTransfer.ModelParameters);
  v3 = *(v0 + 48);
  return (*(v0 + 8))();
}

uint64_t MLStyleTransfer.ModelParameters.init(algorithm:validation:maxIterations:textelDensity:styleStrength:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v8 = *a1;
  v9 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *&v7[v9[6]] = 1;
  v7[v9[10]] = 0;
  *v7 = v8;
  outlined init with take of MLClassifierMetrics(a2, &v7[v9[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  *&v7[v9[7]] = a3;
  *&v7[v9[8]] = a4;
  result = v9[9];
  *&v7[result] = a5;
  return result;
}

uint64_t MLStyleTransfer.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, double a3)
{
  v54 = v4;
  v53 = a2;
  v48 = a1;
  v37 = v3;
  v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v39 = *(v5 - 8);
  v38 = *(v39 + 64);
  v6 = alloca(v38);
  v7 = alloca(v38);
  v46 = &v37;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = alloca(v8);
  v12 = alloca(v8);
  v13 = type metadata accessor for URL(0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v47 = &v37;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v45 = &v37;
  v40 = v14;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v51 = &v37;
  v49 = 4 * (*(v53 + *(v5 + 32)) / 4);
  __swift_storeEnumTagSinglePayload(&v37, 1, 1, v13);
  v21 = v48;
  v52 = v13;
  __swift_storeEnumTagSinglePayload(&v37, 1, 1, v13);
  v22 = v54;
  MLStyleTransfer.DataSource.preprocessDataSource(textelDensity:styleImageDestination:contentImagesDestination:)(v45, &v43, v49, &v37, &v37, a3);
  v54 = v22;
  if (v22)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLStyleTransfer.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLStyleTransfer.DataSource);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for URL?);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for URL?);
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for URL?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for URL?);
    v41 = v43;
    LODWORD(v49) = v44;
    v24 = v50;
    v42 = *(v50 + 32);
    v25 = v51;
    v26 = v52;
    v42(v51, v45, v52);
    (*(v24 + 16))(v47, v25, v26);
    outlined init with copy of MLTrainingSessionParameters(v53, v46, type metadata accessor for MLStyleTransfer.ModelParameters);
    v27 = *(v24 + 80);
    v28 = ~*(v24 + 80) & (v27 + 16);
    v29 = (v40 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = *(v39 + 80);
    v31 = ~v30 & (v30 + v29 + 9);
    v32 = swift_allocObject(&unk_38F9A8, v31 + v38, v30 | v27 | 7);
    v33 = (v32 + v28);
    v34 = v41;
    v42(v33, v47, v52);
    *(v32 + v29) = v34;
    v35 = v49;
    *(v32 + v29 + 8) = v49 & 1;
    LOBYTE(v29) = v35;
    outlined init with take of MLClassifierMetrics(v46, v32 + v31, type metadata accessor for MLStyleTransfer.ModelParameters);
    outlined copy of Result<_DataTable, Error>(v34, v29);
    v36 = v54;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLStyleTransfer.init(trainingData:parameters:), v32);
    v54 = v36;

    outlined consume of Result<_DataTable, Error>(v34, v29);
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLStyleTransfer.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLStyleTransfer.DataSource);
    return (*(v50 + 8))(v51, v52);
  }
}

void MLStyleTransfer.DataSource.preprocessDataSource(textelDensity:styleImageDestination:contentImagesDestination:)(_BYTE *a1, void *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t *, uint64_t), double a6)
{
  v42 = v6;
  v36 = v7;
  v37 = a5;
  v33 = a2;
  v34 = a1;
  v10 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v39 = &v33;
  v38 = type metadata accessor for URL(0);
  v13 = *(v38 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = alloca(v14);
  v18 = alloca(v14);
  v19 = alloca(v14);
  v20 = alloca(v14);
  v41 = &v33;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v40 = &v33;
  v35 = &v33;
  v23 = v42;
  MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)(&v33, &v33, a3, a4, v37, a6);
  if (!v23)
  {
    v24 = *(v13 + 32);
    v42 = v13;
    v25 = v38;
    v24(v40, &v33, v38);
    v24(v41, v35, v25);
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v27 = v39;
    v28 = v39 + *(v26 + 48);
    v37 = *(v26 + 64);
    v36 = 0;
    v29 = *(v42 + 16);
    v29(v39, v40, v25);
    v29(v28, v41, v25);
    v30 = v37;
    *(v37 + v27) = 0;
    *(v30 + v27 + 8) = 0;
    MLStyleTransfer.DataSource.getStyleImageAndContentTable()(v34, v33);
    outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLStyleTransfer.DataSource);
    v31 = *(v42 + 8);
    v32 = v38;
    v31(v41, v38);
    v31(v40, v32);
  }
}

uint64_t closure #1 in MLStyleTransfer.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 56) = a5;
  *(v5 + 25) = a4;
  *(v5 + 48) = a3;
  *(v5 + 40) = a2;
  *(v5 + 32) = a1;
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  *(v5 + 64) = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL(0);
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  *(v5 + 88) = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLStyleTransfer.init(trainingData:parameters:), 0, 0);
}

uint64_t closure #1 in MLStyleTransfer.init(trainingData:parameters:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v4 = *(v0 + 25);
  (*(*(v0 + 80) + 16))(*(v0 + 88), *(v0 + 40), *(v0 + 72));
  *(v0 + 16) = v3;
  *(v0 + 24) = v4 & 1;
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLStyleTransfer.ModelParameters);
  outlined copy of Result<_DataTable, Error>(v3, v4);
  v5 = swift_task_alloc(96);
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = closure #1 in MLStyleTransfer.init(trainingData:parameters:);
  return MLStyleTransfer.init(styleImage:contentTable:parameters:)(*(v0 + 32), *(v0 + 88), v0 + 16, *(v0 + 64));
}

{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLStyleTransfer.init(trainingData:parameters:), 0, 0);
  }

  v5 = *(v3 + 64);
  *(v3 + 88);
  v5;
  return (*(v3 + 8))();
}

{
  v1 = *(v0 + 64);
  *(v0 + 88);
  v1;
  v2 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t sub_55ACA()
{
  v11 = v0;
  v12 = type metadata accessor for URL(0);
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v5 = *(v13 - 8);
  v9 = *(v5 + 80);
  v6 = ~v9 & (v4 + v9 + 9);
  v10 = *(v5 + 64);
  v14 = *(v1 + 8);
  v14(v11 + v3, v12);
  outlined consume of Result<_DataTable, Error>(*(v11 + v4), *(v11 + v4 + 8));
  v7 = v6 + v11 + *(v13 + 20);
  if (!__swift_getEnumTagSinglePayload(v7, 1, v12))
  {
    v14(v7, v12);
  }

  return swift_deallocObject(v11, v10 + v6, v9 | v2 | 7);
}

uint64_t partial apply for closure #1 in MLStyleTransfer.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for URL(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters(0) - 8) + 80);
  v7 = (v5 + v6 + 9) & ~v6;
  v10 = *(v1 + v5);
  LOBYTE(v5) = *(v1 + v5 + 8);
  v8 = swift_task_alloc(112);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(trainingData:parameters:)(a1, v1 + v4, v10, v5, v1 + v7);
}

uint64_t MLStyleTransfer.init(styleImage:contentTable:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = a4;
  *(v4 + 24) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = *a3;
  *(v4 + 84) = *(a3 + 8);
  return swift_task_switch(MLStyleTransfer.init(styleImage:contentTable:parameters:), 0, 0);
}

uint64_t MLStyleTransfer.init(styleImage:contentTable:parameters:)()
{
  v16 = v0 | 0x1000000000000000;
  v15 = v1;
  v14 = *(v1 + 84);
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(type metadata accessor for MLStyleTransfer(0) + 20);
  *(v1 + 80) = v6;
  outlined init with copy of MLTrainingSessionParameters(v3, v6 + v4, type metadata accessor for MLStyleTransfer.ModelParameters);
  v12 = v2;
  v13 = v14;
  v7 = static MLStyleTransfer.validateAndConvertParameters(_:styleImage:contentTable:)(v3, v5, &v12);
  *(v1 + 48) = v7;
  v8 = v7;
  v9 = type metadata accessor for _Model();
  swift_allocObject(v9, 48, 7);

  v10 = swift_task_alloc(112);
  *(v1 + 56) = v10;
  *v10 = v1;
  v10[1] = MLStyleTransfer.init(styleImage:contentTable:parameters:);
  return _Model.init(type:parameters:modelOptions:)(14, v8, 0);
}

{
  **(v0 + 16) = *(v0 + 72);
  v1 = AnalyticsReporter.init()();
  v2 = *(v0 + 84);
  if (v1)
  {
    outlined consume of Result<_DataTable, Error>(*(v0 + 40), v2);
  }

  else
  {
    v3 = *(v0 + 32);
    v11 = *(v0 + 40);
    v12 = v2 & 1;
    v4 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v11, v12);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__((" training session" + 0x8000000000000000), 0xD000000000000011), v4);
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), *(v3 + v5[7]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(0xEE00797469736E65, 0x44206C6574786554), *(v3 + v5[8]));
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(0xEE006874676E6572, 0x745320656C797453), *(v3 + v5[9]));
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLStyleTransfer.ModelParameters);
  v9 = type metadata accessor for URL(0);
  (*(*(v9 - 8) + 8))(v7, v9);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLStyleTransfer.ModelParameters);
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = *(v0 + 64);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(v0 + 80), type metadata accessor for MLStyleTransfer.ModelParameters);
  return (*(v0 + 8))();
}

uint64_t MLStyleTransfer.init(styleImage:contentTable:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 56);
  v4 = *v2;
  *(*v2 + 64) = v1;
  v5;
  if (v1)
  {
    outlined consume of Result<_DataTable, Error>(*(v4 + 40), *(v4 + 84));
    v6 = MLStyleTransfer.init(styleImage:contentTable:parameters:);
  }

  else
  {
    *(v4 + 72) = a1;
    v6 = MLStyleTransfer.init(styleImage:contentTable:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t static MLStyleTransfer.validateAndConvertParameters(_:styleImage:contentTable:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v60 = v3;
  inited = a2;
  v58 = a1;
  v53 = type metadata accessor for _Model.Parameters(0);
  v5 = *(*(v53 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v52 = &v46;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v54 = &v46;
  v10 = *a3;
  v11 = *(a3 + 8);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v13 = empty;
  v14 = type metadata accessor for CMLParameters();
  v59 = swift_allocObject(v14, 24, 7);
  *(v59 + 16) = v13;
  v50 = v10;
  v51 = v11 & 1;
  outlined copy of Result<_DataTable, Error>(v10, v11);
  v15._countAndFlagsBits = 0x55746E65746E6F63;
  v15._object = 0xEB00000000734C52;
  MLDataTable.subscript.getter(v15);
  outlined consume of Result<_DataTable, Error>(v50, v51);
  v16 = v48;
  if (v49)
  {
    v17 = v48;
    outlined consume of Result<_DataTable, Error>(v48, 1);
    v18 = v60;
  }

  else
  {
    v19 = *(v48 + 16);

    outlined consume of Result<_DataTable, Error>(v16, 0);
    v20 = v59;
    v21 = v60;
    CMLParameters.add(key:column:)(72, v19);
    v18 = v21;
    if (v21)
    {
LABEL_8:

      goto LABEL_10;
    }

    v17 = v19;
  }

  v22 = URL.path.getter(v17);
  v24 = v23;
  v25 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v25, 24, 7);
  v26 = specialized _UntypedColumn.init<A>(repeating:count:)(v22, v24, 1);
  v27 = *(v26 + 16);

  v20 = v59;
  CMLParameters.add(key:column:)(71, v27);
  if (v18)
  {

    goto LABEL_8;
  }

  v60 = v26;

  v28 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v29 = v58;
  v30 = *&v58[*(v28 + 36)];
  static MLStyleTransfer.ModelParameters.verifyStyleStrengthParameter(value:)(v30);
  v55 = v30;
  v31 = *&v29[*(v28 + 32)];
  static MLStyleTransfer.ModelParameters.verifyTextelDensityParameter(value:)(v31);
  v56 = v31;
  v57 = v28;
  v33 = tc_v1_flex_dict_create(0);
  if (!v33)
  {
    BUG();
  }

  v34 = v33;
  v35 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v35, v47);
  *(inited + 16) = v34;
  v36 = *v58;
  v37 = 7237219;
  if (*v58)
  {
    v37 = 0x6574694C6E6E63;
  }

  v38 = v54;
  *v54 = v37;
  *(v38 + 8) = (v36 << 58) | 0xE300000000000000;
  v39 = v53;
  swift_storeEnumTagMultiPayload(v38, v53, 5);
  CMLDictionary.add(_:)(v38);
  outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for _Model.Parameters);
  v40 = v52;
  *v52 = *&v58[v57[7]];
  swift_storeEnumTagMultiPayload(v40, v39, 0);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  *v40 = *&v58[v57[6]];
  swift_storeEnumTagMultiPayload(v40, v39, 1);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  *v40 = 4 * (v56 / 4);
  swift_storeEnumTagMultiPayload(v40, v39, 21);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  *v40 = v55;
  swift_storeEnumTagMultiPayload(v40, v39, 22);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  v41 = v58[v57[10]];
  v42 = 1869903201;
  if (v58[v57[10]])
  {
    v42 = 7696483;
  }

  *v40 = v42;
  v40[1] = ((v41 ^ 1u) << 56) - 0x1D00000000000000;
  swift_storeEnumTagMultiPayload(v40, v39, 9);
  CMLDictionary.add(_:)(v40);
  outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for _Model.Parameters);
  type metadata accessor for CMLFeatureValue();
  v43 = inited;

  v44 = CMLFeatureValue.__allocating_init(_:)(v43);
  v20 = v59;
  CMLParameters.add(key:featureValue:)(47, v44);

  v45 = inited;
  swift_setDeallocating(inited);
  tc_v1_release(*(v45 + 16));
LABEL_10:

  return v20;
}

uint64_t MLStyleTransfer.init(checkpoint:)(uint64_t a1)
{
  v18 = v1;
  v3 = *(type metadata accessor for MLCheckpoint(0) - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  outlined init with copy of MLTrainingSessionParameters(a1, &v18, type metadata accessor for MLCheckpoint);
  v7 = *(v3 + 80);
  v8 = ~*(v3 + 80) & (v7 + 16);
  v9 = swift_allocObject(&unk_38F9D0, v8 + v4, v7 | 7);
  outlined init with take of MLClassifierMetrics(&v18, v9 + v8, type metadata accessor for MLCheckpoint);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLStyleTransfer.init(checkpoint:), v9);
  if (v2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLCheckpoint);
  }

  else
  {
    v12 = v10;

    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLCheckpoint);
    v13 = v18;
    *v18 = v12;
    v19 = *(type metadata accessor for MLStyleTransfer(0) + 20);
    v14 = v13 + v19;
    v15 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v16 = &v14[v15[5]];
    v17 = type metadata accessor for URL(0);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
    *&v14[v15[6]] = 1;
    v14[v15[10]] = 0;
    *(v18 + v19) = 0;
    *&v14[v15[7]] = 500;
    *&v14[v15[8]] = 256;
    result = v15[9];
    *&v14[result] = 5;
  }

  return result;
}

uint64_t closure #1 in MLStyleTransfer.init(checkpoint:)(uint64_t a1, uint64_t a2)
{
  v2[6] = a2;
  v2[5] = a1;
  v3 = type metadata accessor for URL(0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLStyleTransfer.init(checkpoint:), 0, 0);
}

uint64_t closure #1 in MLStyleTransfer.init(checkpoint:)()
{
  (*(v0[8] + 16))(v0[9], v0[6], v0[7]);
  v2 = URL.absoluteString.getter();
  v3 = v1;
  if ((v1 & 0x1000000000000000) != 0 || !(v1 & 0x2000000000000000 | v2 & 0x1000000000000000))
  {
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v2, v1, &type metadata for OpaquePointer);
LABEL_7:
    v3;
    goto LABEL_10;
  }

  v15 = v0 + 4;
  v4 = swift_task_alloc(32);
  *(v4 + 24) = 0;
  *(v4 + 16) = closure #1 in CMLModel.init(url:);
  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((v2 & 0x1000000000000000) != 0)
    {
      v5 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v6 = v2 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter(v2, v3);
      v6 = v14;
    }

    *v15 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v5, v6, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    v4;
    goto LABEL_7;
  }

  v0[2] = v2;
  v0[3] = v3 & 0xFFFFFFFFFFFFFFLL;
  v7 = specialized handling<A, B>(_:_:)((v0 + 2));
  if (!v7)
  {
    BUG();
  }

  *v15 = v7;
  v3;
  v4;
LABEL_10:
  v8 = v0[4];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v9 = type metadata accessor for CMLModel();
  v10 = swift_allocObject(v9, 24, 7);
  *(v10 + 16) = v8;
  v11 = type metadata accessor for _Model();
  swift_allocObject(v11, 48, 7);
  v12 = swift_task_alloc(80);
  v0[10] = v12;
  *v12 = v0;
  v12[1] = closure #1 in MLStyleTransfer.init(checkpoint:);
  return _Model.init(impl:)(v10);
}

{
  v1 = *(v0 + 72);
  **(v0 + 40) = *(v0 + 88);
  v1;
  return (*(v0 + 8))();
}

uint64_t closure #1 in MLStyleTransfer.init(checkpoint:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v5;
  if (v1)
  {
    *(v4 + 72);
    return (*(v6 + 8))();
  }

  else
  {
    *(v4 + 88) = a1;
    return swift_task_switch(closure #1 in MLStyleTransfer.init(checkpoint:), 0, 0);
  }
}

uint64_t sub_56A30()
{
  v11 = v0;
  v1 = type metadata accessor for MLCheckpoint(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + v0;
  v6 = *(v2 + 64) + v4;
  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 8))(v5, v7);
  v8 = v5 + *(v1 + 28);
  v9 = type metadata accessor for Date(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(*(v1 + 32) + v5);
  return swift_deallocObject(v11, v6, v3 | 7);
}

uint64_t partial apply for closure #1 in MLStyleTransfer.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLCheckpoint(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(checkpoint:)(a1, v4);
}

void *static MLStyleTransfer.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLStyleTransfer>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

uint64_t static MLStyleTransfer.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v10 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  outlined init with copy of MLTrainingSessionParameters(v24, &v21, type metadata accessor for MLStyleTransfer.DataSource);
  outlined init with copy of MLTrainingSessionParameters(v26, &v21, type metadata accessor for MLStyleTransfer.ModelParameters);
  v26 = a3;
  outlined init with copy of MLTrainingSessionParameters(a3, &v21, type metadata accessor for MLTrainingSessionParameters);
  v16 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_allocObject(v16, *(v16 + 48), *(v16 + 52));
  v17 = v23;
  result = MLStyleTransfer.TrainingSessionDelegate.init(trainingData:modelParameters:sessionParameters:)(&v21, &v21, &v21);
  if (!v17)
  {
    v22[3] = v16;
    v22[4] = &protocol witness table for MLStyleTransfer.TrainingSessionDelegate;
    v22[0] = result;
    v19 = v25;
    outlined init with copy of MLTrainingSessionParameters(v26, v25, type metadata accessor for MLTrainingSessionParameters);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>);
    swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v22, v19, 14);
  }

  return result;
}

void *static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLStyleTransfer>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLStyleTransfer.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = MLStyleTransfer.TrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for MLStyleTransfer.TrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 14);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(void *a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v50 = &v42;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v45 = &v42;
  v16 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = alloca(v17);
  v21 = alloca(v17);
  if (a2)
  {
    v22 = v54;
    v42 = v54;
    swift_storeEnumTagMultiPayload(&v42, v6, 1);
    swift_errorRetain(v22);
    v53(&v42);
    v23 = &v42;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  }

  v48 = *(v16 - 8);
  v47 = v17;
  v46 = &v42;
  v54 = &v42;
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v43);
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v25 = type metadata accessor for MLStyleTransfer.TrainingSessionDelegate(0);
  if (!swift_dynamicCast(&v44, v43, v24, v25, 6))
  {
    v31 = v53;
    v30 = v54;
    goto LABEL_7;
  }

  v51 = v44;
  v26 = v44 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v44 + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_trainingParameters, v43, 0, 0);
  v27 = v26;
  v28 = v45;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v45, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v16);
  v30 = v54;
  if (EnumTagSinglePayload == 1)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for MLStyleTransfer.PersistentParameters?);
    v31 = v53;
LABEL_7:
    v32 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v33 = swift_allocError(&type metadata for MLCreateError, v32, 0, 0);
    *v34 = 0xD000000000000021;
    *(v34 + 8) = "ults from vision request." + 0x8000000000000000;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    *v30 = v33;
    swift_storeEnumTagMultiPayload(v30, v6, 1);
    v31(v30);
    v23 = v30;
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  }

  v49 = &v42;
  outlined init with take of MLClassifierMetrics(v28, &v42, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v36 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(v50, 1, 1, v36);
  v37 = v46;
  outlined init with copy of MLTrainingSessionParameters(&v42, v46, type metadata accessor for MLStyleTransfer.PersistentParameters);
  v38 = *(v48 + 80);
  v39 = ~*(v48 + 80) & (v38 + 40);
  v40 = (v47 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject(&unk_38FAC8, v40 + 16, v38 | 7);
  *(v41 + 16) = 0;
  *(v41 + 32) = v51;
  outlined init with take of MLClassifierMetrics(v37, v41 + v39, type metadata accessor for MLStyleTransfer.PersistentParameters);
  *(v41 + v40) = v53;
  *(v41 + v40 + 8) = v52;

  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v50, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), v41);

  return outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLStyleTransfer.PersistentParameters);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[4] = a6;
  v7[3] = a5;
  v7[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v7[6] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)()
{
  v1 = swift_task_alloc(32);
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc(64);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5Tu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5Tu))(*(v0 + 48), &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), v1);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;
  *(*v0 + 64);
  v1;
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 32))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v3[5] = v4;
  v3[6] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[4];
  v10 = *(v0[3] + OBJC_IVAR____TtCV8CreateML15MLStyleTransfer23TrainingSessionDelegate_model);
  v4 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v11 = *(v3 + v4[5]);
  outlined init with copy of MLTrainingSessionParameters(v3 + v4[6], &v1[v2[5]], type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v5 = *(v3 + v4[7]);
  v6 = *(v3 + v4[8]);
  *&v1[v2[6]] = 1;
  v7 = v2[10];
  *v1 = v11;
  *&v1[v2[7]] = 500;
  *&v1[v2[8]] = v5;
  *&v1[v2[9]] = v6;
  v1[v7] = *(v3 + v4[9]);

  v8 = swift_task_alloc(64);
  v0[7] = v8;
  *v8 = v0;
  v8[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:);
  return MLStyleTransfer.init(model:parameters:)(v0[2], v10, v0[6]);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:), 0, 0);
  }

  *(v3 + 48);
  return (*(v3 + 8))();
}

{
  *(v0 + 48);
  v1 = *(v0 + 64);
  return (*(v0 + 8))();
}

CGImageRef_optional __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.stylize(image:)(CGImageRef image)
{
  v2 = type metadata accessor for VNImageOption(0);
  v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  v4 = image;
  v5 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v2, &type metadata for Any + 8, v3);
  objc_allocWithZone(VNImageRequestHandler);
  v6 = @nonobjc VNImageRequestHandler.init(cgImage:options:)(v4, v5);
  v7 = MLStyleTransfer.stylize(using:)(v6);
  if (v1)
  {
  }

  else
  {
    v9 = v7;
    imageOut = 0;
    VTCreateCGImageFromCVPixelBuffer(v7, 0, &imageOut);

    return imageOut;
  }

  return result;
}

id MLStyleTransfer.stylize(using:)(id a1)
{
  v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNCoreMLModel, VNCoreMLModel_ptr);
  v4 = *(*v2 + 24);
  v5 = v3;
  v6 = @nonobjc VNCoreMLModel.__allocating_init(for:)(v4);
  if (v1)
  {
    return v5;
  }

  v7 = v6;
  v8 = objc_allocWithZone(VNCoreMLRequest);
  v9 = [v8 initWithModel:v7];
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v27 = v7;
  v11 = swift_allocObject(v10, 40, 7);
  v11[2] = 1;
  v11[3] = 3;
  v11[4] = v9;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v28 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11;
  v30 = 0;
  v13 = "performRequests:error:";
  LOBYTE(v9) = [a1 performRequests:isa error:&v30];

  v14 = v30;
  if (!v9)
  {
    v25 = v30;
    _convertNSErrorToError(_:)(v14);
    v22 = v25;

    v24 = v27;
    v5 = v28;
    goto LABEL_10;
  }

  v15 = v28;
  v14;
  v29 = v15;
  v16 = outlined bridged method (ob) of @objc VNRequest.results.getter(v15);
  if (!v16 || (v17 = v16, v18 = specialized _arrayConditionalCast<A, B>(_:)(v16), v17, !v18))
  {
    v22 = &type metadata for MLCreateError;
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v23 = 0xD000000000000039;
    *(v23 + 8) = "textel density out of bounds [" + 0x8000000000000000;
    *(v23 + 16) = 0;
    *(v23 + 32) = 0;
    *(v23 + 48) = 0;
    v5 = v27;
    v24 = v29;
LABEL_10:
    swift_willThrow(v22, v13);

    return v5;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v18 & 0xC000000000000003) == 0, v18);
  if ((v18 & 0xC000000000000003) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v18);
  }

  else
  {
    v19 = *(v18 + 32);
  }

  v20 = v19;
  v18;
  v21 = [v20 pixelBuffer];
  v5 = v21;

  return v5;
}

uint64_t MLStyleTransfer.getFullMetadata(_:)(uint64_t *a1)
{
  v3 = v1;
  v4 = a1[1];
  if (v4)
  {
    v29 = *a1;
    v5 = a1[8];
    v6 = *(type metadata accessor for MLStyleTransfer(0) + 20) + v2;
    v22[0] = v29;
    v22[1] = v4;
    v7 = *(a1 + 2);
    v8 = *(a1 + 3);
    v23 = *(a1 + 1);
    v24 = v7;
    v25 = v8;
    if (v5)
    {
      v26 = v5;
      outlined retain of MLModelMetadata(v22);
      v9 = MLStyleTransfer.ModelParameters.modelParametersDescription()();
      v28 = v4;
      v10 = v9;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
      v27 = v5;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v10, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v27);
      v4 = v28;
      result = v27;
    }

    else
    {
      v26 = 0;
      outlined retain of MLModelMetadata(v22);
      result = MLStyleTransfer.ModelParameters.modelParametersDescription()();
    }

    *v3 = v29;
    *(v3 + 8) = v4;
    v20 = *(a1 + 2);
    v21 = *(a1 + 3);
    *(v3 + 16) = *(a1 + 1);
    *(v3 + 32) = v20;
    *(v3 + 48) = v21;
    *(v3 + 64) = result;
  }

  else
  {
    v13 = NSFullUserName();
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)(v14);
    v17 = v16;

    MLModelMetadata.init(author:shortDescription:license:version:additional:)(v15, v17, 0xD000000000000033, ("RandomForestRegressor" + 0x8000000000000000), 0, 0, 49, 0xE100000000000000, 0);
    v18 = *(type metadata accessor for MLStyleTransfer(0) + 20) + v2;
    v19 = MLStyleTransfer.ModelParameters.modelParametersDescription()();
    result = *(v3 + 64);
    *(v3 + 64) = v19;
  }

  return result;
}

uint64_t MLStyleTransfer.ModelParameters.modelParametersDescription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, String)>);
  inited = swift_initStackObject(v1, v9);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x687469726F676C41;
  *(inited + 40) = 0xE90000000000006DLL;
  v3 = *v0;
  v4 = 7237219;
  if (*v0)
  {
    v4 = 0x6574694C6E6E63;
  }

  *(inited + 48) = v4;
  *(inited + 56) = (v3 << 58) | 0xE300000000000000;
  strcpy((inited + 64), "Textel Density");
  *(inited + 79) = -18;
  v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v10 = *&v0[*(v5 + 32)];
  *(inited + 80) = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  *(inited + 88) = v6;
  strcpy((inited + 96), "Style Strength");
  *(inited + 111) = -18;
  v10 = *&v0[*(v5 + 36)];
  *(inited + 112) = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  *(inited + 120) = v7;
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for String, &protocol witness table for String);
}

uint64_t *MLStyleTransfer.write(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v3 = *v2;
  MLStyleTransfer.getFullMetadata(_:)(a2);
  _Model.write(to:metadata:)(a1, v6);
  qmemcpy(v5, v6, sizeof(v5));
  return outlined release of MLModelMetadata?(v5);
}

uint64_t *MLStyleTransfer.write(toFile:metadata:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *v3;
  MLStyleTransfer.getFullMetadata(_:)(a3);
  _Model.write(toFile:metadata:)(a1, a2, v7);
  qmemcpy(v6, v7, sizeof(v6));
  return outlined release of MLModelMetadata?(v6);
}

uint64_t *static MLStyleTransfer.downloadAssets()()
{
  v1 = type metadata accessor for _Model();
  swift_allocObject(v1, 48, 7);
  result = _Model.init(type:)(14);
  if (!v0)
  {
    v3 = result[2];

    CMLModel.requestStyleTransferAssets()();
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> CMLModel.requestStyleTransferAssets()()
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v5);
  *(inited + 16) = v2;
  CMLModel.callFunction(name:arguments:)(20, inited);
  if (!v0)
  {
  }

  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
}

void MLStyleTransfer.DataSource.processImages(textelDensity:styleImageDestination:contentImagesDestination:)(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void (*a5)(uint64_t *, uint64_t *, uint64_t), double a6)
{
  v125 = v6;
  v111 = v7;
  v116 = a5;
  imagesDictionary._rawValue = a4;
  v115 = a2;
  v100 = a1;
  v103 = type metadata accessor for UUID(0);
  v97 = *(v103 - 8);
  v9 = *(v97 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v98 = &v97;
  v117 = type metadata accessor for UTType(0);
  v12 = *(v117 - 1);
  v13 = *(v12 + 8);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v107 = &v97;
  v122 = type metadata accessor for URL(0);
  v123 = *(v122 - 8);
  v16 = *(v123 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v112 = &v97;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v99 = &v97;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v106 = &v97;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v113 = &v97;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v120 = &v97;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v121 = &v97;
  v29 = alloca(v16);
  v30 = alloca(v16);
  v119 = &v97;
  v31 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v34 = v125;
  static MLStyleTransfer.ModelParameters.verifyTextelDensityParameter(value:)(a3);
  if (!v34)
  {
    v114 = v12;
    v108 = a3 / 4;
    v125 = 0;
    outlined init with copy of MLTrainingSessionParameters(v111, &v97, type metadata accessor for MLStyleTransfer.DataSource);
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v36 = &v97 + *(v35 + 48);
    v37 = *(v35 + 64);
    v111 = *(&v97 + v37);
    LOBYTE(v118) = *(&v97 + v37 + 8);
    v38 = *(v123 + 32);
    v39 = v119;
    v40 = v122;
    v38(v119, &v97, v122);
    v101 = v38;
    v38(v121, v36, v40);
    v41 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CIImage, CIImage_ptr);
    v42 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v43 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v40, v41, v42);
    v44 = v125;
    MLStyleTransfer.DataSource.getProcessedStyleImageURL(for:destination:)(v39, imagesDictionary._rawValue, a6);
    if (v44)
    {
      v43;
      v45 = *(v123 + 8);
      v45(v121, v40);
      v45(v119, v40);
    }

    else
    {
      v46 = 4 * v108;
      v118 = v118;
      v47 = MLStyleTransfer.DataSource.processImage(sourceURL:textelDensity:processingOption:)(v119, 4 * v108, v111, v118);
      v108 = v46;
      v48 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v43);
      v110 = v43;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v120, isUniquelyReferenced_nonNull_native);
      imagesDictionary._rawValue = v110;
      MLStyleTransfer.DataSource.getProcessedContentImagesDirectory(for:)(v116);
      v109 = v48;
      v50 = v107;
      static UTType.image.getter(a6);
      v51 = static _FileUtilities.readableFiles(at:type:)(v121, v50);
      v125 = 0;
      v52 = v122;
      v53 = v119;
      (*(v114 + 1))(v50, v117);
      v54 = v51[2];
      if (v54)
      {
        v55 = (*(v123 + 80) + 32) & ~*(v123 + 80);
        v105 = v51;
        v56 = v51 + v55;
        v57 = *(v123 + 16);
        v104 = *(v123 + 72);
        v58 = v103;
        v59 = v113;
        v116 = v57;
        while (1)
        {
          v107 = v54;
          v114 = v56;
          v57(v59, v56, v52);
          v60 = v98;
          UUID.init()();
          v61 = UUID.uuidString.getter();
          v63 = v62;
          (*(v97 + 8))(v60, v58);
          v64 = v99;
          URL.appendingPathComponent(_:)(v61, v63);
          v65 = v122;
          v63;
          URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
          v66 = v65;
          v67 = *(v123 + 8);
          v67(v64, v65);
          v68 = v125;
          v69 = MLStyleTransfer.DataSource.processImage(sourceURL:textelDensity:processingOption:)(v113, v108, v111, v118);
          v125 = v68;
          v70 = v106;
          if (v68)
          {
            break;
          }

          v71 = v69;
          v102 = v67;
          v72 = v112;
          v116(v112, v106, v66);
          v117 = v71;
          rawValue = imagesDictionary._rawValue;
          v74 = swift_isUniquelyReferenced_nonNull_native(imagesDictionary._rawValue);
          v110 = rawValue;
          v75 = specialized __RawDictionaryStorage.find<A>(_:)(v72);
          v126 = v76;
          v77 = (v76 & 1) == 0;
          v78 = __OFADD__(rawValue[2], v77);
          v79 = rawValue[2] + v77;
          if (v78)
          {
            BUG();
          }

          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<URL, CIImage>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v74, v79))
          {
            v80 = v112;
            v75 = specialized __RawDictionaryStorage.find<A>(_:)(v112);
            LOBYTE(v82) = v82 & 1;
            LOBYTE(v83) = v126;
            if ((v126 & 1) != v82)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v122, v79, v82, v83, v81);
              BUG();
            }

            v84 = v117;
            v85 = v80;
          }

          else
          {
            v85 = v112;
            v84 = v117;
            LOBYTE(v83) = v126;
          }

          imagesDictionary._rawValue = v110;
          if (v83)
          {
            v86 = v110[7];

            *(v86 + 8 * v75) = v84;
            v87 = v112;
            v88 = v84;
          }

          else
          {
            v110[(v75 >> 6) + 8] |= 1 << v75;
            v116((*(imagesDictionary._rawValue + 6) + v104 * v75), v85, v122);
            v89 = imagesDictionary._rawValue;
            *(*(imagesDictionary._rawValue + 7) + 8 * v75) = v84;
            v90 = v89[2];
            v78 = __OFADD__(1, v90);
            v91 = v90 + 1;
            if (v78)
            {
              BUG();
            }

            v89[2] = v91;
            v88 = v117;
            v87 = v85;
          }

          v52 = v122;
          v92 = v102;
          v102(v87, v122);
          (objc_release)(v88);
          v92(v106, v52);
          v59 = v113;
          v92(v113, v52);
          v56 = &v114[v104];
          v54 = (v107 - 1);
          v57 = v116;
          v58 = v103;
          if (v107 == (&dword_0 + 1))
          {
            v105;
            v93 = v119;
            goto LABEL_21;
          }
        }

        v67(v70, v65);
        v67(v113, v65);
        v105;
        v67(v115, v65);
        v67(v120, v65);
        imagesDictionary._rawValue;
        v67(v121, v65);
        v67(v119, v65);
      }

      else
      {
        v51;
        v93 = v53;
LABEL_21:
        v94 = imagesDictionary._rawValue;
        MLStyleTransfer.DataSource.saveImagesToDisk(imagesDictionary:)(imagesDictionary);

        v94;
        v96 = *(v123 + 8);
        if (v95)
        {
          v96(v115, v52);
          v96(v120, v52);
          v96(v121, v52);
          v96(v93, v52);
        }

        else
        {
          v96(v121, v52);
          v96(v93, v52);
          v101(v100, v120, v52);
        }
      }
    }
  }
}

void static MLStyleTransfer.ModelParameters.verifyTextelDensityParameter(value:)(uint64_t a1)
{
  if ((a1 - 64) > 0x3C0)
  {
    _StringGuts.grow(_:)(38);
    0xE000000000000000;
    *&v7 = 0xD00000000000001ELL;
    *(&v7 + 1) = "Style image not readable." + 0x8000000000000000;
    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v1._object;
    String.append(_:)(v1);
    object;
    v3._countAndFlagsBits = 8236;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = v4._object;
    String.append(_:)(v4);
    v5;
    v3._countAndFlagsBits = 11869;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v3._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v3._object, 0, 0);
    *v6 = v7;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v3._object);
  }
}

uint64_t MLStyleTransfer.DataSource.getProcessedStyleImageURL(for:destination:)(uint64_t a1, uint64_t a2, double a3)
{
  v45 = v4;
  v39 = a2;
  v46 = v3;
  v43 = type metadata accessor for UUID(0);
  v42 = *(v43 - 8);
  v5 = *(v42 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v38;
  v48 = type metadata accessor for URL(0);
  v47 = *(v48 - 8);
  v8 = *(v47 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v41 = &v38;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v49 = &v38;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v38;
  v16 = type metadata accessor for UTType(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  static UTType.image.getter(a3);
  v21 = static _FileUtilities.isReadableFile(at:of:)(a1, &v38);
  (*(v17 + 8))(&v38, v16);
  if (v21)
  {
    v22 = v40;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v40, &demangling cache variable for type metadata for URL?);
    if (__swift_getEnumTagSinglePayload(v22, 1, v48) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v22, &demangling cache variable for type metadata for URL?);
      v23 = NSTemporaryDirectory();
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)(v24);
      v27 = v26;

      URL.init(fileURLWithPath:isDirectory:)(v25, v27, 1);
      v27;
      v28 = v44;
      UUID.init()();
      v29 = UUID.uuidString.getter();
      v31 = v30;
      (*(v42 + 8))(v28, v43);
      v32 = v41;
      URL.appendingPathComponent(_:)(v29, v31);
      v31;
      URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
      v33 = *(v47 + 8);
      v34 = v48;
      v33(v32, v48);
      return (v33)(v49, v34);
    }

    else
    {
      return (*(v47 + 32))(v46, v22, v48);
    }
  }

  else
  {
    v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
    *v37 = 0xD000000000000019;
    *(v37 + 8) = "Scale Fill Rotate 90CCW" + 0x8000000000000000;
    *(v37 + 16) = 0;
    *(v37 + 32) = 0;
    *(v37 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v36);
  }
}

void *MLStyleTransfer.DataSource.processImage(sourceURL:textelDensity:processingOption:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v55 = v4;
  v51 = a4;
  v49 = a3;
  v52 = a2;
  v5 = type metadata accessor for URL(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v47;
  v53 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
  v50[1] = a1;
  (*(v6 + 16))(v47, a1, v5);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLFeatureValueImageOption, Any)>);
  inited = swift_initStackObject(v10, v47);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = MLFeatureValueImageOptionCropAndScale;
  inited[8] = &type metadata for UInt;
  inited[5] = 0;
  v12 = type metadata accessor for MLFeatureValueImageOption(0);
  v13 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
  MLFeatureValueImageOptionCropAndScale;
  v14 = Dictionary.init(dictionaryLiteral:)(inited, v12, &type metadata for Any + 8, v13);
  v15 = v55;
  v16 = @nonobjc MLFeatureValue.__allocating_init(imageAt:pixelsWide:pixelsHigh:pixelFormatType:options:)(v48, v52, v52, 0x52474241u, v14);
  if (!v15)
  {
    v13 = v16;
    v17 = v51;
    if (AnalyticsReporter.init()())
    {
      goto LABEL_20;
    }

    v55 = v13;
    v52 = 0;
    if (v17)
    {
      v18 = "Unable to process image." + 0x8000000000000000;
      v19 = 0xD000000000000020;
    }

    else
    {
      v19 = VNImageCropAndScaleOption.description.getter(v49);
      v18 = v20;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_styleTransfer, __PAIR128__(("rocessing Option" + 0x8000000000000000), 0xD000000000000014), __PAIR128__(v18, v19));
    v21 = v18;
    URL._bridgeToObjectiveC()(v21);
    v23 = v22;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v25 = CGImageSourceCreateWithURL(v23, isa);

    v13 = v55;
    if (!v25)
    {
      goto LABEL_20;
    }

    v26 = Dictionary._bridgeToObjectiveC()().super.isa;
    v27 = CGImageSourceCopyPropertiesAtIndex(v25, 0, v26);

    if (v27)
    {
      v53 = v25;
      v50[0] = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(v27, v50, &type metadata for String, &type metadata for Swift.AnyObject + 8, &protocol witness table for String);

      v28 = v50[0];
      if (v50[0])
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)(kCGImagePropertyPixelHeight);
        v31 = v30;
        v32 = specialized Dictionary.subscript.getter(v29, v30, v28);
        v31;
        if (v32)
        {
          v50[0] = v32;
          if (swift_dynamicCast(&quantity, v50, &type metadata for Swift.AnyObject + 8, &type metadata for Float, 6))
          {
            AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(("Style Image Width" + 0x8000000000000000), 0xD000000000000012), quantity);
          }
        }

        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)(kCGImagePropertyPixelWidth);
        v35 = v34;
        v36 = specialized Dictionary.subscript.getter(v33, v34, v28);
        v35;
        v28;
        if (v36)
        {
          v50[0] = v36;
          v37 = swift_dynamicCast(&quantity, v50, &type metadata for Swift.AnyObject + 8, &type metadata for Float, 6);
          v13 = v55;
          if (v37)
          {
            AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_styleTransfer, __PAIR128__(("Preprocessing Option" + 0x8000000000000000), 0xD000000000000011), quantity);
          }

          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v38 = v53;
    }

    else
    {
      v38 = v25;
    }

LABEL_19:
    v13 = v55;
LABEL_20:
    v39 = [v13 imageBufferValue];
    v40 = v39;
    if (v40)
    {
      v41 = v40;
      v42 = objc_allocWithZone(CIImage);
      v43 = v13;
      v13 = [v42 initWithCVPixelBuffer:v41];
    }

    else
    {
      v45 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v45, 0, 0);
      *v46 = 0xD000000000000018;
      *(v46 + 8) = " to be a directory URL." + 0x8000000000000000;
      *(v46 + 16) = 0;
      *(v46 + 32) = 0;
      *(v46 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v45);
    }
  }

  return v13;
}

NSURL *MLStyleTransfer.DataSource.getProcessedContentImagesDirectory(for:)(uint64_t a1)
{
  v46 = v2;
  v47 = v1;
  v44 = type metadata accessor for UUID(0);
  v43 = *(v44 - 8);
  v3 = *(v43 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v45 = &v42;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for URL(0);
  v51 = *(v9 - 8);
  v10 = v51[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v49 = &v42;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v50 = &v42;
  v15 = alloca(v10);
  v16 = alloca(v10);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v42, &demangling cache variable for type metadata for URL?);
  if (__swift_getEnumTagSinglePayload(&v42, 1, v9) == 1)
  {
    v48 = v9;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, &demangling cache variable for type metadata for URL?);
    v17 = NSTemporaryDirectory();
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)(v18);
    v21 = v20;

    URL.init(fileURLWithPath:isDirectory:)(v19, v21, 1);
    v21;
    v22 = v45;
    UUID.init()();
    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v43 + 8))(v22, v44);
    URL.appendingPathComponent(_:)(v23, v25);
    v25;
    v26 = objc_opt_self(NSFileManager);
    v27 = [v26 defaultManager];
    v28 = v27;
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v52 = 0;
    LOBYTE(v22) = [(NSURL *)v28 createDirectoryAtURL:v29 withIntermediateDirectories:0 attributes:0 error:&v52];

    v31 = v52;
    if (v22)
    {
      v32 = v51;
      v33 = v51[1];
      v52;
      v34 = v48;
      v33(v50, v48);
      (v32[4])(v47, v49, v34);
    }

    else
    {
      v38 = v52;
      _convertNSErrorToError(_:)(v31);

      swift_willThrow(v38, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:");
      v39 = v51[1];
      v40 = v48;
      v39(v49, v48);
      v39(v50, v40);
    }
  }

  else
  {
    v35 = v51[4];
    v35(&v42, &v42, v9);
    if (URL.hasDirectoryPath.getter())
    {
      v35(v47, &v42, v9);
    }

    else
    {
      v36 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v36, 0, 0);
      *v37 = 0xD000000000000037;
      *(v37 + 8) = "Style strength out of bounds [" + 0x8000000000000000;
      *(v37 + 16) = 0;
      *(v37 + 32) = 0;
      *(v37 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v36);
      (v51[1])(&v42, v9);
    }
  }

  return __stack_chk_guard;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLStyleTransfer.DataSource.saveImagesToDisk(imagesDictionary:)(Swift::OpaquePointer imagesDictionary)
{
  v59 = v1;
  v2 = 0;
  v60 = type metadata accessor for URL(0);
  v61 = *(v60 - 8);
  v3 = *(v61 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage)?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = &v48;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v51 = &v48;
  v11 = objc_allocWithZone(CIContext);
  v12 = [v11 init];
  v13 = 1 << *(imagesDictionary._rawValue + 32);
  v62 = v12;
  v14 = ~(-1 << v13);
  if (v13 >= 64)
  {
    v14 = -1;
  }

  v15 = *(imagesDictionary._rawValue + 8) & v14;
  v57 = kCIFormatRGBA16;
  v64 = (v13 + 63) >> 6;
  v53 = v64 - 1;
  rawValue = imagesDictionary._rawValue;
  imagesDictionary._rawValue;
  v52 = &type metadata for Any + 8;
  v58 = &v48;
  while (1)
  {
    if (v15)
    {
      goto LABEL_5;
    }

    v22 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v22 >= v64)
    {
      v23 = v2;
    }

    else
    {
      v15 = rawValue[v22 + 8];
      if (v15)
      {
        ++v2;
LABEL_5:
        v63 = v2;
        _BitScanForward64(&v16, v15);
        v55 = (v15 - 1) & v15;
        v17 = v16 | (v2 << 6);
        v18 = rawValue;
        v19 = v56;
        (*(v61 + 16))(v56, rawValue[6] + v17 * *(v61 + 72), v60);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage));
        v21 = *(v18[7] + 8 * v17);
        *(v19 + *(v20 + 48)) = v21;
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v20);
        v21;
        v54 = v63;
        goto LABEL_12;
      }

      v23 = (v2 + 2);
      if (v2 + 2 >= v64)
      {
        v23 = (v2 + 1);
      }

      else
      {
        if (rawValue[v22 + 9])
        {
          v2 += 2;
          v15 = rawValue[v22 + 9];
          goto LABEL_5;
        }

        v41 = v2;
        v2 += 3;
        if (v22 + 2 < v64)
        {
          v15 = rawValue[v22 + 10];
          if (v15)
          {
            goto LABEL_5;
          }

          v23 = (v22 + 2);
          if (v22 + 3 < v64)
          {
            v15 = rawValue[v22 + 11];
            if (v15)
            {
              v2 = v22 + 3;
              goto LABEL_5;
            }

            v23 = (v22 + 3);
            if (v22 + 4 < v64)
            {
              v15 = rawValue[v22 + 12];
              if (v15)
              {
                v2 = v22 + 4;
                goto LABEL_5;
              }

              v2 = v22 + 5;
              v23 = (v22 + 4);
              if (v22 + 5 < v64)
              {
                v15 = rawValue[v22 + 13];
                if (v15)
                {
                  goto LABEL_5;
                }

                v42 = v41 + 7;
                while (v42 < v64)
                {
                  v15 = rawValue[v42++ + 8];
                  if (v15)
                  {
                    v2 = v42 - 1;
                    goto LABEL_5;
                  }
                }

                v23 = v53;
              }
            }
          }
        }
      }
    }

    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage));
    v19 = v56;
    __swift_storeEnumTagSinglePayload(v56, 1, 1, v24);
    v55 = 0;
    v54 = v23;
LABEL_12:
    v25 = v19;
    v26 = v51;
    outlined init with take of (key: URL, value: CIImage)?(v25, v51);
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage));
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {

      goto LABEL_39;
    }

    v28 = *(v26 + *(v27 + 48));
    v29 = v58;
    (*(v61 + 32))(v58, v26, v60);
    v30 = [v28 colorSpace];
    v31 = v30;
    v63 = v31;
    if (!v31)
    {
      v43 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      v44 = swift_allocError(&type metadata for MLCreateError, v43, 0, 0);
      *v45 = 0xD00000000000001ELL;
      *(v45 + 8) = "alidation image." + 0x8000000000000000;
      *(v45 + 16) = 0;
      *(v45 + 32) = 0;
      *(v45 + 48) = 2;
      v59 = v44;
      swift_willThrow(&type metadata for MLCreateError, v43);

      goto LABEL_38;
    }

    URL._bridgeToObjectiveC()(v31);
    v50 = v32;
    v33 = type metadata accessor for CIImageRepresentationOption(0);
    v34 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
    v49 = v28;
    v35 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v33, v52, v34);
    v36 = v49;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v35;
    v66 = 0;
    v38 = v50;
    v39 = [v62 writePNGRepresentationOfImage:v36 toURL:v50 format:v57 colorSpace:v63 options:isa error:?];

    v40 = v66;
    if (!v39)
    {
      break;
    }

    v66;
    (*(v61 + 8))(v58, v60);
    (objc_release)(v36);
    (objc_release)(v63);
    v2 = v54;
    v15 = v55;
  }

  v46 = v66;
  v47 = _convertNSErrorToError(_:)(v40);

  v59 = v47;
  swift_willThrow(v46, "writePNGRepresentationOfImage:toURL:format:colorSpace:options:error:");

  v29 = v58;
LABEL_38:
  (*(v61 + 8))(v29, v60);
LABEL_39:
}

id @nonobjc MLFeatureValue.__allocating_init(imageAt:pixelsWide:pixelsHigh:pixelFormatType:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v16 = v6;
  if (a5)
  {
    type metadata accessor for MLFeatureValueImageOption(0);
    lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
    v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    a5;
  }

  else
  {
    v7.super.isa = 0;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [ObjCClassFromMetadata featureValueWithImageAtURL:v16 pixelsWide:a2 pixelsHigh:a3 pixelFormatType:a4 options:v7.super.isa error:?];
  v10 = v9;

  if (v10)
  {
    v11 = type metadata accessor for URL(0);
    v12 = *(*(v11 - 8) + 8);
    0;
    v12(a1, v11);
  }

  else
  {
    v13 = 0;
    _convertNSErrorToError(_:)(0);

    swift_willThrow(v13, "featureValueWithImageAtURL:pixelsWide:pixelsHigh:pixelFormatType:options:error:");
    v14 = type metadata accessor for URL(0);
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v10;
}

uint64_t VNImageCropAndScaleOption.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x43207265746E6543;
    case 258:
      return 0xD000000000000017;
    case 2:
      return 0x694620656C616353;
    case 257:
      return 0xD000000000000016;
    case 1:
      return 0x694620656C616353;
    default:
      return 0x6669636570736E55;
  }
}

uint64_t MLStyleTransfer.DataSource.getStyleImageAndContentTable()(_BYTE *a1, void *a2)
{
  v25 = a2;
  v26 = a1;
  v23 = type metadata accessor for URL(0);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v24 = v22;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = *(*(type metadata accessor for MLStyleTransfer.DataSource(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLTrainingSessionParameters(v3, v22, type metadata accessor for MLStyleTransfer.DataSource);
  v13 = &v22[*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?)) + 48)];
  v30 = v4;
  v14 = *(v4 + 32);
  v29 = v22;
  v15 = v23;
  v14(v22, v22, v23);
  v16 = v13;
  v17 = v24;
  v18 = v14(v24, v16, v15);
  static MLStyleTransfer.generateTrainingTable(directoryURL:)(v17, v18);
  if (v2)
  {
    v19 = *(v30 + 8);
    v19(v17, v15);
    return (v19)(v29, v15);
  }

  else
  {
    (*(v30 + 8))(v17, v15);
    v21 = v27;
    LOBYTE(v30) = v28;
    v14(v26, v29, v15);
    result = v25;
    *v25 = v21;
    *(result + 8) = v30;
  }

  return result;
}

uint64_t static MLStyleTransfer.generateTrainingTable(directoryURL:)(uint64_t a1, double a2)
{
  v16 = v3;
  v15 = v2;
  v4 = type metadata accessor for UTType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  static UTType.image.getter(a2);
  v9 = v16;
  v10 = static _FileUtilities.readableFiles(at:type:)(a1, &v15);
  if (v9)
  {
    return (*(v5 + 8))(&v15, v4);
  }

  v16 = v10;
  (*(v5 + 8))(&v15, v4);
  v12 = v16;
  if (*(v16 + 16))
  {
    static MLStyleTransfer.generateTrainingTable(urls:)(v16);
    return v12;
  }

  else
  {
    v16;
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v14 = 0xD00000000000003CLL;
    *(v14 + 8) = "training_content_loss" + 0x8000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v13);
  }
}

char MLStyleTransfer.ModelParameters.algorithm.setter(char *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.validation.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 20), v2, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
}

uint64_t MLStyleTransfer.ModelParameters.maxIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.textelDensity.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 32);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.styleStrength.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 36);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ValidationData.preprocessValidationData(to:)(uint64_t a1)
{
  v64 = v1;
  v63 = v2;
  v56 = a1;
  v58 = type metadata accessor for UUID(0);
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v59 = &v54;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v65 = &v54;
  v54 = type metadata accessor for UTType(0);
  v69 = *(v54 - 8);
  v9 = *(v69 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v55 = &v54;
  v12 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for URL(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v62 = &v54;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v60 = &v54;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v68 = &v54;
  v24 = alloca(v17);
  v25 = alloca(v17);
  outlined init with copy of MLTrainingSessionParameters(v63, &v54, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  v66 = v15;
  if (__swift_getEnumTagSinglePayload(&v54, 1, v15) == 1)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(&v54, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  }

  v27 = v16;
  v61 = *(v16 + 32);
  v28 = v61(&v54, &v54, v66);
  v29 = v55;
  static UTType.image.getter(v28);
  v67 = &v54;
  v30 = static _FileUtilities.isReadableFile(at:of:)(&v54, v29);
  (*(v69 + 8))(v29, v54);
  if (v30)
  {
    v69 = v27;
    v31 = v65;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, v65, &demangling cache variable for type metadata for URL?);
    v32 = v66;
    if (__swift_getEnumTagSinglePayload(v31, 1, v66) == 1)
    {
      v33 = NSTemporaryDirectory();
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)(v34);
      v37 = v36;

      URL.init(fileURLWithPath:isDirectory:)(v35, v37, 1);
      v37;
      v38 = v59;
      UUID.init()();
      v39 = UUID.uuidString.getter();
      v41 = v40;
      (*(v57 + 8))(v38, v58);
      v42 = v60;
      v43 = v39;
      v32 = v66;
      v44 = v62;
      URL.appendingPathComponent(_:)(v43, v41);
      v41;
      v45 = *(v69 + 8);
      v45(v44, v32);
      URL.appendingPathExtension(_:)(6778480, 0xE300000000000000);
      v45(v42, v32);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v32);
      v47 = v64;
      v48 = v67;
      if (EnumTagSinglePayload != 1)
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, &demangling cache variable for type metadata for URL?);
      }
    }

    else
    {
      v61(v68, v31, v32);
      v47 = v64;
      v48 = v67;
    }

    v51 = MLStyleTransfer.ModelParameters.ValidationData.processImage(sourceURL:pixels:processingOption:)(v48, 512, 2);
    if (!v47)
    {
      v52 = v51;
      MLStyleTransfer.ModelParameters.ValidationData.saveImage(for:at:)(v51);
    }

    v53 = *(v69 + 8);
    v53(v68, v32);
    return (v53)(v67, v32);
  }

  else
  {
    v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
    *v50 = 0xD000000000000020;
    *(v50 + 8) = "fied content image directory" + 0x8000000000000000;
    *(v50 + 16) = 0;
    *(v50 + 32) = 0;
    *(v50 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v49);
    return (*(v27 + 8))(v67, v66);
  }
}

uint64_t MLStyleTransfer.ModelParameters.ValidationData.processImage(sourceURL:pixels:processingOption:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = v3;
  v30 = a3;
  v27 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v29 = v25;
  v28 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLFeatureValue, MLFeatureValue_ptr);
  (*(v5 + 16))(v25, a1, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLFeatureValueImageOption, Any)>);
  inited = swift_initStackObject(v9, v25);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = MLFeatureValueImageOptionCropAndScale;
  inited[8] = &type metadata for UInt;
  inited[5] = v30;
  v11 = type metadata accessor for MLFeatureValueImageOption(0);
  v12 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
  MLFeatureValueImageOptionCropAndScale;
  v13 = Dictionary.init(dictionaryLiteral:)(inited, v11, &type metadata for Any + 8, v12);
  v14 = v28;
  v15 = v26;
  v16 = @nonobjc MLFeatureValue.__allocating_init(imageAt:pixelsWide:pixelsHigh:pixelFormatType:options:)(v29, v27, v27, 0x52474241u, v13);
  if (!v15)
  {
    v17 = v16;
    v18 = [v16 imageBufferValue];
    v19 = v18;
    if (v19)
    {
      v20 = v19;
      v21 = objc_allocWithZone(CIImage);
      v14 = [v21 initWithCVPixelBuffer:v20];
    }

    else
    {
      v23 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v23, 0, 0);
      *v24 = 0xD000000000000023;
      *(v24 + 8) = "Failed to write image to disk." + 0x8000000000000000;
      *(v24 + 16) = 0;
      *(v24 + 32) = 0;
      *(v24 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v23);
    }
  }

  return v14;
}

NSURL *MLStyleTransfer.ModelParameters.ValidationData.saveImage(for:at:)(id a1)
{
  v1 = objc_allocWithZone(CIContext);
  v2 = [v1 init];
  v3 = [a1 colorSpace];
  v16 = v3;
  if (v16)
  {
    v15 = kCIFormatRGBA16;
    URL._bridgeToObjectiveC()(kCIFormatRGBA16);
    v14 = v4;
    v5 = type metadata accessor for CIImageRepresentationOption(0);
    v6 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
    v17 = v2;
    v7 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v5, &type metadata for Any + 8, v6);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7;
    v9 = [v2 writePNGRepresentationOfImage:a1 toURL:v14 format:v15 colorSpace:v16 options:isa error:?];

    if (v9)
    {
      0;
    }

    else
    {
      v12 = 0;
      _convertNSErrorToError(_:)(0);

      swift_willThrow(v12, "writePNGRepresentationOfImage:toURL:format:colorSpace:options:error:");
    }
  }

  else
  {
    v10 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v10, 0, 0);
    *v11 = 0xD00000000000001ELL;
    *(v11 + 8) = "alidation image." + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v10);
  }

  return __stack_chk_guard;
}

CreateML::MLStyleTransfer::ModelParameters::ModelAlgorithmType_optional __swiftcall MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLStyleTransfer.ModelParameters.ModelAlgorithmType.init(rawValue:), rawValue);
  rawValue._object, rawValue._countAndFlagsBits;
  result.value = CreateML_MLStyleTransfer_ModelParameters_ModelAlgorithmType_cnn;
  v5 = 2 - (v3 == 1);
  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter()
{
  result = 7237219;
  if (*v0)
  {
    return 0x6574694C6E6E63;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType(uint64_t a1)
{
  v2 = v1;
  result = MLStyleTransfer.ModelParameters.ModelAlgorithmType.rawValue.getter(a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

void static MLStyleTransfer.ModelParameters.verifyStyleStrengthParameter(value:)(uint64_t a1)
{
  if ((a1 - 1) > 9)
  {
    _StringGuts.grow(_:)(38);
    0xE000000000000000;
    *&v7 = 0xD00000000000001ELL;
    *(&v7 + 1) = "s validation image." + 0x8000000000000000;
    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v1._object;
    String.append(_:)(v1);
    object;
    v3._countAndFlagsBits = 8236;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = v4._object;
    String.append(_:)(v4);
    v5;
    v3._countAndFlagsBits = 11869;
    v3._object = 0xE200000000000000;
    String.append(_:)(v3);
    v3._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v3._object, 0, 0);
    *v6 = v7;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v3._object);
  }
}

uint64_t static MLStyleTransfer.generateTrainingTable(urls:)(uint64_t a1)
{
  v3 = v1;
  v31 = type metadata accessor for URL(0);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = v27;
  v8 = *(a1 + 16);
  v37 = v3;
  if (v8)
  {
    v38 = _swiftEmptyArrayStorage;
    v34 = v8;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v38;
    v10 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v35 = *(v4 + 16);
    v33 = v4;
    v36 = *(v4 + 72);
    do
    {
      v11 = v32;
      v12 = v32;
      v13 = v31;
      v35(v32, v10, v31);
      v29 = URL.path.getter(v12);
      v30 = v14;
      (*(v33 + 8))(v11, v13);
      v38 = v9;
      v15 = v9[2];
      v16 = v15 + 1;
      if (v9[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v15 + 1, 1);
        v16 = v15 + 1;
        v9 = v38;
      }

      v9[2] = v16;
      v17 = 2 * v15;
      v9[v17 + 4] = v29;
      v9[v17 + 5] = v30;
      v10 += v36;
      --v34;
    }

    while (v34);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v18, v27);
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  *(inited + 32) = 0x55746E65746E6F63;
  *(inited + 40) = 0xEB00000000734C52;
  v38 = v9;
  v20 = alloca(24);
  v21 = alloca(32);
  v28 = &v38;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v22 & 1;
  v38;
  v23 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  result = _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v23);
  if (!v2)
  {
    result = v38;
    v25 = v39;
    v26 = v37;
    *v37 = v38;
    *(v26 + 8) = v25;
  }

  return result;
}

uint64_t CMLModel.contentLoss.getter(double a1)
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v8);
  *(inited + 16) = v2;
  type metadata accessor for CMLFeatureValue();
  v5 = CMLFeatureValue.__allocating_init(_:)(0xD000000000000015, ("training_style_loss" + 0x8000000000000000));
  CMLParameters.add(key:featureValue:)(35, v5);

  CMLModel.callFunction(name:arguments:)(16, inited);
  v6 = CMLVariant.featureValue()();
  specialized handling<A, B>(_:_:)(*(v6 + 16));
  v9 = a1;

  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return *&v9;
}

uint64_t CMLModel.styleLoss.getter(double a1)
{
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v2 = empty;
  v3 = type metadata accessor for CMLParameters();
  inited = swift_initStackObject(v3, v8);
  *(inited + 16) = v2;
  type metadata accessor for CMLFeatureValue();
  v5 = CMLFeatureValue.__allocating_init(_:)(0xD000000000000013, ("Style strength: " + 0x8000000000000000));
  CMLParameters.add(key:featureValue:)(35, v5);

  CMLModel.callFunction(name:arguments:)(16, inited);
  v6 = CMLVariant.featureValue()();
  specialized handling<A, B>(_:_:)(*(v6 + 16));
  v9 = a1;

  swift_setDeallocating(inited);
  tc_v1_release(*(inited + 16));
  return *&v9;
}

unint64_t MLStyleTransfer.ModelParameters.ModelAlgorithmType.description.getter()
{
  result = 0xD00000000000004FLL;
  if (!*v0)
  {
    result = 0xD000000000000046;
  }

  *v0;
  return result;
}

unint64_t *MLStyleTransfer.ModelParameters.ModelAlgorithmType.playgroundDescription.getter()
{
  v2 = 0xD00000000000004FLL;
  if (!*v1)
  {
    v2 = 0xD000000000000046;
  }

  v3 = "volutional neural network lite)";
  if (*v1)
  {
    v3 = "parallelTreeCount";
  }

  result[3] = &type metadata for String;
  *result = v2;
  result[1] = v3 | 0x8000000000000000;
  return result;
}

uint64_t MLStyleTransfer.ModelParameters.description.getter()
{
  v1._countAndFlagsBits = 0xD000000000000046;
  if (*v0)
  {
    v1._countAndFlagsBits = 0xD00000000000004FLL;
  }

  v2 = "volutional neural network lite)";
  if (*v0)
  {
    v2 = "parallelTreeCount";
  }

  v1._object = (v2 | 0x8000000000000000);
  String.append(_:)(v1);
  v2 | 0x8000000000000000;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0x687469726F676C41;
  v3._object = 0xEB00000000203A6DLL;
  String.append(_:)(v3);
  0xEB00000000203A6DLL;
  _StringGuts.grow(_:)(19);
  0xE000000000000000;
  v4 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v15 = *&v0[v4[7]];
  v5 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v7 = v6;
  v3._countAndFlagsBits = v5;
  v3._object = v6;
  String.append(_:)(v3);
  v7;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = "tional neural network)" + 0x8000000000000000;
  String.append(_:)(v3);
  "tional neural network" + 0x8000000000000000);
  _StringGuts.grow(_:)(19);
  0xE000000000000000;
  v16 = *&v0[v4[8]];
  v8 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v10 = v9;
  v3._countAndFlagsBits = v8;
  v3._object = v9;
  String.append(_:)(v3);
  v10;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = "Max iterations: " + 0x8000000000000000;
  String.append(_:)(v3);
  "Max iterations: " + 0x8000000000000000;
  _StringGuts.grow(_:)(19);
  0xE000000000000000;
  v17 = *&v0[v4[9]];
  v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v13 = v12;
  v3._countAndFlagsBits = v11;
  v3._object = v12;
  String.append(_:)(v3);
  v13;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v3._countAndFlagsBits = 0xD000000000000010;
  v3._object = "Textel density: " + 0x8000000000000000;
  String.append(_:)(v3);
  "Textel density: " + 0x8000000000000000;
  return 0;
}

uint64_t MLStyleTransfer.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLStyleTransfer.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

unint64_t MLStyleTransfer.debugDescription.getter()
{
  v1 = ModelType.description.getter(*(*v0 + 32));
  v3 = v2;
  v4 = *(type metadata accessor for MLStyleTransfer(0) + 20) + v0;
  v5 = MLStyleTransfer.ModelParameters.description.getter(0);
  v7 = v6;
  v3;
  v8._countAndFlagsBits = 0x656D617261500A0ALL;
  v8._object = 0xED00000A73726574;
  String.append(_:)(v8);
  v3;
  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);
  v3;
  v7;
  v3;
  return v1;
}

NSAttributedString MLStyleTransfer.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v3._countAndFlagsBits = MLStyleTransfer.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

uint64_t static MLStyleTransfer.ModelParameters.ValidationData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v2 = a1;
  v3 = type metadata accessor for URL(0);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v23 = v21;
  v7 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v24 = v21;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLStyleTransfer.ModelParameters.ValidationData, MLStyleTransfer.ModelParameters.ValidationData));
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = &v21[*(v10 + 48)];
  outlined init with copy of MLTrainingSessionParameters(a1, v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  outlined init with copy of MLTrainingSessionParameters(v22, v14, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  if (__swift_getEnumTagSinglePayload(v21, 1, v3) != 1)
  {
    v15 = v24;
    outlined init with copy of MLTrainingSessionParameters(v21, v24, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
    if (__swift_getEnumTagSinglePayload(v14, 1, v3) != 1)
    {
      v16 = v23;
      v17 = v14;
      v18 = v25;
      (*(v25 + 32))(v23, v17, v3);
      v2 = static URL.== infix(_:_:)(v15, v16);
      v19 = *(v18 + 8);
      v19(v16, v3);
      v19(v24, v3);
      outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
      return v2;
    }

    (*(v25 + 8))(v15, v3);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(v14, 1, v3) != 1)
  {
LABEL_6:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (MLStyleTransfer.ModelParameters.ValidationData, MLStyleTransfer.ModelParameters.ValidationData));
    return 0;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData);
  LOBYTE(v2) = 1;
  return v2;
}

id @nonobjc VNImageRequestHandler.init(cgImage:options:)(id a1, uint64_t a2)
{
  type metadata accessor for VNImageOption(0);
  lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a2;
  v4 = [v2 initWithCGImage:a1 options:isa];

  return v4;
}

uint64_t *outlined release of MLModelMetadata?(uint64_t *a1)
{
  v1 = *(a1 + 3);
  outlined consume of MLModelMetadata?(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  return a1;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v5 = v4;
  v6 = *v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(*(v6 + 16), v9);
  v11 = *(v6 + 16) + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Any>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v11))
  {
    v13 = *v5;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v16) = v16 & 1;
    if ((v12 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v16, v14, v15);
      BUG();
    }
  }

  v17 = *v5;
  if (v12)
  {
    v18 = (v17[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return outlined init with take of Any(a1, v18);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a3, a1, v17);
    return a3;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Bool a4)
{
  v5 = v4;
  v7 = *v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v10 = (v9 & 1) == 0;
  v11 = __OFADD__(*(v7 + 16), v10);
  v12 = *(v7 + 16) + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v9;
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v12))
  {
    v15 = *v5;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v19) = v19 & 1;
    if ((v13 & 1) != v19)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v19, v16, v18);
      BUG();
    }
  }

  else
  {
    v17 = v14;
  }

  v20 = *v5;
  if (v13)
  {
    result = v20[7];
    *(result + 8 * v17) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a3, a1, v20);
    return a3;
  }

  return result;
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, CSVType>, &type metadata accessor for CSVType);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, JSONType>, &type metadata accessor for JSONType);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, MetricsKey>, &type metadata accessor for MetricsKey);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, Tensor>, &type metadata accessor for Tensor);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, MLProgram.Block>, &type metadata accessor for MLProgram.Block);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _NativeDictionary<String, [URL]>);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Bool a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v7 = v6;
  v8 = *v6;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(*(v8 + 16), v11);
  v13 = *(v8 + 16) + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(a5);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v13))
  {
    v15 = *v7;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v18) = v18 & 1;
    if ((v14 & 1) != v18)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v18, v16, v17);
      BUG();
    }
  }

  v19 = *v7;
  if (v14)
  {
    v20 = v19[7];
    v21 = a6(0);
    return (*(*(v21 - 8) + 40))(v20 + *(*(v21 - 8) + 72) * v10, a1, v21);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a3, a1, v19, a6);
    return a3;
  }
}

char specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, Swift::Bool a5)
{
  v6 = v5;
  v7 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(*(v7 + 16), v10);
  v12 = *(v7 + 16) + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLUntypedColumn>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a5, v12))
  {
    v14 = *v6;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v17) = v17 & 1;
    if ((v13 & 1) != v17)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a4, v17, v15, v16);
      BUG();
    }
  }

  v18 = *v6;
  if (v13)
  {
    v19 = v18[7];
    v20 = 16 * v9;
    outlined consume of Result<_DataTable, Error>(*(v19 + v20), *(v19 + v20 + 8));
    *(v19 + v20) = a1;
    result = a2 & 1;
    *(v19 + v20 + 8) = a2 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a3, a4, a1, a2 & 1, v18);
    return a4;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Bool a5)
{
  v6 = v5;
  v7 = *v5;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(*(v7 + 16), v10);
  v12 = *(v7 + 16) + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a5, v12))
  {
    v14 = *v6;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v17) = v17 & 1;
    if ((v13 & 1) != v17)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a4, v17, v15, v16);
      BUG();
    }
  }

  v18 = *v6;
  if (v13)
  {
    v19 = v18[7];
    v20 = 16 * v9;
    *(v19 + v20 + 8);
    *(v19 + v20) = a1;
    result = a2;
    *(v19 + v20 + 8) = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v9, a3, a4, a1, a2, v18);
    return a4;
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, _BOOL4 a2, double a3)
{
  v4 = v3;
  v29 = a2;
  v26 = a3;
  v28 = type metadata accessor for MetricsKey(0);
  v24 = *(v28 - 8);
  v5 = *(v24 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v23;
  v8 = *v3;
  v27 = a1;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(*(v8 + 16), v11);
  v13 = *(v8 + 16) + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MetricsKey, Double>);
  v15 = v13;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v29, v13))
  {
    v16 = *v4;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v27);
    LOBYTE(v19) = v19 & 1;
    if ((v14 & 1) != v19)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v28, v15, v19, v17, v18);
      BUG();
    }
  }

  v20 = *v4;
  if (v14)
  {
    result = v20[7];
    *(result + 8 * v10) = v26;
  }

  else
  {
    v22 = v25;
    (*(v24 + 16))(v25, v27, v28);
    return specialized _NativeDictionary._insert(at:key:value:)(v10, v22, v20, v26);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, Swift::Bool a2, double a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v9 = (v8 & 1) == 0;
  v10 = __OFADD__(*(v6 + 16), v9);
  v11 = *(v6 + 16) + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Double>);
  v14 = v11;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a2, v11))
  {
    v15 = *v4;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    LOBYTE(v19) = v19 & 1;
    if ((v12 & 1) != v19)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v14, v19, v16, v18);
      BUG();
    }
  }

  else
  {
    v17 = v13;
  }

  v20 = *v4;
  if ((v12 & 1) == 0)
  {
    return specialized _NativeDictionary._insert(at:key:value:)(v17, a1, v20, a3);
  }

  result = v20[7];
  *(result + 8 * v17) = a3;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::Bool a4, uint64_t *a5)
{
  v7 = v5;
  v8 = *v5;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v10 = (v9 & 1) == 0;
  v11 = __OFADD__(*(v8 + 16), v10);
  v12 = *(v8 + 16) + v10;
  if (v11)
  {
    BUG();
  }

  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledName(a5);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a4, v12))
  {
    v14 = *v7;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    LOBYTE(v18) = v18 & 1;
    if ((v13 & 1) != v18)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, a3, v18, v15, v16);
      BUG();
    }
  }

  else
  {
    v17 = v22;
  }

  v19 = *v7;
  if (v13)
  {
    v20 = v19[7];
    *(v20 + 8 * v17);
    result = a1;
    *(v20 + 8 * v17) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a3, a1, v19);
    return a3;
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, _BOOL4 a3)
{
  v4 = v3;
  v30 = a3;
  v27 = a1;
  v29 = type metadata accessor for CodingUserInfoKey(0);
  v25 = *(v29 - 8);
  v5 = *(v25 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v26 = &v24;
  v8 = *v3;
  v28 = a2;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(*(v8 + 16), v11);
  v13 = *(v8 + 16) + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<CodingUserInfoKey, Sendable>);
  v15 = v13;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v30, v13))
  {
    v16 = *v4;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    LOBYTE(v19) = v19 & 1;
    if ((v14 & 1) != v19)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v29, v15, v19, v17, v18);
      BUG();
    }
  }

  v20 = *v4;
  if (v14)
  {
    v21 = (v20[7] + 32 * v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    return outlined init with take of Any(v27, v21);
  }

  else
  {
    v23 = v26;
    (*(v25 + 16))(v26, v28, v29);
    return specialized _NativeDictionary._insert(at:key:value:)(v10, v23, v27, v20);
  }
}

{
  v4 = v3;
  v23 = a3;
  v21 = a1;
  v5 = *v3;
  v22 = a2;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v8 = (v6 & 1) == 0;
  v9 = __OFADD__(*(v5 + 16), v8);
  v10 = *(v5 + 16) + v8;
  if (v9)
  {
    BUG();
  }

  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<AnyHashable, Any>);
  v12 = v10;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v10))
  {
    v13 = *v4;
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
    LOBYTE(v16) = v16 & 1;
    if ((v11 & 1) != v16)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for AnyHashable, v12, v16, v14, v15);
      BUG();
    }
  }

  v17 = *v4;
  if (v11)
  {
    v18 = (v17[7] + 32 * v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return outlined init with take of Any(v21, v18);
  }

  else
  {
    outlined init with copy of AnyHashable(v22, v20);
    return specialized _NativeDictionary._insert(at:key:value:)(v7, v20, v21, v17);
  }
}

void *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v9 = (v8 & 1) == 0;
  v10 = __OFADD__(*(v6 + 16), v9);
  v11 = *(v6 + 16) + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v8;
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<Int, Int>);
  v14 = v11;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3, v11))
  {
    v15 = *v4;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    LOBYTE(v19) = v19 & 1;
    if ((v12 & 1) != v19)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for Int, v14, v19, v16, v18);
      BUG();
    }
  }

  else
  {
    v17 = v13;
  }

  v20 = *v4;
  if ((v12 & 1) == 0)
  {
    return specialized _NativeDictionary._insert(at:key:value:)(v17, a2, a1, v20);
  }

  result = v20[7];
  result[v17] = a1;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v4 = v3;
  v30 = a3;
  v27 = a1;
  v29 = type metadata accessor for URL(0);
  v25 = *(v29 - 8);
  v5 = *(v25 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v26 = &v24;
  v8 = *v3;
  v28 = a2;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(*(v8 + 16), v11);
  v13 = *(v8 + 16) + v11;
  if (v12)
  {
    BUG();
  }

  v14 = v9;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<URL, CIImage>);
  v15 = v13;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v30, v13))
  {
    v16 = *v4;
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    LOBYTE(v19) = v19 & 1;
    if ((v14 & 1) != v19)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v29, v15, v19, v17, v18);
      BUG();
    }
  }

  v20 = *v4;
  if (v14)
  {
    v21 = v20[7];

    result = v27;
    *(v21 + 8 * v10) = v27;
  }

  else
  {
    v23 = v26;
    (*(v25 + 16))(v26, v28, v29);
    return specialized _NativeDictionary._insert(at:key:value:)(v10, v23, v27, v20);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, char a2, Swift::Bool a3)
{
  v4 = v3;
  v6 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v9 = (v7 & 1) == 0;
  v10 = __OFADD__(*(v6 + 16), v9);
  v11 = *(v6 + 16) + v9;
  if (v10)
  {
    BUG();
  }

  v12 = v7;
  __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<MLProgress.Metric, Any>);
  v13 = v11;
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3, v11))
  {
    v14 = *v4;
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    LOBYTE(v17) = v17 & 1;
    if ((v12 & 1) != v17)
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLProgress.Metric, v13, v17, v15, v16);
      BUG();
    }
  }

  v18 = *v4;
  if ((v12 & 1) == 0)
  {
    return specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);
  }

  v19 = (v18[7] + 32 * v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return outlined init with take of Any(a1, v19);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6];
  v9 = 16 * a1;
  *(v8 + v9) = a2;
  *(v8 + v9 + 8) = a3;
  outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v10 = a5[2];
  v11 = __OFADD__(1, v10);
  result = v10 + 1;
  if (v11)
  {
    BUG();
  }

  a5[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a5[6];
  v8 = 16 * a1;
  *(v7 + v8) = a2;
  *(v7 + v8 + 8) = a3;
  *(a5[7] + 8 * a1) = a4;
  v9 = a5[2];
  v10 = __OFADD__(1, v9);
  result = v9 + 1;
  if (v10)
  {
    BUG();
  }

  a5[2] = result;
  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5);
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, a5);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v7 = a1;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a6[6];
  v7 *= 16;
  *(v8 + v7) = a2;
  *(v8 + v7 + 8) = a3;
  v9 = a6[7];
  *(v9 + v7) = a4;
  *(v9 + v7 + 8) = a5 & 1;
  v10 = a6[2];
  v11 = __OFADD__(1, v10);
  result = v10 + 1;
  if (v11)
  {
    BUG();
  }

  a6[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a1;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a6[6];
  v7 *= 16;
  *(v8 + v7) = a2;
  *(v8 + v7 + 8) = a3;
  v9 = a6[7];
  *(v9 + v7) = a4;
  *(v9 + v7 + 8) = a5;
  v10 = a6[2];
  v11 = __OFADD__(1, v10);
  result = v10 + 1;
  if (v11)
  {
    BUG();
  }

  a6[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a5[6];
  v9 = 16 * a1;
  *(v8 + v9) = a2;
  *(v8 + v9 + 8) = a3;
  v10 = a5[7];
  v11 = a6(0);
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v12 = a5[2];
  v13 = __OFADD__(1, v12);
  result = v12 + 1;
  if (v13)
  {
    BUG();
  }

  a5[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a3[6];
  v6 = type metadata accessor for MetricsKey(0);
  (*(*(v6 - 8) + 32))(v5 + a1 * *(*(v6 - 8) + 72), a2, v6);
  *(a3[7] + 8 * a1) = a4;
  v7 = a3[2];
  v8 = __OFADD__(1, v7);
  result = v7 + 1;
  if (v8)
  {
    BUG();
  }

  a3[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  *(a3[6] + a1) = a2;
  *(a3[7] + 8 * a1) = a4;
  v4 = a3[2];
  v5 = __OFADD__(1, v4);
  result = v4 + 1;
  if (v5)
  {
    BUG();
  }

  a3[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a4[6];
  v7 = type metadata accessor for CodingUserInfoKey(0);
  (*(*(v7 - 8) + 32))(v6 + a1 * *(*(v7 - 8) + 72), a2, v7);
  outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(1, v8);
  result = v8 + 1;
  if (v9)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

void *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = a4;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  *(a4[7] + 8 * a1) = a3;
  v5 = a4[2];
  v6 = __OFADD__(1, v5);
  v7 = v5 + 1;
  if (v6)
  {
    BUG();
  }

  result[2] = v7;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a4[6];
  v7 = type metadata accessor for URL(0);
  (*(*(v7 - 8) + 32))(v6 + a1 * *(*(v7 - 8) + 72), a2, v7);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(1, v8);
  result = v8 + 1;
  if (v9)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

uint64_t outlined assign with take of MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLStyleTransfer.ModelParameters.ModelAlgorithmType, &type metadata for MLStyleTransfer.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLStyleTransfer.ModelParameters.ModelAlgorithmType and conformance MLStyleTransfer.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    *(a1 + v6) = *(a2 + v6);
    v16 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    v9 = v16[5];
    v15 = v7;
    v10 = &v7[v9];
    v11 = &v8[v9];
    v12 = type metadata accessor for URL(0);

    if (__swift_getEnumTagSinglePayload(v11, 1, v12))
    {
      v13 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
      memcpy(v10, v11, *(*(v13 - 8) + 64));
    }

    else
    {
      (*(*(v12 - 8) + 16))(v10, v11, v12);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v12);
    }

    *&v15[v16[6]] = *&v8[v16[6]];
    *&v15[v16[7]] = *&v8[v16[7]];
    *&v15[v16[8]] = *&v8[v16[8]];
    *&v15[v16[9]] = *&v8[v16[9]];
    v15[v16[10]] = v8[v16[10]];
  }

  return v5;
}

uint64_t destroy for MLStyleTransfer(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = a1 + *(a2 + 20);
  v5 = &v4[*(type metadata accessor for MLStyleTransfer.ModelParameters(0) + 20)];
  v6 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(v5, 1, v6);
  if (!result)
  {
    return (*(*(v6 - 8) + 8))(v5, v6);
  }

  return result;
}

void *initializeWithCopy for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v7 = v6[5];
  __dst = &v4[v7];
  v8 = &v5[v7];
  v9 = type metadata accessor for URL(0);

  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 16))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  *&v4[v6[6]] = *&v5[v6[6]];
  *&v4[v6[7]] = *&v5[v6[7]];
  *&v4[v6[8]] = *&v5[v6[8]];
  *&v4[v6[9]] = *&v5[v6[9]];
  v4[v6[10]] = v5[v6[10]];
  return a1;
}

void *assignWithCopy for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a3 + 20);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *(a1 + v5) = *(a2 + v5);
  v8 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v9 = v8[5];
  v19 = v6;
  v10 = &v6[v9];
  v11 = &v7[v9];
  v12 = type metadata accessor for URL(0);
  __dst = v10;
  LODWORD(v10) = __swift_getEnumTagSinglePayload(v10, 1, v12);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (v10)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v12 - 8) + 16))(__dst, v11, v12);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v12);
      goto LABEL_9;
    }

    v14 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v15 = __dst;
  }

  else
  {
    v16 = *(v12 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v16 + 24))(__dst, v11, v12);
      goto LABEL_9;
    }

    (*(v16 + 8))(__dst, v12);
    v14 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v15 = __dst;
  }

  memcpy(v15, v11, v14);
LABEL_9:
  *&v19[v8[6]] = *&v7[v8[6]];
  *&v19[v8[7]] = *&v7[v8[7]];
  *&v19[v8[8]] = *&v7[v8[8]];
  *&v19[v8[9]] = *&v7[v8[9]];
  v19[v8[10]] = v7[v8[10]];
  return a1;
}

void *initializeWithTake for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = a2 + v3;
  *(a1 + v3) = *(a2 + v3);
  v6 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v7 = v6[5];
  __dst = &v4[v7];
  v8 = &v5[v7];
  v9 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    (*(*(v9 - 8) + 32))(__dst, v8, v9);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v9);
  }

  *&v4[v6[6]] = *&v5[v6[6]];
  *&v4[v6[7]] = *&v5[v6[7]];
  *&v4[v6[8]] = *&v5[v6[8]];
  *&v4[v6[9]] = *&v5[v6[9]];
  v4[v6[10]] = v5[v6[10]];
  return a1;
}

void *assignWithTake for MLStyleTransfer(void *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v19 = a1;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
  v10 = v9[5];
  v20 = v7;
  v11 = &v7[v10];
  v12 = &v8[v10];
  v13 = type metadata accessor for URL(0);
  __dst = v11;
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v11, 1, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (v11)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v13 - 8) + 32))(__dst, v12, v13);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v13);
      goto LABEL_9;
    }

    v15 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v16 = __dst;
  }

  else
  {
    v17 = *(v13 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v17 + 40))(__dst, v12, v13);
      goto LABEL_9;
    }

    (*(v17 + 8))(__dst, v13);
    v15 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v16 = __dst;
  }

  memcpy(v16, v12, v15);
LABEL_9:
  *&v20[v9[6]] = *&v8[v9[6]];
  *&v20[v9[7]] = *&v8[v9[7]];
  *&v20[v9[8]] = *&v8[v9[8]];
  *&v20[v9[9]] = *&v8[v9[9]];
  v20[v9[10]] = v8[v9[10]];
  return v19;
}

uint64_t sub_5CCCB(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 20), a2, v5);
  }

  return result;
}

uint64_t sub_5CD43(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 20), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.NativeObject + 64;
  result = type metadata accessor for MLStyleTransfer.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer.DataSource(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = type metadata accessor for URL(0);
    v6 = *(*(v5 - 8) + 16);
    v6(a1, a2, v5);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
    v6((a1 + *(v7 + 48)), (a2 + *(v7 + 48)), v5);
    v8 = *(v7 + 64);
    *(a1 + v8 + 8) = *(a2 + v8 + 8);
    *(a1 + v8) = *(a2 + v8);
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  v2 = *(*(v1 - 8) + 8);
  v2(a1, v1);
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?)) + 48);
  return (v2)(v3, v1);
}

uint64_t initializeWithCopy for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 16);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t assignWithCopy for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 24);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t initializeWithTake for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 32);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t assignWithTake for MLStyleTransfer.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for URL(0);
  v3 = *(*(v2 - 8) + 40);
  v3(a1, a2, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v3(a1 + *(v4 + 48), a2 + *(v4 + 48), v2);
  v5 = *(v4 + 64);
  *(a1 + v5 + 8) = *(a2 + v5 + 8);
  *(a1 + v5) = *(a2 + v5);
  return a1;
}

uint64_t type metadata completion function for MLStyleTransfer.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v3, *(result - 8) + 64, *(result - 8) + 64, "\t");
    swift_initEnumMetadataSingleCase(a1, 256, v3);
    *(*(a1 - 8) + 84) = v4;
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLStyleTransfer.ModelParameters(_BYTE *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = a3[5];
    __dst = &a1[v6];
    v7 = a2 + v6;
    v8 = type metadata accessor for URL(0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8))
    {
      v9 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
      memcpy(__dst, v7, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(*(v8 - 8) + 16))(__dst, v7, v8);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
    }

    *&a1[a3[6]] = *(a2 + a3[6]);
    *&a1[a3[7]] = *(a2 + a3[7]);
    *&a1[a3[8]] = *(a2 + a3[8]);
    *&a1[a3[9]] = *(a2 + a3[9]);
    a1[a3[10]] = *(a2 + a3[10]);
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(a2 + 20);
  v3 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (!result)
  {
    return (*(*(v3 - 8) + 8))(v2, v3);
  }

  return result;
}

_BYTE *initializeWithCopy for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  __dst = &a1[v4];
  v5 = &a2[v4];
  v6 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 16))(__dst, v5, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

_BYTE *assignWithCopy for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for URL(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v7 - 8) + 16))(__dst, v6, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
      goto LABEL_9;
    }

    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  else
  {
    v11 = *(v7 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v11 + 24))(__dst, v6, v7);
      goto LABEL_9;
    }

    (*(v11 + 8))(__dst, v7);
    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  memcpy(v10, v6, v9);
LABEL_9:
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

_BYTE *initializeWithTake for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  __dst = &a1[v4];
  v5 = &a2[v4];
  v6 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6))
  {
    v7 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    memcpy(__dst, v5, *(*(v7 - 8) + 64));
  }

  else
  {
    (*(*(v6 - 8) + 32))(__dst, v5, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

_BYTE *assignWithTake for MLStyleTransfer.ModelParameters(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  v4 = a3[5];
  v5 = &a1[v4];
  v6 = &a2[v4];
  v7 = type metadata accessor for URL(0);
  __dst = v5;
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v5, 1, v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);
  if (v5)
  {
    if (!EnumTagSinglePayload)
    {
      (*(*(v7 - 8) + 32))(__dst, v6, v7);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v7);
      goto LABEL_9;
    }

    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  else
  {
    v11 = *(v7 - 8);
    if (!EnumTagSinglePayload)
    {
      (*(v11 + 40))(__dst, v6, v7);
      goto LABEL_9;
    }

    (*(v11 + 8))(__dst, v7);
    v9 = *(*(type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0) - 8) + 64);
    v10 = __dst;
  }

  memcpy(v10, v6, v9);
LABEL_9:
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  return a1;
}

uint64_t sub_5D6F7(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    result = 0;
    if (v3 >= 2)
    {
      return v3 - 1;
    }
  }

  else
  {
    v6 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    return __swift_getEnumTagSinglePayload(&a1[*(a3 + 20)], a2, v6);
  }

  return result;
}

uint64_t sub_5D761(_BYTE *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *a1 = a2 + 1;
  }

  else
  {
    v5 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
    return __swift_storeEnumTagSinglePayload(&a1[*(a4 + 20)], a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLStyleTransfer.ModelParameters(uint64_t a1)
{
  v3[0] = &unk_33E7F0;
  result = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &value witness table for Builtin.Int64 + 64;
    v3[3] = &value witness table for Builtin.Int64 + 64;
    v3[4] = &value witness table for Builtin.Int64 + 64;
    v3[5] = &value witness table for Builtin.Int64 + 64;
    v3[6] = &unk_33E7F0;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLStyleTransfer.ModelParameters.ValidationData(uint64_t *__dst, uint64_t *__src, uint64_t a3)
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
    if (__swift_getEnumTagSinglePayload(__src, 1, v6))
    {
      return memcpy(__dst, __src, *(v4 + 64));
    }

    (*(*(v6 - 8) + 16))(__dst, __src, v6);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
  }

  return v3;
}

uint64_t destroy for MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for URL(0);
  result = __swift_getEnumTagSinglePayload(a1, 1, v1);
  if (!result)
  {
    return (*(*(v1 - 8) + 8))(a1, v1);
  }

  return result;
}

void *initializeWithCopy for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 16))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  return __dst;
}

void *assignWithCopy for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
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
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  return __dst;
}

void *initializeWithTake for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (__swift_getEnumTagSinglePayload(__src, 1, v4))
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v4);
  return __dst;
}

void *assignWithTake for MLStyleTransfer.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  v3 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 1, v3);
  v5 = __swift_getEnumTagSinglePayload(__src, 1, v3);
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
  __swift_storeEnumTagSinglePayload(__dst, 0, 1, v3);
  return __dst;
}

uint64_t sub_5DB8C(uint64_t a1, unsigned int a2)
{
  v2 = type metadata accessor for URL(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v2);
  v4 = EnumTagSinglePayload - 1;
  if (EnumTagSinglePayload < 2)
  {
    return 0;
  }

  return v4;
}

uint64_t sub_5DBDA(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v4 = a2;
  if (a2)
  {
    v4 = a2 + 1;
  }

  v5 = type metadata accessor for URL(0);
  return __swift_storeEnumTagSinglePayload(a1, v4, a3, v5);
}

uint64_t type metadata completion function for MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload(a1, 256, *(result - 8) + 64, 1);
    return 0;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, __int128 *a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a4[6];
  v7 = 40 * a1;
  *(v6 + v7 + 32) = *(a2 + 4);
  v8 = *a2;
  *(v6 + v7 + 16) = a2[1];
  *(v6 + v7) = v8;
  outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v9 = a4[2];
  v10 = __OFADD__(1, v9);
  result = v9 + 1;
  if (v10)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v5 = a4[2];
  v6 = __OFADD__(1, v5);
  result = v5 + 1;
  if (v6)
  {
    BUG();
  }

  a4[2] = result;
  return result;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, void *a5)
{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  a1;
  v6 = a3;

  while (1)
  {
    v7 = specialized LazyMapSequence.Iterator.next()(v6);
    if (!v8)
    {
      break;
    }

    v11 = v8;
    v34 = v9;
    v36 = v10;
    v12 = *a5;
    v37 = v7;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v12[2], v15);
    v6 = v12[2] + v15;
    if (v16)
    {
      BUG();
    }

    v17 = v13;
    if (v12[3] >= v6)
    {
      if ((a4 & 1) == 0)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v6, a4);
      v18 = *a5;
      v6 = v37;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v37, v11);
      LOBYTE(v21) = v21 & 1;
      if ((v17 & 1) != v21)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v11, v21, v19, v20);
        BUG();
      }
    }

    v22 = *a5;
    if (v17)
    {
      v23 = v22[7];
      v24 = 16 * v14;
      v40 = *(v23 + v24);
      v25 = *(v23 + v24 + 8);
      v25;
      v11;
      v36;
      v26 = v22[7];
      v6 = *(v26 + v24 + 8);
      v6;
      *(v26 + v24) = v40;
      *(v26 + v24 + 8) = v25;
    }

    else
    {
      v22[(v14 >> 6) + 8] |= 1 << v14;
      v27 = v22[6];
      v28 = 16 * v14;
      *(v27 + v28) = v37;
      *(v27 + v28 + 8) = v11;
      v29 = v22[7];
      *(v29 + v28) = v34;
      *(v29 + v28 + 8) = v36;
      v30 = v22[2];
      v16 = __OFADD__(1, v30);
      v31 = v30 + 1;
      if (v16)
      {
        BUG();
      }

      v22[2] = v31;
    }

    a4 = 1;
  }

  a1;

  outlined consume of [String : [Double]].Iterator._Variant(v33);
}

{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  a1;
  v6 = a3;

  while (1)
  {
    v7 = specialized LazyMapSequence.Iterator.next()(v6);
    if (!v8)
    {
      break;
    }

    v10 = v8;
    v31 = v9;
    v11 = *a5;
    v32 = v7;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v11[2], v14);
    v6 = v11[2] + v14;
    if (v15)
    {
      BUG();
    }

    v16 = v12;
    if (v11[3] >= v6)
    {
      if ((a4 & 1) == 0)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v6, a4);
      v17 = *a5;
      v6 = v32;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v10);
      LOBYTE(v20) = v20 & 1;
      if ((v16 & 1) != v20)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v10, v20, v18, v19);
        BUG();
      }
    }

    v21 = *a5;
    if (v16)
    {
      v22 = *(v21[7] + 8 * v13);
      v22;
      v10;
      v31;
      v23 = v21[7];
      v6 = *(v23 + 8 * v13);
      v6;
      *(v23 + 8 * v13) = v22;
    }

    else
    {
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v24 = v21[6];
      v25 = 16 * v13;
      *(v24 + v25) = v32;
      *(v24 + v25 + 8) = v10;
      *(v21[7] + 8 * v13) = v31;
      v26 = v21[2];
      v15 = __OFADD__(1, v26);
      v27 = v26 + 1;
      if (v15)
      {
        BUG();
      }

      v21[2] = v27;
    }

    a4 = 1;
  }

  a1;

  outlined consume of [String : [Double]].Iterator._Variant(v29);
}

{
  specialized LazyMapSequence.makeIterator()(a1, a2, a3);
  a1;
  v6 = a3;

  while (1)
  {
    v7 = specialized LazyMapSequence.Iterator.next()(v6);
    if (!v8)
    {
      break;
    }

    v11 = v8;
    v34 = v9;
    v33 = v10;
    v12 = *a5;
    v35 = v7;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v12[2], v15);
    v6 = v12[2] + v15;
    if (v16)
    {
      BUG();
    }

    v17 = v13;
    if (v12[3] >= v6)
    {
      if ((a4 & 1) == 0)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v6, a4);
      v18 = *a5;
      v6 = v35;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v11);
      LOBYTE(v21) = v21 & 1;
      if ((v17 & 1) != v21)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v11, v21, v19, v20);
        BUG();
      }
    }

    v22 = *a5;
    if (v17)
    {
      v11;
      v23 = v22[7];
      v24 = 16 * v14;
      v6 = *(v23 + v24 + 8);
      v6;
      *(v23 + v24) = v34;
      *(v23 + v24 + 8) = v33;
    }

    else
    {
      v22[(v14 >> 6) + 8] |= 1 << v14;
      v25 = v22[6];
      v26 = 16 * v14;
      *(v25 + v26) = v35;
      *(v25 + v26 + 8) = v11;
      v27 = v22[7];
      *(v27 + v26) = v34;
      *(v27 + v26 + 8) = v33;
      v28 = v22[2];
      v16 = __OFADD__(1, v28);
      v29 = v28 + 1;
      if (v16)
      {
        BUG();
      }

      v22[2] = v29;
    }

    a4 = 1;
  }

  a1;

  outlined consume of [String : [Double]].Iterator._Variant(v31);
}

uint64_t outlined init with take of (key: URL, value: CIImage)?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: URL, value: CIImage)?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void *outlined retain of MLModelMetadata(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[5];
  v4 = a1[7];
  a1[8];
  v1;
  v2;
  v3;
  v4;
  return a1;
}

uint64_t sub_5E03C()
{
  v1 = type metadata accessor for MLStyleTransfer.PersistentParameters(0);
  v2 = *(v1 - 8);
  v14 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v14 + 40);
  v15 = *(v2 + 64);
  swift_unknownObjectRelease(*(v0 + 16));
  v4 = *(v0 + 32);

  v13 = v0;
  v5 = v3 + v0;
  v6 = type metadata accessor for URL(0);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (styleImage: URL, contentDirectory: URL, processingOption: VNImageCropAndScaleOption?));
  v7(v5 + *(v8 + 48), v6);
  v9 = v5 + *(v1 + 24);
  if (!__swift_getEnumTagSinglePayload(v9, 1, v6))
  {
    v7(v9, v6);
  }

  v10 = (v15 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v13 + v10 + 8);

  return swift_deallocObject(v13, v10 + 16, v14 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLStyleTransfer.PersistentParameters(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 40);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v7 = v1 + v4;
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = swift_task_alloc(80);
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for specialized closure #1 in blockAwait<A>(_:);
  return closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(a1, v6, v12, v13, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(80);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLStyleTransfer.resume(_:)(a1, v3, v4);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData9AnyColumnV_Say8CreateML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n()
{
  v31 = v0;
  v1 = type metadata accessor for AnyColumn(0);
  v30 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v2 = dispatch thunk of Collection.count.getter(v1, v30);
  if (!v2)
  {

    return _swiftEmptyArrayStorage;
  }

  v35 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v2 > 0)
  {
    v3 = v2;
  }

  v29 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v32 = v35;
  dispatch thunk of Collection.startIndex.getter(v1, v30);
  if (v29 < 0)
  {
    BUG();
  }

  v4 = 0;
  v27 = v1;
  while (1)
  {
    v5 = __OFADD__(1, v4);
    v6 = v4 + 1;
    if (v5)
    {
      BUG();
    }

    v26 = v6;
    v7 = dispatch thunk of Collection.subscript.read(&v38, v34, v1, v30);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, v37, &demangling cache variable for type metadata for Any?);
    v7(&v38, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, v36, &demangling cache variable for type metadata for Any?);
    if (!v36[3])
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v10 = 0;
      goto LABEL_11;
    }

    outlined init with take of Any(v36, &v38);
    outlined init with copy of Any(&v38, v36);
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.DecodableAnnotation]);
    if (!swift_dynamicCast(&v33, v36, &type metadata for Any + 8, v9, 6))
    {
      break;
    }

    v10 = v33;
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
LABEL_11:
    v11 = v32;
LABEL_15:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for Any?);
    v35 = v11;
    v23 = v11[2];
    if (v11[3] >> 1 <= v23)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v23 + 1, 1);
      v11 = v35;
    }

    v11[2] = v23 + 1;
    v32 = v11;
    v11[v23 + 4] = v10;
    v1 = v27;
    dispatch thunk of Collection.formIndex(after:)(v34, v27, v30);
    v4 = v26;
    if (v26 == v29)
    {

      return v11;
    }
  }

  v28 = v9;
  v12 = objc_opt_self(NSJSONSerialization);
  v13 = v39;
  v14 = __swift_project_boxed_opaque_existential_0Tm(&v38, v39);
  v15 = _bridgeAnythingToObjectiveC<A>(_:)(v14, v13);
  v36[0] = 0;
  v16 = [v12 dataWithJSONObject:v15 options:0 error:v36];
  v17 = v16;
  swift_unknownObjectRelease(v15);
  v18 = v36[0];
  if (!v17)
  {
    v25 = v18;
    _convertNSErrorToError(_:)(v18);

    swift_willThrow(v25, "dataWithJSONObject:options:error:");
    goto LABEL_22;
  }

  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v17);
  v21 = v20;

  v22 = lazy protocol witness table accessor for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A]();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)(v28, v19, v21, v28, v22);
  if (!v31)
  {
    v31 = 0;
    outlined consume of Data._Representation(v19, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    v10 = v36[0];
    v11 = v32;
    goto LABEL_15;
  }

  outlined consume of Data._Representation(v19, v21);
LABEL_22:
  __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for Any?);
}

void *MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:)(__int16 *a1)
{
  v82 = v1;
  v74 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
  v70 = *(v68 - 8);
  v3 = *(v70 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v69 = &v64;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v64;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>.Iterator);
  v9 = *(*(v65 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v84 = &v64;
  v78 = type metadata accessor for AnyColumn(0);
  v85 = *(v78 - 8);
  v12 = v85[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v83 = &v64;
  v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v75 = *(v80 - 8);
  v15 = *(v75 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v81 = &v64;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v76 = &v64;
  v20 = type metadata accessor for DataFrame(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v86 = *a1;
  v25 = *(a1 + 2);
  v77 = &v64;
  v26 = v82;
  result = MLObjectDetector.DataSource.gatherAnnotatedFileNames()();
  if (!v26)
  {
    v87 = v25;
    v72 = v20;
    v71 = v21;
    v28 = v81;
    DataFrame.subscript.getter(0x7461506567616D69, 0xE900000000000068, &type metadata for String);
    v29 = v80;
    Column.map<A>(_:)(closure #1 in MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:), 0, v80);
    v82 = 0;
    v73 = *(v75 + 8);
    v73(v28, v29);
    v30 = v77;
    DataFrame.subscript.getter(0x697461746F6E6E61, 0xEA00000000006E6FLL);
    v31 = type metadata accessor for JSONDecoder(0);
    swift_allocObject(v31, *(v31 + 48), *(v31 + 52));
    JSONDecoder.init()();
    v32 = v82;
    ML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData9AnyColumnV_Say8CreateML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n();
    v34 = v29;
    v35 = v76;
    if (!v32)
    {
      v79 = 0;
      v36 = v83;
      v83 = ML16MLObjectDetectorV19DecodableAnnotationVGSgsAE_pTg503_s8h4ML16jk3V10e36SourceO23unpackAnnotationsColumnySayu4AC19lm7VGSgG07d4E003F18I0VKFZAJypSgKXEfU_10Foundation11JSONDecoderCTf1cn_n;
      (v85[1])(v36, v78);
      v37 = v66;
      v38 = v35;
      v39 = v75;
      (*(v75 + 16))(v66, v38, v34);
      (*(v39 + 32))(v81, v37, v34);
      v40 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v41 = v84;
      dispatch thunk of Sequence.makeIterator()(v34, v40);
      v42 = v65;
      v43 = *(v65 + 52);
      *(v41 + v43) = v83;
      v75 = v43;
      *(v41 + v43 + 8) = 0;
      v78 = *(v42 + 56);
      *(v41 + v78) = 0;
      v82 = (v41 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>) + 36));
      v44 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
      v85 = _swiftEmptyArrayStorage;
      v74 = 0;
      while (1)
      {
        v45 = v80;
        dispatch thunk of Collection.endIndex.getter(v80, v44);
        if (*v82 == v67[0])
        {
          goto LABEL_20;
        }

        v46 = dispatch thunk of Collection.subscript.read(v67, v82, v45, v44);
        v81 = *v47;
        v48 = v47[1];
        v48;
        v46(v67, 0);
        v49 = v44;
        dispatch thunk of Collection.formIndex(after:)(v82, v80, v44);
        if (v74 == v83[2])
        {
          v48;
          v45 = v80;
LABEL_20:
          v63 = v84;
          *(v84 + v78) = 1;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>.Iterator);
          v73(v76, v45);
          (*(v71 + 8))(v77, v72);
          return v85;
        }

        if (v74 >= v83[2])
        {
          BUG();
        }

        v50 = v83[v74 + 4];
        v51 = v74 + 1;
        *(v84 + v75 + 8) = v74 + 1;
        v74 = v51;
        if (v48)
        {
          if (v50)
          {
            LOWORD(v67[0]) = v86;
            BYTE2(v67[0]) = v87;
            v50;
            v52 = v79;
            v53 = static MLObjectDetector.DataSource.normalizedAnnotations(annotatedObjects:filename:annotationType:)(v50, v81, v48, v67);
            v79 = v52;
            v54 = v50;
            if (v52)
            {
              v50;
              v48;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, [[MLObjectDetector.DecodableAnnotation]?]>.Iterator);
              v73(v76, v80);
              (*(v71 + 8))(v77, v72);
              return v85;
            }

            v55 = v53;
            v54;
            v67[0] = v81;
            v67[1] = v48;
            v64 = v55;
            v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.NormalizedAnnotation]);
            AnnotatedFeature.init(feature:annotation:)(v67, &v64, &type metadata for String, v56);
            if (!swift_isUniquelyReferenced_nonNull_native(v85))
            {
              v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v85[2] + 1, 1, v85);
            }

            v57 = v68;
            v58 = v70;
            v59 = v85;
            v60 = v85[2];
            v61 = v69;
            if (v85[3] >> 1 <= v60)
            {
              v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85[3] >= 2uLL, v60 + 1, 1, v85);
              v61 = v69;
              v58 = v70;
            }

            v59[2] = v60 + 1;
            v62 = *(v58 + 80);
            v85 = v59;
            (*(v58 + 32))(v59 + ((v62 + 32) & ~v62) + *(v58 + 72) * v60, v61, v57);
          }

          else
          {
            v48;
          }
        }

        v44 = v49;
      }
    }

    (v85[1])(v83, v78);
    v73(v35, v34);
    return (*(v71 + 8))(v30, v72);
  }

  return result;
}

uint64_t MLObjectDetector.ObjectAnnotation.init(label:boundingBox:confidence:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  *result = a1;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  return result;
}

uint64_t MLObjectDetector.DataSource.gatherAnnotatedFileNames()()
{
  v190._object = v1;
  v195._countAndFlagsBits = v2;
  v185 = v0;
  v174 = type metadata accessor for DataFrame.Slice(0);
  v180 = *(v174 - 8);
  v3 = *(v180 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v178 = &v164;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v175 = &v164;
  v179 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v177 = *(v179 - 8);
  v8 = *(v177 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v176 = &v164;
  v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v181 = *(v182 - 8);
  v11 = *(v181 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v186 = &v164;
  v14 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v172 = &v164;
  v191._countAndFlagsBits = type metadata accessor for DataFrame(0);
  v189 = *(v191._countAndFlagsBits - 8);
  v17 = *(v189 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v190._countAndFlagsBits = &v164;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v191._object = &v164;
  v22 = type metadata accessor for MLObjectDetector.DataSource(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v194 = type metadata accessor for URL(0);
  v26 = *(v194 - 1);
  v27 = v26[8];
  v28 = alloca(v27);
  v29 = alloca(v27);
  v173 = &v164;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v187 = &v164;
  v32 = alloca(v27);
  v33 = alloca(v27);
  _._countAndFlagsBits = &v164;
  v34 = alloca(v27);
  v35 = alloca(v27);
  named = &v164;
  v36 = alloca(v27);
  v37 = alloca(v27);
  outlined init with copy of MLObjectDetector.DataSource(v195._countAndFlagsBits, &v164);
  switch(swift_getEnumCaseMultiPayload(&v164, v22))
  {
    case 0u:
      (v26[4])(_._countAndFlagsBits, &v164, v194);
      v195._countAndFlagsBits = &v164;
      URL.resolvingSymlinksInPath()();
      v38 = named;
      URL.resolvingSymlinksInPath()();
      v191._object = v26;
      v39 = v26[1];
      v40 = v194;
      v39(_._countAndFlagsBits, v194);
      goto LABEL_9;
    case 1u:
      v55 = &v164 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
      v195._countAndFlagsBits = v26[4];
      v56 = v194;
      (v195._countAndFlagsBits)(_._countAndFlagsBits, &v164, v194);
      (v195._countAndFlagsBits)(v187, v55, v56);
      v195._countAndFlagsBits = &v164;
      URL.resolvingSymlinksInPath()();
      v38 = named;
      v57 = v187;
      URL.resolvingSymlinksInPath()();
      v191._object = v26;
      v39 = v26[1];
      v58 = v57;
      v40 = v194;
      v39(v58, v194);
      v39(_._countAndFlagsBits, v40);
LABEL_9:
      object = v190._object;
      v60 = static _FileUtilities.getReadableJsonFilesInDirectory(at:)(v38);
      _._countAndFlagsBits = object;
      if (object)
      {
        v39(v38, v40);
        return v39(v195._countAndFlagsBits, v40);
      }

      v62 = v60;
      v190._object = v39;
      v63 = *(v60 + 16);
      if (v63 >= 2)
      {
        v188._countAndFlagsBits = 0;
        v188._object = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v64._object = "with object annotations." + 0x8000000000000000;
        v64._countAndFlagsBits = 0xD000000000000037;
        String.append(_:)(v64);
        v62;
        v183 = v63;
        v65 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v67 = v66;
        v64._countAndFlagsBits = v65;
        v64._object = v66;
        String.append(_:)(v64);
        v67;
        v64._countAndFlagsBits = 46;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        _ = v188;
        v64._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v64._object, 0, 0);
        *v68 = _;
        *(v68 + 16) = 0;
        *(v68 + 32) = 0;
        *(v68 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v64._object);
        v69 = v194;
        v70 = v190._object;
        (v190._object)(named, v194);
        return v70(v195._countAndFlagsBits, v69);
      }

      if (!v63)
      {
        v60;
        v107 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v107, 0, 0);
        *v108 = 0xD000000000000058;
        *(v108 + 8) = " specified data source." + 0x8000000000000000;
        *(v108 + 16) = 0;
        *(v108 + 32) = 0;
        *(v108 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v107);
        v90 = v190._object;
        (v190._object)(named, v40);
        countAndFlagsBits = v195._countAndFlagsBits;
        return v90(countAndFlagsBits, v40);
      }

      v85 = v173;
      (*(v191._object + 2))(v173, ((*(v191._object + 80) + 32) & ~*(v191._object + 80)) + v60, v40);
      v62;
      v86 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData8JSONTypeOTt0gq5(_swiftEmptyArrayStorage);
      v87 = v172;
      JSONReadingOptions.init()();
      v88 = _._countAndFlagsBits;
      DataFrame.init(contentsOfJSONFile:columns:types:options:)(v85, 0, v86, v87);
      v89 = v195._countAndFlagsBits;
      if (v88)
      {
        v90 = v190._object;
        (v190._object)(named, v40);
        countAndFlagsBits = v89;
        return v90(countAndFlagsBits, v40);
      }

      _._countAndFlagsBits = &v164;
      v111._object = 0xED0000656D616E65;
      v112 = v195._countAndFlagsBits;
      v113 = alloca(24);
      v114 = alloca(32);
      v166 = v195._countAndFlagsBits;
      v111._countAndFlagsBits = 0x6C69666567616D69;
      v115 = v190._countAndFlagsBits;
      MLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5 = _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5(v111, partial apply for closure #1 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), &v164);
      v117 = v112;
      v121 = v120;
      v195._countAndFlagsBits = v117;
      v111._countAndFlagsBits = MLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5;
      v111._object = v120;
      v122._countAndFlagsBits = 0x6C69666567616D69;
      v122._object = 0xED0000656D616E65;
      DataFrame.renameColumn(_:to:)(v111, v122);
      v121;
      v111._countAndFlagsBits = 0x697461746F6E6E61;
      v111._object = 0xEA00000000006E6FLL;
      v123._countAndFlagsBits = _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSayypSgG_Tt0g503_s8d23ML16MLObjectDetectorV10b35SourceO24gatherAnnotatedFileNames07a5E00E5C22VyKFSbSayypSgGSgXEfU0_Tf1ncn_n(v111, v115);
      v133 = v123._object;
      v134 = v123;
      v135._countAndFlagsBits = 0x697461746F6E6E61;
      v135._object = 0xEA00000000006E6FLL;
      DataFrame.renameColumn(_:to:)(v134, v135);
      v133;
      _._countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v136._rawValue = swift_initStackObject(_._countAndFlagsBits, v170);
      *(v136._rawValue + 2) = 1;
      *(v136._rawValue + 3) = 2;
      strcpy(v136._rawValue + 32, "imagefilename");
      *(v136._rawValue + 23) = -4864;
      DataFrame.validateContainsColumns(_:context:)(v136, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      v137 = v191._countAndFlagsBits;
      if (v138)
      {
        swift_setDeallocating(v136._rawValue);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        (*(v189 + 8))(v190._countAndFlagsBits, v137);
        v139 = v194;
        v140 = v190._object;
        (v190._object)(named, v194);
        return v140(v195._countAndFlagsBits, v139);
      }

      else
      {
        swift_setDeallocating(v136._rawValue);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        inited = swift_initStackObject(_._countAndFlagsBits, v171);
        inited[2] = 1;
        inited[3] = 2;
        inited[4] = 0x697461746F6E6E61;
        inited[5] = 0xEA00000000006E6FLL;
        _._countAndFlagsBits = inited;
        v142 = v190._countAndFlagsBits;
        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEA00000000006E6FLL, 0x697461746F6E6E41));
        if (v143)
        {
          swift_setDeallocating(_._countAndFlagsBits);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          (*(v189 + 8))(v142, v137);
          v144 = v194;
          v145 = v190._object;
          (v190._object)(named, v194);
          return v145(v195._countAndFlagsBits, v144);
        }

        else
        {
          swift_setDeallocating(_._countAndFlagsBits);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v146 = v176;
          DataFrame.subscript.getter(0x6C69666567616D69, 0xED0000656D616E65, &type metadata for String);
          _._countAndFlagsBits = 0;
          v188._countAndFlagsBits = 0;
          v188._object = 0xE000000000000000;
          v147 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
          v148 = v179;
          OptionalColumnProtocol.filled(with:)(&v188, v179, v147);
          v191._object = *(v177 + 8);
          (v191._object)(v146, v148);
          v149 = alloca(24);
          v150 = alloca(32);
          v166 = v195._countAndFlagsBits;
          v151 = _._countAndFlagsBits;
          v152 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSs5NeverOTg5(partial apply for closure #3 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), &v164);
          _._countAndFlagsBits = v151;
          v188._countAndFlagsBits = v152;
          v153 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
          v154 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
          Column.init<A>(name:contents:)(0x7461506567616D69, 0xE900000000000068, &v188, &type metadata for String, v153, v154);
          DataFrame.append<A>(column:)(v146, &type metadata for String);
          (v191._object)(v146, v179);
          v155 = v175;
          v156 = _._countAndFlagsBits;
          DataFrame.filter<A>(on:_:_:)(0x7461506567616D69, 0xE900000000000068, &type metadata for String, closure #4 in MLObjectDetector.DataSource.gatherAnnotatedFileNames(), 0, &type metadata for String);
          _._countAndFlagsBits = v156;
          v157 = v174;
          if (DataFrameProtocol.isEmpty.getter(v174, &protocol witness table for DataFrame.Slice))
          {
            v158 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v158, 0, 0);
            *v159 = 0xD000000000000027;
            *(v159 + 8) = " required column '" + 0x8000000000000000;
            *(v159 + 16) = 0;
            *(v159 + 32) = 0;
            *(v159 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v158);
            (*(v180 + 8))(v155, v157);
          }

          else
          {
            v162 = v178;
            v163 = v180;
            (*(v180 + 16))(v178, v155, v157);
            DataFrame.init(_:)(v162);
            (*(v163 + 8))(v155, v157);
          }

          (*(v181 + 8))(v186, v182);
          (*(v189 + 8))(v190._countAndFlagsBits, v191._countAndFlagsBits);
          v160 = v194;
          v161 = v190._object;
          (v190._object)(named, v194);
          return v161(v195._countAndFlagsBits, v160);
        }
      }

    case 2u:
      v41 = v164;
      LOBYTE(v195._countAndFlagsBits) = v165;
      v42 = v166;
      named = v167;
      v191 = v168;
      v194 = v164;
      if (v165)
      {
        outlined copy of Result<_DataTable, Error>(v164, 1);
        v43 = tc_v1_flex_list_create(0);
        if (!v43)
        {
          BUG();
        }

        v44 = v43;
        v45 = type metadata accessor for CMLSequence();
        v46 = swift_allocObject(v45, 25, 7);
        *(v46 + 16) = v44;
        *(v46 + 24) = 1;
        outlined consume of Result<_DataTable, Error>(v41, 1);
      }

      else
      {
        outlined copy of Result<_DataTable, Error>(v164, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v41, 0);
        v46 = v183;
      }

      v187 = v42;
      v188._countAndFlagsBits = v42;
      v71 = named;
      v188._object = named;
      v72 = alloca(24);
      v73 = alloca(32);
      v166 = &v188;
      v74 = v190._object;
      v75 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v164, v46);
      _._countAndFlagsBits = v74;

      if ((v75 & 1) == 0)
      {
        v191._object;
        v188._countAndFlagsBits = 0;
        v188._object = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v188._object;
        v188._countAndFlagsBits = 0xD000000000000022;
        v188._object = "Number of Samples" + 0x8000000000000000;
        v81._countAndFlagsBits = v187;
LABEL_30:
        v81._object = v71;
        String.append(_:)(v81);
        v71;
        v100._object = 0xE200000000000000;
        v100._countAndFlagsBits = 11815;
        String.append(_:)(v100);
        _ = v188;
        v100._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v100._object, 0, 0);
        *v101 = _;
        *(v101 + 16) = 0;
        *(v101 + 32) = 0;
        *(v101 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v100._object);
        return outlined consume of Result<_DataTable, Error>(v194, v195._countAndFlagsBits);
      }

      if (LOBYTE(v195._countAndFlagsBits))
      {
        v76 = v194;
        outlined copy of Result<_DataTable, Error>(v194, 1);
        v77 = tc_v1_flex_list_create(0);
        if (!v77)
        {
          BUG();
        }

        v78 = v77;
        v79 = type metadata accessor for CMLSequence();
        v80 = swift_allocObject(v79, 25, 7);
        *(v80 + 16) = v78;
        *(v80 + 24) = 1;
        outlined consume of Result<_DataTable, Error>(v76, 1);
      }

      else
      {
        v92 = v194;
        outlined copy of Result<_DataTable, Error>(v194, 0);
        _DataTable.columnNames.getter();
        outlined consume of Result<_DataTable, Error>(v92, 0);
        v80 = v183;
      }

      v188 = v191;
      v71 = v191._object;
      v93 = alloca(24);
      v94 = alloca(32);
      v166 = &v188;
      v95 = _._countAndFlagsBits;
      v96 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v164, v80);
      _._countAndFlagsBits = v95;

      if ((v96 & 1) == 0)
      {
        named;
        v188._countAndFlagsBits = 0;
        v188._object = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v188._object;
        v188._countAndFlagsBits = 0xD000000000000022;
        v188._object = "Number of Samples" + 0x8000000000000000;
        v81._countAndFlagsBits = v191._countAndFlagsBits;
        goto LABEL_30;
      }

      v97 = v194;
      v188._countAndFlagsBits = v194;
      v98 = v195._countAndFlagsBits;
      LOBYTE(v188._object) = v195._countAndFlagsBits;
      v99 = named;
      if (!(v187 ^ 0x6C69666567616D69 | named ^ 0xED0000656D616E65))
      {
        outlined copy of Result<_DataTable, Error>(v194, v195._countAndFlagsBits);
LABEL_35:
        v99;
        v110 = v98;
        goto LABEL_41;
      }

      v109 = _stringCompareWithSmolCheck(_:_:expecting:)(v187, named, 0x6C69666567616D69, 0xED0000656D616E65, 0);
      outlined copy of Result<_DataTable, Error>(v97, v98);
      if (v109)
      {
        goto LABEL_35;
      }

      MLDataTable.willMutate()();
      v118._countAndFlagsBits = 0x7461506567616D69;
      v118._object = 0xE900000000000068;
      v119._countAndFlagsBits = v187;
      v119._object = v99;
      MLDataTable.renameImpl(named:to:)(v119, v118);
      if (LOBYTE(v188._object))
      {
        v99;
        v110 = 1;
      }

      else
      {
        v124 = v188._countAndFlagsBits;
        v125 = v99;
        v110 = 0;
        outlined copy of Result<_DataTable, Error>(v188._countAndFlagsBits, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v124, 0);
        v125;
      }

      v98 = v195._countAndFlagsBits;
LABEL_41:
      v126 = v191._countAndFlagsBits;
      if (v191._countAndFlagsBits ^ 0x697461746F6E6E61 | v191._object ^ 0xEA00000000006E6FLL)
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v191._countAndFlagsBits, v191._object, 0x697461746F6E6E61, 0xEA00000000006E6FLL, 0) & 1) == 0)
        {
          MLDataTable.willMutate()();
          v128._countAndFlagsBits = v126;
          v129 = v191._object;
          v128._object = v191._object;
          v130._countAndFlagsBits = 0x697461746F6E6E61;
          v130._object = 0xEA00000000006E6FLL;
          MLDataTable.renameImpl(named:to:)(v128, v130);
          if (LOBYTE(v188._object))
          {
            v129;
            v110 = 1;
          }

          else
          {
            v131 = v188._countAndFlagsBits;
            v110 = 0;
            outlined copy of Result<_DataTable, Error>(v188._countAndFlagsBits, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v131, 0);
            v129;
          }

          v98 = v195._countAndFlagsBits;
          goto LABEL_50;
        }

        v127 = v191._object;
      }

      else
      {
        v127 = v191._object;
      }

      v127;
LABEL_50:
      v132 = v188._countAndFlagsBits;
      v183 = v188._countAndFlagsBits;
      v184 = v110;
      outlined copy of Result<_DataTable, Error>(v188._countAndFlagsBits, v110);
      DataFrame.init(_:)(&v183);
      outlined consume of Result<_DataTable, Error>(v194, v98);
      return outlined consume of Result<_DataTable, Error>(v132, v110);
    case 3u:
      v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v48 = *(v47 + 48);
      v49 = *(&v164 + v48);
      _._countAndFlagsBits = *(&v164 + v48 + 8);
      v50 = *(v47 + 64);
      v195._countAndFlagsBits = *(&v164 + v50);
      v194 = *(&v164 + v50 + 8);
      v187 = *(v189 + 32);
      (v187)(v191._object, &v164, v191._countAndFlagsBits);
      named = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v51 = swift_initStackObject(named, &v164);
      v51[2] = 1;
      v51[3] = 2;
      v190._countAndFlagsBits = v49;
      v51[4] = v49;
      v52 = _._countAndFlagsBits;
      v51[5] = _._countAndFlagsBits;
      v52;
      DataFrame.validateContainsColumns(_:context:)(v51, __PAIR128__(0xEF656D616E20656CLL, 0x6966206567616D49));
      if (v53)
      {
        (*(v189 + 8))(v191._object, v191._countAndFlagsBits);
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v52;
        v54 = v194;
      }

      else
      {
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v82 = swift_initStackObject(named, v169);
        v82[2] = 1;
        v82[3] = 2;
        v82[4] = v195._countAndFlagsBits;
        v83 = v194;
        v82[5] = v194;
        v83;
        DataFrame.validateContainsColumns(_:context:)(v82, __PAIR128__(0xEA00000000006E6FLL, 0x697461746F6E6E41));
        if (!v84)
        {
          swift_setDeallocating(v82);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v102._countAndFlagsBits = 0x7461506567616D69;
          v102._object = 0xE900000000000068;
          v103._countAndFlagsBits = v190._countAndFlagsBits;
          v104 = _._countAndFlagsBits;
          v103._object = _._countAndFlagsBits;
          v105 = v191._object;
          DataFrame.renameColumn(_:to:)(v103, v102);
          v104;
          v103._countAndFlagsBits = v195._countAndFlagsBits;
          v103._object = v83;
          v106._countAndFlagsBits = 0x697461746F6E6E61;
          v106._object = 0xEA00000000006E6FLL;
          DataFrame.renameColumn(_:to:)(v103, v106);
          v83;
          return (v187)(v185, v105, v191._countAndFlagsBits);
        }

        (*(v189 + 8))(v191._object, v191._countAndFlagsBits);
        swift_setDeallocating(v82);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        _._countAndFlagsBits;
        v54 = v83;
      }

      return v54;
    case 4u:
      JUMPOUT(0x5FF08);
  }
}

uint64_t type metadata accessor for MLObjectDetector.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLObjectDetector.DataSource;
  if (!type metadata singleton initialization cache for MLObjectDetector.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLObjectDetector.DataSource);
  }

  return result;
}

uint64_t outlined init with copy of MLObjectDetector.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLObjectDetector.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t closure #1 in MLObjectDetector.DataSource.gatherAnnotatedFileNames()(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v25 = type metadata accessor for UTType(0);
  v24 = *(v25 - 8);
  v2 = *(v24 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v26 = &v24;
  v29 = type metadata accessor for URL.DirectoryHint(0);
  v28 = *(v29 - 8);
  v5 = *(v28 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = a1[1];
  if (v16)
  {
    v31 = *a1;
    v32 = &v24;
    v17 = v11;
    v30 = v12;
    (*(v12 + 16))(&v24, v27);
    __swift_storeEnumTagSinglePayload(&v24, 0, 1, v17);
    (*(v28 + 104))(&v24, enum case for URL.DirectoryHint.inferFromPath(_:), v29);
    v16;
    v18 = v32;
    v19 = URL.init(filePath:directoryHint:relativeTo:)(v31, v16, &v24, &v24);
    v20 = v26;
    static UTType.image.getter(v19);
    LOBYTE(v21) = static _FileUtilities.isReadableFile(at:of:)(v18, v20);
    v22 = v21;
    (*(v24 + 8))(v20, v25);
    (*(v30 + 8))(v18, v17);
  }

  else
  {
    return 0;
  }

  return v22;
}

uint64_t _s11TabularData0B5FrameV8CreateMLE10findColumn11defaultName4type5whereS2S_xmSbxSgXEtKlFSS_Tt0g5(Swift::String a1, uint64_t (*a2)(void **), uint64_t a3)
{
  v88 = v3;
  v85[1] = a3;
  v86 = a2;
  v97._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v100 = *(v97._object - 1);
  v5 = *(v100 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v87 = v85;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v90 = v85;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v89 = v85;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v99 = v85;
  v108 = type metadata accessor for AnyColumn(0);
  v107 = *(v108 - 8);
  v14 = v107[8];
  v15 = alloca(v14);
  v16 = alloca(v14);
  v95 = v85;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v19 = v85;
  v20 = alloca(v14);
  v21 = alloca(v14);
  v98 = v85;
  v97._countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v22 = DataFrame.indexOfColumn(_:)(a1);
  v93 = v4;
  v94 = v85;
  if (!v22.is_nil)
  {
    value = v22.value;
    v24 = DataFrame.columns.getter();
    if (value < 0)
    {
      BUG();
    }

    if (value >= *(v24 + 16))
    {
      BUG();
    }

    v25 = v107;
    v26 = ((*(v107 + 80) + 32) & ~*(v107 + 80)) + v24 + v107[9] * value;
    v27 = v98;
    v105 = v24;
    v28 = v108;
    (v107[2])(v98, v26, v108);
    v105;
    v29 = AnyColumn.wrappedElementType.getter();
    (v25[1])(v27, v28);
    v19 = v94;
    if (v29 == &type metadata for String)
    {
      object;
      return v97._countAndFlagsBits;
    }
  }

  if ((DataFrame.shape.getter)() <= 0)
  {
    v60 = "not in Data Table." + 0x8000000000000000;
    v61 = 0xD00000000000001ALL;
LABEL_43:
    v76 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v76, 0, 0);
    *v77 = v61;
    *(v77 + 8) = v60;
    *(v77 + 16) = 0;
    *(v77 + 32) = 0;
    *(v77 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v76);
    return v61;
  }

  v30 = DataFrame.columns.getter();
  v105 = *(v30 + 16);
  v104 = _swiftEmptyArrayStorage;
  v31 = 0;
  v32 = v108;
  v33 = v107;
  v103 = v30;
  while (v105 != v31)
  {
    if (v31 >= *(v30 + 16))
    {
      BUG();
    }

    v34 = v19;
    v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v106 = v33[9];
    (v33[2])(v34, v35 + v30 + v31 * v106, v32);
    if (AnyColumn.wrappedElementType.getter() == &type metadata for String)
    {
      v91 = v31;
      v37 = v108;
      v92 = v33[4];
      (v92)(v95, v34, v108);
      v38 = v104;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v104);
      v101 = v38;
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v37;
      }

      else
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1);
        v40 = v108;
        v38 = v101;
      }

      v41 = v106;
      v42 = v38[2];
      v43 = v38[3];
      v44 = v42 + 1;
      if (v43 >> 1 <= v42)
      {
        v47 = v38[2];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 >= 2, v44, 1);
        v42 = v47;
        v41 = v106;
        v40 = v108;
        v38 = v101;
      }

      v31 = v91 + 1;
      v38[2] = v44;
      v104 = v38;
      v45 = v38 + v35 + v41 * v42;
      v46 = v40;
      v92(v45, v95);
      v32 = v46;
      v33 = v107;
      v19 = v94;
      v30 = v103;
    }

    else
    {
      v36 = v108;
      (v33[1])(v34, v108);
      ++v31;
      v32 = v36;
      v19 = v34;
      v30 = v103;
    }
  }

  v30;
  v48 = v104;
  v49 = v104[2];
  if (v49)
  {
    v101 = _swiftEmptyArrayStorage;
    v105 = v49;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
    v50 = v108;
    v51 = v101;
    v52 = v104 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
    v103 = v33[2];
    v106 = v33[9];
    do
    {
      v53 = v98;
      (v103)(v98, v52, v50);
      v54 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
      v55 = v53;
      v56 = v108;
      (v107[1])(v55, v54);
      v101 = v51;
      v57 = v51[2];
      v58 = v57 + 1;
      if (v51[3] >> 1 <= v57)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v51[3] >= 2uLL, v57 + 1, 1);
        v58 = v57 + 1;
        v56 = v108;
        v51 = v101;
      }

      v51[2] = v58;
      (*(v100 + 32))(v51 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57, v99, v97._object);
      v52 += v106;
      v59 = v105-- == &dword_0 + 1;
      v50 = v56;
    }

    while (!v59);
    v107 = v51;
    v48 = v104;
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

  v62 = DataFrame.shape.getter(v48) * 0.2;
  if (COERCE__INT64(fabs(v62)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v62 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v62 >= 9.223372036854776e18)
  {
    BUG();
  }

  v63 = DataFrame.shape.getter(v48);
  v64 = 10;
  if (v63 < 10)
  {
    v64 = v63;
  }

  if (v64 <= v62)
  {
    v64 = v62;
  }

  if (v64 < 0)
  {
    BUG();
  }

  v65 = v97._object;
  v66 = v87;
  v67 = v107;
  if (!v64)
  {
LABEL_42:
    v67;
    v101 = 0;
    v102 = 0xE000000000000000;
    _StringGuts.grow(_:)(166);
    v75._object = "Annotations file is empty." + 0x8000000000000000;
    v75._countAndFlagsBits = 0xD000000000000098;
    String.append(_:)(v75);
    v75._countAndFlagsBits = v97._countAndFlagsBits;
    v75._object = object;
    String.append(_:)(v75);
    v75._countAndFlagsBits = 0x2E316567616D693ALL;
    v75._object = 0xEC0000002E67706ALL;
    String.append(_:)(v75);
    v61 = v101;
    v60 = v102;
    goto LABEL_43;
  }

  v106 = v107[2];
  v108 = 0;
  v68 = 0;
  v99 = v64;
  while (1)
  {
    v69 = __OFADD__(1, v68);
    v68 = (v68 + 1);
    if (v69)
    {
      BUG();
    }

    if (v106)
    {
      break;
    }

LABEL_41:
    v108 = v68;
    if (v68 == v64)
    {
      goto LABEL_42;
    }
  }

  v98 = v68;
  v70 = v100;
  v71 = v67 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v67;
  v105 = *(v70 + 16);
  v103 = *(v70 + 72);
  v72 = v106;
  while (1)
  {
    (v105)(v66, v71, v65);
    Column.subscript.getter(v108, v65);
    v73 = v86(&v101);
    v102;
    if (v73)
    {
      break;
    }

    v65 = v97._object;
    (*(v100 + 8))(v66, v97._object);
    v71 += v103;
    if (!--v72)
    {
      v74 = v107;
      v107;
      v67 = v74;
      v64 = v99;
      v68 = v98;
      goto LABEL_41;
    }
  }

  v78 = v107;
  v107;
  v79 = v90;
  v80 = v66;
  v81 = v97._object;
  v82 = *(v100 + 32);
  v82(v90, v80, v97._object);
  v78;
  v83 = v89;
  v82(v89, v79, v81);
  v61 = Column.name.getter(v81);
  (*(v100 + 8))(v83, v81);
  return v61;
}

uint64_t *closure #3 in MLObjectDetector.DataSource.gatherAnnotatedFileNames()(uint64_t *a1, uint64_t a2)
{
  v29 = a2;
  v28 = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v35 = &v27;
  v6 = type metadata accessor for URL.DirectoryHint(0);
  v31 = *(v6 - 8);
  v7 = *(v31 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v33 = &v27;
  v36 = type metadata accessor for URL(0);
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v30 = &v27;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v32 = *a1;
  v15 = a1[1];
  (*(v31 + 104))(&v27, enum case for URL.DirectoryHint.notDirectory(_:), v6);
  v16 = v35;
  v17 = v36;
  (*(v34 + 16))(v35, v29, v36);
  v18 = v16;
  v19 = v17;
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v17);
  v15;
  v20 = URL.init(filePath:directoryHint:relativeTo:)(v32, v15, v33, v35);
  v21 = v30;
  URL.absoluteURL.getter(v20);
  v22 = *(v34 + 8);
  v22(&v27, v19);
  v23 = URL.path.getter(&v27);
  v25 = v24;
  v22(v21, v36);
  result = v28;
  *v28 = v23;
  result[1] = v25;
  return result;
}

uint64_t closure #4 in MLObjectDetector.DataSource.gatherAnnotatedFileNames()(uint64_t *a1)
{
  v23 = type metadata accessor for UTType(0);
  v22 = *(v23 - 8);
  v1 = *(v22 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v24 = &v21;
  v26 = type metadata accessor for URL.DirectoryHint(0);
  v25 = *(v26 - 8);
  v4 = *(v25 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for URL(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = a1[1];
  if (v15)
  {
    v29 = *a1;
    v27 = v11;
    v28 = v10;
    __swift_storeEnumTagSinglePayload(&v21, 1, 1, v10);
    (*(v25 + 104))(&v21, enum case for URL.DirectoryHint.inferFromPath(_:), v26);
    v15;
    v16 = URL.init(filePath:directoryHint:relativeTo:)(v29, v15, &v21, &v21);
    v17 = v24;
    static UTType.image.getter(v16);
    LOBYTE(v18) = static _FileUtilities.isReadableFile(at:of:)(&v21, v17);
    v19 = v18;
    (*(v22 + 8))(v17, v23);
    (*(v27 + 8))(&v21, v28);
  }

  else
  {
    return 0;
  }

  return v19;
}

uint64_t static MLObjectDetector.DataSource.normalizedAnnotations(annotatedObjects:filename:annotationType:)(unint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v41.f64[0] = v4;
  *&v42.f64[0] = a3;
  v44 = a1;
  v40 = type metadata accessor for URL(0);
  x = *(v40 - 8);
  v7 = *(*&x + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v30;
  v45 = *a4;
  v46 = a4[1];
  v11 = a4[2];
  URL.init(fileURLWithPath:)(a2, *&v42.f64[0]);
  v12 = v41.f64[0];
  v13 = static ImageReader.read(url:)(&v30);
  if (v12 == 0.0)
  {
    v37 = 0;
    v39 = x;
    v14 = v13;
    objc_msgSend_stret(&rect, v13, "extent");
    v15.f64[1] = rect.origin.y;
    v15.f64[0] = CGRectGetWidth(rect);
    v41 = v15;
    objc_msgSend_stret(&rect, v14, "extent");
    v16.f64[1] = rect.origin.y;
    v16.f64[0] = CGRectGetHeight(rect);
    v17 = v44[2];
    if (v17)
    {
      v38 = v14;
      v31 = _mm_cvtpd_ps(_mm_unpacklo_pd(v41, v16));
      *&rect.origin.x = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
      v18 = v17;
      x = rect.origin.x;
      v19 = v44 + 7;
      v35 = &v30;
      v43 = v11;
      do
      {
        inserted = *(v19 - 1);
        v21 = *v19;
        if ((v45 & 1) == 0)
        {
          inserted = _mm_div_ps(inserted, v31);
          v21 = _mm_div_ps(v21, v31);
        }

        if ((v46 & 1) == 0)
        {
          v22 = 0x3F800000u;
          v22.f32[0] = 1.0 - _mm_movehdup_ps(inserted).f32[0];
          inserted = _mm_insert_ps(inserted, v22, 16);
        }

        *&v41.f64[0] = v18;
        v30 = v21;
        if (v11)
        {
          if (v11 == 1)
          {
            v23 = _mm_mul_ps(v21, xmmword_33E870);
            inserted = _mm_blend_ps(_mm_sub_ps(inserted, v23), _mm_add_ps(inserted, v23), 13);
          }

          else
          {
            inserted = _mm_add_ps(inserted, _mm_mul_ps(v21, xmmword_33E870));
          }
        }

        v42 = inserted;
        v33 = *(v19 - 3);
        v24 = *(v19 - 2);
        rect.origin.x = x;
        v25 = *(*&x + 16);
        v36 = *(*&x + 24);
        v26 = v36 >> 1;
        v44 = v19;
        v34 = v24;
        v24;
        if (v26 <= v25)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v36 >= 2, v25 + 1, 1);
          x = rect.origin.x;
        }

        *(*&x + 16) = v25 + 1;
        v27 = 32 * v25;
        *(*&x + v27 + 32) = v33;
        *(*&x + v27 + 40) = v34;
        *(*&x + v27 + 48) = _mm_unpacklo_pd(v42, v30);
        v19 = v44 + 4;
        v18 = *&v41.f64[0] - 1;
        v28 = v39;
        v10 = v35;
        v11 = v43;
      }

      while (*&v41.f64[0] != 1);
    }

    else
    {

      x = COERCE_DOUBLE(_swiftEmptyArrayStorage);
      v28 = v39;
    }

    (*(*&v28 + 8))(v10, v40);
  }

  else
  {
    (*(*&x + 8))(&v30, v40);
  }

  return *&x;
}

uint64_t closure #1 in MLObjectDetector.DataSource.gatherAnnotatedImages(annotationType:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *v1 = *a1;
  return v2;
}

uint64_t MLObjectDetector.DataSource.stratifiedSplit(proportions:seed:annotationColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  result = static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(v6, 0, 0, 0, 0, a5);
  if (!v5)
  {
    if (a2 < 0)
    {
      BUG();
    }

    v12 = v13;
    v9 = v14;
    v10 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v10, 136, 7);
    v13 = MersenneTwisterGenerator.init(seed:)(a2);
    specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, &v13, v12, v14, a3, a4, *a5.i64);

    return outlined consume of Result<_DataTable, Error>(v12, v9);
  }

  return result;
}

uint64_t MLObjectDetector.ObjectAnnotation.label.getter()
{
  v1 = *v0;
  v0[1];
  return v1;
}

uint64_t MLObjectDetector.ObjectAnnotation.label.setter(uint64_t a1, uint64_t a2)
{
  result = v2[1], a2;
  *v2 = a1;
  v2[1] = a2;
  return result;
}

void MLObjectDetector.ObjectAnnotation.boundingBox.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

void MLObjectDetector.ObjectAnnotation.boundingBox.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

char MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.init(stringValue:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a2 ^ 0xE100000000000000;
  if (a2 ^ 0xE100000000000000 | a1 ^ 0x78 && (a2 = 0xE100000000000000, (_stringCompareWithSmolCheck(_:_:expecting:)(120, 0xE100000000000000, a1, v2, 0) & 1) == 0))
  {
    if (v3 | a1 ^ 0x79 && (_stringCompareWithSmolCheck(_:_:expecting:)(121, 0xE100000000000000, a1, v2, 0) & 1) == 0)
    {
      if (a1 ^ 0x6874646977 | v2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6874646977, 0xE500000000000000, a1, v2, 0) & 1) == 0)
      {
        if (a1 ^ 0x746867696568 | v2 ^ 0xE600000000000000)
        {
          v5 = _stringCompareWithSmolCheck(_:_:expecting:)(0x746867696568, 0xE600000000000000, a1, v2, 0);
          v2, 0xE600000000000000;
          return 4 - (v5 & 1);
        }

        else
        {
          v2, 0xE600000000000000;
          return 3;
        }
      }

      else
      {
        v2, 0xE500000000000000;
        return 2;
      }
    }

    else
    {
      v2, 0xE100000000000000;
      return 1;
    }
  }

  else
  {
    v2, a2;
    return 0;
  }
}

Swift::Int MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 120;
      break;
    case 1:
      result = 121;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
  }

  return result;
}

uint64_t MLObjectDetector.DecodableAnnotation.Coordinates.encode(to:)(void *a1, float a2, float a3, float a4, float a5)
{
  v17 = v5;
  v22 = a5;
  v21 = a4;
  v20 = a3;
  v27[0] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys>);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v11 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38FE00, &unk_38FE00, v11, v10, v18);
  v23 = 0;
  v12 = v27[0];
  *v27 = &v17;
  v13 = v17;
  KeyedEncodingContainer.encode(_:forKey:)(&v23, v6, v12);
  if (v13)
  {
    return (*(v19 + 8))(*v27, v6);
  }

  v15 = v19;
  v24 = 1;
  KeyedEncodingContainer.encode(_:forKey:)(&v24, v6, v20);
  v25 = 2;
  KeyedEncodingContainer.encode(_:forKey:)(&v25, v6, v21);
  v26 = 3;
  v16 = *v27;
  KeyedEncodingContainer.encode(_:forKey:)(&v26, v6, v22);
  return (*(v15 + 8))(v16, v6);
}

uint64_t MLObjectDetector.DecodableAnnotation.Coordinates.init(from:)(void *a1, float a2)
{
  v20 = v2;
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys>);
  v15 = *(v21 - 8);
  v3 = *(v15 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v7 = a1[4];
  v16 = a1;
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v8 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys();
  v26 = &v15;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38FE00, &unk_38FE00, v8, v6, v7);
  v9 = v15;
  v22 = 0;
  v10 = v21;
  KeyedDecodingContainer.decode(_:forKey:)(&v22, v21);
  *&v20 = a2;
  v23 = 1;
  KeyedDecodingContainer.decode(_:forKey:)(&v23, v10);
  v11 = v9;
  v17 = a2;
  v24 = 2;
  KeyedDecodingContainer.decode(_:forKey:)(&v24, v21);
  v18 = a2;
  v25 = 3;
  v12 = v21;
  v13 = v26;
  KeyedDecodingContainer.decode(_:forKey:)(&v25, v21);
  v19 = a2;
  (*(v11 + 8))(v13, v12);
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

char protocol witness for CodingKey.init(stringValue:) in conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

char protocol witness for CodingKey.init(intValue:) in conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys()
{
  v1 = v0;
  result = MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys.init(intValue:)();
  *v1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLObjectDetector.DecodableAnnotation.Coordinates(void *a1, float a2, float a3, float a4, float a5)
{
  v7 = v5;
  result = MLObjectDetector.DecodableAnnotation.Coordinates.init(from:)(a1, a2);
  if (!v6)
  {
    *v7 = a2;
    v7[1] = a3;
    v7[2] = a4;
    v7[3] = a5;
  }

  return result;
}

void *MLObjectDetector.DecodableAnnotation.init(from:)(uint64_t *a1, __m128i a2)
{
  v3 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_15;
  }

  v4 = v2;
  *a1;
  *&v5 = 0x6C6562616CLL;
  *(&v5 + 1) = 0xE500000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v5, 2, *a2.i64);
  if ((v7 & 1) == 0)
  {
    v3;
LABEL_15:
    v3;
    v28 = 0xD00000000000001ELL;
    v29 = ", Bounding Box: ";
LABEL_16:
    v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
    *v31 = v28;
    *(v31 + 8) = v29 | 0x8000000000000000;
    *(v31 + 16) = 0;
    *(v31 + 32) = 0;
    *(v31 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v30);
  }

  v65 = v4;
  v8 = *(v3 + 56);
  v9 = 24 * v6;
  v10 = *(v8 + v9);
  v11 = *(v8 + v9 + 8);
  v12 = *(v8 + v9 + 16);
  outlined copy of MLDataValue(v10, v11, v12);
  v3;
  if (v12 != 2)
  {
    outlined consume of MLDataValue(v10, v11, v12);
    goto LABEL_15;
  }

  v73 = v10;
  v72 = v11;
  if (!*(v3 + 16) || (*&v13 = 0x616E6964726F6F63, *(&v13 + 1) = 0xEB00000000736574, specialized __RawDictionaryStorage.find<A>(_:)(v13, 2, *a2.i64), (v15 & 1) == 0))
  {
    v3;
LABEL_18:
    outlined consume of MLDataValue(v73, v72, 2);
    v28 = 0xD000000000000024;
    v29 = "Missing label from annotation.";
    goto LABEL_16;
  }

  v16 = *(v3 + 56);
  v17 = 24 * v14;
  v18 = *(v16 + v17);
  v19 = *(v16 + v17 + 8);
  v20 = *(v16 + v17 + 16);
  outlined copy of MLDataValue(v18, v19, v20);
  v3;
  if (v20 != 4)
  {
    outlined consume of MLDataValue(v18, v19, v20);
    goto LABEL_18;
  }

  if (!v18[2])
  {
LABEL_21:
    v28 = 0xD000000000000034;
    outlined consume of MLDataValue(v73, v72, 2);
    outlined consume of MLDataValue(v18, v19, 4);
    v29 = "tes from annotation.";
    goto LABEL_16;
  }

  v18;
  *&v21 = 120;
  *(&v21 + 1) = 0xE100000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v21, 2, *a2.i64);
  if ((v23 & 1) == 0)
  {
    outlined consume of MLDataValue(v18, v19, 4);
    goto LABEL_21;
  }

  v24 = v18[7];
  v25 = 24 * v22;
  v26 = *(v24 + v25 + 16);
  v27 = *(v24 + v25);
  v66 = *(v24 + v25 + 8);
  outlined copy of MLDataValue(v27, v66, *(v24 + v25 + 16));
  outlined consume of MLDataValue(v18, v19, 4);
  if (v26)
  {
    if (v26 == 2)
    {
      v33 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v27, v66);
      if ((v34 & 1) == 0)
      {
        a2 = v33;
        goto LABEL_27;
      }
    }

    else
    {
      if (v26 == 1)
      {
        a2 = v27;
        goto LABEL_27;
      }

      outlined consume of MLDataValue(v27, v66, v26);
    }

    a2 = _mm_loadl_epi64(&qword_33E410);
  }

  else
  {
    *a2.i64 = v27;
  }

LABEL_27:
  if (!v18[2])
  {
LABEL_34:
    v28 = 0xD000000000000034;
    outlined consume of MLDataValue(v73, v72, 2);
    outlined consume of MLDataValue(v18, v19, 4);
    v29 = "ate from annotation.";
    goto LABEL_16;
  }

  v67 = a2;
  v18;
  *&v35 = 121;
  *(&v35 + 1) = 0xE100000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v35, 2, *a2.i64);
  if ((v37 & 1) == 0)
  {
    outlined consume of MLDataValue(v18, v19, 4);
    goto LABEL_34;
  }

  v38 = v18[7];
  v39 = 24 * v36;
  v40 = *(v38 + v39);
  v41 = *(v38 + v39 + 16);
  v68 = *(v38 + v39 + 8);
  outlined copy of MLDataValue(v40, v68, *(v38 + v39 + 16));
  outlined consume of MLDataValue(v18, v19, 4);
  if (v41)
  {
    if (v41 == 2)
    {
      v42 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v40, v68);
      if ((v43 & 1) == 0)
      {
        a2 = v42;
        goto LABEL_40;
      }
    }

    else
    {
      if (v41 == 1)
      {
        a2 = v40;
        goto LABEL_40;
      }

      outlined consume of MLDataValue(v40, v68, v41);
    }

    a2 = _mm_loadl_epi64(&qword_33E410);
  }

  else
  {
    *a2.i64 = v40;
  }

LABEL_40:
  if (!v18[2])
  {
LABEL_47:
    outlined consume of MLDataValue(v73, v72, 2);
    outlined consume of MLDataValue(v18, v19, 4);
    v28 = 0xD000000000000033;
    v29 = "ate from annotation.";
    goto LABEL_16;
  }

  v69 = a2;
  v18;
  *&v44 = 0x6874646977;
  *(&v44 + 1) = 0xE500000000000000;
  specialized __RawDictionaryStorage.find<A>(_:)(v44, 2, *a2.i64);
  if ((v46 & 1) == 0)
  {
    outlined consume of MLDataValue(v18, v19, 4);
    goto LABEL_47;
  }

  v47 = v18[7];
  v48 = 24 * v45;
  v49 = v18;
  v50 = *(v47 + v48);
  v51 = *(v47 + v48 + 16);
  v70.i64[0] = *(v47 + v48 + 8);
  outlined copy of MLDataValue(v50, v70.i64[0], v51);
  v71 = v49;
  outlined consume of MLDataValue(v49, v19, 4);
  if (!v51)
  {
    *a2.i64 = v50;
    goto LABEL_53;
  }

  if (v51 == 2)
  {
    v52 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v50, v70.i64[0]);
    if ((v53 & 1) == 0)
    {
      a2 = v52;
      goto LABEL_53;
    }

LABEL_52:
    a2 = _mm_loadl_epi64(&qword_33E410);
    goto LABEL_53;
  }

  if (v51 != 1)
  {
    outlined consume of MLDataValue(v50, v70.i64[0], v51);
    goto LABEL_52;
  }

  a2 = v50;
LABEL_53:
  v70 = a2;
  if (!*(v71 + 2) || (*&v54 = 0x746867696568, *(&v54 + 1) = 0xE600000000000000, specialized __RawDictionaryStorage.find<A>(_:)(v54, 2, *a2.i64), (v56 & 1) == 0))
  {
    v28 = 0xD000000000000034;
    outlined consume of MLDataValue(v71, v19, 4);
    outlined consume of MLDataValue(v73, v72, 2);
    v29 = "ue from annotation.";
    goto LABEL_16;
  }

  v57 = *(v71 + 7);
  v58 = 24 * v55;
  v59 = v71;
  v60 = *(v57 + v58);
  v61 = *(v57 + v58 + 16);
  v71 = *(v57 + v58 + 8);
  outlined copy of MLDataValue(v60, v71, v61);
  outlined consume of MLDataValue(v59, v19, 4);
  if (!v61)
  {
    *a2.i64 = v60;
    goto LABEL_65;
  }

  if (v61 == 2)
  {
    v62 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v60, v71);
    if ((v63 & 1) == 0)
    {
      a2 = v62;
      goto LABEL_65;
    }

LABEL_64:
    a2 = _mm_loadl_epi64(&qword_33E410);
    goto LABEL_65;
  }

  if (v61 != 1)
  {
    outlined consume of MLDataValue(v60, v71, v61);
    goto LABEL_64;
  }

  a2 = v60;
LABEL_65:
  result = v72;
  v64 = _mm_cvtpd_ps(_mm_unpacklo_epi64(_mm_load_si128(&v70), a2));
  *v65 = v73;
  *(v65 + 8) = result;
  *(v65 + 16) = _mm_unpacklo_pd(_mm_cvtpd_ps(_mm_unpacklo_pd(v67, v69)), v64);
  return result;
}

uint64_t static MLObjectDetector.DecodableAnnotation.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  if (!(*a2 ^ v4 | v5 ^ a1[1]) || (v2 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)(v4, a1[1], *a2, v5, 0) & 1) != 0))
  {
    if (*(a1 + 4) != *(a2 + 16))
    {
      return 0;
    }

    v6 = _mm_cmpeq_ps(*(a1 + 20), *(a2 + 20));
    v7 = _mm_movemask_pd(_mm_unpacklo_ps(v6, v6));
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    if (!(v7 >> 1))
    {
      return 0;
    }

    LOBYTE(v2) = 1;
    if (*(a1 + 7) != *(a2 + 28))
    {
      return 0;
    }
  }

  return v2;
}

char MLObjectDetector.DecodableAnnotation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x6C6562616CLL | a2 ^ 0xE500000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6C6562616CLL, 0xE500000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x616E6964726F6F63 | a2 ^ 0xEB00000000736574)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x616E6964726F6F63, 0xEB00000000736574, a1, a2, 0);
      a2, 0xEB00000000736574;
      return 2 - (v3 & 1);
    }

    else
    {
      a2, 0xEB00000000736574;
      return 1;
    }
  }

  else
  {
    a2, 0xE500000000000000;
    return 0;
  }
}

uint64_t MLObjectDetector.DecodableAnnotation.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6C6562616CLL;
  if (a1)
  {
    return 0x616E6964726F6F63;
  }

  return result;
}

uint64_t MLObjectDetector.DecodableAnnotation.encode(to:)(void *a1)
{
  v15 = v1;
  v18 = v2;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<MLObjectDetector.DecodableAnnotation.CodingKeys>);
  v19 = *(v16 - 8);
  v3 = *(v19 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys();
  v8 = v16;
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_38FCE8, &unk_38FCE8, v7, v6, v17);
  v9 = *v18;
  v10 = v18[1];
  LOBYTE(v14) = 0;
  v11 = v15;
  KeyedEncodingContainer.encode(_:forKey:)(v9, v10, &v14, v8);
  if (!v11)
  {
    v14 = *(v18 + 1);
    v20[0] = 1;
    v13 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v14, v20, v8, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates, v13);
  }

  return (*(v19 + 8))(&v14, v8);
}

uint64_t MLObjectDetector.DecodableAnnotation.init(from:)(void *a1)
{
  v20 = v2;
  v16 = v1;
  *&v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<MLObjectDetector.DecodableAnnotation.CodingKeys>);
  v15 = *(v18 - 8);
  v3 = *(v15 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v6);
  v7 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys();
  v21 = &v14;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_38FCE8, &unk_38FCE8, v7, v6, v19);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v15;
  v20 = a1;
  LOBYTE(v14) = 0;
  v17 = KeyedDecodingContainer.decode(_:forKey:)(&v14, v18);
  v22[0] = 1;
  v10 = v9;
  v11 = lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates();
  v19 = v10;
  v10;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for MLObjectDetector.DecodableAnnotation.Coordinates, v22, v18, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates, v11);
  (*(v8 + 8))(v21, v18);
  v18 = v14;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  v12 = v19;
  v19;
  result = v16;
  *v16 = v17;
  *(result + 8) = v12;
  *(result + 16) = v18;
  return result;
}

char protocol witness for CodingKey.init(stringValue:) in conformance MLObjectDetector.DecodableAnnotation.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = MLObjectDetector.DecodableAnnotation.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLObjectDetector.DecodableAnnotation(void *a1)
{
  v3 = v1;
  result = MLObjectDetector.DecodableAnnotation.init(from:)(a1);
  if (!v2)
  {
    v3[1] = v6;
    *v3 = v5;
  }

  return result;
}

char static MLObjectDetector.NormalizedAnnotation.== infix(_:_:)(float *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  if (*a2 ^ v3 | v4 ^ *(a1 + 1) && (_stringCompareWithSmolCheck(_:_:expecting:)(v3, *(a1 + 1), *a2, v4, 0) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return static Rectangle.== infix(_:_:)(COERCE_FLOAT(*(a1 + 2)), _mm_movehdup_ps(*(a1 + 2)), *(a1 + 6), a1[7], COERCE_FLOAT(*(a2 + 16)), _mm_movehdup_ps(*(a2 + 16)), *(a2 + 24), *(a2 + 28));
  }
}

void MLObjectDetector.NormalizedAnnotation.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  *(v1 + 8);
  String.hash(into:)(a1, v2);
  outlined release of MLObjectDetector.NormalizedAnnotation(v1, v2);
  Rectangle.hash(into:)(*(v1 + 16), _mm_movehdup_ps(*(v1 + 16)), *(v1 + 24), *(v1 + 28));
}

Swift::Int MLObjectDetector.NormalizedAnnotation.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  v1 = *v0;
  *(v0 + 8);
  String.hash(into:)(v3, v1);
  outlined release of MLObjectDetector.NormalizedAnnotation(v0, v1);
  Rectangle.hash(into:)(*(v0 + 16), _mm_movehdup_ps(*(v0 + 16)), *(v0 + 24), *(v0 + 28));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLObjectDetector.NormalizedAnnotation()
{
  v1 = *v0;
  v3 = v0[1];
  return MLObjectDetector.NormalizedAnnotation.hashValue.getter();
}

void protocol witness for Hashable.hash(into:) in conformance MLObjectDetector.NormalizedAnnotation(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  MLObjectDetector.NormalizedAnnotation.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLObjectDetector.NormalizedAnnotation(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  Hasher.init(_seed:)(a1);
  v3;
  String.hash(into:)(v5, v2);
  v3;
  Rectangle.hash(into:)(v6, _mm_movehdup_ps(v6), v7, v8);
  return Hasher._finalize()();
}

uint64_t MLObjectDetector.ObjectAnnotation.description.getter()
{
  v19 = *v0;
  v1 = *(v0 + 8);
  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v18 = *(v0 + 48);
  v2._countAndFlagsBits = Double.description.getter(*(v0 + 16));
  object = v2._object;
  v4 = v2;
  String.append(_:)(v2);
  object, v4._object;
  v5._countAndFlagsBits = Double.description.getter(v22);
  v6 = v5._object;
  v7 = v5;
  String.append(_:)(v5);
  v6, v7._object;
  v7._countAndFlagsBits = 0x203A79202CLL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  0xE500000000000000, 0xE500000000000000;
  v8._countAndFlagsBits = Double.description.getter(v21);
  v9 = v8._object;
  v10 = v8;
  String.append(_:)(v8);
  v9, v10._object;
  v10._countAndFlagsBits = 0x3A6874646977202CLL;
  v10._object = 0xE900000000000020;
  String.append(_:)(v10);
  0xE900000000000020, 0xE900000000000020;
  v11._countAndFlagsBits = Double.description.getter(v20);
  v12 = v11._object;
  v13 = v11;
  String.append(_:)(v11);
  v12, v13._object;
  0xEA0000000000203ALL;
  v13._countAndFlagsBits = 41;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  0xEA0000000000203ALL, 0xE100000000000000;
  v13._countAndFlagsBits = 0x746867696568202CLL;
  v13._object = 0xEA0000000000203ALL;
  String.append(_:)(v13);
  0xEA0000000000203ALL, 0xEA0000000000203ALL;
  _StringGuts.grow(_:)(44);
  0xE000000000000000, 0xEA0000000000203ALL;
  v1;
  v13._countAndFlagsBits = v19;
  v13._object = v1;
  String.append(_:)(v13);
  v1, v1;
  v13._countAndFlagsBits = 0x6469666E6F43202CLL;
  v13._object = 0xEE00203A65636E65;
  String.append(_:)(v13);
  v14._countAndFlagsBits = Double.description.getter(v18);
  v15 = v14._object;
  v16 = v14;
  String.append(_:)(v14);
  v15, v16._object;
  v16._object = "ect annotations, found " + 0x8000000000000000;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);
  v16._countAndFlagsBits = 540702760;
  v16._object = 0xE400000000000000;
  String.append(_:)(v16);
  0xE400000000000000, 0xE400000000000000;
  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  return 0x203A6C6562614CLL;
}

uint64_t MLObjectDetector.ObjectAnnotation.debugDescription.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v7 = v0[6];
  v4;
  v1 = MLObjectDetector.ObjectAnnotation.description.getter();
  v4;
  return v1;
}

void *MLObjectDetector.ObjectAnnotation.playgroundDescription.getter()
{
  v2 = v0;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = v1[6];
  v8;
  v3 = MLObjectDetector.ObjectAnnotation.description.getter();
  v5 = v4;
  v8;
  result = &type metadata for String;
  v2[3] = &type metadata for String;
  *v2 = v3;
  v2[1] = v5;
  return result;
}

uint64_t specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7)
{
  v73 = a2;
  v9 = v8;
  v94._countAndFlagsBits = a5;
  v74 = a1;
  v81 = a3;
  v75 = v7;
  v99 = a4;
  v82 = a6;
  if (a4)
  {
    v98 = v8;
    outlined copy of Result<_DataTable, Error>(a3, 1);
    v11 = tc_v1_flex_list_create(0);
    if (!v11)
    {
      BUG();
    }

    v12 = v11;
    v13 = type metadata accessor for CMLSequence();
    v14 = swift_allocObject(v13, 25, 7);
    *(v14 + 16) = v12;
    *(v14 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(a3, 1);
    v15 = v82;
    v9 = v98;
  }

  else
  {
    v15 = a6;
    outlined copy of Result<_DataTable, Error>(a3, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(a3, 0);
    v14 = v103;
  }

  v98 = &v72;
  *&v101 = v94._countAndFlagsBits;
  *(&v101 + 1) = v15;
  v17 = alloca(24);
  v18 = alloca(32);
  v74 = &v101;
  v19 = v9;
  v20 = v15;
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v72, v14);

  if (v21)
  {
    v94._object = v19;
    v22 = v81;
    *&v101 = v81;
    v23 = v99;
    v100 = v99;
    LOBYTE(v23) = v99 & 1;
    BYTE8(v101) = v99 & 1;
    outlined copy of Result<_DataTable, Error>(v81, v99);
    v24._countAndFlagsBits = v94._countAndFlagsBits;
    v24._object = v20;
    MLDataTable.subscript.getter(v24);
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v86 = v103;
    v87 = v104;
    MLUntypedColumn.dropDuplicates()();
    outlined consume of Result<_DataTable, Error>(v86, v87);
    v103 = v101;
    LOBYTE(v104) = BYTE8(v101);
    v91 = Array<A>.init(_:)(&v103, a7);
    *&v101 = v22;
    BYTE8(v101) = v23;
    outlined copy of Result<_DataTable, Error>(v22, v100);
    v25 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    if (v25 < 0)
    {
      BUG();
    }

    v26 = specialized _copyCollectionToContiguousArray<A>(_:)(0, v25);
    v103 = v22;
    LOBYTE(v104) = v23;
    *&v101 = v22;
    v99 = v23;
    BYTE8(v101) = v23;
    v27 = v100;
    outlined copy of Result<_DataTable, Error>(v22, v100);
    outlined copy of Result<_DataTable, Error>(v22, v27);
    v28 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
    v95 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v28);
    v29 = v91;
    v77 = v91[2];
    if (v77)
    {
      v97 = v26;
      v30 = 0;
      v31 = v99;
      countAndFlagsBits = v94._countAndFlagsBits;
      v33 = v100;
      while (1)
      {
        if (v30 >= v29[2])
        {
          BUG();
        }

        v76 = v30;
        v34 = 3 * v30;
        v35 = v29[3 * v30 + 4];
        v36 = v29[3 * v30 + 5];
        v37 = v29[v34 + 6];
        *&v101 = v81;
        BYTE8(v101) = v31;
        outlined copy of Result<_DataTable, Error>(v81, v33);
        outlined copy of MLDataValue(v35, v36, v37);
        v38._countAndFlagsBits = countAndFlagsBits;
        v38._object = v82;
        MLDataTable.subscript.getter(v38);
        outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
        v92 = v79;
        LOBYTE(v93) = v80;
        v84 = v35;
        v83 = v36;
        *(&v101 + 1) = v36;
        v96 = v37;
        v102 = v37;
        static MLUntypedColumn.== infix(_:_:)(&v92, &v101);
        outlined consume of Result<_DataTable, Error>(v92, v93);
        *&v101 = v86;
        BYTE8(v101) = v87;
        v39 = Array<A>.init(_:)(&v101, a7);
        v40 = v39[2];
        if (v40)
        {
          v98 = v97[2];

          v78 = v39;
          v41 = v39 + 6;
          v42 = 0;
          v43 = _swiftEmptyArrayStorage;
          v90 = v40;
          do
          {
            if (v98 == v42)
            {
              break;
            }

            if (v42 >= v97[2])
            {
              BUG();
            }

            if (!*v41 && *(v41 - 2) == 1)
            {
              v89 = *(v41 - 1);
              v44 = v97[v42 + 4];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v43);
              *&v101 = v43;
              v88 = v44;
              if (!isUniquelyReferenced_nonNull_native)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1);
                v43 = v101;
              }

              v46 = v43[2];
              v47 = v43[3];
              v48 = v46 + 1;
              if (v47 >> 1 <= v46)
              {
                v85 = v46 + 1;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v47 >= 2, v46 + 1, 1);
                v48 = v85;
                v43 = v101;
              }

              v43[2] = v48;
              v49 = 4 * v46;
              v43[v49 + 4] = 1;
              v43[v49 + 5] = v89;
              LOBYTE(v43[v49 + 6]) = 0;
              v43[v49 + 7] = v88;
              v40 = v90;
            }

            ++v42;
            v41 += 24;
          }

          while (v40 != v42);

          v39 = v78;
        }

        else
        {
          v43 = _swiftEmptyArrayStorage;
        }

        v39;
        object = v94._object;
        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n(v43);

        v52 = specialized _copyCollectionToContiguousArray<A>(_:)(0, ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2]);
        v53 = v74;
        v54 = specialized randomSplit<A>(indices:proportions:generator:)(v52, v74, v73);
        v94._object = object;
        if (object)
        {
          break;
        }

        v55 = v54;

        v90 = *(v53 + 16);
        if (v90)
        {
          v56 = 0;
          v57 = v95;
          v88 = v55;
          v89 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
          do
          {
            if (v56 >= *(v55 + 16))
            {
              BUG();
            }

            v98 = *(*(v55 + 8 * v56 + 32) + 16);
            if (v98)
            {
              v58 = 0;
              do
              {
                v59 = *(v55 + 8 * v56 + 32);
                if (v58 >= *(v59 + 16))
                {
                  BUG();
                }

                v60 = *(v59 + 8 * v58 + 32);
                if (v60 < 0)
                {
                  BUG();
                }

                if (v60 >= ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[2])
                {
                  BUG();
                }

                v61 = ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n[v60 + 4];
                if (!swift_isUniquelyReferenced_nonNull_native(v57))
                {
                  v57 = specialized _ArrayBuffer._consumeAndCreateNew()(v57);
                }

                if (v61 < 0)
                {
                  BUG();
                }

                if (v61 >= v57[2])
                {
                  BUG();
                }

                ++v58;
                v57[v61 + 4] = v56;
                ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n = v89;
                v55 = v88;
              }

              while (v98 != v58);
            }

            ++v56;
          }

          while (v56 != v90);
          v95 = v57;
        }

        ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;
        v55;
        v30 = v76 + 1;
        outlined consume of MLDataValue(v84, v83, v96);
        v31 = v99;
        countAndFlagsBits = v94._countAndFlagsBits;
        v33 = v100;
        v29 = v91;
        if (v30 == v77)
        {
          goto LABEL_43;
        }
      }

      ML11MLDataValueO_SitG_Sis5NeverOTg503_s8d4ML11fg20OS2iIgnyd_AC_SitSis5h126OIegnrzr_TR03_s8a68ML24stratifiedSplitGenerator11proportions9generator9dataTable2onAA06c31I0VSaySdG_xzAHSStKSGRzlFSiAA0K5D11O_N16XEfU0_Tf3nnnpf_nTf1cn_n;

      outlined consume of MLDataValue(v84, v83, v96);
      v95;
      v91;

      return outlined consume of Result<_DataTable, Error>(v103, v104);
    }

    else
    {
LABEL_43:

      v29;
      *&v101 = v95;
      v65 = alloca(24);
      v66 = alloca(32);
      v105 = &v101;
      ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      v69 = v68;
      v101;
      MLDataTable.willMutate()();
      *&v101 = ML14_UntypedColumnC_s5Error_pTt1g5;
      BYTE8(v101) = v69 & 1;
      outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v69);
      MLDataTable.addImpl(newColumn:named:)(&v101, 0x6F69746974726170, 0xE90000000000006ELL);
      outlined consume of Result<_DataTable, Error>(v101, SBYTE8(v101));
      v70 = v104;
      if (v104)
      {
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v69);
        v71 = v103;
      }

      else
      {
        v71 = v103;
        outlined copy of Result<_DataTable, Error>(v103, 0);
        _DataTable.columnNamesDidChange()();
        outlined consume of Result<_DataTable, Error>(v71, 0);
        outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v69);
      }

      result = v75;
      *v75 = v71;
      *(result + 8) = v70;
    }
  }

  else
  {
    v62 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v62, 0, 0);
    *v63 = 0xD000000000000022;
    *(v63 + 8) = "lue from annotation." + 0x8000000000000000;
    *(v63 + 16) = 0;
    *(v63 + 32) = 0;
    *(v63 + 48) = 0;
    return swift_willThrow();
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11TabularData8JSONTypeOTt0gq5(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v30 = &v26;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, JSONType>);
    v7 = static _DictionaryStorage.allocate(capacity:)(v6);
    v8 = *(a1 + 16);
    if (v8)
    {
      v27 = v30 + *(v1 + 48);
      v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v29 = a1;
      v10 = a1 + v9;
      v28 = *(v2 + 72);

      do
      {
        v26 = v8;
        v11 = v30;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v30, &demangling cache variable for type metadata for (String, JSONType));
        v12 = *v11;
        v13 = v11[1];
        *&v14 = *v11;
        *(&v14 + 1) = v13;
        v15 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
        if (v16)
        {
          BUG();
        }

        v17 = v15;
        v7[(v15 >> 6) + 8] |= 1 << v15;
        v18 = v7[6];
        v19 = 16 * v17;
        *(v18 + v19) = v12;
        *(v18 + v19 + 8) = v13;
        v20 = v7[7];
        v21 = type metadata accessor for JSONType(0);
        (*(*(v21 - 8) + 32))(v20 + v17 * *(*(v21 - 8) + 72), v27, v21);
        v22 = v7[2];
        v23 = __OFADD__(1, v22);
        v24 = v22 + 1;
        if (v23)
        {
          BUG();
        }

        v7[2] = v24;
        v10 += v28;
        v8 = v26 - 1;
      }

      while (v26 != 1);

      a1 = v29;
    }
  }

  else
  {
    v7 = _swiftEmptyDictionarySingleton;
  }

  a1;
  return v7;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLObjectDetector.DataSource(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = a3;
        v8 = 0;
        goto LABEL_9;
      case 1u:
        v20 = type metadata accessor for URL(0);
        v21 = *(*(v20 - 8) + 16);
        v21(a1, a2, v20);
        v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
        v21((a1 + *(v22 + 48)), *(v22 + 48) + a2, v20);
        v24 = 1;
        goto LABEL_8;
      case 2u:
        v10 = *a2;
        v11 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v11);
        *a1 = v10;
        *(a1 + 8) = v11;
        a1[2] = *(a2 + 16);
        v12 = *(a2 + 24);
        v3[3] = v12;
        v3[4] = *(a2 + 32);
        v13 = *(a2 + 40);
        v3[5] = v13;
        v12;
        v13;
        v24 = 2;
        goto LABEL_8;
      case 3u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v16 = *(v15 + 48);
        *(a1 + v16) = *(a2 + v16);
        v17 = *(a2 + v16 + 8);
        *(v3 + v16 + 8) = v17;
        v18 = *(v15 + 64);
        *(v3 + v18) = *(a2 + v18);
        v19 = *(a2 + v18 + 8);
        *(v3 + v18 + 8) = v19;
        v17;
        v19;
        v24 = 3;
LABEL_8:
        v8 = v24;
        a1 = v3;
        v7 = a3;
LABEL_9:
        swift_storeEnumTagMultiPayload(a1, v7, v8);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLObjectDetector.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      v3 = type metadata accessor for URL(0);
      result = (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 1:
      v6 = type metadata accessor for URL(0);
      v7 = *(*(v6 - 8) + 8);
      v7(a1, v6);
      v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
      result = (v7)(v8, v6);
      break;
    case 2:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      result = *(a1 + 40);
      break;
    case 3:
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(a1 + *(v5 + 48) + 8);
      result = *(a1 + *(v5 + 64) + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t *initializeWithCopy for MLObjectDetector.DataSource(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v5 = type metadata accessor for URL(0);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = a3;
      v7 = 0;
      goto LABEL_7;
    case 1u:
      v18 = type metadata accessor for URL(0);
      v19 = *(*(v18 - 8) + 16);
      v19(a1, a2, v18);
      v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v19((a1 + *(v20 + 48)), *(v20 + 48) + a2, v18);
      v22 = 1;
      goto LABEL_6;
    case 2u:
      v8 = *a2;
      v9 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v9);
      *a1 = v8;
      *(a1 + 8) = v9;
      a1[2] = *(a2 + 16);
      v10 = *(a2 + 24);
      v4[3] = v10;
      v4[4] = *(a2 + 32);
      v11 = *(a2 + 40);
      v4[5] = v11;
      v10;
      v11;
      v22 = 2;
      goto LABEL_6;
    case 3u:
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 16))(a1, a2, v12);
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v14 = *(v13 + 48);
      *(a1 + v14) = *(a2 + v14);
      v15 = *(a2 + v14 + 8);
      *(v4 + v14 + 8) = v15;
      v16 = *(v13 + 64);
      *(v4 + v16) = *(a2 + v16);
      v17 = *(a2 + v16 + 8);
      *(v4 + v16 + 8) = v17;
      v15;
      v17;
      v22 = 3;
LABEL_6:
      v7 = v22;
      a1 = v4;
      v6 = a3;
LABEL_7:
      swift_storeEnumTagMultiPayload(a1, v6, v7);
      return v4;
  }
}

void *assignWithCopy for MLObjectDetector.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLObjectDetector.DataSource(a1);
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = a3;
        v7 = 0;
        goto LABEL_8;
      case 1u:
        v18 = type metadata accessor for URL(0);
        v19 = *(*(v18 - 8) + 16);
        v19(a1, a2, v18);
        v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
        v19(a1 + *(v20 + 48), *(v20 + 48) + a2, v18);
        v22 = 1;
        goto LABEL_7;
      case 2u:
        v8 = *a2;
        v9 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v9);
        *a1 = v8;
        *(a1 + 8) = v9;
        *(a1 + 16) = *(a2 + 16);
        v10 = *(a2 + 24);
        v3[3] = v10;
        v3[4] = *(a2 + 32);
        v11 = *(a2 + 40);
        v3[5] = v11;
        v10;
        v11;
        v22 = 2;
        goto LABEL_7;
      case 3u:
        v12 = type metadata accessor for DataFrame(0);
        (*(*(v12 - 8) + 16))(a1, a2, v12);
        v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
        v14 = *(v13 + 48);
        *(a1 + v14) = *(a2 + v14);
        v15 = *(a2 + v14 + 8);
        *(v3 + v14 + 8) = v15;
        v16 = *(v13 + 64);
        *(v3 + v16) = *(a2 + v16);
        v17 = *(a2 + v16 + 8);
        *(v3 + v16 + 8) = v17;
        v15;
        v17;
        v22 = 3;
LABEL_7:
        v7 = v22;
        a1 = v3;
        v6 = a3;
LABEL_8:
        swift_storeEnumTagMultiPayload(a1, v6, v7);
        break;
    }
  }

  return v3;
}

uint64_t outlined destroy of MLObjectDetector.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLObjectDetector.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

char *initializeWithTake for MLObjectDetector.DataSource(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v12 + 48)] = *&__src[*(v12 + 48)];
      *&__dst[*(v12 + 64)] = *&__src[*(v12 + 64)];
      v14 = 3;
      goto LABEL_7;
    case 1:
      v8 = type metadata accessor for URL(0);
      v9 = *(*(v8 - 8) + 32);
      v9(__dst, __src, v8);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v9(&__dst[*(v10 + 48)], &__src[*(v10 + 48)], v8);
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

char *assignWithTake for MLObjectDetector.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLObjectDetector.DataSource(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *&__dst[*(v12 + 48)] = *&__src[*(v12 + 48)];
      *&__dst[*(v12 + 64)] = *&__src[*(v12 + 64)];
      v14 = 3;
      goto LABEL_8;
    case 1:
      v8 = type metadata accessor for URL(0);
      v9 = *(*(v8 - 8) + 32);
      v9(__dst, __src, v8);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
      v9(&__dst[*(v10 + 48)], &__src[*(v10 + 48)], v8);
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

uint64_t type metadata completion function for MLObjectDetector.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    swift_getTupleTypeLayout2(v6, v8[0]);
    v8[1] = v6;
    v8[2] = "0";
    result = type metadata accessor for DataFrame(319);
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout3(v7, *(result - 8) + 64, &unk_33E930, &unk_33E930);
      v8[3] = v7;
      swift_initEnumMetadataMultiPayload(a1, 256, 4, v8, v4, v5);
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for MLObjectDetector.ObjectAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = *(a2 + 48);
  v3;
  return a1;
}

void *assignWithCopy for MLObjectDetector.ObjectAnnotation(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v4 = a1[1];
  a1[1] = v3;
  v3;
  v4, a2;
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  return a1;
}

uint64_t __swift_memcpy56_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 48) = *(a2 + 6);
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLObjectDetector.ObjectAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3, a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.ObjectAnnotation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 8) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 8) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLObjectDetector.ObjectAnnotation(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 56) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t assignWithCopy for MLObjectDetector.NormalizedAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v3;
  v4, a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

void *assignWithTake for MLObjectDetector.NormalizedAnnotation(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];
  v3, a2;
  a1[2] = a2[2];
  a1[3] = a2[3];
  return a1;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.NormalizedAnnotation, &type metadata for MLObjectDetector.NormalizedAnnotation);
    lazy protocol witness table cache variable for type MLObjectDetector.NormalizedAnnotation and conformance MLObjectDetector.NormalizedAnnotation = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLObjectDetector.DecodableAnnotation]);
    lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [MLObjectDetector.DecodableAnnotation] and conformance <A> [A] = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation, &type metadata for MLObjectDetector.DecodableAnnotation);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation and conformance MLObjectDetector.DecodableAnnotation = result;
  }

  return result;
}

uint64_t initializeWithCopy for MLObjectDetector.NormalizedAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v3;
  return a1;
}

{
  return initializeWithCopy for MLObjectDetector.DecodableAnnotation(a1, a2);
}

uint64_t assignWithCopy for MLObjectDetector.DecodableAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v3;
  v4, a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t assignWithTake for MLObjectDetector.DecodableAnnotation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3, a2;
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0Tm(void *a1, uint64_t a2)
{
  result = a1;
  v3 = *(*(a2 - 8) + 80);
  if ((v3 & 0x20000) != 0)
  {
    return (*a1 + ((v3 + 16) & ~v3));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.CodingKeys, &unk_38FCE8);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates, &type metadata for MLObjectDetector.DecodableAnnotation.Coordinates);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates and conformance MLObjectDetector.DecodableAnnotation.Coordinates = result;
  }

  return result;
}

_OWORD *__swift_memcpy16_4(_OWORD *a1, _OWORD *a2)
{
  result = a1;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys, &unk_38FE00);
    lazy protocol witness table cache variable for type MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys and conformance MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFD)
    {
      goto LABEL_13;
    }

    v2 = a2 + 3;
    v3 = 1;
    if (v2 >= 0xFF00)
    {
      v3 = 2 * (v2 >= 0xFFFF00) + 2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
    }

    else
    {
      v4 = v3 == 2 ? *(a1 + 1) : a1[1];
    }

    if (v4)
    {
      v5 = *a1 + (v4 << 8) - 4;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 4;
      v8 = v6 < 4;
      v5 = -1;
      if (!v8)
      {
        v5 = v7;
      }
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MLObjectDetector.DecodableAnnotation.Coordinates.CodingKeys(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFD)
  {
    v4 = a3 + 3;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFC)
  {
    v5 = a2 - 253;
    v6 = (v5 >> 8) + 1;
    *a1 = v5;
    result = result;
    switch(result)
    {
      case 0:
        return result;
      case 1:
        a1[1] = v6;
        break;
      case 2:
        *(a1 + 1) = v6;
        break;
      case 3:
LABEL_16:
        BUG();
      case 4:
        *(a1 + 1) = v6;
        break;
    }
  }

  else
  {
    result = result;
    switch(result)
    {
      case 0:
        goto LABEL_11;
      case 1:
        a1[1] = 0;
        goto LABEL_11;
      case 2:
        *(a1 + 1) = 0;
        goto LABEL_11;
      case 3:
        goto LABEL_16;
      case 4:
        *(a1 + 1) = 0;
LABEL_11:
        if (a2)
        {
          *a1 = a2 + 3;
        }

        break;
      case 5:
        JUMPOUT(0x64130);
    }
  }

  return result;
}

uint64_t MLClassifier.init<A>(model:)(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v43 = v2;
  v54 = type metadata accessor for MLSupportVectorClassifier(0);
  v3 = *(*(v54 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v53 = &v40;
  v52 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v6 = *(*(v52 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v51 = &v40;
  v50 = type metadata accessor for MLRandomForestClassifier(0);
  v9 = *(*(v50 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v49 = &v40;
  v48 = type metadata accessor for MLDecisionTreeClassifier(0);
  v12 = *(*(v48 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v47 = &v40;
  v15 = type metadata accessor for MLBoostedTreeClassifier(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v46 = &v40;
  v19 = *(a2 - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v45 = type metadata accessor for MLClassifier(0);
  v23 = *(*(v45 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v44 = v19;
  (*(v19 + 16))(&v40, v55, a2);
  v26 = v46;
  v56 = a2;
  if (swift_dynamicCast(v46, &v40, a2, v15, 0))
  {
    outlined init with take of MLClassifierMetrics(v26, &v40, type metadata accessor for MLBoostedTreeClassifier);
    v27 = 0;
  }

  else
  {
    v28 = v47;
    if (swift_dynamicCast(v47, &v40, v56, v48, 0))
    {
      outlined init with take of MLClassifierMetrics(v28, &v40, type metadata accessor for MLDecisionTreeClassifier);
      v39 = 1;
    }

    else
    {
      v29 = v49;
      if (swift_dynamicCast(v49, &v40, v56, v50, 0))
      {
        outlined init with take of MLClassifierMetrics(v29, &v40, type metadata accessor for MLRandomForestClassifier);
        v39 = 2;
      }

      else
      {
        v30 = v51;
        if (swift_dynamicCast(v51, &v40, v56, v52, 0))
        {
          outlined init with take of MLClassifierMetrics(v30, &v40, type metadata accessor for MLLogisticRegressionClassifier);
          v39 = 3;
        }

        else
        {
          v31 = v53;
          if (!swift_dynamicCast(v53, &v40, v56, v54, 0))
          {
            v41 = 0;
            v42 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);
            v42;
            v41 = 0xD000000000000013;
            v42 = "CreateML/MLRegressor.swift" + 0x8000000000000000;
            DynamicType = swift_getDynamicType(v55, v56, 0);
            v36._countAndFlagsBits = _typeName(_:qualified:)(DynamicType, 0);
            object = v36._object;
            String.append(_:)(v36);
            object;
            v38._countAndFlagsBits = 46;
            v38._object = 0xE100000000000000;
            String.append(_:)(v38);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v41, v42, "CreateML/MLClassifier.swift", 27, 2, 68, 0);
            BUG();
          }

          outlined init with take of MLClassifierMetrics(v31, &v40, type metadata accessor for MLSupportVectorClassifier);
          v39 = 4;
        }
      }
    }

    v27 = v39;
  }

  swift_storeEnumTagMultiPayload(&v40, v45, v27);
  v32 = *(v44 + 8);
  v33 = v56;
  v32(&v40, v56);
  outlined init with take of MLClassifierMetrics(&v40, v43, type metadata accessor for MLClassifier);
  return (v32)(v55, v33);
}

uint64_t MLClassifier.init(trainingData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v185 = v5;
  v188 = a4;
  v187 = *&a3;
  v154 = v4;
  v6 = *(*(type metadata accessor for MLClassifierMetrics.Precomputed(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v160 = &v145;
  v165 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v166 = *(v165 - 8);
  v9 = *(v166 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v161 = &v145;
  v167 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v168 = *(v167 - 8);
  v12 = *(v168 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v169 = &v145;
  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v15 = *(*(v162 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v150 = &v145;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v151 = &v145;
  v20 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v163 = &v145;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v164 = &v145;
  v158 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v25 = *(*(v158 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v148 = &v145;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v149 = &v145;
  v30 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v159 = &v145;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v178 = &v145;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v171 = &v145;
  v184 = type metadata accessor for DataFrame(0);
  v38 = *(v184 - 8);
  v39 = *(v38 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v172 = &v145;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v179 = &v145;
  v180 = type metadata accessor for DataFrame.Slice(0);
  v44 = *(v180 - 8);
  v45 = *(v44 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v186 = COERCE_DOUBLE(&v145);
  v48 = alloca(v45);
  v49 = alloca(v45);
  v182 = &v145;
  v50 = alloca(v45);
  v51 = alloca(v45);
  v181 = &v145;
  v174 = a1;
  v52 = v187;
  v53 = v185;
  v54 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(a1, a2, *&v187, v188);
  v177 = v53;
  if (v53)
  {
    (*(v38 + 8))(v174, v184);
    *&v52;
    return v188;
  }

  v173 = v54;
  v152 = a2;
  v176 = v38;
  v175 = v44;
  v188;
  v56 = v184;
  v57 = v174;
  DataFrameProtocol.randomSplit(by:seed:)(v181, v182, 0, 0, v184, &protocol witness table for DataFrame, 0.1);
  if (DataFrameProtocol.isEmpty.getter(v180, &protocol witness table for DataFrame.Slice))
  {
    *&v187;
    v173;
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    *v59 = 0xD000000000000045;
    *(v59 + 8) = "filenames, for example: " + 0x8000000000000000;
    *(v59 + 16) = 0;
    *(v59 + 32) = 0;
    *(v59 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v58);
    (*(v176 + 8))(v57, v56);
    v60 = *(v175 + 8);
    v61 = v180;
    v60(v182, v180);
    return (v60)(v181, v61);
  }

  v62 = *(v175 + 16);
  v63 = v186;
  v64 = v180;
  v62(*&v186, v181, v180);
  DataFrame.init(_:)(*&v63);
  v62(*&v63, v182, v64);
  DataFrame.init(_:)(*&v63);
  v65 = v173;
  v66 = static MLClassifier.selectClassifiers(featureCount:)(*(v173 + 2));
  v67 = *(v66 + 2);
  if (v67 == 0.0)
  {
    v65;
    v89 = _swiftEmptyArrayStorage;
LABEL_23:
    v66;
    *&v187;
    v171 = v89[2];
    v90 = v178;
    if (!v171)
    {
      v155 = 0;
      v156 = 0;
      v157 = 0;
      goto LABEL_58;
    }

    v188 = v89;
    outlined init with copy of TabularRegressionTask((v89 + 4), &v145);
    v188;
    v91 = v188;
    *&v92 = v188 + 9;
    v93 = 1;
    while (1)
    {
      if (v171 == v93)
      {
        outlined init with take of TabularRegressionTask(&v145, &v155);
        v91;
        if (*(&v156 + 1))
        {
          v91;
          outlined init with take of TabularRegressionTask(&v155, &v145);
          v131 = v146;
          v132 = __swift_project_boxed_opaque_existential_0Tm(&v145, v146);
          v133 = *(v131 - 8);
          v134 = *(v133 + 64);
          v135 = alloca(v134);
          v136 = alloca(v134);
          (*(v133 + 16))(&v145, v132, v131);
          MLClassifier.init<A>(model:)(&v145, v131);
          v137 = *(v176 + 8);
          v138 = v184;
          v137(v174, v184);
          v137(v172, v138);
          v137(v179, v138);
          v139 = *(v175 + 8);
          v140 = v180;
          v139(v182, v180);
          v139(v181, v140);
          return __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        }

LABEL_58:
        BUG();
      }

      if (v93 >= v91[2])
      {
        BUG();
      }

      v185 = v93;
      v187 = v92;
      outlined init with copy of TabularRegressionTask(*&v92, &v155);
      v94 = *(&v156 + 1);
      v95 = v157;
      __swift_project_boxed_opaque_existential_0Tm(&v155, *(&v156 + 1));
      (*(v95 + 24))(v94, v95);
      v96 = v149;
      outlined init with copy of MLTrainingSessionParameters(v90, v149, type metadata accessor for MLClassifierMetrics.Contents);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v96, v158);
      v98 = v96;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v96, type metadata accessor for MLClassifierMetrics.Contents);
          v186 = 0.0;
          goto LABEL_36;
        }

        v99 = v160;
        outlined init with take of MLClassifierMetrics(v98, v160, type metadata accessor for MLClassifierMetrics.Precomputed);
        v186 = 1.0 - *v99;
        v100 = v99;
        v101 = type metadata accessor for MLClassifierMetrics.Precomputed;
      }

      else
      {
        v102 = v164;
        outlined init with take of MLClassifierMetrics(v98, v164, type metadata accessor for AnyClassificationMetrics);
        v103 = v102;
        v104 = v151;
        outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v103, v151);
        v105 = swift_getEnumCaseMultiPayload(v104, v162);
        v106 = v161;
        if (v105 == 1)
        {
          v107 = v104;
          v108 = v161;
          v109 = v165;
          v110 = v165;
          v111 = v166;
        }

        else
        {
          v108 = v169;
          v106 = v169;
          v107 = v104;
          v109 = v167;
          v110 = v167;
          v111 = v168;
        }

        (*(v111 + 32))(v106, v107, v110);
        v186 = ClassificationMetrics.accuracy.getter(v109);
        (*(v111 + 8))(v108, v109);
        v100 = v164;
        v101 = type metadata accessor for AnyClassificationMetrics;
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v100, v101);
LABEL_36:
      outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLClassifierMetrics);
      v112 = v146;
      v113 = v147;
      __swift_project_boxed_opaque_existential_0Tm(&v145, v146);
      v114 = v159;
      (*(v113 + 24))(v112, v113);
      v115 = v148;
      outlined init with copy of MLTrainingSessionParameters(v114, v148, type metadata accessor for MLClassifierMetrics.Contents);
      v116 = swift_getEnumCaseMultiPayload(v115, v158);
      v117 = v115;
      if (v116)
      {
        if (v116 == 1)
        {
          v118 = v160;
          outlined init with take of MLClassifierMetrics(v117, v160, type metadata accessor for MLClassifierMetrics.Precomputed);
          v183 = 1.0 - *v118;
          outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLClassifierMetrics.Precomputed);
          v119 = v183;
        }

        else
        {
          outlined destroy of MLActivityClassifier.ModelParameters(v115, type metadata accessor for MLClassifierMetrics.Contents);
          v119 = 0.0;
        }

        v90 = v178;
        v128 = v187;
      }

      else
      {
        v120 = v163;
        outlined init with take of MLClassifierMetrics(v117, v163, type metadata accessor for AnyClassificationMetrics);
        v121 = v120;
        v122 = v150;
        outlined init with copy of Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>(v121, v150);
        if (swift_getEnumCaseMultiPayload(v122, v162) == 1)
        {
          v123 = v122;
          v124 = v161;
          v125 = v165;
          v126 = v166;
          (*(v166 + 32))(v161, v123, v165);
          v183 = ClassificationMetrics.accuracy.getter(v125);
          v127 = v124;
        }

        else
        {
          v129 = v169;
          v130 = v122;
          v125 = v167;
          v126 = v168;
          (*(v168 + 32))(v169, v130, v167);
          v127 = v129;
          v183 = ClassificationMetrics.accuracy.getter(v125);
        }

        (*(v126 + 8))(v127, v125);
        v90 = v178;
        outlined destroy of MLActivityClassifier.ModelParameters(v163, type metadata accessor for AnyClassificationMetrics);
        v114 = v159;
        v128 = v187;
        v119 = v183;
      }

      v187 = 1.0 - v186;
      v186 = 1.0 - v119;
      outlined destroy of MLActivityClassifier.ModelParameters(v114, type metadata accessor for MLClassifierMetrics);
      if (v186 <= v187)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v155);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v145);
        outlined init with take of TabularRegressionTask(&v155, &v145);
      }

      *&v92 = *&v128 + 40;
      v93 = v185 + 1;
      v91 = v188;
    }
  }

  v153 = *(v176 + 16);
  v170 = v66;
  v68 = v66 + 5;
  v188 = _swiftEmptyArrayStorage;
  v69 = v184;
  v70 = v179;
  while (1)
  {
    v186 = v67;
    v71 = *(v68 - 1);
    v183 = *&v68;
    v72 = *v68;
    v73 = v171;
    v153(v171, v70, v69);
    __swift_storeEnumTagSinglePayload(v73, 0, 1, v69);
    v74 = *(v72 + 8);
    v185 = *(v74 + 24);
    v75 = v173;
    v173;
    v76 = v177;
    v77 = v185(v172, v73, v152, *&v187, v75, v71, v74);
    v177 = v76;
    if (v76)
    {
      break;
    }

    v78 = v77;
    outlined destroy of DataFrame?(v73);
    v75;
    v185 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TabularClassificationTask);
    v79 = _arrayForceCast<A, B>(_:)(v78, v71, v185);
    v78;
    v80 = *(v79 + 16);
    v81 = v188[2];
    v82 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v188);
    v84 = v188;
    if (!isUniquelyReferenced_nonNull_native || v188[3] >> 1 < v82)
    {
      if (v81 > v82)
      {
        v82 = v81;
      }

      v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v82, 1, v188);
    }

    v85 = *(v79 + 16) == 0;
    v188 = v84;
    if (v85)
    {
      if (v80)
      {
        BUG();
      }
    }

    else
    {
      v86 = v84[2];
      if ((v84[3] >> 1) - v86 < v80)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v84[5 * v86 + 4], v79 + 32, v80, v185);
      if (v80)
      {
        v87 = __OFADD__(v188[2], v80);
        v88 = v188[2] + v80;
        if (v87)
        {
          BUG();
        }

        v188[2] = v88;
      }
    }

    v79;
    v68 = (*&v183 + 16);
    *&v67 = *&v186 - 1;
    v69 = v184;
    v70 = v179;
    if (*&v186 == 1)
    {
      v173;
      v89 = v188;
      v66 = v170;
      goto LABEL_23;
    }
  }

  *&v187;
  swift_bridgeObjectRelease_n(v75, 2);
  v141 = *(v176 + 8);
  v142 = v184;
  v141(v174, v184);
  outlined destroy of DataFrame?(v73);
  v188;
  v170;
  v141(v172, v142);
  v141(v179, v142);
  v143 = *(v175 + 8);
  v144 = v180;
  v143(v182, v180);
  return (v143)(v181, v144);
}

void *static MLClassifier.selectClassifiers(featureCount:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TabularClassificationTask.Type>);
  if (a1 > 199)
  {
    v2 = swift_allocObject(v1, 48, 7);
    v2[2] = 1;
    v2[3] = 2;
    v2[4] = type metadata accessor for MLLogisticRegressionClassifier(0);
    v2[5] = &protocol witness table for MLLogisticRegressionClassifier;
  }

  else
  {
    v2 = swift_allocObject(v1, 96, 7);
    v2[2] = 4;
    v2[3] = 8;
    v2[4] = type metadata accessor for MLLogisticRegressionClassifier(0);
    v2[5] = &protocol witness table for MLLogisticRegressionClassifier;
    v2[6] = type metadata accessor for MLBoostedTreeClassifier(0);
    v2[7] = &protocol witness table for MLBoostedTreeClassifier;
    v2[8] = type metadata accessor for MLDecisionTreeClassifier(0);
    v2[9] = &protocol witness table for MLDecisionTreeClassifier;
    v2[10] = type metadata accessor for MLRandomForestClassifier(0);
    v2[11] = &protocol witness table for MLRandomForestClassifier;
  }

  return v2;
}

uint64_t MLClassifier.init(trainingData:targetColumn:featureColumns:)(uint64_t *a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a4;
  v13 = a3;
  v4 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v10 = *a1;
  v11 = v7;
  DataFrame.init(_:)(&v10);
  return MLClassifier.init(trainingData:targetColumn:featureColumns:)(&v9, a2, v13, v12);
}

uint64_t MLClassifier.predictions(from:)(uint64_t a1)
{
  v76 = v2;
  v59 = v3;
  v77 = a1;
  v78 = v1;
  v61 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v4 = *(v61 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v74 = &v59;
  v60 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v73 = &v59;
  v63 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v9 = *(*(v63 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v59;
  v65 = type metadata accessor for MLRandomForestClassifier(0);
  v12 = *(*(v65 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v64 = &v59;
  v67 = type metadata accessor for MLDecisionTreeClassifier(0);
  v15 = *(*(v67 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v66 = &v59;
  v80 = type metadata accessor for DataFrame(0);
  v79 = *(v80 - 8);
  v18 = *(v79 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v75 = &v59;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v68 = &v59;
  v23 = alloca(v18);
  v24 = alloca(v18);
  v69 = &v59;
  v25 = alloca(v18);
  v26 = alloca(v18);
  v71 = &v59;
  v27 = alloca(v18);
  v28 = alloca(v18);
  v72 = &v59;
  v29 = type metadata accessor for MLBoostedTreeClassifier(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v70 = &v59;
  v33 = type metadata accessor for MLClassifier(0);
  v34 = *(*(v33 - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  outlined init with copy of MLTrainingSessionParameters(v59, &v59, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v59, v33))
  {
    case 0u:
      v37 = v70;
      outlined init with take of MLClassifierMetrics(&v59, v70, type metadata accessor for MLBoostedTreeClassifier);
      v38 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v29 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v39)
      {
        v40 = v72;
        AnyTreeClassifierModel.applied(to:eventHandler:)(v38, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v40, v80);
      }

      v41 = type metadata accessor for MLBoostedTreeClassifier;
      goto LABEL_15;
    case 1u:
      v56 = v71;
      v37 = v66;
      outlined init with take of MLClassifierMetrics(&v59, v66, type metadata accessor for MLDecisionTreeClassifier);
      v57 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v67 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v58)
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v57, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v56, v80);
      }

      v41 = type metadata accessor for MLDecisionTreeClassifier;
      goto LABEL_15;
    case 2u:
      v50 = v69;
      v37 = v64;
      outlined init with take of MLClassifierMetrics(&v59, v64, type metadata accessor for MLRandomForestClassifier);
      v51 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v65 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v52)
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v51, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v50, v80);
      }

      v41 = type metadata accessor for MLRandomForestClassifier;
      goto LABEL_15;
    case 3u:
      v53 = v68;
      v37 = v62;
      outlined init with take of MLClassifierMetrics(&v59, v62, type metadata accessor for MLLogisticRegressionClassifier);
      v54 = v77;
      DataFrame.validateContainsColumns(_:context:)(*(v37 + *(v63 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v55)
      {
        MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v54, 0, 0);
        DataFrame.subscript.getter(*v37, v37[1]);
        (*(v79 + 8))(v53, v80);
      }

      v41 = type metadata accessor for MLLogisticRegressionClassifier;
LABEL_15:
      result = outlined destroy of MLActivityClassifier.ModelParameters(v37, v41);
      break;
    case 4u:
      v42 = v73;
      outlined init with take of MLClassifierMetrics(&v59, v73, type metadata accessor for MLSupportVectorClassifier);
      v43 = v79;
      (*(v79 + 16))(v75, v77, v80);
      outlined init with copy of MLTrainingSessionParameters(v42, v74, type metadata accessor for MLSupportVectorClassifier);
      v44 = *(v43 + 80);
      v45 = ~*(v43 + 80) & (v44 + 16);
      v46 = *(v61 + 80);
      v47 = ~v46 & (v45 + v46 + v18);
      v48 = swift_allocObject(&unk_38FE20, v47 + v60, v46 | v44 | 7);
      (*(v43 + 32))(v48 + v45, v75, v80);
      outlined init with take of MLClassifierMetrics(v74, v48 + v47, type metadata accessor for MLSupportVectorClassifier);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.predictions(from:), v48);

      result = outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLSupportVectorClassifier);
      break;
  }

  return result;
}

uint64_t MLClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v110 = v3;
  v87 = v4;
  v112 = v2;
  v5 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v88 = &v87;
  v89 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v8 = *(*(v89 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v105 = &v87;
  v90 = type metadata accessor for MLRandomForestClassifier(0);
  v11 = *(*(v90 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v106 = &v87;
  v92 = type metadata accessor for MLDecisionTreeClassifier(0);
  v14 = *(*(v92 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v91 = &v87;
  v113 = type metadata accessor for DataFrame(0);
  v114 = *(v113 - 8);
  v17 = *(v114 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v98 = &v87;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v95 = &v87;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v99 = &v87;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v96 = &v87;
  v26 = alloca(v17);
  v27 = alloca(v17);
  v100 = &v87;
  v28 = alloca(v17);
  v29 = alloca(v17);
  v97 = &v87;
  v30 = alloca(v17);
  v31 = alloca(v17);
  v94 = &v87;
  v32 = alloca(v17);
  v33 = alloca(v17);
  v93 = &v87;
  v34 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v101 = &v87;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v102 = &v87;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v103 = &v87;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v104 = &v87;
  v43 = type metadata accessor for MLBoostedTreeClassifier(0);
  v44 = *(*(v43 - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v109 = &v87;
  v47 = type metadata accessor for MLClassifier(0);
  v48 = *(*(v47 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v111 = *a1;
  v51 = *(a1 + 8);
  outlined init with copy of MLTrainingSessionParameters(v87, &v87, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v87, v47))
  {
    case 0u:
      v52 = v109;
      outlined init with take of MLClassifierMetrics(&v87, v109, type metadata accessor for MLBoostedTreeClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v53 = v93;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v52 + *(v43 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v55)
      {
        (*(v114 + 8))(v53, v113);
      }

      else
      {
        v56 = v94;
        AnyTreeClassifierModel.applied(to:eventHandler:)(v53, 0, 0);
        DataFrame.subscript.getter(*v109, v109[1]);
        v77 = v56;
        v78 = *(v114 + 8);
        v79 = v53;
        v80 = v113;
        v78(v77, v113);
        *v54.i64 = v78(v79, v80);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v104, 1, v54);
        v52 = v109;
      }

      v57 = type metadata accessor for MLBoostedTreeClassifier;
      v58 = v52;
      return outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
    case 1u:
      v61 = v91;
      outlined init with take of MLClassifierMetrics(&v87, v91, type metadata accessor for MLDecisionTreeClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v68 = v97;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v61 + *(v92 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v70)
      {
        (*(v114 + 8))(v68, v113);
      }

      else
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v68, 0, 0);
        v81 = v100;
        DataFrame.subscript.getter(*v61, v61[1]);
        v82 = *(v114 + 8);
        v83 = v81;
        v84 = v61;
        v85 = v113;
        v82(v83, v113);
        v86 = v85;
        v61 = v84;
        *v69.i64 = v82(v97, v86);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v103, 1, v69);
      }

      v57 = type metadata accessor for MLDecisionTreeClassifier;
      goto LABEL_17;
    case 2u:
      v61 = v106;
      outlined init with take of MLClassifierMetrics(&v87, v106, type metadata accessor for MLRandomForestClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v62 = v96;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v61 + *(v90 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v64)
      {
        AnyTreeClassifierModel.applied(to:eventHandler:)(v62, 0, 0);
        v71 = v99;
        DataFrame.subscript.getter(*v61, v61[1]);
        v72 = *(v114 + 8);
        v73 = v113;
        v72(v71, v113);
        *v63.i64 = v72(v96, v73);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v102, 1, v63);
        v57 = type metadata accessor for MLRandomForestClassifier;
        v58 = v106;
        return outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
      }

      (*(v114 + 8))(v62, v113);
      v57 = type metadata accessor for MLRandomForestClassifier;
      goto LABEL_17;
    case 3u:
      v61 = v105;
      outlined init with take of MLClassifierMetrics(&v87, v105, type metadata accessor for MLLogisticRegressionClassifier);
      v107 = v111;
      v108 = v51 & 1;
      outlined copy of Result<_DataTable, Error>(v111, v51);
      v65 = v95;
      DataFrame.init(_:)(&v107);
      DataFrame.validateContainsColumns(_:context:)(*(v61 + *(v89 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v67)
      {
        (*(v114 + 8))(v65, v113);
        v57 = type metadata accessor for MLLogisticRegressionClassifier;
LABEL_17:
        v58 = v61;
      }

      else
      {
        MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v65, 0, 0);
        v74 = v98;
        DataFrame.subscript.getter(*v61, v61[1]);
        v75 = *(v114 + 8);
        v76 = v113;
        v75(v74, v113);
        *v66.i64 = v75(v95, v76);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v101, 1, v66);
        v57 = type metadata accessor for MLLogisticRegressionClassifier;
        v58 = v105;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
    case 4u:
      v59 = v88;
      outlined init with take of MLClassifierMetrics(&v87, v88, type metadata accessor for MLSupportVectorClassifier);
      v107 = v111;
      v108 = v51 & 1;
      MLSupportVectorClassifier.predictions(from:)(&v107, a2);
      return outlined destroy of MLActivityClassifier.ModelParameters(v59, type metadata accessor for MLSupportVectorClassifier);
  }
}

uint64_t MLClassifier.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v31 = a1;
  v32 = v1;
  v4 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = &v28;
  v7 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v29 = &v28;
  v10 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v30 = &v28;
  v13 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = &v28;
  v20 = type metadata accessor for MLClassifier(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLTrainingSessionParameters(v3, &v28, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v28, v20))
  {
    case 0u:
      v24 = type metadata accessor for MLBoostedTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLBoostedTreeClassifier);
      MLBoostedTreeClassifier.evaluation(on:)(v31);
      goto LABEL_6;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLDecisionTreeClassifier);
      MLDecisionTreeClassifier.evaluation(on:)(v31);
      v25 = &v28;
      v26 = type metadata accessor for MLDecisionTreeClassifier;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
    case 2u:
      v24 = type metadata accessor for MLRandomForestClassifier;
      v19 = v30;
      outlined init with take of MLClassifierMetrics(&v28, v30, type metadata accessor for MLRandomForestClassifier);
      MLRandomForestClassifier.evaluation(on:)(v31);
      goto LABEL_6;
    case 3u:
      v24 = type metadata accessor for MLLogisticRegressionClassifier;
      v19 = v29;
      outlined init with take of MLClassifierMetrics(&v28, v29, type metadata accessor for MLLogisticRegressionClassifier);
      MLLogisticRegressionClassifier.evaluation(on:)(v31);
      goto LABEL_6;
    case 4u:
      v24 = type metadata accessor for MLSupportVectorClassifier;
      v19 = v28;
      outlined init with take of MLClassifierMetrics(&v28, v28, type metadata accessor for MLSupportVectorClassifier);
      MLSupportVectorClassifier.evaluation(on:)(v31);
LABEL_6:
      v25 = v19;
      v26 = v24;
      return outlined destroy of MLActivityClassifier.ModelParameters(v25, v26);
  }
}

{
  v31 = v2;
  v38 = v1;
  v3 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = &v31;
  v6 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v33 = &v31;
  v9 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v31;
  v12 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v35 = &v31;
  v40 = type metadata accessor for DataFrame(0);
  v39 = *(v40 - 8);
  v15 = *(v39 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v41 = &v31;
  v18 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v21 = type metadata accessor for MLClassifier(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = *a1;
  v26 = *(a1 + 8);
  outlined init with copy of MLTrainingSessionParameters(v31, &v31, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(&v31, v21))
  {
    case 0u:
      v27 = &v31;
      v28 = type metadata accessor for MLBoostedTreeClassifier;
      outlined init with take of MLClassifierMetrics(&v31, &v31, type metadata accessor for MLBoostedTreeClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLBoostedTreeClassifier.evaluation(on:)(v29);
      break;
    case 1u:
      v28 = type metadata accessor for MLDecisionTreeClassifier;
      v27 = v35;
      outlined init with take of MLClassifierMetrics(&v31, v35, type metadata accessor for MLDecisionTreeClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLDecisionTreeClassifier.evaluation(on:)(v29);
      break;
    case 2u:
      v28 = type metadata accessor for MLRandomForestClassifier;
      v27 = v34;
      outlined init with take of MLClassifierMetrics(&v31, v34, type metadata accessor for MLRandomForestClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLRandomForestClassifier.evaluation(on:)(v29);
      break;
    case 3u:
      v28 = type metadata accessor for MLLogisticRegressionClassifier;
      v27 = v33;
      outlined init with take of MLClassifierMetrics(&v31, v33, type metadata accessor for MLLogisticRegressionClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLLogisticRegressionClassifier.evaluation(on:)(v29);
      break;
    case 4u:
      v28 = type metadata accessor for MLSupportVectorClassifier;
      v27 = v32;
      outlined init with take of MLClassifierMetrics(&v31, v32, type metadata accessor for MLSupportVectorClassifier);
      v36 = v25;
      v37 = v26 & 1;
      outlined copy of Result<_DataTable, Error>(v25, v26);
      v29 = v41;
      DataFrame.init(_:)(&v36);
      MLSupportVectorClassifier.evaluation(on:)(v29);
      break;
  }

  (*(v39 + 8))(v29, v40);
  return outlined destroy of MLActivityClassifier.ModelParameters(v27, v28);
}

uint64_t MLClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v31 = a2;
  v30 = a1;
  v3 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v26 = v25;
  v6 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v27 = v25;
  v9 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v28 = v25;
  v12 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v29 = v25;
  v15 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = v25;
  v19 = type metadata accessor for MLClassifier(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  outlined init with copy of MLTrainingSessionParameters(v2, v25, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v25, v19))
  {
    case 0u:
      v23 = type metadata accessor for MLBoostedTreeClassifier;
      outlined init with take of MLClassifierMetrics(v25, v25, type metadata accessor for MLBoostedTreeClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLBoostedTreeClassifier.write(to:metadata:)(v30, v25);
      break;
    case 1u:
      v23 = type metadata accessor for MLDecisionTreeClassifier;
      v18 = v29;
      outlined init with take of MLClassifierMetrics(v25, v29, type metadata accessor for MLDecisionTreeClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLDecisionTreeClassifier.write(to:metadata:)(v30, v25);
      break;
    case 2u:
      v23 = type metadata accessor for MLRandomForestClassifier;
      v18 = v28;
      outlined init with take of MLClassifierMetrics(v25, v28, type metadata accessor for MLRandomForestClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLRandomForestClassifier.write(to:metadata:)(v30, v25);
      break;
    case 3u:
      v23 = type metadata accessor for MLLogisticRegressionClassifier;
      v18 = v27;
      outlined init with take of MLClassifierMetrics(v25, v27, type metadata accessor for MLLogisticRegressionClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLLogisticRegressionClassifier.write(to:metadata:)(v30, v25);
      break;
    case 4u:
      v23 = type metadata accessor for MLSupportVectorClassifier;
      v18 = v26;
      outlined init with take of MLClassifierMetrics(v25, v26, type metadata accessor for MLSupportVectorClassifier);
      qmemcpy(v25, v31, sizeof(v25));
      MLSupportVectorClassifier.write(to:metadata:)(v30, v25);
      break;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v18, v23);
}

uint64_t MLClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v78 = v3;
  v66 = v4;
  v67 = a3;
  v79 = a2;
  v80 = a1;
  v5 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v74 = v64;
  v8 = *(*(type metadata accessor for MLLogisticRegressionClassifier(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v75 = v64;
  v11 = *(*(type metadata accessor for MLRandomForestClassifier(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v76 = v64;
  v14 = *(*(type metadata accessor for MLDecisionTreeClassifier(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v77 = v64;
  v83 = type metadata accessor for URL.DirectoryHint(0);
  v82 = *(v83 - 8);
  v17 = *(v82 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v81 = v64;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v85 = type metadata accessor for URL(0);
  v84 = *(v85 - 8);
  v23 = *(v84 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v69 = v64;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v70 = v64;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v71 = v64;
  v30 = alloca(v23);
  v31 = alloca(v23);
  v72 = v64;
  v32 = alloca(v23);
  v33 = alloca(v23);
  v73 = v64;
  v34 = *(*(type metadata accessor for MLBoostedTreeClassifier(0) - 8) + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v37 = type metadata accessor for MLClassifier(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  qmemcpy(v65, v67, sizeof(v65));
  outlined init with copy of MLTrainingSessionParameters(v66, v64, type metadata accessor for MLClassifier);
  switch(swift_getEnumCaseMultiPayload(v64, v37))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v64, v64, type metadata accessor for MLBoostedTreeClassifier);
      v68 = v64;
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v85);
      v41 = v81;
      (*(v82 + 104))(v81, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
      v42 = v79;
      v79;
      v43 = v73;
      v44 = URL.init(filePath:directoryHint:relativeTo:)(v80, v42, v41, v68);
      qmemcpy(v64, v65, sizeof(v64));
      MLBoostedTreeClassifier.write(to:metadata:)(v43, v64);
      (*(v84 + 8))(v73, v85, v44);
      v45 = type metadata accessor for MLBoostedTreeClassifier;
      v46 = v64;
      break;
    case 1u:
      outlined init with take of MLClassifierMetrics(v64, v77, type metadata accessor for MLDecisionTreeClassifier);
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v85);
      v59 = v81;
      (*(v82 + 104))(v81, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
      v60 = v79;
      v79;
      v61 = v72;
      v62 = URL.init(filePath:directoryHint:relativeTo:)(v80, v60, v59, v64);
      qmemcpy(v64, v65, sizeof(v64));
      MLDecisionTreeClassifier.write(to:metadata:)(v61, v64);
      (*(v84 + 8))(v72, v85, v62);
      v45 = type metadata accessor for MLDecisionTreeClassifier;
      v46 = v77;
      break;
    case 2u:
      outlined init with take of MLClassifierMetrics(v64, v76, type metadata accessor for MLRandomForestClassifier);
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v85);
      v51 = v81;
      (*(v82 + 104))(v81, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
      v52 = v79;
      v79;
      v53 = v71;
      v54 = URL.init(filePath:directoryHint:relativeTo:)(v80, v52, v51, v64);
      qmemcpy(v64, v65, sizeof(v64));
      MLRandomForestClassifier.write(to:metadata:)(v53, v64);
      (*(v84 + 8))(v71, v85, v54);
      v45 = type metadata accessor for MLRandomForestClassifier;
      v46 = v76;
      break;
    case 3u:
      outlined init with take of MLClassifierMetrics(v64, v75, type metadata accessor for MLLogisticRegressionClassifier);
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v85);
      v55 = v81;
      (*(v82 + 104))(v81, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
      v56 = v79;
      v79;
      v57 = v70;
      v58 = URL.init(filePath:directoryHint:relativeTo:)(v80, v56, v55, v64);
      qmemcpy(v64, v65, sizeof(v64));
      MLLogisticRegressionClassifier.write(to:metadata:)(v57, v64);
      (*(v84 + 8))(v70, v85, v58);
      v45 = type metadata accessor for MLLogisticRegressionClassifier;
      v46 = v75;
      break;
    case 4u:
      outlined init with take of MLClassifierMetrics(v64, v74, type metadata accessor for MLSupportVectorClassifier);
      __swift_storeEnumTagSinglePayload(v64, 1, 1, v85);
      v47 = v81;
      (*(v82 + 104))(v81, enum case for URL.DirectoryHint.inferFromPath(_:), v83);
      v48 = v79;
      v79;
      v49 = v69;
      v50 = URL.init(filePath:directoryHint:relativeTo:)(v80, v48, v47, v64);
      qmemcpy(v64, v65, sizeof(v64));
      MLSupportVectorClassifier.write(to:metadata:)(v49, v64);
      (*(v84 + 8))(v69, v85, v50);
      v45 = type metadata accessor for MLSupportVectorClassifier;
      v46 = v74;
      break;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v46, v45);
}