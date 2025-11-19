uint64_t specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v5[10] = v8;
  v9 = *(v8 - 8);
  v5[11] = v9;
  v5[12] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v5[15] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v5[16] = v12;
  v13 = *(v12 - 8);
  v5[17] = v13;
  v5[18] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v5[19] = v14;
  v5[20] = swift_task_alloc((*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5[2] = a2;
  return swift_task_switch(specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:), 0, 0);
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)()
{
  v16 = v0 + 2;
  v1 = v0[20];
  v2 = v0[6];
  v3 = v0[19];
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[20];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[11] + 32))(v0[12], v6, v0[10]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[23] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v9 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v7 = v0;
    v7[1] = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    v10 = v0[12];
    return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)(v0[9], v16, v0[4], v0[5], v0[10], v8, v9);
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v6, v0[16]);
    v12 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[21] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v12 = v0;
    v12[1] = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    v15 = v0[18];
    return LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(v0[15], v16, v0[4], v0[5], v0[16], v13, v14);
  }
}

{
  v2 = *(*v1 + 168);
  *(*v1 + 176) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 184);
  *(*v1 + 192) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v11 = *(v0 + 112);
  v12 = *(v0 + 104);
  v10 = *(v0 + 160);
  v9 = *(v0 + 96);
  v8 = *(v0 + 72);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48);
  (*(*(v0 + 136) + 8))(v1, *(v0 + 128));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v11 + 32))(v5, v2, v12);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 0);
  v10;
  v1;
  v2;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 176);
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  v3 = *(v0 + 120);
  v7 = *(v0 + 72);
  v4 = *(v0 + 96);
  (*(*(v0 + 136) + 8))(v1, *(v0 + 128));
  v2;
  v1;
  v3;
  v4;
  v7;
  return (*(v0 + 8))();
}

{
  v9 = *(v0 + 96);
  v1 = *(v0 + 72);
  v12 = *(v0 + 64);
  v2 = *(v0 + 56);
  v11 = *(v0 + 160);
  v10 = *(v0 + 144);
  v8 = *(v0 + 120);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48);
  (*(*(v0 + 88) + 8))(v9, *(v0 + 80));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v12 + 32))(v5, v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 1);
  v11;
  v10;
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 192);
  v1 = *(v0 + 96);
  v7 = *(v0 + 72);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  (*(*(v0 + 88) + 8))(v1, *(v0 + 80));
  v2;
  v3;
  v4;
  v1;
  v7;
  return (*(v0 + 8))();
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = v5;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v6[10] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v6[13] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v6[14] = v12;
  v13 = *(v12 - 8);
  v6[15] = v13;
  v6[16] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v6[17] = v14;
  v15 = *(v14 - 8);
  v6[18] = v15;
  v6[19] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v6[20] = v16;
  v6[21] = swift_task_alloc((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[2] = a2;
  v6[3] = a3;
  return swift_task_switch(specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:), 0, 0);
}

uint64_t specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)()
{
  v15 = v0 + 2;
  v14 = v0 + 3;
  v1 = v0[21];
  v2 = v0[7];
  v3 = v0[20];
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[12] + 32))(v0[13], v6, v0[11]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)[1]);
    v0[24] = v7;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v7 = v0;
    v7[1] = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
    v9 = v0[13];
    retaddr = v8;
    return FullyConnectedNetworkClassifier.fitted<A, B>(to:validateOn:eventHandler:)(v0[10], v15, v14, v0[5], v0[6], v0[11]);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v6, v0[17]);
    v11 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)[1]);
    v0[22] = v11;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>]);
    v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnnotatedFeature<MLShapedArray<Float>, String>] and conformance [A], &demangling cache variable for type metadata for [AnnotatedFeature<MLShapedArray<Float>, String>], &protocol conformance descriptor for [A]);
    *v11 = v0;
    v11[1] = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
    v13 = v0[19];
    retaddr = v12;
    return LogisticRegressionClassifier.fitted<A, B>(to:validateOn:eventHandler:)(v0[16], v15, v14, v0[5], v0[6], v0[17]);
  }
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 184) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 192);
  *(*v1 + 200) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v11 = *(v0 + 120);
  v12 = *(v0 + 112);
  v10 = *(v0 + 168);
  v9 = *(v0 + 104);
  v8 = *(v0 + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  (*(*(v0 + 144) + 8))(v1, *(v0 + 136));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v11 + 32))(v5, v2, v12);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 0);
  v10;
  v1;
  v2;
  v9;
  v8;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 184);
  v1 = *(v0 + 152);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v7 = *(v0 + 80);
  v4 = *(v0 + 104);
  (*(*(v0 + 144) + 8))(v1, *(v0 + 136));
  v2;
  v1;
  v3;
  v4;
  v7;
  return (*(v0 + 8))();
}

{
  v9 = *(v0 + 104);
  v1 = *(v0 + 80);
  v12 = *(v0 + 72);
  v2 = *(v0 + 64);
  v11 = *(v0 + 168);
  v10 = *(v0 + 152);
  v8 = *(v0 + 128);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  (*(*(v0 + 96) + 8))(v9, *(v0 + 88));
  outlined init with copy of MLTrainingSessionParameters(v4, v3, type metadata accessor for MLSoundClassifier.ModelParameters);
  v5 = v3 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  (*(v12 + 32))(v5, v1, v2);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v5, v6, 1);
  v11;
  v10;
  v8;
  v9;
  v1;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 200);
  v1 = *(v0 + 104);
  v7 = *(v0 + 80);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);
  (*(*(v0 + 96) + 8))(v1, *(v0 + 88));
  v2;
  v3;
  v4;
  v1;
  v7;
  return (*(v0 + 8))();
}

uint64_t SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for MetricsKey(0);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = swift_task_alloc((*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:), 0, 0);
}

uint64_t SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  v26 = *(v0 + 24);
  static MetricsKey.trainingAccuracy.getter();
  ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  v6 = v5;
  v7 = v26;
  v27 = *(v2 + 8);
  v27(v1, v7);
  if ((v6 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, isUniquelyReferenced_nonNull_native, *&ML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5);
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  static MetricsKey.validationAccuracy.getter();
  v28 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  LOBYTE(v10) = v12;
  v13 = v9;
  v27(v9, v11);
  if ((v10 & 1) == 0)
  {
    v14 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    v13 = 5;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v14, *&v28);
  }

  v15 = *(v0 + 40);
  v16 = *(v0 + 16);
  v17 = *(v0 + 24);
  static MetricsKey.trainingLoss.getter(v13);
  v29 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  LOBYTE(v16) = v18;
  v27(v15, v17);
  if ((v16 & 1) == 0)
  {
    v19 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v19, *&v29);
  }

  v20 = *(v0 + 40);
  v21 = *(v0 + 16);
  v22 = *(v0 + 24);
  static MetricsKey.validationLoss.getter();
  v30 = _s8CreateML14EventCollectorC7getLast6metric4typexSg0A12MLComponents10MetricsKeyV_xmtlFSd_Tt1g5();
  LOBYTE(v21) = v23;
  v27(v20, v22);
  if ((v21 & 1) == 0)
  {
    v24 = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, v24, *&v30);
  }

  *(v0 + 40);
  return (*(v0 + 8))(_swiftEmptyDictionarySingleton);
}

uint64_t SoundClassifierTrainingSessionDelegate.evaluate(from:)()
{
  v1[31] = v0;
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v1[32] = swift_task_alloc((*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v1[33] = v3;
  v1[34] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v1[35] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?);
  v1[36] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?);
  v1[37] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLSoundClassifier.Model(0);
  v1[38] = v7;
  v1[39] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.evaluate(from:), 0, 0);
}

{
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + *(v0 + 248);
  swift_beginAccess(v3, v0 + 96, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 296), &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    v4 = *(v0 + 296);
    v5 = *(v0 + 288);
    v6 = *(v0 + 280);
    v14 = *(v0 + 256);
    v7 = *(v0 + 272);
    *(v0 + 312);
    v4;
    v5;
    v6;
    v7;
    v14;
    return (*(v0 + 8))(0, 1);
  }

  else
  {
    v9 = *(v0 + 248);
    outlined init with take of MLClassifierMetrics(*(v0 + 296), *(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
    v10 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    *(v0 + 320) = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
    v11 = *(v9 + v10);
    *(v0 + 328) = v11;
    v11;
    v12 = swift_task_alloc(352);
    *(v0 + 336) = v12;
    *v12 = v0;
    v12[1] = SoundClassifierTrainingSessionDelegate.evaluate(from:);
    v13 = *(v0 + 312);
    return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v11, 0, 0);
  }
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 344);
  v54 = *(v0 + 320);
  v3 = *(v0 + 248);
  v52 = *(v0 + 288);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v1, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_340BB8);
  v1;
  *(v0 + 216) = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
  v5 = *(v3 + v54);
  v5;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v5, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_340B80);
  v55 = v2;
  v5;
  *(v0 + 224) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  *(v0 + 360) = v7;
  v8 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  *(v0 + 368) = v8;
  ClassificationMetrics.init<A, B>(_:_:)(v0 + 216, v0 + 224, &type metadata for String, v7, v7, &protocol witness table for String, v8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
  *(v0 + 376) = v9;
  swift_storeEnumTagMultiPayload(v52, v9, 0);
  v10 = type metadata accessor for MLClassifierMetrics.Contents(0);
  *(v0 + 384) = v10;
  swift_storeEnumTagMultiPayload(v52, v10, 0);
  v11 = type metadata accessor for MLClassifierMetrics(0);
  *(v0 + 392) = v11;
  v57 = v11;
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v11);
  v12 = v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics, v0 + 120, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v52, v12, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 120);
  v13 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles;
  v59 = v3;
  v14 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
  v15 = *(v0 + 248);
  if (*(*(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) + 16) && !*(*(v15 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) + 16))
  {
    v53 = *(v3 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
    v51 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
    v29 = *(v0 + 280);
    v50 = *(v0 + 248);
    v30 = v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v50 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v0 + 192, 0, 0);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v29, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    v31 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
    if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
    {
      BUG();
    }

    v32 = *(v0 + 280);
    v33 = *(v0 + 272);
    v56 = *(v0 + 256);
    v34 = *(v0 + 264);
    outlined init with copy of MLTrainingSessionParameters(v32 + v31[5], v56, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v48 = *(v32 + v31[8]);
    v49 = *(v32 + v31[6]);
    v35 = v31[9];
    v47 = *(v32 + v35);
    v61 = *(v32 + v35 + 8);
    v36 = *(v32 + v35 + 16);
    v37 = v34[7];
    *(v33 + v37) = 0;
    *(v33 + v37 + 16) = 0;
    v38 = v34[8];
    *(v33 + v38) = 0;
    v46 = v33 + v37;
    *(v33 + v38 + 8) = 1;
    *(v33 + v34[9]) = 32;
    outlined init with copy of MLTrainingSessionParameters(v56, v33, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    *(v33 + v34[5]) = v48;
    *(v33 + v34[6]) = v49;
    *(v0 + 88) = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    *(v0 + 64) = v47;
    *(v0 + 72) = v61;
    *(v0 + 80) = v36;
    v36;
    v53;
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v0 + 64, v46, &demangling cache variable for type metadata for Any?);
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLSoundClassifier.PersistentParameters);
    MLSoundClassifier.FeatureExtractor.Configuration.init(parameters:fileCount:)(v33, *(*(v59 + v13) + 16));
    v39 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
    swift_allocObject(v39, 88, 7);
    v53;
    specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v53, (v0 + 16));
    if (v55)
    {
      v53;
      v28 = type metadata accessor for MLSoundClassifier.Model;
      outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
      v41 = *(v0 + 296);
      v42 = *(v0 + 288);
      v43 = *(v0 + 280);
      v58 = *(v0 + 256);
      v44 = *(v0 + 272);
      *(v0 + 312);
      v41;
      v42;
      v43;
      v44;
      v27 = v58;
      v58;
      v26 = *(v0 + 8);
      return v26(v27, v28);
    }

    v40 = MLSoundClassifier.FeatureExtractor.extractFeatures()();

    v53;
    v45 = *(v50 + v51);
    *(v50 + v51) = v40;
    v45;
    v14 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
    v15 = *(v0 + 248);
  }

  *(v0 + 400) = v14;
  v16 = *(v15 + v14);
  *(v0 + 408) = v16;
  if (*(v16 + 16))
  {
    v16;
    v17 = swift_task_alloc(352);
    *(v0 + 416) = v17;
    *v17 = v0;
    v17[1] = SoundClassifierTrainingSessionDelegate.evaluate(from:);
    v18 = *(v0 + 312);
    return ((&async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:) + async function pointer to specialized Transformer.prediction<A, B>(from:eventHandler:)))(v16, 0, 0);
  }

  v20 = *(v0 + 288);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v57);
  v21 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics + v15;
  swift_beginAccess(v21, v0 + 168, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v20, v21, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 168);
  v22 = *(v0 + 296);
  v23 = *(v0 + 288);
  v24 = *(v0 + 280);
  v60 = *(v0 + 256);
  v25 = *(v0 + 272);
  *(v0 + 312);
  v22;
  v23;
  v24;
  v25;
  v60;
  v26 = *(v0 + 8);
  v27 = 1;
  v28 = (&dword_0 + 1);
  return v26(v27, v28);
}

{
  v1 = *(v0 + 432);
  v2 = *(v0 + 424);
  v20 = *(v0 + 400);
  v13 = *(v0 + 392);
  v14 = *(v0 + 384);
  v15 = *(v0 + 376);
  v17 = *(v0 + 368);
  v18 = *(v0 + 360);
  v16 = *(v0 + 312);
  v3 = *(v0 + 248);
  v19 = *(v0 + 288);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v1, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, &unk_340BB8);
  v1;
  *(v0 + 232) = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm;
  v5 = *(v3 + v20);
  v5;
  v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v5, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, &unk_340B80);
  v5;
  *(v0 + 240) = v6;
  ClassificationMetrics.init<A, B>(_:_:)(v0 + 232, v0 + 240, &type metadata for String, v18, v18, &protocol witness table for String, v17, v17);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLSoundClassifier.Model);
  swift_storeEnumTagMultiPayload(v19, v15, 0);
  swift_storeEnumTagMultiPayload(v19, v14, 0);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v13);
  v7 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics + v3;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics + v3, v0 + 144, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v19, v7, &demangling cache variable for type metadata for MLClassifierMetrics?);
  swift_endAccess(v0 + 144);
  v8 = *(v0 + 296);
  v9 = *(v0 + 288);
  v10 = *(v0 + 280);
  v21 = *(v0 + 256);
  v11 = *(v0 + 272);
  *(v0 + 312);
  v8;
  v9;
  v10;
  v11;
  v21;
  return (*(v0 + 8))(1, 1);
}

{
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
  v6 = *(v0 + 344);
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v7 = *(v0 + 256);
  v4 = *(v0 + 272);
  *(v0 + 312);
  v1;
  v2;
  v3;
  v4;
  v7;
  return (*(v0 + 8))();
}

{
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 312), type metadata accessor for MLSoundClassifier.Model);
  v6 = *(v0 + 424);
  v1 = *(v0 + 296);
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v7 = *(v0 + 256);
  v4 = *(v0 + 272);
  *(v0 + 312);
  v1;
  v2;
  v3;
  v4;
  v7;
  return (*(v0 + 8))();
}

uint64_t SoundClassifierTrainingSessionDelegate.evaluate(from:)(uint64_t a1)
{
  v5 = *(*v2 + 336);
  v4 = *v2;
  v4[43] = v1;
  v5;
  v4[41];
  if (v1)
  {
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v4[44] = a1;
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v5 = *(*v2 + 416);
  v4 = *v2;
  v4[53] = v1;
  v5;
  v4[51];
  if (v1)
  {
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  else
  {
    v4[54] = a1;
    v6 = SoundClassifierTrainingSessionDelegate.evaluate(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t specialized Transformer.prediction<A, B>(from:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = v3;
  v4[6] = a3;
  v4[5] = a2;
  v4[4] = a1;
  v5 = type metadata accessor for MLSoundClassifier.Model(0);
  v4[8] = v5;
  v4[9] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event(0, a2, v6);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v4[15] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v4[18] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v4[21] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4[22] = v15;
  v4[23] = swift_task_alloc((*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4[24] = v16;
  v17 = *(v16 - 8);
  v4[25] = v17;
  v4[26] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[27] = v18;
  v19 = *(v18 - 8);
  v4[28] = v19;
  v20 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[29] = swift_task_alloc(v20);
  v4[30] = swift_task_alloc(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v4[31] = v21;
  v22 = *(v21 - 8);
  v4[32] = v22;
  v4[33] = swift_task_alloc((*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.prediction<A, B>(from:eventHandler:), 0, 0);
}

{
  v4[7] = v3;
  v4[6] = a3;
  v4[5] = a2;
  v4[4] = a1;
  v5 = type metadata accessor for MLImageClassifier.Model(0);
  v4[8] = v5;
  v4[9] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Event(0, a2, v6);
  v4[10] = v7;
  v8 = *(v7 - 8);
  v4[11] = v8;
  v4[12] = swift_task_alloc((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v4[15] = swift_task_alloc((*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v4[16] = v11;
  v12 = *(v11 - 8);
  v4[17] = v12;
  v4[18] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v4[19] = v13;
  v14 = *(v13 - 8);
  v4[20] = v14;
  v4[21] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v4[22] = v15;
  v4[23] = swift_task_alloc((*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v4[24] = v16;
  v17 = *(v16 - 8);
  v4[25] = v17;
  v4[26] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v4[27] = v18;
  v19 = *(v18 - 8);
  v4[28] = v19;
  v20 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4[29] = swift_task_alloc(v20);
  v4[30] = swift_task_alloc(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v4[31] = v21;
  v22 = *(v21 - 8);
  v4[32] = v22;
  v4[33] = swift_task_alloc((*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized Transformer.prediction<A, B>(from:eventHandler:), 0, 0);
}

uint64_t specialized Transformer.prediction<A, B>(from:eventHandler:)()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 272) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 256);
    v4 = *(v3 + 80);
    *(v0 + 344) = v4;
    v5 = *(v3 + 16);
    *(v0 + 280) = *(v3 + 72);
    *(v0 + 288) = v5;
    *(v0 + 304) = v2;
    *(v0 + 296) = 0;
    v6 = *(v0 + 264);
    v7 = *(v0 + 32);
    v8 = *(v0 + 248);
    v9 = v7 + ((v4 + 32) & ~v4);
    v7;
    v5(v6, v9, v8);
    static Task<>.checkCancellation()();
    v14 = *(v0 + 264);
    v15 = *(v0 + 208);
    v16 = *(v0 + 184);
    v31 = *(v0 + 176);
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    AnnotatedFeature.feature.getter(*(v0 + 248));
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17 + *(v18 + 20), v16, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v31);
    v20 = *(v0 + 184);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 144), v20, *(v0 + 128));
      v21 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 328) = v21;
      *v21 = v0;
      v21[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      v22 = *(v0 + 144);
      return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), v20, *(v0 + 152));
      v23 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 312) = v23;
      *v23 = v0;
      v23[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      v24 = *(v0 + 168);
      return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
    }
  }

  else
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 232);
    v12 = *(v0 + 208);
    v29 = *(v0 + 184);
    v28 = *(v0 + 168);
    v27 = *(v0 + 144);
    v26 = *(v0 + 120);
    v30 = *(v0 + 72);
    v25 = *(v0 + 96);
    *(v0 + 264);
    v10;
    v11;
    v12;
    v29;
    v28;
    v27;
    v26;
    v25;
    v30;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 312);
  *(*v1 + 320) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 328);
  *(*v1 + 336) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v53 = *(v0 + 320);
  v68 = *(v0 + 304);
  v56 = *(v0 + 264);
  v60 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v64 = *(v0 + 120);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v60);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v68 + 16);
  v6 = *(v68 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v69 = v13;
  if (v11)
  {
    v65 = *(v0 + 272);
    v14 = *(v0 + 96);
    v72 = *(v0 + 88);
    v57 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v61 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLSoundClassifier.Model);

    v51 = String.init<A>(describing:)(v15, v16);
    v49 = v18;
    v50 = v69[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v51, v49, v50, v65, 0, v22);
    v61(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v61, v17);
    (*(v72 + 8))(v14, v57);
  }

  v23 = *(v0 + 264);
  v73 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v73 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v54 = *(v0 + 168);
    v66 = *(v0 + 144);
    v62 = *(v0 + 120);
    v74 = *(v0 + 72);
    v58 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v54;
    v66;
    v62;
    v58;
    v74;
    v31 = *(v0 + 8);
    v32 = v69;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v69;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  v34 = *(v0 + 264);
  if (v53)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v69;
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v67 = *(v0 + 168);
    v63 = *(v0 + 144);
    v59 = *(v0 + 120);
    v75 = *(v0 + 96);
    v70 = *(v0 + 72);
    *(v0 + 32);
    v35;
    v36;
    v37;
    v52;
    v55;
    v67;
    v63;
    v59;
    v75;
    v32 = v70;
    v70;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v71 = *(v0 + 176);
  v41 = *(v0 + 56);
  v42 = *(v0 + 64);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41 + *(v42 + 20), v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v40, v71);
  v44 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v44, *(v0 + 128));
    v45 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v45;
    *v45 = v0;
    v45[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v46 = *(v0 + 144);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v44, *(v0 + 152));
    v47 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v47;
    *v47 = v0;
    v47[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v48 = *(v0 + 168);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v53 = *(v0 + 336);
  v68 = *(v0 + 304);
  v56 = *(v0 + 264);
  v60 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v64 = *(v0 + 120);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v60);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v68 + 16);
  v6 = *(v68 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v69 = v13;
  if (v11)
  {
    v65 = *(v0 + 272);
    v14 = *(v0 + 96);
    v72 = *(v0 + 88);
    v57 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v61 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLSoundClassifier.Model);

    v51 = String.init<A>(describing:)(v15, v16);
    v49 = v18;
    v50 = v69[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v51, v49, v50, v65, 0, v22);
    v61(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v61, v17);
    (*(v72 + 8))(v14, v57);
  }

  v23 = *(v0 + 264);
  v73 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v73 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v54 = *(v0 + 168);
    v66 = *(v0 + 144);
    v62 = *(v0 + 120);
    v74 = *(v0 + 72);
    v58 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v54;
    v66;
    v62;
    v58;
    v74;
    v31 = *(v0 + 8);
    v32 = v69;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v69;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  v34 = *(v0 + 264);
  if (v53)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v69;
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v67 = *(v0 + 168);
    v63 = *(v0 + 144);
    v59 = *(v0 + 120);
    v75 = *(v0 + 96);
    v70 = *(v0 + 72);
    *(v0 + 32);
    v35;
    v36;
    v37;
    v52;
    v55;
    v67;
    v63;
    v59;
    v75;
    v32 = v70;
    v70;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v71 = *(v0 + 176);
  v41 = *(v0 + 56);
  v42 = *(v0 + 64);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41 + *(v42 + 20), v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v40, v71);
  v44 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v44, *(v0 + 128));
    v45 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v45;
    *v45 = v0;
    v45[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v46 = *(v0 + 144);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v44, *(v0 + 152));
    v47 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v47;
    *v47 = v0;
    v47[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v48 = *(v0 + 168);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 272) = v1;
  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0, _swiftEmptyArrayStorage);
  if (v1)
  {
    v3 = *(v0 + 256);
    v4 = *(v3 + 80);
    *(v0 + 344) = v4;
    v5 = *(v3 + 16);
    *(v0 + 280) = *(v3 + 72);
    *(v0 + 288) = v5;
    *(v0 + 304) = v2;
    *(v0 + 296) = 0;
    v6 = *(v0 + 264);
    v7 = *(v0 + 32);
    v8 = *(v0 + 248);
    v9 = v7 + ((v4 + 32) & ~v4);
    v7;
    v5(v6, v9, v8);
    static Task<>.checkCancellation()();
    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 56);
    v17 = *(v0 + 176);
    v18 = *(v0 + 264);
    AnnotatedFeature.feature.getter(*(v0 + 248));
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v15, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v15, v17);
    v20 = *(v0 + 184);
    if (EnumCaseMultiPayload == 1)
    {
      (*(*(v0 + 136) + 32))(*(v0 + 144), v20, *(v0 + 128));
      v21 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 328) = v21;
      *v21 = v0;
      v21[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      v22 = *(v0 + 144);
      return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
    }

    else
    {
      (*(*(v0 + 160) + 32))(*(v0 + 168), v20, *(v0 + 152));
      v23 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
      *(v0 + 312) = v23;
      *v23 = v0;
      v23[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
      v24 = *(v0 + 168);
      return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
    }
  }

  else
  {
    v10 = *(v0 + 240);
    v11 = *(v0 + 232);
    v12 = *(v0 + 208);
    v29 = *(v0 + 184);
    v28 = *(v0 + 168);
    v27 = *(v0 + 144);
    v26 = *(v0 + 120);
    v30 = *(v0 + 72);
    v25 = *(v0 + 96);
    *(v0 + 264);
    v10;
    v11;
    v12;
    v29;
    v28;
    v27;
    v26;
    v25;
    v30;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 312);
  *(*v1 + 320) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 328);
  *(*v1 + 336) = v0;
  v2;
  if (v0)
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  else
  {
    v3 = specialized Transformer.prediction<A, B>(from:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  v53 = *(v0 + 320);
  v56 = *(v0 + 304);
  v59 = *(v0 + 264);
  v63 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v67 = *(v0 + 120);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v63);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v56 + 16);
  v6 = *(v56 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v57 = v13;
  if (v11)
  {
    v68 = *(v0 + 272);
    v14 = *(v0 + 96);
    v71 = *(v0 + 88);
    v60 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v64 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLImageClassifier.Model);

    v51 = String.init<A>(describing:)(v15, v16);
    v49 = v18;
    v50 = v57[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v51, v49, v50, v68, 0, v22);
    v64(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v64, v17);
    (*(v71 + 8))(v14, v60);
  }

  v23 = *(v0 + 264);
  v72 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v72 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v54 = *(v0 + 168);
    v69 = *(v0 + 144);
    v65 = *(v0 + 120);
    v73 = *(v0 + 72);
    v61 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v54;
    v69;
    v65;
    v61;
    v73;
    v31 = *(v0 + 8);
    v32 = v57;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v57;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  v34 = *(v0 + 264);
  if (v53)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v57;
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v70 = *(v0 + 168);
    v66 = *(v0 + 144);
    v62 = *(v0 + 120);
    v74 = *(v0 + 96);
    v58 = *(v0 + 72);
    *(v0 + 32);
    v35;
    v36;
    v37;
    v52;
    v55;
    v70;
    v66;
    v62;
    v74;
    v32 = v58;
    v58;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v41 = *(v0 + 56);
  v42 = *(v0 + 176);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v40, v42);
  v44 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v44, *(v0 + 128));
    v45 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v45;
    *v45 = v0;
    v45[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v46 = *(v0 + 144);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v44, *(v0 + 152));
    v47 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v47;
    *v47 = v0;
    v47[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v48 = *(v0 + 168);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  v11 = *(v0 + 320);
  v1 = *(v0 + 304);
  v17 = *(v0 + 264);
  v15 = *(v0 + 256);
  v19 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 200);
  v4 = *(v0 + 192);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
  (*(v3 + 8))(v2, v4);
  v1, v4;
  v5 = v19;
  (*(v15 + 8))(v17, v19);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v14 = *(v0 + 184);
  v13 = *(v0 + 168);
  v12 = *(v0 + 144);
  v20 = *(v0 + 120);
  v18 = *(v0 + 96);
  v16 = *(v0 + 72);
  *(v0 + 32), v5;
  v6;
  v7;
  v8;
  v9;
  v14;
  v13;
  v12;
  v20;
  v18;
  v16;
  return (*(v0 + 8))();
}

{
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  v53 = *(v0 + 336);
  v56 = *(v0 + 304);
  v59 = *(v0 + 264);
  v63 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 216);
  v67 = *(v0 + 120);
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  (*(v3 + 16))(v2, v1, v4);
  AnnotatedFeature.annotation.getter(v63);
  AnnotatedPrediction.init(prediction:annotation:)(v2, v0 + 16, v4, &type metadata for String);
  v5 = *(v56 + 16);
  v6 = *(v56 + 24);
  v7 = *(v0 + 304);
  if (v6 >> 1 <= v5)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v6 >= 2, v5 + 1, 1, *(v0 + 304));
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  v11 = *(v0 + 40);
  v7[2] = v5 + 1;
  v12 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v5;
  v13 = v7;
  (*(v10 + 32))(v12, v8, v9);
  v57 = v13;
  if (v11)
  {
    v68 = *(v0 + 272);
    v14 = *(v0 + 96);
    v71 = *(v0 + 88);
    v60 = *(v0 + 80);
    v15 = *(v0 + 72);
    v16 = *(v0 + 64);
    v64 = *(v0 + 40);
    v17 = *(v0 + 48);
    outlined init with copy of MLTrainingSessionParameters(*(v0 + 56), v15, type metadata accessor for MLImageClassifier.Model);

    v51 = String.init<A>(describing:)(v15, v16);
    v49 = v18;
    v50 = v57[2];
    v19 = type metadata accessor for MetricsKey(0);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    v21 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
    v22 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v19, v20, v21);
    Event.init(origin:itemCount:totalItemCount:metrics:)(v51, v49, v50, v68, 0, v22);
    v64(v14);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v64, v17);
    (*(v71 + 8))(v14, v60);
  }

  v23 = *(v0 + 264);
  v72 = *(v0 + 256);
  v24 = *(v0 + 248);
  v25 = *(v0 + 296) + 1;
  v26 = *(v0 + 272);
  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
  (*(v72 + 8))(v23, v24);
  if (v25 == v26)
  {
    *(v0 + 32);
    v27 = *(v0 + 240);
    v28 = *(v0 + 232);
    v29 = *(v0 + 208);
    v30 = *(v0 + 184);
    v54 = *(v0 + 168);
    v69 = *(v0 + 144);
    v65 = *(v0 + 120);
    v73 = *(v0 + 72);
    v61 = *(v0 + 96);
    *(v0 + 264);
    v27;
    v28;
    v29;
    v30;
    v54;
    v69;
    v65;
    v61;
    v73;
    v31 = *(v0 + 8);
    v32 = v57;
    return v31(v32);
  }

  v33 = *(v0 + 296) + 1;
  *(v0 + 304) = v57;
  *(v0 + 296) = v33;
  (*(v0 + 288))(*(v0 + 264), *(v0 + 32) + ((*(v0 + 344) + 32) & ~*(v0 + 344)) + *(v0 + 280) * v33, *(v0 + 248));
  static Task<>.checkCancellation()();
  v34 = *(v0 + 264);
  if (v53)
  {
    (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
    v57;
    v35 = *(v0 + 264);
    v36 = *(v0 + 240);
    v37 = *(v0 + 232);
    v52 = *(v0 + 208);
    v55 = *(v0 + 184);
    v70 = *(v0 + 168);
    v66 = *(v0 + 144);
    v62 = *(v0 + 120);
    v74 = *(v0 + 96);
    v58 = *(v0 + 72);
    *(v0 + 32);
    v35;
    v36;
    v37;
    v52;
    v55;
    v70;
    v66;
    v62;
    v74;
    v32 = v58;
    v58;
    v31 = *(v0 + 8);
    return v31(v32);
  }

  v39 = *(v0 + 208);
  v40 = *(v0 + 184);
  v41 = *(v0 + 56);
  v42 = *(v0 + 176);
  AnnotatedFeature.feature.getter(*(v0 + 248));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v40, v42);
  v44 = *(v0 + 184);
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v0 + 136) + 32))(*(v0 + 144), v44, *(v0 + 128));
    v45 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 328) = v45;
    *v45 = v0;
    v45[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v46 = *(v0 + 144);
    return FullyConnectedNetworkClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 128));
  }

  else
  {
    (*(*(v0 + 160) + 32))(*(v0 + 168), v44, *(v0 + 152));
    v47 = swift_task_alloc(async function pointer to LogisticRegressionClassifierModel.applied(to:eventHandler:)[1]);
    *(v0 + 312) = v47;
    *v47 = v0;
    v47[1] = specialized Transformer.prediction<A, B>(from:eventHandler:);
    v48 = *(v0 + 168);
    return LogisticRegressionClassifierModel.applied(to:eventHandler:)(*(v0 + 240), *(v0 + 208), *(v0 + 40), *(v0 + 48), *(v0 + 152));
  }
}

{
  v11 = *(v0 + 336);
  v1 = *(v0 + 304);
  v17 = *(v0 + 264);
  v15 = *(v0 + 256);
  v19 = *(v0 + 248);
  v2 = *(v0 + 208);
  v3 = *(v0 + 200);
  v4 = *(v0 + 192);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  (*(v3 + 8))(v2, v4);
  v1, v4;
  v5 = v19;
  (*(v15 + 8))(v17, v19);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 232);
  v9 = *(v0 + 208);
  v14 = *(v0 + 184);
  v13 = *(v0 + 168);
  v12 = *(v0 + 144);
  v20 = *(v0 + 120);
  v18 = *(v0 + 96);
  v16 = *(v0 + 72);
  *(v0 + 32), v5;
  v6;
  v7;
  v8;
  v9;
  v14;
  v13;
  v12;
  v20;
  v18;
  v16;
  return (*(v0 + 8))();
}

{
  return specialized Transformer.prediction<A, B>(from:eventHandler:)();
}

{
  return specialized Transformer.prediction<A, B>(from:eventHandler:)();
}

uint64_t key path setter for AnnotatedPrediction.prediction : AnnotatedPrediction<ClassificationDistribution<String>, String>(uint64_t a1)
{
  v9[0] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  (*(v3 + 16))(v9, a1, v2);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
  return AnnotatedPrediction.prediction.setter(v9, v7);
}

uint64_t key path getter for ClassificationDistribution.mostLikelyLabel : ClassificationDistribution<String>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationDistribution<String>);
  result = ClassificationDistribution.mostLikelyLabel.getter(v2);
  *v1 = v4;
  return result;
}

uint64_t SoundClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t *a1, unsigned __int8 *a2)
{
  v84 = v2;
  v79 = v3;
  v89 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v87 = &v75;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v85 = &v75;
  LODWORD(v10) = 0;
  v82 = type metadata accessor for CSVWritingOptions(0);
  v78 = *(v82 - 8);
  v11 = *(v78 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v76 = &v75;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v75 = &v75;
  v86 = type metadata accessor for DataFrame(0);
  v81 = *(v86 - 1);
  v16 = *(v81 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v77 = &v75;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v80 = &v75;
  v88 = type metadata accessor for URL(0);
  v21 = *(v88 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = alloca(v22);
  v26 = alloca(v22);
  v27 = alloca(v22);
  v28 = alloca(v22);
  v29 = alloca(v22);
  v30 = alloca(v22);
  v31 = *a2;
  if (v31 == 2)
  {
    URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
    v89 = &v75;
    URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
    v47 = *(v21 + 8);
    v47(&v75, v88);
    v48 = v79;
    v49 = v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, v91, 0, 0);
    v50 = v85;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49, v85, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    v51 = type metadata accessor for MLSoundClassifier.Classifier(0);
    if (__swift_getEnumTagSinglePayload(v50, 1, v51) == 1)
    {
      BUG();
    }

    v86 = v47;
    v52 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v48;
    swift_beginAccess(v52, v90, 0, 0);
    v10 = v87;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, v87, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    v53 = type metadata accessor for MLSoundClassifier.Model(0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v53) == 1)
    {
      BUG();
    }

    v54 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier, type metadata accessor for MLSoundClassifier.Classifier, &protocol conformance descriptor for MLSoundClassifier.Classifier);
    v55 = v89;
    v56 = v85;
    v57 = v84;
    UpdatableSupervisedEstimator.writeWithOptimizer(_:to:overwrite:)(v10, v89, 1, v51, v54);
    if (!v57)
    {
      v86(v55, v88);
      outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLSoundClassifier.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.Classifier);
LABEL_13:
      LOBYTE(v10) = 1;
      return v10;
    }

    v86(v55, v88);
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLSoundClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLSoundClassifier.Classifier);
  }

  else
  {
    if (v31 != 1)
    {
      return v10;
    }

    v85 = &v75;
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
    v87 = &v75;
    URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
    v32 = *(v21 + 8);
    v33 = v88;
    v32(&v75, v88);
    URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
    URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
    v83 = v32;
    v32(&v75, v33);
    v34 = objc_opt_self(NSFileManager);
    v35 = [v34 defaultManager];
    v36 = v35;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v91[0] = 0;
    v39 = [(NSURL *)v36 createDirectoryAtURL:v37 withIntermediateDirectories:1 attributes:0 error:v91];

    v40 = v91[0];
    if (v39)
    {
      v41 = *(v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      v91[0];
      v41;
      v42 = v80;
      static SoundClassifierTrainingSessionDelegate.createJSONEncodedDataFrame(from:)(v41);
      v41;
      v43 = v75;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v44 = v86;
      v45 = v84;
      DataFrameProtocol.writeCSV(to:options:)(v87, v43, v86, &protocol witness table for DataFrame);
      if (v45)
      {
        (*(v78 + 8))(v43, v82);
        (*(v81 + 8))(v42, v44);
        v46 = v85;
LABEL_16:
        v68 = v88;
        v10 = v83;
        v83(v46, v88);
        v10(v87, v68);
        return v10;
      }

      v89 = *(v78 + 8);
      (v89)(v43, v82);
      v84 = 0;
      v60 = *(v79 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
      v60;
      v61 = v77;
      static SoundClassifierTrainingSessionDelegate.createJSONEncodedDataFrame(from:)(v60);
      v60;
      v62 = v76;
      CSVWritingOptions.init(includesHeader:dateFormat:nilEncoding:trueEncoding:falseEncoding:newline:delimiter:)(1, 0, 0, 0, 0xE000000000000000, 1702195828, 0xE400000000000000, 0x65736C6166, 0xE500000000000000, 10, 0xE100000000000000, 44, 0xE100000000000000);
      v63 = v85;
      v64 = v84;
      DataFrameProtocol.writeCSV(to:options:)(v85, v62, v86, &protocol witness table for DataFrame);
      if (v64)
      {
        (v89)(v62, v82);
        v65 = *(v81 + 8);
        v66 = v61;
        v67 = v86;
        v65(v66, v86);
        v65(v80, v67);
        v46 = v63;
        goto LABEL_16;
      }

      (v89)(v62, v82);
      v70 = *(v81 + 8);
      v71 = v61;
      v72 = v86;
      v70(v71, v86);
      v70(v80, v72);
      v73 = v63;
      v74 = v88;
      v10 = v83;
      v83(v73, v88);
      v10(v87, v74);
      goto LABEL_13;
    }

    v58 = v91[0];
    _convertNSErrorToError(_:)(v40);

    swift_willThrow(v58, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:");
    v10 = v88;
    v59 = v83;
    v83(v85, v88);
    v59(v87, v10);
  }

  return v10;
}

uint64_t static SoundClassifierTrainingSessionDelegate.createJSONEncodedDataFrame(from:)(uint64_t a1)
{
  v62 = v1;
  v3 = 0;
  v4 = *(*(type metadata accessor for String.Encoding(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v55 = &v51;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v57 = *(v56 - 8);
  v7 = *(v57 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v58 = &v51;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v69 = *(v73 - 8);
  v10 = *(v69 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v70 = &v51;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v63 = *(v66 - 8);
  v13 = *(v63 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = type metadata accessor for JSONEncoder(0);
  swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
  v19 = a1;
  v68 = JSONEncoder.init()();
  v20 = *(a1 + 16);
  v74 = &v51;
  Column.init(name:capacity:)(0x7365727574616566, 0xE800000000000000, v20, &type metadata for String);
  v67 = &v51;
  Column.init(name:capacity:)(0x62614C7373616C63, 0xEA00000000006C65, v20, &type metadata for String);
  v59 = v20;
  if (v20)
  {
    v21 = v19 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v60 = *(v69 + 16);
    v61 = *(v69 + 72);
    v64 = v19;
    v19;
    v22 = v73;
    v23 = v70;
    do
    {
      v53 = v21;
      v60(v23, v21, v22);
      v24 = v58;
      AnnotatedFeature.feature.getter(v22);
      v25 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
      v26 = v56;
      v27 = MLShapedArrayProtocol.scalars.getter(v56, v25);
      (*(v57 + 8))(v24, v26);
      v71 = v27;
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v29 = lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A], &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
      v30 = dispatch thunk of JSONEncoder.encode<A>(_:)(&v71, v28, v29);
      v65 = v3;
      if (v3)
      {
        v27;
        swift_unexpectedError(v65, "CreateML/_SoundClassifierTrainingSessionDelegate.swift", 54, 1, 430);
        BUG();
      }

      v32 = v30;
      v33 = v31;
      v27;
      v34 = v55;
      static String.Encoding.utf8.getter();
      v35 = String.init(data:encoding:)(v32, v33, v34);
      v37 = v36;
      v71 = v35;
      v72 = v36;
      v54 = v33;
      v38 = v66;
      Column.append(_:)(&v71, v66);
      v37;
      v39 = v70;
      AnnotatedFeature.annotation.getter(v73);
      v40 = v72;
      v52[0] = v71;
      v52[1] = v72;
      Column.append(_:)(v52, v38);
      outlined consume of Data._Representation(v32, v54);
      v40;
      v22 = v73;
      (*(v69 + 8))(v39, v73);
      v21 = v61 + v53;
      v41 = v59-- == 1;
      v23 = v39;
      v3 = v65;
    }

    while (!v41);
    v64;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v43 = *(type metadata accessor for AnyColumn(0) - 8);
  v44 = swift_allocObject(v42, ((*(v43 + 80) + 32) & ~*(v43 + 80)) + 2 * *(v43 + 72), *(v43 + 80) | 7);
  *(v44 + 16) = 2;
  *(v44 + 24) = 4;
  v45 = v66;
  Column.eraseToAnyColumn()(v66);
  v46 = v67;
  Column.eraseToAnyColumn()(v45);
  v71 = v44;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v48 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(&v71, v47, v48);

  v49 = *(v63 + 8);
  v49(v46, v45);
  return (v49)(v74, v45);
}

uint64_t static SoundClassifierTrainingSessionDelegate.createDataFrame(from:)(uint64_t a1)
{
  v34 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v37 = v27;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v35 = *(v39 - 8);
  v6 = *(v35 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(a1 + 16);
  v41 = v27;
  Column.init(name:capacity:)(0x7365727574616566, 0xE800000000000000, v13, v2);
  v40 = v27;
  Column.init(name:capacity:)(0x62614C7373616C63, 0xEA00000000006C65, v13, &type metadata for String);
  v42 = v9;
  if (v13)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
    v14 = *(v31 - 8);
    v32 = v2;
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v33 = *(v14 + 72);
    v38 = a1;
    a1;
    v16 = v37;
    do
    {
      v17 = v31;
      AnnotatedFeature.feature.getter(v31);
      Column.append(_:)(v16, v42);
      (*(v30 + 8))(v16, v32);
      AnnotatedFeature.annotation.getter(v17);
      v18 = v29;
      v27[0] = v28;
      v27[1] = v29;
      Column.append(_:)(v27, v39);
      v18;
      v15 += v33;
      --v13;
    }

    while (v13);
    v38;
    v9 = v42;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v20 = *(type metadata accessor for AnyColumn(0) - 8);
  v21 = swift_allocObject(v19, ((*(v20 + 80) + 32) & ~*(v20 + 80)) + 2 * *(v20 + 72), *(v20 + 80) | 7);
  *(v21 + 16) = 2;
  *(v21 + 24) = 4;
  Column.eraseToAnyColumn()(v9);
  v22 = v39;
  v23 = v40;
  Column.eraseToAnyColumn()(v39);
  v28 = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v25 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(&v28, v24, v25);
  (*(v35 + 8))(v23, v22);
  return (*(v36 + 8))(v41, v42);
}

uint64_t SoundClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
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
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLSoundClassifier.PersistentParameters);
    MLSoundClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLSoundClassifier.PersistentParameters);
  }
}

NSURL *SoundClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, _BYTE *a2)
{
  v38 = v2;
  v32 = v3;
  v36 = a2;
  v31 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
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
  v33 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v14 = *(*(v33 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v35 = v29;
  v17 = alloca(v14);
  v18 = alloca(v14);
  LOBYTE(v36) = *v36;
  (*(v10 + 16))(v29, v31, v9);
  v19 = v38;
  result = MLSoundClassifier.PersistentParameters.init(sessionDirectory:)(v29);
  if (!v19)
  {
    v21 = v36;
    v38 = v29;
    v22 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + v32;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + v32, v29, 0, 0);
    v23 = v37;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v22, v37, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    v24 = v23;
    v25 = v33;
    if (__swift_getEnumTagSinglePayload(v24, 1, v33) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
      v26 = v34;
      outlined init with take of MLClassifierMetrics(v38, v34, type metadata accessor for MLSoundClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
      swift_beginAccess(v22, v30, 33, 0);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v26, v22, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
      return swift_endAccess(v30);
    }

    else
    {
      v27 = v35;
      outlined init with take of MLClassifierMetrics(v37, v35, type metadata accessor for MLSoundClassifier.PersistentParameters);
      v30[0] = v21;
      v28 = v38;
      SoundClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(v38, v27, v30);
      outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.PersistentParameters);
      return outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLSoundClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t SoundClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *&v135 = a2;
  v5 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v127 = &v122;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v130 = &v122;
  v132 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v132 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v124 = &v122;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v123 = &v122;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLSoundClassifier.ModelParameters.ValidationData, MLSoundClassifier.ModelParameters.ValidationData));
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  *&v136 = &v122;
  v19 = *a3;
  *&v137[0] = a1;
  result = MLSoundClassifier.DataSource.labeledSounds()(&demangling cache variable for type metadata for (MLSoundClassifier.ModelParameters.ValidationData, MLSoundClassifier.ModelParameters.ValidationData), a2, v20);
  if (v3)
  {
    return result;
  }

  v22 = result;
  v125 = v15;
  v131 = v19;
  v23 = specialized Sequence.flatMap<A>(_:)(result);
  v22;
  v24 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v126 = *(*&v137[0] + v24[7]);
  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v23, v126);
  v25 = v23;
  v23;
  v26 = v135;
  v28 = MLSoundClassifier.DataSource.labeledSounds()(v25, a2, v27);
  v29 = specialized Sequence.flatMap<A>(_:)(v28);
  v133 = 0;
  v28;
  v128 = *(v26 + v24[7]);
  v30 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v29, v128);
  v29;
  v31 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;
  MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ18CreateMLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5(ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5, v30);
  v31;
  v30;
  if ((MLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5 & 1) == 0)
  {
    v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v69 = 1;
    *(v69 + 8) = 0;
    *(v69 + 24) = 0;
    *(v69 + 40) = 0;
    *(v69 + 48) = 4;
    return swift_willThrow(&type metadata for MLCreateError, v67);
  }

  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5 = v24;
  v32 = v24[5];
  v33 = *&v137[0] + v32;
  v34 = v26 + v32;
  v35 = v136;
  v36 = (v136 + *(v125 + 48));
  outlined init with copy of MLTrainingSessionParameters(v33, v136, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v37 = v34;
  v38 = v35;
  outlined init with copy of MLTrainingSessionParameters(v37, v36, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v39 = v132;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v35, v132);
  v41 = v135;
  switch(EnumCaseMultiPayload)
  {
    case 0:
    case 3:
      outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      goto LABEL_5;
    case 1:
      v70 = v123;
      outlined init with copy of MLTrainingSessionParameters(v38, v123, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v71 = swift_getEnumCaseMultiPayload(v36, v39);
      v72 = v133;
      if (v71 != 1)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLSoundClassifier.DataSource);
LABEL_34:
        v98 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v98, 0, 0);
        *v99 = 1;
        *(v99 + 8) = 0;
        *(v99 + 24) = 0;
        *(v99 + 40) = 0;
        *(v99 + 48) = 4;
        swift_willThrow(&type metadata for MLCreateError, v98);
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, &demangling cache variable for type metadata for (MLSoundClassifier.ModelParameters.ValidationData, MLSoundClassifier.ModelParameters.ValidationData));
      }

      v73 = v70;
      v74 = v130;
      outlined init with take of MLClassifierMetrics(v73, v130, type metadata accessor for MLSoundClassifier.DataSource);
      v75 = v36;
      v76 = v127;
      v77 = v127;
      outlined init with take of MLClassifierMetrics(v75, v127, type metadata accessor for MLSoundClassifier.DataSource);
      v79 = MLSoundClassifier.DataSource.labeledSounds()(v75, v77, v78);
      if (v72)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v76, type metadata accessor for MLSoundClassifier.DataSource);
        v80 = v74;
LABEL_22:
        outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLSoundClassifier.DataSource);
        v81 = v136;
        return outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      }

      v100 = v79;
      v101 = specialized Sequence.flatMap<A>(_:)(v79);
      v100;
      v102 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v101, v126);
      v101;
      v104 = MLSoundClassifier.DataSource.labeledSounds()(v101, v77, v103);
      v117 = v104;
      v118 = specialized Sequence.flatMap<A>(_:)(v104);
      v133 = 0;
      v117;
      v119 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(v118, v128);
      v118;
      LOBYTE(v118) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ18CreateMLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5(v102, v119);
      v102;
      v119;
      if ((v118 & 1) == 0)
      {
        v120 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v120, 0, 0);
        *v121 = 1;
        *(v121 + 8) = 0;
        *(v121 + 24) = 0;
        *(v121 + 40) = 0;
        *(v121 + 48) = 4;
        swift_willThrow(&type metadata for MLCreateError, v120);
        outlined destroy of MLActivityClassifier.ModelParameters(v127, type metadata accessor for MLSoundClassifier.DataSource);
        v80 = v130;
        goto LABEL_22;
      }

      outlined destroy of MLActivityClassifier.ModelParameters(v127, type metadata accessor for MLSoundClassifier.DataSource);
      outlined destroy of MLActivityClassifier.ModelParameters(v130, type metadata accessor for MLSoundClassifier.DataSource);
      v41 = v135;
      v38 = v136;
LABEL_5:
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v42 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5[6];
      v43 = v137[0];
      v44 = *(*&v137[0] + v42);
      if (v44 != *(v41 + v42))
      {
        v137[0] = *(v41 + v42);
        v89 = Double.description.getter(v44);
        v91 = v90;
        v92 = Double.description.getter(v137[0]);
        v94 = v93;
        v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
        strcpy(v95, "Overlap Factor");
        *(v95 + 15) = -18;
        *(v95 + 16) = v89;
LABEL_29:
        *(v95 + 24) = v91;
        *(v95 + 32) = v92;
        *(v95 + 40) = v94;
        *(v95 + 48) = 3;
        return swift_willThrow(&type metadata for MLCreateError, v67);
      }

      if (v126 != v128)
      {
        *&v137[0] = Double.description.getter(v126);
        v91 = v96;
        v92 = Double.description.getter(v128);
        v94 = v97;
        v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
        *v95 = 0xD000000000000023;
        *(v95 + 8) = "ning checkpoints are supported" + 0x8000000000000000;
        *(v95 + 16) = v137[0];
        goto LABEL_29;
      }

      v45 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5[9];
      v46 = *(*&v137[0] + v45);
      v47 = *(*&v137[0] + v45 + 8);
      v48 = *(v41 + v45);
      v49 = *(v41 + v45 + 8);
      *&v136 = v45;
      if (v47)
      {
        v53 = ((v46 == v48) & v49) == 0;
        v50 = v131;
        if (v53)
        {
LABEL_9:
          v137[0] = *(*&v137[0] + v45 + 16);
          v51 = v137[0];
          *&v129 = v46;
          BYTE8(v129) = v47;
          LOBYTE(v137[0]);
          *&v52 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
          v132 = 0xD000000000000015;
          v53 = *&v51 == 0;
          v54 = 0xD000000000000015;
          if (v51 == 0.0)
          {
            v54 = 0xD000000000000012;
          }

          v55 = "Feature Extractor: ";
          if (v53)
          {
            v55 = "Multilayer Perceptron";
          }

          v56 = *(&v52 + 1);
          v129 = v52;
          BYTE8(v52);
          v57._countAndFlagsBits = v54;
          v57._object = (v55 | 0x8000000000000000);
          String.append(_:)(v57);
          *&v137[0];
          v56;
          v55 | 0x8000000000000000;
          *v137 = v129;
          v58 = *(v135 + v136);
          v59 = *(v135 + v136 + 8);
          *&v136 = *(v135 + v136 + 16);
          v60 = v136;
          *&v129 = v58;
          BYTE8(v129) = v59;
          v136;
          *&v61 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
          v62 = v60 == 0;
          v63 = v132;
          if (v62)
          {
            v63 = 0xD000000000000012;
          }

          v64 = *(&v61 + 1);
          v65 = "Feature Extractor: ";
          if (v62)
          {
            v65 = "Multilayer Perceptron";
          }

          *&v135 = "on time window size" + 0x8000000000000000;
          v129 = v61;
          BYTE8(v61);
          v66._countAndFlagsBits = v63;
          v66._object = (v65 | 0x8000000000000000);
          String.append(_:)(v66);
          v136;
          v64;
          v65 | 0x8000000000000000;
          v136 = v129;
          v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
          *v68 = 0xD000000000000011;
          *(v68 + 8) = v135;
          *(v68 + 16) = *v137;
          *(v68 + 32) = v136;
          *(v68 + 48) = 3;
          return swift_willThrow(&type metadata for MLCreateError, v67);
        }
      }

      else
      {
        v53 = ((v46 != v48) | v49 & 1) == 0;
        v50 = v131;
        if (!v53)
        {
          goto LABEL_9;
        }
      }

      switch(v50)
      {
        case 0:
          v105 = _stringCompareWithSmolCheck(_:_:expecting:)(0x696C616974696E69, 0xEB0000000064657ALL, 0x6974636172747865, 0xEA0000000000676ELL, 0);
          result = 0xEB0000000064657ALL;
          if ((v105 & 1) == 0)
          {
            v106 = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5[8];
            v107 = *(v41 + v106);
            if (*(*&v43 + v106) == v107)
            {
              v108 = *(*&v43 + v136);
              v109 = *(*&v43 + v136 + 16);
              JUMPOUT(0xF0A06);
            }

            *&v129 = *(*&v43 + v106);
            v110 = lazy protocol witness table accessor for type Int and conformance Int();
            *&v137[0] = BinaryInteger.description.getter(&type metadata for Int, v110);
            *&v135 = v111;
            *&v129 = v107;
            v112 = BinaryInteger.description.getter(&type metadata for Int, v110);
            v114 = v113;
            v115 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v115, 0, 0);
            *v116 = 0x657449202E78614DLL;
            v116[1] = 0xEF736E6F69746172;
            v116[2] = *&v137[0];
            v116[3] = v135;
            v116[4] = v112;
            v116[5] = v114;
            JUMPOUT(0xF0ACALL);
          }

          return result;
        case 1:
          result = 0xEA0000000000676ELL;
          break;
      }

      return result;
    case 2:
      v82 = v38;
      v83 = v124;
      outlined init with copy of MLTrainingSessionParameters(v82, v124, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v84 = *v83;
      if (swift_getEnumCaseMultiPayload(v36, v39) != 2)
      {
        v84;
        v38 = v136;
        goto LABEL_34;
      }

      v85 = *v36;
      v86 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say10Foundation3URLVGTt1g5(v84, *v36);
      v84;
      v85;
      v38 = v136;
      if (v86)
      {
        goto LABEL_5;
      }

      v87 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v87, 0, 0);
      *v88 = 1;
      *(v88 + 8) = 0;
      *(v88 + 24) = 0;
      *(v88 + 40) = 0;
      *(v88 + 48) = 4;
      swift_willThrow(&type metadata for MLCreateError, v87);
      v81 = v38;
      return outlined destroy of MLActivityClassifier.ModelParameters(v81, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
  *(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &demangling cache variable for type metadata for MLSoundClassifier.ModelParameters?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
  return v0;
}

uint64_t type metadata accessor for SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for SoundClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for SoundClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for SoundClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  v9[0] = &unk_340B08;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v9[1] = *(result - 8) + 64;
    result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.PersistentParameters?, type metadata accessor for MLSoundClassifier.PersistentParameters);
    if (v3 <= 0x3F)
    {
      v9[2] = *(result - 8) + 64;
      v9[3] = &value witness table for Builtin.BridgeObject + 64;
      v9[4] = &value witness table for Builtin.BridgeObject + 64;
      v9[5] = &value witness table for Builtin.BridgeObject + 64;
      v9[6] = &value witness table for Builtin.BridgeObject + 64;
      v9[7] = &value witness table for Builtin.BridgeObject + 64;
      v9[8] = &unk_340B20;
      result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.Classifier?, type metadata accessor for MLSoundClassifier.Classifier);
      if (v4 <= 0x3F)
      {
        v9[9] = *(result - 8) + 64;
        result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.Model?, type metadata accessor for MLSoundClassifier.Model);
        if (v5 <= 0x3F)
        {
          v9[10] = *(result - 8) + 64;
          result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLSoundClassifier.ModelParameters?, type metadata accessor for MLSoundClassifier.ModelParameters);
          if (v6 <= 0x3F)
          {
            v9[11] = *(result - 8) + 64;
            result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for MLClassifierMetrics?, type metadata accessor for MLClassifierMetrics);
            if (v7 <= 0x3F)
            {
              v10 = *(result - 8) + 64;
              v11 = v10;
              result = type metadata accessor for MLSoundClassifier.PersistentParameters?(319, &lazy cache variable for type metadata for TrainingTablePrinter?, type metadata accessor for TrainingTablePrinter);
              if (v8 <= 0x3F)
              {
                v12 = *(result - 8) + 64;
                result = swift_updateClassMetadata2(a1, 256, 15, v9, a1 + 80);
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
  }

  return result;
}

uint64_t type metadata accessor for MLSoundClassifier.PersistentParameters?(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    v4 = a3(255);
    result = type metadata accessor for Optional(a1, v4);
    if (!v5)
    {
      *a2 = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance SoundClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = SoundClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v7)
  {
    return (*(v2 + 8))(v5, v6, *(&v4 + 1));
  }

  else
  {
    return (*(v2 + 8))(v4, BYTE8(v4));
  }
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_task_alloc(480);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return SoundClassifierTrainingSessionDelegate.train(from:)(a1);
}

uint64_t protocol witness for TrainingSessionDelegate.train(from:) in conformance SoundClassifierTrainingSessionDelegate(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v7 = *(*v4 + 16);
  v8 = *v4;
  v7;
  if (!v3)
  {
    v9 = a3;
    v7 = a1;
  }

  return (*(v8 + 8))(v7, a2, v9);
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate()
{
  v2 = *v0;
  v3 = swift_task_alloc(448);
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate;
  return SoundClassifierTrainingSessionDelegate.evaluate(from:)();
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance SoundClassifierTrainingSessionDelegate(uint64_t a1)
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

Swift::Int specialized MutableCollection<>.sort(by:)(void *a1)
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

{
  v1 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8);
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_native(*a1))
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v22 = v5;
  v7 = v6;
  v24 = a4;
  v21 = a3;
  *(v7 + 72) = &_swiftEmptySetSingleton;
  v9 = objc_allocWithZone(NSLock);
  *(v7 + 80) = [v9 init];
  v10 = a5[1];
  v11 = *(a5 + 25);
  *(v7 + 16) = *a5;
  *(v7 + 32) = v10;
  *(v7 + 41) = v11;
  swift_unknownObjectRetain(a1);
  v23 = a1;
  *(v7 + 64) = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo12MLMultiArrayC_s0C5SliceVyAEGTt0g5Tm(a1, a2, v21, v24, specialized _copyCollectionToContiguousArray<A>(_:));
  if (*a5 < 0.0 || *a5 >= 1.0)
  {
    v24 = *a5;

    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v12._object = "gSessionDelegate.swift" + 0x8000000000000000;
    v12._countAndFlagsBits = 0xD00000000000003ALL;
    String.append(_:)(v12);
    Double.write<A>(to:)(&v19, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v19;
    v14 = v20;
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
    v16 = swift_allocObject(v15, 64, 7);
    v16[2] = 1;
    v16[3] = 2;
    v16[7] = &type metadata for String;
    v16[4] = v13;
    v16[5] = v14;
    v14;
    print(_:separator:terminator:)(v16, 32, 0xE100000000000000, 10, 0xE100000000000000);
    v16;
    v12._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v12._object, 0, 0);
    *v17 = v13;
    *(v17 + 8) = v14;
    *(v17 + 16) = 0;
    *(v17 + 32) = 0;
    *(v17 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v12._object);
    swift_unknownObjectRelease(v23);
  }

  else
  {
    swift_unknownObjectRelease(v23);
  }

  return v7;
}

uint64_t specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  *(v2 + 72) = &_swiftEmptySetSingleton;
  v5 = objc_allocWithZone(NSLock);
  *(v2 + 80) = [v5 init];
  v6 = a2[1];
  v7 = *(a2 + 25);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v6;
  *(v2 + 41) = v7;
  *(v2 + 64) = a1;
  if (*a2 < 0.0 || *a2 >= 1.0)
  {
    v17 = *a2;
    a1;

    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(61);
    v8._object = "gSessionDelegate.swift" + 0x8000000000000000;
    v8._countAndFlagsBits = 0xD00000000000003ALL;
    String.append(_:)(v8);
    Double.write<A>(to:)(&v15, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v8._countAndFlagsBits = 46;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v17 = a1;
    v9 = v15;
    v10 = v16;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
    v12 = swift_allocObject(v11, 64, 7);
    v12[2] = 1;
    v12[3] = 2;
    v12[7] = &type metadata for String;
    v12[4] = v9;
    v12[5] = v10;
    v10;
    print(_:separator:terminator:)(v12, 32, 0xE100000000000000, 10, 0xE100000000000000);
    v12;
    v8._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v8._object, 0, 0);
    *v13 = v9;
    *(v13 + 8) = v10;
    *(v13 + 16) = 0;
    *(v13 + 32) = 0;
    *(v13 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v8._object);
    v17;
  }

  return v3;
}

uint64_t specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL;
  v15 = a2;
  a4;
  a2;
  while (1)
  {
    while (1)
    {
      v7 = String.Iterator.next()();
      if (!v7.value._object)
      {
        a4, v6;
        object = String.Iterator.next()().value._object;
        v15, v6;
        LOBYTE(v4) = object != 0;
        goto LABEL_14;
      }

      countAndFlagsBits = v7.value._countAndFlagsBits;
      v9 = v7.value._object;
      v10 = String.Iterator.next()();
      if (!v10.value._object)
      {
        v9, v6;
LABEL_11:
        v15, v6;
        LODWORD(v4) = 0;
        goto LABEL_13;
      }

      v4 = v10.value._countAndFlagsBits;
      v11 = v10.value._object;
      if (v10.value._countAndFlagsBits ^ countAndFlagsBits | v10.value._object ^ v9)
      {
        break;
      }

      v9, v6;
      v11, v6;
    }

    v6 = v9;
    if (_stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, v9, v10.value._countAndFlagsBits, v10.value._object, 1))
    {
      break;
    }

    v6 = v11;
    LODWORD(v4) = _stringCompareWithSmolCheck(_:_:expecting:)(v4, v11, countAndFlagsBits, v9, 1);
    v9, v11;
    v11, v11;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  v9, v9;
  v11, v9;
  v15, v9;
  LOBYTE(v4) = 1;
LABEL_13:
  object = a4;
LABEL_14:
  object, v6;
  return v4;
}

id @nonobjc AVAudioFile.init(forReading:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [v1 initForReading:v2 error:&v12];

  v5 = v12;
  v11 = v4;
  if (v4)
  {
    v6 = type metadata accessor for URL(0);
    v7 = *(*(v6 - 8) + 8);
    v5;
    v7(a1, v6);
  }

  else
  {
    v8 = v12;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
    v9 = type metadata accessor for URL(0);
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v11;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for TrainingTablePrinter(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 24);
  v5 = v4 + *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = v0 + v4;
  v8 = type metadata accessor for Date(0);
  (*(*(v8 - 8) + 8))(v7, v8);

  *(*(v1 + 24) + v7);
  return swift_deallocObject(v0, v5, v3 | 7);
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v148 = type metadata accessor for URL(0);
  v143 = *(v148 - 8);
  v2 = *(v143 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v149 = &v139;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v145 = &v139;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v142 = &v139;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v165 = &v139;
  v14 = alloca(v7);
  v15 = alloca(v7);
  v164 = &v139;
  v154 = a1;
  v16 = a1[1];
  result = _minimumMergeRunLength(_:)(v16);
  if (result >= v16)
  {
    if (v16 < 0)
    {
      BUG();
    }

    if (v16)
    {
      return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v16, 1uLL, v154);
    }
  }

  else
  {
    v170 = v5;
    if (v16 < -1)
    {
      BUG();
    }

    v157 = v16;
    v141 = result;
    if (v16 <= 1)
    {
      v19 = _swiftEmptyArrayStorage;
    }

    else
    {
      v18 = v16 / 2;
      v19 = static Array._allocateBufferUninitialized(minimumCapacity:)(v16 / 2, v170);
      v16 = v157;
      v19[2] = v18;
    }

    v156 = v1;
    v20 = *(v6 + 80);
    v146 = v19;
    v144 = v19 + ((v20 + 32) & ~v20);
    v166 = v6;
    if (v16 > 0)
    {
      v162 = *v154;
      v21 = v16;
      v22 = _swiftEmptyArrayStorage;
      v23 = 0;
      v24 = v170;
      while (1)
      {
        v25 = (v23 + 1);
        v168 = v22;
        v158 = v23;
        if ((v23 + 1) >= v21)
        {
          v53 = v23;
        }

        else
        {
          v26 = *(v6 + 16);
          v161 = *(v6 + 72);
          v27 = v162;
          v169 = v162 + v161 * v25;
          v28 = v23;
          v26(v164, v169, v24);
          v155 = v28 * v161;
          v150 = v26;
          v26(v165, v27 + v28 * v161, v24);
          v29 = v149;
          AnnotatedFeature.feature.getter(v170);
          v30 = URL.path(percentEncoded:)(1);
          countAndFlagsBits = v30._countAndFlagsBits;
          object = v30._object;
          v31 = *(v143 + 8);
          v32 = v148;
          v31(v29, v148);
          AnnotatedFeature.feature.getter(v170);
          v33 = URL.path(percentEncoded:)(1);
          v160 = v33._countAndFlagsBits;
          v34 = v33._object;
          v35 = v29;
          v36 = v170;
          v151 = v31;
          v31(v35, v32);
          v6 = v166;
          v37 = object;
          LOBYTE(v153) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v160, v34, countAndFlagsBits, object);
          v37;
          v34;
          v38 = *(v6 + 8);
          (v38)(v165, v36);
          v152 = v38;
          (v38)(v164, v36);
          v39 = v161;
          v25 = (v158 + 2);
          if ((v158 + 2) < v157)
          {
            v40 = v162 + v25 * v161;
            v41 = v169;
            while (1)
            {
              v169 = v41;
              v167 = v25;
              v147 = v40;
              v42 = v150;
              (v150)(v164, v40, v36, v39);
              v42(v165, v41, v36);
              v43 = v149;
              AnnotatedFeature.feature.getter(v170);
              v44 = URL.path(percentEncoded:)(1);
              countAndFlagsBits = v44._countAndFlagsBits;
              object = v44._object;
              v45 = v148;
              v46 = v151;
              (v151)(v43, v148);
              AnnotatedFeature.feature.getter(v170);
              v47 = URL.path(percentEncoded:)(1);
              v160 = v47._countAndFlagsBits;
              v48 = v47._object;
              v49 = v43;
              v36 = v170;
              v46(v49, v45);
              v50 = v48;
              v51 = object;
              LOBYTE(v48) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v160, v48, countAndFlagsBits, object);
              v51;
              v50;
              v52 = v152;
              (v152)(v165, v36);
              v52(v164, v36);
              if ((v153 ^ v48))
              {
                break;
              }

              v25 = v167 + 1;
              v39 = v161;
              v41 = &v161[v169];
              v40 = &v161[v147];
              if (v167 + 1 >= v157)
              {
                v25 = v157;
                v6 = v166;
                goto LABEL_19;
              }
            }

            v6 = v166;
            v25 = v167;
            v39 = v161;
          }

LABEL_19:
          v22 = v168;
          v53 = v158;
          v54 = v155;
          if (v153)
          {
            if (v25 < v158)
            {
              BUG();
            }

            if (v25 > v158)
            {
              v167 = v25;
              v55 = v25;
              v56 = v39 * (v25 - 1);
              v57 = v39 * v55;
              v58 = 0;
              v59 = v158;
              while (1)
              {
                v60 = (v58 + v167 - 1);
                if (v59 != v60)
                {
                  break;
                }

LABEL_32:
                ++v59;
                --v58;
                v56 -= v39;
                v57 -= v39;
                v54 += v39;
                if (v59 >= v60)
                {
                  v6 = v166;
                  v25 = v167;
                  v53 = v158;
                  goto LABEL_34;
                }
              }

              countAndFlagsBits = (v58 + v167 - 1);
              if (!v162)
              {
                BUG();
              }

              v160 = v162 + v54;
              v169 = v162 + v56;
              v61 = *(v166 + 32);
              v155 = v54;
              object = v61;
              (v61)(v145, v162 + v54, v170, v162, v22);
              if (v155 < v56 || v160 >= v57 + v162)
              {
                swift_arrayInitWithTakeFrontToBack(v160, v169, 1, v170);
LABEL_30:
                v63 = v169;
                v62 = v170;
              }

              else
              {
                v62 = v170;
                v63 = v169;
                if (v155 != v56)
                {
                  swift_arrayInitWithTakeBackToFront(v160, v169, 1, v170);
                  goto LABEL_30;
                }
              }

              (object)(v63, v145, v62);
              v22 = v168;
              v39 = v161;
              v54 = v155;
              v60 = countAndFlagsBits;
              goto LABEL_32;
            }
          }
        }

LABEL_34:
        if (v25 < v157)
        {
          if (__OFSUB__(v25, v53))
          {
            BUG();
          }

          if (v25 - v53 < v141)
          {
            v64 = &v53[v141];
            if (__OFADD__(v141, v53))
            {
              BUG();
            }

            if (v64 >= v157)
            {
              v64 = v157;
            }

            if (v64 < v53)
            {
              BUG();
            }

            if (v25 != v64)
            {
              v153 = *(v6 + 16);
              v65 = *(v6 + 72);
              v66 = (v162 + v65 * (v25 - 1));
              v150 = -v65;
              v140 = v65;
              v67 = (v162 + v65 * v25);
              v139 = v64;
              do
              {
                v152 = v67;
                v68 = v53;
                v69 = v67;
                v151 = v66;
                v70 = v170;
                v167 = v25;
                while (1)
                {
                  v147 = v68;
                  v71 = v66;
                  v161 = v69;
                  v72 = v153;
                  v153(v164, v69, v70);
                  v155 = v71;
                  v72(v165, v71, v70);
                  v73 = v149;
                  AnnotatedFeature.feature.getter(v70);
                  v74 = URL.path(percentEncoded:)(1);
                  v169 = v74._countAndFlagsBits;
                  countAndFlagsBits = v74._object;
                  object = *(v143 + 8);
                  v75 = v148;
                  (object)(v73, v148);
                  AnnotatedFeature.feature.getter(v170);
                  v76 = URL.path(percentEncoded:)(1);
                  v160 = v76._countAndFlagsBits;
                  v77 = v76._object;
                  v78 = v170;
                  (object)(v73, v75);
                  v79 = countAndFlagsBits;
                  LOBYTE(v169) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v160, v77, v169, countAndFlagsBits);
                  v79;
                  v80 = v166;
                  v77;
                  v81 = *(v80 + 8);
                  v81(v165, v78);
                  v81(v164, v78);
                  if ((v169 & 1) == 0)
                  {
                    break;
                  }

                  v82 = v147;
                  if (!v162)
                  {
                    BUG();
                  }

                  v169 = *(v80 + 32);
                  v83 = v161;
                  v70 = v170;
                  (v169)(v142, v161, v170);
                  v84 = v155;
                  swift_arrayInitWithTakeFrontToBack(v83, v155, 1, v70);
                  (v169)(v84, v142, v70);
                  v66 = (v150 + v84);
                  v68 = v82 + 1;
                  v69 = &v83[v150];
                  v85 = v167;
                  if (v167 == v68)
                  {
                    goto LABEL_49;
                  }
                }

                v85 = v167;
LABEL_49:
                v6 = v166;
                v25 = v85 + 1;
                v66 = &v151[v140];
                v67 = &v152[v140];
                v53 = v158;
              }

              while (v25 != v139);
              v25 = v139;
              v22 = v168;
            }
          }
        }

        if (v25 < v53)
        {
          BUG();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v22);
        v167 = v25;
        if (isUniquelyReferenced_nonNull_native)
        {
          v22 = v168;
        }

        else
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v168 + 2) + 1, 1, v168);
        }

        v87 = *(v22 + 2);
        v88 = v87 + 1;
        v89 = v158;
        if (*(v22 + 3) >> 1 <= v87)
        {
          v124 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v22 + 3) >= 2uLL, v87 + 1, 1, v22);
          v89 = v158;
          v22 = v124;
        }

        *(v22 + 2) = v88;
        v90 = 16 * v87;
        *&v22[v90 + 32] = v89;
        *&v22[v90 + 40] = v167;
        if (v87)
        {
          break;
        }

        v88 = 1;
        v24 = v170;
LABEL_91:
        v21 = v157;
        v23 = v167;
        if (v167 >= v157)
        {
          goto LABEL_95;
        }
      }

      v91 = (v22 + 32);
      v24 = v170;
      v168 = v22;
      v169 = (v22 + 32);
      while (1)
      {
        v92 = v88 - 1;
        if (v88 >= 4)
        {
          v97 = 16 * v88;
          v98 = *(v91 + 16 * v88 - 56);
          v94 = __OFSUB__(v98, *(v91 + 16 * v88 - 64));
          v99 = v98 - *(v91 + 16 * v88 - 64);
          if (v94)
          {
            BUG();
          }

          v100 = *(v91 + v97 - 40);
          v94 = __OFSUB__(v100, *(v91 + v97 - 48));
          v95 = v100 - *(v91 + v97 - 48);
          v96 = v94;
          if (v94)
          {
            BUG();
          }

          v101 = *&v22[v97 + 8];
          v94 = __OFSUB__(v101, *&v22[16 * v88]);
          v102 = v101 - *&v22[16 * v88];
          if (v94)
          {
            BUG();
          }

          v94 = __OFADD__(v95, v102);
          v103 = v95 + v102;
          if (v94)
          {
            BUG();
          }

          if (v103 >= v99)
          {
            v112 = *(v91 + 16 * v92 + 8);
            v94 = __OFSUB__(v112, *(v91 + 16 * v92));
            v113 = v112 - *(v91 + 16 * v92);
            if (v94)
            {
              BUG();
            }

            if (v95 < v113)
            {
LABEL_81:
              v92 = v88 - 2;
              goto LABEL_82;
            }

            goto LABEL_82;
          }
        }

        else
        {
          if (v88 != 3)
          {
            if (v88 < 2)
            {
              BUG();
            }

            v109 = *&v22[16 * v88 + 8];
            v94 = __OFSUB__(v109, *&v22[16 * v88]);
            v105 = v109 - *&v22[16 * v88];
            v106 = v94;
LABEL_75:
            if (v106)
            {
              BUG();
            }

            v110 = *(v91 + 16 * v92 + 8);
            v94 = __OFSUB__(v110, *(v91 + 16 * v92));
            v111 = v110 - *(v91 + 16 * v92);
            if (v94)
            {
              BUG();
            }

            if (v111 < v105)
            {
              v6 = v166;
              goto LABEL_91;
            }

            goto LABEL_82;
          }

          v93 = *(v22 + 5);
          v94 = __OFSUB__(v93, *(v22 + 4));
          v95 = v93 - *(v22 + 4);
          v96 = v94;
        }

        if (v96)
        {
          BUG();
        }

        v104 = *&v22[16 * v88 + 8];
        v94 = __OFSUB__(v104, *&v22[16 * v88]);
        v105 = v104 - *&v22[16 * v88];
        v106 = v94;
        if (v94)
        {
          BUG();
        }

        v107 = *(v91 + 16 * v92 + 8);
        v94 = __OFSUB__(v107, *(v91 + 16 * v92));
        v108 = v107 - *(v91 + 16 * v92);
        if (v94)
        {
          BUG();
        }

        if (__OFADD__(v108, v105))
        {
          BUG();
        }

        if (v108 + v105 < v95)
        {
          goto LABEL_75;
        }

        if (v95 < v108)
        {
          goto LABEL_81;
        }

LABEL_82:
        if (v92 - 1 >= v88)
        {
          BUG();
        }

        if (!v162)
        {
          BUG();
        }

        v114 = 16 * (v92 - 1);
        countAndFlagsBits = v92;
        v115 = (v91 + 16 * v92);
        v116 = *(v91 + v114);
        v117 = v115[1];
        v118 = v156;
        specialized _merge<A>(low:mid:high:buffer:by:)(v162 + v116 * *(v166 + 72), v162 + *(v166 + 72) * *v115, (v162 + v117 * *(v166 + 72)), v144);
        v156 = v118;
        if (v118)
        {
          goto LABEL_107;
        }

        if (v117 < v116)
        {
          BUG();
        }

        v119 = v115;
        v120 = (v169 + v114);
        v121 = *(v168 + 2);
        v122 = countAndFlagsBits;
        v123 = countAndFlagsBits < v121;
        if (countAndFlagsBits > v121)
        {
          BUG();
        }

        *v120 = v116;
        v120[1] = v117;
        if (!v123)
        {
          BUG();
        }

        v88 = v121 - 1;
        memmove(v119, v119 + 2, 16 * (v121 - 1 - v122));
        v91 = v169;
        v22 = v168;
        *(v168 + 2) = v121 - 1;
        v123 = v121 <= 2;
        v6 = v166;
        v24 = v170;
        if (v123)
        {
          goto LABEL_91;
        }
      }
    }

    v22 = _swiftEmptyArrayStorage;
    v88 = _swiftEmptyArrayStorage[2];
LABEL_95:
    if (v88 < 2)
    {
LABEL_108:
      v137 = v22;
    }

    else
    {
      v125 = *v154;
      v164 = *v154;
      while (1)
      {
        if (!v125)
        {
          BUG();
        }

        v126 = 16 * (v88 - 1);
        v127 = *&v22[16 * v88];
        v168 = v22;
        v128 = *(v166 + 72);
        v129 = v125 + v128 * *&v22[v126 + 32];
        v170 = *&v22[v126 + 40];
        v130 = v156;
        specialized _merge<A>(low:mid:high:buffer:by:)(v125 + v127 * v128, v129, (v125 + v170 * v128), v144);
        v156 = v130;
        if (v130)
        {
          break;
        }

        if (v170 < v127)
        {
          BUG();
        }

        v165 = v127;
        if (swift_isUniquelyReferenced_nonNull_native(v168))
        {
          v131 = v168;
        }

        else
        {
          v131 = specialized _ArrayBuffer._consumeAndCreateNew()(v168);
        }

        v132 = *(v131 + 2);
        if (v88 - 2 >= v132)
        {
          BUG();
        }

        *&v131[16 * v88] = v165;
        *&v131[16 * v88 + 8] = v170;
        v133 = v132 - v88;
        if (v132 < v88)
        {
          BUG();
        }

        v88 = v132 - 1;
        v134 = &v131[v126 + 32];
        v135 = &v131[v126 + 48];
        v136 = v131;
        memmove(v134, v135, 16 * v133);
        v22 = v136;
        *(v136 + 2) = v132 - 1;
        v125 = v164;
        if (v132 <= 2)
        {
          goto LABEL_108;
        }
      }

LABEL_107:
      v137 = v168;
    }

    v137;
    v138 = v146;
    v146[2] = 0;
    return v138;
  }

  return result;
}

{
  v174 = type metadata accessor for URL(0);
  v155 = *(v174 - 8);
  v2 = *(v155 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v160 = &v152;
  v184 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v180 = *(v184 - 8);
  v5 = *(v180 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v158 = &v152;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v154 = &v152;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v168 = &v152;
  v12 = alloca(v5);
  v13 = alloca(v5);
  v14 = alloca(v5);
  v15 = alloca(v5);
  v161 = &v152;
  v16 = alloca(v5);
  v17 = alloca(v5);
  v157 = &v152;
  v18 = alloca(v5);
  v19 = alloca(v5);
  v166 = &v152;
  v20 = alloca(v5);
  v21 = alloca(v5);
  v167 = &v152;
  v22 = a1[1];
  result = _minimumMergeRunLength(_:)(v22);
  if (result >= v22)
  {
    if (v22 < 0)
    {
      BUG();
    }

    if (v22)
    {
      return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v22, 1uLL, a1);
    }
  }

  else
  {
    v177 = &v152;
    if (v22 < -1)
    {
      BUG();
    }

    v173 = v22;
    v165 = result;
    if (v22 <= 1)
    {
      v24 = _swiftEmptyArrayStorage;
    }

    else
    {
      v24 = static Array._allocateBufferUninitialized(minimumCapacity:)(v22 / 2, v184);
      v24[2] = v22 / 2;
    }

    v172 = v1;
    v25 = (*(v180 + 80) + 32) & ~*(v180 + 80);
    v159 = v24;
    v156 = v24 + v25;
    v26 = v173;
    v153 = a1;
    if (v173 > 0)
    {
      v27 = *a1;
      v28 = _swiftEmptyArrayStorage;
      v29 = 0;
      v181 = *a1;
      while (1)
      {
        v30 = v29 + 1;
        v179 = v29;
        if (v29 + 1 >= v26)
        {
          v45 = v165;
        }

        else
        {
          v31 = v29;
          v182 = v28;
          v32 = *(v180 + 16);
          v33 = *(v180 + 72);
          v185 = v27 + v33 * v30;
          v34 = v184;
          v32(v167, v185, v184);
          __dst = v33;
          v171 = v31 * v33;
          v162 = v32;
          v32(v166, v181 + v31 * v33, v34);
          v35 = v160;
          AnnotatedFeature.feature.getter(v34);
          v36 = URL.path(percentEncoded:)(1);
          countAndFlagsBits = v36._countAndFlagsBits;
          object = v36._object;
          v37 = *(v155 + 8);
          v38 = v34;
          v39 = v174;
          v37(v35, v174);
          AnnotatedFeature.feature.getter(v38);
          v40 = URL.path(percentEncoded:)(1);
          v41 = v40._countAndFlagsBits;
          v42 = v35;
          v43 = v40._object;
          v163 = v37;
          v37(v42, v39);
          v44 = object;
          if (v41 ^ countAndFlagsBits | v43 ^ object)
          {
            LODWORD(v170) = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, v41, v43, 1);
          }

          else
          {
            LODWORD(v170) = 0;
          }

          v44;
          v43;
          v46 = *(v180 + 8);
          v47 = v184;
          v46(v166, v184);
          v164 = v46;
          v46(v167, v47);
          v30 = v179 + 2;
          v48 = v185;
          if (v179 + 2 >= v173)
          {
LABEL_24:
            v27 = v181;
          }

          else
          {
            v49 = (v181 + v30 * __dst);
            while (1)
            {
              v183 = v30;
              v169 = v49;
              v50 = v184;
              v51 = v162;
              (v162)(v157, v49, v184);
              v185 = v48;
              v51(v161, v48, v50);
              v52 = v160;
              AnnotatedFeature.feature.getter(v50);
              v53 = URL.path(percentEncoded:)(1);
              countAndFlagsBits = v53._countAndFlagsBits;
              object = v53._object;
              v54 = v50;
              v55 = v174;
              v56 = v163;
              (v163)(v52, v174);
              AnnotatedFeature.feature.getter(v54);
              v57 = URL.path(percentEncoded:)(1);
              v58 = v57._countAndFlagsBits;
              v59 = v52;
              v60 = v57._object;
              v56(v59, v55);
              v61 = object;
              v62 = v58 ^ countAndFlagsBits | v60 ^ object ? _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, v58, v60, 1) : 0;
              v61;
              v60;
              v63 = v184;
              v64 = v164;
              v164(v161, v184);
              v64(v157, v63);
              if ((v170 ^ v62))
              {
                break;
              }

              v30 = v183 + 1;
              v48 = __dst + v185;
              v49 = &v169[__dst];
              if (v183 + 1 >= v173)
              {
                v30 = v173;
                goto LABEL_24;
              }
            }

            v27 = v181;
            v30 = v183;
          }

          v28 = v182;
          v45 = v165;
          v65 = v171;
          if (v170)
          {
            if (v30 < v179)
            {
              BUG();
            }

            if (v30 > v179)
            {
              v66 = __dst * (v30 - 1);
              v67 = __dst * v30;
              v68 = 0;
              v69 = v179;
              v183 = v30;
              while (1)
              {
                v70 = v30 + v68 - 1;
                if (v69 != v70)
                {
                  break;
                }

LABEL_39:
                ++v69;
                --v68;
                v66 -= __dst;
                v67 -= __dst;
                v65 = &v65[__dst];
                if (v69 >= v70)
                {
                  v28 = v182;
                  goto LABEL_41;
                }
              }

              countAndFlagsBits = v30 + v68 - 1;
              if (!v27)
              {
                BUG();
              }

              v169 = &v65[v27];
              v185 = v27 + v66;
              v71 = *(v180 + 32);
              v171 = v65;
              object = v71;
              v71(v158, &v65[v27], v184, v45);
              if (v171 < v66 || v169 >= v67 + v181)
              {
                swift_arrayInitWithTakeFrontToBack(v169, v185, 1, v184);
LABEL_37:
                v73 = v185;
                v72 = v184;
              }

              else
              {
                v72 = v184;
                v73 = v185;
                if (v171 != v66)
                {
                  swift_arrayInitWithTakeBackToFront(v169, v185, 1, v184);
                  goto LABEL_37;
                }
              }

              (object)(v73, v158, v72);
              v45 = v165;
              v27 = v181;
              v30 = v183;
              v65 = v171;
              v70 = countAndFlagsBits;
              goto LABEL_39;
            }
          }
        }

LABEL_41:
        if (v30 >= v173)
        {
          goto LABEL_61;
        }

        if (__OFSUB__(v30, v179))
        {
          BUG();
        }

        if (v30 - v179 >= v45)
        {
LABEL_61:
          v74 = v179;
        }

        else
        {
          v74 = v179;
          v75 = (v45 + v179);
          if (__OFADD__(v45, v179))
          {
            BUG();
          }

          if (v75 >= v173)
          {
            v75 = v173;
          }

          if (v75 < v179)
          {
            BUG();
          }

          if (v30 != v75)
          {
            v182 = v28;
            v171 = *(v180 + 16);
            v76 = *(v180 + 72);
            v77 = (v27 + v76 * (v30 - 1));
            v170 = -v76;
            v152 = v76;
            v78 = (v27 + v76 * v30);
            v79 = v177;
            v164 = v75;
            do
            {
              v163 = v78;
              v162 = v77;
              v80 = v184;
              v183 = v30;
              while (1)
              {
                countAndFlagsBits = v74;
                object = v78;
                v81 = v77;
                v82 = v171;
                (v171)(v79, v78, v80);
                v169 = v81;
                v82(v168, v81, v80);
                v83 = v160;
                AnnotatedFeature.feature.getter(v80);
                v84 = URL.path(percentEncoded:)(1);
                v185 = v84._countAndFlagsBits;
                v85 = v84._object;
                __dst = *(v155 + 8);
                (__dst)(v83, v174);
                v86 = v80;
                v87 = v85;
                AnnotatedFeature.feature.getter(v86);
                v88 = URL.path(percentEncoded:)(1);
                v89 = v88._countAndFlagsBits;
                v90 = v88._object;
                (__dst)(v83, v174);
                if (!(v89 ^ v185 | v90 ^ v87))
                {
                  v87;
                  v90;
                  v98 = *(v180 + 8);
                  v99 = v184;
                  v98(v168, v184);
                  v100 = v177;
                  v98(v177, v99);
                  v79 = v100;
                  goto LABEL_58;
                }

                v91 = _stringCompareWithSmolCheck(_:_:expecting:)(v185, v87, v89, v90, 1);
                v87;
                v90;
                v92 = *(v180 + 8);
                v93 = v184;
                v92(v168, v184);
                v92(v177, v93);
                if ((v91 & 1) == 0)
                {
                  break;
                }

                v94 = countAndFlagsBits;
                if (!v181)
                {
                  BUG();
                }

                v80 = v93;
                v185 = *(v180 + 32);
                v95 = object;
                (v185)(v154, object, v80);
                v96 = v169;
                swift_arrayInitWithTakeFrontToBack(v95, v169, 1, v80);
                (v185)(v96, v154, v80);
                v77 = &v96[v170];
                v74 = v94 + 1;
                v78 = (v170 + v95);
                v97 = v183;
                v79 = v177;
                if (v183 == v74)
                {
                  goto LABEL_59;
                }
              }

              v79 = v177;
LABEL_58:
              v97 = v183;
LABEL_59:
              v30 = v97 + 1;
              v77 = &v162[v152];
              v78 = &v163[v152];
              v74 = v179;
            }

            while (v30 != v164);
            v30 = v164;
            v28 = v182;
          }
        }

        if (v30 < v74)
        {
          BUG();
        }

        v183 = v30;
        if (!swift_isUniquelyReferenced_nonNull_native(v28))
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
        }

        v101 = v28;
        v102 = *(v28 + 2);
        v182 = v101;
        v103 = *(v101 + 3);
        v104 = v102 + 1;
        v27 = v181;
        v29 = v183;
        if (v103 >> 1 <= v102)
        {
          v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v103 >= 2, v102 + 1, 1, v182);
          v29 = v183;
          v27 = v181;
          v182 = v140;
        }

        v105 = v182;
        *(v182 + 2) = v104;
        v106 = 16 * v102;
        *&v105[v106 + 32] = v179;
        *&v105[v106 + 40] = v29;
        if (v102)
        {
          break;
        }

        v104 = 1;
        v28 = v105;
LABEL_102:
        v26 = v173;
        if (v29 >= v173)
        {
          goto LABEL_106;
        }
      }

      v107 = v105 + 32;
      v28 = v105;
      countAndFlagsBits = (v105 + 32);
      while (1)
      {
        v108 = v104 - 1;
        if (v104 >= 4)
        {
          v113 = 16 * v104;
          v114 = *&v107[16 * v104 - 56];
          v110 = __OFSUB__(v114, *&v107[16 * v104 - 64]);
          v115 = v114 - *&v107[16 * v104 - 64];
          if (v110)
          {
            BUG();
          }

          v116 = *&v107[v113 - 40];
          v110 = __OFSUB__(v116, *&v107[v113 - 48]);
          v111 = v116 - *&v107[v113 - 48];
          v112 = v110;
          if (v110)
          {
            BUG();
          }

          v117 = *&v28[v113 + 8];
          v110 = __OFSUB__(v117, *&v28[16 * v104]);
          v118 = v117 - *&v28[16 * v104];
          if (v110)
          {
            BUG();
          }

          v110 = __OFADD__(v111, v118);
          v119 = v111 + v118;
          if (v110)
          {
            BUG();
          }

          if (v119 >= v115)
          {
            v128 = *&v107[16 * v108 + 8];
            v110 = __OFSUB__(v128, *&v107[16 * v108]);
            v129 = v128 - *&v107[16 * v108];
            if (v110)
            {
              BUG();
            }

            if (v111 < v129)
            {
LABEL_92:
              v108 = v104 - 2;
              goto LABEL_93;
            }

            goto LABEL_93;
          }
        }

        else
        {
          if (v104 != 3)
          {
            if (v104 < 2)
            {
              BUG();
            }

            v125 = *&v28[16 * v104 + 8];
            v110 = __OFSUB__(v125, *&v28[16 * v104]);
            v121 = v125 - *&v28[16 * v104];
            v122 = v110;
LABEL_86:
            if (v122)
            {
              BUG();
            }

            v126 = *&v107[16 * v108 + 8];
            v110 = __OFSUB__(v126, *&v107[16 * v108]);
            v127 = v126 - *&v107[16 * v108];
            if (v110)
            {
              BUG();
            }

            if (v127 < v121)
            {
              goto LABEL_102;
            }

            goto LABEL_93;
          }

          v109 = *(v28 + 5);
          v110 = __OFSUB__(v109, *(v28 + 4));
          v111 = v109 - *(v28 + 4);
          v112 = v110;
        }

        if (v112)
        {
          BUG();
        }

        v120 = *&v28[16 * v104 + 8];
        v110 = __OFSUB__(v120, *&v28[16 * v104]);
        v121 = v120 - *&v28[16 * v104];
        v122 = v110;
        if (v110)
        {
          BUG();
        }

        v123 = *&v107[16 * v108 + 8];
        v110 = __OFSUB__(v123, *&v107[16 * v108]);
        v124 = v123 - *&v107[16 * v108];
        if (v110)
        {
          BUG();
        }

        if (__OFADD__(v124, v121))
        {
          BUG();
        }

        if (v124 + v121 < v111)
        {
          goto LABEL_86;
        }

        if (v111 < v124)
        {
          goto LABEL_92;
        }

LABEL_93:
        if (v108 - 1 >= v104)
        {
          BUG();
        }

        if (!v27)
        {
          BUG();
        }

        v130 = 16 * (v108 - 1);
        v185 = v108;
        v131 = &v107[16 * v108];
        v132 = *&v107[v130];
        v133 = *(v131 + 1);
        v134 = *(v180 + 72);
        __dst = v131;
        v135 = v172;
        specialized _merge<A>(low:mid:high:buffer:by:)(v27 + v132 * v134, v27 + v134 * *v131, v27 + v133 * v134, v156);
        v172 = v135;
        if (v135)
        {
          v28 = v182;
          goto LABEL_116;
        }

        if (v133 < v132)
        {
          BUG();
        }

        v136 = &v107[v130];
        v137 = *(v182 + 2);
        v138 = v185;
        v139 = v185 < v137;
        if (v185 > v137)
        {
          BUG();
        }

        *v136 = v132;
        *(v136 + 1) = v133;
        if (!v139)
        {
          BUG();
        }

        v104 = v137 - 1;
        memmove(__dst, __dst + 16, 16 * (v137 - 1 - v138));
        v28 = v182;
        *(v182 + 2) = v137 - 1;
        v139 = v137 <= 2;
        v27 = v181;
        v29 = v183;
        v107 = countAndFlagsBits;
        if (v139)
        {
          goto LABEL_102;
        }
      }
    }

    v28 = _swiftEmptyArrayStorage;
    v104 = _swiftEmptyArrayStorage[2];
LABEL_106:
    if (v104 >= 2)
    {
      v141 = *v153;
      v185 = *v153;
      do
      {
        if (!v141)
        {
          BUG();
        }

        v142 = 16 * (v104 - 1);
        v143 = *&v28[v142 + 40];
        v144 = *(v180 + 72);
        v174 = *&v28[16 * v104];
        v145 = v141 + v144 * *&v28[v142 + 32];
        v177 = v143;
        v146 = v172;
        specialized _merge<A>(low:mid:high:buffer:by:)(v141 + v174 * v144, v145, v141 + v143 * v144, v156);
        v172 = v146;
        if (v146)
        {
          break;
        }

        if (v177 < v174)
        {
          BUG();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v28);
        v168 = (16 * (v104 - 1));
        if (!isUniquelyReferenced_nonNull_native)
        {
          v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
        }

        v148 = *(v28 + 2);
        v149 = v177;
        if (v104 - 2 >= v148)
        {
          BUG();
        }

        *&v28[16 * v104] = v174;
        *&v28[16 * v104 + 8] = v149;
        v150 = v148 - v104;
        if (v148 < v104)
        {
          BUG();
        }

        v104 = v148 - 1;
        memmove(v168 + v28 + 32, v168 + v28 + 48, 16 * v150);
        *(v28 + 2) = v148 - 1;
        v141 = v185;
      }

      while (v148 > 2);
    }

LABEL_116:
    v28;
    v151 = v159;
    v159[2] = 0;
    return v151;
  }

  return result;
}

unint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v47 = a1;
  v37 = type metadata accessor for URL(0);
  v38 = *(v37 - 8);
  v6 = *(v38 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v35;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v54 = *(v9 - 8);
  v10 = v54[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v42 = &v35;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v53 = &v35;
  v15 = alloca(v10);
  result = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = alloca(v10);
  v50 = &v35;
  v56 = a3;
  v48 = a2;
  if (a3 != a2)
  {
    v18 = v9;
    v19 = *a4;
    v41 = v54[2];
    v20 = v54[9];
    v21 = (v19 + v20 * (v56 - 1));
    v44 = -v20;
    v49 = v20;
    v43 = v19;
    v22 = v19 + v56 * v20;
    v40 = v18;
    do
    {
      v46 = v22;
      v51 = v47;
      v45 = v21;
      do
      {
        v52 = v21;
        v55 = v22;
        v23 = v41;
        v41(v50, v22, v18);
        v23(v53, v21, v18);
        v24 = v39;
        AnnotatedFeature.feature.getter(v18);
        v35 = URL.path(percentEncoded:)(1);
        v36 = *(v38 + 8);
        v25 = v37;
        v36(v24, v37);
        AnnotatedFeature.feature.getter(v18);
        v26 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v26._countAndFlagsBits;
        object = v26._object;
        v36(v24, v25);
        v29 = v35._object;
        LOBYTE(countAndFlagsBits) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(countAndFlagsBits, object, v35._countAndFlagsBits, v35._object);
        v29;
        v30 = object;
        v18 = v40;
        v30;
        v31 = v54[1];
        v31(v53, v18);
        v31(v50, v18);
        if ((countAndFlagsBits & 1) == 0)
        {
          break;
        }

        if (!v43)
        {
          BUG();
        }

        v32 = v54[4];
        v33 = v42;
        v32(v42, v55, v18);
        swift_arrayInitWithTakeFrontToBack(v55, v52, 1, v18);
        v34 = v52;
        v32(v52, v33, v18);
        v21 = (v34 + v44);
        v55 += v44;
        v22 = v55;
        ++v51;
      }

      while (v56 != v51);
      result = v56 + 1;
      v21 = (v45 + v49);
      v22 = v49 + v46;
      v56 = result;
    }

    while (result != v48);
  }

  return result;
}

{
  v50 = a1;
  v53 = type metadata accessor for URL(0);
  v43 = *(v53 - 8);
  v6 = *(v43 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v40;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v61 = *(v60 - 8);
  v9 = v61[8];
  v10 = alloca(v9);
  v11 = alloca(v9);
  v54 = &v40;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v59 = &v40;
  v14 = alloca(v9);
  result = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = alloca(v9);
  v57 = &v40;
  v62 = a3;
  v51 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v45 = v61[2];
    v18 = v61[9];
    v19 = v17 + v18 * (v62 - 1);
    v47 = -v18;
    v52 = v18;
    v46 = v17;
    v20 = v17 + v62 * v18;
    do
    {
      v49 = v20;
      v55 = v20;
      v21 = v50;
      v48 = v19;
      v56 = v19;
      while (1)
      {
        v42 = v21;
        v22 = v60;
        v23 = v45;
        v45(v57, v55, v60);
        v23(v59, v56, v22);
        v24 = v44;
        AnnotatedFeature.feature.getter(v22);
        v25 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v25._countAndFlagsBits;
        object = v25._object;
        v41 = *(v43 + 8);
        v41(v24, v53);
        AnnotatedFeature.feature.getter(v22);
        v27 = URL.path(percentEncoded:)(1);
        v28 = v27._countAndFlagsBits;
        v29 = v27._object;
        v41(v24, v53);
        if (!(v28 ^ countAndFlagsBits | v29 ^ object))
        {
          break;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, v28, v29, 1);
        object;
        v29;
        v31 = v61[1];
        v32 = v60;
        v31(v59, v60);
        v31(v57, v32);
        v33 = (v30 & 1) == 0;
        v34 = v42;
        if (!v33)
        {
          if (!v46)
          {
            BUG();
          }

          countAndFlagsBits = v61[4];
          v35 = v55;
          v36 = v60;
          (countAndFlagsBits)(v54, v55, v60);
          v37 = v56;
          swift_arrayInitWithTakeFrontToBack(v35, v56, 1, v36);
          (countAndFlagsBits)(v37, v54, v36);
          v56 = v47 + v37;
          v21 = v34 + 1;
          v55 = v47 + v35;
          if (v62 != v21)
          {
            continue;
          }
        }

        goto LABEL_10;
      }

      object;
      v29;
      v38 = v61[1];
      v39 = v60;
      v38(v59, v60);
      v38(v57, v39);
LABEL_10:
      result = v62 + 1;
      v19 = v52 + v48;
      v20 = v52 + v49;
      v62 = result;
    }

    while (result != v51);
  }

  return result;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v84 = a3;
  v6 = a1;
  v70 = type metadata accessor for URL(0);
  v71 = *(v70 - 8);
  v7 = *(v71 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v72 = &v66;
  v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v10 = *(v88 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v82 = &v66;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v78 = &v66;
  v80 = v10;
  v16 = *(v10 + 72);
  if (!v16)
  {
    BUG();
  }

  v17 = a2;
  if (__OFSUB__(a1 - a2, 1) && v16 == -1)
  {
    BUG();
  }

  v18 = &v84[-a2];
  if (&v84[-a2] == 0x8000000000000000 && v16 == -1)
  {
    BUG();
  }

  v19 = (a2 - a1) / v16;
  v89 = *(v10 + 72);
  v81 = a1;
  v68 = a4;
  if (v19 >= v18 / v16)
  {
    v37 = v18 / v16;
    v38 = v17;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v17, v18 / v16, a4);
    v39 = v38;
    v40 = v89 * v37;
    v41 = (v40 + a4);
    v74 = v40 + a4;
    v81 = v38;
    v42 = v84;
    if (v40 > 0 && a1 < v38)
    {
      v43 = -v89;
      v67 = *(v80 + 16);
      v85 = a1;
      v86 = a4;
      v89 = -v89;
      do
      {
        v79 = v41;
        v84 = v42;
        v87 = &v42[v43];
        v69 = &v41[v43];
        v44 = v39;
        v45 = v67;
        v67(v78, &v41[v43], v88);
        v83 = v44;
        v46 = v44 + v43;
        v73 = v44 + v43;
        v47 = v88;
        v45(v82, v46, v88);
        v48 = v72;
        AnnotatedFeature.feature.getter(v47);
        v75 = URL.path(percentEncoded:)(1);
        v76 = *(v71 + 8);
        v49 = v70;
        v76(v48, v70);
        v50 = v47;
        v51 = v82;
        AnnotatedFeature.feature.getter(v50);
        v52 = URL.path(percentEncoded:)(1);
        countAndFlagsBits = v52._countAndFlagsBits;
        object = v52._object;
        v76(v48, v49);
        v54 = v75._object;
        LOBYTE(v48) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(countAndFlagsBits, object, v75._countAndFlagsBits, v75._object);
        v54;
        object;
        v55 = *(v80 + 8);
        v56 = v51;
        v57 = v88;
        v55(v56, v88);
        v55(v78, v57);
        if (v48)
        {
          v58 = v87;
          if (v87 < v83 && v84 >= v83)
          {
            v59 = v85;
            v60 = v86;
            v43 = v89;
            v61 = v73;
            if (v84 != v83)
            {
              swift_arrayInitWithTakeBackToFront(v87, v73, 1, v88);
              v58 = v87;
            }
          }

          else
          {
            v64 = v87;
            v61 = v73;
            swift_arrayInitWithTakeFrontToBack(v87, v73, 1, v88);
            v58 = v64;
            v59 = v85;
            v60 = v86;
            v43 = v89;
          }

          v81 = v61;
          v41 = v79;
        }

        else
        {
          v61 = v83;
          v41 = v69;
          v74 = v69;
          v58 = v87;
          if (v84 < v79 || v87 >= v79)
          {
            v62 = v87;
            v63 = v69;
            swift_arrayInitWithTakeFrontToBack(v87, v69, 1, v88);
            v58 = v62;
            v41 = v63;
            v59 = v85;
            v60 = v86;
            v43 = v89;
          }

          else
          {
            v59 = v85;
            v60 = v86;
            v43 = v89;
            if (v84 != v79)
            {
              swift_arrayInitWithTakeBackToFront(v87, v69, 1, v88);
              v58 = v87;
              v41 = v69;
            }
          }
        }

        if (v41 <= v60)
        {
          break;
        }

        v39 = v61;
        v42 = v58;
      }

      while (v61 > v59);
    }
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / v16, a4);
    v20 = a2;
    v21 = v89 * v19;
    v76 = (v21 + a4);
    v74 = v21 + a4;
    if (v21 > 0 && a2 < v84)
    {
      countAndFlagsBits = *(v80 + 16);
      while (1)
      {
        v86 = a4;
        v83 = v20;
        v85 = v6;
        v22 = v88;
        v23 = countAndFlagsBits;
        countAndFlagsBits(v78, v20, v88);
        v23(v82, a4, v22);
        v24 = v72;
        AnnotatedFeature.feature.getter(v22);
        v25 = URL.path(percentEncoded:)(1);
        v87 = v25._countAndFlagsBits;
        v79 = v25._object;
        v75._countAndFlagsBits = *(v71 + 8);
        v26 = v70;
        (v75._countAndFlagsBits)(v24, v70);
        AnnotatedFeature.feature.getter(v22);
        v27 = URL.path(percentEncoded:)(1);
        v75._object = v27._countAndFlagsBits;
        v28 = v27._object;
        (v75._countAndFlagsBits)(v24, v26);
        v29 = v79;
        LOBYTE(v24) = specialized Sequence<>.lexicographicallyPrecedes<A>(_:)(v75._object, v28, v87, v79);
        v29;
        v28;
        v30 = *(v80 + 8);
        v30(v82, v22);
        v30(v78, v22);
        if (v24)
        {
          v31 = v86;
          v32 = v85;
          v33 = v83 + v89;
          if (v85 < v83 + v89 && v85 >= v83)
          {
            if (v85 != v83)
            {
              swift_arrayInitWithTakeBackToFront(v85, v83, 1, v88);
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack(v85, v83, 1, v88);
          }

          v20 = v33;
          v36 = v31;
          v35 = v89;
        }

        else
        {
          v34 = v83;
          v32 = v85;
          v35 = v89;
          v36 = v86 + v89;
          if (v85 < v86 + v89 && v85 >= v86)
          {
            if (v85 != v86)
            {
              swift_arrayInitWithTakeBackToFront(v85, v86, 1, v88);
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack(v85, v86, 1, v88);
          }

          v68 = v36;
          v20 = v34;
        }

        if (v36 >= v76)
        {
          break;
        }

        v6 = v35 + v32;
        a4 = v36;
        if (v20 >= v84)
        {
          goto LABEL_40;
        }
      }

      v6 = v35 + v32;
LABEL_40:
      v81 = v6;
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v81, &v68, &v74);
  return 1;
}

char specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v93 = a4;
  v96 = a3;
  v5 = a1;
  v83 = type metadata accessor for URL(0);
  v84 = *(v83 - 8);
  v6 = *(v84 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v85 = &v80;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v99 = &v80;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v92 = &v80;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = alloca(v11);
  v19 = alloca(v11);
  v95 = v10;
  v102 = *(v10 + 72);
  if (!v102)
  {
    BUG();
  }

  v20 = a2;
  if (__OFSUB__(a1 - a2, 1) && v102 == -1)
  {
    BUG();
  }

  v21 = v96 - a2;
  if (v96 - a2 == 0x8000000000000000 && v102 == -1)
  {
    BUG();
  }

  v97 = &v80;
  v100 = v9;
  v22 = v102;
  v23 = (a2 - a1) / v102;
  v91 = a1;
  v82 = v93;
  v101 = a2;
  if (v23 >= v21 / v102)
  {
    v50 = v21 / v102;
    v51 = v93;
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v20, v21 / v102, v93);
    v52 = v101;
    v53 = v22 * v50;
    v54 = v51 + v53;
    v87 = (v51 + v53);
    v91 = v101;
    if (v53 <= 0 || a1 >= v101)
    {
      goto LABEL_48;
    }

    v102 = -v102;
    v81 = *(v95 + 16);
    v94 = a1;
    while (1)
    {
      v55 = v102;
      v97 = v54;
      v90 = (v54 + v102);
      v56 = v100;
      v57 = v52;
      v58 = v81;
      v81(v92, v54 + v102, v100);
      v101 = v57;
      v86 = v57 + v55;
      v58(v99, v57 + v55, v56);
      v59 = v85;
      AnnotatedFeature.feature.getter(v56);
      v60 = URL.path(percentEncoded:)(1);
      countAndFlagsBits = v60._countAndFlagsBits;
      object = v60._object;
      v89 = *(v84 + 8);
      v61 = v83;
      v89(v59, v83);
      AnnotatedFeature.feature.getter(v56);
      v62 = URL.path(percentEncoded:)(1);
      v63 = v62._countAndFlagsBits;
      v64 = v59;
      v65 = object;
      v66 = v61;
      v67 = v62._object;
      v89(v64, v66);
      if (v63 ^ countAndFlagsBits | v67 ^ v65)
      {
        LODWORD(countAndFlagsBits) = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, v65, v63, v67, 1);
      }

      else
      {
        LODWORD(countAndFlagsBits) = 0;
      }

      v68 = v96;
      v65;
      v67;
      v69 = v68 + v102;
      v70 = *(v95 + 8);
      v71 = v100;
      v70(v99, v100);
      v70(v92, v71);
      if (countAndFlagsBits)
      {
        v72 = v94;
        v73 = v69;
        if (v69 < v101 && v68 >= v101)
        {
          v74 = v86;
          if (v68 != v101)
          {
            swift_arrayInitWithTakeBackToFront(v73, v86, 1, v100);
          }
        }

        else
        {
          v78 = v69;
          v74 = v86;
          swift_arrayInitWithTakeFrontToBack(v78, v86, 1, v100);
        }

        v91 = v74;
        v54 = v97;
        goto LABEL_42;
      }

      v75 = v69;
      v76 = v90;
      v87 = v90;
      v72 = v94;
      if (v68 < v97 || v69 >= v97)
      {
        break;
      }

      if (v68 != v97)
      {
        v77 = v69;
        swift_arrayInitWithTakeBackToFront(v69, v90, 1, v100);
LABEL_39:
        v74 = v101;
        v54 = v76;
        v73 = v77;
        goto LABEL_42;
      }

      v74 = v101;
      v54 = v90;
      v73 = v75;
LABEL_42:
      if (v54 > v93)
      {
        v52 = v74;
        v96 = v73;
        if (v74 > v72)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

    v77 = v69;
    swift_arrayInitWithTakeFrontToBack(v69, v90, 1, v100);
    goto LABEL_39;
  }

  v99 = &v80;
  v24 = (a2 - a1) / v102;
  v25 = v93;
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, v24, v93);
  v26 = v101;
  v27 = v22 * v23;
  v28 = v25;
  v89 = (v25 + v27);
  v87 = (v25 + v27);
  v29 = v100;
  if (v27 <= 0 || v101 >= v96)
  {
    goto LABEL_48;
  }

  v90 = *(v95 + 16);
  v30 = v28;
  while (1)
  {
    v94 = v5;
    v101 = v26;
    v31 = v90;
    v90(v97, v26, v29);
    v93 = v30;
    v31(v99, v30, v29);
    v32 = v85;
    AnnotatedFeature.feature.getter(v29);
    v33 = URL.path(percentEncoded:)(1);
    v92 = v33._countAndFlagsBits;
    countAndFlagsBits = v33._object;
    object = *(v84 + 8);
    v34 = v83;
    object(v32, v83);
    AnnotatedFeature.feature.getter(v29);
    v35 = URL.path(percentEncoded:)(1);
    v36 = v35._countAndFlagsBits;
    v37 = v35._object;
    v38 = v34;
    v39 = countAndFlagsBits;
    object(v32, v38);
    if (!(v36 ^ v92 | v37 ^ v39))
    {
      v39;
      v37;
      v40 = *(v95 + 8);
      v29 = v100;
      v40(v99, v100);
      v40(v97, v29);
LABEL_15:
      v46 = v94;
      v49 = v102;
      v30 = v93 + v102;
      if (v94 < v93 + v102 && v94 >= v93)
      {
        if (v94 != v93)
        {
          swift_arrayInitWithTakeBackToFront(v94, v93, 1, v29);
        }
      }

      else
      {
        swift_arrayInitWithTakeFrontToBack(v94, v93, 1, v29);
      }

      v82 = v30;
      v26 = v101;
      goto LABEL_22;
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)(v92, v39, v36, v37, 1);
    v42 = v100;
    v43 = v41;
    v39;
    v37;
    v44 = *(v95 + 8);
    v44(v99, v42);
    v44(v97, v42);
    v45 = (v43 & 1) == 0;
    v29 = v42;
    if (v45)
    {
      goto LABEL_15;
    }

    v46 = v94;
    v47 = v101 + v102;
    v48 = v93;
    if (v94 < v101 + v102 && v94 >= v101)
    {
      if (v94 != v101)
      {
        swift_arrayInitWithTakeBackToFront(v94, v101, 1, v29);
      }
    }

    else
    {
      swift_arrayInitWithTakeFrontToBack(v94, v101, 1, v29);
    }

    v26 = v47;
    v30 = v48;
    v49 = v102;
LABEL_22:
    if (v30 >= v89)
    {
      break;
    }

    v5 = v49 + v46;
    if (v26 >= v96)
    {
      goto LABEL_47;
    }
  }

  v5 = v49 + v46;
LABEL_47:
  v91 = v5;
LABEL_48:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v91, &v82, &v87);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v7 = *(*(v6 - 8) + 72);
  if (!v7)
  {
    BUG();
  }

  v8 = v5 - v4;
  if (__OFSUB__(-v8, 1) && v7 == -1)
  {
    BUG();
  }

  result = v8 / v7;
  if (v3 < v4 || v3 >= v4 + v7 * result)
  {
    return swift_arrayInitWithTakeFrontToBack(v3, v4, result, v6);
  }

  if (v3 != v4)
  {
    return swift_arrayInitWithTakeBackToFront(v3, v4, result, v6);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in BidirectionalCollection.last(where:)(uint64_t *a1)
{
  return specialized closure #1 in BidirectionalCollection.last(where:)(a1, *(v1 + 16));
}

{
  return specialized closure #1 in BidirectionalCollection.last(where:)(a1, *(v1 + 16));
}

uint64_t lazy protocol witness table accessor for type [Float] and conformance <A> [A](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [Float]);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int);
    lazy protocol witness table cache variable for type Int and conformance Int = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int);
    lazy protocol witness table cache variable for type Int and conformance Int = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
    v9;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 17) = *(a2 + 17);
    v5 = *(a3 + 32);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = type metadata accessor for LSTM(0);
    (*(*(v8 - 8) + 16))(v6, v7, v8);
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32) + a1;
  v3 = type metadata accessor for LSTM(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

uint64_t initializeWithCopy for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 24))(v4, v5, v6);
  return a1;
}

uint64_t initializeWithTake for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v3 = *(a3 + 32);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for LSTM(0);
  (*(*(v6 - 8) + 40))(v4, v5, v6);
  return a1;
}

uint64_t sub_F4C6A(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    result = 0;
    if (v3 >= 2u)
    {
      return ((v3 + 2147483646) & 0x7FFFFFFFu) + 1;
    }
  }

  else
  {
    v6 = type metadata accessor for LSTM(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 32) + a1, a2, v6);
  }

  return result;
}

uint64_t sub_F4CEE(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(a1 + 16) = a2 + 1;
  }

  else
  {
    v5 = type metadata accessor for LSTM(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 32) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.LSTMBlock(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  v3[1] = &value witness table for Builtin.Int64 + 64;
  v3[2] = &unk_340CA0;
  v3[3] = &unk_340CA0;
  result = type metadata accessor for LSTM(319);
  if (v2 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 5, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActivityClassifier.InputBlock(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
    v9;
  }

  else
  {
    *a1 = *a2;
    v5 = *(a3 + 24);
    v6 = a1 + v5;
    v7 = a2 + v5;
    v8 = type metadata accessor for LearningPhase(0);
    (*(*(v8 - 8) + 16))(v6, v7, v8);
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier.InputBlock(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24) + a1;
  v3 = type metadata accessor for LearningPhase(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

_OWORD *initializeWithCopy for MLActivityClassifier.InputBlock(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  return a1;
}

void *assignWithCopy for MLActivityClassifier.InputBlock(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 24))(v4, v5, v6);
  return a1;
}

_OWORD *initializeWithTake for MLActivityClassifier.InputBlock(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

_OWORD *assignWithTake for MLActivityClassifier.InputBlock(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = a2 + v3;
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 40))(v4, v5, v6);
  return a1;
}

uint64_t sub_F4FA0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 24) + a1;
  v4 = type metadata accessor for LearningPhase(0);
  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_F4FDC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24) + a1;
  v5 = type metadata accessor for LearningPhase(0);
  return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
}

uint64_t type metadata completion function for MLActivityClassifier.InputBlock(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.Int64 + 64;
  v3[1] = &value witness table for Builtin.Int64 + 64;
  result = type metadata accessor for LearningPhase(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier.Model(_OWORD *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v29 = *a2;
    *v3 = *a2;
    v3 = (v29 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v6 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
    v7 = type metadata accessor for LearningPhase(0);
    (*(*(v7 - 8) + 16))(a1 + v6, &a2[v6], v7);
    v8 = a3[5];
    v53 = type metadata accessor for Conv2D(0);
    v55 = *(*(v53 - 8) + 16);
    v55(a1 + v8, &a2[v8], v53);
    v9 = a3[6];
    v45 = type metadata accessor for ReLU(0);
    v47 = *(*(v45 - 8) + 16);
    v47(a1 + v9, &a2[v9], v45);
    v10 = a3[7];
    v49 = type metadata accessor for Dropout(0);
    v51 = *(*(v49 - 8) + 16);
    v51(a1 + v10, &a2[v10], v49);
    v11 = a3[8];
    v12 = a1 + v11;
    v13 = &a2[v11];
    *(a1 + v11) = *&a2[v11];
    *(a1 + v11 + 16) = a2[v11 + 16];
    *(a1 + v11 + 17) = a2[v11 + 17];
    v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
    v15 = &v12[v14];
    v16 = &v13[v14];
    v17 = type metadata accessor for LSTM(0);
    (*(*(v17 - 8) + 16))(v15, v16, v17);
    v55(a1 + a3[9], &a2[a3[9]], v53);
    v18 = a3[10];
    v19 = type metadata accessor for BatchNorm(0);
    (*(*(v19 - 8) + 16))(a1 + v18, &a2[v18], v19);
    v47(a1 + a3[11], &a2[a3[11]], v45);
    v51(a1 + a3[12], &a2[a3[12]], v49);
    v55(a1 + a3[13], &a2[a3[13]], v53);
    *(a1 + a3[14]) = *&a2[a3[14]];
    v20 = a3[15];
    v50 = *&a2[v20];
    *(a1 + v20) = v50;
    v54 = a3;
    v21 = a3[16];
    v22 = a1 + v21;
    v23 = &a2[v21];
    *(a1 + v21) = *&a2[v21];
    *(a1 + v21 + 8) = *&a2[v21 + 8];
    *(a1 + v21 + 16) = a2[v21 + 16];
    *(a1 + v21 + 24) = *&a2[v21 + 24];
    v52 = *&a2[v21 + 40];
    *(a1 + v21 + 40) = v52;
    *(a1 + v21 + 48) = *&a2[v21 + 48];
    v43 = *&a2[v21 + 56];
    *(a1 + v21 + 56) = v43;
    *(a1 + v21 + 64) = *&a2[v21 + 64];
    v44 = *&a2[v21 + 72];
    *(a1 + v21 + 72) = v44;
    v48 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v24 = *(v48 + 44);
    v56 = v22;
    v25 = &v22[v24];
    v46 = v23;
    v26 = &v23[v24];
    v27 = type metadata accessor for DataFrame(0);
    v50;
    v52;
    v43;
    v44;
    if (__swift_getEnumTagSinglePayload(v26, 1, v27))
    {
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v25, v26, *(*(v28 - 8) + 64));
    }

    else
    {
      (*(*(v27 - 8) + 16))(v25, v26, v27);
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v27);
    }

    v30 = v27;
    v31 = *(v48 + 48);
    v32 = &v56[v31];
    v33 = &v46[v31];
    if (__swift_getEnumTagSinglePayload(&v46[v31], 1, v30))
    {
      v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v32, v33, *(*(v34 - 8) + 64));
    }

    else
    {
      (*(*(v30 - 8) + 16))(v32, v33, v30);
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v30);
    }

    v35 = v54[17];
    v36 = *&a2[v35];
    *(v3 + v35) = v36;
    v37 = v54[18];
    v38 = (v3 + v37);
    v39 = &a2[v37];
    v40 = *&a2[v37];
    v36;
    if (v40)
    {
      *v38 = v40;
      v38[1] = *(v39 + 1);
      v41 = *(v39 + 2);
      v38[2] = v41;

      v41;
    }

    else
    {
      v38[2] = *(v39 + 2);
      *v38 = *v39;
    }
  }

  return v3;
}

void destroy for MLActivityClassifier.Model(uint64_t a1, int *a2)
{
  v3 = a1 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = a1 + a2[5];
  v22 = type metadata accessor for Conv2D(0);
  v23 = *(*(v22 - 8) + 8);
  v23(v5, v22);
  v6 = a1 + a2[6];
  v24 = type metadata accessor for ReLU(0);
  v19 = *(*(v24 - 8) + 8);
  v19(v6, v24);
  v7 = a1 + a2[7];
  v20 = type metadata accessor for Dropout(0);
  v21 = *(*(v20 - 8) + 8);
  v21(v7, v20);
  v8 = a1 + a2[8];
  v9 = v8 + *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v10 = type metadata accessor for LSTM(0);
  (*(*(v10 - 8) + 8))(v9, v10);
  v23(a1 + a2[9], v22);
  v11 = a1 + a2[10];
  v12 = type metadata accessor for BatchNorm(0);
  (*(*(v12 - 8) + 8))(v11, v12);
  v19(a1 + a2[11], v24);
  v21(a1 + a2[12], v20);
  v23(a1 + a2[13], v22);
  *(a1 + a2[15]);
  v13 = (a1 + a2[16]);
  v13[5];
  v13[7];
  v13[9];
  v25 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v14 = v13 + *(v25 + 44);
  v15 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v14, v15);
  }

  v16 = v13 + *(v25 + 48);
  if (!__swift_getEnumTagSinglePayload(v16, 1, v15))
  {
    (*(*(v15 - 8) + 8))(v16, v15);
  }

  v17 = a2[18];
  if (*(a1 + v17))
  {

    v18 = *(a1 + v17 + 8);

    *(a1 + v17 + 16);
  }
}

char *initializeWithCopy for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 16))(&a1[v5], &a2[v5], v6);
  v7 = a3[5];
  v49 = type metadata accessor for Conv2D(0);
  v51 = *(*(v49 - 8) + 16);
  v51(&a1[v7], &a2[v7], v49);
  v8 = a3[6];
  v43 = type metadata accessor for ReLU(0);
  v45 = *(*(v43 - 8) + 16);
  v45(&a1[v8], &a2[v8], v43);
  v9 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v47 = *(*(__dsta - 1) + 16);
  v47(&a1[v9], &a2[v9], __dsta);
  v10 = a3[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 16))(v14, v15, v16);
  v51(&a1[a3[9]], &a2[a3[9]], v49);
  v17 = a3[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 16))(&a1[v17], &a2[v17], v18);
  v45(&a1[a3[11]], &a2[a3[11]], v43);
  v47(&a1[a3[12]], &a2[a3[12]], __dsta);
  v51(&a1[a3[13]], &a2[a3[13]], v49);
  *&a1[a3[14]] = *&a2[a3[14]];
  v19 = a3[15];
  v48 = *&a2[v19];
  *&a1[v19] = v48;
  v50 = a3;
  v20 = a3[16];
  v21 = &a1[v20];
  v22 = &a2[v20];
  *&a1[v20] = *&a2[v20];
  *&a1[v20 + 8] = *&a2[v20 + 8];
  a1[v20 + 16] = a2[v20 + 16];
  *&a1[v20 + 24] = *&a2[v20 + 24];
  v40 = *&a2[v20 + 40];
  *&a1[v20 + 40] = v40;
  *&a1[v20 + 48] = *&a2[v20 + 48];
  v41 = *&a2[v20 + 56];
  *&a1[v20 + 56] = v41;
  *&a1[v20 + 64] = *&a2[v20 + 64];
  v42 = *&a2[v20 + 72];
  *&a1[v20 + 72] = v42;
  v46 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v23 = *(v46 + 44);
  v52 = v21;
  __dst = &v21[v23];
  v44 = v22;
  v24 = &v22[v23];
  v25 = type metadata accessor for DataFrame(0);
  v48;
  v40;
  v41;
  v42;
  if (__swift_getEnumTagSinglePayload(v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(__dst, v24, v25);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v25);
  }

  v27 = v25;
  v28 = *(v46 + 48);
  v29 = &v52[v28];
  v30 = &v22[v28];
  if (__swift_getEnumTagSinglePayload(&v44[v28], 1, v27))
  {
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v29, v30, *(*(v31 - 8) + 64));
  }

  else
  {
    (*(*(v27 - 8) + 16))(v29, v30, v27);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v27);
  }

  v32 = v50[17];
  v33 = *&a2[v32];
  *&a1[v32] = v33;
  v34 = v50[18];
  v35 = &a1[v34];
  v36 = &a2[v34];
  v37 = *&a2[v34];
  v33;
  if (v37)
  {
    *v35 = v37;
    *(v35 + 1) = *(v36 + 1);
    v38 = *(v36 + 2);
    *(v35 + 2) = v38;

    v38;
  }

  else
  {
    *(v35 + 2) = *(v36 + 2);
    *v35 = *v36;
  }

  return a1;
}

char *assignWithCopy for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = a3[5];
  __srca = type metadata accessor for Conv2D(0);
  v66 = *(*(__srca - 1) + 24);
  v66(&a1[v7], &a2[v7], __srca);
  v8 = a3[6];
  v60 = type metadata accessor for ReLU(0);
  v62 = *(*(v60 - 8) + 24);
  v62(&a1[v8], &a2[v8], v60);
  v9 = a3;
  v10 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v59 = *(*(__dsta - 1) + 24);
  v59(&a1[v10], &a2[v10], __dsta);
  v11 = a3[8];
  v12 = &a1[v11];
  v13 = &a2[v11];
  *&a1[v11] = *&a2[v11];
  *&a1[v11 + 8] = *&a2[v11 + 8];
  a1[v11 + 16] = a2[v11 + 16];
  a1[v11 + 17] = a2[v11 + 17];
  v14 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v15 = &v12[v14];
  v16 = &v13[v14];
  v17 = type metadata accessor for LSTM(0);
  (*(*(v17 - 8) + 24))(v15, v16, v17);
  v66(&a1[v9[9]], &a2[v9[9]], __srca);
  v18 = v9[10];
  v19 = type metadata accessor for BatchNorm(0);
  (*(*(v19 - 8) + 24))(&a1[v18], &a2[v18], v19);
  v62(&a1[v9[11]], &a2[v9[11]], v60);
  v59(&a1[v9[12]], &a2[v9[12]], __dsta);
  v66(&a1[v9[13]], &a2[v9[13]], __srca);
  *&a1[v9[14]] = *&a2[v9[14]];
  v20 = v9[15];
  v21 = v9;
  v22 = *&a2[v20];
  v23 = *&a1[v20];
  *&a1[v20] = v22;
  v22;
  v23;
  v61 = v21;
  v24 = v21[16];
  v25 = &a1[v24];
  __src = &a2[v24];
  *&a1[v24] = *&a2[v24];
  *&a1[v24 + 8] = *&a2[v24 + 8];
  a1[v24 + 16] = a2[v24 + 16];
  *&a1[v24 + 24] = *&a2[v24 + 24];
  *&a1[v24 + 32] = *&a2[v24 + 32];
  v26 = *&a2[v24 + 40];
  v27 = *&a1[v24 + 40];
  *&a1[v24 + 40] = v26;
  v26;
  v27;
  *&a1[v24 + 48] = *&a2[v24 + 48];
  v28 = *&a2[v24 + 56];
  v29 = *&a1[v24 + 56];
  *&a1[v24 + 56] = v28;
  v28;
  v29;
  *&a1[v24 + 64] = *&a2[v24 + 64];
  v30 = *&a2[v24 + 72];
  v31 = *&a1[v24 + 72];
  *&a1[v24 + 72] = v30;
  v30;
  v31;
  v63 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v32 = *(v63 + 44);
  v67 = v25;
  v33 = &v25[v32];
  v34 = &__src[v32];
  v35 = type metadata accessor for DataFrame(0);
  __dst = v33;
  LODWORD(v33) = __swift_getEnumTagSinglePayload(v33, 1, v35);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v35);
  if (v33)
  {
    if (EnumTagSinglePayload)
    {
      v37 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v38 = __dst;
LABEL_6:
      memcpy(v38, v34, v37);
      goto LABEL_9;
    }

    (*(*(v35 - 8) + 16))(__dst, v34, v35);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v35);
  }

  else
  {
    v39 = *(v35 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v39 + 8))(__dst, v35);
      v37 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v38 = __dst;
      goto LABEL_6;
    }

    (*(v39 + 24))(__dst, v34, v35);
  }

LABEL_9:
  v40 = *(v63 + 48);
  v41 = &__src[v40];
  v68 = &v67[v40];
  v42 = __swift_getEnumTagSinglePayload(v68, 1, v35);
  v43 = __swift_getEnumTagSinglePayload(v41, 1, v35);
  if (v42)
  {
    if (v43)
    {
      v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v45 = v68;
LABEL_14:
      memcpy(v45, v41, v44);
      goto LABEL_17;
    }

    (*(*(v35 - 8) + 16))(v68, v41, v35);
    __swift_storeEnumTagSinglePayload(v68, 0, 1, v35);
  }

  else
  {
    v46 = *(v35 - 8);
    if (v43)
    {
      (*(v46 + 8))(v68, v35);
      v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v45 = v68;
      goto LABEL_14;
    }

    (*(v46 + 24))(v68, v41, v35);
  }

LABEL_17:
  v47 = v61[17];
  v48 = *&a1[v47];
  v49 = *&a2[v47];
  *&a1[v47] = v49;
  v49;

  v50 = v61[18];
  v51 = &a1[v50];
  v52 = &a2[v50];
  v53 = *&a2[v50];
  if (*&a1[v50])
  {
    if (v53)
    {
      *v51 = v53;

      v54 = *(v51 + 1);
      *(v51 + 1) = *(v52 + 1);

      v55 = *(v52 + 2);
      v56 = *(v51 + 2);
      *(v51 + 2) = v55;
      v55;
      v56;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(&a1[v50]);
      *v51 = *v52;
      *(v51 + 2) = *(v52 + 2);
    }
  }

  else if (v53)
  {
    *v51 = v53;
    *(v51 + 1) = *(v52 + 1);
    v57 = *(v52 + 2);
    *(v51 + 2) = v57;

    v57;
  }

  else
  {
    *(v51 + 2) = *(v52 + 2);
    *v51 = *v52;
  }

  return a1;
}

char *initializeWithTake for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v4 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v5 = type metadata accessor for LearningPhase(0);
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  v6 = a3[5];
  v36 = type metadata accessor for Conv2D(0);
  v38 = *(*(v36 - 8) + 32);
  v38(&a1[v6], &a2[v6], v36);
  v7 = a3[6];
  v32 = type metadata accessor for ReLU(0);
  v34 = *(*(v32 - 8) + 32);
  v34(&a1[v7], &a2[v7], v32);
  v8 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v31 = *(*(__dsta - 1) + 32);
  v31(&a1[v8], &a2[v8], __dsta);
  v9 = a3[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *&a1[v9] = *&a2[v9];
  a1[v9 + 16] = a2[v9 + 16];
  a1[v9 + 17] = a2[v9 + 17];
  v12 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v13 = &v10[v12];
  v14 = &v11[v12];
  v15 = type metadata accessor for LSTM(0);
  (*(*(v15 - 8) + 32))(v13, v14, v15);
  v38(&a1[a3[9]], &a2[a3[9]], v36);
  v16 = a3[10];
  v17 = type metadata accessor for BatchNorm(0);
  (*(*(v17 - 8) + 32))(&a1[v16], &a2[v16], v17);
  v34(&a1[a3[11]], &a2[a3[11]], v32);
  v31(&a1[a3[12]], &a2[a3[12]], __dsta);
  v38(&a1[a3[13]], &a2[a3[13]], v36);
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[a3[15]] = *&a2[a3[15]];
  v39 = a3;
  v18 = a3[16];
  v19 = &a1[v18];
  v20 = &a2[v18];
  *&a1[v18] = *&a2[v18];
  *&a1[v18 + 8] = *&a2[v18 + 8];
  a1[v18 + 16] = a2[v18 + 16];
  *&a1[v18 + 24] = *&a2[v18 + 24];
  *&a1[v18 + 40] = *&a2[v18 + 40];
  *&a1[v18 + 48] = *&a2[v18 + 48];
  *&a1[v18 + 64] = *&a2[v18 + 64];
  v35 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v21 = *(v35 + 44);
  v37 = v19;
  __dst = &v19[v21];
  v33 = v20;
  v22 = &v20[v21];
  v23 = type metadata accessor for DataFrame(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v23))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(__dst, v22, *(*(v24 - 8) + 64));
  }

  else
  {
    (*(*(v23 - 8) + 32))(__dst, v22, v23);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v23);
  }

  v25 = *(v35 + 48);
  v26 = &v37[v25];
  v27 = &v20[v25];
  if (__swift_getEnumTagSinglePayload(&v33[v25], 1, v23))
  {
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v26, v27, *(*(v28 - 8) + 64));
  }

  else
  {
    (*(*(v23 - 8) + 32))(v26, v27, v23);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v23);
  }

  *&a1[v39[17]] = *&a2[v39[17]];
  v29 = v39[18];
  *&a1[v29 + 16] = *&a2[v29 + 16];
  *&a1[v29] = *&a2[v29];
  return a1;
}

char *assignWithTake for MLActivityClassifier.Model(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 40))(&a1[v5], &a2[v5], v6);
  v7 = a3[5];
  v58 = type metadata accessor for Conv2D(0);
  __srca = *(*(v58 - 1) + 40);
  __srca(&a1[v7], &a2[v7], v58);
  v8 = a3[6];
  v52 = type metadata accessor for ReLU(0);
  v54 = *(*(v52 - 8) + 40);
  v54(&a1[v8], &a2[v8], v52);
  v9 = a3[7];
  __dsta = type metadata accessor for Dropout(0);
  v51 = *(*(__dsta - 1) + 40);
  v51(&a1[v9], &a2[v9], __dsta);
  v10 = a3[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *&a1[v10] = *&a2[v10];
  a1[v10 + 16] = a2[v10 + 16];
  a1[v10 + 17] = a2[v10 + 17];
  v13 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v14 = &v11[v13];
  v15 = &v12[v13];
  v16 = type metadata accessor for LSTM(0);
  (*(*(v16 - 8) + 40))(v14, v15, v16);
  __srca(&a1[a3[9]], &a2[a3[9]], v58);
  v17 = a3[10];
  v18 = type metadata accessor for BatchNorm(0);
  (*(*(v18 - 8) + 40))(&a1[v17], &a2[v17], v18);
  v54(&a1[a3[11]], &a2[a3[11]], v52);
  v51(&a1[a3[12]], &a2[a3[12]], __dsta);
  __srca(&a1[a3[13]], &a2[a3[13]], v58);
  *&a1[a3[14]] = *&a2[a3[14]];
  v19 = a3[15];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];
  v20;
  v53 = a3;
  v21 = a3[16];
  v22 = &a1[v21];
  v23 = &a2[v21];
  *&a1[v21] = *&a2[v21];
  *&a1[v21 + 8] = *&a2[v21 + 8];
  a1[v21 + 16] = a2[v21 + 16];
  *&a1[v21 + 24] = *&a2[v21 + 24];
  v24 = *&a1[v21 + 40];
  *&a1[v21 + 40] = *&a2[v21 + 40];
  v24;
  *&a1[v21 + 48] = *&a2[v21 + 48];
  v25 = *&a1[v21 + 56];
  *&a1[v21 + 56] = *&a2[v21 + 56];
  v25;
  *&a1[v21 + 64] = *&a2[v21 + 64];
  v26 = *&a1[v21 + 72];
  *&a1[v21 + 72] = *&a2[v21 + 72];
  v26;
  v55 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v27 = *(v55 + 44);
  v59 = v22;
  v28 = &v22[v27];
  __src = v23;
  v29 = &v23[v27];
  v30 = type metadata accessor for DataFrame(0);
  __dst = v28;
  LODWORD(v28) = __swift_getEnumTagSinglePayload(v28, 1, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, 1, v30);
  if (v28)
  {
    if (EnumTagSinglePayload)
    {
      v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v33 = __dst;
LABEL_6:
      memcpy(v33, v29, v32);
      goto LABEL_9;
    }

    (*(*(v30 - 8) + 32))(__dst, v29, v30);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v30);
  }

  else
  {
    v34 = *(v30 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v34 + 8))(__dst, v30);
      v32 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v33 = __dst;
      goto LABEL_6;
    }

    (*(v34 + 40))(__dst, v29, v30);
  }

LABEL_9:
  v35 = *(v55 + 48);
  v36 = &__src[v35];
  v60 = &v59[v35];
  v37 = __swift_getEnumTagSinglePayload(v60, 1, v30);
  v38 = __swift_getEnumTagSinglePayload(v36, 1, v30);
  if (v37)
  {
    if (v38)
    {
      v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v40 = v60;
LABEL_14:
      memcpy(v40, v36, v39);
      goto LABEL_17;
    }

    (*(*(v30 - 8) + 32))(v60, v36, v30);
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v30);
  }

  else
  {
    v41 = *(v30 - 8);
    if (v38)
    {
      (*(v41 + 8))(v60, v30);
      v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v40 = v60;
      goto LABEL_14;
    }

    (*(v41 + 40))(v60, v36, v30);
  }

LABEL_17:
  v42 = v53[17];
  v43 = *&a1[v42];
  *&a1[v42] = *&a2[v42];

  v44 = v53[18];
  v45 = &a1[v44];
  v46 = &a2[v44];
  if (*&a1[v44])
  {
    v47 = *&a2[v44];
    if (v47)
    {
      *v45 = v47;

      v48 = *(v45 + 1);
      *(v45 + 1) = *(v46 + 1);

      v49 = *(v45 + 2);
      *(v45 + 2) = *(v46 + 2);
      v49;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v45);
      *v45 = *v46;
      *(v45 + 2) = *(v46 + 2);
    }
  }

  else
  {
    *(v45 + 2) = *(v46 + 2);
    *v45 = *v46;
  }

  return a1;
}

uint64_t sub_F670A(uint64_t a1, unsigned int a2, int *a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLActivityClassifier.InputBlock(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for Conv2D(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[5];
LABEL_17:
    v4 = v6 + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  v5 = type metadata accessor for ReLU(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[6];
    goto LABEL_17;
  }

  v5 = type metadata accessor for Dropout(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[7];
    goto LABEL_17;
  }

  v5 = type metadata accessor for MLActivityClassifier.LSTMBlock(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[8];
    goto LABEL_17;
  }

  v5 = type metadata accessor for BatchNorm(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    v6 = a3[10];
    goto LABEL_17;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v6 = a3[16];
    goto LABEL_17;
  }

  result = 0;
  if ((*(a1 + a3[15]) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + a3[15]) >> 1) + 1;
  }

  return result;
}

uint64_t sub_F680F(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLActivityClassifier.InputBlock(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = type metadata accessor for Conv2D(0);
    if (*(*(v7 - 8) + 84) == a3)
    {
      v8 = a4[5];
    }

    else
    {
      v7 = type metadata accessor for ReLU(0);
      if (*(*(v7 - 8) + 84) == a3)
      {
        v8 = a4[6];
      }

      else
      {
        v7 = type metadata accessor for Dropout(0);
        if (*(*(v7 - 8) + 84) == a3)
        {
          v8 = a4[7];
        }

        else
        {
          v7 = type metadata accessor for MLActivityClassifier.LSTMBlock(0);
          if (*(*(v7 - 8) + 84) == a3)
          {
            v8 = a4[8];
          }

          else
          {
            v7 = type metadata accessor for BatchNorm(0);
            if (*(*(v7 - 8) + 84) == a3)
            {
              v8 = a4[10];
            }

            else
            {
              if (a3 == 0x7FFFFFFF)
              {
                result = a4[15];
                *(a1 + result) = 2 * (a2 - 1);
                return result;
              }

              v7 = type metadata accessor for MLActivityClassifier.Configuration(0);
              v8 = a4[16];
            }
          }
        }
      }
    }

    v6 = v8 + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLActivityClassifier.Model(uint64_t a1)
{
  result = type metadata accessor for MLActivityClassifier.InputBlock(319);
  if (v2 <= 0x3F)
  {
    v12[0] = *(result - 8) + 64;
    result = type metadata accessor for Conv2D(319);
    if (v3 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      v12[1] = v4;
      result = type metadata accessor for ReLU(319);
      if (v5 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        v12[2] = v6;
        result = type metadata accessor for Dropout(319);
        if (v7 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          v12[3] = v8;
          result = type metadata accessor for MLActivityClassifier.LSTMBlock(319);
          if (v9 <= 0x3F)
          {
            v12[4] = *(result - 8) + 64;
            v12[5] = v4;
            result = type metadata accessor for BatchNorm(319);
            if (v10 <= 0x3F)
            {
              v12[6] = *(result - 8) + 64;
              v12[7] = v6;
              v12[8] = v8;
              v12[9] = v4;
              v12[10] = &value witness table for Builtin.Int64 + 64;
              v12[11] = &value witness table for Builtin.BridgeObject + 64;
              result = type metadata accessor for MLActivityClassifier.Configuration(319);
              if (v11 <= 0x3F)
              {
                v12[12] = *(result - 8) + 64;
                v12[13] = "\b";
                v12[14] = &unk_340CE8;
                swift_initStructMetadata(a1, 256, 15, v12, a1 + 16);
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

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v39;
  v7 = type metadata accessor for FeatureDescription(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v47 = &v39;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = *(a1 + 16);
  if (v14)
  {
    v54 = _swiftEmptyArrayStorage;
    v57 = v14;
    v51 = v8;
    v52 = &v39;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v55 = v54;
    v15 = specialized Dictionary.startIndex.getter(a1);
    v17 = a1 + 64;
    v18 = v57 - 1;
    v53 = v2;
    v48 = a1;
    v50 = a1 + 64;
    v49 = v7;
    while (1)
    {
      if (v15 < 0 || v15 >= 1 << *(v3 + 32))
      {
        BUG();
      }

      v19 = *(v17 + 8 * (v15 >> 6));
      if (!_bittest64(&v19, v15))
      {
        BUG();
      }

      if (v16 != *(v3 + 36))
      {
        BUG();
      }

      if (!*(v2 + 16))
      {
        BUG();
      }

      v42 = 1 << v15;
      v41 = v15 >> 6;
      v45 = v16;
      v57 = v18;
      v39 = v15;
      v20 = 16 * v15;
      v21 = *(v3 + 48);
      v22 = *(v3 + 56);
      v40 = *(v21 + v20);
      v23 = *(v21 + v20 + 8);
      v24 = v2;
      v25 = *(v22 + v20 + 8);
      v56 = *(v22 + v20);
      swift_bridgeObjectRetain_n(v23, 2);
      v25;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v25);
      if ((v27 & 1) == 0)
      {
        BUG();
      }

      v43 = v23;
      v28 = v51;
      v56 = *(v51 + 72);
      v29 = *(v24 + 56) + v56 * v26;
      v30 = v47;
      (*(v51 + 16))(v47, v29, v7);
      v44 = v25;
      v31 = v46;
      FeatureDescription.type.getter();
      (*(v28 + 8))(v30, v7);
      v32 = v52;
      v33 = v43;
      FeatureDescription.init(name:type:description:)(v40, v43, v31, 0, 0xE000000000000000);
      v44;
      v33;
      v34 = v55;
      v54 = v55;
      v35 = v55[2];
      if (v55[3] >> 1 <= v35)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55[3] >= 2uLL, v35 + 1, 1);
        v32 = v52;
        v28 = v51;
        v34 = v54;
      }

      v34[2] = v35 + 1;
      v36 = *(v28 + 80);
      v55 = v34;
      v7 = v49;
      (*(v28 + 32))(v34 + ((v36 + 32) & ~v36) + v56 * v35, v32, v49);
      v3 = v48;
      v37 = -1 << *(v48 + 32);
      if (v39 >= -v37)
      {
        BUG();
      }

      v17 = v50;
      if ((v42 & *(v50 + 8 * v41)) == 0)
      {
        BUG();
      }

      if (v45 != *(v48 + 36))
      {
        BUG();
      }

      v15 = _HashTable.occupiedBucket(after:)(v39, v50, ~v37);
      v18 = v57 - 1;
      if (!v57)
      {
        break;
      }

      v16 = *(v3 + 36);
      v2 = v53;
    }

    v53;
    return v55;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVyS2S_G_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v40 = &v31;
  v6 = type metadata accessor for FeatureDescription(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(a1 + 16);
  if (v11)
  {
    v39 = &v31;
    v42 = v7;
    v44 = v6;
    v41 = _swiftEmptyArrayStorage;
    v45 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v45;
    v43 = v41;
    v13 = specialized Dictionary.startIndex.getter(a1);
    v15 = a1 + 64;
    v16 = v11 - 1;
    v37 = a1;
    v38 = a1 + 64;
    while (1)
    {
      if (v13 < 0 || v13 >= 1 << *(v2 + 32))
      {
        BUG();
      }

      v17 = *(v15 + 8 * (v13 >> 6));
      if (!_bittest64(&v17, v13))
      {
        BUG();
      }

      if (v14 != *(v2 + 36))
      {
        BUG();
      }

      v34 = 1 << v13;
      v33 = v13 >> 6;
      v35 = v14;
      v18 = *(v2 + 56);
      v31 = v13;
      v19 = *(v18 + 16 * v13 + 8);
      if (!*(v12 + 16))
      {
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v44);
        v19;
LABEL_27:
        BUG();
      }

      v36 = v16;
      v20 = *(16 * v13 + v18);
      swift_bridgeObjectRetain_n(v19, 2);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20, v19);
      v23 = 1;
      v24 = v40;
      if (v22)
      {
        (*(v42 + 16))(v40, *(v45 + 56) + *(v42 + 72) * v21, v44);
        v23 = 0;
      }

      v25 = v44;
      __swift_storeEnumTagSinglePayload(v24, v23, 1, v44);
      v19;
      if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
      {
        goto LABEL_27;
      }

      v32 = *(v42 + 32);
      v32(v39, v24, v25);
      v19;
      v26 = v43;
      v41 = v43;
      v27 = v43[2];
      v12 = v45;
      if (v43[3] >> 1 <= v27)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43[3] >= 2uLL, v27 + 1, 1);
        v12 = v45;
        v26 = v41;
      }

      v26[2] = v27 + 1;
      v28 = *(v42 + 80);
      v43 = v26;
      v32((v26 + ((v28 + 32) & ~v28) + *(v42 + 72) * v27), v39, v25);
      v2 = v37;
      v29 = -1 << *(v37 + 32);
      if (v31 >= -v29)
      {
        BUG();
      }

      v15 = v38;
      if ((v34 & *(v38 + 8 * v33)) == 0)
      {
        BUG();
      }

      if (v35 != *(v37 + 36))
      {
        BUG();
      }

      v13 = _HashTable.occupiedBucket(after:)(v31, v38, ~v29);
      v16 = v36 - 1;
      if (!v36)
      {
        break;
      }

      v14 = *(v2 + 36);
    }

    v12;
    return v43;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification13NeuralNetworkV5LayerVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n(uint64_t a1)
{
  v1 = a1;
  v31 = type metadata accessor for NeuralNetwork.Layer(0);
  v32 = *(v31 - 8);
  v2 = *(v32 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v36 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v38 = _swiftEmptyArrayStorage;
  v6 = specialized Dictionary.startIndex.getter(a1);
  v8 = v7;
  v37 = v1 + 64;
  v9 = v5 - 1;
  v35 = &v25;
  v33 = v1;
  while (1)
  {
    if (v6 < 0 || v6 >= 1 << *(v1 + 32))
    {
      BUG();
    }

    v28 = v9;
    v10 = v6 >> 6;
    v11 = *(v37 + 8 * (v6 >> 6));
    if (!_bittest64(&v11, v6))
    {
      BUG();
    }

    if (v8 != *(v1 + 36))
    {
      BUG();
    }

    v29 = 1 << v6;
    v30 = v8;
    v12 = *(v1 + 48);
    v13 = *(v1 + 56);
    v26 = *(v12 + 16 * v6);
    v14 = *(v12 + 16 * v6 + 8);
    v27 = *(v13 + 16 * v6);
    v15 = v27;
    v16 = *(v13 + 16 * v6 + 8);
    strcpy(v34, "__activation_");
    HIWORD(v34[1]) = -4864;
    v25 = v6;
    v14;
    v16;
    v17._countAndFlagsBits = v15;
    v17._object = v16;
    String.append(_:)(v17);
    v18 = v34[1];
    static NeuralNetwork.Layer.linearActivation(name:inputName:outputName:scale:offset:)(v34[0], v34[1], v26, v14, v27, v16, 1.0, 0.0);
    v16;
    v14;
    v19 = v38;
    v18;
    v36 = v19;
    v20 = v19[2];
    v38 = v19;
    if (v19[3] >> 1 <= v20)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19[3] >= 2uLL, v20 + 1, 1);
      v38 = v36;
    }

    v21 = v38;
    v38[2] = v20 + 1;
    (*(v32 + 32))(&v21[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20], v35, v31);
    v1 = v33;
    v22 = -1 << *(v33 + 32);
    if (v25 >= -v22)
    {
      BUG();
    }

    if ((v29 & *(v37 + 8 * v10)) == 0)
    {
      BUG();
    }

    if (v30 != *(v33 + 36))
    {
      BUG();
    }

    v23 = _HashTable.occupiedBucket(after:)(v25, v37, ~v22);
    v9 = v28 - 1;
    if (!v28)
    {
      break;
    }

    v6 = v23;
    v8 = *(v1 + 36);
  }

  return v38;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification18FeatureDescriptionVG_AHs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v39 = &v35;
  v8 = type metadata accessor for FeatureDescription(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v46 = &v35;
  v13 = *(a1 + 16);
  if (v13)
  {
    v47 = v8;
    v40 = v3;
    v44 = _swiftEmptyArrayStorage;
    v37 = v13;
    v48 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
    v45 = v44;
    v38 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v14 = v38 + a1;
    v41 = *(v48 + 72);
    v36 = a2;
    do
    {
      v15 = FeatureDescription.name.getter();
      v17 = v16;
      if (*(a2 + 16) && (v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16), (v19 & 1) != 0))
      {
        v20 = *(a2 + 56);
        v21 = 16 * v18;
        v22 = *(v20 + v21);
        v42 = *(v20 + v21 + 8);
        v42;
        v17;
        v23 = v43;
        v24 = 1;
        v25 = v39;
        if (*(v43 + 16))
        {
          v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v42);
          v24 = 1;
          if (v27)
          {
            (*(v48 + 16))(v25, *(v23 + 56) + v41 * v26, v47);
            v24 = 0;
          }
        }

        v28 = v47;
        __swift_storeEnumTagSinglePayload(v25, v24, 1, v47);
        v42;
        if (__swift_getEnumTagSinglePayload(v25, 1, v28) == 1)
        {
          BUG();
        }

        (*(v48 + 32))(v46, v25, v28);
      }

      else
      {
        v17;
        v28 = v47;
        (*(v48 + 16))(v46, v14, v47);
      }

      v29 = v45;
      v44 = v45;
      v30 = v45[2];
      if (v45[3] >> 1 <= v30)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45[3] >= 2uLL, v30 + 1, 1);
        v28 = v47;
        v29 = v44;
      }

      v29[2] = v30 + 1;
      v45 = v29;
      v31 = v41;
      (*(v48 + 32))(v29 + v38 + v41 * v30, v46, v28);
      v14 += v31;
      v32 = v37-- == 1;
      a2 = v36;
    }

    while (!v32);
    v36;
    v33 = v45;
  }

  else
  {
    a2;
    v33 = _swiftEmptyArrayStorage;
  }

  v43;
  return v33;
}

char specialized Sequence.allSatisfy(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *), uint64_t a3)
{
  v29 = a3;
  v30 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  v3 = *(*(v31 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = v25;
  specialized _NativeDictionary.makeIterator()(a1);
  v36 = v25[1];
  v35 = v25[2];
  v6 = v25[4];
  v7 = v25[5];
  v34 = (v25[3] + 64) >> 6;
  a1;
  while (1)
  {
    if (v7)
    {
LABEL_3:
      v8 = v6;
      goto LABEL_20;
    }

    v9 = v6 + 1;
    if (__OFADD__(1, v6))
    {
      BUG();
    }

    if (v9 >= v34)
    {
      goto LABEL_26;
    }

    v7 = *(v35 + 8 * v9);
    if (v7)
    {
      v8 = v6 + 1;
      goto LABEL_20;
    }

    v8 = v6 + 2;
    if (v6 + 2 >= v34)
    {
      goto LABEL_26;
    }

    v7 = *(v35 + 8 * v9 + 8);
    if (!v7)
    {
      v8 = v6 + 3;
      if (v6 + 3 >= v34)
      {
        goto LABEL_26;
      }

      v7 = *(v35 + 8 * v9 + 16);
      if (!v7)
      {
        v8 = v6 + 4;
        if (v6 + 4 >= v34)
        {
          goto LABEL_26;
        }

        v7 = *(v35 + 8 * v9 + 24);
        if (!v7)
        {
          v8 = v6 + 5;
          if (v6 + 5 >= v34)
          {
            goto LABEL_26;
          }

          v7 = *(v35 + 8 * v9 + 32);
          if (!v7)
          {
            v8 = v6 + 6;
            if (v6 + 6 >= v34)
            {
              goto LABEL_26;
            }

            v7 = *(v35 + 8 * v9 + 40);
            if (!v7)
            {
              v8 = v6 + 7;
              if (v6 + 7 >= v34)
              {
                goto LABEL_26;
              }

              v7 = *(v35 + 8 * v9 + 48);
              if (!v7)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_20:
    _BitScanForward64(&v10, v7);
    v26 = (v7 - 1) & v7;
    v27 = v8;
    v11 = v10 | (v8 << 6);
    v12 = v36;
    v13 = *(v36 + 48);
    v14 = *(v13 + 16 * v11);
    v15 = *(v13 + 16 * v11 + 8);
    v28 = v15;
    v16 = v32;
    *v32 = v14;
    v16[1] = v15;
    v17 = v31;
    v18 = v16 + *(v31 + 48);
    v33 = *(v12 + 56);
    v19 = type metadata accessor for Tensor(0);
    (*(*(v19 - 8) + 16))(v18, v33 + *(*(v19 - 8) + 72) * v11, v19);
    v33 = *v16;
    v20 = v16[1];
    v21 = v16 + *(v17 + 48);
    v28;
    LOBYTE(v21) = v30(v33, v20, v21);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, &demangling cache variable for type metadata for (key: String, value: Tensor));
    v6 = v27;
    v22 = (v21 & 1) == 0;
    v7 = v26;
    if (v22)
    {

      return 0;
    }
  }

  v23 = v6 + 8;
  while (v23 < v34)
  {
    v7 = *(v35 + 8 * v23++);
    if (v7)
    {
      v6 = v23 - 1;
      goto LABEL_3;
    }
  }

LABEL_26:

  return 1;
}

uint64_t specialized Sequence.first(where:)(uint64_t a1)
{
  v33 = v1;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  v2 = *(*(v34 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v31 = v27;
  specialized _NativeDictionary.makeIterator()(a1);
  v35 = v27[0];
  v37 = v27[1];
  v7 = v27[3];
  v8 = v27[4];
  v36 = (v27[2] + 64) >> 6;
  a1;
  while (1)
  {
    if (v8)
    {
LABEL_3:
      v9 = v7;
    }

    else
    {
      v10 = v7 + 1;
      if (__OFADD__(1, v7))
      {
        BUG();
      }

      if (v10 >= v36)
      {
        goto LABEL_27;
      }

      v8 = *(v37 + 8 * v10);
      if (v8)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = v7 + 2;
        if (v7 + 2 >= v36)
        {
          goto LABEL_27;
        }

        v8 = *(v37 + 8 * v10 + 8);
        if (!v8)
        {
          v9 = v7 + 3;
          if (v7 + 3 >= v36)
          {
            goto LABEL_27;
          }

          v8 = *(v37 + 8 * v10 + 16);
          if (!v8)
          {
            v9 = v7 + 4;
            if (v7 + 4 >= v36)
            {
              goto LABEL_27;
            }

            v8 = *(v37 + 8 * v10 + 24);
            if (!v8)
            {
              v9 = v7 + 5;
              if (v7 + 5 >= v36)
              {
                goto LABEL_27;
              }

              v8 = *(v37 + 8 * v10 + 32);
              if (!v8)
              {
                v9 = v7 + 6;
                if (v7 + 6 >= v36)
                {
                  goto LABEL_27;
                }

                v8 = *(v37 + 8 * v10 + 40);
                if (!v8)
                {
                  v9 = v7 + 7;
                  if (v7 + 7 >= v36)
                  {
                    goto LABEL_27;
                  }

                  v8 = *(v37 + 8 * v10 + 48);
                  if (!v8)
                  {
                    v22 = v7 + 8;
                    while (v22 < v36)
                    {
                      v8 = *(v37 + 8 * v22++);
                      if (v8)
                      {
                        v7 = v22 - 1;
                        goto LABEL_3;
                      }
                    }

LABEL_27:

                    v23 = v33;
                    v24 = 1;
                    return __swift_storeEnumTagSinglePayload(v23, v24, 1, v34);
                  }
                }
              }
            }
          }
        }
      }
    }

    v28 = v8;
    _BitScanForward64(&v11, v8);
    v29 = v9;
    v12 = v11 | (v9 << 6);
    v13 = v35;
    v14 = *(v35 + 48);
    v15 = *(v14 + 16 * v12);
    v16 = *(v14 + 16 * v12 + 8);
    v17 = v31;
    *v31 = v15;
    v32 = v16;
    *(v17 + 8) = v16;
    v18 = v17 + *(v34 + 48);
    v19 = *(v13 + 56);
    v20 = type metadata accessor for Tensor(0);
    (*(*(v20 - 8) + 16))(v18, v19 + *(*(v20 - 8) + 72) * v12, v20);
    v21 = v30;
    outlined init with take of DataFrame?(v17, v30, &demangling cache variable for type metadata for (key: String, value: Tensor));
    if (*v21 ^ 0x6E496574617473 | v21[1] ^ 0xE700000000000000)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)(*v21, v21[1], 0x6E496574617473, 0xE700000000000000, 0) & 1) == 0)
      {
        break;
      }
    }

    v8 = (v28 - 1) & v28;
    v32;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for (key: String, value: Tensor));
    v7 = v29;
  }

  v32;

  v25 = v33;
  outlined init with take of DataFrame?(v21, v33, &demangling cache variable for type metadata for (key: String, value: Tensor));
  v23 = v25;
  v24 = 0;
  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v34);
}

uint64_t specialized Sequence.contains(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  a3;
  for (i = a1; ; v3 = i)
  {
    if (__OFADD__(1, i++))
    {
      BUG();
    }

    v14 = v3;
    v6 = String.Iterator.next()();
    object = v6.value._object;
    if (!v6.value._object)
    {
      break;
    }

    countAndFlagsBits = v6.value._countAndFlagsBits;
    if (v6.value._countAndFlagsBits ^ 0xA0D | v6.value._object ^ 0xE200000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(v6.value._countAndFlagsBits, v6.value._object, 2573, 0xE200000000000000, 0) & 1) == 0)
    {
      if ((Character._isSingleScalar.getter(countAndFlagsBits, object) & 1) == 0)
      {
        goto LABEL_19;
      }

      v9 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v9 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v9 & 0xFFFFFF80) != 0)
      {
LABEL_19:
        object;
        break;
      }

      v10 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v10 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v10 & 0xFFFFFF00) != 0)
      {
        BUG();
      }
    }

    if ((Character.isLetter.getter(countAndFlagsBits, object) & 1) != 0 || v14 > 0 && (Character.isNumber.getter(countAndFlagsBits, object) & 1) != 0 || !(countAndFlagsBits ^ 0x5F | object ^ 0xE100000000000000))
    {
      object;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)(countAndFlagsBits, object, 95, 0xE100000000000000, 0);
      object;
      if ((v11 & 1) == 0)
      {
        break;
      }
    }
  }

  LOBYTE(object) = object != 0;
  a3;
  return object;
}

uint64_t MLActivityClassifier.InputBlock.forward(_:)(uint64_t a1, double a2)
{
  v4 = v3;
  v24[1] = v2;
  v5 = type metadata accessor for TensorShape(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v24[0] = a1;
  Tensor.shape.getter();
  v11 = TensorShape.dimensions.getter();
  v12 = *(v11 + 16);
  v11;
  if (v12 == 1 && (v13 = v4 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24), (LearningPhase.isTraining.getter() & 1) == 0))
  {
    v17 = TensorShape.subscript.getter(0);
    v18 = v4[1];
    v19 = v18 * *v4;
    if (!is_mul_ok(v18, *v4))
    {
      BUG();
    }

    if (!v19)
    {
      BUG();
    }

    v27 = *v4;
    v26 = v18;
    if (!(v17 ^ 0x8000000000000000 | ~v19))
    {
      BUG();
    }

    v20 = v17 / v19;
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v15 = swift_allocObject(v21, 64, 7);
    v15[2] = 4;
    v15[3] = 8;
    v15[4] = v20;
    v15[5] = v27;
    v15[6] = 1;
    v16 = v26;
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v15 = swift_allocObject(v14, 64, 7);
    v15[2] = 4;
    v15[3] = 8;
    v15[4] = TensorShape.subscript.getter(0);
    v15[5] = TensorShape.subscript.getter(1);
    v15[6] = 1;
    v16 = TensorShape.subscript.getter(2);
  }

  v15[7] = v16;
  TensorShape.init(_:)(v15, a2);
  Tensor.reshaped(to:)(v24);
  v22 = *(v25 + 8);
  v22(v24, v5);
  return (v22)(v24, v5);
}

uint64_t protocol witness for LearningPhaseSensitive.learningPhase.getter in conformance MLActivityClassifier.InputBlock(uint64_t a1)
{
  v3 = v1;
  v4 = v2 + *(a1 + 24);
  v5 = type metadata accessor for LearningPhase(0);
  return (*(*(v5 - 8) + 16))(v3, v4, v5);
}

uint64_t protocol witness for LearningPhaseSensitive.learningPhase.setter in conformance MLActivityClassifier.InputBlock(uint64_t a1, uint64_t a2)
{
  v3 = v2 + *(a2 + 24);
  v4 = type metadata accessor for LearningPhase(0);
  return (*(*(v4 - 8) + 40))(v3, a1, v4);
}

uint64_t MLActivityClassifier.LSTMBlock.forward(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = v4;
  v41 = a4;
  v31 = a2;
  v32 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RecurrentLayerInput<LSTM.State>);
  v35 = *(v34 - 8);
  v6 = *(v35 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v38 = v30;
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RecurrentLayerOutput<LSTM.State>);
  v33 = *(v36 - 8);
  v9 = *(v33 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = v30;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = v30;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = alloca(v13);
  v19 = alloca(v13);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a3, v30, &demangling cache variable for type metadata for LSTM.State?);
  v20 = &v30[*(v12 + 48)];
  v42 = type metadata accessor for Tensor(0);
  v43 = *(v42 - 8);
  (*(v43 + 16))(v20, v41, v42);
  v44 += *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v39 = v30;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v30, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v21 = &v30[*(v12 + 48)];
  v22 = v40;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, v40, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v23 = v22 + *(v12 + 48);
  v24 = type metadata accessor for LSTM.State(0);
  v25 = v38;
  RecurrentLayerInput.init(input:state:)(v21, v22, v24);
  (*(v43 + 8))(v23, v42);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for LSTM.State?);
  v26 = type metadata accessor for LSTM(0);
  v27 = v37;
  Layer.callAsFunction(_:)(v25, v26, &protocol witness table for LSTM);
  (*(v35 + 8))(v25, v34);
  v28 = v36;
  RecurrentLayerOutput.state.getter(v36);
  RecurrentLayerOutput.output.getter(v28);
  (*(v33 + 8))(v27, v28);
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
}

uint64_t MLActivityClassifier.Model.init(windowSize:features:target:classLabels:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v18 = a4;
  v19 = a3;
  v15 = v7;
  v20 = a2;
  v16 = a6;
  v17 = a5;
  v21 = a1;
  v8 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = &v15 + *(v8 + 44);
  v13 = type metadata accessor for DataFrame(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  __swift_storeEnumTagSinglePayload(&v15 + *(v8 + 48), 1, 1, v13);
  v15 = 10;
  v16 = 0;
  LOBYTE(v17) = 0;
  v18 = 32;
  v19 = v21;
  v22 = 32;
  v23 = 0x5F6E6F6973736573;
  v24 = 0xEA00000000006469;
  return MLActivityClassifier.Model.init(classLabels:randomSeed:trainingConfiguration:)(v17, 0, a7 & 1, &v15);
}

uint64_t MLActivityClassifier.Model.init(classLabels:randomSeed:trainingConfiguration:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v62 = a3;
  v59 = a2;
  v55 = a1;
  v6 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v60 = &v50;
  v10 = type metadata accessor for MLActivityClassifier.Model(0);
  v58 = v10;
  *(v6 + v10[17]) = 0;
  v11 = v10[18];
  *(v6 + v11) = 0;
  *(v6 + v11 + 16) = 0;
  *(v6 + v10[15]) = a1;
  v51 = a4;
  v12 = *(a4 + 32);
  v13 = *(*(a4 + 40) + 16);
  v14 = v6 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v15 = enum case for LearningPhase.automatic(_:);
  v16 = type metadata accessor for LearningPhase(0);
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  *v6 = v13;
  v6[1] = v12;
  v17 = type metadata accessor for ParameterInitializer(0);
  v57 = type metadata accessor for ComputeDevice(0);
  v18 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v57);
  LOBYTE(v15) = v62 & 1;
  v55;
  v62 = v15;
  v56 = v17;
  v19 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v59, v15, &type metadata for Float, &protocol witness table for Float, v18);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for ComputeDevice?);
  v20 = static ParameterInitializer.zeros.getter();
  v21 = v58;
  v22 = v6 + v58[5];
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(64, 1, v12, 1, v12, 0, 0, 1, 1, 1, v19, v20);
  v23 = v21[6];
  ReLU.init()();
  v24 = v21[7];
  v25 = v59;
  LODWORD(v12) = v62;
  Dropout.init(probability:seed:)(v59, v62, 0.2);
  v26 = v21[8];
  v52 = v6;
  v61 = v6 + v26;
  *(v6 + v26) = 200;
  *(v6 + v26 + 8) = 64;
  *(v6 + v26 + 16) = 256;
  v27 = v60;
  v28 = v57;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v57);
  v29 = v12;
  v30 = v27;
  v53 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v25, v29, &type metadata for Float, &protocol witness table for Float, v27);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for ComputeDevice?);
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v28);
  LODWORD(v27) = v62;
  v54 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v25, v62, &type metadata for Float, &protocol witness table for Float, v30);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for ComputeDevice?);
  v31 = static ParameterInitializer.zeros.getter();
  v32 = &v61[*(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32)];
  LSTM.init(unitCount:recurrentWeightInitializer:inputWeightInitializer:biasInitializer:isBidirectional:)(200, v53, v54, v31, 0);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v57);
  v33 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v25, v27, &type metadata for Float, &protocol witness table for Float, v30);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for ComputeDevice?);
  v34 = static ParameterInitializer.zeros.getter();
  v35 = v58;
  v36 = v52;
  v37 = v52 + v58[9];
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(128, 1, 1, 1, 1, 0, 0, 1, 1, 1, v33, v34);
  v38 = static ParameterInitializer.zeros.getter();
  v39 = static ParameterInitializer.ones.getter();
  v40 = v35[10];
  BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)(v38, v39, 0.89999998, 0.001);
  v41 = v35[11];
  ReLU.init()();
  v42 = v35[12];
  v43 = v59;
  LODWORD(v35) = v62;
  Dropout.init(probability:seed:)(v59, v62, 0.5);
  v61 = *(v55 + 16);
  v55;
  v44 = v60;
  __swift_storeEnumTagSinglePayload(v60, 1, 1, v57);
  v45 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(v43, v35, &type metadata for Float, &protocol witness table for Float, v44);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for ComputeDevice?);
  v46 = static ParameterInitializer.zeros.getter();
  v47 = v58;
  v48 = v36 + v58[13];
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(v61, 1, 1, 1, 1, 0, 0, 1, 1, 1, v45, v46);
  *(v36 + v47[14]) = Softmax.init(axis:)(1);
  return outlined init with take of MLActivityClassifier.Configuration(v51, v36 + v47[16]);
}

uint64_t MLActivityClassifier.Model.forward(_:)(uint64_t a1, uint64_t a2, int *a3, void (*a4)(_BYTE *, uint64_t))
{
  v112 = v4;
  v115 = a4;
  v114 = a3;
  v97 = a2;
  v95 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v5 = *(*(v104 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v96 = v93;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v106 = v93;
  v10 = type metadata accessor for Tensor(0);
  v11 = *(v10 - 8);
  v111 = v10;
  v12 = *(v11 + 64);
  v113 = v11;
  v13 = alloca(v12);
  v14 = alloca(v12);
  v107 = v93;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v110 = v93;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v20 = *(v19 - 8);
  v21 = v19;
  v109 = v19;
  v22 = *(v20 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v100 = v93;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v101 = v93;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v103 = v93;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v114, v93, &demangling cache variable for type metadata for LSTM.State?);
  v29 = &v93[*(v21 + 48)];
  v102 = *(v11 + 16);
  v102(v29, v115, v10);
  v30 = type metadata accessor for MLActivityClassifier.InputBlock(0);
  v31 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.InputBlock and conformance MLActivityClassifier.InputBlock, type metadata accessor for MLActivityClassifier.InputBlock, &protocol conformance descriptor for MLActivityClassifier.InputBlock);
  v32 = v30;
  v33 = v112;
  Layer.callAsFunction(_:)(v29, v32, v31);
  v114 = type metadata accessor for MLActivityClassifier.Model(0);
  v34 = v33 + v114[5];
  v105 = type metadata accessor for Conv2D(0);
  v35 = v110;
  Layer.callAsFunction(_:)(v93, v105, &protocol witness table for Conv2D);
  v36 = v113;
  v115 = *(v113 + 8);
  v37 = v111;
  v115(v93, v111);
  v113 = *(v36 + 32);
  v38 = v37;
  (v113)(v93, v35, v37);
  v39 = v114;
  v40 = v112 + v114[6];
  v98 = type metadata accessor for ReLU(0);
  Layer.callAsFunction(_:)(v93, v98, &protocol witness table for ReLU);
  v41 = v38;
  v42 = v38;
  v43 = v115;
  v115(v93, v42);
  (v113)(v93, v35, v41);
  v44 = v112 + v39[7];
  v99 = type metadata accessor for Dropout(0);
  Layer.callAsFunction(_:)(v93, v99, &protocol witness table for Dropout);
  v45 = v111;
  v43(v93, v111);
  v108 = v93;
  v46 = v35;
  v47 = v113;
  (v113)(v93, v35, v45);
  v48 = v107;
  Tensor.squeezingShape(at:)(&outlined read-only object #0 of MLActivityClassifier.Model.forward(_:));
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLActivityClassifier.Model.forward(_:));
  v49 = v48;
  v50 = v111;
  v51 = v115;
  v115(v49, v111);
  v52 = v108;
  v51(v108, v50);
  v47(v52, v46, v50);
  v53 = v112 + v114[8];
  v54 = v101;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, v101, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v55 = *(v109 + 48);
  v109 = v54 + v55;
  v56 = v100;
  v57 = &v100[v55];
  outlined init with take of DataFrame?(v54, v100, &demangling cache variable for type metadata for LSTM.State?);
  v102(v57, v108, v50);
  v58 = type metadata accessor for MLActivityClassifier.LSTMBlock(0);
  v59 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.LSTMBlock and conformance MLActivityClassifier.LSTMBlock, type metadata accessor for MLActivityClassifier.LSTMBlock, &protocol conformance descriptor for MLActivityClassifier.LSTMBlock);
  v60 = v106;
  Layer.callAsFunction(_:)(v56, v58, v59);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v61 = v115;
  v115(v109, v50);
  v62 = v60 + *(v104 + 48);
  v63 = v107;
  Tensor.transposed(permutation:)(&outlined read-only object #2 of MLActivityClassifier.Model.forward(_:));
  v64 = v110;
  Tensor.expandingShape(at:)(&outlined read-only object #3 of MLActivityClassifier.Model.forward(_:));
  v65 = v63;
  v66 = v61;
  v61(v65, v50);
  v67 = v108;
  v66(v108, v50);
  (v113)(v67, v64, v50);
  v68 = v114;
  v69 = v112;
  v70 = v112 + v114[9];
  Layer.callAsFunction(_:)(v67, v105, &protocol witness table for Conv2D);
  v71 = v111;
  v115(v67, v111);
  (v113)(v67, v110, v71);
  v72 = v69 + v68[10];
  v73 = type metadata accessor for BatchNorm(0);
  v74 = v110;
  Layer.callAsFunction(_:)(v67, v73, &protocol witness table for BatchNorm);
  v75 = v111;
  v115(v67, v111);
  v76 = v113;
  (v113)(v67, v74, v75);
  v77 = v112 + v114[11];
  Layer.callAsFunction(_:)(v67, v98, &protocol witness table for ReLU);
  v78 = v115;
  v115(v67, v75);
  v76(v67, v110, v75);
  v79 = v112;
  v80 = v112 + v114[12];
  Layer.callAsFunction(_:)(v67, v99, &protocol witness table for Dropout);
  v81 = v111;
  v78(v67, v111);
  v82 = v110;
  v83 = v81;
  v84 = v113;
  (v113)(v67, v110, v83);
  v85 = v79 + v114[13];
  Layer.callAsFunction(_:)(v67, v105, &protocol witness table for Conv2D);
  v86 = v111;
  v115(v67, v111);
  v84(v67, v82, v86);
  v94 = *(v112 + v114[14]);
  Layer.callAsFunction(_:)(v67, &type metadata for Softmax, &protocol witness table for Softmax);
  v87 = v67;
  v88 = v115;
  v115(v87, v86);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v89 = v96;
  outlined init with take of DataFrame?(v106, v96, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v90 = v89 + *(v104 + 48);
  v91 = type metadata accessor for LSTM.State(0);
  (*(*(v91 - 8) + 32))(v95, v89, v91);
  return v88(v90, v86);
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLActivityClassifier.LSTMBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor)) + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  return a4(v6, v6 + *(v8 + 48), a1, v7);
}

uint64_t MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(uint64_t a1, double a2)
{
  v156 = v2;
  v150 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v3 = *(*(v150 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v149 = v129;
  v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (LSTM.State, Tensor));
  v6 = *(*(v140 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v131 = v129;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v141 = v129;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v144 = v129;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ScalarType?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v142 = v129;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v152 = v129;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v162 = v129;
  v160 = type metadata accessor for Tensor(0);
  v159 = *(v160 - 8);
  v21 = *(v159 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v153 = v129;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v148 = v129;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v155 = v129;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v158 = v129;
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LSTM.State?) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v132 = v129;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v154 = v129;
  v157 = type metadata accessor for TensorShape(0);
  v145 = *(v157 - 8);
  v35 = *(v145 + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v163 = v129;
  v38 = alloca(v35);
  v39 = alloca(v35);
  v139 = v129;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor)?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v43 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v46 = alloca(v43);
  v47 = alloca(v43);
  v147 = v129;
  v143 = a1;
  a1;
  v161 = a1;
  specialized Sequence.first(where:)(a1);
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  if (__swift_getEnumTagSinglePayload(v129, 1, v48) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v129, &demangling cache variable for type metadata for (key: String, value: Tensor)?);
    v49 = 1;
    v50 = v147;
  }

  else
  {
    v130;
    v51 = &v129[*(v48 + 48)];
    v50 = v147;
    Tensor.shape.getter();
    (*(v159 + 8))(v51, v160);
    v49 = 0;
  }

  v52 = v157;
  __swift_storeEnumTagSinglePayload(v50, v49, 1, v157);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v50, v129, &demangling cache variable for type metadata for TensorShape?);
  if (__swift_getEnumTagSinglePayload(v129, 1, v52) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v129, &demangling cache variable for type metadata for TensorShape?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0x7369207475706E49, 0xEE007974706D6520, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 294, 0);
    goto LABEL_23;
  }

  v53 = v139;
  (*(v145 + 32))(v139, v129, v52);
  v54 = TensorShape.dimensions.getter();
  v55 = *(v54 + 16);
  v54;
  if (v55 != 1)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, "ActivityClassifer" + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 297, 0);
    goto LABEL_23;
  }

  v56 = alloca(24);
  v57 = alloca(32);
  v131 = v53;
  v58 = v161;
  v161;
  v59 = specialized Sequence.allSatisfy(_:)(v58, partial apply for closure #2 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:), v129);
  v151 = 0;
  v58;
  if ((v59 & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, "Inputs should be vectors" + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 302, 0);
    goto LABEL_23;
  }

  v60 = type metadata accessor for LSTM.State(0);
  __swift_storeEnumTagSinglePayload(v154, 1, 1, v60);
  v61 = v162;
  specialized Dictionary.subscript.getter(0x6E496574617473, 0xE700000000000000, v58);
  v62 = v160;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v160);
  v146 = v60;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for Tensor?);
    goto LABEL_15;
  }

  (*(v159 + 32))(v158, v61, v62);
  v64 = *&v156[*(type metadata accessor for MLActivityClassifier.Model(0) + 32)];
  Tensor.shape.getter();
  v65 = TensorShape.dimensions.getter();
  v66 = *(v65 + 16);
  v65;
  v67 = *(v145 + 8);
  v67(v163, v157);
  if (v66 != 1)
  {
    goto LABEL_22;
  }

  Tensor.shape.getter();
  v68 = TensorShape.subscript.getter(0);
  v69 = v163;
  v70 = v68;
  v67(v163, v157);
  if (v64 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  if (v70 != 2 * v64)
  {
LABEL_22:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, " all have the same size" + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 311, 0);
LABEL_23:
    BUG();
  }

  v162 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Range<Int>>);
  v71 = swift_allocObject(v162, 48, 7);
  v72 = v64;
  v71[2] = 1;
  v71[3] = 2;
  if (v64 < 0)
  {
    BUG();
  }

  v73 = v71;
  v71[4] = 0;
  v161 = v67;
  v134 = v72;
  v71[5] = v72;
  v133 = v70;
  v138 = v71;
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Range<Int>]);
  v75 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Range<Int>] and conformance [A], &demangling cache variable for type metadata for [Range<Int>], &protocol conformance descriptor for [A]);
  v76 = v148;
  v135 = v74;
  v136 = v75;
  Tensor.slice<A>(at:)(&v138, v74);
  v77 = v73;
  v78 = v134;
  v77;
  v137 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v79 = swift_allocObject(v137, 48, 7);
  v79[2] = 2;
  v79[3] = 4;
  v79[4] = 1;
  v79[5] = v78;
  TensorShape.init(_:)(v79, a2);
  Tensor.reshaped(to:)(v69);
  v80 = v157;
  (v161)(v69, v157);
  v81 = *(v159 + 8);
  (v81)(v76, v160);
  v82 = swift_allocObject(v162, 48, 7);
  v83 = v133;
  v82[2] = 1;
  v82[3] = 2;
  if (v83 < v78)
  {
    BUG();
  }

  v82[4] = v78;
  v82[5] = v83;
  v138 = v82;
  v84 = v153;
  v162 = v81;
  Tensor.slice<A>(at:)(&v138, v135);
  v82;
  v85 = swift_allocObject(v137, 48, 7);
  v85[2] = 2;
  v85[3] = 4;
  v85[4] = 1;
  v85[5] = v78;
  v86 = v163;
  TensorShape.init(_:)(v85, a2);
  v87 = v148;
  Tensor.reshaped(to:)(v86);
  (v161)(v86, v80);
  v88 = v160;
  (v162)(v84, v160);
  v89 = v132;
  LSTM.State.init(hidden:cell:)(v155, v87);
  v90 = v154;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for LSTM.State?);
  __swift_storeEnumTagSinglePayload(v89, 0, 1, v146);
  outlined init with take of DataFrame?(v89, v90, &demangling cache variable for type metadata for LSTM.State?);
  v91 = v152;
  specialized Dictionary._Variant.removeValue(forKey:)(0x6E496574617473, 0xE700000000000000);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v91, &demangling cache variable for type metadata for Tensor?);
  (v162)(v158, v88);
LABEL_15:
  v163 = type metadata accessor for MLActivityClassifier.Model(0);
  v92 = *&v156[*(v163 + 16) + 40];
  v93 = alloca(32);
  v94 = alloca(32);
  v131 = &v143;
  v132 = v156;
  v92;
  v95 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_14NeuralNetworks6TensorVs5NeverOTg5(partial apply for closure #3 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:), v129, v92);
  v92;
  v158 = type metadata accessor for ScalarType(0);
  v96 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v158);
  v97 = v155;
  Tensor.init(concatenating:alongAxis:scalarType:)(v95, 0, v96);
  v98 = v149;
  v99 = &v149[*(v150 + 48)];
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, v149, &demangling cache variable for type metadata for LSTM.State?);
  v100 = v159;
  (*(v159 + 16))(v99, v97, v160);
  v101 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  Layer.callAsFunction(_:)(v98, v163, v101);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v98, &demangling cache variable for type metadata for (LSTM.State?, Tensor));
  v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v103 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v104 = *(v103 - 8);
  v105 = v103;
  v149 = v103;
  v161 = *(v104 + 72);
  v106 = *(v104 + 80);
  v107 = (v106 + 32) & ~*(v104 + 80);
  v108 = swift_allocObject(v102, v107 + 2 * v161, v106 | 7);
  v156 = v108;
  *(v108 + 16) = 2;
  *(v108 + 24) = 4;
  v162 = (v108 + v107);
  v150 = v108 + v107 + *(v105 + 48);
  *(v108 + v107) = 0x74754F6574617473;
  *(v108 + v107 + 8) = 0xE800000000000000;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>);
  v153 = *(v100 + 72);
  v110 = swift_allocObject(v109, ((*(v100 + 80) + 32) & ~*(v100 + 80)) + 2 * v153, *(v100 + 80) | 7);
  v151 = v110;
  *(v110 + 16) = 2;
  *(v110 + 24) = 4;
  v111 = v144;
  v112 = v141;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, v141, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v113 = v140;
  v152 = (v112 + *(v140 + 48));
  LSTM.State.hidden.getter();
  v114 = v146;
  v163 = *(*(v146 - 8) + 8);
  (v163)(v112, v146);
  v115 = v131;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v111, v131, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v116 = v115 + *(v113 + 48);
  LSTM.State.cell.getter();
  (v163)(v115, v114);
  v117 = *(v159 + 8);
  v118 = v116;
  v119 = v160;
  v117(v118, v160);
  v117(v152, v119);
  v120 = v142;
  __swift_storeEnumTagSinglePayload(v142, 1, 1, v158);
  v121 = v148;
  Tensor.init(concatenating:alongAxis:scalarType:)(v151, 1, v120);
  Tensor.flattened()();
  v117(v121, v119);
  v122 = v161;
  v123 = v162;
  v124 = &v162[v161 + *(v149 + 12)];
  *&v162[v161] = 0xD000000000000013;
  *&v123[v122 + 8] = " inverted index." + 0x8000000000000000;
  v125 = v144;
  v126 = v141;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v144, v141, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  (*(v159 + 32))(v124, v126 + *(v140 + 48), v119);
  (v163)(v126, v146);
  v127 = Dictionary.init(dictionaryLiteral:)(v156, &type metadata for String, v119, &protocol witness table for String);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v125, &demangling cache variable for type metadata for (LSTM.State, Tensor));
  v117(v155, v119);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v154, &demangling cache variable for type metadata for LSTM.State?);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v147, &demangling cache variable for type metadata for TensorShape?);
  (*(v145 + 8))(v139, v157);
  v143;
  return v127;
}

uint64_t closure #2 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[0] = a4;
  v14[1] = a3;
  v5 = type metadata accessor for TensorShape(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  LOBYTE(v4) = 1;
  if (a1 ^ 0x6E496574617473 | a2 ^ 0xE700000000000000)
  {
    v15 = v14;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, 0x6E496574617473, 0xE700000000000000, 0) & 1) == 0)
    {
      Tensor.shape.getter();
      v10 = TensorShape.dimensions.getter();
      v11 = TensorShape.dimensions.getter();
      LOBYTE(v12) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(v10, v11);
      v4 = v12;
      v10;
      v11;
      (*(v6 + 8))(v15, v5);
    }
  }

  return v4;
}

uint64_t closure #3 in MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v20 = a2;
  v21 = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v22 = &v20;
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a3 + *(type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation(0) + 20));
  v11 = *(v10 + 16);
  v9;
  if (v11)
  {
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v9);
    if (v13)
    {
      v14 = *(v10 + 56);
      v15 = 16 * v12;
      v8 = *(v14 + v15);
      v16 = *(v14 + v15 + 8);
      v16;
      v9;
      v9 = v16;
    }
  }

  v17 = v22;
  specialized Dictionary.subscript.getter(v8, v9, *v20);
  v9;
  v18 = type metadata accessor for Tensor(0);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    BUG();
  }

  return (*(*(v18 - 8) + 32))(v21, v17, v18);
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLActivityClassifier.Model.MLPackageRepresentation(uint64_t *a1, double a2)
{
  v3 = v2;
  result = MLActivityClassifier.Model.MLPackageRepresentation.forward(_:)(*a1, a2);
  *v3 = result;
  return result;
}

uint64_t MLActivityClassifier.Model.makeClassifier(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v88 = a3;
  v114 = a2;
  v102 = type metadata accessor for URL(0);
  v101 = *(v102 - 8);
  v7 = *(v101 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v89 = &v86;
  v92 = type metadata accessor for ModelKind(0);
  v91 = *(v92 - 8);
  v10 = *(v91 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v93 = &v86;
  v95 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v94 = *(v95 - 8);
  v13 = *(v94 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v97 = &v86;
  v104 = type metadata accessor for FeatureType(0);
  v100 = *(v104 - 8);
  v16 = *(v100 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v96 = &v86;
  v118 = type metadata accessor for FeatureDescription(0);
  v116 = *(v118 - 8);
  v19 = *(v116 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v106 = &v86;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v105 = &v86;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v108 = &v86;
  v26 = alloca(v19);
  v27 = alloca(v19);
  v112 = &v86;
  v28 = alloca(v19);
  v29 = alloca(v19);
  v113 = &v86;
  v30._rawValue = *(v5 + *(type metadata accessor for MLActivityClassifier.Model(0) + 60));
  v103 = " inverted index." + 0x8000000000000000;
  v122._countAndFlagsBits = 0x6C6562616CLL;
  v90 = a1;
  v122._object = 0xE500000000000000;
  MLProgram.addClassifierSpecification(classLabels:probabilityTensorName:outputProbabilityName:outputLabelName:)(v30, __PAIR128__((" inverted index." + 0x8000000000000000), 0xD000000000000013), __PAIR128__(("labelProbabilityRaw" + 0x8000000000000000), 0xD000000000000010), v122);
  Model.modelDescription.setter(0xD000000000000011, "labelProbability" + 0x8000000000000000);
  Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
  v99 = 0xD000000000000010;
  v98 = "labelProbabilityRaw" + 0x8000000000000000;
  Model.predictedProbabilitiesName.setter(0xD000000000000010, "labelProbabilityRaw" + 0x8000000000000000);
  v31 = 0;
  v32 = Model.outputs.modify(v87);
  v34 = v33;
  v35 = *v33;
  v36 = *(*v33 + 16);
  v37 = 0;
  v111 = v36;
  if (!v36)
  {
    goto LABEL_11;
  }

  v117 = v34;
  v109 = v32;
  v38 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v39 = v38 + v35;
  v40 = *(v116 + 16);
  v41 = *(v116 + 72);
  v107 = v38;
  v110 = v41;
  v119 = (v41 + v38);
  v120 = 0;
  v42 = v118;
  v115 = v40;
  v43 = v113;
  while (1)
  {
    v40(v43, v39, v42);
    v44 = FeatureDescription.name.getter();
    v46 = v45;
    if (!(v44 ^ 0xD000000000000013 | v103 ^ v45))
    {
      break;
    }

    LOBYTE(v121) = _stringCompareWithSmolCheck(_:_:expecting:)(v44, v45, 0xD000000000000013, v103, 0);
    v46;
    v47 = *(v116 + 8);
    v47(v43, v42);
    if (v121)
    {
      goto LABEL_8;
    }

    v119 += v110;
    v39 += v110;
    ++v120;
    v40 = v115;
    if (v111 == v120)
    {
      v31 = *(*v117 + 16);
      v37 = v31;
      v32 = v109;
      goto LABEL_11;
    }
  }

  v45;
  v47 = *(v116 + 8);
  v47(v43, v42);
LABEL_8:
  v113 = v47;
  v37 = v120 + 1;
  v48 = v108;
  if (__OFADD__(1, v120))
  {
    BUG();
  }

  v49 = *v117;
  v50 = *(*v117 + 16);
  if (v37 != v50)
  {
    v68 = v119;
    do
    {
      if (v37 >= v50)
      {
        BUG();
      }

      v121 = v37;
      v119 = v68;
      v115(v48, &v68[v49], v42);
      v69 = v42;
      v70 = FeatureDescription.name.getter();
      v72 = v48;
      v73 = v71;
      if (v70 ^ 0xD000000000000013 | v103 ^ v71)
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)(v70, v71, 0xD000000000000013, v103, 0);
        v73;
        (v113)(v72, v69);
        v75 = (v74 & 1) == 0;
        v42 = v69;
        v48 = v72;
        if (v75)
        {
          v78 = v120;
          v77 = v121;
          v76 = v117;
          if (v121 != v120)
          {
            if (v120 < 0)
            {
              BUG();
            }

            v79 = *v117;
            if (v120 >= *(*v117 + 16))
            {
              BUG();
            }

            v111 = *(*v117 + 16);
            v80 = v110 * v120;
            v81 = v115;
            v115(v105, v110 * v120 + v107 + v79, v118);
            if (v121 >= v111)
            {
              BUG();
            }

            v81(v106, &v119[v79], v118);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v79);
            *v76 = v79;
            v42 = v118;
            if (isUniquelyReferenced_nonNull_native)
            {
              v83 = v79;
            }

            else
            {
              v83 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
              *v76 = v83;
            }

            v84 = *(v116 + 40);
            v84(&v83[v107 + v80], v106, v42);
            if (v121 >= *(*v76 + 16))
            {
              BUG();
            }

            v84(&v119[*v76], v105, v42);
            v77 = v121;
            v78 = v120;
            v48 = v108;
          }

          v120 = v78 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        v71;
        (v113)(v48, v69);
        v42 = v69;
      }

      v76 = v117;
      v77 = v121;
LABEL_29:
      v85 = __OFADD__(1, v77);
      v37 = v77 + 1;
      if (v85)
      {
        BUG();
      }

      v49 = *v76;
      v50 = *(*v76 + 16);
      v68 = &v119[v110];
    }

    while (v37 != v50);
  }

  v31 = v120;
  v32 = v109;
  if (v37 < v120)
  {
    BUG();
  }

LABEL_11:
  specialized Array.replaceSubrange<A>(_:with:)(v31, v37);
  v32(v87, 0);
  v51 = v96;
  FeatureType.StringParameters.init(optional:)(0);
  v119 = *(v100 + 104);
  (v119)(v51, enum case for FeatureType.string(_:), v104);
  FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, v51, 0, 0xE000000000000000);
  v115 = Model.outputs.modify(v87);
  v53 = v52;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v54 = *(*v53 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v54);
  v55 = *v53;
  *(v55 + 16) = v54 + 1;
  v56 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v120 = *(v116 + 32);
  v121 = *(v116 + 72);
  (v120)(v56 + v55 + v121 * v54, v112, v118);
  (v115)(v87, 0);
  v57 = v97;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v94 + 104))(v57, enum case for FeatureType.DictionaryParameters.KeyType.string(_:), v95);
  FeatureType.DictionaryParameters.init(keyType:optional:)(v57, 0);
  (v119)(v51, enum case for FeatureType.dictionary(_:), v104);
  FeatureDescription.init(name:type:description:)(v99, v98, v51, 0, 0xE000000000000000);
  v58 = Model.outputs.modify(v87);
  v60 = v59;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v61 = *(*v60 + 16);
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v61);
  v62 = *v60;
  *(v62 + 16) = v61 + 1;
  (v120)(v56 + v62 + v121 * v61, v112, v118);
  v58(v87, 0);
  v63 = type metadata accessor for MLProgram(0);
  v64 = v93;
  (*(*(v63 - 8) + 16))(v93, v90, v63);
  (*(v91 + 104))(v64, enum case for ModelKind.mlProgram(_:), v92);
  v65 = v114;
  Model.kind.setter(v64);
  v66 = v89;
  result = Package.setRootModel(_:)(v65);
  if (!v3)
  {
    return (*(v101 + 8))(v66, v102);
  }

  return result;
}

void *MLActivityClassifier.Model.addMetadata(model:_:)(uint64_t a1, _OWORD *a2)
{
  v52 = a1;
  qmemcpy(v38, a2, sizeof(v38));
  v2 = v38[1];
  if (v38[1])
  {
    v3 = v38[0];
    v4 = v38[8];
    v5 = a2[2];
    v6 = a2[3];
    v49 = a2[1];
    v50 = v5;
    v51 = v6;
  }

  else
  {
    v7 = NSFullUserName();
    v8 = v7;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v8);
    v2 = v9;

    v32 = v3;
    v33 = v2;
    *&v34 = 0xD000000000000033;
    *(&v34 + 1) = "RandomForestRegressor" + 0x8000000000000000;
    v35 = 0;
    *&v36 = 49;
    *(&v36 + 1) = 0xE100000000000000;
    v37 = 0;
    v50 = 0;
    v49 = v34;
    v51 = v36;
    v39 = v3;
    v40 = v2;
    *&v41 = 0xD000000000000033;
    *(&v41 + 1) = "RandomForestRegressor" + 0x8000000000000000;
    v42 = 0;
    *&v43 = 49;
    *(&v43 + 1) = 0xE100000000000000;
    v44 = 0;
    outlined retain of MLModelMetadata(&v32);
    outlined release of MLModelMetadata(&v39, 0xE100000000000000);
    v4 = 0;
  }

  v10 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  outlined release of MLModelMetadata?(v38, outlined copy of MLModelMetadata?);
  if (!v10)
  {
    v11 = NSFullUserName();
    v12 = v11;
    v13 = v2;
    v55 = v4;
    v14 = v12;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v12);
    v2 = v15;
    v13;
    v16 = v14;
    v4 = v55;
  }

  v55 = v3;
  v53 = v2;
  if (!v4)
  {
    v4 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  }

  v17 = getOSVersion()();
  countAndFlagsBits = v17._countAndFlagsBits;
  object = v17._object;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v4);
  v39 = v4;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  v20 = v39;
  v39 = v55;
  v40 = v53;
  v41 = v49;
  v42 = v50;
  v43 = v51;
  countAndFlagsBits = v20;
  v44 = v20;
  v21 = *(&v49 + 1);
  v48 = v49;
  v22 = BYTE8(v50);
  v47 = v51;
  v23 = v50;
  if (!*(&v50 + 1))
  {
    v23 = 0;
  }

  v45 = v23;
  v24 = *(&v43 + 1);
  v25 = 0xE000000000000000;
  if (*(&v50 + 1))
  {
    v25 = *(&v50 + 1);
  }

  v46 = v25;
  BYTE8(v49);
  outlined retain of MLModelMetadata(&v39);
  Model.modelDescription.setter(v48, v21);
  v24;
  v26 = v24;
  v27 = v53;
  Model.versionString.setter(v47, v26);
  v27;
  Model.author.setter(v55, v27);
  v28 = v44;
  v22;
  v29 = v46;
  Model.license.setter(v45, v46);
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v29 = &type metadata for String;
    v30 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
    LOBYTE(v28) = 0;
  }

  v28;
  Model.metadata.setter(v30);
  outlined release of MLModelMetadata(&v39, v29);
  v32 = v55;
  v33 = v27;
  v34 = v49;
  v35 = v50;
  v36 = v51;
  v37 = countAndFlagsBits;
  return outlined release of MLModelMetadata(&v32, v29);
}

void *MLActivityClassifier.Model.renameInputsAsNeeded(inputs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    a1;
    v2 = (a1 + 40);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      *v2;
      if (specialized Sequence.contains(where:)(0, v3, v4))
      {
        v12 = _swiftEmptyDictionarySingleton[2] + 1;
        v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v13 = v1;
        object = v5._object;
        String.append(_:)(v5);
        object;
        v7._countAndFlagsBits = 95;
        v7._object = 0xE100000000000000;
        String.append(_:)(v7);
        v8 = String.asSanitizedMILIdentifier()();
        v9 = v8._object;
        String.append(_:)(v8);
        v9;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
        v1 = v13;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0x656D616E65725F5FLL, 0xEA00000000005F64, v3, v4, isUniquelyReferenced_nonNull_native);
      }

      v4;
      v2 += 2;
      --v1;
    }

    while (v1);
    a1;
  }

  return _swiftEmptyDictionarySingleton;
}

Swift::String __swiftcall String.asSanitizedMILIdentifier()()
{
  v2 = String.count.getter();
  if (v2 <= 0)
  {
    v2 = 0;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, _swiftEmptyArrayStorage);
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v0 & 0xFFFFFFFFFFFFLL;
  }

  v5 = v3;
  v19 = v0;
  v20 = v1;
  v21 = 0;
  v22 = v4;
  v1;
  while (1)
  {
    v6 = String.Iterator.next()();
    if (!v6.value._object)
    {
      break;
    }

    countAndFlagsBits = v6.value._countAndFlagsBits;
    object = v6.value._object;
    if (v6.value._countAndFlagsBits ^ 0xA0D | v6.value._object ^ 0xE200000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(v6.value._countAndFlagsBits, v6.value._object, 2573, 0xE200000000000000, 0) & 1) == 0)
    {
      if ((Character._isSingleScalar.getter(countAndFlagsBits, object) & 1) == 0)
      {
        goto LABEL_20;
      }

      v9 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v9 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v9 & 0xFFFFFF80) != 0)
      {
        goto LABEL_20;
      }

      v10 = specialized Collection.first.getter(countAndFlagsBits, object);
      if ((v10 & 0x100000000) != 0)
      {
        BUG();
      }

      if ((v10 & 0xFFFFFF00) != 0)
      {
        BUG();
      }
    }

    if (Character.isLetter.getter(countAndFlagsBits, object) & 1) != 0 || (Character.isNumber.getter(countAndFlagsBits, object))
    {
      v11 = v5[2];
      if (v11)
      {
        goto LABEL_19;
      }

      if (Character.isLetter.getter(countAndFlagsBits, object))
      {
        v11 = v5[2];
LABEL_19:
        v12 = v5[3];
        v13 = v12 >> 1;
        v14 = v11 + 1;
        goto LABEL_21;
      }
    }

LABEL_20:
    object;
    v11 = v5[2];
    v12 = v5[3];
    v13 = v12 >> 1;
    v14 = v11 + 1;
    countAndFlagsBits = 95;
    object = 0xE100000000000000;
LABEL_21:
    if (v13 <= v11)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 >= 2, v14, 1, v5);
    }

    v5[2] = v14;
    v15 = 2 * v11;
    v5[v15 + 4] = countAndFlagsBits;
    v5[v15 + 5] = object;
  }

  v20;
  v19 = v5;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Character]);
  v17 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Character] and conformance [A], &demangling cache variable for type metadata for [Character], &protocol conformance descriptor for [A]);
  result._countAndFlagsBits = String.init<A>(_:)(&v19, v16, v17);
  return result;
}

uint64_t specialized Sequence.makeDictionary(uniquelyIndexedBy:)(uint64_t a1)
{
  v1 = type metadata accessor for FeatureDescription(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v53 = &v42;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v54 = &v42;
  result = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v1, &protocol witness table for String);
  v9 = *(a1 + 16);
  if (v9)
  {
    v52 = result;
    v43 = v9;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v45 = *(v2 + 16);
    v48 = *(v2 + 72);
    v44 = a1;
    a1;
    v11 = v10;
    v12 = v54;
    v46 = v1;
    v47 = v2;
    do
    {
      v42 = v11;
      v45(v12, v11, v1);
      v13 = FeatureDescription.name.getter();
      v15 = v14;
      v16 = v52;
      if (*(v52 + 16))
      {
        v52;
        specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        v18 = v17;
        v16;
        v19 = (v18 & 1) == 0;
        v12 = v54;
        if (!v19)
        {
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, "ActivityClassifierPipeline" + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 556, 0);
          BUG();
        }
      }

      v45(v53, v12, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v16);
      v49 = v16;
      v51 = v13;
      v50 = v15;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v16[2], v23);
      v25 = v16[2] + v23;
      if (v24)
      {
        BUG();
      }

      v26 = v21;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, FeatureDescription>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v27 = v50;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v50);
        LOBYTE(v30) = v30 & 1;
        v12 = v54;
        v31 = v48;
        if ((v26 & 1) != v30)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v27, v30, v28, v29);
          BUG();
        }
      }

      else
      {
        v12 = v54;
        v31 = v48;
      }

      v32 = v51;
      v33 = v49;
      v52 = v49;
      if (v26)
      {
        v34 = v31;
        v35 = v49[7] + v31 * v22;
        v1 = v46;
        v36 = v47;
        (*(v47 + 40))(v35, v53, v46);
        v50;
      }

      else
      {
        v49[(v22 >> 6) + 8] |= 1 << v22;
        v37 = v33[6];
        v38 = 16 * v22;
        *(v37 + v38) = v32;
        *(v37 + v38 + 8) = v50;
        v34 = v31;
        v39 = v33[7] + v31 * v22;
        v1 = v46;
        v36 = v47;
        (*(v47 + 32))(v39, v53, v46);
        v40 = v33[2];
        v24 = __OFADD__(1, v40);
        v41 = v40 + 1;
        if (v24)
        {
          BUG();
        }

        v33[2] = v41;
      }

      (*(v36 + 8))(v12, v1);
      v11 = v34 + v42;
      --v43;
    }

    while (v43);
    v44;
    return v52;
  }

  return result;
}

void *specialized Dictionary<>.inverted()(uint64_t a1)
{
  v1 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
  v2 = -1 << *(a1 + 32);
  v3 = v1;
  v4 = ~(-1 << -v2);
  if (-v2 >= 64)
  {
    v4 = -1;
  }

  v5 = *(a1 + 64) & v4;
  v48 = a1 + 64;
  v47 = (63 - v2) >> 6;
  a1;
  for (i = 0; ; i = v7)
  {
    if (v5)
    {
      v7 = i;
      goto LABEL_24;
    }

    v8 = i + 1;
    if (__OFADD__(1, i))
    {
      BUG();
    }

    if (v8 >= v47)
    {
      goto LABEL_36;
    }

    v5 = *(v48 + 8 * v8);
    if (v5)
    {
      v7 = i + 1;
      goto LABEL_24;
    }

    v7 = i + 2;
    if (i + 2 >= v47)
    {
      goto LABEL_36;
    }

    v5 = *(v48 + 8 * v8 + 8);
    if (!v5)
    {
      v7 = i + 3;
      if (i + 3 >= v47)
      {
        goto LABEL_36;
      }

      v5 = *(v48 + 8 * v8 + 16);
      if (!v5)
      {
        v7 = i + 4;
        if (i + 4 >= v47)
        {
          goto LABEL_36;
        }

        v5 = *(v48 + 8 * v8 + 24);
        if (!v5)
        {
          v7 = i + 5;
          if (i + 5 >= v47)
          {
            goto LABEL_36;
          }

          v5 = *(v48 + 8 * v8 + 32);
          if (!v5)
          {
            v7 = i + 6;
            if (i + 6 >= v47)
            {
              goto LABEL_36;
            }

            v5 = *(v48 + 8 * v8 + 40);
            if (!v5)
            {
              break;
            }
          }
        }
      }
    }

LABEL_24:
    v40 = v5;
    _BitScanForward64(&v10, v5);
    v11 = (v7 << 10) | (16 * v10);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v42 = *(v12 + v11);
    v14 = *(v12 + v11 + 8);
    v46 = *(v13 + v11);
    v15 = *(v13 + v11 + 8);
    v16 = v3[2];
    v14;
    v15;
    if (v16)
    {
      v3;
      specialized __RawDictionaryStorage.find<A>(_:)(v46, v15);
      v18 = v17;
      v3;
      if (v18)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000020, "Duplicate key in index." + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 571, 0);
        BUG();
      }
    }

    v15;
    v44 = v14;
    v14;
    v19 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v3);
    v43 = v3;
    v41 = v15;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v15);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v19[2], v23);
    v25 = v19[2] + v23;
    if (v24)
    {
      BUG();
    }

    v49 = v21;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, String>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
    {
      v26 = v46;
      v27 = v41;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v41);
      LOBYTE(v29) = v29 & 1;
      LOBYTE(v30) = v49;
      if ((v49 & 1) != v29)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v41, v29, v30, v28);
        BUG();
      }
    }

    else
    {
      v27 = v41;
      v26 = v46;
      LOBYTE(v30) = v49;
    }

    v3 = v43;
    if (v30)
    {
      v31 = v43[7];
      v32 = 16 * v22;
      *(v31 + v32 + 8);
      *(v31 + v32) = v42;
      *(v31 + v32 + 8) = v44;
      v44;
      v33 = v27;
    }

    else
    {
      v43[(v22 >> 6) + 8] |= 1 << v22;
      v34 = v43[6];
      v35 = 16 * v22;
      *(v34 + v35) = v26;
      *(v34 + v35 + 8) = v27;
      v36 = v43[7];
      *(v36 + v35) = v42;
      *(v36 + v35 + 8) = v44;
      v37 = v43[2];
      v24 = __OFADD__(1, v37);
      v38 = v37 + 1;
      if (v24)
      {
        BUG();
      }

      v43[2] = v38;
      v33 = v44;
    }

    v5 = (v40 - 1) & v40;
    v33;
    v27;
  }

  v9 = i + 7;
  while (v9 < v47)
  {
    v5 = *(a1 + 8 * v9++ + 64);
    if (v5)
    {
      v7 = v9 - 1;
      goto LABEL_24;
    }
  }

LABEL_36:
  outlined consume of [String : [Double]].Iterator._Variant(a1);
  return v3;
}

uint64_t MLActivityClassifier.Model.makePipeline(_:_:_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v66 = a3;
  v67 = type metadata accessor for URL(0);
  v68 = *(v67 - 8);
  v6 = *(v68 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v63 = &v62;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v62 = &v62;
  v64 = type metadata accessor for ModelKind(0);
  v72 = *(v64 - 8);
  v11 = v72[8];
  v12 = alloca(v11);
  v13 = alloca(v11);
  v65 = &v62;
  v73 = type metadata accessor for Model(0);
  v74 = *(v73 - 8);
  v14 = *(v74 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v76 = &v62;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v19 = alloca(v14);
  v20 = alloca(v14);
  v75 = &v62;
  v69 = a2;
  v71 = Model.inputs.getter();
  v21 = specialized Sequence.makeDictionary(uniquelyIndexedBy:)(v71);
  v21;
  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n(a4, v21);
  v21;
  a4;
  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVyS2S_G_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n(a4, v21);
  v70 = v4;
  v21;
  a4;
  Model.init()();
  Model.specificationVersion.setter(1);
  Model.modelDescription.setter(0xD00000000000001BLL, "ccessfully saved at " + 0x8000000000000000);
  v23 = ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
  Model.inputs.setter(v23);
  Model.outputs.setter(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20ef17ADV5model_SayAI18gH41VG13renamedInputstAN_SDyS2SGtKFAMSSXEfU0_SDySSAKGTf1cn_n);
  v24 = v70;
  ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_20MLModelSpecification13NeuralNetworkV5LayerVs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n(a4);
  v26 = v65;
  NeuralNetwork.init(layers:preprocessors:)(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de70ADV5model_SayAI18FeatureDescriptionVG13renamedInputstAN_SDyS2SGtKFAI13fgoH25VSS3key_SS5valuet_tXEfU1_Tf1cn_n, _swiftEmptyArrayStorage);
  v70 = v72[13];
  v70(v26, enum case for ModelKind.neuralNetwork(_:), v64);
  v72 = &v62;
  Model.kind.setter(v26);
  v27 = specialized Dictionary<>.inverted()(a4);
  if (v24)
  {
    (*(v74 + 8))(v72, v73);
    v71;
    return ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
  }

  else
  {
    v29 = ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
    v30 = v27;
    v31 = specialized Sequence.makeDictionary(uniquelyIndexedBy:)(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n);
    v29;
    v30;
    v31;
    v32 = v71;
    ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay20MLModelSpecification18FeatureDescriptionVG_AHs5NeverOTg5077_s8CreateML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n(v71, v30, v31);
    ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n = 0;
    v32;
    v31;
    v30;
    v34 = v74;
    (*(v74 + 32))(v75, v72, v73);
    Model.init()();
    Model.modelDescription.setter(0xD00000000000001ALL, "__coreml_name_compatibility" + 0x8000000000000000);
    Model.inputs.setter(ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG40VG13renamedInputstAN_SDyS2SGtKFA2MXEfU2_SDyS2SGSDySSAHGTf1cn_n);
    v35 = Model.outputs.getter();
    Model.outputs.setter(v35);
    v36 = Model.predictedFeatureName.getter();
    Model.predictedFeatureName.setter(v36, v37);
    v38 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v38, v39);
    Model.specificationVersion.setter(6);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
    v71 = *(v34 + 72);
    v41 = *(v34 + 80);
    v42 = (v41 + 32) & ~*(v34 + 80);
    v43 = swift_allocObject(v40, v42 + 2 * v71, v41 | 7);
    *(v43 + 16) = 2;
    *(v43 + 24) = 4;
    v44 = v43 + v42;
    v45 = *(v34 + 16);
    v46 = v73;
    v45(v44, v75, v73);
    v45(v71 + v44, v69, v46);
    v47 = v65;
    PipelineClassifierConfiguration.init(models:names:)(v43, _swiftEmptyArrayStorage);
    v70(v47, enum case for ModelKind.pipelineClassifier(_:), v64);
    Model.kind.setter(v47);
    v48 = Model.author.getter();
    Model.author.setter(v48, v49);
    v50 = Model.modelDescription.getter();
    Model.modelDescription.setter(v50, v51);
    v52 = Model.versionString.getter();
    Model.versionString.setter(v52, v53);
    v54 = Model.license.getter();
    Model.license.setter(v54, v55);
    v56 = Model.metadata.getter();
    Model.metadata.setter(v56);
    v57 = v62;
    Package.rootModelURL.getter();
    v58 = ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n;
    Model.write(to:)(v57);
    if (v58)
    {
      (*(v68 + 8))(v57, v67);
      v59 = *(v74 + 8);
      v59(v76, v46);
    }

    else
    {
      v60 = v67;
      ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n = *(v68 + 8);
      (ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n)(v57, v67);
      v61 = v63;
      Package.setRootModel(_:)(v76);
      (ML20MLActivityClassifierV5ModelV012makeRenamingE06inputs9renameMap20de17ADV5model_SayAI18fG56VG13renamedInputstAN_SDyS2SGtKFAMSS3key_SS5valuet_tXEfU_SDySSAIGTf1cn_n)(v61, v60);
      v59 = *(v74 + 8);
      v46 = v73;
      v59(v76, v73);
    }

    return (v59)(v75, v46);
  }
}

uint64_t MLActivityClassifier.Model.writeMLPackage(to:metadata:)(uint64_t a1, const void *a2, double a3, double a4)
{
  v145 = v4;
  v168 = v5;
  v162 = a1;
  v151 = type metadata accessor for ModelKind(0);
  v150 = *(v151 - 8);
  v6 = *(v150 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v152 = &v131;
  v170 = type metadata accessor for MLProgram(0);
  v171 = *(v170 - 8);
  v9 = *(v171 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v176 = &v131;
  v173 = type metadata accessor for Model(0);
  v172 = *(v173 - 8);
  v12 = *(v172 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v180 = &v131;
  v164 = type metadata accessor for URL(0);
  v163 = *(v164 - 8);
  v15 = *(v163 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v153 = &v131;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v149 = &v131;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v148 = &v131;
  v175 = type metadata accessor for Package(0);
  v174 = *(v175 - 8);
  v22 = *(v174 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v177 = &v131;
  v157 = type metadata accessor for MLPackageWritingOptions(0);
  v156 = *(v157 - 8);
  v25 = *(v156 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v146 = &v131;
  v147 = type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation(0);
  v28 = *(*(v147 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v167 = &v131;
  v165 = type metadata accessor for Tensor(0);
  v159 = *(v165 - 8);
  v31 = *(v159 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v160 = &v131;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v139 = &v131;
  v161 = type metadata accessor for ScalarType(0);
  v182 = *(v161 - 8);
  v36 = *(v182 + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v154 = &v131;
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v155 = &v131;
  v42 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v43 = alloca(v42);
  v44 = alloca(v42);
  v166 = &v131;
  qmemcpy(v132, a2, sizeof(v132));
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v47 = *(v46 - 8);
  v48 = *(v47 + 80);
  v49 = (v48 + 32) & ~*(v47 + 80);
  v50 = swift_allocObject(v45, v49 + *(v47 + 72), v48 | 7);
  *(v50 + 16) = 1;
  *(v50 + 24) = 2;
  v181 = *(v46 + 48);
  *(v50 + v49) = 0x6E496574617473;
  *(v50 + v49 + 8) = 0xE700000000000000;
  v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v51 = swift_allocObject(v140, 40, 7);
  v51[2] = 1;
  v51[3] = 2;
  v52 = type metadata accessor for MLActivityClassifier.Model(0);
  v53 = *(v168 + *(v52 + 32));
  if (v53 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v51[4] = 2 * v53;
  v181 = v52;
  TensorShape.init(_:)(v51, a3, a4);
  v54 = type metadata accessor for ComputeDevice(0);
  v55 = v155;
  v141 = v54;
  __swift_storeEnumTagSinglePayload(v155, 1, 1, v54);
  v56 = *(v182 + 104);
  v57 = v154;
  v158 = enum case for ScalarType.float32(_:);
  v142 = v56;
  v56(v154, enum case for ScalarType.float32(_:), v161);
  Tensor.init(zeros:scalarType:on:)(v166, v57, v55);
  v178 = Dictionary.init(dictionaryLiteral:)(v50, &type metadata for String, v165, &protocol witness table for String);
  v58 = *(v181 + 64);
  v59 = v168;
  v60 = *(v168 + v58 + 40);
  v60;
  v61 = MLActivityClassifier.Model.renameInputsAsNeeded(inputs:)(v60);
  v60;
  v62 = *(v60 + 16);
  v179 = v61;
  v169 = v60;
  if (v62)
  {
    v144 = v62;
    v143 = *(v59 + v58 + 32);
    v60;
    v63 = (v60 + 40);
    do
    {
      v64 = *(v63 - 1);
      v137 = v63;
      v65 = *v63;
      v66 = v61[2];
      *v63;
      v181 = v64;
      if (v66)
      {
        v65;
        v67 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v65);
        v68 = v65;
        v70 = v166;
        if (v69)
        {
          v71 = v61[7];
          v72 = 16 * v67;
          v181 = *(v71 + v72);
          v68 = *(v71 + v72 + 8);
          v68;
          v65;
        }

        v65;
        v182 = v68;
        v73 = v161;
      }

      else
      {
        v73 = v161;
        v70 = v166;
        v182 = v65;
      }

      v74 = swift_allocObject(v140, 40, 7);
      v74[2] = 1;
      v74[3] = 2;
      v74[4] = v143;
      TensorShape.init(_:)(v74, a3, a4);
      v75 = v70;
      v76 = v155;
      __swift_storeEnumTagSinglePayload(v155, 1, 1, v141);
      v77 = v154;
      v142(v154, v158, v73);
      v78 = v139;
      Tensor.init(zeros:scalarType:on:)(v75, v77, v76);
      v138 = *(v159 + 32);
      v138(v160, v78, v165);
      v79 = v178;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v178);
      *v134 = v79;
      v82 = specialized __RawDictionaryStorage.find<A>(_:)(v181, v182);
      v83 = (v81 & 1) == 0;
      v84 = __OFADD__(*(v79 + 16), v83);
      v85 = *(v79 + 16) + v83;
      if (v84)
      {
        BUG();
      }

      LOBYTE(v178) = v81;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Tensor>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v85))
      {
        v86 = v181;
        v87 = v182;
        v82 = specialized __RawDictionaryStorage.find<A>(_:)(v181, v182);
        LOBYTE(v89) = v89 & 1;
        LOBYTE(v90) = v178;
        if ((v178 & 1) != v89)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v87, v89, v90, v88);
          BUG();
        }
      }

      else
      {
        v86 = v181;
        LOBYTE(v90) = v178;
      }

      v91 = *v134;
      v178 = *v134;
      if (v90)
      {
        (*(v159 + 40))(*(*v134 + 56) + v82 * *(v159 + 72), v160, v165);
        v182;
        v92 = v170;
      }

      else
      {
        *(*v134 + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v93 = v91[6];
        v94 = 16 * v82;
        *(v93 + v94) = v86;
        *(v93 + v94 + 8) = v182;
        v138((v91[7] + v82 * *(v159 + 72)), v160, v165);
        v95 = v91[2];
        v84 = __OFADD__(1, v95);
        v96 = v95 + 1;
        v92 = v170;
        if (v84)
        {
          BUG();
        }

        v91[2] = v96;
      }

      v63 = v137 + 2;
      v97 = v144-- == 1;
      v61 = v179;
      v98 = v167;
    }

    while (!v97);
    v169;
  }

  else
  {
    v92 = v170;
    v98 = v167;
  }

  outlined init with copy of MLActivityClassifier.Model(v168, v98);
  v99 = v147;
  v100 = v179;
  *(v98 + *(v147 + 20)) = v179;
  v100;
  v101 = v146;
  static MLPackageWritingOptions.default.getter();
  v102 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model.MLPackageRepresentation and conformance MLActivityClassifier.Model.MLPackageRepresentation, type metadata accessor for MLActivityClassifier.Model.MLPackageRepresentation, &protocol conformance descriptor for MLActivityClassifier.Model.MLPackageRepresentation);
  v103 = v145;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v178, 0, v162, v101, v99, v102);
  if (v103)
  {
    v179;
    (*(v156 + 8))(v101, v157);
    outlined destroy of MLActivityClassifier.Model.MLPackageRepresentation(v167);
    return v178;
  }

  (*(v156 + 8))(v101, v157);
  outlined destroy of MLActivityClassifier.Model.MLPackageRepresentation(v167);
  v105 = v148;
  (*(v163 + 16))(v148, v162, v164);
  Package.init(url:)(v105);
  v106 = v149;
  Package.rootModelURL.getter();
  Model.init(contentsOf:)(v106);
  v182 = 0;
  v107 = v152;
  Model.kind.getter();
  v108 = v151;
  v109 = v150;
  if ((*(v150 + 88))(v107, v151) != enum case for ModelKind.mlProgram(_:))
  {
    (*(v109 + 8))(v107, v108);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "ityClassifier.Model.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 477, 0);
    BUG();
  }

  (*(v109 + 96))(v107, v108);
  v110 = v176;
  v111 = v171;
  (*(v171 + 32))(v176, v107, v92);
  v178;
  v112 = v182;
  MLActivityClassifier.Model.makeClassifier(_:_:_:)(v110, v180, v177);
  if (v112)
  {
    v179;
    (*(v111 + 8))(v176, v92);
    (*(v172 + 8))(v180, v173);
    return (*(v174 + 8))(v177, v175);
  }

  qmemcpy(v134, v132, sizeof(v134));
  outlined retain of MLModelMetadata(v132);
  MLActivityClassifier.Model.addMetadata(model:_:)(v180, v134);
  qmemcpy(v133, v134, sizeof(v133));
  outlined release of MLModelMetadata?(v133, outlined consume of MLModelMetadata?);
  v113 = v153;
  Package.rootModelURL.getter();
  Model.write(to:)(v113);
  v182 = 0;
  (*(v163 + 8))(v113, v164);
  v114 = v169;
  v115 = *(v169 + 16);
  if (v115)
  {
    v169;
    v116 = (v114 + 40);
    v117 = v179;
    while (1)
    {
      v181 = *(v116 - 1);
      v118 = *v116;
      *v116;
      v119 = v182;
      LOBYTE(v181) = specialized Sequence.contains(where:)(0, v181, v118);
      v182 = v119;
      v118;
      if (v181)
      {
        break;
      }

      v116 += 2;
      if (!--v115)
      {
        v117;
        v120 = v169;
        goto LABEL_39;
      }
    }

    v121 = v169;
    v169;
    v122 = v180;
    v123 = v177;
    v124 = v182;
    MLActivityClassifier.Model.makePipeline(_:_:_:_:)(v121, v180, v177, v117);
    if (v124)
    {
      v117;
      (*(v171 + 8))(v176, v170);
      (*(v172 + 8))(v122, v173);
      return (*(v174 + 8))(v123, v175);
    }

    v182 = 0;
    v120 = v117;
  }

  else
  {
    v120 = v179;
  }

LABEL_39:
  v120;
  v135 = 0;
  v136 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v136;
  v135 = 0xD000000000000024;
  v136 = "del to be an MLProgram" + 0x8000000000000000;
  v125 = URL.path(percentEncoded:)(1);
  object = v125._object;
  String.append(_:)(v125);
  object;
  v127._countAndFlagsBits = 46;
  v127._object = 0xE100000000000000;
  String.append(_:)(v127);
  v128 = v135;
  v129 = v136;
  v130 = static os_log_type_t.info.getter();
  v127._countAndFlagsBits = v128;
  v127._object = v129;
  log(_:type:)(v127, v130);
  v129;
  (*(v171 + 8))(v176, v170);
  (*(v172 + 8))(v180, v173);
  return (*(v174 + 8))(v177, v175);
}