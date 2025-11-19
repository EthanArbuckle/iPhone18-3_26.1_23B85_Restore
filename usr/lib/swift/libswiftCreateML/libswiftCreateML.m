uint64_t initializeBufferWithCopyOfBuffer for CGRect(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  v3 = v2 + 16;
  v2;
  return v3;
}

_OWORD *__swift_memcpy32_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  a1[1] = a2[1];
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CGRect(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 32))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for CGRect(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v3 = 0;
    goto LABEL_6;
  }

  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 32) = v3;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.Classifier(uint64_t *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v4 = *(*(v3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v2 = *a2;
    v2 = (v8 + ((v4 + 16) & ~v4));
    v8;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload(a2, v3) == 1)
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
      (*(*(v5 - 8) + 16))(a1, a2, v5);
      v6 = 1;
      v7 = v3;
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v7 = v3;
      v6 = 0;
    }

    swift_storeEnumTagMultiPayload(a1, v7, v6);
  }

  return v2;
}

uint64_t destroy for MLImageClassifier.Classifier(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a1, v2);
  v4 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v4 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledName(v4);
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t initializeWithCopy for MLImageClassifier.Classifier(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.Classifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t initializeWithTake for MLImageClassifier.Classifier(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
  v5 = EnumCaseMultiPayload == 1;
  v6 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 32))(a1, a2, v7);
  swift_storeEnumTagMultiPayload(a1, v3, v5);
  return a1;
}

uint64_t assignWithTake for MLImageClassifier.Classifier(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, v3);
    v5 = EnumCaseMultiPayload == 1;
    v6 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v6 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
    }

    v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload(a1, v3, v5);
  }

  return a1;
}

uint64_t type metadata accessor for MLImageClassifier.Classifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.Classifier;
  if (!type metadata singleton initialization cache for MLImageClassifier.Classifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.Classifier);
  }

  return result;
}

uint64_t type metadata completion function for MLImageClassifier.Classifier(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 1, &v4, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>;
  if (!lazy cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
    result = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v5)
    {
      lazy cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>> = result;
    }
  }

  return result;
}

uint64_t MLImageClassifier.Classifier.init(labels:parameters:)(uint64_t a1, void *a2)
{
  v37 = a1;
  v36 = v2;
  v31 = type metadata accessor for FullyConnectedNetworkConfiguration(0);
  v39 = *(v31 - 8);
  v3 = *(v39 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = v29;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>.Configuration);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v35 = v29;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v34 = v29;
  v14 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  MLImageClassifier.ModelParameters.algorithm.getter(0);
  v17 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48);
  v30 = v29;
  v18 = *&v29[v17];
  v38 = a2;
  if (v18)
  {
    v18;
    FullyConnectedNetworkConfiguration.init()();
    FullyConnectedNetworkConfiguration.maximumIterations.setter(*a2);
    FullyConnectedNetworkConfiguration.hiddenUnitCounts.setter(v18);
    FullyConnectedNetworkConfiguration.batchSize.setter(32);
    v19 = v32;
    v20 = v31;
    (*(v39 + 16))(v32, v29, v31);
    v21 = lazy protocol witness table accessor for type Float and conformance Float();
    v22 = v36;
    FullyConnectedNetworkClassifier.init(labels:configuration:)(v37, v19, &type metadata for Float, &type metadata for String, &protocol witness table for Float, v21, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    v18;
    outlined destroy of MLImageClassifier.ModelParameters(v38);
    (*(v39 + 8))(v29, v20);
    v23 = 1;
  }

  else
  {
    v39 = lazy protocol witness table accessor for type Float and conformance Float();
    v24 = v34;
    LogisticRegressionClassifier.Configuration.init()(&type metadata for Float, &type metadata for String, &protocol witness table for Float, v39, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    LogisticRegressionClassifier.Configuration.maximumIterations.setter(*a2, v8);
    v25 = v35;
    v26 = v33;
    (*(v33 + 16))(v35, v24, v8);
    v22 = v36;
    LogisticRegressionClassifier.init(labels:configuration:)(v37, v25, &type metadata for Float, &type metadata for String, &protocol witness table for Float, v39, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    outlined destroy of MLImageClassifier.ModelParameters(v38);
    (*(v26 + 8))(v24, v8);
    v23 = 0;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  swift_storeEnumTagMultiPayload(v22, v27, v23);
  return outlined destroy of MLImageClassifier.FeatureExtractorType(v30);
}

uint64_t MLImageClassifier.Classifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = v6;
  v7[7] = a6;
  v7[6] = a5;
  v7[5] = a4;
  v7[4] = a3;
  v7[3] = a2;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v7[11] = swift_task_alloc((*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v7[12] = v10;
  v11 = *(v10 - 8);
  v7[13] = v11;
  v7[14] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v7[15] = v12;
  v13 = *(v12 - 8);
  v7[16] = v13;
  v7[17] = swift_task_alloc((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v7[18] = v14;
  v15 = *(v14 - 8);
  v7[19] = v15;
  v7[20] = swift_task_alloc((*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v7[21] = v16;
  v7[22] = swift_task_alloc((*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.Classifier.fitted<A>(to:eventHandler:), 0, 0);
}

uint64_t MLImageClassifier.Classifier.fitted<A>(to:eventHandler:)()
{
  v1 = v0[22];
  v2 = v0[21];
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0[8], v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v2);
  v4 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v4, v0[12]);
    v5 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[25] = v5;
    *v5 = v0;
    v5[1] = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
    v6 = v0[14];
    return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)(v0[11], v0[3], v0[4], v0[5], v0[12], v0[6], v0[7]);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v4, v0[18]);
    v8 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[23] = v8;
    *v8 = v0;
    v8[1] = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
    v9 = v0[20];
    return LogisticRegressionClassifier.fitted<A>(to:eventHandler:)(v0[17], v0[3], v0[4], v0[5], v0[18], v0[6], v0[7]);
  }
}

{
  v2 = *(*v1 + 184);
  *(*v1 + 192) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v10 = *(v0 + 160);
  v1 = *(v0 + 136);
  v2 = *(v0 + 128);
  v3 = *(v0 + 120);
  v9 = *(v0 + 176);
  v8 = *(v0 + 112);
  v4 = *(v0 + 16);
  v7 = *(v0 + 88);
  (*(*(v0 + 152) + 8))(v10, *(v0 + 144));
  (*(v2 + 32))(v4, v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v4, v5, 0);
  v9;
  v10;
  v1;
  v8;
  v7;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 200);
  *(*v1 + 208) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v7 = *(v0 + 112);
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 72);
  v10 = *(v0 + 176);
  v9 = *(v0 + 160);
  v8 = *(v0 + 136);
  (*(*(v0 + 104) + 8))(v7, *(v0 + 96));
  (*(v2 + 32))(v3, v1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v3, v5, 1);
  v10;
  v9;
  v8;
  v7;
  v1;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 192);
  v1 = *(v0 + 160);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  v7 = *(v0 + 88);
  v4 = *(v0 + 112);
  (*(*(v0 + 152) + 8))(v1, *(v0 + 144));
  v2;
  v1;
  v3;
  v4;
  v7;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 208);
  v1 = *(v0 + 112);
  v7 = *(v0 + 88);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  (*(*(v0 + 104) + 8))(v1, *(v0 + 96));
  v2;
  v3;
  v4;
  v1;
  v7;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)()
{
  v2 = *(*v1 + 208);
  *(*v1 + 216) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v10 = *(v0 + 184);
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v9 = *(v0 + 200);
  v8 = *(v0 + 136);
  v4 = *(v0 + 16);
  v7 = *(v0 + 112);
  (*(*(v0 + 176) + 8))(v10, *(v0 + 168));
  (*(v2 + 32))(v4, v1, v3);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v4, v5, 0);
  v9;
  v10;
  v1;
  v8;
  v7;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 224);
  *(*v1 + 232) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v7 = *(v0 + 136);
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  v3 = *(v0 + 16);
  v4 = *(v0 + 96);
  v10 = *(v0 + 200);
  v9 = *(v0 + 184);
  v8 = *(v0 + 160);
  (*(*(v0 + 128) + 8))(v7, *(v0 + 120));
  (*(v2 + 32))(v3, v1, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  swift_storeEnumTagMultiPayload(v3, v5, 1);
  v10;
  v9;
  v8;
  v7;
  v1;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 216);
  v1 = *(v0 + 184);
  v2 = *(v0 + 200);
  v3 = *(v0 + 160);
  v7 = *(v0 + 112);
  v4 = *(v0 + 136);
  (*(*(v0 + 176) + 8))(v1, *(v0 + 168));
  v2;
  v1;
  v3;
  v4;
  v7;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 232);
  v1 = *(v0 + 136);
  v7 = *(v0 + 112);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  (*(*(v0 + 128) + 8))(v1, *(v0 + 120));
  v2;
  v3;
  v4;
  v1;
  v7;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.Classifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v46 = v2;
  v42 = v3;
  v47 = a2;
  v41 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v48 = *(v49 - 8);
  v4 = *(v48 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v43 = v40;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v54 = *(v53 - 8);
  v7 = *(v54 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = v40;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v51 = *(v52 - 8);
  v10 = *(v51 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v44 = v40;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v56 = *(v55 - 8);
  v13 = *(v56 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v57 = v40;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v45 = v40;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v22 = v40;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v27 = &v40[*(v23 + 48)];
  v28 = v40;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, v27, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v40, v16) != 1)
  {
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v27, v36) != 1)
    {
      v37 = v55;
      (*(v56 + 32))(v57, v40, v55);
      v38 = v44;
      (*(v51 + 32))(v44, v27, v52);
      LogisticRegressionClassifier.encode(_:to:)(v38, v47, v37);
      (*(v51 + 8))(v38, v52);
      (*(v56 + 8))(v57, v37);
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    }

LABEL_8:
    (*(v56 + 8))(v22, v55);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, "Classifier.Classifier.swift" + 0x8000000000000000, "CreateML/MLImageClassifier.Classifier.swift", 43, 2, 88, 0);
    BUG();
  }

  v57 = v40;
  v22 = v45;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, v45, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v27, v29) != 1)
  {
    v56 = v54;
    v55 = v53;
    goto LABEL_8;
  }

  v30 = v53;
  (*(v54 + 32))(v50, v22, v53);
  v31 = v43;
  (*(v48 + 32))(v43, v27, v49);
  v32 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifier<A, B>);
  v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
  v34 = v32;
  v35 = v50;
  SupervisedEstimator<>.encode(_:to:)(v31, v47, v30, v34, v33);
  (*(v48 + 8))(v31, v49);
  (*(v54 + 8))(v35, v30);
  v28 = v57;
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
}

uint64_t protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc(224);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier;
  retaddr = v13;
  return MLImageClassifier.Classifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  v1;
  return (*(v2 + 8))();
}

uint64_t MLImageClassifier.Classifier.makeTransformer()()
{
  v22 = v1;
  v26 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v24 = &v22;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v25 = &v22;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v22, &v22, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v22, v11) == 1)
  {
    v15 = v24;
    v16 = v23;
    (*(v23 + 32))(v24, &v22, v2);
    v17 = v26;
    FullyConnectedNetworkClassifier.makeTransformer()(v2);
    (*(v16 + 8))(v15, v2);
    v18 = 1;
  }

  else
  {
    v19 = v25;
    (*(v7 + 32))(v25, &v22, v6);
    v17 = v26;
    LogisticRegressionClassifier.makeTransformer()(v6);
    (*(v7 + 8))(v19, v6);
    v18 = 0;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  return swift_storeEnumTagMultiPayload(v17, v20, v18);
}

uint64_t MLImageClassifier.Classifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = v6;
  v7[7] = a6;
  v7[6] = a5;
  v7[5] = a4;
  v7[4] = a3;
  v7[3] = a2;
  v7[2] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v7[9] = v8;
  v9 = *(v8 - 8);
  v7[10] = v9;
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7[11] = swift_task_alloc(v10);
  v7[12] = swift_task_alloc(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v7[13] = v11;
  v12 = *(v11 - 8);
  v7[14] = v12;
  v7[15] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v7[16] = v13;
  v14 = *(v13 - 8);
  v7[17] = v14;
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7[18] = swift_task_alloc(v15);
  v7[19] = swift_task_alloc(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v7[20] = v16;
  v17 = *(v16 - 8);
  v7[21] = v17;
  v7[22] = swift_task_alloc((*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v7[23] = v18;
  v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7[24] = swift_task_alloc(v19);
  v7[25] = swift_task_alloc(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v7[26] = v20;
  v7[27] = swift_task_alloc((*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.Classifier.update<A>(_:with:eventHandler:), 0, 0);
}

uint64_t MLImageClassifier.Classifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[27];
  v9 = v7[23];
  v10 = v7[2];
  v11 = v8 + *(v7[26] + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7[8], v8, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v11, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v9);
  v13 = v7[27];
  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, v7[24], &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v7[32] = v14;
    if (swift_getEnumCaseMultiPayload(v11, v14) == 1)
    {
      v15 = v7[12];
      v16 = v7[9];
      v17 = v7[10];
      (*(v7[14] + 32))(v7[15], v7[24], v7[13]);
      v18 = *(v17 + 32);
      v7[33] = v18;
      v18(v15, v11, v16);
      v19 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)[1]);
      v7[34] = v19;
      *v19 = v7;
      v19[1] = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
      v20 = v7[15];
      return FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)(v7[12], v7[3], v7[4], v7[5], v7[13], v7[6], v7[7]);
    }

    v23 = v7 + 24;
    v24 = 13;
    v25 = 14;
    goto LABEL_7;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, v7[25], &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v7[28] = v22;
  if (swift_getEnumCaseMultiPayload(v11, v22) == 1)
  {
    v23 = v7 + 25;
    v24 = 20;
    v25 = 21;
LABEL_7:
    (*(v7[v25] + 8))(*v23, v7[v24]);
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, "Classifier.Classifier.swift" + 0x8000000000000000, "CreateML/MLImageClassifier.Classifier.swift", 43, 2, 132, 0);
  }

  v26 = v7[19];
  v27 = v7[16];
  v28 = v7[17];
  (*(v7[21] + 32))(v7[22], v7[25], v7[20]);
  v29 = *(v28 + 32);
  v7[29] = v29;
  v29(v26, v11, v27);
  v30 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.update<A>(_:with:eventHandler:)[1]);
  v7[30] = v30;
  *v30 = v7;
  v30[1] = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  v31 = v7[22];
  return LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(v7[19], v7[3], v7[4], v7[5], v7[20], v7[6], v7[7]);
}

uint64_t MLImageClassifier.Classifier.update<A>(_:with:eventHandler:)()
{
  v2 = *(*v1 + 240);
  *(*v1 + 248) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v14 = *(v0 + 232);
  v12 = *(v0 + 224);
  v10 = *(v0 + 176);
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v13 = *(v0 + 216);
  v11 = *(v0 + 200);
  v9 = *(v0 + 192);
  v8 = *(v0 + 120);
  v7 = *(v0 + 96);
  v4 = *(v0 + 16);
  v6 = *(v0 + 88);
  (*(*(v0 + 168) + 8))(v10, *(v0 + 160));
  v14(v2, v1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14(v4, v2, v3);
  swift_storeEnumTagMultiPayload(v4, v12, 0);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v13;
  v11;
  v9;
  v10;
  v1;
  v2;
  v8;
  v7;
  v6;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 272);
  *(*v1 + 280) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  else
  {
    v3 = MLImageClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v14 = *(v0 + 264);
  v12 = *(v0 + 256);
  v6 = *(v0 + 120);
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(v0 + 72);
  v13 = *(v0 + 216);
  v11 = *(v0 + 200);
  v10 = *(v0 + 192);
  v9 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 144);
  (*(*(v0 + 112) + 8))(v6, *(v0 + 104));
  v14(v2, v1, v4);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14(v3, v2, v4);
  swift_storeEnumTagMultiPayload(v3, v12, 1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v13;
  v11;
  v10;
  v9;
  v8;
  v7;
  v6;
  v1;
  v2;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 248);
  v1 = *(v0 + 176);
  v13 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);
  v4 = *(v0 + 216);
  v12 = *(v0 + 200);
  v11 = *(v0 + 192);
  v10 = *(v0 + 144);
  v9 = *(v0 + 120);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  (*(*(v0 + 136) + 8))(v3, *(v0 + 128));
  (*(v13 + 8))(v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v4;
  v12;
  v11;
  v1;
  v3;
  v10;
  v9;
  v8;
  v7;
  return (*(v0 + 8))();
}

{
  v6 = *(v0 + 280);
  v1 = *(v0 + 120);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v8 = *(v0 + 96);
  v4 = *(v0 + 216);
  v13 = *(v0 + 200);
  v12 = *(v0 + 192);
  v11 = *(v0 + 176);
  v10 = *(v0 + 152);
  v9 = *(v0 + 144);
  v7 = *(v0 + 88);
  (*(*(v0 + 80) + 8))(v8, *(v0 + 72));
  (*(v2 + 8))(v1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v4;
  v13;
  v12;
  v11;
  v10;
  v9;
  v1;
  v8;
  v7;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.Classifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v45 = v2;
  v40 = v3;
  v46 = a2;
  v39 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v47 = *(v48 - 8);
  v4 = *(v47 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v41 = v38;
  v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v52 = *(v51 - 8);
  v7 = *(v52 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v42 = v38;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v49 = *(v50 - 8);
  v10 = *(v49 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v43 = v38;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v54 = *(v53 - 8);
  v13 = *(v54 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v55 = v38;
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v44 = v38;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v22 = v38;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v27 = &v38[*(v23 + 48)];
  v28 = v38;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v27, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v38, v16) != 1)
  {
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v38, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v27, v34) != 1)
    {
      v35 = v53;
      (*(v54 + 32))(v55, v38, v53);
      v36 = v43;
      (*(v49 + 32))(v43, v27, v50);
      LogisticRegressionClassifier.encodeWithOptimizer(_:to:)(v36, v46, v35);
      (*(v49 + 8))(v36, v50);
      (*(v54 + 8))(v55, v35);
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    }

LABEL_8:
    (*(v54 + 8))(v22, v53);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, "Classifier.Classifier.swift" + 0x8000000000000000, "CreateML/MLImageClassifier.Classifier.swift", 43, 2, 143, 0);
    BUG();
  }

  v55 = v38;
  v22 = v44;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v44, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v27, v29) != 1)
  {
    v54 = v52;
    v53 = v51;
    goto LABEL_8;
  }

  v30 = v42;
  v31 = v22;
  v32 = v51;
  (*(v52 + 32))(v42, v31, v51);
  v33 = v41;
  (*(v47 + 32))(v41, v27, v48);
  FullyConnectedNetworkClassifier.encodeWithOptimizer(_:to:)(v33, v46, v32);
  (*(v47 + 8))(v33, v48);
  (*(v52 + 8))(v30, v32);
  v28 = v55;
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
}

uint64_t MLImageClassifier.Classifier.decode(from:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v41 = a3;
  v42 = a2;
  v55 = v4;
  v40 = v5;
  v56 = a1;
  v48 = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v49 = *(v50 - 8);
  v6 = *(v49 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v57 = &v40;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v43 = *(v44 - 8);
  v9 = *(v43 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v45 = &v40;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v51 = *(v52 - 8);
  v12 = *(v51 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v58 = &v40;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v15 = *(*(v59 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v54 = &v40;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v53 = &v40;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v46 = *(v20 - 8);
  v21 = *(v46 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v47 = &v40;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v25 = *(*(v24 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v40, &v40, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v40, v24) == 1)
  {
    v28 = v45;
    v29 = v44;
    v30 = v43;
    (*(v43 + 32))(v45, &v40, v44);
    v31 = v55;
    v41(v56, v29);
    result = (*(v30 + 8))(v28, v29);
    if (v31)
    {
      return result;
    }

    v33 = v54;
    (*(v49 + 32))(v54, v57, v50);
    v34 = 1;
    v35 = v33;
    v36 = v59;
  }

  else
  {
    v37 = v47;
    v38 = v46;
    (*(v46 + 32))(v47, &v40, v20);
    v39 = v55;
    v42(v56, v20);
    result = (*(v38 + 8))(v37, v20);
    if (v39)
    {
      return result;
    }

    v33 = v53;
    (*(v51 + 32))(v53, v58, v52);
    v35 = v33;
    v36 = v59;
    v34 = 0;
  }

  swift_storeEnumTagMultiPayload(v35, v36, v34);
  return outlined init with take of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v33, v48);
}

uint64_t protocol witness for UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:) in conformance MLImageClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc(288);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier;
  retaddr = v13;
  return MLImageClassifier.Classifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLMultiArrayDataType(uint64_t *a1)
{
  v2 = v1;
  result = MLMultiArrayDataType.init(rawValue:)(*a1);
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLMultiArrayDataType()
{
  v2 = v0;
  result = specialized _finalizeUninitializedArray<A>(_:)(*v1);
  *v2 = result;
  return result;
}

NSString protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NLLanguage(uint64_t a1)
{
  v2 = v1;
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo30NLModelConfigurationOptionsKeya_Tt1gq5Tm(a1);
  *v2 = result;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef(uint64_t a1)
{
  v2 = *v1;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for CFStringRef, a1);
  return _CFObject.hashValue.getter(a1, WitnessTable);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for CFStringRef, a2);
  return _CFObject.hash(into:)(a1, a2, WitnessTable);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v3 = *v2;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for CFStringRef, a2);
  _CFObject.hash(into:)(v6, a2, WitnessTable);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NLLanguage(uint64_t *a1)
{
  return protocol witness for RawRepresentable.init(rawValue:) in conformance NLLanguage(a1);
}

{
  v2 = v1;
  v3 = a1[1];
  v4 = *a1;
  v5 = String._bridgeToObjectiveC()();
  result = v3, v3;
  *v2 = v5;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance NLLanguage()
{
  v2 = v0;
  v3 = *v1;
  result = NLLanguage.rawValue.getter();
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for CFStringRef, a3);
  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSFileAttributeKey(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey, type metadata accessor for NSFileAttributeKey, &protocol conformance descriptor for NSFileAttributeKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance VNImageOption(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = a2(255);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance MLFeatureValueImageOption(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFeatureValueImageOption and conformance MLFeatureValueImageOption, type metadata accessor for MLFeatureValueImageOption, &protocol conformance descriptor for MLFeatureValueImageOption);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance CIImageRepresentationOption(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CIImageRepresentationOption and conformance CIImageRepresentationOption, type metadata accessor for CIImageRepresentationOption, &protocol conformance descriptor for CIImageRepresentationOption);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NLLanguage(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage, type metadata accessor for NLLanguage, &protocol conformance descriptor for NLLanguage);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLLanguage and conformance NLLanguage, type metadata accessor for NLLanguage, &protocol conformance descriptor for NLLanguage);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NLModelEmbeddingType(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelEmbeddingType and conformance NLModelEmbeddingType, type metadata accessor for NLModelEmbeddingType, &protocol conformance descriptor for NLModelEmbeddingType);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelEmbeddingType and conformance NLModelEmbeddingType, type metadata accessor for NLModelEmbeddingType, &protocol conformance descriptor for NLModelEmbeddingType);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NLModelConfigurationOptionsKey(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSURLResourceKey(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSURLResourceKey and conformance NSURLResourceKey, type metadata accessor for NSURLResourceKey, &protocol conformance descriptor for NSURLResourceKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSProgressUserInfoKey(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NSProgressUserInfoKey and conformance NSProgressUserInfoKey, type metadata accessor for NSProgressUserInfoKey, &protocol conformance descriptor for NSProgressUserInfoKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance VNRecognizedPointKey(uint64_t a1)
{
  v1 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNRecognizedPointKey and conformance VNRecognizedPointKey, type metadata accessor for VNRecognizedPointKey, &protocol conformance descriptor for VNRecognizedPointKey);
  v2 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNRecognizedPointKey and conformance VNRecognizedPointKey, type metadata accessor for VNRecognizedPointKey, &protocol conformance descriptor for VNRecognizedPointKey);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v1, v2, &protocol witness table for String);
}

uint64_t outlined init with take of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return a2;
}

uint64_t outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v4 = v3;
  v5 = v2;
  String.hash(into:)(a1, v2);
  return v4, v5;
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v4 = v3;
  Hasher.init(_seed:)(a1);
  String.hash(into:)(v7, v2);
  v5 = Hasher._finalize()();
  v4, v2;
  return v5;
}

uint64_t specialized == infix<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(a2);
  v8 = v7;
  LOBYTE(v2) = 1;
  if (v6 ^ v3 | v7 ^ v5)
  {
    a2 = v5;
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)(v3, v5, v6, v7, 0);
  }

  v5, a2;
  v8, a2;
  return v2;
}

{
  return specialized == infix<A>(_:_:)(a1, a2);
}

{
  return specialized == infix<A>(_:_:)(a1, a2);
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo30NLModelConfigurationOptionsKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  v8 = 0;
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)(a1, &v8);
  v4 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    v5 = *(&v8 + 1);
    v6 = String._bridgeToObjectiveC()();
    v4, v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return v3;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo30NLModelConfigurationOptionsKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  v5 = 0;
  result = static String._forceBridgeFromObjectiveC(_:result:)(a1, &v5);
  v3 = *(&v5 + 1);
  if (*(&v5 + 1))
  {
    v4 = String._bridgeToObjectiveC()();
    result = v3, v3;
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

NSString _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo30NLModelConfigurationOptionsKeya_Tt1gq5Tm(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  v2 = v1;
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();
  v2, v3;
  return v4;
}

uint64_t specialized _SwiftNewtypeWrapper<>._bridgeToObjectiveC()(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(a1);
  v5 = v4;
  v6 = v4;
  v7 = a2(v3, v4);
  v5, v6;
  return v7;
}

uint64_t lazy protocol witness table accessor for type Float and conformance Float()
{
  result = lazy protocol witness table cache variable for type Float and conformance Float;
  if (!lazy protocol witness table cache variable for type Float and conformance Float)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Float, &type metadata for Float);
    lazy protocol witness table cache variable for type Float and conformance Float = result;
  }

  return result;
}

uint64_t outlined destroy of MLImageClassifier.FeatureExtractorType(uint64_t a1)
{
  v1 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t getEnumTagSinglePayload for CGSize(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 16))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for CGSize(uint64_t a1, int a2, int a3)
{
  if (!a2)
  {
    if (!a3)
    {
      return;
    }

    v3 = 0;
    goto LABEL_6;
  }

  *(a1 + 8) = 0;
  *a1 = (a2 - 1);
  v3 = 1;
  if (a3)
  {
LABEL_6:
    *(a1 + 16) = v3;
  }
}

uint64_t type metadata accessor for CGRect(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getForeignTypeMetadata(a1, a3);
    if (!v4)
    {
      *a2 = result;
    }
  }

  return result;
}

unint64_t __chkstk_darwin_llvm_probe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8, char a9)
{
  v10 = &a9;
  if (result >= 0x1000)
  {
    do
    {
      v10 -= 4096;
      v11 = *v10;
      result -= 4096;
    }

    while (result > 0x1000);
  }

  v12 = ((v10 - result) & v10[-result]) == 0;
  return result;
}

uint64_t *closure #1 in Tensor.doubleArray()(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v51 = v3;
  v42 = a2;
  v52 = a1;
  v43 = type metadata accessor for TensorShape(0);
  v44 = *(v43 - 8);
  v5 = *(v44 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v45 = &v42;
  v50 = type metadata accessor for FloatingPointRoundingRule(0);
  v49 = *(v50 - 8);
  v8 = *(v49 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v54 = &v42;
  v47 = type metadata accessor for Tensor(0);
  v46 = *(v47 - 8);
  v11 = *(v46 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v53 = &v42;
  v14 = type metadata accessor for ScalarType(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v55 = &v42;
  v19 = alloca(v16);
  v20 = alloca(v16);
  Tensor.elementType.getter(0, a2);
  v21 = (*(v15 + 88))(&v42, v14);
  v24 = &enum case for ScalarType.int16(_:);
  if (v21 == enum case for ScalarType.int16(_:))
  {
    v25 = alloca(24);
    v26 = alloca(32);
    v44 = v52;
    v27 = &type metadata for () + 8;
    v28 = partial apply for closure #2 in closure #1 in Tensor.doubleArray();
  }

  else
  {
    v24 = &enum case for ScalarType.int32(_:);
    if (v21 == enum case for ScalarType.int32(_:))
    {
      v29 = alloca(24);
      v30 = alloca(32);
      v44 = v52;
      v27 = &type metadata for () + 8;
      v28 = partial apply for closure #3 in closure #1 in Tensor.doubleArray();
    }

    else
    {
      v24 = &enum case for ScalarType.uint16(_:);
      if (v21 == enum case for ScalarType.uint16(_:))
      {
        v31 = alloca(24);
        v32 = alloca(32);
        v44 = v52;
        v27 = &type metadata for () + 8;
        v28 = partial apply for closure #4 in closure #1 in Tensor.doubleArray();
      }

      else
      {
        v24 = &enum case for ScalarType.uint32(_:);
        if (v21 == enum case for ScalarType.uint32(_:))
        {
          v33 = alloca(24);
          v34 = alloca(32);
          v44 = v52;
          v27 = &type metadata for () + 8;
          v28 = partial apply for closure #5 in closure #1 in Tensor.doubleArray();
        }

        else
        {
          v24 = &enum case for ScalarType.float32(_:);
          if (v21 != enum case for ScalarType.float32(_:))
          {
            (*(v15 + 104))(v55, enum case for ScalarType.float32(_:), v14);
            (*(v49 + 104))(v54, enum case for FloatingPointRoundingRule.towardZero(_:), v50);
            v48 = a3;
            Tensor.cast(to:roundingRule:)(v55, v54);
            (*(v49 + 8))(v54, v50);
            v54 = *(v15 + 8);
            (v54)(v55, v14);
            v55 = &v42;
            v40 = alloca(24);
            v41 = alloca(32);
            v44 = v52;
            (Tensor.withUnsafeBytes<A>(_:))(partial apply for closure #6 in closure #1 in Tensor.doubleArray(), &v42, &type metadata for () + 8);
            (*(v46 + 8))(v53, v47);
            (v54)(&v42, v14);
            goto LABEL_12;
          }

          v35 = alloca(24);
          v36 = alloca(32);
          v44 = v52;
          v27 = &type metadata for () + 8;
          v28 = partial apply for closure #1 in closure #1 in Tensor.doubleArray();
        }
      }
    }
  }

  Tensor.withUnsafeBytes<A>(_:)(v28, &v42, v27, v24, v22, v23, v42, v43, v44);
LABEL_12:
  v37 = v45;
  Tensor.shape.getter();
  v38 = TensorShape.contiguousSize.getter();
  (*(v44 + 8))(v37, v43);
  result = v42;
  *v42 = v38;
  return result;
}

void _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_Sf7ElementRtzSdAIRt_r0_lFZSRySfG_SrySdGTt1g5(const float *a1, int64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 8) < a2)
  {
    v3 = *(a3 + 8);
  }

  if (v3 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    BUG();
  }

  v4 = *a3;
  if (!v4)
  {
    BUG();
  }

  vDSP_vspdp(a1, 1, v4, 1, v3);
}

uint64_t closure #2 in closure #1 in Tensor.doubleArray()(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 2;
  }

  else
  {
    v3 = 0;
  }

  return _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_s5Int16V7ElementRtzSdAKRt_r0_lFZSRyAJG_SrySdGTt1g5Tm(a1, v3, a3, &vDSP_vflt16D);
}

uint64_t closure #3 in closure #1 in Tensor.doubleArray()(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  return _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_s5Int16V7ElementRtzSdAKRt_r0_lFZSRyAJG_SrySdGTt1g5Tm(a1, v3, a3, &vDSP_vflt32D);
}

uint64_t closure #4 in closure #1 in Tensor.doubleArray()(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 2;
  }

  else
  {
    v3 = 0;
  }

  return _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_s5Int16V7ElementRtzSdAKRt_r0_lFZSRyAJG_SrySdGTt1g5Tm(a1, v3, a3, &vDSP_vfltu16D);
}

uint64_t closure #5 in closure #1 in Tensor.doubleArray()(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  return _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_s5Int16V7ElementRtzSdAKRt_r0_lFZSRyAJG_SrySdGTt1g5Tm(a1, v3, a3, &vDSP_vfltu32D);
}

uint64_t _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_s5Int16V7ElementRtzSdAKRt_r0_lFZSRyAJG_SrySdGTt1g5Tm(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3[1] != a2)
  {
    BUG();
  }

  if (a2 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    BUG();
  }

  if (!*a3)
  {
    BUG();
  }

  return a4(a1, 1);
}

void closure #6 in closure #1 in Tensor.doubleArray()(const float *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  _s10Accelerate4vDSPO15convertElements2of2toyx_q_ztAA0A6BufferRzAA0a7MutableG0R_Sf7ElementRtzSdAIRt_r0_lFZSRySfG_SrySdGTt1g5(a1, v3, a3);
}

void *initializeBufferWithCopyOfBuffer for InteractionLookupTable(void *a1, void *a2)
{
  return initializeBufferWithCopyOfBuffer for InteractionLookupTable(a1, a2);
}

{
  *a1 = *a2;
  a1[1] = a2[1];
  v2 = a2[2];
  a1[2] = v2;
  (swift_bridgeObjectRetain)();
  v2;
  return a1;
}

void *assignWithCopy for InteractionLookupTable(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[1];
  v4 = a1[1];
  a1[1] = v3;
  v3;
  v4, a2;
  v5 = a2[2];
  v6 = a1[2];
  a1[2] = v5;
  v5;
  v6, a2;
  return a1;
}

void *assignWithTake for InteractionLookupTable(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1], a2;
  v3 = a1[2];
  *(a1 + 1) = *(a2 + 8);
  v3, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for InteractionLookupTable(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

void storeEnumTagSinglePayload for InteractionLookupTable(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 24) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t InteractionLookupTable.interactionsFor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    BUG();
  }

  v4 = *(a4 + 16);
  if (v4 <= a1)
  {
    BUG();
  }

  if (a1 + 1 >= v4)
  {
    BUG();
  }

  v6 = *(a4 + 8 * a1 + 32);
  v7 = *(a4 + 8 * a1 + 40);
  if (v7 < v6)
  {
    BUG();
  }

  if (v6 < 0)
  {
    BUG();
  }

  v8 = *(a3 + 16);
  if (v8 < v6 || v8 < v7)
  {
    BUG();
  }

  a3;
  return a3;
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance Interaction(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1;
  v5 = *a2;
  return _sSLsE2leoiySbx_xtFZ8CreateML11InteractionV_Tt1g5(v2, v3);
}

BOOL _sSLsE2leoiySbx_xtFZ8CreateML11MLDataValueO14DictionaryTypeV5IndexV_Tt1B5(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    BUG();
  }

  if (a5 != a2)
  {
    BUG();
  }

  return a4 >= a1;
}

uint64_t _sSLsE2leoiySbx_xtFZ8CreateML13MLRecommenderV10IdentifierO_Tt1g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a3)
    {
      LOBYTE(v6) = a4 < a1;
      goto LABEL_6;
    }

LABEL_5:
    LOBYTE(v6) = (a6 & 1) < (a3 & 1);
    goto LABEL_6;
  }

  if (a3)
  {
    goto LABEL_5;
  }

  v6 = 0;
  if (a1 ^ a4 | a2 ^ a5 && (_stringCompareWithSmolCheck(_:_:expecting:)(a4, a5, a1, a2, 0) & 1) == 0)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)(a4, a5, a1, a2, 1);
  }

LABEL_6:
  LOBYTE(v6) = v6 ^ 1;
  return v6;
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance Interaction(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1;
  v5 = *a2;
  return _sSLsE2geoiySbx_xtFZ8CreateML11InteractionV_Tt1g5(v2, v3);
}

BOOL _sSLsE2geoiySbx_xtFZ8CreateML11MLDataValueO14DictionaryTypeV5IndexV_Tt1B5(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3 & 1) != 0 || (a6)
  {
    BUG();
  }

  if (a2 != a5)
  {
    BUG();
  }

  return a1 >= a4;
}

uint64_t _sSLsE2geoiySbx_xtFZ8CreateML13MLRecommenderV10IdentifierO_Tt1g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
      LOBYTE(v6) = a1 < a4;
      goto LABEL_6;
    }

LABEL_5:
    LOBYTE(v6) = (a3 & 1) < (a6 & 1);
    goto LABEL_6;
  }

  if (a6)
  {
    goto LABEL_5;
  }

  v6 = 0;
  if (a4 ^ a1 | a5 ^ a2 && (_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 0) & 1) == 0)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a4, a5, 1);
  }

LABEL_6:
  LOBYTE(v6) = v6 ^ 1;
  return v6;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance Interaction(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = *a1;
  v5 = *a2;
  return _sSLsE1goiySbx_xtFZ8CreateML11InteractionV_Tt1g5(v2, v3);
}

BOOL _sSLsE1goiySbx_xtFZ8CreateML11MLDataValueO14DictionaryTypeV5IndexV_Tt1B5(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    BUG();
  }

  if (a5 != a2)
  {
    BUG();
  }

  return a4 < a1;
}

uint64_t _sSLsE1goiySbx_xtFZ8CreateML13MLRecommenderV10IdentifierO_Tt1g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a3)
    {
      LOBYTE(v6) = a4 < a1;
      return v6;
    }

LABEL_5:
    LOBYTE(v6) = (a6 & 1) < (a3 & 1);
    return v6;
  }

  if (a3)
  {
    goto LABEL_5;
  }

  v6 = 0;
  if (!(a1 ^ a4 | a2 ^ a5) || (_stringCompareWithSmolCheck(_:_:expecting:)(a4, a5, a1, a2, 0) & 1) != 0)
  {
    return v6;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)(a4, a5, a1, a2, 1);
}

uint64_t lazy protocol witness table accessor for type Interaction and conformance Interaction()
{
  result = lazy protocol witness table cache variable for type Interaction and conformance Interaction;
  if (!lazy protocol witness table cache variable for type Interaction and conformance Interaction)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Interaction, &type metadata for Interaction);
    lazy protocol witness table cache variable for type Interaction and conformance Interaction = result;
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLBoostedTreeRegressor.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLBoostedTreeRegressor.ModelParameters.validationData : MLBoostedTreeRegressor.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLBoostedTreeRegressor.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLBoostedTreeRegressor.ModelParameters.validationData : MLBoostedTreeRegressor.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
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
  outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void *__swift_allocate_boxed_opaque_existential_0(void *a1)
{
  v1 = a1;
  v2 = a1[3];
  if ((*(*(v2 - 8) + 82) & 2) != 0)
  {
    *v1 = swift_allocBox(v2);
    return v3;
  }

  return v1;
}

uint64_t outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLBoostedTreeRegressor.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLBoostedTreeRegressor.ModelParameters.validationData.getter(a2);
  return MLBoostedTreeRegressor.ModelParameters.validationData.modify;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLBoostedTreeRegressor.ModelParameters.validation : MLBoostedTreeRegressor.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(a1, v6);
  return MLBoostedTreeRegressor.ModelParameters.validation.setter(v6);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLBoostedTreeRegressor.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLBoostedTreeRegressor.ModelParameters.validation.modify;
}

void MLBoostedTreeRegressor.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v8 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  if (a2)
  {
    outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.earlyStoppingRounds.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10, double a11)
{
  v22 = a4;
  v26 = a3;
  v12 = v11;
  v23 = a11;
  v24 = a10;
  v27 = a5;
  v28 = a9;
  v29 = a8;
  v30 = a7;
  v25 = a1;
  v14 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  *(v12 + 16) = 0;
  *v12 = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = v26;
  *(v12 + 48) = v30;
  *(v12 + 56) = v29;
  *(v12 + 64) = v22;
  *(v12 + 72) = v28;
  *(v12 + 80) = v27;
  *(v12 + 88) = a6 & 1;
  *(v12 + 96) = v24;
  *(v12 + 104) = v23;
  v18 = v25;
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v25, v21);
  v21[3] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(v21, boxed_opaque_existential_0);
  outlined assign with take of Any?(v21, v12);
  return outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v18);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, double a7, double a8, double a9, double a10, double a11)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 32) = a2;
  *(v11 + 40) = a3;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  *(v11 + 64) = a4;
  *(v11 + 72) = a9;
  *(v11 + 80) = a5;
  *(v11 + 88) = a6 & 1;
  *(v11 + 96) = a10;
  *(v11 + 104) = a11;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v15);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLBoostedTreeRegressor.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v16;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.learningRate.getter();
  *(v3 + 80) = BoostedTreeConfiguration.earlyStoppingIterationCount.getter();
  *(v3 + 88) = v11 & 1;
  *(v3 + 96) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 104) = BoostedTreeConfiguration.columnSubsample.getter();
  v18 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) == 1)
  {
    v12 = v19;
    swift_storeEnumTagMultiPayload(v19, v7, 3);
    if (__swift_getEnumTagSinglePayload(v16, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, &demangling cache variable for type metadata for MLBoostedTreeRegressor.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v12 = v19;
    outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(v16, v19);
  }

  v17[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLBoostedTreeRegressor.ModelParameters.ValidationData(v12, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, &demangling cache variable for type metadata for DataFrame?);
  v14 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v14 - 8) + 8))(a1, v14);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML22MLBoostedTreeRegressorV15ModelParametersV010ValidationD0OTg503_s8g4ML22ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
{
  v21 = v1;
  v2 = type metadata accessor for DataFrame(0);
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v19 = &v17;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v17, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(&v17, 1, v2) == 1)
  {
    v9 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
    v10 = v21;
    v11 = 1;
    v12 = v9;
  }

  else
  {
    v13 = v19;
    v14 = v18;
    (*(v18 + 32))(v19, &v17, v2);
    v15 = v21;
    (*(v14 + 16))(v21, v13, v2);
    v20 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.description.getter()
{
  v31._countAndFlagsBits = v0[4];
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  v3 = v1;
  String.append(_:)(v1);
  object, v3._object;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  v31._object, 0xE100000000000000;
  v31._countAndFlagsBits = 0xD000000000000010;
  v31._object = "ansformer have different types." + 0x8000000000000000;
  v29 = v0[5];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v5 = v4._object;
  v6 = v4;
  String.append(_:)(v4);
  v5, v6._object;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v31;
  v8 = v31._object;
  String.append(_:)(v31);
  v8, v7._object;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v7._object = "Max Iterations: " + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v7);
  v28 = v0[6];
  Double.write<A>(to:)(&v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v9 = v31;
  v10 = v31._object;
  String.append(_:)(v31);
  v10, v9._object;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v9._object = "Min Loss Reduction: " + 0x8000000000000000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  Double.write<A>(to:)(&v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  v11 = v31;
  v12 = v31._object;
  String.append(_:)(v31);
  v12, v11._object;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v31._object, v11._object;
  strcpy(&v31, "Random Seed: ");
  HIWORD(v31._object) = -4864;
  v30 = v0[8];
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v14 = v13._object;
  v15 = v13;
  String.append(_:)(v13);
  v14, v15._object;
  v15._countAndFlagsBits = 10;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = v31;
  v17 = v31._object;
  String.append(_:)(v31);
  v17, v16._object;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x7A69532070657453;
  v16._object = 0xEB00000000203A65;
  String.append(_:)(v16);
  v18 = v0[9];
  Double.write<A>(to:)(&v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v16._countAndFlagsBits = 10;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v19 = v31;
  v20 = v31._object;
  String.append(_:)(v31);
  v20, v19._object;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v19._countAndFlagsBits = 0x7362755320776F52;
  v19._object = 0xEF203A656C706D61;
  String.append(_:)(v19);
  v21 = v0[12];
  Double.write<A>(to:)(&v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v22 = v31;
  v23 = v31._object;
  String.append(_:)(v31);
  v23, v22._object;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v22._object = "Min Child Weight: " + 0x8000000000000000;
  v22._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v22);
  v24 = v0[13];
  Double.write<A>(to:)(&v31, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v22._countAndFlagsBits = 10;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v25 = v31;
  v26 = v31._object;
  String.append(_:)(v31);
  v26, v25._object;
  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLBoostedTreeRegressor.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t static String._createEmpty(withInitialCapacity:)(Swift::Int a1)
{
  if (a1 >= 16)
  {
    _StringGuts.grow(_:)(a1);
  }

  return 0;
}

uint64_t destroy for MLBoostedTreeRegressor.ModelParameters(void *a1)
{
  if (a1[3])
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t initializeWithCopy for MLBoostedTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (v2)
  {
    *(a1 + 24) = v2;
    (**(v2 - 8))(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
  }

  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = a2[6];
  return a1;
}

uint64_t assignWithCopy for MLBoostedTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v2)
    {
      *(a1 + 24) = v2;
      (**(v2 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v3 = *a2;
    *(a1 + 16) = a2[1];
    *a1 = v3;
    goto LABEL_8;
  }

  if (!v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0(a1, a2);
LABEL_8:
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = *(a2 + 13);
  return a1;
}

void *__swift_memcpy112_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x70uLL);
  return result;
}

uint64_t assignWithTake for MLBoostedTreeRegressor.ModelParameters(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = a2[6];
  return a1;
}

uint64_t getEnumTagSinglePayload for MLBoostedTreeRegressor.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

void storeEnumTagSinglePayload for MLBoostedTreeRegressor.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 112) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t MLRecommenderMetrics.error.getter()
{
  v1 = *(v0 + 24);
  swift_errorRetain(v1);
  return v1;
}

uint64_t MLRecommenderMetrics.precisionRecallDataFrame.getter()
{
  v56 = v0;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v55 = *(v58 - 8);
  v2 = *(v55 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v64 = v54;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v65 = v54;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v62 = *(v66 - 8);
  v11 = *(v62 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v61 = v54;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v67 = v54;
  v59 = type metadata accessor for AnyColumn(0);
  v60 = *(v59 - 8);
  v16 = *(v60 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v68 = v54;
  v19 = *v1;
  v20 = *(v1 + 1);
  v20;
  if (v19 == 1)
  {
    ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I54OGcfu_32db210c028f2d2ec8bba8c4eeac380409ANSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I54OGcfu_32db210c028f2d2ec8bba8c4eeac380409ANSiTf3nnnpk_nTf1cn_n(v20);
    v63 = 0;
    v20;
    v69[0] = ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I54OGcfu_32db210c028f2d2ec8bba8c4eeac380409ANSiTf3nnnpk_nTf1cn_n;
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    v23 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int]);
    v24 = v67;
    Column.init<A>(name:contents:)(0x64695F72657375, 0xE700000000000000, v69, &type metadata for Int, v22, v23);
    v25 = v66;
    Column.eraseToAnyColumn()(v66);
    v26 = v24;
    v27 = v25;
    v28 = v62;
  }

  else
  {
    ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_SSs5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSSAA014f12D0VyAA0C0V10I56OGcfu0_33_235e29e00f157aa478c2653b1dced7b5ANSSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_SSs5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSSAA014f12D0VyAA0C0V10I56OGcfu0_33_235e29e00f157aa478c2653b1dced7b5ANSSTf3nnnpk_nTf1cn_n(v20);
    v63 = 0;
    v20;
    v69[0] = ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_SSs5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSSAA014f12D0VyAA0C0V10I56OGcfu0_33_235e29e00f157aa478c2653b1dced7b5ANSSTf3nnnpk_nTf1cn_n;
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v31 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String]);
    Column.init<A>(name:contents:)(0x64695F72657375, 0xE700000000000000, v69, &type metadata for String, v30, v31);
    Column.eraseToAnyColumn()(v7);
    v26 = v54;
    v27 = v7;
    v28 = v57;
  }

  (*(v28 + 8))(v26, v27);
  v20;
  ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I56OGcfu1_33_4b456801547331c5420659ef3fb1acd8ANSdTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I56OGcfu1_33_4b456801547331c5420659ef3fb1acd8ANSdTf3nnnpk_nTf1cn_n(v20);
  v20;
  v69[0] = ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I56OGcfu1_33_4b456801547331c5420659ef3fb1acd8ANSdTf3nnnpk_nTf1cn_n;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v34 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double]);
  Column.init<A>(name:contents:)(0x6F69736963657270, 0xE90000000000006ELL, v69, &type metadata for Double, v33, v34);
  v20;
  ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I55OGcfu2_32decee44cba596fcf8548b73bd8347e89ANSdTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I55OGcfu2_32decee44cba596fcf8548b73bd8347e89ANSdTf3nnnpk_nTf1cn_n(v20);
  v20;
  v69[0] = ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I55OGcfu2_32decee44cba596fcf8548b73bd8347e89ANSdTf3nnnpk_nTf1cn_n;
  Column.init<A>(name:contents:)(0x6C6C61636572, 0xE600000000000000, v69, &type metadata for Double, v33, v34);
  v20;
  ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I55OGcfu3_32fc1d4ae8e5336075be87b6acecd3eb22ANSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I55OGcfu3_32fc1d4ae8e5336075be87b6acecd3eb22ANSiTf3nnnpk_nTf1cn_n(v20);
  v20;
  v69[0] = ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I55OGcfu3_32fc1d4ae8e5336075be87b6acecd3eb22ANSiTf3nnnpk_nTf1cn_n;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  v38 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int]);
  Column.init<A>(name:contents:)(0x66666F747563, 0xE600000000000000, v69, &type metadata for Int, v37, v38);
  v20;
  ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I56OGcfu4_33_54cce98f4845f605e4b42ed7c2562f76ANSiTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I56OGcfu4_33_54cce98f4845f605e4b42ed7c2562f76ANSiTf3nnnpk_nTf1cn_n(v20);
  v20;
  v69[0] = ML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I56OGcfu4_33_54cce98f4845f605e4b42ed7c2562f76ANSiTf3nnnpk_nTf1cn_n;
  Column.init<A>(name:contents:)(0x746E756F63, 0xE500000000000000, v69, &type metadata for Int, v37, v38);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v41 = *(v60 + 80);
  v42 = v60;
  v43 = (v41 + 32) & ~*(v60 + 80);
  v44 = swift_allocObject(v40, v43 + 5 * *(v60 + 72), v41 | 7);
  *(v44 + 16) = 5;
  *(v44 + 24) = 10;
  (*(v42 + 16))(v44 + v43, v68, v59);
  Column.eraseToAnyColumn()(v66);
  v45 = v58;
  Column.eraseToAnyColumn()(v58);
  Column.eraseToAnyColumn()(v45);
  v46 = v66;
  v47 = v61;
  Column.eraseToAnyColumn()(v66);
  v69[0] = v44;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v49 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn]);
  DataFrame.init<A>(columns:)(v69, v48, v49);
  v50 = *(v62 + 8);
  v50(v47, v46);
  v50(v67, v46);
  v51 = *(v55 + 8);
  v52 = v58;
  v51(v64, v58);
  v51(v65, v52);
  return (*(v60 + 8))(v68, v59);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I54OGcfu_32db210c028f2d2ec8bba8c4eeac380409ANSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    if (*v3 != 1)
    {
      BUG();
    }

    v4 = *(v3 - 2);
    v8 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      v7 = *(v3 - 2);
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v8;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 56;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I55OGcfu3_32fc1d4ae8e5336075be87b6acecd3eb22ANSiTf3nnnpk_nTf1cn_n(uint64_t a1)
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
    v3 += 7;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sis5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSiAA014f12D0VyAA0C0V10I56OGcfu4_33_54cce98f4845f605e4b42ed7c2562f76ANSiTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 80);
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
    v3 += 7;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_SSs5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSSAA014f12D0VyAA0C0V10I56OGcfu0_33_235e29e00f157aa478c2653b1dced7b5ANSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 48);
  do
  {
    v13 = result;
    v11 = v1;
    v4 = *(v3 - 2);
    v5 = *(v3 - 1);
    v6 = *v3;
    if (*v3)
    {
      v12 = 0;
      v7 = 0;
    }

    else
    {
      v8 = *(v3 - 2);
      outlined copy of MLRecommender.Identifier(v4, *(v3 - 1), 0);
      v5;
      v4 = v8;
      v12 = v8;
      v7 = v5;
    }

    outlined consume of MLRecommender.Identifier(v4, v5, v6);
    if (!v7)
    {
      BUG();
    }

    result = v13;
    v9 = v13[2];
    if (v13[3] >> 1 <= v9)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13[3] >= 2uLL, v9 + 1, 1);
      result = v13;
    }

    result[2] = v9 + 1;
    v10 = 2 * v9;
    result[v10 + 4] = v12;
    result[v10 + 5] = v7;
    v3 += 56;
    v1 = v11 - 1;
  }

  while (v11 != 1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I56OGcfu1_33_4b456801547331c5420659ef3fb1acd8ANSdTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 64);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 7;
    --v1;
  }

  while (v1);
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML21RecommendationMetricsVyAF13MLRecommenderV10IdentifierOGG_Sds5NeverOTg503_s8d4ML20hg52V24precisionRecallDataFrame07TabularG00gH0VvgSdAA014f12D0VyAA0C0V10I55OGcfu2_32decee44cba596fcf8548b73bd8347e89ANSdTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  result = _swiftEmptyArrayStorage;
  v3 = (a1 + 72);
  do
  {
    v4 = *v3;
    v7 = result;
    v5 = result[2];
    v6 = v5 + 1;
    if (result[3] >> 1 <= v5)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result[3] >= 2uLL, v6, 1);
      v6 = v5 + 1;
      result = v7;
    }

    result[2] = v6;
    result[v5 + 4] = v4;
    v3 += 7;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3);
    *a1 = result;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML21RecommendationMetricsVyAG13MLRecommenderV10IdentifierOGs5NeverOTg503_s8d4ML20hg66V15precisionRecall17excludingObservedAcA11MLDataTableV_SbtcfcAA014f12D0VyAA0C0V10I9OGSiXEfU_AG15MLUntypedColumnVA3STf1cn_nTm(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, char a8, uint64_t a9, char a10, void (*a11)(unint64_t *, uint64_t, void, uint64_t, void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v52 = a6;
  v49 = a5;
  v51 = a3;
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (a2 == a1)
  {
    outlined consume of Result<_DataTable, Error>(v51, a4);
    v15 = _swiftEmptyArrayStorage;
  }

  else
  {
    v46 = a1;
    v53 = a4;
    v50 = _swiftEmptyArrayStorage;
    v14 = 0;
    if (v12 > 0)
    {
      v14 = v12;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    if (v12 < 0)
    {
      BUG();
    }

    v15 = v50;
    v16 = v46;
    v39 = v46 - 1;
    v17 = 0;
    v36 = a10 & 1;
    v37 = a8 & 1;
    v47 = v53 & 1;
    v48 = v52 & 1;
    v38 = a2;
    v40 = v12;
    do
    {
      if (v17 >= v12)
      {
        BUG();
      }

      v18 = v17 + 1;
      if (__OFADD__(1, v17))
      {
        BUG();
      }

      v45 = v17;
      v35 = v16 + v17;
      a11(&v35, v51, v47, v49, v48, a7, v37, a9, v36);
      if (v11)
      {
        v15;
        outlined consume of Result<_DataTable, Error>(v51, v53);
        outlined consume of Result<_DataTable, Error>(v49, v52);
        outlined consume of Result<_DataTable, Error>(a7, a8);
        outlined consume of Result<_DataTable, Error>(a9, a10);
        BUG();
      }

      v19 = v30;
      v20 = v32;
      v21 = v33;
      v22 = v34;
      v50 = v15;
      v23 = v15[2];
      v24 = v15[3];
      v25 = v23 + 1;
      v26 = v45;
      if (v24 >> 1 <= v23)
      {
        v43 = v34;
        v42 = v32;
        v41 = 0;
        v44 = v23 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 >= 2, v25, 1);
        v25 = v44;
        v22 = v43;
        v21 = v33;
        v20 = v42;
        v19 = v30;
        v26 = v45;
        v11 = v41;
        v15 = v50;
      }

      v27 = 7 * v23;
      v15[2] = v25;
      *&v15[v27 + 4] = v19;
      LOBYTE(v15[v27 + 6]) = v31 & 1;
      v15[v27 + 7] = v20;
      *&v15[v27 + 8] = v21;
      v15[v27 + 10] = v22;
      v16 = v46;
      if (v38 < v46)
      {
        BUG();
      }

      if ((v26 + v39 + 1) >= v38)
      {
        BUG();
      }

      v17 = v18;
      v28 = v18 == v40;
      v12 = v40;
    }

    while (!v28);
    outlined consume of Result<_DataTable, Error>(v51, v53);
  }

  outlined consume of Result<_DataTable, Error>(v49, v52);
  outlined consume of Result<_DataTable, Error>(a7, a8);
  outlined consume of Result<_DataTable, Error>(a9, a10);
  return v15;
}

uint64_t MLRecommenderMetrics.precisionRecall.getter(__m128 a1)
{
  v2 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9[8] = *v1;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v5;
  swift_errorRetain(v7);
  MLRecommenderMetrics.precisionRecallDataFrame.getter();
  v5;
  v7;
  return MLDataTable.init(_:convertArraysToShapedArrays:)(v9, 0, a1);
}

void *MLRecommenderMetrics.init(precisionRecall:excludingObserved:)(uint64_t a1, char a2, double a3)
{
  v13 = v3;
  v5 = *(a1 + 8);
  v4 = *a1;
  outlined copy of Result<_DataTable, Error>(*a1, v5);
  v6._countAndFlagsBits = 0x64695F72657375;
  v6._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v6);
  outlined consume of Result<_DataTable, Error>(v4, v5 & 1);
  outlined copy of Result<_DataTable, Error>(v4, v5);
  v6._countAndFlagsBits = 0x6F69736963657270;
  v6._object = 0xE90000000000006ELL;
  MLDataTable.subscript.getter(v6);
  outlined consume of Result<_DataTable, Error>(v4, v5 & 1);
  outlined copy of Result<_DataTable, Error>(v4, v5);
  v6._countAndFlagsBits = 0x6C6C61636572;
  v6._object = 0xE600000000000000;
  MLDataTable.subscript.getter(v6);
  outlined consume of Result<_DataTable, Error>(v4, v5 & 1);
  v6._countAndFlagsBits = 0x66666F747563;
  v6._object = 0xE600000000000000;
  MLDataTable.subscript.getter(v6);
  outlined consume of Result<_DataTable, Error>(v4, v5 & 1);
  if (!v15)
  {
    outlined copy of Result<_DataTable, Error>(v14, 0);
    _UntypedColumn.valueAtIndex(index:)(0, a3);
    outlined consume of Result<_DataTable, Error>(v14, 0);
    switch(v16)
    {
      case 0:
        v7 = v14[2];
        outlined copy of Result<_DataTable, Error>(v14, 0);
        v8 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v14, 0);
        if (v8 < 0)
        {
          BUG();
        }

        result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML21RecommendationMetricsVyAG13MLRecommenderV10IdentifierOGs5NeverOTg503_s8d4ML20hg66V15precisionRecall17excludingObservedAcA11MLDataTableV_SbtcfcAA014f12D0VyAA0C0V10I9OGSiXEfU_AG15MLUntypedColumnVA3STf1cn_nTm(0, v8, v14, 0, v14, 0, v14, v15, v14, v15, closure #2 in MLRecommenderMetrics.init(precisionRecall:excludingObserved:));
        v10 = 1;
        goto LABEL_7;
      case 1:
      case 6:
        break;
      case 2:
        outlined consume of MLDataValue(v14, v15, 2);
        v11 = v14[2];
        outlined copy of Result<_DataTable, Error>(v14, 0);
        v12 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v14, 0);
        if (v12 < 0)
        {
          BUG();
        }

        v10 = 0;
        result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_8CreateML21RecommendationMetricsVyAG13MLRecommenderV10IdentifierOGs5NeverOTg503_s8d4ML20hg66V15precisionRecall17excludingObservedAcA11MLDataTableV_SbtcfcAA014f12D0VyAA0C0V10I9OGSiXEfU_AG15MLUntypedColumnVA3STf1cn_nTm(0, v12, v14, 0, v14, 0, v14, v15, v14, v15, closure #1 in MLRecommenderMetrics.init(precisionRecall:excludingObserved:));
LABEL_7:
        *v13 = v10;
        *(v13 + 8) = result;
        *(v13 + 16) = a2 & 1;
        *(v13 + 24) = 0;
        return result;
      case 3:
        outlined consume of MLDataValue(v14, v15, 3);
        break;
      case 4:
        outlined consume of MLDataValue(v14, v15, 4);
        break;
      case 5:
        outlined consume of MLDataValue(v14, v15, 5);
        break;
    }
  }

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, "menderMetrics.swift" + 0x8000000000000000, "CreateML/MLRecommenderMetrics.swift", 35, 2, 100, 0);
  BUG();
}

void closure #1 in MLRecommenderMetrics.init(precisionRecall:excludingObserved:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6)
{
  if ((a3 & 1) == 0)
  {
    v6 = *a1;
    outlined copy of Result<_DataTable, Error>(a2, 0);
    _UntypedColumn.valueAtIndex(index:)(v6, a6);
    outlined consume of Result<_DataTable, Error>(a2, 0);
    if (v10 == 2)
    {
      if ((a5 & 1) == 0)
      {
        outlined copy of Result<_DataTable, Error>(a4, 0);
        _UntypedColumn.valueAtIndex(index:)(v6, a6);
        outlined consume of Result<_DataTable, Error>(a4, 0);
        outlined consume of MLDataValue(v8, v9, v10);
      }

      BUG();
    }

    outlined consume of MLDataValue(v8, v9, v10);
  }

  BUG();
}

void closure #2 in MLRecommenderMetrics.init(precisionRecall:excludingObserved:)(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, double a7, char a8)
{
  if ((a3 & 1) == 0)
  {
    v8 = *a1;
    outlined copy of Result<_DataTable, Error>(a2, 0);
    _UntypedColumn.valueAtIndex(index:)(v8, a7);
    outlined consume of Result<_DataTable, Error>(a2, 0);
    if (!v13)
    {
      if ((a5 & 1) == 0)
      {
        outlined copy of Result<_DataTable, Error>(a4, 0);
        _UntypedColumn.valueAtIndex(index:)(v8, a7);
        outlined consume of Result<_DataTable, Error>(a4, 0);
        if ((a8 & 1) == 0)
        {
          outlined copy of Result<_DataTable, Error>(a6, 0);
          _UntypedColumn.valueAtIndex(index:)(v8, a7);
          outlined consume of Result<_DataTable, Error>(a6, 0);
          outlined consume of MLDataValue(v11, v12, v13);
        }

        BUG();
      }

      BUG();
    }

    outlined consume of MLDataValue(v11, v12, v13);
  }

  BUG();
}

uint64_t outlined copy of Result<_DataTable, Error>(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain(a1);
  }

  else
  {
    return a1;
  }
}

uint64_t outlined consume of Result<_DataTable, Error>(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t initializeWithCopy for MLRecommenderMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v3;
  swift_errorRetain(v4);
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithCopy for MLRecommenderMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v3;
  v4, a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  swift_errorRetain(v6);
  *(a1 + 24) = v6;
  v5;
  return a1;
}

uint64_t assignWithTake for MLRecommenderMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3, a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLRecommenderMetrics(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

void storeEnumTagSinglePayload for MLRecommenderMetrics(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 32) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 32) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t outlined copy of MLRecommender.Identifier(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return a2;
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData6ColumnVySaySdGGG_SSs5NeverOTg50114_s8CreateML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v14 = *(v2 + 72);
    do
    {
      v13 = v1;
      KeyPath = swift_getKeyPath(&unk_33D680);
      swift_getAtKeyPath(v3, KeyPath);

      v5 = v11;
      v6 = v12;
      v7 = _swiftEmptyArrayStorage[2];
      v8 = v7 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v7)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v8, 1);
        v6 = v12;
        v5 = v11;
      }

      _swiftEmptyArrayStorage[2] = v8;
      v9 = 2 * v7;
      _swiftEmptyArrayStorage[v9 + 4] = v5;
      _swiftEmptyArrayStorage[v9 + 5] = v6;
      v3 += v14;
      v1 = v13 - 1;
    }

    while (v13 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t one-time initialization function for _defaultSessionParameters()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLActivityClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLActivityClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 5;
  *(v1 + v4) = 10;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLHandPoseClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLHandPoseClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLRandomForestRegressor._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLRandomForestRegressor._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLLogisticRegressionClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLLogisticRegressionClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLDecisionTreeRegressor._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLDecisionTreeRegressor._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLImageClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLImageClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLActionClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLActionClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLHandActionClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLHandActionClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLRandomForestClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLRandomForestClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLBoostedTreeRegressor._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLBoostedTreeRegressor._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLDecisionTreeClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLDecisionTreeClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLSoundClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLSoundClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 50;
  *(v1 + v4) = 100;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLBoostedTreeClassifier._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLBoostedTreeClassifier._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, static MLLinearRegressor._defaultSessionParameters);
  v1 = __swift_project_value_buffer(v0, static MLLinearRegressor._defaultSessionParameters);
  v2 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  result = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + result) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLActivityClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLActivityClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t type metadata accessor for MLActivityClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier;
  if (!type metadata singleton initialization cache for MLActivityClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier);
  }

  return result;
}

void MLActivityClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLActivityClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLActivityClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLActivityClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

void MLActivityClassifier.model.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (a2)
  {
    v6 = *a1;

    *(v3 + v5) = v6;
  }

  else
  {

    *(v3 + v5) = v2;
  }
}

uint64_t MLActivityClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLActivityClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 24), v2, type metadata accessor for MLActivityClassifier.ModelParameters);
}

uint64_t MLActivityClassifier.trainingMetrics.getter(double a1, double a2)
{
  v4 = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v30 = *(v31 - 8);
  v5 = *(v30 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = &v28;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = &v28;
  v12 = *(type metadata accessor for MLActivityClassifier.Model(0) + 72);
  v13 = *(v3 + v12);
  if (v13)
  {
    v33 = v4;
    v14 = *(v3 + v12 + 8);
    v34 = &v28;
    v15 = *(v3 + v12 + 16);
    v29[3] = &type metadata for ClassificationMetricsContainer;
    v29[4] = &protocol witness table for ClassificationMetricsContainer;
    v29[0] = v13;
    v29[1] = v14;
    v29[2] = v15;
    v16 = __swift_project_boxed_opaque_existential_0Tm(v29, &type metadata for ClassificationMetricsContainer);
    v17 = *v16;
    v18 = v16[2];
    v19 = v15;
    v11 = v34;
    outlined copy of ClassificationMetricsContainer?(v13, v14, v19);

    static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(a1, a2, v17, v18, 0);

    v20 = type metadata accessor for MLClassifierMetrics(0);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v20);
    v4 = v33;
    if (EnumTagSinglePayload != 1)
    {
      return outlined init with take of MLClassifierMetrics(v11, v33, type metadata accessor for MLClassifierMetrics);
    }
  }

  else
  {
    v20 = type metadata accessor for MLClassifierMetrics(0);
    __swift_storeEnumTagSinglePayload(&v28, 1, 1, v20);
  }

  v22 = v32;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v24 = *(v23 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v22);
  v25 = *(v23 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v22);
  (*(v30 + 8))(v22, v31);
  *v4 = 0;
  v26 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v4, v26, 1);
  type metadata accessor for MLClassifierMetrics(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v20);
  if (result != 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for MLClassifierMetrics?);
  }

  return result;
}

uint64_t MLActivityClassifier.validationMetrics.getter(double a1, double a2)
{
  v4 = v2;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v30 = *(v31 - 8);
  v5 = *(v30 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = &v28;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = &v28;
  v12 = *(type metadata accessor for MLActivityClassifier.Model(0) + 72);
  v13 = *(v3 + v12);
  if (v13)
  {
    v33 = v4;
    v14 = *(v3 + v12 + 8);
    v34 = &v28;
    v15 = *(v3 + v12 + 16);
    v29[3] = &type metadata for ClassificationMetricsContainer;
    v29[4] = &protocol witness table for ClassificationMetricsContainer;
    v29[0] = v13;
    v29[1] = v14;
    v29[2] = v15;
    v16 = __swift_project_boxed_opaque_existential_0Tm(v29, &type metadata for ClassificationMetricsContainer);
    v17 = v16[1];
    v18 = v16[2];
    v19 = v15;
    v11 = v34;
    outlined copy of ClassificationMetricsContainer?(v13, v14, v19);

    static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(a1, a2, v17, v18, 0);

    v20 = type metadata accessor for MLClassifierMetrics(0);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v20);
    v4 = v33;
    if (EnumTagSinglePayload != 1)
    {
      return outlined init with take of MLClassifierMetrics(v11, v33, type metadata accessor for MLClassifierMetrics);
    }
  }

  else
  {
    v20 = type metadata accessor for MLClassifierMetrics(0);
    __swift_storeEnumTagSinglePayload(&v28, 1, 1, v20);
  }

  v22 = v32;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v24 = *(v23 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v22);
  v25 = *(v23 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v22);
  (*(v30 + 8))(v22, v31);
  *v4 = 0;
  v26 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v4, v26, 1);
  type metadata accessor for MLClassifierMetrics(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v20);
  if (result != 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, &demangling cache variable for type metadata for MLClassifierMetrics?);
  }

  return result;
}

uint64_t MLActivityClassifier.labelColumn.getter()
{
  v1 = *(type metadata accessor for MLActivityClassifier(0) + 32);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLActivityClassifier.labelColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLActivityClassifier(0) + 32);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLActivityClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLActivityClassifier(0) + 36);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLActivityClassifier.recordingFileColumn.getter()
{
  v1 = *(type metadata accessor for MLActivityClassifier(0) + 40);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLActivityClassifier.recordingFileColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLActivityClassifier(0) + 40);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, uint64_t a7)
{
  v50 = a3;
  v10 = v7;
  v40 = a2;
  v49 = v8;
  v39 = a6;
  v38 = a5;
  v48 = a1;
  v43 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) - 8);
  v42 = *(v43 + 64);
  v12 = alloca(v42);
  v13 = alloca(v42);
  v46 = &v37;
  v14 = type metadata accessor for MLActivityClassifier(0);
  v15 = *(*(v14 - 1) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v41 = &v37;
  v45 = *(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8);
  v18 = *(v45 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v47 = &v37;
  v44 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v23 = v14[7];
  *(v10 + v23) = 0x5F6E6F6973736573;
  *(v10 + v23 + 8) = 0xEA00000000006469;
  v24 = v14[8];
  *(v10 + v24) = 0x6C6562616CLL;
  *(v10 + v24 + 8) = 0xE500000000000000;
  *(v10 + v14[9]) = _swiftEmptyArrayStorage;
  v25 = v14[10];
  strcpy((v10 + v25), "recordingFile");
  *(v10 + v25 + 14) = -4864;
  v26 = v50;
  if (!a4)
  {
    v26 = 0x6C6562616CLL;
    a4 = 0xE500000000000000;
  }

  v50 = &v37;
  v27 = a2;
  v28 = v39;
  v29 = v49;
  MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(v27, v26, a4, v38, v39);
  a4;
  v40;
  v28;
  if (v29)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLActivityClassifier.ModelParameters);
    return outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLActivityClassifier.DataSource);
  }

  else
  {
    v49 = v10;
    outlined init with copy of MLTrainingSessionParameters(v50, v47, type metadata accessor for MLActivityClassifier.DataSource.Columns);
    outlined init with copy of MLTrainingSessionParameters(a7, v46, type metadata accessor for MLActivityClassifier.ModelParameters);
    v31 = *(v45 + 80);
    v32 = ~*(v45 + 80) & (v31 + 16);
    v33 = *(v43 + 80);
    v34 = ~v33 & (v32 + v33 + v44);
    v35 = swift_allocObject(&unk_38EF10, v34 + v42, v33 | v31 | 7);
    outlined init with take of MLClassifierMetrics(v47, v35 + v32, type metadata accessor for MLActivityClassifier.DataSource.Columns);
    outlined init with take of MLClassifierMetrics(v46, v35 + v34, type metadata accessor for MLActivityClassifier.ModelParameters);
    v36 = v41;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:), v35, &unk_38F268, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLActivityClassifier);
    v35;
    outlined destroy of MLActivityClassifier.ModelParameters(a7, type metadata accessor for MLActivityClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLActivityClassifier.DataSource);
    outlined destroy of MLActivityClassifier.ModelParameters(v50, type metadata accessor for MLActivityClassifier.DataSource.Columns);
    return outlined init with take of MLClassifierMetrics(v36, v49, type metadata accessor for MLActivityClassifier);
  }
}

uint64_t closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v3[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:), 0, 0);
}

uint64_t closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)()
{
  v1 = v0[5];
  v2 = v0[4];
  outlined init with copy of MLTrainingSessionParameters(v0[3], v0[6], type metadata accessor for MLActivityClassifier.DataSource.Columns);
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLActivityClassifier.ModelParameters);
  v3 = swift_task_alloc(144);
  v0[7] = v3;
  *v3 = v0;
  v3[1] = closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return MLActivityClassifier.init(trainingData:parameters:)(v0[2], v0[6], v0[5]);
}

{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:), 0, 0);
  }

  v5 = *(v3 + 40);
  *(v3 + 48);
  v5;
  return (*(v3 + 8))();
}

{
  v1 = *(v0 + 40);
  *(v0 + 48);
  v1;
  v2 = *(v0 + 64);
  return (*(v0 + 8))();
}

uint64_t MLActivityClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLActivityClassifier.Model(0);
  v3[5] = v4;
  v3[6] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v3[7] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
  v3[8] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLActivityClassifier.init(trainingData:parameters:), 0, 0);
}

uint64_t MLActivityClassifier.init(trainingData:parameters:)(__m128 a1)
{
  v46 = v1 | 0x1000000000000000;
  v45 = v2;
  v37 = *(v2 + 64);
  v3 = *(v2 + 16);
  v44 = *(v2 + 24);
  v4 = v44;
  v5 = type metadata accessor for MLActivityClassifier(0);
  *(v2 + 72) = v5;
  v6 = v5[7];
  *(v3 + v6) = 0x5F6E6F6973736573;
  *(v3 + v6 + 8) = 0xEA00000000006469;
  v39 = v5[8];
  v42 = v5;
  v43 = v5[9];
  v7 = *v4;
  v7;
  ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData6ColumnVySaySdGGG_SSs5NeverOTg50114_s8CreateML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm(v7);
  *(v2 + 80) = ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm;
  v7;
  *(v3 + v43) = ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm;
  v9 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v10 = v44 + *(v9 + 20);
  v43 = ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm;
  ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v12 = Column.name.getter(v11);
  v14 = v13;
  *(v2 + 88) = v13;
  v36 = v12;
  *(v3 + v39) = v12;
  *(v3 + v39 + 8) = v13;
  v15 = *(v9 + 24);
  v16 = v11;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44 + v15, v37, &demangling cache variable for type metadata for Column<String>?);
  LODWORD(v11) = __swift_getEnumTagSinglePayload(v37, 1, v11);
  v44 = v14;
  v14;
  v17 = *(v2 + 64);
  if (v11 == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v2 + 64), &demangling cache variable for type metadata for Column<String>?);
    v18 = 0xED0000656C694667;
    v19 = 0x6E6964726F636572;
  }

  else
  {
    v19 = Column.name.getter(v16);
    v18 = v20;
    (*(*(v16 - 8) + 8))(v17, v16);
  }

  *(v2 + 96) = v18;
  v21 = *(v2 + 32);
  v22 = *(v2 + 16);
  v23 = *(v2 + 24);
  v24 = v42;
  v25 = v42[10];
  v38 = v19;
  *(v22 + v25) = v19;
  *(v22 + v25 + 8) = v18;
  v26 = v24[6];
  *(v2 + 128) = v26;
  outlined init with copy of MLTrainingSessionParameters(v21, v26 + v22, type metadata accessor for MLActivityClassifier.ModelParameters);
  v27 = v18;
  v18;
  MLActivityClassifier.DataSource.Columns.convertToTuriCore()();
  v28 = *(v2 + 32);
  v29 = *(v2 + 56);
  v30 = v40;
  *(v2 + 104) = v40;
  v31 = v44;
  v32 = v41;
  *(v2 + 132) = v41;
  v40 = v30;
  v41 = v32;
  v33 = v43;
  static MLActivityClassifier.validateAndConvertParameters(_:featureColumns:labelColumn:recordingFileColumn:table:)(v28, v43, v36, v31, v38, v27, a1, &v40);
  v27;
  v33;
  v31;
  v34 = swift_task_alloc(144);
  *(v2 + 112) = v34;
  *v34 = v2;
  v34[1] = MLActivityClassifier.init(trainingData:parameters:);
  return static MLActivityClassifier.train(with:)(*(v2 + 48), *(v2 + 56));
}

uint64_t MLActivityClassifier.init(trainingData:parameters:)()
{
  v2 = *(*v1 + 112);
  *(*v1 + 120) = v0;
  v2;
  if (v0)
  {
    v3 = MLActivityClassifier.init(trainingData:parameters:);
  }

  else
  {
    v3 = MLActivityClassifier.init(trainingData:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  outlined init with take of MLClassifierMetrics(*(v0 + 48), v1, type metadata accessor for MLActivityClassifier.Model);
  v3 = *(v1 + *(v2 + 68));
  if (!v3)
  {
    BUG();
  }

  v11 = *(v0 + 104);
  v9 = *(v0 + 64);
  v10 = *(v0 + 56);
  v8 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 24);
  v6 = *(v0 + 132);
  *(*(v0 + 16) + *(*(v0 + 72) + 20)) = v3;
  v3;
  MLActivityClassifier.reportAnalytics(columns:parameters:)(v5, v4);
  outlined consume of Result<_DataTable, Error>(v11, v6);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLActivityClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLActivityClassifier.DataSource.Columns);
  outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLActivityClassifier.Configuration);
  v9;
  v10;
  v8;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  outlined consume of Result<_DataTable, Error>(*(v0 + 104), *(v0 + 132));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLActivityClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLActivityClassifier.DataSource.Columns);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLActivityClassifier.Configuration);
  v9 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 16) + *(v0 + 128), type metadata accessor for MLActivityClassifier.ModelParameters);
  v5;
  v6;
  v4;
  v7;
  v11;
  v10;
  return (*(v0 + 8))();
}

void specialized blockAwait<A>(_:)(uint64_t a1, uint64_t a2)
{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F1F0, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), &type metadata accessor for URL);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F1C8, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLHandPoseClassifier);
}

{
  v26 = v2;
  v23 = a1;
  v3 = type metadata accessor for ResultBox();
  v4 = swift_allocObject(v3, 49, 7);
  v22 = v4 + 16;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = -1;
  v24 = dispatch_semaphore_create(0);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v15;
  v8 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v15, 1, 1, v8);
  v9 = swift_allocObject(&unk_38F1A0, 64, 7);
  *(v9 + 16) = 0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v23;
  *(v9 + 48) = a2;
  v10 = v24;
  *(v9 + 56) = v24;

  v11 = v10;
  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v25, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), v9);

  OS_dispatch_semaphore.wait()();
  v12 = v22;
  swift_beginAccess(v22, v17, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v18, &demangling cache variable for type metadata for Result<Any, Error>?);
  if (v19 == -1)
  {
    BUG();
  }

  if (v19)
  {
    v21 = *&v18[0];
    if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xFuLL, 0, 0, 0x12uLL, 0, 0))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      swift_willThrowTypedImpl(&v21, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    outlined init with take of Any(v18, v16);

    v14 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
    swift_dynamicCast(v20, v16, &type metadata for Any + 8, v14, 7);
  }
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F0D8, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLClassifierMetrics);
}

{
  v25 = v3;
  v22 = a1;
  v26 = v2;
  v4 = type metadata accessor for ResultBox();
  v5 = swift_allocObject(v4, 49, 7);
  v21 = v5 + 16;
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 48) = -1;
  v23 = dispatch_semaphore_create(0);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v24 = &v15;
  v9 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v15, 1, 1, v9);
  v10 = swift_allocObject(&unk_38F178, 64, 7);
  *(v10 + 16) = 0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v22;
  *(v10 + 48) = a2;
  v11 = v23;
  *(v10 + 56) = v23;

  v12 = v11;
  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v24, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), v10);

  OS_dispatch_semaphore.wait()();
  v13 = v21;
  swift_beginAccess(v21, v17, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, v18, &demangling cache variable for type metadata for Result<Any, Error>?);
  if (v19 == -1)
  {
    BUG();
  }

  if (v19)
  {
    v20 = *&v18[0];
    if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xFuLL, 0, 0, 0x12uLL, 0, 0))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      swift_willThrowTypedImpl(&v20, v14, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    outlined init with take of Any(v18, v16);

    swift_dynamicCast(v26, v16, &type metadata for Any + 8, &type metadata for MLRegressorMetrics, 7);
  }
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F150, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLStyleTransfer);
}

{
  v26 = v2;
  v23 = a1;
  v3 = type metadata accessor for ResultBox();
  v4 = swift_allocObject(v3, 49, 7);
  v22 = v4 + 16;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = -1;
  v24 = dispatch_semaphore_create(0);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v25 = &v15;
  v8 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v15, 1, 1, v8);
  v9 = swift_allocObject(&unk_38F128, 64, 7);
  *(v9 + 16) = 0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v23;
  *(v9 + 48) = a2;
  v10 = v24;
  *(v9 + 56) = v24;

  v11 = v10;
  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v25, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), v9);

  OS_dispatch_semaphore.wait()();
  v12 = v22;
  swift_beginAccess(v22, v17, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v18, &demangling cache variable for type metadata for Result<Any, Error>?);
  if (v19 == -1)
  {
    BUG();
  }

  if (v19)
  {
    v21 = *&v18[0];
    if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xFuLL, 0, 0, 0x12uLL, 0, 0))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      swift_willThrowTypedImpl(&v21, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    outlined init with take of Any(v18, v16);

    v14 = type metadata accessor for _Model();
    swift_dynamicCast(v20, v16, &type metadata for Any + 8, v14, 7);
  }
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F100, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), &type metadata accessor for AnyColumn);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F0B0, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLImageClassifier);
}

{
  v25 = v2;
  v22 = a1;
  v3 = type metadata accessor for ResultBox();
  v4 = swift_allocObject(v3, 49, 7);
  v21 = v4 + 16;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = -1;
  v23 = dispatch_semaphore_create(0);
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v24 = v15;
  v8 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
  v9 = swift_allocObject(&unk_38F088, 64, 7);
  *(v9 + 16) = 0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v22;
  *(v9 + 48) = a2;
  v10 = v23;
  *(v9 + 56) = v23;

  v11 = v10;
  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v24, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), v9);

  OS_dispatch_semaphore.wait()();
  v12 = v21;
  swift_beginAccess(v21, v16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v12, v18, &demangling cache variable for type metadata for Result<Any, Error>?);
  if (v19 == -1)
  {
    BUG();
  }

  if (v19)
  {
    v20 = *&v18[0];
    if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xFuLL, 0, 0, 0x12uLL, 0, 0))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      swift_willThrowTypedImpl(&v20, v13, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    outlined init with take of Any(v18, v15);

    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ([AnnotatedFeature<CIImage, String>], [AnnotatedFeature<CIImage, String>]));
    swift_dynamicCast(v17, v15, &type metadata for Any + 8, v14, 7);
  }
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F060, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), &demangling cache variable for type metadata for [(predicted: String, label: String)]);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F038, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLActionClassifier);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38F010, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLHandActionClassifier);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38EFE8, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLSoundClassifier);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38EF98, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), &demangling cache variable for type metadata for [AnnotatedPrediction<ClassificationDistribution<String>, String>]);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38EFC0, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLSoundClassifier.Model);
}

{
  specialized blockAwait<A>(_:)(a1, a2, &unk_38EF70, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), &demangling cache variable for type metadata for [ClassificationDistribution<String>]);
}

void specialized blockAwait<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v34 = a5;
  v27 = a4;
  v32 = v6;
  v29 = a1;
  v33 = v5;
  v8 = type metadata accessor for ResultBox();
  v9 = swift_allocObject(v8, 49, 7);
  v28 = v9 + 16;
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = -1;
  v30 = dispatch_semaphore_create(0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = &v21;
  v13 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v21, 1, 1, v13);
  v14 = swift_allocObject(a3, 64, 7);
  *(v14 + 16) = 0;
  *(v14 + 32) = v9;
  *(v14 + 40) = v29;
  *(v14 + 48) = a2;
  v15 = v30;
  *(v14 + 56) = v30;
  v9;
  a2;
  v16 = v15;
  v17 = _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v31, v27, v14);
  v17;
  OS_dispatch_semaphore.wait()();
  v18 = v28;
  swift_beginAccess(v28, v23, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v18, v24, &demangling cache variable for type metadata for Result<Any, Error>?);
  if (v25 == -1)
  {
    BUG();
  }

  if (v25)
  {
    v26 = *&v24[0];
    if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xFuLL, 0, 0, 0x12uLL, 0, 0))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      swift_willThrowTypedImpl(&v26, v19, &protocol self-conformance witness table for Error);
    }

    v9;
  }

  else
  {
    outlined init with take of Any(v24, v22);
    v9;

    v20 = v34(0);
    swift_dynamicCast(v33, v22, &type metadata for Any + 8, v20, 7);
  }
}

void specialized blockAwait<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v32 = a5;
  v26 = a4;
  v31 = v5;
  v28 = a1;
  v7 = type metadata accessor for ResultBox();
  v8 = swift_allocObject(v7, 49, 7);
  v27 = v8 + 16;
  *(v8 + 16) = 0;
  *(v8 + 32) = 0;
  *(v8 + 48) = -1;
  v29 = dispatch_semaphore_create(0);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v30 = &v19;
  v12 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v19, 1, 1, v12);
  v13 = swift_allocObject(a3, 64, 7);
  *(v13 + 16) = 0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v28;
  *(v13 + 48) = a2;
  v14 = v29;
  *(v13 + 56) = v29;

  v15 = v14;
  _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v30, v26, v13);

  OS_dispatch_semaphore.wait()();
  v16 = v27;
  swift_beginAccess(v27, v21, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v22, &demangling cache variable for type metadata for Result<Any, Error>?);
  if (v23 == -1)
  {
    BUG();
  }

  if (v23)
  {
    v25 = *&v22[0];
    if (_stdlib_isOSVersionAtLeastOrVariantVersionAtLeast(_:_:_:_:_:_:)(0xFuLL, 0, 0, 0x12uLL, 0, 0))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      swift_willThrowTypedImpl(&v25, v17, &protocol self-conformance witness table for Error);
    }
  }

  else
  {
    outlined init with take of Any(v22, v20);

    v18 = __swift_instantiateConcreteTypeFromMangledName(v32);
    swift_dynamicCast(v24, v20, &type metadata for Any + 8, v18, 7);
  }
}

uint64_t MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, __m128 a7, uint64_t a8)
{
  v75 = a4;
  v74._countAndFlagsBits = a3;
  v10 = v8;
  v78 = v9;
  v81 = a6;
  v83 = a5;
  v70 = type metadata accessor for MLActivityClassifier.Model(0);
  v11 = *(*(v70 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v67 = &v62;
  v69 = *(type metadata accessor for MLActivityClassifier.Configuration(0) - 8);
  v14 = *(v69 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v72 = &v62;
  v68 = v14;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v74._object = &v62;
  v82 = *a1;
  v19 = *(a1 + 8);
  v20 = type metadata accessor for MLActivityClassifier(0);
  v21 = *(v20 + 28);
  *(v10 + v21) = 0x5F6E6F6973736573;
  v66 = v10;
  *(v10 + v21 + 8) = 0xEA00000000006469;
  if (!*(a2 + 16))
  {
    outlined consume of Result<_DataTable, Error>(v82, v19);
    a2;
    v75;
    v81;
    v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    *v26 = 0xD000000000000035;
    *(v26 + 8) = "Prediction Window Size" + 0x8000000000000000;
    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
    *(v26 + 48) = 0;
    swift_willThrow();
    v27 = type metadata accessor for MLActivityClassifier.ModelParameters;
    v28 = a8;
    return outlined destroy of MLActivityClassifier.ModelParameters(v28, v27);
  }

  v73 = v20;
  v64 = v82;
  v65 = v19 & 1;
  v76 = a2;
  v22 = v78;
  v23 = v75;
  validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(&v64, a2, v74._countAndFlagsBits, v75, v83, v81, a7);
  if (v22)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLActivityClassifier.ModelParameters);
    v76;
    v23;
    v81;
    return outlined consume of Result<_DataTable, Error>(v82, v19);
  }

  v84 = v19 & 1;
  v85 = v19;
  v77 = v79;
  LOBYTE(v78) = v80;
  object = v74._object;
  static MLActivityClassifier.validateAndConvertParameters(_:featureColumns:labelColumn:recordingFileColumn:table:)(a8, v76, v74._countAndFlagsBits, v23, v83, v81, a7, &v79);
  v30 = v73;
  v31 = v73[8];
  v32 = v73[10];
  v33 = object;
  v34 = v66;
  *(v66 + v73[9]) = v76;
  *(v34 + v31) = v74._countAndFlagsBits;
  *(v34 + v31 + 8) = v23;
  *(v34 + v32) = v83;
  *(v34 + v32 + 8) = v81;
  v71 = v34 + v30[6];
  outlined init with copy of MLTrainingSessionParameters(a8, v71, type metadata accessor for MLActivityClassifier.ModelParameters);
  v83 = 0;
  outlined init with copy of MLTrainingSessionParameters(v33, v72, type metadata accessor for MLActivityClassifier.Configuration);
  v35 = *(v69 + 80);
  v36 = v23;
  v37 = ~*(v69 + 80) & (v35 + 16);
  v38 = swift_allocObject(&unk_38EF38, v37 + v68, v35 | 7);
  outlined init with take of MLClassifierMetrics(v72, v38 + v37, type metadata accessor for MLActivityClassifier.Configuration);
  v36;
  v39 = v67;
  v40 = v83;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:), v38, &unk_38F218, &async function pointer to partial apply for specialized closure #1 in blockAwait<A>(_:), type metadata accessor for MLActivityClassifier.Model);

  if (!v40)
  {
    outlined init with take of MLClassifierMetrics(v39, v34, type metadata accessor for MLActivityClassifier.Model);
    v42 = *(v34 + *(v70 + 68));
    v43 = v78;
    if (!v42)
    {
      BUG();
    }

    *(v34 + v73[5]) = v42;
    v42;
    if (AnalyticsReporter.init()())
    {
      outlined consume of Result<_DataTable, Error>(v77, v43);
      outlined consume of Result<_DataTable, Error>(v82, v85);
      v75;
      v44 = a8;
    }

    else
    {
      v83 = 0;
      v45 = v82;
      v79 = v82;
      v80 = v84;
      outlined copy of Result<_DataTable, Error>(v82, v85);
      v46 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v79, v80);
      AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__((" must be Int or String." + 0x8000000000000000), 0xD000000000000015), v46);
      v79 = v45;
      v80 = v84;
      v47._countAndFlagsBits = v74._countAndFlagsBits;
      v48 = v75;
      v47._object = v75;
      MLDataTable.subscript.getter(v47);
      v48;
      outlined consume of Result<_DataTable, Error>(v79, v80);
      v62 = v64;
      v63 = v65;
      MLUntypedColumn.dropDuplicates()();
      outlined consume of Result<_DataTable, Error>(v62, v63);
      v49 = v79;
      if (v80)
      {
        outlined consume of Result<_DataTable, Error>(v79, 1);
        v50 = -1.0;
      }

      else
      {
        v51 = *(v79 + 16);

        v52 = CMLColumn.size.getter();
        outlined consume of Result<_DataTable, Error>(v49, 0);
        outlined consume of Result<_DataTable, Error>(v49, 0);
        v50 = v52;
      }

      v53 = v77;
      AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), v50);
      v54 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
      v55 = v54[6];
      v56 = 0.0;
      if (!*(a8 + v55 + 8))
      {
        v56 = *(a8 + v55);
      }

      AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), v56);
      v57 = v54[7];
      v58 = 0.0;
      if (!*(a8 + v57 + 8))
      {
        v58 = *(a8 + v57);
      }

      AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), v58);
      v59 = v54[8];
      v60 = 0.0;
      if (!*(a8 + v59 + 8))
      {
        v60 = *(a8 + v59);
      }

      AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(("Number of Labels" + 0x8000000000000000), 0xD000000000000016), v60);
      outlined consume of Result<_DataTable, Error>(v53, v78);
      v44 = a8;
    }

    v61 = v74._object;
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLActivityClassifier.ModelParameters);
    v27 = type metadata accessor for MLActivityClassifier.Configuration;
    v28 = v61;
    return outlined destroy of MLActivityClassifier.ModelParameters(v28, v27);
  }

  outlined consume of Result<_DataTable, Error>(v77, v78);
  outlined consume of Result<_DataTable, Error>(v82, v85);
  v41 = v75;
  v75;
  outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLActivityClassifier.ModelParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v74._object, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLActivityClassifier.ModelParameters);
  v81;
  v76;
  return v41;
}

uint64_t validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, __m128 a7)
{
  v251.i64[0] = a4;
  v236._object = a3;
  v223 = v7;
  v255 = v8;
  v235 = a6;
  v236._countAndFlagsBits = a5;
  v243 = type metadata accessor for Date(0);
  v244._countAndFlagsBits = v243[-1].i64[1];
  v9 = *(v244._countAndFlagsBits + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v250 = v220;
  v252 = type metadata accessor for _TablePrinter(0);
  v12 = *(*(v252 - 1) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v246 = v220;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v18 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v17, &protocol witness table for String);
  v241 = _swiftEmptyArrayStorage;
  v242 = _swiftEmptyArrayStorage;
  v254 = v15;
  v258.i64[0] = v15;
  v260 = v16;
  v258.i8[8] = v16;
  v230._object = *(a2 + 16);
  object = v230._object + 2;
  if (__OFADD__(2, v230._object))
  {
    BUG();
  }

  v253 = v18;
  v251.i64[0];
  v235;
  a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(a2);
  if (!isUniquelyReferenced_nonNull_native || (inited = a2, *(a2 + 24) >> 1 < object))
  {
    if (v230._object > object)
    {
      object = v230._object;
    }

    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, object, 1, a2);
  }

  v245 = a2;
  v22 = inited[2];
  v247 = inited[3];
  v23 = v247 >> 1;
  v24 = v22 + 1;
  v251.i64[0];
  if (v23 <= v22)
  {
    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v247 >= 2, v22 + 1, 1, inited);
  }

  v25 = v236._object;
  inited[2] = v24;
  v26 = 2 * v22;
  inited[v26 + 4] = v25;
  inited[v26 + 5] = v251.i64[0];
  v247 = inited[3];
  v27 = v247 >> 1;
  v28 = v22 + 2;
  v235;
  if (v27 < v28)
  {
    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v247 >= 2, v28, 1, inited);
  }

  v29 = v245;
  inited[2] = v28;
  v30 = 2 * v24;
  inited[v30 + 4] = v236._countAndFlagsBits;
  v31 = v235;
  inited[v30 + 5] = v235;
  v32 = v31;
  v251.i64[0];
  v32;
  v33 = v255;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v258, 0x6420726F736E6553, 0xEB00000000617461, inited);
  if (v33)
  {
    goto LABEL_12;
  }

  inited;
  v35 = v254;
  v258.i64[0] = v254;
  v258.i8[8] = v260;
  LOBYTE(v256) = 3;
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v258, v29, &v256);
  v255 = 0;
  v258.i64[0] = v35;
  v258.i8[8] = v260;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v37, v220);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = v236._object;
  v38 = v251.i64[0];
  inited[5] = v251.i64[0];
  inited[6] = v236._countAndFlagsBits;
  inited[7] = v32;
  v39 = v32;
  LOBYTE(v256) = 2;
  v38;
  v32;
  v40 = v255;
  static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v258, inited, &v256);
  if (v40)
  {
LABEL_12:
    v253;
    v34 = inited;
    return v34;
  }

  v255 = 0;
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v258.i64[0] = v254;
  v258.i8[8] = v260;
  v41 = v260;
  outlined copy of Result<_DataTable, Error>(v254, v260);
  v42._countAndFlagsBits = v236._countAndFlagsBits;
  v42._object = v39;
  MLDataTable.subscript.getter(v42);
  outlined consume of Result<_DataTable, Error>(v258.i64[0], v258.i8[8]);
  v43 = v256;
  if (v257)
  {
    outlined consume of Result<_DataTable, Error>(v256, 1);
  }

  else
  {

    _UntypedColumn.valueAtIndex(index:)(0, *a7.i64);
    outlined consume of Result<_DataTable, Error>(v43, 0);
    outlined consume of Result<_DataTable, Error>(v43, 0);
    if (v259 == 2)
    {
      v248 = v258.i64[1];
      v237 = v258.i64[0];
      goto LABEL_23;
    }

    outlined consume of MLDataValue(v258.i64[0], v258.i64[1], v259);
  }

  v237 = 0;
  v248 = 0;
LABEL_23:
  v44 = v254;
  v258.i64[0] = v254;
  v258.i8[8] = v260;
  outlined copy of Result<_DataTable, Error>(v254, v41);
  outlined copy of Result<_DataTable, Error>(v44, v41);
  v45 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v258.i64[0], v258.i8[8]);
  v46 = specialized RandomAccessCollection<>.distance(from:to:)(0, v45, v254, v41);
  LODWORD(v247) = v41;
  v231 = v46;
  v47 = v254;
  outlined consume of Result<_DataTable, Error>(v254, v41);
  v48 = v252;
  v49 = v246;
  v50 = v246 + v252[5];
  Date.init()(v47);
  *v49 = v231;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  v51 = OS_os_log.init(subsystem:category:)(0xD000000000000025, "MLActivityClassifierTrainer" + 0x8000000000000000, 0x72705F656C626174, 0xED00007265746E69);
  v52 = v48[6];
  v225 = v51;
  *(v49 + v52) = v51;
  v53 = v48[7];
  *(v49 + v53) = 0x73656C6946;
  *(v49 + v53 + 8) = 0xE500000000000000;
  v54 = v250;
  Date.init()(0xD000000000000025);
  (*(v244._countAndFlagsBits + 40))(v50, v54, v243);
  v55 = v260;
  _TablePrinter.beginTable()();
  v258.i64[0] = v254;
  v258.i8[8] = v55;
  LOBYTE(v50) = v247;
  outlined copy of Result<_DataTable, Error>(v254, v247);
  outlined copy of Result<_DataTable, Error>(v254, v50);
  v56 = MLDataTable.size.getter();
  v57 = v254;
  v243 = v56;
  outlined consume of Result<_DataTable, Error>(v258.i64[0], v258.i8[8]);
  v58 = specialized RandomAccessCollection<>.distance(from:to:)(0, v243, v57, v50);
  outlined consume of Result<_DataTable, Error>(v57, v50);
  if (v58 < 0)
  {
    BUG();
  }

  v59 = v245;
  v60 = v255;
  if (v58)
  {
    if (!v230._object)
    {
      BUG();
    }

    v231 = (v245 + 4);
    v224 = "ml.activityclassifier" + 0x8000000000000000;
    v228 = "ot exist on row " + 0x8000000000000000;
    v238 = 0;
    v61 = 0;
    v62 = v247;
    v227 = v58;
    do
    {
      v255 = v60;
      currentFileIndex = v61;
      v63 = v59[4];
      v64 = v59[5];
      v258.i64[0] = v254;
      v258.i8[8] = v55;
      outlined copy of Result<_DataTable, Error>(v254, v62);
      v64;
      v230._countAndFlagsBits = v63;
      v65._countAndFlagsBits = v63;
      v65._object = v64;
      MLDataTable.subscript.getter(v65);
      v229 = v64;
      v64;
      outlined consume of Result<_DataTable, Error>(v258.i64[0], v258.i8[8]);
      v66 = v256;
      if (v257)
      {
        outlined consume of Result<_DataTable, Error>(v256, 1);
LABEL_150:
        BUG();
      }

      _UntypedColumn.valueAtIndex(index:)(currentFileIndex, *a7.i64);
      outlined consume of Result<_DataTable, Error>(v66, 0);
      outlined consume of Result<_DataTable, Error>(v66, 0);
      v67 = v258;
      if (v259 != 3)
      {
        outlined consume of MLDataValue(v258.i64[0], v258.i64[1], v259);
        goto LABEL_150;
      }

      v68 = CMLSequence.size.getter();
      v69 = specialized RandomAccessCollection<>.distance(from:to:)(0, v68);
      outlined consume of MLDataValue(v67.i64[0], v67.i64[1], 3);
      v234 = v69;
      if (v69 <= 0)
      {
        v248;
        v242;
        v241;
        v258.i64[0] = 0;
        v258.i64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v208._countAndFlagsBits = 0x2065727574616546;
        v208._object = 0xEF206E6D756C6F63;
        String.append(_:)(v208);
        v209 = v229;
        v229;
        v208._countAndFlagsBits = v230._countAndFlagsBits;
        v208._object = v209;
        String.append(_:)(v208);
        v209;
        v210._object = "Swift/Dictionary.swift" + 0x8000000000000000;
        v210._countAndFlagsBits = 0xD000000000000011;
        goto LABEL_132;
      }

      v226 = currentFileIndex + 1;
      v245;
      v70 = 0;
      do
      {
        v71 = *(v231 + 16 * v70);
        v72 = *(v231 + 16 * v70 + 8);
        v244._countAndFlagsBits = v71;
        v243 = v70;
        if (v55)
        {
          v73 = v254;
          swift_willThrow();
          outlined copy of Result<_DataTable, Error>(v73, 1);
          v72;
          v255 = 0;
          goto LABEL_41;
        }

        v74 = v254;
        v75 = v254[2];
        v252 = v72;
        if ((v72 & 0x1000000000000000) == 0)
        {
          if ((v72 & 0x2000000000000000) != 0)
          {
            v258.i64[0] = v71;
            v258.i64[1] = v72 & 0xFFFFFFFFFFFFFFLL;
            v79 = *(v75 + 16);
            outlined copy of Result<_DataTable, Error>(v254, 0);
            v72;

            v80 = v255;
            v81 = specialized handling<A, B, C>(_:_:_:)(v79, &v258);
            if (v80)
            {
              goto LABEL_39;
            }

            v87 = v81;
            v255 = 0;
            if (!v81)
            {
              BUG();
            }

            v88 = type metadata accessor for CMLColumn();
            v89 = swift_allocObject(v88, 24, 7);
            v89[2] = v87;
            v256 = v89;

            v90 = v74;
LABEL_48:
            outlined consume of Result<_DataTable, Error>(v90, 0);
            goto LABEL_49;
          }

          if ((v71 & 0x1000000000000000) != 0)
          {
            v76 = *(v75 + 16);
            outlined copy of Result<_DataTable, Error>(v254, 0);
            v72;

            v77 = v255;
            v78 = specialized handling<A, B, C>(_:_:_:)(v76, (v72 & 0xFFFFFFFFFFFFFFFLL) + 32);
            if (v77)
            {
              v77;

              v255 = 0;
              v73 = v254;
              goto LABEL_40;
            }

            v91 = v78;
            v255 = 0;
            if (!v78)
            {
              BUG();
            }

            v92 = type metadata accessor for CMLColumn();
            v93 = swift_allocObject(v92, 24, 7);
            v93[2] = v91;
            v256 = v93;

            v90 = v254;
            goto LABEL_48;
          }
        }

        outlined copy of Result<_DataTable, Error>(v254, 0);
        v250 = type metadata accessor for CMLColumn();
        v72;

        v80 = v255;
        _StringGuts._slowWithCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v75, v244._countAndFlagsBits, v72, v250);
        if (v80)
        {
LABEL_39:
          v80;

          v255 = 0;
          v73 = v74;
LABEL_40:
          v72 = v252;
LABEL_41:
          v258.i64[0] = 0;
          v258.i64[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(34);
          v258.i64[1];
          v258.i64[0] = 0xD00000000000001FLL;
          v258.i64[1] = v224;
          v82._countAndFlagsBits = v244._countAndFlagsBits;
          v82._object = v72;
          String.append(_:)(v82);
          v82._countAndFlagsBits = 34;
          v82._object = 0xE100000000000000;
          String.append(_:)(v82);
          v244 = v258;
          v83 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v84 = swift_allocError(&type metadata for MLCreateError, v83, 0, 0);
          *v85 = v244;
          a7.i64[0] = 0;
          *(v85 + 16) = 0;
          *(v85 + 32) = 0;
          *(v85 + 48) = 1;
          outlined consume of Result<_DataTable, Error>(v73, v247);
          outlined consume of Result<_DataTable, Error>(v84, 1);
          v72;
          v86 = v251.i64[0];
          v55 = v260;
          goto LABEL_42;
        }

        v255 = 0;

        outlined consume of Result<_DataTable, Error>(v74, 0);
LABEL_49:
        v94 = v256;
        v95 = type metadata accessor for _UntypedColumn();
        v96 = swift_allocObject(v95, 24, 7);
        *(v96 + 16) = v94;

        _UntypedColumn.valueAtIndex(index:)(currentFileIndex, *a7.i64);
        outlined consume of Result<_DataTable, Error>(v96, 0);
        outlined consume of Result<_DataTable, Error>(v96, 0);
        v97 = v258.i64[0];
        if (v259 != 3)
        {
          outlined consume of MLDataValue(v258.i64[0], v258.i64[1], v259);
          v252;
          v86 = v251.i64[0];
          v55 = v260;
          goto LABEL_42;
        }

        v239 = v258.i64[1];

        v98 = CMLSequence.size.getter();
        v99 = CMLSequence.size.getter();
        v100 = v245;
        if (v99 < 0)
        {
          BUG();
        }

        v101 = CMLSequence.size.getter();
        v240 = v97;
        outlined consume of MLDataValue(v97, v239, 3);
        if (v98 < 0 || v101 < v98)
        {
          BUG();
        }

        if (v98 != v234)
        {
          v100;
          v248;
          v242;
          v241;
          v258.i64[0] = 0;
          v258.i64[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(84);
          v201._object = "Extracting features for File " + 0x8000000000000000;
          v201._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v201);
          v201._countAndFlagsBits = v244._countAndFlagsBits;
          v202 = v252;
          v201._object = v252;
          String.append(_:)(v201);
          v202;
          v201._countAndFlagsBits = 0x20646E6120;
          v201._object = 0xE500000000000000;
          String.append(_:)(v201);
          v203 = v229;
          v229;
          v201._countAndFlagsBits = v230._countAndFlagsBits;
          v201._object = v203;
          String.append(_:)(v201);
          v203;
          v201._countAndFlagsBits = 0x20776F72206E6F20;
          v201._object = 0xE800000000000000;
          String.append(_:)(v201);
          v256 = currentFileIndex;
          v204 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v206 = v205;
          v201._countAndFlagsBits = v204;
          v201._object = v205;
          String.append(_:)(v201);
          v206;
          v201._object = "Label does not exist on row " + 0x8000000000000000;
          v201._countAndFlagsBits = 0xD000000000000015;
          String.append(_:)(v201);
          v251 = v258;
          v201._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v201._object, 0, 0);
          *v207 = v251;
          *(v207 + 16) = 0;
          *(v207 + 32) = 0;
          *(v207 + 48) = 1;
          swift_willThrow();
          outlined consume of MLDataValue(v240, v239, 3);
          goto LABEL_133;
        }

        v102 = CMLSequence.size.getter();
        if (CMLSequence.size.getter() < 0)
        {
          BUG();
        }

        v103 = CMLSequence.size.getter();
        if (v102 < 0 || v103 < v102)
        {
          BUG();
        }

        if (v102)
        {
          v258.i64[0] = _swiftEmptyArrayStorage;
          v232 = v102;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v102, 0);
          v250 = v258.i64[0];
          v104 = 0;
          while (2)
          {
            v105 = v255;
            v106 = CMLSequence.value(at:)(v104);
            if (v105)
            {
              v216 = "CreateML/SequenceType.swift";
              v217 = 27;
              v218 = 36;
              v219 = v105;
            }

            else
            {
              v107 = v106;
              switch(CMLFeatureValue.type.getter())
              {
                case 0u:
                  v108 = *(v107 + 16);

                  v109 = specialized handling<A, B>(_:_:)(v108);
                  v255 = 0;
                  LODWORD(v108) = v109;
                  v107, 2;
                  *a7.i64 = v108;
                  goto LABEL_63;
                case 1u:
                  v110 = *(v107 + 16);

                  specialized handling<A, B>(_:_:)(v110);
                  v233 = a7.i64[0];
                  v255 = 0;
                  v107, 2;
                  a7.i64[0] = v233;
LABEL_63:
                  v111 = v250;
                  v258.i64[0] = v250;
                  v112 = *(v250 + 2);
                  v113 = *(v250 + 3);
                  if (v113 >> 1 <= v112)
                  {
                    v233 = a7.i64[0];
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v113 >= 2, v112 + 1, 1);
                    a7.i64[0] = v233;
                    v111 = v258.i64[0];
                  }

                  *(v111 + 16) = v112 + 1;
                  v250 = v111;
                  *(v111 + 8 * v112 + 32) = a7.i64[0];
                  if (v104 >= CMLSequence.size.getter())
                  {
                    BUG();
                  }

                  if (v232 == ++v104)
                  {
                    goto LABEL_70;
                  }

                  continue;
                case 2u:

                  v189 = CMLFeatureValue.stringValue()();
                  if (v190)
                  {
                    v190;

                    BUG();
                  }

                  countAndFlagsBits = v189._countAndFlagsBits;
                  v191 = v189._object;
                  v107, 2;
                  v188 = 2;
                  v251.i64[0] = v191;
                  goto LABEL_123;
                case 3u:
                  v192 = *(v107 + 16);

                  v193 = specialized handling<A, B>(_:_:)(v192);
                  if (!v193)
                  {
                    BUG();
                  }

                  v107, 2;
                  v251.i64[0] = 0;
                  v194 = type metadata accessor for CMLSequence();
                  countAndFlagsBits = swift_allocObject(v194, 25, 7);
                  countAndFlagsBits[2] = v193;
                  *(countAndFlagsBits + 24) = 1;
                  v188 = 3;
                  goto LABEL_123;
                case 4u:
                  v195 = *(v107 + 16);

                  v196 = specialized handling<A, B>(_:_:)(v195);
                  v251.i64[0] = 0;
                  if (!v196)
                  {
                    BUG();
                  }

                  v197 = type metadata accessor for CMLDictionary();
                  v222[0] = swift_allocObject(v197, 24, 7);
                  v222[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
                  v222[2] = 0;
                  v222[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                  v222[4] = 0;
                  v222[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                  v222[6] = 0;
                  *(v222[0] + 16) = v196;
                  v256 = _swiftEmptyDictionarySingleton;

                  v198 = v251.i64[0];
                  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v222, 1, &v256);
                  if (!v198)
                  {
                    v107, 2;

                    countAndFlagsBits = v256;
                    v188 = 4;
LABEL_122:
                    v251.i64[0] = 0;
LABEL_123:
                    v199 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                    swift_allocError(&type metadata for MLCreateError, v199, 0, 0);
                    *v200 = 0xD00000000000002BLL;
                    *(v200 + 8) = "CreateML/SequenceType.swift" + 0x8000000000000000;
                    *(v200 + 16) = 0;
                    *(v200 + 32) = 0;
                    *(v200 + 48) = 1;
                    swift_willThrow();
                    outlined consume of MLDataValue(countAndFlagsBits, v251.i64[0], v188);
                    v245;
                    v252;

                    v248;
                    outlined destroy of MLActivityClassifier.ModelParameters(v246, type metadata accessor for _TablePrinter);
                    v242;
                    v241;
                    outlined consume of MLDataValue(v240, v239, 3);
LABEL_14:
                    v34 = v253;
                    return v34;
                  }

                  v216 = "Swift/Dictionary.swift";
                  v217 = 22;
                  v218 = 489;
                  v219 = v198;
                  break;
                case 5u:

                  v188 = 6;
                  countAndFlagsBits = 0;
                  goto LABEL_122;
                case 6u:

                  MLDataValue.MultiArrayType.init(from:)(v107);
                  countAndFlagsBits = v256;
                  if (!v256)
                  {
                    BUG();
                  }

                  v188 = 5;
                  goto LABEL_122;
              }
            }

            break;
          }

          swift_unexpectedError(v219, v216, v217, 1, v218);
          BUG();
        }

        v250 = _swiftEmptyArrayStorage;
LABEL_70:
        v114 = v253;
        if (!v253[2])
        {
          goto LABEL_77;
        }

        v115 = v252;
        v252;
        v116 = specialized __RawDictionaryStorage.find<A>(_:)(v244._countAndFlagsBits, v115);
        if ((v117 & 1) == 0)
        {
          v115;
LABEL_77:
          v132 = swift_isUniquelyReferenced_nonNull_native(v114);
          v258.i64[0] = v114;
          v133 = specialized __RawDictionaryStorage.find<A>(_:)(v244._countAndFlagsBits, v252);
          LOBYTE(v253) = v134;
          v135 = (v134 & 1) == 0;
          v122 = __OFADD__(v114[2], v135);
          v136 = v114[2] + v135;
          if (v122)
          {
            BUG();
          }

          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v132, v136))
          {
            v137 = v252;
            v125 = v252;
            v133 = specialized __RawDictionaryStorage.find<A>(_:)(v244._countAndFlagsBits, v252);
            LOBYTE(v128) = v128 & 1;
            LOBYTE(v129) = v253;
            if ((v253 & 1) != v128)
            {
LABEL_157:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v125, v128, v129, v127);
              BUG();
            }

            v86 = v251.i64[0];
          }

          else
          {
            v86 = v251.i64[0];
            v137 = v252;
            LOBYTE(v129) = v253;
          }

          v138 = v258.i64[0];
          v253 = v258.i64[0];
          if (v129)
          {
            v139 = *(v258.i64[0] + 56);
            *(v139 + 8 * v133);
            *(v139 + 8 * v133) = v250;
            v137;
          }

          else
          {
            *(v258.i64[0] + 8 * (v133 >> 6) + 64) |= 1 << v133;
            v140 = v138[6];
            v141 = 16 * v133;
            *(v140 + v141) = v244._countAndFlagsBits;
            *(v140 + v141 + 8) = v137;
            *(v138[7] + 8 * v133) = v250;
            v142 = v138[2];
            v122 = __OFADD__(1, v142);
            v143 = v142 + 1;
            if (v122)
            {
              BUG();
            }

            v138[2] = v143;
          }

          v55 = v260;
          goto LABEL_92;
        }

        v118 = *(v114[7] + 8 * v116);
        v118;
        v115;
        v258.i64[0] = v118;
        specialized Array.append<A>(contentsOf:)(v250);
        v250 = v258.i64[0];
        v119 = swift_isUniquelyReferenced_nonNull_native(v114);
        v256 = v114;
        v232 = specialized __RawDictionaryStorage.find<A>(_:)(v244._countAndFlagsBits, v115);
        v121 = (v120 & 1) == 0;
        v122 = __OFADD__(v114[2], v121);
        v123 = v114[2] + v121;
        if (v122)
        {
          BUG();
        }

        v124 = v120;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v119, v123))
        {
          v125 = v252;
          v126 = specialized __RawDictionaryStorage.find<A>(_:)(v244._countAndFlagsBits, v252);
          LOBYTE(v128) = v128 & 1;
          v129 = v124;
          if ((v124 & 1) != v128)
          {
            goto LABEL_157;
          }

          v130 = v126;
          v86 = v251.i64[0];
          v131 = v244._countAndFlagsBits;
        }

        else
        {
          LOBYTE(v129) = v124;
          v86 = v251.i64[0];
          v131 = v244._countAndFlagsBits;
          v130 = v232;
        }

        v253 = v256;
        if (v129)
        {
          v144 = v256[7];
          *(v144 + 8 * v130);
          *(v144 + 8 * v130) = v250;
          v252;
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v130, v131, v252, v250, v256);
        }

        v55 = v260;
LABEL_92:
        outlined consume of MLDataValue(v240, v239, 3);
LABEL_42:
        v70 = v243->i64 + 1;
      }

      while (v243->f32 + 1 != v230._object);
      v245;
      v258.i64[0] = v254;
      v258.i8[8] = v55;
      outlined copy of Result<_DataTable, Error>(v254, v247);
      v145._countAndFlagsBits = v236._object;
      v145._object = v86;
      MLDataTable.subscript.getter(v145);
      outlined consume of Result<_DataTable, Error>(v258.i64[0], v258.i8[8]);
      v146 = v256;
      if (v257)
      {
        outlined consume of Result<_DataTable, Error>(v256, 1);
        goto LABEL_128;
      }

      _UntypedColumn.valueAtIndex(index:)(currentFileIndex, *a7.i64);
      outlined consume of Result<_DataTable, Error>(v146, 0);
      outlined consume of Result<_DataTable, Error>(v146, 0);
      if (v259 != 2)
      {
        outlined consume of MLDataValue(v258.i64[0], v258.i64[1], v259);
LABEL_128:
        v248;
        v242;
        v241;
        v258.i64[0] = 0;
        v258.i64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(51);
        v210._object = "DataTable has no column named " + 0x8000000000000000;
        v210._countAndFlagsBits = 0xD00000000000001CLL;
LABEL_132:
        String.append(_:)(v210);
        v256 = currentFileIndex;
        v212._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v213 = v212._object;
        String.append(_:)(v212);
        v213;
        v214._object = "Label does not exist on row " + 0x8000000000000000;
        v214._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v214);
        v251 = v258;
        v214._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v214._object, 0, 0);
        *v215 = v251;
        *(v215 + 16) = 0;
        *(v215 + 32) = 0;
        *(v215 + 48) = 1;
        swift_willThrow();
LABEL_133:
        outlined destroy of MLActivityClassifier.ModelParameters(v246, type metadata accessor for _TablePrinter);
        goto LABEL_14;
      }

      v147 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v258.i64[0], v258.i64[1], v234);
      specialized Array.append<A>(contentsOf:)(v147);
      v258.i64[0] = v254;
      v258.i8[8] = v55;
      outlined copy of Result<_DataTable, Error>(v254, v247);
      v148._countAndFlagsBits = v236._countAndFlagsBits;
      v148._object = v235;
      MLDataTable.subscript.getter(v148);
      outlined consume of Result<_DataTable, Error>(v258.i64[0], v258.i8[8]);
      v149 = v256;
      if (v257)
      {
        outlined consume of Result<_DataTable, Error>(v256, 1);
        v211 = v248;
LABEL_131:
        v211;
        v242;
        v241;
        v258.i64[0] = 0;
        v258.i64[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v210._object = " of input data table." + 0x8000000000000000;
        v210._countAndFlagsBits = 0xD000000000000020;
        goto LABEL_132;
      }

      _UntypedColumn.valueAtIndex(index:)(currentFileIndex, *a7.i64);
      outlined consume of Result<_DataTable, Error>(v149, 0);
      outlined consume of Result<_DataTable, Error>(v149, 0);
      v150 = v258;
      v151 = v248;
      if (v259 != 2)
      {
        outlined consume of MLDataValue(v258.i64[0], v258.i64[1], v259);
        v211 = v151;
        goto LABEL_131;
      }

      if (!v248)
      {
        goto LABEL_106;
      }

      if (v237 ^ v258.i64[0] | v248 ^ v258.i64[1])
      {
        if ((_stringCompareWithSmolCheck(_:_:expecting:)(v258.i64[0], v258.i64[1], v237, v248, 0) & 1) == 0)
        {
          v151;
LABEL_106:
          v154 = v238 + 1;
          if (__OFADD__(1, v238))
          {
            BUG();
          }

          v248 = *&v150 >> 64;
          v237 = v150;
          v153 = currentFileIndex;
          goto LABEL_108;
        }

        v152 = v150;
      }

      else
      {
        v152.i64[0] = v237;
        v152.i64[1] = v248;
      }

      outlined consume of MLDataValue(v152.i64[0], v152.i64[1], 2);
      v153 = currentFileIndex;
      v154 = v238;
LABEL_108:
      v238 = v154;
      v155 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(v154, v234);
      specialized Array.append<A>(contentsOf:)(v155);
      _TablePrinter.printRow(currentFileIndex:)(v153);
      v156 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v157 = swift_allocObject(v156, 64, 7);
      v243 = v157;
      *(v157 + 16) = 1;
      *(v157 + 24) = 2;
      v258.i64[0] = 0;
      v258.i64[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v258.i64[1];
      v258.i64[0] = 0xD00000000000001DLL;
      v258.i64[1] = v228;
      v256 = v153;
      v158._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v159 = v158._object;
      String.append(_:)(v158);
      v159;
      v160._countAndFlagsBits = 543584032;
      v160._object = 0xE400000000000000;
      String.append(_:)(v160);
      v161 = v254;
      v256 = v254;
      LOBYTE(v257) = v260;
      LOBYTE(v159) = v247;
      outlined copy of Result<_DataTable, Error>(v254, v247);
      outlined copy of Result<_DataTable, Error>(v161, v159);
      v162 = MLDataTable.size.getter();
      outlined consume of Result<_DataTable, Error>(v256, v257);
      v163 = specialized RandomAccessCollection<>.distance(from:to:)(0, v162, v161, v159);
      outlined consume of Result<_DataTable, Error>(v161, v159);
      v256 = v163;
      v164._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      v165 = v164._object;
      String.append(_:)(v164);
      v55 = v260;
      v165;
      a7 = v258;
      v166 = v243;
      v243[3].i64[1] = &type metadata for String;
      v166[2] = a7;
      print(_:separator:terminator:)(v166, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v166;
      v62 = v159;
      v61 = v226;
      v60 = v255;
      v59 = v245;
    }

    while (v226 != v227);
  }

  v248;
  v256 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v167 = alloca(24);
  v168 = alloca(24);
  v221 = &v256;
  v169 = v253;
  v253;
  specialized Sequence.forEach(_:)(v169, partial apply for closure #2 in validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:));
  v251.i64[0] = v60;
  v253 = v169;
  v169;
  v258.i64[0] = v241;
  v170 = alloca(24);
  v171 = alloca(32);
  v221 = &v258;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  LOBYTE(v169) = v173;
  v258.i64[0];
  v174 = swift_isUniquelyReferenced_nonNull_native(v256);
  v258.i64[0] = v256;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(ML14_UntypedColumnC_s5Error_pTt1g5, v169 & 1, 0x6C6562616CLL, 0xE500000000000000, v174);
  v256 = v258.i64[0];
  v258.i64[0] = v242;
  v175 = alloca(24);
  v176 = alloca(32);
  v221 = &v258;
  v177 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v179 = v178;
  v258.i64[0];
  v180 = swift_isUniquelyReferenced_nonNull_native(v256);
  v258.i64[0] = v256;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v177, v179 & 1, 0x5F6E6F6973736573, 0xEA00000000006469, v180);
  v181 = v258.i64[0];
  static os_log_type_t.info.getter();
  v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v183 = swift_allocObject(v182, 72, 7);
  v183[2] = 1;
  v183[3] = 2;
  v183[7] = &type metadata for Int;
  v183[8] = &protocol witness table for Int;
  v183[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu", 10);
  v183;

  v184 = v251.i64[0];
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v181);
  if (!v184)
  {
    v185 = v258.i8[8];
    v186 = v223;
    *v223 = v258.i64[0];
    *(v186 + 8) = v185;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v246, type metadata accessor for _TablePrinter);
  v253;
}

uint64_t closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc(144);
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = protocol witness for SupervisedEstimator.fitted<A, B>(to:validateOn:eventHandler:) in conformance MLImageClassifier.Classifier;
  return static MLActivityClassifier.train(with:)(a1, a2);
}

uint64_t static MLActivityClassifier.train(with:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64);
  v2[6] = v5;
  v2[7] = swift_task_alloc((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v2[8] = v6;
  v2[9] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[10] = swift_task_alloc(v7);
  v2[11] = swift_task_alloc(v7);
  v8 = type metadata accessor for TrainingTablePrinter(0);
  v2[12] = v8;
  v9 = *(v8 - 8);
  v2[13] = v9;
  v10 = *(v9 + 64);
  v2[14] = v10;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[15] = swift_task_alloc(v11);
  v2[16] = swift_task_alloc(v11);
  return swift_task_switch(static MLActivityClassifier.train(with:), 0, 0);
}

uint64_t static MLActivityClassifier.train(with:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v26 = *(v0 + 80);
  v3 = *(v0 + 72);
  v32 = *(v0 + 64);
  v35 = *(v0 + 24);
  v29 = *(v0 + 32);
  v25 = (v35 + *(v29 + 48));
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v25, v2, &demangling cache variable for type metadata for DataFrame?);
  v24 = type metadata accessor for DataFrame(0);
  v4 = __swift_getEnumTagSinglePayload(v2, 1, v24) != 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for DataFrame?);
  static MLActivityClassifier.makeTablePrinter(hasValidation:)(v4);
  TrainingTablePrinter.beginTable()();
  outlined init with copy of MLTrainingSessionParameters(v35, v3 + *(v32 + 20), type metadata accessor for MLActivityClassifier.Configuration);
  *v3 = 0xD00000000000001BLL;
  v3[1] = "missed_predicting_this" + 0x8000000000000000;
  *(v3 + *(v32 + 24)) = 0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35 + *(v29 + 44), v26, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(v26, 1, v24) == 1)
  {
    BUG();
  }

  v23 = *(v0 + 128);
  v5 = *(v0 + 120);
  v36 = v5;
  v6 = *(v0 + 112);
  v22 = *(v0 + 104);
  v30 = *(v0 + 80);
  v27 = *(v0 + 72);
  v21 = *(v0 + 56);
  v7 = *(v0 + 48);
  v8 = *(v0 + 40);
  v33 = *(v0 + 16);
  outlined init with copy of MLTrainingSessionParameters(*(v0 + 24), v21, type metadata accessor for MLActivityClassifier.Configuration);
  outlined init with copy of MLTrainingSessionParameters(v23, v5, type metadata accessor for TrainingTablePrinter);
  v9 = *(v8 + 80);
  v10 = ~*(v8 + 80) & (v9 + 16);
  v11 = *(v22 + 80);
  v12 = ~v11 & (v10 + v11 + v7);
  v13 = swift_allocObject(&unk_38F240, v12 + v6, v11 | v9 | 7);
  outlined init with take of MLClassifierMetrics(v21, v13 + v10, type metadata accessor for MLActivityClassifier.Configuration);
  outlined init with take of MLClassifierMetrics(v36, v13 + v12, type metadata accessor for TrainingTablePrinter);
  MLActivityClassifier.Trainer.train(on:validationData:eventHandler:)(v30, v25, partial apply for closure #1 in static MLActivityClassifier.train(with:), v13);
  v28 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = *(v0 + 96);
  v37 = *(v0 + 88);
  v16 = *(v0 + 80);
  v31 = *(v0 + 56);
  v34 = *(v0 + 72);
  outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLActivityClassifier.Trainer);

  (*(*(v24 - 8) + 8))(v16);
  v17 = *(v14 + *(v15 + 20));
  static os_log_type_t.info.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v19 = swift_allocObject(v18, 72, 7);
  v19[2] = 1;
  v19[3] = 2;
  v19[7] = &type metadata for Int;
  v19[8] = &protocol witness table for Int;
  v19[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu", 10);
  v19;
  outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for TrainingTablePrinter);
  v14;
  v28;
  v37;
  v16;
  v34;
  v31;
  return (*(v0 + 8))();
}

uint64_t key path getter for Column.name : Column<[Double]>()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  result = Column.name.getter(v2);
  *v1 = result;
  v1[1] = v4;
  return result;
}

uint64_t key path setter for Column.name : Column<[Double]>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v2;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  return Column.name.setter(v1, v2, v3);
}

Swift::Bool MLActivityClassifier.reportAnalytics(columns:parameters:)(uint64_t a1, uint64_t a2)
{
  v21[0] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  result = AnalyticsReporter.init()();
  if (!result)
  {
    v21[0] = a2;
    v9 = *(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) + 20) + a1;
    v10 = Column.count.getter(v3);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__((" must be Int or String." + 0x8000000000000000), 0xD000000000000015), v10);
    (*(v4 + 16))(v21, v9, v3);
    v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_11TabularData6ColumnVySSGTt0g5(v21);
    v12 = *(v11 + 16);
    v11;
    v13 = v21[0];
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), v12);
    v14 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v15 = v14[6];
    v16 = 0;
    if (!*(v13 + v15 + 8))
    {
      v16 = *(v13 + v15);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(0xEE00736E6F697461, 0x726574492078614DLL), v16);
    v17 = v14[7];
    v18 = 0;
    if (!*(v13 + v17 + 8))
    {
      v18 = *(v13 + v17);
    }

    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(0xEA0000000000657ALL, 0x6953206863746142), v18);
    v19 = v14[8];
    v20 = 0;
    if (!*(v13 + v19 + 8))
    {
      v20 = *(v13 + v19);
    }

    return AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_activityClassifier, __PAIR128__(("Number of Labels" + 0x8000000000000000), 0xD000000000000016), v20);
  }

  return result;
}

uint64_t static MLActivityClassifier.makeTablePrinter(hasValidation:)(int a1)
{
  v32 = a1;
  v28 = v1;
  v33 = type metadata accessor for MetricsKey(0);
  v30 = *(v33 - 8);
  v2 = *(v30 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v31 = &v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v29 = &v27;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MetricsKey)>);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, MetricsKey));
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v13 = swift_allocObject(v7, v12 + 2 * v10, v11 | 7);
  *(v13 + 16) = 2;
  *(v13 + 24) = 4;
  v14 = v13 + v12;
  v15 = *(v8 + 48);
  strcpy((v13 + v12), "Train Accuracy");
  *(v13 + v12 + 15) = -18;
  static MetricsKey.trainingAccuracy.getter();
  v16 = v10 + *(v8 + 48);
  *(v10 + v14) = 0x6F4C206E69617254;
  *(v10 + v14 + 8) = 0xEA00000000007373;
  static MetricsKey.trainingLoss.getter();
  v17 = Dictionary.init(dictionaryLiteral:)(v13, &type metadata for String, v33, &protocol witness table for String);
  if (v32)
  {
    v18 = v29;
    static MetricsKey.validationAccuracy.getter();
    v19 = *(v30 + 32);
    v19(v31, v18, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v17);
    v27 = v17;
    v21 = v31;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, 0xD000000000000013, ("Validation Data\n" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
    v22 = v27;
    static MetricsKey.validationLoss.getter();
    v19(v21, v18, v33);
    v23 = swift_isUniquelyReferenced_nonNull_native(v22);
    v27 = v22;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, 0x69746164696C6156, 0xEF73736F4C206E6FLL, v23);
    v17 = v27;
  }

  v24 = type metadata accessor for TrainingTablePrinter(0);
  v25 = v28;
  *(v28 + *(v24 + 24)) = v17;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v25 + *(v24 + 20)) = OS_os_log.init(subsystem:category:)(0x6C7070612E6D6F63, 0xEE00697275742E65, 0x72705F656C626174, 0xED00007265746E69);
  return Date.init()(0x6C7070612E6D6F63);
}

uint64_t closure #1 in static MLActivityClassifier.train(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v49 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v57 = &v46;
  *&v7 = COERCE_DOUBLE(type metadata accessor for MetricsKey(0));
  v59 = *(v7 - 8);
  v8 = *(*&v59 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v51 = &v46;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v46;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v46;
  v15 = alloca(v8);
  v16 = alloca(v8);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
  inited = swift_initStackObject(v17, v47);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *(inited + 32) = 3;
  v56 = a1;
  v19 = Event.metrics.getter();
  static MetricsKey.trainingAccuracy.getter();
  specialized Dictionary.subscript.getter(&v46, v19);
  v19;
  v20 = *(*&v59 + 8);
  v59 = *&v7;
  v55 = v20;
  v20(&v46, v7);
  if (v54)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    if (swift_dynamicCast(&v58, v53, v21, &type metadata for Double, 6))
    {
      v22 = v58;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for Sendable?);
  }

  v22 = 0;
LABEL_6:
  *(inited + 40) = v22;
  *(inited + 48) = 0;
  v23 = Event.metrics.getter();
  v24 = v50;
  static MetricsKey.trainingLoss.getter();
  specialized Dictionary.subscript.getter(v24, v23);
  v23;
  v55(v24, *&v59);
  if (v54)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
    if (swift_dynamicCast(&v58, v53, v25, &type metadata for Double, 6))
    {
      v26 = v58;
      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for Sendable?);
  }

  v26 = 0;
LABEL_11:
  *(inited + 56) = v26;
  v27 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
  v28._rawValue = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v27);
  v29 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v30 = v57;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v29 + 48) + v49, v57, &demangling cache variable for type metadata for DataFrame?);
  v31 = type metadata accessor for DataFrame(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for DataFrame?);
  if (EnumTagSinglePayload != 1)
  {
    v33 = Event.metrics.getter();
    v34 = v52;
    static MetricsKey.validationLoss.getter();
    specialized Dictionary.subscript.getter(v34, v33);
    v33;
    v55(v34, *&v59);
    if (v54)
    {
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
      if (swift_dynamicCast(&v58, v53, v35, &type metadata for Double, 6))
      {
        v36 = v58;
        goto LABEL_17;
      }
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for Sendable?);
    }

    v36 = 0;
LABEL_17:
    v57 = v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v28._rawValue);
    v53[0] = v28._rawValue;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, isUniquelyReferenced_nonNull_native, *&v57);
    v38 = v53[0];
    v39 = Event.metrics.getter();
    v40 = v51;
    static MetricsKey.validationAccuracy.getter();
    specialized Dictionary.subscript.getter(v40, v39);
    v39;
    v55(v40, *&v59);
    if (v54)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Sendable);
      if (swift_dynamicCast(&v58, v53, v41, &type metadata for Double, 6))
      {
        v42 = *&v58;
LABEL_22:
        v59 = v42;
        v43 = swift_isUniquelyReferenced_nonNull_native(v38);
        v53[0] = v38;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v43, v59);
        v28._rawValue = v53[0];
        goto LABEL_23;
      }
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v53, &demangling cache variable for type metadata for Sendable?);
    }

    v42 = 0.0;
    goto LABEL_22;
  }

LABEL_23:
  v44 = Event.itemCount.getter();
  TrainingTablePrinter.print(iteration:metrics:)(v44, v28);
  return v28._rawValue;
}

uint64_t MLActivityClassifier.init(checkpoint:)(uint64_t a1)
{
  v104 = v2;
  v3 = v1;
  v81 = type metadata accessor for MLActivityClassifier.Model(0);
  v4 = *(*(v81 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v96 = &v69;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v86 = &v69;
  v80 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v9 = *(*(v80 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v89 = &v69;
  v92 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v12 = *(*(v92 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v91 = &v69;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v90 = &v69;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v98 = &v69;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v102 = &v69;
  v103 = type metadata accessor for DataFrame(0);
  v97 = *(v103 - 8);
  v22 = *(v97 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v101 = &v69;
  v94 = type metadata accessor for URL(0);
  v95 = *(v94 - 1);
  v25 = *(v95 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v93 = &v69;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v30 = type metadata accessor for MLActivityClassifier(0);
  v31 = v30[7];
  *(v3 + v31) = 0x5F6E6F6973736573;
  *(v3 + v31 + 8) = 0xEA00000000006469;
  v32 = v30[8];
  *(v3 + v32) = 0x6C6562616CLL;
  *(v3 + v32 + 8) = 0xE500000000000000;
  *(v3 + v30[9]) = _swiftEmptyArrayStorage;
  v33 = v30[10];
  strcpy((v3 + v33), "recordingFile");
  *(v3 + v33 + 14) = -4864;
  URL.deletingLastPathComponent()();
  v34 = v104;
  MLActivityClassifier.PersistentParameters.init(sessionDirectory:)(&v69);
  if (v34)
  {
    return outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLCheckpoint);
  }

  v84 = v30;
  v99 = 0;
  v83 = v3;
  v104 = a1;
  v76 = v70;
  v79 = v73;
  v78 = v72;
  v77 = v71;
  v74 = v70;
  v75 = BYTE8(v70);
  outlined copy of Result<_DataTable, Error>(v70, SBYTE8(v70));
  DataFrame.init(_:)(&v74);
  v36 = v102;
  __swift_storeEnumTagSinglePayload(v102, 1, 1, v103);
  v37 = v77;
  v38 = BYTE8(v77);
  if (BYTE8(v77) != 0xFF)
  {
    v74 = v77;
    v75 = BYTE8(v77) & 1;
    outlined copy of Result<_DataTable, Error>(v77, SBYTE8(v77));
    v39 = v98;
    DataFrame.init(_:)(&v74);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v103);
    outlined init with take of DataFrame?(v39, v36, &demangling cache variable for type metadata for DataFrame?);
  }

  v100 = v38;
  v85 = v37;
  v98 = *(&v78 + 1);
  v82 = v78;
  v87 = *(&v79 + 1);
  v88 = v79;
  v40 = v92;
  v41 = v90;
  v42 = v90 + *(v92 + 44);
  v43 = v103;
  (*(v97 + 16))(v42, v101, v103);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v43);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, v41 + *(v40 + 48), &demangling cache variable for type metadata for DataFrame?);
  *v41 = v98;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = v88;
  *(v41 + 32) = v87;
  LOBYTE(v43) = v82;
  *(v41 + 40) = v82;
  *(v41 + 48) = 0x6C6562616CLL;
  *(v41 + 56) = 0xE500000000000000;
  *(v41 + 64) = 0x5F6E6F6973736573;
  *(v41 + 72) = 0xEA00000000006469;
  v44 = v93;
  (*(v95 + 16))(v93, v104, v94);
  v45 = v91;
  outlined init with copy of MLTrainingSessionParameters(v41, v91, type metadata accessor for MLActivityClassifier.Configuration);
  v43;
  v46 = v89;
  v47 = v99;
  MLActivityClassifier.Trainer.init(checkpoint:configuration:)(v44, v45);
  if (v47)
  {
    outlined release of MLActivityClassifier.PersistentParameters(&v76);
    outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLActivityClassifier.Configuration);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for DataFrame?);
    return (*(v97 + 8))(v101, v103);
  }

  v48 = v103;
  v49 = *(v46 + *(v80 + 24));
  if (!v49)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000024, "ityClassifier.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier.swift", 35, 2, 385, 0);
    goto LABEL_15;
  }

  MLActivityClassifier.Trainer.ModelContainer.compileModel()();
  v99 = v50;
  v51 = v101;
  v52 = v96;
  if (!v50)
  {
    v55 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v49;
    swift_beginAccess(v55, &v74, 0, 0);
    outlined init with copy of MLTrainingSessionParameters(v55, v52, type metadata accessor for MLActivityClassifier.Model);
    v56 = v52;
    v57 = v86;
    outlined init with take of MLClassifierMetrics(v56, v86, type metadata accessor for MLActivityClassifier.Model);
    v58 = *(v57 + *(v81 + 68));
    if (v58)
    {
      v59 = v83;
      outlined init with copy of MLTrainingSessionParameters(v57, v83, type metadata accessor for MLActivityClassifier.Model);
      v60 = v84;
      *(v59 + v84[5]) = v58;
      v61 = v59 + v60[6];
      *v61 = 0;
      *(v61 + 8) = -1;
      v62 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
      v91 = v62[6];
      v93 = v62[7];
      v92 = v62[8];
      v94 = v58;
      v63 = v61 + v62[5];
      v64 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
      swift_storeEnumTagMultiPayload(v63, v64, 2);
      v95 = *v61;
      LODWORD(v96) = *(v61 + 8);
      v65 = v85;
      outlined copy of MLDataTable?(v85, v100);
      v94;
      outlined consume of MLDataTable?(v95, v96);
      *v61 = v65;
      *(v61 + 8) = v100;
      v66 = v93;
      *(v93 + v61) = v88;
      *(v66 + v61 + 8) = 0;
      v67 = v91;
      *(v91 + v61) = v98;
      *(v67 + v61 + 8) = 0;
      v68 = v92;
      *(v92 + v61) = v87;
      *(v68 + v61 + 8) = 0;
      outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLCheckpoint);
      outlined release of MLActivityClassifier.PersistentParameters(&v76);
      outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLActivityClassifier.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLActivityClassifier.Configuration);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for DataFrame?);
      v53 = v101;
      v54 = v103;
      goto LABEL_12;
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, "odel from checkpoint" + 0x8000000000000000, "CreateML/MLActivityClassifier.swift", 35, 2, 388, 0);
LABEL_15:
    BUG();
  }

  outlined release of MLActivityClassifier.PersistentParameters(&v76);
  outlined destroy of MLActivityClassifier.ModelParameters(v104, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLActivityClassifier.Configuration);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v102, &demangling cache variable for type metadata for DataFrame?);
  v53 = v51;
  v54 = v48;
LABEL_12:
  (*(v97 + 8))(v53, v54);
  return outlined destroy of MLActivityClassifier.ModelParameters(v89, type metadata accessor for MLActivityClassifier.Trainer);
}

void *static MLActivityClassifier.train(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, __int128 a7)
{
  result = static MLActivityClassifier.makeTrainingSession(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6, a7, *(&a7 + 1));
  if (!v7)
  {
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActivityClassifier>);
    v11 = swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLJob.init(_:)(v11, v9);
  }

  return result;
}

uint64_t static MLActivityClassifier.makeTrainingSession(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v60 = v8;
  v59 = a6;
  v58 = a5;
  ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm = a4;
  v56 = a1;
  v10 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v51 = &v44;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v54 = &v44;
  v15 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters(0) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v49 = &v44;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v50 = &v44;
  v21 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = v60;
  MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(a2, a3, ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm, v58, v59);
  if (!v25)
  {
    v60 = v21;
    MLActivityClassifier.DataSource.Columns.convertToTuriCore()();
    v26 = v46;
    LOBYTE(v46) = v46 & 1;
    v27 = v44;
    v58 = v45;
    LODWORD(v59) = v26;
    outlined copy of Result<_DataTable, Error>(v45, v26);
    v27;
    ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData6ColumnVySaySdGGG_SSs5NeverOTg50114_s8CreateML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm(v27);
    v56 = 0;
    v27;
    v28 = v60;
    v29 = &v44 + *(v60 + 5);
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    v52 = Column.name.getter(v30);
    v53 = v31;
    v32 = *(v28 + 24);
    v60 = &v44;
    v33 = v50;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v44 + v32, v50, &demangling cache variable for type metadata for Column<String>?);
    if (__swift_getEnumTagSinglePayload(v33, 1, v30) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v33, &demangling cache variable for type metadata for Column<String>?);
      v55 = 0xED0000656C694667;
      v34 = 0x6E6964726F636572;
    }

    else
    {
      v34 = Column.name.getter(v30);
      v55 = v35;
      (*(*(v30 - 8) + 8))(v33, v30);
    }

    v36 = v54;
    v37 = v49;
    outlined init with copy of MLTrainingSessionParameters(a7, v49, type metadata accessor for MLActivityClassifier.ModelParameters);
    outlined init with copy of MLTrainingSessionParameters(a8, v36, type metadata accessor for MLTrainingSessionParameters);
    v38 = v36;
    v21 = type metadata accessor for ActivityClassifierTrainingSessionDelegate(0);
    swift_allocObject(v21, *(v21 + 48), *(v21 + 52));
    v39 = v56;
    v40 = ActivityClassifierTrainingSessionDelegate.init(trainingData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:sessionParameters:)(&v45, ML20MLActivityClassifierV12trainingData10parametersA2C0F6SourceO7ColumnsV_AC15ModelParametersVtYaKcfcSS07d3F06F62VySaySdGGcfu_33_58e95aa1613cac7a093349ae610302fdAPSSTf3nnnpk_nTf1cn_nTm, v52, v53, v34, v55, v37, v38);
    if (v39)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLActivityClassifier.DataSource.Columns);
      outlined consume of Result<_DataTable, Error>(v58, v59);
    }

    else
    {
      v47 = v21;
      v48 = &protocol witness table for ActivityClassifierTrainingSessionDelegate;
      v45 = v40;
      v41 = v51;
      outlined init with copy of MLTrainingSessionParameters(a8, v51, type metadata accessor for MLTrainingSessionParameters);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>);
      swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

      v21 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v45, v41, 18, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
      outlined destroy of MLActivityClassifier.ModelParameters(v60, type metadata accessor for MLActivityClassifier.DataSource.Columns);
      outlined consume of Result<_DataTable, Error>(v58, v59);
    }
  }

  return v21;
}

void *static MLActivityClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActivityClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLActivityClassifier.train(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:sessionParameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, __m128 a7)
{
  v8 = *(a1 + 8);
  v13 = *a1;
  v14 = v8;
  result = static MLActivityClassifier.makeTrainingSession(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:sessionParameters:)(&v13, a2, a3, a4, a5, a6, a7, a7.i64[0], a7.i64[1]);
  if (!v7)
  {
    v10 = result;
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLActivityClassifier>);
    v12 = swift_allocObject(v11, *(v11 + 48), *(v11 + 52));
    return specialized MLJob.init(_:)(v12, v10);
  }

  return result;
}

uint64_t static MLActivityClassifier.makeTrainingSession(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, __m128 a7, uint64_t a8, uint64_t a9)
{
  v43 = a6;
  v44 = a5;
  v46 = a4;
  v45 = a3;
  v11 = a1;
  v12 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v39 = &v33;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v17 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  if (*(a2 + 16))
  {
    v47 = &v33;
    v20 = *(a1 + 8);
    v33 = *a1;
    v34 = v20;
    validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(&v33, a2, v45, v46, v44, v43, a7);
    if (!v9)
    {
      v21 = v35;
      v40 = &v33;
      v49 = v36;
      LOBYTE(v36) = v36 & 1;
      outlined init with copy of MLTrainingSessionParameters(a8, v47, type metadata accessor for MLActivityClassifier.ModelParameters);
      outlined init with copy of MLTrainingSessionParameters(a9, &v33, type metadata accessor for MLTrainingSessionParameters);
      v22 = type metadata accessor for ActivityClassifierTrainingSessionDelegate(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      v42 = v22;
      v41 = swift_allocObject(v22, v23, v24);
      v48 = v21;
      outlined copy of Result<_DataTable, Error>(v21, v49);
      a2;
      v25 = v46;
      v46;
      v26 = v43;
      v43;
      v27 = ActivityClassifierTrainingSessionDelegate.init(trainingData:featureColumnNames:labelColumnName:recordingFileColumn:modelParameters:sessionParameters:)(&v35, a2, v45, v25, v44, v26, v47, v40);
      v37 = v42;
      v38 = &protocol witness table for ActivityClassifierTrainingSessionDelegate;
      v35 = v27;
      v31 = v39;
      outlined init with copy of MLTrainingSessionParameters(a9, v39, type metadata accessor for MLTrainingSessionParameters);
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>);
      swift_allocObject(v32, *(v32 + 48), *(v32 + 52));

      v11 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v35, v31, 18, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
      outlined consume of Result<_DataTable, Error>(v48, v49);
    }
  }

  else
  {
    v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
    *v29 = 0xD000000000000035;
    *(v29 + 8) = "Prediction Window Size" + 0x8000000000000000;
    *(v29 + 16) = 0;
    *(v29 + 32) = 0;
    *(v29 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v28);
  }

  return v11;
}

uint64_t static MLActivityClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ActivityClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ActivityClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ActivityClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 18, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLActivityClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3)
{
  v7[0] = a3;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActivityClassifier, Error>) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lFyt_s5Error_p8CreateML20MLActivityClassifierVTg503_s8d4ML20fG17VIgr_ytACIegnr_TRAHIgr_Tf1ncn_n(a1, a2 & 1, partial apply for closure #1 in closure #1 in closure #1 in static MLActivityClassifier.resume(_:));
  (v7[0])(v7);
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v7, &demangling cache variable for type metadata for Result<MLActivityClassifier, Error>);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLActivityClassifier.resume(_:)(uint64_t a1)
{
  v48 = v1;
  v42 = type metadata accessor for MLActivityClassifier(0);
  v2 = *(*(v42 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v41 = &v38;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Model?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v51 = &v38;
  v8 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v9 = *(*(v8 - 1) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v49 = &v38;
  v12 = alloca(v9);
  v13 = alloca(v9);
  outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a1, &v38);
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
  v15 = type metadata accessor for ActivityClassifierTrainingSessionDelegate(0);
  swift_dynamicCast(&v40, &v38, v14, v15, 7);
  v16 = v40;
  if (!*(v40 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 32))
  {
    BUG();
  }

  v52 = *(v40 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 56);
  v43 = *(v40 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 48);
  v53 = *(v40 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 40);
  v50 = *(v40 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 24);
  v17 = *(v40 + OBJC_IVAR____TtC8CreateML41ActivityClassifierTrainingSessionDelegate_trainingParameters + 16);
  v38 = 0;
  LOBYTE(v39) = -1;
  v44 = v8[6];
  v46 = v8[7];
  v45 = v8[8];
  v18 = &v38 + v8[5];
  v19 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  swift_storeEnumTagMultiPayload(v18, v19, 2);
  v47 = v38;
  v20 = v39;
  v21 = v17;
  v22 = v17;
  LOBYTE(v17) = v50;
  outlined copy of MLDataTable?(v22, v50);
  v23 = v47;
  v24 = v20;
  outlined consume of MLDataTable?(v47, v20);
  v38 = v21;
  LOBYTE(v39) = v17;
  v25 = v46;
  *(&v38 + v46) = v43;
  *(&v38 + v25 + 8) = 0;
  v26 = v44;
  *(&v38 + v44) = v53;
  *(&v38 + v26 + 8) = 0;
  v27 = v45;
  *(&v38 + v45) = v52;
  *(&v38 + v27 + 8) = 0;
  v28 = v51;
  v53 = v16;
  ActivityClassifierTrainingSessionDelegate.model.getter(v23, v24);
  v52 = type metadata accessor for MLActivityClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v28, 1, v52) == 1)
  {
    BUG();
  }

  outlined init with copy of MLTrainingSessionParameters(&v38, v49, type metadata accessor for MLActivityClassifier.ModelParameters);
  v29 = v42;
  v30 = *(v42 + 28);
  v31 = v41;
  *(v41 + v30) = 0x5F6E6F6973736573;
  *(v31 + v30 + 8) = 0xEA00000000006469;
  v32 = v29[8];
  *(v31 + v32) = 0x6C6562616CLL;
  *(v31 + v32 + 8) = 0xE500000000000000;
  *(v31 + v29[9]) = _swiftEmptyArrayStorage;
  v33 = v29[10];
  strcpy((v31 + v33), "recordingFile");
  *(v31 + v33 + 14) = -4864;
  v34 = v51;
  outlined init with copy of MLTrainingSessionParameters(v51, v31, type metadata accessor for MLActivityClassifier.Model);
  v35 = *(v34 + *(v52 + 68));
  if (!v35)
  {
    BUG();
  }

  v36 = v35;
  outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Model);
  *(v31 + v29[5]) = v36;
  outlined init with take of MLClassifierMetrics(v49, v29[6] + v31, type metadata accessor for MLActivityClassifier.ModelParameters);
  outlined init with take of MLClassifierMetrics(v31, v48, type metadata accessor for MLActivityClassifier);

  return outlined destroy of MLActivityClassifier.ModelParameters(&v38, type metadata accessor for MLActivityClassifier.ModelParameters);
}

uint64_t _ss6ResultO3mapyAByqd__q_Gqd__xXERi_d__lFyt_s5Error_p8CreateML20MLActivityClassifierVTg503_s8d4ML20fG17VIgr_ytACIegnr_TRAHIgr_Tf1ncn_n(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = v3;
  if (a2)
  {
    *v3 = a1;
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActivityClassifier, Error>);
    swift_storeEnumTagMultiPayload(v4, v5, 1);
    return swift_errorRetain(a1);
  }

  else
  {
    a3(a1);
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActivityClassifier, Error>);
    return swift_storeEnumTagMultiPayload(v4, v7, 0);
  }
}

uint64_t closure #2 in validateAndConvertRawDataToInternalData(_:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a2;
  a3;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v8 = v7;
  a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*a4);
  v12 = *a4;
  *a4 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(ML14_UntypedColumnC_s5Error_pTt1g5, v8 & 1, a1, a2, isUniquelyReferenced_nonNull_native);
  a2;
  result = v12;
  *a4 = v12;
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  specialized _NativeDictionary.makeIterator()(a1);
  v2 = v19;
  v3 = v20;
  v22 = (v18 + 64) >> 6;
  a1;
  while (1)
  {
    if (v3)
    {
      v4 = v2;
      goto LABEL_24;
    }

    v5 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v5 >= v22)
    {
      return outlined consume of [String : [Double]].Iterator._Variant(v16);
    }

    v3 = *(v17 + 8 * v5);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_24;
    }

    v4 = v2 + 2;
    if (v2 + 2 >= v22)
    {
      return outlined consume of [String : [Double]].Iterator._Variant(v16);
    }

    v3 = *(v17 + 8 * v5 + 8);
    if (!v3)
    {
      v4 = v2 + 3;
      if (v2 + 3 >= v22)
      {
        return outlined consume of [String : [Double]].Iterator._Variant(v16);
      }

      v3 = *(v17 + 8 * v5 + 16);
      if (!v3)
      {
        v4 = v2 + 4;
        if (v2 + 4 >= v22)
        {
          return outlined consume of [String : [Double]].Iterator._Variant(v16);
        }

        v3 = *(v17 + 8 * v5 + 24);
        if (!v3)
        {
          v4 = v2 + 5;
          if (v2 + 5 >= v22)
          {
            return outlined consume of [String : [Double]].Iterator._Variant(v16);
          }

          v3 = *(v17 + 8 * v5 + 32);
          if (!v3)
          {
            v4 = v2 + 6;
            if (v2 + 6 >= v22)
            {
              return outlined consume of [String : [Double]].Iterator._Variant(v16);
            }

            v3 = *(v17 + 8 * v5 + 40);
            if (!v3)
            {
              v4 = v2 + 7;
              if (v2 + 7 >= v22)
              {
                return outlined consume of [String : [Double]].Iterator._Variant(v16);
              }

              v3 = *(v17 + 8 * v5 + 48);
              if (!v3)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v21 = v4;
    _BitScanForward64(&v7, v3);
    v8 = v7 | (v4 << 6);
    v9 = *(*(v16 + 56) + 8 * v8);
    v8 *= 16;
    v10 = *(v16 + 48);
    v11 = (v3 - 1) & v3;
    v12 = *(v10 + v8);
    v13 = *(v10 + v8 + 8);
    v13;
    v9;
    v14 = v12;
    v3 = v11;
    a2(v14, v13, v9);
    v9;
    v13;
    v2 = v21;
  }

  v6 = v2 + 8;
  while (v6 < v22)
  {
    v3 = *(v17 + 8 * v6++);
    if (v3)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

  return outlined consume of [String : [Double]].Iterator._Variant(v16);
}

unint64_t MLActivityClassifier.description.getter(double a1, double a2)
{
  v34 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v3 = *(*(v34 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v28 = &v27;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = alloca(v6);
  v12 = alloca(v6);
  v13 = v2 + *(type metadata accessor for MLActivityClassifier(0) + 24);
  v30._countAndFlagsBits = MLActivityClassifier.ModelParameters.description.getter();
  v33 = v14;
  MLActivityClassifier.trainingMetrics.getter(a1, a2);
  v29._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v29._object = v15;
  outlined destroy of MLActivityClassifier.ModelParameters(&v27, type metadata accessor for MLClassifierMetrics);
  MLActivityClassifier.validationMetrics.getter(a1, a2);
  outlined init with copy of MLTrainingSessionParameters(&v27, &v27, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v34) = swift_getEnumCaseMultiPayload(&v27, v34);
  outlined destroy of MLActivityClassifier.ModelParameters(&v27, type metadata accessor for MLClassifierMetrics.Contents);
  outlined destroy of MLActivityClassifier.ModelParameters(&v27, type metadata accessor for MLClassifierMetrics);
  v16 = v28;
  MLActivityClassifier.validationMetrics.getter(a1, a2);
  v17 = v16;
  v30._object = MLClassifierMetrics.description.getter();
  v19 = v18;
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLClassifierMetrics);
  v31 = 0xD00000000000001FLL;
  v32 = "e model from checkpoint" + 0x8000000000000000;
  v20._countAndFlagsBits = v30._countAndFlagsBits;
  v20._object = v33;
  String.append(_:)(v20);
  v27._countAndFlagsBits = 0xD00000000000001ELL;
  v27._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v29._object;
  String.append(_:)(v29);
  v22 = v27._object;
  String.append(_:)(v27);
  v22;
  if (v34 > 1)
  {
    v25 = v33;
  }

  else
  {
    v27._countAndFlagsBits = 0xD000000000000020;
    v27._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v23._countAndFlagsBits = v30._object;
    v23._object = v19;
    String.append(_:)(v23);
    v24 = v27._object;
    String.append(_:)(v27);
    v33;
    v25 = object;
    object = v24;
  }

  v25;
  object;
  v19;
  return v31;
}

unint64_t MLActivityClassifier.playgroundDescription.getter(double a1, double a2)
{
  v3 = v2;
  result = MLActivityClassifier.description.getter(a1, a2);
  v3[3] = &type metadata for String;
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t specialized MLTrainingSession.init(delegate:parameters:modelType:)(uint64_t a1, uint64_t a2, int a3)
{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLHandPoseClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLHandPoseClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLRandomForestRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLRandomForestRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLStyleTransfer>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLStyleTransfer>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLLogisticRegressionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLLogisticRegressionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLDecisionTreeRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLDecisionTreeRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLHandActionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLHandActionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLRandomForestClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLRandomForestClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLBoostedTreeRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLBoostedTreeRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLObjectDetector>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLObjectDetector>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLDecisionTreeClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLDecisionTreeClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLSoundClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLSoundClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLSoundClassifier.DataSource>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLSoundClassifier.DataSource>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLBoostedTreeClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLBoostedTreeClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLLinearRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLLinearRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.init(delegate:parameters:modelType:)(a1, a2, a3, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLImageClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLImageClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

uint64_t specialized MLTrainingSession.init(delegate:parameters:modelType:)(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, void *a5, uint64_t *a6)
{
  v31 = a6;
  v32 = a5;
  v34 = v6;
  LODWORD(v38) = a3;
  v30 = a2;
  v29 = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v28 = &v27;
  v12 = type metadata accessor for URL(0);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v36 = &v27;
  *(v7 + direct field offset for MLTrainingSession.modelType) = 28;
  v16 = v7 + *(*v7 + 112);
  Date.init()(0);
  v33 = a4;
  v17 = __swift_instantiateConcreteTypeFromMangledName(a4);
  *(v17[7] + v16) = 0;
  *(v17[8] + v16) = 0;
  __swift_storeEnumTagSinglePayload(v16 + v17[9], 1, 1, v12);
  __swift_storeEnumTagSinglePayload(v16 + v17[10], 1, 1, v12);
  v18 = v17[11];
  v19 = v30;
  *(v18 + v16) = _swiftEmptyArrayStorage;
  v20 = v29;
  outlined init with copy of TabularRegressionTask(v29, v7 + direct field offset for MLTrainingSession.delegate);
  outlined init with copy of MLTrainingSessionParameters(v19, v7 + direct field offset for MLTrainingSession.parameters, type metadata accessor for MLTrainingSessionParameters);
  v37 = v7;
  *(v7 + direct field offset for MLTrainingSession.modelType) = v38;
  v21 = v28;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v28, &demangling cache variable for type metadata for URL?);
  v38 = v12;
  if (__swift_getEnumTagSinglePayload(v21, 1, v12) == 1)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v19, type metadata accessor for MLTrainingSessionParameters);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v21, &demangling cache variable for type metadata for URL?);
  }

  else
  {
    v22 = v19;
    v23 = v36;
    (*(v35 + 32))(v36, v21, v38);
    v24 = v34;
    specialized MLTrainingSession.restore(from:)(v23, v33, v32, v31);
    if (v24)
    {
      v25 = v37;

      outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLTrainingSessionParameters);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      (*(v35 + 8))(v36, v38);
      return v25;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v22, type metadata accessor for MLTrainingSessionParameters);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    (*(v35 + 8))(v36, v38);
  }

  return v37;
}

NSURL *specialized MLTrainingSession.restore(from:)(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v63 = a4;
  v75 = a3;
  v77 = v4;
  v68 = v5;
  v71 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledName(a2);
  v6 = *(*(v69 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v70 = &v63;
  v66 = type metadata accessor for CodingUserInfoKey(0);
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v64 = &v63;
  v79 = type metadata accessor for URL(0);
  v76 = *(v79 - 8);
  v12 = *(v76 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = objc_opt_self(NSFileManager);
  v16 = [v15 defaultManager];
  v17 = v16;
  v74 = a1;
  URL.appendingPathComponent(_:)(0x696C702E6174656DLL, 0xEA00000000007473);
  URL.path.getter(0x696C702E6174656DLL);
  v19 = v18;
  v20 = String._bridgeToObjectiveC()();
  v19;
  LOBYTE(v19) = [v17 fileExistsAtPath:v20];

  if (!v19)
  {
    v78 = &v63;
    v81 = 0;
    v82 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v32 = v82;
    v82;
    v81 = 0xD00000000000001BLL;
    v82 = "Resuming existing session in '" + 0x8000000000000000;
    v33._countAndFlagsBits = URL.path.getter(v32);
    object = v33._object;
    String.append(_:)(v33);
    object;
    v35._countAndFlagsBits = 39;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = v81;
    v37 = v82;
    v38 = static os_log_type_t.default.getter(39);
    v35._countAndFlagsBits = v36;
    v35._object = v37;
    log(_:type:)(v35, v38);
    v39 = v37;
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v81 = 0;
    LOBYTE(v37) = [v17 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:{&v81, v63}];

    v42 = v81;
    if (!v37)
    {
      v56 = v81;
      _convertNSErrorToError(_:)(v42);

      swift_willThrow(v56, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:");
      (*(v76 + 8))(v78, v79);
      return __stack_chk_guard;
    }

    v81;
    specialized MLTrainingSession.save()(v71, v75);
    (*(v76 + 8))(v78, v79);
    v31 = v17;
    goto LABEL_6;
  }

  v75 = v17;
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);
  v21 = v82;
  v82;
  v81 = 0xD00000000000001ELL;
  v82 = "Validation Accuracy" + 0x8000000000000000;
  v22._countAndFlagsBits = URL.path.getter(v21);
  v23 = v22._object;
  String.append(_:)(v22);
  v23;
  v24._countAndFlagsBits = 39;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = v81;
  v26 = v82;
  v27 = static os_log_type_t.default.getter(39);
  v24._countAndFlagsBits = v25;
  v24._object = v26;
  log(_:type:)(v24, v27);
  v26;
  v28 = v77;
  v29 = Data.init(contentsOf:options:)(&v63, 0);
  if (v28)
  {
    (*(v76 + 8))(&v63, v79);
    v31 = v75;
LABEL_6:

    return __stack_chk_guard;
  }

  v67 = 0;
  v77 = v29;
  v72 = v30;
  v78 = &v63;
  v43 = type metadata accessor for PropertyListDecoder(0);
  swift_allocObject(v43, *(v43 + 48), *(v43 + 52));
  v73 = PropertyListDecoder.init()();
  v44 = v76;
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v45 = v66;
  v46 = __swift_project_value_buffer(v66, static CodingUserInfoKey.sessionDirectory);
  v47 = v64;
  (*(v65 + 16))(v64, v46, v45);
  v48 = v79;
  v83 = v79;
  v49 = __swift_allocate_boxed_opaque_existential_0(&v81);
  (*(v44 + 16))(v49, v74, v48);
  v50 = dispatch thunk of PropertyListDecoder.userInfo.modify(v80);
  specialized Dictionary.subscript.setter(&v81, v47);
  v50(v80, 0);
  v51 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(v63, v71, &protocol conformance descriptor for MLTrainingSession<A>.Metadata);
  v52 = v72;
  v53 = v67;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)(v69, v77, v72, v69, v51);
  if (v53)
  {
    (*(v76 + 8))(v78, v79);

    v54 = v77;
    v55 = v52;
  }

  else
  {
    v57 = v68;
    v58 = v68 + *(*v68 + 112);
    swift_beginAccess(v58, &v81, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v70, v58, v71);
    swift_endAccess(&v81);
    v59 = (direct field offset for MLTrainingSession.delegate + v57);
    v60 = *(direct field offset for MLTrainingSession.delegate + v57 + 24);
    v61 = *(direct field offset for MLTrainingSession.delegate + v57 + 32);
    __swift_project_boxed_opaque_existential_0Tm(v59, v60);
    LOBYTE(v81) = *(*(v69 + 28) + v58);
    (*(*(v61 + 8) + 16))(v74, &v81, v60);
    (*(v76 + 8))(v78, v79);

    v54 = v77;
    v55 = v72;
  }

  outlined consume of Data._Representation(v54, v55);
  return __stack_chk_guard;
}

uint64_t specialized MLTrainingSession.save()()
{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActivityClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLHandPoseClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLRandomForestRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLStyleTransfer>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLLogisticRegressionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLDecisionTreeRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLActionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLHandActionClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLRandomForestClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLBoostedTreeRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLObjectDetector>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLDecisionTreeClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLSoundClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLSoundClassifier.DataSource>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLBoostedTreeClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLLinearRegressor>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

{
  return specialized MLTrainingSession.save()(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata, &lazy protocol witness table cache variable for type MLTrainingSession<MLImageClassifier>.Metadata and conformance MLTrainingSession<A>.Metadata);
}

uint64_t specialized MLTrainingSession.save()(uint64_t *a1, uint64_t *a2)
{
  v54 = a2;
  v59 = v2;
  v51 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v4 = *(*(v53 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v52 = &v48;
  v60 = type metadata accessor for CodingUserInfoKey(0);
  v56 = *(v60 - 8);
  v7 = *(v56 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v55 = &v48;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for URL(0);
  v58 = *(v16 - 8);
  v17 = *(v58 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v62 = &v48;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v61 = &v48;
  v57 = v3;
  outlined init with copy of MLTrainingSessionParameters(v3 + direct field offset for MLTrainingSession.parameters, &v48, type metadata accessor for MLTrainingSessionParameters);
  outlined init with take of DataFrame?(&v48, &v48, &demangling cache variable for type metadata for URL?);
  if (__swift_getEnumTagSinglePayload(&v48, 1, v16) == 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v48, &demangling cache variable for type metadata for URL?);
  }

  v23 = v58;
  (*(v58 + 32))(v61, &v48, v16);
  URL.appendingPathComponent(_:)(0x696C702E6174656DLL, 0xEA00000000007473);
  v24 = type metadata accessor for PropertyListEncoder(0);
  swift_allocObject(v24, *(v24 + 48), *(v24 + 52));
  v63 = PropertyListEncoder.init()();
  if (one-time initialization token for sessionDirectory != -1)
  {
    swift_once(&one-time initialization token for sessionDirectory, one-time initialization function for sessionDirectory);
  }

  v25 = v60;
  v26 = __swift_project_value_buffer(v60, static CodingUserInfoKey.sessionDirectory);
  v27 = v55;
  (*(v56 + 16))(v55, v26, v25);
  v50[3] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v50);
  v60 = v16;
  (*(v23 + 16))(boxed_opaque_existential_0, v61, v16);
  v29 = dispatch thunk of PropertyListEncoder.userInfo.modify(v49);
  specialized Dictionary.subscript.setter(v50, v27);
  v29(v49, 0);
  v30 = v57 + *(*v57 + 112);
  swift_beginAccess(v30, v50, 0, 0);
  v31 = v30;
  v32 = v52;
  v33 = v51;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v52, v51);
  v34 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(v54, v33, &protocol conformance descriptor for MLTrainingSession<A>.Metadata);
  v35 = v59;
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)(v32, v53, v34);
  if (v35)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, v33);
  }

  else
  {
    v38 = v32;
    v39 = v33;
    v40 = v36;
    v41 = v37;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v39);
    Data.write(to:options:)(v62, 0, v40, v41);
    v59 = 0;
    v45 = *(v57 + direct field offset for MLTrainingSession.delegate + 24);
    v46 = *(v57 + direct field offset for MLTrainingSession.delegate + 32);
    __swift_project_boxed_opaque_existential_0Tm((v57 + direct field offset for MLTrainingSession.delegate), v45);
    v47 = v59;
    (*(*(v46 + 8) + 8))(v61, v45);
    if (!v47)
    {
      outlined consume of Data._Representation(v40, v41);

      v42 = *(v58 + 8);
      v43 = v62;
      goto LABEL_9;
    }

    outlined consume of Data._Representation(v40, v41);
  }

  v42 = *(v58 + 8);
  v43 = v62;
LABEL_9:
  v44 = v60;
  v42(v43, v60);
  return (v42)(v61, v44);
}

uint64_t _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5()
{
  v52 = v0;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v51 = *(v58 - 8);
  v1 = *(v51 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v62 = &v42;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v53 = *(v60 - 8);
  v4 = *(v53 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v64 = &v42;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v63 = &v42;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v54 = *(v57 - 8);
  v9 = *(v54 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v61 = &v42;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v13 = ClassificationMetrics.labels.getter(v12);
  v13;
  v14 = specialized _copyCollectionToContiguousArray<A>(_:)(v13);
  v13;
  v43[0] = v14;
  specialized MutableCollection<>.sort(by:)(v43);
  v50 = 0;
  v13;
  v15 = v43[0];
  ClassificationMetrics.makeConfusionMatrix<>()(v12, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
  v16 = ClassificationMetrics.labels.getter(v12);
  v17 = *(v16 + 16);
  v16;
  Column.init(name:capacity:)(0x7373616C63, 0xE500000000000000, v17, &type metadata for String);
  v18 = ClassificationMetrics.labels.getter(v12);
  v19 = *(v18 + 16);
  v18;
  Column.init(name:capacity:)(0x6574636964657270, 0xEF7373616C635F64, v19, &type metadata for String);
  v20 = ClassificationMetrics.labels.getter(v12);
  v21 = *(v20 + 16);
  v20;
  Column.init(name:capacity:)(0x746E756F63, 0xE500000000000000, v21, &type metadata for Int);
  v22 = *(v15 + 2);
  v48 = 0;
  v49 = v22;
  v43[0] = 0;
  v43[1] = v22;
  v44 = 0;
  v45 = v22;
  v46 = 0;
  v47 = 1;
  v59 = v15;
  v56 = v15 + 32;
  while (1)
  {
    v23 = specialized Product2Sequence.Iterator.next()();
    if (v25)
    {
      break;
    }

    v26 = v23;
    v27 = v24;
    v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v29 = swift_allocObject(v28, 48, 7);
    v29[2] = 2;
    v29[3] = 4;
    v29[4] = v26;
    v29[5] = v27;
    v30 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
    MLShapedArrayProtocol.subscript.getter(v29, v57, v30);
    v29;
    v31 = _mm_cvtsi32_si128(v55);
    if ((_mm_cvtsi128_si32(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      BUG();
    }

    if (*v31.i32 <= -9.2233731e18)
    {
      BUG();
    }

    if (*v31.i32 >= 9.223372e18)
    {
      BUG();
    }

    if (*v31.i32)
    {
      if (v26 < 0)
      {
        BUG();
      }

      if (v26 >= *(v59 + 2))
      {
        BUG();
      }

      v55 = *&v56[16 * v26];
      Column.append(_:)(&v55, v60);
      if (v27 < 0)
      {
        BUG();
      }

      if (v27 >= *(v59 + 2))
      {
        BUG();
      }

      v55 = *&v56[16 * v27];
      Column.append(_:)(&v55, v60);
      *&v55 = *v31.i32;
      Column.append(_:)(&v55, v58);
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v33 = type metadata accessor for AnyColumn(0);
  v34 = swift_allocObject(v32, ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)) + 3 * *(*(v33 - 8) + 72), *(*(v33 - 8) + 80) | 7);
  *(v34 + 16) = 3;
  *(v34 + 24) = 6;
  v35 = v60;
  Column.eraseToAnyColumn()(v60);
  Column.eraseToAnyColumn()(v35);
  v36 = v58;
  v37 = v62;
  Column.eraseToAnyColumn()(v58);
  v43[0] = v34;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v39 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(v43, v38, v39);
  (*(v51 + 8))(v37, v36);
  v40 = *(v53 + 8);
  v40(v64, v35);
  v40(v63, v35);
  return (*(v54 + 8))(v61, v57);
}

uint64_t _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSi_Tt1g5()
{
  v50 = v0;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v51 = *(v54 - 8);
  v1 = *(v51 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v56 = v41;
  v4 = alloca(v1);
  v5 = alloca(v1);
  v58 = v41;
  v6 = alloca(v1);
  v7 = alloca(v1);
  v57 = v41;
  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v52 = *(v53 - 8);
  v8 = *(v52 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v55 = v41;
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v12 = ClassificationMetrics.labels.getter(v11);
  v12;
  v13 = specialized _copyCollectionToContiguousArray<A>(_:)(v12);
  v12;
  v42[0] = v13;
  specialized MutableCollection<>.sort(by:)(v42);
  v49 = 0;
  v12;
  v14 = v42[0];
  ClassificationMetrics.makeConfusionMatrix<>()(v11, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
  v15 = ClassificationMetrics.labels.getter(v11);
  v16 = *(v15 + 16);
  v15;
  Column.init(name:capacity:)(0x7373616C63, 0xE500000000000000, v16, &type metadata for Int);
  v17 = ClassificationMetrics.labels.getter(v11);
  v18 = *(v17 + 16);
  v17;
  Column.init(name:capacity:)(0x6574636964657270, 0xEF7373616C635F64, v18, &type metadata for Int);
  v19 = ClassificationMetrics.labels.getter(v11);
  v20 = *(v19 + 16);
  v19;
  Column.init(name:capacity:)(0x746E756F63, 0xE500000000000000, v20, &type metadata for Int);
  v21 = *(v14 + 2);
  v47 = 0;
  v48 = v21;
  v42[0] = 0;
  v42[1] = v21;
  v43 = 0;
  v44 = v21;
  v45 = 0;
  v46 = 1;
  while (1)
  {
    v22 = specialized Product2Sequence.Iterator.next()();
    if (v24)
    {
      break;
    }

    v25 = v22;
    v26 = v23;
    v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v28 = swift_allocObject(v27, 48, 7);
    v28[2] = 2;
    v28[3] = 4;
    v28[4] = v25;
    v28[5] = v26;
    v29 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type MLShapedArray<Float> and conformance MLShapedArray<A>, &demangling cache variable for type metadata for MLShapedArray<Float>, &protocol conformance descriptor for MLShapedArray<A>);
    MLShapedArrayProtocol.subscript.getter(v28, v53, v29);
    v28;
    v30 = _mm_cvtsi32_si128(v59[0]);
    if ((_mm_cvtsi128_si32(v30) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      BUG();
    }

    if (*v30.i32 <= -9.2233731e18)
    {
      BUG();
    }

    if (*v30.i32 >= 9.223372e18)
    {
      BUG();
    }

    if (*v30.i32)
    {
      if (v25 < 0)
      {
        BUG();
      }

      if (v25 >= *(v14 + 2))
      {
        BUG();
      }

      *v59 = *&v14[8 * v25 + 32];
      Column.append(_:)(v59, v54);
      if (v26 < 0)
      {
        BUG();
      }

      if (v26 >= *(v14 + 2))
      {
        BUG();
      }

      *v59 = *&v14[8 * v26 + 32];
      v31 = v54;
      Column.append(_:)(v59, v54);
      *v59 = *v30.i32;
      Column.append(_:)(v59, v31);
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>);
  v33 = type metadata accessor for AnyColumn(0);
  v34 = swift_allocObject(v32, ((*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80)) + 3 * *(*(v33 - 8) + 72), *(*(v33 - 8) + 80) | 7);
  *(v34 + 16) = 3;
  *(v34 + 24) = 6;
  v35 = v54;
  Column.eraseToAnyColumn()(v54);
  Column.eraseToAnyColumn()(v35);
  v36 = v56;
  Column.eraseToAnyColumn()(v35);
  v42[0] = v34;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnyColumn]);
  v38 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [AnyColumn] and conformance [A], &demangling cache variable for type metadata for [AnyColumn], &protocol conformance descriptor for [A]);
  DataFrame.init<A>(columns:)(v42, v37, v38);
  v39 = *(v51 + 8);
  v39(v36, v35);
  v39(v58, v35);
  v39(v57, v35);
  return (*(v52 + 8))(v55, v53);
}

uint64_t _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(uint64_t a1)
{
  v71 = a1;
  v59 = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Double>) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v61 = v50;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v53 = *(v56 - 8);
  v5 = *(v53 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v64 = v50;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v62 = v50;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Int>) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v54 = *(v57 - 8);
  v13 = *(v54 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v63 = v50;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v68 = v50;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v69 = v50;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v70 = v50;
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<String>) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v55 = *(v58 - 8);
  v25 = *(v55 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v28 = ClassificationMetrics.labels.getter(v67);
  v29 = *(v28 + 16);
  v28;
  ColumnID.init(_:_:)(0x7373616C63, 0xE500000000000000, &type metadata for String);
  v66 = v50;
  Column.init(_:capacity:)(v50, v29, &type metadata for String);
  ColumnID.init(_:_:)(0x635F6C6175746361, 0xEC000000746E756FLL, &type metadata for Int);
  Column.init(_:capacity:)(v50, v29, &type metadata for Int);
  ColumnID.init(_:_:)(0xD000000000000013, "Starting a new session in '" + 0x8000000000000000, &type metadata for Int);
  Column.init(_:capacity:)(v50, v29, &type metadata for Int);
  ColumnID.init(_:_:)(0xD00000000000001ALL, "predicted_correctly" + 0x8000000000000000, &type metadata for Int);
  Column.init(_:capacity:)(v50, v29, &type metadata for Int);
  ColumnID.init(_:_:)(0xD000000000000016, "predicted_this_incorrectly" + 0x8000000000000000, &type metadata for Int);
  Column.init(_:capacity:)(v50, v29, &type metadata for Int);
  v30 = v61;
  ColumnID.init(_:_:)(0x6F69736963657270, 0xE90000000000006ELL, &type metadata for Double);
  Column.init(_:capacity:)(v30, v29, &type metadata for Double);
  ColumnID.init(_:_:)(0x6C6C61636572, 0xE600000000000000, &type metadata for Double);
  Column.init(_:capacity:)(v30, v29, &type metadata for Double);
  DataFrame.init()();
  v31 = ClassificationMetrics.labels.getter(v67);
  v31;
  v32 = specialized _copyCollectionToContiguousArray<A>(_:)(v31);
  v31;
  v65[0] = v32;
  specialized MutableCollection<>.sort(by:)(v65);
  v31;
  v60 = v65[0];
  v33 = *(v65[0] + 2);
  v34 = v66;
  v35 = v67;
  if (v33)
  {
    v36 = (v60 + 40);
    do
    {
      v61 = v33;
      v37 = *(v36 - 1);
      v51 = *v36;
      v65[0] = v37;
      v65[1] = v51;
      v51;
      Column.append(_:)(v65, v58);
      v38 = ClassificationMetrics.truePositiveCount(of:)(v65, v35);
      v52 = ClassificationMetrics.falseNegativeCount(of:)(v65, v35);
      v72[0] = ClassificationMetrics.count(label:)(v65, v67);
      v39 = v57;
      Column.append(_:)(v72, v57);
      v72[0] = v38;
      Column.append(_:)(v72, v39);
      v72[0] = v52;
      v35 = v67;
      Column.append(_:)(v72, v39);
      v72[0] = ClassificationMetrics.falsePositiveCount(of:)(v65, v35);
      Column.append(_:)(v72, v39);
      v72[0] = ClassificationMetrics.precisionScore(label:)(v65, v35);
      v40 = v56;
      Column.append(_:)(v72, v56);
      v72[0] = ClassificationMetrics.recallScore(label:)(v65, v35);
      Column.append(_:)(v72, v40);
      v34 = v66;
      v51;
      v36 += 2;
      v33 = v61 - 1;
    }

    while (v61 != &dword_0 + 1);
  }

  DataFrame.append<A>(column:)(v34, &type metadata for String);
  DataFrame.append<A>(column:)(v70, &type metadata for Int);
  DataFrame.append<A>(column:)(v69, &type metadata for Int);
  DataFrame.append<A>(column:)(v68, &type metadata for Int);
  v41 = v63;
  DataFrame.append<A>(column:)(v63, &type metadata for Int);
  v42 = v62;
  DataFrame.append<A>(column:)(v62, &type metadata for Double);
  v43 = v64;
  DataFrame.append<A>(column:)(v64, &type metadata for Double);
  v44 = *(v53 + 8);
  v45 = v56;
  v44(v43, v56);
  v44(v42, v45);
  v46 = *(v54 + 8);
  v47 = v41;
  v48 = v57;
  v46(v47, v57);
  v46(v68, v48);
  v46(v69, v48);
  v46(v70, v48);
  return (*(v55 + 8))(v66, v58);
}

uint64_t outlined copy of ClassificationMetricsContainer?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1;
    a2;
    return a3;
  }

  return result;
}

uint64_t sub_11FC0()
{
  v1 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v2 = *(v1 - 1);
  v29 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v29 + 16);
  v4 = v3 + *(v2 + 64);
  v31 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v5 = *(v31 - 8);
  v33 = *(v5 + 80);
  v30 = *(v5 + 64);
  v6 = v3 + v0;
  v28 = v0;
  *(v0 + v3);
  v7 = v3 + v0 + v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v34 = *(*(v8 - 8) + 8);
  v34(v7, v8);
  v32 = v1;
  v9 = v6 + v1[6];
  if (!__swift_getEnumTagSinglePayload(v9, 1, v8))
  {
    v34(v9, v8);
  }

  v10 = v33 + v4;
  v11 = v6 + v1[7];
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (!__swift_getEnumTagSinglePayload(v11, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v13 = ~v33 & v10;
  v14 = v32[8] + v6;
  v15 = v13;
  if (!__swift_getEnumTagSinglePayload(v14, 1, v12))
  {
    (*(*(v12 - 8) + 8))(v14, v12);
  }

  v16 = (v28 + v13);
  v17 = *(v28 + v15 + 8);
  if (v17 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*v16, v17);
  }

  v18 = v16 + *(v31 + 20);
  v19 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v20 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v18, v20);
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v22 = type metadata accessor for DataFrame(0);
        goto LABEL_16;
      case 1:
        v23 = type metadata accessor for URL(0);
        (*(*(v23 - 8) + 8))(v18, v23);
        v24 = v15;
        v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *&v18[v25[12] + 8];
        *&v18[v25[16] + 8];
        *&v18[v25[20] + 8];
        v26 = v25[24];
        v15 = v24;
        *&v18[v26 + 8];
        break;
      case 0:
        v22 = type metadata accessor for URL(0);
LABEL_16:
        (*(*(v22 - 8) + 8))(v18, v22);
        break;
    }
  }

  return swift_deallocObject(v28, v30 + v15, v33 | v29 | 7);
}

uint64_t partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLActivityClassifier.ModelParameters(0) - 8) + 80);
  v7 = swift_task_alloc(80);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

{
  v3 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(32);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)(a1, v4);
}

uint64_t partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)()
{
  v2 = *v0;
  *(*v0 + 16);
  return (*(v2 + 8))();
}

{
  return partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:)();
}

uint64_t sub_122ED()
{
  v1 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v11 = *(v2 + 64);
  v5 = v4 + v0;
  *(v0 + v4 + 40);
  *(v0 + v4 + 56);
  v10 = v0;
  *(v0 + v4 + 72);
  v12 = v1;
  v6 = v4 + v0 + *(v1 + 44);
  v7 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = *(v12 + 48) + v5;
  if (!__swift_getEnumTagSinglePayload(v8, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v8, v7);
  }

  return swift_deallocObject(v10, v11 + v4, v3 | 7);
}

uint64_t outlined release of MLActivityClassifier.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 24);
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined consume of MLDataTable?(v1, v3);
  v2;
  return a1;
}

uint64_t _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSi_Tt1g5(uint64_t a1)
{
  v66 = a1;
  v55 = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Double>) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v57 = v49;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v52 = *(v54 - 8);
  v5 = *(v52 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v60 = v49;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v58 = v49;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<Int>) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v53 = *(v65 - 8);
  v13 = *(v53 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v59 = v49;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v62 = v49;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v63 = v49;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v64 = v49;
  v22 = alloca(v13);
  v23 = alloca(v13);
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<Int>);
  v24 = ClassificationMetrics.labels.getter(v56);
  v25 = *(v24 + 16);
  v24;
  ColumnID.init(_:_:)(0x7373616C63, 0xE500000000000000, &type metadata for Int);
  v61 = v49;
  Column.init(_:capacity:)(v49, v25, &type metadata for Int);
  ColumnID.init(_:_:)(0x635F6C6175746361, 0xEC000000746E756FLL, &type metadata for Int);
  Column.init(_:capacity:)(v49, v25, &type metadata for Int);
  ColumnID.init(_:_:)(0xD000000000000013, "Starting a new session in '" + 0x8000000000000000, &type metadata for Int);
  Column.init(_:capacity:)(v49, v25, &type metadata for Int);
  ColumnID.init(_:_:)(0xD00000000000001ALL, "predicted_correctly" + 0x8000000000000000, &type metadata for Int);
  Column.init(_:capacity:)(v49, v25, &type metadata for Int);
  ColumnID.init(_:_:)(0xD000000000000016, "predicted_this_incorrectly" + 0x8000000000000000, &type metadata for Int);
  Column.init(_:capacity:)(v49, v25, &type metadata for Int);
  v26 = v57;
  ColumnID.init(_:_:)(0x6F69736963657270, 0xE90000000000006ELL, &type metadata for Double);
  Column.init(_:capacity:)(v26, v25, &type metadata for Double);
  ColumnID.init(_:_:)(0x6C6C61636572, 0xE600000000000000, &type metadata for Double);
  Column.init(_:capacity:)(v26, v25, &type metadata for Double);
  DataFrame.init()();
  v27 = ClassificationMetrics.labels.getter(v56);
  v27;
  v28 = specialized _copyCollectionToContiguousArray<A>(_:)(v27);
  v27;
  v67 = v28;
  specialized MutableCollection<>.sort(by:)(&v67);
  v27;
  v29 = v67;
  v30 = *(v67 + 2);
  v31 = v61;
  v32 = v56;
  if (v30)
  {
    v33 = 0;
    v50 = v67;
    v51 = v30;
    do
    {
      v34 = *&v29[8 * v33++ + 32];
      v67 = v34;
      Column.append(_:)(&v67, v65);
      v35 = ClassificationMetrics.truePositiveCount(of:)(&v67, v32);
      v57 = ClassificationMetrics.falseNegativeCount(of:)(&v67, v32);
      v68[0] = ClassificationMetrics.count(label:)(&v67, v32);
      Column.append(_:)(v68, v65);
      v68[0] = v35;
      Column.append(_:)(v68, v65);
      v68[0] = v57;
      v36 = v32;
      v37 = v65;
      Column.append(_:)(v68, v65);
      v68[0] = ClassificationMetrics.falsePositiveCount(of:)(&v67, v36);
      v38 = v37;
      v32 = v36;
      Column.append(_:)(v68, v38);
      v68[0] = ClassificationMetrics.precisionScore(label:)(&v67, v36);
      v39 = v54;
      Column.append(_:)(v68, v54);
      v68[0] = ClassificationMetrics.recallScore(label:)(&v67, v32);
      Column.append(_:)(v68, v39);
      v29 = v50;
      v31 = v61;
    }

    while (v51 != v33);
  }

  DataFrame.append<A>(column:)(v31, &type metadata for Int);
  DataFrame.append<A>(column:)(v64, &type metadata for Int);
  DataFrame.append<A>(column:)(v63, &type metadata for Int);
  DataFrame.append<A>(column:)(v62, &type metadata for Int);
  v40 = v59;
  DataFrame.append<A>(column:)(v59, &type metadata for Int);
  v41 = v58;
  DataFrame.append<A>(column:)(v58, &type metadata for Double);
  v42 = v60;
  DataFrame.append<A>(column:)(v60, &type metadata for Double);
  v43 = *(v52 + 8);
  v44 = v42;
  v45 = v54;
  v43(v44, v54);
  v43(v41, v45);
  v46 = *(v53 + 8);
  v47 = v65;
  v46(v40, v65);
  v46(v62, v47);
  v46(v63, v47);
  v46(v64, v47);
  return (v46)(v61, v47);
}

uint64_t specialized Product2Sequence.Iterator.next()()
{
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 8);
    result = *(v0 + 16);
    if (result == v1)
    {
LABEL_10:
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      return 0;
    }

    if (v1 < *v0)
    {
      BUG();
    }

    if (result < *v0)
    {
      BUG();
    }

    if (result >= v1)
    {
      BUG();
    }

    *(v0 + 16) = result + 1;
    *(v0 + 48) = result;
    *(v0 + 56) = 0;
  }

  else
  {
    result = *(v0 + 48);
  }

  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v4 == v3)
  {
    v5 = *(v0 + 8);
    result = *(v0 + 16);
    if (result == v5)
    {
      goto LABEL_10;
    }

    if (v5 < *v0)
    {
      BUG();
    }

    if (result < *v0)
    {
      BUG();
    }

    if (result >= v5)
    {
      BUG();
    }

    *(v0 + 16) = result + 1;
    *(v0 + 48) = result;
    *(v0 + 56) = 0;
    v4 = *(v0 + 64);
    v7 = *(v0 + 72);
    *(v0 + 24) = v4;
    *(v0 + 32) = v7;
    *(v0 + 40) = v4;
    if (v4 == v7)
    {
      return 0;
    }

    if (v4 > v7)
    {
      BUG();
    }

    if (v4 >= v7)
    {
      BUG();
    }
  }

  else
  {
    v6 = *(v0 + 24);
    if (v3 < v6)
    {
      BUG();
    }

    if (v4 < v6)
    {
      BUG();
    }

    if (v4 >= v3)
    {
      BUG();
    }
  }

  *(v0 + 40) = v4 + 1;
  return result;
}

uint64_t specialized closure #1 in blockAwait<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

{
  v7[21] = a7;
  v7[20] = a6;
  v7[19] = a5;
  v7[18] = a4;
  return swift_task_switch(specialized closure #1 in blockAwait<A>(_:), 0, 0);
}

uint64_t specialized closure #1 in blockAwait<A>(_:)()
{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLActivityClassifier(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 184) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in blockAwait<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in blockAwait<A>(_:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for URL(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 184) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in blockAwait<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in blockAwait<A>(_:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 144);
  *(v0 + 48) = 0;
  v1 += 16;
  swift_beginAccess(v1, v0 + 120, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v0 + 16, v1, &demangling cache variable for type metadata for Result<Any, Error>?);
  swift_endAccess(v0 + 120);
  v2 = *(v0 + 168);
  OS_dispatch_semaphore.signal()();
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 184);
  __swift_deallocate_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 56) = v2;
  *(v0 + 88) = 1;
  v1 += 16;
  swift_beginAccess(v1, v0 + 96, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v0 + 56, v1, &demangling cache variable for type metadata for Result<Any, Error>?);
  swift_endAccess(v0 + 96);
  v3 = *(v0 + 168);
  OS_dispatch_semaphore.signal()();
  return (*(v0 + 8))();
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLActivityClassifier.Model(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLHandPoseClassifier(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLClassifierMetrics(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = &type metadata for MLRegressorMetrics;
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLStyleTransfer(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for _Model();
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for AnyColumn(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLImageClassifier(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ([AnnotatedFeature<CIImage, String>], [AnnotatedFeature<CIImage, String>]));
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v1 = v0[19];
  v0[5] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [(predicted: String, label: String)]);
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLActionClassifier(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLHandActionClassifier(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLSoundClassifier(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [AnnotatedPrediction<ClassificationDistribution<String>, String>]);
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v1 = v0[19];
  v0[5] = type metadata accessor for MLSoundClassifier.Model(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  v3 = (v1 + *v1);
  v4 = swift_task_alloc(v1[1]);
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in blockAwait<A>(_:);
  v5 = v0[20];
  return v3(boxed_opaque_existential_0);
}

{
  v1 = v0[19];
  v0[5] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ClassificationDistribution<String>]);
  v2 = (v1 + *v1);
  v3 = swift_task_alloc(v1[1]);
  v0[22] = v3;
  *v3 = v0;
  v3[1] = specialized closure #1 in blockAwait<A>(_:);
  v4 = v0[20];
  return v2(v0 + 2);
}

{
  v2 = *(*v1 + 176);
  *(*v1 + 184) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in blockAwait<A>(_:);
  }

  else
  {
    v3 = specialized closure #1 in blockAwait<A>(_:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  return specialized closure #1 in blockAwait<A>(_:)();
}

{
  return specialized closure #1 in blockAwait<A>(_:)();
}

{
  return specialized closure #1 in blockAwait<A>(_:)();
}

id sub_13D0F()
{
  v1 = v0;
  result = MLActivityClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLActivityClassifier(_OWORD *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v28 = *a2;
    *v3 = *a2;
    v3 = (v28 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
    v6 = type metadata accessor for LearningPhase(0);
    (*(*(v6 - 8) + 16))(a1 + v5, &a2[v5], v6);
    v7 = type metadata accessor for MLActivityClassifier.Model(0);
    v8 = v7[5];
    v95 = type metadata accessor for Conv2D(0);
    v87 = *(*(v95 - 8) + 16);
    v87(a1 + v8, &a2[v8], v95);
    v9 = v7[6];
    v90 = type metadata accessor for ReLU(0);
    v81 = *(*(v90 - 8) + 16);
    v81(a1 + v9, &a2[v9], v90);
    v10 = v7[7];
    __dstb = type metadata accessor for Dropout(0);
    v84 = *(*(__dstb - 1) + 16);
    v84(a1 + v10, &a2[v10], __dstb);
    v11 = v7[8];
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
    v87(a1 + v7[9], &a2[v7[9]], v95);
    v18 = v7[10];
    v19 = type metadata accessor for BatchNorm(0);
    (*(*(v19 - 8) + 16))(a1 + v18, &a2[v18], v19);
    v81(a1 + v7[11], &a2[v7[11]], v90);
    v84(a1 + v7[12], &a2[v7[12]], __dstb);
    v87(a1 + v7[13], &a2[v7[13]], v95);
    *(a1 + v7[14]) = *&a2[v7[14]];
    v20 = v7[15];
    v85 = *&a2[v20];
    *(a1 + v20) = v85;
    v96 = v7;
    v21 = v7[16];
    v22 = a1 + v21;
    v23 = &a2[v21];
    *(a1 + v21) = *&a2[v21];
    *(a1 + v21 + 8) = *&a2[v21 + 8];
    *(a1 + v21 + 16) = a2[v21 + 16];
    *(a1 + v21 + 24) = *&a2[v21 + 24];
    v77 = *&a2[v21 + 40];
    *(a1 + v21 + 40) = v77;
    *(a1 + v21 + 48) = *&a2[v21 + 48];
    v79 = *&a2[v21 + 56];
    *(a1 + v21 + 56) = v79;
    *(a1 + v21 + 64) = *&a2[v21 + 64];
    v74 = *&a2[v21 + 72];
    *(a1 + v21 + 72) = v74;
    v82 = type metadata accessor for MLActivityClassifier.Configuration(0);
    v24 = *(v82 + 44);
    v88 = v22;
    __dst = &v22[v24];
    v91 = v23;
    v25 = &v23[v24];
    v26 = type metadata accessor for DataFrame(0);
    v85;
    v77;
    v79;
    v74;
    if (__swift_getEnumTagSinglePayload(v25, 1, v26))
    {
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(__dst, v25, *(*(v27 - 8) + 64));
    }

    else
    {
      (*(*(v26 - 8) + 16))(__dst, v25, v26);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v26);
    }

    v29 = *(v82 + 48);
    v30 = &v88[v29];
    v31 = &v23[v29];
    v75 = v26;
    if (__swift_getEnumTagSinglePayload(&v91[v29], 1, v26))
    {
      v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
      memcpy(v30, v31, *(*(v32 - 8) + 64));
    }

    else
    {
      (*(*(v26 - 8) + 16))(v30, v31, v26);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v26);
    }

    v33 = v96[17];
    v34 = *&a2[v33];
    *(v3 + v33) = v34;
    v35 = v96[18];
    v36 = (v3 + v35);
    v37 = &a2[v35];
    v38 = *&a2[v35];
    v34;
    if (v38)
    {
      *v36 = v38;
      v36[1] = *(v37 + 1);
      v39 = *(v37 + 2);
      v36[2] = v39;

      v39;
    }

    else
    {
      v36[2] = *(v37 + 2);
      *v36 = *v37;
    }

    v40 = a3[5];
    v41 = *&a2[v40];
    *(v3 + v40) = v41;
    v42 = a3[6];
    v43 = v3 + v42;
    v44 = &a2[v42];
    v45 = a2[v42 + 8];
    v41;
    if (v45 == -1)
    {
      v43[8] = v44[8];
      *v43 = *v44;
    }

    else
    {
      v46 = *v44;
      outlined copy of Result<_DataTable, Error>(*v44, v45);
      *v43 = v46;
      v43[8] = v45 & 1;
    }

    v83 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
    v47 = v83[5];
    v89 = v43;
    v48 = &v43[v47];
    v97 = v44;
    v49 = &v44[v47];
    v50 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v49, v50) == 1)
    {
      __dsta = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v49, __dsta);
      v52 = a2;
      v86 = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        (*(*(v75 - 8) + 16))(v48, v49);
      }

      else if (EnumCaseMultiPayload == 1)
      {
        v53 = type metadata accessor for URL(0);
        (*(*(v53 - 8) + 16))(v48, v49, v53);
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v55 = v54[12];
        *&v48[v55] = *&v49[v55];
        v56 = *&v49[v55 + 8];
        *&v48[v55 + 8] = v56;
        v57 = v54[16];
        *&v48[v57] = *&v49[v57];
        v78 = *&v49[v57 + 8];
        *&v48[v57 + 8] = v78;
        v58 = v54[20];
        *&v48[v58] = *&v49[v58];
        v80 = *&v49[v58 + 8];
        *&v48[v58 + 8] = v80;
        v59 = v54[24];
        *&v48[v59] = *&v49[v59];
        v60 = *&v49[v59 + 8];
        *&v48[v59 + 8] = v60;
        v56;
        v78;
        v80;
        v60;
      }

      else
      {
        v61 = type metadata accessor for URL(0);
        (*(*(v61 - 8) + 16))(v48, v49, v61);
      }

      swift_storeEnumTagMultiPayload(v48, __dsta, v86);
      swift_storeEnumTagMultiPayload(v48, v50, 1);
    }

    else
    {
      memcpy(v48, v49, *(*(v50 - 8) + 64));
      v52 = a2;
    }

    v62 = v83[6];
    v89[v62 + 8] = v97[v62 + 8];
    *&v89[v62] = *&v97[v62];
    v63 = v83[7];
    *&v89[v63] = *&v97[v63];
    v89[v63 + 8] = v97[v63 + 8];
    v64 = v83[8];
    *&v89[v64] = *&v97[v64];
    v89[v64 + 8] = v97[v64 + 8];
    v65 = a3[7];
    *(v3 + v65) = *(v52 + v65);
    v66 = *(v52 + v65 + 8);
    *(v3 + v65 + 8) = v66;
    v67 = a3[8];
    *(v3 + v67) = *(v52 + v67);
    v68 = *(v52 + v67 + 8);
    *(v3 + v67 + 8) = v68;
    v69 = a3[9];
    v70 = *(v52 + v69);
    *(v3 + v69) = v70;
    v71 = a3[10];
    *(v3 + v71) = *(v52 + v71);
    v72 = *(v52 + v71 + 8);
    *(v3 + v71 + 8) = v72;
    v66;
    v68;
    v70;
    v72;
  }

  return v3;
}

uint64_t destroy for MLActivityClassifier(uint64_t a1, int *a2)
{
  v3 = a1 + *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  v6 = a1 + v5[5];
  v34 = type metadata accessor for Conv2D(0);
  v35 = *(*(v34 - 8) + 8);
  v35(v6, v34);
  v7 = a1 + v5[6];
  v36 = type metadata accessor for ReLU(0);
  v31 = *(*(v36 - 8) + 8);
  v31(v7, v36);
  v8 = a1 + v5[7];
  v32 = type metadata accessor for Dropout(0);
  v33 = *(*(v32 - 8) + 8);
  v33(v8, v32);
  v9 = a1 + v5[8];
  v10 = v9 + *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v11 = type metadata accessor for LSTM(0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v35(a1 + v5[9], v34);
  v12 = a1 + v5[10];
  v13 = type metadata accessor for BatchNorm(0);
  (*(*(v13 - 8) + 8))(v12, v13);
  v31(a1 + v5[11], v36);
  v33(a1 + v5[12], v32);
  v35(a1 + v5[13], v34);
  *(a1 + v5[15]);
  v14 = (a1 + v5[16]);
  v14[5];
  v14[7];
  v14[9];
  v37 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v15 = v14 + *(v37 + 44);
  v16 = type metadata accessor for DataFrame(0);
  if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v15, v16);
  }

  v17 = v14 + *(v37 + 48);
  if (!__swift_getEnumTagSinglePayload(v17, 1, v16))
  {
    (*(*(v16 - 8) + 8))(v17, v16);
  }

  v18 = v16;

  v19 = v5[18];
  if (*(a1 + v19))
  {

    v20 = *(a1 + v19 + 8);

    *(a1 + v19 + 16);
  }

  v21 = a1 + a2[6];
  v22 = *(v21 + 8);
  if (v22 != -1)
  {
    outlined consume of Result<_DataTable, Error>(*v21, v22);
  }

  v23 = *(type metadata accessor for MLActivityClassifier.ModelParameters(0) + 20) + v21;
  v24 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v23, v24) == 1)
  {
    v25 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v23, v25);
    switch(EnumCaseMultiPayload)
    {
      case 2:
        (*(*(v18 - 8) + 8))(v23, v18);
        break;
      case 1:
        v28 = type metadata accessor for URL(0);
        (*(*(v28 - 8) + 8))(v23, v28);
        v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(v23 + v29[12] + 8);
        *(v23 + v29[16] + 8);
        *(v23 + v29[20] + 8);
        *(v23 + v29[24] + 8);
        break;
      case 0:
        v27 = type metadata accessor for URL(0);
        (*(*(v27 - 8) + 8))(v23, v27);
        break;
    }
  }

  *(a1 + a2[7] + 8);
  *(a1 + a2[8] + 8);
  *(a1 + a2[9]);
  return *(a1 + a2[10] + 8);
}

char *initializeWithCopy for MLActivityClassifier(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v3 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v4 = type metadata accessor for LearningPhase(0);
  (*(*(v4 - 8) + 16))(&a1[v3], &a2[v3], v4);
  v5 = type metadata accessor for MLActivityClassifier.Model(0);
  v6 = v5[5];
  v88 = type metadata accessor for Conv2D(0);
  v93 = *(*(v88 - 8) + 16);
  v93(&a1[v6], &a2[v6], v88);
  v7 = v5[6];
  v79 = type metadata accessor for ReLU(0);
  v82 = *(*(v79 - 8) + 16);
  v82(&a1[v7], &a2[v7], v79);
  v8 = v5[7];
  v85 = type metadata accessor for Dropout(0);
  __dsta = *(*(v85 - 8) + 16);
  __dsta(&a1[v8], &a2[v8], v85);
  v9 = v5[8];
  v10 = &a1[v9];
  v11 = &a2[v9];
  *&a1[v9] = *&a2[v9];
  a1[v9 + 16] = a2[v9 + 16];
  a1[v9 + 17] = a2[v9 + 17];
  v12 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v13 = &v10[v12];
  v14 = &v11[v12];
  v15 = type metadata accessor for LSTM(0);
  (*(*(v15 - 8) + 16))(v13, v14, v15);
  v93(&a1[v5[9]], &a2[v5[9]], v88);
  v16 = v5[10];
  v17 = type metadata accessor for BatchNorm(0);
  (*(*(v17 - 8) + 16))(&a1[v16], &a2[v16], v17);
  v82(&a1[v5[11]], &a2[v5[11]], v79);
  __dsta(&a1[v5[12]], &a2[v5[12]], v85);
  v93(&a1[v5[13]], &a2[v5[13]], v88);
  *&a1[v5[14]] = *&a2[v5[14]];
  v18 = v5[15];
  v77 = *&a2[v18];
  *&a1[v18] = v77;
  v19 = v5[16];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *&a1[v19] = *&a2[v19];
  *&a1[v19 + 8] = *&a2[v19 + 8];
  a1[v19 + 16] = a2[v19 + 16];
  *&a1[v19 + 24] = *&a2[v19 + 24];
  v22 = *&a2[v19 + 40];
  *&a1[v19 + 40] = v22;
  *&a1[v19 + 48] = *&a2[v19 + 48];
  v73 = *&a2[v19 + 56];
  *&a1[v19 + 56] = v73;
  *&a1[v19 + 64] = *&a2[v19 + 64];
  v74 = *&a2[v19 + 72];
  *&a1[v19 + 72] = v74;
  v86 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v23 = *(v86 + 44);
  v80 = v20;
  __dst = &v20[v23];
  v83 = v21;
  v24 = &v21[v23];
  v25 = type metadata accessor for DataFrame(0);
  v77;
  v22;
  v73;
  v74;
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

  v27 = *(v86 + 48);
  v28 = &v80[v27];
  v29 = &v83[v27];
  v75 = v25;
  if (__swift_getEnumTagSinglePayload(&v83[v27], 1, v25))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
    memcpy(v28, v29, *(*(v30 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(v28, v29, v25);
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
  }

  v31 = v5[17];
  v32 = *&a2[v31];
  *&a1[v31] = v32;
  v33 = v5[18];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *&a2[v33];
  v32;
  if (v36)
  {
    *v34 = v36;
    *(v34 + 1) = *(v35 + 1);
    v37 = *(v35 + 2);
    *(v34 + 2) = v37;

    v37;
  }

  else
  {
    *(v34 + 2) = *(v35 + 2);
    *v34 = *v35;
  }

  v38 = a3[5];
  v39 = *&a2[v38];
  *&a1[v38] = v39;
  v40 = a3[6];
  v41 = &a1[v40];
  v42 = &a2[v40];
  v43 = a2[v40 + 8];
  v39;
  if (v43 == -1)
  {
    v41[8] = v42[8];
    *v41 = *v42;
  }

  else
  {
    v44 = *v42;
    outlined copy of Result<_DataTable, Error>(*v42, v43);
    *v41 = v44;
    v41[8] = v43 & 1;
  }

  v81 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  v45 = v81[5];
  v46 = &v41[v45];
  v94 = v42;
  v47 = &v42[v45];
  v48 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
  if (swift_getEnumCaseMultiPayload(v47, v48) == 1)
  {
    v84 = v48;
    v49 = v46;
    v50 = type metadata accessor for MLActivityClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v47, v50);
    v87 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      (*(*(v75 - 8) + 16))(v49, v47);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v52 = type metadata accessor for URL(0);
      (*(*(v52 - 8) + 16))(v49, v47, v52);
      v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      v54 = v53[12];
      *&v49[v54] = *&v47[v54];
      v55 = *&v47[v54 + 8];
      *&v49[v54 + 8] = v55;
      v56 = v53[16];
      *&v49[v56] = *&v47[v56];
      __dstb = *&v47[v56 + 8];
      *&v49[v56 + 8] = __dstb;
      v57 = v53[20];
      *&v49[v57] = *&v47[v57];
      v78 = *&v47[v57 + 8];
      *&v49[v57 + 8] = v78;
      v58 = v53[24];
      *&v49[v58] = *&v47[v58];
      v59 = *&v47[v58 + 8];
      *&v49[v58 + 8] = v59;
      v55;
      __dstb;
      v78;
      v59;
    }

    else
    {
      v60 = type metadata accessor for URL(0);
      (*(*(v60 - 8) + 16))(v49, v47, v60);
    }

    swift_storeEnumTagMultiPayload(v49, v50, v87);
    swift_storeEnumTagMultiPayload(v49, v84, 1);
  }

  else
  {
    memcpy(v46, v47, *(*(v48 - 8) + 64));
  }

  v61 = v81[6];
  v41[v61 + 8] = v94[v61 + 8];
  *&v41[v61] = *&v94[v61];
  v62 = v81[7];
  *&v41[v62] = *&v94[v62];
  v41[v62 + 8] = v94[v62 + 8];
  v63 = v81[8];
  *&v41[v63] = *&v94[v63];
  v41[v63 + 8] = v94[v63 + 8];
  v64 = a3[7];
  *&a1[v64] = *&a2[v64];
  v65 = *&a2[v64 + 8];
  *&a1[v64 + 8] = v65;
  v66 = a3[8];
  *&a1[v66] = *&a2[v66];
  v67 = *&a2[v66 + 8];
  *&a1[v66 + 8] = v67;
  v68 = a3[9];
  v69 = *&a2[v68];
  *&a1[v68] = v69;
  v70 = a3[10];
  *&a1[v70] = *&a2[v70];
  v71 = *&a2[v70 + 8];
  *&a1[v70 + 8] = v71;
  v65;
  v67;
  v69;
  v71;
  return a1;
}

char *assignWithCopy for MLActivityClassifier(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v5 = *(type metadata accessor for MLActivityClassifier.InputBlock(0) + 24);
  v6 = type metadata accessor for LearningPhase(0);
  (*(*(v6 - 8) + 24))(&a1[v5], &a2[v5], v6);
  v7 = type metadata accessor for MLActivityClassifier.Model(0);
  v8 = *(v7 + 20);
  v9 = v7;
  v111 = type metadata accessor for Conv2D(0);
  __srcb = *(*(v111 - 8) + 24);
  __srcb(&a1[v8], &a2[v8], v111);
  v10 = v9[6];
  v116 = type metadata accessor for ReLU(0);
  v106 = *(*(v116 - 1) + 24);
  v106(&a1[v10], &a2[v10], v116);
  v11 = v9;
  v12 = v9[7];
  v108 = type metadata accessor for Dropout(0);
  __dstb = *(*(v108 - 8) + 24);
  __dstb(&a1[v12], &a2[v12], v108);
  v13 = v11[8];
  v14 = &a1[v13];
  v15 = &a2[v13];
  *&a1[v13] = *&a2[v13];
  *&a1[v13 + 8] = *&a2[v13 + 8];
  a1[v13 + 16] = a2[v13 + 16];
  a1[v13 + 17] = a2[v13 + 17];
  v16 = *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v17 = &v14[v16];
  v18 = &v15[v16];
  v19 = type metadata accessor for LSTM(0);
  (*(*(v19 - 8) + 24))(v17, v18, v19);
  __srcb(&a1[v11[9]], &a2[v11[9]], v111);
  v20 = v11[10];
  v21 = type metadata accessor for BatchNorm(0);
  (*(*(v21 - 8) + 24))(&a1[v20], &a2[v20], v21);
  v106(&a1[v11[11]], &a2[v11[11]], v116);
  __dstb(&a1[v11[12]], &a2[v11[12]], v108);
  __srcb(&a1[v11[13]], &a2[v11[13]], v111);
  *&a1[v11[14]] = *&a2[v11[14]];
  v22 = v11[15];
  v23 = v11;
  v24 = *&a2[v22];
  v25 = *&a1[v22];
  *&a1[v22] = v24;
  v24;
  v25;
  v107 = v23;
  v26 = v23[16];
  __src = &a2[v26];
  *&a1[v26] = *&a2[v26];
  *&a1[v26 + 8] = *&a2[v26 + 8];
  a1[v26 + 16] = a2[v26 + 16];
  *&a1[v26 + 24] = *&a2[v26 + 24];
  *&a1[v26 + 32] = *&a2[v26 + 32];
  v27 = *&a2[v26 + 40];
  v28 = *&a1[v26 + 40];
  *&a1[v26 + 40] = v27;
  v27;
  v28;
  *&a1[v26 + 48] = *&a2[v26 + 48];
  v29 = *&a2[v26 + 56];
  v30 = *&a1[v26 + 56];
  *&a1[v26 + 56] = v29;
  v29;
  v30;
  *&a1[v26 + 64] = *&a2[v26 + 64];
  v31 = *&a2[v26 + 72];
  v32 = *&a1[v26 + 72];
  v112 = a1;
  *&a1[v26 + 72] = v31;
  v31;
  v32;
  v109 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v33 = *(v109 + 44);
  v117 = &a1[v26];
  v34 = &a1[v26 + v33];
  v35 = &__src[v33];
  v36 = type metadata accessor for DataFrame(0);
  __dst = v34;
  LODWORD(v34) = __swift_getEnumTagSinglePayload(v34, 1, v36);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v36);
  if (v34)
  {
    if (EnumTagSinglePayload)
    {
      v38 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v39 = __dst;
LABEL_6:
      memcpy(v39, v35, v38);
      goto LABEL_9;
    }

    (*(*(v36 - 8) + 16))(__dst, v35, v36);
    __swift_storeEnumTagSinglePayload(__dst, 0, 1, v36);
  }

  else
  {
    v40 = *(v36 - 8);
    if (EnumTagSinglePayload)
    {
      (*(v40 + 8))(__dst, v36);
      v38 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v39 = __dst;
      goto LABEL_6;
    }

    (*(v40 + 24))(__dst, v35, v36);
  }

LABEL_9:
  v41 = *(v109 + 48);
  v42 = &__src[v41];
  v118 = &v117[v41];
  v43 = __swift_getEnumTagSinglePayload(v118, 1, v36);
  v44 = __swift_getEnumTagSinglePayload(v42, 1, v36);
  v104 = v36;
  if (v43)
  {
    if (v44)
    {
      v45 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v46 = v118;
LABEL_14:
      memcpy(v46, v42, v45);
      goto LABEL_17;
    }

    (*(*(v36 - 8) + 16))(v118, v42, v36);
    __swift_storeEnumTagSinglePayload(v118, 0, 1, v36);
  }

  else
  {
    v47 = *(v36 - 8);
    if (v44)
    {
      (*(v47 + 8))(v118, v36);
      v45 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
      v46 = v118;
      goto LABEL_14;
    }

    (*(v47 + 24))(v118, v42, v36);
  }

LABEL_17:
  v48 = v107[17];
  v49 = *&v112[v48];
  v50 = *&a2[v48];
  *&v112[v48] = v50;
  v50;

  v51 = v107[18];
  v52 = &v112[v51];
  v53 = &a2[v51];
  v54 = *&a2[v51];
  if (*&v112[v51])
  {
    if (v54)
    {
      *v52 = v54;

      v55 = *(v52 + 1);
      *(v52 + 1) = *(v53 + 1);

      v56 = *(v53 + 2);
      v57 = *(v52 + 2);
      *(v52 + 2) = v56;
      v56;
      v57;
    }

    else
    {
      outlined destroy of ClassificationMetricsContainer(v52);
      *v52 = *v53;
      *(v52 + 2) = *(v53 + 2);
    }
  }

  else if (v54)
  {
    *v52 = v54;
    *(v52 + 1) = *(v53 + 1);
    v58 = *(v53 + 2);
    *(v52 + 2) = v58;

    v58;
  }

  else
  {
    *(v52 + 2) = *(v53 + 2);
    *v52 = *v53;
  }

  v59 = a3[5];
  v60 = *&a2[v59];
  v61 = *&v112[v59];
  *&v112[v59] = v60;
  v60;

  v62 = a3[6];
  v63 = &v112[v62];
  v64 = &a2[v62];
  v65 = a2[v62 + 8];
  if (v112[v62 + 8] == -1)
  {
    v66 = &a2[v62];
    if (v65 == -1)
    {
      v63[8] = v64[8];
      *v63 = *v64;
    }

    else
    {
      v70 = *v64;
      outlined copy of Result<_DataTable, Error>(v70, v65);
      *v63 = v70;
      v63[8] = v65 & 1;
    }
  }

  else if (v65 == -1)
  {
    outlined destroy of MLDataTable(&v112[v62]);
    v66 = v64;
    *v63 = *v64;
    v63[8] = v64[8];
  }

  else
  {
    v66 = &a2[v62];
    v67 = *v64;
    outlined copy of Result<_DataTable, Error>(v67, v65);
    v68 = *v63;
    *v63 = v67;
    v69 = *(v63 + 2);
    v63[8] = v65 & 1;
    outlined consume of Result<_DataTable, Error>(v68, v69);
  }

  v71 = type metadata accessor for MLActivityClassifier.ModelParameters(0);
  if (v112 != a2)
  {
    __srca = v71;
    v72 = v71[5];
    v73 = &v63[v72];
    v74 = &v66[v72];
    v119 = v73;
    outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLActivityClassifier.ModelParameters.Validation);
    v75 = type metadata accessor for MLActivityClassifier.ModelParameters.Validation(0);
    if (swift_getEnumCaseMultiPayload(v74, v75) == 1)
    {
      v110 = type metadata accessor for MLActivityClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v74, v110);
      __dsta = EnumCaseMultiPayload;
      if (EnumCaseMultiPayload == 2)
      {
        (*(*(v104 - 8) + 16))(v73, v74);
      }

      else if (EnumCaseMultiPayload == 1)
      {
        v77 = type metadata accessor for URL(0);
        (*(*(v77 - 8) + 16))(v73, v74, v77);
        v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v79 = v78[12];
        *&v73[v79] = *&v74[v79];
        v80 = *&v74[v79 + 8];
        *&v119[v79 + 8] = v80;
        v81 = v78[16];
        *&v119[v81] = *&v74[v81];
        v105 = *&v74[v81 + 8];
        *&v119[v81 + 8] = v105;
        v82 = v78[20];
        *&v119[v82] = *&v74[v82];
        v102 = *&v74[v82 + 8];
        *&v119[v82 + 8] = v102;
        v83 = v78[24];
        *&v119[v83] = *&v74[v83];
        v84 = *&v74[v83 + 8];
        *&v119[v83 + 8] = v84;
        v80;
        v105;
        v102;
        v84;
      }

      else
      {
        v85 = type metadata accessor for URL(0);
        (*(*(v85 - 8) + 16))(v73, v74, v85);
      }

      swift_storeEnumTagMultiPayload(v119, v110, __dsta);
      swift_storeEnumTagMultiPayload(v119, v75, 1);
    }

    else
    {
      memcpy(v73, v74, *(*(v75 - 8) + 64));
    }

    v71 = __srca;
  }

  v86 = v71[6];
  v63[v86 + 8] = v66[v86 + 8];
  *&v63[v86] = *&v66[v86];
  v87 = v71[7];
  *&v63[v87] = *&v66[v87];
  v63[v87 + 8] = v66[v87 + 8];
  v88 = v71[8];
  *&v63[v88] = *&v66[v88];
  v63[v88 + 8] = v66[v88 + 8];
  v89 = a3[7];
  *&v112[v89] = *&a2[v89];
  v90 = *&a2[v89 + 8];
  v91 = *&v112[v89 + 8];
  *&v112[v89 + 8] = v90;
  v90;
  v91;
  v92 = a3[8];
  *&v112[v92] = *&a2[v92];
  v93 = *&a2[v92 + 8];
  v94 = *&v112[v92 + 8];
  *&v112[v92 + 8] = v93;
  v93;
  v94;
  v95 = a3[9];
  v96 = *&a2[v95];
  v97 = *&v112[v95];
  *&v112[v95] = v96;
  v96;
  v97;
  v98 = a3[10];
  *&v112[v98] = *&a2[v98];
  v99 = *&a2[v98 + 8];
  v100 = *&v112[v98 + 8];
  *&v112[v98 + 8] = v99;
  v99;
  v100;
  return v112;
}