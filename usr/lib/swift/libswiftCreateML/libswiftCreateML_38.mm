uint64_t MLLinearRegressor.trainingMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 36);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLLinearRegressor.validationMetrics.getter()
{
  v2 = v0;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 40);
  v4 = *(v1 + v3);
  v5 = *(v1 + v3 + 8);
  v6 = *(v1 + v3 + 16);
  *v2 = v4;
  *(v2 + 8) = v5;
  *(v2 + 16) = v6;
  return outlined copy of Result<_RegressorMetrics, Error>(v4, v5, v6);
}

uint64_t MLLinearRegressor.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLLinearRegressor(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

void MLLinearRegressor.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLinearRegressor(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLLinearRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLLinearRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLLinearRegressor.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLLinearRegressor(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLLinearRegressor.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLLinearRegressor(0);
  return outlined init with copy of MLLinearRegressor.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t static MLLinearRegressor._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLLinearRegressor._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a6;
  v6[6] = a5;
  v6[5] = a4;
  v6[4] = a3;
  v6[3] = a2;
  v6[2] = a1;
  return swift_task_switch(MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)()
{
  v12 = *(v0 + 48);
  v11 = *(v0 + 32);
  v1 = *(v0 + 16);
  v13 = *(v0 + 24);
  v2 = type metadata accessor for MLLinearRegressor(0);
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
  outlined init with copy of MLTrainingSessionParameters(v13, v1, type metadata accessor for MLLinearRegressor.Model);
  *(v1 + v2[7]) = v12;
  *(v1 + v2[6]) = v11;
  v8 = swift_task_alloc(288);
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:);
  v9 = *(v0 + 24);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 24), type metadata accessor for MLLinearRegressor.Model);
  *(v4 + *(v2 + 20)) = v1;
  qmemcpy((v4 + *(v2 + 32)), v3, 0x49uLL);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 100);
  v2 = *(v0 + 96);
  v7 = *(v0 + 48);
  v8 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLLinearRegressor.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLLinearRegressor.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLLinearRegressor.Model);
  v8;
  v7;
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v2), *(v3 + v2 + 8), *(v3 + v2 + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v1), *(v3 + v1 + 8), *(v3 + v1 + 16));
  v5 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 72);
  v4 = *v2;
  *(*v2 + 80) = v1;
  v5;
  if (v1)
  {
    v6 = MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 88) = a1;
    v6 = MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t closure #1 in MLLinearRegressor.computeMetrics(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLLinearRegressor.Model(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DataFrame(0);
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v3[8] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLLinearRegressor.computeMetrics(on:), 0, 0);
}

uint64_t closure #1 in MLLinearRegressor.computeMetrics(on:)()
{
  v1 = v0[5];
  v2 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[3], v0[6]);
  v3 = *(type metadata accessor for MLLinearRegressor(0) + 24);
  v4 = *(v2 + v3);
  v5 = *(v2 + v3 + 8);
  outlined init with copy of MLTrainingSessionParameters(v2, v1, type metadata accessor for MLLinearRegressor.Model);
  v5;
  v6 = swift_task_alloc(160);
  v0[9] = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLLinearRegressor.computeMetrics(on:);
  return ((&_s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5Tu + _s8CreateML18MLRegressorMetricsV4data20predictionColumnName5modelAC11TabularData0K5FrameV_SSxtYaKc0A12MLComponents0J11TransformerRzlufCAA17MLLinearRegressorV5ModelV_Tt3g5Tu))(v0[2], v0[8], v4, v5, v0[5]);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;
  v2;
  if (v0)
  {
    return swift_task_switch(closure #1 in MLLinearRegressor.computeMetrics(on:), 0, 0);
  }

  v5 = *(v3 + 40);
  *(v3 + 64);
  v5;
  return (*(v3 + 8))();
}

{
  v1 = *(v0 + 40);
  *(v0 + 64);
  v1;
  v2 = *(v0 + 80);
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
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
  outlined init with copy of MLLinearRegressor.ModelParameters(a5, &v11);
  MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLLinearRegressor.ModelParameters(a5);
}

uint64_t MLLinearRegressor.init(checkpoint:)(uint64_t a1)
{
  v75 = v2;
  v91 = a1;
  v3 = v1;
  v82 = *(type metadata accessor for MLLinearRegressor.Model(0) - 8);
  v4 = *(v82 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v80 = v67;
  v81 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v90 = v67;
  v76 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LinearRegressor<Double>.Configuration);
  v77 = *(v76 - 8);
  v9 = *(v77 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v78 = v67;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v79 = v67;
  v84 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
  v14 = *(*(v84 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v85 = v67;
  v17 = alloca(v14);
  v18 = alloca(v14);
  v88 = v67;
  v89 = type metadata accessor for MLLinearRegressor.Regressor(0);
  v19 = *(*(v89 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v92 = v67;
  v22 = type metadata accessor for MLLinearRegressor(0);
  v23 = *(v22 + 36);
  *(v3 + v23 + 16) = 0;
  v74 = v23;
  *(v3 + v23) = 0;
  v87 = v22;
  v24 = *(v22 + 40);
  v25 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v26 = swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
  *v27 = 0xD0000000000000C0;
  *(v27 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v27 + 16) = 0;
  *(v27 + 32) = 0;
  *(v27 + 48) = 0;
  *(v3 + v24) = v26;
  *(v3 + v24 + 8) = 0;
  v83 = v3;
  v86 = v24;
  *(v3 + v24 + 16) = 1;
  switch(*(v91 + *(type metadata accessor for MLCheckpoint(0) + 20)))
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
      v30 = v88;
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
  }

  v31 = _stringCompareWithSmolCheck(_:_:expecting:)(v28, v29, 0x676E696E69617274, 0xE800000000000000, 0);
  v29;
  v30 = v88;
  if (v31)
  {
LABEL_9:
    *v30 = 0;
    *(v30 + 16) = 256;
    v32 = v84;
    swift_storeEnumTagMultiPayload(v30, v84, 0);
    v69 = 0;
    v68 = 0;
    v70 = 10;
    v71 = _mm_loadh_ps(&qword_33FD10);
    v72 = xmmword_33FD20;
    v73 = 1;
    v33 = v85;
    outlined init with copy of MLTrainingSessionParameters(v30, v85, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
    *&v67[3] = v32;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v67);
    outlined init with take of MLClassifierMetrics(v33, boxed_opaque_existential_0, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
    outlined assign with take of Any?(v67, &v68);
    outlined destroy of MLActivityClassifier.ModelParameters(v88, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
    v35 = v92;
    *v92 = 0.0;
    *(v35 + 8) = 0xE000000000000000;
    *(v35 + 16) = _swiftEmptyArrayStorage;
    outlined init with copy of MLLinearRegressor.ModelParameters(&v68, v35 + 24);
    outlined init with copy of MLLinearRegressor.ModelParameters(&v68, v67);
    v36 = lazy protocol witness table accessor for type Double and conformance Double();
    v37 = v79;
    LinearRegressor.Configuration.init()(&type metadata for Double, &protocol witness table for Double, v36);
    v38 = v76;
    LinearRegressor.Configuration.maximumIterations.setter(*&v67[4], v76);
    LinearRegressor.Configuration.l1Penalty.setter(v38, v67[5]);
    LinearRegressor.Configuration.l2Penalty.setter(v38, v67[6]);
    LinearRegressor.Configuration.stepSize.setter(v38, v67[7]);
    LinearRegressor.Configuration.convergenceThreshold.setter(v38, v67[8]);
    outlined destroy of MLLinearRegressor.ModelParameters(v67);
    v39 = v78;
    v40 = v77;
    (*(v77 + 16))(v78, v37, v38);
    v41 = *(v89 + 28);
    BaseLinearRegressor.init(configuration:)(v39);
    outlined destroy of MLLinearRegressor.ModelParameters(&v68);
    (*(v40 + 8))(v37, v38);
    v42 = lazy protocol witness table accessor for type MLLinearRegressor.Regressor and conformance MLLinearRegressor.Regressor();
    v43 = v90;
    v44 = v91;
    v45 = v92;
    v46 = v75;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v91, v89, v42);
    if (!v46)
    {
      v50 = v80;
      outlined init with copy of MLTrainingSessionParameters(v43, v80, type metadata accessor for MLLinearRegressor.Model);
      v51 = *(v82 + 80);
      v52 = ~*(v82 + 80) & (v51 + 16);
      v53 = swift_allocObject(&unk_394EA0, v52 + v81, v51 | 7);
      outlined init with take of MLClassifierMetrics(v50, v53 + v52, type metadata accessor for MLLinearRegressor.Model);
      specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLLinearRegressor.init(checkpoint:), v53);
      v55 = v54;

      v57 = v83;
      *(v83 + v87[5]) = v55;
      outlined init with copy of MLTrainingSessionParameters(v90, v57, type metadata accessor for MLLinearRegressor.Model);
      v58 = v88;
      *v88 = 0;
      *(v58 + 16) = 256;
      v89 = 0;
      v59 = v84;
      swift_storeEnumTagMultiPayload(v58, v84, 0);
      v60 = v87[8];
      v86 = v57 + v60;
      *(v57 + v60 + 16) = 0;
      *(v57 + v60) = 0;
      v61 = _mm_loadh_ps(&qword_33FD10);
      *(v57 + v60 + 32) = 10;
      *(v57 + v60 + 40) = v61;
      *(v57 + v60 + 56) = xmmword_33FD20;
      *(v57 + v60 + 72) = 1;
      v62 = v85;
      outlined init with copy of MLTrainingSessionParameters(v58, v85, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
      *(&v69 + 1) = v59;
      v63 = __swift_allocate_boxed_opaque_existential_0(&v68);
      outlined init with take of MLClassifierMetrics(v62, v63, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
      outlined assign with take of Any?(&v68, v86);
      outlined destroy of MLActivityClassifier.ModelParameters(v58, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
      v64 = v87;
      v65 = v87[6];
      *(v57 + v65) = 0;
      *(v57 + v65 + 8) = 0xE000000000000000;
      outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLCheckpoint);
      outlined destroy of MLActivityClassifier.ModelParameters(v90, type metadata accessor for MLLinearRegressor.Model);
      outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLLinearRegressor.Regressor);
      result = v64[7];
      *(v57 + result) = _swiftEmptyArrayStorage;
      return result;
    }

    outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for MLCheckpoint);
    v47 = type metadata accessor for MLLinearRegressor.Regressor;
    v48 = v45;
  }

  else
  {
    swift_allocError(&type metadata for MLCreateError, v25, 0, 0);
    *v49 = 0xD00000000000003BLL;
    *(v49 + 8) = "LinearRegressor\n\nParameters\n" + 0x8000000000000000;
    *(v49 + 16) = 0;
    *(v49 + 32) = 0;
    *(v49 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v25);
    v47 = type metadata accessor for MLCheckpoint;
    v48 = v91;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(v48, v47);
  v56 = v83;
  outlined consume of Result<_RegressorMetrics, Error>(*(v83 + v74), *(v83 + v74 + 8), *(v83 + v74 + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(v56 + v86), *(v56 + v86 + 8), *(v56 + v86 + 16));
}

uint64_t closure #1 in MLLinearRegressor.init(checkpoint:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

void *static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLinearRegressor>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

__int128 *static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLLinearRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLinearRegressor>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

__int128 *static MLLinearRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLLinearRegressor>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

__int128 *static MLLinearRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v59 = type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData(0);
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
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a5, &v44, &demangling cache variable for type metadata for Any?);
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
  MLLinearRegressor.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v24, v25, v58);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLLinearRegressor.ModelParameters.ValidationData);
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
    outlined init with copy of MLLinearRegressor.ModelParameters(v52, &v46);
    outlined init with copy of MLTrainingSessionParameters(v57, v55, type metadata accessor for MLTrainingSessionParameters);
    v34 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v59 = v34;
    v58 = swift_allocObject(v34, v35, v36);
    v37 = v49;
    v49;
    v38 = v50;
    v50;
    v39 = LinearRegressorTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:parameters:sessionParameters:)(v56, v33, v51, v38, v37, &v46, v55);
    v40 = type metadata accessor for DataFrame(0);
    (*(*(v40 - 8) + 8))(v60, v40);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v62, &demangling cache variable for type metadata for DataFrame?);
    v47 = v59;
    v48 = &protocol witness table for LinearRegressorTrainingSessionDelegate;
    *&v46 = v39;
    v41 = v54;
    outlined init with copy of MLTrainingSessionParameters(v57, v54, type metadata accessor for MLTrainingSessionParameters);
    v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>);
    swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

    v26 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v46, v41, 6);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  }

  return v26;
}

uint64_t static MLLinearRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = LinearRegressorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for LinearRegressorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 6);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLLinearRegressor.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for LinearRegressorTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_394ED8, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLLinearRegressorV_Tt1g503_s8b4ML17fg80V12handleResult33_002D25F40C350B487B72244DB0D467A6LL_7session7fulfillys0F0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC06Linearg8TrainingZ8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLLinearRegressor, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLLinearRegressor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[29] = a2;
  v2[28] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.Model?);
  v2[30] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLLinearRegressor(0);
  v2[31] = v4;
  v2[32] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  v2[33] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLLinearRegressor.PersistentParameters(0);
  v2[34] = v6;
  v2[35] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLLinearRegressor.init(delegate:), 0, 0);
}

uint64_t MLLinearRegressor.init(delegate:)()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingParameters + v0[29];
  swift_beginAccess(v3, v0 + 22, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for MLLinearRegressor.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[35];
  v5 = v0[34];
  v6 = v0[29];
  v13 = v0[30];
  outlined init with take of MLClassifierMetrics(v0[33], v4, type metadata accessor for MLLinearRegressor.PersistentParameters);
  outlined init with copy of MLLinearRegressor.ModelParameters(v4 + v5[8], (v0 + 2));
  v7 = v5[6];
  v14 = *(v4 + v7);
  v15 = *(v4 + v7 + 8);
  v8 = *(v4 + v5[7]);
  v9 = OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_model + v6;
  swift_beginAccess(v9, v0 + 25, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v9, v13, &demangling cache variable for type metadata for MLLinearRegressor.Model?);
  v10 = type metadata accessor for MLLinearRegressor.Model(0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v10) == 1)
  {
    BUG();
  }

  outlined init with copy of MLLinearRegressor.ModelParameters((v0 + 2), (v0 + 12));
  v15;
  v8;
  v11 = swift_task_alloc(112);
  v0[36] = v11;
  *v11 = v0;
  v11[1] = MLLinearRegressor.init(delegate:);
  return MLLinearRegressor.init(_:targetColumn:featureColumns:parameters:)(v0[32], v0[30], v14, v15, v8, (v0 + 12));
}

{
  v2 = *(*v1 + 288);
  *(*v1 + 296) = v0;
  v2;
  if (v0)
  {
    v3 = MLLinearRegressor.init(delegate:);
  }

  else
  {
    v3 = MLLinearRegressor.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 232);
  outlined init with take of MLClassifierMetrics(*(v0 + 256), *(v0 + 224), type metadata accessor for MLLinearRegressor);
  v2 = *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v2 == -1)
  {
    BUG();
  }

  v16 = *(v0 + 280);
  v15 = *(v0 + 248);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v17 = *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics);
  v14 = *(v1 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_trainingMetrics + 8);
  outlined copy of Result<_RegressorMetrics, Error>(v17, v14, v2);
  outlined destroy of MLLinearRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v5 = *(v15 + 36);
  outlined consume of Result<_RegressorMetrics, Error>(*(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16));
  *(v3 + v5) = v17;
  *(v3 + v5 + 8) = v14;
  *(v3 + v5 + 16) = v2 & 1;
  v6 = *(v4 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 8);
  v7 = *(v4 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics + 16);
  v18 = *(v4 + OBJC_IVAR____TtC8CreateML38LinearRegressorTrainingSessionDelegate_validationMetrics);
  outlined copy of MLRegressorMetrics?(v18, v6, v7);

  if (v7 != -1)
  {
    v8 = *(v0 + 224);
    v9 = *(*(v0 + 248) + 40);
    outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v9), *(v8 + v9 + 8), *(v8 + v9 + 16));
    *(v8 + v9) = v18;
    *(v8 + v9 + 8) = v6;
    *(v8 + v9 + 16) = v7 & 1;
  }

  v10 = *(v0 + 264);
  v11 = *(v0 + 240);
  v12 = *(v0 + 256);
  *(v0 + 280);
  v10;
  v12;
  v11;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v7 = *(v0 + 240);

  outlined destroy of MLLinearRegressor.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLLinearRegressor.PersistentParameters);
  v1;
  v2;
  v3;
  v7;
  v5 = *(v0 + 296);
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in MLLinearRegressor.computeMetrics(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 80);
  v7 = swift_task_alloc(96);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLinearRegressor.computeMetrics(on:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t outlined copy of MLModelMetadata?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    a9;
    a2;
    a4;
    a6;
    return a8;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLLinearRegressor.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLinearRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t objectdestroyTm_7()
{
  v1 = v0;
  v17 = type metadata accessor for DataFrame(0);
  v2 = *(v17 - 8);
  v14 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v14 + 16);
  v4 = v3 + *(v2 + 64);
  v5 = type metadata accessor for MLLinearRegressor(0);
  v6 = *(v5 - 1);
  v15 = *(v6 + 80);
  v7 = ~v15 & (v15 + v4);
  v16 = *(v6 + 64);
  (*(v2 + 8))(v1 + v3, v17);
  v8 = v1 + v7;
  *(v1 + v7 + 8);
  v9 = *(v1 + v7 + 16);
  if (v9)
  {
    v9;
    *(v8 + 32);
  }

  v10 = v8 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v11 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v11 - 8) + 8))(v10, v11);

  *(v8 + v5[6] + 8);
  *(v8 + v5[7]);
  v12 = v5[8];
  if (*(v8 + v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v8 + v12));
  }

  outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v5[9]), *(v8 + v5[9] + 8), *(v8 + v5[9] + 16));
  outlined consume of Result<_RegressorMetrics, Error>(*(v8 + v5[10]), *(v8 + v5[10] + 8), *(v8 + v5[10] + 16));
  return swift_deallocObject(v1, v16 + v7, v15 | v14 | 7);
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for MLLinearRegressor.Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v10 = *(v2 + 64);
  v5 = v4 + v0;
  *(v0 + v4 + 8);
  v6 = *(v0 + v4 + 16);
  if (v6)
  {
    v6;
    *(v5 + 32);
  }

  v7 = *(v1 + 24) + v5;
  v8 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v8 - 8) + 8))(v7, v8);
  return swift_deallocObject(v0, v10 + v4, v3 | 7);
}

uint64_t partial apply for closure #1 in MLLinearRegressor.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLLinearRegressor.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLLinearRegressor.init(checkpoint:)(a1);
}

id sub_296369()
{
  v1 = v0;
  result = MLLinearRegressor.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLLinearRegressor(void *a1, void *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v4 + 16) & ~v4));
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

    v10 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
    v11 = type metadata accessor for BaseLinearRegressorModel(0);
    (*(*(v11 - 8) + 16))(v3 + v10, a2 + v10, v11);
    v12 = a3[5];
    v13 = *(a2 + v12);
    *(v3 + v12) = v13;
    v14 = a3[6];
    *(v3 + v14) = *(a2 + v14);
    v29 = *(a2 + v14 + 8);
    *(v3 + v14 + 8) = v29;
    v15 = a3[7];
    v31 = *(a2 + v15);
    *(v3 + v15) = v31;
    v30 = a3;
    v16 = a3[8];
    v17 = v3 + v16;
    v18 = a2 + v16;
    v19 = *(a2 + v16 + 24);
    v13;
    v29;
    v31;
    if (v19)
    {
      *(v17 + 3) = v19;
      (**(v19 - 8))(v17, v18, v19);
    }

    else
    {
      v20 = *v18;
      *(v17 + 1) = *(v18 + 1);
      *v17 = v20;
    }

    *(v17 + 2) = *(v18 + 2);
    *(v17 + 3) = *(v18 + 3);
    *(v17 + 8) = *(v18 + 8);
    v17[72] = v18[72];
    v21 = v30[9];
    v22 = *(a2 + v21);
    v23 = *(a2 + v21 + 8);
    v32 = *(a2 + v21 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v22, v23, v32);
    *(v3 + v21) = v22;
    *(v3 + v21 + 8) = v23;
    *(v3 + v21 + 16) = v32;
    v24 = v30[10];
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

uint64_t destroy for MLLinearRegressor(void *a1, int *a2)
{
  a1[1];
  v3 = a1[2];
  if (v3)
  {
    v3;
    a1[4];
  }

  v4 = a1 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v5 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v5 - 8) + 8))(v4, v5);

  *(a1 + a2[6] + 8);
  *(a1 + a2[7]);
  v6 = a2[8];
  if (*(a1 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v6));
  }

  outlined consume of Result<_RegressorMetrics, Error>(*(a1 + a2[9]), *(a1 + a2[9] + 8), *(a1 + a2[9] + 16));
  return outlined consume of Result<_RegressorMetrics, Error>(*(a1 + a2[10]), *(a1 + a2[10] + 8), *(a1 + a2[10] + 16));
}

void *initializeWithCopy for MLLinearRegressor(void *a1, void *a2, int *a3)
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

  v8 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v9 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = a3[5];
  v11 = *(a2 + v10);
  *(a1 + v10) = v11;
  v12 = a3[6];
  *(a1 + v12) = *(a2 + v12);
  v27 = *(a2 + v12 + 8);
  *(a1 + v12 + 8) = v27;
  v13 = a3[7];
  v29 = *(a2 + v13);
  *(a1 + v13) = v29;
  v28 = a3;
  v14 = a3[8];
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a2 + v14 + 24);
  v11;
  v27;
  v29;
  if (v17)
  {
    *(v15 + 3) = v17;
    (**(v17 - 8))(v15, v16, v17);
  }

  else
  {
    v18 = *v16;
    *(v15 + 1) = *(v16 + 1);
    *v15 = v18;
  }

  *(v15 + 2) = *(v16 + 2);
  *(v15 + 3) = *(v16 + 3);
  *(v15 + 8) = *(v16 + 8);
  v15[72] = v16[72];
  v19 = v28[9];
  v20 = *(a2 + v19);
  v21 = *(a2 + v19 + 8);
  v30 = *(a2 + v19 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v20, v21, v30);
  *(a1 + v19) = v20;
  *(a1 + v19 + 8) = v21;
  *(a1 + v19 + 16) = v30;
  v22 = v28[10];
  v23 = *(a2 + v22);
  v24 = *(a2 + v22 + 8);
  v25 = *(a2 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v23, v24, v25);
  *(a1 + v22) = v23;
  *(a1 + v22 + 8) = v24;
  *(a1 + v22 + 16) = v25;
  return a1;
}

void *assignWithCopy for MLLinearRegressor(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
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

  v13 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v14 = type metadata accessor for BaseLinearRegressorModel(0);
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
  *(v25 + 8) = *(v26 + 8);
  v25[72] = v26[72];
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

uint64_t initializeWithTake for MLLinearRegressor(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v5 = type metadata accessor for BaseLinearRegressorModel(0);
  (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x49uLL);
  v6 = a3[9];
  *(a1 + v6 + 16) = *(a2 + v6 + 16);
  *(a1 + v6) = *(a2 + v6);
  v7 = a3[10];
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 16) = *(a2 + v7 + 16);
  return a1;
}

void *assignWithTake for MLLinearRegressor(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Double>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v12 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
  v13 = type metadata accessor for BaseLinearRegressorModel(0);
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
  *(a1 + v20 + 72) = *(a2 + v20 + 72);
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

uint64_t sub_296D8D(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for MLLinearRegressor.Model(0);
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

uint64_t sub_296E07(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for MLLinearRegressor.Model(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result) = 2 * (a2 - 1);
  return result;
}

uint64_t type metadata completion function for MLLinearRegressor(uint64_t a1)
{
  result = type metadata accessor for MLLinearRegressor.Model(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.UnknownObject + 64;
    v3[2] = &unk_348498;
    v3[3] = &value witness table for Builtin.BridgeObject + 64;
    v3[4] = &unk_3484B0;
    v3[5] = &unk_3484C8;
    v3[6] = &unk_3484C8;
    swift_initStructMetadata(a1, 256, 7, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t sub_296EF4()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLLinearRegressor.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

uint64_t lazy protocol witness table accessor for type ContiguousArray<Double> and conformance ContiguousArray<A>()
{
  result = lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>;
  if (!lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ContiguousArray<Double>);
    result = swift_getWitnessTable(&protocol conformance descriptor for ContiguousArray<A>, v1);
    lazy protocol witness table cache variable for type ContiguousArray<Double> and conformance ContiguousArray<A> = result;
  }

  return result;
}

uint64_t ObjectDetectorTrainingSessionDelegate.init(sessionParameters:)(uint64_t a1)
{
  v36 = v1;
  *(v2 + 16) = 0xD000000000000011;
  *(v2 + 24) = "on type changed." + 0x8000000000000000;
  v3 = (v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters);
  _s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOi0_(__src);
  v31 = v3;
  memcpy(v3, __src, 0x81uLL);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v5 = empty;
  v6 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args;
  v7 = type metadata accessor for CMLParameters();
  v8 = swift_allocObject(v7, 24, 7);
  *(v8 + 16) = v5;
  v32 = v6;
  *(v2 + v6) = v8;
  v9 = v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters;
  v35 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v10 = *(v2 + 16);
  v34 = v2;
  v11 = *(v2 + 24);
  v33 = v9;
  if ((v11 & 0x1000000000000000) != 0 || !(v11 & 0x2000000000000000 | v10 & 0x1000000000000000))
  {
    v11;
    v27 = v36;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v10, v11, &type metadata for OpaquePointer);
    if (!v27)
    {
      v11;
      v23 = __dst[17];
      goto LABEL_14;
    }
  }

  else
  {
    v37 = __src;
    v12 = alloca(32);
    v13 = alloca(32);
    __src[3] = 0;
    __src[2] = closure #1 in CMLModel.init(name:);
    if ((v11 & 0x2000000000000000) == 0)
    {
      if ((v10 & 0x1000000000000000) != 0)
      {
        v14 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v15 = v10 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = _StringObject.sharedUTF8.getter(v10, v11);
        v15 = v28;
      }

      v11;
      v16 = v36;
      v17 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v14, v15, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v16)
      {
        goto LABEL_10;
      }

      v23 = v17;
      v11;
LABEL_14:
      v24 = type metadata accessor for CMLModel();
      v25 = swift_allocObject(v24, 24, 7);
      *(v25 + 16) = v23;
      outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLTrainingSessionParameters);
      v20 = v34;
      *(v34 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model) = v25;
      return v20;
    }

    __dst[0] = v10;
    __dst[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    v11;
    v18 = v36;
    v19 = specialized handling<A, B>(_:_:)(__dst);
    if (!v18)
    {
      v23 = v19;
      if (!v19)
      {
        BUG();
      }

      v11;
      goto LABEL_14;
    }
  }

LABEL_10:
  v11;
  outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLTrainingSessionParameters);
  v20 = v34;
  *(v34 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v33, type metadata accessor for MLTrainingSessionParameters);
  memcpy(__dst, v31, 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);
  v21 = *(v20 + v32);

  v22 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v20, v22, *(*v20 + 48), *(*v20 + 52));
  return v20;
}

uint64_t ObjectDetectorTrainingSessionDelegate.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:sessionParameters:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v57 = v9;
  v58 = a6;
  v55 = a5;
  v59 = a4;
  v56 = a3;
  v11 = *(*(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = &v42;
  v49 = *a1;
  v63 = *(a1 + 8);
  v48 = *a2;
  v62 = *(a2 + 8);
  v60 = *a7;
  v61 = *(a7 + 2);
  *(v10 + 16) = 0xD000000000000011;
  *(v10 + 24) = "on type changed." + 0x8000000000000000;
  v14 = (v10 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters);
  _s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOi0_(__src);
  memcpy(v14, __src, 0x81uLL);
  empty = tc_v1_parameters_create_empty(0);
  if (!empty)
  {
    BUG();
  }

  v16 = empty;
  v17 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args;
  v18 = type metadata accessor for CMLParameters();
  v19 = swift_allocObject(v18, 24, 7);
  *(v19 + 16) = v16;
  v50 = v17;
  *(v10 + v17) = v19;
  v20 = v10;
  v46[0] = v49;
  LOBYTE(v46[1]) = v63 & 1;
  v53 = v48;
  v54 = v62;
  v51 = v60;
  v52 = v61;
  v21 = v47;
  outlined init with copy of MLTrainingSessionParameters(a8, v47, type metadata accessor for MLObjectDetector.ModelParameters);
  MLObjectDetector.PersistentParameters.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:)(v46, &v53, v56, v59, v55, v58, &v51, v21);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  memcpy(__dst, v14, 0x81uLL);
  v55 = v14;
  memcpy(v14, v45, 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);
  v22 = v20 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters;
  outlined init with copy of MLTrainingSessionParameters(a9, v20 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  v23 = *(v20 + 16);
  v58 = v20;
  v24 = *(v20 + 24);
  v56 = v22;
  if ((v24 & 0x1000000000000000) != 0 || !(v24 & 0x2000000000000000 | v23 & 0x1000000000000000))
  {
    v24;
    v40 = v57;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(name:), 0, v23, v24, &type metadata for OpaquePointer);
    if (!v40)
    {
      v24;
      v36 = v53;
      goto LABEL_14;
    }
  }

  else
  {
    v59 = &v42;
    v25 = alloca(32);
    v26 = alloca(32);
    __src[2] = 0;
    __src[1] = closure #1 in CMLModel.init(name:);
    if ((v24 & 0x2000000000000000) == 0)
    {
      if ((v23 & 0x1000000000000000) != 0)
      {
        v27 = (v24 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v28 = v23 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = _StringObject.sharedUTF8.getter(v23, v24);
        v28 = v41;
      }

      v24;
      v29 = v57;
      v30 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v27, v28, closure #1 in _StringGuts.withCString<A>(_:)specialized partial apply);
      if (v29)
      {
        goto LABEL_10;
      }

      v36 = v30;
      v24;
LABEL_14:
      v37 = type metadata accessor for CMLModel();
      v38 = swift_allocObject(v37, 24, 7);
      *(v38 + 16) = v36;
      outlined destroy of MLActivityClassifier.ModelParameters(a9, type metadata accessor for MLTrainingSessionParameters);
      outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
      v33 = v58;
      *(v58 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model) = v38;
      return v33;
    }

    v46[0] = v23;
    v46[1] = v24 & 0xFFFFFFFFFFFFFFLL;
    v24;
    v31 = v57;
    v32 = specialized handling<A, B>(_:_:)(v46);
    if (!v31)
    {
      v36 = v32;
      if (!v32)
      {
        BUG();
      }

      v24;
      goto LABEL_14;
    }
  }

LABEL_10:
  v24;
  outlined destroy of MLActivityClassifier.ModelParameters(a9, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of MLActivityClassifier.ModelParameters(a8, type metadata accessor for MLObjectDetector.ModelParameters);
  v33 = v58;
  *(v58 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v56, type metadata accessor for MLTrainingSessionParameters);
  memcpy(v46, v55, 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(v46);
  v34 = *(v33 + v50);

  v35 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
  swift_deallocPartialClassInstance(v33, v35, *(*v33 + 48), *(*v33 + 52));
  return v33;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.setUp()()
{
  v20 = v0;
  v2 = *(*(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  memcpy(__dst, (v1 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  memcpy(__src, (v1 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(__src) == 1)
  {
    v5 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v5, 0, 0);
    *v6 = 0xD000000000000061;
    *(v6 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v6 + 16) = 0;
    *(v6 + 32) = 0;
    *(v6 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v5);
  }

  else
  {
    v19 = v1;
    memcpy(v18, __src, 0x81uLL);
    memcpy(v15, __dst, 0x81uLL);
    memcpy(v14, __dst, 0x81uLL);
    outlined retain of MLObjectDetector.PersistentParameters(v14);
    outlined retain of MLObjectDetector.PersistentParameters(v15);
    MLObjectDetector.PersistentParameters.modelParameters.getter();
    memcpy(v13, v18, 0x81uLL);
    outlined release of MLObjectDetector.PersistentParameters(v13);
    LOWORD(v18[0]) = __src[8];
    BYTE2(v18[0]) = BYTE2(__src[8]);
    v7 = v20;
    v8 = static MLObjectDetector.validateAndConvertParameters(_:annotationType:imageColumn:annotationColumn:)(v13, v18, __src[4], __src[5], __src[6], __src[7]);
    if (v7)
    {
      outlined release of MLObjectDetector.PersistentParameters?(__dst);
      outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLObjectDetector.ModelParameters);
    }

    else
    {
      v9 = v8;
      outlined destroy of MLActivityClassifier.ModelParameters(v13, type metadata accessor for MLObjectDetector.ModelParameters);
      v18[0] = __src[0];
      LOBYTE(v18[1]) = __src[1];
      outlined copy of Result<_DataTable, Error>(__src[0], __src[1]);
      CMLParameters.setTraining(table:)(v18);
      v20 = v9;
      outlined consume of Result<_DataTable, Error>(v18[0], v18[1]);
      if (LOBYTE(__src[3]) != 0xFF)
      {
        v10 = __src[2];
        v18[0] = __src[2];
        v11 = __src[3];
        LOBYTE(v18[1]) = __src[3] & 1;
        outlined copy of Result<_DataTable, Error>(__src[2], __src[3]);
        CMLParameters.setValidation(table:)(v18);
        outlined consume of MLDataTable?(v10, v11);
      }

      v12 = *(v19 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);

      CMLModel.callFunction(name:arguments:)(0, v20);

      outlined release of MLObjectDetector.PersistentParameters?(__dst);
    }
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.resume(from:)(Swift::OpaquePointer from)
{
  v51 = v1;
  v52 = v2;
  v49 = type metadata accessor for URL(0);
  v47 = *(v49 - 8);
  v3 = *(v47 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v50 = v43;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLCheckpoint(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  specialized BidirectionalCollection.last.getter(from._rawValue);
  if (__swift_getEnumTagSinglePayload(v43, 1, v9) == 1)
  {
    outlined destroy of MLCheckpoint?(v43);
    v13 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v13, 0, 0);
    *v14 = 0xD00000000000001DLL;
    *(v14 + 8) = "reated." + 0x8000000000000000;
    *(v14 + 16) = 0;
    *(v14 + 32) = 0;
    *(v14 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v13);
    return;
  }

  outlined init with take of MLCheckpoint(v43, v43);
  memcpy(__dst, (v52 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  memcpy(v44, (v52 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(v44) == 1)
  {
    v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
    *v16 = 0xD000000000000061;
    *(v16 + 8) = "tylized validation result" + 0x8000000000000000;
    *(v16 + 16) = 0;
    *(v16 + 32) = 0;
    *(v16 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v15);
    outlined destroy of MLActivityClassifier.ModelParameters(v43, type metadata accessor for MLCheckpoint);
    return;
  }

  v53 = v43;
  v17 = v47;
  (*(v47 + 16))(v50, v43, v49);
  memcpy(v43, __dst, 0x81uLL);
  outlined retain of MLObjectDetector.PersistentParameters(v43);
  v19 = URL.absoluteString.getter();
  v20 = v18;
  if ((v18 & 0x1000000000000000) != 0 || !(v18 & 0x2000000000000000 | v19 & 0x1000000000000000))
  {
    v41 = v51;
    _StringGuts._slowWithCString<A>(_:)(closure #1 in CMLModel.init(url:), 0, v19, v18, &type metadata for OpaquePointer);
    if (!v41)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v21 = alloca(32);
  v22 = alloca(32);
  v43[3] = 0;
  v43[2] = closure #1 in CMLModel.init(url:);
  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((v19 & 0x1000000000000000) != 0)
    {
      v23 = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v24 = v19 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = _StringObject.sharedUTF8.getter(v19, v18);
      v24 = v42;
    }

    v25 = v51;
    v26 = _sSRsRi_zrlE17withMemoryRebound2to_qd_1_qd__m_qd_1_SRyqd__Gqd_0_YKXEtqd_0_YKs5ErrorRd_0_Ri_d__Ri_d_1_r1_lFSRyxGq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lys4Int8VsAD_pqd_1_Isgyrzr_SRys5UInt8VGqd_1_sAD_pAIRszAGRsd__sAD_pRsd_0_Ri_d_1_r_1_lIetMgyrzo_Tpq5s13OpaquePointerV_Tg507_sSRys4f5VGxs5e31_pIgyrzo_ACxsAD_pIegyrzr_lTRs13hI5V_TG5SRyAGGALsAD_pIgyrzo_Tf1cn_n(v23, v24, partial apply for specialized closure #1 in _StringGuts.withCString<A>(_:));
    if (!v25)
    {
      v48 = v26;
LABEL_12:
      v20;
      goto LABEL_18;
    }

LABEL_14:
    (*(v17 + 8))(v50, v49);
    v20;
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLCheckpoint);
LABEL_15:
    outlined release of MLObjectDetector.PersistentParameters?(__dst);
    return;
  }

  v46[0] = v19;
  v46[1] = v18 & 0xFFFFFFFFFFFFFFLL;
  v27 = v51;
  v28 = specialized handling<A, B>(_:_:)(v46);
  if (v27)
  {
    goto LABEL_14;
  }

  if (!v28)
  {
    BUG();
  }

  v48 = v28;
  v20;
LABEL_18:
  v29 = v48;
  (*(v17 + 8))(v50, v49);
  v30 = type metadata accessor for CMLModel();
  v31 = swift_allocObject(v30, 24, 7);
  *(v31 + 16) = v29;
  v32 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model;
  v33 = v52;
  v34 = *(v52 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);
  *(v52 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model) = v31;

  v35 = v44[0];
  if (LOBYTE(v44[1]))
  {
    swift_willThrow(v34, 24);
    outlined copy of Result<_DataTable, Error>(v35, 1);
    outlined release of MLObjectDetector.PersistentParameters?(__dst);
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLCheckpoint);
    return;
  }

  v36 = *(v33 + v32);
  v52 = *(v44[0] + 16);
  v37 = v44[3];
  if (LOBYTE(v44[3]) == 0xFF)
  {
    v39 = 0;
LABEL_25:

    v40 = v52;

    CMLModel.resume(training:validation:)(v40, v39);
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLCheckpoint);

    goto LABEL_15;
  }

  v38 = v44[2];
  if ((v44[3] & 1) == 0)
  {
    v39 = *(v44[2] + 16);

    goto LABEL_25;
  }

  swift_willThrow(v34, 24);
  outlined copy of MLDataTable?(v38, v37);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);
  outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for MLCheckpoint);
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v4 = (v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters);
  v5 = type metadata accessor for MLTrainingSessionParameters(0);
  v6 = *(v4 + *(v5 + 20));
  if (__OFADD__(v6, from))
  {
    BUG();
  }

  v7 = *(v4 + *(v5 + 28));
  v8 = v7 - from;
  if (__OFSUB__(v7, from))
  {
    BUG();
  }

  if (v6 < v8)
  {
    v8 = v6;
  }

  if (v8 < 0)
  {
    BUG();
  }

  v29 = v1;
  v27 = v7;
  v26 = v6 + from;
  v25 = v8;
  if (v8)
  {
    v28 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model;
    v24 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);
    inited = v8;
    while (1)
    {
      v10 = v2;
      v11 = *(v2 + v28);

      v12 = CMLModel.callFunction(name:arguments:)(1, v24);
      if (v29)
      {
        break;
      }

      v4 = v12;

      --inited;
      v2 = v10;
      if (!inited)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v4 = OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model;
    v13 = v2;
    v14 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);
    inited = *(v13 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);

    v28 = CMLModel.callFunction(name:arguments:)(2, inited);
    LOBYTE(inited) = v29;

    if (!v29)
    {

      v16 = *(v4 + v13);

      CMLModel.getValue(field:)(0x676E696E69617274, 0xED000073736F6C5FLL);

      v20 = CMLVariant.featureValue()();

      specialized handling<A, B>(_:_:)(*(v20 + 16));
      v29 = v3;

      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
      inited = swift_initStackObject(v21, v23);
      *(inited + 16) = 1;
      *(inited + 24) = 2;
      *(inited + 32) = 0;
      *(inited + 40) = v29;
      v22 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
      v17 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v22);
      LOBYTE(inited) = v26 >= v27;
      v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v17);
      v17;
      v15 = v25;
    }
  }

  v18 = v4;
  v19 = inited;
  result.metrics._rawValue = v18;
  result._0 = v15;
  result.finished = v19;
  return result;
}

Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> ObjectDetectorTrainingSessionDelegate.evaluate(from:)(Swift::Int from)
{
  v3 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);
  v4 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);

  CMLModel.callFunction(name:arguments:)(4, v4);

  if (!v1)
  {
  }

  v5._0 = 1;
  v5.finished = 1;
  return v5;
}

uint64_t ObjectDetectorTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
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

      v16 = *(v20 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);

      CMLModel.callFunction(name:arguments:)(6, inited);

      swift_setDeallocating(inited);
      tc_v1_release(*(inited + 16));

      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

NSURL *ObjectDetectorTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  memcpy(__dst, (OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters + v1), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(__dst) == 1)
  {
    v2 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v2, 0, 0);
    *v3 = 0xD000000000000030;
    *(v3 + 8) = "Feature Extractor" + 0x8000000000000000;
    *(v3 + 16) = 0;
    *(v3 + 32) = 0;
    *(v3 + 48) = 2;
    return swift_willThrow(&type metadata for MLCreateError, v2);
  }

  else
  {
    memcpy(v5, __dst, sizeof(v5));
    return MLObjectDetector.PersistentParameters.save(toSessionDirectory:)(a1);
  }
}

NSURL *ObjectDetectorTrainingSessionDelegate.restore(from:phase:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  (*(v5 + 16))(&v11, a1, v4);
  result = MLObjectDetector.PersistentParameters.init(sessionDirectory:)(&v11);
  if (!v2)
  {
    memcpy(__dst, __src, 0x81uLL);
    v10 = (OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters + v3);
    memcpy(v15, v10, 0x81uLL);
    memcpy(v14, v10, 0x81uLL);
    if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(v14) == 1)
    {
      memcpy(v17, __dst, 0x81uLL);
      MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
      memcpy(v16, v10, 0x81uLL);
      memcpy(v10, v17, 0x81uLL);
      return outlined release of MLObjectDetector.PersistentParameters?(v16);
    }

    else
    {
      memcpy(v17, __dst, 0x81uLL);
      memcpy(v12, v14, 0x81uLL);
      memcpy(v16, v15, 0x81uLL);
      outlined retain of MLObjectDetector.PersistentParameters(v16);
      ObjectDetectorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(v17, v12, a2);
      outlined release of MLObjectDetector.PersistentParameters?(v15);
      return outlined release of MLObjectDetector.PersistentParameters(__dst);
    }
  }

  return result;
}

uint64_t ObjectDetectorTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:phase:)(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 64) != *(a2 + 64) || ((*(a2 + 65) ^ *(a1 + 65)) & 1) != 0 || *(a1 + 66) != *(a2 + 66))
  {
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v7 = 0xD000000000000030;
    *(v7 + 8) = "iningSessionDelegate" + 0x8000000000000000;
    *(v7 + 16) = 0;
    *(v7 + 32) = 0;
    *(v7 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v6);
  }

  v42 = *a1;
  v63 = *(a1 + 8);
  v47 = *(a1 + 32);
  v41 = *a2;
  v58 = *(a2 + 8);
  v38 = *(a2 + 32);
  v3 = *(a2 + 80);
  v4 = *(a2 + 96);
  v5 = *(a2 + 112);
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  v43 = 0x7974706D65;
  if (*(a1 + 80))
  {
    if ((v3 & 1) == 0)
    {
      v56 = 0x7974706D65;
      v59 = 0xE500000000000000;
      goto LABEL_10;
    }
  }

  else if (v3 & 1 | (*(a1 + 72) != *(a2 + 72)))
  {
    v52 = *(a1 + 72);
    v56 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v59 = v8;
    v9 = (v3 & 1) == 0;
    v10 = 0xE500000000000000;
    v11 = 0x7974706D65;
    if (!v9)
    {
LABEL_11:
      v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
      *v13 = 0x6953206863746142;
      *(v13 + 8) = 0xEA0000000000657ALL;
      *(v13 + 16) = v56;
      *(v13 + 24) = v59;
      *(v13 + 32) = v11;
      *(v13 + 40) = v10;
LABEL_24:
      *(v13 + 48) = 3;
      return swift_willThrow(&type metadata for MLCreateError, v6);
    }

LABEL_10:
    v11 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v10 = v12;
    goto LABEL_11;
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v15 = 0xE500000000000000;
    if (!(v4 & 1 | (*(a1 + 88) != *(a2 + 88))))
    {
      goto LABEL_19;
    }

    v53 = *(a1 + 88);
    v14 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v49 = v16;
    if (v4)
    {
LABEL_18:
      v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
      *v13 = 0x657449202E78614DLL;
      *(v13 + 8) = 0xEF736E6F69746172;
      *(v13 + 16) = v14;
      *(v13 + 24) = v49;
      *(v13 + 32) = v43;
      *(v13 + 40) = v15;
      goto LABEL_24;
    }

LABEL_17:
    v43 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v15 = v17;
    goto LABEL_18;
  }

  v14 = 0x7974706D65;
  v49 = 0xE500000000000000;
  if ((v4 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  if (*(a2 + 104) != *(a1 + 104))
  {
    *&v54 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    *(&v54 + 1) = v29;
    v30._object = 0xE200000000000000;
    v30._countAndFlagsBits = 8236;
    String.append(_:)(v30);
    v31 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v33 = v32;
    v30._countAndFlagsBits = v31;
    v30._object = v32;
    String.append(_:)(v30);
    v33;
    v45 = v54;
    *&v54 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    *(&v54 + 1) = v34;
    v30._countAndFlagsBits = 8236;
    v30._object = 0xE200000000000000;
    String.append(_:)(v30);
    v61 = v5;
    v35 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v37 = v36;
    v30._countAndFlagsBits = v35;
    v30._object = v36;
    String.append(_:)(v30);
    v37;
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v13 = 0x7A69532064697247;
    *(v13 + 8) = 0xE900000000000065;
    *(v13 + 16) = v45;
    *(v13 + 32) = v54;
    goto LABEL_24;
  }

  v50 = *(a2 + 56);
  v57 = *(a2 + 48);
  v18 = v63;
  v63 &= 1u;
  v46 = v18;
  v19 = v58;
  outlined copy of Result<_DataTable, Error>(v42, v18);
  v20._countAndFlagsBits = v47;
  v20._object = v39;
  MLDataTable.subscript.getter(v20);
  outlined consume of Result<_DataTable, Error>(v42, v63);
  v61 = v51;
  v62 = v55;
  v44 = Array<A>.init(_:)(&v61, a3);
  v61 = v41;
  v60 = v58 & 1;
  v62 = v60;
  v48 = v19;
  outlined copy of Result<_DataTable, Error>(v41, v19);
  MLDataTable.subscript.getter(v38);
  outlined consume of Result<_DataTable, Error>(v61, v62);
  v61 = v51;
  v62 = v55;
  v21 = Array<A>.init(_:)(&v61, a3);
  ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v44, v21);
  v44;
  v21;
  if ((ML11MLDataValueO_Tt1g5 & 1) == 0)
  {
    goto LABEL_22;
  }

  v61 = v42;
  v62 = v63;
  outlined copy of Result<_DataTable, Error>(v42, v46);
  MLDataTable.subscript.getter(v40);
  outlined consume of Result<_DataTable, Error>(v61, v62);
  v61 = v51;
  v62 = v55;
  v23 = Array<A>.init(_:)(&v61, a3);
  v61 = v41;
  v62 = v60;
  outlined copy of Result<_DataTable, Error>(v41, v48);
  v24._countAndFlagsBits = v57;
  v24._object = v50;
  MLDataTable.subscript.getter(v24);
  outlined consume of Result<_DataTable, Error>(v61, v62);
  v61 = v51;
  v62 = v55;
  v25 = Array<A>.init(_:)(&v61, a3);
  v26 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v23, v25);
  v23;
  result = v25;
  if ((v26 & 1) == 0)
  {
LABEL_22:
    v6 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v6, 0, 0);
    *v28 = 1;
    *(v28 + 8) = 0;
    *(v28 + 24) = 0;
    *(v28 + 40) = 0;
    *(v28 + 48) = 4;
    return swift_willThrow(&type metadata for MLCreateError, v6);
  }

  return result;
}

uint64_t ObjectDetectorTrainingSessionDelegate.deinit()
{
  *(v0 + 24);
  outlined destroy of MLActivityClassifier.ModelParameters(v0 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
  outlined release of MLObjectDetector.PersistentParameters?(__dst);
  v1 = *(v0 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);

  v2 = *(v0 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_args);

  return v0;
}

uint64_t type metadata accessor for ObjectDetectorTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for ObjectDetectorTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for ObjectDetectorTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for ObjectDetectorTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for ObjectDetectorTrainingSessionDelegate(uint64_t a1)
{
  v3[0] = &unk_348568;
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &unk_348580;
    v3[3] = &value witness table for Builtin.NativeObject + 64;
    v3[4] = &value witness table for Builtin.NativeObject + 64;
    result = swift_updateClassMetadata2(a1, 256, 5, v3, a1 + 80);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.evaluate(from:) in conformance ObjectDetectorTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = ObjectDetectorTrainingSessionDelegate.evaluate(from:)(a1);
  if (!v7)
  {
    v5 = 1;
    v6 = 1;
  }

  return (*(v2 + 8))(v5, v6, *(&v4 + 1));
}

uint64_t outlined release of MLObjectDetector.PersistentParameters?(uint64_t a1)
{
  v1 = *(a1 + 48);
  v7 = *(a1 + 128);
  v6 = *(a1 + 112);
  v5 = *(a1 + 96);
  v4 = *(a1 + 80);
  v3 = *(a1 + 64);
  outlined consume of MLObjectDetector.PersistentParameters?(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  return a1;
}

uint64_t outlined consume of MLObjectDetector.PersistentParameters?(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    outlined consume of Result<_DataTable, Error>(a1, a2);
    outlined consume of MLDataTable?(a3, a4);
    a8;
    return a6;
  }

  return result;
}

uint64_t outlined release of MLObjectDetector.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 24);
  outlined consume of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined consume of MLDataTable?(v1, v4);
  v3;
  v2;
  return a1;
}

uint64_t outlined destroy of MLCheckpoint?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLCheckpoint(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLCheckpoint(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t getEnumTagSinglePayload for ModelType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xE5)
    {
      goto LABEL_13;
    }

    v2 = a2 + 27;
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
      v5 = *a1 + (v4 << 8) - 28;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 28;
      v8 = v6 < 0x1C;
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

uint64_t storeEnumTagSinglePayload for ModelType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xE5)
  {
    v4 = a3 + 27;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xE4)
  {
    v5 = a2 - 229;
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
          *a1 = a2 + 27;
        }

        break;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModelType and conformance ModelType()
{
  result = lazy protocol witness table cache variable for type ModelType and conformance ModelType;
  if (!lazy protocol witness table cache variable for type ModelType and conformance ModelType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ModelType, &type metadata for ModelType);
    lazy protocol witness table cache variable for type ModelType and conformance ModelType = result;
  }

  return result;
}

unint64_t ModelType.description.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD000000000000015;
      break;
    case 1:
    case 3:
    case 20:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 4:
    case 25:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
    case 7:
      result = 0x65527261656E694CLL;
      break;
    case 8:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x616C436567616D49;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x617254656C797453;
      break;
    case 15:
      result = 0x73616C4374786554;
      break;
    case 16:
      result = 0x6767615464726F57;
      break;
    case 17:
      result = 0x65447463656A624FLL;
      break;
    case 18:
    case 23:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x616C43646E756F53;
      break;
    case 21:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 26:
      result = 0x65657474657A6147;
      break;
    case 27:
      result = 0x65626D4564726F57;
      break;
  }

  return result;
}

unint64_t ModelType.nameKey.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0xD000000000000018;
      break;
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001CLL;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x6966697373616C63;
      break;
    case 11:
      result = 0x6D69735F6D657469;
      break;
    case 12:
    case 19:
      result = 0xD000000000000010;
      break;
    case 13:
    case 16:
      result = 0xD000000000000012;
      break;
    case 14:
      result = 0x72745F656C797473;
      break;
    case 15:
    case 23:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 21:
    case 22:
    case 24:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0x65657474657A6167;
      break;
    case 27:
      result = 0x626D655F64726F77;
      break;
  }

  return result;
}

CreateML::ModelType_optional __swiftcall ModelType.init(nameKey:)(Swift::String nameKey)
{
  v1 = nameKey._countAndFlagsBits ^ 0xD000000000000018;
  if (nameKey._countAndFlagsBits ^ 0xD000000000000018 | nameKey._object ^ (&aDecisionTreeRe[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aDecisionTreeRe[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
  {
    if (v1 | nameKey._object ^ (&aDecisionTreeCl[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aDecisionTreeCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
    {
      if (v1 | nameKey._object ^ (&aBoostedTreesRe[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aBoostedTreesRe[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
      {
        if (v1 | nameKey._object ^ (&aBoostedTreesCl[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aBoostedTreesCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
        {
          if (v1 | nameKey._object ^ (&aRandomForestRe[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aRandomForestRe[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
          {
            if (nameKey._object ^ (&aRandomForestCl[-32] | 0x8000000000000000) | v1 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000018, &aRandomForestCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
            {
              if (nameKey._countAndFlagsBits ^ 0xD00000000000001CLL | nameKey._object ^ (&aRegressionLine[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD00000000000001CLL, &aRegressionLine[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
              {
                if (nameKey._countAndFlagsBits ^ 0xD00000000000001FLL | nameKey._object ^ (&aRegressionLine_0[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD00000000000001FLL, &aRegressionLine_0[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                {
                  if (nameKey._countAndFlagsBits ^ 0xD00000000000001ELL | nameKey._object ^ (&aClassifierLogi[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD00000000000001ELL, &aClassifierLogi[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                  {
                    if (nameKey._countAndFlagsBits ^ 0xD000000000000021 | nameKey._object ^ (&aClassifierLogi_0[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000021, &aClassifierLogi_0[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                    {
                      if (nameKey._countAndFlagsBits ^ 0x6966697373616C63 | nameKey._object ^ 0xEE006D76735F7265 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6966697373616C63, 0xEE006D76735F7265, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                      {
                        if (nameKey._countAndFlagsBits ^ 0x6D69735F6D657469 | nameKey._object ^ 0xEF79746972616C69 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x6D69735F6D657469, 0xEF79746972616C69, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                        {
                          if (nameKey._countAndFlagsBits ^ 0xD000000000000010 | nameKey._object ^ (&aImageClassifie[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000010, &aImageClassifie[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                          {
                            if (nameKey._countAndFlagsBits ^ 0xD000000000000012 | nameKey._object ^ (&aDrawingClassif[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aDrawingClassif[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                            {
                              if (nameKey._countAndFlagsBits ^ 0x72745F656C797473 | nameKey._object ^ 0xEE00726566736E61 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x72745F656C797473, 0xEE00726566736E61, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                              {
                                if (nameKey._object ^ (&aNlpSequenceMod[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000012 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000012, &aNlpSequenceMod[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                {
                                  if (nameKey._countAndFlagsBits ^ 0xD000000000000014 | nameKey._object ^ (&aNlpClassifierM[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000014, &aNlpClassifierM[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                  {
                                    if (nameKey._countAndFlagsBits ^ 0xD000000000000011 | nameKey._object ^ (&aObjectRecogniz[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, &aObjectRecogniz[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                    {
                                      if (nameKey._countAndFlagsBits ^ 0xD000000000000013 | nameKey._object ^ (&aActivityClassi[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000013, &aActivityClassi[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                      {
                                        if (nameKey._object ^ (&aSoundClassifie[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000010 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000010, &aSoundClassifie[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                        {
                                          if (nameKey._countAndFlagsBits ^ 0xD000000000000019 | nameKey._object ^ (&aFewShotSoundCl[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000019, &aFewShotSoundCl[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                          {
                                            if (!(nameKey._countAndFlagsBits ^ 0xD000000000000017 | nameKey._object ^ (&aHumanActionRec[-32] | 0x8000000000000000)) || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000017, &aHumanActionRec[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000017, &aHumanActionRec[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) != 0)
                                            {
                                              nameKey._object;
                                              return 22;
                                            }

                                            else if (nameKey._object ^ (&aHandPoseClassi[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000014 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000014, &aHandPoseClassi[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                            {
                                              if (nameKey._object ^ (&aHandGestureCla[-32] | 0x8000000000000000) | nameKey._countAndFlagsBits ^ 0xD000000000000017 && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000017, &aHandGestureCla[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                              {
                                                if (nameKey._countAndFlagsBits ^ 0xD000000000000016 | nameKey._object ^ (&aHandActionClas[-32] | 0x8000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000016, &aHandActionClas[-32] | 0x8000000000000000, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                                {
                                                  if (nameKey._countAndFlagsBits ^ 0x65657474657A6167 | nameKey._object ^ 0xE900000000000072 && (_stringCompareWithSmolCheck(_:_:expecting:)(0x65657474657A6167, 0xE900000000000072, nameKey._countAndFlagsBits, nameKey._object, 0) & 1) == 0)
                                                  {
                                                    if (nameKey._countAndFlagsBits ^ 0x626D655F64726F77 | nameKey._object ^ 0xEE00676E69646465)
                                                    {
                                                      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x626D655F64726F77, 0xEE00676E69646465, nameKey._countAndFlagsBits, nameKey._object, 0);
                                                      nameKey._object;
                                                      return (28 - (v3 & 1));
                                                    }

                                                    else
                                                    {
                                                      nameKey._object;
                                                      return 27;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    nameKey._object;
                                                    return 26;
                                                  }
                                                }

                                                else
                                                {
                                                  nameKey._object;
                                                  return 25;
                                                }
                                              }

                                              else
                                              {
                                                nameKey._object;
                                                return 24;
                                              }
                                            }

                                            else
                                            {
                                              nameKey._object;
                                              return 23;
                                            }
                                          }

                                          else
                                          {
                                            nameKey._object;
                                            return 20;
                                          }
                                        }

                                        else
                                        {
                                          nameKey._object;
                                          return 19;
                                        }
                                      }

                                      else
                                      {
                                        nameKey._object;
                                        return 18;
                                      }
                                    }

                                    else
                                    {
                                      nameKey._object;
                                      return 17;
                                    }
                                  }

                                  else
                                  {
                                    nameKey._object;
                                    return 15;
                                  }
                                }

                                else
                                {
                                  nameKey._object;
                                  return 16;
                                }
                              }

                              else
                              {
                                nameKey._object;
                                return 14;
                              }
                            }

                            else
                            {
                              nameKey._object;
                              return 13;
                            }
                          }

                          else
                          {
                            nameKey._object;
                            return 12;
                          }
                        }

                        else
                        {
                          nameKey._object;
                          return 11;
                        }
                      }

                      else
                      {
                        nameKey._object;
                        return 10;
                      }
                    }

                    else
                    {
                      nameKey._object;
                      return 9;
                    }
                  }

                  else
                  {
                    nameKey._object;
                    return 8;
                  }
                }

                else
                {
                  nameKey._object;
                  return 7;
                }
              }

              else
              {
                nameKey._object;
                return 6;
              }
            }

            else
            {
              nameKey._object;
              return 1;
            }
          }

          else
          {
            nameKey._object;
            return 0;
          }
        }

        else
        {
          nameKey._object;
          return 5;
        }
      }

      else
      {
        nameKey._object;
        return 4;
      }
    }

    else
    {
      nameKey._object;
      return 3;
    }
  }

  else
  {
    nameKey._object;
    return 2;
  }
}

uint64_t ModelType.playgroundDescription.getter(char a1)
{
  v2 = v1;
  v3 = ModelType.description.getter(a1);
  v5 = v4;
  objc_allocWithZone(NSAttributedString);
  v6 = @nonobjc NSAttributedString.init(string:attributes:)(v3, v5, 0);
  result = type metadata accessor for NSAttributedString();
  v2[3] = result;
  *v2 = v6;
  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5071_s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm(uint64_t a1)
{
  if ((a1 & 0x4000000000000001) != 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v12 = a1;
    }

    v2 = _CocoaArrayWrapper.endIndex.getter(v12);
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  if (v2)
  {
    v3 = 0;
    if (v2 > 0)
    {
      v3 = v2;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    if (v2 < 0)
    {
      BUG();
    }

    v4 = 0;
    for (i = 0; i != v2; v4 = i)
    {
      if (__OFADD__(1, i++))
      {
        BUG();
      }

      if ((a1 & 0xC000000000000003) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)(v4, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v8 = v7;
      v13 = [v7 integerValue];

      v9 = _swiftEmptyArrayStorage[2];
      v10 = v9 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
        v10 = v9 + 1;
      }

      _swiftEmptyArrayStorage[2] = v10;
      _swiftEmptyArrayStorage[v9 + 4] = v13;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(uint64_t a1, char a2)
{
  v2 = a1;
  switch(a2)
  {
    case 0:
    case 1:
    case 2:
    case 3:
      return v2;
    case 4:
      return *(a1 + 16);
    case 5:
      v4 = *(a1 + 16);
      if (v4)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
        v5 = (a1 + 56);
        do
        {
          v13 = v4;
          v6 = *(v5 - 2);
          v7 = *(v5 - 1);
          v8 = *v5;
          v6;
          outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v7, v8);
          v14 = ColumnDescriptor.ColumnTypeDescriptor.featureSize.getter(v7, v8);
          v6;
          outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v7, v8);
          v9 = _swiftEmptyArrayStorage[2];
          v10 = v9 + 1;
          if (_swiftEmptyArrayStorage[3] >> 1 <= v9)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v9 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v10;
          _swiftEmptyArrayStorage[v9 + 4] = v14;
          v5 += 32;
          v4 = v13 - 1;
        }

        while (v13 != 1);
      }

      else
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
          _swiftEmptyArrayStorage;
          return 0;
        }
      }

      v11 = 0;
      v2 = 0;
      do
      {
        v12 = __OFADD__(_swiftEmptyArrayStorage[v11 + 4], v2);
        v2 += _swiftEmptyArrayStorage[v11 + 4];
        if (v12)
        {
          BUG();
        }

        ++v11;
      }

      while (v10 != v11);
      _swiftEmptyArrayStorage;
      return v2;
    case 6:
      return 1;
  }
}

uint64_t ColumnDescriptor.featureDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v28 = a3;
  v29 = a2;
  v32 = a1;
  v33 = v4;
  v6 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = type metadata accessor for FeatureType(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  switch(a4)
  {
    case 0:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.int32(_:);
      goto LABEL_7;
    case 1:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.float16(_:);
      goto LABEL_7;
    case 2:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:);
      goto LABEL_7;
    case 3:
      v15 = &enum case for FeatureType.ShapedArrayParameters.DataType.double(_:);
LABEL_7:
      v18 = *v15;
      v31 = &v27;
      v30 = v6;
      v19 = v6;
      v20 = v27;
      (*(v27 + 104))(&v27, v18, v19);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v22 = swift_allocObject(v21, 40, 7);
      v22[2] = 1;
      v22[3] = 2;
      v22[4] = v28;
      v16 = v29;
      v29;
      v17 = v31;
      static FeatureType.shapedArray(dataType:shape:optional:)(&v27, v22, 0);
      v22;
      (*(v20 + 8))(&v27, v30);
      goto LABEL_8;
    case 4:
      v16 = v29;
      v17 = &v27;
      v29;
      FeatureType.StringParameters.init(optional:)(0);
      (*(v11 + 104))(&v27, enum case for FeatureType.string(_:), v10);
LABEL_8:
      v23 = v32;
      v24 = v17;
      break;
    case 5:
      v16 = v29;
      v29;
      static FeatureType.dictionaryWithStringKeys(optional:)(0);
      v23 = v32;
      v24 = &v27;
      break;
    case 6:
      v16 = v29;
      v29;
      if (v28)
      {
        FeatureType.DoubleParameters.init(optional:)(0);
        v26 = &enum case for FeatureType.double(_:);
      }

      else
      {
        FeatureType.IntParameters.init(optional:)(0);
        v26 = &enum case for FeatureType.int(_:);
      }

      (*(v11 + 104))(&v27, *v26, v10);
      v24 = &v27;
      v23 = v32;
      break;
  }

  return FeatureDescription.init(name:type:description:)(v23, v16, v24, 0, 0xE000000000000000);
}

uint64_t ColumnDescriptor.init(_:)(uint64_t a1)
{
  *&v302 = v1;
  v290 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  v289 = *(v290 - 8);
  v2 = *(v289 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v274 = v240;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v291 = v240;
  v293 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v292 = *(v293 - 8);
  v7 = *(v292 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v275 = v240;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v294 = v240;
  v296 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v295 = *(v296 - 8);
  v12 = *(v295 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v276 = v240;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v297 = v240;
  v299 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  v298 = *(v299 - 8);
  v17 = *(v298 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v277 = v240;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v300 = v240;
  v287 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  v286 = *(v287 - 8);
  v22 = *(v286 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v273 = v240;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v288 = v240;
  v284 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v283 = *(v284 - 8);
  v27 = *(v283 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v272 = v240;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v285 = v240;
  v270 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLMultiArray>);
  v269 = *(v270 - 8);
  v32 = *(v269 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v271 = v240;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>??) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v280 = v240;
  v266 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Double>>);
  v265 = *(v266 - 8);
  v38 = *(v265 + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v268 = v240;
  v267 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>?);
  v41 = *(*(v267 - 8) + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v282 = v240;
  v263 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v262 = *(v263 - 8);
  v44 = *(v262 + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v264 = v240;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>??) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v279 = v240;
  v259 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Float>>);
  v258 = *(v259 - 8);
  v50 = *(v258 + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v261 = v240;
  v260 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>?);
  v53 = *(*(v260 - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v281 = v240;
  v256 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v255 = *(v256 - 8);
  v56 = *(v255 + 64);
  v57 = alloca(v56);
  v58 = alloca(v56);
  v257 = v240;
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>??) - 8) + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v249 = v240;
  v252 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<MLShapedArray<Int32>>);
  v251 = *(v252 - 8);
  v62 = *(v251 + 64);
  v63 = alloca(v62);
  v64 = alloca(v62);
  v254 = v240;
  v253 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>?);
  v65 = *(*(v253 - 8) + 64);
  v66 = alloca(v65);
  v67 = alloca(v65);
  v250 = v240;
  v247 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[UInt8]>);
  v246 = *(v247 - 8);
  v68 = *(v246 + 64);
  v69 = alloca(v68);
  v70 = alloca(v68);
  v248 = v240;
  v244 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int32]>);
  v243 = *(v244 - 8);
  v71 = *(v243 + 64);
  v72 = alloca(v71);
  v73 = alloca(v71);
  v245 = v240;
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Int]>);
  v241 = *(v74 - 8);
  v75 = *(v241 + 64);
  v76 = alloca(v75);
  v77 = alloca(v75);
  v242 = v240;
  v78 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  v81 = alloca(v80);
  v82 = alloca(v80);
  v278 = v240;
  v83 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v84 = alloca(v83);
  v85 = alloca(v83);
  v240[1] = v240;
  v240[0] = AnyColumn.name.getter();
  v303 = v86;
  v304 = a1;
  v87 = AnyColumn.wrappedElementType.getter();
  if (swift_dynamicCastMetatype(v87, &type metadata for Int) || swift_dynamicCastMetatype(v87, &type metadata for UInt8) || swift_dynamicCastMetatype(v87, &type metadata for Int32) || swift_dynamicCastMetatype(v87, &type metadata for Float) || swift_dynamicCastMetatype(v87, &type metadata for Double))
  {
LABEL_4:
    v88 = type metadata accessor for AnyColumn(0);
    (*(*(v88 - 8) + 8))(v304, v88);
    return v240[0];
  }

  if (swift_dynamicCastMetatype(v87, &type metadata for String))
  {
    v90 = AnyColumn.assumingType<A>(_:)(&type metadata for String, &type metadata for String);
    *&v301 = 0;
    *(&v301 + 1) = 0xE000000000000000;
    v91 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
    v92 = v278;
    OptionalColumnProtocol.filled(with:)(&v301, v78, v91);
    (*(v79 + 8))(v92, v78, v90);
    v93 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
    v93;
    v94 = specialized _copyCollectionToContiguousArray<A>(_:)(v93);
    v93;
    *&v301 = v94;
    v95 = v302;
    specialized MutableCollection<>.sort(by:)(&v301);
    if (v95)
    {

      BUG();
    }

LABEL_10:
    v96 = type metadata accessor for AnyColumn(0);
    (*(*(v96 - 8) + 8))(v304, v96);
    v93;
    return v240[0];
  }

  v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
  if (swift_dynamicCastMetatype(v87, v97))
  {
    v98 = v242;
    v99 = AnyColumn.assumingType<A>(_:)(v97, v97);
    v100 = specialized Collection.first.getter();
    (*(v241 + 8))(v98, v74, v99);
    if (v100)
    {
      if (v100 == 2)
      {
        BUG();
      }

      v101 = *(v100 + 16);
      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v100);
    }

    v106 = v304;
LABEL_20:
    v110 = type metadata accessor for AnyColumn(0);
    v111 = *(v110 - 8);
    v112 = v106;
LABEL_21:
    (*(v111 + 8))(v112, v110);
    return v240[0];
  }

  v102 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int32]);
  if (swift_dynamicCastMetatype(v87, v102))
  {
    v103 = v245;
    v104 = v102;
    v105 = v102;
    v106 = v304;
    v107 = AnyColumn.assumingType<A>(_:)(v104, v105);
    v108 = specialized Collection.first.getter();
    (*(v243 + 8))(v103, v244, v107);
    if (v108)
    {
      if (v108 == 2)
      {
        BUG();
      }

      v109 = *(v108 + 16);
      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v108);
    }

    goto LABEL_20;
  }

  v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [UInt8]);
  if (swift_dynamicCastMetatype(v87, v113))
  {
    v114 = v248;
    v115 = AnyColumn.assumingType<A>(_:)(v113, v113);
    v116 = specialized Collection.first.getter();
    (*(v246 + 8))(v114, v247, v115);
    if (v116)
    {
      if (v116 == 2)
      {
        BUG();
      }

      v117 = *(v116 + 16);
      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v116);
    }

    v110 = type metadata accessor for AnyColumn(0);
    v111 = *(v110 - 8);
    v112 = v304;
    goto LABEL_21;
  }

  v118 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Int32>);
  if (swift_dynamicCastMetatype(v87, v118))
  {
    v119 = v254;
    v120 = AnyColumn.assumingType<A>(_:)(v118, v118);
    v121 = v249;
    specialized Collection.first.getter();
    (*(v251 + 8))(v119, v252, v120);
    if (__swift_getEnumTagSinglePayload(v121, 1, v253) == 1)
    {
      BUG();
    }

    v122 = v250;
    outlined init with take of DataFrame?(v121, v250, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
    if (__swift_getEnumTagSinglePayload(v122, 1, v118) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v122, &demangling cache variable for type metadata for MLShapedArray<Int32>?);
      v93 = _swiftEmptyArrayStorage;
    }

    else
    {
      v93 = MLShapedArray.shape.getter(v118);
      (*(*(v118 - 8) + 8))(v122, v118);
    }

    v128 = v93[2];
    if (v128 < 2)
    {
      if (v128)
      {
        v133 = v93[4];
      }

      goto LABEL_10;
    }

    v129 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v129, 0, 0);
    *v130 = 0xD000000000000031;
    *(v130 + 8) = " has a missing element." + 0x8000000000000000;
    *(v130 + 16) = 0;
    *(v130 + 32) = 0;
    *(v130 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v129);
    v131 = type metadata accessor for AnyColumn(0);
    (*(*(v131 - 8) + 8))(v304, v131);
    v303;
    v132 = v93;
    return v132;
  }

  v123 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  if (swift_dynamicCastMetatype(v87, v123))
  {
    v124 = v257;
    v125 = AnyColumn.assumingType<A>(_:)(v123, v123);
    v126 = specialized Collection.first.getter();
    (*(v255 + 8))(v124, v256, v125);
    if (v126)
    {
      if (v126 == 2)
      {
        BUG();
      }

      v127 = *(v126 + 16);
      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v126);
    }

    goto LABEL_4;
  }

  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Float>);
  if (swift_dynamicCastMetatype(v87, v134))
  {
    v135 = v261;
    v136 = AnyColumn.assumingType<A>(_:)(v134, v134);
    v137 = v279;
    specialized Collection.first.getter();
    (*(v258 + 8))(v135, v259, v136);
    if (__swift_getEnumTagSinglePayload(v137, 1, v260) == 1)
    {
      BUG();
    }

    v138 = v281;
    outlined init with take of DataFrame?(v279, v281, &demangling cache variable for type metadata for MLShapedArray<Float>?);
    if (__swift_getEnumTagSinglePayload(v138, 1, v134) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v281, &demangling cache variable for type metadata for MLShapedArray<Float>?);
      v139 = _swiftEmptyArrayStorage;
    }

    else
    {
      v145 = v281;
      v139 = MLShapedArray.shape.getter(v134);
      (*(*(v134 - 8) + 8))(v145, v134);
    }

    v146 = v139[2];
    if (v146 >= 2)
    {
LABEL_54:
      v147 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v147, 0, 0);
      *v148 = 0xD000000000000031;
      *(v148 + 8) = " has a missing element." + 0x8000000000000000;
      *(v148 + 16) = 0;
      *(v148 + 32) = 0;
      *(v148 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v147);
      v149 = type metadata accessor for AnyColumn(0);
      (*(*(v149 - 8) + 8))(v304, v149);
      v303;
      v132 = v139;
      return v132;
    }

    if (v146)
    {
      v150 = v139[4];
    }

LABEL_61:
    v156 = type metadata accessor for AnyColumn(0);
    (*(*(v156 - 8) + 8))(v304, v156);
    v139;
    return v240[0];
  }

  v140 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  if (swift_dynamicCastMetatype(v87, v140))
  {
    v141 = v264;
    v142 = AnyColumn.assumingType<A>(_:)(v140, v140);
    v143 = specialized Collection.first.getter();
    (*(v262 + 8))(v141, v263, v142);
    if (v143)
    {
      if (v143 == 2)
      {
        BUG();
      }

      v144 = *(v143 + 16);
      outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(v143);
    }

    goto LABEL_4;
  }

  v151 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLShapedArray<Double>);
  if (swift_dynamicCastMetatype(v87, v151))
  {
    v152 = v268;
    v153 = AnyColumn.assumingType<A>(_:)(v151, v151);
    v154 = v280;
    specialized Collection.first.getter();
    (*(v265 + 8))(v152, v266, v153);
    if (__swift_getEnumTagSinglePayload(v154, 1, v267) == 1)
    {
      BUG();
    }

    v155 = v282;
    outlined init with take of DataFrame?(v280, v282, &demangling cache variable for type metadata for MLShapedArray<Double>?);
    if (__swift_getEnumTagSinglePayload(v155, 1, v151) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v282, &demangling cache variable for type metadata for MLShapedArray<Double>?);
      v139 = _swiftEmptyArrayStorage;
    }

    else
    {
      v170 = v282;
      v139 = MLShapedArray.shape.getter(v151);
      (*(*(v151 - 8) + 8))(v170, v151);
    }

    v171 = v139[2];
    if (v171 >= 2)
    {
      goto LABEL_54;
    }

    if (v171)
    {
      v172 = v139[4];
    }

    goto LABEL_61;
  }

  v157 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  if (swift_dynamicCastMetatype(v87, v157))
  {
    v158 = v271;
    v159 = AnyColumn.assumingType<A>(_:)(v157, v157);
    v160 = specialized Collection.first.getter();
    (*(v269 + 8))(v158, v270, v159);
    if (v160)
    {
      if (v160 == &dword_0 + 2)
      {
        BUG();
      }

      v161 = [v160 shape];
      v162 = v161;
      v163 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v164 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v162, v163);

      v165 = v302;
      ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5071_s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm(v164);
      v164;
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2] <= 1uLL)
      {
        ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;
        v190 = v160;
        ColumnDescriptor.ColumnTypeDescriptor.init(_:)(v190);
        if (!v165)
        {
          if (v191 == -1)
          {
            BUG();
          }

          v203 = type metadata accessor for AnyColumn(0);
          (*(*(v203 - 8) + 8))(v304, v203);
          outlined consume of MLMultiArray??(v160);
          return v240[0];
        }

        v192 = type metadata accessor for AnyColumn(0);
        (*(*(v192 - 8) + 8))(v304, v192);
      }

      else
      {
        v167 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v167, 0, 0);
        *v168 = 0xD000000000000031;
        *(v168 + 8) = " has a missing element." + 0x8000000000000000;
        *(v168 + 16) = 0;
        *(v168 + 32) = 0;
        *(v168 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v167);
        v169 = type metadata accessor for AnyColumn(0);
        (*(*(v169 - 8) + 8))(v304, v169);
        ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;
      }

      outlined consume of MLMultiArray??(v160);
      v132 = v303;
      return v132;
    }

    v303;
    *&v301 = 0;
    *(&v301 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);
    *(&v301 + 1);
    *&v301 = 0x206E6D756C6F43;
    *(&v301 + 1) = 0xE700000000000000;
    v182 = v304;
    v183._countAndFlagsBits = AnyColumn.name.getter();
    object = v183._object;
    String.append(_:)(v183);
    object;
    v185._object = "unsupported type " + 0x8000000000000000;
    v185._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v185);
    v302 = v301;
    v185._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v185._object, 0, 0);
    *v186 = v302;
    *(v186 + 16) = 0;
    *(v186 + 32) = 0;
    *(v186 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v185._object);
    v187 = type metadata accessor for AnyColumn(0);
    v188 = *(v187 - 8);
    v189 = v182;
    return (*(v188 + 8))(v189, v187);
  }

  v173 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  if (!swift_dynamicCastMetatype(v87, v173))
  {
    v193 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : UInt8]);
    if (swift_dynamicCastMetatype(v87, v193))
    {
      v194 = v288;
      v195 = AnyColumn.assumingType<A>(_:)(v193, v193);
      v196 = v273;
      (*(v286 + 16))(v273, v194, v287, v195);
      v197 = v302;
      _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5UInt8V_Tt0g5(v196);
      if (v197)
      {
        v303;
        v198 = type metadata accessor for AnyColumn(0);
        (*(*(v198 - 8) + 8))(v304, v198);
        v179 = v288;
        v180 = v287;
        v181 = v286;
        return (*(v181 + 8))(v179, v180);
      }

      v210 = type metadata accessor for AnyColumn(0);
      (*(*(v210 - 8) + 8))(v304, v210);
      v200 = v288;
      v201 = v287;
      v202 = v286;
    }

    else
    {
      v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int32]);
      if (swift_dynamicCastMetatype(v87, v204))
      {
        v205 = v300;
        v206 = AnyColumn.assumingType<A>(_:)(v204, v204);
        v207 = v277;
        (*(v298 + 16))(v277, v205, v299, v206);
        v208 = v302;
        _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5Int32V_Tt0g5(v207);
        if (v208)
        {
          v303;
          v209 = type metadata accessor for AnyColumn(0);
          (*(*(v209 - 8) + 8))(v304, v209);
          v179 = v300;
          v180 = v299;
          v181 = v298;
          return (*(v181 + 8))(v179, v180);
        }

        v217 = type metadata accessor for AnyColumn(0);
        (*(*(v217 - 8) + 8))(v304, v217);
        v200 = v300;
        v201 = v299;
        v202 = v298;
      }

      else
      {
        v211 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Double]);
        if (swift_dynamicCastMetatype(v87, v211))
        {
          v212 = v297;
          v213 = AnyColumn.assumingType<A>(_:)(v211, v211);
          v214 = v276;
          (*(v295 + 16))(v276, v212, v296, v213);
          v215 = v302;
          _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSd_Tt0g5(v214);
          if (v215)
          {
            v303;
            v216 = type metadata accessor for AnyColumn(0);
            (*(*(v216 - 8) + 8))(v304, v216);
            v179 = v297;
            v180 = v296;
            v181 = v295;
            return (*(v181 + 8))(v179, v180);
          }

          v224 = type metadata accessor for AnyColumn(0);
          (*(*(v224 - 8) + 8))(v304, v224);
          v200 = v297;
          v201 = v296;
          v202 = v295;
        }

        else
        {
          v218 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Float]);
          if (swift_dynamicCastMetatype(v87, v218))
          {
            v219 = v294;
            v220 = AnyColumn.assumingType<A>(_:)(v218, v218);
            v221 = v275;
            (*(v292 + 16))(v275, v219, v293, v220);
            v222 = v302;
            _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSf_Tt0g5(v221);
            if (v222)
            {
              v303;
              v223 = type metadata accessor for AnyColumn(0);
              (*(*(v223 - 8) + 8))(v304, v223);
              v179 = v294;
              v180 = v293;
              v181 = v292;
              return (*(v181 + 8))(v179, v180);
            }

            v231 = type metadata accessor for AnyColumn(0);
            (*(*(v231 - 8) + 8))(v304, v231);
            v200 = v294;
            v201 = v293;
            v202 = v292;
          }

          else
          {
            v225 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any?]);
            if (!swift_dynamicCastMetatype(v87, v225))
            {
              v303;
              *&v301 = 0;
              *(&v301 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(45);
              *(&v301 + 1);
              *&v301 = 0x206E6D756C6F43;
              *(&v301 + 1) = 0xE700000000000000;
              v232._countAndFlagsBits = AnyColumn.name.getter();
              v233 = v232._object;
              String.append(_:)(v232);
              v233;
              v234._object = "SupportVectorClassifier" + 0x8000000000000000;
              v234._countAndFlagsBits = 0xD000000000000021;
              String.append(_:)(v234);
              v235 = AnyColumn.wrappedElementType.getter();
              v236._countAndFlagsBits = _typeName(_:qualified:)(v235, 0);
              v237 = v236._object;
              String.append(_:)(v236);
              v237;
              v234._countAndFlagsBits = 46;
              v234._object = 0xE100000000000000;
              String.append(_:)(v234);
              v302 = v301;
              v234._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v234._object, 0, 0);
              *v238 = v302;
              *(v238 + 16) = 0;
              *(v238 + 32) = 0;
              *(v238 + 48) = 1;
              swift_willThrow(&type metadata for MLCreateError, v234._object);
              v187 = type metadata accessor for AnyColumn(0);
              v188 = *(v187 - 8);
              v189 = v304;
              return (*(v188 + 8))(v189, v187);
            }

            v226 = v291;
            v227 = AnyColumn.assumingType<A>(_:)(v225, v225);
            v228 = v274;
            (*(v289 + 16))(v274, v226, v290, v227);
            v229 = v302;
            _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxSgGGKclufCyp_Tt0g5(v228);
            if (v229)
            {
              v303;
              v230 = type metadata accessor for AnyColumn(0);
              (*(*(v230 - 8) + 8))(v304, v230);
              v179 = v291;
              v180 = v290;
              v181 = v289;
              return (*(v181 + 8))(v179, v180);
            }

            v239 = type metadata accessor for AnyColumn(0);
            (*(*(v239 - 8) + 8))(v304, v239);
            v200 = v291;
            v201 = v290;
            v202 = v289;
          }
        }
      }
    }

LABEL_106:
    (*(v202 + 8))(v200, v201);
    return v240[0];
  }

  v174 = v285;
  v175 = AnyColumn.assumingType<A>(_:)(v173, v173);
  v176 = v272;
  (*(v283 + 16))(v272, v174, v284, v175);
  v177 = v302;
  _s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSi_Tt0g5(v176);
  if (!v177)
  {
    v199 = type metadata accessor for AnyColumn(0);
    (*(*(v199 - 8) + 8))(v304, v199);
    v200 = v285;
    v201 = v284;
    v202 = v283;
    goto LABEL_106;
  }

  v303;
  v178 = type metadata accessor for AnyColumn(0);
  (*(*(v178 - 8) + 8))(v304, v178);
  v179 = v285;
  v180 = v284;
  v181 = v283;
  return (*(v181 + 8))(v179, v180);
}

char ColumnDescriptor.ColumnTypeDescriptor.featureType.getter(char a1, char a2)
{
  switch(a2)
  {
    case 0:
      result = 4;
      break;
    case 1:
      result = 5;
      break;
    case 2:
      result = 6;
      break;
    case 3:
      result = 7;
      break;
    case 4:
      result = 8;
      break;
    case 5:
      result = 9;
      break;
    case 6:
      result = a1;
      break;
  }

  return result;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.init(_:)(id a1)
{
  v2 = [a1 shape];
  v3 = v2;
  v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v4);

  ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg5071_s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm(v5);
  v5;
  if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2] <= 1uLL)
  {
    v8 = [a1 dataType];
    if (v8 == &loc_1000E + 2)
    {
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
        goto LABEL_7;
      }
    }

    else if (v8 == &loc_10020)
    {
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
        goto LABEL_7;
      }
    }

    else if (v8 == &loc_2001D + 3)
    {
      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
LABEL_7:
        v7 = ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[4];
        ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;

        return v7;
      }
    }

    else
    {
      if (v8 != &loc_1003C + 4)
      {
        v12 = 0;
        v13 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v10._object = "CreateML/ColumnDescriptor.swift" + 0x8000000000000000;
        v10._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v10);
        v14[0] = [a1 dataType];
        v11 = type metadata accessor for MLMultiArrayDataType(0);
        _print_unlocked<A, B>(_:_:)(v14, &v12, v11, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v10._countAndFlagsBits = 46;
        v10._object = 0xE100000000000000;
        String.append(_:)(v10);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v12, v13, "CreateML/ColumnDescriptor.swift", 31, 2, 402, 0);
        BUG();
      }

      if (ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm[2])
      {
        goto LABEL_7;
      }
    }

    ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;

    return 1;
  }

  ML16ColumnDescriptorV0c4TypeD0OyAESgSo12MLMultiArrayCKcfcSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAJSiTf3nnnpk_nTf1cn_nTm;
  return 0;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSi_Tt0g5(uint64_t a1)
{
  v105 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Int]>>);
  v123._object = *(v115 - 8);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
  *&v109[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int]>);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Int]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Int]>, &protocol conformance descriptor for Column<A>);
  v107 = v9;
  OptionalColumnProtocol.filled(with:)(v109, v9, v10);
  v8;
  v11 = v106;
  v12 = v115;
  (*(v123._object + 2))(v106, &v104, v115);
  v13 = (v11 + *(v113 + 36));
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Int]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Int]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v13;
  v111 = v14;
  dispatch thunk of Collection.startIndex.getter(v12, v14);
  (*(v123._object + 1))(&v104, v12);
  v15 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v16 = 0;
  v123._object = 0;
  while (1)
  {
    v17 = v106;
    v18 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v19 = *v116 == *&v109[0];
    v122 = v15;
    if (v19)
    {
      break;
    }

    v20 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v18, v111);
    v22 = *v21;
    *v21;
    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v20);
    v23 = 1 << *(v22 + 32);
    v24 = ~(-1 << v23);
    if (v23 >= 64)
    {
      v24 = -1;
    }

    v123._countAndFlagsBits = v22;
    v25 = *(v22 + 64) & v24;
    v119 = (v23 + 63) >> 6;
    v26 = 0;
    v27 = v117;
    while (1)
    {
      if (v25)
      {
        v28 = v26;
        v15 = v122;
        goto LABEL_26;
      }

      v29 = v26 + 1;
      v15 = v122;
      if (__OFADD__(1, v26))
      {
        BUG();
      }

      if (v29 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 64);
      if (v25)
      {
        v28 = v26 + 1;
        goto LABEL_26;
      }

      v28 = v26 + 2;
      if (v26 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 72);
      if (!v25)
      {
        v28 = v26 + 3;
        if (v26 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v25 = *(v123._countAndFlagsBits + 8 * v29 + 80);
        if (!v25)
        {
          v28 = v26 + 4;
          if (v26 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v25 = *(v123._countAndFlagsBits + 8 * v29 + 88);
          if (!v25)
          {
            v28 = v26 + 5;
            if (v26 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v25 = *(v123._countAndFlagsBits + 8 * v29 + 96);
            if (!v25)
            {
              v28 = v26 + 6;
              if (v26 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v25 = *(v123._countAndFlagsBits + 8 * v29 + 104);
              if (!v25)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v25;
      _BitScanForward64(&v31, v25);
      v117 = v28;
      v32 = v31 | (v28 << 6);
      v118 = *(*(v123._countAndFlagsBits + 56) + 8 * v32);
      v32 *= 16;
      v33 = *(v123._countAndFlagsBits + 48);
      v34 = *(v33 + v32);
      v120 = v16;
      v35 = v15;
      v36 = *(v33 + v32 + 8);
      v36;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v27, 0);
      v37 = swift_allocObject(&unk_395000, 32, 7);
      *(v37 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v37;
      *(v37 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
      *&v109[0] = v38;
      v120 = v34;
      v122 = v36;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(v38[2], v41);
      v43 = v38[2] + v41;
      if (v42)
      {
        BUG();
      }

      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Int]>);
      v45 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
      v46 = *&v109[0];
      if (v45)
      {
        v47 = v122;
        v48 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v44 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v51, v49, v50);
          BUG();
        }
      }

      else
      {
        v47 = v122;
      }

      v46;
      if ((v44 & 1) == 0)
      {
        v52 = *(v113 + 24);
        v53 = (*(v113 + 16))();
        object = v123._object;
        v46[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v55 = v46[6];
        v56 = 16 * object;
        *(v55 + v56) = v120;
        *(v55 + v56 + 8) = v47;
        *(v46[7] + 8 * object) = v53;
        v57 = v46[2];
        v42 = __OFADD__(1, v57);
        v58 = v57 + 1;
        if (v42)
        {
          BUG();
        }

        v46[2] = v58;
        v47;
      }

      v59 = v46[7];
      v122 = v46;

      v60 = v123._object;
      v61 = *(v59 + 8 * v123._object);
      v62 = swift_isUniquelyReferenced_nonNull_native(v61);
      *(v59 + 8 * v60) = v61;
      v120 = v59;
      if (!v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        *(v59 + 8 * v123._object) = v61;
      }

      v63 = v61[2];
      v64 = v110;
      if (v61[3] >> 1 <= v63)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61[3] >= 2uLL, v63 + 1, 1, v61);
        v64 = v110;
        v61 = v66;
        *(v120 + 8 * v123._object) = v66;
      }

      v61[2] = v63 + 1;
      v61[v63 + 4] = v118;
      v65 = (v64 - 1) & v64;
      v47;
      v25 = v65;
      v27 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v16 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v123._object = v113;
      v26 = v117;
    }

    v30 = v26 + 7;
    while (v30 < v119)
    {
      v25 = *(v123._countAndFlagsBits + 8 * v30++ + 64);
      if (v25)
      {
        v28 = v30 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v27;
  }

  v120 = v16;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int]>>>);
  swift_bridgeObjectRetain_n(v15, 2);
  v67 = specialized _copyCollectionToContiguousArray<A>(_:)(v15);
  v15;
  *&v109[0] = v67;
  v68 = v105;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v68;
  if (v68)
  {

    BUG();
  }

  v15;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v69 = v15;
  v70 = v120;
  v71 = v117;
  v72 = v123._object;
  if (v119)
  {
    if (!*(v69 + 16))
    {
      BUG();
    }

    v73 = v116;
    v123._countAndFlagsBits = v116[4];
    v74 = v116[5];
    swift_bridgeObjectRetain_n(v74, 2);
    v118 = v74;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v74);
    if ((v76 & 1) == 0)
    {
      v77 = v118;
LABEL_71:
      v77;
      BUG();
    }

    v115 = (v73 + 4);
    v121 = _swiftEmptyArrayStorage;
    v77 = v118;
    v123._object = v72;
    while (1)
    {
      v78 = *(*(v69 + 56) + 8 * v75);
      v78;
      v118 = v77;
      v77;
      v79 = *(v78 + 16);
      if (v79)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v79;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
        v80 = v114;
        v81 = 0;
        *&v113 = v78;
        do
        {
          v104 = *(v78 + 8 * v81 + 32);
          v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v104, &type metadata for Int, v82, 7);
          v114 = v80;
          v83 = v80[2];
          if (v80[3] >> 1 <= v83)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80[3] >= 2uLL, v83 + 1, 1);
            v80 = v114;
          }

          ++v81;
          v80[2] = v83 + 1;
          v84 = 4 * v83;
          v85 = v109[0];
          *&v80[v84 + 6] = v109[1];
          *&v80[v84 + 4] = v85;
          v78 = v113;
        }

        while (v110 != v81);
        v113;
      }

      else
      {
        v78;
        v80 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v80);
      if (v87 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v96._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v96);
        v96._countAndFlagsBits = v123._countAndFlagsBits;
        v97 = v118;
        v96._object = v118;
        String.append(_:)(v96);
        v97;
        v96._countAndFlagsBits = 0x6C6F63206E692027;
        v96._object = 0xED000027206E6D75;
        String.append(_:)(v96);
        v98 = v107;
        v99 = Column.name.getter(v107);
        v101 = v100;
        v96._countAndFlagsBits = v99;
        v96._object = v100;
        String.append(_:)(v96);
        v101;
        v96._object = "Dictionary feature '" + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v96);
        v113 = v109[0];
        v96._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v96._object, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v96._object);
        (*(*(v98 - 8) + 8))(v112, v98);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v88 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v89 = v87;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v90 = v121[2];
      if (v121[3] >> 1 <= v90)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v90 + 1, 1, v121);
      }

      v91 = v121;
      v121[2] = v90 + 1;
      v92 = 4 * v90;
      v91[v92 + 4] = v123._countAndFlagsBits;
      v91[v92 + 5] = v118;
      v91[v92 + 6] = v88;
      LOBYTE(v91[v92 + 7]) = v89;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v93 = v108 + 1;
      v94 = *(v115 + 16 * v108);
      v77 = *(v115 + 16 * v108 + 8);
      swift_bridgeObjectRetain_n(v77, 2);
      v123._countAndFlagsBits = v94;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v77);
      v108 = v93;
      v69 = v122;
      if ((v95 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v69 = v122;
    v72 = v123._object;
    v70 = v120;
    v71 = v117;
  }

  (*(*(v107 - 8) + 8))(v112);
  v69;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v71, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v72);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5UInt8V_Tt0g5(uint64_t a1)
{
  v105 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : UInt8]>>);
  v124 = *(v115 - 8);
  v2 = *(v124 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : UInt8]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for UInt8, &protocol witness table for String);
  *&v109[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : UInt8]>);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : UInt8]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : UInt8]>, &protocol conformance descriptor for Column<A>);
  v107 = v9;
  OptionalColumnProtocol.filled(with:)(v109, v9, v10);
  v8;
  v11 = v106;
  v12 = v115;
  (*(v124 + 16))(v106, &v104, v115);
  v13 = (v11 + *(v113 + 36));
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : UInt8]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : UInt8]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v13;
  v111 = v14;
  dispatch thunk of Collection.startIndex.getter(v12, v14);
  (*(v124 + 8))(&v104, v12);
  v15 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v16 = 0;
  v124 = 0;
  while (1)
  {
    v17 = v106;
    v18 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v19 = *v116 == *&v109[0];
    v122 = v15;
    if (v19)
    {
      break;
    }

    v20 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v18, v111);
    v22 = *v21;
    *v21;
    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v20);
    v23 = 1 << *(v22 + 32);
    v24 = ~(-1 << v23);
    if (v23 >= 64)
    {
      v24 = -1;
    }

    v123._countAndFlagsBits = v22;
    v25 = *(v22 + 64) & v24;
    v119 = (v23 + 63) >> 6;
    v26 = 0;
    v27 = v117;
    while (1)
    {
      if (v25)
      {
        v28 = v26;
        v15 = v122;
        goto LABEL_26;
      }

      v29 = v26 + 1;
      v15 = v122;
      if (__OFADD__(1, v26))
      {
        BUG();
      }

      if (v29 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 64);
      if (v25)
      {
        v28 = v26 + 1;
        goto LABEL_26;
      }

      v28 = v26 + 2;
      if (v26 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 72);
      if (!v25)
      {
        v28 = v26 + 3;
        if (v26 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v25 = *(v123._countAndFlagsBits + 8 * v29 + 80);
        if (!v25)
        {
          v28 = v26 + 4;
          if (v26 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v25 = *(v123._countAndFlagsBits + 8 * v29 + 88);
          if (!v25)
          {
            v28 = v26 + 5;
            if (v26 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v25 = *(v123._countAndFlagsBits + 8 * v29 + 96);
            if (!v25)
            {
              v28 = v26 + 6;
              if (v26 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v25 = *(v123._countAndFlagsBits + 8 * v29 + 104);
              if (!v25)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v25;
      _BitScanForward64(&v31, v25);
      v117 = v28;
      v32 = v31 | (v28 << 6);
      LOBYTE(v118) = *(*(v123._countAndFlagsBits + 56) + v32);
      v32 *= 16;
      v33 = *(v123._countAndFlagsBits + 48);
      v34 = *(v33 + v32);
      v120 = v16;
      v35 = v15;
      v36 = *(v33 + v32 + 8);
      v36;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v27, 0);
      v37 = swift_allocObject(&unk_395028, 32, 7);
      *(v37 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v37;
      *(v37 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v124);
      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
      *&v109[0] = v38;
      v120 = v34;
      v122 = v36;
      v124 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(v38[2], v41);
      v43 = v38[2] + v41;
      if (v42)
      {
        BUG();
      }

      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [UInt8]>);
      v45 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
      v46 = *&v109[0];
      if (v45)
      {
        v47 = v122;
        v48 = v122;
        v124 = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v44 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v51, v49, v50);
          BUG();
        }
      }

      else
      {
        v47 = v122;
      }

      v46;
      if ((v44 & 1) == 0)
      {
        v52 = *(v113 + 24);
        v53 = (*(v113 + 16))();
        v54 = v124;
        v46[(v124 >> 6) + 8] |= 1 << v124;
        v55 = v46[6];
        v56 = 16 * v54;
        *(v55 + v56) = v120;
        *(v55 + v56 + 8) = v47;
        *(v46[7] + 8 * v54) = v53;
        v57 = v46[2];
        v42 = __OFADD__(1, v57);
        v58 = v57 + 1;
        if (v42)
        {
          BUG();
        }

        v46[2] = v58;
        v47;
      }

      v59 = v46[7];
      v122 = v46;

      v60 = v124;
      v61 = *(v59 + 8 * v124);
      v62 = swift_isUniquelyReferenced_nonNull_native(v61);
      *(v59 + 8 * v60) = v61;
      v120 = v59;
      if (!v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v61 + 2) + 1, 1, v61);
        *(v59 + 8 * v124) = v61;
      }

      v63 = *(v61 + 2);
      v64 = v110;
      if (*(v61 + 3) >> 1 <= v63)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v61 + 3) >= 2uLL, v63 + 1, 1, v61);
        v64 = v110;
        v61 = v66;
        *(v120 + 8 * v124) = v66;
      }

      *(v61 + 2) = v63 + 1;
      v61[v63 + 32] = v118;
      v65 = (v64 - 1) & v64;
      v47;
      v25 = v65;
      v27 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v16 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v124 = v113;
      v26 = v117;
    }

    v30 = v26 + 7;
    while (v30 < v119)
    {
      v25 = *(v123._countAndFlagsBits + 8 * v30++ + 64);
      if (v25)
      {
        v28 = v30 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v27;
  }

  v120 = v16;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : UInt8]>>>);
  swift_bridgeObjectRetain_n(v15, 2);
  v67 = specialized _copyCollectionToContiguousArray<A>(_:)(v15);
  v15;
  *&v109[0] = v67;
  v68 = v105;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v68;
  if (v68)
  {

    BUG();
  }

  v15;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v69 = v15;
  v70 = v120;
  v71 = v117;
  v72 = v124;
  if (v119)
  {
    if (!*(v69 + 16))
    {
      BUG();
    }

    v73 = v116;
    v123._countAndFlagsBits = v116[4];
    v74 = v116[5];
    swift_bridgeObjectRetain_n(v74, 2);
    v118 = v74;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v74);
    if ((v76 & 1) == 0)
    {
      v77 = v118;
LABEL_71:
      v77;
      BUG();
    }

    v115 = (v73 + 4);
    v121 = _swiftEmptyArrayStorage;
    v77 = v118;
    v124 = v72;
    while (1)
    {
      v78 = *(*(v69 + 56) + 8 * v75);
      v78;
      v118 = v77;
      v77;
      v79 = *(v78 + 16);
      if (v79)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v79;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
        v80 = v114;
        v81 = 0;
        *&v113 = v78;
        do
        {
          HIBYTE(v123._object) = *(v78 + v81 + 32);
          v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v123._object + 7, &type metadata for UInt8, v82, 7);
          v114 = v80;
          v83 = v80[2];
          if (v80[3] >> 1 <= v83)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80[3] >= 2uLL, v83 + 1, 1);
            v80 = v114;
          }

          ++v81;
          v80[2] = v83 + 1;
          v84 = 4 * v83;
          v85 = v109[0];
          *&v80[v84 + 6] = v109[1];
          *&v80[v84 + 4] = v85;
          v78 = v113;
        }

        while (v110 != v81);
        v113;
      }

      else
      {
        v78;
        v80 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v80);
      if (v87 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v96._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v96);
        v96._countAndFlagsBits = v123._countAndFlagsBits;
        v97 = v118;
        v96._object = v118;
        String.append(_:)(v96);
        v97;
        v96._countAndFlagsBits = 0x6C6F63206E692027;
        v96._object = 0xED000027206E6D75;
        String.append(_:)(v96);
        v98 = v107;
        v99 = Column.name.getter(v107);
        v101 = v100;
        v96._countAndFlagsBits = v99;
        v96._object = v100;
        String.append(_:)(v96);
        v101;
        v96._object = "Dictionary feature '" + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v96);
        v113 = v109[0];
        v96._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v96._object, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v96._object);
        (*(*(v98 - 8) + 8))(v112, v98);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v124);
        return v121;
      }

      v88 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v89 = v87;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v90 = v121[2];
      if (v121[3] >> 1 <= v90)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v90 + 1, 1, v121);
      }

      v91 = v121;
      v121[2] = v90 + 1;
      v92 = 4 * v90;
      v91[v92 + 4] = v123._countAndFlagsBits;
      v91[v92 + 5] = v118;
      v91[v92 + 6] = v88;
      LOBYTE(v91[v92 + 7]) = v89;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v93 = v108 + 1;
      v94 = *(v115 + 16 * v108);
      v77 = *(v115 + 16 * v108 + 8);
      swift_bridgeObjectRetain_n(v77, 2);
      v123._countAndFlagsBits = v94;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v77);
      v108 = v93;
      v69 = v122;
      if ((v95 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v69 = v122;
    v72 = v124;
    v70 = v120;
    v71 = v117;
  }

  (*(*(v107 - 8) + 8))(v112);
  v69;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v71, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v72);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCs5Int32V_Tt0g5(uint64_t a1)
{
  v104 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Int32]>>);
  v123._object = *(v115 - 8);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int32]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v105 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int32, &protocol witness table for String);
  *&v109[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Int32]>);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Int32]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Int32]>, &protocol conformance descriptor for Column<A>);
  v106 = v9;
  OptionalColumnProtocol.filled(with:)(v109, v9, v10);
  v8;
  v11 = v105;
  v12 = v115;
  (*(v123._object + 2))(v105, &v104, v115);
  v13 = (v11 + *(v113 + 36));
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Int32]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Int32]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v13;
  v111 = v14;
  dispatch thunk of Collection.startIndex.getter(v12, v14);
  (*(v123._object + 1))(&v104, v12);
  v15 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v16 = 0;
  v123._object = 0;
  while (1)
  {
    v17 = v105;
    v18 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v19 = *v116 == *&v109[0];
    v122 = v15;
    if (v19)
    {
      break;
    }

    v20 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v18, v111);
    v22 = *v21;
    *v21;
    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v20);
    v23 = 1 << *(v22 + 32);
    v24 = ~(-1 << v23);
    if (v23 >= 64)
    {
      v24 = -1;
    }

    v123._countAndFlagsBits = v22;
    v25 = *(v22 + 64) & v24;
    v119 = (v23 + 63) >> 6;
    v26 = 0;
    v27 = v117;
    while (1)
    {
      if (v25)
      {
        v28 = v26;
        v15 = v122;
        goto LABEL_26;
      }

      v29 = v26 + 1;
      v15 = v122;
      if (__OFADD__(1, v26))
      {
        BUG();
      }

      if (v29 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 64);
      if (v25)
      {
        v28 = v26 + 1;
        goto LABEL_26;
      }

      v28 = v26 + 2;
      if (v26 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 72);
      if (!v25)
      {
        v28 = v26 + 3;
        if (v26 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v25 = *(v123._countAndFlagsBits + 8 * v29 + 80);
        if (!v25)
        {
          v28 = v26 + 4;
          if (v26 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v25 = *(v123._countAndFlagsBits + 8 * v29 + 88);
          if (!v25)
          {
            v28 = v26 + 5;
            if (v26 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v25 = *(v123._countAndFlagsBits + 8 * v29 + 96);
            if (!v25)
            {
              v28 = v26 + 6;
              if (v26 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v25 = *(v123._countAndFlagsBits + 8 * v29 + 104);
              if (!v25)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v25;
      _BitScanForward64(&v31, v25);
      v117 = v28;
      v32 = v31 | (v28 << 6);
      LODWORD(v118) = *(*(v123._countAndFlagsBits + 56) + 4 * v32);
      v32 *= 16;
      v33 = *(v123._countAndFlagsBits + 48);
      v34 = *(v33 + v32);
      v120 = v16;
      v35 = v15;
      v36 = *(v33 + v32 + 8);
      v36;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v27, 0);
      v37 = swift_allocObject(&unk_395050, 32, 7);
      *(v37 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v37;
      *(v37 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
      *&v109[0] = v38;
      v120 = v34;
      v122 = v36;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(v38[2], v41);
      v43 = v38[2] + v41;
      if (v42)
      {
        BUG();
      }

      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Int32]>);
      v45 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
      v46 = *&v109[0];
      if (v45)
      {
        v47 = v122;
        v48 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v44 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v51, v49, v50);
          BUG();
        }
      }

      else
      {
        v47 = v122;
      }

      v46;
      if ((v44 & 1) == 0)
      {
        v52 = *(v113 + 24);
        v53 = (*(v113 + 16))();
        object = v123._object;
        v46[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v55 = v46[6];
        v56 = 16 * object;
        *(v55 + v56) = v120;
        *(v55 + v56 + 8) = v47;
        *(v46[7] + 8 * object) = v53;
        v57 = v46[2];
        v42 = __OFADD__(1, v57);
        v58 = v57 + 1;
        if (v42)
        {
          BUG();
        }

        v46[2] = v58;
        v47;
      }

      v59 = v46[7];
      v122 = v46;

      v60 = v123._object;
      v61 = *(v59 + 8 * v123._object);
      v62 = swift_isUniquelyReferenced_nonNull_native(v61);
      *(v59 + 8 * v60) = v61;
      v120 = v59;
      if (!v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        *(v59 + 8 * v123._object) = v61;
      }

      v63 = v61[2];
      v64 = v110;
      if (v61[3] >> 1 <= v63)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61[3] >= 2uLL, v63 + 1, 1, v61);
        v64 = v110;
        v61 = v66;
        *(v120 + 8 * v123._object) = v66;
      }

      v61[2] = v63 + 1;
      *(v61 + v63 + 8) = v118;
      v65 = (v64 - 1) & v64;
      v47;
      v25 = v65;
      v27 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v16 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v123._object = v113;
      v26 = v117;
    }

    v30 = v26 + 7;
    while (v30 < v119)
    {
      v25 = *(v123._countAndFlagsBits + 8 * v30++ + 64);
      if (v25)
      {
        v28 = v30 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v27;
  }

  v120 = v16;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Int32]>>>);
  swift_bridgeObjectRetain_n(v15, 2);
  v67 = specialized _copyCollectionToContiguousArray<A>(_:)(v15);
  v15;
  *&v109[0] = v67;
  v68 = v104;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v68;
  if (v68)
  {

    BUG();
  }

  v15;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v69 = v15;
  v70 = v120;
  v71 = v117;
  v72 = v123._object;
  if (v119)
  {
    if (!*(v69 + 16))
    {
      BUG();
    }

    v73 = v116;
    v123._countAndFlagsBits = v116[4];
    v74 = v116[5];
    swift_bridgeObjectRetain_n(v74, 2);
    v118 = v74;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v74);
    if ((v76 & 1) == 0)
    {
      v77 = v118;
LABEL_71:
      v77;
      BUG();
    }

    v115 = (v73 + 4);
    v121 = _swiftEmptyArrayStorage;
    v77 = v118;
    v123._object = v72;
    while (1)
    {
      v78 = *(*(v69 + 56) + 8 * v75);
      v78;
      v118 = v77;
      v77;
      v79 = *(v78 + 16);
      if (v79)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v79;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
        v80 = v114;
        v81 = 0;
        *&v113 = v78;
        do
        {
          v107 = *(v78 + 4 * v81 + 32);
          v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v107, &type metadata for Int32, v82, 7);
          v114 = v80;
          v83 = v80[2];
          if (v80[3] >> 1 <= v83)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80[3] >= 2uLL, v83 + 1, 1);
            v80 = v114;
          }

          ++v81;
          v80[2] = v83 + 1;
          v84 = 4 * v83;
          v85 = v109[0];
          *&v80[v84 + 6] = v109[1];
          *&v80[v84 + 4] = v85;
          v78 = v113;
        }

        while (v110 != v81);
        v113;
      }

      else
      {
        v78;
        v80 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v80);
      if (v87 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v96._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v96);
        v96._countAndFlagsBits = v123._countAndFlagsBits;
        v97 = v118;
        v96._object = v118;
        String.append(_:)(v96);
        v97;
        v96._countAndFlagsBits = 0x6C6F63206E692027;
        v96._object = 0xED000027206E6D75;
        String.append(_:)(v96);
        v98 = v106;
        v99 = Column.name.getter(v106);
        v101 = v100;
        v96._countAndFlagsBits = v99;
        v96._object = v100;
        String.append(_:)(v96);
        v101;
        v96._object = "Dictionary feature '" + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v96);
        v113 = v109[0];
        v96._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v96._object, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v96._object);
        (*(*(v98 - 8) + 8))(v112, v98);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v88 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v89 = v87;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v90 = v121[2];
      if (v121[3] >> 1 <= v90)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v90 + 1, 1, v121);
      }

      v91 = v121;
      v121[2] = v90 + 1;
      v92 = 4 * v90;
      v91[v92 + 4] = v123._countAndFlagsBits;
      v91[v92 + 5] = v118;
      v91[v92 + 6] = v88;
      LOBYTE(v91[v92 + 7]) = v89;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v93 = v108 + 1;
      v94 = *(v115 + 16 * v108);
      v77 = *(v115 + 16 * v108 + 8);
      swift_bridgeObjectRetain_n(v77, 2);
      v123._countAndFlagsBits = v94;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v77);
      v108 = v93;
      v69 = v122;
      if ((v95 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v69 = v122;
    v72 = v123._object;
    v70 = v120;
    v71 = v117;
  }

  (*(*(v106 - 8) + 8))(v112);
  v69;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v71, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v72);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSd_Tt0g5(uint64_t a1)
{
  v105 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Double]>>);
  v123._object = *(v115 - 8);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Double]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v106 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Double, &protocol witness table for String);
  *&v109[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Double]>);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Double]>, &protocol conformance descriptor for Column<A>);
  v107 = v9;
  OptionalColumnProtocol.filled(with:)(v109, v9, v10);
  v8;
  v11 = v106;
  v12 = v115;
  (*(v123._object + 2))(v106, &v104, v115);
  v13 = (v11 + *(v113 + 36));
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Double]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Double]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v13;
  v111 = v14;
  dispatch thunk of Collection.startIndex.getter(v12, v14);
  (*(v123._object + 1))(&v104, v12);
  v15 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v16 = 0;
  v123._object = 0;
  while (1)
  {
    v17 = v106;
    v18 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v19 = *v116 == *&v109[0];
    v122 = v15;
    if (v19)
    {
      break;
    }

    v20 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v18, v111);
    v22 = *v21;
    *v21;
    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v20);
    v23 = 1 << *(v22 + 32);
    v24 = ~(-1 << v23);
    if (v23 >= 64)
    {
      v24 = -1;
    }

    v123._countAndFlagsBits = v22;
    v25 = *(v22 + 64) & v24;
    v119 = (v23 + 63) >> 6;
    v26 = 0;
    v27 = v117;
    while (1)
    {
      if (v25)
      {
        v28 = v26;
        v15 = v122;
        goto LABEL_26;
      }

      v29 = v26 + 1;
      v15 = v122;
      if (__OFADD__(1, v26))
      {
        BUG();
      }

      if (v29 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 64);
      if (v25)
      {
        v28 = v26 + 1;
        goto LABEL_26;
      }

      v28 = v26 + 2;
      if (v26 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 72);
      if (!v25)
      {
        v28 = v26 + 3;
        if (v26 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v25 = *(v123._countAndFlagsBits + 8 * v29 + 80);
        if (!v25)
        {
          v28 = v26 + 4;
          if (v26 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v25 = *(v123._countAndFlagsBits + 8 * v29 + 88);
          if (!v25)
          {
            v28 = v26 + 5;
            if (v26 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v25 = *(v123._countAndFlagsBits + 8 * v29 + 96);
            if (!v25)
            {
              v28 = v26 + 6;
              if (v26 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v25 = *(v123._countAndFlagsBits + 8 * v29 + 104);
              if (!v25)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v25;
      _BitScanForward64(&v31, v25);
      v117 = v28;
      v32 = v31 | (v28 << 6);
      v118 = *(*(v123._countAndFlagsBits + 56) + 8 * v32);
      v32 *= 16;
      v33 = *(v123._countAndFlagsBits + 48);
      v34 = *(v33 + v32);
      v120 = v16;
      v35 = v15;
      v36 = *(v33 + v32 + 8);
      v36;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v27, 0);
      v37 = swift_allocObject(&unk_395078, 32, 7);
      *(v37 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v37;
      *(v37 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
      *&v109[0] = v38;
      v120 = v34;
      v122 = v36;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(v38[2], v41);
      v43 = v38[2] + v41;
      if (v42)
      {
        BUG();
      }

      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
      v45 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
      v46 = *&v109[0];
      if (v45)
      {
        v47 = v122;
        v48 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v44 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v51, v49, v50);
          BUG();
        }
      }

      else
      {
        v47 = v122;
      }

      v46;
      if ((v44 & 1) == 0)
      {
        v52 = *(v113 + 24);
        v53 = (*(v113 + 16))();
        object = v123._object;
        v46[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v55 = v46[6];
        v56 = 16 * object;
        *(v55 + v56) = v120;
        *(v55 + v56 + 8) = v47;
        *(v46[7] + 8 * object) = v53;
        v57 = v46[2];
        v42 = __OFADD__(1, v57);
        v58 = v57 + 1;
        if (v42)
        {
          BUG();
        }

        v46[2] = v58;
        v47;
      }

      v59 = v46[7];
      v122 = v46;

      v60 = v123._object;
      v61 = *(v59 + 8 * v123._object);
      v62 = swift_isUniquelyReferenced_nonNull_native(v61);
      *(v59 + 8 * v60) = v61;
      v120 = v59;
      if (!v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        *(v59 + 8 * v123._object) = v61;
      }

      v63 = v61[2];
      v64 = v110;
      if (v61[3] >> 1 <= v63)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61[3] >= 2uLL, v63 + 1, 1, v61);
        v64 = v110;
        v61 = v66;
        *(v120 + 8 * v123._object) = v66;
      }

      v61[2] = v63 + 1;
      v61[v63 + 4] = v118;
      v65 = (v64 - 1) & v64;
      v47;
      v25 = v65;
      v27 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v16 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [B]);
      v123._object = v113;
      v26 = v117;
    }

    v30 = v26 + 7;
    while (v30 < v119)
    {
      v25 = *(v123._countAndFlagsBits + 8 * v30++ + 64);
      if (v25)
      {
        v28 = v30 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v27;
  }

  v120 = v16;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Double]>>>);
  swift_bridgeObjectRetain_n(v15, 2);
  v67 = specialized _copyCollectionToContiguousArray<A>(_:)(v15);
  v15;
  *&v109[0] = v67;
  v68 = v105;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v68;
  if (v68)
  {

    BUG();
  }

  v15;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v69 = v15;
  v70 = v120;
  v71 = v117;
  v72 = v123._object;
  if (v119)
  {
    if (!*(v69 + 16))
    {
      BUG();
    }

    v73 = v116;
    v123._countAndFlagsBits = v116[4];
    v74 = v116[5];
    swift_bridgeObjectRetain_n(v74, 2);
    v118 = v74;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v74);
    if ((v76 & 1) == 0)
    {
      v77 = v118;
LABEL_71:
      v77;
      BUG();
    }

    v115 = (v73 + 4);
    v121 = _swiftEmptyArrayStorage;
    v77 = v118;
    v123._object = v72;
    while (1)
    {
      v78 = *(*(v69 + 56) + 8 * v75);
      v78;
      v118 = v77;
      v77;
      v79 = *(v78 + 16);
      if (v79)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v79;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
        v80 = v114;
        v81 = 0;
        *&v113 = v78;
        do
        {
          v104 = *(v78 + 8 * v81 + 32);
          v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v104, &type metadata for Double, v82, 7);
          v114 = v80;
          v83 = v80[2];
          if (v80[3] >> 1 <= v83)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80[3] >= 2uLL, v83 + 1, 1);
            v80 = v114;
          }

          ++v81;
          v80[2] = v83 + 1;
          v84 = 4 * v83;
          v85 = v109[0];
          *&v80[v84 + 6] = v109[1];
          *&v80[v84 + 4] = v85;
          v78 = v113;
        }

        while (v110 != v81);
        v113;
      }

      else
      {
        v78;
        v80 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v80);
      if (v87 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v96._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v96);
        v96._countAndFlagsBits = v123._countAndFlagsBits;
        v97 = v118;
        v96._object = v118;
        String.append(_:)(v96);
        v97;
        v96._countAndFlagsBits = 0x6C6F63206E692027;
        v96._object = 0xED000027206E6D75;
        String.append(_:)(v96);
        v98 = v107;
        v99 = Column.name.getter(v107);
        v101 = v100;
        v96._countAndFlagsBits = v99;
        v96._object = v100;
        String.append(_:)(v96);
        v101;
        v96._object = "Dictionary feature '" + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v96);
        v113 = v109[0];
        v96._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v96._object, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v96._object);
        (*(*(v98 - 8) + 8))(v112, v98);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v88 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v89 = v87;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v90 = v121[2];
      if (v121[3] >> 1 <= v90)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v90 + 1, 1, v121);
      }

      v91 = v121;
      v121[2] = v90 + 1;
      v92 = 4 * v90;
      v91[v92 + 4] = v123._countAndFlagsBits;
      v91[v92 + 5] = v118;
      v91[v92 + 6] = v88;
      LOBYTE(v91[v92 + 7]) = v89;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v93 = v108 + 1;
      v94 = *(v115 + 16 * v108);
      v77 = *(v115 + 16 * v108 + 8);
      swift_bridgeObjectRetain_n(v77, 2);
      v123._countAndFlagsBits = v94;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v77);
      v108 = v93;
      v69 = v122;
      if ((v95 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v69 = v122;
    v72 = v123._object;
    v70 = v120;
    v71 = v117;
  }

  (*(*(v107 - 8) + 8))(v112);
  v69;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v71, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v72);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxGGKclufCSf_Tt0g5(uint64_t a1)
{
  v104 = v1;
  v112 = a1;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Float]>>);
  v123._object = *(v115 - 8);
  v2 = *(v123._object + 8);
  v3 = alloca(v2);
  v4 = alloca(v2);
  *&v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Float]>>>);
  v5 = *(*(v113 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v105 = &v104;
  v121 = _swiftEmptyArrayStorage;
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Float, &protocol witness table for String);
  *&v109[0] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Float]>);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Float]>, &protocol conformance descriptor for Column<A>);
  v106 = v9;
  OptionalColumnProtocol.filled(with:)(v109, v9, v10);
  v8;
  v11 = v105;
  v12 = v115;
  (*(v123._object + 2))(v105, &v104, v115);
  v13 = (v11 + *(v113 + 36));
  v14 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Float]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Float]>>, &protocol conformance descriptor for FilledColumn<A>);
  v116 = v13;
  v111 = v14;
  dispatch thunk of Collection.startIndex.getter(v12, v14);
  (*(v123._object + 1))(&v104, v12);
  v15 = _swiftEmptyDictionarySingleton;
  v117 = 0;
  v108 = 1;
  v16 = 0;
  v123._object = 0;
  while (1)
  {
    v17 = v105;
    v18 = v115;
    dispatch thunk of Collection.endIndex.getter(v115, v111);
    v19 = *v116 == *&v109[0];
    v122 = v15;
    if (v19)
    {
      break;
    }

    v20 = v111;
    *&v113 = dispatch thunk of Collection.subscript.read(v109, v116, v18, v111);
    v22 = *v21;
    *v21;
    (v113)(v109, 0);
    dispatch thunk of Collection.formIndex(after:)(v116, v115, v20);
    v23 = 1 << *(v22 + 32);
    v24 = ~(-1 << v23);
    if (v23 >= 64)
    {
      v24 = -1;
    }

    v123._countAndFlagsBits = v22;
    v25 = *(v22 + 64) & v24;
    v119 = (v23 + 63) >> 6;
    v26 = 0;
    v27 = v117;
    while (1)
    {
      if (v25)
      {
        v28 = v26;
        v15 = v122;
        goto LABEL_26;
      }

      v29 = v26 + 1;
      v15 = v122;
      if (__OFADD__(1, v26))
      {
        BUG();
      }

      if (v29 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 64);
      if (v25)
      {
        v28 = v26 + 1;
        goto LABEL_26;
      }

      v28 = v26 + 2;
      if (v26 + 2 >= v119)
      {
        goto LABEL_39;
      }

      v25 = *(v123._countAndFlagsBits + 8 * v29 + 72);
      if (!v25)
      {
        v28 = v26 + 3;
        if (v26 + 3 >= v119)
        {
          goto LABEL_39;
        }

        v25 = *(v123._countAndFlagsBits + 8 * v29 + 80);
        if (!v25)
        {
          v28 = v26 + 4;
          if (v26 + 4 >= v119)
          {
            goto LABEL_39;
          }

          v25 = *(v123._countAndFlagsBits + 8 * v29 + 88);
          if (!v25)
          {
            v28 = v26 + 5;
            if (v26 + 5 >= v119)
            {
              goto LABEL_39;
            }

            v25 = *(v123._countAndFlagsBits + 8 * v29 + 96);
            if (!v25)
            {
              v28 = v26 + 6;
              if (v26 + 6 >= v119)
              {
                goto LABEL_39;
              }

              v25 = *(v123._countAndFlagsBits + 8 * v29 + 104);
              if (!v25)
              {
                break;
              }
            }
          }
        }
      }

LABEL_26:
      v110 = v25;
      _BitScanForward64(&v31, v25);
      v117 = v28;
      v32 = v31 | (v28 << 6);
      LODWORD(v118) = *(*(v123._countAndFlagsBits + 56) + 4 * v32);
      v32 *= 16;
      v33 = *(v123._countAndFlagsBits + 48);
      v34 = *(v33 + v32);
      v120 = v16;
      v35 = v15;
      v36 = *(v33 + v32 + 8);
      v36;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v27, 0);
      v37 = swift_allocObject(&unk_3950A0, 32, 7);
      *(v37 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v113 = v37;
      *(v37 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
      v38 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v35);
      *&v109[0] = v38;
      v120 = v34;
      v122 = v36;
      v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
      v41 = (v40 & 1) == 0;
      v42 = __OFADD__(v38[2], v41);
      v43 = v38[2] + v41;
      if (v42)
      {
        BUG();
      }

      v44 = v40;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Float]>);
      v45 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v43);
      v46 = *&v109[0];
      if (v45)
      {
        v47 = v122;
        v48 = v122;
        v123._object = specialized __RawDictionaryStorage.find<A>(_:)(v120, v122);
        LOBYTE(v51) = v51 & 1;
        if ((v44 & 1) != v51)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v48, v51, v49, v50);
          BUG();
        }
      }

      else
      {
        v47 = v122;
      }

      v46;
      if ((v44 & 1) == 0)
      {
        v52 = *(v113 + 24);
        v53 = (*(v113 + 16))();
        object = v123._object;
        v46[(v123._object >> 6) + 8] |= 1 << SLOBYTE(v123._object);
        v55 = v46[6];
        v56 = 16 * object;
        *(v55 + v56) = v120;
        *(v55 + v56 + 8) = v47;
        *(v46[7] + 8 * object) = v53;
        v57 = v46[2];
        v42 = __OFADD__(1, v57);
        v58 = v57 + 1;
        if (v42)
        {
          BUG();
        }

        v46[2] = v58;
        v47;
      }

      v59 = v46[7];
      v122 = v46;

      v60 = v123._object;
      v61 = *(v59 + 8 * v123._object);
      v62 = swift_isUniquelyReferenced_nonNull_native(v61);
      *(v59 + 8 * v60) = v61;
      v120 = v59;
      if (!v62)
      {
        v61 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1, v61);
        *(v59 + 8 * v123._object) = v61;
      }

      v63 = v61[2];
      v64 = v110;
      if (v61[3] >> 1 <= v63)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61[3] >= 2uLL, v63 + 1, 1, v61);
        v64 = v110;
        v61 = v66;
        *(v120 + 8 * v123._object) = v66;
      }

      v61[2] = v63 + 1;
      *(v61 + v63 + 8) = v118;
      v65 = (v64 - 1) & v64;
      v47;
      v25 = v65;
      v27 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v16 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v123._object = v113;
      v26 = v117;
    }

    v30 = v26 + 7;
    while (v30 < v119)
    {
      v25 = *(v123._countAndFlagsBits + 8 * v30++ + 64);
      if (v25)
      {
        v28 = v30 - 1;
        goto LABEL_26;
      }
    }

LABEL_39:
    v117 = v27;
  }

  v120 = v16;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Float]>>>);
  swift_bridgeObjectRetain_n(v15, 2);
  v67 = specialized _copyCollectionToContiguousArray<A>(_:)(v15);
  v15;
  *&v109[0] = v67;
  v68 = v104;
  specialized MutableCollection<>.sort(by:)(v109);
  v111 = v68;
  if (v68)
  {

    BUG();
  }

  v15;
  v116 = *&v109[0];
  v119 = *(*&v109[0] + 16);
  v69 = v15;
  v70 = v120;
  v71 = v117;
  v72 = v123._object;
  if (v119)
  {
    if (!*(v69 + 16))
    {
      BUG();
    }

    v73 = v116;
    v123._countAndFlagsBits = v116[4];
    v74 = v116[5];
    swift_bridgeObjectRetain_n(v74, 2);
    v118 = v74;
    v75 = specialized __RawDictionaryStorage.find<A>(_:)(v123._countAndFlagsBits, v74);
    if ((v76 & 1) == 0)
    {
      v77 = v118;
LABEL_71:
      v77;
      BUG();
    }

    v115 = (v73 + 4);
    v121 = _swiftEmptyArrayStorage;
    v77 = v118;
    v123._object = v72;
    while (1)
    {
      v78 = *(*(v69 + 56) + 8 * v75);
      v78;
      v118 = v77;
      v77;
      v79 = *(v78 + 16);
      if (v79)
      {
        v114 = _swiftEmptyArrayStorage;
        v110 = v79;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
        v80 = v114;
        v81 = 0;
        *&v113 = v78;
        do
        {
          v107 = *(v78 + 4 * v81 + 32);
          v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
          swift_dynamicCast(v109, &v107, &type metadata for Float, v82, 7);
          v114 = v80;
          v83 = v80[2];
          if (v80[3] >> 1 <= v83)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v80[3] >= 2uLL, v83 + 1, 1);
            v80 = v114;
          }

          ++v81;
          v80[2] = v83 + 1;
          v84 = 4 * v83;
          v85 = v109[0];
          *&v80[v84 + 6] = v109[1];
          *&v80[v84 + 4] = v85;
          v78 = v113;
        }

        while (v110 != v81);
        v113;
      }

      else
      {
        v78;
        v80 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v80);
      if (v87 == -1)
      {
        v121;

        *&v109[0] = 0;
        *(&v109[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v96._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v96);
        v96._countAndFlagsBits = v123._countAndFlagsBits;
        v97 = v118;
        v96._object = v118;
        String.append(_:)(v96);
        v97;
        v96._countAndFlagsBits = 0x6C6F63206E692027;
        v96._object = 0xED000027206E6D75;
        String.append(_:)(v96);
        v98 = v106;
        v99 = Column.name.getter(v106);
        v101 = v100;
        v96._countAndFlagsBits = v99;
        v96._object = v100;
        String.append(_:)(v96);
        v101;
        v96._object = "Dictionary feature '" + 0x8000000000000000;
        v96._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v96);
        v113 = v109[0];
        v96._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v96._object, 0, 0);
        *v102 = v113;
        *(v102 + 16) = 0;
        *(v102 + 32) = 0;
        *(v102 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v96._object);
        (*(*(v98 - 8) + 8))(v112, v98);
        v122;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v117, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v123._object);
        return v121;
      }

      v88 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v89 = v87;
      if (!swift_isUniquelyReferenced_nonNull_native(v121))
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v121[2] + 1, 1, v121);
      }

      v90 = v121[2];
      if (v121[3] >> 1 <= v90)
      {
        v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121[3] >= 2uLL, v90 + 1, 1, v121);
      }

      v91 = v121;
      v121[2] = v90 + 1;
      v92 = 4 * v90;
      v91[v92 + 4] = v123._countAndFlagsBits;
      v91[v92 + 5] = v118;
      v91[v92 + 6] = v88;
      LOBYTE(v91[v92 + 7]) = v89;
      if (v108 == v119)
      {
        break;
      }

      if (!v122[2])
      {
        BUG();
      }

      v93 = v108 + 1;
      v94 = *(v115 + 16 * v108);
      v77 = *(v115 + 16 * v108 + 8);
      swift_bridgeObjectRetain_n(v77, 2);
      v123._countAndFlagsBits = v94;
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v77);
      v108 = v93;
      v69 = v122;
      if ((v95 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v69 = v122;
    v72 = v123._object;
    v70 = v120;
    v71 = v117;
  }

  (*(*(v106 - 8) + 8))(v112);
  v69;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v71, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v70, v72);
  return v121;
}

void *_s8CreateML16ColumnDescriptorV0c4TypeD0OyAE11TabularData0C0VySDySSxSgGGKclufCyp_Tt0g5(uint64_t a1)
{
  v100 = v1;
  v110 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<[String : Any?]>>);
  v119 = *(v111 - 8);
  v2 = *(v119 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v120 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Any?]>>>);
  v5 = *(*(v120 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v113._object = v98;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  v117 = _swiftEmptyArrayStorage;
  v9 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v8, &protocol witness table for String);
  *&v105 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String : Any?]>);
  v11 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String : Any?]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String : Any?]>, &protocol conformance descriptor for Column<A>);
  v104 = v10;
  OptionalColumnProtocol.filled(with:)(&v105, v10, v11);
  v12 = v9;
  object = v113._object;
  v12;
  v14 = v111;
  (*(v119 + 16))(object, v98, v111);
  v15 = &object[*(v120 + 36)];
  v16 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<[String : Any?]>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<[String : Any?]>>, &protocol conformance descriptor for FilledColumn<A>);
  v109 = v15;
  v99 = v16;
  dispatch thunk of Collection.startIndex.getter(v14, v16);
  (*(v119 + 8))(v98, v14);
  v114 = _swiftEmptyDictionarySingleton;
  v119 = 0;
  v108 = 1;
  v120 = 0;
  v116 = 0;
LABEL_2:
  v17 = v111;
  v18 = v99;
  dispatch thunk of Collection.endIndex.getter(v111, v99);
  v19 = v114;
  if (*v109 != v105)
  {
    *&v112 = dispatch thunk of Collection.subscript.read(&v105, v109, v17, v18);
    v118 = *v20;
    v118;
    (v112)(&v105, 0);
    dispatch thunk of Collection.formIndex(after:)(v109, v17, v18);
    v21 = 1 << *(v118 + 32);
    v22 = ~(-1 << v21);
    if (v21 >= 64)
    {
      v22 = -1;
    }

    i = *(v118 + 64) & v22;
    v115 = (v21 + 63) >> 6;
    v24 = 0;
    v25 = v119;
    while (1)
    {
      if (i)
      {
        goto LABEL_10;
      }

      v26 = __OFADD__(1, v24++);
      if (v26)
      {
        BUG();
      }

      if (v24 >= v115)
      {
LABEL_39:
        v119 = v25;

        goto LABEL_2;
      }

      i = *(v118 + 8 * v24 + 64);
      if (i)
      {
LABEL_10:
        v27 = v24;
      }

      else
      {
        v27 = v24 + 1;
        if (v24 + 1 >= v115)
        {
          goto LABEL_39;
        }

        i = *(v118 + 8 * v24 + 72);
        if (!i)
        {
          v27 = v24 + 2;
          if (v24 + 2 >= v115)
          {
            goto LABEL_39;
          }

          i = *(v118 + 8 * v24 + 80);
          if (!i)
          {
            v27 = v24 + 3;
            if (v24 + 3 >= v115)
            {
              goto LABEL_39;
            }

            i = *(v118 + 8 * v24 + 88);
            if (!i)
            {
              v27 = v24 + 4;
              if (v24 + 4 >= v115)
              {
                goto LABEL_39;
              }

              i = *(v118 + 8 * v24 + 96);
              if (!i)
              {
                v27 = v24 + 5;
                if (v24 + 5 >= v115)
                {
                  goto LABEL_39;
                }

                for (i = *(v118 + 8 * v24 + 104); !i; i = *(v118 + 8 * v27 + 64))
                {
                  v26 = __OFADD__(1, v27++);
                  if (v26)
                  {
                    BUG();
                  }

                  if (v27 >= v115)
                  {
                    goto LABEL_39;
                  }
                }
              }
            }
          }
        }
      }

      v113._countAndFlagsBits = i;
      _BitScanForward64(&v28, i);
      v107 = v27;
      v29 = v28 | (v27 << 6);
      v30 = *(v118 + 48);
      v31 = v25;
      v32 = *(v30 + 16 * v29 + 8);
      *&v105 = *(v30 + 16 * v29);
      *(&v105 + 1) = v32;
      outlined init with copy of Any?(*(v118 + 56) + 32 * v29, v106);
      v33 = *(&v105 + 1);
      v119 = v105;
      v101 = v106[0];
      v102 = v106[1];
      v32;
      v25 = v31;
      if (!v33)
      {
        goto LABEL_39;
      }

      v106[0] = v102;
      v105 = v101;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v31, 0);
      outlined init with copy of Any?(&v105, v98);
      v34 = swift_allocObject(&unk_3950C8, 32, 7);
      *(v34 + 16) = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      *&v112 = v34;
      *(v34 + 24) = 0;
      _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v116);
      v35 = v114;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v114);
      v103 = v35;
      v116 = v33;
      v120 = specialized __RawDictionaryStorage.find<A>(_:)(v119, v33);
      v38 = (v37 & 1) == 0;
      v26 = __OFADD__(v35[2], v38);
      v39 = v35[2] + v38;
      if (v26)
      {
        BUG();
      }

      v40 = v37;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Any?]>);
      v41 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v39);
      v42 = v103;
      if (v41)
      {
        v43 = v116;
        v120 = specialized __RawDictionaryStorage.find<A>(_:)(v119, v116);
        LOBYTE(v46) = v46 & 1;
        countAndFlagsBits = v113._countAndFlagsBits;
        if ((v40 & 1) != v46)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v43, v46, v44, v45);
          BUG();
        }
      }

      else
      {
        countAndFlagsBits = v113._countAndFlagsBits;
      }

      v42;
      if ((v40 & 1) == 0)
      {
        v48 = *(v112 + 24);
        v49 = (*(v112 + 16))();
        v50 = v120;
        v42[(v120 >> 6) + 8] |= 1 << v120;
        v51 = v42[6];
        v52 = 16 * v50;
        *(v51 + v52) = v119;
        v53 = v116;
        *(v51 + v52 + 8) = v116;
        *(v42[7] + 8 * v50) = v49;
        v54 = v42[2];
        v26 = __OFADD__(1, v54);
        v55 = v54 + 1;
        if (v26)
        {
          BUG();
        }

        v42[2] = v55;
        v53;
      }

      v56 = v42[7];
      v114 = v42;

      v57 = v120;
      v58 = *(v56 + 8 * v120);
      v59 = swift_isUniquelyReferenced_nonNull_native(v58);
      *(v56 + 8 * v57) = v58;
      v119 = v56;
      if (!v59)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        *(v56 + 8 * v120) = v58;
      }

      v60 = v58[2];
      if (v58[3] >> 1 <= v60)
      {
        v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58[3] >= 2uLL, v60 + 1, 1, v58);
        *(v119 + 8 * v120) = v58;
      }

      i = (countAndFlagsBits - 1) & countAndFlagsBits;
      v58[2] = v60 + 1;
      v61 = 4 * v60;
      v62 = v98[0];
      *&v58[v61 + 6] = v98[1];
      *&v58[v61 + 4] = v62;
      v116;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v105, &demangling cache variable for type metadata for Any?);
      v25 = specialized implicit closure #2 in static RecommenderModel.metrics<A, B>(expected:predicted:cutoffs:);
      v120 = thunk for @callee_guaranteed () -> (@owned [B])specialized partial apply;
      v116 = v112;
      v24 = v107;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v113._object, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<[String : Any?]>>>);
  swift_bridgeObjectRetain_n(v19, 2);
  v63 = specialized _copyCollectionToContiguousArray<A>(_:)(v19);
  v19;
  *&v105 = v63;
  v64 = v100;
  specialized MutableCollection<>.sort(by:)(&v105);
  if (v64)
  {

    BUG();
  }

  v19;
  v65 = v105;
  v118 = *(v105 + 16);
  v66 = v116;
  if (v118)
  {
    if (!*(v19 + 16))
    {
      BUG();
    }

    v109 = 0;
    v113._countAndFlagsBits = *(v105 + 32);
    v67 = *(v105 + 40);
    swift_bridgeObjectRetain_n(v67, 2);
    *&v112 = v67;
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v113._countAndFlagsBits, v67);
    if ((v69 & 1) == 0)
    {
      v70 = v112;
LABEL_72:
      v70;
      BUG();
    }

    v113._object = v65;
    v115 = v65 + 32;
    v117 = _swiftEmptyArrayStorage;
    v70 = v112;
    v116 = v66;
    while (1)
    {
      v71 = *(*(v19 + 56) + 8 * v68);
      v71;
      *&v112 = v70;
      v70;
      v72 = *(v71 + 16);
      if (v72)
      {
        *&v101 = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72, 0);
        v73 = v101;
        v107 = v71;
        v74 = v71 + 32;
        do
        {
          outlined init with copy of Any?(v74, &v105);
          *&v101 = v73;
          v75 = v73[2];
          v76 = v73[3];
          v77 = v75 + 1;
          if (v76 >> 1 <= v75)
          {
            v111 = v75 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v76 >= 2, v75 + 1, 1);
            v77 = v111;
            v73 = v101;
          }

          v73[2] = v77;
          v78 = 4 * v75;
          v79 = v105;
          *&v73[v78 + 6] = v106[0];
          *&v73[v78 + 4] = v79;
          v74 += 32;
          --v72;
        }

        while (v72);
        v107;
      }

      else
      {
        v71;
        v73 = _swiftEmptyArrayStorage;
      }

      ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5 = _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(v73);
      if (v81 == -1)
      {
        v117;

        *&v105 = 0;
        *(&v105 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(77);
        v90._object = "Unknown MLMultiArrayType " + 0x8000000000000000;
        v90._countAndFlagsBits = 0xD000000000000014;
        String.append(_:)(v90);
        v90._countAndFlagsBits = v113._countAndFlagsBits;
        v91 = v112;
        v90._object = v112;
        String.append(_:)(v90);
        v91;
        v90._countAndFlagsBits = 0x6C6F63206E692027;
        v90._object = 0xED000027206E6D75;
        String.append(_:)(v90);
        v92 = v104;
        v93 = Column.name.getter(v104);
        v95 = v94;
        v90._countAndFlagsBits = v93;
        v90._object = v94;
        String.append(_:)(v90);
        v95;
        v90._object = "Dictionary feature '" + 0x8000000000000000;
        v90._countAndFlagsBits = 0xD000000000000028;
        String.append(_:)(v90);
        v112 = v105;
        v90._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v90._object, 0, 0);
        *v96 = v112;
        *(v96 + 16) = 0;
        *(v96 + 32) = 0;
        *(v96 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v90._object);
        (*(*(v92 - 8) + 8))(v110, v92);
        v114;
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v119, 0);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v116);
        return v117;
      }

      v82 = ML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5;
      v83 = v81;
      if (!swift_isUniquelyReferenced_nonNull_native(v117))
      {
        v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
      }

      v84 = v117[2];
      if (v117[3] >> 1 <= v84)
      {
        v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v117[3] >= 2uLL, v84 + 1, 1, v117);
      }

      v85 = v117;
      v117[2] = v84 + 1;
      v86 = 4 * v84;
      v85[v86 + 4] = v113._countAndFlagsBits;
      v85[v86 + 5] = v112;
      v85[v86 + 6] = v82;
      LOBYTE(v85[v86 + 7]) = v83;
      if (v108 == v118)
      {
        break;
      }

      if (!v114[2])
      {
        BUG();
      }

      v87 = v108 + 1;
      v88 = *(v115 + 16 * v108);
      v70 = *(v115 + 16 * v108 + 8);
      swift_bridgeObjectRetain_n(v70, 2);
      v113._countAndFlagsBits = v88;
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v70);
      v108 = v87;
      v19 = v114;
      if ((v89 & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    v19 = v114;
    v66 = v116;
  }

  (*(*(v104 - 8) + 8))(v110);
  v19;

  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v119, 0);
  _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v120, v66);
  return v117;
}

char static ColumnDescriptor.== infix(_:_:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, char a8)
{
  if (a5 ^ a1 | a6 ^ a2 && (_stringCompareWithSmolCheck(_:_:expecting:)(a1, a2, a5, a6, 0) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return static ColumnDescriptor.ColumnTypeDescriptor.== infix(_:_:)(a3, a4, a7, a8);
  }
}

char ColumnDescriptor.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 ^ 0x656D616E | a2 ^ 0xE400000000000000 && (_stringCompareWithSmolCheck(_:_:expecting:)(1701667182, 0xE400000000000000, a1, a2, 0) & 1) == 0)
  {
    if (a1 ^ 0x6373654465707974 | a2 ^ 0xEE00726F74706972)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6373654465707974, 0xEE00726F74706972, a1, a2, 0);
      a2;
      return 2 - (v3 & 1);
    }

    else
    {
      a2;
      return 1;
    }
  }

  else
  {
    a2;
    return 0;
  }
}

uint64_t ColumnDescriptor.CodingKeys.stringValue.getter(char a1)
{
  result = 1701667182;
  if (a1)
  {
    return 0x6373654465707974;
  }

  return result;
}

uint64_t ColumnDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = v5;
  v23 = a5;
  v21 = a4;
  v18 = a3;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<ColumnDescriptor.CodingKeys>);
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v10);
  v11 = lazy protocol witness table accessor for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&unk_395390, &unk_395390, v11, v10, v20);
  v24 = 0;
  KeyedEncodingContainer.encode(_:forKey:)(a2, v18, &v24, v6);
  if (!v5)
  {
    v15 = v21;
    v16 = v23;
    v25[0] = 1;
    v13 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor();
    KeyedEncodingContainer.encode<A>(_:forKey:)(&v15, v25, v6, &type metadata for ColumnDescriptor.ColumnTypeDescriptor, v13);
  }

  return (*(v22 + 8))(&v14, v6);
}

uint64_t ColumnDescriptor.init(from:)(void *a1)
{
  v21 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<ColumnDescriptor.CodingKeys>);
  v15 = *(v23 - 8);
  v2 = *(v15 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v6 = lazy protocol witness table accessor for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys();
  v19 = &v15;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&unk_395390, &unk_395390, v6, v5, v20);
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v7 = v15;
  v21 = a1;
  v22 = 0;
  v16 = KeyedDecodingContainer.decode(_:forKey:)(&v22, v23);
  v24[0] = 1;
  v9 = v8;
  v10 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor();
  v20 = v9;
  v11 = v9;
  v12 = v19;
  v11;
  KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for ColumnDescriptor.ColumnTypeDescriptor, v24, v23, &type metadata for ColumnDescriptor.ColumnTypeDescriptor, v10);
  (*(v7 + 8))(v12, v23);
  v13 = v17;
  LODWORD(v23) = v18;
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v17, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v20;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v13, v23);
  return v16;
}

char static ColumnDescriptor.ColumnTypeDescriptor.== infix(_:_:)(void *a1, char a2, void *a3, char a4)
{
  switch(a2)
  {
    case 0:
      if (a4)
      {
        goto LABEL_20;
      }

      return a1 == a3;
    case 1:
      if (a4 == 1)
      {
        return a1 == a3;
      }

      goto LABEL_20;
    case 2:
      if (a4 != 2)
      {
        goto LABEL_20;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        goto LABEL_20;
      }

      return a1 == a3;
    case 4:
      if (a4 != 4)
      {
        goto LABEL_20;
      }

      result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a3);
      break;
    case 5:
      if (a4 != 5)
      {
        goto LABEL_20;
      }

      result = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML16ColumnDescriptorV_Tt1g5(a1, a3);
      break;
    case 6:
      switch(a1)
      {
        case 0uLL:
          JUMPOUT(0x2A0887);
        case 1uLL:
          v5 = a4 == 6;
          v6 = a3 == (&dword_0 + 1);
          break;
        case 2uLL:
          v5 = a4 == 6;
          v6 = a3 == (&dword_0 + 2);
          break;
        case 3uLL:
          v5 = a4 == 6;
          v6 = a3 == (&dword_0 + 3);
          break;
      }

      result = 1;
      if (!v6 || !v5)
      {
LABEL_20:
        result = 0;
      }

      break;
  }

  return result;
}

char protocol witness for CodingKey.init(stringValue:) in conformance ColumnDescriptor.CodingKeys(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = ColumnDescriptor.CodingKeys.init(stringValue:)(a1, a2);
  *v3 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ColumnDescriptor(void *a1)
{
  v3 = v1;
  result = ColumnDescriptor.init(from:)(a1);
  if (!v2)
  {
    *v3 = result;
    *(v3 + 8) = v5;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  return result;
}

uint64_t _s8CreateML16ColumnDescriptorV0c4TypeD0OyAESgxcSlRzypSg7ElementRtzlufCSayAGG_Tt0g5(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v41 = a1;
  v42 = v2;
  if (v2)
  {
    v3 = a1 + 32;
    a1;
    v4 = _swiftEmptyArrayStorage;
    do
    {
      outlined init with copy of Any?(v3, &v35);
      v34 = v36;
      v33 = v35;
      if (*(&v36 + 1))
      {
        outlined init with take of Any(&v33, &v37);
        outlined init with take of Any(&v37, &v33);
        if (!swift_isUniquelyReferenced_nonNull_native(v4))
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v5 = v4[2];
        if (v4[3] >> 1 <= v5)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4[3] >= 2uLL, v5 + 1, 1, v4);
        }

        v4[2] = v5 + 1;
        outlined init with take of Any(&v33, &v4[4 * v5 + 4]);
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v33, &demangling cache variable for type metadata for Any?);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
    v1 = v41;
    v41;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  specialized Collection.first.getter(v4);
  v4;
  if (!v38)
  {
    v1;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
    return 0;
  }

  outlined init with take of Any(&v37, &v35);
  v6 = *(&v36 + 1);
  v7 = __swift_project_boxed_opaque_existential_0Tm(&v35, *(&v36 + 1));
  DynamicType = swift_getDynamicType(v7, v6, 1);
  v9 = DynamicType;
  v10 = v42;
  if (v42)
  {
    v40 = DynamicType;
    v11 = v1 + 32;
    v1;
    do
    {
      outlined init with copy of Any?(v11, &v37);
      if (v38)
      {
        outlined init with copy of Any?(&v37, &v33);
        v12 = *(&v34 + 1);
        if (!*(&v34 + 1))
        {
          BUG();
        }

        v13 = __swift_project_boxed_opaque_existential_0Tm(&v33, *(&v34 + 1));
        v14 = swift_getDynamicType(v13, v12, 1);
        __swift_destroy_boxed_opaque_existential_1Tm(&v33);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
        if (v14 != v40)
        {
          swift_bridgeObjectRelease_n(v41, 2);
          goto LABEL_28;
        }
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
      }

      v11 += 32;
      --v10;
    }

    while (v10);
    v1 = v41;
    v41;
    v9 = v40;
  }

  if (swift_dynamicCastMetatype(v9, &type metadata for Int))
  {
    v1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 0;
  }

  if (swift_dynamicCastMetatype(v9, &type metadata for Float))
  {
    v1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 2;
  }

  if (swift_dynamicCastMetatype(v9, &type metadata for Double) || (v17 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr), swift_dynamicCastMetatype(v9, v17)))
  {
    v1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 3;
  }

  if (!swift_dynamicCastMetatype(v9, &type metadata for String))
  {
    v1;
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    return 0;
  }

  v18 = *(v1 + 16);
  if (v18)
  {
    v19 = v1;
    v39 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = v39;
    v21 = v19 + 32;
    v32 = &type metadata for Any + 8;
    do
    {
      outlined init with copy of Any?(v21, &v37);
      outlined init with copy of Any?(&v37, &v29);
      v40 = v18;
      if (v30)
      {
        outlined init with take of Any(&v29, &v33);
        swift_dynamicCast(v31, &v33, v32, &type metadata for String, 7);
        v22 = v31[0];
        v42 = v31[1];
      }

      else
      {
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v29, &demangling cache variable for type metadata for Any?);
        v22 = 0;
        v42 = 0xE000000000000000;
      }

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for Any?);
      v39 = v20;
      v23 = v20[2];
      if (v20[3] >> 1 <= v23)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v23 + 1, 1);
        v20 = v39;
      }

      v20[2] = v23 + 1;
      v24 = 2 * v23;
      v20[v24 + 4] = v22;
      v20[v24 + 5] = v42;
      v21 += 32;
      v18 = v40 - 1;
    }

    while (v40 != 1);
    v25 = v41;
  }

  else
  {
    v25 = v1;
    v20 = _swiftEmptyArrayStorage;
  }

  v26 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v20);
  v26;
  v27 = specialized _copyCollectionToContiguousArray<A>(_:)(v26);
  v26;
  *&v37 = v27;
  specialized MutableCollection<>.sort(by:)(&v37);
  v25;
  v15 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
  v26;
  return v15;
}

CreateML::ColumnDescriptor::FeatureType_optional __swiftcall ColumnDescriptor.FeatureType.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ColumnDescriptor.FeatureType.init(rawValue:), rawValue);
  rawValue._object;
  result.value = CreateML_ColumnDescriptor_FeatureType_unknownDefault;
  if (v1 < 0xA)
  {
    return v1;
  }

  return result;
}

unint64_t ColumnDescriptor.FeatureType.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 7630441;
      break;
    case 1:
      result = 0x363174616F6C66;
      break;
    case 2:
      result = 0x74616F6C66;
      break;
    case 3:
      result = 0x656C62756F64;
      break;
    case 4:
      result = 0x6570616853746E69;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x69726F6765746163;
      break;
    case 9:
      result = 0x616E6F6974636964;
      break;
  }

  return result;
}

CreateML::ColumnDescriptor::ColumnTypeDescriptor::CodingKeys_optional __swiftcall ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v1 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(rawValue:), stringValue);
  stringValue._object;
  result.value = CreateML_ColumnDescriptor_ColumnTypeDescriptor_CodingKeys_unknownDefault;
  if (v1 < 4)
  {
    return v1;
  }

  return result;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.stringValue.getter(char a1)
{
  switch(a1)
  {
    case 0:
      result = 0x54746E656D656C65;
      break;
    case 1:
      result = 1702521203;
      break;
    case 2:
      result = 0x69726F6765746163;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
  }

  return result;
}

CreateML::ColumnDescriptor::FeatureType_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ColumnDescriptor.FeatureType(Swift::String *a1)
{
  v2 = v1;
  result.value = ColumnDescriptor.FeatureType.init(rawValue:)(*a1).value;
  v2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ColumnDescriptor.FeatureType()
{
  v2 = v0;
  result = ColumnDescriptor.FeatureType.rawValue.getter(*v1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

CreateML::ColumnDescriptor::ColumnTypeDescriptor::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys(Swift::String *a1)
{
  v2 = v1;
  result.value = ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(stringValue:)(*a1).value;
  v2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys()
{
  v2 = v0;
  result = ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.stringValue.getter(*v1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

CreateML::ColumnDescriptor::ColumnTypeDescriptor::CodingKeys_optional protocol witness for CodingKey.init(stringValue:) in conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys(Swift::String a1)
{
  v2 = v1;
  result.value = ColumnDescriptor.ColumnTypeDescriptor.CodingKeys.init(stringValue:)(a1).value;
  v2->value = result.value;
  return result;
}

void *ColumnDescriptor.ColumnTypeDescriptor.init(from:)(void *a1)
{
  v23 = v1;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedDecodingContainer<ColumnDescriptor.ColumnTypeDescriptor.CodingKeys>);
  v25 = *(v24 - 8);
  v2 = *(v25 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = a1[3];
  v6 = a1[4];
  v27 = a1;
  v7 = __swift_project_boxed_opaque_existential_0Tm(a1, v5);
  v8 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys();
  v22 = &v21;
  v9 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)(&type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, v8, v5, v6);
  if (!v9)
  {
    v10 = v25;
    v28[0] = 0;
    v11 = lazy protocol witness table accessor for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType();
    v12 = v24;
    v13 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)(&type metadata for ColumnDescriptor.FeatureType, v28, v24, &type metadata for ColumnDescriptor.FeatureType, v11);
    v14 = v12;
    v16 = v13;
    switch(v26)
    {
      case 0:
        (*(v10 + 8))(v13, v14);
        v7 = 0;
        break;
      case 1:
        (*(v10 + 8))(v13, v14);
        v20 = 1;
        goto LABEL_10;
      case 2:
        (*(v10 + 8))(v13, v14);
        v20 = 2;
        goto LABEL_10;
      case 3:
        (*(v10 + 8))(v13, v14);
        v20 = 3;
LABEL_10:
        v7 = v20;
        break;
      case 4:
      case 5:
      case 6:
      case 7:
        LOBYTE(v26) = 1;
        v7 = KeyedDecodingContainer.decode(_:forKey:)(&v26, v14);
        (*(v25 + 8))(v16, v14);
        break;
      case 8:
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v28[0] = 2;
        v19 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        KeyedDecodingContainer.decode<A>(_:forKey:)(v18, v28, v14, v18, v19);
        (*(v25 + 8))(v13, v14);
        v7 = v26;
        break;
      case 9:
        v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
        v28[0] = 3;
        v17 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
        KeyedDecodingContainer.decode<A>(_:forKey:)(v23, v28, v14, v23, v17);
        (*(v10 + 8))(v13, v24);
        v7 = v26;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return v7;
}

uint64_t ColumnDescriptor.ColumnTypeDescriptor.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v16[1] = v3;
  LODWORD(v21) = a3;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for KeyedEncodingContainer<ColumnDescriptor.ColumnTypeDescriptor.CodingKeys>);
  v19 = *(v17 - 8);
  v4 = *(v19 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v7);
  v9 = lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)(&type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, v9, v7, v8);
  LOBYTE(v20) = ColumnDescriptor.ColumnTypeDescriptor.featureType.getter(a2, v21);
  v22[0] = 0;
  v10 = lazy protocol witness table accessor for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType();
  KeyedEncodingContainer.encode<A>(_:forKey:)(&v20, v22, v17, &type metadata for ColumnDescriptor.FeatureType, v10);
  if (!v3)
  {
    switch(v21)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        LOBYTE(v20) = 1;
        KeyedEncodingContainer.encode(_:forKey:)(v18, &v20, v17);
        break;
      case 4:
        v20 = v18;
        v22[0] = 2;
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v21 = 0;
        v12 = v14;
        v13 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
        goto LABEL_6;
      case 5:
        v20 = v18;
        v22[0] = 3;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [ColumnDescriptor]);
        v21 = 0;
        v12 = v11;
        v13 = lazy protocol witness table accessor for type [ColumnDescriptor] and conformance <A> [A](&lazy protocol witness table cache variable for type [ColumnDescriptor] and conformance <A> [A], lazy protocol witness table accessor for type ColumnDescriptor and conformance ColumnDescriptor, &protocol conformance descriptor for <A> [A]);
LABEL_6:
        KeyedEncodingContainer.encode<A>(_:forKey:)(&v20, v22, v17, v12, v13);
        break;
      case 6:
        return (*(v19 + 8))(v16, v17);
    }
  }

  return (*(v19 + 8))(v16, v17);
}

void *protocol witness for Decodable.init(from:) in conformance ColumnDescriptor.ColumnTypeDescriptor(void *a1)
{
  v3 = v1;
  result = ColumnDescriptor.ColumnTypeDescriptor.init(from:)(a1);
  if (!v2)
  {
    *v3 = result;
    *(v3 + 8) = v5;
  }

  return result;
}

void outlined consume of MLMultiArray??(char *a1)
{
  if (a1 != &dword_0 + 2)
  {
  }
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

uint64_t outlined consume of ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 4)
  {
    return a1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys, &type metadata for ColumnDescriptor.ColumnTypeDescriptor.CodingKeys);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor.CodingKeys and conformance ColumnDescriptor.ColumnTypeDescriptor.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.FeatureType, &type metadata for ColumnDescriptor.FeatureType);
    lazy protocol witness table cache variable for type ColumnDescriptor.FeatureType and conformance ColumnDescriptor.FeatureType = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(a3, v5);
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor.FeatureType(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 < 0xF7)
    {
      goto LABEL_13;
    }

    v2 = a2 + 9;
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
      v5 = *a1 + (v4 << 8) - 10;
    }

    else
    {
LABEL_13:
      v6 = *a1;
      v7 = v6 - 10;
      v8 = v6 < 0xA;
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

uint64_t storeEnumTagSinglePayload for ColumnDescriptor.FeatureType(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xF7)
  {
    v4 = a3 + 9;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xF6)
  {
    v5 = a2 - 247;
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
          *a1 = a2 + 9;
        }

        break;
      case 5:
        JUMPOUT(0x2A1D4CLL);
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(*a2, v3);
  *a1 = v2;
  *(a1 + 8) = v3;
  return a1;
}

uint64_t assignWithCopy for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v5, v6);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t a1, uint64_t a2)
{
  result = a1;
  *(a1 + 8) = *(a2 + 8);
  *a1 = *a2;
  return result;
}

uint64_t assignWithTake for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 9))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v2 = -1;
      if (*(a1 + 8) >= 7u)
      {
        v2 = *(a1 + 8) ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *a1 = a2 - 250;
    *(a1 + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(a1 + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(a1 + 9) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = -a2;
    }
  }
}

uint64_t getEnumTag for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1)
{
  result = (*a1 + 6);
  if (*(a1 + 8) < 6u)
  {
    return *(a1 + 8);
  }

  return result;
}

void destructiveInjectEnumTag for ColumnDescriptor.ColumnTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (a2 >= 6)
  {
    *a1 = a2 - 6;
    LOBYTE(a2) = 6;
  }

  *(a1 + 8) = a2;
}

uint64_t initializeWithCopy for ColumnDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v3;
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v4, v5);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t assignWithCopy for ColumnDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  v3;
  v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v5, v6);
  v7 = *(a1 + 16);
  *(a1 + 16) = v5;
  v8 = *(a1 + 24);
  *(a1 + 24) = v6;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v7, v8);
  return a1;
}

_OWORD *__swift_memcpy25_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for ColumnDescriptor(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  v3;
  v4 = *(a2 + 24);
  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v6 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ColumnDescriptor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

void storeEnumTagSinglePayload for ColumnDescriptor(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 24) = 0;
    if (a3 < 0)
    {
      *(a1 + 25) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 25) = 0;
    }

    if (a2)
    {
      *(a1 + 8) = 2 * (a2 - 1);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.CodingKeys, &unk_395390);
    lazy protocol witness table cache variable for type ColumnDescriptor.CodingKeys and conformance ColumnDescriptor.CodingKeys = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor()
{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor, &type metadata for ColumnDescriptor.ColumnTypeDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor;
  if (!lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ColumnDescriptor.ColumnTypeDescriptor, &type metadata for ColumnDescriptor.ColumnTypeDescriptor);
    lazy protocol witness table cache variable for type ColumnDescriptor.ColumnTypeDescriptor and conformance ColumnDescriptor.ColumnTypeDescriptor = result;
  }

  return result;
}

void MLSoundClassifier.Model.export(internalMetadata:)(void *a1)
{
  v24[1] = v1;
  v26 = type metadata accessor for ModelKind(0);
  v25 = *(v26 - 8);
  v3 = *(v25 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v27 = v24;
  v28 = type metadata accessor for Model(0);
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v31 = v24;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v32 = a1;
  MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)(a1);
  if (!v2)
  {
    v29 = v24;
    v30 = v6;
    MLSoundClassifier.Model.createClassifierModel(internalMetadata:)(v32);
    v32 = 0;
    v12 = Model.outputs.getter();
    Model.inputs.setter(v12);
    Model.init()();
    v13 = Model.inputs.getter();
    Model.inputs.setter(v13);
    v14 = Model.outputs.getter();
    Model.outputs.setter(v14);
    v15 = Model.predictedFeatureName.getter();
    Model.predictedFeatureName.setter(v15, v16);
    v17 = Model.predictedProbabilitiesName.getter();
    Model.predictedProbabilitiesName.setter(v17, v18);
    v19 = Model.nestedModels.getter();
    v20 = Model.nestedModels.getter();
    v24[0] = v19;
    specialized Array.append<A>(contentsOf:)(v20);
    v21 = v27;
    PipelineClassifierConfiguration.init(models:names:)(v24[0], _swiftEmptyArrayStorage);
    (*(v25 + 104))(v21, enum case for ModelKind.pipelineClassifier(_:), v26);
    Model.kind.setter(v21);
    v22 = *(v30 + 8);
    v23 = v28;
    v22(v31, v28);
    v22(v29, v23);
  }
}

void MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)(void *a1)
{
  v87 = v2;
  v68 = v3;
  v83 = a1;
  v81 = v1;
  v85 = type metadata accessor for AudioFeaturePrint(0);
  v86 = *(v85 - 8);
  v4 = *(v86 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = &v64;
  v82 = type metadata accessor for Model(0);
  v7 = *(v82 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v75 = &v64;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v77 = &v64;
  v91 = type metadata accessor for URL.DirectoryHint(0);
  v69 = *(v91 - 1);
  v13 = *(v69 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v70 = &v64;
  v72 = type metadata accessor for UUID(0);
  v73 = *(v72 - 8);
  v16 = *(v73 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v74 = &v64;
  v90 = type metadata accessor for URL(0);
  v80 = *(v90 - 8);
  v19 = *(v80 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v76 = &v64;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v24 = alloca(v19);
  v25 = alloca(v19);
  v71 = &v64;
  v26 = alloca(v19);
  v27 = alloca(v19);
  v88 = &v64;
  v28 = objc_opt_self(NSFileManager);
  v29 = [v28 defaultManager];
  v30 = v29;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v31)
  {
    v87 = 0;
    v84 = v7;
    v32 = [v28 defaultManager];
    v33 = v32;
    v78 = &v64;
    NSFileManager.temporaryModelDirectory.getter();

    v34 = v74;
    UUID.init()();
    v35 = UUID.uuidString.getter();
    v37 = v36;
    v79 = v36;
    (*(v73 + 8))(v34, v72);
    v65[0] = v35;
    v65[1] = v37;
    v38 = v70;
    v39 = v69;
    (*(v69 + 104))(v70, enum case for URL.DirectoryHint.inferFromPath(_:), v91);
    v40 = lazy protocol witness table accessor for type String and conformance String();
    v41 = v71;
    v42 = v78;
    URL.appending<A>(component:directoryHint:)(v65, v38, &type metadata for String, v40);
    (*(v39 + 8))(v38, v91);
    v79;
    v43 = *(v80 + 8);
    v44 = v90;
    v43(v42, v90);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v91 = v43;
    v43(v41, v44);
    v45 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
    v46 = v68;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v68 + *(v45 + 28), v65, &demangling cache variable for type metadata for Any?);
    if (v65[3])
    {
      v47 = swift_dynamicCast(v66, v65, &type metadata for Any + 8, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, 6);
      v48 = v89;
      if (v47)
      {
        v49 = v66[8];
        v67;
        if (!v49)
        {
          v50 = v77;
          v51 = v87;
          static MLSoundClassifier.VGGishFeatureExtractor.buildCoreMLSpec(outputName:)(0x7365727574616566, 0xE800000000000000);
          if (!v51)
          {
            v63 = Model.metadata.getter();
            specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v63, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v83);
            v91(v88, v90);
            (*(v84 + 32))(v81, v50, v82);
            return;
          }

          v52 = v90;
          v53 = v88;
          goto LABEL_11;
        }
      }
    }

    else
    {
      outlined destroy of Any?(v65);
      v48 = v89;
    }

    v54 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
    AudioFeaturePrint.init(windowDuration:overlapFactor:)(v54, *(v46 + *(v45 + 24)));
    v55 = lazy protocol witness table accessor for type AudioFeaturePrint and conformance AudioFeaturePrint();
    v53 = v88;
    v56 = v85;
    v57 = v87;
    TemporalTransformer.export(to:)(v88, v85, v55);
    if (!v57)
    {
      v58 = v76;
      v59 = v90;
      (*(v80 + 16))(v76, v53, v90);
      v60 = v75;
      Model.init(contentsOf:)(v58);
      v61 = Model.metadata.getter();
      specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v61, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v83);
      (*(v84 + 32))(v81, v60, v82);
      $defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)();
      (*(v86 + 8))(v89, v85);
      v62 = v53;
      v52 = v59;
LABEL_12:
      v91(v62, v52);
      return;
    }

    (*(v86 + 8))(v48, v56);
    v52 = v90;
LABEL_11:
    v62 = v53;
    goto LABEL_12;
  }
}

void MLSoundClassifier.Model.createClassifierModel(internalMetadata:)(void *a1)
{
  v98 = v2;
  v71 = v3;
  v90 = a1;
  v87 = v1;
  v89 = type metadata accessor for Model(0);
  v88 = *(v89 - 8);
  v4 = *(v88 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v86 = v70;
  v81 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>);
  v80 = *(v81 - 8);
  v7 = *(v80 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v82 = v70;
  v84 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>);
  v83 = *(v84 - 8);
  v10 = *(v83 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v85 = v70;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v13 = *(*(v73 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v72 = v70;
  v96 = type metadata accessor for URL.DirectoryHint(0);
  v74 = *(v96 - 1);
  v16 = *(v74 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v75 = v70;
  v77 = type metadata accessor for UUID(0);
  v78 = *(v77 - 8);
  v19 = *(v78 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v79 = v70;
  v95 = type metadata accessor for URL(0);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v25 = alloca(v22);
  v26 = alloca(v22);
  v27 = alloca(v22);
  v28 = alloca(v22);
  v76 = v70;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v97 = v70;
  v31 = objc_opt_self(NSFileManager);
  v32 = [v31 defaultManager];
  v33 = v32;
  NSFileManager.createTemporaryModelDirectory()();

  if (!v34)
  {
    v93 = v70;
    v98 = 0;
    v35 = [v31 defaultManager];
    v36 = v35;
    v91 = v70;
    NSFileManager.temporaryModelDirectory.getter();

    v37 = v79;
    UUID.init()();
    v38 = UUID.uuidString.getter();
    v40 = v39;
    v92 = v39;
    (*(v78 + 8))(v37, v77);
    v70[0] = v38;
    v70[1] = v40;
    v41 = v75;
    v42 = v74;
    (*(v74 + 104))(v75, enum case for URL.DirectoryHint.inferFromPath(_:), v96);
    v43 = lazy protocol witness table accessor for type String and conformance String();
    v44 = v76;
    v45 = v91;
    URL.appending<A>(component:directoryHint:)(v70, v41, &type metadata for String, v43);
    (*(v42 + 8))(v41, v96);
    v92;
    v46 = *(v94 + 8);
    v47 = v95;
    (v46)(v45, v95);
    URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
    v96 = v46;
    (v46)(v44, v47);
    v48 = type metadata accessor for MLSoundClassifier.Model(0);
    v49 = v72;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v48 + 20) + v71, v72, &demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
    if (swift_getEnumCaseMultiPayload(v49, v73) == 1)
    {
      v50 = v82;
      v51 = v49;
      v52 = v81;
      v53 = v80;
      (*(v80 + 32))(v82, v51, v81);
      v54 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FullyConnectedNetworkClassifierModel<Float, String> and conformance FullyConnectedNetworkClassifierModel<A, B>, &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>, &protocol conformance descriptor for FullyConnectedNetworkClassifierModel<A, B>);
      v55 = v98;
      Transformer.export(to:)(v97, v52, v54);
      if (v55)
      {
        (*(v53 + 8))(v50, v52);
LABEL_7:
        v62 = v95;
        v63 = v97;
        goto LABEL_12;
      }

      v98 = 0;
      (*(v53 + 8))(v50, v52);
    }

    else
    {
      v56 = v85;
      v57 = v49;
      v58 = v84;
      v59 = v83;
      (*(v83 + 32))(v85, v57, v84);
      v60 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type LogisticRegressionClassifierModel<Float, String> and conformance LogisticRegressionClassifierModel<A, B>, &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>, &protocol conformance descriptor for LogisticRegressionClassifierModel<A, B>);
      v61 = v98;
      Transformer.export(to:)(v97, v58, v60);
      if (v61)
      {
        (*(v59 + 8))(v56, v58);
        goto LABEL_7;
      }

      v98 = 0;
      (*(v59 + 8))(v56, v58);
    }

    v64 = v95;
    v65 = v93;
    v63 = v97;
    (*(v94 + 16))(v93, v97, v95);
    v66 = v86;
    v67 = v98;
    Model.init(contentsOf:)(v65);
    if (!v67)
    {
      v69 = Model.metadata.getter();
      specialized Dictionary._Variant.merge<A>(_:uniquingKeysWith:)(v69, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v90);
      (*(v88 + 32))(v87, v66, v89);
      $defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)();
      v68 = v63;
      v62 = v64;
      goto LABEL_13;
    }

    $defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)();
    v62 = v64;
LABEL_12:
    v68 = v63;
LABEL_13:
    (v96)(v68, v62);
  }
}

NSURL *$defer #1 () in MLSoundClassifier.Model.createFeatureExtractorModel(internalMetadata:)()
{
  v0 = objc_opt_self(NSFileManager);
  v1 = [v0 defaultManager];
  v2 = v1;
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v10 = 0;
  v5 = [(NSURL *)v2 removeItemAtURL:v3 error:&v10];

  v6 = v10;
  if (v5)
  {
    return v10;
  }

  v8 = v10;
  v9 = _convertNSErrorToError(_:)(v6);

  swift_willThrow();
  v9;
  return __stack_chk_guard;
}

uint64_t lazy protocol witness table accessor for type AudioFeaturePrint and conformance AudioFeaturePrint()
{
  result = lazy protocol witness table cache variable for type AudioFeaturePrint and conformance AudioFeaturePrint;
  if (!lazy protocol witness table cache variable for type AudioFeaturePrint and conformance AudioFeaturePrint)
  {
    v1 = type metadata accessor for AudioFeaturePrint(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for AudioFeaturePrint, v1);
    lazy protocol witness table cache variable for type AudioFeaturePrint and conformance AudioFeaturePrint = result;
  }

  return result;
}

uint64_t static Dense.loadLayer(from:layerName:)(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v88[1] = v6;
  v88[2] = v5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v95 = v88;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v98 = v88;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v94 = v88;
  v101 = type metadata accessor for Tensor(0);
  v89 = *(v101 - 8);
  v17 = *(v89 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v90 = v88;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v97 = v88;
  v103 = type metadata accessor for TensorShape(0);
  v99 = *(v103 - 8);
  v22 = *(v99 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v96 = v88;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v93 = v88;
  v109 = a2;
  v107 = a2;
  v108 = a3;
  a3;
  v27._countAndFlagsBits = 0x7468676965772ELL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = v108;
  v29 = a1;
  v30 = specialized Dictionary.subscript.getter(v107, v108, a1);
  v28;
  v105 = v30;
  if (!v30)
  {
    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v47 = v108;
    a3;
    v47;
    v107 = v109;
    v108 = a3;
    v48._object = "predictionWindowSize" + 0x8000000000000000;
    v48._countAndFlagsBits = 0xD000000000000025;
LABEL_14:
    String.append(_:)(v48);
    v50 = v107;
    v51 = v108;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = v50;
    *(v53 + 8) = v51;
    *(v53 + 16) = 0;
    *(v53 + 32) = 0;
    *(v53 + 48) = 2;
    return swift_willThrow();
  }

  v104 = v29;
  v31 = v109;
  v107 = v109;
  v108 = a3;
  a3;
  v32._countAndFlagsBits = 0x2E7468676965772ELL;
  v32._object = 0xED00006570616873;
  String.append(_:)(v32);
  v33 = v108;
  v34 = specialized Dictionary.subscript.getter(v107, v108, v104);
  v33;
  if (!v34)
  {
    v105;
    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    v49 = v108;
    a3;
    v49;
    v107 = v31;
    v108 = a3;
    v48._object = "d in state dictionary" + 0x8000000000000000;
    v48._countAndFlagsBits = 0xD00000000000002BLL;
    goto LABEL_14;
  }

  v100 = a3;
  v35 = *(v34 + 16);
  if (v35)
  {
    v107 = _swiftEmptyArrayStorage;
    v36 = 0;
    v102 = v34;
    v106 = v35;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
    v37 = v106;
    v38 = v102;
    v39 = v107;
    a4 = -9.223372036854778e18;
    a5 = 9.223372036854776e18;
    v40 = 1;
    do
    {
      v41 = *(v38 + 8 * v36 + 32);
      if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        BUG();
      }

      if (v41 <= -9.223372036854778e18)
      {
        BUG();
      }

      if (v41 >= 9.223372036854776e18)
      {
        BUG();
      }

      v107 = v39;
      v42 = v39[2];
      v43 = v39[3];
      v44 = v42 + 1;
      if (v43 >> 1 <= v42)
      {
        v46 = v40;
        v91 = v41;
        v92 = v42 + 1;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43 >= 2, v44, v40);
        v44 = v92;
        v41 = v91;
        v40 = v46;
        a5 = 9.223372036854776e18;
        a4 = -9.223372036854778e18;
        v37 = v106;
        v38 = v102;
        v39 = v107;
      }

      ++v36;
      v39[2] = v44;
      v39[v42 + 4] = v41;
      v45 = v103;
    }

    while (v37 != v36);
    v38;
  }

  else
  {
    v34;
    v39 = _swiftEmptyArrayStorage;
    v45 = v103;
  }

  v55 = v93;
  TensorShape.init(_:)(v39, a4, a5);
  v56 = v94;
  v106 = *(v99 + 16);
  (v106)(v94, v55, v45);
  __swift_storeEnumTagSinglePayload(v56, 0, 1, v45);
  v57 = v105;
  Array<A>.floatTensor(shape:)(v56, v105);
  v57;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v56, &demangling cache variable for type metadata for TensorShape?);
  __swift_storeEnumTagSinglePayload(v98, 1, 1, v101);
  v107 = v109;
  v58 = v100;
  v108 = v100;
  v100;
  v59._countAndFlagsBits = 0x736169622ELL;
  v59._object = 0xE500000000000000;
  String.append(_:)(v59);
  v60 = v108;
  v61 = v104;
  v62 = specialized Dictionary.subscript.getter(v107, v108, v104);
  v60;
  v105 = v62;
  if (v62)
  {
    v107 = v109;
    v108 = v58;
    v58;
    v63._countAndFlagsBits = 0x68732E736169622ELL;
    v63._object = 0xEB00000000657061;
    String.append(_:)(v63);
    v64 = v108;
    v65 = specialized Dictionary.subscript.getter(v107, v108, v61);
    v64;
    if (v65)
    {
      v66 = *(v65 + 16);
      if (v66)
      {
        v107 = _swiftEmptyArrayStorage;
        v67 = 0;
        v104 = v65;
        v109 = v66;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
        v68 = v109;
        v69 = v104;
        v70 = v107;
        a4 = -9.223372036854778e18;
        a5 = 9.223372036854776e18;
        v71 = 1;
        do
        {
          v72 = *(v69 + 8 * v67 + 32);
          if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            BUG();
          }

          if (v72 <= -9.223372036854778e18)
          {
            BUG();
          }

          if (v72 >= 9.223372036854776e18)
          {
            BUG();
          }

          v107 = v70;
          v73 = v70[2];
          v74 = v70[3];
          v75 = v73 + 1;
          if (v74 >> 1 <= v73)
          {
            v77 = v71;
            *&v100 = v72;
            v102 = v73 + 1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v74 >= 2, v75, v71);
            v75 = v102;
            v72 = *&v100;
            v71 = v77;
            a5 = 9.223372036854776e18;
            a4 = -9.223372036854778e18;
            v68 = v109;
            v69 = v104;
            v70 = v107;
          }

          v67 = (v67 + 1);
          v70[2] = v75;
          v70[v73 + 4] = v72;
          v76 = v103;
        }

        while (v68 != v67);
        v69;
      }

      else
      {
        v65;
        v70 = _swiftEmptyArrayStorage;
        v76 = v103;
      }

      v78 = v96;
      TensorShape.init(_:)(v70, a4, a5);
      v79 = v94;
      (v106)(v94, v78, v76);
      v80 = v76;
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v76);
      v81 = v95;
      v82 = v105;
      Array<A>.floatTensor(shape:)(v79, v105);
      v82;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v79, &demangling cache variable for type metadata for TensorShape?);
      (*(v99 + 8))(v96, v80);
      v83 = v98;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v98, &demangling cache variable for type metadata for Tensor?);
      __swift_storeEnumTagSinglePayload(v81, 0, 1, v101);
      outlined init with take of Tensor?(v81, v83);
    }

    else
    {
      v105;
    }
  }

  v84 = v90;
  v85 = v89;
  (*(v89 + 16))(v90, v97, v101);
  v86 = v98;
  v87 = v95;
  outlined init with copy of Tensor?(v98, v95);
  Dense.init(weight:bias:)(v84, v87);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v86, &demangling cache variable for type metadata for Tensor?);
  (*(v85 + 8))(v97, v101);
  return (*(v99 + 8))(v93, v103);
}

uint64_t outlined init with take of Tensor?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLDecisionTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
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
    v9 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
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
    v20 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validation:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v15 = a3;
  v16 = a5;
  v18 = a4;
  v6 = v5;
  v7 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v17 = v6 + 8;
  *(v6 + 24) = 0;
  *(v6 + 8) = 0;
  *v6 = a2;
  *(v6 + 40) = v18;
  *(v6 + 48) = v16;
  *(v6 + 56) = v15;
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1, &v13);
  v14[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  outlined assign with take of Any?(v14, v17);
  return outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + 8, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(validationData:maxDepth:minLossReduction:minChildWeight:randomSeed:)(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  *(v5 + 24) = 0;
  *(v5 + 8) = 0;
  *v5 = a2;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = a3;
  v9 = v6;
  v10 = v7;
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v9);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = &v15;
  v18 = v3 + 8;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  *v3 = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 56) = BoostedTreeConfiguration.randomSeed.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLDecisionTreeClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm75V13configuration10validationAE0A12MLComponents07BoostedD13ConfigurationV_11c7Data0N5e12VSgtcfcAE010N21N0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(&v15, 1, v7) == 1)
  {
    v11 = v19;
    swift_storeEnumTagMultiPayload(v19, v7, 3);
    if (__swift_getEnumTagSinglePayload(&v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for MLDecisionTreeClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v19;
    outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v15, v19);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v18);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.description.getter()
{
  v12._countAndFlagsBits = *v0;
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  String.append(_:)(v1);
  object;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v3._object = "Max Iterations: " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v3);
  v11 = v0[5];
  Double.write<A>(to:)(&v12, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = v12._object;
  String.append(_:)(v12);
  v4;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v3._object = "Min Loss Reduction: " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  Double.write<A>(to:)(&v12, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v5 = v12._object;
  String.append(_:)(v12);
  v5;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v12._object;
  strcpy(&v12, "Random Seed: ");
  HIWORD(v12._object) = -4864;
  v10 = v0[7];
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v7 = v6._object;
  String.append(_:)(v6);
  v7;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v8 = v12._object;
  String.append(_:)(v12);
  v8;
  return 0x747065442078614DLL;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + 8, &v9, &demangling cache variable for type metadata for Any?);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLDecisionTreeClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLDecisionTreeClassifier.ModelParameters.validationData : MLDecisionTreeClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLDecisionTreeClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLDecisionTreeClassifier.ModelParameters.validationData : MLDecisionTreeClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
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
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18 + 8);
}

uint64_t (*MLDecisionTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLDecisionTreeClassifier.ModelParameters.validationData.getter(a2);
  return MLDecisionTreeClassifier.ModelParameters.validationData.modify;
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLDecisionTreeClassifier.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLDecisionTreeClassifier.ModelParameters.validation : MLDecisionTreeClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1, v6);
  return MLDecisionTreeClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 8);
}

uint64_t outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

void (*MLDecisionTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLDecisionTreeClassifier.ModelParameters.ValidationData(0);
  *(v2 + 17) = v3;
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 18) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 19) = v5;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1 + 8, (v2 + 2), &demangling cache variable for type metadata for Any?);
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLDecisionTreeClassifier.ModelParameters.validation.modify;
}

void MLDecisionTreeClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v5 = *(*a1 + 136);
  v6 = *(*a1 + 128) + 8;
  if (a2)
  {
    v10 = *(*a1 + 144);
    outlined init with copy of MLDecisionTreeClassifier.ModelParameters.ValidationData(*(*a1 + 152), v4);
    v2[11] = v5;
    v7 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(v10, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v6);
    outlined destroy of MLDecisionTreeClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = v4;
    v9 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLDecisionTreeClassifier.ModelParameters.ValidationData(v3, v9);
    outlined assign with take of Any?((v2 + 12), v6);
  }

  free(v3);
  free(v7);
  free(v2);
}

uint64_t MLDecisionTreeClassifier.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLDecisionTreeClassifier.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t initializeWithCopy for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, uint64_t a2)
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

uint64_t assignWithCopy for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, uint64_t a2)
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

_OWORD *__swift_memcpy64_8(_OWORD *a1, __int128 *a2)
{
  result = a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  a1[3] = a2[3];
  a1[2] = v5;
  a1[1] = v4;
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

void storeEnumTagSinglePayload for MLDecisionTreeClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 64) = 0;
    }

    if (a2)
    {
      *(a1 + 32) = 2 * a2;
    }
  }
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(400);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTQ0_;
  return MLRandomForestRegressor.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3[3];
  v7 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);

  v4;
  v5;
  return (v7[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLRandomForestRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_0636907E5F32D963700A018890EA71C7LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04Treeh8TrainingY8DelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3[3];
  v7 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestRegressor, Error>);

  v4;
  v5;
  return (v7[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(304);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTQ0_;
  return MLDecisionTreeRegressor.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3[3];
  v7 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);

  v4;
  v5;
  return (v7[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLDecisionTreeRegressorV_Tt1g503_s8b4ML23fgh80V12handleResult33_BFDF09F73B7AB1D73124AE8B375F4C93LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gH23TrainingSessionDelegateCTf1nc_nTY2_()
{
  v1 = v0[4];
  v2 = v0[6];
  *v2 = v0[8];
  swift_storeEnumTagMultiPayload(v2, v1, 1);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3[3];
  v7 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLDecisionTreeRegressor, Error>);

  v4;
  v5;
  return (v7[1])();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_n(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v2[4] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = swift_task_alloc(v4);
  v2[5] = v5;
  v2[6] = swift_task_alloc(v4);

  v6 = swift_task_alloc(448);
  v2[7] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTQ0_;
  return MLRandomForestClassifier.init(delegate:)(v5, a2);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTQ0_()
{
  v2 = *(*v1 + 56);
  *(*v1 + 64) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC24MLRandomForestClassifierV_Tt1g503_s8b4ML24fgh80V12handleResult33_4BA12AD8C244BA9B40BDFBE3C2FF9674LL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC04TreeH23TrainingSessionDelegateCTf1nc_nTY1_()
{
  v1 = v0[6];
  v2 = v0[5];
  swift_storeEnumTagMultiPayload(v2, v0[4], 0);
  outlined init with take of DataFrame?(v2, v1, &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);
  v3 = v0;
  v4 = v0[6];
  v5 = v3[5];
  v6 = v3[3];
  v7 = v3;
  outlined init with take of DataFrame?(v4, v3[2], &demangling cache variable for type metadata for Result<MLRandomForestClassifier, Error>);

  v4;
  v5;
  return (v7[1])();
}