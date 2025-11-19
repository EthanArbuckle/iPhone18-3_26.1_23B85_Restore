uint64_t partial apply for specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1)
{
  v12 = v1;
  v11 = v2;
  v3 = *(type metadata accessor for MLSoundClassifier.Classifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(*(type metadata accessor for TrainingTablePrinter(0) - 8) + 80);
  v13 = *(v12 + v7);
  v9 = swift_task_alloc(32);
  *(v11 + 16) = v9;
  *v9 = v11;
  v9[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return ((&async function pointer to specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:) + async function pointer to specialized closure #3 in MLSoundClassifier.init<A, B>(training:validation:parameters:)))(a1, v12 + v4, v12 + v5, v12 + v6, v13, v12 + ((v8 + v7 + 8) & ~v8));
}

uint64_t sub_2486A9()
{
  v30 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v1 = *(v30 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v29 = *(v1 + 64);
  v28 = type metadata accessor for TrainingTablePrinter(0);
  v4 = *(v28 - 8);
  v5 = *(v4 + 80);
  v27 = *(v4 + 64);
  v6 = v3 + v0;
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v3 + v0, v7);
  if (EnumCaseMultiPayload == 2)
  {
LABEL_5:
    v11 = *v6;
LABEL_6:
    v11;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v9 = type metadata accessor for MLSoundClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v9))
    {
      case 0u:
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 8))(v3 + v0, v10);
        break;
      case 2u:
        goto LABEL_5;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        v11 = *(v6 + 40);
        goto LABEL_6;
      case 4u:
        v26 = type metadata accessor for DataFrame(0);
        (*(*(v26 - 8) + 8))(v3 + v0, v26);
        v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, featureColumn: String, labelColumn: String, parameters: MLSoundClassifier.FeatureExtractionParameters));
        *(v6 + *(v31 + 48) + 8);
        v11 = *(v6 + *(v31 + 64) + 8);
        goto LABEL_6;
      default:
        break;
    }
  }

  v12 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  if (*(v6 + v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + v12));
  }

  v13 = *(v30 + 20) + v6;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v15 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (swift_getEnumCaseMultiPayload(v13, v14) == 1)
  {
    v15 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledName(v15);
  (*(*(v16 - 8) + 8))(v13, v16);
  v17 = v5 | v2 | 7;
  v18 = (v3 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v5 + v19 + 8) & ~v5;
  v21 = v20 + v27;
  *(v0 + v18);
  v22 = *(v0 + v19);

  v23 = v0 + v20;
  v24 = type metadata accessor for Date(0);
  (*(*(v24 - 8) + 8))(v23, v24);

  *(*(v28 + 24) + v23);
  return swift_deallocObject(v0, v21, v17);
}

uint64_t partial apply for specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)(uint64_t a1)
{
  v10 = v1;
  v3 = *(type metadata accessor for MLSoundClassifier.Classifier(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(*(type metadata accessor for TrainingTablePrinter(0) - 8) + 80);
  v11 = *(v10 + v6);
  v8 = swift_task_alloc(32);
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return ((&async function pointer to specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:) + async function pointer to specialized closure #4 in MLSoundClassifier.init<A, B>(training:validation:parameters:)))(a1, v10 + v4, v10 + v5, v11, v10 + ((v7 + v6 + 8) & ~v7));
}

char _ss11_StringGutsV11withCStringyxxSPys4Int8VGKXEKlFxSRyAEGKXEfU_Sb_TG5TA_0()
{
  v3 = v2;
  v4 = v0;
  v5 = *(v2 + 24);
  result = (*(v3 + 16))();
  if (!v1)
  {
    result = v7;
    *v4 = v7;
  }

  return result;
}

void *MLWordEmbedding.ModelParameters.init(language:revision:)(uint64_t a1, uint64_t a2)
{
  *result = a1;
  result[1] = a2;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLWordEmbedding.ModelParameters.validateRevision()()
{
  v20 = type metadata accessor for IndexSet(0);
  v19 = *(v20 - 8);
  v2 = *(v19 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = *v1;
  v18[0] = *(v1 + 8);
  v17 = v0;
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = NLLanguageUndetermined;
    v5 = 0;
  }

  v7 = objc_opt_self(NLEmbedding);
  v5;
  v8 = [v7 supportedRevisionsForLanguage:v6];
  v9 = v8;

  static IndexSet._unconditionallyBridgeFromObjectiveC(_:)(v9);
  v10 = v18[0];
  if (!IndexSet.contains(_:)(v18[0]))
  {
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    *(&v15 + 1);
    *&v15 = 0x6E6F697369766552;
    *(&v15 + 1) = 0xE900000000000020;
    v16 = v10;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v11._object;
    String.append(_:)(v11);
    object;
    v13._object = "und in the model." + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v13);
    *v18 = v15;
    v13._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13._object, 0, 0);
    *v14 = *v18;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v13._object);
  }

  (*(v19 + 8))(&v15, v20);
}

uint64_t MLWordEmbedding.ModelParameters.description.getter()
{
  v1 = v0[1];
  v9 = *v0;
  v9;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v9 = String.init<A>(describing:)(&v9, v2);
  v10 = v3;
  v4._object = 0xE100000000000000;
  v4._countAndFlagsBits = 10;
  String.append(_:)(v4);
  v4._countAndFlagsBits = v9;
  v5 = v10;
  v9 = 0x65676175676E614CLL;
  v10 = 0xEA0000000000203ALL;
  v4._object = v5;
  String.append(_:)(v4);
  v5;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8._object = v6;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v8);
  v8._object;
  v4._countAndFlagsBits = 0x6E6F697369766552;
  v4._object = 0xEA0000000000203ALL;
  String.append(_:)(v4);
  0xEA0000000000203ALL;
  return v9;
}

id MLWordEmbedding.ModelParameters.language.getter()
{
  v1 = *v0;
  *v0;
  return v1;
}

uint64_t MLWordEmbedding.ModelParameters.debugDescription.getter()
{
  v4 = *v0;
  v1 = *v0;
  v2 = MLWordEmbedding.ModelParameters.description.getter();

  return v2;
}

void *MLWordEmbedding.ModelParameters.playgroundDescription.getter()
{
  v2 = v0;
  v8 = *v1;
  v3 = *v1;
  v4 = MLWordEmbedding.ModelParameters.description.getter();
  v6 = v5;

  result = &type metadata for String;
  v2[3] = &type metadata for String;
  *v2 = v4;
  v2[1] = v6;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLWordEmbedding.ModelParameters(void *a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  v3;
  return a1;
}

uint64_t assignWithCopy for MLWordEmbedding.ModelParameters(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for MLWordEmbedding.ModelParameters(uint64_t a1, void *a2)
{
  v3 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

uint64_t getEnumTagSinglePayload for MLWordEmbedding.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

void storeEnumTagSinglePayload for MLWordEmbedding.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 16) = 0;
    }

    if (a2)
    {
      *a1 = 2 * a2;
    }
  }
}

char *initializeBufferWithCopyOfBuffer for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
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
        case 5u:
          JUMPOUT(0x249378);
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
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v38, v39) == 1)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
      (*(*(v40 - 8) + 16))(v37, v38, v40);
      v41 = 1;
      v42 = v37;
      v43 = v39;
    }

    else
    {
      v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
      (*(*(v44 - 8) + 16))(v37, v38, v44);
      v42 = v37;
      v43 = v39;
      v41 = 0;
    }

    swift_storeEnumTagMultiPayload(v42, v43, v41);
  }

  return v4;
}

uint64_t destroy for MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2)
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
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v11 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v11 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
  return (*(*(v12 - 8) + 8))(v9, v12);
}

char *initializeWithCopy for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
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
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v38 = swift_getEnumCaseMultiPayload(v36, v37);
  v39 = v38 == 1;
  v40 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (v38 == 1)
  {
    v40 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
  (*(*(v41 - 8) + 16))(v35, v36, v41);
  swift_storeEnumTagMultiPayload(v35, v37, v39);
  return v5;
}

char *assignWithCopy for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  v4 = __dst;
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
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
        case 5u:
          JUMPOUT(0x249B10);
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
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v38 = swift_getEnumCaseMultiPayload(v35, v37);
    v39 = v38 == 1;
    v40 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
    if (v38 == 1)
    {
      v40 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
    (*(*(v41 - 8) + 16))(v36, v35, v41);
    swift_storeEnumTagMultiPayload(v36, v37, v39);
  }

  return v4;
}

char *initializeWithTake for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
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
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v25 = swift_getEnumCaseMultiPayload(v23, v24);
  v26 = v25 == 1;
  v27 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
  if (v25 == 1)
  {
    v27 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledName(v27);
  (*(*(v28 - 8) + 32))(v22, v23, v28);
  swift_storeEnumTagMultiPayload(v22, v24, v26);
  return __dst;
}

char *assignWithTake for MLSoundClassifier.Classifier(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
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
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v26 = swift_getEnumCaseMultiPayload(v23, v25);
    v27 = v26 == 1;
    v28 = &demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>;
    if (v26 == 1)
    {
      v28 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledName(v28);
    (*(*(v29 - 8) + 32))(v24, v23, v29);
    swift_storeEnumTagMultiPayload(v24, v25, v27);
  }

  return __dst;
}

uint64_t sub_249FA4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v5 - 8) + 84) != a2)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v4 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v4, a2, v5);
}

uint64_t sub_24A010(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v6 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata accessor for MLSoundClassifier.Classifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSoundClassifier.Classifier;
  if (!type metadata singleton initialization cache for MLSoundClassifier.Classifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSoundClassifier.Classifier);
  }

  return result;
}

uint64_t type metadata completion function for MLSoundClassifier.Classifier(uint64_t a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 2, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLSoundClassifier.Classifier.init(labels:parameters:)(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v3 = v2;
  v40 = type metadata accessor for FullyConnectedNetworkConfiguration(0);
  v45 = *(v40 - 8);
  v4 = *(v45 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v46 = &v33;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v41 = &v33;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>.Configuration);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v39 = &v33;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v42 = v3;
  outlined init with copy of MLSoundClassifier.ModelParameters(a2, v3);
  v15 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v16 = *(v15 + 28);
  v44 = a2;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a2 + v16, v36, &demangling cache variable for type metadata for Any?);
  if (!v37)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
LABEL_6:
    v46 = lazy protocol witness table accessor for type Float and conformance Float();
    LogisticRegressionClassifier.Configuration.init()(&type metadata for Float, &type metadata for String, &protocol witness table for Float, v46, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    v27 = v44;
    LogisticRegressionClassifier.Configuration.maximumIterations.setter(*(v44 + *(v15 + 20)), v9);
    v28 = v39;
    v29 = v9;
    v45 = v9;
    v30 = v38;
    (*(v38 + 16))(v39, &v33, v29);
    v31 = *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20) + v42;
    LogisticRegressionClassifier.init(labels:configuration:)(v43, v28, &type metadata for Float, &type metadata for String, &protocol witness table for Float, v46, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
    outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.ModelParameters);
    (*(v30 + 8))(&v33, v45);
    v25 = v31;
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v24 = 0;
    return swift_storeEnumTagMultiPayload(v25, v26, v24);
  }

  if (!swift_dynamicCast(v34, v36, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6))
  {
    goto LABEL_6;
  }

  v17 = v35;
  if (!v35)
  {
    goto LABEL_6;
  }

  v35;
  v18 = v41;
  FullyConnectedNetworkConfiguration.init()();
  FullyConnectedNetworkConfiguration.maximumIterations.setter(*(v44 + *(v15 + 20)));
  FullyConnectedNetworkConfiguration.hiddenUnitCounts.setter(v17);
  FullyConnectedNetworkConfiguration.batchSize.setter(32);
  v19 = v40;
  v20 = v45;
  (*(v45 + 16))(v46, v18, v40);
  v21 = *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20) + v42;
  v22 = lazy protocol witness table accessor for type Float and conformance Float();
  FullyConnectedNetworkClassifier.init(labels:configuration:)(v43, v46, &type metadata for Float, &type metadata for String, &protocol witness table for Float, v22, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String, &protocol witness table for String);
  v17;
  outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLSoundClassifier.ModelParameters);
  (*(v20 + 8))(v18, v19);
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v24 = 1;
  v25 = v21;
  v26 = v23;
  return swift_storeEnumTagMultiPayload(v25, v26, v24);
}

uint64_t MLSoundClassifier.Classifier.makeTransformer()()
{
  v34 = v0;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v35 = *(v30 - 8);
  v2 = *(v35 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v31 = &v29;
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v33 = &v29;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for MLSoundClassifier.Classifier(0);
  v14 = v1;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + *(v13 + 20), &v29, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v29, v9) == 1)
  {
    v15 = v31;
    v16 = v30;
    (*(v35 + 32))(v31, &v29, v30);
    v17 = v34;
    outlined init with copy of MLSoundClassifier.ModelParameters(v14, v34);
    v18 = v17 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
    FullyConnectedNetworkClassifier.makeTransformer()(v16);
    (*(v35 + 8))(v15, v16);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v20 = 1;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    v23 = v33;
    v24 = v32;
    (*(v32 + 32))(v33, &v29, v5);
    v25 = v14;
    v26 = v34;
    outlined init with copy of MLSoundClassifier.ModelParameters(v25, v34);
    v27 = v26 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
    LogisticRegressionClassifier.makeTransformer()(v5);
    (*(v24 + 8))(v23, v5);
    v21 = v27;
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    v20 = 0;
  }

  return swift_storeEnumTagMultiPayload(v21, v22, v20);
}

uint64_t MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  return swift_task_switch(MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:), 0, 0);
}

uint64_t MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)()
{
  v1 = v0[22];
  v2 = v0[8];
  v3 = v0[21];
  v4 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2 + *(v4 + 20), v1, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v1, v3);
  v6 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v6, v0[12]);
    v7 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[25] = v7;
    *v7 = v0;
    v7[1] = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    v8 = v0[14];
    return FullyConnectedNetworkClassifier.fitted<A>(to:eventHandler:)(v0[11], v0[3], v0[4], v0[5], v0[12], v0[6], v0[7]);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v6, v0[18]);
    v10 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.fitted<A>(to:eventHandler:)[1]);
    v0[23] = v10;
    *v10 = v0;
    v10[1] = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
    v11 = v0[20];
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
    v3 = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v11 = *(v0 + 128);
  v12 = *(v0 + 120);
  v10 = *(v0 + 176);
  v9 = *(v0 + 112);
  v8 = *(v0 + 88);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);
  (*(*(v0 + 152) + 8))(v1, *(v0 + 144));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
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
  v2 = *(*v1 + 200);
  *(*v1 + 208) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 112);
  v1 = *(v0 + 88);
  v12 = *(v0 + 80);
  v2 = *(v0 + 72);
  v11 = *(v0 + 176);
  v10 = *(v0 + 160);
  v8 = *(v0 + 136);
  v3 = *(v0 + 16);
  v4 = *(v0 + 64);
  (*(*(v0 + 104) + 8))(v9, *(v0 + 96));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
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

uint64_t MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)()
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
    v3 = MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v11 = *(v0 + 152);
  v12 = *(v0 + 144);
  v10 = *(v0 + 200);
  v9 = *(v0 + 136);
  v8 = *(v0 + 112);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  (*(*(v0 + 176) + 8))(v1, *(v0 + 168));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
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
  v2 = *(*v1 + 224);
  *(*v1 + 232) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  else
  {
    v3 = MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 136);
  v1 = *(v0 + 112);
  v12 = *(v0 + 104);
  v2 = *(v0 + 96);
  v11 = *(v0 + 200);
  v10 = *(v0 + 184);
  v8 = *(v0 + 160);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  (*(*(v0 + 128) + 8))(v9, *(v0 + 120));
  outlined init with copy of MLSoundClassifier.ModelParameters(v4, v3);
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

uint64_t MLSoundClassifier.Classifier.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  v52 = v2;
  v4 = v3;
  v53 = a2;
  v46 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v48 = &v46;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v60 = *(v59 - 8);
  v8 = *(v60 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v56 = &v46;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v57 = *(v58 - 8);
  v11 = *(v57 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v49 = &v46;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v62 = *(v61 - 8);
  v14 = *(v62 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v63 = &v46;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v17 = *(*(v47 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v50 = &v46;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v51 = &v46;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = v4 + *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20);
  v27 = v46 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v28 = &v46 + *(v22 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &v46, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = v27;
  v30 = &v46;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v46, v47) != 1)
  {
    v39 = v51;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v46, v51, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v28, v40) != 1)
    {
      v41 = v39;
      v42 = v61;
      (*(v62 + 32))(v63, v41, v61);
      v43 = v49;
      (*(v57 + 32))(v49, v28, v58);
      LogisticRegressionClassifier.encode(_:to:)(v43, v53, v42);
      (*(v57 + 8))(v43, v58);
      (*(v62 + 8))(v63, v42);
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    }

    v45 = v39;
LABEL_9:
    (*(v62 + 8))(v45, v61);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, "Classifier.Classifier.swift" + 0x8000000000000000, "CreateML/MLSoundClassifier.Classifier.swift", 43, 2, 91, 0);
    BUG();
  }

  v63 = &v46;
  v31 = v50;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v46, v50, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v28, v32) != 1)
  {
    v62 = v60;
    v61 = v59;
    v45 = v31;
    goto LABEL_9;
  }

  v33 = v59;
  (*(v60 + 32))(v56, v31, v59);
  v34 = v48;
  (*(v54 + 32))(v48, v28, v55);
  v35 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifier<A, B>);
  v36 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
  v37 = v35;
  v38 = v56;
  SupervisedEstimator<>.encode(_:to:)(v34, v53, v33, v37, v36);
  (*(v54 + 8))(v34, v55);
  (*(v60 + 8))(v38, v33);
  v30 = v63;
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
}

uint64_t protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc(224);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for SupervisedEstimator.fitted<A>(to:eventHandler:) in conformance MLImageClassifier.Classifier;
  retaddr = v13;
  return MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  return swift_task_switch(MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:), 0, 0);
}

uint64_t MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 216);
  v36 = *(v7 + 208);
  v35 = *(v7 + 184);
  v9 = *(v7 + 16);
  v10 = *(v7 + 64);
  v11 = v10 + *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20);
  v12 = *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  *(v7 + 288) = v12;
  v13 = v12 + v9;
  v14 = v8 + *(v36 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v11, v8, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, v14, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v35);
  v16 = *(v7 + 216);
  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, *(v7 + 192), &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    *(v7 + 256) = v17;
    if (swift_getEnumCaseMultiPayload(v14, v17) == 1)
    {
      v18 = *(v7 + 96);
      v19 = *(v7 + 72);
      v20 = *(v7 + 80);
      (*(*(v7 + 112) + 32))(*(v7 + 120), *(v7 + 192), *(v7 + 104));
      v21 = *(v20 + 32);
      *(v7 + 264) = v21;
      v21(v18, v14, v19);
      v22 = swift_task_alloc(async function pointer to FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)[1]);
      *(v7 + 272) = v22;
      *v22 = v7;
      v22[1] = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
      v23 = *(v7 + 120);
      return FullyConnectedNetworkClassifier.update<A>(_:with:eventHandler:)(*(v7 + 96), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 104), *(v7 + 48), *(v7 + 56));
    }

    v26 = (v7 + 192);
    v27 = 104;
    v28 = 112;
    goto LABEL_7;
  }

  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, *(v7 + 200), &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  *(v7 + 224) = v25;
  if (swift_getEnumCaseMultiPayload(v14, v25) == 1)
  {
    v26 = (v7 + 200);
    v27 = 160;
    v28 = 168;
LABEL_7:
    (*(*(v7 + v28) + 8))(*v26, *(v7 + v27));
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, "Classifier.Classifier.swift" + 0x8000000000000000, "CreateML/MLSoundClassifier.Classifier.swift", 43, 2, 135, 0);
  }

  v29 = *(v7 + 152);
  v30 = *(v7 + 128);
  v31 = *(v7 + 136);
  (*(*(v7 + 168) + 32))(*(v7 + 176), *(v7 + 200), *(v7 + 160));
  v32 = *(v31 + 32);
  *(v7 + 232) = v32;
  v32(v29, v14, v30);
  v33 = swift_task_alloc(async function pointer to LogisticRegressionClassifier.update<A>(_:with:eventHandler:)[1]);
  *(v7 + 240) = v33;
  *v33 = v7;
  v33[1] = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
  v34 = *(v7 + 176);
  return LogisticRegressionClassifier.update<A>(_:with:eventHandler:)(*(v7 + 152), *(v7 + 24), *(v7 + 32), *(v7 + 40), *(v7 + 160), *(v7 + 48), *(v7 + 56));
}

uint64_t MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)()
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
    v3 = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v14 = *(v0 + 232);
  v12 = *(v0 + 224);
  v11 = *(v0 + 176);
  v1 = *(v0 + 152);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v13 = *(v0 + 216);
  v9 = *(v0 + 200);
  v4 = *(v0 + 16) + *(v0 + 288);
  v10 = *(v0 + 192);
  v8 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  (*(*(v0 + 168) + 8))(v11, *(v0 + 160));
  v14(v2, v1, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14(v4, v2, v3);
  swift_storeEnumTagMultiPayload(v4, v12, 0);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v13;
  v9;
  v10;
  v11;
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
    v3 = MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v14 = *(v0 + 264);
  v12 = *(v0 + 256);
  v6 = *(v0 + 120);
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  v13 = *(v0 + 216);
  v9 = *(v0 + 200);
  v4 = *(v0 + 16) + *(v0 + 288);
  v11 = *(v0 + 192);
  v10 = *(v0 + 176);
  v8 = *(v0 + 152);
  v7 = *(v0 + 144);
  (*(*(v0 + 112) + 8))(v6, *(v0 + 104));
  v14(v3, v1, v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v14(v4, v3, v2);
  swift_storeEnumTagMultiPayload(v4, v12, 1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v13;
  v9;
  v11;
  v10;
  v8;
  v7;
  v6;
  v1;
  v3;
  return (*(v0 + 8))();
}

uint64_t MLSoundClassifier.Classifier.encodeWithOptimizer(_:to:)(uint64_t a1, uint64_t a2)
{
  v49 = v2;
  v4 = v3;
  v50 = a2;
  v42 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v51 = *(v52 - 8);
  v5 = *(v51 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v44 = &v42;
  v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v56 = *(v55 - 8);
  v8 = *(v56 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v45 = &v42;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v53 = *(v54 - 8);
  v11 = *(v53 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v46 = &v42;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v58 = *(v57 - 8);
  v14 = *(v58 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v59 = &v42;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v17 = *(*(v43 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v47 = &v42;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v48 = &v42;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>, Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>));
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = v4 + *(type metadata accessor for MLSoundClassifier.Classifier(0) + 20);
  v27 = v42 + *(type metadata accessor for MLSoundClassifier.Model(0) + 20);
  v28 = &v42 + *(v22 + 48);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26, &v42, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = v27;
  v30 = &v42;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v28, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v42, v43) != 1)
  {
    v36 = v48;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, v48, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v28, v37) != 1)
    {
      v38 = v57;
      (*(v58 + 32))(v59, v36, v57);
      v39 = v46;
      (*(v53 + 32))(v46, v28, v54);
      LogisticRegressionClassifier.encodeWithOptimizer(_:to:)(v39, v50, v38);
      (*(v53 + 8))(v39, v54);
      (*(v58 + 8))(v59, v38);
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
    }

    v41 = v36;
LABEL_9:
    (*(v58 + 8))(v41, v57);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, "Classifier.Classifier.swift" + 0x8000000000000000, "CreateML/MLSoundClassifier.Classifier.swift", 43, 2, 146, 0);
    BUG();
  }

  v59 = &v42;
  v31 = v47;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, v47, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  if (swift_getEnumCaseMultiPayload(v28, v32) != 1)
  {
    v58 = v56;
    v57 = v55;
    v41 = v31;
    goto LABEL_9;
  }

  v33 = v45;
  v34 = v55;
  (*(v56 + 32))(v45, v31, v55);
  v35 = v44;
  (*(v51 + 32))(v44, v28, v52);
  FullyConnectedNetworkClassifier.encodeWithOptimizer(_:to:)(v35, v50, v34);
  (*(v51 + 8))(v35, v52);
  (*(v56 + 8))(v33, v34);
  v30 = v59;
  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
}

uint64_t MLSoundClassifier.Classifier.decode(from:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(uint64_t, uint64_t))
{
  v50 = a3;
  v51 = a2;
  v62 = v4;
  v63 = a1;
  v55 = v3;
  v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v56 = *(v57 - 8);
  v6 = *(v56 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v52 = &v50;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifier<Float, String>);
  v66 = *(v67 - 8);
  v9 = *(v66 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = &v50;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v60 = *(v59 - 8);
  v12 = *(v60 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v64 = &v50;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v15 = *(*(v65 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v61 = &v50;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v58 = &v50;
  v20 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters(0) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v53 = &v50;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v54 = &v50;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Float, String>);
  v69 = *(v70 - 8);
  v25 = *(v69 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v71 = &v50;
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  v29 = *(*(v28 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = type metadata accessor for MLSoundClassifier.Classifier(0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + *(v32 + 20), &v50, &demangling cache variable for type metadata for Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>);
  if (swift_getEnumCaseMultiPayload(&v50, v28) == 1)
  {
    v33 = v67;
    (*(v66 + 32))(v68, &v50, v67);
    v34 = v53;
    outlined init with copy of MLSoundClassifier.ModelParameters(v5, v53);
    v35 = v52;
    v36 = v62;
    v50(v63, v33);
    if (v36)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v34, type metadata accessor for MLSoundClassifier.ModelParameters);
      v37 = v68;
      v38 = v67;
      v39 = v66;
      return (*(v39 + 8))(v37, v38);
    }

    (*(v66 + 8))(v68, v67);
    v45 = v34;
    v46 = v61;
    (*(v56 + 32))(v61, v35, v57);
    swift_storeEnumTagMultiPayload(v46, v65, 1);
    v43 = v45;
  }

  else
  {
    v40 = v70;
    (*(v69 + 32))(v71, &v50, v70);
    v41 = v54;
    outlined init with copy of MLSoundClassifier.ModelParameters(v5, v54);
    v42 = v62;
    v51(v63, v40);
    v43 = v41;
    if (v42)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLSoundClassifier.ModelParameters);
      v37 = v71;
      v38 = v70;
      v39 = v69;
      return (*(v39 + 8))(v37, v38);
    }

    (*(v69 + 8))(v71, v70);
    v46 = v58;
    (*(v60 + 32))(v58, v64, v59);
    swift_storeEnumTagMultiPayload(v46, v65, 0);
  }

  v47 = v43;
  v48 = v55;
  outlined init with take of MLSoundClassifier.ModelParameters(v47, v55);
  v49 = type metadata accessor for MLSoundClassifier.Model(0);
  return outlined init with take of Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>(v46, v48 + *(v49 + 20));
}

uint64_t protocol witness for UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:) in conformance MLSoundClassifier.Classifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc(304);
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = protocol witness for UpdatableSupervisedEstimator.update<A>(_:with:eventHandler:) in conformance MLSoundClassifier.Classifier;
  retaddr = v13;
  return MLSoundClassifier.Classifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a5, a6);
}

uint64_t outlined init with copy of MLSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.VideoAugmentationOptions, &type metadata for MLHandActionClassifier.VideoAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandActionClassifier.VideoAugmentationOptions and conformance MLHandActionClassifier.VideoAugmentationOptions = result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLHandActionClassifier.VideoAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLHandActionClassifier.VideoAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLHandActionClassifier.VideoAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLHandActionClassifier.VideoAugmentationOptions.rawValue.getter(a1);
  *v2 = result;
  return result;
}

uint64_t MLHandActionClassifier.DataSource.videosWithAnnotations()(__m128 a1)
{
  *&v162 = v2;
  *v172 = v3;
  v158 = v1;
  v167._object = type metadata accessor for DataFrame(0);
  v170._countAndFlagsBits = *(v167._object - 1);
  v4 = *(v170._countAndFlagsBits + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  ML14_UntypedColumnC_s5Error_pTt1g5 = __src;
  v7 = alloca(v4);
  v8 = alloca(v4);
  *(&v166 + 1) = __src;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *v163 = __src;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v164._countAndFlagsBits = __src;
  v168 = type metadata accessor for URL(0);
  *v169 = *(v168 - 8);
  v16 = *(*v169 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v160 = __src;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v164._object = __src;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v161 = __src;
  v23 = alloca(v16);
  v24 = alloca(v16);
  *&v166 = __src;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v167._countAndFlagsBits = __src;
  v27 = alloca(v16);
  v28 = alloca(v16);
  *v165 = __src;
  v29 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLHandActionClassifier.DataSource(*v172, __src);
  switch(swift_getEnumCaseMultiPayload(__src, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v34 = __src + v33[12];
      v35 = v33[16];
      v167._countAndFlagsBits = *(__src + v35);
      *v172 = *(__src + v35 + 8);
      v36 = v33[20];
      *v165 = *(__src + v36);
      *(&v166 + 1) = *(__src + v36 + 8);
      v37 = v33[24];
      *v163 = *(__src + v37);
      v167._object = *(__src + v37 + 8);
      v38 = v33[28];
      v164._countAndFlagsBits = *(__src + v38);
      v170._countAndFlagsBits = *(__src + v38 + 8);
      v39 = *(*v169 + 32);
      v40 = v168;
      v39(v166, __src, v168);
      v41 = v161;
      v39(v161, v34, v40);
      object = v164._object;
      (*(*v169 + 16))(v164._object, v41, v40);
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
      LOBYTE(v139) = 1;
      v140 = 44;
      v141 = 0xE100000000000000;
      v142 = 0;
      v143 = 0xE000000000000000;
      v144 = 92;
      v145 = 0xE100000000000000;
      v146 = 1;
      v147 = 34;
      v148 = 0xE100000000000000;
      v149 = 1;
      v150 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v151 = 10;
      v152 = 0xE100000000000000;
      v153 = 0;
      v154 = 1;
      v155 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v139, 92);
      memcpy(__dst, __src, sizeof(__dst));
      v43 = v162;
      MLDataTable.init(contentsOf:options:)(object, __dst);
      v44 = v168;
      v45 = v166;
      if (v43)
      {
        v46 = *(*v169 + 8);
        v46(v161, v168);
        *(&v166 + 1);
        *v172;
        v167._object;
        v170._countAndFlagsBits;
        result = v46(v45, v44);
      }

      else
      {
        v170._object = v156;
        LOBYTE(v171) = v157;
        v82._countAndFlagsBits = v167._countAndFlagsBits;
        v82._object = *v172;
        MLDataTable.subscript.getter(v82);
        v83 = *&__dst[0];
        v84 = BYTE8(__dst[0]);
        if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v164._object = v83, _UntypedColumn.type.getter(), v83 = v164._object, outlined consume of Result<_DataTable, Error>(v164._object, 0), v156 != 2))
        {
          outlined consume of Result<_DataTable, Error>(v83, v84);
          *(&v166 + 1);
          v167._object;
          v170._countAndFlagsBits;
          *&__dst[0] = 0;
          *(&__dst[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(26);
          *(&__dst[0] + 1);
          *&__dst[0] = 0x206E6D756C6F43;
          *(&__dst[0] + 1) = 0xE700000000000000;
          v105._countAndFlagsBits = v167._countAndFlagsBits;
          v106 = *v172;
          v105._object = *v172;
          String.append(_:)(v105);
          v106;
          v105._countAndFlagsBits = 0xD000000000000011;
          String.append(_:)(v105);
          v162 = __dst[0];
          v105._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v105._object, 0, 0);
          *v107 = v162;
          *(v107 + 16) = 0;
          *(v107 + 32) = 0;
          *(v107 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v105._object);
          v108 = *(*v169 + 8);
          v109 = v161;
          v110 = v168;
        }

        else
        {
          *&v162 = 0;
          outlined copy of Result<_DataTable, Error>(v83, 0);
          _UntypedColumn.valueAtIndex(index:)(0, 0.0);
          v86 = *(&__dst[0] + 1);
          v85 = *&__dst[0];
          if (LOBYTE(__dst[1]) != 2)
          {
            outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
            v85 = 0;
            v86 = 0xE000000000000000;
          }

          outlined consume of Result<_DataTable, Error>(v164._object, 0);
          *&__dst[0] = v85;
          *(&__dst[0] + 1) = v86;
          v87 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
          v89 = v88;
          URL.init(fileURLWithPath:)(v87, v88);
          v89;
          v90 = objc_opt_self(NSFileManager);
          v91 = [v90 defaultManager];
          v92 = v91;
          URL.path.getter(v91);
          v94 = v93;
          v95 = String._bridgeToObjectiveC()();
          v94;
          LOBYTE(v94) = [v92 fileExistsAtPath:v95];

          if (v94)
          {
            v96 = *v172;
            countAndFlagsBits = v170._countAndFlagsBits;
            v98 = v167._object;
            v99 = *(&v166 + 1);
            v100 = v167._countAndFlagsBits;
          }

          else
          {
            v115 = v164._object;
            outlined copy of Result<_DataTable, Error>(v164._object, 0);
            MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v115, 0, 0.0);
            v117 = alloca(24);
            v118 = alloca(32);
            *&__src[1] = v166;
            v119 = v162;
            v120 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), __src, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
            *&v162 = v119;
            MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
            *&__dst[0] = v120;
            v121 = alloca(24);
            v122 = alloca(24);
            *&__src[1] = __dst;
            ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
            v124 = v123;
            *&__dst[0];
            v125 = *v172;
            v172[0];
            MLDataTable.willMutate()();
            *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
            BYTE8(__dst[0]) = v124 & 1;
            v100 = v167._countAndFlagsBits;
            MLDataTable.setColumnImpl(newColumn:named:)(__dst, v167._countAndFlagsBits, v125);
            v125;
            outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
            if (!v171)
            {
              v126 = v170._object;
              outlined copy of Result<_DataTable, Error>(v170._object, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v126, 0);
            }

            countAndFlagsBits = v170._countAndFlagsBits;
            v98 = v167._object;
            v99 = *(&v166 + 1);
            v96 = *v172;
          }

          v127 = v162;
          v136._object = countAndFlagsBits;
          v136._countAndFlagsBits = v164._countAndFlagsBits;
          static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v170._object, v100, v96, *v165, v99, *v163, v98, v136);
          v128 = v96;
          v129 = *v169;
          if (!v127)
          {
            v128;
            v99;
            v98;
            v170._countAndFlagsBits;
            outlined consume of Result<_DataTable, Error>(v164._object, 0);
            v130 = *(v129 + 8);
            v131 = v168;
            v130(v160, v168);
            v130(v161, v131);
            v130(v166, v131);
            goto LABEL_34;
          }

          v128;
          v99;
          v98;
          v170._countAndFlagsBits;
          outlined consume of Result<_DataTable, Error>(v164._object, 0);
          v108 = *(v129 + 8);
          v110 = v168;
          v108(v160, v168);
          v109 = v161;
        }

        v108(v109, v110);
        v108(v166, v110);
        result = outlined consume of Result<_DataTable, Error>(v170._object, v171);
      }

      break;
    case 1u:
      v170._countAndFlagsBits = v9;
      *v172 = v10;
      v65 = v167._countAndFlagsBits;
      v57 = v168;
      v66 = *v169;
      (*(*v169 + 32))(v167._countAndFlagsBits, __src, v168);
      v67 = *v163;
      static UTType.movie.getter();
      v68 = v162;
      v69 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v65, v67);
      if (!v68)
      {
        v101 = v69;
        (*(*v172 + 8))(*v163, v170._countAndFlagsBits);
        static _VideoUtilities.generateVideoTable(_:)(v101);
        v101;
        v112 = v140;
        v170._object = v139;
        LOBYTE(v171) = v140 & 1;
        LOBYTE(v140) = v140 & 1;
        outlined copy of Result<_DataTable, Error>(v139, v112);
        static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v139, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
        v113 = v167._countAndFlagsBits;
        outlined consume of Result<_DataTable, Error>(v139, v140);
        v114 = v113;
        goto LABEL_27;
      }

      (*(*v172 + 8))(*v163, v170._countAndFlagsBits);
      result = (*(v66 + 8))(v167._countAndFlagsBits, v57);
      break;
    case 2u:
      v170._countAndFlagsBits = v9;
      *v172 = v10;
      v56 = *v165;
      v57 = v168;
      v58 = *v169;
      (*(*v169 + 32))(*v165, __src, v168);
      v59 = v164._countAndFlagsBits;
      static UTType.movie.getter();
      v60 = v162;
      v61 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v56, v59);
      if (!v60)
      {
        v81 = v61;
        (*(*v172 + 8))(v164._countAndFlagsBits, v170._countAndFlagsBits);
        static _VideoUtilities.generateVideoTable(_:)(v81);
        v81;
        v111 = v140;
        v170._object = v139;
        LOBYTE(v171) = v140 & 1;
        LOBYTE(v140) = v140 & 1;
        outlined copy of Result<_DataTable, Error>(v139, v111);
        static _VideoUtilities.validateVideoInput(trainingData:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v139, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000, 0, 0, 0, 0);
        outlined consume of Result<_DataTable, Error>(v139, v140);
        v114 = *v165;
LABEL_27:
        (*(*v169 + 8))(v114, v57);
        goto LABEL_34;
      }

      (*(*v172 + 8))(v164._countAndFlagsBits, v170._countAndFlagsBits);
      result = (*(v58 + 8))(*v165, v57);
      break;
    case 3u:
      v62 = *(&__src[1] + 1);
      v63 = *(&__src[2] + 1);
      v64 = *(&__src[3] + 1);
      outlined consume of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v64;
      v63;
      v62;
      result = MLDataTable.init()();
      break;
    case 4u:
      v48 = *(&__src[1] + 1);
      v168 = *&__src[1];
      v49 = *(&__src[2] + 1);
      v167._object = *&__src[2];
      v166 = __src[3];
      v50 = *(&__src[4] + 1);
      v170._countAndFlagsBits = *&__src[4];
      v170._object = *&__src[0];
      LOBYTE(v171) = BYTE8(__src[0]) & 1;
      *v172 = *&__src[0];
      v169[0] = DWORD2(__src[0]);
      outlined copy of Result<_DataTable, Error>(*&__src[0], SBYTE8(__src[0]));
      v51 = v168;
      v52 = v48;
      v53 = v48;
      v168 = v49;
      v54 = v162;
      v134._object = v50;
      v134._countAndFlagsBits = v170._countAndFlagsBits;
      v55 = *(&v166 + 1);
      static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v170._object, v51, v53, v167._object, v49, v166, *(&v166 + 1), v134);
      if (!v54)
      {
        v52;
        v168;
        v50;
        v55;
        outlined consume of Result<_DataTable, Error>(*v172, v169[0]);
        goto LABEL_34;
      }

      v52;
      v168;
      v50;
      v55;
      outlined consume of Result<_DataTable, Error>(*v172, v169[0]);
      result = outlined consume of Result<_DataTable, Error>(v170._object, v171);
      break;
    case 5u:
      v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v70[12] + 8);
      *(__src + v70[16] + 8);
      *(__src + v70[20] + 8);
      MLDataTable.init()();
      result = (*(v170._countAndFlagsBits + 8))(__src, v167._object);
      break;
    case 6u:
      v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v72 = v71[12];
      v167._countAndFlagsBits = *(__src + v72);
      *v169 = *(__src + v72 + 8);
      v73 = v71[16];
      *v165 = *(__src + v73);
      *v172 = *(__src + v73 + 8);
      v74 = v71[20];
      *v163 = *(__src + v74);
      v168 = *(__src + v74 + 8);
      v75 = v71[24];
      v164._countAndFlagsBits = *(__src + v75);
      *&v166 = *(__src + v75 + 8);
      v76 = *(&v166 + 1);
      v77 = v167._object;
      v78 = v170._countAndFlagsBits;
      (*(v170._countAndFlagsBits + 32))(*(&v166 + 1), __src, v167._object);
      v79 = ML14_UntypedColumnC_s5Error_pTt1g5;
      *a1.i64 = (*(v78 + 16))(ML14_UntypedColumnC_s5Error_pTt1g5, v76, v77);
      v80 = v162;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v79, 0, a1);
      if (v80)
      {
        (*(v170._countAndFlagsBits + 8))(*(&v166 + 1), v167._object);
        *v172;
        *v169;
        v168;
        result = v166;
      }

      else
      {
        v102 = *(&v166 + 1);
        v170._object = v139;
        LOBYTE(v171) = v140;
        v103 = v166;
        v135._object = v166;
        v135._countAndFlagsBits = v164._countAndFlagsBits;
        v104 = v168;
        static _VideoUtilities.renameVideoTableColumns(table:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(&v170._object, v167._countAndFlagsBits, *v169, *v165, *v172, *v163, v168, v135);
        (*(v170._countAndFlagsBits + 8))(v102, v167._object);
        *v169;
        *v172;
        v103;
        v104;
LABEL_34:
        result = v170._object;
        v132 = v171;
        v133 = v158;
        *v158 = v170._object;
        *(v133 + 8) = v132;
      }

      break;
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLHandActionClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLHandActionClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLHandActionClassifier.DataSource);
  }

  return result;
}

uint64_t MLHandActionClassifier.DataSource.extractKeypoints(targetFrameRate:)(double a1)
{
  v108 = v2;
  in._object = v3;
  *&in._countAndFlagsBits = a1;
  v101 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Data>);
  v93 = *(v94 - 8);
  v4 = *(v93 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v85 = &v81;
  v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v90 = *(v91 - 8);
  v7 = *(v90 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v84 = &v81;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v86 = &v81;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v83 = &v81;
  v105 = type metadata accessor for AnyColumn(0);
  v99 = *(v105 - 1);
  v15 = *(v99 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v95 = &v81;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v92 = &v81;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v100 = &v81;
  v22 = type metadata accessor for DataFrame(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v104 = &v81;
  v27 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v28 = *(*(v27 - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  outlined init with copy of MLHandActionClassifier.DataSource(in._object, &v81);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v81, v27);
  if (EnumCaseMultiPayload == 5)
  {
    v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v38 = v37[12];
    v88 = *(&v81 + v38);
    v103 = *(&v81 + v38 + 8);
    v39 = v37[16];
    v87 = *(&v81 + v39);
    v98 = *(&v81 + v39 + 8);
    v40 = v37[20];
    v41 = *(&v81 + v40);
    in._object = *(&v81 + v40 + 8);
    v97 = v23;
    v42 = *(v23 + 32);
    v96 = v22;
    v89 = v42;
    v42(v104, &v81, v22);
    v43 = v100;
    in._countAndFlagsBits = v41;
    DataFrame.subscript.getter(v41, in._object);
    v44 = AnyColumn.wrappedElementType.getter();
    v45 = *(v99 + 8);
    v46 = v105;
    v45(v43, v105);
    if (v44 == &type metadata for String)
    {
      v102 = v45;
      v50 = v84;
      DataFrame.subscript.getter(in._countAndFlagsBits, in._object, &type metadata for String);
      v51 = v83;
      v52 = v108;
      Column<A>.parseAsJSONArrays()();
      if (!v52)
      {
        v108 = 0;
        (*(v90 + 8))(v50, v91);
        v67 = v51;
        v68 = v51;
        v69 = v105;
        __swift_storeEnumTagSinglePayload(v68, 0, 1, v105);
        v70 = v92;
        v71 = v67;
        v72 = v99;
        (*(v99 + 32))(v92, v71, v69);
        (*(v72 + 16))(v43, v70, v69);
        object = in._object;
        in._object;
        v74 = v43;
        countAndFlagsBits = in._countAndFlagsBits;
        v48 = object;
        DataFrame.subscript.setter(v74, in._countAndFlagsBits, object);
        v102(v92, v69);
        v57 = countAndFlagsBits;
        goto LABEL_18;
      }

      v48 = in._object;
      v52;
      (*(v90 + 8))(v50, v91);
      __swift_storeEnumTagSinglePayload(v51, 1, 1, v105);
      v53 = v51;
    }

    else
    {
      DataFrame.subscript.getter(in._countAndFlagsBits, in._object);
      v47 = AnyColumn.wrappedElementType.getter();
      v45(v43, v46);
      if (v47 != &type metadata for Data)
      {
        v48 = in._object;
LABEL_17:
        v57 = in._countAndFlagsBits;
LABEL_18:
        v58._countAndFlagsBits = v57;
        v58._object = v48;
        v59 = v104;
        DataFrame.flattenNestedArrays(in:shape:)(v58, &outlined read-only object #0 of MLHandActionClassifier.DataSource.extractKeypoints(targetFrameRate:));
        if (v60)
        {
          (*(v97 + 8))(v59, v96);
          v103;
          v61 = v98;
        }

        else
        {
          v62 = v57;
          v63 = v98;
          static _VideoUtilities.renameFeatureColumns(dataFrame:sessionIdColumn:featureColumn:labelColumn:)(v59, v88, v103, v62, v48, v87, v98);
          v89(v101, v59, v96);
          v103;
          v61 = v63;
        }

        v61;
        v36 = v48;
        return v36;
      }

      v102 = v45;
      v54 = v85;
      DataFrame.subscript.getter(in._countAndFlagsBits, in._object, &type metadata for Data);
      v55 = v86;
      v56 = v108;
      Column<A>.parseAsJSONArrays()();
      if (!v56)
      {
        v108 = 0;
        (*(v93 + 8))(v54, v94);
        v76 = v105;
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v105);
        v77 = v95;
        v78 = v55;
        v79 = v99;
        (*(v99 + 32))(v95, v78, v76);
        (*(v79 + 16))(v100, v77, v76);
        v80 = in._object;
        in._object;
        v57 = in._countAndFlagsBits;
        v48 = v80;
        DataFrame.subscript.setter(v100, in._countAndFlagsBits, v80);
        v102(v95, v105);
        goto LABEL_18;
      }

      v48 = in._object;
      v56;
      (*(v93 + 8))(v54, v94);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v105);
      v53 = v55;
    }

    outlined destroy of AnyColumn?(v53);
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v105 = v83;
    in._object = v84;
    v104 = v85;
    v32 = v86;
    v33 = v87;
    v34 = v88;
    v106 = v81;
    LOBYTE(v107) = v82;
    v35 = v108;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v106, v87, v88);
    if (!v35)
    {
      static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v106, v105, in._object, v33, v34, v104, v32);
      v34;
      v32;
      in._object;
      v64 = v106;
      v65 = v107;
      v81 = v106;
      v82 = v107;
      outlined copy of Result<_DataTable, Error>(v106, v107);
      DataFrame.init(_:)(&v81);
      return outlined consume of Result<_DataTable, Error>(v64, v65);
    }

    outlined consume of Result<_DataTable, Error>(v106, v107);
    in._object;
    v32;
    v36 = v34;
    return v36;
  }

  type metadata accessor for MLHandActionClassifier.FeatureExtractor();
  v49 = v108;
  static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(in._object, 0, in._countAndFlagsBits);
  if (!v49)
  {
    v81 = v106;
    v82 = v107;
    DataFrame.init(_:)(&v81);
  }

  return outlined destroy of MLHandActionClassifier.DataSource(&v81);
}

uint64_t MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(__m128 a1)
{
  v85 = v2;
  v83 = a1.i64[0];
  v65 = v1;
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v70 = *(v71 - 8);
  v4 = *(v70 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v66 = &v64;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v78 = &v64;
  v84 = type metadata accessor for AnyColumn(0);
  v77 = *(v84 - 1);
  v10 = v77[8];
  v11 = alloca(v10);
  v12 = alloca(v10);
  v72 = &v64;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v81 = &v64;
  v15 = type metadata accessor for DataFrame(0);
  v86 = *(v15 - 8);
  v16 = *(v86 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v74 = &v64;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v87 = &v64;
  v21 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  outlined init with copy of MLHandActionClassifier.DataSource(v3, &v64);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v64, v21);
  if (EnumCaseMultiPayload == 5)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v31 = v30[12];
    v68 = *(&v64 + v31);
    v82 = *(&v64 + v31 + 8);
    v32 = v30[16];
    v67 = *(&v64 + v32);
    v76 = *(&v64 + v32 + 8);
    v33 = v30[20];
    v34 = *(&v64 + v33);
    v83 = *(&v64 + v33 + 8);
    v75 = v15;
    (*(v86 + 32))(v87, &v64, v15);
    v35 = v81;
    v73 = v34;
    DataFrame.subscript.getter(v34, v83);
    v36 = AnyColumn.wrappedElementType.getter();
    v37 = v77[1];
    (v37)(v35, v84);
    if (v36 == &type metadata for String)
    {
      v69 = v37;
      v41 = v66;
      v42 = v73;
      v43 = v83;
      DataFrame.subscript.getter(v73, v83, &type metadata for String);
      v44 = v85;
      Column<A>.parseAsJSONArrays()();
      if (v44)
      {
        v38 = v87;
        v44;
        (*(v70 + 8))(v41, v71);
        v45 = v78;
        __swift_storeEnumTagSinglePayload(v78, 1, 1, v84);
        outlined destroy of AnyColumn?(v45);
        v85 = 0;
      }

      else
      {
        v85 = 0;
        (*(v70 + 8))(v41, v71);
        v46 = v84;
        __swift_storeEnumTagSinglePayload(v78, 0, 1, v84);
        v47 = v72;
        v48 = v46;
        v49 = v77;
        (v77[4])(v72, v78, v48);
        v50 = v47;
        v51 = v84;
        (v49[2])(v81, v50, v84);
        v43;
        v52 = v42;
        v38 = v87;
        DataFrame.subscript.setter(v81, v52, v43);
        (v69)(v72, v51);
      }
    }

    else
    {
      v38 = v87;
    }

    v53 = v74;
    v54 = v75;
    v55 = v86;
    *a1.i64 = (*(v86 + 16))(v74, v38, v75);
    v56 = v85;
    MLDataTable.init(_:convertArraysToShapedArrays:)(v53, 0, a1);
    if (v56)
    {
      (*(v55 + 8))(v38, v54);
      v83;
      v76;
      return v82;
    }

    v88 = v79;
    LOBYTE(v89) = v80;
    v57 = v73;
    v58 = v83;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v88, v73, v83);
    v60 = v57;
    v61 = v76;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v88, v68, v82, v60, v58, v67, v76);
    v85 = 0;
    (*(v86 + 8))(v87, v75);
    v82;
    v61;
    v58;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v65;
    v77 = v66;
    v87 = v67;
    v81 = v68;
    v84 = v69;
    v27 = v70;
    v28 = v71;
    v88 = v64;
    LOBYTE(v89) = v65 & 1;
    v86 = v64;
    outlined copy of Result<_DataTable, Error>(v64, v65);
    v74 = v27;
    v29 = v85;
    static MLHandActionClassifier.reformatKeypointsDataTable(table:featureColumn:)(&v88, v27, v28);
    if (v29)
    {
      outlined consume of Result<_DataTable, Error>(v88, v89);
      v87;
      v84;
      v28;
      return outlined consume of Result<_DataTable, Error>(v86, v26);
    }

    v40 = v84;
    static _VideoUtilities.renameFeatureTableColumns(table:sessionIdColumn:featureColumn:labelColumn:)(&v88, v77, v87, v74, v28, v81, v84);
    v87;
    v40;
    v28;
    outlined consume of Result<_DataTable, Error>(v86, v26);
  }

  else
  {
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v39 = v85;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(v3, 0, v83);
    if (v39)
    {
      return outlined destroy of MLHandActionClassifier.DataSource(&v64);
    }

    v88 = v79;
    LOBYTE(v89) = v80;
    outlined destroy of MLHandActionClassifier.DataSource(&v64);
  }

  result = v88;
  v62 = v89;
  v63 = v65;
  *v65 = v88;
  *(v63 + 8) = v62;
  return result;
}

uint64_t MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()()
{
  v98 = v1;
  v96 = v0;
  v104 = type metadata accessor for DataFrame(0);
  v99 = *(v104 - 1);
  v3 = *(v99 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v102 = &v92;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v105 = &v92;
  v106 = type metadata accessor for UTType(0);
  v8 = *(v106 - 1);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v103 = &v92;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v101 = &v92;
  v108 = type metadata accessor for URL(0);
  v109 = *(v108 - 1);
  v14 = v109[8];
  v15 = alloca(v14);
  v16 = alloca(v14);
  v97 = &v92;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v107 = &v92;
  v19 = alloca(v14);
  v20 = alloca(v14);
  v100 = &v92;
  v21 = alloca(v14);
  v22 = alloca(v14);
  v95 = &v92;
  v23 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v94 = v2;
  outlined init with copy of MLHandActionClassifier.DataSource(v2, &v92);
  switch(swift_getEnumCaseMultiPayload(&v92, v23))
  {
    case 0u:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v28 = &v92 + v27[12];
      v29 = v27[16];
      v102 = *(&v92 + v29);
      v106 = *(&v92 + v29 + 8);
      v30 = v27[20];
      v105 = *(&v92 + v30);
      v100 = *(&v92 + v30 + 8);
      v31 = v27[24];
      v99 = *(&v92 + v31);
      v101 = *(&v92 + v31 + 8);
      v32 = v27[28];
      v103 = *(&v92 + v32);
      v104 = *(&v92 + v32 + 8);
      v33 = v109[4];
      v34 = v108;
      v33(v107, &v92, v108);
      v35 = v97;
      v36 = v34;
      v37 = v106;
      v33(v97, v28, v36);
      v38 = v101;
      v39 = v35;
      v40 = v100;
      MLHandActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v107, v39, v102, v37, v105, v100, v99, v101, v103, v104);
      v40;
      v37;
      v38;
      v104;
      v41 = v109[1];
      v42 = v108;
      v41(v97, v108);
      return (v41)(v107, v42);
    case 1u:
      v63 = v100;
      (v109[4])(v100, &v92, v108);
      v64 = v103;
      static UTType.movie.getter();
      v65 = v98;
      v66 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v63, v64);
      if (v65)
      {
        (*(v8 + 8))(v103, v106);
        v59 = v100;
        return (v109[1])(v59, v108);
      }

      v85 = v66;
      (*(v8 + 8))(v103, v106);
      v86 = specialized _NativeDictionary.mapValues<A>(_:)(v85);
      v85;
      v83 = v96;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v86, 0x6C6562616CLL, 0xE500000000000000, 0x7461506F65646976, 0xE900000000000068);
      v84 = v100;
      goto LABEL_20;
    case 2u:
      v55 = v95;
      (v109[4])(v95, &v92, v108);
      v56 = v101;
      static UTType.movie.getter();
      v57 = v98;
      v58 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v55, v56);
      if (v57)
      {
        (*(v8 + 8))(v101, v106);
        v59 = v95;
        return (v109[1])(v59, v108);
      }

      v81 = v58;
      (*(v8 + 8))(v101, v106);
      v82 = specialized _NativeDictionary.mapValues<A>(_:)(v81);
      v81;
      v83 = v96;
      _s11TabularData0B5FrameV8CreateMLE9expanding14keysColumnName06valueshI0ACSDySSSayxGG_S2StclufCSS_Tt3g5(v82, 0x6C6562616CLL, 0xE500000000000000, 0x7461506F65646976, 0xE900000000000068);
      v84 = v95;
LABEL_20:
      (v109[1])(v84, v108);
      v89 = v83;
      v90 = v104;
      return __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
    case 3u:
      v60 = v95;
      v61 = v97;
      v62 = v99;
      outlined consume of Result<_DataTable, Error>(v92, v93);
      v62;
      v61;
      v60;
      return __swift_storeEnumTagSinglePayload(v96, 1, 1, v104);
    case 4u:
      v44 = v93;
      v97 = v94;
      v100 = v95;
      v45 = v96;
      v46 = v94;
      v103 = v98;
      v109 = v99;
      v102 = v95;
      v108 = v101;
      LOBYTE(v93) = v93 & 1;
      v106 = v92;
      LODWORD(v101) = v44;
      outlined copy of Result<_DataTable, Error>(v92, v44);
      v47 = v105;
      DataFrame.init(_:)(&v92);
      v48 = v47;
      v49 = v100;
      v50 = v97;
      v95 = v45;
      v51 = v45;
      v107 = v46;
      v52 = v103;
      v53 = v98;
      static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v48, v97, v100, v51, v46, v103, v109, v102, v108);
      if (!v53)
      {
        static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v105, v50, v49, v95, v107, v52, v109, v102, v108);
        outlined consume of Result<_DataTable, Error>(v106, v101);
        v107;
        v49;
        v109;
        v108;
        v87 = v96;
        v88 = v104;
        (*(v99 + 32))(v96, v105, v104);
        v89 = v87;
        v90 = v88;
        return __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
      }

      (*(v99 + 8))(v105, v104);
      outlined consume of Result<_DataTable, Error>(v106, v101);
      v107;
      v49;
      v109;
      v54 = v108;
      return v54;
    case 5u:
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(&v92 + v67[12] + 8);
      *(&v92 + v67[16] + 8);
      *(&v92 + v67[20] + 8);
      v68 = v104;
      __swift_storeEnumTagSinglePayload(v96, 1, 1, v104);
      return (*(v99 + 8))(&v92, v68);
    case 6u:
      v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v70 = v69[12];
      v97 = *(&v92 + v70);
      v108 = *(&v92 + v70 + 8);
      v71 = v69[16];
      v103 = *(&v92 + v71);
      v72 = *(&v92 + v71 + 8);
      v73 = v69[20];
      v100 = *(&v92 + v73);
      v109 = *(&v92 + v73 + 8);
      v74 = v69[24];
      v75 = *(&v92 + v74);
      v107 = *(&v92 + v74 + 8);
      v76 = v102;
      v77 = v104;
      v106 = *(v99 + 32);
      (v106)(v102, &v92, v104);
      v78 = v76;
      v79 = v100;
      v105 = v72;
      v80 = v98;
      v98 = v75;
      static _VideoUtilities.validateVideoInput(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v78, v97, v108, v103, v72, v100, v109, v75, v107);
      if (v80)
      {
        (*(v99 + 8))(v102, v77);
        v108;
        v105;
        v107;
        v54 = v109;
        return v54;
      }

      else
      {
        static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v102, v97, v108, v103, v105, v79, v109, v98, v107);
        v105;
        v108;
        v109;
        v107;
        v91 = v96;
        (v106)(v96, v102, v77);
        v89 = v91;
        v90 = v77;
        return __swift_storeEnumTagSinglePayload(v89, 0, 1, v90);
      }
  }
}

uint64_t MLHandActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, void *a10)
{
  v150 = v10;
  v173 = a2;
  v152 = v11;
  v144 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v146 = *(v145 - 8);
  v16 = *(v146 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v147 = &v141;
  v156 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v155 = *(v156 - 8);
  v19 = *(v155 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v160 = &v141;
  v22 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v148 = &v141;
  v172 = type metadata accessor for CSVType(0);
  v163 = *(v172 - 8);
  v25 = *(v163 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v157 = &v141;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v170 = &v141;
  v30 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v161 = &v141;
  v153 = type metadata accessor for URL(0);
  v165 = *(v153 - 8);
  v33 = v165[8];
  v34 = alloca(v33);
  v35 = alloca(v33);
  v167 = &v141;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v141 = &v141;
  v143 = type metadata accessor for JSONType(0);
  v175 = *(v143 - 8);
  v38 = *(v175 + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v174 = &v141;
  v41 = alloca(v38);
  v42 = alloca(v38);
  v171 = &v141;
  v166 = type metadata accessor for DataFrame(0);
  v162 = *(v166 - 8);
  v43 = *(v162 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v149 = &v141;
  v46 = alloca(v43);
  v47 = alloca(v43);
  v142 = &v141;
  v48 = alloca(v43);
  v49 = alloca(v43);
  v154 = &v141;
  v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v51 = swift_allocObject(v50, 64, 7);
  v51[2] = 2;
  v51[3] = 4;
  v164 = a3;
  v51[4] = a3;
  v51[5] = a4;
  v159 = a5;
  v51[6] = a5;
  v52 = v51;
  v51[7] = a6;
  v158 = a6;
  a4;
  a6;
  if (a8)
  {
    a8;
    v53 = 3;
    v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v52);
    v52[2] = 3;
    v52[8] = a7;
    v52[9] = a8;
  }

  else
  {
    v53 = 2;
  }

  v168 = a4;
  if (a10)
  {
    v169 = v52;
    v54 = v52[3];
    a10;
    if (v54 >> 1 <= v53)
    {
      v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 >= 2, v53 + 1, 1, v169);
    }

    else
    {
      v52 = v169;
    }

    v52[2] = v53 + 1;
    v55 = 2 * v53;
    v52[v55 + 4] = a9;
    v52[v55 + 5] = a10;
  }

  v169 = v52;
  v56 = URL.pathExtension.getter();
  v58 = v57;
  if (!(v56 ^ 0x6E6F736A | v57 ^ 0xE400000000000000))
  {
    v57;
    goto LABEL_11;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)(v56, v57, 1852797802, 0xE400000000000000, 0);
  v58;
  if (v59)
  {
LABEL_11:
    v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>);
    v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
    v62 = *(v61 - 8);
    v170 = v61;
    v172 = *(v62 + 72);
    v63 = *(v62 + 80);
    v64 = (v63 + 32) & ~*(v62 + 80);
    v65 = swift_allocObject(v60, v64 + 2 * v172, v63 | 7);
    *(v65 + 16) = 2;
    *(v65 + 24) = 4;
    v66 = v65 + v64;
    v67 = v65 + v64 + *(v61 + 48);
    *(v65 + v64) = v164;
    *(v65 + v64 + 8) = v168;
    LODWORD(v167) = enum case for JSONType.string(_:);
    v68 = *(v175 + 104);
    v69 = v143;
    v68(v67, enum case for JSONType.string(_:), v143);
    v70 = v172;
    v71 = v66 + v172 + *(v170 + 12);
    *(v172 + v66) = v159;
    v72 = v158;
    *(v70 + v66 + 8) = v158;
    LOBYTE(v66) = v72;
    v172 = v68;
    v68(v71, v167, v69);
    v168;
    v66;
    v73 = Dictionary.init(dictionaryLiteral:)(v65, &type metadata for String, v69, &protocol witness table for String);
    if (a8)
    {
      v74 = v171;
      v75 = v73;
      (v172)(v171, enum case for JSONType.double(_:), v69);
      v76 = v174;
      (*(v175 + 32))(v174, v74, v69);
      a8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v75);
      v151[0] = v75;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, a7, a8, isUniquelyReferenced_nonNull_native);
      a8;
      v73 = v151[0];
      v78 = a10;
    }

    else
    {
      v78 = a10;
      v76 = v174;
    }

    v174 = v73;
    if (v78)
    {
      v79 = v171;
      (v172)(v171, enum case for JSONType.double(_:), v69);
      (*(v175 + 32))(v76, v79, v69);
      v78;
      v80 = v174;
      v81 = swift_isUniquelyReferenced_nonNull_native(v174);
      v151[0] = v80;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, a9, v78, v81);
      v78;
      v174 = v151[0];
    }

    v82 = v141;
    (v165[2])(v141, v173, v153);
    v83 = v169;
    v169;
    v84 = v161;
    JSONReadingOptions.init()();
    v85 = v142;
    v86 = v152;
    DataFrame.init(contentsOfJSONFile:columns:types:options:)(v82, v83, v174, v84);
    if (!v86)
    {
      v173 = 0;
      v87 = v162;
      v88 = v166;
      goto LABEL_27;
    }

    return v83;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v91 = *(v90 - 8);
  v92 = v90;
  v171 = v90;
  v175 = *(v91 + 72);
  v93 = *(v91 + 80);
  v94 = (v93 + 32) & ~*(v91 + 80);
  v95 = swift_allocObject(v89, v94 + 2 * v175, v93 | 7);
  *(v95 + 16) = 2;
  *(v95 + 24) = 4;
  v96 = v95 + v94;
  v97 = v95 + v94 + *(v92 + 48);
  *(v95 + v94) = v164;
  *(v95 + v94 + 8) = v168;
  LODWORD(v161) = enum case for CSVType.string(_:);
  v98 = *(v163 + 104);
  v99 = v172;
  (v98)(v97, enum case for CSVType.string(_:), v172);
  v100 = v98;
  v101 = v175;
  v102 = v96 + v175 + *(v171 + 12);
  *(v175 + v96) = v159;
  LOBYTE(v98) = v158;
  *(v101 + v96 + 8) = v158;
  v103 = v99;
  v104 = v100;
  (v100)(v102, v161, v103);
  v168;
  LOBYTE(v102) = v98;
  v105 = v103;
  v102;
  v106 = Dictionary.init(dictionaryLiteral:)(v95, &type metadata for String, v103, &protocol witness table for String);
  v174 = v104;
  LODWORD(v171) = enum case for CSVType.double(_:);
  if (a8)
  {
    v107 = v170;
    v175 = v106;
    (v104)(v170, enum case for CSVType.double(_:), v105);
    v108 = v157;
    v109 = v163;
    (*(v163 + 32))(v157, v107, v105);
    a8;
    v110 = v175;
    v111 = swift_isUniquelyReferenced_nonNull_native(v175);
    v151[0] = v110;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v108, a7, a8, v111);
    a8;
    v106 = v151[0];
    v112 = a10;
  }

  else
  {
    v112 = a10;
    v109 = v163;
  }

  v175 = v106;
  v113 = v170;
  if (v112)
  {
    v114 = v172;
    (v174)(v170, v171, v172);
    v115 = v109;
    v116 = v157;
    (*(v115 + 32))(v157, v113, v114);
    v112;
    v117 = v175;
    v118 = swift_isUniquelyReferenced_nonNull_native(v175);
    v151[0] = v117;
    v119 = v116;
    v120 = v174;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v119, a9, v112, v118);
    v112;
    v175 = v151[0];
    v113 = v170;
  }

  else
  {
    v120 = v174;
  }

  (v165[2])(v167, v173, v153);
  v83 = v169;
  v169;
  v173 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
  v165 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
  v121 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
  (v120)(v113, v171, v172);
  v122 = v148;
  CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v173, v165, v121, v113, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
  v85 = v149;
  v123 = v152;
  DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v167, v83, 0, 0, 1, v175, v122);
  if (v123)
  {
    return v83;
  }

  v173 = 0;
  v88 = v166;
  v87 = v162;
LABEL_27:
  v175 = *(v87 + 32);
  (v175)(v154, v85, v88);
  v125 = v147;
  DataFrame.subscript.getter(v164, v168, &type metadata for String);
  v151[0] = 0;
  v151[1] = 0xE000000000000000;
  v126 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>();
  v127 = v145;
  OptionalColumnProtocol.filled(with:)(v151, v145, v126);
  v128 = v127;
  v129 = v154;
  (*(v146 + 8))(v125, v128);
  v130 = alloca(24);
  v131 = alloca(32);
  v143 = v144;
  v132 = v173;
  v133 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData12FilledColumnVyAF0G0VySSGG_SSSgs5NeverOTg5(partial apply for closure #1 in MLHandActionClassifier.DataSource.gatherAnnotatedFileNamesForDirectory(url:annotationFile:videoColumn:labelColumn:startTimeColumn:endTimeColumn:), &v141);
  v173 = v132;
  v169;
  v134 = v168;
  v168;
  v135 = v133;
  v136 = v164;
  DataFrame.subscript.setter(v135, v164, v134, &type metadata for String, &type metadata for String);
  v137 = v173;
  static _VideoUtilities.renameVideoColumns(dataFrame:videoColumn:labelColumn:startTimeColumn:endTimeColumn:)(v129, v136, v134, v159, v158, a7, a8, a9, a10);
  (*(v155 + 8))(v160, v156);
  if (v137)
  {
    return (*(v162 + 8))(v129, v166);
  }

  v138 = v150;
  v139 = v129;
  v140 = v166;
  (v175)(v150, v139, v166);
  return __swift_storeEnumTagSinglePayload(v138, 0, 1, v140);
}

uint64_t MLHandActionClassifier.DataSource.stratifiedSplit(proportions:seed:labelColumn:)(void *a1, uint64_t a2, uint64_t a3, void *a4, __m128 a5)
{
  v8 = v6;
  v35 = a4;
  v36._countAndFlagsBits = a3;
  v40 = a2;
  v36._object = a1;
  v37 = v5;
  v9 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLHandActionClassifier.DataSource(v7, &v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v33, v9);
  if (EnumCaseMultiPayload == 5)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
    v18 = v17[12];
    *v38 = *(&v33 + v18);
    *v43 = *(&v33 + v18 + 8);
    *(&v33 + v17[16] + 8);
    *(&v33 + v17[20] + 8);
    v19 = type metadata accessor for DataFrame(0);
    (*(*(v19 - 8) + 8))(&v33, v19);
LABEL_5:
    MLHandActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
    if (v8)
    {
      return *v43;
    }

    v21 = v40;
    if (v40 < 0)
    {
      BUG();
    }

    v22 = v41;
    v34 = v41;
    LOBYTE(v39) = v42;
    v23 = type metadata accessor for MersenneTwisterGenerator();
    swift_allocObject(v23, 136, 7);
    v41 = MersenneTwisterGenerator.init(seed:)(v21);
    v24 = v39;
    v25 = v22;
    v26 = *v43;
    v32._object = v35;
    v32._countAndFlagsBits = v36._countAndFlagsBits;
    specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(v36._object, &v41, v25, v39, *v38, *v43, 30.0, v32);
    v26;

    return outlined consume of Result<_DataTable, Error>(v34, v24);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v39 = v33;
    *v38 = v35;
    *v43 = v36._countAndFlagsBits;
    v14 = v33;
    v15 = v34;
    v37;
    v16 = v14;
    v8 = v6;
    v16;
    outlined consume of Result<_DataTable, Error>(v39, v15);
    goto LABEL_5;
  }

  MLHandActionClassifier.DataSource.videosWithAnnotations()(a5);
  if (v6)
  {
    return outlined destroy of MLHandActionClassifier.DataSource(&v33);
  }

  v27 = v40;
  if (v40 < 0)
  {
    BUG();
  }

  *v43 = v41;
  v28 = v42;
  v29 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v29, 136, 7);
  v41 = MersenneTwisterGenerator.init(seed:)(v27);
  v30 = v28;
  LODWORD(v40) = v28;
  v31 = *v43;
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v36._object, &v41, *v43, v30, v36._countAndFlagsBits, v35, *a5.i64);

  outlined consume of Result<_DataTable, Error>(v31, v40);
  return outlined destroy of MLHandActionClassifier.DataSource(&v33);
}

void *initializeBufferWithCopyOfBuffer for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(a2, a3))
    {
      case 0u:
        v6 = type metadata accessor for URL(0);
        v52 = *(*(v6 - 8) + 16);
        v52(a1, a2, v6);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v52(a1 + v7[12], a2 + v7[12], v6);
        v8 = v7[16];
        *(a1 + v8) = *(a2 + v8);
        v9 = *(a2 + v8 + 8);
        *(v3 + v8 + 8) = v9;
        v10 = v7[20];
        *(v3 + v10) = *(a2 + v10);
        v53 = *(a2 + v10 + 8);
        *(v3 + v10 + 8) = v53;
        v11 = v7[24];
        *(v3 + v11) = *(a2 + v11);
        v12 = *(a2 + v11 + 8);
        *(v3 + v11 + 8) = v12;
        v13 = v7[28];
        *(v3 + v13) = *(a2 + v13);
        v14 = *(a2 + v13 + 8);
        *(v3 + v13 + 8) = v14;
        v9;
        v53;
        v12;
        v14;
        v15 = v3;
        v16 = a3;
        v17 = 0;
        goto LABEL_12;
      case 1u:
        v31 = type metadata accessor for URL(0);
        (*(*(v31 - 8) + 16))(a1, a2, v31);
        v51 = 1;
        goto LABEL_11;
      case 2u:
        v25 = type metadata accessor for URL(0);
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v51 = 2;
        goto LABEL_11;
      case 3u:
        v26 = *a2;
        v27 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v27);
        *a1 = v26;
        *(a1 + 8) = v27;
        *(a1 + 16) = *(a2 + 16);
        v28 = *(a2 + 24);
        v3[3] = v28;
        v3[4] = *(a2 + 32);
        v29 = *(a2 + 40);
        v3[5] = v29;
        v3[6] = *(a2 + 48);
        v30 = *(a2 + 56);
        v3[7] = v30;
        v28;
        v29;
        v30;
        v51 = 3;
        goto LABEL_11;
      case 4u:
        v19 = *a2;
        v20 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v20);
        *a1 = v19;
        *(a1 + 8) = v20;
        *(a1 + 16) = *(a2 + 16);
        v21 = *(a2 + 24);
        v3[3] = v21;
        v3[4] = *(a2 + 32);
        v22 = *(a2 + 40);
        v3[5] = v22;
        v3[6] = *(a2 + 48);
        v23 = *(a2 + 56);
        v3[7] = v23;
        v3[8] = *(a2 + 64);
        v24 = *(a2 + 72);
        v3[9] = v24;
        v21;
        v22;
        v23;
        v24;
        v51 = 4;
        goto LABEL_11;
      case 5u:
        v32 = type metadata accessor for DataFrame(0);
        (*(*(v32 - 8) + 16))(a1, a2, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v34 = v33[12];
        *(a1 + v34) = *(a2 + v34);
        v35 = *(a2 + v34 + 8);
        *(v3 + v34 + 8) = v35;
        v36 = v33[16];
        *(v3 + v36) = *(a2 + v36);
        v37 = *(a2 + v36 + 8);
        *(v3 + v36 + 8) = v37;
        v38 = v33[20];
        *(v3 + v38) = *(a2 + v38);
        v39 = *(a2 + v38 + 8);
        *(v3 + v38 + 8) = v39;
        v35;
        v37;
        v39;
        v51 = 5;
        goto LABEL_11;
      case 6u:
        v40 = type metadata accessor for DataFrame(0);
        (*(*(v40 - 8) + 16))(a1, a2, v40);
        v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v42 = v41[12];
        *(a1 + v42) = *(a2 + v42);
        v43 = *(a2 + v42 + 8);
        *(v3 + v42 + 8) = v43;
        v44 = v41[16];
        *(v3 + v44) = *(a2 + v44);
        v45 = *(a2 + v44 + 8);
        *(v3 + v44 + 8) = v45;
        v46 = v41[20];
        *(v3 + v46) = *(a2 + v46);
        v47 = *(a2 + v46 + 8);
        *(v3 + v46 + 8) = v47;
        v48 = v41[24];
        *(v3 + v48) = *(a2 + v48);
        v49 = *(a2 + v48 + 8);
        *(v3 + v48 + 8) = v49;
        v43;
        v45;
        v47;
        v49;
        v51 = 6;
LABEL_11:
        v17 = v51;
        v15 = v3;
        v16 = a3;
LABEL_12:
        swift_storeEnumTagMultiPayload(v15, v16, v17);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      v4 = type metadata accessor for URL(0);
      v5 = *(*(v4 - 8) + 8);
      v5(a1, v4);
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v5(a1 + v6[12], v4);
      *(a1 + v6[16] + 8);
      *(a1 + v6[20] + 8);
      *(a1 + v6[24] + 8);
      v7 = v6[28];
      goto LABEL_8;
    case 1:
    case 2:
      v3 = type metadata accessor for URL(0);
      return (*(*(v3 - 8) + 8))(a1, v3);
    case 3:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      return *(a1 + 56);
    case 4:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
      *(a1 + 24);
      *(a1 + 40);
      *(a1 + 56);
      return *(a1 + 72);
    case 5:
      v8 = type metadata accessor for DataFrame(0);
      (*(*(v8 - 8) + 8))(a1, v8);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(a1 + v9[12] + 8);
      *(a1 + v9[16] + 8);
      v7 = v9[20];
      goto LABEL_8;
    case 6:
      v10 = type metadata accessor for DataFrame(0);
      (*(*(v10 - 8) + 8))(a1, v10);
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *(a1 + v11[12] + 8);
      *(a1 + v11[16] + 8);
      *(a1 + v11[20] + 8);
      v7 = v11[24];
LABEL_8:
      result = *(a1 + v7 + 8);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t initializeWithCopy for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(a2, a3))
  {
    case 0u:
      v5 = type metadata accessor for URL(0);
      v6 = *(*(v5 - 8) + 16);
      v6(a1, a2, v5);
      v52 = a3;
      v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v6(a1 + v7[12], a2 + v7[12], v5);
      v8 = v7[16];
      *(a1 + v8) = *(a2 + v8);
      v9 = *(a2 + v8 + 8);
      *(a1 + v8 + 8) = v9;
      v10 = v7[20];
      *(a1 + v10) = *(a2 + v10);
      v11 = *(a2 + v10 + 8);
      *(a1 + v10 + 8) = v11;
      v12 = v7[24];
      *(a1 + v12) = *(a2 + v12);
      v13 = *(a2 + v12 + 8);
      *(a1 + v12 + 8) = v13;
      v14 = v7[28];
      *(a1 + v14) = *(a2 + v14);
      v15 = *(a2 + v14 + 8);
      *(a1 + v14 + 8) = v15;
      v9;
      v11;
      v13;
      v15;
      v16 = a1;
      v17 = v52;
      v18 = 0;
      goto LABEL_10;
    case 1u:
      v31 = type metadata accessor for URL(0);
      (*(*(v31 - 8) + 16))(a1, a2, v31);
      v51 = 1;
      goto LABEL_9;
    case 2u:
      v25 = type metadata accessor for URL(0);
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v51 = 2;
      goto LABEL_9;
    case 3u:
      v26 = *a2;
      v27 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v27);
      *a1 = v26;
      *(a1 + 8) = v27;
      *(a1 + 16) = *(a2 + 16);
      v28 = *(a2 + 24);
      *(a1 + 24) = v28;
      *(a1 + 32) = *(a2 + 32);
      v29 = *(a2 + 40);
      *(a1 + 40) = v29;
      *(a1 + 48) = *(a2 + 48);
      v30 = *(a2 + 56);
      *(a1 + 56) = v30;
      v28;
      v29;
      v30;
      v51 = 3;
      goto LABEL_9;
    case 4u:
      v19 = *a2;
      v20 = *(a2 + 8);
      outlined copy of Result<_DataTable, Error>(*a2, v20);
      *a1 = v19;
      *(a1 + 8) = v20;
      *(a1 + 16) = *(a2 + 16);
      v21 = *(a2 + 24);
      *(a1 + 24) = v21;
      *(a1 + 32) = *(a2 + 32);
      v22 = *(a2 + 40);
      *(a1 + 40) = v22;
      *(a1 + 48) = *(a2 + 48);
      v23 = *(a2 + 56);
      *(a1 + 56) = v23;
      *(a1 + 64) = *(a2 + 64);
      v24 = *(a2 + 72);
      *(a1 + 72) = v24;
      v21;
      v22;
      v23;
      v24;
      v51 = 4;
      goto LABEL_9;
    case 5u:
      v32 = type metadata accessor for DataFrame(0);
      (*(*(v32 - 8) + 16))(a1, a2, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      v34 = v33[12];
      *(a1 + v34) = *(a2 + v34);
      v35 = *(a2 + v34 + 8);
      *(a1 + v34 + 8) = v35;
      v36 = v33[16];
      *(a1 + v36) = *(a2 + v36);
      v37 = *(a2 + v36 + 8);
      *(a1 + v36 + 8) = v37;
      v38 = v33[20];
      *(a1 + v38) = *(a2 + v38);
      v39 = *(a2 + v38 + 8);
      *(a1 + v38 + 8) = v39;
      v35;
      v37;
      v39;
      v51 = 5;
      goto LABEL_9;
    case 6u:
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 16))(a1, a2, v40);
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v42 = v41[12];
      *(a1 + v42) = *(a2 + v42);
      v43 = *(a2 + v42 + 8);
      *(a1 + v42 + 8) = v43;
      v44 = v41[16];
      *(a1 + v44) = *(a2 + v44);
      v45 = *(a2 + v44 + 8);
      *(a1 + v44 + 8) = v45;
      v46 = v41[20];
      *(a1 + v46) = *(a2 + v46);
      v47 = *(a2 + v46 + 8);
      *(a1 + v46 + 8) = v47;
      v48 = v41[24];
      *(a1 + v48) = *(a2 + v48);
      v49 = *(a2 + v48 + 8);
      *(a1 + v48 + 8) = v49;
      v43;
      v45;
      v47;
      v49;
      v51 = 6;
LABEL_9:
      v18 = v51;
      v16 = a1;
      v17 = a3;
LABEL_10:
      swift_storeEnumTagMultiPayload(v16, v17, v18);
      return a1;
  }
}

uint64_t assignWithCopy for MLHandActionClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLHandActionClassifier.DataSource(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v43 = EnumCaseMultiPayload;
        v13 = type metadata accessor for URL(0);
        v40 = *(*(v13 - 8) + 16);
        v40(a1, a2, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v40(a1 + v14[12], a2 + v14[12], v13);
        v15 = v14[16];
        *(a1 + v15) = *(a2 + v15);
        v16 = *(a2 + v15 + 8);
        *(a1 + v15 + 8) = v16;
        v17 = v14[20];
        *(a1 + v17) = *(a2 + v17);
        v41 = *(a2 + v17 + 8);
        *(a1 + v17 + 8) = v41;
        v18 = v14[24];
        *(a1 + v18) = *(a2 + v18);
        v19 = *(a2 + v18 + 8);
        *(a1 + v18 + 8) = v19;
        v20 = v14[28];
        *(a1 + v20) = *(a2 + v20);
        v21 = *(a2 + v20 + 8);
        *(a1 + v20 + 8) = v21;
        v16;
        v41;
        LOBYTE(v16) = v19;
        EnumCaseMultiPayload = v43;
        v16;
        v22 = v21;
        goto LABEL_12;
      case 1u:
      case 2u:
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        goto LABEL_13;
      case 3u:
        v23 = *a2;
        v44 = EnumCaseMultiPayload;
        v24 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v24);
        *a1 = v23;
        *(a1 + 8) = v24;
        EnumCaseMultiPayload = v44;
        *(a1 + 16) = *(a2 + 16);
        v25 = *(a2 + 24);
        *(a1 + 24) = v25;
        *(a1 + 32) = *(a2 + 32);
        v26 = *(a2 + 40);
        *(a1 + 40) = v26;
        *(a1 + 48) = *(a2 + 48);
        v12 = *(a2 + 56);
        *(a1 + 56) = v12;
        goto LABEL_8;
      case 4u:
        v7 = *a2;
        v42 = EnumCaseMultiPayload;
        v8 = *(a2 + 8);
        outlined copy of Result<_DataTable, Error>(*a2, v8);
        *a1 = v7;
        *(a1 + 8) = v8;
        *(a1 + 16) = *(a2 + 16);
        v9 = *(a2 + 24);
        *(a1 + 24) = v9;
        *(a1 + 32) = *(a2 + 32);
        v10 = *(a2 + 40);
        *(a1 + 40) = v10;
        *(a1 + 48) = *(a2 + 48);
        v11 = *(a2 + 56);
        *(a1 + 56) = v11;
        *(a1 + 64) = *(a2 + 64);
        v12 = *(a2 + 72);
        *(a1 + 72) = v12;
        goto LABEL_10;
      case 5u:
        v27 = type metadata accessor for DataFrame(0);
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v29 = v28[12];
        *(a1 + v29) = *(a2 + v29);
        v25 = *(a2 + v29 + 8);
        *(a1 + v29 + 8) = v25;
        v30 = v28[16];
        *(a1 + v30) = *(a2 + v30);
        v26 = *(a2 + v30 + 8);
        *(a1 + v30 + 8) = v26;
        v31 = v28[20];
        *(a1 + v31) = *(a2 + v31);
        v12 = *(a2 + v31 + 8);
        *(a1 + v31 + 8) = v12;
LABEL_8:
        v25;
        v32 = v26;
        break;
      case 6u:
        v33 = type metadata accessor for DataFrame(0);
        (*(*(v33 - 8) + 16))(a1, a2, v33);
        v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v35 = v34[12];
        *(a1 + v35) = *(a2 + v35);
        v9 = *(a2 + v35 + 8);
        *(a1 + v35 + 8) = v9;
        v36 = v34[16];
        *(a1 + v36) = *(a2 + v36);
        v10 = *(a2 + v36 + 8);
        *(a1 + v36 + 8) = v10;
        v37 = v34[20];
        *(a1 + v37) = *(a2 + v37);
        v42 = EnumCaseMultiPayload;
        v11 = *(a2 + v37 + 8);
        *(a1 + v37 + 8) = v11;
        v38 = v34[24];
        *(a1 + v38) = *(a2 + v38);
        v12 = *(a2 + v38 + 8);
        *(a1 + v38 + 8) = v12;
LABEL_10:
        v9;
        v10;
        v32 = v11;
        EnumCaseMultiPayload = v42;
        break;
    }

    v32;
    v22 = v12;
LABEL_12:
    v22;
LABEL_13:
    swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  }

  return a1;
}

char *initializeWithTake for MLHandActionClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 0u:
      v4 = type metadata accessor for URL(0);
      v16 = *(*(v4 - 8) + 32);
      v16(__dst, __src, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      v16(&__dst[v5[12]], &__src[v5[12]], v4);
      *&__dst[v5[16]] = *&__src[v5[16]];
      *&__dst[v5[20]] = *&__src[v5[20]];
      *&__dst[v5[24]] = *&__src[v5[24]];
      *&__dst[v5[28]] = *&__src[v5[28]];
      v6 = a3;
      v7 = 0;
      goto LABEL_9;
    case 1u:
      v10 = type metadata accessor for URL(0);
      (*(*(v10 - 8) + 32))(__dst, __src, v10);
      v15 = 1;
      goto LABEL_8;
    case 2u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 32))(__dst, __src, v9);
      v15 = 2;
      goto LABEL_8;
    case 5u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 32))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *&__dst[v12[12]] = *&__src[v12[12]];
      *&__dst[v12[16]] = *&__src[v12[16]];
      *&__dst[v12[20]] = *&__src[v12[20]];
      v15 = 5;
      goto LABEL_8;
    case 6u:
      v13 = type metadata accessor for DataFrame(0);
      (*(*(v13 - 8) + 32))(__dst, __src, v13);
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
      *&__dst[v14[12]] = *&__src[v14[12]];
      *&__dst[v14[16]] = *&__src[v14[16]];
      *&__dst[v14[20]] = *&__src[v14[20]];
      *&__dst[v14[24]] = *&__src[v14[24]];
      v15 = 6;
LABEL_8:
      v7 = v15;
      v6 = a3;
LABEL_9:
      swift_storeEnumTagMultiPayload(__dst, v6, v7);
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *assignWithTake for MLHandActionClassifier.DataSource(char *__dst, char *__src, uint64_t a3)
{
  if (__dst != __src)
  {
    outlined destroy of MLHandActionClassifier.DataSource(__dst);
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 0u:
        v4 = type metadata accessor for URL(0);
        v16 = *(*(v4 - 8) + 32);
        v16(__dst, __src, v4);
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v16(&__dst[v5[12]], &__src[v5[12]], v4);
        *&__dst[v5[16]] = *&__src[v5[16]];
        *&__dst[v5[20]] = *&__src[v5[20]];
        *&__dst[v5[24]] = *&__src[v5[24]];
        *&__dst[v5[28]] = *&__src[v5[28]];
        v6 = a3;
        v7 = 0;
        goto LABEL_10;
      case 1u:
        v10 = type metadata accessor for URL(0);
        (*(*(v10 - 8) + 32))(__dst, __src, v10);
        v15 = 1;
        goto LABEL_9;
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 32))(__dst, __src, v9);
        v15 = 2;
        goto LABEL_9;
      case 5u:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 32))(__dst, __src, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&__dst[v12[12]] = *&__src[v12[12]];
        *&__dst[v12[16]] = *&__src[v12[16]];
        *&__dst[v12[20]] = *&__src[v12[20]];
        v15 = 5;
        goto LABEL_9;
      case 6u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 32))(__dst, __src, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&__dst[v14[12]] = *&__src[v14[12]];
        *&__dst[v14[16]] = *&__src[v14[16]];
        *&__dst[v14[20]] = *&__src[v14[20]];
        *&__dst[v14[24]] = *&__src[v14[24]];
        v15 = 6;
LABEL_9:
        v7 = v15;
        v6 = a3;
LABEL_10:
        swift_storeEnumTagMultiPayload(__dst, v6, v7);
        return __dst;
      default:
        return memcpy(__dst, __src, *(*(a3 - 8) + 64));
    }
  }

  return __dst;
}

uint64_t type metadata completion function for MLHandActionClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for URL(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v21 = a1;
    v4 = *(v1 - 8) + 64;
    v13 = v4;
    v14 = v4;
    v15 = &unk_3471B0;
    v16 = &unk_3471B0;
    v17 = &unk_3471C8;
    v18 = &unk_3471C8;
    swift_getTupleTypeLayout(v11, 0, 6);
    v20[0] = v11;
    v20[1] = v4;
    v20[2] = v4;
    v20[3] = &unk_3471E0;
    v20[4] = &unk_3471F8;
    v5 = type metadata accessor for DataFrame(319);
    v2 = v5;
    if (v6 <= 0x3F)
    {
      v13 = *(v5 - 8) + 64;
      v7 = v13;
      v14 = &unk_3471B0;
      v15 = &unk_3471B0;
      v16 = &unk_3471B0;
      v2 = 0;
      swift_getTupleTypeLayout(v19, 0, 4);
      v20[5] = v19;
      v13 = v7;
      v14 = &unk_3471B0;
      v15 = &unk_3471B0;
      v16 = &unk_3471C8;
      v17 = &unk_3471C8;
      swift_getTupleTypeLayout(v12, 0, 5);
      v20[6] = v12;
      swift_initEnumMetadataMultiPayload(v21, 256, 7, v20, v8, v9);
    }
  }

  return v2;
}

uint64_t lazy protocol witness table accessor for type Column<String> and conformance Column<A>()
{
  result = lazy protocol witness table cache variable for type Column<String> and conformance Column<A>;
  if (!lazy protocol witness table cache variable for type Column<String> and conformance Column<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for Column<String>);
    result = swift_getWitnessTable(&protocol conformance descriptor for Column<A>, v1);
    lazy protocol witness table cache variable for type Column<String> and conformance Column<A> = result;
  }

  return result;
}

uint64_t MLPhase.rawValue.getter()
{
  switch(*v0)
  {
    case 0:
      v2 = *v0;
      result = 0x696C616974696E69;
      break;
    case 1:
      result = 0x6974636172747865;
      break;
    case 2:
      result = 0x676E696E69617274;
      break;
    case 3:
      result = 0x697461756C617665;
      break;
    case 4:
      result = 0x636E657265666E69;
      break;
  }

  return result;
}

CreateML::MLPhase_optional __swiftcall MLPhase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MLPhase.init(rawValue:), rawValue);
  rawValue._object, rawValue._countAndFlagsBits;
  result.value = CreateML_MLPhase_unknownDefault;
  if (v3 < 5)
  {
    result.value = v3;
  }

  v2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLPhase(uint64_t a1)
{
  v2 = v1;
  result = MLPhase.rawValue.getter(a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MLPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xFC)
    {
      goto LABEL_13;
    }

    v2 = a2 + 4;
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
      v5 = *a1 + (v4 << 8) - 5;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 5;
      v8 = v6 < 5;
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

uint64_t storeEnumTagSinglePayload for MLPhase(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFC)
  {
    v4 = a3 + 4;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFB)
  {
    v5 = a2 - 252;
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
          *a1 = a2 + 4;
        }

        break;
    }
  }

  return result;
}

Swift::Int MLBoundingBoxUnits.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits()
{
  result = lazy protocol witness table cache variable for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits;
  if (!lazy protocol witness table cache variable for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLBoundingBoxUnits, &type metadata for MLBoundingBoxUnits);
    lazy protocol witness table cache variable for type MLBoundingBoxUnits and conformance MLBoundingBoxUnits = result;
  }

  return result;
}

uint64_t Column<A>.parseAsJSONArrays()()
{
  return Column<A>.parseAsJSONArrays()(&demangling cache variable for type metadata for Column<String>, closure #1 in Column<A>.parseAsJSONArrays());
}

{
  return Column<A>.parseAsJSONArrays()(&demangling cache variable for type metadata for Column<Data>, closure #1 in Column<A>.parseAsJSONArrays());
}

void *AnyColumn.convertedToFloats()()
{
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v66 = *(v67 - 8);
  v0 = *(v66 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v68 = v55;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v65 = v55;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v61 = *(v62 - 8);
  v6 = *(v61 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v55;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v60 = *(v59 - 8);
  v9 = *(v60 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v57 = v55;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v58 = v55;
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v70 = *(v69 - 8);
  v17 = *(v70 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v20, &type metadata for Int8))
  {
    v21 = AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    v22 = AnyColumn.count.getter(v21);
    v23 = alloca(24);
    v24 = alloca(32);
    v56 = v55;
    v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v22, partial apply for closure #1 in AnyColumn.convertedToFloats(), v55, &type metadata for Float);
    v26 = v55;
    v27 = v69;
    v28 = v70;
  }

  else
  {
    v29 = v58;
    v70 = v12;
    v69 = v13;
    v30 = v57;
    v31 = v56;
    if (swift_dynamicCastMetatype(v20, &type metadata for Int32))
    {
      v32 = AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
      v33 = AnyColumn.count.getter(v32);
      v34 = alloca(24);
      v35 = alloca(32);
      v56 = v29;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v33, partial apply for closure #2 in AnyColumn.convertedToFloats(), v55, &type metadata for Float);
      v26 = v29;
      v27 = v70;
      v28 = v69;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int64))
    {
      v36 = AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
      v37 = AnyColumn.count.getter(v36);
      v38 = alloca(24);
      v39 = alloca(32);
      v56 = v30;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v37, partial apply for closure #3 in AnyColumn.convertedToFloats(), v55, &type metadata for Float);
      v26 = v30;
      v27 = v59;
      v28 = v60;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int))
    {
      v40 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v41 = AnyColumn.count.getter(v40);
      v42 = alloca(24);
      v43 = alloca(32);
      v56 = v31;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v41, partial apply for closure #4 in AnyColumn.convertedToFloats(), v55, &type metadata for Float);
      v26 = v31;
      v27 = v62;
      v28 = v61;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Float))
    {
      v44 = v65;
      v45 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
      v46 = AnyColumn.count.getter(v45);
      v47 = alloca(24);
      v48 = alloca(32);
      v56 = v44;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v46, partial apply for closure #5 in AnyColumn.convertedToFloats(), v55, &type metadata for Float);
      v26 = v44;
      v27 = v64;
      v28 = v63;
    }

    else
    {
      if (!swift_dynamicCastMetatype(v20, &type metadata for Double))
      {
        return 0;
      }

      v49 = v68;
      v50 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
      v51 = AnyColumn.count.getter(v50);
      v52 = alloca(24);
      v53 = alloca(32);
      v56 = v49;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v51, partial apply for closure #6 in AnyColumn.convertedToFloats(), v55, &type metadata for Float);
      v26 = v49;
      v27 = v67;
      v28 = v66;
    }
  }

  (*(v28 + 8))(v26, v27);
  return v25;
}

void *AnyColumn.convertedToDoubles()()
{
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v66 = *(v67 - 8);
  v0 = *(v66 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v68 = v55;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v65 = v55;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v61 = *(v62 - 8);
  v6 = *(v61 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v55;
  v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int64>);
  v60 = *(v59 - 8);
  v9 = *(v60 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v57 = v55;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v58 = v55;
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  v70 = *(v69 - 8);
  v17 = *(v70 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v20, &type metadata for Int8))
  {
    v21 = AnyColumn.assumingType<A>(_:)(&type metadata for Int8, &type metadata for Int8);
    v22 = AnyColumn.count.getter(v21);
    v23 = alloca(24);
    v24 = alloca(32);
    v56 = v55;
    v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v22, partial apply for closure #1 in AnyColumn.convertedToDoubles(), v55, &type metadata for Double);
    v26 = v55;
    v27 = v69;
    v28 = v70;
  }

  else
  {
    v29 = v58;
    v70 = v12;
    v69 = v13;
    v30 = v57;
    v31 = v56;
    if (swift_dynamicCastMetatype(v20, &type metadata for Int32))
    {
      v32 = AnyColumn.assumingType<A>(_:)(&type metadata for Int32, &type metadata for Int32);
      v33 = AnyColumn.count.getter(v32);
      v34 = alloca(24);
      v35 = alloca(32);
      v56 = v29;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v33, partial apply for closure #2 in AnyColumn.convertedToDoubles(), v55, &type metadata for Double);
      v26 = v29;
      v27 = v70;
      v28 = v69;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int64))
    {
      v36 = AnyColumn.assumingType<A>(_:)(&type metadata for Int64, &type metadata for Int64);
      v37 = AnyColumn.count.getter(v36);
      v38 = alloca(24);
      v39 = alloca(32);
      v56 = v30;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v37, partial apply for closure #3 in AnyColumn.convertedToDoubles(), v55, &type metadata for Double);
      v26 = v30;
      v27 = v59;
      v28 = v60;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Int))
    {
      v40 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
      v41 = AnyColumn.count.getter(v40);
      v42 = alloca(24);
      v43 = alloca(32);
      v56 = v31;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v41, partial apply for closure #4 in AnyColumn.convertedToDoubles(), v55, &type metadata for Double);
      v26 = v31;
      v27 = v62;
      v28 = v61;
    }

    else if (swift_dynamicCastMetatype(v20, &type metadata for Float))
    {
      v44 = v65;
      v45 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
      v46 = AnyColumn.count.getter(v45);
      v47 = alloca(24);
      v48 = alloca(32);
      v56 = v44;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v46, partial apply for closure #5 in AnyColumn.convertedToDoubles(), v55, &type metadata for Double);
      v26 = v44;
      v27 = v64;
      v28 = v63;
    }

    else
    {
      if (!swift_dynamicCastMetatype(v20, &type metadata for Double))
      {
        return 0;
      }

      v49 = v68;
      v50 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
      v51 = AnyColumn.count.getter(v50);
      v52 = alloca(24);
      v53 = alloca(32);
      v56 = v49;
      v25 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(v51, partial apply for closure #6 in AnyColumn.convertedToDoubles(), v55, &type metadata for Double);
      v26 = v49;
      v27 = v67;
      v28 = v66;
    }
  }

  (*(v28 + 8))(v26, v27);
  return v25;
}

uint64_t AnyColumn.convertedToDoubleArrays()()
{
  v73 = v0;
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v69 = *(v70 - 8);
  v1 = *(v69 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v71 = v58;
  v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v66 = *(v67 - 8);
  v4 = *(v66 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v68 = v58;
  v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int64]>);
  v63 = *(v64 - 8);
  v7 = *(v63 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v65 = v58;
  v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v62 = *(v60 - 8);
  v10 = *(v62 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v61 = v58;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int8]>);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = AnyColumn.wrappedElementType.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int8]);
  v72 = v17;
  if (swift_dynamicCastMetatype(v17, v18))
  {
    v19 = AnyColumn.assumingType<A>(_:)(v18, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v21 = v73;
    Column.mapNonNil<A>(_:)(closure #1 in AnyColumn.convertedToDoubleArrays(), 0, v13, v20, v19);
    v22 = v58;
    v23 = v13;
    v24 = v59;
LABEL_3:
    (*(v24 + 8))(v22, v23);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v26 = v21;
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  }

  v27 = v61;
  v28 = v60;
  v29 = v73;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
  if (swift_dynamicCastMetatype(v72, v30))
  {
    v31 = AnyColumn.assumingType<A>(_:)(v30, v30);
    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    Column.mapNonNil<A>(_:)(closure #2 in AnyColumn.convertedToDoubleArrays(), 0, v28, v32, v31);
    (*(v62 + 8))(v27, v28);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v26 = v29;
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  }

  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int64]);
  if (swift_dynamicCastMetatype(v72, v33))
  {
    v34 = v65;
    v35 = AnyColumn.assumingType<A>(_:)(v33, v33);
    v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v37 = v73;
    v38 = v64;
    Column.mapNonNil<A>(_:)(closure #3 in AnyColumn.convertedToDoubleArrays(), 0, v64, v36, v35);
    v39 = v34;
    v40 = v38;
    v41 = v63;
LABEL_10:
    (*(v41 + 8))(v39, v40);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v26 = v37;
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  }

  v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (swift_dynamicCastMetatype(v72, v42))
  {
    v37 = v73;
    v43 = v68;
    v44 = AnyColumn.assumingType<A>(_:)(v42, v42);
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v46 = v67;
    Column.mapNonNil<A>(_:)(closure #4 in AnyColumn.convertedToDoubleArrays(), 0, v67, v45, v44);
    v39 = v43;
    v40 = v46;
    v41 = v66;
    goto LABEL_10;
  }

  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v72, v48))
  {
    v49 = v71;
    v50 = AnyColumn.assumingType<A>(_:)(v48, v48);
    v51 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v21 = v73;
    v52 = v70;
    Column.mapNonNil<A>(_:)(closure #5 in AnyColumn.convertedToDoubleArrays(), 0, v70, v51, v50);
    v22 = v49;
    v23 = v52;
    v24 = v69;
    goto LABEL_3;
  }

  v53 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v72, v53))
  {
    v54 = v73;
    AnyColumn.assumingType<A>(_:)(v53, v53);
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v56 = v54;
    v57 = 0;
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
    v56 = v73;
    v57 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
}

void AnyColumn.convertedToStrings()()
{
  v61 = v0;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v55 = *(v56 - 1);
  v2 = *(v55 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v57 = &v45;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = &v45;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int>);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v59 = &v45;
  v14 = v1;
  v15 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v15, &type metadata for String))
  {
    AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    return;
  }

  v58 = v10;
  v16 = v62;
  v51 = v5;
  v60 = v14;
  if (swift_dynamicCastMetatype(v15, &type metadata for Int))
  {
    v17 = v59;
    v18 = AnyColumn.assumingType<A>(_:)(&type metadata for Int, &type metadata for Int);
    Column.mapNonNil<A>(_:)(specialized thunk for @escaping @callee_guaranteed (@unowned Int) -> (@owned String), 0, v9, &type metadata for String, v18);
    v19 = v17;
    v20 = v9;
    v21 = v58;
LABEL_9:
    (*(v21 + 8))(v19, v20);
    return;
  }

  if (swift_dynamicCastMetatype(v15, &type metadata for Float))
  {
    v22 = v54;
    v23 = AnyColumn.assumingType<A>(_:)(&type metadata for Float, &type metadata for Float);
    Column.mapNonNil<A>(_:)(closure #1 in AnyColumn.convertedToStrings(), 0, v16, &type metadata for String, v23);
    v19 = v22;
    v20 = v16;
    v21 = v51;
    goto LABEL_9;
  }

  if (swift_dynamicCastMetatype(v15, &type metadata for Double))
  {
    v24 = v57;
    v25 = AnyColumn.assumingType<A>(_:)(&type metadata for Double, &type metadata for Double);
    v26 = v56;
    Column.mapNonNil<A>(_:)(closure #2 in AnyColumn.convertedToStrings(), 0, v56, &type metadata for String, v25);
    v19 = v24;
    v20 = v26;
    v21 = v55;
    goto LABEL_9;
  }

  v57 = AnyColumn.name.getter();
  v58 = v27;
  v28 = type metadata accessor for AnyColumn(0);
  v29 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v30 = dispatch thunk of Collection.count.getter(v28, v29);
  if (v30)
  {
    v31 = v30;
    v53 = _swiftEmptyArrayStorage;
    v32 = 0;
    if (v30 > 0)
    {
      v32 = v30;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v62 = v53;
    v59 = v29;
    dispatch thunk of Collection.startIndex.getter(v28, v29);
    v54 = v31;
    if (v31 < 0)
    {
      BUG();
    }

    v56 = &type metadata for Any + 8;
    v55 = v28;
    v33 = v59;
    do
    {
      v34 = dispatch thunk of Collection.subscript.read(&v49, v52, v28, v33);
      outlined init with copy of Any?(v35, v48);
      v34(&v49, 0);
      outlined init with copy of Any?(v48, &v49);
      if (v50)
      {
        outlined init with take of Any(&v49, v46);
        outlined init with copy of Any(v46, v47);
        v36 = String.init<A>(describing:)(v47, v56);
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
      }

      else
      {
        v36 = 0;
        v38 = 0;
      }

      outlined destroy of Any?(v48);
      v39 = v62;
      v53 = v62;
      v40 = *(v62 + 16);
      if (*(v62 + 24) >> 1 <= v40)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v62 + 24) >= 2uLL, v40 + 1, 1);
        v39 = v53;
      }

      v39[2] = v40 + 1;
      v41 = 2 * v40;
      v39[v41 + 4] = v36;
      v62 = v39;
      v39[v41 + 5] = v38;
      v28 = v55;
      v33 = v59;
      dispatch thunk of Collection.formIndex(after:)(v52, v55, v59);
      v54 = (v54 - 1);
    }

    while (v54);
    v42 = v62;
  }

  else
  {
    v42 = _swiftEmptyArrayStorage;
  }

  *&v49 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String?]);
  v44 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String?] and conformance [A], &demangling cache variable for type metadata for [String?], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(v57, v58, &v49, &type metadata for String, v43, v44);
}

uint64_t AnyColumn.convertedToFloatArrays()()
{
  v65 = v0;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v63 = *(v66 - 8);
  v1 = *(v63 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v64 = v52;
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v60 = *(v61 - 8);
  v4 = *(v60 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v62 = v52;
  v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int64]>);
  v57 = *(v58 - 8);
  v7 = *(v57 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v59 = v52;
  v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v56 = *(v54 - 8);
  v10 = *(v56 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v55 = v52;
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int8]>);
  v53 = *(v13 - 8);
  v14 = *(v53 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = AnyColumn.wrappedElementType.getter();
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int8]);
  v67 = v17;
  if (swift_dynamicCastMetatype(v17, v18))
  {
    v19 = AnyColumn.assumingType<A>(_:)(v18, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v21 = v65;
    Column.mapNonNil<A>(_:)(closure #1 in AnyColumn.convertedToFloatArrays(), 0, v13, v20, v19);
    v22 = v52;
    v23 = v13;
    v24 = v53;
LABEL_3:
    (*(v24 + 8))(v22, v23);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v26 = v21;
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  }

  v27 = v55;
  v28 = v54;
  v29 = v65;
  v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
  if (swift_dynamicCastMetatype(v67, v30))
  {
    v31 = AnyColumn.assumingType<A>(_:)(v30, v30);
    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    Column.mapNonNil<A>(_:)(closure #2 in AnyColumn.convertedToFloatArrays(), 0, v28, v32, v31);
    (*(v56 + 8))(v27, v28);
    v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v26 = v29;
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v25);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int64]);
  v35 = v29;
  if (swift_dynamicCastMetatype(v67, v34))
  {
    v36 = v59;
    v37 = AnyColumn.assumingType<A>(_:)(v34, v34);
    v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v21 = v35;
    v39 = v58;
    Column.mapNonNil<A>(_:)(closure #3 in AnyColumn.convertedToFloatArrays(), 0, v58, v38, v37);
    v22 = v36;
    v23 = v39;
    v24 = v57;
    goto LABEL_3;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (swift_dynamicCastMetatype(v67, v40))
  {
    v21 = v29;
    v41 = v62;
    v42 = AnyColumn.assumingType<A>(_:)(v40, v40);
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v44 = v61;
    Column.mapNonNil<A>(_:)(closure #4 in AnyColumn.convertedToFloatArrays(), 0, v61, v43, v42);
    v22 = v41;
    v23 = v44;
    v24 = v60;
    goto LABEL_3;
  }

  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v67, v45))
  {
    AnyColumn.assumingType<A>(_:)(v45, v45);
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v47 = v29;
    v48 = 0;
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    if (swift_dynamicCastMetatype(v67, v49))
    {
      v50 = v64;
      v51 = AnyColumn.assumingType<A>(_:)(v49, v49);
      v21 = v35;
      Column.mapNonNil<A>(_:)(closure #5 in AnyColumn.convertedToFloatArrays(), 0, v66, v45, v51);
      v22 = v50;
      v23 = v66;
      v24 = v63;
      goto LABEL_3;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
    v47 = v29;
    v48 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v47, v48, 1, v46);
}

uint64_t Column<A>.parseAsJSONArrays()(uint64_t *a1, uint64_t a2)
{
  v30 = a2;
  v23 = v2;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Any]>);
  v28 = *(v22 - 8);
  v4 = *(v28 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v25 = &v21;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v24 = &v21;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v11 = __swift_instantiateConcreteTypeFromMangledName(a1);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
  v13 = v30;
  v30 = v12;
  result = Column.map<A>(_:)(v13, 0, v11);
  if (!v3)
  {
    v29 = Column.name.getter(v11);
    v27 = v15;
    v16 = v25;
    v26 = &v21;
    v17 = v22;
    (*(v28 + 16))(v25, &v21, v22);
    v18 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Any]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Any]>, &protocol conformance descriptor for Column<A>);
    v19 = v24;
    Column.init<A>(name:contents:)(v29, v27, v16, v30, v17, v18);
    Column.eraseToAnyColumn()(v17);
    v20 = *(v28 + 8);
    v20(v19, v17);
    return (v20)(v26, v17);
  }

  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@unowned Int) -> (@owned String)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  result = implicit closure #1 in AnyColumn.convertedToStrings()();
  *v2 = result;
  v2[1] = v5;
  return result;
}

uint64_t closure #1 in AnyColumn.convertedToStrings()(float *a1)
{
  v2 = v1;
  result = Float.description.getter(*a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t closure #2 in AnyColumn.convertedToStrings()(double *a1)
{
  v2 = v1;
  result = Double.description.getter(*a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t closure #1 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        result = v8;
        v6 = result;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #2 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #3 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledName(a4);
  result = Column.count.getter(v9);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v6 = *a1;
    for (i = 0; i != v5; ++i)
    {
      result = Column.subscript.getter(i, v9);
      v8 = NAN;
      if (!v11)
      {
        v8 = v10;
      }

      *(v6 + 8 * i) = v8;
    }
  }

  return result;
}

uint64_t closure #5 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #6 in AnyColumn.convertedToDoubles()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = 0x7FF8000000000000;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 8 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #1 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int8>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        result = v8;
        v6 = result;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #2 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Int32>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #3 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledName(a4);
  result = Column.count.getter(v9);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v5 = result;
    v6 = *a1;
    for (i = 0; i != v5; ++i)
    {
      result = Column.subscript.getter(i, v9);
      v8 = NAN;
      if (!v11)
      {
        v8 = v10;
      }

      *(v6 + 4 * i) = v8;
    }
  }

  return result;
}

uint64_t closure #5 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Float>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = 2143289344;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

uint64_t closure #6 in AnyColumn.convertedToFloats()(uint64_t *a1, uint64_t *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  result = Column.count.getter(v7);
  *a2 = result;
  if (result < 0)
  {
    BUG();
  }

  if (result)
  {
    v3 = result;
    v4 = *a1;
    for (i = 0; i != v3; ++i)
    {
      result = Column.subscript.getter(i, v7);
      v6 = NAN;
      if (!v9)
      {
        v6 = v8;
      }

      *(v4 + 4 * i) = v6;
    }
  }

  return result;
}

void *closure #1 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #2 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + 4 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #3 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v10 = *a1;
    v11 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v10;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 8 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v9 = *(v5 + 8 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        LODWORD(v7) = v9;
        v4 = v11;
        v5 = v10;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

{
  return closure #4 in AnyColumn.convertedToFloatArrays()(a1);
}

void *closure #5 in AnyColumn.convertedToFloatArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v9 = result;
    v3 = 0;
    v10 = *a1;
    v11 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v10;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 8 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v4 = v11;
        v5 = v10;
      }

      ++v3;
      v8 = v7;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6++) = v8;
    }

    while (v4 != v3);
    result = v9;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #1 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #2 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v11 = *(v5 + 4 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v7 = v11;
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

void *closure #3 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v10 = *a1;
    v11 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v10;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 8 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v9 = *(v5 + 8 * v3 + 32);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        LODWORD(v7) = v9;
        v4 = v11;
        v5 = v10;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

{
  return closure #4 in AnyColumn.convertedToDoubleArrays()(a1);
}

void *closure #5 in AnyColumn.convertedToDoubleArrays()(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v8 = result;
    v3 = 0;
    v9 = *a1;
    v10 = *(*a1 + 16);
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = v2;
    v5 = v9;
    v6 = _swiftEmptyArrayStorage[2];
    do
    {
      v7 = *(v5 + 4 * v3 + 32);
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v6 + 1, 1);
        v4 = v10;
        v5 = v9;
      }

      ++v3;
      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[v6++ + 4] = v7;
    }

    while (v4 != v3);
    result = v8;
  }

  *result = _swiftEmptyArrayStorage;
  return result;
}

NSURL *closure #1 in Column<A>.parseAsJSONArrays()(uint64_t *a1)
{
  v21 = v2;
  v22 = v1;
  v3 = type metadata accessor for String.Encoding(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = a1[1];
  if (v7 && (v8 = *a1, v23 = *(v3 - 8), static String.Encoding.utf8.getter(), v9 = String.data(using:allowLossyConversion:)(&v21, 0, v8, v7), v11 = v10, (*(v23 + 8))(&v21, v3), HIBYTE(v11) < 0xFF))
  {
    v13 = objc_opt_self(NSJSONSerialization);
    v23 = v9;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24[0] = 0;
    v15 = [v13 JSONObjectWithData:isa options:0 error:v24];
    v16 = v15;

    v17 = v24[0];
    if (v16)
    {
      v24[0];
      _bridgeAnyObjectToAny(_:)(v16);
      outlined consume of Data?(v23, v11);
      swift_unknownObjectRelease(v16);
      v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
      v19 = v22;
      if (!swift_dynamicCast(v22, v24, &type metadata for Any + 8, v18, 6))
      {
        *v19 = 0;
      }
    }

    else
    {
      v20 = v24[0];
      _convertNSErrorToError(_:)(v17);

      swift_willThrow(v20, "JSONObjectWithData:options:error:");
      outlined consume of Data?(v23, v11);
    }
  }

  else
  {
    *v22 = 0;
  }

  return __stack_chk_guard;
}

{
  v2 = a1[1];
  if (HIBYTE(v2) < 0xFF)
  {
    v12 = v1;
    v3 = *a1;
    v4 = objc_opt_self(NSJSONSerialization);
    outlined copy of Data._Representation(v3, v2);
    v13 = v3;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14[0] = 0;
    v6 = [v4 JSONObjectWithData:isa options:0 error:v14];
    v7 = v6;

    v8 = v14[0];
    if (v7)
    {
      v14[0];
      _bridgeAnyObjectToAny(_:)(v7);
      outlined consume of Data?(v13, v2);
      swift_unknownObjectRelease(v7);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Any]);
      if (!swift_dynamicCast(v12, v14, &type metadata for Any + 8, v9, 6))
      {
        *v12 = 0;
      }
    }

    else
    {
      v10 = v14[0];
      _convertNSErrorToError(_:)(v8);

      swift_willThrow(v10, "JSONObjectWithData:options:error:");
      outlined consume of Data?(v13, v2);
    }
  }

  else
  {
    *v1 = 0;
  }

  return __stack_chk_guard;
}

void *_sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5Tm(uint64_t a1, void (*a2)(void *, uint64_t *), uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    BUG();
  }

  v5 = a2;
  if (a1)
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, a4);
    v5 = a2;
    v7 = v6;
    *(v6 + 16) = a1;
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
  }

  v9 = 0;
  v11 = (v7 + 4);
  v10[0] = v7 + 4;
  v10[1] = a1;
  v5(v10, &v9);
  if (v4)
  {
    if (v9 > a1)
    {
      BUG();
    }

    if (!v10[0])
    {
      BUG();
    }

    if (v11 != v10[0])
    {
      BUG();
    }

    v7[2] = v9;
    v7, &v9;
  }

  else
  {
    if (v9 > a1)
    {
      BUG();
    }

    if (!v10[0])
    {
      BUG();
    }

    if (v11 != v10[0])
    {
      BUG();
    }

    v7[2] = v9;
  }

  return v7;
}

unint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  result = HIBYTE(a2);
  if (HIBYTE(a2) <= 0xFE)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return result;
}

uint64_t MLObjectDetector.write(to:metadata:)(uint64_t a1, const void *a2)
{
  qmemcpy(v5, a2, 0x48uLL);
  v3 = *v2;
  return _Model.write(to:metadata:)(a1, v5);
}

uint64_t MLObjectDetector.write(toFile:metadata:)(Swift::String string, const void *a2)
{
  v12[9] = v2;
  v14 = v3;
  v13 = a2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v15 = &v11;
  result = static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(string, 0x65447463656A624FLL, 0xEE00726F74636574);
  if (!v2)
  {
    v10 = *v14;
    qmemcpy(v12, v13, 0x48uLL);
    _Model.write(to:metadata:)(v15, v12);
    return (*(v5 + 8))(v15, v4);
  }

  return result;
}

_BYTE *assignWithCopy for MLLinearRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLinearRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLLinearRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLinearRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLLinearRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLinearRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLLinearRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_3473E0;
  v5[1] = &unk_3473F8;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLLinearRegressor.ModelParameters.ValidationData.asTable()(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLLinearRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLLinearRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

uint64_t MLFewShotSoundClassifier.ModelParameters.lossParameters.getter()
{
  v2 = *(v1 + 32);
  *result = *(v1 + 24);
  *(result + 8) = v2;
  return result;
}

float *MLFewShotSoundClassifier.ModelParameters.LossParameters.init(gamma:epsilon:alpha:)(float a1, float a2, float a3)
{
  *result = a1;
  result[1] = a2;
  result[2] = a3;
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.learningRate.modify(uint64_t a1))(_DWORD *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 8);
  return MLFewShotSoundClassifier.ModelParameters.learningRate.modify;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.learningRate.modify(_DWORD *a1)
{
  result = *a1;
  *(*a1 + 8) = a1[2];
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.batchSize.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 16);
  return MLFewShotSoundClassifier.ModelParameters.batchSize.modify;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.batchSize.modify(uint64_t *a1)
{
  result = *a1;
  *(a1[1] + 16) = *a1;
  return result;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.lossParamters.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = v2;
  return MLFewShotSoundClassifier.ModelParameters.lossParamters.modify;
}

uint64_t key path getter for MLFewShotSoundClassifier.ModelParameters.lossParamters : MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  result = a4();
  *v5 = v7;
  *(v5 + 8) = v8;
  return result;
}

uint64_t key path setter for MLFewShotSoundClassifier.ModelParameters.lossParamters : MLFewShotSoundClassifier.ModelParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v7 = *(a1 + 2);
  return a5();
}

void MLFewShotSoundClassifier.ModelParameters.lossParameters.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v2;
}

uint64_t (*MLFewShotSoundClassifier.ModelParameters.lossParameters.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v2 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 16) = v2;
  return MLFewShotSoundClassifier.ModelParameters.lossParameters.modify;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.lossParameters.modify(uint64_t *a1)
{
  result = *a1;
  v2 = *(a1 + 4);
  *(result + 24) = a1[1];
  *(result + 32) = v2;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.getter()
{
  v2 = v0;
  v3 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 32);
  v4 = type metadata accessor for URL(0);
  return (*(*(v4 - 8) + 16))(v2, v3, v4);
}

uint64_t type metadata accessor for MLFewShotSoundClassifier.ModelParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLFewShotSoundClassifier.ModelParameters;
  if (!type metadata singleton initialization cache for MLFewShotSoundClassifier.ModelParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLFewShotSoundClassifier.ModelParameters);
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.hallucinator.setter(uint64_t a1)
{
  v2 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0) + 32);
  v3 = type metadata accessor for URL(0);
  return (*(*(v3 - 8) + 40))(v2, a1, v3);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.pretrainedModel.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  return outlined init with copy of URL?(v1 + *(v3 + 36), v2);
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:batchSize:learningRate:lossParameters:hallucinator:pretrainedModel:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v8 = v6;
  v16 = *(a3 + 2);
  *(v6 + 8) = 1008981770;
  *(v6 + 16) = 128;
  *(v6 + 24) = 0x33D6BF95461C4000;
  *(v6 + 32) = 0x40000000;
  v9 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v10 = v8 + *(v9 + 36);
  v11 = type metadata accessor for URL(0);
  v15 = *a3;
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  *v8 = a1;
  (*(*(v11 - 8) + 32))(v8 + *(v9 + 32), a4, v11);
  outlined assign with take of URL?(a5, v10);
  result = a2;
  *(v8 + 16) = a2;
  *(v8 + 8) = a6;
  *(v8 + 24) = v15;
  *(v8 + 32) = v16;
  return result;
}

uint64_t MLFewShotSoundClassifier.ModelParameters.init(maxIterations:hallucinator:pretrainedModel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0x33D6BF95461C4000;
  *(v3 + 32) = 0x40000000;
  v5 = type metadata accessor for MLFewShotSoundClassifier.ModelParameters(0);
  v6 = v4 + *(v5 + 36);
  v7 = type metadata accessor for URL(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  *v4 = a1;
  (*(*(v7 - 8) + 32))(v4 + *(v5 + 32), a2, v7);
  outlined assign with take of URL?(a3, v6);
  *(v4 + 8) = 1008981770;
  *(v4 + 16) = 128;
  *(v4 + 24) = 0x33D6BF95461C4000;
  result = 0x40000000;
  *(v4 + 32) = 0x40000000;
  return result;
}

uint64_t sub_254C54()
{
  v1 = v0;
  result = MLFewShotSoundClassifier.ModelParameters.batchSize.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = (v15 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 2);
    *(a1 + 16) = a2[2];
    *(a1 + 24) = a2[3];
    *(a1 + 32) = *(a2 + 8);
    v7 = *(a3 + 32);
    v17 = a1 + v7;
    v8 = type metadata accessor for URL(0);
    v9 = a2 + v7;
    v10 = *(*(v8 - 8) + 16);
    v10(v17, v9, v8);
    v11 = *(a3 + 36);
    v12 = (a1 + v11);
    v13 = a2 + v11;
    if (__swift_getEnumTagSinglePayload(v13, 1, v8))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
      memcpy(v12, v13, *(*(v14 - 8) + 64));
    }

    else
    {
      v10(v12, v13, v8);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v8);
    }
  }

  return v4;
}

uint64_t destroy for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(a2 + 32);
  v4 = type metadata accessor for URL(0);
  v5 = v3;
  v6 = *(*(v4 - 8) + 8);
  v6(v5, v4);
  v7 = a1 + *(a2 + 36);
  result = __swift_getEnumTagSinglePayload(v7, 1, v4);
  if (!result)
  {
    return v6(v7, v4);
  }

  return result;
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v14 = (a1 + v5);
  v6 = type metadata accessor for URL(0);
  v7 = (a2 + v5);
  v8 = *(*(v6 - 8) + 16);
  v8(v14, v7, v6);
  v9 = *(a3 + 36);
  v10 = (a1 + v9);
  v11 = (v9 + a2);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v8(v10, v11, v6);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a3 + 32);
  v5 = type metadata accessor for URL(0);
  v15 = *(v5 - 8);
  v14 = *(v15 + 24);
  v14((a1 + v4), (a2 + v4), v5);
  v6 = *(a3 + 36);
  v7 = (v6 + a2);
  __dst = (a1 + v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v6, 1, v5);
  v9 = __swift_getEnumTagSinglePayload(v7, 1, v5);
  if (EnumTagSinglePayload)
  {
    if (!v9)
    {
      (*(v15 + 16))(__dst, v7, v5);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v5);
      return a1;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  else
  {
    if (!v9)
    {
      v14(__dst, v7, v5);
      return a1;
    }

    (*(v15 + 8))(__dst, v5, v10, v14);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  memcpy(v12, v7, v11);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v14 = (a1 + v5);
  v6 = type metadata accessor for URL(0);
  v7 = (a2 + v5);
  v8 = *(*(v6 - 8) + 32);
  v8(v14, v7, v6);
  v9 = *(a3 + 36);
  v10 = (a1 + v9);
  v11 = (v9 + a2);
  if (__swift_getEnumTagSinglePayload(v11, 1, v6))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    memcpy(v10, v11, *(*(v12 - 8) + 64));
  }

  else
  {
    v8(v10, v11, v6);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  }

  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.ModelParameters(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a3 + 32);
  v6 = type metadata accessor for URL(0);
  v15 = *(v6 - 8);
  v14 = *(v15 + 40);
  v14((a1 + v5), (a2 + v5), v6);
  v7 = *(v3 + 36);
  v8 = (v7 + a2);
  __dst = (a1 + v7);
  LODWORD(v3) = __swift_getEnumTagSinglePayload(a1 + v7, 1, v6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v6);
  if (v3)
  {
    if (!EnumTagSinglePayload)
    {
      (*(v15 + 32))(__dst, v8, v6);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v6);
      return a1;
    }

    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  else
  {
    if (!EnumTagSinglePayload)
    {
      v14(__dst, v8, v6);
      return a1;
    }

    (*(v15 + 8))(__dst, v6, v10, v14);
    v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
    v12 = __dst;
  }

  memcpy(v12, v8, v11);
  return a1;
}

uint64_t sub_255299(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  if (*(*(v4 - 8) + 84) == a2)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    v5 = *(a3 + 36);
  }

  return __swift_getEnumTagSinglePayload(v5 + a1, a2, v4);
}

uint64_t sub_2552FC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for URL(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    v7 = *(a4 + 32);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?);
    v7 = *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v7 + a1, a2, a2, v6);
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.ModelParameters(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.Int64 + 64;
  v4[1] = &value witness table for Builtin.Int32 + 64;
  v4[2] = &value witness table for Builtin.Int64 + 64;
  v4[3] = &unk_347478;
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v4[4] = *(result - 8) + 64;
    result = type metadata accessor for URL?(319);
    if (v3 <= 0x3F)
    {
      v4[5] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLFewShotSoundClassifier.ModelParameters.LossParameters(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 12))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for MLFewShotSoundClassifier.ModelParameters.LossParameters(uint64_t a1, int a2, int a3)
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
    *(a1 + 12) = v3;
  }
}

uint64_t MLActivityClassifier.Model.writeMLModel(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v22 = v2;
  v17 = v3;
  v16 = a2;
  v19 = type metadata accessor for Model(0);
  v18 = *(v19 - 8);
  v4 = *(v18 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v21 = &v15;
  v7 = type metadata accessor for URL(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = v22;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(a1, 0xD000000000000012, ("Classifier.Classifier.swift" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v12)
  {
    v22 = &v15;
    v20 = v7;
    MLActivityClassifier.Model.asModelSpecification()();
    MLActivityClassifier.Model.addMetadata(to:_:)(v21, v16);
    Model.write(to:)(v22);
    v14 = v20;
    (*(v18 + 8))(v21, v19);
    return (*(v8 + 8))(v22, v14);
  }

  return result;
}

void *MLActivityClassifier.Model.asModelSpecification()()
{
  v80 = v1;
  v78 = v0;
  v59 = type metadata accessor for ModelKind(0);
  v58 = *(v59 - 8);
  v3 = *(v58 + 8);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v60 = &v56;
  v68 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v81 = *(v68 - 8);
  v6 = *(v81 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v70 = &v56;
  v61 = type metadata accessor for FeatureType(0);
  v75 = *(v61 - 8);
  v9 = *(v75 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v66 = &v56;
  v65 = type metadata accessor for FeatureDescription(0);
  v12 = *(v65 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v71 = &v56;
  v72 = type metadata accessor for NeuralNetworkClassifier.ClassLabels(0);
  v73 = *(v72 - 8);
  v16 = *(v73 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v74 = &v56;
  v19 = type metadata accessor for NeuralNetworkClassifier(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v69 = &v56;
  v79 = v2;
  v24 = v80;
  result = MLActivityClassifier.Model.asModelLayers()();
  if (!v24)
  {
    v63 = v19;
    v62 = v20;
    v67 = v12;
    NeuralNetworkClassifier.init(layers:preprocessors:)(result, _swiftEmptyArrayStorage);
    v26 = type metadata accessor for MLActivityClassifier.Model(0);
    v27 = *(v26 + 60);
    v28 = v26;
    v76 = v26;
    v80 = 0;
    v29 = *&v79[v27];
    v30 = v74;
    *v74 = v29;
    (*(v73 + 104))(v30, enum case for NeuralNetworkClassifier.ClassLabels.string(_:), v72);
    v29;
    NeuralNetworkClassifier.classLabels.setter(v30);
    Model.init()();
    Model.specificationVersion.setter(4);
    v31 = v79;
    v32 = *&v79[*(v28 + 64) + 40];
    v33 = alloca(24);
    v34 = alloca(32);
    v58 = v79;
    v32;
    v35 = v80;
    v77 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg5(partial apply for closure #1 in MLActivityClassifier.Model.asModelSpecification(), &v56, v32);
    v80 = v35;
    v32;
    v36 = v81;
    v37 = *(v81 + 104);
    LODWORD(v72) = enum case for FeatureType.ShapedArrayParameters.DataType.double(_:);
    v74 = v37;
    (v37)(v70, enum case for FeatureType.ShapedArrayParameters.DataType.double(_:), v68);
    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v38 = swift_allocObject(v73, 40, 7);
    v38[2] = 1;
    v38[3] = 2;
    v39 = *&v31[*(v76 + 32)];
    if (v39 + 0x4000000000000000 < 0)
    {
      BUG();
    }

    v76 = 2 * v39;
    v38[4] = 2 * v39;
    v40 = v66;
    v41 = v70;
    static FeatureType.shapedArray(dataType:shape:optional:)(v70, v38, 0);
    v38;
    v79 = *(v36 + 8);
    (v79)(v41, v68);
    FeatureDescription.init(name:type:description:)(0x6E496574617473, 0xE700000000000000, v40, 0xD000000000000010, "o recognize motions." + 0x8000000000000000);
    v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
    v42 = v67;
    v64 = *(v67 + 72);
    v43 = *(v67 + 80);
    v44 = (v43 + 32) & ~*(v67 + 80);
    v43 |= 7uLL;
    v45 = swift_allocObject(v81, v44 + v64, v43);
    *(v45 + 16) = 1;
    *(v45 + 24) = 2;
    (*(v42 + 16))(v44 + v45, v71, v65);
    v57 = v77;
    specialized Array.append<A>(contentsOf:)(v45);
    Model.inputs.setter(v57);
    v46 = v64;
    v47 = swift_allocObject(v81, v44 + 3 * v64, v43);
    v81 = v47;
    *(v47 + 16) = 3;
    *(v47 + 24) = 6;
    v48 = v47 + v44;
    v77 = "labelProbabilityRaw" + 0x8000000000000000;
    v49 = v66;
    static FeatureType.dictionaryWithStringKeys(optional:)(0);
    FeatureDescription.init(name:type:description:)(0xD000000000000010, "labelProbabilityRaw" + 0x8000000000000000, v49, 0xD000000000000021, "LSTM state input" + 0x8000000000000000);
    FeatureType.StringParameters.init(optional:)(0);
    (*(v75 + 104))(v49, enum case for FeatureType.string(_:), v61);
    FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, v49, 0xD00000000000001DLL, "ion probabilities" + 0x8000000000000000);
    v75 = v48 + 2 * v46;
    v50 = v70;
    v51 = v68;
    (v74)(v70, v72, v68);
    v52 = swift_allocObject(v73, 40, 7);
    v52[2] = 1;
    v52[3] = 2;
    v52[4] = v76;
    static FeatureType.shapedArray(dataType:shape:optional:)(v50, v52, 0);
    v52;
    (v79)(v50, v51);
    FeatureDescription.init(name:type:description:)(0x74754F6574617473, 0xE800000000000000, v49, 0xD000000000000011, "Class label of top prediction" + 0x8000000000000000);
    Model.outputs.setter(v81);
    Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
    Model.predictedProbabilitiesName.setter(0xD000000000000010, v77);
    v53 = v60;
    v54 = v63;
    v55 = v62;
    (*(v62 + 16))(v60, v69, v63);
    (*(v58 + 13))(v53, enum case for ModelKind.neuralNetworkClassifier(_:), v59);
    Model.kind.setter(v53);
    (*(v67 + 8))(v71, v65);
    return (*(v55 + 8))(v69, v54);
  }

  return result;
}

uint64_t MLActivityClassifier.Model.addMetadata(to:_:)(uint64_t (*a1)(void *, void), uint64_t *a2)
{
  object = v2;
  v67 = a1;
  v3 = *a2;
  v4 = a2[1];
  v64 = a2[2];
  v5 = a2[3];
  v61 = a2[4];
  v69 = a2[5];
  v66 = a2[6];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = a2[7];
  v60 = a2[8];
  if (v6)
  {
    v4;
  }

  else
  {
    v8 = NSFullUserName();
    v62 = v8;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(v62);
    v4 = v9;
  }

  Model.author.setter(v3, v4);
  v10 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v10 = v64 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v5;
    v11 = v64;
  }

  else
  {
    v5 = ("ActivityClassifier" + 0x8000000000000000);
    v11 = 0xD000000000000044;
  }

  Model.modelDescription.setter(v11, v5);
  v12 = HIBYTE(v7) & 0xF;
  v13 = v66;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v12 = v66 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v7;
  }

  else
  {
    v7 = 0xE300000000000000;
    v13 = 3157553;
  }

  Model.versionString.setter(v13, v7);
  if (v69)
  {
    v69;
    Model.license.setter(v61, v69);
  }

  v64 = *(type metadata accessor for MLActivityClassifier.Model(0) + 64);
  v63[0] = *&object[v64 + 40];
  v63[0];
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v16 = BidirectionalCollection<>.joined(separator:)(44, 0xE100000000000000, v14, v15);
  v18 = v17;
  v63[0];
  v69 = Model.metadata.modify(v63);
  v20 = v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v19);
  v68 = *v20;
  *v20 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v18, 0x7365727574616566, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  *v20 = v68;
  v69(v63, 0);
  v22 = object;
  v23 = v64;
  v63[0] = *&object[v64];
  v24 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v66 = v25;
  v69 = Model.metadata.modify(v63);
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native(*v26);
  v68 = *v27;
  *v27 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v66, 0x726574695F78616DLL, 0xEE00736E6F697461, v28);
  *v27 = v68;
  v69(v63, 0);
  v63[0] = *&v22[v23 + 32];
  v66 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v30 = v29;
  v69 = Model.metadata.modify(v63);
  v32 = v31;
  v33 = swift_isUniquelyReferenced_nonNull_native(*v31);
  v68 = *v32;
  *v32 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v30, 0xD000000000000011, ("annotation_scale" + 0x8000000000000000), v33);
  *v32 = v68;
  v69(v63, 0);
  v34 = v64;
  v66 = *&object[v64 + 64];
  v35 = *&object[v64 + 72];
  v35;
  v69 = Model.metadata.modify(v63);
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native(*v36);
  v68 = *v37;
  *v37 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v35, 0x5F6E6F6973736573, 0xEA00000000006469, v38);
  *v37 = v68;
  v69(v63, 0);
  v69 = *&object[v34 + 48];
  v39 = *&object[v34 + 56];
  v39;
  v40 = Model.metadata.modify(v63);
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native(*v41);
  v68 = *v42;
  *v42 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v69, v39, 0x746567726174, 0xE600000000000000, v43);
  *v42 = v68;
  v40(v63, 0);
  v44 = Model.metadata.modify(v63);
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native(*v45);
  v68 = *v46;
  *v46 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0xD000000000000013, ("ot found in Configuration" + 0x8000000000000000), 1701869940, 0xE400000000000000, v47);
  *v46 = v68;
  v44(v63, 0);
  v48 = Model.metadata.modify(v63);
  v50 = v49;
  v51 = swift_isUniquelyReferenced_nonNull_native(*v49);
  v68 = *v50;
  *v50 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(50, 0xE100000000000000, 0x6E6F6973726576, 0xE700000000000000, v51);
  *v50 = v68;
  v48(v63, 0);
  if (v60)
  {
    v60;
    v52 = Model.metadata.modify(v63);
    specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v60, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v53);
    v52(v63, 0);
  }

  v54 = getOSVersion()();
  countAndFlagsBits = v54._countAndFlagsBits;
  object = v54._object;
  v67 = Model.metadata.modify(v63);
  v57 = v56;
  v58 = swift_isUniquelyReferenced_nonNull_native(*v56);
  v68 = *v57;
  *v57 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(countAndFlagsBits, object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), v58);
  *v57 = v68;
  return v67(v63, 0);
}

void *MLActivityClassifier.Model.asModelLayers()()
{
  v74 = v0;
  v1 = *(*(type metadata accessor for NeuralNetwork.Layer.Kind(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v50 = &v49;
  v64 = type metadata accessor for NeuralNetwork.Layer.ReshapeParameters.ChannelLayout(0);
  v65 = *(v64 - 8);
  v4 = *(v65 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v51 = &v49;
  v60 = type metadata accessor for NeuralNetwork.Layer(0);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v62 = &v49;
  v72 = type metadata accessor for NeuralNetwork.Layer.SliceParameters.Axis(0);
  v73 = *(v72 - 8);
  v11 = *(v73 + 8);
  v12 = alloca(v11);
  v13 = alloca(v11);
  object = &v49;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>);
  v15 = *(v7 + 72);
  v61 = v7;
  v16 = *(v7 + 80);
  v17 = (v16 + 32) & ~*(v7 + 80);
  v71 = v15;
  countAndFlagsBits = v14;
  v52 = v16 | 7;
  v18 = swift_allocObject(v14, v17 + 2 * v15, v16 | 7);
  *(v18 + 16) = 2;
  *(v18 + 24) = 4;
  v69 = v17;
  v53 = v18;
  v19 = v18 + v17;
  v68 = type metadata accessor for MLActivityClassifier.Model(0);
  v20 = v68[8];
  v21 = *(v74 + v20);
  v22 = *(v73 + 13);
  v23 = object;
  v66 = enum case for NeuralNetwork.Layer.SliceParameters.Axis.channel(_:);
  v55 = v22;
  v22(object, enum case for NeuralNetwork.Layer.SliceParameters.Axis.channel(_:), v72);
  v54 = v19;
  static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)(0x6E496E6564646968, 0xE800000000000000, 0x6E496574617473, 0xE700000000000000, 0x6E496E6564646968, 0xE800000000000000, 0, v21, 1, v23);
  v24 = *(v73 + 1);
  v24(v23, v72);
  if (v21 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v73 = (2 * v71);
  v57 = v24;
  v25 = v74;
  v56 = v74 + v20;
  v58 = v21;
  v59 = 2 * v21;
  v26 = object;
  v27 = v72;
  v55(object, v66, v72);
  static NeuralNetwork.Layer.slice(name:inputName:outputName:startIndex:endIndex:stride:axis:)(0x6E496C6C6563, 0xE600000000000000, 0x6E496574617473, 0xE700000000000000, 0x6E496C6C6563, 0xE600000000000000, v58, v59, 1, v26);
  v57(v26, v27);
  v28 = v53;
  v63 = v53;
  v29 = v68[16];
  v30 = *(v25 + v29 + 40);
  if (*(v30 + 16) >= 2uLL)
  {
    v30;
    v31 = v62;
    MLActivityClassifier.Model.buildFeaturesLayer(_:name:)(v30, 0x7365727574616566, 0xE800000000000000);
    v30;
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v28);
    v32[2] = 3;
    (*(v61 + 32))(&v73[v69 + v32], v31, v60);
    v63 = v32;
  }

  v33 = v69;
  v34 = swift_allocObject(countAndFlagsBits, v69 + 10 * v71, v52);
  v72 = v34;
  *(v34 + 16) = 10;
  *(v34 + 24) = 20;
  v35 = v34 + v33;
  v36 = MLActivityClassifier.Model.featuresName(_:whenMultiple:)(v30, __PAIR128__(0xE800000000000000, 0x7365727574616566));
  countAndFlagsBits = v36._countAndFlagsBits;
  object = v36._object;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v38 = swift_allocObject(v37, 64, 7);
  v38[2] = 4;
  v38[3] = 8;
  v38[4] = 1;
  v38[5] = *(v30 + 16);
  v38[6] = 1;
  v38[7] = *(v74 + v29 + 32);
  v39 = v51;
  (*(v65 + 104))(v51, enum case for NeuralNetwork.Layer.ReshapeParameters.ChannelLayout.channelFirst(_:), v64);
  v40 = object;
  static NeuralNetwork.Layer.reshape(name:inputName:outputName:targetShape:targetChannelLayout:)(0x65706168736572, 0xE700000000000000, countAndFlagsBits, object, 0x65706168736572, 0xE700000000000000, v38, v39);
  v40;
  v38;
  (*(v65 + 8))(v39, v64);
  v41 = v74 + v68[5];
  Conv2D.asModelLayer(name:inputName:inputSize:)(1986948963, 0xE400000000000000, 0x65706168736572, 0xE700000000000000);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x31756C6572, 0xE500000000000000, 1986948963, 0xE400000000000000, 0x31756C6572, 0xE500000000000000);
  MLActivityClassifier.LSTMBlock.asModelLayer(name:inputNames:outputNames:)(1836348268, 0xE400000000000000, &outlined read-only object #0 of MLActivityClassifier.Model.asModelLayers(), &outlined read-only object #1 of MLActivityClassifier.Model.asModelLayers());
  v42 = v50;
  static NeuralNetwork.Layer.Kind.concatenate(alongSequenceAxis:)(0);
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(0x74754F6574617473, 0xE800000000000000, &outlined read-only object #2 of MLActivityClassifier.Model.asModelLayers(), &outlined read-only object #3 of MLActivityClassifier.Model.asModelLayers(), v42);
  v69 = v35;
  v43 = v68;
  v44 = v74;
  v45 = v74 + v68[9];
  Conv2D.asModelLayer(name:inputName:inputSize:)(0x3065736E6564, 0xE600000000000000, 1836348268, 0xE400000000000000);
  v46 = v44 + v43[10];
  BatchNorm.asModelLayer(name:inputName:)(28258, 0xE200000000000000, 0x3065736E6564, 0xE600000000000000);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x36756C6572, 0xE500000000000000, 28258, 0xE200000000000000, 0x36756C6572, 0xE500000000000000);
  v47 = v74 + v68[13];
  Conv2D.asModelLayer(name:inputName:inputSize:)(0x3165736E6564, 0xE600000000000000, 0x36756C6572, 0xE500000000000000);
  static NeuralNetwork.Layer.softmax(name:inputName:outputName:)(0xD000000000000010, "labelProbabilityRaw" + 0x8000000000000000, 0x3165736E6564, 0xE600000000000000, 0xD000000000000010, "labelProbabilityRaw" + 0x8000000000000000);
  specialized Array.append<A>(contentsOf:)(v72);
  return v63;
}

uint64_t closure #1 in MLActivityClassifier.Model.asModelSpecification()(uint64_t *a1, uint64_t a2)
{
  v22 = a2;
  v21 = v2;
  v3 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v4 = *(v3 - 8);
  v24 = v3;
  v5 = *(v4 + 64);
  v6 = v4;
  v7 = alloca(v5);
  v8 = alloca(v5);
  v9 = *(*(type metadata accessor for FeatureType(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v25 = &v19;
  v23 = *a1;
  v12 = a1[1];
  (*(v6 + 104))(&v19, enum case for FeatureType.ShapedArrayParameters.DataType.double(_:), v3);
  v13 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v15 = swift_allocObject(v14, 40, 7);
  v15[2] = 1;
  v15[3] = 2;
  v15[4] = *(v22 + *(type metadata accessor for MLActivityClassifier.Model(0) + 64) + 32);
  v12;
  static FeatureType.shapedArray(dataType:shape:optional:)(&v19, v15, 0);
  v15;
  (*(v13 + 8))(&v19, v24);
  v16 = v23;
  v19 = v23;
  v20 = v12;
  v12;
  v17._countAndFlagsBits = 0x20776F646E697720;
  v17._object = 0xED00007475706E69;
  String.append(_:)(v17);
  return FeatureDescription.init(name:type:description:)(v16, v12, v25, v19, v20);
}

uint64_t MLActivityClassifier.Model.buildFeaturesLayer(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[0] = v3;
  v5 = *(*(type metadata accessor for NeuralNetwork.Layer.Kind(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v9 = swift_allocObject(v8, 48, 7);
  v9[2] = 1;
  v9[3] = 2;
  v9[4] = a2;
  v9[5] = a3;
  swift_bridgeObjectRetain_n(a3, 2);
  a1;
  static NeuralNetwork.Layer.Kind.concatenate(alongSequenceAxis:)(0);
  return NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(a2, a3, a1, v9, v11);
}

Swift::String __swiftcall MLActivityClassifier.Model.featuresName(_:whenMultiple:)(Swift::OpaquePointer _, Swift::String whenMultiple)
{
  object = whenMultiple._object;
  countAndFlagsBits = whenMultiple._countAndFlagsBits;
  if (*(_._rawValue + 2) == 1)
  {
    countAndFlagsBits = *(_._rawValue + 4);
    object = *(_._rawValue + 5);
  }

  object;
  result._countAndFlagsBits = countAndFlagsBits;
  result._object = object;
  return result;
}

uint64_t Conv2D.asModelLayer(name:inputName:inputSize:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v67 = a3;
  v68 = a2;
  v69 = a1;
  v79 = v4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v63 = &v59;
  v81 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v82 = *(v81 - 8);
  v9 = *(v82 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v62 = &v59;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v70 = &v59;
  v64 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v80 = *(v64 - 8);
  v14 = *(v80 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v65 = &v59;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v74 = &v59;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>);
  v73 = *(v72 - 8);
  v20 = *(v73 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v85 = &v59;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v83 = &v59;
  v84 = type metadata accessor for TensorShape(0);
  v77 = *(v84 - 8);
  v25 = *(v77 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = type metadata accessor for Tensor(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v78 = v5;
  v75 = Conv2D.filterCount.getter();
  Conv2D.weight.getter();
  Tensor.shape.getter(0, a2, v33);
  v71 = v28;
  (*(v29 + 8))(&v59, v28);
  v76 = TensorShape.subscript.getter(1);
  (*(v77 + 8))(&v59, v84);
  v84 = Conv2D.groupCount.getter();
  v60 = Conv2D.kernelSize.getter();
  v61 = v34;
  NeuralNetwork.Extent.init(height:width:)(&v60, &v61, &type metadata for Int, &protocol witness table for Int);
  v60 = Conv2D.stride.getter();
  v61 = v35;
  NeuralNetwork.Extent.init(height:width:)(&v60, &v61, &type metadata for Int, &protocol witness table for Int);
  v36 = Conv2D.padding.getter();
  v37 = Conv2D.padding.getter();
  Conv2D.padding.getter();
  v39 = v38;
  Conv2D.padding.getter();
  v40 = v74;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(v36, v37, v39, v41);
  v42 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v42);
  v43 = v85;
  v44 = v83;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(v69, v68, v67, v66, v69, v68, v75, v76, v84, v83, v85, v40);
  outlined destroy of NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?(v40, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v45 = *(v73 + 8);
  v46 = v72;
  v45(v43, v72);
  v45(v44, v46);
  v47 = v70;
  NeuralNetwork.Layer.kind.getter();
  v48 = v81;
  v49 = v82;
  LODWORD(v85) = (*(v82 + 88))(v47);
  if (v85 != enum case for NeuralNetwork.Layer.Kind.convolution(_:))
  {
    (*(v49 + 8))(v47, v48);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ALL, "ModelExport.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier+MLModelExport.swift", 49, 2, 200, 0);
    BUG();
  }

  (*(v49 + 96))(v47, v48);
  v50 = v65;
  v51 = v47;
  v52 = v64;
  (*(v80 + 32))(v65, v51, v64);
  v53 = v63;
  v54 = v78;
  Conv2D.bias.getter();
  v55 = __swift_getEnumTagSinglePayload(v53, 1, v71) != 1;
  outlined destroy of NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?(v53, &demangling cache variable for type metadata for Tensor?);
  NeuralNetwork.Layer.loadConv2DFromNeuralNetworks(_:useBias:into:)(v54, v55, v50);
  v56 = v62;
  v57 = v80;
  (*(v80 + 16))(v62, v50, v52);
  (*(v82 + 104))(v56, v85, v81);
  NeuralNetwork.Layer.kind.setter(v56);
  return (*(v57 + 8))(v50, v52);
}

uint64_t MLActivityClassifier.LSTMBlock.asModelLayer(name:inputNames:outputNames:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = v5;
  v95 = a4;
  v96 = a3;
  v97 = a2;
  v98 = a1;
  v99 = v4;
  v6 = *(*(type metadata accessor for NeuralNetwork.WeightParameters(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v110 = v94;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v121 = v94;
  v118 = type metadata accessor for Tensor(0);
  v113 = *(v118 - 8);
  v12 = *(v113 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v111 = v94;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v115 = v94;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v112 = v94;
  v19 = type metadata accessor for NeuralNetwork.Layer.UnidirectionalLSTMParameters(0);
  v109 = *(v19 - 8);
  v20 = *(v109 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v119 = v94;
  v23 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v101 = v94;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v30 = alloca(v25);
  v31 = alloca(v25);
  v32 = v120[1];
  v114 = *v120;
  static NeuralNetwork.Layer.Kind.unidirectionalLSTM(inputSize:outputSize:sequenceOutput:)(v32, v114, 0);
  v33 = *(v24 + 16);
  v100 = v94;
  v103 = v33;
  v33(v94, v94, v23);
  v34 = (*(v24 + 88))(v94, v23);
  if (v34 != enum case for NeuralNetwork.Layer.Kind.unidirectionalLSTM(_:))
  {
    (*(v24 + 8))(v94, v23);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ALL, "ModelExport.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier+MLModelExport.swift", 49, 2, 220, 0);
    BUG();
  }

  v108 = v34;
  v106 = v23;
  v102 = v24;
  (*(v24 + 96))(v94, v23);
  v105 = v19;
  (*(v109 + 32))(v119, v94, v19);
  v35 = v120 + *(type metadata accessor for MLActivityClassifier.LSTMBlock(0) + 32);
  v36 = v121;
  LSTM.inputWeight.getter();
  v37 = v118;
  if (__swift_getEnumTagSinglePayload(v36, 1, v118) == 1)
  {
    BUG();
  }

  (*(v113 + 32))(v112, v36, v37);
  LSTM.recurrentWeight.getter();
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TensorRangeExpression?>);
  v39 = swift_allocObject(v38, 72, 7);
  v39[2] = 1;
  v39[3] = 2;
  v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v39[7] = v116;
  v40 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>, &demangling cache variable for type metadata for Range<Int>, &protocol conformance descriptor for <> Range<A>);
  v39[8] = v40;
  v41 = v114;
  if (v114 < 0)
  {
    BUG();
  }

  v117 = v40;
  v39[4] = 0;
  v39[5] = v41;
  v42 = v111;
  v121 = v38;
  Tensor.subscript.getter(v39);
  v39;
  v43 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v120 = *(v113 + 8);
  (v120)(v42, v37);
  v44 = v110;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v43, 0);
  v45 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.inputGate.setter(v44);
  v45(v94, 0);
  v46 = swift_allocObject(v121, 72, 7);
  v47 = v114;
  v48 = v46;
  v46[2] = 1;
  v46[3] = 2;
  if (v47 + 0x4000000000000000 < 0)
  {
    BUG();
  }

  v49 = 2 * v47;
  v46[7] = v116;
  v46[8] = v117;
  if (2 * v47 < v47)
  {
    BUG();
  }

  v46[4] = v47;
  v46[5] = v49;
  v50 = v111;
  Tensor.subscript.getter(v46);
  v48;
  v51 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v50, v118);
  v52 = v110;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v51, 0);
  v53 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.forgetGate.setter(v52);
  v53(v94, 0);
  v54 = swift_allocObject(v121, 72, 7);
  v54[2] = 1;
  v54[3] = 2;
  v55 = 3 * v114;
  if (!is_mul_ok(3uLL, v114))
  {
    BUG();
  }

  v56 = v54;
  v54[7] = v116;
  v54[8] = v117;
  if (v55 < v49)
  {
    BUG();
  }

  v113 = v49;
  v54[4] = v49;
  v57 = v55;
  v54[5] = v55;
  v58 = v111;
  Tensor.subscript.getter(v54);
  v56;
  v59 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v58, v118);
  v60 = v110;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v59, 0);
  v61 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.blockInput.setter(v60);
  v62 = v121;
  v61(v94, 0);
  v63 = swift_allocObject(v62, 72, 7);
  v64 = v114;
  v65 = v63;
  v63[2] = 1;
  v63[3] = 2;
  if (v64 >> 61)
  {
    BUG();
  }

  v63[7] = v116;
  v63[8] = v117;
  if ((4 * v64) < v57)
  {
    BUG();
  }

  v66 = v57;
  v63[4] = v57;
  v63[5] = 4 * v64;
  v67 = v111;
  v104 = 4 * v64;
  v107 = v66;
  Tensor.subscript.getter(v63);
  v65;
  v68 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v67, v118);
  v69 = v110;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v68, 0);
  v70 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.outputGate.setter(v69);
  v70(v94, 0);
  v71 = swift_allocObject(v121, 72, 7);
  v71[2] = 1;
  v71[3] = 2;
  v71[7] = v116;
  v71[8] = v117;
  v71[4] = 0;
  v71[5] = v114;
  Tensor.subscript.getter(v71);
  v71;
  v72 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v67, v118);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v72, 0);
  v73 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.inputGateRecursion.setter(v69);
  v73(v94, 0);
  v74 = swift_allocObject(v121, 72, 7);
  v74[2] = 1;
  v74[3] = 2;
  v74[7] = v116;
  v74[8] = v117;
  v74[4] = v114;
  v74[5] = v113;
  Tensor.subscript.getter(v74);
  v74;
  v75 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v67, v118);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v75, 0);
  v76 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.forgetGateRecursion.setter(v69);
  v76(v94, 0);
  v77 = swift_allocObject(v121, 72, 7);
  v77[2] = 1;
  v77[3] = 2;
  v77[7] = v116;
  v77[8] = v117;
  v77[4] = v113;
  v77[5] = v107;
  Tensor.subscript.getter(v77);
  v77;
  v78 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v67, v118);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v78, 0);
  v79 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.blockInputRecursion.setter(v69);
  v79(v94, 0);
  v80 = swift_allocObject(v121, 72, 7);
  v80[2] = 1;
  v80[3] = 2;
  v80[7] = v116;
  v80[8] = v117;
  v80[4] = v107;
  v80[5] = v104;
  Tensor.subscript.getter(v80);
  v80;
  v81 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v120)(v67, v118);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v81, 0);
  v82 = v119;
  v83 = NeuralNetwork.Layer.UnidirectionalLSTMParameters.weights.modify(v94);
  NeuralNetwork.Layer.LSTMWeightParameters.outputGateRecursion.setter(v69);
  v83(v94, 0);
  v84 = v102;
  v121 = *(v102 + 8);
  v85 = v100;
  v86 = v106;
  (v121)(v100, v106);
  (*(v109 + 16))(v85, v82, v105);
  (*(v84 + 104))(v85, v108, v86);
  v87 = v101;
  v103(v101, v85, v86);
  v88 = v97;
  v97;
  v89 = v96;
  v96;
  v90 = v95;
  v95;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v98, v88, v89, v90, v87);
  v91 = v118;
  v92 = v120;
  (v120)(v115, v118);
  (v92)(v112, v91);
  (*(v109 + 8))(v119, v105);
  return (v121)(v85, v106);
}

uint64_t BatchNorm.asModelLayer(name:inputName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v48 = a3;
  v45 = a2;
  v46 = a1;
  v47 = v4;
  v64 = type metadata accessor for Tensor(0);
  v63 = *(v64 - 1);
  v6 = *(v63 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v51 = &v44;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v50 = &v44;
  v58 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v57 = *(v58 - 8);
  v12 = *(v57 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v62 = &v44;
  v15 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v49 = &v44;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v22 = alloca(v17);
  v23 = alloca(v17);
  v60 = v5;
  v24 = BatchNorm.featureCount.getter();
  static NeuralNetwork.Layer.Kind.batchNormalize(inputChannelCount:)(v24);
  v25 = *(v16 + 16);
  v59 = &v44;
  v52 = v25;
  v25(&v44, &v44, v15);
  v56 = (*(v16 + 88))(&v44, v15);
  if (v56 != enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:))
  {
    (*(v16 + 8))(&v44, v15);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001ALL, "ModelExport.swift" + 0x8000000000000000, "CreateML/MLActivityClassifier+MLModelExport.swift", 49, 2, 262, 0);
    BUG();
  }

  (*(v16 + 96))(&v44, v15);
  v53 = v16;
  (*(v57 + 32))(v62, &v44, v58);
  v26 = v51;
  v61 = v15;
  BatchNorm.scale.getter();
  v27 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v55 = *(v63 + 8);
  v55(v26, v64);
  v28 = v50;
  NeuralNetwork.WeightParameters.init(_:updatable:)(v27, 0);
  v63 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.setter(v28);
  BatchNorm.offset.getter();
  v29 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v55(v26, v64);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v29, 0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  NeuralNetwork.Layer.BatchNormalizeParameters.offset.setter(v28);
  BatchNorm.runningMean.getter();
  v30 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31 = v55;
  v55(v26, v64);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v30, 0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  NeuralNetwork.Layer.BatchNormalizeParameters.mean.setter(v28);
  BatchNorm.runningVariance.getter();
  v32 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v31(v26, v64);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v32, 0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v63);
  v33 = v62;
  NeuralNetwork.Layer.BatchNormalizeParameters.variance.setter(v28);
  v34 = v53;
  v64 = *(v53 + 8);
  v35 = v59;
  v36 = v61;
  v64(v59, v61);
  (*(v57 + 16))(v35, v33, v58);
  (*(v34 + 104))(v35, v56, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v38 = swift_allocObject(v37, 48, 7);
  v38[2] = 1;
  v38[3] = 2;
  v38[4] = v48;
  v38[5] = v54;
  v39 = swift_allocObject(v37, 48, 7);
  v39[2] = 1;
  v39[3] = 2;
  v40 = v46;
  v39[4] = v46;
  v41 = v45;
  v39[5] = v45;
  v42 = v49;
  v52(v49, v59, v61);
  swift_bridgeObjectRetain_n(v41, 2);
  v54;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(v40, v41, v38, v39, v42);
  (*(v57 + 8))(v62, v58);
  return (v64)(v59, v61);
}

uint64_t outlined destroy of NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?(uint64_t a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(a2);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array<A>.floatTensor(shape:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = a1;
  v25[1] = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v26 = v25;
  v27 = type metadata accessor for ScalarType(0);
  v28 = *(v27 - 8);
  v6 = *(v28 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for TensorShape(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of TensorShape?(v29, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v12) == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v18 = swift_allocObject(v17, 40, 7);
    v18[2] = 1;
    v18[3] = 2;
    v19 = v30;
    v18[4] = *(v30 + 16);
    TensorShape.init(_:)();
    if (__swift_getEnumTagSinglePayload(v25, 1, v12) != 1)
    {
      outlined destroy of TensorShape?(v25);
    }
  }

  else
  {
    (*(v13 + 32))(v25, v25, v12);
    v19 = v30;
  }

  (*(v28 + 104))(v25, enum case for ScalarType.float32(_:), v27);
  v20 = type metadata accessor for ComputeDevice(0);
  v21 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v20);
  v22 = alloca(24);
  v23 = alloca(32);
  v26 = v19;
  return Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v25, v25, v21, _sSa8CreateMLSdRszlE11floatTensor5shape14NeuralNetworks0D0VAD0D5ShapeVSg_tFySwXEfU_TA_0);
}

void closure #1 in Array<A>.floatTensor(shape:)(float *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) >> 60)
  {
    BUG();
  }

  closure #1 in closure #1 in Array<A>.floatTensor(shape:)((a3 + 32), a3 + 8 * *(a3 + 16) + 32, a1, a2);
}

void closure #1 in closure #1 in Array<A>.floatTensor(shape:)(const double *a1, uint64_t a2, float *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = (a4 - a3) / 4;
  }

  else
  {
    v4 = 0;
  }

  if (!a1)
  {
    if (v4 >= 0)
    {
      BUG();
    }

LABEL_12:
    BUG();
  }

  v5 = (a2 - a1) / 8;
  if (v4 < v5)
  {
    v5 = v4;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (!a3)
  {
    BUG();
  }

  vDSP_vdpsp(a1, 1, a3, 1, v5);
}

uint64_t outlined init with copy of TensorShape?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of TensorShape?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void static BundleUtilities.getMLModelURL(at:)(Swift::String a1)
{
  if (one-time initialization token for bundle != -1)
  {
    swift_once(&one-time initialization token for bundle, one-time initialization function for bundle);
  }

  v1 = static BundleUtilities.bundle;
  v2 = outlined bridged method (mbgbnn) of @objc NSBundle.url(forResource:withExtension:)(a1._countAndFlagsBits, a1._object, 0x6C65646F6D6C6DLL, 0xE700000000000000, v1);

  if (v2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v2);
  }

  else
  {
    *&v5 = 0xD000000000000015;
    *(&v5 + 1) = "BCE13BundleWitness" + 0x8000000000000000;
    String.append(_:)(a1);
    v3 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v3, 0, 0);
    *v4 = v5;
    *(v4 + 16) = 0;
    *(v4 + 32) = 0;
    *(v4 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v3);
  }
}

id one-time initialization function for bundle()
{
  type metadata accessor for BundleUtilities.BundleWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self(NSBundle);
  v2 = [v1 bundleForClass:ObjCClassFromMetadata];
  result = v2;
  static BundleUtilities.bundle = result;
  return result;
}

id outlined bridged method (mbgbnn) of @objc NSBundle.url(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  a4, a4;
  v9 = [a5 URLForResource:v7 withExtension:v8];
  v10 = v9;

  return v10;
}

uint64_t lazy protocol witness table accessor for type [MLProgram.Value] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MLProgram.Value] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MLProgram.Value] and conformance [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [MLProgram.Value]);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v1);
    lazy protocol witness table cache variable for type [MLProgram.Value] and conformance [A] = result;
  }

  return result;
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v26 = *(*a1 + 16);
  if (v26)
  {
    v5 = a2;
    v6 = 56;
    v7 = 0;
    while (v5 ^ *(v4 + v6 - 24) | a3 ^ *(v4 + v6 - 16))
    {
      v8 = v4;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v4 + v6 - 24), *(v4 + v6 - 16), a2, a3, 0);
      v4 = v8;
      v5 = a2;
      if (v9)
      {
        break;
      }

      ++v7;
      v6 += 16;
      if (v26 == v7)
      {
        v7 = v26;
        goto LABEL_26;
      }
    }

    v10 = v7 + 1;
    if (__OFADD__(1, v7))
    {
      BUG();
    }

    if (v10 != v26)
    {
      do
      {
        v11 = *(v4 + 16);
        if (v10 >= v11)
        {
          BUG();
        }

        v12 = *(v4 + v6 - 8);
        v13 = *(v4 + v6);
        if (v12 != v5 || v13 != a3)
        {
          v27 = v4;
          v19 = *(v4 + v6 - 8);
          if (_stringCompareWithSmolCheck(_:_:expecting:)(v12, v13, v5, a3, 0))
          {
            v5 = a2;
            v4 = v27;
          }

          else
          {
            if (v10 == v7)
            {
              v5 = a2;
              v4 = v27;
            }

            else
            {
              if (v7 >= v11)
              {
                BUG();
              }

              v22 = *(v27 + 32 + 16 * v7);
              v21 = 2 * v7;
              v23 = *(v27 + 32 + 16 * v7 + 8);
              v23;
              v13;
              if (swift_isUniquelyReferenced_nonNull_native(v27))
              {
                v14 = v27;
              }

              else
              {
                v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
              }

              v15 = v14[v21 + 5];
              v14[v21 + 4] = v19;
              v14[v21 + 5] = v13;
              v16 = v14;
              v15;
              if (v10 >= v16[2])
              {
                BUG();
              }

              v17 = v16[v6 / 8];
              v16[v6 / 8 - 1] = v22;
              v16[v6 / 8] = v23;
              v17;
              v4 = v16;
              *a1 = v16;
              v5 = a2;
            }

            ++v7;
          }
        }

        ++v10;
        v6 += 16;
      }

      while (v10 != *(v4 + 16));
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_26:
  a3;
  return v7;
}

_BYTE *assignWithCopy for MLBoostedTreeRegressor.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(__dst);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = *__src;
    v6 = __src[8];
    outlined copy of Result<_DataTable, Error>(*__src, v6);
    *__dst = v5;
    __dst[8] = v6;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeRegressor.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLBoostedTreeRegressor.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLBoostedTreeRegressor.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLBoostedTreeRegressor.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLBoostedTreeRegressor.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_3474E0;
  v5[1] = &unk_3474F8;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v3 = v1;
  v4 = type metadata accessor for DataFrame(0);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v29 = &v25;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v28 = &v25;
  v10 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v2, &v25);
  result = swift_getEnumCaseMultiPayload(&v25, v10);
  switch(result)
  {
    case 0:
      *v3 = 0;
      *(v3 + 8) = -1;
      break;
    case 1:
      result = v25;
      v15 = v26;
      goto LABEL_7;
    case 2:
      v16 = v28;
      v17 = v27;
      (*(v27 + 32))(v28, &v25, v4);
      v18 = v29;
      *a1.i64 = (*(v17 + 16))(v29, v16, v4);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v18, 1, a1);
      (*(v17 + 8))(v16, v4);
      result = v30;
      v15 = v31;
LABEL_7:
      *v3 = result;
      *(v3 + 8) = v15;
      break;
    case 3:
      v19 = v3;
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v21 = empty;
      v22 = type metadata accessor for CMLTable();
      v23 = swift_allocObject(v22, 24, 7);
      *(v23 + 16) = v21;
      v24 = type metadata accessor for _DataTable();
      swift_allocObject(v24, 40, 7);
      result = _DataTable.init(impl:)(v23);
      *v19 = result;
      *(v19 + 8) = 0;
      break;
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
{
  v56 = a3;
  v55 = a2;
  v54 = a1;
  v4 = type metadata accessor for DataFrame(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v53 = &v44;
  v47 = type metadata accessor for DataFrame.Slice(0);
  v46 = *(v47 - 8);
  v8 = *(v46 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v52 = &v44;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v50 = &v44;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v48 = &v44;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v51 = &v44;
  v20 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLBoostedTreeRegressor.ModelParameters.ValidationData(v3, &v44);
  switch(swift_getEnumCaseMultiPayload(&v44, v20))
  {
    case 0u:
      v57 = v4;
      v24 = v51;
      v25 = v50;
      DataFrame.randomSplit(strategy:)(v51, v50, &v44);
      v26 = v46;
      v27 = v52;
      v28 = v25;
      v29 = v47;
      v56 = *(v46 + 16);
      v56(v52, v28, v47);
      DataFrame.init(_:)(v27);
      v30 = v48;
      outlined init with copy of DataFrame.Slice?(v24, v48);
      v31 = v29;
      if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
      {
        __swift_storeEnumTagSinglePayload(v55, 1, 1, v57);
        (*(v26 + 8))(v50, v29);
      }

      else
      {
        v41 = v52;
        (*(v26 + 32))(v52, v30, v31);
        v42 = v49;
        v56(v49, v41, v31);
        DataFrame.init(_:)(v42);
        v43 = *(v26 + 8);
        v43(v41, v31);
        __swift_storeEnumTagSinglePayload(v55, 0, 1, v57);
        v43(v50, v31);
      }

      return outlined destroy of DataFrame.Slice?(v51);
    case 1u:
      v36 = v44;
      v37 = v45;
      (*(v57 + 16))(v54, v56, v4);
      v44 = v36;
      v45 = v37;
      v38 = v55;
      DataFrame.init(_:)(&v44);
      v34 = v38;
      goto LABEL_10;
    case 2u:
      v32 = *(v57 + 32);
      v32(v53, &v44, v4);
      if (DataFrameProtocol.isEmpty.getter(v4, &protocol witness table for DataFrame))
      {
        v33 = v57;
        (*(v57 + 8))(v53, v4);
        (*(v33 + 16))(v54, v56, v4);
LABEL_7:
        v34 = v55;
        v35 = 1;
      }

      else
      {
        (*(v57 + 16))(v54, v56, v4);
        v39 = v55;
        v32(v55, v53, v4);
        v34 = v39;
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v34, v35, 1, v4);
    case 3u:
      (*(v57 + 16))(v54, v56, v4);
      goto LABEL_7;
  }
}

void *initializeBufferWithCopyOfBuffer for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *__src;
    *v3 = *__src;
    v3 = (v11 + ((v5 + 16) & ~v5));

    return v3;
  }

  else
  {
    switch(swift_getEnumCaseMultiPayload(__src, a3))
    {
      case 1u:
        v7 = *__src;
        v8 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v8);
        *__dst = v7;
        __dst[8] = v8;
        *(__dst + 2) = *(__src + 2);
        v9 = *(__src + 3);
        v3[3] = v9;
        v3[4] = *(__src + 4);
        v10 = *(__src + 5);
        v3[5] = v10;
        v9;
        v10;
        swift_storeEnumTagMultiPayload(v3, a3, 1);
        return v3;
      case 2u:
        v14 = type metadata accessor for DataFrame(0);
        (*(*(v14 - 8) + 16))(__dst, __src, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
        v16 = *(v15 + 48);
        *&__dst[v16] = *&__src[v16];
        v17 = *&__src[v16 + 8];
        *(v3 + v16 + 8) = v17;
        v18 = *(v15 + 64);
        *(v3 + v18) = *&__src[v18];
        v19 = *&__src[v18 + 8];
        *(v3 + v18 + 8) = v19;
        v17;
        v19;
        swift_storeEnumTagMultiPayload(v3, a3, 2);
        return v3;
      case 3u:
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 16))(__dst, __src, v12);
        swift_storeEnumTagMultiPayload(__dst, a3, 3);
        return v3;
      case 4u:
        v13 = *__src;
        *v3 = *__src;
        v13;
        swift_storeEnumTagMultiPayload(v3, a3, 4);
        return v3;
      default:
        result = memcpy(__dst, __src, *(v4 + 64));
        break;
    }
  }

  return result;
}

uint64_t destroy for MLTextClassifier.ModelParameters.ValidationData(uint64_t *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2) - 1;
  switch(result)
  {
    case 0:
      outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 2));
      a1[3];
      result = a1[5];
      break;
    case 1:
      v4 = type metadata accessor for DataFrame(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      *(a1 + *(v5 + 48) + 8);
      result = *(a1 + *(v5 + 64) + 8);
      break;
    case 2:
      v3 = type metadata accessor for URL(0);
      result = (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 3:
      result = *a1;
      break;
    default:
      return result;
  }

  return result;
}

char *initializeWithCopy for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 1u:
      v5 = *__src;
      v6 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v6);
      *__dst = v5;
      __dst[8] = v6;
      *(__dst + 2) = *(__src + 2);
      v7 = *(__src + 3);
      *(__dst + 3) = v7;
      *(__dst + 4) = *(__src + 4);
      v8 = *(__src + 5);
      *(__dst + 5) = v8;
      v7;
      v8;
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      goto LABEL_6;
    case 2u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 16))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      v13 = *(v12 + 48);
      *&__dst[v13] = *&__src[v13];
      v14 = *&__src[v13 + 8];
      *&__dst[v13 + 8] = v14;
      v15 = *(v12 + 64);
      *&__dst[v15] = *&__src[v15];
      v16 = *&__src[v15 + 8];
      *&__dst[v15 + 8] = v16;
      v14;
      v16;
      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      goto LABEL_6;
    case 3u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 16))(__dst, __src, v9);
      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      goto LABEL_6;
    case 4u:
      v10 = *__src;
      *__dst = *__src;
      v10;
      swift_storeEnumTagMultiPayload(__dst, a3, 4);
LABEL_6:
      result = __dst;
      break;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

char *assignWithCopy for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(__src, a3))
  {
    case 1u:
      v5 = *__src;
      v6 = __src[8];
      outlined copy of Result<_DataTable, Error>(*__src, v6);
      *__dst = v5;
      __dst[8] = v6;
      *(__dst + 2) = *(__src + 2);
      v7 = *(__src + 3);
      *(__dst + 3) = v7;
      *(__dst + 4) = *(__src + 4);
      v8 = *(__src + 5);
      *(__dst + 5) = v8;
      v7;
      v8;
      swift_storeEnumTagMultiPayload(__dst, a3, 1);
      return __dst;
    case 2u:
      v11 = type metadata accessor for DataFrame(0);
      (*(*(v11 - 8) + 16))(__dst, __src, v11);
      v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      v13 = *(v12 + 48);
      *&__dst[v13] = *&__src[v13];
      v14 = *&__src[v13 + 8];
      *&__dst[v13 + 8] = v14;
      v15 = *(v12 + 64);
      *&__dst[v15] = *&__src[v15];
      v16 = *&__src[v15 + 8];
      *&__dst[v15 + 8] = v16;
      v14;
      v16;
      swift_storeEnumTagMultiPayload(__dst, a3, 2);
      return __dst;
    case 3u:
      v9 = type metadata accessor for URL(0);
      (*(*(v9 - 8) + 16))(__dst, __src, v9);
      swift_storeEnumTagMultiPayload(__dst, a3, 3);
      return __dst;
    case 4u:
      v10 = *__src;
      *__dst = *__src;
      v10;
      swift_storeEnumTagMultiPayload(__dst, a3, 4);
      return __dst;
    default:
      result = memcpy(__dst, __src, *(*(a3 - 8) + 64));
      break;
  }

  return result;
}

uint64_t type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLTextClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLTextClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLTextClassifier.ModelParameters.ValidationData);
  }

  return result;
}

char *initializeWithTake for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 32))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 3);
    return __dst;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v5 = type metadata accessor for DataFrame(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
    *&__dst[*(v6 + 48)] = *&__src[*(v6 + 48)];
    *&__dst[*(v6 + 64)] = *&__src[*(v6 + 64)];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *assignWithTake for MLTextClassifier.ModelParameters.ValidationData(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLTextClassifier.ModelParameters.ValidationData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(__src, a3);
  if (EnumCaseMultiPayload == 3)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 32))(__dst, __src, v7);
    swift_storeEnumTagMultiPayload(__dst, a3, 3);
    return __dst;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v5 = type metadata accessor for DataFrame(0);
    (*(*(v5 - 8) + 32))(__dst, __src, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
    *&__dst[*(v6 + 48)] = *&__src[*(v6 + 48)];
    *&__dst[*(v6 + 64)] = *&__src[*(v6 + 64)];
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLTextClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v7[0] = &unk_347530;
  v7[1] = &unk_347548;
  result = type metadata accessor for DataFrame(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout3(v6, *(result - 8) + 64, &unk_347560, &unk_347560);
    v7[2] = v6;
    result = type metadata accessor for URL(319);
    if (v5 <= 0x3F)
    {
      v7[3] = *(result - 8) + 64;
      v7[4] = &value witness table for Builtin.BridgeObject + 64;
      swift_initEnumMetadataMultiPayload(a1, 256, 5, v7, v3, v4);
      return 0;
    }
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.ValidationData.createValidationData(trainingData:textColumn:labelColumn:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v100._countAndFlagsBits = a4;
  to = a3;
  v106 = v6;
  v99 = a2;
  v105 = v7;
  v108 = v8;
  v100._object = a5;
  v104 = a1;
  v9 = *(*(type metadata accessor for MLTextClassifier.DataSource(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v102 = &v90;
  v107._object = type metadata accessor for DataFrame(0);
  v12 = *(v107._object - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  _._object = &v90;
  v16 = alloca(v13);
  v17 = alloca(v13);
  _._countAndFlagsBits = &v90;
  v94 = type metadata accessor for DataFrame.Slice(0);
  v18 = *(v94 - 1);
  v19 = v18[8];
  v20 = alloca(v19);
  v21 = alloca(v19);
  v96 = &v90;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v97 = &v90;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v107._countAndFlagsBits = &v90;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame.Slice?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v95 = &v90;
  v29 = alloca(v26);
  v30 = alloca(v26);
  v103 = &v90;
  v31 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v32 = *(*(v31 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  outlined init with copy of MLTextClassifier.ModelParameters.ValidationData(v108, &v90);
  switch(swift_getEnumCaseMultiPayload(&v90, v31))
  {
    case 0u:
      v108 = v18;
      v35 = v103;
      DataFrame.randomSplit(strategy:)(v103, v107._countAndFlagsBits, &v90);
      v36 = v95;
      outlined init with copy of DataFrame.Slice?(v35, v95);
      v37 = v94;
      if (__swift_getEnumTagSinglePayload(v36, 1, v94) == 1)
      {
        (v108)[1](v107._countAndFlagsBits, v37);
        outlined destroy of DataFrame.Slice?(v103);
        outlined destroy of DataFrame.Slice?(v36);
        goto LABEL_4;
      }

      (*(v12 + 8))(v104, v107._object);
      v68 = v36;
      v69 = v108;
      (v108[4])(v97, v68, v37);
      v70 = v37;
      v71 = v69[2];
      v72 = v96;
      v71(v96, v107._countAndFlagsBits, v70);
      DataFrame.init(_:)(v72);
      v71(v72, v97, v70);
      DataFrame.init(_:)(v72);
      v73 = v69[1];
      v73(v97, v70);
      v73(v107._countAndFlagsBits, v70);
      outlined destroy of DataFrame.Slice?(v103);
      v38 = v106;
      v39 = 0;
      return __swift_storeEnumTagSinglePayload(v38, v39, 1, v107._object);
    case 1u:
      v108 = v12;
      v46 = v91;
      v47 = v92;
      v103 = v93;
      _._object = v94;
      v48 = v95;
      LOBYTE(v91) = v91 & 1;
      v107._countAndFlagsBits = v90;
      LODWORD(v104) = v46;
      outlined copy of Result<_DataTable, Error>(v90, v46);
      countAndFlagsBits = _._countAndFlagsBits;
      DataFrame.init(_:)(&v90);
      v50 = countAndFlagsBits;
      v51 = v48;
      v52 = v103;
      v102 = v47;
      v53 = v47;
      object = _._object;
      v55 = v105;
      static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(v50, v53, v103, _._object, v51);
      if (v55)
      {
        (v108)[1](_._countAndFlagsBits, v107._object);
        outlined consume of Result<_DataTable, Error>(v107._countAndFlagsBits, v104);
        v51;
        v56 = v52;
        goto LABEL_14;
      }

      v77._countAndFlagsBits = v102;
      v77._object = v52;
      v78._countAndFlagsBits = v99;
      v78._object = to;
      v105 = v51;
      v79 = _._countAndFlagsBits;
      DataFrame.renameColumn(_:to:)(v77, v78);
      v52;
      v77._countAndFlagsBits = object;
      v80 = v105;
      v77._object = v105;
      DataFrame.renameColumn(_:to:)(v77, v100);
      outlined consume of Result<_DataTable, Error>(v107._countAndFlagsBits, v104);
      v80;
      v81 = v106;
      v82 = v107._object;
      (v108[4])(v106, v79, v107._object);
      v75 = v81;
      v76 = v82;
      goto LABEL_20;
    case 2u:
      v57 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      v58 = *(v57 + 48);
      v107._countAndFlagsBits = *(&v90 + v58);
      v108 = *(&v90 + v58 + 8);
      v59 = *(v57 + 64);
      v60 = *(&v90 + v59);
      v104 = *(&v90 + v59 + 8);
      v61 = _._object;
      v103 = *(v12 + 32);
      (v103)(_._object, &v90, v107._object);
      v62 = v61;
      v63 = v104;
      _._countAndFlagsBits = v60;
      v64 = v105;
      static MLTextClassifier.validateDataFrame(_:textColumn:labelColumn:)(v62, v107._countAndFlagsBits, v108, v60, v104);
      if (!v64)
      {
        v83._countAndFlagsBits = v107._countAndFlagsBits;
        v84 = v108;
        v83._object = v108;
        v85._countAndFlagsBits = v99;
        v85._object = to;
        v86 = v63;
        v87 = _._object;
        DataFrame.renameColumn(_:to:)(v83, v85);
        v84;
        v83._countAndFlagsBits = _._countAndFlagsBits;
        v83._object = v86;
        DataFrame.renameColumn(_:to:)(v83, v100);
        v86;
        v88 = v106;
        v89 = v107._object;
        (v103)(v106, v87, v107._object);
        v75 = v88;
        v76 = v89;
        goto LABEL_20;
      }

      (*(v12 + 8))(_._object, v107._object);
      v108;
      v56 = v63;
LABEL_14:
      result = v56;
      break;
    case 3u:
      v40 = v99;
      v41 = to;
      v42 = v102;
      outlined init with take of MLTextClassifier.DataSource(&v90, v102);
      v43 = v105;
      v44 = static _TextUtilities.getTextLabeledDictionary(from:)(v42, a6);
      if (v43)
      {
        result = outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLTextClassifier.DataSource);
      }

      else
      {
        v74 = v44;
        specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(v44, v40, v41, v100._countAndFlagsBits, v100._object);
        outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLTextClassifier.DataSource);
        v74;
        v75 = v106;
        v76 = v107._object;
LABEL_20:
        result = __swift_storeEnumTagSinglePayload(v75, 0, 1, v76);
      }

      break;
    case 4u:
      v65 = v90;
      v66 = v106;
      v67 = v105;
      specialized generateTextDataFrame<A>(_:textColumn:labelColumn:using:)(v90, v99, to, v100._countAndFlagsBits, v100._object);
      if (!v67)
      {
        __swift_storeEnumTagSinglePayload(v66, 0, 1, v107._object);
      }

      v56 = v65;
      goto LABEL_14;
    case 5u:
LABEL_4:
      v38 = v106;
      v39 = 1;
      return __swift_storeEnumTagSinglePayload(v38, v39, 1, v107._object);
  }

  return result;
}

uint64_t MLTextClassifier.ModelParameters.ValidationData.init(_:textColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *(a1 + 8);
  if (v8 == -1)
  {
    a3;
    a5;
    *v6 = 0;
    *(v6 + 16) = 256;
    v14 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
    return swift_storeEnumTagMultiPayload(v6, v14, 0);
  }

  else
  {
    v17 = *a1;
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = v8 & 1;
    outlined copy of Result<_DataTable, Error>(*a1, v10);
    v12 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v17, v11);
    if (v12)
    {
      *v6 = v9;
      *(v6 + 8) = v11;
      *(v6 + 16) = a2;
      *(v6 + 24) = a3;
      *(v6 + 32) = a4;
      *(v6 + 40) = a5;
      v13 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
      v16 = 1;
    }

    else
    {
      outlined consume of MLDataTable?(v9, v10);
      a3;
      a5;
      v13 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
      v16 = 5;
    }

    return swift_storeEnumTagMultiPayload(v6, v13, v16);
  }
}

uint64_t MLTextClassifier.ModelParameters.ValidationData.table.getter(__m128 a1)
{
  v40 = v1;
  v3 = *(*(type metadata accessor for MLTextClassifier.DataSource(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v37 = &v34;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v36 = &v34;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v35 = &v34;
  v13 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of MLTextClassifier.ModelParameters.ValidationData(v2, &v34);
  switch(swift_getEnumCaseMultiPayload(&v34, v13))
  {
    case 0u:
      result = v40;
      *v40 = 0;
      *(result + 8) = -1;
      return result;
    case 1u:
      v17 = v34;
      v18 = v35;
      v19 = v39;
      v37;
      v19;
      result = v40;
      *v40 = v17;
      *(result + 8) = v18;
      return result;
    case 2u:
      v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, textColumn: String, labelColumn: String));
      *(&v34 + *(v22 + 48) + 8);
      *(&v34 + *(v22 + 64) + 8);
      v23 = v35;
      (*(v7 + 32))(v35, &v34, v6);
      v24 = v36;
      *a1.i64 = (*(v7 + 16))(v36, v23, v6);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v24, 0, a1);
      (*(v7 + 8))(v23, v6);
      goto LABEL_10;
    case 3u:
      v25 = v37;
      outlined init with take of MLTextClassifier.DataSource(&v34, v37);
      v21 = static _TextUtilities.getTextLabeledDictionary(from:)(v25, *a1.i64);
      specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(v21, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
      outlined destroy of MLActivityClassifier.ModelParameters(v25, type metadata accessor for MLTextClassifier.DataSource);
      goto LABEL_9;
    case 4u:
      v21 = v34;
      specialized generateTextTable<A>(_:textColumn:labelColumn:using:)(v34, 1954047348, 0xE400000000000000, 0x6C6562616CLL, 0xE500000000000000);
LABEL_9:
      v21;
LABEL_10:
      result = v38;
      v32 = v39;
      v33 = v40;
      *v40 = v38;
      *(v33 + 8) = v32;
      break;
    case 5u:
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v27 = empty;
      v28 = type metadata accessor for CMLTable();
      v29 = swift_allocObject(v28, 24, 7);
      *(v29 + 16) = v27;
      v30 = type metadata accessor for _DataTable();
      swift_allocObject(v30, 40, 7);
      result = _DataTable.init(impl:)(v29);
      v31 = v40;
      *v40 = result;
      *(v31 + 8) = 0;
      break;
  }

  return result;
}

uint64_t outlined init with copy of MLTextClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLTextClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t MLActionClassifier.ModelParameters.init(validation:batchSize:maximumIterations:predictionWindowSize:augmentationOptions:algorithm:targetFrameRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, double a6)
{
  v9 = v6;
  v10 = *a5;
  outlined init with take of MLClassifierMetrics(a1, v6, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
  v11 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *(v9 + v11[5]) = a2;
  *(v9 + v11[6]) = a3;
  *(v9 + v11[7]) = a4;
  *(v9 + v11[8]) = v10;
  result = v11[10];
  *(v9 + result) = a6;
  return result;
}

char MLActionClassifier.ModelParameters.ValidationData.extractAnnotations(trainingData:)(uint64_t *a1, void *a2, __m128 a3)
{
  v54 = v3;
  v55 = v4;
  v52 = a2;
  v53 = a1;
  v5 = type metadata accessor for MLActionClassifier.DataSource(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v48 = &v41;
  v9 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = v54;
  LOBYTE(v14) = MLActionClassifier.DataSource.videosWithAnnotations()(a3);
  if (v13)
  {
    return v14;
  }

  *&v47 = v5;
  v15 = v49;
  v57 = BYTE8(v49);
  outlined init with copy of MLActionClassifier.ModelParameters.ValidationData(v55, &v41);
  v55 = &v41;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v41, v9);
  v54 = 0;
  if (!EnumCaseMultiPayload)
  {
    v47 = *v55;
    v56 = *(v55 + 16);
    LOBYTE(v48) = *(v55 + 17);
    *&v49 = v15;
    v22 = v57;
    BYTE8(v49) = v57;
    LODWORD(v55) = v57;
    outlined copy of Result<_DataTable, Error>(v15, v57);
    v23 = MLDataTable.size.getter();
    outlined consume of Result<_DataTable, Error>(v49, SBYTE8(v49));
    if (v23 > 0)
    {
      v45 = v15;
      v46 = v22;
      v49 = v47;
      v50 = v56;
      v51 = v48 & 1;
      MLDataTable.randomSplitBySequence(strategy:by:on:)(&v41, &v43, &v49, 0x7461506F65646976, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v15, v55);
      v14 = v41;
      v24 = v42;
      v25 = v44;
      v26 = v53;
      *v53 = v43;
      *(v26 + 8) = v25;
      v27 = v52;
      *v52 = v14;
      *(v27 + 8) = v24;
      return v14;
    }

LABEL_10:
    outlined consume of Result<_DataTable, Error>(v15, v55);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    *&v49 = v15;
    v28 = v57;
    BYTE8(v49) = v57;
    LODWORD(v55) = v57;
    outlined copy of Result<_DataTable, Error>(v15, v57);
    MLDataTable.size.getter();
    v30 = v29;
    outlined consume of Result<_DataTable, Error>(v49, SBYTE8(v49));
    if (v30)
    {
      v31 = v53;
      *v53 = v15;
      *(v31 + 8) = v28;
      v14 = v52;
      *v52 = 0;
      *(v14 + 8) = -1;
      return v14;
    }

    goto LABEL_10;
  }

  v17 = v15;
  v18 = v55;
  if (swift_getEnumCaseMultiPayload(v55, v47) == 3)
  {
    outlined consume of Result<_DataTable, Error>(v17, v57);
    v19 = *(v18 + 24);
    v20 = *(v18 + 40);
    v21 = *(v18 + 56);
    outlined consume of Result<_DataTable, Error>(*v18, *(v18 + 8));
    v21;
    v20;
    v19;
LABEL_11:
    v32 = v53;
    *v53 = 0;
    LOBYTE(v14) = -1;
    *(v32 + 8) = -1;
    v33 = v52;
    *v52 = 0;
    *(v33 + 8) = -1;
    return v14;
  }

  v34 = v18;
  v35 = v48;
  outlined init with take of MLClassifierMetrics(v34, v48, type metadata accessor for MLActionClassifier.DataSource);
  v36 = v54;
  MLActionClassifier.DataSource.videosWithAnnotations()(a3);
  outlined destroy of MLImageClassifier.ModelParameters.ValidationData(v35, type metadata accessor for MLActionClassifier.DataSource);
  if (v36)
  {
    LOBYTE(v14) = outlined consume of Result<_DataTable, Error>(v17, v57);
  }

  else
  {
    v14 = v49;
    v37 = BYTE8(v49);
    v38 = v53;
    *v53 = v17;
    *(v38 + 8) = v57;
    v39 = v52;
    *v52 = v14;
    *(v39 + 8) = v37;
  }

  return v14;
}

uint64_t MLActionClassifier.ModelParameters.batchSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 20);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.maximumIterations.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 24);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.predictionWindowSize.setter(uint64_t a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 28);
  *(v1 + result) = a1;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.augmentationOptions.getter()
{
  v2 = v0;
  result = *(v1 + *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 32));
  *v2 = result;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 32);
  *(v1 + result) = v2;
  return result;
}

uint64_t MLActionClassifier.ModelParameters.targetFrameRate.setter(double a1)
{
  result = *(type metadata accessor for MLActionClassifier.ModelParameters(0) + 40);
  *(v1 + result) = a1;
  return result;
}

Swift::Int MLActionClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  Hasher.init(_seed:)(0);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t MLActionClassifier.ModelParameters.description.getter()
{
  _StringGuts.grow(_:)(23);
  0xE000000000000000;
  v1 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v17._countAndFlagsBits = *(v0 + v1[6]);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v2._object;
  String.append(_:)(v2);
  object;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  strcpy(&v17, "Batch Size: ");
  BYTE5(v17._object) = 0;
  HIWORD(v17._object) = -5120;
  v15 = *(v0 + v1[5]);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v6 = v5._object;
  String.append(_:)(v5);
  v6;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(v17);
  v17._object;
  _StringGuts.grow(_:)(27);
  0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000018;
  v17._object = "Maximum Iterations: " + 0x8000000000000000;
  v16 = *(v0 + v1[7]);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v8 = v7._object;
  String.append(_:)(v7);
  v8;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = "Maximum Iterations: " + 0x8000000000000000;
  String.append(_:)(v4);
  "Maximum Iterations: " + 0x8000000000000000;
  _StringGuts.grow(_:)(22);
  0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000013;
  v17._object = "Prediction Window Time: " + 0x8000000000000000;
  v9._countAndFlagsBits = Double.description.getter(*(v0 + v1[10]));
  v10 = v9._object;
  String.append(_:)(v9);
  v10;
  v4._countAndFlagsBits = 10;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  v4._countAndFlagsBits = 0xD000000000000013;
  v11._object = "Prediction Window Time: " + 0x8000000000000000;
  String.append(_:)(v11);
  "Prediction Window Time: " + 0x8000000000000000;
  _StringGuts.grow(_:)(25);
  0xE000000000000000;
  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = "Target Frame Rate: " + 0x8000000000000000;
  v11._countAndFlagsBits = 0x746E6F7A69726F48;
  if (*(v0 + v1[8]) != 1)
  {
    v11._countAndFlagsBits = 0;
  }

  v12 = 0xEF70696C46206C61;
  if (*(v0 + v1[8]) != 1)
  {
    v12 = 0xE000000000000000;
  }

  v11._object = v12;
  String.append(_:)(v11);
  v12;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  String.append(_:)(v17);
  v17._object;
  v13._object = "ization for CoreML. Found: " + 0x8000000000000000;
  v13._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v13);
  return 0xD000000000000014;
}

uint64_t outlined init with copy of MLActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of MLActionClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

unint64_t MLActionClassifier.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLActionClassifier.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t lazy protocol witness table accessor for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType()
{
  result = lazy protocol witness table cache variable for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType;
  if (!lazy protocol witness table cache variable for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLActionClassifier.ModelParameters.ModelAlgorithmType, &type metadata for MLActionClassifier.ModelParameters.ModelAlgorithmType);
    lazy protocol witness table cache variable for type MLActionClassifier.ModelParameters.ModelAlgorithmType and conformance MLActionClassifier.ModelParameters.ModelAlgorithmType = result;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v4 = __dst;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *__src;
    *v4 = *__src;
    v4 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(__src, v7) == 1)
    {
      v8 = type metadata accessor for MLActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(__src, v8))
      {
        case 0u:
          v45 = type metadata accessor for URL(0);
          v51 = *(*(v45 - 8) + 16);
          v51(__dst, __src, v45);
          v49 = v8;
          v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v51(&__dst[v9[12]], &__src[v9[12]], v45);
          v10 = v9[16];
          *&__dst[v10] = *&__src[v10];
          v11 = *&__src[v10 + 8];
          *&v4[v10 + 8] = v11;
          v12 = v9[20];
          *&v4[v12] = *&__src[v12];
          v52 = *&__src[v12 + 8];
          *&v4[v12 + 8] = v52;
          v13 = v9[24];
          *&v4[v13] = *&__src[v13];
          v46 = *&__src[v13 + 8];
          *&v4[v13 + 8] = v46;
          v14 = v9[28];
          *&v4[v14] = *&__src[v14];
          v15 = *&__src[v14 + 8];
          *&v4[v14 + 8] = v15;
          v11;
          v52;
          v46;
          v15;
          __dst = v4;
          v16 = v49;
          v17 = 0;
          goto LABEL_15;
        case 1u:
          v26 = type metadata accessor for URL(0);
          (*(*(v26 - 8) + 16))(__dst, __src, v26);
          v44 = 1;
          goto LABEL_11;
        case 2u:
          v22 = type metadata accessor for URL(0);
          (*(*(v22 - 8) + 16))(__dst, __src, v22);
          v44 = 2;
LABEL_11:
          v17 = v44;
          v16 = v8;
          goto LABEL_15;
        case 3u:
          v50 = v8;
          v23 = *__src;
          v55 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v55);
          *__dst = v23;
          __dst[8] = v55;
          *(__dst + 2) = *(__src + 2);
          v24 = *(__src + 3);
          *(v4 + 3) = v24;
          *(v4 + 4) = *(__src + 4);
          v25 = *(__src + 5);
          *(v4 + 5) = v25;
          *(v4 + 6) = *(__src + 6);
          v56 = *(__src + 7);
          *(v4 + 7) = v56;
          v24;
          v25;
          v56;
          v43 = 3;
          goto LABEL_14;
        case 4u:
          v50 = v8;
          v19 = *__src;
          v53 = __src[8];
          outlined copy of Result<_DataTable, Error>(*__src, v53);
          *__dst = v19;
          __dst[8] = v53;
          *(__dst + 2) = *(__src + 2);
          v20 = *(__src + 3);
          *(v4 + 3) = v20;
          *(v4 + 4) = *(__src + 4);
          v21 = *(__src + 5);
          *(v4 + 5) = v21;
          *(v4 + 6) = *(__src + 6);
          v54 = *(__src + 7);
          *(v4 + 7) = v54;
          *(v4 + 8) = *(__src + 8);
          v47 = *(__src + 9);
          *(v4 + 9) = v47;
          v20;
          v21;
          v54;
          v47;
          v43 = 4;
          goto LABEL_14;
        case 5u:
          v27 = type metadata accessor for DataFrame(0);
          (*(*(v27 - 8) + 16))(__dst, __src, v27);
          v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v29 = v28[12];
          *&__dst[v29] = *&__src[v29];
          v30 = *&__src[v29 + 8];
          *&v4[v29 + 8] = v30;
          v31 = v28[16];
          *&v4[v31] = *&__src[v31];
          v57 = *&__src[v31 + 8];
          *&v4[v31 + 8] = v57;
          v32 = v28[20];
          *&v4[v32] = *&__src[v32];
          v50 = v8;
          v33 = *&__src[v32 + 8];
          *&v4[v32 + 8] = v33;
          v30;
          v57;
          v33;
          v43 = 5;
          goto LABEL_14;
        case 6u:
          v34 = type metadata accessor for DataFrame(0);
          (*(*(v34 - 8) + 16))(__dst, __src, v34);
          v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v36 = v35[12];
          *&__dst[v36] = *&__src[v36];
          v37 = *&__src[v36 + 8];
          *&v4[v36 + 8] = v37;
          v38 = v35[16];
          *&v4[v38] = *&__src[v38];
          v58 = *&__src[v38 + 8];
          *&v4[v38 + 8] = v58;
          v39 = v35[20];
          *&v4[v39] = *&__src[v39];
          v48 = *&__src[v39 + 8];
          *&v4[v39 + 8] = v48;
          v40 = v35[24];
          *&v4[v40] = *&__src[v40];
          v50 = v8;
          v41 = *&__src[v40 + 8];
          *&v4[v40 + 8] = v41;
          v37;
          v58;
          v48;
          v41;
          v43 = 6;
LABEL_14:
          v17 = v43;
          __dst = v4;
          v16 = v50;
LABEL_15:
          swift_storeEnumTagMultiPayload(__dst, v16, v17);
          swift_storeEnumTagMultiPayload(v4, v7, 1);
          break;
        case 7u:
          JUMPOUT(0x25BC4CLL);
      }
    }

    else
    {
      memcpy(__dst, __src, *(*(v7 - 8) + 64));
    }

    *&v4[a3[5]] = *&__src[a3[5]];
    *&v4[a3[6]] = *&__src[a3[6]];
    *&v4[a3[7]] = *&__src[a3[7]];
    *&v4[a3[8]] = *&__src[a3[8]];
    *&v4[a3[10]] = *&__src[a3[10]];
  }

  return v4;
}

uint64_t destroy for MLActionClassifier.ModelParameters(uint64_t a1)
{
  v1 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(a1, v1);
  if (result == 1)
  {
    v3 = type metadata accessor for MLActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(a1, v3);
    switch(result)
    {
      case 0:
        v5 = type metadata accessor for URL(0);
        v6 = *(*(v5 - 8) + 8);
        v6(a1, v5);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v6(a1 + v7[12], v5);
        *(a1 + v7[16] + 8);
        *(a1 + v7[20] + 8);
        *(a1 + v7[24] + 8);
        v8 = v7[28];
        goto LABEL_10;
      case 1:
      case 2:
        v4 = type metadata accessor for URL(0);
        return (*(*(v4 - 8) + 8))(a1, v4);
      case 3:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        return *(a1 + 56);
      case 4:
        outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
        *(a1 + 24);
        *(a1 + 40);
        *(a1 + 56);
        return *(a1 + 72);
      case 5:
        v9 = type metadata accessor for DataFrame(0);
        (*(*(v9 - 8) + 8))(a1, v9);
        v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(a1 + v10[12] + 8);
        *(a1 + v10[16] + 8);
        v8 = v10[20];
        goto LABEL_10;
      case 6:
        v11 = type metadata accessor for DataFrame(0);
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(a1 + v12[12] + 8);
        *(a1 + v12[16] + 8);
        *(a1 + v12[20] + 8);
        v8 = v12[24];
LABEL_10:
        result = *(a1 + v8 + 8);
        break;
      default:
        return result;
    }
  }

  return result;
}

char *initializeWithCopy for MLActionClassifier.ModelParameters(char *__dst, char *__src, int *a3)
{
  v5 = __dst;
  v6 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(__src, v6) == 1)
  {
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(__src, v7))
    {
      case 0u:
        v43 = type metadata accessor for URL(0);
        v49 = *(*(v43 - 8) + 16);
        v49(__dst, __src, v43);
        v47 = v7;
        v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v49(&__dst[v8[12]], &__src[v8[12]], v43);
        v9 = v8[16];
        *&__dst[v9] = *&__src[v9];
        v10 = *&__src[v9 + 8];
        *&v5[v9 + 8] = v10;
        v11 = v8[20];
        *&v5[v11] = *&__src[v11];
        v50 = *&__src[v11 + 8];
        *&v5[v11 + 8] = v50;
        v12 = v8[24];
        *&v5[v12] = *&__src[v12];
        v44 = *&__src[v12 + 8];
        *&v5[v12 + 8] = v44;
        v13 = v8[28];
        *&v5[v13] = *&__src[v13];
        v14 = *&__src[v13 + 8];
        *&v5[v13 + 8] = v14;
        v10;
        v50;
        v44;
        v14;
        __dst = v5;
        v15 = v47;
        v16 = 0;
        goto LABEL_13;
      case 1u:
        v24 = type metadata accessor for URL(0);
        (*(*(v24 - 8) + 16))(__dst, __src, v24);
        v42 = 1;
        goto LABEL_9;
      case 2u:
        v20 = type metadata accessor for URL(0);
        (*(*(v20 - 8) + 16))(__dst, __src, v20);
        v42 = 2;
LABEL_9:
        v16 = v42;
        v15 = v7;
        goto LABEL_13;
      case 3u:
        v48 = v7;
        v21 = *__src;
        v53 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v53);
        *__dst = v21;
        __dst[8] = v53;
        *(__dst + 2) = *(__src + 2);
        v22 = *(__src + 3);
        *(v5 + 3) = v22;
        *(v5 + 4) = *(__src + 4);
        v23 = *(__src + 5);
        *(v5 + 5) = v23;
        *(v5 + 6) = *(__src + 6);
        v54 = *(__src + 7);
        *(v5 + 7) = v54;
        v22;
        v23;
        v54;
        v41 = 3;
        goto LABEL_12;
      case 4u:
        v48 = v7;
        v17 = *__src;
        v51 = __src[8];
        outlined copy of Result<_DataTable, Error>(*__src, v51);
        *__dst = v17;
        __dst[8] = v51;
        *(__dst + 2) = *(__src + 2);
        v18 = *(__src + 3);
        *(v5 + 3) = v18;
        *(v5 + 4) = *(__src + 4);
        v19 = *(__src + 5);
        *(v5 + 5) = v19;
        *(v5 + 6) = *(__src + 6);
        v52 = *(__src + 7);
        *(v5 + 7) = v52;
        *(v5 + 8) = *(__src + 8);
        v45 = *(__src + 9);
        *(v5 + 9) = v45;
        v18;
        v19;
        v52;
        v45;
        v41 = 4;
        goto LABEL_12;
      case 5u:
        v25 = type metadata accessor for DataFrame(0);
        (*(*(v25 - 8) + 16))(__dst, __src, v25);
        v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v27 = v26[12];
        *&__dst[v27] = *&__src[v27];
        v28 = *&__src[v27 + 8];
        *&v5[v27 + 8] = v28;
        v29 = v26[16];
        *&v5[v29] = *&__src[v29];
        v55 = *&__src[v29 + 8];
        *&v5[v29 + 8] = v55;
        v30 = v26[20];
        *&v5[v30] = *&__src[v30];
        v48 = v7;
        v31 = *&__src[v30 + 8];
        *&v5[v30 + 8] = v31;
        v28;
        v55;
        v31;
        v41 = 5;
        goto LABEL_12;
      case 6u:
        v32 = type metadata accessor for DataFrame(0);
        (*(*(v32 - 8) + 16))(__dst, __src, v32);
        v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v34 = v33[12];
        *&__dst[v34] = *&__src[v34];
        v35 = *&__src[v34 + 8];
        *&v5[v34 + 8] = v35;
        v36 = v33[16];
        *&v5[v36] = *&__src[v36];
        v56 = *&__src[v36 + 8];
        *&v5[v36 + 8] = v56;
        v37 = v33[20];
        *&v5[v37] = *&__src[v37];
        v46 = *&__src[v37 + 8];
        *&v5[v37 + 8] = v46;
        v38 = v33[24];
        *&v5[v38] = *&__src[v38];
        v48 = v7;
        v39 = *&__src[v38 + 8];
        *&v5[v38 + 8] = v39;
        v35;
        v56;
        v46;
        v39;
        v41 = 6;
LABEL_12:
        v16 = v41;
        __dst = v5;
        v15 = v48;
LABEL_13:
        swift_storeEnumTagMultiPayload(__dst, v15, v16);
        swift_storeEnumTagMultiPayload(v5, v6, 1);
        break;
    }
  }

  else
  {
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  *&v5[a3[5]] = *&__src[a3[5]];
  *&v5[a3[6]] = *&__src[a3[6]];
  *&v5[a3[7]] = *&__src[a3[7]];
  *&v5[a3[8]] = *&__src[a3[8]];
  *&v5[a3[10]] = *&__src[a3[10]];
  return v5;
}