uint64_t ImageClassifierTrainingSessionDelegate.train(from:)()
{
  v1[77] = v0;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Classifier?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[78] = swift_task_alloc(v2);
  v1[79] = swift_task_alloc(v2);
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Model?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[80] = swift_task_alloc(v3);
  v1[81] = swift_task_alloc(v3);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[82] = swift_task_alloc(v4);
  v1[83] = swift_task_alloc(v4);
  v1[84] = swift_task_alloc(v4);
  v5 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v1[85] = v5;
  v1[86] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  v1[87] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v1[88] = v7;
  v1[89] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(ImageClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

{
  v3 = *(*v1 + 752);
  v4 = *(*v1 + 728);
  v5 = *(*v1 + 744);
  v2 = *v1;
  *(*v1 + 760) = v0;
  v3;

  v4;
  if (v0)
  {
    v6 = ImageClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v2 + 632), type metadata accessor for MLImageClassifier.Classifier);
    v6 = ImageClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[77];
  v2 = v0[81];
  v3 = type metadata accessor for MLImageClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v1;
  swift_beginAccess(v4, v0 + 74, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v2, v4, &demangling cache variable for type metadata for MLImageClassifier.Model?);
  swift_endAccess(v0 + 74);
  v5 = swift_task_alloc(48);
  v0[99] = v5;
  *v5 = v0;
  v5[1] = ImageClassifierTrainingSessionDelegate.train(from:);
  v6 = v0[77];
  return SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(v0[92]);
}

{
  v3 = *(*v1 + 776);
  v4 = *(*v1 + 768);
  v5 = *(*v1 + 720);
  v8 = *(*v1 + 728);
  v2 = *v1;
  *(*v1 + 784) = v0;
  v3;

  v5;
  v8;
  if (v0)
  {
    v6 = ImageClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v2 + 624), type metadata accessor for MLImageClassifier.Classifier);
    v6 = ImageClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[77];
  v2 = v0[80];
  v3 = type metadata accessor for MLImageClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v1;
  swift_beginAccess(v4, v0 + 68, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v2, v4, &demangling cache variable for type metadata for MLImageClassifier.Model?);
  swift_endAccess(v0 + 68);
  v5 = swift_task_alloc(48);
  v0[99] = v5;
  *v5 = v0;
  v5[1] = ImageClassifierTrainingSessionDelegate.train(from:);
  v6 = v0[77];
  return SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(v0[92]);
}

{
  v1 = *(v0 + 800);
  v2 = *(v0 + 736);
  v3 = *(v0 + 712);
  v4 = *(v0 + 696);
  v15 = *(v0 + 688);
  v14 = *(v0 + 672);
  v13 = *(v0 + 664);
  v12 = *(v0 + 656);
  v11 = *(v0 + 648);
  v9 = *(v0 + 640);
  v7 = *(v0 + 624);
  v6 = *(v3 + *(*(v0 + 704) + 32));
  v10 = *(v0 + 632);
  v8 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);
  v1;

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.PersistentParameters);
  v3;
  v4;
  v15;
  v14;
  v13;
  v12;
  v11;
  v9;
  v10;
  v7;
  return (*(v0 + 8))(v6, v8, 1);
}

{
  v7 = *(v0 + 760);
  v8 = *(v0 + 624);
  v1 = *(v0 + 632);
  v2 = *(v0 + 736);
  v3 = *(v0 + 712);
  v4 = *(v0 + 696);
  v5 = *(v0 + 688);
  v13 = *(v0 + 672);
  v12 = *(v0 + 664);
  v11 = *(v0 + 656);
  v10 = *(v0 + 648);
  v9 = *(v0 + 640);

  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Classifier);
  v3;
  v4;
  v5;
  v13;
  v12;
  v11;
  v10;
  v9;
  v1;
  v8;
  return (*(v0 + 8))();
}

{
  v7 = *(v0 + 784);
  v1 = *(v0 + 736);
  v2 = *(v0 + 712);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v13 = *(v0 + 672);
  v12 = *(v0 + 664);
  v11 = *(v0 + 656);
  v10 = *(v0 + 648);
  v9 = *(v0 + 640);
  v5 = *(v0 + 624);
  v8 = *(v0 + 632);

  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLImageClassifier.Classifier);
  v2;
  v3;
  v4;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  v5;
  return (*(v0 + 8))();
}

uint64_t ImageClassifierTrainingSessionDelegate.train(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[88];
  v9 = v7[87];
  v10 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + v7[77];
  swift_beginAccess(v10, v7 + 50, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v9, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7[87], &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, "SessionDelegate.swift" + 0x8000000000000000, "CreateML/ImageClassifierTrainingSessionDelegate.swift", 53, 2, 192, 0);
  }

  else
  {
    v12 = v7[77];
    outlined init with take of MLClassifierMetrics(v7[87], v7[89], type metadata accessor for MLImageClassifier.PersistentParameters);
    v13 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore;
    v54 = (v12 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore);
    swift_beginAccess(v12 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore, v7 + 53, 1, 0);
    v14 = *(v12 + v13 + 88);
    v15 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore;
    v16 = (v12 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore);
    swift_beginAccess(v12 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore, v7 + 56, 1, 0);
    v17 = *(v12 + v15 + 88);
    if (v17[2])
    {
      v14;
      v17;
    }

    else
    {
      v58 = v16;
      v18 = v7[85];
      v19 = v7[86];
      outlined init with copy of MLTrainingSessionParameters(v7[89] + *(v7[88] + 20), v19, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v19, v18);
      v21 = v7[86];
      if (EnumCaseMultiPayload)
      {
        v14;
        v17;
        outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
      }

      else
      {
        v22 = *v21;
        v53 = *(v21 + 8);
        v23 = *(v21 + 16);
        v24 = *(v21 + 17);
        v14;
        v17 = specialized Collection.randomSplit<A, B>(strategy:)(v22, v53, v23 | (v24 << 8), v14);
        v26 = v25;
        v14;
        v26;
        _s8CreateML21AnnotatedFeatureStoreVyACxcSTRz0A12MLComponents0cD0Vy04CoreB013MLShapedArrayVySfGSSG7ElementRtzlufCSayAKG_Tt0g5(v26);
        qmemcpy(v7 + 38, v54, 0x60uLL);
        qmemcpy(v54, v7 + 14, 0x60uLL);
        outlined release of AnnotatedFeatureStore(v7 + 38);
        v17;
        _s8CreateML21AnnotatedFeatureStoreVyACxcSTRz0A12MLComponents0cD0Vy04CoreB013MLShapedArrayVySfGSSG7ElementRtzlufCSayAKG_Tt0g5(v17);
        qmemcpy(v7 + 26, v58, 0x60uLL);
        qmemcpy(v58, v7 + 2, 0x60uLL);
        outlined release of AnnotatedFeatureStore(v7 + 26);
        v14 = v26;
      }
    }

    v55 = v14;
    v7[91] = v14;
    v59 = v17;
    v7[90] = v17;
    v27 = v7[77];
    v28 = v7[84];
    v29 = type metadata accessor for EventCollector();
    swift_allocObject(v29, 32, 7);
    v56 = EventCollector.init()();
    v7[92] = v56;
    v30 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_tablePrinter + v27;
    swift_beginAccess(v30, v7 + 59, 0, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v28, &demangling cache variable for type metadata for TrainingTablePrinter?);
    v31 = type metadata accessor for TrainingTablePrinter(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v31);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (EnumTagSinglePayload == 1)
    {
      v33 = v7[83];
      v34 = v7[77];
      v57 = v7[82];
      ImageClassifierTrainingSessionDelegate.createTablePrinter()();
      __swift_storeEnumTagSinglePayload(v33, 0, 1, v31);
      swift_beginAccess(v30, v7 + 62, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v33, v30, &demangling cache variable for type metadata for TrainingTablePrinter?);
      swift_endAccess(v7 + 62);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v57, &demangling cache variable for type metadata for TrainingTablePrinter?);
      if (__swift_getEnumTagSinglePayload(v57, 1, v31) == 1)
      {
        BUG();
      }

      v35 = v7[82];
      TrainingTablePrinter.beginTable()();
      outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for TrainingTablePrinter);
    }

    v36 = v7[77];
    if (v59[2])
    {
      v37 = v7[78];
      v38 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_classifier + v36;
      swift_beginAccess(v38, v7 + 65, 0, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v37, &demangling cache variable for type metadata for MLImageClassifier.Classifier?);
      v39 = type metadata accessor for MLImageClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v37, 1, v39) == 1)
      {
        BUG();
      }

      v40 = v7[77];
      v41 = swift_allocObject(&unk_395FE0, 32, 7);
      v7[96] = v41;
      *(v41 + 16) = v56;
      *(v41 + 24) = v40;

      v42 = swift_task_alloc(208);
      v7[97] = v42;
      *v42 = v7;
      v42[1] = ImageClassifierTrainingSessionDelegate.train(from:);
      v43 = v7[78];
      return ((&async function pointer to specialized MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(v7[80], v55, v59, partial apply for closure #2 in ImageClassifierTrainingSessionDelegate.train(from:), v41, v44);
    }

    else
    {
      v45 = v7[79];
      v59;
      v46 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_classifier + v36;
      swift_beginAccess(v46, v7 + 71, 0, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, v45, &demangling cache variable for type metadata for MLImageClassifier.Classifier?);
      v47 = type metadata accessor for MLImageClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v45, 1, v47) == 1)
      {
        BUG();
      }

      v48 = v7[77];
      v49 = swift_allocObject(&unk_396008, 32, 7);
      v7[93] = v49;
      *(v49 + 16) = v56;
      *(v49 + 24) = v48;

      v50 = swift_task_alloc(208);
      v7[94] = v50;
      *v50 = v7;
      v50[1] = ImageClassifierTrainingSessionDelegate.train(from:);
      v51 = v7[79];
      return ((&async function pointer to specialized MLImageClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLImageClassifier.Classifier.fitted<A>(to:eventHandler:)))(v7[81], v55, partial apply for closure #1 in ImageClassifierTrainingSessionDelegate.train(from:), v49, v52);
    }
  }
}

uint64_t ImageClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2 = *(*v1 + 792);
  *(*v1 + 800) = a1;
  v2;
  return swift_task_switch(ImageClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t ImageClassifierTrainingSessionDelegate.createTablePrinter()()
{
  v26 = v0;
  v2 = type metadata accessor for MetricsKey(0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v27 = &v23;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v29 = &v23;
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
  v16 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore + v1, v24, 0, 0);
  if (*(*(v1 + v16 + 88) + 16))
  {
    v17 = v29;
    static MetricsKey.validationAccuracy.getter();
    v18 = v27;
    (*(v28 + 32))(v27, v17, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v15);
    v25 = v15;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, 0xD000000000000013, ("Validation Data\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    v15 = v25;
  }

  v20 = type metadata accessor for TrainingTablePrinter(0);
  v21 = v26;
  *(v26 + *(v20 + 24)) = v15;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v21 + *(v20 + 20)) = OS_os_log.init(subsystem:category:)(0x6C7070612E6D6F63, 0xEE00697275742E65, 0x72705F656C626174, 0xED00007265746E69);
  return Date.init()(0x6C7070612E6D6F63);
}

uint64_t closure #1 in ImageClassifierTrainingSessionDelegate.train(from:)(uint64_t a1, __m128 a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  EventCollector.add(_:)();
  v8 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_tablePrinter + a4;
  swift_beginAccess(v8, v11, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, v11, &demangling cache variable for type metadata for TrainingTablePrinter?);
  v9 = type metadata accessor for TrainingTablePrinter(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v9) == 1)
  {
    BUG();
  }

  TrainingTablePrinter.print(_:)(a1, a2);
  return outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for TrainingTablePrinter);
}

uint64_t ImageClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t *a1, unsigned __int8 *a2)
{
  v50 = v2;
  v46 = v3;
  v48 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Model?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v47 = &v40;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Classifier?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v49 = &v40;
  v10 = 0;
  v51 = type metadata accessor for URL(0);
  v11 = *(v51 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  v17 = alloca(v12);
  v18 = alloca(v12);
  v19 = alloca(v12);
  v20 = alloca(v12);
  v21 = *a2;
  if (v21 == 2)
  {
    URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
    v48 = &v40;
    URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
    v45 = *(v11 + 8);
    v45(&v40, v51);
    v24 = v46;
    v25 = v46 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v46 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_classifier, v43, 0, 0);
    v26 = v49;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, v49, &demangling cache variable for type metadata for MLImageClassifier.Classifier?);
    v27 = type metadata accessor for MLImageClassifier.Classifier(0);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
    {
      BUG();
    }

    v28 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + v24;
    swift_beginAccess(v28, v44, 0, 0);
    v29 = v28;
    v30 = v47;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v47, &demangling cache variable for type metadata for MLImageClassifier.Model?);
    v31 = type metadata accessor for MLImageClassifier.Model(0);
    if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
    {
      BUG();
    }

    v32 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier, type metadata accessor for MLImageClassifier.Classifier, &protocol conformance descriptor for MLImageClassifier.Classifier);
    v33 = v48;
    v34 = v27;
    v10 = v30;
    v35 = v49;
    v36 = v50;
    UpdatableSupervisedEstimator.writeWithOptimizer(_:to:overwrite:)(v30, v48, 1, v34, v32);
    if (v36)
    {
      v45(v33, v51);
      outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLImageClassifier.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLImageClassifier.Classifier);
      return v10;
    }

    v45(v33, v51);
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLImageClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLImageClassifier.Classifier);
LABEL_12:
    LOBYTE(v10) = 1;
    return v10;
  }

  if (v21 != 1)
  {
    return v10;
  }

  v49 = *(v51 - 8);
  v47 = &v40;
  v22 = (v46 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore);
  swift_beginAccess(v46 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore, v43, 0, 0);
  qmemcpy(v41, v22, sizeof(v41));
  outlined retain of AnnotatedFeatureStore(v41);
  v10 = v48;
  URL.appendingPathComponent(_:isDirectory:)(0x676E696E69617274, 0xE800000000000000, 1);
  v23 = v50;
  AnnotatedFeatureStore.write(to:)(&v40);
  if (!v23)
  {
    v50 = v49[1];
    v50(&v40, v51);
    outlined release of AnnotatedFeatureStore(v41);
    v37 = (OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore + v46);
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore + v46, v44, 0, 0);
    qmemcpy(v42, v37, sizeof(v42));
    outlined retain of AnnotatedFeatureStore(v42);
    v38 = v47;
    URL.appendingPathComponent(_:isDirectory:)(0x69746164696C6176, 0xEA00000000006E6FLL, 1);
    AnnotatedFeatureStore.write(to:)(v38);
    v50(v38, v51);
    outlined release of AnnotatedFeatureStore(v42);
    goto LABEL_12;
  }

  (v49[1])(&v40, v51);
  outlined release of AnnotatedFeatureStore(v41);
  return v10;
}

uint64_t ImageClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
    v11 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v11, 0, 0);
    *v12 = 0xD000000000000031;
    *(v12 + 8) = "Selected features" + 0x8000000000000000;
    *(v12 + 16) = 0;
    *(v12 + 32) = 0;
    *(v12 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v11);
  }

  else
  {
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLImageClassifier.PersistentParameters);
    MLImageClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.PersistentParameters);
  }
}

NSURL *ImageClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, _BYTE *a2)
{
  v38 = v2;
  v32 = v3;
  v36 = a2;
  v31 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = v29;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v37 = v29;
  v9 = type metadata accessor for URL(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v33 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v14 = *(*(v33 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v35 = v29;
  v17 = alloca(v14);
  v18 = alloca(v14);
  LOBYTE(v36) = *v36;
  (*(v10 + 16))(v29, v31, v9);
  v19 = v38;
  result = MLImageClassifier.PersistentParameters.init(sessionDirectory:)(v29);
  if (!v19)
  {
    v21 = v36;
    v38 = v29;
    v22 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + v32;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + v32, v29, 0, 0);
    v23 = v37;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v22, v37, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
    v24 = v23;
    v25 = v33;
    if (__swift_getEnumTagSinglePayload(v24, 1, v33) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
      v26 = v34;
      outlined init with take of MLClassifierMetrics(v38, v34, type metadata accessor for MLImageClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
      swift_beginAccess(v22, v30, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v26, v22, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
      return swift_endAccess(v30);
    }

    else
    {
      v27 = v35;
      outlined init with take of MLClassifierMetrics(v37, v35, type metadata accessor for MLImageClassifier.PersistentParameters);
      v30[0] = v21;
      v28 = v38;
      ImageClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(v38, v27, v30);
      outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLImageClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLImageClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t ImageClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v68 = v3;
  v74 = a2;
  v67 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v5 = *(*(v67 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v66 = v62;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v65 = v62;
  v64 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v10 = *(*(v64 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v72 = v62;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v69 = v62;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLImageClassifier.FeatureExtractorType, MLImageClassifier.FeatureExtractorType));
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v71 = *a3;
  v70 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v19 = v70[6];
  v73 = a1;
  v20 = a1 + v19;
  v21 = v74 + v19;
  v22 = *(v15 + 48);
  v23 = v64;
  v24 = &v62[v22];
  outlined init with copy of MLTrainingSessionParameters(v20, v62, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined init with copy of MLTrainingSessionParameters(v21, v24, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v75 = v62;
  if (swift_getEnumCaseMultiPayload(v62, v23) != 1)
  {
    v35 = v69;
    outlined init with copy of MLTrainingSessionParameters(v75, v69, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    v36 = *v35;
    if (swift_getEnumCaseMultiPayload(v24, v23) != 1)
    {
      v37 = v24[8];
      if (*(v69 + 8))
      {
        if (v37)
        {
          goto LABEL_17;
        }
      }

      else if (!((v36 != *v24) | v37 & 1))
      {
        goto LABEL_17;
      }

      v38 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v38, 0, 0);
      *v39 = 0xD000000000000032;
      *(v39 + 8) = "ers should be loaded by now." + 0x8000000000000000;
      *(v39 + 16) = 0;
      *(v39 + 32) = 0;
      *(v39 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v38);
      return outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    }

LABEL_15:
    v40 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v40, 0, 0);
    *v41 = 0xD000000000000032;
    *(v41 + 8) = "ers should be loaded by now." + 0x8000000000000000;
    *(v41 + 16) = 0;
    *(v41 + 32) = 0;
    *(v41 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v40);
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v75, &demangling cache variable for type metadata for (MLImageClassifier.FeatureExtractorType, MLImageClassifier.FeatureExtractorType));
  }

  outlined init with copy of MLTrainingSessionParameters(v75, v72, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(v24, v23) != 1)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v72, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    goto LABEL_15;
  }

  v25 = v65;
  outlined init with take of MLClassifierMetrics(v72, v65, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  v26 = v66;
  v27 = v25;
  outlined init with take of MLClassifierMetrics(v24, v66, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  v28 = type metadata accessor for URL(0);
  v29 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  if ((dispatch thunk of static Equatable.== infix(_:_:)(v27, v26, v28, v29) & 1) == 0)
  {
    goto LABEL_21;
  }

  v30 = *(v67 + 20);
  v31 = *(v27 + v30 + 8);
  v32 = *(v26 + v30 + 8);
  if (v31)
  {
    if (v32)
    {
      v33 = *(v27 + v30);
      v34 = *(v26 + v30);
      if (v33 == v34 && v31 == v32)
      {
        goto LABEL_9;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)(v33, v31, v34, v32, 0))
      {
        goto LABEL_9;
      }
    }

    goto LABEL_21;
  }

  if (v32)
  {
LABEL_21:
    v50 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v50, 0, 0);
    *v51 = 0xD000000000000032;
    *(v51 + 8) = "ers should be loaded by now." + 0x8000000000000000;
    *(v51 + 16) = 0;
    *(v51 + 32) = 0;
    *(v51 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v50);
    outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
    return outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  }

LABEL_9:
  outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
LABEL_17:
  outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v43 = v70[8];
  v44 = v73;
  v45 = *(v73 + v43);
  v46 = v74;
  v47 = *(v74 + v43);
  if (v45 == v47)
  {
    goto LABEL_29;
  }

  v48 = 0xEB0000000064657ALL;
  switch(v71)
  {
    case 0:
      v49 = 0x696C616974696E69;
      break;
    case 1:
      0xEA0000000000676ELL;
      v44 = v73;
      goto LABEL_29;
    case 2:
      v49 = 0x676E696E69617274;
      v48 = 0xE800000000000000;
      break;
    case 3:
      v49 = 0x697461756C617665;
      v48 = 0xEA0000000000676ELL;
      break;
    case 4:
      v48 = 0xEB00000000676E69;
      v49 = 0x636E657265666E69;
      break;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)(v49, v48, 0x6974636172747865, 0xEA0000000000676ELL, 0);
  v48;
  v53 = (v52 & 1) == 0;
  v46 = v74;
  v44 = v73;
  if (!v53)
  {
LABEL_29:
    if (*(v44 + v70[9]) == *(v46 + v70[9]))
    {
      result = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say10Foundation3URLVGTt1g5(*v44, *v46);
      if (result)
      {
        return result;
      }

      v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
      *v60 = 1;
      *(v60 + 8) = 0;
      *(v60 + 24) = 0;
      *(v60 + 40) = 0;
      *(v60 + 48) = 4;
    }

    else
    {
      v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
      *v61 = 0xD000000000000035;
      *(v61 + 8) = "extractor changed." + 0x8000000000000000;
      *(v61 + 16) = 0;
      *(v61 + 32) = 0;
      *(v61 + 48) = 0;
    }
  }

  else
  {
    v63 = v45;
    v75 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v74 = v54;
    v63 = v47;
    v55 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v57 = v56;
    v58 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v58, 0, 0);
    *v59 = 0x657449202E78614DLL;
    *(v59 + 8) = 0xEF736E6F69746172;
    *(v59 + 16) = v75;
    *(v59 + 24) = v74;
    *(v59 + 32) = v55;
    *(v59 + 40) = v57;
    *(v59 + 48) = 3;
  }

  return swift_willThrow(&type metadata for MLCreateError, v58);
}

uint64_t ImageClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[77] = v0;
  v2 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v1[78] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v1[79] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[80] = swift_task_alloc(v4);
  v1[81] = swift_task_alloc(v4);
  v5 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v1[82] = v5;
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1[83] = swift_task_alloc(v6);
  v1[84] = swift_task_alloc(v6);
  v7 = type metadata accessor for ImageReader(0);
  v1[85] = v7;
  v8 = *(v7 - 8);
  v1[86] = v8;
  v1[87] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?);
  v1[88] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  v1[89] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v1[90] = v11;
  v1[91] = swift_task_alloc((*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.Model?);
  v1[92] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLImageClassifier.Model(0);
  v1[93] = v13;
  v1[94] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(ImageClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model + *(v0 + 616);
  swift_beginAccess(v3, v0 + 392, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLImageClassifier.Model?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v4 = *(v0 + 736);
    v5 = &demangling cache variable for type metadata for MLImageClassifier.Model?;
LABEL_5:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v5);
    v11 = *(v0 + 736);
    v12 = *(v0 + 728);
    v13 = *(v0 + 712);
    v14 = *(v0 + 704);
    v26 = *(v0 + 696);
    v25 = *(v0 + 672);
    v24 = *(v0 + 664);
    v23 = *(v0 + 648);
    v21 = *(v0 + 624);
    v22 = *(v0 + 640);
    *(v0 + 752);
    v11;
    v12;
    v13;
    v14;
    v26;
    v25;
    v24;
    v23;
    v22;
    v21;
    return (*(v0 + 8))(0, 1);
  }

  v6 = *(v0 + 720);
  v7 = *(v0 + 616);
  v8 = *(v0 + 712);
  outlined init with take of MLClassifierMetrics(*(v0 + 736), *(v0 + 752), type metadata accessor for MLImageClassifier.Model);
  v9 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters + v7;
  swift_beginAccess(v9, v0 + 416, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v8, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v8, 1, v6) == 1)
  {
    v10 = *(v0 + 712);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 752), type metadata accessor for MLImageClassifier.Model);
    v5 = &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?;
    v4 = v10;
    goto LABEL_5;
  }

  v16 = *(v0 + 616);
  outlined init with take of MLClassifierMetrics(*(v0 + 712), *(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
  v17 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore;
  *(v0 + 760) = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore;
  swift_beginAccess(v16 + v17, v0 + 440, 0, 0);
  v18 = *(v16 + v17 + 88);
  *(v0 + 768) = v18;
  v18;
  v19 = swift_task_alloc(352);
  *(v0 + 776) = v19;
  *v19 = v0;
  v19[1] = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  v20 = *(v0 + 752);
  return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v18, 0, 0);
}

{
  v1 = v0[99];
  v2 = v0[98];
  v20 = v0[95];
  v19 = v0[88];
  v3 = v0[77];
  v18 = v0[87];
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v1, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_349AA8);
  v1;
  v0[73] = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
  v5 = *(v3 + v20 + 88);
  v5;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v5, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_349A70);
  v5;
  v0[74] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v0[100] = v7;
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v0[101] = v8;
  ClassificationMetrics.init<A, B>(_:_:)(v0 + 73, v0 + 74, &type metadata for String, v7, v7, &protocol witness table for String, v8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  v0[102] = v9;
  swift_storeEnumTagMultiPayload(v19, v9, 0);
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v0[103] = v10;
  swift_storeEnumTagMultiPayload(v19, v10, 0);
  v11 = type metadata accessor for MLClassifierMetrics(0);
  v0[104] = v11;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v11);
  v12 = v3 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics, v0 + 58, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v19, v12, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 58);
  ImageReader.init()();
  v13 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFiles;
  v0[105] = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFiles;
  v14 = *(v3 + v13);
  v0[106] = v14;
  v14;
  v15 = swift_task_alloc(272);
  v0[107] = v15;
  *v15 = v0;
  v15[1] = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  v16 = v0[87];
  return ((&async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:) + async function pointer to specialized Transformer.applied<A, B>(to:eventHandler:)))(v14, 0, 0);
}

{
  v1 = *(v0 + 616);
  if (*(*(v1 + *(v0 + 840)) + 16) && (v2 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore, *(v0 + 880) = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore, swift_beginAccess(v2 + v1, v0 + 488, 1, 0), !*(*(v1 + v2 + 88) + 16)))
  {
    v39 = (v0 + 360);
    v29 = (v0 + 328);
    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v43 = *(v0 + 672);
    v31 = *(v0 + 664);
    v30 = *(v0 + 656);
    v20 = *(v0 + 648);
    v27 = *(v0 + 640);
    v36 = *(v0 + 624);
    v28 = *(v0 + 632);
    outlined init with copy of MLTrainingSessionParameters(v18 + v19[5], v43, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    v32 = *(v18 + v19[8]);
    v33 = *(v18 + v19[9]);
    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
    v21 = *(v41 + 48);
    outlined init with copy of MLTrainingSessionParameters(v18 + v19[6], v20, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    v22 = *(v18 + v19[7]);
    v23 = 0;
    if (v22 != 2)
    {
      v23 = v22;
    }

    *(v20 + v21) = v23;
    *(v0 + 272) = 0;
    *(v0 + 256) = 0;
    *(v0 + 240) = 0;
    *(v0 + 224) = 0;
    *(v0 + 208) = v32;
    *(v0 + 216) = v33;
    outlined init with copy of MLTrainingSessionParameters(v43, v31, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    *(v0 + 352) = v30;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    outlined init with take of MLClassifierMetrics(v31, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v22);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v29, v0 + 224, &demangling cache variable for type metadata for Any?);
    outlined init with copy of MLTrainingSessionParameters(v20, v27, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    *(v0 + 384) = v28;
    v25 = __swift_allocate_boxed_opaque_existential_0(v39);
    outlined init with take of MLClassifierMetrics(v27, v25, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v39, v0 + 256, &demangling cache variable for type metadata for Any?);
    outlined destroy of MLActivityClassifier.ModelParameters(v20, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    MLImageClassifier.ModelParameters.algorithm.getter(v43);
    *(v27 + *(v41 + 48));
    outlined init with take of MLClassifierMetrics(v27, v36, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    outlined destroy of MLImageClassifier.ModelParameters(v0 + 208);
    v26 = swift_task_alloc(144);
    *(v0 + 888) = v26;
    *v26 = v0;
    v26[1] = ImageClassifierTrainingSessionDelegate.evaluate(from:);
    return MLImageClassifier.FeatureExtractor.init(type:)(v0 + 288, *(v0 + 624));
  }

  else
  {
    *(v0 + 864);
    v3 = *(v0 + 616);
    v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore;
    *(v0 + 928) = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore;
    swift_beginAccess(v3 + v4, v0 + 512, 0, 0);
    v5 = *(v3 + v4 + 88);
    *(v0 + 936) = v5;
    if (*(v5 + 16))
    {
      v5;
      v6 = swift_task_alloc(352);
      *(v0 + 944) = v6;
      *v6 = v0;
      v6[1] = ImageClassifierTrainingSessionDelegate.evaluate(from:);
      v7 = *(v0 + 752);
      return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v5, 0, 0);
    }

    else
    {
      v9 = *(v0 + 832);
      v10 = *(v0 + 752);
      v11 = *(v0 + 616);
      v12 = *(v0 + 704);
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLImageClassifier.Model);
      __swift_storeEnumTagSinglePayload(v12, 1, 1, v9);
      v13 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics + v11;
      swift_beginAccess(v13, v0 + 560, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v12, v13, &demangling cache variable for type metadata for MLClassifierMetrics?);
      swift_endAccess(v0 + 560);
      v14 = *(v0 + 736);
      v15 = *(v0 + 728);
      v16 = *(v0 + 712);
      v17 = *(v0 + 704);
      v40 = *(v0 + 696);
      v38 = *(v0 + 672);
      v37 = *(v0 + 664);
      v35 = *(v0 + 648);
      v42 = *(v0 + 624);
      v34 = *(v0 + 640);
      *(v0 + 752);
      v14;
      v15;
      v16;
      v17;
      v40;
      v38;
      v37;
      v35;
      v34;
      v42;
      return (*(v0 + 8))(1, 1);
    }
  }
}

{
  v2 = *(*v1 + 888);
  v3 = *v1;
  v3[112] = v0;
  v2;
  if (v0)
  {
    v3[108];
    return swift_task_switch(ImageClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
  }

  else
  {
    v5 = swift_task_alloc(64);
    v3[113] = v5;
    *v5 = v3;
    v5[1] = ImageClassifierTrainingSessionDelegate.evaluate(from:);
    return ((&async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:) + async function pointer to specialized MLImageClassifier.FeatureExtractor.extractFeatures<A>(from:)))(v3[108]);
  }
}

{
  v1 = (*(v0 + 880) + *(v0 + 616));
  _s8CreateML21AnnotatedFeatureStoreVyACxcSTRz0A12MLComponents0cD0Vy04CoreB013MLShapedArrayVySfGSSG7ElementRtzlufCSayAKG_Tt0g5(*(v0 + 920));
  qmemcpy((v0 + 112), v1, 0x60uLL);
  qmemcpy(v1, (v0 + 16), 0x60uLL);
  outlined release of AnnotatedFeatureStore((v0 + 112));
  v2 = *(v0 + 616);
  v3 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore;
  *(v0 + 928) = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore;
  swift_beginAccess(v2 + v3, v0 + 512, 0, 0);
  v4 = *(v2 + v3 + 88);
  *(v0 + 936) = v4;
  if (*(v4 + 16))
  {
    v4;
    v5 = swift_task_alloc(352);
    *(v0 + 944) = v5;
    *v5 = v0;
    v5[1] = ImageClassifierTrainingSessionDelegate.evaluate(from:);
    v6 = *(v0 + 752);
    return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v4, 0, 0);
  }

  else
  {
    v8 = *(v0 + 832);
    v9 = *(v0 + 752);
    v10 = *(v0 + 616);
    v11 = *(v0 + 704);
    outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLImageClassifier.Model);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v8);
    v12 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics + v10;
    swift_beginAccess(v12, v0 + 560, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v11, v12, &demangling cache variable for type metadata for MLClassifierMetrics?);
    swift_endAccess(v0 + 560);
    v13 = *(v0 + 736);
    v14 = *(v0 + 728);
    v15 = *(v0 + 712);
    v16 = *(v0 + 704);
    v21 = *(v0 + 696);
    v20 = *(v0 + 672);
    v19 = *(v0 + 664);
    v18 = *(v0 + 648);
    v22 = *(v0 + 624);
    v17 = *(v0 + 640);
    *(v0 + 752);
    v13;
    v14;
    v15;
    v16;
    v21;
    v20;
    v19;
    v18;
    v17;
    v22;
    return (*(v0 + 8))(1, 1);
  }
}

{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v17 = *(v0 + 928);
  v19 = *(v0 + 832);
  v21 = *(v0 + 824);
  v23 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v26 = *(v0 + 752);
  v13 = *(v0 + 728);
  v3 = *(v0 + 616);
  v16 = *(v0 + 704);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v1, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_349AA8);
  v1;
  *(v0 + 600) = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
  v5 = *(v3 + v17 + 88);
  v5;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v5, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_349A70);
  v5;
  *(v0 + 608) = v6;
  ClassificationMetrics.init<A, B>(_:_:)(v0 + 600, v0 + 608, &type metadata for String, v15, v15, &protocol witness table for String, v14, v14);
  outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLImageClassifier.Model);
  swift_storeEnumTagMultiPayload(v16, v23, 0);
  swift_storeEnumTagMultiPayload(v16, v21, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v19);
  v7 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics + v3;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics + v3, v0 + 536, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v16, v7, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 536);
  v8 = *(v0 + 736);
  v9 = *(v0 + 728);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v27 = *(v0 + 696);
  v25 = *(v0 + 672);
  v24 = *(v0 + 664);
  v22 = *(v0 + 648);
  v18 = *(v0 + 624);
  v20 = *(v0 + 640);
  *(v0 + 752);
  v8;
  v9;
  v10;
  v11;
  v27;
  v25;
  v24;
  v22;
  v20;
  v18;
  return (*(v0 + 8))(1, 1);
}

{
  v1 = *(v0 + 752);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Model);
  v7 = *(v0 + 784);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v13 = *(v0 + 696);
  v12 = *(v0 + 672);
  v11 = *(v0 + 664);
  v10 = *(v0 + 648);
  v8 = *(v0 + 624);
  v9 = *(v0 + 640);
  *(v0 + 752);
  v2;
  v3;
  v4;
  v5;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 752);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Model);
  v7 = *(v0 + 872);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v13 = *(v0 + 696);
  v12 = *(v0 + 672);
  v11 = *(v0 + 664);
  v10 = *(v0 + 648);
  v8 = *(v0 + 624);
  v9 = *(v0 + 640);
  *(v0 + 752);
  v2;
  v3;
  v4;
  v5;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 752);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Model);
  v7 = *(v0 + 896);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v13 = *(v0 + 696);
  v12 = *(v0 + 672);
  v11 = *(v0 + 664);
  v10 = *(v0 + 648);
  v8 = *(v0 + 624);
  v9 = *(v0 + 640);
  *(v0 + 752);
  v2;
  v3;
  v4;
  v5;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 864);
  v2 = *(v0 + 752);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.Model);
  v1;
  v8 = *(v0 + 912);
  v3 = *(v0 + 736);
  v4 = *(v0 + 728);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v14 = *(v0 + 696);
  v13 = *(v0 + 672);
  v12 = *(v0 + 664);
  v11 = *(v0 + 648);
  v9 = *(v0 + 624);
  v10 = *(v0 + 640);
  *(v0 + 752);
  v3;
  v4;
  v5;
  v6;
  v14;
  v13;
  v12;
  v11;
  v10;
  v9;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 752);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 728), type metadata accessor for MLImageClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.Model);
  v7 = *(v0 + 952);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 712);
  v5 = *(v0 + 704);
  v13 = *(v0 + 696);
  v12 = *(v0 + 672);
  v11 = *(v0 + 664);
  v10 = *(v0 + 648);
  v8 = *(v0 + 624);
  v9 = *(v0 + 640);
  *(v0 + 752);
  v2;
  v3;
  v4;
  v5;
  v13;
  v12;
  v11;
  v10;
  v9;
  v8;
  return (*(v0 + 8))();
}

uint64_t ImageClassifierTrainingSessionDelegate.evaluate(from:)(uint64_t a1)
{
  v5 = *(*v2 + 776);
  v4 = *v2;
  v4[98] = v1;
  v5;
  v4[96];
  if (v1)
  {
    v6 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v4[99] = a1;
    v6 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v3 = *(*v2 + 856);
  v9 = *v2;
  v9[108] = a1;
  v9[109] = v1;
  v3;
  v4 = v9[87];
  v5 = v9[85];
  v6 = v9[86];
  v9[106];
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    v7 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v7 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v7, 0, 0);
}

{
  v5 = *v2 + 288;
  v6 = *(*v2 + 904);
  v4 = *v2;
  *(*v2 + 912) = v1;
  v6;
  if (v1)
  {
    outlined destroy of MLImageClassifier.FeatureExtractor(v5);
    v7 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v8 = *(v4 + 864);
    *(v4 + 920) = a1;
    outlined destroy of MLImageClassifier.FeatureExtractor(v5);
    v8;
    v7 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v7, 0, 0);
}

{
  v5 = *(*v2 + 944);
  v4 = *v2;
  v4[119] = v1;
  v5;
  v4[117];
  if (v1)
  {
    v6 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v4[120] = a1;
    v6 = ImageClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t ImageClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLImageClassifier.PersistentParameters?);
  *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFiles);
  *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFiles);
  v1 = *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore + 80);
  v2 = *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore + 88);
  outlined consume of Data._Representation(*(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore), *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingFeatureStore + 8));
  v2;
  v1;
  v3 = *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore + 80);
  v4 = *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore + 88);
  outlined consume of Data._Representation(*(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore), *(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationFeatureStore + 8));
  v4;
  v3;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLImageClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLImageClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
  return v0;
}

uint64_t type metadata accessor for ImageClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ImageClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ImageClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ImageClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ImageClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLImageClassifier.PersistentParameters?, type metadata accessor for MLImageClassifier.PersistentParameters);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      v8[2] = &value witness table for Builtin.BridgeObject + 64;
      v8[3] = &value witness table for Builtin.BridgeObject + 64;
      result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLImageClassifier.Classifier?, type metadata accessor for MLImageClassifier.Classifier);
      if (v4 <= 0x3F)
      {
        v8[6] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLImageClassifier.Model?, type metadata accessor for MLImageClassifier.Model);
        if (v5 <= 0x3F)
        {
          v8[7] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLClassifierMetrics?, type metadata accessor for MLClassifierMetrics);
          if (v6 <= 0x3F)
          {
            v9 = *(result - 8) + 64;
            v10 = v9;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TrainingTablePrinter?, type metadata accessor for TrainingTablePrinter);
            if (v7 <= 0x3F)
            {
              v11 = *(result - 8) + 64;
              result = swift_updateClassMetadata2(a1, 256, 11, v8, a1 + 80);
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

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance ImageClassifierTrainingSessionDelegate(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_task_alloc(1040);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return ImageClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance ImageClassifierTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(816);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return ImageClassifierTrainingSessionDelegate.train(from:)();
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ImageClassifierTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(976);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance TreeClassifierTrainingSessionDelegate;
  return ImageClassifierTrainingSessionDelegate.evaluate(from:)();
}

NSURL *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  switch(v4 >> 62)
  {
    case 0uLL:
      v29 = *a2;
      v5 = *(a2 + 2) | (*(a2 + 12) << 32) | (*(a2 + 13) << 40) | (*(a2 + 14) << 48);
      outlined consume of Data._Representation(v3, v4);
      *a1 = v29;
      *(a1 + 8) = v5;
      break;
    case 1uLL:
      v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      v7 = v4;
      outlined consume of Data._Representation(v3, v4);
      *a1 = 0;
      *(a1 + 8) = 0xC000000000000000;
      v8 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4 & 0x3FFFFFFFFFFFFFFFLL);
      v11 = v3;
      v12 = v3 >> 32;
      v24 = v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v25 = v3 >> 32;
        v27 = v3;
        v13 = v12 < v3;
        v14 = v12 - v3;
        v26 = v14;
        if (v13)
        {
          BUG();
        }

        v15 = __DataStorage._bytes.getter(v8, v7, v10, v14);
        if (v15)
        {
          v16 = v15;
          v17 = __DataStorage._offset.getter();
          if (__OFSUB__(v27, v17))
          {
            BUG();
          }

          v18 = v16 + v27 - v17;
        }

        else
        {
          v18 = 0;
        }

        v20 = type metadata accessor for __DataStorage(0);
        swift_allocObject(v20, *(v20 + 48), *(v20 + 52));
        v21 = __DataStorage.init(bytes:length:copy:deallocator:offset:)(v18, v26, 1, 0, 0, v27);

        v6 = v21;
        v11 = v27;
        v12 = v25;
      }

      if (v12 < v11)
      {
        BUG();
      }

      v22 = v12;

      specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v11, v22, v6, a2);

      outlined consume of Data._Representation(*a1, *(a1 + 8));
      *a1 = v24;
      *(a1 + 8) = v6 | 0x4000000000000000;
      break;
    case 2uLL:
      v19 = *a1;

      outlined consume of Data._Representation(v3, v4);
      *a1 = 0;
      *(a1 + 8) = 0xC000000000000000;
      Data.LargeSlice.ensureUniqueReference()();
      specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v3 + 16), *(v3 + 24), v4 & 0x3FFFFFFFFFFFFFFFLL, a2);
      outlined consume of Data._Representation(*a1, *(a1 + 8));
      *a1 = v3;
      *(a1 + 8) = v4 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      break;
    case 3uLL:
      return __stack_chk_guard;
  }

  return __stack_chk_guard;
}

uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v4 = v3;
  v5 = *v3;
  v6 = v4[1];
  switch(v6 >> 62)
  {
    case 0uLL:
      *&v37 = v5;
      WORD4(v37) = v6;
      BYTE10(v37) = BYTE2(v6);
      BYTE11(v37) = BYTE3(v6);
      BYTE12(v37) = BYTE4(v6);
      BYTE13(v37) = BYTE5(v6);
      BYTE14(v37) = BYTE6(v6);
      v34 = _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_A13Et_sAC_ps16IndexingIteratorVys8RepeatedVyAEGG_SitTg5037_s10Foundation4DataV06InlineB0V22withbc17BytesyxxSwKXEKlFxs9KXEfU_s16hi4Vys8j4Vys5G11VGG_Sit_TG5SwxsAC_pRi_zRi0_zlyAK_SitIsgyrzo_SiTf1nc_n(&v37, a1, a2, BYTE6(v6));
      v7 = v37;
      v8 = (((BYTE14(v37) << 16) | WORD6(v37)) << 32) | DWORD2(v37);
      result = outlined consume of Data._Representation(*v4, v4[1]);
      *v4 = v7;
      v4[1] = v8;
      if (!v2)
      {
        goto LABEL_5;
      }

      break;
    case 1uLL:

      v11 = v4;
      v12 = v5;
      v13 = v6;
      v14 = v11;
      outlined consume of Data._Representation(v5, v6);
      *v14 = 0;
      v14[1] = 0xC000000000000000;
      v15 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v6 & 0x3FFFFFFFFFFFFFFFLL);
      v19 = v12;
      v20 = v12 >> 32;
      v30 = v12;
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v14;
        v22 = v15;
      }

      else
      {
        v31 = v14;
        v33 = v12;
        v32 = v20 - v12;
        if (v20 < v12)
        {
          BUG();
        }

        v23 = __DataStorage._bytes.getter(v16, v13, v18, v12);
        if (v23)
        {
          v24 = v23;
          v25 = __DataStorage._offset.getter();
          if (__OFSUB__(v33, v25))
          {
            BUG();
          }

          v26 = v24 + v33 - v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = type metadata accessor for __DataStorage(0);
        swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
        v28 = __DataStorage.init(bytes:length:copy:deallocator:offset:)(v26, v32, 1, 0, 0, v33);

        v19 = v33;
        v22 = v28;
        v21 = v31;
      }

      if (v20 < v19)
      {
        BUG();
      }

      v29 = v19;

      v35 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v29, v20, a1);

      outlined consume of Data._Representation(*v21, v21[1]);
      result = v30;
      *v21 = v30;
      v21[1] = v22 | 0x4000000000000000;
      if (!v2)
      {
        result = v35;
      }

      break;
    case 2uLL:

      outlined consume of Data._Representation(v5, v6);
      *&v37 = v5;
      *(&v37 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v4 = 0;
      v4[1] = 0xC000000000000000;
      Data.LargeSlice.ensureUniqueReference()();
      v34 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v37 + 16), *(v37 + 24), a1);
      v10 = *(&v37 + 1) | 0x8000000000000000;
      result = outlined consume of Data._Representation(*v4, v4[1]);
      *v4 = v37;
      v4[1] = v10;
      if (!v2)
      {
LABEL_5:
        result = v34;
      }

      break;
    case 3uLL:
      *(&v37 + 7) = 0;
      *&v37 = 0;
      result = _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_A13Et_sAC_ps16IndexingIteratorVys8RepeatedVyAEGG_SitTg5037_s10Foundation4DataV06InlineB0V22withbc17BytesyxxSwKXEKlFxs9KXEfU_s16hi4Vys8j4Vys5G11VGG_Sit_TG5SwxsAC_pRi_zRi0_zlyAK_SitIsgyrzo_SiTf1nc_n(&v37, a1, a2, 0);
      break;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = __DataStorage._bytes.getter();
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v7 = __DataStorage._offset.getter();
  v8 = a1 - v7;
  if (__OFSUB__(a1, v7))
  {
    BUG();
  }

  result = __DataStorage._length.getter();
  v10 = a4[1];
  v11 = a4[2];
  v12 = a4[3];
  *(v6 + v8) = *a4;
  *(v6 + v8 + 16) = v10;
  *(v6 + v8 + 32) = v11;
  *(v6 + v8 + 48) = v12;
  return result;
}

uint64_t specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = __DataStorage._bytes.getter();
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v6 = __DataStorage._offset.getter();
  v7 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
    BUG();
  }

  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  v9 = __DataStorage._length.getter();
  if (v9 < v8)
  {
    v8 = v9;
  }

  result = a3(v7 + v5, v7 + v5 + v8);
  if (!v3)
  {
    return v11;
  }

  return result;
}

uint64_t _ss22withUnsafeMutableBytes2of_q0_xz_q0_Swq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_A13Et_sAC_ps16IndexingIteratorVys8RepeatedVyAEGG_SitTg5037_s10Foundation4DataV06InlineB0V22withbc17BytesyxxSwKXEKlFxs9KXEfU_s16hi4Vys8j4Vys5G11VGG_Sit_TG5SwxsAC_pRi_zRi0_zlyAK_SitIsgyrzo_SiTf1nc_n(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(a1, a4 + a1);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t specialized closure #3 in Data.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a1)
  {
    if (__OFSUB__(a2 - a1, a3))
    {
      BUG();
    }

    specialized Sequence._copySequenceContents(initializing:)(v7, (a1 + a3), a2 - a1 - a3, a5, a6);
    return v7[0];
  }

  return a5;
}

uint64_t specialized closure #3 in Data.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  result = specialized closure #3 in Data.append<A>(contentsOf:)(a1, a2, a3, a4, *a5, *(a5 + 8));
  if (!v6)
  {
    *v7 = result;
    *(v7 + 8) = v9;
    *(v7 + 16) = v10;
    *(v7 + 24) = v11;
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  *(v0 + 16);
  *(v0 + 24);
  return swift_deallocObject(v0, 32, 7);
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier.Model(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *__src;
    *v4 = *__src;
    v4 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *__src;
      *v4 = *__src;
      v14;
      swift_storeEnumTagMultiPayload(v4, v7, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v9))
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 16))(__dst, __src, v10);
          v11 = v9;
          v12 = 0;
          goto LABEL_15;
        case 1u:
          v28 = type metadata accessor for URL(0);
          (*(*(v28 - 8) + 16))(__dst, __src, v28);
          v47 = 1;
          goto LABEL_14;
        case 2u:
          v23 = *__src;
          *v4 = *__src;
          v23;
          v47 = 2;
LABEL_14:
          v12 = v47;
          __dst = v4;
          v11 = v9;
          goto LABEL_15;
        case 3u:
          v49 = v9;
          v24 = *__src;
          v48 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v48);
          *__dst = v24;
          __dst[8] = v48;
          *(__dst + 2) = *(__src + 2);
          v25 = *(__src + 3);
          *(v4 + 3) = v25;
          *(v4 + 4) = *(__src + 4);
          v26 = *(__src + 5);
          *(v4 + 5) = v26;
          v27 = *(__src + 4);
          *(v4 + 3) = *(__src + 3);
          *(v4 + 4) = v27;
          v4[80] = __src[80];
          v25;
          v26;
          v46 = 3;
          goto LABEL_12;
        case 4u:
          v15 = type metadata accessor for DataFrame(0);
          (*(*(v15 - 8) + 16))(__dst, __src, v15);
          v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v17 = v16[12];
          *&__dst[v17] = *&__src[v17];
          v18 = *&__src[v17 + 8];
          *&v4[v17 + 8] = v18;
          v19 = v16[16];
          *&v4[v19] = *&__src[v19];
          v49 = v9;
          v20 = *&__src[v19 + 8];
          *&v4[v19 + 8] = v20;
          v21 = v16[20];
          v4[v21 + 32] = __src[v21 + 32];
          v22 = *&__src[v21];
          *&v4[v21 + 16] = *&__src[v21 + 16];
          *&v4[v21] = v22;
          v18;
          v20;
          v46 = 4;
LABEL_12:
          v12 = v46;
          __dst = v4;
          v11 = v49;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v11, v12);
          swift_storeEnumTagMultiPayload(v4, v7, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    v29 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    *&v4[v29[5]] = *&__src[v29[5]];
    *&v4[v29[6]] = *&__src[v29[6]];
    v30 = v29[7];
    v31 = &v4[v30];
    v32 = &__src[v30];
    v33 = *&__src[v30 + 24];
    if (v33)
    {
      *(v31 + 3) = v33;
      (**(v33 - 8))(v31, v32);
    }

    else
    {
      v34 = *v32;
      *(v31 + 1) = *(v32 + 1);
      *v31 = v34;
    }

    v35 = v29[8];
    v4[v35 + 8] = __src[v35 + 8];
    *&v4[v35] = *&__src[v35];
    *&v4[v29[9]] = *&__src[v29[9]];
    v36 = *(a3 + 20);
    v37 = &v4[v36];
    v38 = &__src[v36];
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v38, v39) == 1)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
      (*(*(v40 - 8) + 16))(v37, v38, v40);
      v41 = 1;
      v42 = v37;
      v43 = v39;
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
      (*(*(v44 - 8) + 16))(v37, v38, v44);
      v42 = v37;
      v43 = v39;
      v41 = 0;
    }

    swift_storeEnumTagMultiPayload(v42, v43, v41);
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.Model(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v3);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v7 = *a1;
LABEL_6:
    v7;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v5 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(a1, v5))
    {
      case 0u:
      case 1u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 8))(a1, v6);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        v7 = *(a1 + 40);
        goto LABEL_6;
      case 4u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 8))(a1, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(a1 + *(v15 + 48) + 8);
        v7 = *(a1 + *(v15 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v8 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(a1 + v8 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8));
  }

  v9 = *(a2 + 20) + a1;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v11 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v11 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
  return (*(*(v12 - 8) + 8))(v9, v12);
}

char *initializeWithCopy for MLSoundClassifier.Model(char *__dst, char *__src, uint64_t a3)
{
  v5 = __dst;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
  if (EnumCaseMultiPayload == 2)
  {
    v12 = *__src;
    *v5 = *__src;
    v12;
    swift_storeEnumTagMultiPayload(v5, v6, 2);
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v8))
    {
      case 0u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(__dst, __src, v9);
        v10 = v8;
        v11 = 0;
        goto LABEL_13;
      case 1u:
        v26 = type metadata accessor for URL(0);
        (*(*(v26 - 8) + 16))(__dst, __src, v26);
        v44 = 1;
        goto LABEL_12;
      case 2u:
        v21 = *__src;
        *v5 = *__src;
        v21;
        v44 = 2;
LABEL_12:
        v11 = v44;
        __dst = v5;
        v10 = v8;
        goto LABEL_13;
      case 3u:
        v46 = v8;
        v22 = *__src;
        v45 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v45);
        *__dst = v22;
        __dst[8] = v45;
        *(__dst + 2) = *(__src + 2);
        v23 = *(__src + 3);
        *(v5 + 3) = v23;
        *(v5 + 4) = *(__src + 4);
        v24 = *(__src + 5);
        *(v5 + 5) = v24;
        v25 = *(__src + 4);
        *(v5 + 3) = *(__src + 3);
        *(v5 + 4) = v25;
        v5[80] = __src[80];
        v23;
        v24;
        v43 = 3;
        goto LABEL_10;
      case 4u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 16))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        v15 = v14[12];
        *&__dst[v15] = *&__src[v15];
        v16 = *&__src[v15 + 8];
        *&v5[v15 + 8] = v16;
        v17 = v14[16];
        *&v5[v17] = *&__src[v17];
        v46 = v8;
        v18 = *&__src[v17 + 8];
        *&v5[v17 + 8] = v18;
        v19 = v14[20];
        v5[v19 + 32] = __src[v19 + 32];
        v20 = *&__src[v19];
        *&v5[v19 + 16] = *&__src[v19 + 16];
        *&v5[v19] = v20;
        v16;
        v18;
        v43 = 4;
LABEL_10:
        v11 = v43;
        __dst = v5;
        v10 = v46;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v10, v11);
        swift_storeEnumTagMultiPayload(v5, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  v27 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v5[v27[5]] = *&__src[v27[5]];
  *&v5[v27[6]] = *&__src[v27[6]];
  v28 = v27[7];
  v29 = &v5[v28];
  v30 = &__src[v28];
  v31 = *&__src[v28 + 24];
  if (v31)
  {
    *(v29 + 3) = v31;
    (**(v31 - 8))(v29, v30);
  }

  else
  {
    v32 = *v30;
    *(v29 + 1) = *(v30 + 1);
    *v29 = v32;
  }

  v33 = v27[8];
  v5[v33 + 8] = __src[v33 + 8];
  *&v5[v33] = *&__src[v33];
  *&v5[v27[9]] = *&__src[v27[9]];
  v34 = *(a3 + 20);
  v35 = &v5[v34];
  v36 = &__src[v34];
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v38 = swift_getEnumCaseMultiPayload(v36, v37);
  v39 = v38 == 1;
  v40 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v38 == 1)
  {
    v40 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
  (*(*(v41 - 8) + 16))(v35, v36, v41);
  swift_storeEnumTagMultiPayload(v35, v37, v39);
  return v5;
}

char *assignWithCopy for MLSoundClassifier.Model(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(__dst);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v5);
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *__src;
      *v4 = *__src;
      v11;
      swift_storeEnumTagMultiPayload(v4, v5, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v7))
      {
        case 0u:
          v8 = type metadata accessor for URL(0);
          (*(*(v8 - 8) + 16))(__dst, __src, v8);
          v9 = v7;
          v10 = 0;
          goto LABEL_13;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v43 = 1;
          goto LABEL_12;
        case 2u:
          v20 = *__src;
          *v4 = *__src;
          v20;
          v43 = 2;
          goto LABEL_12;
        case 3u:
          v21 = *__src;
          v45 = v7;
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
          v25 = *(__src + 4);
          *(v4 + 3) = *(__src + 3);
          *(v4 + 4) = v25;
          v4[80] = __src[80];
          v23;
          v24;
          v10 = 3;
          __dst = v4;
          v9 = v45;
          goto LABEL_13;
        case 4u:
          v12 = type metadata accessor for DataFrame(0);
          (*(*(v12 - 8) + 16))(__dst, __src, v12);
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
          v14 = v13[12];
          *&__dst[v14] = *&__src[v14];
          v15 = *&__src[v14 + 8];
          *&v4[v14 + 8] = v15;
          v16 = v13[16];
          *&v4[v16] = *&__src[v16];
          v17 = *&__src[v16 + 8];
          *&v4[v16 + 8] = v17;
          v18 = v13[20];
          v4[v18 + 32] = __src[v18 + 32];
          v19 = *&__src[v18];
          *&v4[v18 + 16] = *&__src[v18 + 16];
          *&v4[v18] = v19;
          v15;
          v17;
          v43 = 4;
LABEL_12:
          v10 = v43;
          __dst = v4;
          v9 = v7;
LABEL_13:
          swift_storeEnumTagMultiPayload(__dst, v9, v10);
          swift_storeEnumTagMultiPayload(v4, v5, 1);
          break;
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
    }
  }

  v27 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&v4[v27[5]] = *&__src[v27[5]];
  *&v4[v27[6]] = *&__src[v27[6]];
  v28 = v27[7];
  v29 = &v4[v28];
  v30 = &__src[v28];
  v31 = *&__src[v28 + 24];
  if (*&v4[v28 + 24])
  {
    if (v31)
    {
      __swift_assign_boxed_opaque_existential_0(&v4[v28], &__src[v28]);
      goto LABEL_21;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v4[v28]);
  }

  else if (v31)
  {
    *(v29 + 3) = v31;
    (**(v31 - 8))(v29, v30);
    goto LABEL_21;
  }

  v32 = *v30;
  *(v29 + 1) = *(v30 + 1);
  *v29 = v32;
LABEL_21:
  v33 = v27[8];
  v4[v33 + 8] = __src[v33 + 8];
  *&v4[v33] = *&__src[v33];
  *&v4[v27[9]] = *&__src[v27[9]];
  if (v4 != __src)
  {
    v34 = *(a3 + 20);
    v35 = &__src[v34];
    v36 = &v4[v34];
    outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v36);
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v38 = swift_getEnumCaseMultiPayload(v35, v37);
    v39 = v38 == 1;
    v40 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v38 == 1)
    {
      v40 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
    (*(*(v41 - 8) + 16))(v36, v35, v41);
    swift_storeEnumTagMultiPayload(v36, v37, v39);
  }

  return v4;
}

uint64_t outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

char *initializeWithTake for MLSoundClassifier.Model(char *__dst, char *__src, uint64_t a3)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v6) != 1)
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  v7 = type metadata accessor for MLSoundClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v7);
  if (EnumCaseMultiPayload == 4)
  {
    v13 = type metadata accessor for DataFrame(0);
    (*(*(v13 - 8) + 32))(__dst, __src, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
    *&__dst[v14[12]] = *&__src[v14[12]];
    *&__dst[v14[16]] = *&__src[v14[16]];
    v15 = v14[20];
    v16 = *&__src[v15 + 16];
    *&__dst[v15] = *&__src[v15];
    *&__dst[v15 + 16] = v16;
    __dst[v15 + 32] = __src[v15 + 32];
    v30 = 4;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for URL(0);
    (*(*(v12 - 8) + 32))(__dst, __src, v12);
    v30 = 1;
LABEL_9:
    v11 = v30;
    v10 = v7;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
    goto LABEL_12;
  }

  v9 = type metadata accessor for URL(0);
  (*(*(v9 - 8) + 32))(__dst, __src, v9);
  v10 = v7;
  v11 = 0;
LABEL_10:
  swift_storeEnumTagMultiPayload(__dst, v10, v11);
LABEL_12:
  swift_storeEnumTagMultiPayload(__dst, v6, 1);
LABEL_13:
  v17 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&__dst[v17[5]] = *&__src[v17[5]];
  *&__dst[v17[6]] = *&__src[v17[6]];
  v18 = v17[7];
  v19 = *&__src[v18];
  *&__dst[v18 + 16] = *&__src[v18 + 16];
  *&__dst[v18] = v19;
  v20 = v17[8];
  *&__dst[v20] = *&__src[v20];
  __dst[v20 + 8] = __src[v20 + 8];
  *&__dst[v17[9]] = *&__src[v17[9]];
  v21 = *(a3 + 20);
  v22 = &__dst[v21];
  v23 = &__src[v21];
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v25 = swift_getEnumCaseMultiPayload(v23, v24);
  v26 = v25 == 1;
  v27 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (v25 == 1)
  {
    v27 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
  (*(*(v28 - 8) + 32))(v22, v23, v28);
  swift_storeEnumTagMultiPayload(v22, v24, v26);
  return __dst;
}

char *assignWithTake for MLSoundClassifier.Model(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLSoundClassifier.ModelParameters.ValidationData(__dst);
    v5 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v5) != 1)
    {
      memcpy(__dst, __src, *(*(v5 - 8) + 64));
      goto LABEL_14;
    }

    v6 = type metadata accessor for MLSoundClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, v6);
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
      v31 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(__dst, __src, *(*(v6 - 8) + 64));
          goto LABEL_13;
        }

        v8 = type metadata accessor for URL(0);
        (*(*(v8 - 8) + 32))(__dst, __src, v8);
        v9 = v6;
        v10 = 0;
LABEL_11:
        swift_storeEnumTagMultiPayload(__dst, v9, v10);
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v5, 1);
        goto LABEL_14;
      }

      v11 = type metadata accessor for URL(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v31 = 1;
    }

    v10 = v31;
    v9 = v6;
    goto LABEL_11;
  }

LABEL_14:
  v16 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *&__dst[v16[5]] = *&__src[v16[5]];
  *&__dst[v16[6]] = *&__src[v16[6]];
  v17 = v16[7];
  v18 = &__dst[v17];
  v19 = &__src[v17];
  if (*&__dst[v17 + 24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&__dst[v17]);
  }

  v20 = *v19;
  *(v18 + 1) = *(v19 + 1);
  *v18 = v20;
  v21 = v16[8];
  *&__dst[v21] = *&__src[v21];
  __dst[v21 + 8] = __src[v21 + 8];
  *&__dst[v16[9]] = *&__src[v16[9]];
  if (__dst != __src)
  {
    v22 = *(a3 + 20);
    v23 = &__src[v22];
    v24 = &__dst[v22];
    outlined destroy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v24);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v26 = swift_getEnumCaseMultiPayload(v23, v25);
    v27 = v26 == 1;
    v28 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
    if (v26 == 1)
    {
      v28 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    (*(*(v29 - 8) + 32))(v24, v23, v29);
    swift_storeEnumTagMultiPayload(v24, v25, v27);
  }

  return __dst;
}

uint64_t sub_31439A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_3143FA(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLSoundClassifier.Model(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.Model;
  if (!type metadata singleton initialization cache for MLSoundClassifier.Model)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.Model);
  }

  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.Model(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 2, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLSoundClassifier.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a2;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v5[13] = v10;
  v5[14] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLSoundClassifier.Model.applied(to:eventHandler:), 0, 0);
}

uint64_t MLSoundClassifier.Model.applied(to:eventHandler:)()
{
  v1 = v0[14];
  v2 = v0[6];
  v3 = v0[13];
  v4 = type metadata accessor for MLSoundClassifier.Model(0);
  outlined init with copy of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v2 + *(v4 + 20), v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[8] + 32))(v0[9], v6, v0[7]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    v0[17] = v7;
    *v7 = v0;
    v7[1] = MLImageClassifier.Model.applied(to:eventHandler:);
    v8 = v0[9];
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(v0[2], v0[3], v0[4], v0[5], v0[7]);
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v6, v0[10]);
    v10 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    v0[15] = v10;
    *v10 = v0;
    v10[1] = MLImageClassifier.Model.applied(to:eventHandler:);
    v11 = v0[12];
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(v0[2], v0[3], v0[4], v0[5], v0[10]);
  }
}

uint64_t protocol witness for Transformer.applied(to:eventHandler:) in conformance MLSoundClassifier.Model(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc(160);
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return MLSoundClassifier.Model.applied(to:eventHandler:)(a1, a2, a3, a4);
}

uint64_t lazy protocol witness table accessor for type MLSoundClassifier.Model and conformance MLSoundClassifier.Model()
{
  result = lazy protocol witness table cache variable for type MLSoundClassifier.Model and conformance MLSoundClassifier.Model;
  if (!lazy protocol witness table cache variable for type MLSoundClassifier.Model and conformance MLSoundClassifier.Model)
  {
    v1 = type metadata accessor for MLSoundClassifier.Model(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLSoundClassifier.Model, v1);
    lazy protocol witness table cache variable for type MLSoundClassifier.Model and conformance MLSoundClassifier.Model = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF8CreateML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;

  v5 = CMLSequence.size.getter();
  v6 = specialized RandomAccessCollection<>.distance(from:to:)(0, v5);

  v7 = CMLSequence.size.getter();
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7);

  if (v8 < 0)
  {
    BUG();
  }

  v9 = CMLSequence.size.getter();
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(0, v9);

  if (v6 < 0 || v10 < v6)
  {
    BUG();
  }

  if (v6)
  {
    v11 = 0;
    v27 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v31 = _swiftEmptyArrayStorage;
    v32 = a3;
    v34 = a3 & 1;
    do
    {
      CMLSequence.value(at:)(v11);
      if (v4)
      {
        swift_unexpectedError(v4, "CreateML/SequenceType.swift", 27, 1, 76);
        BUG();
      }

      v12 = CMLFeatureValue.stringValue()();
      if (v13)
      {
        v13;

        _StringGuts.grow(_:)(37);
        0xE000000000000000;
        v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        object = v24._object;
        String.append(_:)(v24);
        object;
        v26._countAndFlagsBits = 46;
        v26._object = 0xE100000000000000;
        String.append(_:)(v26);
        outlined consume of Result<_DataTable, Error>(a2, v32);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000022, "able.ColumnNames.swift" + 0x8000000000000000, "CreateML/MLDataTable.ColumnNames.swift", 38, 2, 17, 0);
        BUG();
      }

      countAndFlagsBits = v12._countAndFlagsBits;
      v15 = v12._object;

      outlined copy of Result<_DataTable, Error>(a2, v32);
      MLDataTable.subscript.getter(__PAIR128__(v15, countAndFlagsBits));
      outlined consume of Result<_DataTable, Error>(a2, v34);
      v15;
      v16 = v28;
      v17 = v31;
      v18 = v31[2];
      v19 = v18 + 1;
      if (v31[3] >> 1 <= v18)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v31[3] >= 2uLL, v19, 1);
        v19 = v18 + 1;
        v16 = v28;
        v17 = v31;
      }

      v17[2] = v19;
      v20 = 2 * v18;
      v17[v20 + 4] = v16;
      v31 = v17;
      LOBYTE(v17[v20 + 5]) = v29 & 1;

      v21 = CMLSequence.size.getter();
      v22 = specialized RandomAccessCollection<>.distance(from:to:)(0, v21);

      if (v11 >= v22)
      {
        BUG();
      }

      ++v11;
      v4 = 0;
    }

    while (v27 != v11);
    outlined consume of Result<_DataTable, Error>(a2, v32);
    return v31;
  }

  else
  {
    outlined consume of Result<_DataTable, Error>(a2, a3);
    return _swiftEmptyArrayStorage;
  }
}

void *MLDataTableVisualization.init(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    outlined copy of Result<_DataTable, Error>(*a1, 1);
    v3 = tc_v1_flex_list_create(0);
    if (!v3)
    {
      BUG();
    }

    v4 = v3;
    v5 = type metadata accessor for CMLSequence();
    v6 = swift_allocObject(v5, 25, 7);
    *(v6 + 16) = v4;
    *(v6 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v1, 1);
  }

  else
  {
    v7 = *a1;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _DataTable.columnNames.getter(v7);
    outlined consume of Result<_DataTable, Error>(v1, 0);
    v6 = v20;
  }

  v8 = v2;
  outlined copy of Result<_DataTable, Error>(v1, v2);
  ML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF8CreateML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n(v6, v1, v2);
  outlined consume of Result<_DataTable, Error>(v1, v8);

  v10 = ML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n[2];
  if (v10)
  {
    v11 = ML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n[2];
    specialized ContiguousArray.reserveCapacity(_:)(v10);
    v19 = ML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n;
    v12 = ML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n + 5;
    do
    {
      if (!*v12)
      {
        v13 = *(v12 - 1);
        v14 = *(*(v13 + 16) + 16);
        outlined copy of Result<_DataTable, Error>(v13, 0);

        v18 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v14, "", "", "", 0);
        if (!v18)
        {
          BUG();
        }

        v15 = type metadata accessor for CMLPlot();
        *(swift_allocObject(v15, 24, 7) + 16) = v18;

        v11 = v13;
        outlined consume of Result<_DataTable, Error>(v13, 0);
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v11);
      v16 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v16);
      v11 = v16;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v16);
      specialized ContiguousArray._endMutation()(v16);
      v12 += 16;
      --v10;
    }

    while (v10);
    v19;
    return _swiftEmptyArrayStorage;
  }

  else
  {
    ML11MLDataTableV11ColumnNamesV_AF09MLUntypedH0Vs5NeverOTB503_s8d4ML24fg30VisualizationVyAcA0cD0VcfcAA15jH8VSSXEfU_AHTf1cn_n;
    return _swiftEmptyArrayStorage;
  }
}

CGImageRef_optional ML1DVisualization.cgImage.getter(uint64_t a1)
{
  if (a1)
  {
    return CMLPlot.toImage()();
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall ML1DVisualization.nextIteration()()
{
  if (*v0)
  {
    CMLPlot.nextIteration()();
  }
}

uint64_t ML2DVisualization.init(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    outlined consume of Result<_DataTable, Error>(v3, v4);
    outlined consume of Result<_DataTable, Error>(v2, 1);
    return 0;
  }

  else
  {
    if (v4)
    {
      outlined consume of Result<_DataTable, Error>(v3, 1);
      v5 = 0;
    }

    else
    {
      v6 = *(*(v2 + 16) + 16);
      v11 = *(*(v3 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(v2, 0);
      outlined copy of Result<_DataTable, Error>(v3, 0);

      v7 = specialized handling<A, B, C, D, E, F, G>(_:_:_:_:_:_:_:)(v6, v11, "", "", "", 0);
      if (!v7)
      {
        BUG();
      }

      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v3, 0);
      outlined consume of Result<_DataTable, Error>(v2, 0);

      v9 = type metadata accessor for CMLPlot();
      v5 = swift_allocObject(v9, 24, 7);
      *(v5 + 16) = v8;

      outlined consume of Result<_DataTable, Error>(v3, 0);
    }

    outlined consume of Result<_DataTable, Error>(v2, 0);
  }

  return v5;
}

uint64_t ML1DVisualization.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v3.value = CMLPlot.toImage()().value;
  }

  else
  {
    v3.value = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for CGImageRef?);
  v2[3].value = result;
  v2->value = v3.value;
  return result;
}

uint64_t MLDataTableVisualization.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v12 = v1;
    a1;
    v11 = v3;
    v5 = v3;
    specialized ContiguousArray.reserveCapacity(_:)(v3);
    v6 = 0;
    do
    {
      v7 = *(a1 + 8 * v6 + 32);
      if (v7)
      {
        v8 = *(a1 + 8 * v6 + 32);

        CMLPlot.toImage()();
        v5 = v7;
      }

      ++v6;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v5);
      v9 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v9);
      v5 = v9;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v9);
      specialized ContiguousArray._endMutation()(v9);
    }

    while (v11 != v6);
    a1;
    v2 = v12;
  }

  result = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [CGImageRef?]);
  v2[3] = result;
  *v2 = _swiftEmptyArrayStorage;
  return result;
}

CGImageRef MLDataTableVisualization.cgImage.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v55 = v1;
  if (v1)
  {
    v2 = a1;
    a1;
    v3 = v1;
    specialized ContiguousArray.reserveCapacity(_:)(v1);
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4 + 32);
      if (v5)
      {
        v6 = *(v2 + 8 * v4 + 32);

        CMLPlot.toImage()();
        v3 = v5;
      }

      ++v4;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v3);
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v7);
      v3 = v7;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7);
      specialized ContiguousArray._endMutation()(v7);
      v2 = a1;
    }

    while (v55 != v4);
    a1;
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    v9 = 0;
    context = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = context;
    do
    {
      v11 = _swiftEmptyArrayStorage[v9 + 4];
      if (v11)
      {
        Width = CGImageGetWidth(_swiftEmptyArrayStorage[v9 + 4]);
        v10 = context;
      }

      else
      {
        Width = 0;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v14 = v13 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v13)
      {
        v53 = Width;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v14, 1);
        Width = v53;
        v10 = context;
      }

      v9 = (v9 + 1);
      v15 = 2 * v13;
      _swiftEmptyArrayStorage[2] = v14;
      _swiftEmptyArrayStorage[v15 + 4] = Width;
      LOBYTE(_swiftEmptyArrayStorage[v15 + 5]) = v11 == 0;
    }

    while (v10 != v9);
  }

  _swiftEmptyArrayStorage;
  v16 = _swiftEmptyArrayStorage[2];
  if (!v16)
  {
    _swiftEmptyArrayStorage;
    return 0;
  }

  v17 = &_swiftEmptyArrayStorage[5];
  v18 = 0;
  do
  {
    if (*v17)
    {
      v19 = 0;
    }

    else
    {
      v19 = *(v17 - 1);
    }

    if (v19 > v18)
    {
      v18 = v19;
    }

    v17 += 16;
    --v16;
  }

  while (v16);
  _swiftEmptyArrayStorage;
  if (!v18)
  {
    return 0;
  }

  if (v55)
  {
    a1;
    v20 = v55;
    specialized ContiguousArray.reserveCapacity(_:)(v55);
    v21 = 0;
    do
    {
      v22 = *(a1 + 8 * v21 + 32);
      if (v22)
      {
        v23 = *(a1 + 8 * v21 + 32);

        CMLPlot.toImage()();
        v20 = v22;
      }

      ++v21;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v20);
      v24 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v24);
      v20 = v24;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24);
      specialized ContiguousArray._endMutation()(v24);
    }

    while (v55 != v21);
    a1;
  }

  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v26 = 0;
    contexta = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v27 = contexta;
    do
    {
      v28 = _swiftEmptyArrayStorage[v26 + 4];
      if (v28)
      {
        Height = CGImageGetHeight(_swiftEmptyArrayStorage[v26 + 4]);
        v27 = contexta;
      }

      else
      {
        Height = 0;
      }

      v30 = _swiftEmptyArrayStorage[2];
      v31 = v30 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v30)
      {
        v54 = Height;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v31, 1);
        v31 = v30 + 1;
        Height = v54;
        v27 = contexta;
      }

      v26 = (v26 + 1);
      v32 = 2 * v30;
      _swiftEmptyArrayStorage[2] = v31;
      _swiftEmptyArrayStorage[v32 + 4] = Height;
      LOBYTE(_swiftEmptyArrayStorage[v32 + 5]) = v28 == 0;
    }

    while (v27 != v26);
  }

  _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage[2];
  if (v33)
  {
    v34 = &_swiftEmptyArrayStorage[5];
    v35 = 0;
    do
    {
      if (*v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = *(v34 - 1);
      }

      v37 = __OFADD__(v36, v35);
      v35 += v36;
      if (v37)
      {
        BUG();
      }

      v34 += 16;
      --v33;
    }

    while (v33);
  }

  else
  {
    v35 = 0;
  }

  _swiftEmptyArrayStorage;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  contextb = CGBitmapContextCreate(0, v18, v35, 8uLL, 0, DeviceRGB, 1u);
  if (!contextb)
  {

    return 0;
  }

  v58 = DeviceRGB;
  if (v55)
  {
    a1;
    v39 = v55;
    specialized ContiguousArray.reserveCapacity(_:)(v55);
    v40 = 0;
    do
    {
      v41 = *(a1 + 8 * v40 + 32);
      if (v41)
      {
        v42 = *(a1 + 8 * v40 + 32);

        CMLPlot.toImage()();
        v39 = v41;
      }

      ++v40;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v39);
      v43 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v43);
      v39 = v43;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v43);
      specialized ContiguousArray._endMutation()(v43);
    }

    while (v55 != v40);
    a1;
  }

  v57 = _swiftEmptyArrayStorage[2];
  if (v57)
  {
    v44 = 0;
    for (i = 0; i != v57; ++i)
    {
      v46 = _swiftEmptyArrayStorage[i + 4];
      if (v46)
      {
        v47 = v46;
        v48 = CGImageGetWidth(v47);
        v49 = CGImageGetHeight(v47);
        CGContextRef.draw(_:in:byTiling:)(v47, 0, 0.0, v44, v48, v49);
        v50 = CGImageGetHeight(v47);

        v37 = __OFADD__(v50, v44);
        v44 += v50;
        if (v37)
        {
          BUG();
        }
      }
    }
  }

  _swiftEmptyArrayStorage;
  Image = CGBitmapContextCreateImage(contextb);

  return Image;
}

Swift::Void __swiftcall MLDataTableVisualization.nextIteration()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    *v0;
    for (i = 0; i != v2; ++i)
    {
      if (*(v1 + 8 * i + 32))
      {
        v4 = *(v1 + 8 * i + 32);

        CMLPlot.nextIteration()();
      }
    }

    v1;
  }
}

uint64_t MLDataTableVisualization.hasFinishedStreaming.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    a1;
    v4 = 0;
    while (1)
    {
      if (*(a1 + 8 * v4 + 32))
      {
        v5 = *(a1 + 8 * v4 + 32);

        LOBYTE(v6) = CMLPlot.finishedStreaming()();
        v1 = v6;

        if ((v1 & 1) == 0)
        {
          break;
        }
      }

      if (v2 == ++v4)
      {
        LOBYTE(v1) = 1;
        goto LABEL_9;
      }
    }

    v1 = 0;
LABEL_9:
    a1;
  }

  else
  {
    LOBYTE(v1) = 1;
  }

  return v1;
}

uint64_t show(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v9 = *a1;
  v10 = v5;
  v11 = v4;
  v12 = v6;
  outlined copy of Result<_DataTable, Error>(v9, v5);
  outlined copy of Result<_DataTable, Error>(v4, v6);
  v7 = ML2DVisualization.init(_:_:)(&v9, &v11);
  v3[3] = &type metadata for ML2DVisualization;
  result = lazy protocol witness table accessor for type ML2DVisualization and conformance ML2DVisualization();
  v3[4] = result;
  *v3 = v7;
  return result;
}

uint64_t lazy protocol witness table accessor for type ML2DVisualization and conformance ML2DVisualization()
{
  result = lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization;
  if (!lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML2DVisualization, &type metadata for ML2DVisualization);
    lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization;
  if (!lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML2DVisualization, &type metadata for ML2DVisualization);
    lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization;
  if (!lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ML2DVisualization, &type metadata for ML2DVisualization);
    lazy protocol witness table cache variable for type ML2DVisualization and conformance ML2DVisualization = result;
  }

  return result;
}

uint64_t show<A, B>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v9 = *a1;
  v4 = v9;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  outlined copy of Result<_DataTable, Error>(v9, v6);
  outlined copy of Result<_DataTable, Error>(v5, v7);
  outlined copy of Result<_DataTable, Error>(v9, v6);
  outlined copy of Result<_DataTable, Error>(v5, v7);
  v13 = ML2DVisualization.init(_:_:)(&v9, &v11);
  v3[3] = &type metadata for ML2DVisualization;
  v3[4] = lazy protocol witness table accessor for type ML2DVisualization and conformance ML2DVisualization();
  outlined consume of Result<_DataTable, Error>(v5, v7);
  outlined consume of Result<_DataTable, Error>(v4, v6);
  result = v13;
  *v3 = v13;
  return result;
}

uint64_t show(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = 0;
  if (!*(a1 + 8))
  {
    v4 = *a1;
    v5 = *(*(*a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*a1, 0);
    outlined copy of Result<_DataTable, Error>(v4, 0);

    v6 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v5, "", "", "", 0);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLPlot();
    v3 = swift_allocObject(v7, 24, 7);
    *(v3 + 16) = v6;
    outlined consume of Result<_DataTable, Error>(v4, 0);

    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  v2[3] = &type metadata for ML1DVisualization;
  result = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  v2[4] = result;
  *v2 = v3;
  return result;
}

{
  v2 = v1;
  v3 = *(a1 + 8);
  v6 = *a1;
  v7 = v3;
  outlined copy of Result<_DataTable, Error>(v6, v3);
  v4 = MLDataTableVisualization.init(_:)(&v6);
  v2[3] = &type metadata for MLDataTableVisualization;
  result = lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization();
  v2[4] = result;
  *v2 = v4;
  return result;
}

uint64_t show<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4)
  {
    outlined copy of Result<_DataTable, Error>(*a1, 1);
    v5 = 0;
  }

  else
  {
    v6 = *(v3 + 16);
    outlined copy of Result<_DataTable, Error>(*a1, 0);
    v7 = *(v6 + 16);
    outlined copy of Result<_DataTable, Error>(v3, 0);
    outlined copy of Result<_DataTable, Error>(v3, 0);

    v10 = specialized handling<A, B, C, D, E, F>(_:_:_:_:_:_:)(v7, "", "", "", 0);
    if (!v10)
    {
      BUG();
    }

    v8 = type metadata accessor for CMLPlot();
    v5 = swift_allocObject(v8, 24, 7);
    *(v5 + 16) = v10;
    outlined consume of Result<_DataTable, Error>(v3, 0);

    outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  v2[3] = &type metadata for ML1DVisualization;
  v2[4] = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  result = outlined consume of Result<_DataTable, Error>(v3, v4);
  *v2 = v5;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ML1DVisualization(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t *assignWithCopy for ML1DVisualization(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v4;
  v3;
  return a1;
}

uint64_t *assignWithTake for ML1DVisualization(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  v3;
  return a1;
}

uint64_t instantiation function for generic protocol witness table for ML1DVisualization(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ML1DVisualization and conformance ML1DVisualization();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MLDataTableVisualization(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type MLDataTableVisualization and conformance MLDataTableVisualization();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for ML2DVisualization(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ML2DVisualization and conformance ML2DVisualization();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ML2DVisualization and conformance ML2DVisualization();
  *(a1 + 8) = result;
  return result;
}

uint64_t InterspersedSequence.init(base:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  (*(*(a3 - 8) + 32))(v4, a1);
  v9 = v7 + *(type metadata accessor for InterspersedSequence(0, a3, a4, v8) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return (*(*(AssociatedTypeWitness - 8) + 32))(v9, a2, AssociatedTypeWitness);
}

uint64_t InterspersedSequence.Iterator.iterator.getter(uint64_t a1)
{
  v3 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  return (*(*(AssociatedTypeWitness - 8) + 16))(v3, v2, AssociatedTypeWitness);
}

uint64_t InterspersedSequence.separator.getter(uint64_t a1)
{
  v3 = v1;
  v4 = v2 + *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return (*(*(AssociatedTypeWitness - 8) + 16))(v3, v4, AssociatedTypeWitness);
}

{
  return InterspersedSequence.Iterator.separator.getter(a1);
}

uint64_t variable initialization expression of InterspersedSequence.Iterator.state(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return __swift_storeEnumTagSinglePayload(v3, 1, 2, AssociatedTypeWitness);
}

uint64_t InterspersedSequence.Iterator.state.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = v5 + *(a1 + 40);
  v8 = type metadata accessor for InterspersedSequence.Iterator.State(0, *(a1 + 16), *(a1 + 24), a4);
  return (*(*(v8 - 8) + 16))(v6, v7, v8);
}

uint64_t InterspersedSequence.Iterator.state.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + *(a2 + 40);
  v6 = type metadata accessor for InterspersedSequence.Iterator.State(0, *(a2 + 16), *(a2 + 24), a4);
  return (*(*(v6 - 8) + 40))(v5, a1, v6);
}

uint64_t InterspersedSequence.Iterator.init(iterator:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v12 = type metadata accessor for InterspersedSequence.Iterator(0, a3, a4, a4);
  v8 = v7 + *(v12 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  __swift_storeEnumTagSinglePayload(v8, 1, 2, AssociatedTypeWitness);
  v10 = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  (*(*(v10 - 8) + 32))(v7, a1, v10);
  return (*(*(AssociatedTypeWitness - 8) + 32))(v7 + *(v12 + 36), a2, AssociatedTypeWitness);
}

uint64_t InterspersedSequence.Iterator.next()(uint64_t a1)
{
  v3 = v2;
  v50 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v42 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v41 = *(v42 - 8);
  v7 = *(v41 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = &v38;
  v49 = *(AssociatedTypeWitness - 8);
  v10 = *(v49 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v48 = &v38;
  v46 = v4;
  v47 = v5;
  v14 = type metadata accessor for InterspersedSequence.Iterator.State(0, v4, v5, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v40 = a1;
  v19 = *(a1 + 40);
  v45 = v3;
  v20 = v3 + v19;
  v21 = v15;
  (*(v15 + 16))(&v38, v20, v14);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v38, 2, AssociatedTypeWitness);
  if (!EnumTagSinglePayload)
  {
    (*(v49 + 32))(v50, &v38, AssociatedTypeWitness);
    (*(v21 + 8))(v20, v14);
    __swift_storeEnumTagSinglePayload(v20, 2, 2, AssociatedTypeWitness);
    v28 = v50;
LABEL_8:
    v34 = 0;
    return __swift_storeEnumTagSinglePayload(v28, v34, 1, AssociatedTypeWitness);
  }

  if (EnumTagSinglePayload == 1)
  {
    (*(v21 + 8))(v20, v14);
    __swift_storeEnumTagSinglePayload(v20, 2, 2, AssociatedTypeWitness);
    v23 = v47;
    v24 = v46;
    v25 = swift_getAssociatedTypeWitness(0, v47, v46, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v23, v24, v25, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    return dispatch thunk of IteratorProtocol.next()(v25, AssociatedConformanceWitness);
  }

  v44 = v21;
  v29 = v47;
  v30 = v46;
  v43 = swift_getAssociatedTypeWitness(0, v47, v46, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v31 = swift_getAssociatedConformanceWitness(v29, v30, v43, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = v39;
  v33 = v45;
  dispatch thunk of IteratorProtocol.next()(v43, v31);
  if (__swift_getEnumTagSinglePayload(v32, 1, AssociatedTypeWitness) != 1)
  {
    v35 = v32;
    v36 = *(v49 + 32);
    v36(v48, v35, AssociatedTypeWitness);
    (*(v44 + 8))(v20, v14);
    v36(v20, v48, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v20, 0, 2, AssociatedTypeWitness);
    v37 = v50;
    (*(v49 + 16))(v50, *(v40 + 36) + v33, AssociatedTypeWitness);
    v28 = v37;
    goto LABEL_8;
  }

  (*(v41 + 8))(v32, v42);
  v28 = v50;
  v34 = 1;
  return __swift_storeEnumTagSinglePayload(v28, v34, 1, AssociatedTypeWitness);
}

uint64_t InterspersedSequence.makeIterator()(uint64_t a1)
{
  v21 = v2;
  v19 = v1;
  v20 = a1;
  v3 = *(a1 + 16);
  v25 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v25, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v23 = *(AssociatedTypeWitness - 8);
  v4 = *(v23 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v24 = &v19;
  v7 = *(v3 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(swift_getAssociatedTypeWitness(0, v25, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = v21;
  (*(v7 + 16))(&v19, v21, v3);
  v15 = v25;
  dispatch thunk of Sequence.makeIterator()(v3, v25);
  v16 = v14 + *(v20 + 36);
  v17 = v24;
  (*(v23 + 16))(v24, v16, AssociatedTypeWitness);
  return InterspersedSequence.Iterator.init(iterator:separator:)(&v19, v17, v3, v15);
}

uint64_t static InterspersedSequence<>.Index.Representation.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v47 = *(AssociatedTypeWitness - 8);
  v6 = *(v47 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v42 = v35;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v43 = v35;
  v40 = a3;
  v41 = a4;
  v11 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, a3, a4, v6);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v45 = v35;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v46 = v35;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, v11, v11, 0, 0);
  v38 = *(TupleTypeMetadata2 - 8);
  v19 = *(v38 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v22 = &v35[*(TupleTypeMetadata2 + 48)];
  v39 = v12;
  v23 = *(v12 + 16);
  v23(v35, v37, v11);
  v23(v22, v36, v11);
  if (swift_getEnumCaseMultiPayload(v35, v11) == 1)
  {
    v23(v45, v35, v11);
    if (swift_getEnumCaseMultiPayload(v22, v11) == 1)
    {
      v24 = v42;
      v25 = AssociatedTypeWitness;
      (*(v47 + 32))(v42, v22, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v41, v40, v25, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)(v45, v24, v25, *(AssociatedConformanceWitness + 8));
      v28 = *(v47 + 8);
      v28(v42, v25);
      v29 = v45;
LABEL_9:
      v28(v29, v25);
      v31 = v39;
      goto LABEL_10;
    }

    v30 = v45;
  }

  else
  {
    v23(v46, v35, v11);
    if (swift_getEnumCaseMultiPayload(v22, v11) != 1)
    {
      v32 = v43;
      v25 = AssociatedTypeWitness;
      (*(v47 + 32))(v43, v22, AssociatedTypeWitness);
      v33 = swift_getAssociatedConformanceWitness(v41, v40, v25, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)(v46, v32, v25, *(v33 + 8));
      v28 = *(v47 + 8);
      v28(v43, v25);
      v29 = v46;
      goto LABEL_9;
    }

    v30 = v46;
  }

  (*(v47 + 8))(v30, AssociatedTypeWitness);
  v27 = 0;
  v11 = TupleTypeMetadata2;
  v31 = v38;
LABEL_10:
  (*(v31 + 8))(v35, v11);
  return v27;
}

uint64_t InterspersedSequence<>.Index.representation.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v7 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, *(a1 + 16), *(a1 + 24), a4);
  return (*(*(v7 - 8) + 16))(v6, v5, v7);
}

uint64_t InterspersedSequence<>.Index.init(representation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, a2, a3, a4);
  return (*(*(v6 - 8) + 32))(v5, a1, v6);
}

uint64_t static InterspersedSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v36 = a1;
  v6 = type metadata accessor for InterspersedSequence<>.Index.Representation(255, a3, a4, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, v6, v6, 0, 0);
  v8 = *(*(TupleTypeMetadata2 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v42 = a4;
  v41 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v40 = *(AssociatedTypeWitness - 8);
  v12 = v40[8];
  v13 = alloca(v12);
  v14 = alloca(v12);
  v37 = &v36;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v43 = &v36;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v38 = &v36;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v39 = &v36;
  v21 = &v36 + *(TupleTypeMetadata2 + 48);
  v22 = *(*(v6 - 8) + 16);
  v22(&v36, v36, v6);
  v22(v21, v44, v6);
  v44 = &v36;
  LODWORD(v22) = swift_getEnumCaseMultiPayload(&v36, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v21, v6);
  v24 = v40[4];
  if (v22 != 1 || EnumCaseMultiPayload == 1)
  {
    v31 = v39;
    v24(v39, v44, AssociatedTypeWitness);
    v32 = v21;
    v29 = v38;
    v24(v38, v32, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v42, v41, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
    v30 = v31;
    v28 = dispatch thunk of static Comparable.< infix(_:_:)(v31, v29, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    v25 = v43;
    v24(v43, v44, AssociatedTypeWitness);
    v26 = v37;
    v24(v37, v21, AssociatedTypeWitness);
    v27 = swift_getAssociatedConformanceWitness(v42, v41, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
    v28 = dispatch thunk of static Comparable.<= infix(_:_:)(v25, v26, AssociatedTypeWitness, v27);
    v29 = v26;
    v30 = v43;
  }

  v34 = v40[1];
  v34(v29, AssociatedTypeWitness);
  v34(v30, AssociatedTypeWitness);
  return v28;
}

uint64_t static InterspersedSequence<>.Index.element(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v13[1] = v4;
  v6 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, a2, a3, a4);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload(v13, v6, v14);
  return InterspersedSequence<>.Index.init(representation:)(v13, a2, a3, v11);
}

uint64_t InterspersedSequence<>.startIndex.getter(uint64_t a1, uint64_t a2)
{
  v21 = v2;
  v19 = a1;
  v4 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, v4, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v17 = *(AssociatedTypeWitness - 8);
  v5 = *(v17 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = alloca(v5);
  v9 = alloca(v5);
  dispatch thunk of Collection.startIndex.getter(v4, a2);
  v22 = v3;
  dispatch thunk of Collection.endIndex.getter(v4, a2);
  v20 = a2;
  v23 = v4;
  v10 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a2, v4, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
  v12 = v10;
  v13 = dispatch thunk of static Equatable.== infix(_:_:)(&v17, &v17, v10, *(AssociatedConformanceWitness + 8));
  v14 = *(v17 + 8);
  v14(&v17, v12);
  v14(&v17, v12);
  if (v13)
  {
    return InterspersedSequence<>.endIndex.getter(v19, v20);
  }

  v16 = v20;
  dispatch thunk of Collection.startIndex.getter(v23, v20);
  static InterspersedSequence<>.Index.element(_:)(&v17, v23, v16);
  return (v14)(&v17, v12);
}

uint64_t InterspersedSequence<>.endIndex.getter(uint64_t a1, uint64_t a2)
{
  v9 = v2;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, v3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v10 = *(AssociatedTypeWitness - 8);
  v5 = *(v10 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  dispatch thunk of Collection.endIndex.getter(v3, a2);
  static InterspersedSequence<>.Index.separator(next:)(&v9, v3, a2);
  return (*(v10 + 8))(&v9, AssociatedTypeWitness);
}

uint64_t InterspersedSequence<>.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = v4;
  v37 = a1;
  v42 = v3;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v43 = *(AssociatedTypeWitness - 8);
  v7 = *(v43 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v31;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v39 = &v31;
  v33 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, v6, a3, v7);
  v35 = *(v33 - 8);
  v12 = *(v35 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v34 = &v31;
  v16 = type metadata accessor for InterspersedSequence<>.Index(0, v6, a3, v15);
  v31 = *(v16 - 8);
  v17 = *(v31 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  InterspersedSequence<>.endIndex.getter(a2, a3);
  v41 = v6;
  v40 = a3;
  v20 = static InterspersedSequence<>.Index.Representation.__derived_enum_equals(_:_:)(v37, &v31, v6, a3);
  (*(v31 + 8))(&v31, v16);
  if (v20)
  {
    BUG();
  }

  v21 = v34;
  v22 = v33;
  (*(v35 + 16))(v34, v37, v33);
  LODWORD(v22) = swift_getEnumCaseMultiPayload(v21, v22);
  v23 = v39;
  v24 = AssociatedTypeWitness;
  (*(v43 + 32))(v39, v21, AssociatedTypeWitness);
  if (v22 == 1)
  {
    static InterspersedSequence<>.Index.element(_:)(v23, v41, v40);
    return (*(v43 + 8))(v23, v24);
  }

  else
  {
    v26 = v36;
    v27 = v23;
    v28 = v41;
    v29 = v40;
    dispatch thunk of Collection.index(after:)(v27, v41, v40);
    v30 = *(v43 + 8);
    v30(v39, v24);
    static InterspersedSequence<>.Index.separator(next:)(v26, v28, v29);
    return (v30)(v26, v24);
  }
}

uint64_t InterspersedSequence<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = v4;
  v27 = a1;
  v31 = v3;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v30 = *(AssociatedTypeWitness - 8);
  v7 = *(v30 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v28 = &v25;
  v11 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, v6, a3, v10);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = &v25;
  (*(v12 + 16))(&v25, v27, v11);
  if (swift_getEnumCaseMultiPayload(&v25, v11) == 1)
  {
    v17 = *(a2 + 36) + v32;
    v18 = swift_getAssociatedTypeWitness(0, *(a3 + 8), v6, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
    (*(*(v18 - 8) + 16))(v31, v17, v18);
  }

  else
  {
    v19 = v28;
    (*(v30 + 32))(v28, &v25, AssociatedTypeWitness);
    v20 = dispatch thunk of Collection.subscript.read(v26, v19, v6, a3);
    v22 = v21;
    v23 = swift_getAssociatedTypeWitness(0, *(a3 + 8), v6, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
    (*(*(v23 - 8) + 16))(v31, v22, v23);
    v20(v26, 0);
    v16 = v19;
  }

  return (*(v30 + 8))(v16, AssociatedTypeWitness);
}

uint64_t InterspersedSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = v4;
  v55 = a2;
  v45 = a1;
  v49 = 0x4000000000000000;
  v6 = *(a3 + 16);
  v7 = type metadata accessor for InterspersedSequence<>.Index.Representation(255, v6, a4, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, v7, v7, 0, 0);
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v50 = a4;
  v52 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v48 = &v45;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v54 = &v45;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v46 = &v45;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v47 = &v45;
  v22 = &v45 + *(TupleTypeMetadata2 + 48);
  v23 = *(*(v7 - 8) + 16);
  v23(&v45, v45, v7);
  v23(v22, v55, v7);
  LODWORD(v23) = swift_getEnumCaseMultiPayload(&v45, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v22, v7);
  v55 = v12;
  v25 = *(v12 + 32);
  if (v23 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v26 = v54;
      v27 = AssociatedTypeWitness;
      v25(v54, &v45, AssociatedTypeWitness);
      v28 = v48;
      v25(v48, v22, v27);
      v29 = dispatch thunk of Collection.distance(from:to:)(v26, v28, v52, v50);
      v30 = *(v55 + 8);
      v30(v28, v27);
      v30(v54, v27);
      v49 += v29;
      if (v49 < 0)
      {
        BUG();
      }

      return 2 * v29 + 1;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
LABEL_9:
    v39 = v47;
    v40 = AssociatedTypeWitness;
    v25(v47, &v45, AssociatedTypeWitness);
    v41 = v46;
    v25(v46, v22, v40);
    v42 = dispatch thunk of Collection.distance(from:to:)(v39, v41, v52, v50);
    v43 = *(v55 + 8);
    v43(v41, v40);
    v43(v47, v40);
    v49 += v42;
    if (v49 < 0)
    {
      BUG();
    }

    return 2 * v42;
  }

  v32 = v54;
  v33 = AssociatedTypeWitness;
  v25(v54, &v45, AssociatedTypeWitness);
  v34 = v48;
  v25(v48, v22, v33);
  v35 = dispatch thunk of Collection.distance(from:to:)(v32, v34, v52, v50);
  v36 = *(v55 + 8);
  v36(v34, v33);
  v36(v54, v33);
  v49 += v35;
  if (v49 < 0)
  {
    BUG();
  }

  v37 = 2 * v35;
  v38 = __OFSUB__(v37, 1);
  v31 = v37 - 1;
  if (v38)
  {
    BUG();
  }

  return v31;
}

uint64_t InterspersedSequence<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 0)
  {
    return InterspersedSequence<>.offsetForward(_:by:)(a1, a2, a3, a4);
  }

  v5 = -a2;
  if (__OFSUB__(v5, 1))
  {
    BUG();
  }

  return InterspersedSequence<>.offsetBackward(_:by:)(a1, v5, a3, a4);
}

uint64_t InterspersedSequence<>.offsetForward(_:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a7)
{
  v27 = a4;
  v21 = v7;
  v23 = a2;
  v22 = a6;
  v25 = a5;
  v24 = a1;
  v9 = *(a3 + 16);
  v28 = a3;
  v10 = type metadata accessor for InterspersedSequence<>.Index(0, v9, a4, a4);
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v30 = type metadata accessor for Optional(0, v10);
  v29 = *(v30 - 8);
  v14 = *(v29 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = a3;
  v18 = v27;
  v25(v17, v27);
  v22(v24, v23, &v21, v28, v18);
  v19 = v26;
  (*(v26 + 8))(&v21, v10);
  if (__swift_getEnumTagSinglePayload(&v21, 1, v10) == 1)
  {
    (*(v29 + 8))(&v21, v30);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, "Algorithms/Intersperse.swift" + 0x8000000000000000, "Algorithms/Intersperse.swift", 28, 2, a7, 0);
    BUG();
  }

  return (*(v19 + 32))(v21, &v21, v10);
}

uint64_t InterspersedSequence<>.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = v5;
  v7 = type metadata accessor for InterspersedSequence<>.Index(0, *(a4 + 16), a5, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for InterspersedSequence<A><>.Index, v7);
  if (a2 >= 0)
  {
    if (static Comparable.>= infix(_:_:)(a3, a1, v7, WitnessTable))
    {
      return InterspersedSequence<>.offsetForward(_:by:limitedBy:)(a1, a2, a3, a4, a5);
    }

    v13 = v14;
    InterspersedSequence<>.offsetForward(_:by:)(a1, a2, a4, a5);
    return __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
  }

  v10 = static Comparable.<= infix(_:_:)(a3, a1, v7, WitnessTable);
  v11 = -a2;
  v12 = __OFSUB__(-a2, 1);
  if ((v10 & 1) == 0)
  {
    if (v12)
    {
      BUG();
    }

    v13 = v14;
    InterspersedSequence<>.offsetBackward(_:by:)(a1, v11, a4, a5);
    return __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
  }

  if (v12)
  {
    BUG();
  }

  return InterspersedSequence<>.offsetBackward(_:by:limitedBy:)(a1, v11, a3, a4, a5);
}

uint64_t InterspersedSequence<>.offsetForward(_:by:limitedBy:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v96 = a3;
  v89 = v5;
  v98 = a2;
  v92 = v6;
  v83 = a1;
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, a5, v8, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v88 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v87 = *(v88 - 8);
  v10 = *(v87 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v97 = v82;
  v91 = v8;
  v90 = a5;
  v14 = type metadata accessor for InterspersedSequence<>.Index.Representation(255, v8, a5, v13);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, v14, v14, &type metadata for Bool, 0, 0);
  v16 = *(*(TupleTypeMetadata3 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v95 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v84 = v82;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v93 = v82;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v86 = v82;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v99 = v82;
  v29 = alloca(v20);
  v30 = alloca(v20);
  v85 = v82;
  v31 = alloca(v20);
  v32 = alloca(v20);
  v94 = v82;
  v33 = &v82[*(TupleTypeMetadata3 + 48)];
  v34 = *(*(v14 - 8) + 16);
  v34(v82, v83, v14);
  v34(v33, v96, v14);
  LODWORD(v34) = swift_getEnumCaseMultiPayload(v82, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v33, v14);
  v96 = v19;
  v36 = *(v19 + 32);
  if (v34 == 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v98;
      v38 = v99;
      if ((v98 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_7:
      v39 = v95;
      v36(v93, v82, v95);
      v40 = v84;
      v36(v84, v33, v39);
      v41 = v37 / 2;
      v42 = v91;
      v43 = v90;
      dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v93, v41, v40, v91, v90);
      v99 = v82;
      v44 = alloca(40);
      v45 = alloca(48);
      v83 = v42;
      v84 = v43;
      v85 = v40;
      v47 = type metadata accessor for InterspersedSequence<>.Index(0, v42, v43, v46);
      v48 = v88;
      v49 = v97;
      _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in InterspersedSequence<>.offsetForward(_:by:limitedBy:), v82, v88, &type metadata for Never, v47, &protocol witness table for Never, v81);
      (*(v87 + 8))(v49, v48);
      v50 = *(v96 + 8);
      v51 = v95;
      v50(v93, v95);
      return (v50)(v40, v51);
    }

    v37 = v98;
    v38 = v99;
    if (v98)
    {
LABEL_9:
      v53 = v95;
      v36(v94, v82, v95);
      v54 = v85;
      v36(v85, v33, v53);
      v55 = v37 / 2;
      v56 = v91;
      v57 = v90;
      dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v94, v55, v54, v91, v90);
      v99 = v82;
      v58 = alloca(32);
      v59 = alloca(32);
      v83 = v56;
      v84 = v57;
      v61 = type metadata accessor for InterspersedSequence<>.Index(0, v56, v57, v60);
      v62 = v88;
      v63 = v97;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in InterspersedSequence<>.offsetForward(_:by:limitedBy:), v82, v88, &type metadata for Never, v61, &protocol witness table for Never, v81);
      (*(v87 + 8))(v63, v62);
      v64 = *(v96 + 8);
      v65 = v95;
      v64(v54, v95);
      return (v64)(v94, v65);
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v37 = v98;
    v38 = v99;
    if ((v98 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v37 = v98;
    v38 = v99;
    if ((v98 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v66 = v95;
  v36(v38, v82, v95);
  v67 = v86;
  v36(v86, v33, v66);
  v68 = __OFADD__(1, v37);
  v69 = v37 + 1;
  if (v68)
  {
    BUG();
  }

  v70 = v69 / 2;
  v71 = v67;
  v72 = v91;
  v73 = v90;
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v99, v70, v71, v91, v90);
  v98 = v82;
  v74 = alloca(32);
  v75 = alloca(32);
  v83 = v72;
  v84 = v73;
  v77 = type metadata accessor for InterspersedSequence<>.Index(0, v72, v73, v76);
  v78 = v88;
  v79 = v97;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in InterspersedSequence<>.offsetForward(_:by:limitedBy:), v82, v88, &type metadata for Never, v77, &protocol witness table for Never, v81);
  (*(v87 + 8))(v79, v78);
  v80 = *(v96 + 8);
  v80(v86, v66);
  return (v80)(v99, v66);
}

uint64_t InterspersedSequence<>.offsetBackward(_:by:limitedBy:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v98 = a3;
  v90 = v5;
  v99 = a2;
  v93 = v6;
  v84 = a1;
  v8 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, a5, v8, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v89 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v88 = *(v89 - 8);
  v10 = *(v88 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v96 = v83;
  v92 = v8;
  v91 = a5;
  v14 = type metadata accessor for InterspersedSequence<>.Index.Representation(255, v8, a5, v13);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, v14, v14, &type metadata for Bool, 0, 0);
  v16 = *(*(TupleTypeMetadata3 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v97 = AssociatedTypeWitness;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v85 = v83;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v94 = v83;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v87 = v83;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v95 = v83;
  v29 = alloca(v20);
  v30 = alloca(v20);
  v86 = v83;
  v31 = alloca(v20);
  v32 = alloca(v20);
  v100 = v83;
  v33 = &v83[*(TupleTypeMetadata3 + 48)];
  v34 = *(*(v14 - 8) + 16);
  v34(v83, v84, v14);
  v34(v33, v98, v14);
  LODWORD(v34) = swift_getEnumCaseMultiPayload(v83, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v33, v14);
  v98 = v19;
  v36 = *(v19 + 32);
  if (v34 != 1)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = v99;
      v38 = v100;
      if (v99)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v37 = v99;
    v38 = v100;
    if ((v99 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v69 = v97;
    v36(v94, v83, v97);
    v70 = v85;
    v36(v85, v33, v69);
    v71 = v37 / -2;
    v72 = v92;
    v73 = v91;
    dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v94, v71, v70, v92, v91);
    v100 = v83;
    v74 = alloca(40);
    v75 = alloca(48);
    v84 = v72;
    v85 = v73;
    v86 = v70;
    v77 = type metadata accessor for InterspersedSequence<>.Index(0, v72, v73, v76);
    v78 = v89;
    v79 = v96;
    _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in InterspersedSequence<>.offsetBackward(_:by:limitedBy:), v83, v89, &type metadata for Never, v77, &protocol witness table for Never, v82);
    (*(v88 + 8))(v79, v78);
    v80 = *(v98 + 8);
    v81 = v97;
    v80(v94, v97);
    return (v80)(v70, v81);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v37 = v99;
    v38 = v100;
    if (v99)
    {
      goto LABEL_9;
    }

LABEL_7:
    v39 = v97;
    v36(v95, v83, v97);
    v40 = v87;
    v36(v87, v33, v39);
    v41 = v37 / -2;
    v42 = v96;
    v43 = v40;
    v44 = v92;
    v45 = v91;
    dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v95, v41, v43, v92, v91);
    v100 = v83;
    v46 = alloca(32);
    v47 = alloca(32);
    v84 = v44;
    v85 = v45;
    v49 = type metadata accessor for InterspersedSequence<>.Index(0, v44, v45, v48);
    v50 = v89;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in InterspersedSequence<>.offsetBackward(_:by:limitedBy:), v83, v89, &type metadata for Never, v49, &protocol witness table for Never, v82);
    (*(v88 + 8))(v42, v50);
    v51 = *(v98 + 8);
    v52 = v97;
    v51(v87, v97);
    return (v51)(v95, v52);
  }

  v37 = v99;
  v38 = v100;
  if ((v99 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v54 = v97;
  v36(v38, v83, v97);
  v55 = v86;
  v36(v86, v33, v54);
  v56 = __OFADD__(1, v37);
  v57 = v37 + 1;
  if (v56)
  {
    BUG();
  }

  v58 = v57 / -2;
  v59 = v55;
  v60 = v92;
  v61 = v91;
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v100, v58, v59, v92, v91);
  v99 = v83;
  v62 = alloca(32);
  v63 = alloca(32);
  v84 = v60;
  v85 = v61;
  v65 = type metadata accessor for InterspersedSequence<>.Index(0, v60, v61, v64);
  v66 = v89;
  v67 = v96;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in InterspersedSequence<>.offsetBackward(_:by:limitedBy:), v83, v89, &type metadata for Never, v65, &protocol witness table for Never, v82);
  (*(v88 + 8))(v67, v66);
  v68 = *(v98 + 8);
  v68(v86, v54);
  return (v68)(v100, v54);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(void (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = v7;
  v28 = a2;
  v33 = v8;
  v27 = a5;
  v29 = a1;
  v30 = a4;
  v31 = *(a4 - 8);
  v10 = *(v31 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v35 = &v26;
  v13 = *(a3 + 16);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = *(a3 - 8);
  v18 = *(v17 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  (*(v17 + 16))(&v26, v9);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(&v26, 1, v13) == 1)
  {
    v22 = v32;
  }

  else
  {
    (*(v34 + 32))(&v26, &v26, v13);
    v23 = v32;
    v24 = v33;
    v29(&v26, v35);
    (*(v34 + 8))(&v26, v13);
    if (v24)
    {
      return (*(v31 + 32))(a7, v35, v30);
    }

    v22 = v23;
    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v22, v21, 1, v27);
}

uint64_t _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(void (*a1)(uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = v7;
  v24 = a2;
  v29 = v8;
  v26 = a5;
  v25 = a1;
  v27 = a4;
  v28 = *(a4 - 8);
  v10 = *(v28 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = &v24;
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  (*(v18 + 16))(&v24, v9);
  if (__swift_getEnumTagSinglePayload(&v24, 1, v13) == 1)
  {
    return __swift_storeEnumTagSinglePayload(v30, 1, 1, v26);
  }

  (*(v14 + 32))(&v24, &v24, v13);
  v23 = v29;
  v25(&v24, v31);
  result = (*(v14 + 8))(&v24, v13);
  if (v23)
  {
    return (*(v28 + 32))(a7, v31, v27);
  }

  return result;
}

uint64_t closure #3 in InterspersedSequence<>.offsetForward(_:by:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v17 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
  if (dispatch thunk of static Equatable.== infix(_:_:)(a1, a2, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8)))
  {
    v12 = 1;
    v13 = v17;
  }

  else
  {
    a6(a1, a3, a4);
    v13 = v17;
    v12 = 0;
  }

  v14 = type metadata accessor for InterspersedSequence<>.Index(0, a3, a4, v11);
  return __swift_storeEnumTagSinglePayload(v13, v12, 1, v14);
}

void (*protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = InterspersedSequence<>.subscript.read(v5, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>;
}

void protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>(void (***a1)(void))
{
  protocol witness for Collection.subscript.read in conformance <> InterspersedSequence<A>(a1);
}

{
  v1 = *a1;
  v1[4](v1);
  free(v1);
}

void (*InterspersedSequence<>.subscript.read(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a4 + 8), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  *a1 = AssociatedTypeWitness;
  v7 = *(AssociatedTypeWitness - 8);
  a1[1] = v7;
  a1[2] = malloc(*(v7 + 64));
  InterspersedSequence<>.subscript.getter(a2, a3, a4);
  return InterspersedSequence<>.subscript.read;
}

void InterspersedSequence<>.subscript.read(void *a1)
{
  InterspersedSequence<>.subscript.read(a1);
}

{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);
  free(v1);
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> InterspersedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> InterspersedSequence<A>(a1, a2, a3, a4);
}

{
  v5 = v4;
  v6 = type metadata accessor for InterspersedSequence<>.Index(255, *(a2 + 16), *(a3 - 8), a4);
  v7 = type metadata accessor for Optional(0, v6);
  return __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance <> InterspersedSequence<A>()
{
  return Collection._failEarlyRangeCheck(_:bounds:)();
}

{
  return Collection._failEarlyRangeCheck(_:bounds:)();
}

{
  return Collection._failEarlyRangeCheck(_:bounds:)();
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> InterspersedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = a2;
  v12[1] = v4;
  v5 = *(a3 - 8);
  v6 = type metadata accessor for InterspersedSequence<>.Index(0, *(a2 + 16), v5, a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  InterspersedSequence<>.index(after:)(a1, a2, v5);
  (*(v7 + 8))(a1, v6);
  return (*(v7 + 32))(a1, v12, v6);
}

uint64_t InterspersedSequence<>.index(before:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = v4;
  v41 = a1;
  v46 = v3;
  v39 = a3;
  v5 = *(a3 + 8);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v35 = *(AssociatedTypeWitness - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v40 = &v32;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v43 = &v32;
  v36 = type metadata accessor for InterspersedSequence<>.Index.Representation(0, v6, v5, v7);
  v38 = *(v36 - 8);
  v12 = *(v38 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v37 = &v32;
  v16 = type metadata accessor for InterspersedSequence<>.Index(0, v6, v5, v15);
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  InterspersedSequence<>.startIndex.getter(a2, v5);
  v45 = v6;
  v44 = v5;
  v20 = static InterspersedSequence<>.Index.Representation.__derived_enum_equals(_:_:)(v41, &v32, v6, v5);
  (*(v33 + 8))(&v32, v16);
  if (v20)
  {
    BUG();
  }

  v21 = v37;
  v22 = v36;
  (*(v38 + 16))(v37, v41, v36);
  LODWORD(v22) = swift_getEnumCaseMultiPayload(v21, v22);
  v23 = v43;
  v24 = v21;
  v25 = AssociatedTypeWitness;
  v26 = v35;
  (*(v35 + 32))(v43, v24, AssociatedTypeWitness);
  if (v22 == 1)
  {
    v27 = v40;
    v28 = v23;
    v29 = v45;
    dispatch thunk of BidirectionalCollection.index(before:)(v28, v45, v39);
    v30 = *(v26 + 8);
    v30(v43, v25);
    static InterspersedSequence<>.Index.element(_:)(v27, v29, v44);
    return (v30)(v27, v25);
  }

  else
  {
    static InterspersedSequence<>.Index.separator(next:)(v23, v45, v44);
    return (*(v26 + 8))(v23, v25);
  }
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> InterspersedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[2] = a2;
  v12[1] = v4;
  v5 = *(a3 - 8);
  v6 = type metadata accessor for InterspersedSequence<>.Index(0, *(a2 + 16), *(v5 + 8), a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  InterspersedSequence<>.index(before:)(a1, a2, v5);
  (*(v7 + 8))(a1, v6);
  return (*(v7 + 32))(a1, v12, v6);
}

uint64_t InterspersedMapSequence.init(base:transform:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  (*(*(a6 - 8) + 32))(v8, a1, a6);
  v13 = type metadata accessor for InterspersedMapSequence(0, a6, a7, a8);
  v14 = *(v13 + 44);
  *(v10 + v14) = a2;
  *(v10 + v14 + 8) = a3;
  result = *(v13 + 48);
  *(v10 + result) = a4;
  *(v10 + result + 8) = a5;
  return result;
}

uint64_t InterspersedMapSequence.Iterator.base.getter(uint64_t a1)
{
  v3 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a1 + 32), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  return (*(*(AssociatedTypeWitness - 8) + 16))(v3, v2, AssociatedTypeWitness);
}

uint64_t InterspersedMapSequence.transform.getter(uint64_t a1)
{
  v2 = *(a1 + 44);
  v3 = *(v1 + v2);
  *(v1 + v2 + 8);
  return v3;
}

{
  return InterspersedMapSequence.Iterator.transform.getter(a1);
}

uint64_t InterspersedMapSequence.separator.getter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(v1 + v2);
  *(v1 + v2 + 8);
  return v3;
}

{
  return InterspersedMapSequence.Iterator.separator.getter(a1);
}

uint64_t variable initialization expression of InterspersedMapSequence.Iterator.state(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for InterspersedMapSequence.Iterator.State(0, a1, a2, a3);
  return swift_storeEnumTagMultiPayload(v4, v5, 2);
}

uint64_t InterspersedMapSequence.Iterator.state.getter(uint64_t a1)
{
  v3 = v1;
  v4 = v2 + *(a1 + 52);
  v5 = type metadata accessor for InterspersedMapSequence.Iterator.State(0, *(a1 + 16), *(a1 + 24), *(a1 + 32));
  return (*(*(v5 - 8) + 16))(v3, v4, v5);
}

uint64_t InterspersedMapSequence.Iterator.state.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 52);
  v4 = type metadata accessor for InterspersedMapSequence.Iterator.State(0, *(a2 + 16), *(a2 + 24), *(a2 + 32));
  return (*(*(v4 - 8) + 40))(v3, a1, v4);
}

uint64_t InterspersedMapSequence.Iterator.init(base:transform:separator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v11 = type metadata accessor for InterspersedMapSequence.Iterator(0, a6, a7, a8);
  v12 = v9 + v11[13];
  v13 = type metadata accessor for InterspersedMapSequence.Iterator.State(0, a6, a7, a8);
  swift_storeEnumTagMultiPayload(v12, v13, 2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a8, a6, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  (*(*(AssociatedTypeWitness - 8) + 32))(v9, a1, AssociatedTypeWitness);
  v15 = v11[11];
  *(v9 + v15) = a2;
  *(v9 + v15 + 8) = a3;
  result = v11[12];
  *(v9 + result) = a4;
  *(v9 + result + 8) = a5;
  return result;
}

uint64_t InterspersedMapSequence.Iterator.next()(uint64_t a1)
{
  v78 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v71 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v70 = *(v71 - 8);
  v6 = *(v70 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = &v65;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v76 = &v65;
  v80 = AssociatedTypeWitness;
  v81 = *(AssociatedTypeWitness - 8);
  v11 = *(v81 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v67 = &v65;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v68 = &v65;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v75 = &v65;
  v18 = alloca(v11);
  v19 = alloca(v11);
  v72 = &v65;
  v20 = *(a1 + 24);
  v69 = v3;
  v79 = v20;
  v21 = type metadata accessor for InterspersedMapSequence.Iterator.State(0, v3, v20, v4);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v73 = a1;
  v26 = *(a1 + 52);
  v77 = v2;
  v27 = v2 + v26;
  v74 = v22;
  (*(v22 + 16))(&v65, v27, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v65, v21);
  if (!EnumCaseMultiPayload)
  {
    v36 = v67;
    v37 = v80;
    v38 = v81;
    (*(v81 + 32))(v67, &v65, v80);
    (*(v74 + 8))(v27, v21);
    (*(v38 + 16))(v27, v36, v37);
    swift_storeEnumTagMultiPayload(v27, v21, 1);
    v39 = *(v73 + 44);
    v40 = *(v77 + v39 + 8);
    v41 = v78;
    (*(v77 + v39))(v36);
    v42 = v36;
    v43 = v80;
LABEL_11:
    (*(v81 + 8))(v42, v43);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v44 = v69;
    v45 = swift_getAssociatedTypeWitness(0, v4, v69, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v44, v45, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
    v47 = v76;
    dispatch thunk of IteratorProtocol.next()(v45, AssociatedConformanceWitness);
    v48 = v47;
    v49 = v47;
    v50 = v80;
    if (__swift_getEnumTagSinglePayload(v49, 1, v80) == 1)
    {
      (*(v70 + 8))(v48, v71);
      v35 = 1;
      goto LABEL_8;
    }

    v58 = v81;
    (*(v81 + 32))(v72, v48, v50);
    (*(v74 + 8))(v27, v21);
    v59 = v72;
    (*(v58 + 16))(v27, v72, v50);
    swift_storeEnumTagMultiPayload(v27, v21, 1);
    v60 = *(v73 + 44);
    v41 = v78;
    v61 = v59;
    v62 = v59;
    v63 = *(v77 + v60 + 8);
    (*(v77 + v60))(v62);
    v42 = v61;
    v43 = v50;
    goto LABEL_11;
  }

  v76 = *(v81 + 32);
  (v76)(v75, &v65, v80);
  v29 = v69;
  v30 = swift_getAssociatedTypeWitness(0, v4, v69, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v31 = swift_getAssociatedConformanceWitness(v4, v29, v30, &protocol requirements base descriptor for Sequence, &associated conformance descriptor for Sequence.Sequence.Iterator: IteratorProtocol);
  v32 = v66;
  dispatch thunk of IteratorProtocol.next()(v30, v31);
  v33 = v32;
  v34 = v80;
  if (__swift_getEnumTagSinglePayload(v32, 1, v80) != 1)
  {
    v51 = v68;
    (v76)(v68, v33, v34);
    (*(v74 + 8))(v27, v21);
    (*(v81 + 16))(v27, v51, v34);
    swift_storeEnumTagMultiPayload(v27, v21, 0);
    v52 = *(v73 + 48);
    v53 = *(v77 + v52 + 8);
    v41 = v78;
    v54 = v75;
    (*(v77 + v52))(v75, v51);
    v55 = *(v81 + 8);
    v56 = v51;
    v57 = v80;
    v55(v56, v80);
    v55(v54, v57);
LABEL_12:
    v35 = 0;
    return __swift_storeEnumTagSinglePayload(v41, v35, 1, v79);
  }

  (*(v81 + 8))(v75, v34);
  (*(v70 + 8))(v32, v71);
  v35 = 1;
LABEL_8:
  v41 = v78;
  return __swift_storeEnumTagSinglePayload(v41, v35, 1, v79);
}

uint64_t InterspersedMapSequence.makeIterator()(uint64_t a1)
{
  v12[1] = v1;
  v3 = *(a1 + 16);
  v13 = *(v3 - 8);
  v4 = *(v13 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v14 = *(a1 + 32);
  v7 = *(*(swift_getAssociatedTypeWitness(0, v14, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v15 = v12;
  (*(v13 + 16))(v12, v2, v3);
  v10 = v14;
  dispatch thunk of Sequence.makeIterator()(v3, v14);
  InterspersedMapSequence.Iterator.init(base:transform:separator:)(v15, *(v2 + *(a1 + 44)), *(v2 + *(a1 + 44) + 8), *(v2 + *(a1 + 48)), *(v2 + *(a1 + 48) + 8), v3, *(a1 + 24), v10);
}

uint64_t InterspersedMapSequence<>.Index.representation.getter(uint64_t *a1)
{
  v3 = v1;
  v4 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, a1[2], a1[3], a1[4]);
  return (*(*(v4 - 8) + 16))(v3, v2, v4);
}

uint64_t InterspersedMapSequence<>.Index.init(representation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, a2, a3, a4);
  return (*(*(v6 - 8) + 32))(v5, a1, v6);
}

uint64_t static InterspersedMapSequence<>.Index.element(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v13[1] = v4;
  v7 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, v14, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload(v13, v7, 0);
  return InterspersedMapSequence<>.Index.init(representation:)(v13, a2, a3, a4);
}

uint64_t static InterspersedMapSequence<>.Index.separator(previous:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a2;
  v20 = a1;
  v16 = v5;
  v21 = a5;
  v19 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, a3, a4, a5);
  v8 = *(*(v19 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, a5, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v12 = &v15[*(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48)];
  v13 = *(*(AssociatedTypeWitness - 8) + 16);
  v13(v15, v20, AssociatedTypeWitness);
  v13(v12, v18, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload(v15, v19, 1);
  return InterspersedMapSequence<>.Index.init(representation:)(v15, a3, v17, v21);
}

uint64_t static InterspersedMapSequence<>.Index.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a2;
  v38 = a1;
  v7 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(255, a3, a4, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, v7, v7, 0, 0);
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v45 = &v37;
  v39 = a5;
  v40 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v44 = *(AssociatedTypeWitness - 8);
  v13 = v44[8];
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = &v37;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v43 = &v37;
  v18 = &v37 + *(TupleTypeMetadata2 + 48);
  v41 = *(v7 - 8);
  v19 = *(v41 + 16);
  v19(&v37, v38, v7);
  v19(v18, v37, v7);
  if (swift_getEnumCaseMultiPayload(&v37, v7) == 1)
  {
    v20 = *(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48);
    v21 = &v37 + v20;
    if (swift_getEnumCaseMultiPayload(v18, v7) != 1)
    {
      (*(v41 + 8))(v18, v7);
      v31 = v44[1];
      v31(v21, AssociatedTypeWitness);
      v31(v45, AssociatedTypeWitness);
      return 0;
    }

    v22 = v44;
    v23 = v44[4];
    v23(v43, &v37 + v20, AssociatedTypeWitness);
    v24 = &v18[v20];
    v25 = v22;
    v26 = v42;
    v23(v42, v24, AssociatedTypeWitness);
    v27 = v25[1];
    v27(v18, AssociatedTypeWitness);
    v27(v45, AssociatedTypeWitness);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(v18, v7) == 1)
    {
      v28 = 0;
      v29 = swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0);
      v30 = v44[1];
      v30(&v18[*(v29 + 48)], AssociatedTypeWitness);
      v30(v18, AssociatedTypeWitness);
      v30(v45, AssociatedTypeWitness);
      return v28;
    }

    v25 = v44;
    v32 = v44[4];
    v32(v43, v45, AssociatedTypeWitness);
    v26 = v42;
    v32(v42, v18, AssociatedTypeWitness);
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v39, v40, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
  v34 = v43;
  v28 = dispatch thunk of static Equatable.== infix(_:_:)(v43, v26, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  v35 = v25[1];
  v35(v26, AssociatedTypeWitness);
  v35(v34, AssociatedTypeWitness);
  return v28;
}

uint64_t static InterspersedMapSequence<>.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a2;
  v47 = a1;
  v7 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(255, a3, a4, a5);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, v7, v7, 0, 0);
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v50 = v43;
  v44 = a5;
  v45 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v48 = *(AssociatedTypeWitness - 8);
  v13 = *(v48 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v49 = v43;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v51 = v43;
  v18 = &v43[*(TupleTypeMetadata2 + 48)];
  v19 = *(*(v7 - 8) + 16);
  v19(v43, v47, v7);
  v19(v18, v46, v7);
  if (swift_getEnumCaseMultiPayload(v43, v7) == 1)
  {
    v20 = *(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48);
    v21 = &v43[v20];
    if (swift_getEnumCaseMultiPayload(v18, v7) == 1)
    {
      v22 = v48;
      v23 = *(v48 + 32);
      v23(v51, &v43[v20], AssociatedTypeWitness);
      v24 = &v18[v20];
      v25 = v22;
      v26 = v49;
      v23(v49, v24, AssociatedTypeWitness);
      v27 = *(v25 + 8);
      v27(v18, AssociatedTypeWitness);
      v27(v50, AssociatedTypeWitness);
LABEL_9:
      v33 = v25;
      goto LABEL_10;
    }

    v29 = v48;
    v35 = *(v48 + 32);
    v35(v51, v50, AssociatedTypeWitness);
    v36 = v35;
    v26 = v49;
    v36(v49, v18, AssociatedTypeWitness);
    v34 = v21;
    v33 = v29;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(v18, v7) != 1)
    {
      v25 = v48;
      v37 = *(v48 + 32);
      v37(v51, v50, AssociatedTypeWitness);
      v26 = v49;
      v37(v49, v18, AssociatedTypeWitness);
      goto LABEL_9;
    }

    v28 = &v18[*(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48)];
    v29 = v48;
    v30 = *(v48 + 32);
    v30(v51, v50, AssociatedTypeWitness);
    v31 = v30;
    v26 = v49;
    v32 = v28;
    v33 = v29;
    v31(v49, v32, AssociatedTypeWitness);
    v34 = v18;
  }

  (*(v29 + 8))(v34, AssociatedTypeWitness);
LABEL_10:
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v44, v45, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
  v39 = v51;
  v40 = dispatch thunk of static Comparable.< infix(_:_:)(v51, v26, AssociatedTypeWitness, AssociatedConformanceWitness);
  v41 = *(v33 + 8);
  v41(v26, AssociatedTypeWitness);
  v41(v39, AssociatedTypeWitness);
  return v40;
}

uint64_t InterspersedMapSequence<>.startIndex.getter(uint64_t a1, uint64_t a2)
{
  v11 = v2;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, v3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v9 = *(AssociatedTypeWitness - 8);
  v4 = *(v9 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  if (dispatch thunk of Collection.isEmpty.getter(v3, a2))
  {
    return InterspersedMapSequence<>.endIndex.getter(a1, a2);
  }

  dispatch thunk of Collection.startIndex.getter(v3, a2);
  static InterspersedMapSequence<>.Index.element(_:)(&v8, v3, *(a1 + 24), a2);
  return (*(v9 + 8))(&v8, AssociatedTypeWitness);
}

uint64_t InterspersedMapSequence<>.endIndex.getter(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = v2;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, v3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v15 = *(AssociatedTypeWitness - 8);
  v4 = *(v15 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  dispatch thunk of Collection.endIndex.getter(v3, a2);
  dispatch thunk of Collection.endIndex.getter(v3, a2);
  static InterspersedMapSequence<>.Index.separator(previous:next:)(&v12, &v12, v3, *(v13 + 24), a2);
  v9 = *(v15 + 8);
  v10 = AssociatedTypeWitness;
  v9(&v12, AssociatedTypeWitness);
  return (v9)(&v12, v10);
}

uint64_t InterspersedMapSequence<>.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = v4;
  v26 = a1;
  v30 = v3;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v32 = *(AssociatedTypeWitness - 8);
  v7 = *(v32 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = *(a2 + 24);
  v29 = v6;
  v31 = v12;
  v28 = a3;
  v13 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, v6, v12, a3);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  (*(v14 + 16))(v25, v26, v13);
  if (swift_getEnumCaseMultiPayload(v25, v13) == 1)
  {
    v18 = AssociatedTypeWitness;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0);
    (*(v32 + 32))(v25, &v25[*(TupleTypeMetadata2 + 48)], v18);
    static InterspersedMapSequence<>.Index.element(_:)(v25, v29, v31, v28);
  }

  else
  {
    (*(v32 + 32))(v25, v25, AssociatedTypeWitness);
    v20 = v29;
    v21 = v28;
    dispatch thunk of Collection.index(after:)(v25, v29, v28);
    static InterspersedMapSequence<>.Index.separator(previous:next:)(v25, v25, v20, v31, v21);
  }

  v22 = *(v32 + 8);
  v23 = AssociatedTypeWitness;
  v22(v25, AssociatedTypeWitness);
  return (v22)(v25, v23);
}

uint64_t InterspersedMapSequence<>.subscript.getter(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v55 = v4;
  v60 = a1;
  v52 = v3;
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 8), v6, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v59 = *(AssociatedTypeWitness - 8);
  v7 = v59[8];
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = alloca(v7);
  v11 = alloca(v7);
  v53 = v48;
  v61 = swift_getAssociatedTypeWitness(0, a3, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v12 = *(v61 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v62 = v48;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v58 = v48;
  v63 = a2;
  v18 = *(a2 + 24);
  v54 = a3;
  v19 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, v6, v18, a3);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  (*(v20 + 16))(v48, v60, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v48, v19);
  v57 = v12;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = &v48[*(swift_getTupleTypeMetadata2(0, v61, v61, "previous next ", 0) + 48)];
    v50 = v6;
    v60 = v48;
    v26 = *(v12 + 32);
    v27 = v58;
    v28 = v61;
    v26(v58, v48, v61);
    v26(v62, v25, v28);
    v29 = *(v63 + 48);
    v63 = *(v55 + v29);
    v49 = *(v55 + v29 + 8);
    v30 = v54;
    v51 = dispatch thunk of Collection.subscript.read(v48, v27, v6, v54);
    v31 = v59[2];
    v32 = v53;
    v33 = AssociatedTypeWitness;
    v31(v53, v34, AssociatedTypeWitness);
    v51(v48, 0);
    v35 = dispatch thunk of Collection.subscript.read(v48, v62, v50, v30);
    v36 = v60;
    v31(v60, v37, v33);
    v35(v48, 0);
    (v63)(v32, v36);
    v38 = v59[1];
    v38(v36, v33);
    v38(v32, v33);
    v39 = *(v57 + 8);
    v39(v62, v61);
    return (v39)(v58, v61);
  }

  else
  {
    v41 = v58;
    (*(v12 + 32))(v58, v48, v61);
    v42 = *(v63 + 44);
    v62 = *(v55 + v42);
    v63 = *(v55 + v42 + 8);
    v43 = dispatch thunk of Collection.subscript.read(v48, v41, v6, v54);
    v44 = v53;
    v45 = AssociatedTypeWitness;
    v46 = v59;
    (v59[2])(v53, v47, AssociatedTypeWitness);
    v43(v48, 0);
    v62(v44);
    (v46[1])(v44, v45);
    return (*(v57 + 8))(v58, v61);
  }
}

uint64_t InterspersedMapSequence<>.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = v4;
  v50 = a2;
  v51 = a1;
  v53 = 0x4000000000000000;
  v6 = *(a3 + 16);
  v7 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(255, v6, *(a3 + 24), a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, v7, v7, 0, 0);
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v59 = v49;
  v54 = a4;
  v56 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v61 = *(AssociatedTypeWitness - 8);
  v13 = v61[8];
  v14 = alloca(v13);
  v15 = alloca(v13);
  v52 = v49;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v60 = v49;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v57 = v49;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v58 = v49;
  v22 = &v49[*(TupleTypeMetadata2 + 48)];
  v23 = *(*(v7 - 8) + 16);
  v23(v49, v51, v7);
  v23(v22, v50, v7);
  if (swift_getEnumCaseMultiPayload(v49, v7) == 1)
  {
    v24 = *(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48);
    v25 = &v49[v24];
    if (swift_getEnumCaseMultiPayload(v22, v7) == 1)
    {
      v26 = v61[4];
      v27 = v61;
      v26(v58, &v49[v24], AssociatedTypeWitness);
      v28 = &v22[v24];
      v29 = v57;
      v26(v57, v28, AssociatedTypeWitness);
      v30 = v27[1];
      v30(v22, AssociatedTypeWitness);
      v30(v59, AssociatedTypeWitness);
LABEL_11:
      v45 = v58;
      v46 = dispatch thunk of Collection.distance(from:to:)(v58, v29, v56, v54);
      v47 = v27[1];
      v47(v57, AssociatedTypeWitness);
      v47(v45, AssociatedTypeWitness);
      v53 += v46;
      if (v53 < 0)
      {
        BUG();
      }

      return 2 * v46;
    }

    v39 = v61[4];
    v40 = v60;
    v39(v60, v22, AssociatedTypeWitness);
    v41 = v52;
    v39(v52, v25, AssociatedTypeWitness);
    v42 = dispatch thunk of Collection.distance(from:to:)(v41, v40, v56, v54);
    v43 = v61[1];
    v43(v41, AssociatedTypeWitness);
    v43(v60, AssociatedTypeWitness);
    v53 += v42;
    if (v53 < 0)
    {
      BUG();
    }

    v38 = 2 * v42 + 1;
    v43(v59, AssociatedTypeWitness);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(v22, v7) != 1)
    {
      v27 = v61;
      v44 = v61[4];
      v44(v58, v59, AssociatedTypeWitness);
      v29 = v57;
      v44(v57, v22, AssociatedTypeWitness);
      goto LABEL_11;
    }

    v31 = &v22[*(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48)];
    v32 = v61[4];
    v32(v60, v59, AssociatedTypeWitness);
    v33 = v52;
    v32(v52, v31, AssociatedTypeWitness);
    v34 = dispatch thunk of Collection.distance(from:to:)(v60, v33, v56, v54);
    v35 = v61[1];
    v35(v33, AssociatedTypeWitness);
    v35(v60, AssociatedTypeWitness);
    v53 += v34;
    if (v53 < 0)
    {
      BUG();
    }

    v36 = 2 * v34;
    v37 = __OFSUB__(v36, 1);
    v38 = v36 - 1;
    if (v37)
    {
      BUG();
    }

    v35(v22, AssociatedTypeWitness);
  }

  return v38;
}

uint64_t InterspersedMapSequence<>.index(_:offsetBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    if (a2 <= 0)
    {
      v8 = -a2;
      if (__OFSUB__(v8, 1))
      {
        BUG();
      }

      return InterspersedMapSequence<>.offsetBackward(_:by:)(a1, v8, a3, a4);
    }

    else
    {
      return InterspersedMapSequence<>.offsetForward(_:by:)(a1, a2, a3, a4);
    }
  }

  else
  {
    v7 = type metadata accessor for InterspersedMapSequence<>.Index(0, *(a3 + 16), *(a3 + 24), a4);
    return (*(*(v7 - 8) + 16))(v5, a1, v7);
  }
}

uint64_t InterspersedMapSequence<>.offsetForward(_:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t, uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t a7)
{
  v28 = a4;
  v22 = v7;
  v24 = a2;
  v23 = a6;
  v26 = a5;
  v25 = a1;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v29 = a3;
  v11 = type metadata accessor for InterspersedMapSequence<>.Index(0, v9, v10, a4);
  v27 = *(v11 - 8);
  v12 = *(v27 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v31 = type metadata accessor for Optional(0, v11);
  v30 = *(v31 - 8);
  v15 = *(v30 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = a3;
  v19 = v28;
  v26(v18, v28);
  v23(v25, v24, &v22, v29, v19);
  v20 = v27;
  (*(v27 + 8))(&v22, v11);
  if (__swift_getEnumTagSinglePayload(&v22, 1, v11) == 1)
  {
    (*(v30 + 8))(&v22, v31);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000016, "Algorithms/Intersperse.swift" + 0x8000000000000000, "Algorithms/Intersperse.swift", 28, 2, a7, 0);
    BUG();
  }

  return (*(v20 + 32))(v22, &v22, v11);
}

uint64_t InterspersedMapSequence<>.index(_:offsetBy:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  if (!a2)
  {
    v11 = type metadata accessor for InterspersedMapSequence<>.Index(0, *(a4 + 16), *(a4 + 24), a5);
    (*(*(v11 - 8) + 16))(v7, a1, v11);
    return __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
  }

  v17 = v5;
  v8 = type metadata accessor for InterspersedMapSequence<>.Index(0, *(a4 + 16), *(a4 + 24), a5);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for InterspersedMapSequence<A, B><>.Index, v8);
  if (a2 > 0)
  {
    if (static Comparable.>= infix(_:_:)(a3, a1, v8, WitnessTable))
    {
      return InterspersedMapSequence<>.offsetForward(_:by:limitedBy:)(a1, a2, a3, a4, a5);
    }

    InterspersedMapSequence<>.offsetForward(_:by:)(a1, a2, a4, a5);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, v8);
  }

  v12 = static Comparable.<= infix(_:_:)(a3, a1, v8, WitnessTable);
  v13 = -a2;
  v14 = __OFSUB__(-a2, 1);
  if ((v12 & 1) == 0)
  {
    if (v14)
    {
      BUG();
    }

    InterspersedMapSequence<>.offsetBackward(_:by:)(a1, v13, a4, a5);
    return __swift_storeEnumTagSinglePayload(v17, 0, 1, v8);
  }

  if (v14)
  {
    BUG();
  }

  return InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:)(a1, v13, a3, a4, a5);
}

uint64_t InterspersedMapSequence<>.offsetForward(_:by:limitedBy:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a3;
  v103 = v5;
  v118 = a2;
  v107 = v6;
  v100 = a1;
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, a5, v9, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v102 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v101 = *(v102 - 8);
  v11 = *(v101 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v112 = v98;
  v14 = *(a4 + 24);
  v105 = v9;
  v106 = v14;
  v104 = a5;
  v15 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(255, v9, v14, a5);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, v15, v15, &type metadata for Bool, 0, 0);
  v17 = *(*(TupleTypeMetadata3 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v116 = v98;
  v117 = *(AssociatedTypeWitness - 8);
  v20 = v117[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v108 = v98;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v109 = v98;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v113 = v98;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v114 = v98;
  v29 = alloca(v20);
  v30 = alloca(v20);
  v111 = v98;
  v31 = alloca(v20);
  v32 = alloca(v20);
  v110 = v98;
  v33 = &v98[*(TupleTypeMetadata3 + 48)];
  v34 = *(*(v15 - 8) + 16);
  v34(v98, v100, v15);
  v34(v33, v99, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v98, v15);
  v115 = AssociatedTypeWitness;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = *(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48);
    v37 = &v98[v36];
    if (swift_getEnumCaseMultiPayload(v33, v15) == 1)
    {
      v38 = &v33[v36];
      v39 = v117;
      v40 = v117[4];
      if ((v118 & 1) == 0)
      {
        v41 = v37;
        v42 = v115;
        v43 = v117[4];
        v40(v114, v41, v115);
        v43(v113, v38, v42);
        v44 = v39[1];
        v44(v33, v42);
        v44(v116, v42);
LABEL_15:
        v52 = v118;
        goto LABEL_19;
      }

      v57 = v37;
      v58 = v115;
      v59 = v117[4];
      v40(v109, v57, v115);
      v60 = v59;
      v49 = v108;
      v60(v108, v38, v58);
      v61 = v39[1];
      (v61)(v33, v58);
      v117 = v61;
      (v61)(v116, v58);
      goto LABEL_13;
    }

    v50 = v117;
    v51 = v117[4];
    v52 = v118;
    if ((v118 & 1) == 0)
    {
      v53 = v37;
      v54 = v115;
      v51(v114, v53, v115);
      v51(v113, v33, v54);
      (v50[1])(v116, v54);
LABEL_19:
      v86 = __OFSUB__(v52, 1);
      v87 = v52 - 1;
      if (v86)
      {
        BUG();
      }

      v88 = v87 / 2;
      v64 = v113;
      v89 = v107;
      v90 = v105;
      v91 = v104;
      dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v114, v88, v113, v105, v104);
      v118 = v98;
      v92 = alloca(56);
      v93 = alloca(64);
      v100 = v90;
      v101 = v106;
      v102 = v91;
      v103 = v64;
      v104 = v89;
      v94 = type metadata accessor for InterspersedMapSequence<>.Index(0, v90, v106, v91);
      v95 = v102;
      v96 = v112;
      _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in InterspersedMapSequence<>.offsetForward(_:by:limitedBy:), v98, v102, &type metadata for Never, v94, &protocol witness table for Never, v97);
      (*(v101 + 8))(v96, v95);
      v72 = v117[1];
      v71 = v115;
      v72(v114, v115);
      return (v72)(v64, v71);
    }

    v73 = v115;
    v51(v110, v37, v115);
    v56 = v111;
    v51(v111, v33, v73);
    (v117[1])(v116, v73);
LABEL_17:
    v74 = v52 / 2;
    v75 = v112;
    v76 = v56;
    v77 = v105;
    v78 = v104;
    dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v110, v74, v76, v105, v104);
    v118 = v98;
    v79 = alloca(40);
    v80 = alloca(48);
    v100 = v77;
    v101 = v106;
    v102 = v78;
    v81 = type metadata accessor for InterspersedMapSequence<>.Index(0, v77, v106, v78);
    v82 = v102;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in InterspersedMapSequence<>.offsetForward(_:by:limitedBy:), v98, v102, &type metadata for Never, v81, &protocol witness table for Never, v97);
    (*(v101 + 8))(v75, v82);
    v83 = v117[1];
    v84 = v115;
    v83(v111, v115);
    return (v83)(v110, v84);
  }

  v45 = AssociatedTypeWitness;
  if (swift_getEnumCaseMultiPayload(v33, v15) != 1)
  {
    v55 = v117[4];
    v52 = v118;
    if (v118)
    {
      v55(v114, v116, AssociatedTypeWitness);
      v55(v113, v33, AssociatedTypeWitness);
      goto LABEL_19;
    }

    v55(v110, v116, AssociatedTypeWitness);
    v55(v111, v33, AssociatedTypeWitness);
    v56 = v111;
    goto LABEL_17;
  }

  v46 = &v33[*(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48)];
  v47 = v117;
  v48 = v117[4];
  if (v118)
  {
    v48(v114, v116, v45);
    v48(v113, v46, v45);
    (v47[1])(v33, v45);
    goto LABEL_15;
  }

  v48(v109, v116, v45);
  v48(v108, v46, v45);
  v117 = v47[1];
  (v117)(v33, v45);
  v49 = v108;
LABEL_13:
  v62 = v49;
  v63 = v105;
  v64 = v49;
  v65 = v104;
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v109, v118 / 2, v62, v105, v104);
  v118 = v98;
  v66 = alloca(48);
  v67 = alloca(48);
  v100 = v63;
  v101 = v106;
  v102 = v65;
  v103 = v64;
  v68 = type metadata accessor for InterspersedMapSequence<>.Index(0, v63, v106, v65);
  v69 = v102;
  v70 = v112;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in InterspersedMapSequence<>.offsetForward(_:by:limitedBy:), v98, v102, &type metadata for Never, v68, &protocol witness table for Never, v97);
  (*(v101 + 8))(v70, v69);
  v71 = v115;
  v72 = v117;
  (v117)(v109, v115);
  return (v72)(v64, v71);
}

uint64_t InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a3;
  v105 = v5;
  v120 = a2;
  v108 = v6;
  v102 = a1;
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(255, a5, v9, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v104 = type metadata accessor for Optional(0, AssociatedTypeWitness);
  v103 = *(v104 - 8);
  v11 = *(v103 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v111 = v100;
  v14 = *(a4 + 24);
  v107 = v9;
  v109 = v14;
  v106 = a5;
  v15 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(255, v9, v14, a5);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3(0, v15, v15, &type metadata for Bool, 0, 0);
  v17 = *(*(TupleTypeMetadata3 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v118 = v100;
  v119 = *(AssociatedTypeWitness - 8);
  v20 = v119[8];
  v21 = alloca(v20);
  v22 = alloca(v20);
  v110 = v100;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v113 = v100;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v114 = v100;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v112 = v100;
  v29 = alloca(v20);
  v30 = alloca(v20);
  v115 = v100;
  v31 = alloca(v20);
  v32 = alloca(v20);
  v116 = v100;
  v33 = &v100[*(TupleTypeMetadata3 + 48)];
  v34 = *(*(v15 - 8) + 16);
  v34(v100, v102, v15);
  v34(v33, v101, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v100, v15);
  v117 = AssociatedTypeWitness;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = *(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48);
    v37 = &v100[v36];
    if (swift_getEnumCaseMultiPayload(v33, v15) == 1)
    {
      v38 = &v33[v36];
      v39 = v119;
      v40 = v119[4];
      if ((v120 & 1) == 0)
      {
        v41 = v37;
        v42 = v117;
        v43 = v119[4];
        v40(v112, v41, v117);
        v44 = v43;
        v45 = v114;
        v44(v114, v38, v42);
        v46 = v39[1];
        (v46)(v33, v42);
        v119 = v46;
        (v46)(v118, v42);
LABEL_15:
        v61 = v111;
        v62 = v45;
        v63 = v108;
        v64 = v107;
        v65 = v106;
        dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v112, v120 / -2, v62, v107, v106);
        v120 = v100;
        v66 = alloca(48);
        v67 = alloca(48);
        v102 = v64;
        v103 = v109;
        v104 = v65;
        v105 = v63;
        v68 = type metadata accessor for InterspersedMapSequence<>.Index(0, v64, v109, v65);
        v69 = v104;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:), v100, v104, &type metadata for Never, v68, &protocol witness table for Never, v99);
        (*(v103 + 8))(v61, v69);
        v70 = v117;
        v71 = v119;
        (v119)(v114, v117);
        v72 = v112;
        return v71(v72, v70);
      }

      v57 = v37;
      v58 = v117;
      v59 = v119[4];
      v40(v116, v57, v117);
      v59(v115, v38, v58);
      v60 = v39[1];
      v60(v33, v58);
      v60(v118, v58);
LABEL_13:
      v53 = v120;
      goto LABEL_17;
    }

    v51 = v119;
    v52 = v119[4];
    v53 = v120;
    if (v120)
    {
      v73 = v37;
      v74 = v117;
      v52(v116, v73, v117);
      v52(v115, v33, v74);
      (v51[1])(v118, v74);
      goto LABEL_17;
    }

    v54 = v117;
    v52(v113, v37, v117);
    v55 = v110;
    v52(v110, v33, v54);
    (v119[1])(v118, v54);
  }

  else
  {
    v47 = AssociatedTypeWitness;
    if (swift_getEnumCaseMultiPayload(v33, v15) == 1)
    {
      v48 = &v33[*(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48)];
      v49 = v119;
      v50 = v119[4];
      if (v120)
      {
        v50(v112, v118, v47);
        v50(v114, v48, v47);
        v119 = v49[1];
        (v119)(v33, v47);
        v45 = v114;
        goto LABEL_15;
      }

      v50(v116, v118, v47);
      v50(v115, v48, v47);
      (v49[1])(v33, v47);
      goto LABEL_13;
    }

    v56 = v119[4];
    v53 = v120;
    if ((v120 & 1) == 0)
    {
      v56(v116, v118, AssociatedTypeWitness);
      v56(v115, v33, AssociatedTypeWitness);
LABEL_17:
      v75 = __OFADD__(1, v53);
      v76 = v53 + 1;
      if (v75)
      {
        BUG();
      }

      v77 = v76 / -2;
      v78 = v111;
      v79 = v107;
      v80 = v106;
      dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v116, v77, v115, v107, v106);
      v120 = v100;
      v81 = alloca(40);
      v82 = alloca(48);
      v102 = v79;
      v103 = v109;
      v104 = v80;
      v83 = type metadata accessor for InterspersedMapSequence<>.Index(0, v79, v109, v80);
      v84 = v104;
      _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:), v100, v104, &type metadata for Never, v83, &protocol witness table for Never, v99);
      (*(v103 + 8))(v78, v84);
      v71 = v119[1];
      v70 = v117;
      v71(v115, v117);
      v72 = v116;
      return v71(v72, v70);
    }

    v56(v113, v118, AssociatedTypeWitness);
    v56(v110, v33, AssociatedTypeWitness);
    v55 = v110;
  }

  v86 = v53 / -2;
  v87 = v55;
  v88 = v108;
  v89 = v107;
  v90 = v55;
  v91 = v106;
  dispatch thunk of Collection.index(_:offsetBy:limitedBy:)(v113, v86, v87, v107, v106);
  v120 = v100;
  v92 = alloca(56);
  v93 = alloca(64);
  v102 = v89;
  v103 = v109;
  v104 = v91;
  v105 = v90;
  v106 = v88;
  v94 = type metadata accessor for InterspersedMapSequence<>.Index(0, v89, v109, v91);
  v95 = v104;
  v96 = v111;
  _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:), v100, v104, &type metadata for Never, v94, &protocol witness table for Never, v99);
  (*(v103 + 8))(v96, v95);
  v97 = v119[1];
  v98 = v117;
  v97(v113, v117);
  return (v97)(v90, v98);
}

uint64_t closure #2 in InterspersedMapSequence<>.offsetForward(_:by:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v36 = v6;
  v37 = a2;
  v33 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v34 = *(AssociatedTypeWitness - 8);
  v10 = *(v34 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v29 = &v28;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v35 = &v28;
  v38 = a4;
  v15 = *(swift_getAssociatedConformanceWitness(a6, a4, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v32 = a1;
  if (dispatch thunk of static Equatable.== infix(_:_:)(a1, v37, AssociatedTypeWitness, v15))
  {
    v16 = type metadata accessor for InterspersedMapSequence<>.Index(0, v38, v33, a6);
    v17 = v36;
    v18 = 1;
  }

  else
  {
    v37 = a6;
    v19 = v38;
    dispatch thunk of Collection.index(after:)(v32, v38, v37);
    v30 = v15;
    v20 = v29;
    v21 = v19;
    v22 = v37;
    dispatch thunk of Collection.endIndex.getter(v21, v37);
    v23 = dispatch thunk of static Equatable.== infix(_:_:)(v35, v20, AssociatedTypeWitness, v30);
    v34 = *(v34 + 8);
    (v34)(v20, AssociatedTypeWitness);
    if (v23)
    {
      v24 = v33;
      v25 = type metadata accessor for InterspersedMapSequence(0, v38, v33, *(v22 + 8));
      InterspersedMapSequence<>.endIndex.getter(v25, v22);
      v26 = v36;
    }

    else
    {
      v26 = v36;
      v24 = v33;
      static InterspersedMapSequence<>.Index.separator(previous:next:)(v32, v35, v38, v33, v22);
    }

    (v34)(v35, AssociatedTypeWitness);
    v16 = type metadata accessor for InterspersedMapSequence<>.Index(0, v38, v24, v22);
    v17 = v26;
    v18 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v17, v18, 1, v16);
}

uint64_t closure #3 in InterspersedMapSequence<>.offsetForward(_:by:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a3, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
  if (dispatch thunk of static Equatable.== infix(_:_:)(a1, a2, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8)))
  {
    v10 = 1;
    v11 = v16;
    v12 = a4;
  }

  else
  {
    v11 = v16;
    static InterspersedMapSequence<>.Index.element(_:)(a1, a3, a4, a5);
    v12 = a4;
    v10 = 0;
  }

  v13 = type metadata accessor for InterspersedMapSequence<>.Index(0, a3, v12, a5);
  return __swift_storeEnumTagSinglePayload(v11, v10, 1, v13);
}

uint64_t closure #2 in InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v14 = a4;
  v15 = v5;
  v19 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a5, a3, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v17 = *(AssociatedTypeWitness - 8);
  v7 = *(v17 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a3;
  v11 = v18;
  dispatch thunk of Collection.index(_:offsetBy:)(a1, -1, v10, v18);
  static InterspersedMapSequence<>.Index.separator(previous:next:)(&v13, a1, v19, v14, v11);
  return (*(v17 + 8))(&v13, AssociatedTypeWitness);
}

uint64_t closure #3 in InterspersedMapSequence<>.offsetBackward(_:by:limitedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = a3;
  v30 = v6;
  v24[0] = a2;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a6, a4, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v25 = *(AssociatedTypeWitness - 8);
  v10 = *(v25 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v26 = v24;
  v31 = a4;
  v13 = *(swift_getAssociatedConformanceWitness(a6, a4, AssociatedTypeWitness, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable) + 8);
  v29 = a1;
  if (dispatch thunk of static Equatable.== infix(_:_:)(a1, v24[0], AssociatedTypeWitness, v13))
  {
    v14 = type metadata accessor for InterspersedMapSequence<>.Index(0, v31, v28, a6);
    v15 = v30;
    v16 = 1;
  }

  else
  {
    v17 = v26;
    v18 = a6;
    v27 = a6;
    v19 = v31;
    dispatch thunk of Collection.index(_:offsetBy:)(v29, -1, v31, v18);
    v20 = v19;
    v21 = v28;
    v22 = v27;
    static InterspersedMapSequence<>.Index.separator(previous:next:)(v17, v29, v20, v28, v27);
    (*(v25 + 8))(v17, AssociatedTypeWitness);
    v14 = type metadata accessor for InterspersedMapSequence<>.Index(0, v31, v21, v22);
    v15 = v30;
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v14);
}

void (*protocol witness for Collection.subscript.read in conformance <> InterspersedMapSequence<A, B>(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4))(void (***a1)(void))
{
  v5 = malloc(0x28uLL);
  *a1 = v5;
  v5[4] = InterspersedMapSequence<>.subscript.read(v5, a2, a3, *(a4 - 8));
  return protocol witness for Collection.subscript.read in conformance <> InterspersedMapSequence<A, B>;
}

void (*InterspersedMapSequence<>.subscript.read(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4))(void *a1)
{
  v6 = *(a3 + 24);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  a1[2] = malloc(*(v7 + 64));
  InterspersedMapSequence<>.subscript.getter(a2, a3, a4);
  return InterspersedMapSequence<>.subscript.read;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> InterspersedMapSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance <> InterspersedMapSequence<A, B>(a1, a2, a3);
}

{
  v4 = v3;
  v5 = type metadata accessor for InterspersedMapSequence<>.Index(255, *(a2 + 16), *(a2 + 24), *(a3 - 8));
  v6 = type metadata accessor for Optional(0, v5);
  return __swift_storeEnumTagSinglePayload(v4, 1, 1, v6);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance <> InterspersedMapSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = v3;
  v4 = *(a3 - 8);
  v5 = type metadata accessor for InterspersedMapSequence<>.Index(0, *(a2 + 16), *(a2 + 24), v4);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v12 = v11;
  InterspersedMapSequence<>.index(after:)(a1, a2, v4);
  (*(v6 + 8))(a1, v5);
  return (*(v6 + 32))(a1, v12, v5);
}

uint64_t InterspersedMapSequence<>.index(before:)(void (*a1)(_BYTE *, _BYTE *, uint64_t), uint64_t a2, uint64_t a3)
{
  v45 = v4;
  v49 = a1;
  v46 = v3;
  v42 = a3;
  v5 = *(a3 + 8);
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v5, v6, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v50 = *(AssociatedTypeWitness - 8);
  v8 = v50[8];
  v9 = alloca(v8);
  v10 = alloca(v8);
  v43 = v40;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v51 = v40;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v48 = v40;
  v15 = alloca(v8);
  v16 = alloca(v8);
  v17 = alloca(v8);
  v18 = alloca(v8);
  v41 = v40;
  v19 = *(a2 + 24);
  v52 = v6;
  v47 = v19;
  v44 = v5;
  v20 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, v6, v19, v5);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  (*(v21 + 16))(v40, v49, v20);
  if (swift_getEnumCaseMultiPayload(v40, v20) == 1)
  {
    v25 = AssociatedTypeWitness;
    v26 = &v40[*(swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0) + 48)];
    v27 = v50[4];
    v27(v48, v40, AssociatedTypeWitness);
    v49 = v27;
    v27(v51, v26, AssociatedTypeWitness);
    v28 = v41;
    v29 = v52;
    v30 = v44;
    dispatch thunk of Collection.endIndex.getter(v52, v44);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v30, v29, v25, &protocol requirements base descriptor for Collection, &associated conformance descriptor for Collection.Collection.Index: Comparable);
    LOBYTE(v29) = dispatch thunk of static Equatable.== infix(_:_:)(v51, v28, v25, *(AssociatedConformanceWitness + 8));
    v32 = v28;
    v33 = v50[1];
    v33(v32, v25);
    if (v29)
    {
      v34 = v43;
      v35 = v51;
      dispatch thunk of BidirectionalCollection.index(before:)(v51, v52, v42);
      v33(v35, v25);
      v33(v48, v25);
    }

    else
    {
      v33(v51, v25);
      v34 = v43;
      v49(v43, v48, v25);
    }

    static InterspersedMapSequence<>.Index.element(_:)(v34, v52, v47, v44);
    return v33(v34, v25);
  }

  else
  {
    v36 = v41;
    (v50[4])(v41, v40, AssociatedTypeWitness);
    v37 = v52;
    dispatch thunk of BidirectionalCollection.index(before:)(v36, v52, v42);
    static InterspersedMapSequence<>.Index.separator(previous:next:)(v40, v36, v37, v47, v44);
    v38 = v50[1];
    v38(v40, AssociatedTypeWitness);
    return v38(v36, AssociatedTypeWitness);
  }
}

uint64_t protocol witness for BidirectionalCollection.formIndex(before:) in conformance <> InterspersedMapSequence<A, B>(void (*a1)(_BYTE *, _BYTE *, uint64_t), uint64_t a2, uint64_t a3)
{
  v11[1] = v3;
  v4 = *(a3 - 8);
  v5 = type metadata accessor for InterspersedMapSequence<>.Index(0, *(a2 + 16), *(a2 + 24), *(v4 + 8));
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v12 = v11;
  InterspersedMapSequence<>.index(before:)(a1, a2, v4);
  (*(v6 + 8))(a1, v5);
  return (*(v6 + 32))(a1, v12, v5);
}

uint64_t InterspersedMapSequence<>.Index<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = v3;
  v24 = a3;
  v25 = a1;
  v4 = a2[2];
  v5 = a2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v5, v4, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v26 = *(AssociatedTypeWitness - 8);
  v7 = *(v26 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for InterspersedMapSequence<>.Index.Representation(0, v4, a2[3], v5);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  (*(v11 + 16))(v22, v23, v10);
  if (swift_getEnumCaseMultiPayload(v22, v10) == 1)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2(0, AssociatedTypeWitness, AssociatedTypeWitness, "previous next ", 0);
    v16 = v26;
    (*(v26 + 32))(v22, &v22[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
    v17 = v25;
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)(v17, AssociatedTypeWitness, v24);
    v18 = *(v16 + 8);
    v18(v22, AssociatedTypeWitness);
    return (v18)(v22, AssociatedTypeWitness);
  }

  else
  {
    v20 = v26;
    (*(v26 + 32))(v22, v22, AssociatedTypeWitness);
    v21 = v25;
    Hasher._combine(_:)(0);
    dispatch thunk of Hashable.hash(into:)(v21, AssociatedTypeWitness, v24);
    return (*(v20 + 8))(v22, AssociatedTypeWitness);
  }
}

Swift::Int InterspersedMapSequence<>.Index<>.hashValue.getter(void *a1, uint64_t a2)
{
  Hasher.init(_seed:)(0);
  InterspersedMapSequence<>.Index<>.hash(into:)(v3, a1, a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> InterspersedMapSequence<A, B><>.Index(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  Hasher.init(_seed:)(a1);
  InterspersedMapSequence<>.Index<>.hash(into:)(v5, a2, v3);
  return Hasher._finalize()();
}

uint64_t Sequence.interspersed(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = v4;
  v16 = a3;
  v17 = a1;
  v15[1] = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  (*(v10 + 16))(v15, v4, a2);
  (*(v6 + 16))(v15, v17, AssociatedTypeWitness);
  return InterspersedSequence.init(base:separator:)(v15, v15, a2, v16);
}

uint64_t LazySequenceProtocol.interspersedMap<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a3;
  v18 = v7;
  v20 = a2;
  v17 = a6;
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a7, a5, &protocol requirements base descriptor for LazySequenceProtocol, &associated type descriptor for LazySequenceProtocol.Elements);
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  dispatch thunk of LazySequenceProtocol.elements.getter(a5, a7);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a7, a5, AssociatedTypeWitness, &protocol requirements base descriptor for LazySequenceProtocol, &associated conformance descriptor for LazySequenceProtocol.LazySequenceProtocol.Elements: Sequence);
  InterspersedMapSequence.init(base:transform:separator:)(&v15, v19, v20, v16, v15, AssociatedTypeWitness, v17, AssociatedConformanceWitness);
}

uint64_t variable initialization expression of AdjacentPairsSequence.Iterator.previousElement(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return __swift_storeEnumTagSinglePayload(v3, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of WindowsOfCountCollection.endOfFirstWindow(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a2, a1, &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  return __swift_storeEnumTagSinglePayload(v3, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of EitherSequence.Iterator.left(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  return __swift_storeEnumTagSinglePayload(v4, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of EitherSequence.Iterator.right(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a4, a2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  return __swift_storeEnumTagSinglePayload(v5, 1, 1, AssociatedTypeWitness);
}

void *variable initialization expression of UniquedSequence.Iterator.seen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static Array._allocateUninitialized(_:)(0, a2);
  if (Array._getCount()())
  {
    return Set.init(_nonEmptyArrayLiteral:)(v5, a2, a4);
  }

  v5;
  return &_swiftEmptySetSingleton;
}

uint64_t variable initialization expression of Product2Sequence.Iterator.element1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, a3, a1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return __swift_storeEnumTagSinglePayload(v4, 1, 1, AssociatedTypeWitness);
}

void *Set.init(_nonEmptyArrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v51 = *(a2 - 8);
  v6 = *(v51 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v36;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v50 = &v36;
  v43 = v6;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v49 = &v36;
  v13 = Array.count.getter();
  v46 = a3;
  if (v13)
  {
    v14 = v13;
    type metadata accessor for _SetStorage(0, a2, a3);
    v15 = static _SetStorage.allocate(capacity:)(v14);
  }

  else
  {
    v15 = &_swiftEmptySetSingleton;
  }

  v41 = Array._getCount()();
  if (v41)
  {
    v16 = 0;
    v42 = a1;
    v48 = a2;
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)(v16, IsNativeType, v5, v4);
      if (IsNativeType)
      {
        v18 = v5 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + v16 * *(v51 + 72);
        v45 = *(v51 + 16);
        v45(v49, v18, v4);
      }

      else
      {
        v33 = _ArrayBuffer._getElementSlowPath(_:)(v16, v5, v4);
        if (v43 != 8)
        {
          BUG();
        }

        v34 = v33;
        v37 = v33;
        v45 = *(v51 + 16);
        v45(v49, &v37, v4);
        swift_unknownObjectRelease(v34);
      }

      v19 = __OFADD__(1, v16);
      v20 = v16 + 1;
      if (v19)
      {
        BUG();
      }

      v47 = v20;
      v40 = *(v51 + 32);
      v40(v50, v49, v4);
      v21 = v46;
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)(v15[5], v4, v46);
      v38 = ~(-1 << *(v15 + 32));
      v23 = v38 & v22;
      v24 = 1 << (v38 & v22);
      v25 = (v38 & v22) >> 6;
      v26 = v15[v25 + 7];
      v27 = _bittest64(&v26, v23);
      v44 = *(v51 + 72);
      if (v27)
      {
        while (1)
        {
          v28 = v39;
          v29 = v48;
          v45(v39, v15[6] + v23 * v44, v48);
          v52 = dispatch thunk of static Equatable.== infix(_:_:)(v28, v50, v29, *(v21 + 8));
          v30 = *(v51 + 8);
          v30(v28, v29);
          if (v52)
          {
            break;
          }

          v23 = v38 & (v23 + 1);
          v25 = v23 >> 6;
          v26 = v15[(v23 >> 6) + 7];
          v24 = 1 << v23;
          v21 = v46;
          if (!_bittest64(&v26, v23))
          {
            goto LABEL_12;
          }
        }

        v4 = v48;
        v30(v50, v48);
        v16 = v47;
      }

      else
      {
LABEL_12:
        v15[v25 + 7] = v26 | v24;
        v4 = v48;
        v40((v15[6] + v23 * v44), v50, v48);
        v31 = v15[2];
        v19 = __OFADD__(1, v31);
        v32 = v31 + 1;
        v16 = v47;
        if (v19)
        {
          BUG();
        }

        v15[2] = v32;
      }

      v5 = v42;
    }

    while (v16 != v41);
  }

  v5;
  return v15;
}

uint64_t base witness table accessor for Sequence in <> InterspersedSequence<A>(uint64_t a1)
{
  return swift_getWitnessTable(&protocol conformance descriptor for InterspersedSequence<A>, a1);
}

{
  return base witness table accessor for Sequence in <> InterspersedSequence<A>(a1);
}

uint64_t base witness table accessor for Collection in <> InterspersedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  return swift_getWitnessTable(&protocol conformance descriptor for <> InterspersedSequence<A>, a1);
}

{
  return associated type witness table accessor for LazySequenceProtocol.Elements : Collection in <> InterspersedSequence<A>(a1, a2, a3);
}

uint64_t base witness table accessor for Collection in <> InterspersedMapSequence<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  return swift_getWitnessTable(&protocol conformance descriptor for <> InterspersedMapSequence<A, B>, a1);
}

{
  return associated type witness table accessor for LazySequenceProtocol.Elements : Collection in <> InterspersedMapSequence<A, B>(a1, a2, a3);
}

uint64_t associated type witness table accessor for Collection.Indices : BidirectionalCollection in <> InterspersedSequence<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  swift_getWitnessTable(a4, a2);
  return swift_getWitnessTable(a5, a1);
}

uint64_t type metadata completion function for InterspersedSequence(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v7[0] = *(v1 - 8) + 64;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, *(a1 + 24), v1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
    v2 = AssociatedTypeWitness;
    if (v5 <= 0x3F)
    {
      v7[1] = *(AssociatedTypeWitness - 8) + 64;
      v2 = 0;
      swift_initStructMetadata(a1, 0, 2, v7, a1 + 32);
    }
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for InterspersedSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v8 | *(v4 + 80));
  if (v9 > 7 || ((v8 | *(v4 + 80)) & 0x100000) != 0 || (v10 = v8 + v5, v11 = ~v8, *(v7 + 64) + (v11 & v10) > 0x18))
  {
    v13 = *a2;
    *a1 = *a2;
    v12 = (v13 + ((v9 + 16) & ~v9));
    v13;
  }

  else
  {
    v12 = a1;
    v15 = AssociatedTypeWitness;
    (*(v4 + 16))(a1, a2, v3);
    (*(v7 + 16))(v11 & (a1 + v10), v11 & (a2 + v10), v15);
  }

  return v12;
}

uint64_t destroy for InterspersedSequence(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  (*(v3 + 8))(a1, v2);
  v4 = *(v3 + 64) + a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a2 + 24), v2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  return (*(*(AssociatedTypeWitness - 8) + 8))((*(*(AssociatedTypeWitness - 8) + 80) + v4) & ~*(*(AssociatedTypeWitness - 8) + 80), AssociatedTypeWitness);
}

uint64_t initializeWithCopy for InterspersedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 16))(~*(v8 + 80) & (*(v8 + 80) + v6 + a1), ~*(v8 + 80) & (a2 + *(v8 + 80) + v6), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithCopy for InterspersedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 24))(a1, a2, v4);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 24))(~*(v8 + 80) & (*(v8 + 80) + v6 + a1), ~*(v8 + 80) & (a2 + *(v8 + 80) + v6), AssociatedTypeWitness);
  return a1;
}

uint64_t initializeWithTake for InterspersedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 32))(a1, a2, v4);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 32))(~*(v8 + 80) & (*(v8 + 80) + v6 + a1), ~*(v8 + 80) & (a2 + *(v8 + 80) + v6), AssociatedTypeWitness);
  return a1;
}

uint64_t assignWithTake for InterspersedSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  (*(v5 + 40))(a1, a2, v4);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(AssociatedTypeWitness - 8);
  (*(v8 + 40))(~*(v8 + 80) & (*(v8 + 80) + v6 + a1), ~*(v8 + 80) & (a2 + *(v8 + 80) + v6), AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for InterspersedSequence(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v25 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), v5, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v7;
  if (v10 > v7)
  {
    v11 = *(v9 + 84);
  }

  if (!a2)
  {
    return v25;
  }

  v12 = ~*(v9 + 80);
  v13 = *(v6 + 64) + *(v9 + 80);
  v14 = a2 <= v11;
  v15 = a2 - v11;
  if (v14)
  {
    goto LABEL_22;
  }

  v16 = *(v9 + 64) + (v12 & v13);
  if (v16 > 3)
  {
    goto LABEL_6;
  }

  v18 = ((~(-1 << (8 * v16)) + v15) >> (8 * v16)) + 1;
  if (v18 > 0xFFFF)
  {
    v17 = *&a1[v16];
    goto LABEL_13;
  }

  if (v18 > 0xFF)
  {
    v17 = *&a1[v16];
LABEL_13:
    if (v17)
    {
      v19 = (v17 - 1) << (8 * v16);
      v20 = 0;
      if (v16 >= 4)
      {
        v19 = 0;
      }

      if (v16)
      {
        v21 = 4;
        if (v16 < 4)
        {
          v21 = *(v9 + 64) + (v12 & v13);
        }

        switch(v21)
        {
          case 1:
            v20 = *a1;
            break;
          case 2:
            v20 = *a1;
            break;
          case 3:
            v20 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v20 = *a1;
            break;
        }
      }

      return v11 + (v19 | v20) + 1;
    }

    goto LABEL_21;
  }

  if (v18 >= 2)
  {
LABEL_6:
    v17 = a1[v16];
    goto LABEL_13;
  }

LABEL_21:
  if (!v11)
  {
    return v25;
  }

LABEL_22:
  if (v7 >= v10)
  {
    v22 = a1;
    v10 = v7;
    v23 = v5;
  }

  else
  {
    v22 = v12 & &a1[v13];
    v23 = AssociatedTypeWitness;
  }

  return __swift_getEnumTagSinglePayload(v22, v10, v23);
}

uint64_t storeEnumTagSinglePayload for InterspersedSequence(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v28 = 0;
  result = swift_getAssociatedTypeWitness(0, *(a4 + 24), v5, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  v11 = v7;
  if (v10 > v7)
  {
    v11 = *(v9 + 84);
  }

  v12 = ~*(v9 + 80);
  v13 = *(v6 + 64) + *(v9 + 80);
  v14 = *(v9 + 64) + (v12 & v13);
  v15 = a3 <= v11;
  v16 = a3 - v11;
  if (!v15)
  {
    if (v14 > 3)
    {
      v25 = 1;
LABEL_11:
      v28 = v25;
      goto LABEL_12;
    }

    v17 = ((~(-1 << (8 * v14)) + v16) >> (8 * v14)) + 1;
    if (v17 > 0xFFFF)
    {
      v25 = 4;
      goto LABEL_11;
    }

    v18 = 0;
    if (v17 >= 2)
    {
      v18 = ((v17 | 0x200000000uLL) - 256) >> 32;
    }

    v28 = v18;
  }

LABEL_12:
  if (v11 < a2)
  {
    v19 = a2 + ~v11;
    if (v14 >= 4)
    {
      v20 = 1;
      __bzero(a1, v14);
      *a1 = v19;
      v21 = a1;
      result = v28;
      switch(v28)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_31;
        case 2u:
          goto LABEL_33;
        case 3u:
          goto LABEL_35;
        case 4u:
          goto LABEL_32;
        case 5u:
          goto jpt_31CF6D;
      }
    }

    v20 = (v19 >> (8 * v14)) + 1;
    if (v14)
    {
      v22 = v19 & ~(-1 << (8 * v14));
      __bzero(a1, v14);
      if (v14 != 3)
      {
        if (v14 == 2)
        {
          v21 = a1;
          *a1 = v22;
          result = v28;
          switch(v28)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_31;
            case 2u:
              goto LABEL_33;
            case 3u:
              goto LABEL_35;
            case 4u:
              goto LABEL_32;
            case 5u:
              goto jpt_31CF6D;
          }
        }

        v21 = a1;
        *a1 = v19;
        result = v28;
        switch(v28)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_31;
          case 2u:
            goto LABEL_33;
          case 3u:
            goto LABEL_35;
          case 4u:
            goto LABEL_32;
          case 5u:
            goto jpt_31CF6D;
        }
      }

      v21 = a1;
      *a1 = v22;
      *(a1 + 2) = BYTE2(v22);
      result = v28;
      switch(v28)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_31;
        case 2u:
          goto LABEL_33;
        case 3u:
          goto LABEL_35;
        case 4u:
          goto LABEL_32;
        case 5u:
          goto jpt_31CF6D;
      }
    }

    result = v28;
    v21 = a1;
    switch(v28)
    {
      case 0u:
        return result;
      case 1u:
LABEL_31:
        *(v21 + v14) = v20;
        return result;
      case 2u:
LABEL_33:
        *(v21 + v14) = v20;
        return result;
      case 3u:
        goto LABEL_35;
      case 4u:
LABEL_32:
        *(v21 + v14) = v20;
        return result;
      case 5u:
jpt_31CF6D:
        JUMPOUT(0x31D094);
    }
  }

  switch(v28)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v14) = 0;
      break;
    case 2u:
      *(a1 + v14) = 0;
      break;
    case 3u:
LABEL_35:
      BUG();
    case 4u:
      *(a1 + v14) = 0;
      break;
  }

  if (a2)
  {
    if (v7 >= v10)
    {
      v23 = a1;
      v10 = v7;
      v24 = v5;
    }

    else
    {
      v23 = v12 & (a1 + v13);
      v24 = result;
    }

    return __swift_storeEnumTagSinglePayload(v23, a2, v10, v24);
  }

  return result;
}

uint64_t type metadata completion function for InterspersedSequence.Iterator(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, v2, v1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v4 = AssociatedTypeWitness;
  if (v5 <= 0x3F)
  {
    v12[0] = *(AssociatedTypeWitness - 8) + 64;
    v6 = swift_getAssociatedTypeWitness(319, v2, v1, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
    v4 = v6;
    if (v8 <= 0x3F)
    {
      v12[1] = *(v6 - 8) + 64;
      v9 = type metadata accessor for InterspersedSequence.Iterator.State(319, v1, v2, v7);
      v4 = v9;
      if (v10 <= 0x3F)
      {
        v12[2] = *(v9 - 8) + 64;
        v4 = 0;
        swift_initStructMetadata(a1, 0, 3, v12, a1 + 32);
      }
    }
  }

  return v4;
}

uint64_t *initializeBufferWithCopyOfBuffer for InterspersedSequence.Iterator(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  v7 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(v8 + 84);
  v12 = v10;
  if (v11 <= 1)
  {
    if (v10 <= 3)
    {
      v13 = (~(-1 << (8 * v10)) - v11 + 2) >> (8 * v10);
      if (v13 <= 0xFFFE)
      {
        v14 = 0;
        if (v13)
        {
          v14 = 2 - (v13 < 0xFF);
        }

        goto LABEL_10;
      }

      v31 = 4;
    }

    else
    {
      v31 = 1;
    }

    v14 = v31;
LABEL_10:
    v12 = v10 + v14;
  }

  v15 = v5;
  v16 = v9 | *(v5 + 80);
  v17 = (v9 | *(v5 + 80));
  if (v17 > 7 || (v18 = ~v9, v19 = v9 + v6, v20 = v10 + v9, (v18 & (v20 + (v18 & v19))) + v12 > 0x18) || (v16 & 0x100000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;

    return (v27 + ((v17 + 16) & ~v17));
  }

  v35 = *(v8 + 84);
  v34 = *(v8 + 64);
  v21 = AssociatedTypeWitness;
  v37 = v7;
  v33 = *(v7 - 8);
  (*(v15 + 16))(a1, a2, v21);
  v22 = v18 & (a1 + v19);
  v23 = v18 & (a2 + v19);
  v39 = *(v33 + 16);
  v39(v22, v23, v37);
  v24 = (v18 & (v20 + v22));
  v25 = (v18 & (v20 + v23));
  if (__swift_getEnumTagSinglePayload(v25, 2, v37))
  {
    if (v35 > 1)
    {
      v26 = v10;
LABEL_28:
      memcpy(v24, v25, v26);
      return a1;
    }

    if (v10 <= 3)
    {
      v29 = (~(-1 << (8 * v10)) - v35 + 2) >> (8 * v10);
      if (v29 <= 0xFFFE)
      {
        v30 = 0;
        if (v29)
        {
          v30 = 2 - (v29 < 0xFF);
        }

        goto LABEL_27;
      }

      v32 = 4;
    }

    else
    {
      v32 = 1;
    }

    v30 = v32;
LABEL_27:
    v26 = v30 + v10;
    goto LABEL_28;
  }

  v39(v24, v25, v37);
  __swift_storeEnumTagSinglePayload(v24, 0, 2, v37);
  return a1;
}

uint64_t destroy for InterspersedSequence.Iterator(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v3, v2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v5 = *(AssociatedTypeWitness - 8);
  (*(v5 + 8))(a1, AssociatedTypeWitness);
  v6 = *(v5 + 64) + a1;
  v7 = swift_getAssociatedTypeWitness(0, v3, v2, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ~v9 & (v9 + v6);
  v13 = *(v8 + 8);
  v13(v10, v7);
  v11 = ~v9 & (v10 + *(v8 + 64) + v9);
  result = __swift_getEnumTagSinglePayload(v11, 2, v7);
  if (!result)
  {
    return v13(v11, v7);
  }

  return result;
}

uint64_t initializeWithCopy for InterspersedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(v8 - 8);
  v24 = v8;
  v10 = *(v9 + 80);
  v11 = v10 + v7;
  v12 = ~v10;
  v13 = ~v10 & (v11 + a1);
  v14 = ~v10 & (a2 + v11);
  v25 = *(v9 + 16);
  v25(v13, v14, v8);
  v26 = *(v9 + 64);
  v15 = v26 + v10;
  v16 = (v12 & (v15 + v13));
  v17 = (v12 & (v14 + v15));
  if (__swift_getEnumTagSinglePayload(v17, 2, v24))
  {
    v18 = *(v9 + 84);
    if (v18 > 1)
    {
      v19 = v26;
LABEL_14:
      memcpy(v16, v17, v19);
      return a1;
    }

    if (v26 <= 3)
    {
      v20 = ((1 << (8 * v26)) - v18 + 1) >> (8 * v26);
      if (v20 <= 0xFFFE)
      {
        v21 = 0;
        if (v20)
        {
          v21 = 2 - (v20 < 0xFF);
        }

        goto LABEL_13;
      }

      v23 = 4;
    }

    else
    {
      v23 = 1;
    }

    v21 = v23;
LABEL_13:
    v19 = v21 + v26;
    goto LABEL_14;
  }

  v25(v16, v17, v24);
  __swift_storeEnumTagSinglePayload(v16, 0, 2, v24);
  return a1;
}

uint64_t assignWithCopy for InterspersedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 24))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(v8 - 8);
  v24 = v8;
  v10 = *(v9 + 80);
  v11 = v10 + v7;
  v12 = ~v10 & (v11 + a1);
  v13 = ~v10 & (a2 + v11);
  v25 = *(v9 + 24);
  v25(v12, v13, v8);
  v27 = v9;
  v26 = *(v9 + 64);
  v14 = (~v10 & (v13 + v26 + v10));
  v15 = (~v10 & (v26 + v10 + v12));
  LODWORD(v12) = __swift_getEnumTagSinglePayload(v15, 2, v24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 2, v24);
  if (v12)
  {
    if (EnumTagSinglePayload)
    {
      v18 = *(v27 + 84);
      goto LABEL_6;
    }

    (*(v27 + 16))(v15, v14, v24);
    __swift_storeEnumTagSinglePayload(v15, 0, 2, v24);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v27 + 8))(v15, v24, v17, v25);
      v18 = *(v27 + 84);
LABEL_6:
      if (v18 > 1)
      {
        v19 = v26;
LABEL_19:
        memcpy(v15, v14, v19);
        return a1;
      }

      if (v26 <= 3)
      {
        v20 = ((1 << (8 * v26)) - v18 + 1) >> (8 * v26);
        if (v20 <= 0xFFFE)
        {
          v21 = 0;
          if (v20)
          {
            v21 = 2 - (v20 < 0xFF);
          }

          goto LABEL_18;
        }

        v23 = 4;
      }

      else
      {
        v23 = 1;
      }

      v21 = v23;
LABEL_18:
      v19 = v21 + v26;
      goto LABEL_19;
    }

    v25(v15, v14, v24);
  }

  return a1;
}

uint64_t initializeWithTake for InterspersedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(v8 - 8);
  v24 = v8;
  v10 = *(v9 + 80);
  v11 = v10 + v7;
  v12 = ~v10;
  v13 = ~v10 & (v11 + a1);
  v14 = ~v10 & (a2 + v11);
  v25 = *(v9 + 32);
  v25(v13, v14, v8);
  v26 = *(v9 + 64);
  v15 = v26 + v10;
  v16 = (v12 & (v15 + v13));
  v17 = (v12 & (v14 + v15));
  if (__swift_getEnumTagSinglePayload(v17, 2, v24))
  {
    v18 = *(v9 + 84);
    if (v18 > 1)
    {
      v19 = v26;
LABEL_14:
      memcpy(v16, v17, v19);
      return a1;
    }

    if (v26 <= 3)
    {
      v20 = ((1 << (8 * v26)) - v18 + 1) >> (8 * v26);
      if (v20 <= 0xFFFE)
      {
        v21 = 0;
        if (v20)
        {
          v21 = 2 - (v20 < 0xFF);
        }

        goto LABEL_13;
      }

      v23 = 4;
    }

    else
    {
      v23 = 1;
    }

    v21 = v23;
LABEL_13:
    v19 = v21 + v26;
    goto LABEL_14;
  }

  v25(v16, v17, v24);
  __swift_storeEnumTagSinglePayload(v16, 0, 2, v24);
  return a1;
}

uint64_t assignWithTake for InterspersedSequence.Iterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  (*(v6 + 40))(a1, a2, AssociatedTypeWitness);
  v7 = *(v6 + 64);
  v8 = swift_getAssociatedTypeWitness(0, v4, v3, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(v8 - 8);
  v24 = v8;
  v10 = *(v9 + 80);
  v11 = v10 + v7;
  v12 = ~v10 & (v11 + a1);
  v13 = ~v10 & (a2 + v11);
  v25 = *(v9 + 40);
  v25(v12, v13, v8);
  v27 = v9;
  v26 = *(v9 + 64);
  v14 = (~v10 & (v13 + v26 + v10));
  v15 = (~v10 & (v26 + v10 + v12));
  LODWORD(v12) = __swift_getEnumTagSinglePayload(v15, 2, v24);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 2, v24);
  if (v12)
  {
    if (EnumTagSinglePayload)
    {
      v18 = *(v27 + 84);
      goto LABEL_6;
    }

    (*(v27 + 32))(v15, v14, v24);
    __swift_storeEnumTagSinglePayload(v15, 0, 2, v24);
  }

  else
  {
    if (EnumTagSinglePayload)
    {
      (*(v27 + 8))(v15, v24, v17, v25);
      v18 = *(v27 + 84);
LABEL_6:
      if (v18 > 1)
      {
        v19 = v26;
LABEL_19:
        memcpy(v15, v14, v19);
        return a1;
      }

      if (v26 <= 3)
      {
        v20 = ((1 << (8 * v26)) - v18 + 1) >> (8 * v26);
        if (v20 <= 0xFFFE)
        {
          v21 = 0;
          if (v20)
          {
            v21 = 2 - (v20 < 0xFF);
          }

          goto LABEL_18;
        }

        v23 = 4;
      }

      else
      {
        v23 = 1;
      }

      v21 = v23;
LABEL_18:
      v19 = v21 + v26;
      goto LABEL_19;
    }

    v25(v15, v14, v24);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for InterspersedSequence.Iterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v5, v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = v5;
  v8 = *(v6 + 84);
  v9 = 0;
  v10 = swift_getAssociatedTypeWitness(0, v7, v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = v8;
  if (v12 > v8)
  {
    v13 = *(v11 + 84);
  }

  v14 = v12 - 2;
  if (v12 < 2)
  {
    v14 = 0;
  }

  if (v14 <= v13)
  {
    v14 = v13;
  }

  v15 = *(v11 + 64);
  v16 = v15;
  if (v12 <= 1)
  {
    if (v15 <= 3)
    {
      v17 = (~(-1 << (8 * v15)) - v12 + 2) >> (8 * v15);
      if (v17 <= 0xFFFE)
      {
        v18 = 0;
        if (v17)
        {
          v18 = 2 - (v17 < 0xFF);
        }

        goto LABEL_16;
      }

      v34 = 4;
    }

    else
    {
      v34 = 1;
    }

    v18 = v34;
LABEL_16:
    v16 = v15 + v18;
  }

  if (!a2)
  {
    return v9;
  }

  v19 = *(v11 + 80);
  v20 = ~v19;
  v21 = v19 + v15;
  v22 = *(v6 + 64) + v19;
  v23 = a2 <= v14;
  v24 = a2 - v14;
  if (v23)
  {
    goto LABEL_36;
  }

  v25 = (v20 & (v21 + (v20 & v22))) + v16;
  if (v25 > 3)
  {
LABEL_20:
    v26 = a1[v25];
    goto LABEL_27;
  }

  v27 = ((~(-1 << (8 * v25)) + v24) >> (8 * v25)) + 1;
  if (v27 > 0xFFFF)
  {
    v26 = *&a1[v25];
  }

  else
  {
    if (v27 <= 0xFF)
    {
      if (v27 < 2)
      {
        goto LABEL_35;
      }

      goto LABEL_20;
    }

    v26 = *&a1[v25];
  }

LABEL_27:
  if (v26)
  {
    v28 = (v26 - 1) << (8 * v25);
    v29 = 0;
    if (v25 >= 4)
    {
      v28 = 0;
    }

    if (v25)
    {
      v30 = 4;
      if (v25 < 4)
      {
        v30 = v25;
      }

      switch(v30)
      {
        case 1:
          v29 = *a1;
          break;
        case 2:
          v29 = *a1;
          break;
        case 3:
          v29 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v29 = *a1;
          break;
      }
    }

    return v14 + (v28 | v29) + 1;
  }

LABEL_35:
  if (!v14)
  {
    return v9;
  }

LABEL_36:
  if (v8 == v14)
  {
    return __swift_getEnumTagSinglePayload(a1, v8, AssociatedTypeWitness);
  }

  v32 = v20 & &a1[v22];
  if (v12 != v14)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20 & (v32 + v21), v12, v10);
    v9 = 0;
    if (EnumTagSinglePayload >= 3)
    {
      return EnumTagSinglePayload - 2;
    }

    return v9;
  }

  return __swift_getEnumTagSinglePayload(v32, v12, v10);
}

uint64_t storeEnumTagSinglePayload for InterspersedSequence.Iterator(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v5 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, v5, v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Iterator);
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness(0, v5, v4, &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  v42 = v7;
  if (v10 > v7)
  {
    v7 = *(v9 + 84);
  }

  v11 = v10 - 2;
  v43 = 0;
  if (v10 < 2)
  {
    v11 = 0;
  }

  if (v11 > v7)
  {
    v7 = v11;
  }

  v12 = *(v9 + 80);
  v13 = ~v12;
  v14 = v12 + *(v6 + 64);
  v15 = ~v12 & v14;
  v16 = *(v9 + 64);
  v17 = v16 + v12;
  v18 = v13 & (v17 + v15);
  v19 = v16;
  if (v10 <= 1)
  {
    if (v16 <= 3)
    {
      v20 = (~(-1 << (8 * v16)) - v10 + 2) >> (8 * v16);
      if (v20 <= 0xFFFE)
      {
        v21 = 0;
        if (v20)
        {
          v21 = 2 - (v20 < 0xFF);
        }

        goto LABEL_16;
      }

      v37 = 4;
    }

    else
    {
      v37 = 1;
    }

    v21 = v37;
LABEL_16:
    v19 = v16 + v21;
  }

  v22 = v18 + v19;
  v23 = a2;
  if (a3 > v7)
  {
    if (v22 <= 3)
    {
      v24 = ((~(-1 << (8 * v22)) + a3 - v7) >> (8 * v22)) + 1;
      v43 = 4;
      if (v24 <= 0xFFFF)
      {
        v25 = 0;
        if (v24 >= 2)
        {
          v25 = ((v24 | 0x200000000uLL) - 256) >> 32;
        }

        v43 = v25;
      }
    }

    else
    {
      v43 = 1;
    }
  }

  if (v7 < a2)
  {
    v26 = a2 + ~v7;
    if (v22 >= 4)
    {
      v27 = 1;
      __bzero(a1, v22);
      *a1 = v26;
      result = v43;
      switch(v43)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_45;
        case 2u:
          goto LABEL_47;
        case 3u:
          goto LABEL_70;
        case 4u:
          goto LABEL_46;
        case 5u:
          goto jpt_31DEB1;
      }
    }

    v27 = (v26 >> (8 * v22)) + 1;
    if (v22)
    {
      v28 = v26 & ~(-1 << (8 * v22));
      __bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v28;
          result = v43;
          switch(v43)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_45;
            case 2u:
              goto LABEL_47;
            case 3u:
              goto LABEL_70;
            case 4u:
              goto LABEL_46;
            case 5u:
              goto jpt_31DEB1;
          }
        }

        *a1 = v26;
        result = v43;
        switch(v43)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_45;
          case 2u:
            goto LABEL_47;
          case 3u:
            goto LABEL_70;
          case 4u:
            goto LABEL_46;
          case 5u:
            goto jpt_31DEB1;
        }
      }

      *a1 = v28;
      *(a1 + 2) = BYTE2(v28);
      result = v43;
      switch(v43)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_45;
        case 2u:
          goto LABEL_47;
        case 3u:
          goto LABEL_70;
        case 4u:
          goto LABEL_46;
        case 5u:
          goto jpt_31DEB1;
      }
    }

    result = v43;
    switch(v43)
    {
      case 0u:
        return result;
      case 1u:
LABEL_45:
        result = a1;
        *(a1 + v22) = v27;
        return result;
      case 2u:
LABEL_47:
        result = a1;
        *(a1 + v22) = v27;
        return result;
      case 3u:
        goto LABEL_70;
      case 4u:
LABEL_46:
        result = a1;
        *(a1 + v22) = v27;
        return result;
      case 5u:
jpt_31DEB1:
        JUMPOUT(0x31E0F4);
    }
  }

  switch(v43)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v22) = 0;
      break;
    case 2u:
      *(a1 + v22) = 0;
      break;
    case 3u:
LABEL_70:
      BUG();
    case 4u:
      *(a1 + v22) = 0;
      break;
  }

  if (a2)
  {
    if (v42 == v7)
    {
      return __swift_storeEnumTagSinglePayload(a1, a2, v42, AssociatedTypeWitness);
    }

    v29 = v13 & (a1 + v14);
    if (v10 == v7)
    {
      return __swift_storeEnumTagSinglePayload(v29, v23, v10, result);
    }

    v30 = v29 + v17;
    if (v10 > 1)
    {
LABEL_56:
      v33 = (v13 & v30);
      if (v11 < a2)
      {
        v34 = ~(-1 << (8 * v16));
        if (v16 >= 4)
        {
          v34 = -1;
        }

        if (v16)
        {
          v35 = (a2 + ~v11) & v34;
          v36 = 4;
          if (v16 < 4)
          {
            v36 = v16;
          }

          result = __bzero(v33, v16);
          switch(v36)
          {
            case 1:
              *v33 = v35;
              break;
            case 2:
              *v33 = v35;
              break;
            case 3:
              *v33 = v35;
              v33[2] = BYTE2(v35);
              break;
            case 4:
              *v33 = v35;
              break;
          }
        }

        return result;
      }

      v23 = a2 + 2;
      v29 = v33;
      return __swift_storeEnumTagSinglePayload(v29, v23, v10, result);
    }

    if (v16 <= 3)
    {
      v31 = (~(-1 << (8 * v16)) - v10 + 2) >> (8 * v16);
      if (v31 <= 0xFFFE)
      {
        v32 = 0;
        if (v31)
        {
          v32 = 2 - (v31 < 0xFF);
        }

        goto LABEL_55;
      }

      v38 = 4;
    }

    else
    {
      v38 = 1;
    }

    v32 = v38;
LABEL_55:
    v16 = (v16 + v32);
    goto LABEL_56;
  }

  return result;
}

uint64_t type metadata completion function for InterspersedSequence.Iterator.State(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v2 = AssociatedTypeWitness;
  if (v3 <= 0x3F)
  {
    v2 = 0;
    swift_initEnumMetadataSinglePayload(a1, 0, *(AssociatedTypeWitness - 8) + 64, 2);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for InterspersedSequence.Iterator.State(uint64_t *__dst, uint64_t *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v7;
  if (v6 <= 1)
  {
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v9 <= 0xFFFE)
      {
        v10 = 0;
        if (v9)
        {
          v10 = 2 - (v9 < 0xFF);
        }

        goto LABEL_10;
      }

      v17 = 4;
    }

    else
    {
      v17 = 1;
    }

    v10 = v17;
LABEL_10:
    v8 = v7 + v10;
  }

  v11 = *(v5 + 80);
  if (v11 > 7u || v8 > 0x18 || (v11 & 0x100000) != 0)
  {
    v12 = *a2;
    *__dst = *a2;
    v13 = (v12 + ((v11 + 16) & ~v11));

    return v13;
  }

  v19 = *(v5 + 84);
  if (!__swift_getEnumTagSinglePayload(a2, 2, AssociatedTypeWitness))
  {
    v13 = __dst;
    (*(v5 + 16))(__dst, a2, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(__dst, 0, 2, AssociatedTypeWitness);
    return v13;
  }

  if (v6 <= 1)
  {
    if (v7 <= 3)
    {
      v15 = (~(-1 << (8 * v7)) - v19 + 2) >> (8 * v7);
      if (v15 <= 0xFFFE)
      {
        v16 = 0;
        if (v15)
        {
          v16 = 2 - (v15 < 0xFF);
        }

        goto LABEL_27;
      }

      v18 = 4;
    }

    else
    {
      v18 = 1;
    }

    v16 = v18;
LABEL_27:
    v7 += v16;
  }

  return memcpy(__dst, a2, v7);
}

uint64_t destroy for InterspersedSequence.Iterator.State(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  result = __swift_getEnumTagSinglePayload(a1, 2, AssociatedTypeWitness);
  if (!result)
  {
    return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  }

  return result;
}

void *initializeWithCopy for InterspersedSequence.Iterator.State(void *__dst, void *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__src, 2, AssociatedTypeWitness);
  v6 = *(AssociatedTypeWitness - 8);
  if (!EnumTagSinglePayload)
  {
    (*(v6 + 16))(__dst, __src, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(__dst, 0, 2, AssociatedTypeWitness);
    return __dst;
  }

  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v10 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v10 <= 0xFFFE)
      {
        v11 = 0;
        if (v10)
        {
          v11 = 2 - (v10 < 0xFF);
        }

        goto LABEL_12;
      }

      v12 = 4;
    }

    else
    {
      v12 = 1;
    }

    v11 = v12;
LABEL_12:
    v8 += v11;
  }

  return memcpy(__dst, __src, v8);
}

void *assignWithCopy for InterspersedSequence.Iterator.State(void *__dst, void *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 2, AssociatedTypeWitness);
  v6 = __swift_getEnumTagSinglePayload(__src, 2, AssociatedTypeWitness);
  v7 = *(AssociatedTypeWitness - 8);
  if (EnumTagSinglePayload)
  {
    if (!v6)
    {
      (*(v7 + 16))(__dst, __src, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, AssociatedTypeWitness);
      return __dst;
    }
  }

  else
  {
    if (!v6)
    {
      (*(v7 + 24))(__dst, __src, AssociatedTypeWitness);
      return __dst;
    }

    (*(v7 + 8))(__dst, AssociatedTypeWitness);
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 1)
  {
    if (v9 <= 3)
    {
      v10 = (~(-1 << (8 * v9)) - v8 + 2) >> (8 * v9);
      if (v10 <= 0xFFFE)
      {
        v11 = 0;
        if (v10)
        {
          v11 = 2 - (v10 < 0xFF);
        }

        goto LABEL_17;
      }

      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    v11 = v13;
LABEL_17:
    v9 += v11;
  }

  return memcpy(__dst, __src, v9);
}

void *initializeWithTake for InterspersedSequence.Iterator.State(void *__dst, void *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__src, 2, AssociatedTypeWitness);
  v6 = *(AssociatedTypeWitness - 8);
  if (!EnumTagSinglePayload)
  {
    (*(v6 + 32))(__dst, __src, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(__dst, 0, 2, AssociatedTypeWitness);
    return __dst;
  }

  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 1)
  {
    if (v8 <= 3)
    {
      v10 = (~(-1 << (8 * v8)) - v7 + 2) >> (8 * v8);
      if (v10 <= 0xFFFE)
      {
        v11 = 0;
        if (v10)
        {
          v11 = 2 - (v10 < 0xFF);
        }

        goto LABEL_12;
      }

      v12 = 4;
    }

    else
    {
      v12 = 1;
    }

    v11 = v12;
LABEL_12:
    v8 += v11;
  }

  return memcpy(__dst, __src, v8);
}

void *assignWithTake for InterspersedSequence.Iterator.State(void *__dst, void *__src, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(__dst, 2, AssociatedTypeWitness);
  v6 = __swift_getEnumTagSinglePayload(__src, 2, AssociatedTypeWitness);
  v7 = *(AssociatedTypeWitness - 8);
  if (EnumTagSinglePayload)
  {
    if (!v6)
    {
      (*(v7 + 32))(__dst, __src, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(__dst, 0, 2, AssociatedTypeWitness);
      return __dst;
    }
  }

  else
  {
    if (!v6)
    {
      (*(v7 + 40))(__dst, __src, AssociatedTypeWitness);
      return __dst;
    }

    (*(v7 + 8))(__dst, AssociatedTypeWitness);
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 1)
  {
    if (v9 <= 3)
    {
      v10 = (~(-1 << (8 * v9)) - v8 + 2) >> (8 * v9);
      if (v10 <= 0xFFFE)
      {
        v11 = 0;
        if (v10)
        {
          v11 = 2 - (v10 < 0xFF);
        }

        goto LABEL_17;
      }

      v13 = 4;
    }

    else
    {
      v13 = 1;
    }

    v11 = v13;
LABEL_17:
    v9 += v11;
  }

  return memcpy(__dst, __src, v9);
}

uint64_t getEnumTagSinglePayload for InterspersedSequence.Iterator.State(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 2;
  v10 = *(v7 + 64);
  if (v8 >= 2)
  {
    v11 = *(v7 + 64);
    goto LABEL_13;
  }

  v9 = 0;
  if (v10 <= 3)
  {
    v12 = (~(-1 << (8 * v10)) - v8 + 2) >> (8 * v10);
    if (v12 <= 0xFFFE)
    {
      v13 = 0;
      if (v12)
      {
        v13 = 2 - (v12 < 0xFF);
      }

      goto LABEL_12;
    }

    v23 = 4;
  }

  else
  {
    v23 = 1;
  }

  v13 = v23;
LABEL_12:
  v11 = v10 + v13;
  LODWORD(v10) = v11;
LABEL_13:
  if (!a2)
  {
    return v5;
  }

  v14 = a2 <= v9;
  v15 = a2 - v9;
  if (v14)
  {
    goto LABEL_32;
  }

  if (v10 > 3)
  {
    goto LABEL_16;
  }

  v17 = ((~(-1 << (8 * v10)) + v15) >> (8 * v10)) + 1;
  if (v17 > 0xFFFF)
  {
    v16 = *&a1[v11];
    goto LABEL_23;
  }

  if (v17 > 0xFF)
  {
    v16 = *&a1[v11];
LABEL_23:
    if (v16)
    {
      v18 = (v16 - 1) << (8 * v10);
      v19 = 0;
      if (v10 >= 4)
      {
        v18 = 0;
      }

      if (v10)
      {
        v20 = 4;
        if (v10 < 4)
        {
          v20 = v10;
        }

        switch(v20)
        {
          case 1:
            v19 = *a1;
            break;
          case 2:
            v19 = *a1;
            break;
          case 3:
            v19 = *a1 | (a1[2] << 16);
            break;
          case 4:
            v19 = *a1;
            break;
        }
      }

      return v9 + (v18 | v19) + 1;
    }

    goto LABEL_31;
  }

  if (v17 >= 2)
  {
LABEL_16:
    v16 = a1[v11];
    goto LABEL_23;
  }

LABEL_31:
  if (!v9)
  {
    return v5;
  }

LABEL_32:
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v8, AssociatedTypeWitness);
  v5 = 0;
  if (EnumTagSinglePayload >= 3)
  {
    return EnumTagSinglePayload - 2;
  }

  return v5;
}

uint64_t storeEnumTagSinglePayload for InterspersedSequence.Iterator.State(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  result = swift_getAssociatedTypeWitness(0, *(a4 + 24), *(a4 + 16), &protocol requirements base descriptor for Sequence, &associated type descriptor for Sequence.Element);
  v8 = *(result - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 2;
  v11 = *(v8 + 64);
  if (v9 < 2)
  {
    v10 = 0;
    if (v11 <= 3)
    {
      v12 = (~(-1 << (8 * v11)) - v9 + 2) >> (8 * v11);
      if (v12 <= 0xFFFE)
      {
        v13 = 0;
        if (v12)
        {
          v13 = 2 - (v12 < 0xFF);
        }

        goto LABEL_10;
      }

      v21 = 4;
    }

    else
    {
      v21 = 1;
    }

    v13 = v21;
LABEL_10:
    v11 += v13;
  }

  v14 = a3 <= v10;
  v15 = a3 - v10;
  if (v14)
  {
    goto LABEL_20;
  }

  if (v11 > 3)
  {
    v22 = 1;
LABEL_19:
    v6 = v22;
    goto LABEL_20;
  }

  v16 = ((~(-1 << (8 * v11)) + v15) >> (8 * v11)) + 1;
  if (v16 > 0xFFFF)
  {
    v22 = 4;
    goto LABEL_19;
  }

  v6 = 0;
  if (v16 >= 2)
  {
    v6 = ((v16 | 0x200000000uLL) - 256) >> 32;
  }

LABEL_20:
  if (v10 < a2)
  {
    v17 = a2 + ~v10;
    if (v11 >= 4)
    {
      v18 = 1;
      __bzero(a1, v11);
      *a1 = v17;
      v19 = a1;
      result = v6;
      switch(v6)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_36;
        case 2u:
          goto LABEL_38;
        case 3u:
          goto LABEL_40;
        case 4u:
          goto LABEL_37;
      }
    }

    v18 = (v17 >> (8 * v11)) + 1;
    if (v11)
    {
      v20 = v17 & ~(-1 << (8 * v11));
      __bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          v19 = a1;
          *a1 = v20;
          result = v6;
          switch(v6)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_36;
            case 2u:
              goto LABEL_38;
            case 3u:
              goto LABEL_40;
            case 4u:
              goto LABEL_37;
          }
        }

        v19 = a1;
        *a1 = v17;
        result = v6;
        switch(v6)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_36;
          case 2u:
            goto LABEL_38;
          case 3u:
            goto LABEL_40;
          case 4u:
            goto LABEL_37;
        }
      }

      v19 = a1;
      *a1 = v20;
      *(a1 + 2) = BYTE2(v20);
      result = v6;
      switch(v6)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_36;
        case 2u:
          goto LABEL_38;
        case 3u:
          goto LABEL_40;
        case 4u:
          goto LABEL_37;
      }
    }

    result = v6;
    v19 = a1;
    switch(v6)
    {
      case 0u:
        return result;
      case 1u:
LABEL_36:
        *(v19 + v11) = v18;
        return result;
      case 2u:
LABEL_38:
        *(v19 + v11) = v18;
        return result;
      case 3u:
        goto LABEL_40;
      case 4u:
LABEL_37:
        *(v19 + v11) = v18;
        return result;
    }
  }

  switch(v6)
  {
    case 0u:
      break;
    case 1u:
      *(a1 + v11) = 0;
      break;
    case 2u:
      *(a1 + v11) = 0;
      break;
    case 3u:
LABEL_40:
      BUG();
    case 4u:
      *(a1 + v11) = 0;
      break;
  }

  if (a2)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2 + 2, v9, result);
  }

  return result;
}

uint64_t type metadata completion function for InterspersedSequence<>.Index(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for InterspersedSequence<>.Index.Representation(319, *(a1 + 16), *(a1 + 24), a4);
  v5 = v4;
  if (v6 <= 0x3F)
  {
    v8[0] = *(v4 - 8) + 64;
    v5 = 0;
    swift_initStructMetadata(a1, 0, 1, v8, a1 + 32);
  }

  return v5;
}

uint64_t type metadata completion function for InterspersedSequence<>.Index.Representation(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(319, *(a1 + 24), *(a1 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v4 = AssociatedTypeWitness;
  if (v5 <= 0x3F)
  {
    v7[0] = *(AssociatedTypeWitness - 8) + 64;
    v7[1] = v7[0];
    v4 = 0;
    swift_initEnumMetadataMultiPayload(a1, 0, 2, v7, v2, v3);
  }

  return v4;
}

void *initializeBufferWithCopyOfBuffer for InterspersedSequence<>.Index(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  if (v6 > 7u || (v8 = *(v5 + 64), (v8 + 1) > 0x18) || (v6 & 0x100000) != 0)
  {
    v12 = *a2;
    *v3 = *a2;
    v12;
    return (v12 + ((v7 + 16) & ~v7));
  }

  else
  {
    v9 = a2[v8];
    if (v9 >= 2)
    {
      v10 = 4;
      if (v8 < 4)
      {
        v10 = v8;
      }

      switch(v10)
      {
        case 0:
          break;
        case 1:
          v11 = *a2;
          goto LABEL_13;
        case 2:
          v11 = *a2;
          goto LABEL_13;
        case 3:
          v11 = *a2 | (a2[2] << 16);
          goto LABEL_13;
        case 4:
          v11 = *a2;
LABEL_13:
          if (v8 < 4)
          {
            v11 |= (v9 - 2) << (8 * v8);
          }

          v9 = v11 + 2;
          break;
      }
    }

    (*(v5 + 16))(a1, a2, AssociatedTypeWitness);
    *(a1 + v8) = v9 == 1;
  }

  return v3;
}

{
  return initializeBufferWithCopyOfBuffer for InterspersedSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t destroy for InterspersedSequence<>.Index(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

{
  return destroy for InterspersedSequence<>.Index.Representation(a1, a2);
}

uint64_t initializeWithCopy for InterspersedSequence<>.Index(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = a2[v5];
  if (v6 >= 2)
  {
    v7 = 4;
    if (v5 < 4)
    {
      v7 = v5;
    }

    switch(v7)
    {
      case 0:
        break;
      case 1:
        v8 = *a2;
        goto LABEL_9;
      case 2:
        v8 = *a2;
        goto LABEL_9;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_9;
      case 4:
        v8 = *a2;
LABEL_9:
        if (v5 < 4)
        {
          v8 |= (v6 - 2) << (8 * v5);
        }

        v6 = v8 + 2;
        break;
    }
  }

  (*(v4 + 16))(a1, a2, AssociatedTypeWitness);
  *(a1 + v5) = v6 == 1;
  return a1;
}

{
  return initializeWithCopy for InterspersedSequence<>.Index.Representation(a1, a2, a3);
}

unsigned __int8 *assignWithCopy for InterspersedSequence<>.Index(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
    v4 = *(AssociatedTypeWitness - 8);
    v5 = *(v4 + 64);
    v10 = v4;
    (*(v4 + 8))(a1, AssociatedTypeWitness);
    v6 = a2[v5];
    if (v6 >= 2)
    {
      v7 = 4;
      if (v5 < 4)
      {
        v7 = v5;
      }

      switch(v7)
      {
        case 0:
          break;
        case 1:
          v8 = *a2;
          goto LABEL_10;
        case 2:
          v8 = *a2;
          goto LABEL_10;
        case 3:
          v8 = *a2 | (a2[2] << 16);
          goto LABEL_10;
        case 4:
          v8 = *a2;
LABEL_10:
          if (v5 < 4)
          {
            v8 |= (v6 - 2) << (8 * v5);
          }

          v6 = v8 + 2;
          break;
      }
    }

    (*(v10 + 16))(a1, a2, AssociatedTypeWitness);
    a1[v5] = v6 == 1;
  }

  return a1;
}

{
  return assignWithCopy for InterspersedSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t initializeWithTake for InterspersedSequence<>.Index(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  v6 = a2[v5];
  if (v6 >= 2)
  {
    v7 = 4;
    if (v5 < 4)
    {
      v7 = v5;
    }

    switch(v7)
    {
      case 0:
        break;
      case 1:
        v8 = *a2;
        goto LABEL_9;
      case 2:
        v8 = *a2;
        goto LABEL_9;
      case 3:
        v8 = *a2 | (a2[2] << 16);
        goto LABEL_9;
      case 4:
        v8 = *a2;
LABEL_9:
        if (v5 < 4)
        {
          v8 |= (v6 - 2) << (8 * v5);
        }

        v6 = v8 + 2;
        break;
    }
  }

  (*(v4 + 32))(a1, a2, AssociatedTypeWitness);
  *(a1 + v5) = v6 == 1;
  return a1;
}

{
  return initializeWithTake for InterspersedSequence<>.Index.Representation(a1, a2, a3);
}

unsigned __int8 *assignWithTake for InterspersedSequence<>.Index(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
    v4 = *(AssociatedTypeWitness - 8);
    v5 = *(v4 + 64);
    v10 = v4;
    (*(v4 + 8))(a1, AssociatedTypeWitness);
    v6 = a2[v5];
    if (v6 >= 2)
    {
      v7 = 4;
      if (v5 < 4)
      {
        v7 = v5;
      }

      switch(v7)
      {
        case 0:
          break;
        case 1:
          v8 = *a2;
          goto LABEL_10;
        case 2:
          v8 = *a2;
          goto LABEL_10;
        case 3:
          v8 = *a2 | (a2[2] << 16);
          goto LABEL_10;
        case 4:
          v8 = *a2;
LABEL_10:
          if (v5 < 4)
          {
            v8 |= (v6 - 2) << (8 * v5);
          }

          v6 = v8 + 2;
          break;
      }
    }

    (*(v10 + 32))(a1, a2, AssociatedTypeWitness);
    a1[v5] = v6 == 1;
  }

  return a1;
}

{
  return assignWithTake for InterspersedSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t getEnumTagSinglePayload for InterspersedSequence<>.Index(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index);
  if (!a2)
  {
    return v4;
  }

  v6 = *(*(AssociatedTypeWitness - 8) + 64);
  if (a2 < 0xFF)
  {
    goto LABEL_19;
  }

  v7 = v6 + 1;
  if ((v6 + 1) > 3)
  {
LABEL_4:
    v8 = a1[v7];
    goto LABEL_11;
  }

  v9 = ((a2 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
  if (v9 > 0xFFFF)
  {
    v8 = *&a1[v7];
  }

  else
  {
    if (v9 <= 0xFF)
    {
      if (v9 < 2)
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

    v8 = *&a1[v7];
  }

LABEL_11:
  if (v8)
  {
    v10 = (v8 - 1) << (8 * v7);
    v11 = 0;
    if (v7 >= 4)
    {
      v10 = 0;
    }

    if (v6 != -1)
    {
      v12 = 4;
      if (v7 < 4)
      {
        v12 = v6 + 1;
      }

      switch(v12)
      {
        case 1:
          v11 = *a1;
          break;
        case 2:
          v11 = *a1;
          break;
        case 3:
          v11 = *a1 | (a1[2] << 16);
          break;
        case 4:
          v11 = *a1;
          break;
      }
    }

    return (v10 | v11) + 255;
  }

LABEL_19:
  v4 = 0;
  if (a1[v6] >= 2u)
  {
    return (a1[v6] ^ 0xFFu) + 1;
  }

  return v4;
}

{
  return getEnumTagSinglePayload for InterspersedSequence<>.Index.Representation(a1, a2, a3);
}

uint64_t storeEnumTagSinglePayload for InterspersedSequence<>.Index(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  result = *(*(swift_getAssociatedTypeWitness(0, *(a4 + 24), *(a4 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8) + 64);
  v7 = result + 1;
  if (a3 >= 0xFF)
  {
    if (v7 > 3)
    {
      v13 = 1;
LABEL_9:
      v5 = v13;
      goto LABEL_10;
    }

    v8 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (v8 > 0xFFFF)
    {
      v13 = 4;
      goto LABEL_9;
    }

    v5 = 0;
    if (v8 >= 2)
    {
      v5 = ((v8 | 0x200000000uLL) - 256) >> 32;
    }
  }

LABEL_10:
  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      v10 = 1;
      v11 = a1;
      __bzero(a1, result + 1);
      *a1 = v9;
      result = v5;
      switch(v5)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (result != -1)
    {
      v12 = v9 & ~(-1 << (8 * v7));
      result = __bzero(a1, result + 1);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          result = a1;
          *a1 = v12;
          v11 = a1;
          switch(v5)
          {
            case 0u:
              return result;
            case 1u:
              goto LABEL_26;
            case 2u:
              goto LABEL_28;
            case 3u:
              goto LABEL_30;
            case 4u:
              goto LABEL_27;
          }
        }

        v11 = a1;
        *a1 = a2 + 1;
        switch(v5)
        {
          case 0u:
            return result;
          case 1u:
            goto LABEL_26;
          case 2u:
            goto LABEL_28;
          case 3u:
            goto LABEL_30;
          case 4u:
            goto LABEL_27;
        }
      }

      result = a1;
      *a1 = v12;
      *(a1 + 2) = BYTE2(v12);
      v11 = a1;
      switch(v5)
      {
        case 0u:
          return result;
        case 1u:
          goto LABEL_26;
        case 2u:
          goto LABEL_28;
        case 3u:
          goto LABEL_30;
        case 4u:
          goto LABEL_27;
      }
    }

    v11 = a1;
    switch(v5)
    {
      case 0u:
        return result;
      case 1u:
LABEL_26:
        *(v11 + v7) = v10;
        break;
      case 2u:
LABEL_28:
        *(v11 + v7) = v10;
        break;
      case 3u:
LABEL_30:
        BUG();
      case 4u:
LABEL_27:
        *(v11 + v7) = v10;
        break;
    }
  }

  else
  {
    switch(v5)
    {
      case 0u:
        goto LABEL_21;
      case 1u:
        *(a1 + v7) = 0;
        goto LABEL_21;
      case 2u:
        *(a1 + v7) = 0;
        goto LABEL_21;
      case 3u:
        goto LABEL_30;
      case 4u:
        *(a1 + v7) = 0;
LABEL_21:
        if (a2)
        {
          *(a1 + result) = -a2;
        }

        break;
    }
  }

  return result;
}

{
  return storeEnumTagSinglePayload for InterspersedSequence<>.Index.Representation(a1, a2, a3, a4);
}

uint64_t getEnumTag for InterspersedSequence<>.Index.Representation(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(swift_getAssociatedTypeWitness(0, *(a2 + 24), *(a2 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8) + 64);
  result = a1[v2];
  if (result >= 2)
  {
    v4 = 4;
    if (v2 < 4)
    {
      v4 = v2;
    }

    switch(v4)
    {
      case 0:
        return result;
      case 1:
        v5 = *a1;
        goto LABEL_9;
      case 2:
        v5 = *a1;
        goto LABEL_9;
      case 3:
        v5 = *a1 | (a1[2] << 16);
        goto LABEL_9;
      case 4:
        v5 = *a1;
LABEL_9:
        if (v2 < 4)
        {
          v5 |= (result - 2) << (8 * v2);
        }

        result = (v5 + 2);
        break;
      case 5:
        JUMPOUT(0x31F568);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for InterspersedSequence<>.Index.Representation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  result = *(swift_getAssociatedTypeWitness(0, *(a3 + 24), *(a3 + 16), &protocol requirements base descriptor for Collection, &associated type descriptor for Collection.Index) - 8);
  v4 = *(result + 64);
  if (a2 > 1)
  {
    v5 = a2 - 2;
    if (v4 < 4)
    {
      v6 = v5 & ~(-1 << (8 * v4));
      *(a1 + v4) = (v5 >> (8 * v4)) + 2;
      result = __bzero(a1, v4);
      if (v4 == 3)
      {
        *a1 = v6;
        *(a1 + 2) = BYTE2(v6);
      }

      else if (v4 == 2)
      {
        *a1 = v6;
      }

      else
      {
        *a1 = v6;
      }
    }

    else
    {
      *(a1 + v4) = 2;
      result = __bzero(a1, v4);
      *a1 = v5;
    }
  }

  else
  {
    *(a1 + v4) = a2;
  }

  return result;
}

uint64_t type metadata completion function for InterspersedMapSequence(uint64_t a1)
{
  v1 = swift_checkMetadataState(319, *(a1 + 16));
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v5[0] = *(v1 - 8) + 64;
    v5[1] = &value witness table for () + 64;
    v5[2] = &value witness table for () + 64;
    v2 = 0;
    swift_initStructMetadata(a1, 0, 3, v5, a1 + 40);
  }

  return v2;
}

uint64_t *initializeBufferWithCopyOfBuffer for InterspersedMapSequence(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x1000F8) != 0 || (v6 = *(v4 + 64), ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18))
  {
    v11 = *a2;
    *a1 = *a2;
    v3 = (v11 + (((v5 | 7) + 16) & ~(v5 | 7u)));
  }

  else
  {
    (*(v4 + 16))(a1, a2);
    v7 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v8 = (a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
    v9 = *(v8 + 8);
    *v7 = *v8;
    v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
    v11 = *(v10 + 8);
    *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *v10;
    v9;
  }

  v11;
  return v3;
}

uint64_t destroy for InterspersedMapSequence(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  (*(v2 + 8))();
  v3 = (*(v2 + 64) + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v3 + 8);
  return *(((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t initializeWithCopy for InterspersedMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(a1);
  v5 = *(v4 + 64);
  v6 = ((v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v7 + 8);
  *v6 = *v7;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *((v6 + 23) & 0xFFFFFFFFFFFFFFF8) = *v9;
  v8;
  v10;
  return a1;
}

uint64_t assignWithCopy for InterspersedMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))();
  v5 = *(v4 + 64);
  v6 = (v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v6 + 8);
  v9 = *(v7 + 8);
  *v6 = *v7;
  v9;
  v8;
  v10 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v10 + 8);
  v13 = *(v11 + 8);
  *v10 = *v11;
  v13;
  v12;
  return a1;
}

uint64_t initializeWithTake for InterspersedMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  (*(v3 + 32))(a1);
  v4 = *(v3 + 64);
  v5 = ((v4 + a1 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  *((v5 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for InterspersedMapSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(a1);
  v5 = *(v4 + 64);
  v6 = (v5 + a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = ((v5 + a2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v6 + 8);
  *v6 = *v7;
  v8;
  v9 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v9 + 8);
  *v9 = *((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10;
  return a1;
}

uint64_t getEnumTagSinglePayload for InterspersedMapSequence(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = 0x7FFFFFFF;
  if (v6 >= 0x80000000)
  {
    v7 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v5 + 64);
  if (v7 >= a2)
  {
LABEL_20:
    if (v6 < 0x7FFFFFFF)
    {
      LODWORD(v18) = -1;
      if (*((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
      {
        v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      }

      return (v18 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(a1, v6, v4);
    }
  }

  else
  {
    v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v7 + 1;
    v11 = 2;
    if ((v9 & 0xFFFFFFF8) == 0)
    {
      v11 = v10;
    }

    v12 = 1;
    if (v11 >= 0x100)
    {
      v12 = 2 * (v11 >= &loc_10000) + 2;
    }

    v13 = 0;
    if (v11 >= 2)
    {
      v13 = v12;
    }

    switch(v13)
    {
      case 0:
        goto LABEL_20;
      case 1:
        v14 = *(a1 + v9);
        goto LABEL_16;
      case 2:
        v14 = *(a1 + v9);
        goto LABEL_16;
      case 3:
        BUG();
      case 4:
        v14 = *(a1 + v9);
LABEL_16:
        if (!v14)
        {
          goto LABEL_20;
        }

        v16 = v14 - 1;
        v17 = 0;
        if ((v9 & 0xFFFFFFF8) != 0)
        {
          v16 = 0;
          v17 = *a1;
        }

        result = v7 + (v16 | v17) + 1;
        break;
    }
  }

  return result;
}