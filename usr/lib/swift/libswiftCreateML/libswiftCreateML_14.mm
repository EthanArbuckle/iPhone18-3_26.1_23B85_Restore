unint64_t MLLogisticRegressionClassifier.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v4 = *(*(v29._object - 1) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v8 = v2 + v7[8];
  v29._countAndFlagsBits = MLLogisticRegressionClassifier.ModelParameters.description.getter(0, a2);
  v10 = v9;
  v11 = v3 + v7[9];
  v26._countAndFlagsBits = MLClassifierMetrics.description.getter();
  v26._object = v12;
  v13 = v7[10];
  v14 = v10;
  outlined init with copy of MLTrainingSessionParameters(v3 + v13, &v24, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v10) = swift_getEnumCaseMultiPayload(&v24, v29._object);
  outlined destroy of MLActivityClassifier.ModelParameters(&v24, type metadata accessor for MLClassifierMetrics.Contents);
  v29._object = MLClassifierMetrics.description.getter();
  v16 = v15;
  v27 = 0xD000000000000029;
  v28 = "LogisticRegressionClassifier" + 0x8000000000000000;
  v17._countAndFlagsBits = v29._countAndFlagsBits;
  v29._countAndFlagsBits = v14;
  v17._object = v14;
  String.append(_:)(v17);
  v25._countAndFlagsBits = 0xD00000000000001ELL;
  v25._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  object = v26._object;
  String.append(_:)(v26);
  v19 = v25._object;
  String.append(_:)(v25);
  v19;
  if (v10 > 1)
  {
    v22 = object;
  }

  else
  {
    v25._countAndFlagsBits = 0xD000000000000020;
    v25._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v20._countAndFlagsBits = v29._object;
    v20._object = v16;
    String.append(_:)(v20);
    v21 = v25._object;
    String.append(_:)(v25);
    object;
    v22 = v16;
    v16 = v21;
  }

  v22;
  v16;
  v29._countAndFlagsBits;
  return v27;
}

NSAttributedString MLLogisticRegressionClassifier.playgroundDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for NSAttributedString();
  v5._countAndFlagsBits = MLLogisticRegressionClassifier.debugDescription.getter(0, a2);
  v5._object = v6;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v5).super.isa;
  v3[3].super.isa = v4;
  v3->super.isa = result.super.isa;
  return result;
}

void MLLogisticRegressionClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLLogisticRegressionClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLLogisticRegressionClassifier.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLLogisticRegressionClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLLogisticRegressionClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLLogisticRegressionClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier(0);
  return outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLLogisticRegressionClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLLogisticRegressionClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLogisticRegressionClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLLogisticRegressionClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLLogisticRegressionClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v45 = a5;
  v42 = a4;
  v41 = a3;
  v38 = a2;
  v46 = a1;
  v7 = v5;
  v44 = v5;
  v39 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8);
  v37 = *(v39 + 64);
  v8 = alloca(v37);
  v9 = alloca(v37);
  v40 = &v36;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v48 = *(v47 - 8);
  v10 = *(v48 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v49 = *(v13 + 36);
  v43 = v13;
  v14 = v49 + v7;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v15 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v16 = *(v15 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v36);
  v17 = *(v15 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v36);
  (*(v48 + 8))(&v36, v47);
  v18 = v44;
  *(v44 + v49) = 0;
  v47 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v48 = v14;
  v19 = v14;
  v20 = v18;
  swift_storeEnumTagMultiPayload(v19, v47, 1);
  v21 = *(v13 + 40);
  v22 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v23 = swift_allocError(&type metadata for MLCreateError, v22, 0, 0);
  *v24 = 0xD0000000000000C0;
  *(v24 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v24 + 16) = 0;
  *(v24 + 32) = 0;
  *(v24 + 48) = 0;
  *(v20 + v21) = v23;
  v49 = v20 + v21;
  swift_storeEnumTagMultiPayload(v20 + v21, v47, 2);
  v25 = v43;
  *(v20 + *(v43 + 28)) = v42;
  v26 = *(v25 + 24);
  *(v20 + v26) = v38;
  *(v20 + v26 + 8) = v41;
  v27 = v40;
  outlined init with copy of MLTrainingSessionParameters(v46, v40, type metadata accessor for MLLogisticRegressionClassifier.Model);
  v28 = *(v39 + 80);
  v29 = ~*(v39 + 80) & (v28 + 16);
  v30 = swift_allocObject(&unk_390D20, v29 + v37, v28 | 7);
  outlined init with take of MLClassifierMetrics(v27, v30 + v29, type metadata accessor for MLLogisticRegressionClassifier.Model);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:), v30);
  v32 = v31;

  if (v6)
  {
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v45);
    outlined destroy of MLActivityClassifier.ModelParameters(v46, type metadata accessor for MLLogisticRegressionClassifier.Model);
    v42;
    v41;
    outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v49, type metadata accessor for MLClassifierMetrics);
  }

  else
  {
    v34 = v43;
    v35 = v44;
    *(v44 + *(v43 + 20)) = v32;
    result = outlined init with take of MLClassifierMetrics(v46, v35, type metadata accessor for MLLogisticRegressionClassifier.Model);
    qmemcpy((v35 + *(v34 + 32)), v45, 0x49uLL);
  }

  return result;
}

uint64_t closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, void (*a4)(void (*)(uint64_t *, uint64_t, uint64_t), uint64_t), uint64_t a5)
{
  v199 = a4;
  _ = a3;
  v7 = v5;
  v179 = v5;
  v193._countAndFlagsBits = a2;
  v189 = v6;
  v195 = a5;
  v194 = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v172 = v157;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v169 = v157;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v173 = v157;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v170 = v157;
  v167 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8);
  v18 = *(v167 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v175 = v157;
  v166 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v191 = v157;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v163 = v157;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v162 = v157;
  v174 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v174 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v181 = v157;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v185 = v157;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v184 = v157;
  v36 = *(*(type metadata accessor for MLLogisticRegressionClassifier.Classifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v190 = v157;
  v198 = type metadata accessor for DataFrame(0);
  v188 = *(v198 - 8);
  v39 = *(v188 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v178 = v157;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v177 = v157;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v168 = v157;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v180 = v157;
  v192 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v192 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v197 = v157;
  v182 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v182 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v171 = v157;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v164 = v157;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v161 = v157;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v193._object = v157;
  v186 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v183 = *(v186 - 8);
  v60 = *(v183 + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v187 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v63 = *(v187 + 9);
  v64 = v7 + v63;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v65 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v66 = *(v65 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v157);
  v67 = *(v65 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v157);
  (*(v183 + 8))(v157, v186);
  v68 = v179;
  *(v179 + v63) = 0;
  v69 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v183 = v64;
  swift_storeEnumTagMultiPayload(v64, v69, 1);
  v70 = *(v187 + 10);
  v186 = v68 + v70;
  v165 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v71 = swift_allocError(&type metadata for MLCreateError, v165, 0, 0);
  *v72 = 0xD0000000000000C0;
  *(v72 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v72 + 16) = 0;
  *(v72 + 32) = 0;
  *(v72 + 48) = 0;
  *(v68 + v70) = v71;
  v176 = v69;
  swift_storeEnumTagMultiPayload(v186, v69, 2);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v195 + 8, &v159, &demangling cache variable for type metadata for Any?);
  if (!v160)
  {
    BUG();
  }

  object = v193._object;
  v74 = v193._object + *(v182 + 48);
  outlined init with take of Any(&v159, v158);
  swift_dynamicCast(v197, v158, &type metadata for Any + 8, v192, 7);
  v75 = v194;
  v76 = v189;
  MLLogisticRegressionClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(object, v74, v194);
  if (v76)
  {
    _;
    v199;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
    (*(v188 + 8))(v75, v198);
    v77 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData;
    v78 = v197;
LABEL_4:
    outlined destroy of MLActivityClassifier.ModelParameters(v78, v77);
LABEL_6:
    outlined destroy of MLActivityClassifier.ModelParameters(v183, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v186, type metadata accessor for MLClassifierMetrics);
  }

  v189 = v74;
  outlined destroy of MLActivityClassifier.ModelParameters(v197, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  v79 = v199;
  v80 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(object, v193._countAndFlagsBits, _, v199);
  v197 = 0;
  v192 = v80;
  v79;
  v82 = object;
  v83 = v161;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v82, v161, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v84 = v83 + *(v182 + 48);
  v85 = v198;
  if (__swift_getEnumTagSinglePayload(v84, 1, v198) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v84, &demangling cache variable for type metadata for DataFrame?);
    v199 = *(v188 + 8);
    v199(v83, v85);
    v86 = v85;
  }

  else
  {
    v92 = v84;
    v93 = v188;
    (*(v188 + 32))(v180, v92, v85);
    v199 = *(v93 + 8);
    v199(v83, v85);
    v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v94, v157);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v193._countAndFlagsBits;
    v96 = _;
    inited[5] = _;
    v96;
    DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(("Algorithm type: " + 0x8000000000000000), 0xD00000000000001CLL));
    if (v97)
    {
      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      _;
      v192;
      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
      v98 = v198;
      v99 = v199;
      v199(v194, v198);
      v99(v180, v98);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      goto LABEL_6;
    }

    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
    v109 = swift_allocObject(v108, 48, 7);
    v109[2] = 2;
    v109[3] = 4;
    v109[4] = &type metadata for String;
    v109[5] = &type metadata for Int;
    v110._countAndFlagsBits = v193._countAndFlagsBits;
    v110._object = _;
    v111 = v180;
    DataFrame.validateColumnTypes(_:_:context:)(v110, v109, __PAIR128__(("Algorithm type: " + 0x8000000000000000), 0xD00000000000001CLL));
    if (v112)
    {
      _;
      v192;
      v109;
      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
      v113 = v111;
      v114 = v198;
      v115 = v199;
      v199(v194, v198);
      v115(v113, v114);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      goto LABEL_6;
    }

    v197 = 0;
    v118 = v111;
    v119 = v198;
    v199(v118, v198);
    v120 = v109;
    v86 = v119;
    v120;
  }

  DataFrame.subscript.getter(v193._countAndFlagsBits, _);
  v87 = v164;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, v164, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v88 = v163;
  outlined init with take of DataFrame?(v87 + *(v182 + 48), v163, &demangling cache variable for type metadata for DataFrame?);
  v89 = v86;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, 1, v86);
  v91 = v162;
  if (EnumTagSinglePayload == 1)
  {
    v199(v87, v89);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v91, 1, 1, v174);
  }

  else
  {
    DataFrame.subscript.getter(v193._countAndFlagsBits, _);
    v100 = v88;
    v101 = v199;
    v199(v100, v89);
    __swift_storeEnumTagSinglePayload(v91, 0, 1, v174);
    v101(v87, v89);
  }

  v102 = v91;
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v195, v158);
  v103 = _;
  _;
  v104 = v192;
  v192;
  v105 = v190;
  v106 = v197;
  MLLogisticRegressionClassifier.Classifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:parameters:)(v184, v102, v193._countAndFlagsBits, v103, v104, v158);
  v197 = v106;
  if (v106)
  {
    v103;
    v104;
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
    v199(v194, v198);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    goto LABEL_6;
  }

  if (*(*(v105 + 104) + 16) <= 1uLL)
  {
    _;
    v192;
    v116 = v165;
    swift_allocError(&type metadata for MLCreateError, v165, 0, 0);
    *v117 = 0xD000000000000027;
    *(v117 + 8) = "onClassifier\n\nParameters\n" + 0x8000000000000000;
    *(v117 + 16) = 0;
    *(v117 + 32) = 0;
    *(v117 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v116);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
    v199(v194, v198);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v77 = type metadata accessor for MLLogisticRegressionClassifier.Classifier;
    v78 = v105;
    goto LABEL_4;
  }

  v107 = v191;
  MLLogisticRegressionClassifier.Classifier.fitted(to:validateOn:eventHandler:)(v193._object, v189, 0, 0);
  v121 = v187;
  v122 = *(v187 + 6);
  v123 = v179;
  *(v179 + v122) = v193._countAndFlagsBits;
  *(v123 + v122 + 8) = _;
  v189 = (v123 + v121[8]);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v195, v189);
  *(v123 + v121[7]) = v192;
  outlined init with copy of MLTrainingSessionParameters(v107, v175, type metadata accessor for MLLogisticRegressionClassifier.Model);
  v124 = *(v167 + 80);
  v125 = ~*(v167 + 80) & (v124 + 16);
  v126 = swift_allocObject(&unk_390CC0, v125 + v166, v124 | 7);
  outlined init with take of MLClassifierMetrics(v175, v126 + v125, type metadata accessor for MLLogisticRegressionClassifier.Model);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v126);
  v128 = v127;

  v129 = *(v187 + 5);
  v187 = v128;
  *(v123 + v129) = v128;
  outlined init with copy of MLTrainingSessionParameters(v191, v123, type metadata accessor for MLLogisticRegressionClassifier.Model);
  v130 = v168;
  MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v193._object, 0, 0);
  v197 = 0;
  v132 = *v191;
  v133 = v191[1];
  DataFrame.subscript.getter(*v191, v133);
  v184 = v132;
  v134 = v132;
  v193._countAndFlagsBits = v133;
  v135 = v193._object;
  DataFrame.subscript.getter(v134, v133);
  v136 = v169;
  AnyClassificationMetrics.init(_:_:)(v185, v181);
  v137 = v130;
  v138 = v198;
  v199(v137, v198);
  v139 = v170;
  outlined init with take of MLClassifierMetrics(v136, v170, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v139, v176, 0);
  outlined assign with take of MLClassifierMetrics(v139, v183);
  v140 = v171;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v135, v171, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v141 = v140 + *(v182 + 48);
  if (__swift_getEnumTagSinglePayload(v141, 1, v138) == 1)
  {
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
    v142 = v198;
    v143 = v199;
    v199(v194, v198);
    outlined destroy of MLActivityClassifier.ModelParameters(v191, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of MLActivityClassifier.ModelParameters(v190, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v141, &demangling cache variable for type metadata for DataFrame?);
    return v143(v140, v142);
  }

  else
  {
    v144 = v177;
    v145 = v141;
    v146 = v198;
    (*(v188 + 32))(v177, v145, v198);
    v147 = v199;
    v199(v140, v146);
    v148 = v197;
    MLLogisticRegressionClassifier.Model.applied(to:eventHandler:)(v144, 0, 0);
    if (v148)
    {
      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
      v149 = v198;
      v147(v194, v198);
      v147(v144, v149);
      v131 = v190;
      outlined destroy of MLActivityClassifier.ModelParameters(v191, type metadata accessor for MLLogisticRegressionClassifier.Model);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v179, type metadata accessor for MLLogisticRegressionClassifier.Model);
      v192;
      _;

      outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v189);
      goto LABEL_6;
    }

    v199 = v147;
    v150 = v184;
    v197 = 0;
    DataFrame.subscript.getter(v184, v193._countAndFlagsBits);
    v151 = v181;
    DataFrame.subscript.getter(v150, v193._countAndFlagsBits);
    v152 = v172;
    AnyClassificationMetrics.init(_:_:)(v185, v151);
    v153 = v198;
    v154 = v199;
    v199(v178, v198);
    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v195);
    v154(v194, v153);
    v154(v177, v153);
    outlined destroy of MLActivityClassifier.ModelParameters(v191, type metadata accessor for MLLogisticRegressionClassifier.Model);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v193._object, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v155 = v152;
    v156 = v173;
    outlined init with take of MLClassifierMetrics(v155, v173, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v156, v176, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v190, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
    return outlined assign with take of MLClassifierMetrics(v156, v186);
  }
}

uint64_t closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, void (*a4)(void (*)(uint64_t *, uint64_t, uint64_t), uint64_t), uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(a5, &v11);
  MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLLogisticRegressionClassifier.ModelParameters(a5);
}

uint64_t MLLogisticRegressionClassifier.init(checkpoint:)(uint64_t a1)
{
  v81 = v2;
  v99 = a1;
  v3 = v1;
  v95 = v1;
  v87 = *(type metadata accessor for MLLogisticRegressionClassifier.Model(0) - 8);
  v4 = *(v87 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v85 = v79;
  v86 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v98 = v79;
  v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifier<Double, Int>.Configuration);
  v83 = *(v82 - 8);
  v9 = *(v83 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v84 = v79;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v88 = v79;
  v94 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v14 = *(*(v94 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v90 = v79;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v96 = v79;
  v89 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(0);
  v19 = *(*(v89 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v97 = v79;
  v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v92 = *(v100 - 8);
  v22 = *(v92 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v93 = *(v25 + 36);
  v26 = v3 + v93;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v27 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v28 = *(v27 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v79);
  v29 = *(v27 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v79);
  (*(v92 + 8))(v79, v100);
  v30 = v95;
  *(v95 + v93) = 0;
  v100 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v92 = v26;
  swift_storeEnumTagMultiPayload(v26, v100, 1);
  v91 = v25;
  v31 = *(v25 + 40);
  v32 = v30 + v31;
  v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v34 = swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
  *v35 = 0xD0000000000000C0;
  *(v35 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v35 + 16) = 0;
  *(v35 + 32) = 0;
  *(v35 + 48) = 0;
  *(v95 + v31) = v34;
  v93 = v32;
  swift_storeEnumTagMultiPayload(v32, v100, 2);
  switch(*(v99 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v100 = v33;
      v36 = 0x696C616974696E69;
      v37 = 0xEB0000000064657ALL;
      break;
    case 1:
      v100 = v33;
      v36 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      v38 = v97;
      v39 = v96;
      goto LABEL_9;
    case 3:
      v100 = v33;
      v36 = 0x697461756C617665;
LABEL_7:
      v37 = 0xEA0000000000676ELL;
      break;
    case 4:
      v100 = v33;
      v37 = 0xEB00000000676E69;
      v36 = 0x636E657265666E69;
      break;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)(v36, v37, 0x676E696E69617274, 0xE800000000000000, 0);
  v37;
  v41 = (v40 & 1) == 0;
  v38 = v97;
  v39 = v96;
  if (v41)
  {
    v59 = v100;
    swift_allocError(&type metadata for MLCreateError, v100, 0, 0);
    *v60 = 0xD000000000000049;
    *(v60 + 8) = "ds at least two labels." + 0x8000000000000000;
    *(v60 + 16) = 0;
    *(v60 + 32) = 0;
    *(v60 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v59);
    v57 = type metadata accessor for MLCheckpoint;
    v58 = v99;
  }

  else
  {
LABEL_9:
    *v38 = 0;
    *(v38 + 8) = 0xE000000000000000;
    *(v38 + 16) = _swiftEmptyArrayStorage;
    *v39 = 0;
    *(v39 + 16) = 256;
    v42 = v94;
    swift_storeEnumTagMultiPayload(v39, v94, 0);
    v100 = v38 + 32;
    *(v38 + 48) = 0;
    *(v38 + 32) = 0;
    *(v38 + 24) = 10;
    *(v38 + 64) = _mm_loadh_ps(&qword_33FD10);
    *(v38 + 80) = xmmword_33FD20;
    *(v38 + 96) = 1;
    v43 = v39;
    v44 = v90;
    outlined init with copy of MLTrainingSessionParameters(v43, v90, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
    v80 = v42;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v79);
    outlined init with take of MLClassifierMetrics(v44, boxed_opaque_existential_0, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
    outlined assign with take of Any?(v79, v100);
    outlined destroy of MLActivityClassifier.ModelParameters(v96, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
    *(v38 + 104) = _swiftEmptyArrayStorage;
    *(v38 + 112) = 1;
    *(v38 + 120) = _swiftEmptyArrayStorage;
    *(v38 + 128) = 0xD000000000000013;
    *(v38 + 136) = "raining samples." + 0x8000000000000000;
    v46 = lazy protocol witness table accessor for type Double and conformance Double();
    v47 = v88;
    LogisticRegressionClassifier.Configuration.init()(&type metadata for Double, &type metadata for Int, &protocol witness table for Double, v46, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int, &protocol witness table for Int);
    v48 = v84;
    v49 = v47;
    v50 = v82;
    v51 = v83;
    (*(v83 + 16))(v84, v49, v82);
    v52 = *(v89 + 36);
    BaseLogisticRegressionClassifier.init(configuration:)(v48);
    (*(v51 + 8))(v88, v50);
    v53 = lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier();
    v54 = v98;
    v55 = v99;
    v56 = v81;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v99, v89, v53);
    if (!v56)
    {
      v61 = v85;
      outlined init with copy of MLTrainingSessionParameters(v54, v85, type metadata accessor for MLLogisticRegressionClassifier.Model);
      v62 = *(v87 + 80);
      v63 = ~*(v87 + 80) & (v62 + 16);
      v64 = swift_allocObject(&unk_390CE8, v63 + v86, v62 | 7);
      outlined init with take of MLClassifierMetrics(v61, v64 + v63, type metadata accessor for MLLogisticRegressionClassifier.Model);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLogisticRegressionClassifier.init(checkpoint:), v64);
      v66 = v65;

      v67 = v91;
      v68 = v95;
      *(v95 + *(v91 + 20)) = v66;
      outlined init with copy of MLTrainingSessionParameters(v98, v68, type metadata accessor for MLLogisticRegressionClassifier.Model);
      v69 = v96;
      *v96 = 0;
      *(v69 + 16) = 256;
      swift_storeEnumTagMultiPayload(v69, v94, 0);
      v70 = *(v67 + 32) + v68 + 8;
      *(v70 + 16) = 0;
      *v70 = 0;
      v71 = _mm_loadh_ps(&qword_33FD10);
      *(v70 - 8) = 10;
      *(v70 + 32) = v71;
      *(v70 + 48) = xmmword_33FD20;
      *(v70 + 64) = 1;
      v72 = v90;
      outlined init with copy of MLTrainingSessionParameters(v69, v90, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
      v80 = v94;
      v73 = __swift_allocate_boxed_opaque_existential_0(v79);
      outlined init with take of MLClassifierMetrics(v72, v73, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
      outlined assign with take of Any?(v79, v70);
      outlined destroy of MLActivityClassifier.ModelParameters(v69, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
      v74 = v91;
      v75 = *(v91 + 24);
      v76 = v95;
      *(v95 + v75) = 0;
      *(v76 + v75 + 8) = 0xE000000000000000;
      v77 = v76;
      outlined destroy of MLActivityClassifier.ModelParameters(v99, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v98, type metadata accessor for MLLogisticRegressionClassifier.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v97, type metadata accessor for MLLogisticRegressionClassifier.Classifier);
      result = *(v74 + 28);
      *(v77 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v55, type metadata accessor for MLCheckpoint);
    v57 = type metadata accessor for MLLogisticRegressionClassifier.Classifier;
    v58 = v38;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
  outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLClassifierMetrics);
  return outlined destroy of MLActivityClassifier.ModelParameters(v93, type metadata accessor for MLClassifierMetrics);
}

uint64_t closure #1 in MLLogisticRegressionClassifier.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLLogisticRegressionClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLogisticRegressionClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLLogisticRegressionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLogisticRegressionClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLLogisticRegressionClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  result = static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLogisticRegressionClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v62 = v6;
  v57 = a6;
  v49 = a4;
  v50 = a3;
  v51 = a2;
  v58 = a1;
  v8 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v54 = &v44;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v55 = &v44;
  v59 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v13 = *(*(v59 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v60 = &v44;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v56 = &v44;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v61 = &v44;
  v52 = a5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a5 + 8, &v44, &demangling cache variable for type metadata for Any?);
  if (!v45)
  {
    BUG();
  }

  v53 = v16;
  v24 = v61;
  v25 = v61 + *(v16 + 48);
  v26 = &v46;
  outlined init with take of Any(&v44, &v46);
  swift_dynamicCast(&v44, &v46, &type metadata for Any + 8, v59, 7);
  v27 = v62;
  MLLogisticRegressionClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v24, v25, v58);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  if (!v27)
  {
    v28 = v61;
    v29 = v56;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, v56, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v53;
    v62 = v29 + *(v53 + 48);
    v31 = v28;
    v32 = v60;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v60, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v33 = v32 + *(v30 + 48);
    outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v52, &v46);
    outlined init with copy of MLTrainingSessionParameters(v57, v55, type metadata accessor for MLTrainingSessionParameters);
    v34 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v59 = v34;
    v58 = swift_allocObject(v34, v35, v36);
    v37 = v49;
    v49;
    v38 = v50;
    v50;
    v39 = LogisticRegressionClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:modelParameters:sessionParameters:)(v56, v33, v51, v38, v37, &v46, v55);
    v40 = type metadata accessor for DataFrame(0);
    (*(*(v40 - 8) + 8))(v60, v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for DataFrame?);
    v47 = v59;
    v48 = &protocol witness table for LogisticRegressionClassifierTrainingSessionDelegate;
    *&v46 = v39;
    v41 = v54;
    outlined init with copy of MLTrainingSessionParameters(v57, v54, type metadata accessor for MLTrainingSessionParameters);
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>);
    swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

    v26 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v46, v41, 8);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v26;
}

uint64_t static MLLogisticRegressionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = LogisticRegressionClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for LogisticRegressionClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLLogisticRegressionClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *))
{
  v16 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  if (a2)
  {
    v14[0] = a1;
    swift_storeEnumTagMultiPayload(v14, v6, 1);
    swift_errorRetain(a1);
    v16(v14);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v14);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v11 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v15, v14, v10, v11, 7);
    v12 = v15;

    _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML30MLLogisticRegressionClassifierV_s5Error_pTt1g503_s8c4ML30efg80V12handleResult33_66687B25F10324110578427E448BFE6CLL_7session7fulfillys0G0Oyyts5H55_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZACyKXEfU_AE08Logisticfg8TrainingW8DelegateCTf1nc_n(v12);
    v16(v14);
  }

  return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v14, &demangling cache variable for type metadata for Result<MLLogisticRegressionClassifier, Error>);
}

uint64_t MLLogisticRegressionClassifier.init(delegate:)(uint64_t a1)
{
  v62 = a1;
  v60 = v1;
  v59 = type metadata accessor for MLClassifierMetrics(0);
  v3 = *(*(v59 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v57 = v46;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLClassifierMetrics?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v56 = v46;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v55 = v46;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v52 = v46;
  v61 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v14 = *(*(v61 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v53 = v46;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters(0);
  v21 = *(*(v20 - 1) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, v48, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, v46, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v46, 1, v20) == 1)
  {
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v46, v46, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(&v46[v20[8]], v51);
  v25 = v20[6];
  v54 = *&v46[v25];
  v26 = *&v46[v25 + 8];
  v27 = v20[7];
  v58 = v46;
  v28 = *&v46[v27];
  v29 = v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  swift_beginAccess(v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, v49, 0, 0);
  v30 = v52;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, v52, &demangling cache variable for type metadata for MLLogisticRegressionClassifier.Model?);
  v31 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    BUG();
  }

  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters(v51, v47);
  v26;
  v28;
  v32 = v26;
  v33 = v53;
  MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(v30, v54, v32, v28, v47);
  if (v2)
  {

    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v51);
    return outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
  }

  else
  {
    v35 = v33;
    v36 = v60;
    outlined init with take of MLClassifierMetrics(v35, v60, type metadata accessor for MLLogisticRegressionClassifier);
    v37 = v62;
    v38 = v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
    swift_beginAccess(v62 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, v47, 0, 0);
    v39 = v38;
    v40 = v55;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, v55, &demangling cache variable for type metadata for MLClassifierMetrics?);
    if (__swift_getEnumTagSinglePayload(v40, 1, v59) == 1)
    {
      BUG();
    }

    outlined destroy of MLLogisticRegressionClassifier.ModelParameters(v51);
    outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLLogisticRegressionClassifier.PersistentParameters);
    outlined assign with take of MLClassifierMetrics(v40, v36 + *(v61 + 36));
    v41 = v37 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
    swift_beginAccess(v37 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, v50, 0, 0);
    v42 = v41;
    v43 = v56;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, v56, &demangling cache variable for type metadata for MLClassifierMetrics?);

    if (__swift_getEnumTagSinglePayload(v43, 1, v59) == 1)
    {
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v43, &demangling cache variable for type metadata for MLClassifierMetrics?);
    }

    else
    {
      v44 = v43;
      v45 = v57;
      outlined init with take of MLClassifierMetrics(v44, v57, type metadata accessor for MLClassifierMetrics);
      return outlined assign with take of MLClassifierMetrics(v45, *(v61 + 40) + v60);
    }
  }
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t outlined assign with take of MLClassifierMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier()
{
  result = lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier)
  {
    v1 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLogisticRegressionClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier)
  {
    v1 = type metadata accessor for MLLogisticRegressionClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLLogisticRegressionClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLLogisticRegressionClassifier.Classifier and conformance MLLogisticRegressionClassifier.Classifier = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLogisticRegressionClassifier.init(checkpoint:)(a1);
}

id sub_DABCD()
{
  v1 = v0;
  result = MLLogisticRegressionClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    *a1 = *a2;
    v6 = a2[1];
    v4[1] = v6;
    v7 = a2[2];
    v6;
    if (v7)
    {
      v4[2] = v7;
      v4[3] = a2[3];
      v8 = a2[4];
      v4[4] = v8;
      v7;
      v8;
    }

    else
    {
      v4[4] = a2[4];
      *(v4 + 1) = *(a2 + 1);
    }

    v10 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
    (*(*(v12 - 8) + 16))(v4 + v11, a2 + v11, v12);
    v13 = *(v10 + 28);
    v14 = *(a2 + v13);
    v15 = *(a2 + v13 + 8);
    *(v4 + v13) = v14;
    *(v4 + v13 + 8) = v15;
    v16 = a3[5];
    v57 = *(a2 + v16);
    *(v4 + v16) = v57;
    v17 = a3[6];
    *(v4 + v17) = *(a2 + v17);
    v18 = *(a2 + v17 + 8);
    *(v4 + v17 + 8) = v18;
    v19 = a3[7];
    v59 = *(a2 + v19);
    *(v4 + v19) = v59;
    v20 = a3[8];
    v68 = v4 + v20;
    v63 = a2 + v20;
    v21 = (a2 + v20 + 8);
    v65 = (v4 + v20 + 8);
    *(v4 + v20) = *(a2 + v20);
    v22 = *(a2 + v20 + 32);
    v14;
    v57;
    v18;
    v59;
    if (v22)
    {
      *(v68 + 4) = v22;
      (**(v22 - 8))(v65, v21, v22);
    }

    else
    {
      v23 = *v21;
      v65[1] = v21[1];
      *v65 = v23;
    }

    *(v68 + 40) = *(v63 + 40);
    *(v68 + 56) = *(v63 + 56);
    v68[72] = v63[72];
    v24 = a3[9];
    v25 = (v4 + v24);
    v26 = a2 + v24;
    v64 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v64);
    if (EnumCaseMultiPayload == 2)
    {
      v32 = v25;
      v33 = *v26;
      swift_errorRetain(*v26);
      *v32 = v33;
      v25 = v32;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v25 = *v26;
      v58 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v66 = v25;
      v28 = v58[5];
      v56 = v66 + v28;
      v29 = type metadata accessor for DataFrame(0);
      v60 = *(*(v29 - 8) + 16);
      v30 = &v26[v28];
      v25 = v66;
      v60(v56, v30, v29);
      v31 = v29;
      EnumCaseMultiPayload = 1;
      v60(v66 + v58[6], &v26[v58[6]], v31);
    }

    else
    {
      v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v34 = swift_getEnumCaseMultiPayload(v26, v69);
      v67 = v34 == 1;
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v34 == 1)
      {
        v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
      (*(*(v36 - 8) + 16))(v25, v26, v36);
      swift_storeEnumTagMultiPayload(v25, v69, v67);
    }

    swift_storeEnumTagMultiPayload(v25, v64, EnumCaseMultiPayload);
    v37 = a3[10];
    v38 = (v4 + v37);
    v39 = (a2 + v37);
    v40 = swift_getEnumCaseMultiPayload(v39, v64);
    if (v40 == 2)
    {
      v45 = *v39;
      swift_errorRetain(v45);
      *v38 = v45;
      v55 = 2;
    }

    else
    {
      if (v40 != 1)
      {
        v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v50 = swift_getEnumCaseMultiPayload(v39, v49);
        v51 = v50 == 1;
        v52 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v50 == 1)
        {
          v52 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v53 = __swift_instantiateConcreteTypeFromMangledName(v52);
        (*(*(v53 - 8) + 16))(v38, v39, v53);
        swift_storeEnumTagMultiPayload(v38, v49, v51);
        v47 = v38;
        v48 = v64;
        v46 = 0;
        goto LABEL_24;
      }

      *v38 = *v39;
      v62 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v41 = *(v62 + 20);
      v70 = v38 + v41;
      v42 = type metadata accessor for DataFrame(0);
      v43 = v39 + v41;
      v44 = *(*(v42 - 8) + 16);
      v44(v70, v43, v42);
      v44(v38 + *(v62 + 24), v39 + *(v62 + 24), v42);
      v55 = 1;
    }

    v46 = v55;
    v47 = v38;
    v48 = v64;
LABEL_24:
    swift_storeEnumTagMultiPayload(v47, v48, v46);
    return v4;
  }

  v9 = *a2;
  *v4 = *a2;
  v4 = (v9 + ((v5 + 16) & ~v5));

  return v4;
}

uint64_t destroy for MLLogisticRegressionClassifier(void *a1, int *a2)
{
  a1[1];
  v4 = a1[2];
  if (v4)
  {
    v4;
    a1[4];
  }

  v5 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v6 = a1 + *(v5 + 24);
  v7 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v7 - 8) + 8))(v6, v7);
  *(a1 + *(v5 + 28));

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v8 = a2[8];
  if (*(a1 + v8 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v8 + 8));
  }

  v9 = a1 + a2[9];
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
      v29 = v10;
      v15 = type metadata accessor for DataFrame(0);
      v16 = v14;
      v17 = *(*(v15 - 8) + 8);
      v17(v16, v15);
      v18 = v15;
      v10 = v29;
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

  v20 = (a1 + a2[10]);
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

void *initializeWithCopy for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  v4;
  if (v5)
  {
    a1[2] = v5;
    a1[3] = a2[3];
    v6 = a2[4];
    a1[4] = v6;
    v5;
    v6;
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = *(v7 + 28);
  v11 = *(a2 + v10);
  v12 = *(a2 + v10 + 8);
  *(a1 + v10) = v11;
  *(a1 + v10 + 8) = v12;
  v13 = a3[5];
  v53 = *(a2 + v13);
  *(a1 + v13) = v53;
  v14 = a3[6];
  *(a1 + v14) = *(a2 + v14);
  v15 = a1;
  v16 = *(a2 + v14 + 8);
  *(a1 + v14 + 8) = v16;
  v17 = a3[7];
  v59 = *(a2 + v17);
  *(a1 + v17) = v59;
  v18 = a3[8];
  v19 = a1 + v18;
  v57 = a2 + v18;
  v20 = (a2 + v18 + 8);
  v52 = v15;
  v21 = (v15 + v18 + 8);
  *(v15 + v18) = *(a2 + v18);
  v22 = *(a2 + v18 + 32);
  v11;
  v53;
  v16;
  v59;
  if (v22)
  {
    *(v19 + 4) = v22;
    (**(v22 - 8))(v21, v20, v22);
  }

  else
  {
    v23 = *v20;
    v21[1] = v20[1];
    *v21 = v23;
  }

  *(v19 + 40) = *(v57 + 40);
  *(v19 + 56) = *(v57 + 56);
  v19[72] = v57[72];
  v24 = a3[9];
  v25 = v52 + v24;
  v26 = a2 + v24;
  v58 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v58);
  if (EnumCaseMultiPayload == 2)
  {
    v32 = *v26;
    swift_errorRetain(*v26);
    *v25 = v32;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v25 = *v26;
    v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v28 = *(v60 + 20);
    v54 = &v25[v28];
    v29 = type metadata accessor for DataFrame(0);
    v30 = &v26[v28];
    v31 = *(*(v29 - 8) + 16);
    v31(v54, v30, v29);
    v31(&v25[*(v60 + 24)], &v26[*(v60 + 24)], v29);
  }

  else
  {
    v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v26, v61);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 16))(v25, v26, v36);
    swift_storeEnumTagMultiPayload(v25, v61, v34);
  }

  swift_storeEnumTagMultiPayload(v25, v58, EnumCaseMultiPayload);
  v37 = a3[10];
  v38 = v52 + v37;
  v39 = a2 + v37;
  v40 = swift_getEnumCaseMultiPayload(a2 + v37, v58);
  if (v40 == 2)
  {
    v45 = *v39;
    swift_errorRetain(v45);
    *v38 = v45;
  }

  else if (v40 == 1)
  {
    *v38 = *v39;
    v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v63 + 20);
    v56 = &v38[v41];
    v42 = type metadata accessor for DataFrame(0);
    v43 = &v39[v41];
    v44 = *(*(v42 - 8) + 16);
    v44(v56, v43, v42);
    v44(&v38[*(v63 + 24)], &v39[*(v63 + 24)], v42);
  }

  else
  {
    v64 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v46 = v39;
    v47 = swift_getEnumCaseMultiPayload(v39, v64);
    v48 = v47 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 16))(v38, v46, v50);
    swift_storeEnumTagMultiPayload(v38, v64, v48);
  }

  swift_storeEnumTagMultiPayload(v38, v58, v40);
  return v52;
}

void *assignWithCopy for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v4;
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (v9)
    {
      a1[2] = v9;
      v9;
      v8;
      v10 = a2;
      a1[3] = a2[3];
      v11 = a2[4];
      v12 = a1[4];
      a1[4] = v11;
      v11;
      v12;
      goto LABEL_9;
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
    *v6 = *v7;
    a1[4] = a2[4];
  }

  else
  {
    if (v9)
    {
      a1[2] = v9;
      v10 = a2;
      a1[3] = a2[3];
      v13 = a2[4];
      a1[4] = v13;
      v9;
      v13;
      goto LABEL_9;
    }

    a1[4] = a2[4];
    *v6 = *v7;
  }

  v10 = a2;
LABEL_9:
  v14 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v16 - 8) + 24))(a1 + v15, &v10[v15], v16);
  v17 = *(v14 + 28);
  v18 = *&v10[v17];
  v19 = v10[v17 + 8];
  v20 = *(a1 + v17);
  *(a1 + v17) = v18;
  *(a1 + v17 + 8) = v19;
  v18;
  v20;
  v21 = a3[5];
  v22 = *&v10[v21];
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v22;

  v24 = a3[6];
  *(a1 + v24) = *&v10[v24];
  v25 = *&v10[v24 + 8];
  v26 = *(a1 + v24 + 8);
  *(a1 + v24 + 8) = v25;
  v25;
  v26;
  v27 = a3[7];
  v28 = *&v10[v27];
  v29 = *(a1 + v27);
  *(a1 + v27) = v28;
  v28;
  v29;
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = v10;
  v33 = &v10[v30];
  v34 = v32 + v30 + 8;
  v35 = (a1 + v30 + 8);
  *(a1 + v30) = *(v32 + v30);
  v36 = *(v32 + v30 + 32);
  if (*(a1 + v30 + 32))
  {
    if (v36)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + v30 + 8), v34);
      goto LABEL_16;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v30 + 8));
  }

  else if (v36)
  {
    *(v31 + 4) = v36;
    (**(v36 - 8))(v35, v34);
    goto LABEL_16;
  }

  v37 = *v34;
  v35[1] = *(v34 + 16);
  *v35 = v37;
LABEL_16:
  *(v31 + 5) = *(v33 + 5);
  *(v31 + 6) = *(v33 + 6);
  *(v31 + 7) = *(v33 + 7);
  *(v31 + 8) = *(v33 + 8);
  v31[72] = v33[72];
  v38 = a2;
  if (a1 != a2)
  {
    v39 = a3[9];
    v40 = (a1 + v39);
    v41 = (a2 + v39);
    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLClassifierMetrics.Contents);
    v42 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v41, v42);
    v67 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v47 = *v41;
      swift_errorRetain(v47);
      *v40 = v47;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v40 = *v41;
      v72 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v69 = v42;
      v44 = *(v72 + 20);
      v65 = v40 + v44;
      v66 = type metadata accessor for DataFrame(0);
      v45 = *(*(v66 - 8) + 16);
      v46 = v41 + v44;
      v42 = v69;
      v45(v65, v46, v66);
      v45(v40 + *(v72 + 24), v41 + *(v72 + 24), v66);
      v38 = a2;
    }

    else
    {
      v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v48 = swift_getEnumCaseMultiPayload(v41, v70);
      v73 = v48 == 1;
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v48 == 1)
      {
        v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
      (*(*(v50 - 8) + 16))(v40, v41, v50);
      swift_storeEnumTagMultiPayload(v40, v70, v73);
    }

    swift_storeEnumTagMultiPayload(v40, v42, v67);
    v51 = a3[10];
    v52 = (a1 + v51);
    v53 = (v38 + v51);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v51, type metadata accessor for MLClassifierMetrics.Contents);
    v54 = swift_getEnumCaseMultiPayload(v53, v42);
    if (v54 == 2)
    {
      v59 = *v53;
      swift_errorRetain(v59);
      *v52 = v59;
    }

    else
    {
      v76 = v54;
      if (v54 == 1)
      {
        *v52 = *v53;
        v68 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v55 = *(v68 + 20);
        v74 = v52 + v55;
        v71 = v42;
        v56 = type metadata accessor for DataFrame(0);
        v78 = *(*(v56 - 8) + 16);
        v57 = v53 + v55;
        v54 = 1;
        v78(v74, v57, v56);
        v58 = v56;
        v42 = v71;
        v78(v52 + *(v68 + 24), v53 + *(v68 + 24), v58);
      }

      else
      {
        v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v60 = swift_getEnumCaseMultiPayload(v53, v79);
        v61 = v60 == 1;
        v62 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v60 == 1)
        {
          v62 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v63 = __swift_instantiateConcreteTypeFromMangledName(v62);
        (*(*(v63 - 8) + 16))(v52, v53, v63);
        swift_storeEnumTagMultiPayload(v52, v79, v61);
        v54 = v76;
      }
    }

    swift_storeEnumTagMultiPayload(v52, v42, v54);
  }

  return a1;
}

uint64_t initializeWithTake for MLLogisticRegressionClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(v5 + 28);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x49uLL);
  v47 = a3;
  v9 = a3[9];
  v10 = (v9 + a1);
  v11 = (a2 + v9);
  v12 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v11, v12);
  if (EnumCaseMultiPayload == 1)
  {
    *v10 = *v11;
    v45 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v21 = *(v45 + 20);
    v46 = &v10[v21];
    v51 = v12;
    v22 = type metadata accessor for DataFrame(0);
    v23 = &v11[v21];
    v24 = *(*(v22 - 8) + 32);
    v24(v46, v23, v22);
    v25 = v22;
    v12 = v51;
    v24(&v10[*(v45 + 24)], &v11[*(v45 + 24)], v25);
    v20 = 1;
    v18 = v10;
    v19 = v51;
LABEL_7:
    swift_storeEnumTagMultiPayload(v18, v19, v20);
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v14 = swift_getEnumCaseMultiPayload(v11, v50);
    v15 = v14 == 1;
    v16 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v14 == 1)
    {
      v16 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledName(v16);
    (*(*(v17 - 8) + 32))(v10, v11, v17);
    swift_storeEnumTagMultiPayload(v10, v50, v15);
    v18 = v10;
    v19 = v12;
    v20 = 0;
    goto LABEL_7;
  }

  memcpy(v10, v11, *(*(v12 - 8) + 64));
LABEL_9:
  v26 = v47[10];
  v27 = (a1 + v26);
  v28 = (v26 + a2);
  v29 = swift_getEnumCaseMultiPayload(v28, v12);
  if (v29 == 1)
  {
    *v27 = *v28;
    v39 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v52 = v12;
    v40 = *(v39 + 20);
    v48 = &v27[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v28[v40];
    v43 = *(*(v41 - 8) + 32);
    v43(v48, v42, v41);
    v43(&v27[*(v39 + 24)], &v28[*(v39 + 24)], v41);
    v38 = 1;
    v36 = v27;
    v37 = v52;
  }

  else
  {
    if (v29)
    {
      memcpy(v27, v28, *(*(v12 - 8) + 64));
      return a1;
    }

    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v28, v30);
    v32 = v12;
    v33 = v31 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 32))(v27, v28, v35);
    swift_storeEnumTagMultiPayload(v27, v30, v33);
    v36 = v27;
    v37 = v32;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v36, v37, v38);
  return a1;
}

void *assignWithTake for MLLogisticRegressionClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1 + 2;
  v6 = a2 + 2;
  v7 = a1[2];
  if (v7)
  {
    v8 = a2[2];
    if (v8)
    {
      a1[2] = v8;
      v7;
      a1[3] = a2[3];
      v9 = a1[4];
      a1[4] = a2[4];
      v9;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
      *v5 = *v6;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v5 = *v6;
  }

  v10 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = *(v10 + 28);
  v14 = *(a2 + v13 + 8);
  v15 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);
  *(a1 + v13 + 8) = v14;
  v15;
  v16 = a3[5];
  v17 = *(a1 + v16);
  *(a1 + v16) = *(a2 + v16);

  v18 = a3[6];
  *(a1 + v18) = *(a2 + v18);
  v19 = *(a1 + v18 + 8);
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  v19;
  v20 = a3[7];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);
  v21;
  v22 = a3[8];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (a2 + v22 + 8);
  v26 = (a1 + v22 + 8);
  *(a1 + v22) = *(a2 + v22);
  if (*(a1 + v22 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v22 + 8));
  }

  v27 = *v25;
  v26[1] = v25[1];
  *v26 = v27;
  *(v23 + 40) = *(v24 + 40);
  *(v23 + 56) = *(v24 + 56);
  v23[72] = v24[72];
  v28 = a2;
  if (a1 == a2)
  {
    return a1;
  }

  v29 = a3[9];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v31, v71);
  if (EnumCaseMultiPayload == 1)
  {
    *v30 = *v31;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v66 + 20);
    v64 = v30 + v41;
    v42 = type metadata accessor for DataFrame(0);
    v43 = *(*(v42 - 8) + 32);
    v44 = v31 + v41;
    v45 = v42;
    v43(v64, v44);
    (v43)(v30 + *(v66 + 24), v31 + *(v66 + 24), v45);
    v28 = a2;
    v40 = 1;
    v37 = v30;
    v38 = v71;
    v39 = v71;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v46 = v31;
      v38 = v71;
      memcpy(v30, v46, *(*(v71 - 8) + 64));
      goto LABEL_17;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v31, v65);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 32))(v30, v31, v36);
    swift_storeEnumTagMultiPayload(v30, v65, v34);
    v37 = v30;
    v38 = v71;
    v39 = v71;
    v40 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v39, v40);
LABEL_17:
  v47 = a3[10];
  v48 = a1 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v38);
  if (v50 == 1)
  {
    *v48 = *v49;
    v70 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v70 + 20);
    v68 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = &v49[v59];
    v62 = *(*(v60 - 8) + 32);
    v62(v68, v61, v60);
    v62(&v48[*(v70 + 24)], &v49[*(v70 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v71;
  }

  else
  {
    if (v50)
    {
      memcpy(v48, v49, *(*(v38 - 8) + 64));
      return a1;
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
    v57 = v71;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return a1;
}

uint64_t sub_DC1CA(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v5 = type metadata accessor for MLClassifierMetrics(0);
    v4 = *(a3 + 36) + a1;
    return __swift_getEnumTagSinglePayload(v4, a2, v5);
  }

  result = 0;
  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return result;
}

uint64_t sub_DC257(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  if (*(*(v7 - 8) + 84) != a3)
  {
    if (a3 == 0x7FFFFFFF)
    {
      result = *(a4 + 20);
      *(a1 + result) = 2 * (a2 - 1);
      return result;
    }

    v7 = type metadata accessor for MLClassifierMetrics(0);
    v6 = *(a4 + 36) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v6, a2, a2, v7);
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier(uint64_t a1)
{
  result = type metadata accessor for MLLogisticRegressionClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_340780;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_340798;
    result = type metadata accessor for MLClassifierMetrics.Contents(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      swift_initStructMetadata(a1, 256, 7, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v11 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v1 = *(v11 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = *(v1 + 64);
  v5 = v3 + v0;
  *(v0 + v3 + 8);
  v6 = *(v0 + v3 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = v4 + v3;
  v8 = v5 + *(v11 + 24);
  v9 = type metadata accessor for BaseLogisticRegressionClassifierModel(0);
  (*(*(v9 - 8) + 8))(v8, v9);
  *(v5 + *(v11 + 28));
  return swift_deallocObject(v0, v7, v2 | 7);
}

uint64_t partial apply for closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLLogisticRegressionClassifier.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLogisticRegressionClassifier.init(_:targetColumn:featureColumns:parameters:)(a1);
}

Class static MLWordTagger.buildOptions(_:)(uint64_t a1)
{
  v42 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for AnyHashable, &type metadata for Any + 8, &protocol witness table for AnyHashable);
  if (!*(a1 + 104))
  {
    if (!kNLPMaximumIterationsKey)
    {
      BUG();
    }

    v1 = *(a1 + 96);
    *&v37 = kNLPMaximumIterationsKey;
    v2 = type metadata accessor for CFStringRef(0);
    v3 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, &protocol conformance descriptor for CFStringRef);
    AnyHashable.init<A>(_:)(&v37, v2, v3);
    v38 = &type metadata for Int;
    *&v37 = v1;
    outlined init with take of Any(&v37, v34);
    v4 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, isUniquelyReferenced_nonNull_native);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = NLModelConfigurationOptionsKeyLanguage;
    *&v37 = NLModelConfigurationOptionsKeyLanguage;
    v39 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v41 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v8 = v6;
    v7;
    AnyHashable.init<A>(_:)(&v37, v39, v41);
    v38 = type metadata accessor for NLLanguage(0);
    *&v37 = v8;
    outlined init with take of Any(&v37, v34);
    v39 = v8;
    v9 = v42;
    v10 = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v9;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v10);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
  }

  v11 = *(a1 + 8);
  v12 = *(a1 + 16) == 0;
  v39 = *a1;
  v13 = NLModelConfigurationOptionsKeyRevision;
  if (v12)
  {
    *&v37 = NLModelConfigurationOptionsKeyRevision;
    v21 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v22 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v13;
    v41 = v21;
    v23 = v21;
    v24 = v22;
    AnyHashable.init<A>(_:)(&v37, v23, v22);
    if (v11)
    {
      specialized Dictionary._Variant.removeValue(forKey:)(v35);
      outlined destroy of AnyHashable(v35);
      outlined destroy of Any?(&v37);
    }

    else
    {
      v38 = &type metadata for Int;
      *&v37 = v39;
      outlined init with take of Any(&v37, v34);
      v25 = v42;
      v26 = swift_isUniquelyReferenced_nonNull_native(v42);
      v40 = v25;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v26);
      v42 = v40;
      outlined destroy of AnyHashable(v35);
    }

    *&v37 = NLModelConfigurationOptionsKeyUseCRF;
    NLModelConfigurationOptionsKeyUseCRF;
    AnyHashable.init<A>(_:)(&v37, v41, v24);
    v38 = &type metadata for Bool;
    LOBYTE(v37) = 1;
    outlined init with take of Any(&v37, v34);
  }

  else
  {
    *&v37 = NLModelConfigurationOptionsKeyRevision;
    v14 = type metadata accessor for NLModelConfigurationOptionsKey(0);
    v41 = v14;
    v33 = v11;
    v15 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type NLModelConfigurationOptionsKey and conformance NLModelConfigurationOptionsKey, type metadata accessor for NLModelConfigurationOptionsKey, &protocol conformance descriptor for NLModelConfigurationOptionsKey);
    v36 = v15;
    v13;
    AnyHashable.init<A>(_:)(&v37, v14, v15);
    v38 = &type metadata for Int;
    *&v37 = v33;
    outlined init with take of Any(&v37, v34);
    v16 = v42;
    v17 = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v17);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
    *&v37 = NLModelConfigurationOptionsKeyUseTransfer;
    NLModelConfigurationOptionsKeyUseTransfer;
    AnyHashable.init<A>(_:)(&v37, v41, v36);
    v38 = &type metadata for Bool;
    LOBYTE(v37) = 1;
    outlined init with take of Any(&v37, v34);
    v18 = v42;
    v19 = swift_isUniquelyReferenced_nonNull_native(v42);
    v40 = v18;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v19);
    v42 = v40;
    outlined destroy of AnyHashable(v35);
    *&v37 = NLModelConfigurationOptionsKeyEmbeddingType;
    if ((v39 & 0xFE) != 0)
    {
      NLModelConfigurationOptionsKeyEmbeddingType;
      AnyHashable.init<A>(_:)(&v37, v41, v36);
      v20 = &NLModelEmbeddingTypeContextual;
    }

    else
    {
      NLModelConfigurationOptionsKeyEmbeddingType;
      AnyHashable.init<A>(_:)(&v37, v41, v36);
      v20 = &NLModelEmbeddingTypeDynamic;
    }

    v27 = *v20;
    v38 = type metadata accessor for NLModelEmbeddingType(0);
    *&v37 = v27;
    outlined init with take of Any(&v37, v34);
    v27;
  }

  v28 = v42;
  v29 = swift_isUniquelyReferenced_nonNull_native(v42);
  v40 = v28;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v34, v35, v29);
  v30 = v40;
  outlined destroy of AnyHashable(v35);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v30;
  return isa;
}

void *implicit closure #1 in closure #1 in closure #3 in static MLWordTagger.createWordTaggerModel<A, B>(trainingExamples:validatingExamples:modelParameters:)(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * a2);
  v2;
  return v2;
}

uint64_t closure #1 in FeatureMatrixBuilder.fillArray(from:size:column:)(id *a1)
{
  v2 = v1;
  v3 = *a1;
  MLShapedArray.init(_:)(v3, &type metadata for Double, &protocol witness table for Double);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  return __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
}

uint64_t FeatureMatrixBuilder.fillArray<A, B>(_:descriptor:size:row:column:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v80 = v13;
  v68 = v14;
  v73 = a6;
  v74 = a3;
  v75._countAndFlagsBits = a2;
  v87 = a1;
  v69 = *(a11 - 8);
  v15 = *(v69 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v70 = &v64;
  v71 = *(a9 + 16);
  v18 = *(*(v71 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  *&v82 = &v64;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, &type metadata for Int, a11, 0, 0);
  v21 = *(*(type metadata accessor for Optional(0, TupleTypeMetadata2) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v85 = &v64;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for PartialRangeFrom<Int>);
  v25 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>();
  v26 = *(a12 + 8);
  *&v65 = v24;
  *(&v65 + 1) = a10;
  v66 = v25;
  v67 = v26;
  v78 = type metadata accessor for Zip2Sequence(0, &v65);
  v27 = *(*(v78 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v79 = &v64;
  v77 = v24;
  *&v65 = v24;
  *(&v65 + 1) = a10;
  v75._object = v25;
  v66 = v25;
  v76 = v26;
  v67 = v26;
  v83 = type metadata accessor for Zip2Sequence.Iterator(0, &v65);
  v81 = *(v83 - 8);
  v30 = *(v81 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = &v64;
  v34 = dispatch thunk of Collection.count.getter(a10, a12);
  if (v34 == v73)
  {
    *&v65 = 0;
    zip<A, B>(_:_:)(&v65, v87, v77, a10, v75._object, v76);
    Zip2Sequence.makeIterator()(v78);
    v35 = TupleTypeMetadata2;
    v36 = v85;
    v72 = &v64;
    while (1)
    {
      Zip2Sequence.Iterator.next()(v83);
      if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
      {
        break;
      }

      v37 = v35;
      v38 = a8 + *v36;
      if (__OFADD__(a8, *v36))
      {
        BUG();
      }

      v39 = v70;
      (*(v69 + 32))(v70, &v36[*(v37 + 48)], a11);
      v40 = *(a9 + 24);
      v41 = v39;
      v42 = v71;
      dispatch thunk of FloatingPoint.init<A>(_:)(v41, a11, a13, v71, *(v40 + 16));
      v43 = v68 + *(a9 + 44);
      v44 = v40;
      v36 = v85;
      v48 = type metadata accessor for DenseMatrix(0, v42, v44, v45, v46, v47);
      v33 = v72;
      v49 = v38;
      v35 = TupleTypeMetadata2;
      DenseMatrix.subscript.setter(v82, a7, v49, v48);
    }

    return (*(v81 + 8))(v33, v83);
  }

  else
  {
    v50 = v73;
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v51._object = "es a training checkpoint." + 0x8000000000000000;
    v51._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v51);
    v86 = v50;
    v52 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v54 = v53;
    v51._countAndFlagsBits = v52;
    v51._object = v53;
    String.append(_:)(v51);
    v54;
    v51._countAndFlagsBits = 0x61656620726F6620;
    v51._object = 0xEE00272065727574;
    String.append(_:)(v51);
    v55 = v74;
    v74;
    v51._countAndFlagsBits = v75._countAndFlagsBits;
    v51._object = v55;
    String.append(_:)(v51);
    v55;
    v51._object = "Expected arrays with size " + 0x8000000000000000;
    v51._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v51);
    v86 = dispatch thunk of Collection.count.getter(a10, a12);
    v56 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v58 = v57;
    v51._countAndFlagsBits = v56;
    v51._object = v57;
    String.append(_:)(v51);
    v58;
    v51._countAndFlagsBits = 0x20776F7220746120;
    v51._object = 0xE800000000000000;
    String.append(_:)(v51);
    v86 = a7;
    v59 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v61 = v60;
    v51._countAndFlagsBits = v59;
    v51._object = v60;
    String.append(_:)(v51);
    v61;
    v51._countAndFlagsBits = 46;
    v51._object = 0xE100000000000000;
    String.append(_:)(v51);
    v82 = v65;
    v51._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51._object, 0, 0);
    *v62 = v82;
    *(v62 + 16) = 0;
    *(v62 + 32) = 0;
    *(v62 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v51._object);
  }
}

{
  v80 = v13;
  v68 = v14;
  v73 = a6;
  v74 = a3;
  v75._countAndFlagsBits = a2;
  v87 = a1;
  v69 = *(a11 - 8);
  v15 = *(v69 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v70 = &v64;
  v71 = *(a9 + 16);
  v18 = *(*(v71 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  *&v82 = &v64;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2(255, &type metadata for Int, a11, 0, 0);
  v21 = *(*(type metadata accessor for Optional(0, TupleTypeMetadata2) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v85 = &v64;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for PartialRangeFrom<Int>);
  v25 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>();
  v26 = *(a12 + 8);
  *&v65 = v24;
  *(&v65 + 1) = a10;
  v66 = v25;
  v67 = v26;
  v78 = type metadata accessor for Zip2Sequence(0, &v65);
  v27 = *(*(v78 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v79 = &v64;
  v77 = v24;
  *&v65 = v24;
  *(&v65 + 1) = a10;
  v75._object = v25;
  v66 = v25;
  v76 = v26;
  v67 = v26;
  v83 = type metadata accessor for Zip2Sequence.Iterator(0, &v65);
  v81 = *(v83 - 8);
  v30 = *(v81 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v33 = &v64;
  v34 = dispatch thunk of Collection.count.getter(a10, a12);
  if (v34 == v73)
  {
    *&v65 = 0;
    zip<A, B>(_:_:)(&v65, v87, v77, a10, v75._object, v76);
    Zip2Sequence.makeIterator()(v78);
    v35 = TupleTypeMetadata2;
    v36 = v85;
    v72 = &v64;
    while (1)
    {
      Zip2Sequence.Iterator.next()(v83);
      if (__swift_getEnumTagSinglePayload(v36, 1, v35) == 1)
      {
        break;
      }

      v37 = v35;
      v38 = a8 + *v36;
      if (__OFADD__(a8, *v36))
      {
        BUG();
      }

      v39 = v70;
      (*(v69 + 32))(v70, &v36[*(v37 + 48)], a11);
      v40 = *(a9 + 24);
      v41 = v39;
      v42 = v71;
      dispatch thunk of BinaryFloatingPoint.init<A>(_:)(v41, a11, a13, v71, v40);
      v43 = v68 + *(a9 + 44);
      v44 = v40;
      v36 = v85;
      v48 = type metadata accessor for DenseMatrix(0, v42, v44, v45, v46, v47);
      v33 = v72;
      v49 = v38;
      v35 = TupleTypeMetadata2;
      DenseMatrix.subscript.setter(v82, a7, v49, v48);
    }

    return (*(v81 + 8))(v33, v83);
  }

  else
  {
    v50 = v73;
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(73);
    v51._object = "es a training checkpoint." + 0x8000000000000000;
    v51._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v51);
    v86 = v50;
    v52 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v54 = v53;
    v51._countAndFlagsBits = v52;
    v51._object = v53;
    String.append(_:)(v51);
    v54;
    v51._countAndFlagsBits = 0x61656620726F6620;
    v51._object = 0xEE00272065727574;
    String.append(_:)(v51);
    v55 = v74;
    v74;
    v51._countAndFlagsBits = v75._countAndFlagsBits;
    v51._object = v55;
    String.append(_:)(v51);
    v55;
    v51._object = "Expected arrays with size " + 0x8000000000000000;
    v51._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v51);
    v86 = dispatch thunk of Collection.count.getter(a10, a12);
    v56 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v58 = v57;
    v51._countAndFlagsBits = v56;
    v51._object = v57;
    String.append(_:)(v51);
    v58;
    v51._countAndFlagsBits = 0x20776F7220746120;
    v51._object = 0xE800000000000000;
    String.append(_:)(v51);
    v86 = a7;
    v59 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v61 = v60;
    v51._countAndFlagsBits = v59;
    v51._object = v60;
    String.append(_:)(v51);
    v61;
    v51._countAndFlagsBits = 46;
    v51._object = 0xE100000000000000;
    String.append(_:)(v51);
    v82 = v65;
    v51._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v51._object, 0, 0);
    *v62 = v82;
    *(v62 + 16) = 0;
    *(v62 + 32) = 0;
    *(v62 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v51._object);
  }
}

uint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for PartialRangeFrom<Int>);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PartialRangeFrom<A>, v1);
    lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A> = result;
  }

  return result;
}

uint64_t type metadata completion function for FeatureMatrixBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for DenseMatrix(319, *(a1 + 16), *(a1 + 24), a4, a5, a6, &value witness table for Builtin.BridgeObject + 64, &value witness table for Builtin.BridgeObject + 64, &unk_3407D8);
  v7 = v6;
  if (v8 <= 0x3F)
  {
    v10[3] = *(v6 - 8) + 64;
    v7 = 0;
    swift_initStructMetadata(a1, 0, 4, v10, a1 + 32);
  }

  return v7;
}

uint64_t initializeBufferWithCopyOfBuffer for FeatureMatrixBuilder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*(a3 - 8) + 80);
  v7 = *a2;
  *a1 = *a2;
  if ((v6 & 0x20000) != 0)
  {
    v8 = v7 + ((v6 + 16) & ~v6);
    v7;
  }

  else
  {
    v8 = a1;
    v9 = a2[1];
    *(a1 + 8) = v9;
    *(a1 + 16) = *(a2 + 16);
    v10 = *(a3 + 44);
    v14 = a1 + v10;
    v11 = a2 + v10;
    v12 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24), a1 + v10, a5, a6);
    v15 = *(*(v12 - 8) + 16);
    v7;
    v9;
    v15(v14, v11, v12);
  }

  return v8;
}

uint64_t destroy for FeatureMatrixBuilder(void *a1, uint64_t a2)
{
  *a1, a2;
  a1[1], a2;
  v2 = a1 + *(a2 + 44);
  v6 = type metadata accessor for DenseMatrix(0, *(a2 + 16), *(a2 + 24), v3, v4, v5);
  return (*(*(v6 - 8) + 8))(v2, v6);
}

uint64_t initializeWithCopy for FeatureMatrixBuilder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = a2[1];
  *(a1 + 8) = v7;
  *(a1 + 16) = *(a2 + 16);
  v8 = *(a3 + 44);
  v12 = a1 + v8;
  v9 = a2 + v8;
  v10 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24), a1 + v8, a5, a6);
  v13 = *(*(v10 - 8) + 16);
  v6;
  v7;
  v13(v12, v9, v10);
  return a1;
}

uint64_t *assignWithCopy for FeatureMatrixBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;
  v6, a2;
  v7 = a2[1];
  v8 = a1[1];
  a1[1] = v7;
  v7;
  v8, a2;
  *(a1 + 16) = *(a2 + 16);
  v9 = *(a3 + 44);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v15 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24), v12, v13, v14);
  (*(*(v15 - 8) + 24))(v10, v11, v15);
  return a1;
}

uint64_t initializeWithTake for FeatureMatrixBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a3 + 44);
  v7 = a1 + v6;
  v8 = v6 + a2;
  v9 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24), a4, a5, a6);
  (*(*(v9 - 8) + 32))(v7, v8, v9);
  return a1;
}

uint64_t *assignWithTake for FeatureMatrixBuilder(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  v5, a2;
  v6 = a1[1];
  a1[1] = a2[1];
  v6, a2;
  *(a1 + 16) = *(a2 + 16);
  v7 = *(a3 + 44);
  v8 = a1 + v7;
  v9 = a2 + v7;
  v13 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24), v10, v11, v12);
  (*(*(v13 - 8) + 40))(v8, v9, v13);
  return a1;
}

uint64_t sub_DD83B(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
    v8 = type metadata accessor for DenseMatrix(0, *(a3 + 16), *(a3 + 24), a4, a5, a6);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 44), a2, v8);
  }

  return result;
}

uint64_t sub_DD8BB(void *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DenseMatrix(0, *(a4 + 16), *(a4 + 24), a4, a5, a6);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 44), a2, a2, v7);
  }

  return result;
}

_UNKNOWN **one-time initialization function for predictor()
{
  *&static JaccardSimilarity.predictor = &type metadata for JaccardSimilarityPredictor;
  result = &protocol witness table for JaccardSimilarityPredictor;
  *(&static JaccardSimilarity.predictor + 1) = &protocol witness table for JaccardSimilarityPredictor;
  return result;
}

{
  *&static PearsonSimilarity.predictor = &type metadata for PearsonSimilarityPredictor;
  result = &protocol witness table for PearsonSimilarityPredictor;
  *(&static PearsonSimilarity.predictor + 1) = &protocol witness table for PearsonSimilarityPredictor;
  return result;
}

{
  *&static CosineSimilarity.predictor = &type metadata for CosineSimilarityPredictor;
  result = &protocol witness table for CosineSimilarityPredictor;
  *(&static CosineSimilarity.predictor + 1) = &protocol witness table for CosineSimilarityPredictor;
  return result;
}

void *static JaccardSimilarity.buildItemStatistics(ratings:count:)(void *a1, uint64_t a2)
{
  ML14ItemStatisticsVySdG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVySdG_Tt1g5(0, a2, 0.0);
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  outlined retain of [Int](&v17);
  outlined retain of [Int](&v18);
  outlined retain of ContiguousArray<Double>(&v19);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(a1);
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v5)
    {
      break;
    }

    v6 = v3;
    v7 = v4 & 0x7FFFFFFFFFFFFFFFLL;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVySdG_Tt1g5);
    v9 = 0.0;
    if (v7)
    {
      v9 = 1.0;
    }

    if (!isUniquelyReferenced_nonNull_native)
    {
      v20 = v9;
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVySdG_Tt1g5);
      v9 = v20;
      ML14ItemStatisticsVySdG_Tt1g5 = v14;
    }

    if (v6 < 0)
    {
      BUG();
    }

    if (v6 >= ML14ItemStatisticsVySdG_Tt1g5[2])
    {
      BUG();
    }

    v10 = 2 * v6;
    *&ML14ItemStatisticsVySdG_Tt1g5[v10 + 5] = v9 + *&ML14ItemStatisticsVySdG_Tt1g5[v10 + 5];
    v11 = ML14ItemStatisticsVySdG_Tt1g5[v10 + 4];
    v12 = __OFADD__(1, v11);
    v13 = v11 + 1;
    if (v12)
    {
      BUG();
    }

    ML14ItemStatisticsVySdG_Tt1g5[v10 + 4] = v13;
  }

  *&v16[6] = *&v16[15];
  *&v16[4] = *&v16[13];
  *&v16[2] = *&v16[11];
  *v16 = *&v16[9];
  outlined release of SparseMatrix<Double>.MajorCollection(v16, a2);
  return ML14ItemStatisticsVySdG_Tt1g5;
}

void static JaccardSimilarityPredictor.updatePrediction(_:itemScore:neighborScore:)(double *a1, double a2, double a3)
{
  if (a2 != 0.0)
  {
    *a1 = a3 + *a1;
  }
}

double static JaccardSimilarityPredictor.finalizePrediction(_:userRatingCount:)(uint64_t a1, double a2)
{
  v2 = 1;
  if (a1 >= 2)
  {
    v2 = a1;
  }

  return a2 / v2;
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.== infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.== infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.== infix(_:_:));
}

uint64_t static MLDataColumn.!= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.!= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.!= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.!= infix(_:_:));
}

uint64_t static MLDataColumn.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.> infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.> infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.> infix(_:_:));
}

uint64_t static MLDataColumn.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.< infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.< infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.< infix(_:_:));
}

uint64_t static MLDataColumn.>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.>= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.>= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.>= infix(_:_:));
}

uint64_t static MLDataColumn.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.<= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.<= infix(_:_:));
}

{
  return static MLDataColumn.== infix(_:_:)(a1, a2, a3, a4, static MLUntypedColumn.<= infix(_:_:));
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t *))
{
  v17 = a5;
  v6 = v5;
  v7 = *a2;
  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  v13 = *a1;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  outlined copy of Result<_DataTable, Error>(v13, v8);
  outlined copy of Result<_DataTable, Error>(v7, v9);
  v17(&v13, &v15);
  outlined consume of Result<_DataTable, Error>(v15, v16);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  result = v11;
  *v6 = v11;
  *(v6 + 8) = v12;
  return result;
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, void *))
{
  v18 = v5;
  v20 = a2;
  v19 = a5;
  v8 = *(a1 + 8);
  v16 = *a1;
  v7 = v16;
  v17 = v8;
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, v20, a3);
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v19(&v16, v13);
  outlined consume of Result<_DataTable, Error>(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = v14;
  v11 = v15;
  v12 = v18;
  *v18 = v14;
  *(v12 + 8) = v11;
  return result;
}

uint64_t static MLDataColumn.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t *))
{
  v18 = v5;
  v19 = a5;
  v7 = *a2;
  v8 = *(a2 + 8);
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v16 = v7;
  v17 = v8;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v19(v13, &v16);
  outlined consume of Result<_DataTable, Error>(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = v14;
  v11 = v15;
  v12 = v18;
  *v18 = v14;
  *(v12 + 8) = v11;
  return result;
}

uint64_t static MLDataColumn<>./ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  v8 = *a1;
  v9 = v3;
  v10 = v2;
  v11 = v4;
  outlined copy of Result<_DataTable, Error>(v8, v3);
  outlined copy of Result<_DataTable, Error>(v2, v4);
  static MLUntypedColumn./ infix(_:_:)(&v8, &v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  outlined consume of Result<_DataTable, Error>(v8, v9);
  _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(v6, v7);
  return outlined consume of Result<_DataTable, Error>(v6, v7);
}

{
  v2 = *a2;
  v3 = *(a2 + 8);
  v7[3] = &type metadata for Int;
  v7[4] = &protocol witness table for Int;
  v7[0] = a1;
  v10 = v2;
  v11 = v3;
  outlined copy of Result<_DataTable, Error>(v2, v3);
  static MLUntypedColumn./ infix(_:_:)(v7, &v10);
  outlined consume of Result<_DataTable, Error>(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  v4 = v8;
  v5 = v9;
  _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(v8, v9);
  return outlined consume of Result<_DataTable, Error>(v4, v5);
}

{
  v2 = *(a1 + 8);
  v9 = *a1;
  v10 = v2;
  v6[3] = &type metadata for Int;
  v6[4] = &protocol witness table for Int;
  v6[0] = a2;
  outlined copy of Result<_DataTable, Error>(v9, v2);
  static MLUntypedColumn./ infix(_:_:)(&v9, v6);
  outlined consume of Result<_DataTable, Error>(v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  v3 = v7;
  v4 = v8;
  _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(v7, v8);
  return outlined consume of Result<_DataTable, Error>(v3, v4);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn./ infix(_:_:));
}

uint64_t _s8CreateML15MLUntypedColumnV3map2toAA06MLDataD0VyxGxm_tAA0G16ValueConvertibleRzlFSi_Tt0B5(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v20 = swift_allocError(&type metadata for MLCreateError, v4, 0, 0);
  *v5 = 0xD00000000000001ALL;
  *(v5 + 8) = "', but got size " + 0x8000000000000000;
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  *(v5 + 48) = 1;
  if (a2)
  {
    v21 = v3;
    v19 = a1;
    swift_errorRetain(a1);
    outlined copy of Result<_DataTable, Error>(a1, 1);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(&v19, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(a1, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v11 = a1;
    }

    v22 = 1;
    v20;
    result = outlined consume of Result<_DataTable, Error>(a1, 1);
    v13 = v22;
  }

  else
  {
    v9 = *(*(a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    v10 = specialized handling<A, B, C, D>(_:_:_:_:)(v9, 0, 0);
    v14 = v10;
    v21 = v3;
    if (!v10)
    {
      BUG();
    }

    v13 = 0;
    v15 = type metadata accessor for CMLColumn();
    v16 = swift_allocObject(v15, 24, 7);
    *(v16 + 16) = v14;
    v17 = type metadata accessor for _UntypedColumn();
    v8 = swift_allocObject(v17, 24, 7);
    *(v8 + 16) = v16;
    v20;
    result = outlined consume of Result<_DataTable, Error>(a1, 0);
  }

  v18 = v21;
  *v21 = v8;
  *(v18 + 8) = v13 & 1;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.+ infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2);
}

uint64_t static MLDataColumn<>.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.- infix(_:_:));
}

{
  return static MLDataColumn<>.- infix(_:_:)(a1, a2);
}

uint64_t static MLDataColumn<>.* infix(_:_:)(uint64_t a1, uint64_t a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, a2, static MLUntypedColumn.* infix(_:_:));
}

{
  return static MLDataColumn<>.* infix(_:_:)(a1, a2);
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t *))
{
  v5 = v3;
  v6 = *a2;
  v7 = *(a2 + 8);
  v10[3] = &type metadata for Int;
  v10[4] = &protocol witness table for Int;
  v10[0] = a1;
  v13 = v6;
  v14 = v7;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  a3(v10, &v13);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = v11;
  v9 = v12;
  *v5 = v11;
  *(v5 + 8) = v9;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, void *))
{
  v5 = v3;
  v6 = *(a1 + 8);
  v12 = *a1;
  v13 = v6;
  v9[3] = &type metadata for Int;
  v9[4] = &protocol witness table for Int;
  v9[0] = a2;
  outlined copy of Result<_DataTable, Error>(v12, v6);
  a3(&v12, v9);
  outlined consume of Result<_DataTable, Error>(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = v10;
  v8 = v11;
  *v5 = v10;
  *(v5 + 8) = v8;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.+ infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.+ infix(_:_:), a2);
}

uint64_t static MLDataColumn<>.- infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.- infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.- infix(_:_:), a2);
}

uint64_t static MLDataColumn<>.* infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.* infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn.* infix(_:_:), a2);
}

uint64_t static MLDataColumn<>./ infix(_:_:)(uint64_t a1, double a2)
{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn./ infix(_:_:), a2);
}

{
  return static MLDataColumn<>.+ infix(_:_:)(a1, static MLUntypedColumn./ infix(_:_:), a2);
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, void (*a2)(double *, uint64_t *), double a3)
{
  v5 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  *&v10[3] = &type metadata for Double;
  *&v10[4] = &protocol witness table for Double;
  v10[0] = a3;
  v13 = v6;
  v14 = v7;
  outlined copy of Result<_DataTable, Error>(v6, v7);
  a2(v10, &v13);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  result = v11;
  v9 = v12;
  *v5 = v11;
  *(v5 + 8) = v9;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, void (*a2)(uint64_t *, double *), double a3)
{
  v5 = v3;
  v6 = *(a1 + 8);
  v12 = *a1;
  v13 = v6;
  *&v9[3] = &type metadata for Double;
  *&v9[4] = &protocol witness table for Double;
  v9[0] = a3;
  outlined copy of Result<_DataTable, Error>(v12, v6);
  a2(&v12, v9);
  outlined consume of Result<_DataTable, Error>(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = v10;
  v8 = v11;
  *v5 = v10;
  *(v5 + 8) = v8;
  return result;
}

uint64_t static MLDataColumn<>.+ infix(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t *))
{
  v15 = a3;
  v4 = v3;
  v5 = *a2;
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  v11 = *a1;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  outlined copy of Result<_DataTable, Error>(v11, v6);
  outlined copy of Result<_DataTable, Error>(v5, v7);
  v15(&v11, &v13);
  outlined consume of Result<_DataTable, Error>(v13, v14);
  outlined consume of Result<_DataTable, Error>(v11, v12);
  result = v9;
  *v4 = v9;
  *(v4 + 8) = v10;
  return result;
}

uint64_t MLActivityClassifier.DataSource.gatherAnnotatedFeatures(featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v14 = a4;
  v15 = a3;
  v17 = v5;
  v16 = v7;
  v9 = *(*(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  result = MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(a1, a2, v15, v14, a5);
  if (!v6)
  {
    MLActivityClassifier.DataSource.Columns.buildDataFrame()();
    return outlined destroy of MLActivityClassifier.ModelParameters(&v13, type metadata accessor for MLActivityClassifier.DataSource.Columns);
  }

  return result;
}

uint64_t MLActivityClassifier.DataSource.labeledSensorData(featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, __m128 a6)
{
  v22 = a4;
  v27 = v6;
  v23 = v7;
  v24 = v8;
  v25 = a5;
  v26 = a1;
  v11 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v28 = &v22;
  v14 = *(*(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  if (!a3)
  {
    a2 = 0x6C6562616CLL;
  }

  v17 = 0xE500000000000000;
  if (a3)
  {
    v17 = a3;
  }

  a3;
  v29 = &v22;
  v18 = v23;
  MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(v26, a2, v17, v22, v25);
  result = v17;
  if (!v18)
  {
    v20 = v28;
    v21 = v29;
    *a6.i64 = MLActivityClassifier.DataSource.Columns.buildDataFrame()();
    MLDataTable.init(_:convertArraysToShapedArrays:)(v20, 0, a6);
    return outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLActivityClassifier.DataSource.Columns);
  }

  return result;
}

uint64_t MLActivityClassifier.DataSource.stratifiedSplit(proportions:seed:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, __m128 a7, unint64_t a8)
{
  v143 = v8;
  v146 = a2;
  v148 = a1;
  v14 = ((a5 >> 56) & 0xF);
  v15 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v14 = v15;
  }

  v16 = a4;
  if (v14)
  {
    v14 = a5;
  }

  else
  {
    v16 = 0;
  }

  v17 = (HIBYTE(a8) & 0xF);
  if ((a8 & 0x2000000000000000) == 0)
  {
    v17 = (a6 & 0xFFFFFFFFFFFFLL);
  }

  v18 = a6;
  if (v17)
  {
    v17 = a8;
  }

  else
  {
    v18 = 0;
  }

  result = MLActivityClassifier.DataSource.labeledSensorData(featureColumns:labelColumn:recordingFileColumn:)(a3, v16, v14, v18, v17, a7);
  v20 = v9;
  if (v9)
  {
    return result;
  }

  v153._object = a5;
  v153._countAndFlagsBits = a4;
  v150._countAndFlagsBits = a6;
  v21 = v157;
  LOBYTE(v156._countAndFlagsBits) = v158;
  if (v158)
  {
    outlined copy of Result<_DataTable, Error>(v157, 1);
    v22 = tc_v1_flex_list_create(0);
    if (!v22)
    {
      BUG();
    }

    v23 = v22;
    v24 = type metadata accessor for CMLSequence();
    v25 = swift_allocObject(v24, 25, 7);
    v25[2] = v23;
    *(v25 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v21, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v157, 0);
    _DataTable.columnNames.getter(v157);
    v20 = 0;
    outlined consume of Result<_DataTable, Error>(v157, 0);
    v25 = countAndFlagsBits;
  }

  v163._countAndFlagsBits = v150._countAndFlagsBits;
  v163._object = a8;
  v26 = alloca(24);
  v27 = alloca(32);
  v138 = &v163;
  v28 = v20;
  v29 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v136, v25);
  v159 = v28;

  if ((v29 & 1) == 0)
  {
    v34 = "Unable to map to type Int." + 0x8000000000000000;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    v37 = 0xD00000000000001CLL;
LABEL_50:
    *v36 = v37;
    *(v36 + 8) = v34;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v35);
    return outlined consume of Result<_DataTable, Error>(v157, v158);
  }

  if (LOBYTE(v156._countAndFlagsBits))
  {
    outlined copy of Result<_DataTable, Error>(v21, 1);
    v30 = tc_v1_flex_list_create(0);
    if (!v30)
    {
      BUG();
    }

    v31 = v30;
    v32 = type metadata accessor for CMLSequence();
    v33 = swift_allocObject(v32, 25, 7);
    v33[2] = v31;
    *(v33 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v21, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v21, 0);
    _DataTable.columnNames.getter(v21);
    outlined consume of Result<_DataTable, Error>(v21, 0);
    v33 = countAndFlagsBits;
  }

  v163 = v153;
  v38 = alloca(24);
  v39 = alloca(24);
  v138 = &v163;
  v40 = v159;
  v41 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v136, v33);
  v150._object = v40;

  if ((v41 & 1) == 0)
  {
    v34 = "Invalid recordingFileColumn." + 0x8000000000000000;
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    v37 = 0xD000000000000014;
    goto LABEL_50;
  }

  v163._countAndFlagsBits = v21;
  LOBYTE(v163._object) = v156._countAndFlagsBits;
  v42._countAndFlagsBits = v150._countAndFlagsBits;
  v42._object = a8;
  MLDataTable.subscript.getter(v42);
  v139 = countAndFlagsBits;
  v140 = object;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v139, v140);
  countAndFlagsBits = v163._countAndFlagsBits;
  object = v163._object;
  v43 = Array<A>.init(_:)(&countAndFlagsBits, *a7.i64);
  v44 = v43[2];
  v43;
  v141 = v43;
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5(v43, 0, v44);
  v155 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5(_swiftEmptyArrayStorage, v44);
  v154 = _sSa9repeating5countSayxGx_SitcfCSaySSG_Tt1g5(_swiftEmptyArrayStorage, v44);
  countAndFlagsBits = v21;
  object = v156._countAndFlagsBits;
  v42._countAndFlagsBits = v150._countAndFlagsBits;
  v42._object = a8;
  MLDataTable.subscript.getter(v42);
  countAndFlagsBits = v163._countAndFlagsBits;
  object = v163._object;
  v45 = Array<A>.init(_:)(&countAndFlagsBits, *a7.i64);
  v147 = v45[2];
  v142 = v45;
  if (v147)
  {
    v46 = (v45 + 6);
    v156._countAndFlagsBits = 0;
    while (1)
    {
      v47 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
      if (!ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5[2])
      {
        BUG();
      }

      v48 = *(v46 - 2);
      v49 = *(v46 - 1);
      v159 = v46;
      v50 = *v46;
      outlined copy of MLDataValue(v48, v49, *v46);
      outlined copy of MLDataValue(v48, v49, v50);
      *&v51 = v48;
      *(&v51 + 1) = v49;
      specialized __RawDictionaryStorage.find<A>(_:)(v51, v50, *a7.i64);
      if ((v53 & 1) == 0)
      {
        outlined consume of MLDataValue(v48, v49, v50);
        BUG();
      }

      v54 = *(v47[7] + 8 * v52);
      v144 = v49;
      outlined consume of MLDataValue(v48, v49, v50);
      v55 = v155;
      if (!swift_isUniquelyReferenced_nonNull_native(v155))
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew()(v55);
      }

      if (v54 < 0)
      {
        BUG();
      }

      if (v54 >= v55[2])
      {
        BUG();
      }

      v151 = v48;
      v152 = v50;
      v56 = v54;
      v57 = v55[v54 + 4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v57);
      v59 = v56;
      v55[v56 + 4] = v57;
      v155 = v55;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v57[2] + 1, 1, v57);
        v55[v56 + 4] = v57;
      }

      v60 = v57[2];
      if (v57[3] >> 1 <= v60)
      {
        v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57[3] >= 2uLL, v60 + 1, 1, v57);
        v155[v59 + 4] = v57;
      }

      v57[2] = v60 + 1;
      v61 = v156._countAndFlagsBits;
      v57[v60 + 4] = v156._countAndFlagsBits;
      v62 = v61;
      specialized MLDataTable.subscript.getter(v153, v157, v158);
      v63 = countAndFlagsBits;
      v64 = object;
      if (object)
      {
        goto LABEL_39;
      }

      outlined copy of Result<_DataTable, Error>(countAndFlagsBits, 0);
      _UntypedColumn.valueAtIndex(index:)(v62, *a7.i64);
      outlined consume of Result<_DataTable, Error>(v63, 0);
      v65 = v163._countAndFlagsBits;
      if (v164 != 2)
      {
        break;
      }

      v160 = v163._object;
      v64 = 0;
LABEL_40:
      outlined consume of Result<_DataTable, Error>(v63, v64);
      v66 = v154;
      if (!swift_isUniquelyReferenced_nonNull_native(v154))
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew()(v66);
      }

      if (v59 >= v66[2])
      {
        BUG();
      }

      v145 = v65;
      v67 = v66[v59 + 4];
      v68 = swift_isUniquelyReferenced_nonNull_native(v67);
      v154 = v66;
      v66[v59 + 4] = v67;
      if (!v68)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v67[2] + 1, 1, v67);
        v154[v59 + 4] = v67;
      }

      v69 = v67[2];
      if (v67[3] >> 1 <= v69)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67[3] >= 2uLL, v69 + 1, 1, v67);
        v154[v59 + 4] = v67;
      }

      v70 = v156._countAndFlagsBits + 1;
      v67[2] = v69 + 1;
      v71 = 2 * v69;
      v67[v71 + 4] = v145;
      v67[v71 + 5] = v160;
      outlined consume of MLDataValue(v151, v144, v152);
      v46 = v159 + 24;
      v156._countAndFlagsBits = v70;
      if (v147 == v70)
      {
        goto LABEL_53;
      }
    }

    outlined consume of MLDataValue(v163._countAndFlagsBits, v163._object, v164);
LABEL_39:
    v65 = 0;
    v160 = 0xE000000000000000;
    goto LABEL_40;
  }

LABEL_53:
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
  v142;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v72, v137);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x73656369646E69;
  *(inited + 40) = 0xE700000000000000;
  v163._countAndFlagsBits = v155;
  v74 = alloca(24);
  v75 = alloca(32);
  v138 = &v163;
  v155;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 56) = v76 & 1;
  v163._countAndFlagsBits;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v77 = v154;
  v163._countAndFlagsBits = v154;
  v78 = alloca(24);
  v79 = alloca(32);
  v138 = &v163;
  v154;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA22MLDataValueConvertible7ElementRpzlufcAA08_UntypedD0CyKXEfU_SaySaySSGG_TG5TA_0);
  *(inited + 88) = v80 & 1;
  v163._countAndFlagsBits;
  strcpy((inited + 96), "recordingFile");
  *(inited + 110) = -4864;
  v163._countAndFlagsBits = v141;
  v81 = alloca(24);
  v82 = alloca(32);
  v138 = &v163;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  *(inited + 120) = v83 & 1;
  v163._countAndFlagsBits;
  v84 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v85 = v150._object;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v84);
  if (v85)
  {
    v155;
    v77;
    return outlined consume of Result<_DataTable, Error>(v157, v158);
  }

  v86 = v146;
  if (v146 < 0)
  {
    BUG();
  }

  v150._object = v163._countAndFlagsBits;
  v87 = v163._object;
  v88 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v88, 136, 7);
  countAndFlagsBits = MersenneTwisterGenerator.init(seed:)(v86);
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v148, &countAndFlagsBits, v150._object, v87, 0x6C6562616CLL, 0xE500000000000000, *a7.i64);
  LODWORD(v148) = v87;
  v156._countAndFlagsBits = 0;

  v160 = v163._countAndFlagsBits;
  LOBYTE(v147) = v163._object;
  countAndFlagsBits = v157;
  object = v158;
  v89._countAndFlagsBits = v150._countAndFlagsBits;
  v89._object = a8;
  MLDataTable.subscript.getter(v89);
  v90 = v163._countAndFlagsBits;
  v91 = v163._object;
  if (LOBYTE(v163._object))
  {
    v92 = -1;
  }

  else
  {
    v93 = *(v163._countAndFlagsBits + 16);

    v92 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v90, 0);
  }

  outlined consume of Result<_DataTable, Error>(v90, v91);
  v159 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v92);
  countAndFlagsBits = v160;
  object = v147;
  LODWORD(v153._countAndFlagsBits) = v147;
  outlined copy of Result<_DataTable, Error>(v160, v147);
  v94._countAndFlagsBits = 0x73656369646E69;
  v94._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v94);
  outlined consume of Result<_DataTable, Error>(countAndFlagsBits, object);
  v95 = v163._countAndFlagsBits;
  if (LOBYTE(v163._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v163._countAndFlagsBits, 1);
LABEL_105:
    BUG();
  }

  v96 = *(v163._countAndFlagsBits + 16);

  v97 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v95, 0);
  v98 = 0;
  outlined consume of Result<_DataTable, Error>(v95, 0);
  v146 = v97;
  v99 = v97 == 0;
  v100 = v155;
  if (v97 < 0)
  {
    goto LABEL_105;
  }

  v101 = v154;
  v102 = v156._countAndFlagsBits;
  v103 = v160;
  if (!v99)
  {
    v153._object = 0;
    while (!v147)
    {
      v104 = v103[2];
      outlined copy of Result<_DataTable, Error>(v103, 0);

      v105 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v104, 0x73656369646E69, 0xE700000000000000);
      v156._countAndFlagsBits = v102;
      if (v102)
      {
        v156._countAndFlagsBits;

LABEL_101:
        v163._countAndFlagsBits = 0;
        v163._object = 0xE000000000000000;
        _StringGuts.grow(_:)(34);
        v163._object;
        v163._countAndFlagsBits = 0xD00000000000001FLL;
        v163._object = "ml.activityclassifier" + 0x8000000000000000;
        v132._countAndFlagsBits = 0x73656369646E69;
        v132._object = 0xE700000000000000;
        String.append(_:)(v132);
        v132._object = 0xE100000000000000;
        v132._countAndFlagsBits = 34;
        String.append(_:)(v132);
        v156 = v163;
        v133 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v134 = swift_allocError(&type metadata for MLCreateError, v133, 0, 0);
        *v135 = v156;
        *(v135 + 16) = 0;
        *(v135 + 32) = 0;
        *(v135 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v160, v153._countAndFlagsBits);
        outlined consume of Result<_DataTable, Error>(v134, 1);
LABEL_102:
        BUG();
      }

      v106 = v105;

      outlined consume of Result<_DataTable, Error>(v103, 0);
      v107 = type metadata accessor for _UntypedColumn();
      v108 = swift_allocObject(v107, 24, 7);
      *(v108 + 16) = v106;

      _UntypedColumn.valueAtIndex(index:)(v153._object, *a7.i64);
      outlined consume of Result<_DataTable, Error>(v108, 0);
      outlined consume of Result<_DataTable, Error>(v108, 0);
      if (v164 != 3)
      {
        goto LABEL_102;
      }

      ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = v163._object;
      v109 = v163._countAndFlagsBits;

      if (CMLSequence.size.getter())
      {
        v110 = 0;
        v145 = v109;
        while (1)
        {
          v111 = v156._countAndFlagsBits;
          v112 = CMLSequence.value(at:)(v110);
          v156._countAndFlagsBits = v111;
          if (v111)
          {
            swift_unexpectedError(v156._countAndFlagsBits, "CreateML/SequenceType.swift", 27, 1, 36);
            BUG();
          }

          MLDataValue.init(_:)(v112, *a7.i64);
          v144 = v163._object;
          v113 = v163._countAndFlagsBits;
          v114 = v164;
          v152 = v164;
          outlined copy of MLDataValue(v163._countAndFlagsBits, v163._object, v164);
          v151 = v113;
          outlined consume of MLDataValue(v113, v144, v152);
          if (v110 >= CMLSequence.size.getter())
          {
            BUG();
          }

          if (v114)
          {
            BUG();
          }

          v115 = v110;
          v116 = v160;
          outlined copy of Result<_DataTable, Error>(v160, 0);
          v117._countAndFlagsBits = 0x6F69746974726170;
          v117._object = 0xE90000000000006ELL;
          specialized MLDataTable.subscript.getter(v117, v116, v153._countAndFlagsBits);
          outlined consume of Result<_DataTable, Error>(v116, 0);
          v118 = countAndFlagsBits;
          if (object)
          {
            break;
          }

          outlined copy of Result<_DataTable, Error>(countAndFlagsBits, 0);
          _UntypedColumn.valueAtIndex(index:)(v153._object, *a7.i64);
          outlined consume of Result<_DataTable, Error>(v118, 0);
          v121 = v163._countAndFlagsBits;
          if (v164)
          {
            outlined consume of MLDataValue(v163._countAndFlagsBits, v163._object, v164);
            v119 = v118;
            v120 = 0;
            goto LABEL_75;
          }

          outlined consume of Result<_DataTable, Error>(v118, 0);
          v122 = v159;
          if (!swift_isUniquelyReferenced_nonNull_native(v159))
          {
LABEL_82:
            v122 = specialized _ArrayBuffer._consumeAndCreateNew()(v122);
          }

LABEL_77:
          if (v151 < 0)
          {
            BUG();
          }

          if (v151 >= *(v122 + 2))
          {
            BUG();
          }

          v159 = v122;
          *&v122[8 * v151 + 32] = v121;
          v110 = v115 + 1;
          v109 = v145;
          if (v115 + 1 == CMLSequence.size.getter())
          {
            goto LABEL_83;
          }
        }

        v119 = countAndFlagsBits;
        v120 = 1;
LABEL_75:
        outlined consume of Result<_DataTable, Error>(v119, v120);
        v122 = v159;
        v121 = 0;
        if (!swift_isUniquelyReferenced_nonNull_native(v159))
        {
          goto LABEL_82;
        }

        v121 = 0;
        goto LABEL_77;
      }

LABEL_83:
      v123 = v153._object + 1;

      v98 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
      outlined consume of MLDataValue(v109, ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5, 3);
      v153._object = v123;
      v99 = v123 == v146;
      v101 = v154;
      v100 = v155;
      v102 = v156._countAndFlagsBits;
      v103 = v160;
      if (v99)
      {
        goto LABEL_84;
      }
    }

    swift_willThrow(v100, v98);
    outlined copy of Result<_DataTable, Error>(v103, 1);
    goto LABEL_101;
  }

LABEL_84:
  v156._countAndFlagsBits = v102;
  v100;
  v101;
  v163._countAndFlagsBits = v159;
  v124 = alloca(24);
  v125 = alloca(32);
  v138 = &v163;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v128 = v127;
  v163._countAndFlagsBits;
  MLDataTable.willMutate()();
  v163._countAndFlagsBits = ML14_UntypedColumnC_s5Error_pTt1g5;
  LOBYTE(v163._object) = v128 & 1;
  LODWORD(v159) = v128;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v128);
  MLDataTable.addImpl(newColumn:named:)(&v163, 0x6F69746974726170, 0xE90000000000006ELL);
  outlined consume of Result<_DataTable, Error>(v163._countAndFlagsBits, v163._object);
  v129 = v158;
  if (v158)
  {
    outlined consume of Result<_DataTable, Error>(v150._object, v148);
    outlined consume of Result<_DataTable, Error>(v160, v153._countAndFlagsBits);
    v130 = v157;
  }

  else
  {
    v130 = v157;
    outlined copy of Result<_DataTable, Error>(v157, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v130, 0);
    outlined consume of Result<_DataTable, Error>(v150._object, v148);
    outlined consume of Result<_DataTable, Error>(v160, v153._countAndFlagsBits);
  }

  v131 = v143;
  outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v159);
  *v131 = v130;
  *(v131 + 8) = v129;
  outlined copy of Result<_DataTable, Error>(v130, v129);
  return outlined consume of Result<_DataTable, Error>(v130, v129);
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1, double a2)
{
  v56 = v2;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v46);
  *(inited + 16) = v5;
  v51 = inited;
  *(inited + 24) = 1;
  v9 = *(a1 + 16);
  v49 = v3;
  v50 = a1;
  if (v9)
  {
    v10 = (a1 + 48);
    LOBYTE(v8) = 6;
    v54 = v8;
    v11 = v56;
    while (1)
    {
      v47 = v9;
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      v53 = v13;
      v52 = v14;
      switch(v14)
      {
        case 0:
        case 1:
          goto LABEL_10;
        case 2:
          goto LABEL_9;
        case 3:
          v12;
          goto LABEL_10;
        case 4:
          v13 = v12;
LABEL_9:
          v13;
          goto LABEL_10;
        case 5:
          v12;
LABEL_10:
          if (v54 == 6)
          {
            switch(v14)
            {
              case 0:
                goto LABEL_14;
              case 1:
                goto LABEL_26;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_24;
              case 4:
                goto LABEL_19;
              case 5:
                goto LABEL_30;
            }
          }

          break;
        case 6:
          v56 = v11;
          type metadata accessor for CMLFeatureValue();
          v15 = CMLFeatureValue.__allocating_init()(0);
          goto LABEL_17;
      }

      switch(v14)
      {
        case 0:
          if (v54)
          {
            goto LABEL_41;
          }

LABEL_14:
          v16 = v11;
          v17 = specialized handling<A, B>(_:_:)(v12);
          if (v11)
          {
            v44 = 100;
            goto LABEL_52;
          }

          v18 = v17;
          v56 = 0;
          if (!v17)
          {
            BUG();
          }

          v54 = 0;
          v19 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v19, 25, 7);
          v15 = CMLFeatureValue.init(rawValue:ownsValue:)(v18, 1);
LABEL_17:
          v20 = v15;
          goto LABEL_32;
        case 1:
          if (v54 != 1)
          {
            goto LABEL_41;
          }

LABEL_26:
          a2 = *&v12;
          v16 = v11;
          v25 = specialized handling<A, B>(_:_:)();
          if (v11)
          {
            v44 = 153;
LABEL_52:
            v45 = v16;
LABEL_53:
            swift_unexpectedError(v45, "CreateML/MLDataValueConvertible.swift", 37, 1, v44);
            BUG();
          }

          v26 = v25;
          v56 = 0;
          if (!v25)
          {
            BUG();
          }

          v27 = type metadata accessor for CMLFeatureValue();
          swift_allocObject(v27, 25, 7);
          v21 = CMLFeatureValue.init(rawValue:ownsValue:)(v26, 1);
          v20 = v21;
          LOBYTE(v21) = 1;
          goto LABEL_31;
        case 2:
          if (v54 != 2)
          {
            goto LABEL_41;
          }

LABEL_21:
          type metadata accessor for CMLFeatureValue();
          v56 = v11;
          v22 = v12;
          v23 = v53;
          swift_bridgeObjectRetain_n(v53, 2);
          v48 = v22;
          v24 = v56;
          CMLFeatureValue.__allocating_init(_:)(v22, v23);
          v56 = v24;
          if (!v24)
          {
            JUMPOUT(0xDFAB5);
          }

          v44 = 170;
          v45 = v56;
          goto LABEL_53;
        case 3:
          if (v54 != 3)
          {
            goto LABEL_41;
          }

LABEL_24:
          v56 = v11;
          v55 = v12;
          swift_retain_n(v12, 2);
          v20 = MLDataValue.SequenceType.featureValue.getter(a2);
          v55;
          outlined consume of MLDataValue(v12, v53, v52);
          LOBYTE(v21) = 3;
          goto LABEL_31;
        case 4:
          if (v54 != 4)
          {
            goto LABEL_41;
          }

LABEL_19:
          v56 = v11;
          v55 = v12;
          swift_bridgeObjectRetain_n(v12, 2);
          v20 = MLDataValue.DictionaryType.featureValue.getter();
          v55;
          outlined consume of MLDataValue(v12, v53, v52);
          LOBYTE(v21) = 4;
          goto LABEL_31;
        case 5:
          if (v54 != 5)
          {
LABEL_41:
            v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
            *v40 = 0xD000000000000027;
            *(v40 + 8) = "Invalid labelColumn." + 0x8000000000000000;
            *(v40 + 16) = 0;
            *(v40 + 32) = 0;
            *(v40 + 48) = 1;
            swift_willThrow();
            swift_setDeallocating(v51);
            v41 = CMLFeatureValue.deinit();
            swift_deallocClassInstance(v41, 25, 7);
            outlined consume of MLDataValue(v12, v53, v52);
            v50;
LABEL_42:
            v32 = v49;
LABEL_43:
            v42 = type metadata accessor for _UntypedColumn();
            swift_deallocPartialClassInstance(v32, v42, 24, 7);
            return v32;
          }

LABEL_30:
          v56 = v11;
          v55 = v12;
          v28 = v12;
          v28;
          v20 = MLDataValue.MultiArrayType.featureValue.getter();

          outlined consume of MLDataValue(v12, v53, v52);
          LOBYTE(v21) = 5;
LABEL_31:
          v54 = v21;
LABEL_32:
          v29 = v56;
          CMLSequence.append(_:)(v20);
          v11 = v29;
          if (v29)
          {
            v50;
            swift_setDeallocating(v51);
            v34 = CMLFeatureValue.deinit();
            swift_deallocClassInstance(v34, 25, 7);
            outlined consume of MLDataValue(v12, v53, v52);
            v20;
            goto LABEL_42;
          }

          v20;
          outlined consume of MLDataValue(v12, v53, v52);
          v10 += 24;
          v9 = v47 - 1;
          if (v47 == 1)
          {
            goto LABEL_36;
          }

          break;
      }
    }
  }

  v11 = v56;
LABEL_36:
  v50;
  v30 = v51;
  v31 = specialized handling<A, B>(_:_:)(*(v51 + 16));
  v32 = v49;
  if (v11)
  {
    swift_setDeallocating(v30);
    v33 = CMLFeatureValue.deinit();
    swift_deallocClassInstance(v33, 25, 7);
    goto LABEL_43;
  }

  v35 = v31;
  v56 = 0;
  if (!v31)
  {
    BUG();
  }

  swift_setDeallocating(v30);
  v36 = CMLFeatureValue.deinit();
  swift_deallocClassInstance(v36, 25, 7);
  v37 = type metadata accessor for CMLColumn();
  v38 = swift_allocObject(v37, 24, 7);
  *(v38 + 16) = v35;
  *(v32 + 16) = v38;
  return v32;
}

{
  v4 = a1;
  v5 = tc_v1_flex_list_create(0);
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v27 = v2;
  v26 = v3;
  v7 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v7, v21);
  *(inited + 16) = v6;
  v25 = inited;
  *(inited + 24) = 1;
  v23 = *(a1 + 16);
  if (v23)
  {
    v9 = 0;
    v24 = a1;
    while (1)
    {
      v10 = *(v4 + 8 * v9 + 32);
      v22[3] = &type metadata for MLDataValue.MultiArrayType;
      v22[4] = &protocol witness table for MLDataValue.MultiArrayType;
      v22[0] = v10;
      __swift_project_boxed_opaque_existential_0Tm(v22, &type metadata for MLDataValue.MultiArrayType);
      v11 = v10;
      v12 = v11;
      v13 = MLDataValue.MultiArrayType.featureValue.getter();
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v14 = v27;
      CMLSequence.append(_:)(v13);
      v27 = v14;
      if (v14)
      {
        break;
      }

      ++v9;

      v4 = v24;
      if (v23 == v9)
      {
        goto LABEL_6;
      }
    }

    swift_setDeallocating(v25);
    v18 = CMLFeatureValue.deinit(a2);
    swift_deallocClassInstance(v18, 25, 7);
    v24;

    v17 = v26;
  }

  else
  {
LABEL_6:
    v4;
    type metadata accessor for CMLColumn();
    v15 = v27;
    v16 = CMLColumn.__allocating_init(_:type:)(v25, 6);
    if (!v15)
    {
      v17 = v26;
      *(v26 + 16) = v16;
      return v17;
    }

    v17 = v26;
  }

  v19 = type metadata accessor for _UntypedColumn();
  swift_deallocPartialClassInstance(v17, v19, 24, 7);
  return v17;
}

{
  v4 = v2;
  v29 = v3;
  v5 = tc_v1_flex_list_create(0);
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v7 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v7, v22);
  *(inited + 16) = v6;
  v28 = inited;
  *(inited + 24) = 1;
  v26 = *(a1 + 16);
  v31 = a1;
  if (v26)
  {
    v9 = a1;
    v30 = v2;
    v27 = lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Double] and conformance <> [A : B], &demangling cache variable for type metadata for [String : Double], &protocol witness table for Double, &protocol conformance descriptor for <> [A : B]);
    a1;
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 8 * v10 + 32);
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
      v25 = v27;
      v23[0] = v11;
      v12 = *__swift_project_boxed_opaque_existential_0Tm(v23, v24);
      swift_bridgeObjectRetain_n(v11, 2);
      v13 = specialized Dictionary<>.featureValue.getter(v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v14 = v30;
      CMLSequence.append(_:)(v13);
      v30 = v14;
      if (v14)
      {
        break;
      }

      ++v10;

      v11;
      v9 = v31;
      if (v26 == v10)
      {
        v31;
        v15 = v29;
        v4 = v30;
        goto LABEL_8;
      }
    }

    swift_setDeallocating(v28);
    v18 = CMLFeatureValue.deinit(a2);
    swift_deallocClassInstance(v18, 25, 7);
    v11;
    v17 = v31;
    v31;
    v15 = v29;
  }

  else
  {
    v15 = v29;
LABEL_8:
    type metadata accessor for CMLColumn();
    v16 = CMLColumn.__allocating_init(_:type:)(v28, 4);
    if (!v4)
    {
      v20 = v16;
      v31;
      *(v15 + 16) = v20;
      return v15;
    }

    v17 = v31;
  }

  v17;
  v19 = type metadata accessor for _UntypedColumn();
  swift_deallocPartialClassInstance(v15, v19, 24, 7);
  return v15;
}

void *protocol witness for MLDataValueConvertible.init() in conformance String()
{
  *result = 0;
  result[1] = 0xE000000000000000;
  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, double a2)
{
  v2 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v2, 24, 7);
  a1;
  return specialized _UntypedColumn.init<A>(_:)(a1, a2);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew()(a1);
}

{
  v2 = a1 & 0xFFFFFFFFFFFFF8;
  if ((a1 & 0x4000000000000001) != 0)
  {
    if (a1)
    {
      v2 = a1;
    }

    v3 = _CocoaArrayWrapper.endIndex.getter(v2);
  }

  else
  {
    v3 = *(v2 + 16);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew()(a1);
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(void *a1, void *a2)
{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, a2, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, a2, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, a2, specialized closure #1 in MLUntypedColumn.init<A>(_:));
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(void *a1, void *a2, uint64_t (*a3)(void))
{
  v5 = v3;
  result = a3(*a1);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *v5 = result;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActivityClassifier.DataSource(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v18 = type metadata accessor for DataFrame(0);
      (*(*(v18 - 8) + 16))(a1, a2, v18);
      v23 = 2;
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 16))(a1, a2, v21);
        v20 = a3;
        v19 = 0;
        goto LABEL_9;
      }

      v7 = type metadata accessor for URL(0);
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      v9 = v8[12];
      *(a1 + v9) = *(a2 + v9);
      v10 = *(a2 + v9 + 8);
      *(v3 + v9 + 8) = v10;
      v11 = v8[16];
      *(v3 + v11) = *(a2 + v11);
      v12 = *(a2 + v11 + 8);
      *(v3 + v11 + 8) = v12;
      v13 = v8[20];
      *(v3 + v13) = *(a2 + v13);
      v14 = *(a2 + v13 + 8);
      *(v3 + v13 + 8) = v14;
      v15 = v8[24];
      *(v3 + v15) = *(a2 + v15);
      v16 = *(a2 + v15 + 8);
      *(v3 + v15 + 8) = v16;
      v10;
      v12;
      v14;
      v16;
      v23 = 1;
    }

    v19 = v23;
    a1 = v3;
    v20 = a3;
LABEL_9:
    swift_storeEnumTagMultiPayload(a1, v20, v19);
    return v3;
  }

  v17 = *a2;
  *v3 = *a2;
  v3 = (v17 + ((v4 + 16) & ~v4));

  return v3;
}

uint64_t destroy for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 2)
  {
    v3 = type metadata accessor for DataFrame(0);
  }

  else
  {
    if (result == 1)
    {
      v4 = type metadata accessor for URL(0);
      (*(*(v4 - 8) + 8))(a1, v4);
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
      *(a1 + v5[12] + 8);
      *(a1 + v5[16] + 8);
      *(a1 + v5[20] + 8);
      return *(a1 + v5[24] + 8);
    }

    if (result)
    {
      return result;
    }

    v3 = type metadata accessor for URL(0);
  }

  return (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t initializeWithCopy for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v16 = type metadata accessor for DataFrame(0);
LABEL_6:
    (*(*(v16 - 8) + 16))(a1, a2, v16);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v16 = type metadata accessor for URL(0);
    goto LABEL_6;
  }

  v6 = type metadata accessor for URL(0);
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  v8 = v7[12];
  *(a1 + v8) = *(a2 + v8);
  v9 = *(a2 + v8 + 8);
  *(a1 + v8 + 8) = v9;
  v10 = v7[16];
  *(a1 + v10) = *(a2 + v10);
  v11 = *(a2 + v10 + 8);
  *(a1 + v10 + 8) = v11;
  v12 = v7[20];
  *(a1 + v12) = *(a2 + v12);
  v18 = v3;
  v13 = *(a2 + v12 + 8);
  *(a1 + v12 + 8) = v13;
  v14 = v7[24];
  *(a1 + v14) = *(a2 + v14);
  v15 = *(a2 + v14 + 8);
  *(a1 + v14 + 8) = v15;
  v9;
  v11;
  LOBYTE(v9) = v13;
  v3 = v18;
  v9;
  v15;
LABEL_7:
  swift_storeEnumTagMultiPayload(a1, v3, EnumCaseMultiPayload);
  return a1;
}

uint64_t assignWithCopy for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActivityClassifier.DataSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v15 = type metadata accessor for DataFrame(0);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = type metadata accessor for URL(0);
        (*(*(v6 - 8) + 16))(a1, a2, v6);
        v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        v8 = v7[12];
        *(a1 + v8) = *(a2 + v8);
        v9 = *(a2 + v8 + 8);
        *(a1 + v8 + 8) = v9;
        v10 = v7[16];
        *(a1 + v10) = *(a2 + v10);
        v17 = *(a2 + v10 + 8);
        *(a1 + v10 + 8) = v17;
        v11 = v7[20];
        *(a1 + v11) = *(a2 + v11);
        v12 = *(a2 + v11 + 8);
        *(a1 + v11 + 8) = v12;
        v13 = v7[24];
        *(a1 + v13) = *(a2 + v13);
        v14 = *(a2 + v13 + 8);
        *(a1 + v13 + 8) = v14;
        v9;
        v17;
        v12;
        v14;
LABEL_8:
        swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
        return a1;
      }

      v15 = type metadata accessor for URL(0);
    }

    (*(*(v15 - 8) + 16))(a1, a2, v15);
    goto LABEL_8;
  }

  return a1;
}

uint64_t type metadata accessor for MLActivityClassifier.DataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.DataSource;
  if (!type metadata singleton initialization cache for MLActivityClassifier.DataSource)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.DataSource);
  }

  return result;
}

uint64_t initializeWithTake for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  if (EnumCaseMultiPayload == 2)
  {
    v7 = type metadata accessor for DataFrame(0);
LABEL_6:
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v7 = type metadata accessor for URL(0);
    goto LABEL_6;
  }

  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
  *(a1 + v6[12]) = *(a2 + v6[12]);
  *(a1 + v6[16]) = *(a2 + v6[16]);
  *(a1 + v6[20]) = *(a2 + v6[20]);
  *(a1 + v6[24]) = *(a2 + v6[24]);
LABEL_7:
  swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  return a1;
}

uint64_t assignWithTake for MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLActivityClassifier.DataSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for DataFrame(0);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = type metadata accessor for URL(0);
        (*(*(v5 - 8) + 32))(a1, a2, v5);
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
        *(a1 + v6[12]) = *(a2 + v6[12]);
        *(a1 + v6[16]) = *(a2 + v6[16]);
        *(a1 + v6[20]) = *(a2 + v6[20]);
        *(a1 + v6[24]) = *(a2 + v6[24]);
LABEL_8:
        swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
        return a1;
      }

      v7 = type metadata accessor for URL(0);
    }

    (*(*(v7 - 8) + 32))(a1, a2, v7);
    goto LABEL_8;
  }

  return a1;
}

uint64_t type metadata completion function for MLActivityClassifier.DataSource(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v7[0] = *(result - 8) + 64;
    swift_getTupleTypeLayout(v6, 0, 5);
    v7[1] = v6;
    result = type metadata accessor for DataFrame(319);
    if (v5 <= 0x3F)
    {
      v7[2] = *(result - 8) + 64;
      swift_initEnumMetadataMultiPayload(a1, 256, 3, v7, v3, v4);
      return 0;
    }
  }

  return result;
}

uint64_t static MLModel.compile(_:)()
{
  v1 = v0[19];
  v2 = Model.serialized()();
  v0[20] = v2;
  v0[21] = v3;
  v4 = v2;
  v5 = v3;
  type metadata accessor for MLModelAsset();
  outlined copy of Data._Representation(v4, v5);
  v6 = @nonobjc MLModelAsset.__allocating_init(specification:)(v4, v5);
  v0[22] = v6;
  v7 = v6;
  v12 = objc_opt_self(MLModel);
  v8 = objc_allocWithZone(MLModelConfiguration);
  v9 = [v8 init];
  v0[23] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = static MLModel.compile(_:);
  v10 = swift_continuation_init(v0 + 2, 1);
  v0[17] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for UnsafeContinuation<MLModel, Error>);
  v0[14] = v10;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned MLModel?, @unowned NSError?) -> () with result type MLModel;
  v0[13] = &block_descriptor_3;
  [v12 loadModelAsset:v7 configuration:v9 completionHandler:v0 + 10];
  return swift_continuation_await(v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = static MLModel.compile(_:);
  }

  else
  {
    v2 = static MLModel.compile(_:);
  }

  return swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  outlined consume of Data._Representation(*(v0 + 160), *(v0 + 168));

  v3 = *(v0 + 144);
  return (*(v0 + 8))(v3);
}

uint64_t static MLModel.compile(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 192);
  v9 = *(v2 + 184);
  v4 = *(v2 + 176);
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  swift_willThrow(a1, a2);
  outlined consume of Data._Representation(v5, v6);

  v7 = *(v2 + 192);
  return (*(v2 + 8))();
}

uint64_t type metadata accessor for MLModelAsset()
{
  result = lazy cache variable for type metadata for MLModelAsset;
  if (!lazy cache variable for type metadata for MLModelAsset)
  {
    v1 = objc_opt_self(MLModelAsset);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for MLModelAsset = result;
  }

  return result;
}

id @nonobjc MLModelAsset.__allocating_init(specification:)(uint64_t a1, unint64_t a2)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = 0;
  v4 = [ObjCClassFromMetadata modelAssetWithSpecificationData:isa error:&v9];
  v5 = v4;

  v6 = v9;
  if (v5)
  {
    v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow(v7, "modelAssetWithSpecificationData:error:");
  }

  outlined consume of Data._Representation(a1, a2);
  return v5;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) (@unowned MLModel?, @unowned NSError?) -> () with result type MLModel(uint64_t a1, void *a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v4, v5);
  }

  else
  {
    if (!a2)
    {
      BUG();
    }

    v7 = a2;
    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v4, v7);
  }
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  v3 = swift_allocError(v2, &protocol self-conformance witness table for Error, 0, 0);
  *v4 = a2;
  return swift_continuation_throwingResumeWithError(a1, v3);
}

void MLDecisionTreeRegressor.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 28);
  v16 = v3;
  v11._rawValue = *(v3 + v10);
  v18 = a1;
  DataFrame.validateContainsColumns(_:context:)(v11, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (!v12)
  {
    v20 = v6;
    v13 = v17;
    v14 = v16;
    TreeRegressorModel.applied(to:eventHandler:)(v18, 0, 0);
    DataFrame.subscript.getter(*v14, v14[1]);
    (*(v20 + 8))(v13, v5);
  }
}

uint64_t type metadata accessor for MLDecisionTreeRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLDecisionTreeRegressor;
  if (!type metadata singleton initialization cache for MLDecisionTreeRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLDecisionTreeRegressor);
  }

  return result;
}

uint64_t MLDecisionTreeRegressor.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLDecisionTreeRegressor.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

void MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1;
  v6 = type metadata accessor for MLDecisionTreeRegressor(0);
  v7._rawValue = *(v3 + *(v6 + 28));
  v16 = a1;
  DataFrame.validateContainsColumns(_:context:)(v7, __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v8)
  {
    goto LABEL_4;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v9, v15);
  v11 = v3;
  v12._rawValue = inited;
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  v13 = *(v6 + 24);
  v14 = *(v11 + v13 + 8);
  *(v12._rawValue + 4) = *(v11 + v13);
  *(v12._rawValue + 5) = v14;
  v14;
  DataFrame.validateContainsColumns(_:context:)(v12, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  swift_setDeallocating(v12._rawValue);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (v8)
  {
LABEL_4:
    *v5 = v8;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
  }

  else
  {
    TreeRegressorModel.computeMetrics(on:)(v16);
  }
}

uint64_t MLDecisionTreeRegressor.evaluation(on:)(uint64_t a1)
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
  MLDecisionTreeRegressor.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLDecisionTreeRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v44 = v3;
  v49 = a2;
  v50 = a1;
  v4 = *(*(type metadata accessor for TreeRegressorModel(0) - 8) + 64);
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD000000000000015, ("v24@?0@MLModel8@NSError16" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v2)
  {
    v45 = 0;
    v51 = &v34;
    v48 = v7;
    v49 = v11;
    v50 = v12;
    v17 = v46;
    outlined init with copy of MLTrainingSessionParameters(v44, v46, type metadata accessor for TreeRegressorModel);
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
    outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for TreeRegressorModel);
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

uint64_t MLDecisionTreeRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLDecisionTreeRegressor.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLDecisionTreeRegressor.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLDecisionTreeRegressor(0);
  v3 = v0 + v2[8];
  v22 = MLDecisionTreeRegressor.ModelParameters.description.getter();
  v5 = v4;
  v6 = v2[9];
  v17 = *(v1 + v6);
  v19 = *(v1 + v6 + 8);
  v21 = *(v1 + v6 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v17, v19, v21);
  v24 = MLRegressorMetrics.description.getter();
  v8 = v7;
  outlined consume of Result<_RegressorMetrics, Error>(v17, v19, v21);
  v9 = v2[10];
  LOBYTE(v2) = *(v1 + v9 + 16) & 1;
  v18 = *(v1 + v9);
  v20 = *(v1 + v9 + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v20, *(v1 + v9 + 16));
  v16._countAndFlagsBits = MLRegressorMetrics.description.getter();
  v16._object = v10;
  outlined consume of Result<_RegressorMetrics, Error>(v18, v20, v2);
  v11._countAndFlagsBits = v22;
  v23 = v5;
  v11._object = v5;
  String.append(_:)(v11);
  v11._countAndFlagsBits = v24;
  v11._object = v8;
  String.append(_:)(v11);
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  v11._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v11);
  "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  if (v2)
  {
    v12 = v8;
    object = v16._object;
  }

  else
  {
    String.append(_:)(v16);
    v14._countAndFlagsBits = 0xD000000000000020;
    object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v14._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    String.append(_:)(v14);
    v8;
    v12 = v16._object;
  }

  v12;
  object;
  v23;
  return 0xD000000000000022;
}

NSAttributedString MLDecisionTreeRegressor.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLDecisionTreeRegressor.description.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLDecisionTreeRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLDecisionTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLDecisionTreeRegressor.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLDecisionTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLDecisionTreeRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLDecisionTreeRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLDecisionTreeRegressor(0);
  return outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLDecisionTreeRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLDecisionTreeRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLDecisionTreeRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t static MLDecisionTreeRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLDecisionTreeRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v12 = *(v0 + 48);
  v11 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MLDecisionTreeRegressor(0);
  *(v0 + 64) = v2;
  v3 = v2[9];
  *(v0 + 96) = v3;
  *(v1 + v3 + 16) = 0;
  *(v1 + v3) = 0;
  v4 = v2[10];
  *(v0 + 100) = v4;
  v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v6 = swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
  *v7 = 0xD0000000000000C0;
  *(v7 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 48) = 0;
  *(v1 + v4) = v6;
  *(v1 + v4 + 8) = 0;
  *(v1 + v4 + 16) = 1;
  *(v1 + v2[7]) = v12;
  *(v1 + v2[6]) = v11;
  v8 = swift_task_alloc(288);
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  v9 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v3 + *(v1 + 20)) = *(v0 + 88);
  outlined init with take of MLClassifierMetrics(v4, v3, type metadata accessor for TreeRegressorModel);
  v5 = *(v1 + 32);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *(v3 + v5 + 48) = v2[3];
  *(v3 + v5 + 32) = v8;
  *(v3 + v5 + 16) = v7;
  *(v3 + v5) = v6;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v7 = *(v0 + 48);
  v8 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLDecisionTreeRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TreeRegressorModel);
  v8;
  v7;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  v5 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, Swift::Int a4, uint64_t a5)
{
  quantity = a4;
  v122 = a3;
  v7 = v5;
  v113 = a2;
  v118 = v6;
  v125 = a5;
  v121 = a1;
  v128 = type metadata accessor for DataFrame(0);
  v119 = *(v128 - 8);
  v8 = *(v119 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v107 = &v92;
  v104 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v11 = *(v104 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v102 = &v92;
  v103 = v11;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v120 = &v92;
  v100 = type metadata accessor for TreeRegressor(0);
  v16 = *(*(v100 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v116 = &v92;
  v112 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v19 = *(*(v112 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v129 = &v92;
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v22 = *(*(v111 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v110 = &v92;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v106 = &v92;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v123 = &v92;
  v126 = type metadata accessor for BoostedTreeConfiguration(0);
  v127 = *(v126 - 8);
  v29 = *(v127 + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v101 = &v92;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v109 = &v92;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v36 = type metadata accessor for MLDecisionTreeRegressor(0);
  v37 = *(v36 + 36);
  *(v7 + v37 + 16) = 0;
  v114 = v37;
  *(v7 + v37) = 0;
  v105 = v36;
  v38 = *(v36 + 40);
  v39 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v40 = swift_allocError(&type metadata for MLCreateError, v39, 0, 0);
  *v41 = 0xD0000000000000C0;
  *(v41 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v41 + 16) = 0;
  *(v41 + 32) = 0;
  *(v41 + 48) = 0;
  *(v7 + v38) = v40;
  *(v7 + v38 + 8) = 0;
  v108 = v38;
  v117 = v7;
  *(v7 + v38 + 16) = 1;
  v42 = v125;
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v125, &v94);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.maximumIterations.setter(1);
  BoostedTreeConfiguration.learningRate.setter(1.0);
  BoostedTreeConfiguration.maximumDepth.setter(v96);
  BoostedTreeConfiguration.minimumLossReduction.setter(v97);
  BoostedTreeConfiguration.minimumChildWeight.setter(v98);
  v124 = &v92;
  BoostedTreeConfiguration.randomSeed.setter(v99);
  outlined destroy of MLDecisionTreeRegressor.ModelParameters(&v94);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v42, &v92, &demangling cache variable for type metadata for Any?);
  if (!v93)
  {
    BUG();
  }

  v43 = v117 + v114;
  v44 = v123;
  v45 = v123 + *(v111 + 48);
  outlined init with take of Any(&v92, &v94);
  swift_dynamicCast(v129, &v94, &type metadata for Any + 8, v112, 7);
  v46 = v118;
  MLDecisionTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v44, v45, v121);
  if (v46)
  {
    v122;
    quantity;
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    (*(v119 + 8))(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
    (*(v127 + 8))(v124, v126);
    v47 = v117;
LABEL_7:
    outlined consume of Result<_RegressorMetrics, Error>(*v43, *(v43 + 8), *(v43 + 16));
    return outlined consume of Result<_RegressorMetrics, Error>(*(v47 + v108), *(v47 + v108 + 8), *(v47 + v108 + 16));
  }

  v114 = v43;
  outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  v48 = quantity;
  v49 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v123, v113, v122, quantity);
  v129 = 0;
  v50 = v49;
  v48;
  v51 = *(v127 + 16);
  v52 = v109;
  v51(v109, v124, v126);
  v53 = v51;
  v54 = v116;
  *v116 = v113;
  *(v54 + 1) = v122;
  v118 = v50;
  *(v54 + 2) = v50;
  *(v54 + 3) = v50;
  *(v54 + 4) = 0xD000000000000013;
  *(v54 + 5) = "raining samples." + 0x8000000000000000;
  v55 = v101;
  v53(v101, v52, v126);
  v56 = v54 + *(v100 + 28);
  swift_bridgeObjectRetain_n(v118, 2);
  v122;
  v57 = v55;
  v58 = v126;
  BaseTreeRegressor.init(configuration:)(v57);
  v127 = *(v127 + 8);
  (v127)(v109, v58);
  v59 = v122;
  v60 = v129;
  TreeRegressor.fitted(to:validateOn:eventHandler:)(v123, v45, 0, 0);
  v129 = v60;
  if (v60)
  {
    v59;
    v118;
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    (*(v119 + 8))(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v58);
    v47 = v117;
LABEL_6:
    v43 = v114;
    goto LABEL_7;
  }

  if (!AnalyticsReporter.init()())
  {
    v62 = v123;
    v63 = v106;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, v106, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v64 = v63 + *(v111 + 48);
    quantity = DataFrame.shape.getter(v62);
    (*(v119 + 8))(v63, v128);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_decisionTreeRegressor, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), quantity);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v64, &demangling cache variable for type metadata for DataFrame?);
  }

  v65 = v105;
  v66 = v105[6];
  v67 = v117;
  *(v117 + v66) = v113;
  *(v67 + v66 + 8) = v122;
  quantity = v67 + v65[8];
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v125, quantity);
  *(v67 + v65[7]) = v118;
  v68 = v102;
  outlined init with copy of MLTrainingSessionParameters(v120, v102, type metadata accessor for TreeRegressorModel);
  v69 = *(v104 + 80);
  v70 = ~*(v104 + 80) & (v69 + 16);
  v71 = swift_allocObject(&unk_390E08, v70 + v103, v69 | 7);
  outlined init with take of MLClassifierMetrics(v68, v71 + v70, type metadata accessor for TreeRegressorModel);
  v72 = v129;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), v71);
  if (v72)
  {
    v129 = v72;

    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    (*(v119 + 8))(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v126);
    v118;
    v122;
    v47 = v117;
LABEL_13:
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(quantity);
    goto LABEL_6;
  }

  v74 = v73;

  v75 = v65[5];
  v112 = v74;
  v47 = v117;
  *(v117 + v75) = v74;
  outlined init with copy of MLTrainingSessionParameters(v120, v47, type metadata accessor for TreeRegressorModel);
  v76 = v123;
  TreeRegressorModel.computeMetrics(on:)(v123);
  v129 = 0;
  v77 = v95;
  v78 = v114;
  outlined consume of Result<_RegressorMetrics, Error>(*v114, *(v114 + 8), *(v114 + 16));
  *v78 = v94;
  *(v78 + 16) = v77;
  v79 = v110;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, v110, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v80 = v79 + *(v111 + 48);
  if (__swift_getEnumTagSinglePayload(v80, 1, v128) == 1)
  {
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    v81 = *(v119 + 8);
    v81(v121, v128);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v76, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v126);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v80, &demangling cache variable for type metadata for DataFrame?);
    return (v81)(v79, v128);
  }

  else
  {
    v82 = v107;
    v83 = v80;
    v84 = v128;
    v85 = v119;
    (*(v119 + 32))(v107, v83, v128);
    v86 = *(v85 + 8);
    v86(v110, v84);
    v87 = v129;
    TreeRegressorModel.computeMetrics(on:)(v82);
    v129 = v87;
    if (v87)
    {
      outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
      v88 = v128;
      v86(v121, v128);
      v86(v82, v88);
      outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (v127)(v124, v126);
      outlined destroy of MLActivityClassifier.ModelParameters(v47, type metadata accessor for TreeRegressorModel);
      v118;
      v122;

      goto LABEL_13;
    }

    outlined destroy of MLDecisionTreeRegressor.ModelParameters(v125);
    v89 = v128;
    v86(v121, v128);
    v86(v82, v89);
    outlined destroy of MLActivityClassifier.ModelParameters(v120, type metadata accessor for TreeRegressorModel);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for TreeRegressor);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v123, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (v127)(v124, v126);
    v90 = v95;
    v91 = v108;
    result = outlined consume of Result<_RegressorMetrics, Error>(*(v47 + v108), *(v47 + v108 + 8), *(v47 + v108 + 16));
    *(v47 + v91) = v94;
    *(v47 + v91 + 16) = v90;
  }

  return result;
}

uint64_t closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
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
  return swift_task_switch(closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, Swift::Int a4, uint64_t a5)
{
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  DataFrame.init(_:)(&v11);
  outlined init with copy of MLDecisionTreeRegressor.ModelParameters(a5, &v11);
  MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLDecisionTreeRegressor.ModelParameters(a5);
}

uint64_t MLDecisionTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  v63 = v2;
  v80 = a1;
  v3 = v1;
  v72 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v4 = *(*(v72 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v73 = v60;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v71 = v60;
  v70 = *(type metadata accessor for TreeRegressorModel(0) - 8);
  v9 = *(v70 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v68 = v60;
  v69 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = v60;
  v64 = type metadata accessor for BoostedTreeConfiguration(0);
  v65 = *(v64 - 8);
  v14 = *(v65 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v66 = v60;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v78 = v60;
  v77 = type metadata accessor for TreeRegressor(0);
  v19 = *(*(v77 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v75 = v60;
  v22 = type metadata accessor for MLDecisionTreeRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v62 = v23;
  *(v3 + v23) = 0;
  v76 = v22;
  v24 = *(v22 + 40);
  v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v25 = swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
  *v26 = 0xD0000000000000C0;
  *(v26 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v26 + 16) = 0;
  *(v26 + 32) = 0;
  *(v26 + 48) = 0;
  *(v3 + v24) = v25;
  *(v3 + v24 + 8) = 0;
  v74 = v3;
  v61 = v24;
  *(v3 + v24 + 16) = 1;
  v27 = v80;
  switch(*(v27 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v28 = 0x696C616974696E69;
      v29 = 0xEB0000000064657ALL;
      break;
    case 1:
      v28 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v28 = 0x697461756C617665;
LABEL_7:
      v29 = 0xEA0000000000676ELL;
      break;
    case 4:
      v29 = 0xEB00000000676E69;
      v28 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0xE2F70);
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v29;
  if (v30)
  {
LABEL_9:
    v31 = v78;
    BoostedTreeConfiguration.init()();
    v32 = v75;
    *v75 = 0;
    v32[1] = 0xE000000000000000;
    v32[2] = _swiftEmptyArrayStorage;
    v32[3] = _swiftEmptyArrayStorage;
    v32[4] = 0xD000000000000013;
    v32[5] = "raining samples." + 0x8000000000000000;
    v33 = v66;
    v34 = v31;
    v35 = v64;
    v36 = v65;
    (*(v65 + 16))(v66, v34, v64);
    v37 = *(v77 + 28);
    BaseTreeRegressor.init(configuration:)(v33);
    (*(v36 + 8))(v78, v35);
    v38 = lazy protocol witness table accessor for type TreeRegressor and conformance TreeRegressor();
    v39 = v79;
    v40 = v80;
    v41 = v63;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v80, v77, v38);
    if (!v41)
    {
      v44 = v68;
      outlined init with copy of MLTrainingSessionParameters(v39, v68, type metadata accessor for TreeRegressorModel);
      v45 = *(v70 + 80);
      v46 = ~*(v70 + 80) & (v45 + 16);
      v47 = swift_allocObject(&unk_390E30, v46 + v69, v45 | 7);
      outlined init with take of MLClassifierMetrics(v44, v47 + v46, type metadata accessor for TreeRegressorModel);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLDecisionTreeRegressor.init(checkpoint:), v47);
      v49 = v48;

      v51 = v74;
      *(v74 + v76[5]) = v49;
      outlined init with copy of MLTrainingSessionParameters(v79, v51, type metadata accessor for TreeRegressorModel);
      v52 = v71;
      *v71 = 0;
      *(v52 + 16) = 256;
      v77 = 0;
      v53 = v72;
      swift_storeEnumTagMultiPayload(v52, v72, 0);
      v54 = v76[8];
      v78 = (v51 + v54);
      *(v51 + v54 + 16) = 0;
      *(v51 + v54) = 0;
      *(v51 + v54 + 32) = 6;
      *(v51 + v54 + 40) = _mm_loadh_ps(&qword_33D880);
      *(v51 + v54 + 56) = 42;
      v55 = v73;
      outlined init with copy of MLTrainingSessionParameters(v52, v73, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
      v60[3] = v53;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
      outlined init with take of MLClassifierMetrics(v55, boxed_opaque_existential_0, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(v60, v78);
      outlined destroy of MLActivityClassifier.ModelParameters(v52, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
      v57 = v76;
      v58 = v76[6];
      *(v51 + v58) = 0;
      *(v51 + v58 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v79, type metadata accessor for TreeRegressorModel);
      outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for TreeRegressor);
      result = v57[7];
      *(v51 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v40, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for TreeRegressor);
  }

  else
  {
    v42 = v67;
    swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v43 = 0xD000000000000042;
    *(v43 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
    *(v43 + 16) = 0;
    *(v43 + 32) = 0;
    *(v43 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v42);
    outlined destroy of MLActivityClassifier.ModelParameters(v80, type metadata accessor for MLCheckpoint);
  }

  v50 = v74;
  outlined consume of Result<_RegressorMetrics, Error>(*(v74 + v62), *(v74 + v62 + 8), *(v74 + v62 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v50 + v61), *(v50 + v61 + 8), *(v50 + v61 + 16));
}

void *static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLDecisionTreeRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLDecisionTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLDecisionTreeRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLDecisionTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = v6;
  v58 = a6;
  v54 = a5;
  v55 = a4;
  v56 = a3;
  v50 = a2;
  v49 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v53 = &v41;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v51 = &v41;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v52 = &v41;
  v15 = type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v61 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v60 = &v41;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v57 = &v41;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v54, &v41, &demangling cache variable for type metadata for Any?);
  if (!v42)
  {
    BUG();
  }

  v26 = &v41 + *(v61 + 48);
  v59 = &v41;
  outlined init with take of Any(&v41, &v43);
  v27 = v59;
  swift_dynamicCast(&v41, &v43, &type metadata for Any + 8, v15, 7);
  v28 = v62;
  MLDecisionTreeRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v49);
  outlined destroy of MLActivityClassifier.ModelParameters(&v41, type metadata accessor for MLDecisionTreeRegressor.ModelParameters.ValidationData);
  if (!v28)
  {
    v29 = v57;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v57, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v61;
    v62 = v29 + *(v61 + 48);
    v31 = v27;
    v32 = v60;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v60, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v61 = v32 + *(v30 + 48);
    outlined init with copy of MLDecisionTreeRegressor.ModelParameters(v54, &v43);
    v55;
    v56;
    v33 = v52;
    BoostedTreeConfiguration.init()();
    BoostedTreeConfiguration.maximumIterations.setter(1);
    BoostedTreeConfiguration.learningRate.setter(1.0);
    BoostedTreeConfiguration.maximumDepth.setter(v45);
    BoostedTreeConfiguration.minimumLossReduction.setter(v46);
    BoostedTreeConfiguration.minimumChildWeight.setter(v47);
    BoostedTreeConfiguration.randomSeed.setter(v48);
    outlined destroy of MLDecisionTreeRegressor.ModelParameters(&v43);
    v34 = v51;
    outlined init with copy of MLTrainingSessionParameters(v58, v51, type metadata accessor for MLTrainingSessionParameters);
    v35 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_allocObject(v35, *(v35 + 48), *(v35 + 52));
    v36 = TreeRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v57, v61, v50, v56, v55, v33, v34);
    v37 = type metadata accessor for DataFrame(0);
    (*(*(v37 - 8) + 8))(v60, v37);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for DataFrame?);
    v44 = v35;
    v45 = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    *&v43 = v36;
    v38 = v53;
    outlined init with copy of MLTrainingSessionParameters(v58, v53, type metadata accessor for MLTrainingSessionParameters);
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>);
    swift_allocObject(v39, *(v39 + 48), *(v39 + 52));

    v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v43, v38, 2);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v27;
}

uint64_t static MLDecisionTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = TreeRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for TreeRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 2);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLDecisionTreeRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_390E68, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLDecisionTreeRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v2[24] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TreeRegressorModel?);
  v2[26] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLDecisionTreeRegressor(0);
  v2[27] = v4;
  v2[28] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[29] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[30] = v6;
  v7 = *(v6 - 8);
  v2[31] = v7;
  v2[32] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[33] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[34] = v9;
  v2[35] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLDecisionTreeRegressor.init(delegate:), 0, 0);
}

uint64_t MLDecisionTreeRegressor.init(delegate:)()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters + v0[25];
  swift_beginAccess(v3, v0 + 18, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[32];
  v18 = v0[31];
  v15 = v0[30];
  v16 = v0[29];
  v7 = v0[25];
  v14 = v0[26];
  outlined init with take of MLClassifierMetrics(v0[33], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLDecisionTreeRegressor.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, v0 + 21, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for TreeRegressorModel?);
  v11 = type metadata accessor for TreeRegressorModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLDecisionTreeRegressor.ModelParameters((v0 + 2), (v0 + 10));
  v19;
  v9;
  v12 = swift_task_alloc(112);
  v0[36] = v12;
  *v12 = v0;
  v12[1] = MLDecisionTreeRegressor.init(delegate:);
  return MLDecisionTreeRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[28], v0[26], v17, v19, v9, (v0 + 10));
}

{
  v2 = *(*v1 + 288);
  *(*v1 + 296) = v0;
  v2;
  if (v0)
  {
    v3 = MLDecisionTreeRegressor.init(delegate:);
  }

  else
  {
    v3 = MLDecisionTreeRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 200);
  outlined init with take of MLClassifierMetrics(*(v0 + 224), *(v0 + 192), type metadata accessor for MLDecisionTreeRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v17 = *(v0 + 280);
  v16 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v18 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics);
  v15 = *(v1 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v18, v15, v2);
  outlined destroy of MLDecisionTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v5 = *(v16 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v18;
  *(v3 + v5 + 8) = v15;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
  v19 = *(v4 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v19, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 192);
    v9 = *(*(v0 + 216) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v19;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 256);
  v12 = *(v0 + 232);
  v20 = *(v0 + 208);
  v13 = *(v0 + 224);
  *(v0 + 280);
  v10;
  v11;
  v12;
  v13;
  v20;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 224);
  v4 = *(v0 + 200);
  v7 = *(v0 + 208);

  outlined destroy of MLDecisionTreeRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for PersistentParametersForTreeBasedMethods);
  v1;
  v2;
  v3;
  v9;
  v8;
  v7;
  v5 = *(v0 + 296);
  return (*(v0 + 8))();
}

uint64_t outlined consume of Result<_RegressorMetrics, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for TreeRegressorModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLDecisionTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t partial apply for closure #1 in MLDecisionTreeRegressor.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for TreeRegressorModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestRegressor.init(checkpoint:)(a1);
}

id sub_E419D()
{
  v1 = v0;
  result = MLDecisionTreeRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
  }

  else
  {
    *a1 = *a2;
    v5 = a2[1];
    v3[1] = v5;
    v6 = a2[2];
    v5;
    if (v6)
    {
      v3[2] = v6;
      v3[3] = a2[3];
      v7 = a2[4];
      v3[4] = v7;
      v6;
      v7;
    }

    else
    {
      v3[4] = a2[4];
      *(v3 + 1) = *(a2 + 1);
    }

    v9 = *(type metadata accessor for TreeRegressorModel(0) + 24);
    v10 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v10 - 8) + 16))(v3 + v9, a2 + v9, v10);
    v11 = a3[5];
    v12 = *(a2 + v11);
    *(v3 + v11) = v12;
    v13 = a3[6];
    *(v3 + v13) = *(a2 + v13);
    v14 = *(a2 + v13 + 8);
    *(v3 + v13 + 8) = v14;
    v15 = a3[7];
    v29 = *(a2 + v15);
    *(v3 + v15) = v29;
    v16 = a3[8];
    v17 = v3 + v16;
    v31 = (a2 + v16);
    v18 = *(a2 + v16 + 24);
    v12;
    v14;
    v29;
    if (v18)
    {
      *(v17 + 3) = v18;
      v19 = v31;
      (**(v18 - 8))(v17, v31, v18);
    }

    else
    {
      v19 = v31;
      v20 = *v31;
      *(v17 + 1) = v31[1];
      *v17 = v20;
    }

    *(v17 + 2) = v19[2];
    *(v17 + 3) = v19[3];
    v21 = a3[9];
    v22 = *(a2 + v21);
    v23 = *(a2 + v21 + 8);
    v32 = *(a2 + v21 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v22, v23, v32);
    *(v3 + v21) = v22;
    *(v3 + v21 + 8) = v23;
    *(v3 + v21 + 16) = v32;
    v24 = a3[10];
    v25 = *(a2 + v24);
    v26 = *(a2 + v24 + 8);
    v27 = *(a2 + v24 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v25, v26, v27);
    *(v3 + v24) = v25;
    *(v3 + v24 + 8) = v26;
    *(v3 + v24 + 16) = v27;
  }

  return v3;
}

void *initializeWithCopy for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v5 = a2[2];
  v4;
  if (v5)
  {
    a1[2] = v5;
    a1[3] = a2[3];
    v6 = a2[4];
    a1[4] = v6;
    v5;
    v6;
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v7 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v8 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  v9 = a3[5];
  v10 = *(a2 + v9);
  *(a1 + v9) = v10;
  v11 = a3[6];
  *(a1 + v11) = *(a2 + v11);
  v12 = *(a2 + v11 + 8);
  *(a1 + v11 + 8) = v12;
  v13 = a3[7];
  v27 = *(a2 + v13);
  *(a1 + v13) = v27;
  v14 = a3[8];
  v15 = a1 + v14;
  v29 = (a2 + v14);
  v16 = *(a2 + v14 + 24);
  v10;
  v12;
  v27;
  if (v16)
  {
    *(v15 + 3) = v16;
    v17 = v29;
    (**(v16 - 8))(v15, v29, v16);
  }

  else
  {
    v17 = v29;
    v18 = *v29;
    *(v15 + 1) = v29[1];
    *v15 = v18;
  }

  *(v15 + 2) = v17[2];
  *(v15 + 3) = v17[3];
  v19 = a3[9];
  v20 = *(a2 + v19);
  v21 = *(a2 + v19 + 8);
  v30 = *(a2 + v19 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v20, v21, v30);
  *(a1 + v19) = v20;
  *(a1 + v19 + 8) = v21;
  *(a1 + v19 + 16) = v30;
  v22 = a3[10];
  v23 = *(a2 + v22);
  v24 = *(a2 + v22 + 8);
  v25 = *(a2 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v23, v24, v25);
  *(a1 + v22) = v23;
  *(a1 + v22 + 8) = v24;
  *(a1 + v22 + 16) = v25;
  return a1;
}

void *assignWithCopy for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v4;
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (v9)
    {
      a1[2] = v9;
      v9;
      v8;
      a1[3] = a2[3];
      v10 = a2[4];
      v11 = a1[4];
      a1[4] = v10;
      v10;
      v11;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else if (v9)
  {
    a1[2] = v9;
    a1[3] = a2[3];
    v12 = a2[4];
    a1[4] = v12;
    v9;
    v12;
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v13 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v14 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v14 - 8) + 24))(a1 + v13, a2 + v13, v14);
  v15 = a3[5];
  v16 = *(a2 + v15);
  v17 = *(a1 + v15);
  *(a1 + v15) = v16;
  v16;

  v18 = a3[6];
  *(a1 + v18) = *(a2 + v18);
  v19 = *(a2 + v18 + 8);
  v20 = *(a1 + v18 + 8);
  *(a1 + v18 + 8) = v19;
  v19;
  v20;
  v21 = a3[7];
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v22;
  v23;
  v24 = a3[8];
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = *(a2 + v24 + 24);
  if (!*(a1 + v24 + 24))
  {
    if (v27)
    {
      *(v25 + 3) = v27;
      (**(v27 - 8))(v25, v26);
      goto LABEL_15;
    }

LABEL_14:
    v30 = *v26;
    *(v25 + 1) = *(v26 + 1);
    *v25 = v30;
    goto LABEL_15;
  }

  v29 = (a1 + v24);
  if (!v27)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_0(v29, (a2 + v24));
LABEL_15:
  *(v25 + 4) = *(v26 + 4);
  *(v25 + 5) = *(v26 + 5);
  *(v25 + 6) = *(v26 + 6);
  *(v25 + 7) = *(v26 + 7);
  v31 = a3[9];
  v32 = *(a2 + v31);
  v33 = *(a2 + v31 + 8);
  v45 = *(a2 + v31 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v32, v33, v45);
  v34 = *(a1 + v31);
  v35 = *(a1 + v31 + 8);
  *(a1 + v31) = v32;
  *(a1 + v31 + 8) = v33;
  v36 = *(a1 + v31 + 16);
  *(a1 + v31 + 16) = v45;
  outlined consume of Result<_RegressorMetrics, Error>(v34, v35, v36);
  v37 = a3[10];
  v38 = *(a2 + v37);
  v39 = *(a2 + v37 + 8);
  v40 = *(a2 + v37 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v38, v39, v40);
  v41 = *(a1 + v37);
  v42 = *(a1 + v37 + 8);
  *(a1 + v37) = v38;
  *(a1 + v37 + 8) = v39;
  v43 = *(a1 + v37 + 16);
  *(a1 + v37 + 16) = v40;
  outlined consume of Result<_RegressorMetrics, Error>(v41, v42, v43);
  return a1;
}

uint64_t initializeWithTake for MLDecisionTreeRegressor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v6 = a3[8];
  v7 = *(a2 + v6);
  v8 = *(a2 + v6 + 16);
  v9 = *(a2 + v6 + 32);
  *(a1 + v6 + 48) = *(a2 + v6 + 48);
  *(a1 + v6 + 32) = v9;
  *(a1 + v6 + 16) = v8;
  *(a1 + v6) = v7;
  v10 = a3[9];
  *(a1 + v10) = *(a2 + v10);
  *(a1 + v10 + 16) = *(a2 + v10 + 16);
  v11 = a3[10];
  *(a1 + v11) = *(a2 + v11);
  *(a1 + v11 + 16) = *(a2 + v11 + 16);
  return a1;
}

void *assignWithTake for MLDecisionTreeRegressor(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  if (v9)
  {
    v10 = a2[2];
    if (v10)
    {
      a1[2] = v10;
      v9;
      a1[3] = a2[3];
      v11 = a1[4];
      a1[4] = a2[4];
      v11;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
  v13 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = a3[5];
  v15 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);

  v16 = a3[6];
  *(a1 + v16) = *(a2 + v16);
  v17 = *(a1 + v16 + 8);
  *(a1 + v16 + 8) = *(a2 + v16 + 8);
  v17;
  v18 = a3[7];
  v19 = *(a1 + v18);
  *(a1 + v18) = *(a2 + v18);
  v19;
  v20 = a3[8];
  v21 = (a1 + v20);
  if (*(a1 + v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v20));
  }

  v22 = *(a2 + v20);
  v21[1] = *(a2 + v20 + 16);
  *v21 = v22;
  *(a1 + v20 + 32) = *(a2 + v20 + 32);
  *(a1 + v20 + 40) = *(a2 + v20 + 40);
  *(a1 + v20 + 56) = *(a2 + v20 + 56);
  v23 = a3[9];
  v24 = *(a2 + v23 + 16);
  v25 = *(a1 + v23);
  v26 = *(a1 + v23 + 8);
  *(a1 + v23) = *(a2 + v23);
  v27 = *(a1 + v23 + 16);
  *(a1 + v23 + 16) = v24;
  outlined consume of Result<_RegressorMetrics, Error>(v25, v26, v27);
  v28 = a3[10];
  v29 = *(a2 + v28 + 16);
  v30 = *(a1 + v28);
  v31 = *(a1 + v28 + 8);
  *(a1 + v28) = *(a2 + v28);
  v32 = *(a1 + v28 + 16);
  *(a1 + v28 + 16) = v29;
  outlined consume of Result<_RegressorMetrics, Error>(v30, v31, v32);
  return a1;
}

uint64_t sub_E4AE7(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  if ((*(a1 + *(a3 + 20)) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + *(a3 + 20)) >> 1) + 1;
  }

  return v4;
}

uint64_t sub_E4B61(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for TreeRegressorModel(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLDecisionTreeRegressor(uint64_t a1)
{
  result = type metadata accessor for TreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_340978;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_340990;
    v3[5] = &unk_3409A8;
    v3[6] = &unk_3409A8;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t sub_E4C4E()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLDecisionTreeRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t outlined copy of MLRegressorMetrics?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined copy of Result<_RegressorMetrics, Error>(a1, a2, a3);
  }

  return result;
}

uint64_t SortedSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v29 = a1;
  v33 = a4;
  v6 = type metadata accessor for Set(0, a2, a4);
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for Set<A>, v6);
  v8 = Array.init<A>(_:)(&v29, a2, v6, WitnessTable);
  *&v29 = v8;
  v34 = a2;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a2;
  v9 = type metadata accessor for Array(0, a2);
  v35 = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
  v10 = Sequence.sorted(by:)(partial apply for implicit closure #1 in SortedSet.init(_:), v19, v9, v35);
  v8;
  v36 = v10;
  v32 = v10;
  v26 = v10;
  v10;
  v11 = swift_getWitnessTable(&protocol conformance descriptor for [A], v9);
  RandomAccessCollection<>.indices.getter(v9, v11, &protocol witness table for Int);
  *v28 = v29;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v13 = lazy protocol witness table accessor for type Int and conformance Int();
  v24 = &protocol witness table for Int;
  v25 = v13;
  v14 = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v12);
  v15 = v35;
  zip<A, B>(_:_:)(&v32, v28, v9, v12, v35, v14);
  v36;
  *v28 = v26;
  *&v28[8] = v27;
  *&v29 = v9;
  *(&v29 + 1) = v12;
  v30 = v15;
  v31 = v14;
  v16 = type metadata accessor for Zip2Sequence(0, &v29);
  v17 = swift_getWitnessTable(&protocol conformance descriptor for Zip2Sequence<A, B>, v16);
  Dictionary.init<A>(uniqueKeysWithValues:)(v28, v34, &type metadata for Int, v16, v33, v17);
  return v36;
}

uint64_t partial apply for implicit closure #1 in SortedSet.init(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  return dispatch thunk of static Comparable.< infix(_:_:)(a1, a2, v3, v4);
}

void *initializeBufferWithCopyOfBuffer for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
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
    v6 = a2[1];
    v3[1] = v6;
    v7 = a2[2];
    v6;
    if (v7)
    {
      v3[2] = v7;
      v3[3] = a2[3];
      v8 = a2[4];
      v3[4] = v8;
      v7;
      v8;
    }

    else
    {
      v3[4] = a2[4];
      *(v3 + 1) = *(a2 + 1);
    }

    v10 = *(a3 + 24);
    v11 = v3 + v10;
    v12 = a2 + v10;
    v13 = type metadata accessor for BaseTreeRegressorModel(0);
    (*(*(v13 - 8) + 16))(v11, v12, v13);
  }

  return v3;
}

uint64_t destroy for TreeRegressorModel(void *a1, uint64_t a2)
{
  a1[1], a2;
  v3 = a1[2];
  if (v3)
  {
    v3, a2;
    a1[4], a2;
  }

  v4 = a1 + *(a2 + 24);
  v5 = type metadata accessor for BaseTreeRegressorModel(0);
  return (*(*(v5 - 8) + 8))(v4, v5);
}

void *initializeWithCopy for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a2[1];
  a1[1] = v5;
  v6 = a2[2];
  v5;
  if (v6)
  {
    a1[2] = v6;
    a1[3] = a2[3];
    v7 = a2[4];
    a1[4] = v7;
    v6;
    v7;
  }

  else
  {
    a1[4] = a2[4];
    *(a1 + 1) = *(a2 + 1);
  }

  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v11 - 8) + 16))(v9, v10, v11);
  return a1;
}

void *assignWithCopy for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v4;
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  v9 = a2[2];
  if (v8)
  {
    if (v9)
    {
      a1[2] = v9;
      v9;
      v8;
      a1[3] = a2[3];
      v10 = a2[4];
      v11 = a1[4];
      a1[4] = v10;
      v10;
      v11;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Float>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else if (v9)
  {
    a1[2] = v9;
    a1[3] = a2[3];
    v12 = a2[4];
    a1[4] = v12;
    v9;
    v12;
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v13 = *(a3 + 24);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v16 - 8) + 24))(v14, v15, v16);
  return a1;
}

uint64_t initializeWithTake for TreeRegressorModel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v3 = *(a3 + 24);
  v4 = a1 + v3;
  v5 = v3 + a2;
  v6 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v6 - 8) + 32))(v4, v5, v6);
  return a1;
}

void *assignWithTake for TreeRegressorModel(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1[1];
  a1[1] = a2[1];
  v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a1[2];
  if (v8)
  {
    v9 = a2[2];
    if (v9)
    {
      a1[2] = v9;
      v8;
      a1[3] = a2[3];
      v10 = a1[4];
      a1[4] = a2[4];
      v10;
    }

    else
    {
      outlined destroy of FeatureVectorizer<Float>.Transformer((a1 + 2));
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = *(a3 + 24);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = type metadata accessor for BaseTreeRegressorModel(0);
  (*(*(v14 - 8) + 40))(v12, v13, v14);
  return a1;
}

uint64_t sub_E5397(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    result = 0;
    if ((*(a1 + 8) & 0xFFFFFFFF00000001) == 0)
    {
      return (*(a1 + 8) >> 1) + 1;
    }
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressorModel(0);
    return __swift_getEnumTagSinglePayload(*(a3 + 24) + a1, a2, v5);
  }

  return result;
}

uint64_t sub_E541F(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + 8) = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for BaseTreeRegressorModel(0);
    return __swift_storeEnumTagSinglePayload(*(a4 + 24) + a1, a2, a2, v5);
  }

  return result;
}

uint64_t type metadata accessor for TreeRegressorModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TreeRegressorModel;
  if (!type metadata singleton initialization cache for TreeRegressorModel)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for TreeRegressorModel);
  }

  return result;
}

uint64_t type metadata completion function for TreeRegressorModel(uint64_t a1)
{
  v3[0] = &unk_340A38;
  v3[1] = &unk_340A50;
  result = type metadata accessor for BaseTreeRegressorModel(319);
  if (v2 <= 0x3F)
  {
    v3[2] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t TreeRegressorModel.computeMetrics(on:)(uint64_t a1)
{
  v51 = v3;
  v38 = v1;
  v47 = type metadata accessor for AnyColumn(0);
  v48 = *(v47 - 8);
  v4 = *(v48 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = &v34;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v36 = *(v35 - 8);
  v7 = *(v36 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v37 = &v34;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v10 = *(v39 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v43 = &v34;
  v14 = type metadata accessor for DataFrame(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v44 = &v34;
  v49 = a1;
  result = TreeRegressorModel.applied(to:eventHandler:)(a1, 0, 0);
  if (!v2)
  {
    v42 = 0;
    v41 = v15;
    v40 = v14;
    v46 = v10;
    v20 = *v51;
    v51 = v51[1];
    v21 = v37;
    DataFrame.subscript.getter(v20, v51, &type metadata for Double);
    v50 = 0;
    v22 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
    v23 = v35;
    OptionalColumnProtocol.filled(with:)(&v50, v35, v22);
    (*(v36 + 8))(v21, v23);
    v24 = v34;
    DataFrame.subscript.getter(v20, v51);
    v25 = AnyColumn.convertedToDoubles()();
    (*(v48 + 8))(v24, v47);
    if (!v25)
    {
      BUG();
    }

    v45 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ContiguousArray<Double>);
    v48 = v26;
    v27 = lazy protocol witness table accessor for type Double and conformance Double();
    v28 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
    v51 = v25;
    v29 = v28;
    v49 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>, &demangling cache variable for type metadata for ContiguousArray<Double>, &protocol conformance descriptor for ContiguousArray<A>);
    v30 = v43;
    v31 = v26;
    v32 = v39;
    maximumAbsoluteError<A, B, C>(_:_:)(v43, &v45, &type metadata for Double, v39, v31, v27, v29, v49);
    v47 = v50;
    v45 = v51;
    rootMeanSquaredError<A, B, C>(_:_:)(v30, &v45, &type metadata for Double, v32, v48, v27, v29, v49);
    (*(v46 + 8))(v30, v32);
    (*(v41 + 8))(v44, v40);

    result = v50;
    v33 = v38;
    *v38 = v47;
    v33[1] = result;
    *(v33 + 16) = 0;
  }

  return result;
}

uint64_t TreeRegressorModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v51 = v4;
  v6 = v5;
  v47 = a3;
  v48 = a2;
  v7 = v3;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v36 = *(v37 - 8);
  v8 = *(v36 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v38 = &v36;
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DenseMatrix<Float>);
  v44 = *(v45 - 8);
  v11 = *(v44 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = v6[2];
  if (!v14)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/TreeRegressorModel.swift", 33, 2, 16, 0);
    BUG();
  }

  v15 = v51;
  result = specialized FeatureVectorizer.Transformer.vectorized(_:includingBias:)(a1, 0, v14, v6[3], v6[4]);
  if (!v15)
  {
    v51 = v7;
    v17 = v6 + *(type metadata accessor for TreeRegressorModel(0) + 24);
    v18 = BaseTreeRegressorModel.applied(features:eventHandler:)(&v36, v48, v47);
    v48 = 0;
    v47 = &v36;
    v19 = v18;
    DataFrame.init()();
    v39 = *v6;
    v20 = v6[1];
    v21 = *(v19 + 16);
    v40 = v20;
    if (v21)
    {
      v50 = _swiftEmptyArrayStorage;
      v49 = v21;
      v20;
      v22 = 0;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49, 0);
      v23 = v49;
      v24 = v50;
      v25 = *(v19 + 16);
      v26 = 1;
      v27 = v19;
      do
      {
        if (v25 == v22)
        {
          BUG();
        }

        v28 = *(v27 + 4 * v22 + 32);
        v50 = v24;
        v29 = v24[2];
        v30 = v24[3];
        v31 = v29 + 1;
        if (v30 >> 1 <= v29)
        {
          v41 = v27;
          v42 = v25;
          v32 = v26;
          v46 = v28;
          v43 = v29 + 1;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30 >= 2, v31, v26);
          v31 = v43;
          v28 = v46;
          v26 = v32;
          v25 = v42;
          v23 = v49;
          v27 = v41;
          v24 = v50;
        }

        ++v22;
        v24[2] = v31;
        *&v24[v29 + 4] = v28;
      }

      while (v23 != v22);
    }

    else
    {
      v20;

      v24 = _swiftEmptyArrayStorage;
    }

    v50 = v24;
    v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v34 = lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(&lazy protocol witness table cache variable for type [Double] and conformance [A], &demangling cache variable for type metadata for [Double], &protocol conformance descriptor for [A]);
    v35 = v38;
    Column.init<A>(name:contents:)(v39, v40, &v50, &type metadata for Double, v33, v34);
    DataFrame.append<A>(column:)(v35, &type metadata for Double);
    (*(v36 + 8))(v35, v37);
    return (*(v44 + 8))(v47, v45);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TreeRegressorModel and conformance TreeRegressorModel()
{
  result = lazy protocol witness table cache variable for type TreeRegressorModel and conformance TreeRegressorModel;
  if (!lazy protocol witness table cache variable for type TreeRegressorModel and conformance TreeRegressorModel)
  {
    v1 = type metadata accessor for TreeRegressorModel(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for TreeRegressorModel, v1);
    lazy protocol witness table cache variable for type TreeRegressorModel and conformance TreeRegressorModel = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Column<Double> and conformance Column<A>(uint64_t *a1, uint64_t *a2, uint64_t a3)
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

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D4LL10parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = *(__swift_instantiateConcreteTypeFromMangledName(a2) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v16 = *(v4 + 72);
    do
    {
      v17 = v3;
      KeyPath = swift_getKeyPath(a3);
      swift_getAtKeyPath(v5, KeyPath);

      v7 = v13;
      v8 = v14;
      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v10, 1);
        v8 = v14;
        v7 = v13;
      }

      _swiftEmptyArrayStorage[2] = v10;
      v11 = 2 * v9;
      _swiftEmptyArrayStorage[v11 + 4] = v7;
      _swiftEmptyArrayStorage[v11 + 5] = v8;
      v5 += v16;
      v3 = v17 - 1;
    }

    while (v17 != 1);
  }

  return _swiftEmptyArrayStorage;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo12MLMultiArrayC_s0C5SliceVyAEGTt0g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *(*a5)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4))
{
  if ((a4 & 1) == 0)
  {
    v7 = a5(a1, a2, a3, a4);
LABEL_3:
    v8 = v7;
    goto LABEL_10;
  }

  v9 = type metadata accessor for __ContiguousArrayStorageBase(0);
  swift_unknownObjectRetain_n(a1, 2);
  v10 = swift_dynamicCastClass(a1, v9);
  if (!v10)
  {
    swift_unknownObjectRelease(a1);
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];

  if (__OFSUB__(a4 >> 1, a3))
  {
    BUG();
  }

  if (v11 != (a4 >> 1) - a3)
  {
    swift_unknownObjectRelease(a1);
    v7 = a5(a1, a2, a3, a4);
    goto LABEL_3;
  }

  v8 = swift_dynamicCastClass(a1, v9);
  if (!v8)
  {
    swift_unknownObjectRelease(a1);
    v8 = _swiftEmptyArrayStorage;
  }

LABEL_10:
  swift_unknownObjectRelease(a1);
  return v8;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData12FilledColumnVyAH0I0VySSGGAJyALySaySfGGGG_18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v79 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  v1 = *(*(v79 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v80 = &v77;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  v82 = *(v81 - 8);
  v4 = *(v82 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v84 = &v77;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v78 = &v77;
  v95 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[Float]>>);
  v97 = *(v95 - 8);
  v9 = *(v97 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v89 = &v77;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v96 = *(v12 - 8);
  v13 = *(v96 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v90 = &v77;
  i = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
  v16 = *(*(i - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v91 = &v77;
  v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>.Iterator);
  v19 = *(*(v83 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v98 = &v77;
  v86 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v87 = a1;
  v22 = dispatch thunk of Sequence.underestimatedCount.getter(v12, v86);
  v23 = a1 + *(i + 52);
  v24 = v12;
  v85 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[Float]>>, &protocol conformance descriptor for FilledColumn<A>);
  v25 = dispatch thunk of Sequence.underestimatedCount.getter(v95, v85);
  if (v25 < v22)
  {
    v22 = v25;
  }

  v94 = _swiftEmptyArrayStorage;
  v26 = 0;
  if (v22 > 0)
  {
    v26 = v22;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v88 = v94;
  v27 = v91;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v87, v91, &demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
  (*(v96 + 32))(v90, v27, v24);
  v96 = v24;
  v28 = v24;
  v29 = v95;
  dispatch thunk of Sequence.makeIterator()(v28, v86);
  (*(v97 + 32))(v89, v27 + *(i + 52), v29);
  v90 = (v98 + *(v83 + 52));
  dispatch thunk of Sequence.makeIterator()(v29, v85);
  v91 = v22;
  if (v22 < 0)
  {
    BUG();
  }

  if (v22)
  {
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
    v85 = (v98 + *(v30 + 36));
    v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[Float]>>>);
    v86 = (v90 + *(v31 + 36));
    v32 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
    v87 = v32;
    do
    {
      dispatch thunk of Collection.endIndex.getter(v96, v32);
      v33 = v85;
      if (*v85 == v92)
      {
        BUG();
      }

      v34 = v96;
      v35 = dispatch thunk of Collection.subscript.read(&v92, v85, v96, v32);
      v97 = *v36;
      i = v36[1];
      i;
      v35(&v92, 0);
      dispatch thunk of Collection.formIndex(after:)(v33, v34, v32);
      v37 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[Float]>>, &protocol conformance descriptor for FilledColumn<A>);
      v38 = v95;
      dispatch thunk of Collection.endIndex.getter(v95, v37);
      v39 = v86;
      if (*v86 == v92)
      {
        i;
        BUG();
      }

      v89 = dispatch thunk of Collection.subscript.read(&v92, v86, v38, v37);
      v41 = *v40;
      *v40;
      (v89)(&v92, 0);
      dispatch thunk of Collection.formIndex(after:)(v39, v95, v37);
      v92 = v41;
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v43 = swift_allocObject(v42, 40, 7);
      v43[2] = 1;
      v43[3] = 2;
      v43[4] = v41[2];
      v41;
      v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      v45 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v46 = v80;
      MLShapedArray.init<A>(scalars:shape:)(&v92, v43, &type metadata for Float, v44, &protocol witness table for Float, v45);
      v92 = v97;
      v93 = i;
      v47 = v84;
      AnnotatedFeature.init(feature:annotation:)(v46, &v92, v79, &type metadata for String);
      v41;
      v48 = v88;
      v94 = v88;
      v49 = v88[2];
      if (v88[3] >> 1 <= v49)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88[3] >= 2uLL, v49 + 1, 1);
        v48 = v94;
      }

      v48[2] = v49 + 1;
      v50 = *(v82 + 80);
      v88 = v48;
      (*(v82 + 32))(v48 + ((v50 + 32) & ~v50) + *(v82 + 72) * v49, v47, v81);
      v51 = v91 == (&dword_0 + 1);
      v91 = (v91 - 1);
      v52 = v98;
      v32 = v87;
    }

    while (!v51);
  }

  else
  {
    v52 = v98;
  }

  v53 = (*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>) + 36) + v52);
  v54 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v91 = v53;
  for (i = v54; ; v54 = i)
  {
    dispatch thunk of Collection.endIndex.getter(v96, v54);
    if (*v53 == v92)
    {
      break;
    }

    v55 = v96;
    v56 = dispatch thunk of Collection.subscript.read(&v92, v53, v96, v54);
    v57 = v55;
    v58 = v56;
    v89 = *v59;
    v97 = v59[1];
    v97;
    v58(&v92, 0);
    dispatch thunk of Collection.formIndex(after:)(v53, v57, i);
    v60 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[Float]>>>) + 36);
    v61 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[Float]>>, &protocol conformance descriptor for FilledColumn<A>);
    v62 = v90;
    v63 = v95;
    dispatch thunk of Collection.endIndex.getter(v95, v61);
    if (*(v62 + v60) == v92)
    {
      v97;
      v52 = v98;
      break;
    }

    v64 = v62 + v60;
    v84 = dispatch thunk of Collection.subscript.read(&v92, v64, v63, v61);
    v66 = *v65;
    *v65;
    (v84)(&v92, 0);
    dispatch thunk of Collection.formIndex(after:)(v64, v95, v61);
    v92 = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v68 = swift_allocObject(v67, 40, 7);
    v68[2] = 1;
    v68[3] = 2;
    v68[4] = v66[2];
    v66;
    v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v70 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
    v71 = v80;
    MLShapedArray.init<A>(scalars:shape:)(&v92, v68, &type metadata for Float, v69, &protocol witness table for Float, v70);
    v92 = v89;
    v93 = v97;
    v72 = v78;
    AnnotatedFeature.init(feature:annotation:)(v71, &v92, v79, &type metadata for String);
    v66;
    v73 = v88;
    v94 = v88;
    v74 = v88[2];
    if (v88[3] >> 1 <= v74)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88[3] >= 2uLL, v74 + 1, 1);
      v73 = v94;
    }

    v73[2] = v74 + 1;
    v75 = *(v82 + 80);
    v88 = v73;
    (*(v82 + 32))(v73 + ((v75 + 32) & ~v75) + *(v82 + 72) * v74, v72, v81);
    v52 = v98;
    v53 = v91;
  }

  *(v52 + *(v83 + 56)) = 1;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v52, &demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>.Iterator);
  return v88;
}

uint64_t SoundClassifierTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000010;
  *(v1 + 24) = "rt a new session" + 0x8000000000000000;
  v2 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  v3 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = &_swiftEmptySetSingleton;
  *(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  v4 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  v5 = type metadata accessor for MLSoundClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  v7 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters;
  v9 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v10 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  v11 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v11);
  v12 = v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter;
  v13 = type metadata accessor for TrainingTablePrinter(0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  outlined init with take of MLClassifierMetrics(a1, v1 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  return v1;
}

void *SoundClassifierTrainingSessionDelegate.init(trainingData:featureExtractionOnly:modelParameters:sessionParameters:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v45 = v4;
  v42 = a4;
  v44 = a3;
  v43 = a2;
  v35 = a1;
  v38 = *v5;
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v33;
  v10 = *(*(type metadata accessor for MLSoundClassifier.DataSource(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v37 = &v33;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v41 = &v33;
  v5[2] = 0xD000000000000010;
  v5[3] = "rt a new session" + 0x8000000000000000;
  v16 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  v17 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v39 = v16;
  v40 = v17;
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = _swiftEmptyArrayStorage;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = &_swiftEmptySetSingleton;
  *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = 0;
  v18 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  v19 = type metadata accessor for MLSoundClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  v20 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model;
  v21 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  __swift_storeEnumTagSinglePayload(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, 1, 1, v6);
  v22 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics;
  v23 = type metadata accessor for MLClassifierMetrics(0);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
  __swift_storeEnumTagSinglePayload(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, 1, 1, v23);
  v24 = v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter;
  v25 = type metadata accessor for TrainingTablePrinter(0);
  v26 = v35;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
  v27 = v37;
  outlined init with copy of MLTrainingSessionParameters(v26, v37, type metadata accessor for MLSoundClassifier.DataSource);
  v28 = v36;
  outlined init with copy of MLTrainingSessionParameters(v44, v36, type metadata accessor for MLSoundClassifier.ModelParameters);
  v29 = v45;
  MLSoundClassifier.PersistentParameters.init(trainingData:modelParameters:)(v27, v28);
  v45 = v29;
  if (v29)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v42, type metadata accessor for MLTrainingSessionParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLSoundClassifier.DataSource);
    v5[3];
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_parameters, &demangling cache variable for type metadata for MLSoundClassifier.ModelParameters?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationMetrics, &demangling cache variable for type metadata for MLClassifierMetrics?);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter, &demangling cache variable for type metadata for TrainingTablePrinter?);
    swift_deallocPartialClassInstance(v5, v38, *(*v5 + 48), *(*v5 + 52));
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLSoundClassifier.ModelParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLSoundClassifier.DataSource);
    v30 = v41;
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v40);
    v31 = v39;
    swift_beginAccess(v39, v34, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v30, v31, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    swift_endAccess(v34);
    outlined init with take of MLClassifierMetrics(v42, v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    *(v5 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_featureExtractionOnly) = v43 & 1;
  }

  return v5;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> SoundClassifierTrainingSessionDelegate.setUp()()
{
  v58 = v0;
  v59 = v1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v51 = v41;
  v5 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v57 = v41;
  v50 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v8 = *(*(v50 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v49 = v41;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = v41;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v48 = v41;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v19 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v20 = *(*(v19 - 1) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v23 = v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v42, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23, v41, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v41, 1, v19) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v41, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  outlined init with take of MLClassifierMetrics(v41, v41, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v24 = v58;
  SoundClassifierTrainingSessionDelegate.populateFiles(parameters:)(v41);
  if (v24)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLSoundClassifier.PersistentParameters);
  }

  else
  {
    v56 = 0;
    v58 = *(v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    outlined init with copy of MLTrainingSessionParameters(&v41[v19[5]], v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v54 = *&v41[v19[8]];
    v55 = *&v41[v19[6]];
    v25 = v19[9];
    v53 = *&v41[v25];
    v60 = v41[v25 + 8];
    v26 = v50;
    v27 = *(v50 + 28);
    v28 = v49;
    v52 = &v49[v27];
    *&v49[v27] = 0;
    *(v28 + v27 + 16) = 0;
    v29 = v26[8];
    *(v28 + v29) = 0;
    v30 = *&v42[v25 + 8];
    *(v28 + v29 + 8) = 1;
    *(v28 + v26[9]) = 32;
    outlined init with copy of MLTrainingSessionParameters(v57, v28, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    *(v28 + v26[5]) = v54;
    *(v28 + v26[6]) = v55;
    v46 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
    v43 = v53;
    v44 = v60;
    v45 = v30;
    v30;
    v31 = v58;
    v58;
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v43, v52, &demangling cache variable for type metadata for Any?);
    outlined destroy of MLActivityClassifier.ModelParameters(v57, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
    v32 = v48;
    MLSoundClassifier.Classifier.init(labels:parameters:)(v31, v28);
    v33 = type metadata accessor for MLSoundClassifier.Classifier(0);
    v34 = v32;
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
    v35 = v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
    swift_beginAccess(v59 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &v43, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v34, v35, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    swift_endAccess(&v43);
    v36 = v35;
    v37 = v47;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, v47, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
    if (__swift_getEnumTagSinglePayload(v37, 1, v33) == 1)
    {
      BUG();
    }

    v38 = v51;
    MLSoundClassifier.Classifier.makeTransformer()();
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLSoundClassifier.PersistentParameters);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLSoundClassifier.Classifier);
    v39 = type metadata accessor for MLSoundClassifier.Model(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v39);
    v40 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v59;
    swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v59, &v43, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v38, v40, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
    swift_endAccess(&v43);
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.populateFiles(parameters:)(uint64_t a1)
{
  v76 = v1;
  v67 = v2;
  v4 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  trainingData._rawValue = v61;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v74._rawValue = v61;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v73 = v61;
  v11 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v12 = *(*(v11 - 1) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = alloca(v12);
  v16 = alloca(v12);
  *&v17 = MLSoundClassifier.DataSource.annotatedFeatures()();
  v76 = v20;
  if (!v20)
  {
    v68 = v61;
    v75 = a1;
    if (v17)
    {
      trainingData._rawValue = v17;
      v21 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
      v22 = v75;
      outlined init with copy of MLTrainingSessionParameters(v75 + v21[5], v73, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v70 = *(v22 + v21[8]);
      v71 = *(v22 + v21[6]);
      v23 = v21[9];
      v68 = *(v22 + v23);
      LOBYTE(v69) = *(v22 + v23 + 8);
      v75 = *(v22 + v23 + 16);
      v24 = v11[7];
      *&v61[v24] = 0;
      *&v63[v24] = 0;
      v25 = v11[8];
      *&v61[v25] = 0;
      v26 = &v61[v24];
      v61[v25 + 8] = 1;
      *&v61[v11[9]] = 32;
      v27 = v73;
      outlined init with copy of MLTrainingSessionParameters(v73, v61, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      *&v61[v11[5]] = v70;
      *&v61[v11[6]] = v71;
      v65 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v62 = v68;
      v63[0] = v69;
      v64 = v75;
      v75;
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v62, v26, &demangling cache variable for type metadata for Any?);
      outlined destroy of MLActivityClassifier.ModelParameters(v27, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      rawValue = v74._rawValue;
      outlined init with copy of MLTrainingSessionParameters(v61, v74._rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLSoundClassifier.ModelParameters);
      v29 = trainingData._rawValue;
      v30 = MLSoundClassifier.ModelParameters.ValidationData.splitFeatures(trainingData:)(trainingData);
      v76 = v31;
      if (v31)
      {
LABEL_4:
        outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
        v32 = v29;
LABEL_10:
        *&v17 = v32;
        return v17;
      }

      v35 = *(&v30 + 1);
      v36 = v30;
      outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v37 = v67;
      v38 = *(v67 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      *(v67 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v36;
      v38;
      if (!v35)
      {
        v35 = _swiftEmptyArrayStorage;
      }

      v39 = *(v37 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
      *(v37 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v35;
      v39;
      v40 = &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>;
      v41 = &unk_340B80;
      v42 = trainingData._rawValue;
    }

    else
    {
      v33 = v75;
      v34 = MLSoundClassifier.DataSource.labeledSounds()(v18, v19, *(&v17 + 1));
      v46 = v34;
      v74._rawValue = specialized Sequence.flatMap<A>(_:)(v34);
      v76 = 0;
      v46;
      v47 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
      outlined init with copy of MLTrainingSessionParameters(v33 + v47[5], v73, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v71 = *(v33 + v47[8]);
      v66 = *(v33 + v47[6]);
      v48 = v47[9];
      v69 = *(v33 + v48);
      LOBYTE(v70) = *(v33 + v48 + 8);
      v49 = v11[7];
      v50 = v68;
      v51 = &v68[v49];
      *&v68[v49] = 0;
      *(v50 + v49 + 16) = 0;
      v52 = v11[8];
      *(v50 + v52) = 0;
      v53 = *(v33 + v48 + 16);
      *(v50 + v52 + 8) = 1;
      *(v50 + v11[9]) = 32;
      outlined init with copy of MLTrainingSessionParameters(v73, v50, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      *(v50 + v11[5]) = v71;
      *(v50 + v11[6]) = v66;
      v65 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
      v62 = v69;
      v63[0] = v70;
      v64 = v53;
      v53;
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v62, v51, &demangling cache variable for type metadata for Any?);
      outlined destroy of MLActivityClassifier.ModelParameters(v73, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      rawValue = trainingData._rawValue;
      outlined init with copy of MLTrainingSessionParameters(v50, trainingData._rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      v54 = v50;
      v29 = v74._rawValue;
      outlined destroy of MLActivityClassifier.ModelParameters(v54, type metadata accessor for MLSoundClassifier.ModelParameters);
      v55 = MLSoundClassifier.ModelParameters.ValidationData.splitFiles(trainingData:)(v29);
      v76 = v56;
      if (v56)
      {
        goto LABEL_4;
      }

      v57 = *(&v55 + 1);
      v58 = v55;
      outlined destroy of MLActivityClassifier.ModelParameters(rawValue, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
      if (!v57)
      {
        v57 = _swiftEmptyArrayStorage;
      }

      v37 = v67;
      v59 = v76;
      specialized SoundClassifierTrainingSessionDelegate.populateFiles<A, B>(training:validation:parameters:)(v58, v57, v75);
      v76 = v59;
      if (v59)
      {
        v58;
        v57;
        v32 = v74._rawValue;
        goto LABEL_10;
      }

      v58;
      v57;
      v40 = &demangling cache variable for type metadata for AnnotatedFeature<URL, String>;
      v41 = &unk_340C38;
      v42 = v74._rawValue;
    }

    v43 = v76;
    MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm(v42, v40, v41);
    v76 = v43;
    v42;
    v45 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGG_SSs5NeverOTg503_s8d169ML38SoundClassifierTrainingSessionDelegateC13populateFiles33_6DADCD271D509E5C075FB900187437D410parametersyAA07MLSoundD0V20PersistentParametersV_tKFSS0A12MLComponents16fg4Vy04h4B013jK61VySfGSSGcfu0_32c7cfd4b680d8003eade90301c2a1b770ARSSTf3nnnpk_nTf1cn_nTm);
    v32 = *(v37 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
    *(v37 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels) = v45;
    goto LABEL_10;
  }

  return v17;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> SoundClassifierTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v95 = v1;
  v93 = v2;
  rawValue = from._rawValue;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v81 = &v74;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v87 = &v74;
  v90 = type metadata accessor for URL(0);
  v83 = *(v90 - 8);
  v9 = *(v83 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v84 = &v74;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v82 = &v74;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v89 = &v74;
  v17 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v92 = &v74;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v80 = &v74;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v26 = type metadata accessor for MLCheckpoint(0);
  v91 = *(v26 - 8);
  v27 = *(v91 + 8);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v86 = &v74;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v85 = &v74;
  v32 = alloca(v27);
  v33 = alloca(v27);
  specialized BidirectionalCollection.last.getter(rawValue);
  v88 = v26;
  if (__swift_getEnumTagSinglePayload(&v74, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v74, &demangling cache variable for type metadata for MLCheckpoint?);
    v34 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v34, 0, 0);
    *v35 = 0xD00000000000001DLL;
    *(v35 + 8) = "reated." + 0x8000000000000000;
    *(v35 + 16) = 0;
    *(v35 + 32) = 0;
    *(v35 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v34);
    return;
  }

  v94 = &v74;
  outlined init with take of MLClassifierMetrics(&v74, &v74, type metadata accessor for MLCheckpoint);
  v36 = v93 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v75, 0, 0);
  v37 = v89;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, v89, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v37, 1, v17) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  v38 = v92;
  outlined init with take of MLClassifierMetrics(v37, v92, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v39 = v95;
  SoundClassifierTrainingSessionDelegate.populateFiles(parameters:)(v38);
  v40 = v87;
  if (v39)
  {
    goto LABEL_5;
  }

  v95 = 0;
  v42 = *(v94 + *(v88 + 20));
  if (v42 != 2)
  {
    if (v42 == 1)
    {
      v43 = v94;
      SoundClassifierTrainingSessionDelegate.resumeFeatureExtraction(from:)(v94);
      outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLCheckpoint);
      return;
    }

    v56 = v94;
    v57 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v57, 0, 0);
    *v58 = 0xD00000000000003ELL;
    *(v58 + 8) = "No checkpoints to be resumed." + 0x8000000000000000;
    *(v58 + 16) = 0;
    *(v58 + 32) = 0;
    *(v58 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v57);
    outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
    v41 = v56;
LABEL_6:
    outlined destroy of MLActivityClassifier.ModelParameters(v41, type metadata accessor for MLCheckpoint);
    return;
  }

  v79[0] = rawValue;
  v44 = rawValue[2];
  v45 = 1;
  if (!v44)
  {
    v55 = 0;
    goto LABEL_24;
  }

  v46 = v44 - 1;
  v47 = rawValue + ((v91[80] + 32) & ~v91[80]) + v46 * *(v91 + 9);
  v89 = -*(v91 + 9);
  v91 = &loc_308EF - 0x14FFFFFFFF9B9A86;
  while (2)
  {
    rawValue = v46;
    v48 = v38;
    v49 = v40;
    v50 = v86;
    outlined init with copy of MLTrainingSessionParameters(v47, v86, type metadata accessor for MLCheckpoint);
    switch(*(v50 + *(v88 + 20)))
    {
      case 0:
        v52 = *(v50 + *(v88 + 20));
        v51 = 0xEB0000000064657ALL;
        v53 = 0x696C616974696E69;
        goto LABEL_17;
      case 1:
        0xEA0000000000676ELL;
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        v45 = 0;
        v40 = v49;
        v38 = v48;
        v55 = rawValue;
        goto LABEL_24;
      case 2:
        v51 = 0xE800000000000000;
        v53 = 0x676E696E69617274;
        goto LABEL_17;
      case 3:
        v51 = 0xEA0000000000676ELL;
        v53 = 0x697461756C617665;
        goto LABEL_17;
      case 4:
        v51 = v91;
        v53 = 0x636E657265666E69;
LABEL_17:
        v54 = _stringCompareWithSmolCheck(_:_:expecting:)(v53, v51, 0x6974636172747865, 0xEA0000000000676ELL, 0);
        v51;
        outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLCheckpoint);
        v55 = rawValue;
        if ((v54 & 1) == 0)
        {
          v47 += v89;
          v46 = rawValue - 1;
          v40 = v87;
          v38 = v92;
          if (!rawValue)
          {
            v55 = 0;
            v45 = 1;
            goto LABEL_24;
          }

          continue;
        }

        v45 = 0;
        v40 = v87;
        v38 = v92;
LABEL_24:
        rawValue = &v74;
        v59 = alloca(24);
        v60 = alloca(32);
        v76 = v79;
        v61 = v80;
        v62 = v95;
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_8CreateML12MLCheckpointVTg5(partial apply for specialized closure #1 in BidirectionalCollection.last(where:), &v74, v55, v45, v78);
        if (__swift_getEnumTagSinglePayload(v61, 1, v88) == 1)
        {
          v95 = v62;
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for MLCheckpoint?);
          goto LABEL_28;
        }

        v63 = v61;
        v64 = v85;
        outlined init with take of MLClassifierMetrics(v63, v85, type metadata accessor for MLCheckpoint);
        SoundClassifierTrainingSessionDelegate.resumeFeatureExtraction(from:)(v64);
        outlined destroy of MLActivityClassifier.ModelParameters(v64, type metadata accessor for MLCheckpoint);
        if (v62)
        {
LABEL_5:
          outlined destroy of MLActivityClassifier.ModelParameters(v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
          v41 = v94;
          goto LABEL_6;
        }

        v95 = 0;
LABEL_28:
        v65 = v84;
        URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
        v66 = v82;
        URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
        rawValue = *(v83 + 8);
        (rawValue)(v65, v90);
        v67 = v93 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
        swift_beginAccess(v93 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, v79, 0, 0);
        v68 = v81;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, v81, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
        v69 = type metadata accessor for MLSoundClassifier.Classifier(0);
        if (__swift_getEnumTagSinglePayload(v68, 1, v69) == 1)
        {
          BUG();
        }

        v70 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLSoundClassifier.Classifier and conformance MLSoundClassifier.Classifier, type metadata accessor for MLSoundClassifier.Classifier, &protocol conformance descriptor for MLSoundClassifier.Classifier);
        v71 = v95;
        UpdatableSupervisedEstimator.readWithOptimizer(from:)(v66, v69, v70);
        (rawValue)(v66, v90);
        outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLSoundClassifier.PersistentParameters);
        outlined destroy of MLActivityClassifier.ModelParameters(v94, type metadata accessor for MLCheckpoint);
        outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLSoundClassifier.Classifier);
        if (!v71)
        {
          v72 = type metadata accessor for MLSoundClassifier.Model(0);
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v72);
          v73 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v93;
          swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v93, v77, 33, 0);
          outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v40, v73, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
          swift_endAccess(v77);
        }

        return;
    }
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.resumeFeatureExtraction(from:)(uint64_t a1)
{
  v190 = v1;
  v180 = v2;
  v192 = a1;
  v183 = type metadata accessor for CSVType(0);
  v174 = *(v183 - 1);
  v3 = v174[8];
  v4 = alloca(v3);
  v5 = alloca(v3);
  v166 = v146;
  v6 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v152 = v146;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v173 = v146;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v160 = v146;
  v14 = *(*(type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v168 = v146;
  v158 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v17 = *(*(v158 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v157 = v146;
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v155 = v146;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v156 = v146;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v153 = v146;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v154 = v146;
  v30 = alloca(v25);
  v31 = alloca(v25);
  v175 = v146;
  v32 = alloca(v25);
  v33 = alloca(v25);
  v172 = v146;
  v187 = type metadata accessor for DataFrame(0);
  v184 = *(v187 - 8);
  v34 = v184[8];
  v35 = alloca(v34);
  v36 = alloca(v34);
  v151 = v146;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v161 = v146;
  v39 = alloca(v34);
  v40 = alloca(v34);
  v185 = v146;
  v41 = alloca(v34);
  v42 = alloca(v34);
  v181 = v146;
  v179 = type metadata accessor for URL(0);
  v191 = *(v179 - 8);
  v43 = *(v191 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v167 = v146;
  v46 = alloca(v43);
  v47 = alloca(v43);
  v188 = v146;
  v48 = alloca(v43);
  v49 = alloca(v43);
  v176 = v146;
  v50 = alloca(v43);
  v51 = alloca(v43);
  v189 = v146;
  v52 = alloca(v43);
  v53 = alloca(v43);
  v186 = v146;
  v54 = alloca(v43);
  v55 = alloca(v43);
  v178 = v146;
  v56 = alloca(v43);
  v57 = alloca(v43);
  v177 = v146;
  v58 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v61 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v62 = *(*(v61 - 8) + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v65 = v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v146, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v65, v146, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v159 = v61;
  if (__swift_getEnumTagSinglePayload(v146, 1, v61) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v146, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  v182 = v146;
  outlined init with take of MLClassifierMetrics(v146, v146, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v66 = v178;
  URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
  URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
  v67 = *(v191 + 8);
  v68 = v179;
  (v67)(v66, v179);
  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
  URL.appendingPathExtension(_:)(7762787, 0xE300000000000000);
  v178 = v67;
  (v67)(v66, v68);
  v69 = v189;
  v70 = v177;
  v191 = *(v191 + 16);
  (v191)(v189, v177, v68);
  v71 = v185;
  v72 = v190;
  DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v69, 0, 0, 0, 1);
  if (v72)
  {
    v185 = v72;
    (v191)(v188, v70, v68);
    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
    v190 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
    v74 = *(v190 - 8);
    v75 = *(v74 + 72);
    v76 = *(v74 + 80);
    v77 = (v76 + 32) & ~*(v74 + 80);
    v162 = v73;
    v165 = v77 + 2 * v75;
    v164 = v76 | 7;
    v78 = swift_allocObject(v73, v165, v76 | 7);
    *(v78 + 16) = 2;
    *(v78 + 24) = 4;
    v79 = v78 + v77;
    v80 = v78 + v77 + *(v190 + 48);
    *(v78 + v77) = 0x7365727574616566;
    v163 = v77;
    *(v78 + v77 + 8) = 0xE800000000000000;
    v81 = v174[13];
    v169 = enum case for CSVType.data(_:);
    (v81)(v80, enum case for CSVType.data(_:), v183);
    v82 = v81;
    v83 = &v75[*(v190 + 48) + v79];
    *&v75[v79] = 0x62614C7373616C63;
    v176 = v75;
    *&v75[v79 + 8] = 0xEA00000000006C65;
    v170 = enum case for CSVType.string(_:);
    v84 = v183;
    v85 = v82;
    (v82)(v83, enum case for CSVType.string(_:), v183);
    v192 = Dictionary.init(dictionaryLiteral:)(v78, &type metadata for String, v84, &protocol witness table for String);
    v86 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v189 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v174 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v87 = v166;
    v171 = enum case for CSVType.double(_:);
    v175 = v85;
    (v85)(v166, enum case for CSVType.double(_:), v84);
    v88 = v173;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v86, v189, v174, v87, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    v89 = v151;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v188, 0, 0, 0, 1, v192, v88);
    v192 = 0;
    v188 = v184[4];
    (v188)(v181, v89, v187);
    (v191)(v167, v186, v179);
    v93 = swift_allocObject(v162, v165, v164);
    *(v93 + 16) = 2;
    *(v93 + 24) = 4;
    v94 = v163;
    v95 = v93 + v163;
    v96 = v190;
    v97 = v93 + v163 + *(v190 + 48);
    *(v93 + v163) = 0x7365727574616566;
    *(v93 + v94 + 8) = 0xE800000000000000;
    v98 = v175;
    (v175)(v97, v169, v183);
    v99 = v176;
    v100 = &v176[*(v96 + 48) + v95];
    *&v176[v95] = 0x62614C7373616C63;
    *&v99[v95 + 8] = 0xEA00000000006C65;
    v101 = v183;
    v102 = v98;
    v98(v100, v170, v183);
    v103 = v101;
    v191 = Dictionary.init(dictionaryLiteral:)(v93, &type metadata for String, v101, &protocol witness table for String);
    v190 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v189 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v173 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
    v104 = v166;
    v102(v166, v171, v103);
    v105 = 1;
    v106 = v152;
    CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v190, v189, v173, v104, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
    v107 = v153;
    v108 = v192;
    DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v167, 0, 0, 0, 1, v191, v106);
    if (v108)
    {
      v108;
    }

    else
    {
      v105 = 0;
    }

    v185;
  }

  else
  {
    v90 = v71;
    v91 = v68;
    v188 = v184[4];
    (v188)(v181, v90, v187);
    v92 = v176;
    (v191)(v176, v186, v91);
    v107 = v175;
    DataFrame.init(contentsOfSFrameDirectory:columns:rows:)(v92, 0, 0, 0, 1);
    v105 = 0;
  }

  __swift_storeEnumTagSinglePayload(v107, v105, 1, v187);
  v109 = v172;
  outlined init with take of DataFrame?(v107, v172);
  v110 = static SoundClassifierTrainingSessionDelegate.loadDataFrame(_:)(v181);
  v192 = 0;
  v111 = v179;
  v114 = v180;
  v115 = *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
  *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures) = v110;
  v115;
  v116 = v154;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v109, v154, &demangling cache variable for type metadata for DataFrame?);
  v117 = v187;
  if (__swift_getEnumTagSinglePayload(v116, 1, v187) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v116, &demangling cache variable for type metadata for DataFrame?);
    v118 = v182;
  }

  else
  {
    v119 = v161;
    (v188)(v161, v116, v117);
    v120 = v192;
    v121 = static SoundClassifierTrainingSessionDelegate.loadDataFrame(_:)(v119);
    v192 = v120;
    v118 = v182;
    if (v120)
    {
      v122 = v119;
      v123 = v184[1];
      v123(v122, v117);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v172, &demangling cache variable for type metadata for DataFrame?);
      v123(v181, v117);
      v112 = v178;
      (v178)(v186, v111);
      v112(v177, v111);
      return outlined destroy of MLActivityClassifier.ModelParameters(v118, type metadata accessor for MLSoundClassifier.PersistentParameters);
    }

    v124 = v119;
    v125 = v121;
    (v184[1])(v124, v117);
    v126 = v180;
    v127 = *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
    *(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) = v125;
    v114 = v126;
    v127;
  }

  v191 = *(v114 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_labels);
  v128 = v159;
  v129 = v168;
  outlined init with copy of MLTrainingSessionParameters(v159[5] + v118, v168, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v185 = *(v118 + v128[8]);
  v189 = *(v118 + v128[6]);
  v130 = v128[9];
  v188 = *(v118 + v130);
  LOBYTE(v190) = *(v118 + v130 + 8);
  v131 = v158;
  v132 = *(v158 + 28);
  v133 = v157;
  v183 = &v157[v132];
  *&v157[v132] = 0;
  *(v133 + v132 + 16) = 0;
  v134 = v131[8];
  *(v133 + v134) = 0;
  v135 = *(v118 + v130 + 16);
  *(v133 + v134 + 8) = 1;
  *(v133 + v131[9]) = 32;
  outlined init with copy of MLTrainingSessionParameters(v129, v133, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  *(v133 + v131[5]) = v185;
  *(v133 + v131[6]) = v189;
  v150 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v147 = v188;
  v148 = v190;
  v149 = v135;
  v135;
  v136 = v191;
  v191;
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(&v147, v183, &demangling cache variable for type metadata for Any?);
  outlined destroy of MLActivityClassifier.ModelParameters(v168, type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData);
  v137 = v156;
  MLSoundClassifier.Classifier.init(labels:parameters:)(v136, v133);
  v138 = type metadata accessor for MLSoundClassifier.Classifier(0);
  __swift_storeEnumTagSinglePayload(v137, 0, 1, v138);
  v139 = v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier;
  swift_beginAccess(v180 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier, &v147, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v137, v139, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
  swift_endAccess(&v147);
  v140 = v155;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v139, v155, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
  if (__swift_getEnumTagSinglePayload(v140, 1, v138) == 1)
  {
    BUG();
  }

  v141 = v160;
  MLSoundClassifier.Classifier.makeTransformer()();
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v172, &demangling cache variable for type metadata for DataFrame?);
  (v184[1])(v181, v187);
  v142 = v179;
  v143 = v178;
  (v178)(v186, v179);
  v143(v177, v142);
  outlined destroy of MLActivityClassifier.ModelParameters(v182, type metadata accessor for MLSoundClassifier.PersistentParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(v140, type metadata accessor for MLSoundClassifier.Classifier);
  v144 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v141, 0, 1, v144);
  v145 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v180;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v180, &v147, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v141, v145, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  return swift_endAccess(&v147);
}

uint64_t static SoundClassifierTrainingSessionDelegate.loadDataFrame(_:)()
{
  v34 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
  v1 = *(*(v37 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v36 = v33;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v40 = *(v41 - 8);
  v4 = *(v40 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n = v33;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[Float]>>);
  v38 = *(v39 - 8);
  v7 = *(v38 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v33;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v46 = *(v45 - 8);
  v14 = *(v46 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Data>);
  v42 = *(v43 - 8);
  v17 = *(v42 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v44 = v33;
  DataFrame.subscript.getter(0x7365727574616566, 0xE800000000000000, &type metadata for Data);
  DataFrame.subscript.getter(0x62614C7373616C63, 0xEA00000000006C65, &type metadata for String);
  v33[0] = 0;
  v33[1] = 0xE000000000000000;
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v47 = v33;
  OptionalColumnProtocol.filled(with:)(v33, v10, v20);
  (*(v35 + 8))(v33, v10);
  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v22 = type metadata accessor for JSONDecoder(0);
  swift_allocObject(v22, *(v22 + 48), *(v22 + 52));
  v33[0] = JSONDecoder.init()();
  v23 = lazy protocol witness table accessor for type [Float] and conformance <A> [A](&lazy protocol witness table cache variable for type [Float] and conformance <A> [A], &protocol witness table for Float, &protocol conformance descriptor for <A> [A]);
  v24 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type JSONDecoder and conformance JSONDecoder, &type metadata accessor for JSONDecoder, &protocol conformance descriptor for JSONDecoder);
  v25 = v34;
  Column.decoded<A, B>(_:using:)(v21, v33, v43, v21, v22, v23, v24);

  if (v25)
  {
    (*(v46 + 8))(v47, v45);
    return (*(v42 + 8))(v44, v43);
  }

  else
  {
    v33[0] = _swiftEmptyArrayStorage;
    v27 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
    v28 = v41;
    v29 = MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n;
    OptionalColumnProtocol.filled(with:)(v33, v41, v27);
    (*(v40 + 8))(v29, v28);
    v30 = v36;
    (*(v46 + 16))(v36, v47, v45);
    v31 = v39;
    v32 = v38;
    (*(v38 + 16))(v30 + *(v37 + 52), v48, v39);
    MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVy11TabularData12FilledColumnVyAH0I0VySSGGAJyALySaySfGGGG_18CreateMLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n(v30);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &demangling cache variable for type metadata for Zip2Sequence<FilledColumn<Column<String>>, FilledColumn<Column<[Float]>>>);
    (*(v32 + 8))(v48, v31);
    (*(v46 + 8))(v47, v45);
    (*(v42 + 8))(v44, v43);
    return MLComponents16AnnotatedFeatureVy6CoreML13MLShapedArrayVySfGSSGs5NeverOTg5012_sSSSaySfG18j14MLComponents16lm3Vy6n4ML13pq2Vyu20GSSGIgggr_SS_AAtAIs5r68OIegnrzr_TR03_s8a80ML38SoundClassifierTrainingSessionDelegateC13loadg44FrameySay0A12MLComponents16cd4Vy04e4B013gh36zu7GSSGG07F37I00iJ0VKFZALSS_SayZ7GtXEfU_Tf3nnnpf_nTf1cn_n;
  }
}

uint64_t specialized SoundClassifierTrainingSessionDelegate.populateFiles<A, B>(training:validation:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *(a3 + *(type metadata accessor for MLSoundClassifier.PersistentParameters(0) + 28));
  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(a1, v10);
  v11[0] = ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;
  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;
  specialized MutableCollection<>.sort(by:)(v11);
  if (v3)
  {

    BUG();
  }

  ML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles) = v11[0];
  v6;
  v7 = _s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(a2, v10);
  v11[0] = v7;
  v7;
  specialized MutableCollection<>.sort(by:)(v11);
  v7;
  v8 = *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  *(v4 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) = v11[0];
  return v8;
}

uint64_t key path getter for AnnotatedFeature.annotation : AnnotatedFeature<MLShapedArray<Float>, String>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(a4);
  result = AnnotatedFeature.annotation.getter(v6);
  *v5 = v8;
  return result;
}

uint64_t key path setter for AnnotatedFeature.annotation : AnnotatedFeature<MLShapedArray<Float>, String>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;
  v7;
  v8 = __swift_instantiateConcreteTypeFromMangledName(a5);
  return AnnotatedFeature.annotation.setter(v10, v8);
}

void *_s8CreateML17MLSoundClassifierV30filterFilesForFeatureExtractor07labeledF031featureExtractionTimeWindowSizeSay0A12MLComponents09AnnotatedH0Vy10Foundation3URLVSSGGx_SdtSlRzAM7ElementRtzlFZAN_Tt1g5(uint64_t a1, double a2)
{
  v37 = a2;
  v2 = *(*(type metadata accessor for URL(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v29 = v26;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v36 = v26;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v40 = v26;
  v27 = a1;
  a1;
  specialized MutableCollection<>.sort(by:)(&v27);
  v10 = *(v27 + 16);
  if (v10)
  {
    v37 = v37 * 1000.0;
    v11 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v33 = v27;
    v32 = v11;
    v12 = v27 + v11;
    v34 = *(v38 + 16);
    v35 = *(v38 + 72);
    v41 = _swiftEmptyArrayStorage;
    do
    {
      v28 = v10;
      v13 = v39;
      v34(v40, v12, v39);
      v14 = v29;
      AnnotatedFeature.feature.getter(v13);
      objc_allocWithZone(AVAudioFile);
      v15 = @nonobjc AVAudioFile.init(forReading:)(v14);
      v16 = v15;
      if (v15)
      {
        v17 = [v15 length] * 1000.0;
        v30 = v17;
        v18 = [v16 fileFormat];
        v19 = v18;
        [v19 sampleRate];
        v31 = v17;

        if (v30 / v31 >= v37)
        {
          v34(v36, v40, v39);
          if (swift_isUniquelyReferenced_nonNull_native(v41))
          {
            v20 = v41;
          }

          else
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41[2] + 1, 1, v41);
          }

          v21 = v20[2];
          if (v20[3] >> 1 <= v21)
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v21 + 1, 1, v20);
          }

          v20[2] = v21 + 1;
          v41 = v20;
          v22 = v20 + v32 + v35 * v21;
          v23 = v39;
          v24 = v38;
          (*(v38 + 32))(v22, v36, v39);

          (*(v24 + 8))(v40, v23);
        }

        else
        {
          (*(v38 + 8))(v40, v39);
        }
      }

      else
      {
        (*(v38 + 8))(v40, v39);
      }

      v12 += v35;
      v10 = v28 - 1;
    }

    while (v28 != 1);

    return v41;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> SoundClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v56 = v1;
  v55 = v2;
  v57 = from;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 1) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = v55 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v55 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters, v49, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v38, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v38, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v38, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
    BUG();
  }

  v61 = &v38;
  outlined init with take of MLClassifierMetrics(&v38, &v38, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v11 = *(v55 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFiles);
  v12 = *(v11 + 16);
  v13 = *(*(v55 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles) + 16);
  if (__OFADD__(v13, v12))
  {
    BUG();
  }

  if (v13 + v12 <= v57)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v61, type metadata accessor for MLSoundClassifier.PersistentParameters);
    v25.finished = 1;
    v25._0 = 0;
    return v25;
  }

  v50 = *(v55 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFiles);
  v58 = v13 + v12;
  v60 = *(v61 + v6[6]);
  v53 = *(v61 + v6[7]);
  v14 = v6[9];
  v52 = *(v61 + v14);
  LOBYTE(v59) = *(v61 + v14 + 8);
  v15 = v55 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v16 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v15);
  v17 = __OFADD__(v57, v16);
  v18 = v57 + v16;
  v19 = v57 - v12;
  if (v57 >= v12)
  {
    if (v17)
    {
      BUG();
    }

    if (v58 < v18)
    {
      v18 = v58;
    }

    v26 = v18 - v12;
    if (__OFSUB__(v18, v12))
    {
      BUG();
    }

    if (v26 < v19)
    {
      BUG();
    }

    if (v13 < v19)
    {
      BUG();
    }

    if (v19 < 0)
    {
      BUG();
    }

    if (v13 < v26)
    {
      BUG();
    }

    v54 = v18;
    v51 = v57 - v12;
    v27 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8) + 80);
    v28 = v50;
    v29 = v50 + ((v27 + 32) & ~v27);
    *&v39 = v60;
    *(&v39 + 1) = v53;
    v40 = v12;
    v41 = v58;
    v42 = v52;
    v43 = v59;
    v30 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
    v59 = swift_allocObject(v30, 88, 7);
    v28;
    swift_unknownObjectRetain(v28);
    v31 = v56;
    specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v28, v29, v51, 2 * v26 + 1, &v39);
    if (!v31)
    {
      v33 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
      v28;

      v36 = v61;
      v34 = v33;
      v35 = &OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures;
      goto LABEL_25;
    }

    v11 = v28;
LABEL_23:
    v32 = v61;
    v11;
    v25._0 = outlined destroy of MLActivityClassifier.ModelParameters(v32, type metadata accessor for MLSoundClassifier.PersistentParameters);
    return v25;
  }

  if (v17)
  {
    BUG();
  }

  if (v12 < v18)
  {
    v18 = v12;
  }

  if (v18 < v57)
  {
    BUG();
  }

  if (v57 < 0)
  {
    BUG();
  }

  v20 = v18;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>) - 8) + 80);
  v44 = v60;
  v45 = v53;
  v54 = v20;
  v60 = 2 * v20 + 1;
  v46 = v58;
  v47 = v52;
  v48 = v59;
  v22 = type metadata accessor for MLSoundClassifier.FeatureExtractor();
  swift_allocObject(v22, 88, 7);
  v11;
  swift_unknownObjectRetain(v11);
  v23 = v56;
  specialized MLSoundClassifier.FeatureExtractor.init<A>(files:options:)(v11, v11 + ((v21 + 32) & ~v21), v57, v60, &v44);
  if (v23)
  {
    goto LABEL_23;
  }

  v24 = MLSoundClassifier.FeatureExtractor.extractFeatures()();
  v11;

  v34 = v24;
  v35 = &OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures;
  v36 = v61;
LABEL_25:
  v37 = *v35 + v55;
  specialized Array.append<A>(contentsOf:)(v34);
  outlined destroy of MLActivityClassifier.ModelParameters(v36, type metadata accessor for MLSoundClassifier.PersistentParameters);
  v25._0 = v54 - v57;
  if (__OFSUB__(v54, v57))
  {
    BUG();
  }

  v25.finished = v54 >= v58;
  return v25;
}

uint64_t SoundClassifierTrainingSessionDelegate.train(from:)(uint64_t a1)
{
  v2[28] = v1;
  v2[27] = a1;
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Classifier?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[29] = swift_task_alloc(v3);
  v2[30] = swift_task_alloc(v3);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.Model?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[31] = swift_task_alloc(v4);
  v2[32] = swift_task_alloc(v4);
  v5 = type metadata accessor for TrainingTablePrinter(0);
  v2[33] = v5;
  v6 = *(v5 - 8);
  v2[34] = v6;
  v7 = *(v6 + 64);
  v2[35] = v7;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[36] = swift_task_alloc(v8);
  v2[37] = swift_task_alloc(v8);
  v2[38] = swift_task_alloc(v8);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingTablePrinter?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[39] = swift_task_alloc(v9);
  v2[40] = swift_task_alloc(v9);
  v2[41] = swift_task_alloc(v9);
  v2[42] = swift_task_alloc(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v2[43] = swift_task_alloc((*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

{
  v2 = *(*v1 + 464);
  *(*v1 + 472) = a1;
  v2;
  return swift_task_switch(SoundClassifierTrainingSessionDelegate.train(from:), 0, 0);
}

uint64_t SoundClassifierTrainingSessionDelegate.train(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(v7 + 344);
  v9 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingParameters + *(v7 + 224);
  swift_beginAccess(v9, v7 + 16, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v8, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  v10 = type metadata accessor for MLSoundClassifier.PersistentParameters(0);
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v10);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v8, &demangling cache variable for type metadata for MLSoundClassifier.PersistentParameters?);
  if (v9 == 1)
  {
    BUG();
  }

  v11 = *(v7 + 216);
  v12 = *(v7 + 224);
  v13 = v12 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_sessionParameters;
  v14 = type metadata accessor for MLTrainingSessionParameters(0);
  v15 = *(*(v14 + 20) + v13);
  *(v7 + 352) = v15;
  *(v7 + 184) = v11 + v15;
  *(v7 + 192) = __OFADD__(v11, v15);
  if (__OFADD__(v11, v15))
  {
    BUG();
  }

  v16 = *(v13 + *(v14 + 28));
  *(v7 + 360) = v16;
  *(v7 + 200) = v16 - v11;
  *(v7 + 208) = __OFSUB__(v16, v11);
  if (__OFSUB__(v16, v11))
  {
    BUG();
  }

  v58 = *(v7 + 264);
  v17 = *(v7 + 336);
  v18 = type metadata accessor for EventCollector();
  swift_allocObject(v18, 32, 7);
  v56 = EventCollector.init()();
  *(v7 + 368) = v56;
  v19 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_tablePrinter + v12;
  swift_beginAccess(v19, v7 + 40, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v17, &demangling cache variable for type metadata for TrainingTablePrinter?);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v58);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for TrainingTablePrinter?);
  if (EnumTagSinglePayload == 1)
  {
    v21 = *(v7 + 328);
    v59 = *(v7 + 320);
    v22 = *(v7 + 264);
    static MLSoundClassifier.createTablePrinter(hasValidation:)(*(*(*(v7 + 224) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures) + 16) != 0);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    swift_beginAccess(v19, v7 + 64, 33, 0);
    outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v21, v19, &demangling cache variable for type metadata for TrainingTablePrinter?);
    swift_endAccess(v7 + 64);
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v59, &demangling cache variable for type metadata for TrainingTablePrinter?);
    if (__swift_getEnumTagSinglePayload(v59, 1, v22) == 1)
    {
      BUG();
    }

    v23 = *(v7 + 320);
    TrainingTablePrinter.beginTable()();
    outlined destroy of MLActivityClassifier.ModelParameters(v23, type metadata accessor for TrainingTablePrinter);
  }

  v24 = *(v7 + 264);
  v25 = *(v7 + 312);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, v25, &demangling cache variable for type metadata for TrainingTablePrinter?);
  v26 = __swift_getEnumTagSinglePayload(v25, 1, v24);
  v27 = *(v7 + 312);
  if (v26 == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for TrainingTablePrinter?);
    return _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, "range [0.0, 1.0), but got " + 0x8000000000000000, "CreateML/_SoundClassifierTrainingSessionDelegate.swift", 54, 2, 296, 0);
  }

  else
  {
    v29 = *(v7 + 224);
    outlined init with take of MLClassifierMetrics(v27, *(v7 + 304), type metadata accessor for TrainingTablePrinter);
    v30 = *(v29 + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_validationFeatures);
    *(v7 + 376) = v30;
    v31 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_classifier + v29;
    if (*(v30 + 16))
    {
      v60 = v30;
      v32 = *(v7 + 232);
      swift_beginAccess(v31, v7 + 88, 0, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v32, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
      v33 = type metadata accessor for MLSoundClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v32, 1, v33) == 1)
      {
        BUG();
      }

      v34 = *(v7 + 304);
      v35 = *(v7 + 288);
      v36 = *(v7 + 280);
      v37 = *(v7 + 272);
      v57 = *(*(v7 + 224) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      *(v7 + 416) = v57;
      outlined init with copy of MLTrainingSessionParameters(v34, v35, type metadata accessor for TrainingTablePrinter);
      v38 = *(v37 + 80);
      v39 = ~*(v37 + 80) & (v38 + 24);
      v40 = swift_allocObject(&unk_390F70, v39 + v36, v38 | 7);
      *(v7 + 424) = v40;
      *(v40 + 16) = v56;
      outlined init with take of MLClassifierMetrics(v35, v40 + v39, type metadata accessor for TrainingTablePrinter);

      v57;
      v60;
      v41 = swift_task_alloc(208);
      *(v7 + 432) = v41;
      *v41 = v7;
      v41[1] = SoundClassifierTrainingSessionDelegate.train(from:);
      v42 = *(v7 + 232);
      return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A, B>(to:validateOn:eventHandler:)))(*(v7 + 248), v57, v60, partial apply for closure #2 in SoundClassifierTrainingSessionDelegate.train(from:), v40, v43);
    }

    else
    {
      v44 = *(v7 + 240);
      swift_beginAccess(v31, v7 + 136, 0, 0);
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v44, &demangling cache variable for type metadata for MLSoundClassifier.Classifier?);
      v45 = type metadata accessor for MLSoundClassifier.Classifier(0);
      if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
      {
        BUG();
      }

      v46 = *(v7 + 304);
      v47 = *(v7 + 296);
      v48 = *(v7 + 280);
      v49 = *(v7 + 272);
      v61 = *(*(v7 + 224) + OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_trainingFeatures);
      *(v7 + 384) = v61;
      outlined init with copy of MLTrainingSessionParameters(v46, v47, type metadata accessor for TrainingTablePrinter);
      v50 = *(v49 + 80);
      v51 = ~*(v49 + 80) & (v50 + 24);
      v52 = swift_allocObject(&unk_390F98, v51 + v48, v50 | 7);
      *(v7 + 392) = v52;
      *(v52 + 16) = v56;
      outlined init with take of MLClassifierMetrics(v47, v52 + v51, type metadata accessor for TrainingTablePrinter);
      v61;

      v53 = swift_task_alloc(208);
      *(v7 + 400) = v53;
      *v53 = v7;
      v53[1] = SoundClassifierTrainingSessionDelegate.train(from:);
      v54 = *(v7 + 240);
      return ((&async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:) + async function pointer to specialized MLSoundClassifier.Classifier.fitted<A>(to:eventHandler:)))(*(v7 + 256), v61, partial apply for closure #1 in SoundClassifierTrainingSessionDelegate.train(from:), v52, v55);
    }
  }
}

uint64_t SoundClassifierTrainingSessionDelegate.train(from:)()
{
  v3 = *(*v1 + 400);
  v4 = *(*v1 + 384);
  v5 = *(*v1 + 392);
  v2 = *v1;
  *(*v1 + 408) = v0;
  v3;

  v4;
  if (v0)
  {
    v6 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v2 + 240), type metadata accessor for MLSoundClassifier.Classifier);
    v6 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[32];
  v3 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v1;
  swift_beginAccess(v4, v0 + 20, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v2, v4, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  swift_endAccess(v0 + 20);
  v5 = v0[23];
  v6 = v0[25];
  v7 = v0[38];
  v8 = v0[33];
  if (v0[44] < v6)
  {
    v6 = v0[44];
  }

  v0[56] = v6;
  v0[57] = v5;
  v9 = *(v7 + *(v8 + 20));
  static os_log_type_t.info.getter();
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v11 = swift_allocObject(v10, 72, 7);
  v11[2] = 1;
  v11[3] = 2;
  v11[7] = &type metadata for Int;
  v11[8] = &protocol witness table for Int;
  v11[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu", 10);
  v11;
  v12 = swift_task_alloc(48);
  v0[58] = v12;
  *v12 = v0;
  v12[1] = SoundClassifierTrainingSessionDelegate.train(from:);
  v13 = v0[28];
  return SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(v0[46]);
}

{
  v3 = *(*v1 + 432);
  v4 = *(*v1 + 424);
  v5 = *(*v1 + 376);
  v8 = *(*v1 + 416);
  v2 = *v1;
  *(*v1 + 440) = v0;
  v3;

  v5;
  v8;
  if (v0)
  {
    v6 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(*(v2 + 232), type metadata accessor for MLSoundClassifier.Classifier);
    v6 = SoundClassifierTrainingSessionDelegate.train(from:);
  }

  return swift_task_switch(v6, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[31];
  v3 = type metadata accessor for MLSoundClassifier.Model(0);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC8CreateML38SoundClassifierTrainingSessionDelegate_model + v1;
  swift_beginAccess(v4, v0 + 14, 33, 0);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v2, v4, &demangling cache variable for type metadata for MLSoundClassifier.Model?);
  swift_endAccess(v0 + 14);
  v5 = v0[23];
  v6 = v0[25];
  v7 = v0[38];
  v8 = v0[33];
  if (v0[44] < v6)
  {
    v6 = v0[44];
  }

  v0[56] = v6;
  v0[57] = v5;
  v9 = *(v7 + *(v8 + 20));
  static os_log_type_t.info.getter();
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
  v11 = swift_allocObject(v10, 72, 7);
  v11[2] = 1;
  v11[3] = 2;
  v11[7] = &type metadata for Int;
  v11[8] = &protocol witness table for Int;
  v11[4] = 3;
  os_log(_:dso:log:type:_:)("event: %lu", 10);
  v11;
  v12 = swift_task_alloc(48);
  v0[58] = v12;
  *v12 = v0;
  v12[1] = SoundClassifierTrainingSessionDelegate.train(from:);
  v13 = v0[28];
  return SoundClassifierTrainingSessionDelegate.buildMetrics(eventCollector:)(v0[46]);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v16 = *(v0 + 336);
  v15 = *(v0 + 328);
  v14 = *(v0 + 320);
  v13 = *(v0 + 312);
  v4 = *(v0 + 304);
  v12 = *(v0 + 296);
  v11 = *(v0 + 288);
  v10 = *(v0 + 256);
  v9 = *(v0 + 248);
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v6 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);
  v1;

  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TrainingTablePrinter);
  v3;
  v16;
  v15;
  v14;
  v13;
  v4;
  v12;
  v11;
  v10;
  v9;
  v8;
  v7;
  return (*(v0 + 8))(*(v0 + 448), v6, *(v0 + 456) >= *(v0 + 360));
}

{
  v7 = *(v0 + 408);
  v8 = *(v0 + 232);
  v1 = *(v0 + 240);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 336);
  v15 = *(v0 + 328);
  v14 = *(v0 + 320);
  v13 = *(v0 + 312);
  v5 = *(v0 + 304);
  v12 = *(v0 + 296);
  v11 = *(v0 + 288);
  v10 = *(v0 + 256);
  v9 = *(v0 + 248);

  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for TrainingTablePrinter);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLSoundClassifier.Classifier);
  v3;
  v4;
  v15;
  v14;
  v13;
  v5;
  v12;
  v11;
  v10;
  v9;
  v1;
  v8;
  return (*(v0 + 8))();
}

{
  v7 = *(v0 + 440);
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  v15 = *(v0 + 328);
  v14 = *(v0 + 320);
  v13 = *(v0 + 312);
  v4 = *(v0 + 304);
  v12 = *(v0 + 296);
  v11 = *(v0 + 288);
  v10 = *(v0 + 256);
  v9 = *(v0 + 248);
  v5 = *(v0 + 232);
  v8 = *(v0 + 240);

  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for TrainingTablePrinter);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLSoundClassifier.Classifier);
  v2;
  v3;
  v15;
  v14;
  v13;
  v4;
  v12;
  v11;
  v10;
  v9;
  v8;
  v5;
  return (*(v0 + 8))();
}