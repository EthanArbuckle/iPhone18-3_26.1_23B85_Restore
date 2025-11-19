Swift::tuple_Int_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.extractFeatures(from:)(Swift::Int from)
{
  v50 = v1;
  v49 = from;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v35;
  v10 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v35, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v43 = v6;
  if (__swift_getEnumTagSinglePayload(v35, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    BUG();
  }

  v11 = v48;
  outlined init with take of MLClassifierMetrics(v35, v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v12 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable;
  swift_beginAccess(OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + v2, v36, 0, 0);
  v13 = *(v2 + v12 + 8);
  if (v13 == 0xFF)
  {
    outlined destroy of MLHandActionClassifier.DataSource(v11, type metadata accessor for MLHandActionClassifier.PersistentParameters);
LABEL_11:
    v25.finished = 1;
    v25._0 = 1;
    return v25;
  }

  v14 = *(v2 + v12);
  v44 = v2;
  v39 = v14;
  v15 = v13;
  v16 = v13 & 1;
  v40 = v16;
  outlined copy of Result<_DataTable, Error>(v14, v15);
  outlined copy of Result<_DataTable, Error>(v14, v15);
  MLDataTable.size.getter();
  v42 = v17;
  outlined consume of Result<_DataTable, Error>(v39, v40);
  if (v42 <= 0)
  {
    outlined destroy of MLHandActionClassifier.DataSource(v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v14, v15);
    goto LABEL_11;
  }

  v47 = v14;
  v51 = v15;
  v18 = *(v44 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v19 = *(v44 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v23 = __OFADD__(v18, v19);
  v20 = v18 + v19;
  if (v23)
  {
    BUG();
  }

  if (v20 <= v49)
  {
    outlined destroy of MLHandActionClassifier.DataSource(v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    outlined consume of MLDataTable?(v47, v51);
    v25.finished = 1;
    v25._0 = 0;
  }

  else
  {
    v38 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceValidationRowCount;
    v37 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTrainingRowCount;
    v21 = v44 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
    v42 = v18;
    v22 = *(*(type metadata accessor for MLTrainingSessionParameters(0) + 20) + v21);
    v23 = __OFADD__(v49, v22);
    v24 = v49 + v22;
    if (v42 <= v49)
    {
      if (v23)
      {
        BUG();
      }
    }

    else
    {
      v20 = v42;
      if (v23)
      {
        BUG();
      }
    }

    if (v20 < v24)
    {
      v24 = v20;
    }

    if (v24 < v49)
    {
      BUG();
    }

    v45 = v47;
    v46 = v16;
    outlined copy of Result<_DataTable, Error>(v47, v51);
    MLDataTable.subscript.getter(v49, v24);
    outlined consume of Result<_DataTable, Error>(v45, v46);
    v26 = v39;
    v27 = v40;
    type metadata accessor for MLHandActionClassifier.FeatureExtractor();
    v41 = v26;
    v45 = v26;
    v46 = v27;
    v28 = *(v43 + 36);
    v43 = v24;
    v29 = v48;
    v30 = v50;
    static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(&v45, v49, *&v48[v28]);
    if (v30)
    {
      outlined destroy of MLHandActionClassifier.DataSource(v29, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      outlined consume of MLDataTable?(v47, v51);
      v25._0 = outlined consume of Result<_DataTable, Error>(v41, v27);
    }

    else
    {
      v31 = v39;
      LOBYTE(v50) = v40;
      v45 = v39;
      v46 = v40 & 1;
      if (v42 <= v49)
      {
        v32 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      }

      else
      {
        v32 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
      }

      swift_beginAccess(v44 + v32, &v39, 33, 0);
      MLDataTable.append(contentsOf:)(&v45);
      swift_endAccess(&v39);
      outlined consume of Result<_DataTable, Error>(v41, v27);
      outlined consume of MLDataTable?(v47, v51);
      outlined destroy of MLHandActionClassifier.DataSource(v48, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      outlined consume of Result<_DataTable, Error>(v31, v50);
      v25._0 = v43 - v49;
      if (__OFSUB__(v43, v49))
      {
        BUG();
      }

      v33 = *(v44 + v37);
      v23 = __OFADD__(*(v44 + v38), v33);
      v34 = *(v44 + v38) + v33;
      if (v23)
      {
        BUG();
      }

      v25.finished = v43 == v34;
    }
  }

  return v25;
}

Swift::tuple_Int_metrics_OpaquePointer_finished_Bool __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> HandActionClassifierTrainingSessionDelegate.train(from:)(Swift::Int from)
{
  v85 = v1;
  v89 = type metadata accessor for Tensor(0);
  v90 = *(v89 - 8);
  v4 = *(v90 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v91 = &v81;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v96 = &v81;
  v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>);
  v87 = *(v88 - 8);
  v10 = *(v87 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v95 = &v81;
  v101 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v13 = *(*(v101 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v103 = &v81;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v107 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v19 = *(*(v107 - 1) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v92 = &v81;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v97 = &v81;
  v104 = v2;
  v24 = v2 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters;
  v25 = type metadata accessor for MLTrainingSessionParameters(0);
  v26 = *(*(v25 + 20) + v24);
  if (__OFADD__(v26, from))
  {
    BUG();
  }

  v27 = *(v24 + *(v25 + 28));
  v28 = v27 - from;
  if (__OFSUB__(v27, from))
  {
    BUG();
  }

  v102 = *&from;
  v93 = v27;
  v86 = v26 + from;
  if (v26 < v28)
  {
    v28 = v26;
  }

  v29 = v104;
  v30 = v104 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
  swift_beginAccess(v104 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v82, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v30, &v81, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v31 = v101;
  if (__swift_getEnumTagSinglePayload(&v81, 1, v101))
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v81, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    v32 = "Augmentation options" + 0x8000000000000000;
    v33 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v33, 0, 0);
    *v34 = 0xD000000000000026;
    *(v34 + 8) = "Augmentation options" + 0x8000000000000000;
    *(v34 + 16) = 0;
    *(v34 + 32) = 0;
    *(v34 + 48) = 0;
    v35 = swift_willThrow(&type metadata for MLCreateError, v33);
    goto LABEL_13;
  }

  v94 = v28;
  v36 = v31;
  v37 = v103;
  outlined init with copy of MLTrainingSessionParameters(&v81, v103, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v81, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  v38 = v92;
  outlined init with copy of MLTrainingSessionParameters(v37 + v36[5], v92, type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData);
  v39 = *(v37 + v36[7]);
  v40 = *(v37 + v36[8]);
  v41 = *(v37 + v36[10]);
  v42 = *(v37 + v36[9]);
  v43 = v107;
  *(v38 + v107[5]) = *(v37 + v36[6]);
  *(v38 + v43[6]) = v39;
  *(v38 + v43[7]) = v40;
  *(v38 + v43[8]) = v41;
  *(v38 + v43[10]) = v42;
  outlined destroy of MLHandActionClassifier.DataSource(v37, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  v44 = v97;
  outlined init with take of MLClassifierMetrics(v38, v97, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v45 = *(v29 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);
  if (!v45 || !*(v29 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels))
  {
    v32 = "ve training parameters" + 0x8000000000000000;
    v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
    *v56 = 0xD00000000000003CLL;
    *(v56 + 8) = "ve training parameters" + 0x8000000000000000;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v55);
    goto LABEL_12;
  }

  v103 = *(v29 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
  v46 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
  v101 = v45;
  swift_beginAccess(v29 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v83, 0, 0);
  v48 = *(v29 + v46 + 8);
  v98 = *(v29 + v46);
  v47 = v98;
  LOBYTE(v99) = v48;
  v49 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
  swift_beginAccess(v29 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v84, 0, 0);
  v50 = v29;
  v51 = *(v29 + v49);
  LODWORD(v49) = *(v50 + v49 + 8);
  v105 = v51;
  LOBYTE(v106) = v49 & 1;

  v103;
  v52 = v47;
  v44 = v97;
  outlined copy of Result<_DataTable, Error>(v52, v48);
  v53 = v49;
  v32 = v103;
  outlined copy of Result<_DataTable, Error>(v51, v53);
  v29 = v96;
  v54 = v85;
  static MLHandActionClassifier.prepareDataset(classLabels:trainingFeatures:validationFeatures:parameters:)(v95, v96, v32, &v98, &v105, v44, *&v42);
  if (v54)
  {
    v32;

    outlined consume of MLDataTable?(v105, v106);
    outlined consume of Result<_DataTable, Error>(v98, v99);
LABEL_12:
    v35 = outlined destroy of MLHandActionClassifier.DataSource(v44, type metadata accessor for MLHandActionClassifier.ModelParameters);
    goto LABEL_13;
  }

  outlined consume of MLDataTable?(v105, v106);
  outlined consume of Result<_DataTable, Error>(v98, v99);
  if (v94 < 0)
  {
    BUG();
  }

  if (v94)
  {
    v59 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    v60 = 0;
    do
    {
      if (__OFADD__(v60, *&v102))
      {
        BUG();
      }

      v61 = MLHandActionClassifier.GraphCNN.iterateTraining(trainingData:validationData:epochCount:)(v95, v29, v60 + *&v102, *&v42);
      ++v60;
      v62 = *(v104 + v59);
      *(v104 + v59) = v61;
      v62;
      v29 = v96;
    }

    while (v94 != v60);
  }

  v63 = v104;
  v102 = *&OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary;
  v64 = *(v104 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  v64;
  specialized Dictionary.subscript.getter(0x676E696E69617274, 0xED000073736F6C5FLL, v64);
  v64;
  if (!v100)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v98, &demangling cache variable for type metadata for Any?);
    goto LABEL_23;
  }

  if (!swift_dynamicCast(&v105, &v98, &type metadata for Any + 8, &type metadata for Double, 6))
  {
LABEL_23:
    v66 = _swiftEmptyDictionarySingleton;
    goto LABEL_24;
  }

  v107 = v105;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(_swiftEmptyDictionarySingleton);
  v98 = _swiftEmptyDictionarySingleton;
  v42 = v107;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, isUniquelyReferenced_nonNull_native, *&v107);
  v66 = v98;
  v63 = v104;
LABEL_24:
  v67 = *(v63 + *&v102);
  v67;
  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEF73736F6C5F6E6FLL, v67);
  v67;
  if (v100)
  {
    if (swift_dynamicCast(&v105, &v98, &type metadata for Any + 8, &type metadata for Double, 6))
    {
      v107 = v105;
      v68 = swift_isUniquelyReferenced_nonNull_native(v66);
      v98 = v66;
      v42 = v107;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, v68, *&v107);
      v107 = v98;
    }

    else
    {
      v107 = v66;
    }
  }

  else
  {
    v107 = v66;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v98, &demangling cache variable for type metadata for Any?);
  }

  v69 = *(v104 + *&v102);
  v69;
  specialized Dictionary.subscript.getter(0xD000000000000012, ("oseClassifier.swift" + 0x8000000000000000), v69);
  v69;
  if (v100)
  {
    v70 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v105, &v98, &type metadata for Any + 8, v70, 6))
    {
      v71 = v91;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, *&v42, v3);
      v92 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v71, *(v103 + 2));
      (*(v90 + 8))(v71, v89);
      v72 = v107;
      v73 = swift_isUniquelyReferenced_nonNull_native(v107);
      v98 = v72;
      v42 = v92;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(3, v73, *&v92);

      v107 = v98;
    }
  }

  else
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v98, &demangling cache variable for type metadata for Any?);
  }

  v74 = *(v104 + *&v102);
  v74;
  specialized Dictionary.subscript.getter(0xD000000000000014, ("ve training confusion matrix" + 0x8000000000000000), v74);
  v74;
  if (v100)
  {
    v75 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
    if (swift_dynamicCast(&v105, &v98, &type metadata for Any + 8, v75, 6))
    {
      v104 = v105;
      v76 = v91;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, *&v42, v3);
      v77 = *(v103 + 2);
      v103;
      v102 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v76, v77);
      (*(v90 + 8))(v76, v89);
      v78 = v107;
      v79 = swift_isUniquelyReferenced_nonNull_native(v107);
      v98 = v78;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v79, v102);

      v107 = v98;
    }

    else
    {
      v103;
    }
  }

  else
  {
    v103;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v98, &demangling cache variable for type metadata for Any?);
  }

  LOBYTE(v32) = v86 >= v93;
  v80 = v107;
  v29 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v107);
  v80;

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v96, &demangling cache variable for type metadata for Dataset<[(label: Int, keypoints: MLMultiArray)], DataSample<Tensor, Tensor>>?);
  (*(v87 + 8))(v95, v88);
  outlined destroy of MLHandActionClassifier.DataSource(v97, type metadata accessor for MLHandActionClassifier.ModelParameters);
  v35 = v94;
LABEL_13:
  v57 = v29;
  v58 = v32;
  result.metrics._rawValue = v57;
  result._0 = v35;
  result.finished = v58;
  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.saveCheckpoint(to:phase:iteration:)(uint64_t a1, unsigned __int8 *a2)
{
  v82 = v2;
  v81 = a1;
  LODWORD(v4) = 0;
  v5 = type metadata accessor for URL(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = alloca(v6);
  v10 = alloca(v6);
  v11 = alloca(v6);
  v12 = alloca(v6);
  v13 = alloca(v6);
  v14 = alloca(v6);
  v15 = *a2;
  if (v15 == 2)
  {
    LOBYTE(v4) = 1;
    if (*(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model))
    {
      v20 = *(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);

      specialized _ModelCheckpoint<>.save(to:)(v81, MLHandActionClassifier.GraphCNN.getCheckpointStatesDictionary());
    }
  }

  else if (v15 == 1)
  {
    v80 = *(v5 - 8);
    v69 = __src;
    v79 = v5;
    v76 = __src;
    v70 = __src;
    v16 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures;
    v71 = (v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures);
    swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures, v50, 1, 0);
    v17 = *(v3 + v16);
    v18 = *(v3 + v16 + 8);
    v4 = &v52;
    v52 = v17;
    LOBYTE(v53) = v18;
    outlined copy of Result<_DataTable, Error>(v17, v18);
    URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
    v19 = v82;
    MLDataTable.write(to:)(__src);
    if (v19)
    {
      (*(v80 + 8))(__src, v79);
      outlined consume of Result<_DataTable, Error>(v52, v53);
    }

    else
    {
      v82 = *(v80 + 8);
      v82(__src, v79);
      outlined consume of Result<_DataTable, Error>(v52, v53);
      v21 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      v80 = v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures;
      swift_beginAccess(v3 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures, v51, 1, 0);
      v22 = *(v3 + v21 + 8);
      v77 = *(v3 + v21);
      LOBYTE(v78) = v22;
      outlined copy of Result<_DataTable, Error>(v77, v22);
      v23 = v69;
      URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
      MLDataTable.write(to:)(v23);
      LODWORD(v4) = 0;
      v82(v23, v79);
      outlined consume of Result<_DataTable, Error>(v77, v78);
      v82 = 0;
      URL.appendingPathComponent(_:)(0x676E696E69617274, 0xE800000000000000);
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
      __dst[0] = 1;
      LOBYTE(v52) = 1;
      v53 = 44;
      v54 = 0xE100000000000000;
      v55 = 0;
      v56 = 0xE000000000000000;
      v57 = 92;
      v58 = 0xE100000000000000;
      v59 = 1;
      v60 = 34;
      v61 = 0xE100000000000000;
      v62 = 1;
      v63 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v64 = 10;
      v65 = 0xE100000000000000;
      v66 = 0;
      v67 = 1;
      v68 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v52, 34);
      memcpy(__dst, __src, sizeof(__dst));
      v25 = v82;
      MLDataTable.init(contentsOf:options:)(v76, __dst);
      if (!v25)
      {
        v26 = v73;
        v27 = v71;
        v28 = *v71;
        *v71 = v72;
        v29 = *(v27 + 2);
        *(v27 + 8) = v26;
        outlined consume of Result<_DataTable, Error>(v28, v29);
        v4 = v70;
        v82 = 0;
        URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEA00000000006E6FLL);
        LOBYTE(v48[0]) = 1;
        *(&v48[0] + 1) = 44;
        v48[1] = 0xE100000000000000;
        *&v48[2] = 0xE000000000000000;
        *(&v48[2] + 1) = 92;
        *&v48[3] = 0xE100000000000000;
        BYTE8(v48[3]) = 1;
        *&v48[4] = 34;
        *(&v48[4] + 1) = 0xE100000000000000;
        LOBYTE(v48[5]) = 1;
        *(&v48[5] + 1) = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        *&v48[6] = 10;
        *(&v48[6] + 1) = 0xE100000000000000;
        v48[7] = 0;
        LOBYTE(v48[8]) = 1;
        *(&v48[8] + 1) = 0;
        v49[0] = 1;
        LOBYTE(v37[0]) = 1;
        v37[1] = 44;
        v37[2] = 0xE100000000000000;
        v37[3] = 0;
        v37[4] = 0xE000000000000000;
        v37[5] = 92;
        v37[6] = 0xE100000000000000;
        v38 = 1;
        v39 = 34;
        v40 = 0xE100000000000000;
        v41 = 1;
        v42 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
        v43 = 10;
        v44 = 0xE100000000000000;
        v45 = 0;
        v46 = 1;
        v47 = 0;
        outlined retain of MLDataTable.ParsingOptions(v48);
        outlined release of MLDataTable.ParsingOptions(v37, 44);
        memcpy(v49, v48, sizeof(v49));
        v30 = v82;
        MLDataTable.init(contentsOf:options:)(v4, v49);
        if (!v30)
        {
          v31 = v75;
          v32 = v80;
          v33 = *v80;
          *v80 = v74;
          v34 = *(v32 + 8);
          *(v32 + 8) = v31;
          outlined consume of Result<_DataTable, Error>(v33, v34);
          LOBYTE(v4) = 1;
        }
      }
    }
  }

  return v4;
}

uint64_t HandActionClassifierTrainingSessionDelegate.save(to:)(uint64_t a1)
{
  v16 = v1;
  v17 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters + v2;
  swift_beginAccess(v10, v15, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &v14, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  if (__swift_getEnumTagSinglePayload(&v14, 1, v6) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v14, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
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
    outlined init with take of MLClassifierMetrics(&v14, &v14, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    MLHandActionClassifier.PersistentParameters.save(toSessionDirectory:)(v17);
    return outlined destroy of MLHandActionClassifier.DataSource(&v14, type metadata accessor for MLHandActionClassifier.PersistentParameters);
  }
}

NSURL *HandActionClassifierTrainingSessionDelegate.restore(from:phase:)(uint64_t a1)
{
  v36 = v1;
  v34 = v2;
  v30 = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v32 = &v27;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v35 = &v27;
  v8 = type metadata accessor for URL(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v31 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v13 = *(*(v31 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v33 = &v27;
  v16 = alloca(v13);
  v17 = alloca(v13);
  (*(v9 + 16))(&v27, v30, v8);
  v18 = v36;
  result = MLHandActionClassifier.PersistentParameters.init(sessionDirectory:)(&v27);
  if (!v18)
  {
    v36 = &v27;
    v20 = v34 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters;
    swift_beginAccess(v34 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, v28, 0, 0);
    v21 = v35;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v20, v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
    v22 = v21;
    v23 = v31;
    if (__swift_getEnumTagSinglePayload(v22, 1, v31) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
      v24 = v32;
      outlined init with take of MLClassifierMetrics(v36, v32, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
      swift_beginAccess(v20, v29, 33, 0);
      outlined assign with take of MLHandActionClassifier.PersistentParameters?(v24, v20);
      return swift_endAccess(v29);
    }

    else
    {
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v35, v33, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      v26 = v36;
      HandActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(v36, v25);
      outlined destroy of MLHandActionClassifier.DataSource(v25, type metadata accessor for MLHandActionClassifier.PersistentParameters);
      return outlined destroy of MLHandActionClassifier.DataSource(v26, type metadata accessor for MLHandActionClassifier.PersistentParameters);
    }
  }

  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.verifyThatParametersAreCompatible(_:_:)(uint64_t a1, uint64_t a2)
{
  v174 = v2;
  v156 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
  v3 = *(*(v156 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v155 = &v154;
  v173 = type metadata accessor for MLHandActionClassifier.DataSource(0);
  v6 = *(*(v173 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v154 = &v154;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v161 = &v154;
  v11 = alloca(v6);
  v12 = alloca(v6);
  v158._object = &v154;
  v13 = alloca(v6);
  v14 = alloca(v6);
  v158._countAndFlagsBits = &v154;
  v175 = type metadata accessor for DataFrame(0);
  v172 = *(v175 - 8);
  v15 = *(v172 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v159._countAndFlagsBits = &v154;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v165 = &v154;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v160 = &v154;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v168 = &v154;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v159._object = &v154;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v164 = &v154;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v31 = alloca(v24);
  v32 = alloca(v24);
  v33 = type metadata accessor for MLHandActionClassifier.PersistentParameters(0);
  v34 = v33[6];
  v35 = *(a2 + v34);
  if (*(a1 + v34) != v35)
  {
    v166 = *(a1 + v34);
    v47 = lazy protocol witness table accessor for type Int and conformance Int();
    v174 = BinaryInteger.description.getter(&type metadata for Int, v47);
    v175 = v48;
    v166 = v35;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v47);
    v51 = v50;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v53 = 0x6953206863746142;
    *(v53 + 8) = 0xEA0000000000657ALL;
LABEL_14:
    *(v53 + 16) = v174;
    *(v53 + 24) = v175;
    *(v53 + 32) = v49;
    *(v53 + 40) = v51;
    *(v53 + 48) = 3;
    return swift_willThrow(&type metadata for MLCreateError, v52);
  }

  v169 = &v154;
  v36 = v33[7];
  v37 = *(a2 + v36);
  if (*(a1 + v36) != v37)
  {
    v54 = "metricsAttributesDictionary" + 0x8000000000000000;
    v166 = *(a1 + v36);
    v55 = lazy protocol witness table accessor for type Int and conformance Int();
    v174 = BinaryInteger.description.getter(&type metadata for Int, v55);
    v175 = v56;
    v166 = v37;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v55);
    v51 = v57;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    v58 = 0xD000000000000012;
LABEL_13:
    *v53 = v58;
    *(v53 + 8) = v54;
    goto LABEL_14;
  }

  v38 = v33[8];
  v39 = *(a2 + v38);
  if (*(a1 + v38) != v39)
  {
    v54 = "Number of Labels" + 0x8000000000000000;
    v166 = *(a1 + v38);
    v59 = lazy protocol witness table accessor for type Int and conformance Int();
    v174 = BinaryInteger.description.getter(&type metadata for Int, v59);
    v175 = v60;
    v166 = v39;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v59);
    v51 = v61;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    v58 = 0xD000000000000016;
    goto LABEL_13;
  }

  v40 = v33[9];
  v41 = *(a1 + v40);
  if (v41 != *(a2 + v40))
  {
    v175 = *(a2 + v40);
    v174 = Double.description.getter(v41);
    v63 = v62;
    v64 = Double.description.getter(*&v175);
    v66 = v65;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v67 = 0xD000000000000011;
    *(v67 + 8) = "lassification algorithm." + 0x8000000000000000;
    *(v67 + 16) = v174;
    *(v67 + 24) = v63;
    *(v67 + 32) = v64;
    *(v67 + 40) = v66;
    *(v67 + 48) = 3;
    return swift_willThrow(&type metadata for MLCreateError, v52);
  }

  v42 = v33[10];
  v43 = *(a2 + v42);
  if (*(a1 + v42) != v43)
  {
    v54 = "Maximum Iterations" + 0x8000000000000000;
    v166 = *(a1 + v42);
    v68 = lazy protocol witness table accessor for type Int and conformance Int();
    v174 = BinaryInteger.description.getter(&type metadata for Int, v68);
    v175 = v69;
    v166 = v43;
    v49 = BinaryInteger.description.getter(&type metadata for Int, v68);
    v51 = v70;
    v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    v58 = 0xD000000000000014;
    goto LABEL_13;
  }

  v157 = a2;
  v44 = v174;
  result = MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()();
  if (!v44)
  {
    v174 = a1;
    v171 = &v154;
    v46 = v169;
    MLHandActionClassifier.DataSource.gatherAnnotatedFileNames()();
    v170 = 0;
    v71 = v171;
    v72 = v164;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v171, v164, &demangling cache variable for type metadata for DataFrame?);
    v73 = v175;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v72, 1, v175);
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v72, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v75 = v168;
      v76 = v168;
      v77 = v72;
      v78 = v73;
      v79 = *(v172 + 32);
      v79(v168, v77, v78);
      if (DataFrame.shape.getter(v76) > 0)
      {
        object = v159._object;
        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v46, v159._object, &demangling cache variable for type metadata for DataFrame?);
        v81 = __swift_getEnumTagSinglePayload(object, 1, v78);
        v82 = v173;
        if (v81 == 1)
        {
          (*(v172 + 8))(v168, v78);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(object, &demangling cache variable for type metadata for DataFrame?);
        }

        else
        {
          v83 = v160;
          v84 = v160;
          v79(v160, object, v78);
          if (DataFrame.shape.getter(v84) > 0)
          {
            v85 = v168;
            v86 = v170;
            v87 = HandActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
            v170 = v86;
            v88 = v171;
            if (v86)
            {
              v89 = *(v172 + 8);
              v90 = v83;
              v91 = v175;
              v89(v90, v175);
              v89(v85, v91);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v169, &demangling cache variable for type metadata for DataFrame?);
              v92 = v88;
              return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, &demangling cache variable for type metadata for DataFrame?);
            }

            v144 = v87;
            v145 = HandActionClassifierTrainingSessionDelegate.pathsByLabel(for:)();
            v170 = 0;
            v146 = v83;
            v147 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SaySSGTt1g5(v144, v145);
            v144;
            v145;
            if ((v147 & 1) == 0)
            {
              v150 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v150, 0, 0);
              *v151 = 1;
              *(v151 + 8) = 0;
              *(v151 + 24) = 0;
              *(v151 + 40) = 0;
              *(v151 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v150);
              v152 = *(v172 + 8);
              v153 = v175;
              v152(v146, v175);
              v152(v168, v153);
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v169, &demangling cache variable for type metadata for DataFrame?);
              v92 = v171;
              return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, &demangling cache variable for type metadata for DataFrame?);
            }

            v148 = *(v172 + 8);
            v149 = v175;
            v148(v146, v175);
            v148(v168, v149);
LABEL_48:
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v169, &demangling cache variable for type metadata for DataFrame?);
            v92 = v171;
            return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v92, &demangling cache variable for type metadata for DataFrame?);
          }

          v93 = v83;
          v94 = *(v172 + 8);
          v94(v93, v78);
          v94(v168, v78);
          v82 = v173;
        }

        v71 = v171;
LABEL_29:
        countAndFlagsBits = v158._countAndFlagsBits;
        outlined init with copy of MLTrainingSessionParameters(v174, v158._countAndFlagsBits, type metadata accessor for MLHandActionClassifier.DataSource);
        if (swift_getEnumCaseMultiPayload(countAndFlagsBits, v82) == 3)
        {
          v173 = *countAndFlagsBits;
          LOBYTE(v164) = *(countAndFlagsBits + 8);
          v160 = *(countAndFlagsBits + 16);
          v168 = *(countAndFlagsBits + 24);
          v159._object = *(countAndFlagsBits + 32);
          v96 = *(countAndFlagsBits + 40);
          *(countAndFlagsBits + 56);
          countAndFlagsBits = v158._object;
          outlined init with copy of MLTrainingSessionParameters(v157, v158._object, type metadata accessor for MLHandActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(countAndFlagsBits, v82) == 3)
          {
            v174 = *countAndFlagsBits;
            LODWORD(v175) = *(countAndFlagsBits + 8);
            v159._countAndFlagsBits = *(countAndFlagsBits + 16);
            v165 = *(countAndFlagsBits + 24);
            v158._countAndFlagsBits = *(countAndFlagsBits + 32);
            v161 = *(countAndFlagsBits + 40);
            *(countAndFlagsBits + 56);
            v162 = v173;
            v97 = v164;
            LOBYTE(v164) = v164 & 1;
            v163 = v164;
            LODWORD(v172) = v97;
            outlined copy of Result<_DataTable, Error>(v173, v97);
            v98._countAndFlagsBits = v159._object;
            v98._object = v96;
            MLDataTable.subscript.getter(v98);
            v96;
            outlined consume of Result<_DataTable, Error>(v162, v163);
            v162 = v166;
            v163 = v167;
            v99 = Array<A>.init(_:)(&v162, v41);
            v162 = v174;
            LOBYTE(v158._object) = v175 & 1;
            v163 = v175 & 1;
            outlined copy of Result<_DataTable, Error>(v174, v175);
            v98._countAndFlagsBits = v158._countAndFlagsBits;
            v100 = v161;
            v98._object = v161;
            MLDataTable.subscript.getter(v98);
            v100;
            outlined consume of Result<_DataTable, Error>(v162, v163);
            v162 = v166;
            v163 = v167;
            v101 = Array<A>.init(_:)(&v162, v41);
            ML11MLDataValueO_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v99, v101);
            v99;
            v101;
            if (ML11MLDataValueO_Tt1g5)
            {
              v162 = v173;
              v163 = v164;
              outlined copy of Result<_DataTable, Error>(v173, v172);
              v103._countAndFlagsBits = v160;
              v104 = v168;
              v103._object = v168;
              MLDataTable.subscript.getter(v103);
              v104;
              outlined consume of Result<_DataTable, Error>(v162, v163);
              v162 = v166;
              v163 = v167;
              v105 = Array<A>.init(_:)(&v162, v41);
              v162 = v174;
              v163 = v158._object;
              LODWORD(v175) = v175;
              outlined copy of Result<_DataTable, Error>(v174, v175);
              v103._countAndFlagsBits = v159._countAndFlagsBits;
              v106 = v165;
              v103._object = v165;
              MLDataTable.subscript.getter(v103);
              v106;
              outlined consume of Result<_DataTable, Error>(v162, v163);
              v162 = v166;
              v163 = v167;
              v107 = Array<A>.init(_:)(&v162, v41);
              v108 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(v105, v107);
              v105;
              v107;
              if (v108)
              {
                outlined consume of Result<_DataTable, Error>(v174, v175);
                outlined consume of Result<_DataTable, Error>(v173, v172);
                goto LABEL_48;
              }

              v140 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v140, 0, 0);
              *v141 = 1;
              *(v141 + 8) = 0;
              *(v141 + 24) = 0;
              *(v141 + 40) = 0;
              *(v141 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v140);
              v135 = v174;
              v134 = v175;
            }

            else
            {
              v165;
              v168;
              v132 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v132, 0, 0);
              *v133 = 1;
              *(v133 + 8) = 0;
              *(v133 + 24) = 0;
              *(v133 + 40) = 0;
              *(v133 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v132);
              v134 = v175;
              v135 = v174;
            }

            outlined consume of Result<_DataTable, Error>(v135, v134);
            outlined consume of Result<_DataTable, Error>(v173, v172);
            goto LABEL_48;
          }

          outlined consume of Result<_DataTable, Error>(v173, v164);
          v96;
          v168;
        }

        outlined destroy of MLHandActionClassifier.DataSource(countAndFlagsBits, type metadata accessor for MLHandActionClassifier.DataSource);
        v109 = v161;
        outlined init with copy of MLTrainingSessionParameters(v174, v161, type metadata accessor for MLHandActionClassifier.DataSource);
        if (swift_getEnumCaseMultiPayload(v109, v82) == 5)
        {
          v110 = v82;
          v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v112 = v111[12];
          v168 = *(v109 + v112);
          v174 = *(v109 + v112 + 8);
          v113 = v111[16];
          v164 = *(v109 + v113);
          v173 = *(v109 + v113 + 8);
          *(v109 + v111[20] + 8);
          v114 = v172;
          v158._countAndFlagsBits = *(v172 + 32);
          (v158._countAndFlagsBits)(v165, v109, v175);
          v109 = v154;
          outlined init with copy of MLTrainingSessionParameters(v157, v154, type metadata accessor for MLHandActionClassifier.DataSource);
          if (swift_getEnumCaseMultiPayload(v109, v110) == 5)
          {
            v115 = v111[12];
            v160 = *(v109 + v115);
            v161 = *(v109 + v115 + 8);
            v116 = v111[16];
            v158._object = *(v109 + v116);
            v159._object = *(v109 + v116 + 8);
            *(v109 + v111[20] + 8);
            (v158._countAndFlagsBits)(v159._countAndFlagsBits, v109, v175);
            v117 = v155;
            v118 = v173;
            DataFrame.subscript.getter(v164, v173);
            v118;
            v119 = v156;
            v120 = *(v156 + 52);
            v121 = v159._object;
            DataFrame.subscript.getter(v158._object, v159._object);
            v121;
            v122 = v170;
            LOBYTE(v121) = specialized Sequence.allSatisfy(_:)(v117);
            v173 = v122;
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v117, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
            if (v121)
            {
              v123 = v174;
              DataFrame.subscript.getter(v168, v174);
              v123;
              v124 = *(v119 + 52);
              v125 = v161;
              v126 = v159._countAndFlagsBits;
              DataFrame.subscript.getter(v160, v161);
              v125;
              v127 = v173;
              LOBYTE(v125) = specialized Sequence.allSatisfy(_:)(v117);
              v170 = v127;
              outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v117, &demangling cache variable for type metadata for Zip2Sequence<AnyColumn, AnyColumn>);
              v128 = v165;
              if ((v125 & 1) == 0)
              {
                v142 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                swift_allocError(&type metadata for MLCreateError, v142, 0, 0);
                *v143 = 1;
                *(v143 + 8) = 0;
                *(v143 + 24) = 0;
                *(v143 + 40) = 0;
                *(v143 + 48) = 4;
                swift_willThrow(&type metadata for MLCreateError, v142);
              }

              v129 = *(v172 + 8);
              v130 = v175;
              v129(v126, v175);
              v129(v128, v130);
            }

            else
            {
              v161;
              v174;
              v136 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v136, 0, 0);
              *v137 = 1;
              *(v137 + 8) = 0;
              *(v137 + 24) = 0;
              *(v137 + 40) = 0;
              *(v137 + 48) = 4;
              swift_willThrow(&type metadata for MLCreateError, v136);
              v138 = *(v172 + 8);
              v139 = v175;
              v138(v159._countAndFlagsBits, v175);
              v138(v165, v139);
            }

            goto LABEL_48;
          }

          v173;
          v174;
          (*(v114 + 8))(v165, v175);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v169, &demangling cache variable for type metadata for DataFrame?);
          v131 = v171;
        }

        else
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v169, &demangling cache variable for type metadata for DataFrame?);
          v131 = v71;
        }

        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v131, &demangling cache variable for type metadata for DataFrame?);
        return outlined destroy of MLHandActionClassifier.DataSource(v109, type metadata accessor for MLHandActionClassifier.DataSource);
      }

      (*(v172 + 8))(v75, v78);
      v71 = v171;
    }

    v82 = v173;
    goto LABEL_29;
  }

  return result;
}

void *HandActionClassifierTrainingSessionDelegate.pathsByLabel(for:)()
{
  v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v80 = *(v71 - 8);
  v0 = *(v80 + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v78 = &v65;
  v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>);
  v3 = *(*(v73 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v82 = &v65;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
  v6 = *(*(v72 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v77 = &v65;
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<String>);
  v70 = *(v69 - 8);
  v9 = *(v70 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = alloca(v9);
  v13 = alloca(v9);
  ColumnID.init(_:_:)(0x7461506F65646976, 0xE900000000000068, &type metadata for String);
  ColumnID.init(_:_:)(0x6C6562616CLL, 0xE500000000000000, &type metadata for String);
  v75 = &v65;
  if (specialized DataFrame.containsColumn<A>(_:)() && specialized DataFrame.containsColumn<A>(_:)())
  {
    v14 = v82;
    DataFrame.subscript.getter(v75, &type metadata for String);
    v15 = v14 + *(v73 + 52);
    v67 = &v65;
    DataFrame.subscript.getter(&v65, &type metadata for String);
    v80 = *(v80 + 32);
    v16 = v78;
    v17 = v14;
    v18 = v71;
    (v80)(v78, v17, v71);
    v82 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
    v19 = v77;
    dispatch thunk of Sequence.makeIterator()(v18, v82);
    (v80)(v16, v15, v18);
    v73 = v19 + *(v72 + 52);
    dispatch thunk of Sequence.makeIterator()(v18, v82);
    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<String>>);
    v20 = (v19 + *(v65 + 36));
    v78 = lazy protocol witness table accessor for type Column<String> and conformance Column<A>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &protocol conformance descriptor for Column<A>);
    v76 = _swiftEmptyDictionarySingleton;
    v81 = 0;
    v74 = v20;
LABEL_4:
    v21 = v71;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter(v21, v78);
      if (*v20 == v68[0])
      {
        break;
      }

      v22 = dispatch thunk of Collection.subscript.read(v68, v20, v21, v78);
      v66 = *v23;
      v80 = v23[1];
      v80;
      v22(v68, 0);
      v24 = v78;
      dispatch thunk of Collection.formIndex(after:)(v20, v21, v78);
      v25 = *(v65 + 36);
      v26 = v73;
      dispatch thunk of Collection.endIndex.getter(v21, v24);
      if (*(v26 + v25) == v68[0])
      {
        v80;
        v19 = v77;
        break;
      }

      v27 = v26 + v25;
      v82 = dispatch thunk of Collection.subscript.read(v68, v27, v21, v24);
      v79 = *v28;
      v29 = v28[1];
      v29;
      (v82)(v68, 0);
      dispatch thunk of Collection.formIndex(after:)(v27, v21, v78);
      if (v80)
      {
        v20 = v74;
        if (v29)
        {
          _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v81, 0);
          v30 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v76);
          v68[0] = v30;
          v82 = v29;
          v81 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v29);
          v33 = (v32 & 1) == 0;
          v34 = __OFADD__(v30[2], v33);
          v35 = v30[2] + v33;
          if (v34)
          {
            BUG();
          }

          v36 = v32;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [String]>);
          v37 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v35);
          v38 = v68[0];
          if (v37)
          {
            v39 = v82;
            v81 = specialized __RawDictionaryStorage.find<A>(_:)(v79, v82);
            LOBYTE(v42) = v42 & 1;
            if ((v36 & 1) != v42)
            {
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v39, v42, v40, v41);
              BUG();
            }
          }

          v43 = v82;
          if (v36)
          {
            v38;
            v44 = v81;
          }

          else
          {
            v44 = v81;
            v38[(v81 >> 6) + 8] |= 1 << v81;
            v45 = v38[6];
            v46 = 16 * v44;
            *(v45 + v46) = v79;
            *(v45 + v46 + 8) = v43;
            *(v38[7] + 8 * v44) = _swiftEmptyArrayStorage;
            v47 = v38[2];
            v38;
            v34 = __OFADD__(1, v47);
            v48 = v47 + 1;
            if (v34)
            {
              BUG();
            }

            v38[2] = v48;
            v43;
          }

          v49 = v38[7];
          v76 = v38;
          v50 = v49;

          v51 = *(v50 + 8 * v44);
          v52 = swift_isUniquelyReferenced_nonNull_native(v51);
          *(v50 + 8 * v44) = v51;
          if (!v52)
          {
            v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51[2] + 1, 1, v51);
            *(v50 + 8 * v44) = v51;
          }

          v53 = v51[2];
          v54 = v51[3];
          v55 = v53 + 1;
          if (v54 >> 1 <= v53)
          {
            v79 = v53 + 1;
            v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v54 >= 2, v53 + 1, 1, v51);
            v55 = v79;
            v51 = v57;
            *(v50 + 8 * v44) = v57;
          }

          v51[2] = v55;
          v56 = 2 * v53;
          v51[v56 + 4] = v66;
          v51[v56 + 5] = v80;
          v82;
          v81 = specialized thunk for @callee_guaranteed () -> (@owned [Double]);
          v19 = v77;
          v20 = v74;
          goto LABEL_4;
        }

        v80;
        v19 = v77;
      }

      else
      {
        v29;
        v19 = v77;
        v20 = v74;
      }
    }

    *(v19 + *(v72 + 56)) = 1;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for Zip2Sequence<Column<String>, Column<String>>.Iterator);
    v62 = *(v70 + 8);
    v63 = v69;
    v62(v67, v69);
    v62(v75, v63);
    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v81, 0);
    return v76;
  }

  else
  {
    v58 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
    v59 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v58, &protocol witness table for String);
    v60 = *(v70 + 8);
    v61 = v69;
    v60(&v65, v69);
    v60(v75, v61);
  }

  return v59;
}

BOOL specialized DataFrame.containsColumn<A>(_:)()
{
  v18 = type metadata accessor for AnyColumn(0);
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v19 = &v17;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnID<String>);
  v5._countAndFlagsBits = ColumnID.name.getter(v4);
  object = v5._object;
  v7 = DataFrame.indexOfColumn(_:)(v5);
  value = v7.value;
  is_nil = v7.is_nil;
  object;
  result = 0;
  if (!is_nil)
  {
    v11 = DataFrame.columns.getter();
    if (value < 0)
    {
      BUG();
    }

    v12 = v11;
    if (value >= *(v11 + 16))
    {
      BUG();
    }

    v13 = v19;
    v14 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + v11 + *(v0 + 72) * value;
    v15 = v18;
    (*(v0 + 16))(v19, v14, v18);
    v12;
    v16 = AnyColumn.wrappedElementType.getter();
    (*(v0 + 8))(v13, v15);
    return v16 == &type metadata for String;
  }

  return result;
}

uint64_t HandActionClassifierTrainingSessionDelegate.deinit()
{
  outlined destroy of MLHandActionClassifier.DataSource(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingParameters, &demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  outlined consume of MLDataTable?(*(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable), *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_sourceTable + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures), *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_trainingFeatures + 8));
  outlined consume of Result<_DataTable, Error>(*(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures), *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_validationFeatures + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_model);

  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_classLabels);
  *(v0 + OBJC_IVAR____TtC8CreateML43HandActionClassifierTrainingSessionDelegate_metricsAttributesDictionary);
  return v0;
}

uint64_t type metadata accessor for HandActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata singleton initialization cache for HandActionClassifierTrainingSessionDelegate;
  if (!type metadata singleton initialization cache for HandActionClassifierTrainingSessionDelegate)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for HandActionClassifierTrainingSessionDelegate);
  }

  return result;
}

uint64_t type metadata completion function for HandActionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLHandActionClassifier.PersistentParameters?(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      v4[2] = "\t";
      v4[3] = &value witness table for Builtin.Int64 + 64;
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &unk_347CA8;
      v4[6] = &unk_347CA8;
      v4[7] = &unk_347CC0;
      v4[8] = &unk_347CC0;
      v4[9] = &value witness table for Builtin.BridgeObject + 64;
      result = swift_updateClassMetadata2(a1, 256, 10, v4, a1 + 80);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MLHandActionClassifier.PersistentParameters?(uint64_t a1)
{
  result = lazy cache variable for type metadata for MLHandActionClassifier.PersistentParameters?;
  if (!lazy cache variable for type metadata for MLHandActionClassifier.PersistentParameters?)
  {
    v2 = type metadata accessor for MLHandActionClassifier.PersistentParameters(255);
    result = type metadata accessor for Optional(a1, v2);
    if (!v3)
    {
      lazy cache variable for type metadata for MLHandActionClassifier.PersistentParameters? = result;
    }
  }

  return result;
}

uint64_t protocol witness for TrainingSessionDelegate.extractFeatures(from:) in conformance HandActionClassifierTrainingSessionDelegate(Swift::Int a1)
{
  v3 = *v1;
  *&v4 = HandActionClassifierTrainingSessionDelegate.extractFeatures(from:)(a1);
  if (v7)
  {
    return (*(v2 + 8))(v5, v6, *(&v4 + 1));
  }

  else
  {
    return (*(v2 + 8))(v4, BYTE8(v4));
  }
}

uint64_t outlined assign with take of MLHandActionClassifier.PersistentParameters?(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLHandActionClassifier.PersistentParameters?);
  (*(*(v2 - 8) + 40))(a2, a1, v2);
  return a2;
}

uint64_t lazy protocol witness table accessor for type [[Double]] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [[Double]] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [[Double]] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [[Double]]);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], &demangling cache variable for type metadata for [Double]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [[Double]] and conformance <A> [A] = result;
  }

  return result;
}

unint64_t specialized _NativeDictionary.startIndex.getter(uint64_t a1)
{
  return specialized _NativeDictionary.startIndex.getter(a1);
}

{
  v1 = *(a1 + 32);
  result = 1 << v1;
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = 0;
LABEL_3:
    _BitScanForward64(&v5, v3);
    result = v4 | v5;
    goto LABEL_4;
  }

  v7 = v1 & 0x3F;
  if (v7 < 7u)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = 64;
    goto LABEL_3;
  }

  if (v7 == 7)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 80);
  v4 = 128;
  if (v3)
  {
    goto LABEL_3;
  }

  v3 = *(a1 + 88);
  v4 = 192;
  if (v3)
  {
    goto LABEL_3;
  }

  v8 = 12;
  while (v8 - 8 < (result + 63) >> 6)
  {
    v3 = *(a1 + 8 * v8);
    v4 += 64;
    ++v8;
    if (v3)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v6 = *(a1 + 36);
  return result;
}

uint64_t outlined destroy of MLHandActionClassifier.DataSource(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *assignWithCopy for MLLogisticRegressionClassifier.ModelParameters.ValidationData(_BYTE *__dst, _BYTE *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(__dst);
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

uint64_t type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLLogisticRegressionClassifier.ModelParameters.ValidationData;
  if (!type metadata singleton initialization cache for MLLogisticRegressionClassifier.ModelParameters.ValidationData)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLLogisticRegressionClassifier.ModelParameters.ValidationData);
  }

  return result;
}

void *assignWithTake for MLLogisticRegressionClassifier.ModelParameters.ValidationData(void *__dst, void *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(__dst);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 2)
  {
    v4 = type metadata accessor for DataFrame(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    swift_storeEnumTagMultiPayload(__dst, a3, 2);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLLogisticRegressionClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v5[0] = &unk_347D20;
  v5[1] = &unk_347D38;
  result = type metadata accessor for DataFrame(319);
  if (v4 <= 0x3F)
  {
    v5[2] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 3, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.ValidationData.asTable()(__m128 a1)
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
  v10 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v2, &v25);
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

uint64_t MLLogisticRegressionClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, uint64_t, uint64_t))
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
  v20 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  outlined init with copy of MLLogisticRegressionClassifier.ModelParameters.ValidationData(v3, &v44);
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

void MLBoostedTreeClassifier.predictions(from:)(uint64_t a1)
{
  v20 = v2;
  v19 = v1;
  v5 = type metadata accessor for DataFrame(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v17 = &v15;
  v10 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 28);
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

uint64_t type metadata accessor for MLBoostedTreeClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLBoostedTreeClassifier;
  if (!type metadata singleton initialization cache for MLBoostedTreeClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLBoostedTreeClassifier);
  }

  return result;
}

uint64_t MLBoostedTreeClassifier.predictions(from:)(uint64_t a1, __m128 a2)
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
  MLBoostedTreeClassifier.predictions(from:)(&v13);
  if (v11)
  {
    return (*(v18 + 8))(&v13, v17);
  }

  *a2.i64 = (*(v18 + 8))(&v13, v17);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(&v13, 1, a2);
}

uint64_t MLBoostedTreeClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = v1;
  v5 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = type metadata accessor for MLBoostedTreeClassifier(0);
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
  MLBoostedTreeClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLBoostedTreeClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
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
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v50, 0xD000000000000015, ("ierTrainingSessionDelegate" + 0x8000000000000000), 0x6C65646F6D6C6DLL, 0xE700000000000000);
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

uint64_t MLBoostedTreeClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLBoostedTreeClassifier.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLBoostedTreeClassifier.debugDescription.getter()
{
  v1 = v0;
  v27._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v27._object - 1) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLBoostedTreeClassifier(0);
  v6 = v0 + v5[8];
  v27._countAndFlagsBits = MLBoostedTreeClassifier.ModelParameters.description.getter();
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
  v25 = 0xD000000000000022;
  v26 = "BoostedTreeClassifier" + 0x8000000000000000;
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

NSAttributedString MLBoostedTreeClassifier.playgroundDescription.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NSAttributedString();
  v3._countAndFlagsBits = MLBoostedTreeClassifier.debugDescription.getter();
  v3._object = v4;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v3).super.isa;
  v1[3].super.isa = v2;
  v1->super.isa = result.super.isa;
  return result;
}

void MLBoostedTreeClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 20);

  *(v1 + v2) = a1;
}

void (*MLBoostedTreeClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v4;
  return MLActivityClassifier.model.modify;
}

uint64_t MLBoostedTreeClassifier.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLBoostedTreeClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLBoostedTreeClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLBoostedTreeClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLBoostedTreeClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  return outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLBoostedTreeClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLBoostedTreeClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLBoostedTreeClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t static MLBoostedTreeClassifier._defaultSessionParameters.getter()
{
  v1 = v0;
  if (one-time initialization token for _defaultSessionParameters != -1)
  {
    swift_once(&one-time initialization token for _defaultSessionParameters, one-time initialization function for _defaultSessionParameters);
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, static MLBoostedTreeClassifier._defaultSessionParameters);
  return outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  return swift_task_switch(MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:), 0, 0);
}

uint64_t MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)()
{
  v1 = *(v0 + 80);
  v19 = *(v0 + 72);
  v21 = *(v0 + 64);
  v16 = *(v0 + 48);
  v15 = *(v0 + 32);
  v2 = *(v0 + 16);
  v18 = v2;
  v17 = type metadata accessor for MLBoostedTreeClassifier(0);
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
  v12[1] = MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
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
  qmemcpy((v4 + *(v1 + 32)), v3, 0x70uLL);
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
  outlined destroy of MLBoostedTreeClassifier.ModelParameters(*(v0 + 56));
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for AnyTreeClassifierModel);
  v1;
  v9;
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  v8;
  v6 = *(v0 + 104);
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 96);
  v4 = *v2;
  *(*v2 + 104) = v1;
  v5;
  if (v1)
  {
    v6 = MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  else
  {
    *(v4 + 112) = a1;
    v6 = MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v208 = a4;
  _ = a3;
  v7 = v5;
  v206 = v5;
  v219._countAndFlagsBits = a2;
  v218 = v6;
  v224 = a5;
  v219._object = a1;
  v8 = *(*(type metadata accessor for AnyClassificationMetrics(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v193 = &v168;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v190 = &v168;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v194 = &v168;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v191 = &v168;
  v188 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v18 = *(v188 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v186 = &v168;
  v187 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v217 = &v168;
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v184 = &v168;
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyColumn?) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v202 = &v168;
  v199 = type metadata accessor for AnyColumn(0);
  v29 = *(*(v199 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v204 = &v168;
  v32 = alloca(v29);
  v33 = alloca(v29);
  v211 = &v168;
  v34 = alloca(v29);
  v35 = alloca(v29);
  v196 = &v168;
  v36 = *(*(type metadata accessor for AnyTreeClassifier(0) - 8) + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v216 = &v168;
  v226 = type metadata accessor for DataFrame(0);
  v214 = *(v226 - 8);
  v39 = *(v214 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v201 = &v168;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v205 = &v168;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v203 = &v168;
  v46 = alloca(v39);
  v47 = alloca(v39);
  v197 = &v168;
  v209 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v48 = *(*(v209 - 8) + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v227 = &v168;
  v215 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v51 = *(*(v215 - 8) + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v192 = &v168;
  v54 = alloca(v51);
  v55 = alloca(v51);
  v189 = &v168;
  v56 = alloca(v51);
  v57 = alloca(v51);
  v198 = &v168;
  v58 = alloca(v51);
  v59 = alloca(v51);
  v210 = &v168;
  v60 = alloca(v51);
  v61 = alloca(v51);
  v183 = &v168;
  v62 = alloca(v51);
  v63 = alloca(v51);
  v221 = &v168;
  v220 = type metadata accessor for BoostedTreeConfiguration(0);
  v222 = *(v220 - 8);
  v64 = *(v222 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v185 = &v168;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v212 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v228 = *(v212 - 1);
  v69 = *(v228 + 8);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v213 = type metadata accessor for MLBoostedTreeClassifier(0);
  v207 = *(v213 + 9);
  v72 = v7 + v207;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v73 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v74 = *(v73 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(&v168);
  v75 = *(v73 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(&v168);
  (*(v228 + 1))(&v168, v212);
  v76 = v206;
  *(v206 + v207) = 0;
  v77 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v207 = v72;
  swift_storeEnumTagMultiPayload(v72, v77, 1);
  v228 = *(v213 + 10);
  v212 = &v228[v76];
  v78 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v79 = swift_allocError(&type metadata for MLCreateError, v78, 0, 0);
  *v80 = 0xD0000000000000C0;
  *(v80 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v80 + 16) = 0;
  *(v80 + 32) = 0;
  *(v80 + 48) = 0;
  *&v228[v76] = v79;
  v81 = v224;
  v200 = v77;
  swift_storeEnumTagMultiPayload(v212, v77, 2);
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v81, v169);
  BoostedTreeConfiguration.init()();
  BoostedTreeConfiguration.maximumDepth.setter(v170);
  BoostedTreeConfiguration.maximumIterations.setter(v171);
  BoostedTreeConfiguration.minimumLossReduction.setter(v172);
  BoostedTreeConfiguration.minimumChildWeight.setter(v173);
  BoostedTreeConfiguration.randomSeed.setter(v174);
  BoostedTreeConfiguration.learningRate.setter(v175);
  BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v176, v177);
  BoostedTreeConfiguration.rowSubsample.setter(v178);
  v223 = &v168;
  BoostedTreeConfiguration.columnSubsample.setter(v179);
  outlined destroy of MLBoostedTreeClassifier.ModelParameters(v169);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &v181, &demangling cache variable for type metadata for Any?);
  if (!v182)
  {
    BUG();
  }

  v82 = v221;
  v83 = v221 + *(v215 + 48);
  outlined init with take of Any(&v181, v169);
  swift_dynamicCast(v227, v169, &type metadata for Any + 8, v209, 7);
  object = v219._object;
  v85 = v218;
  MLBoostedTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v82, v83, v219._object);
  v228 = v85;
  if (v85)
  {
    _;
    v208;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    (*(v214 + 8))(object, v226);
    outlined destroy of MLActivityClassifier.ModelParameters(v227, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
    v86 = v223;
    v87 = v220;
LABEL_6:
    (*(v222 + 8))(v86, v87);
LABEL_7:
    outlined destroy of MLActivityClassifier.ModelParameters(v207, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v212, type metadata accessor for MLClassifierMetrics);
  }

  v88 = v82;
  v195 = v83;
  outlined destroy of MLActivityClassifier.ModelParameters(v227, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v89 = v82;
  v90 = _;
  v91 = v208;
  v92 = v228;
  v93 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v89, v219._countAndFlagsBits, _, v208);
  v228 = v92;
  v94 = v220;
  if (v92)
  {
    v90;
    v91;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    (*(v214 + 8))(v219._object, v226);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v86 = v223;
    v87 = v94;
    goto LABEL_6;
  }

  v218 = v93;
  v91;
  v96 = v183;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, v183, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v97 = v96 + *(v215 + 48);
  if (__swift_getEnumTagSinglePayload(v97, 1, v226) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v97, &demangling cache variable for type metadata for DataFrame?);
    v227 = *(v214 + 8);
    (v227)(v96, v226);
    goto LABEL_10;
  }

  v108 = v97;
  v109 = v226;
  v110 = v214;
  (*(v214 + 32))(v197, v108, v226);
  v227 = *(v110 + 8);
  (v227)(v96, v109);
  v111 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v111, v180);
  inited[2] = 1;
  inited[3] = 2;
  inited[4] = v219._countAndFlagsBits;
  inited[5] = v90;
  v90;
  v113 = v197;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v114)
  {
    swift_setDeallocating(inited);
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    _;
    v218;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    v115 = v226;
    v116 = v227;
    (v227)(v219._object, v226);
    (v116)(v113, v115);
LABEL_20:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v222 + 8))(v223, v220);
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
  v126._countAndFlagsBits = v219._countAndFlagsBits;
  v126._object = _;
  v127 = v113;
  DataFrame.validateColumnTypes(_:_:context:)(v126, v125, __PAIR128__(0xEE00726569666973, 0x73616C4365657254));
  if (v128)
  {
    _;
    v218;
    v125;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    v129 = v226;
    v130 = v227;
    (v227)(v219._object, v226);
    (v130)(v127, v129);
    goto LABEL_20;
  }

  v228 = 0;
  (v227)(v113, v226);
  v125;
  v90 = _;
LABEL_10:
  v98 = v221;
  v99 = v210;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, v210, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  DataFrame.subscript.getter(v219._countAndFlagsBits, v90);
  v100 = v99;
  v101 = v226;
  v102 = v227;
  (v227)(v100, v226);
  v103 = v98;
  v104 = v198;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v103, v198, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v105 = v184;
  outlined init with take of DataFrame?(v104 + *(v215 + 48), v184);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v105, 1, v101);
  v107 = v102;
  if (EnumTagSinglePayload == 1)
  {
    (v102)(v104, v101);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v105, &demangling cache variable for type metadata for DataFrame?);
    __swift_storeEnumTagSinglePayload(v202, 1, 1, v199);
  }

  else
  {
    v117 = v202;
    v118 = v107;
    DataFrame.subscript.getter(v219._countAndFlagsBits, _);
    (v118)(v105, v101);
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v199);
    (v118)(v198, v101);
  }

  v119 = _;
  v210 = (v210 + *(v215 + 48));
  v120 = v185;
  (*(v222 + 16))(v185, v223, v220);
  v119;
  v121 = v218;
  v218;
  v122 = v228;
  AnyTreeClassifier.init(trainingLabelsColumn:validationLabelsColumn:annotationColumnName:featureColumnNames:configuration:)(v196, v202, v219._countAndFlagsBits, v119, v121, v120);
  if (v122)
  {
    v119;
    v121;
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    (v227)(v219._object, v226);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v222 + 8))(v223, v220);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v210, &demangling cache variable for type metadata for DataFrame?);
    goto LABEL_7;
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v210, &demangling cache variable for type metadata for DataFrame?);
  v123 = v217;
  AnyTreeClassifier.fitted(to:validateOn:eventHandler:)(v221, v195, 0, 0);
  v228 = 0;
  if (!AnalyticsReporter.init()())
  {
    v131 = v221;
    v132 = v189;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, v189, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v133 = v132 + *(v215 + 48);
    v134 = DataFrame.shape.getter(v131);
    (v227)(v132, v226);
    v135 = v134;
    v123 = v217;
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_boostedTreeClassifier, __PAIR128__(("vectorized_features" + 0x8000000000000000), 0xD000000000000015), v135);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v133, &demangling cache variable for type metadata for DataFrame?);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_boostedTreeClassifier, __PAIR128__(("Number of Annotations" + 0x8000000000000000), 0xD000000000000010), *(v216[3] + 16));
  }

  v136 = v213;
  v137 = *(v213 + 6);
  v138 = v206;
  *(v206 + v137) = v219._countAndFlagsBits;
  *(v138 + v137 + 8) = _;
  v208 = v138 + v136[8];
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v224, v208);
  *(v138 + v136[7]) = v218;
  v139 = v186;
  outlined init with copy of MLTrainingSessionParameters(v123, v186, type metadata accessor for AnyTreeClassifierModel);
  v140 = *(v188 + 80);
  v141 = ~*(v188 + 80) & (v140 + 16);
  v142 = swift_allocObject(&unk_394930, v141 + v187, v140 | 7);
  outlined init with take of MLClassifierMetrics(v139, v142 + v141, type metadata accessor for AnyTreeClassifierModel);
  v143 = v228;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v142);
  if (v143)
  {

    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    (v227)(v219._object, v226);
    outlined destroy of MLActivityClassifier.ModelParameters(v217, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v222 + 8))(v223, v220);
    outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for AnyTreeClassifier);
    v218;
    _;
LABEL_27:
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v208);
    goto LABEL_7;
  }

  v145 = v144;

  v146 = *(v213 + 5);
  v213 = v145;
  *(v138 + v146) = v145;
  outlined init with copy of MLTrainingSessionParameters(v217, v138, type metadata accessor for AnyTreeClassifierModel);
  v147 = v221;
  AnyTreeClassifierModel.applied(to:eventHandler:)(v221, 0, 0);
  v228 = 0;
  v148 = v138;
  v149 = *v138;
  v150 = v148[1];
  DataFrame.subscript.getter(v149, v150);
  v219._countAndFlagsBits = v149;
  v209 = v150;
  DataFrame.subscript.getter(v149, v150);
  v151 = v190;
  AnyClassificationMetrics.init(_:_:)(v211, v204);
  v152 = v147;
  v153 = v226;
  (v227)(v203, v226);
  v154 = v191;
  outlined init with take of MLClassifierMetrics(v151, v191, type metadata accessor for AnyClassificationMetrics);
  swift_storeEnumTagMultiPayload(v154, v200, 0);
  outlined assign with take of MLClassifierMetrics(v154, v207);
  v155 = v192;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v152, v192, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v156 = v155 + *(v215 + 48);
  if (__swift_getEnumTagSinglePayload(v156, 1, v153) == 1)
  {
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    v157 = v227;
    (v227)(v219._object, v153);
    outlined destroy of MLActivityClassifier.ModelParameters(v217, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v222 + 8))(v223, v220);
    outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for AnyTreeClassifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v156, &demangling cache variable for type metadata for DataFrame?);
    return (v157)(v155, v153);
  }

  else
  {
    v158 = v205;
    (*(v214 + 32))(v205, v156, v153);
    (v227)(v155, v153);
    v159 = v228;
    AnyTreeClassifierModel.applied(to:eventHandler:)(v158, 0, 0);
    v228 = v159;
    if (v159)
    {
      outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
      v160 = v227;
      (v227)(v219._object, v153);
      (v160)(v158, v153);
      v161 = v206;
      v162 = v221;
      outlined destroy of MLActivityClassifier.ModelParameters(v217, type metadata accessor for AnyTreeClassifierModel);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v162, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      (*(v222 + 8))(v223, v220);
      outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for AnyTreeClassifier);
      outlined destroy of MLActivityClassifier.ModelParameters(v161, type metadata accessor for AnyTreeClassifierModel);
      v218;
      _;

      goto LABEL_27;
    }

    countAndFlagsBits = v219._countAndFlagsBits;
    DataFrame.subscript.getter(v219._countAndFlagsBits, v209);
    v164 = v204;
    DataFrame.subscript.getter(countAndFlagsBits, v209);
    v165 = v193;
    AnyClassificationMetrics.init(_:_:)(v211, v164);
    v166 = v227;
    (v227)(v201, v153);
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(v224);
    (v166)(v219._object, v153);
    (v166)(v205, v153);
    outlined destroy of MLActivityClassifier.ModelParameters(v217, type metadata accessor for AnyTreeClassifierModel);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    (*(v222 + 8))(v223, v220);
    v167 = v194;
    outlined init with take of MLClassifierMetrics(v165, v194, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v167, v200, 0);
    outlined destroy of MLActivityClassifier.ModelParameters(v216, type metadata accessor for AnyTreeClassifier);
    return outlined assign with take of MLClassifierMetrics(v167, v212);
  }
}

uint64_t closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(288);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(trainingData:targetColumn:featureColumns:parameters:);
  return ((&async function pointer to specialized CoreMLExportable.exportAsCoreMLModel() + async function pointer to specialized CoreMLExportable.exportAsCoreMLModel()))();
}

uint64_t MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
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
  outlined init with copy of MLBoostedTreeClassifier.ModelParameters(a5, &v11);
  MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLBoostedTreeClassifier.ModelParameters(a5);
}

uint64_t MLBoostedTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  v78 = v2;
  v96 = a1;
  v3 = v1;
  v90 = v1;
  v89 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v4 = *(*(v89 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v88 = v77;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v87 = v77;
  v9 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v79 = v77;
  v97 = type metadata accessor for AnyTreeClassifier(0);
  v12 = *(*(v97 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v82 = v77;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v93 = v77;
  v86 = *(type metadata accessor for AnyTreeClassifierModel(0) - 8);
  v17 = *(v86 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v83 = v77;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v85 = v77;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v80 = v77;
  v84 = v17;
  v24 = alloca(v17);
  v25 = alloca(v17);
  v94 = v77;
  v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v92 = *(v91 - 8);
  v26 = *(v92 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v29 = type metadata accessor for MLBoostedTreeClassifier(0);
  v95 = *(v29 + 36);
  v30 = v95 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v31 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v32 = *(v31 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v77);
  v33 = *(v31 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v77);
  (*(v92 + 8))(v77, v91);
  v34 = v90;
  *(v90 + v95) = 0;
  v35 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v91 = v30;
  swift_storeEnumTagMultiPayload(v30, v35, 1);
  v95 = v29;
  v36 = *(v29 + 40);
  v37 = v36 + v34;
  v81 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v38 = swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
  *v39 = 0xD0000000000000C0;
  *(v39 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v39 + 16) = 0;
  *(v39 + 32) = 0;
  *(v39 + 48) = 0;
  *(v90 + v36) = v38;
  v40 = v96;
  v92 = v37;
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
      v43 = v97;
      v44 = v93;
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
  v43 = v97;
  v44 = v93;
  if ((v45 & 1) == 0)
  {
    v55 = v81;
    swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
    *v56 = 0xD000000000000042;
    *(v56 + 8) = "ifier\n\nParameters\n" + 0x8000000000000000;
    *(v56 + 16) = 0;
    *(v56 + 32) = 0;
    *(v56 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v55);
    v57 = type metadata accessor for MLCheckpoint;
    v58 = v96;
LABEL_15:
    outlined destroy of MLActivityClassifier.ModelParameters(v58, v57);
    outlined destroy of MLActivityClassifier.ModelParameters(v91, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v92, type metadata accessor for MLClassifierMetrics);
  }

LABEL_9:
  v46 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
  v47 = v79;
  BoostedTreeConfiguration.init()();
  AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v46, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v47);
  v48 = lazy protocol witness table accessor for type AnyTreeClassifier and conformance AnyTreeClassifier();
  v49 = v80;
  v93 = v48;
  v50 = v78;
  UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v96, v43, v48);
  outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for AnyTreeClassifier);
  if (v50)
  {
    v51 = specialized _setUpCast<A, B>(_:)(&_swiftEmptySetSingleton);
    BoostedTreeConfiguration.init()();
    v52 = v47;
    v53 = v82;
    AnyTreeClassifier.init(labels:annotationColumnName:featureColumnNames:configuration:)(v51, 0, 0xE000000000000000, _swiftEmptyArrayStorage, v52);
    v54 = v83;
    UpdatableSupervisedTabularEstimator.readWithOptimizer(from:)(v96, v97, v93);
    outlined destroy of MLActivityClassifier.ModelParameters(v53, type metadata accessor for AnyTreeClassifier);
    v50;
    v59 = v54;
  }

  else
  {
    v59 = v49;
  }

  v97 = 0;
  v60 = v94;
  outlined init with take of MLClassifierMetrics(v59, v94, type metadata accessor for AnyTreeClassifierModel);
  v61 = v85;
  outlined init with copy of MLTrainingSessionParameters(v60, v85, type metadata accessor for AnyTreeClassifierModel);
  v62 = *(v86 + 80);
  v63 = ~*(v86 + 80) & (v62 + 16);
  v64 = swift_allocObject(&unk_394958, v63 + v84, v62 | 7);
  outlined init with take of MLClassifierMetrics(v61, v64 + v63, type metadata accessor for AnyTreeClassifierModel);
  v65 = v97;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLBoostedTreeClassifier.init(checkpoint:), v64);
  v67 = v66;

  if (v65)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v96, type metadata accessor for MLCheckpoint);
    v57 = type metadata accessor for AnyTreeClassifierModel;
    v58 = v94;
    goto LABEL_15;
  }

  v69 = v90;
  *(v90 + *(v95 + 20)) = v67;
  outlined init with copy of MLTrainingSessionParameters(v94, v69, type metadata accessor for AnyTreeClassifierModel);
  v70 = v87;
  *v87 = 0;
  *(v70 + 16) = 256;
  swift_storeEnumTagMultiPayload(v70, v89, 0);
  v71 = *(v95 + 32);
  *(v69 + v71 + 16) = 0;
  *(v69 + v71) = 0;
  *(v69 + v71 + 32) = 6;
  v72 = _mm_loadh_ps(&qword_33D880);
  *(v69 + v71 + 40) = 10;
  *(v69 + v71 + 48) = v72;
  *(v69 + v71 + 64) = 42;
  *(v69 + v71 + 72) = 0x3FD3333333333333;
  *(v69 + v71 + 80) = 0;
  v97 = v69 + v71;
  *(v69 + v71 + 88) = 1;
  *(v69 + v71 + 96) = xmmword_343970;
  v73 = v88;
  outlined init with copy of MLTrainingSessionParameters(v70, v88, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v77[3] = v89;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
  outlined init with take of MLClassifierMetrics(v73, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  outlined assign with take of Any?(v77, v97);
  outlined destroy of MLActivityClassifier.ModelParameters(v70, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  v75 = v95;
  v76 = *(v95 + 24);
  *(v69 + v76) = 0;
  *(v69 + v76 + 8) = 0xE000000000000000;
  outlined destroy of MLActivityClassifier.ModelParameters(v96, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v94, type metadata accessor for AnyTreeClassifierModel);
  result = *(v75 + 28);
  *(v69 + result) = _swiftEmptyArrayStorage;
  return result;
}

void *static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v13 = static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v19, v25, v24, v23, v22, v21);
  v14 = v7;
  if (v6)
  {
    return (*(v8 + 8))(&v19, v7);
  }

  v16 = v13;
  (*(v8 + 8))(&v19, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeClassifier>);
  v18 = swift_allocObject(v17, *(v17 + 48), *(v17 + 52));
  return specialized MLJob.init(_:)(v18, v16);
}

uint64_t static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v12 = static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(&v14, a2, v19, v18, v17, v16);
  (*(v20 + 8))(&v14, v7);
  return v12;
}

void *static MLBoostedTreeClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

void *static MLBoostedTreeClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(a1, a2, a3, a4, a5, a6);
  if (!v6)
  {
    v8 = result;
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLBoostedTreeClassifier>);
    v10 = swift_allocObject(v9, *(v9 + 48), *(v9 + 52));
    return specialized MLJob.init(_:)(v10, v8);
  }

  return result;
}

uint64_t static MLBoostedTreeClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v71 = v6;
  v66 = a6;
  v63 = a5;
  v64 = a4;
  v58 = a3;
  v59 = a2;
  v68 = a1;
  v7 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v62 = &v44;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v60 = &v44;
  v12 = *(*(type metadata accessor for BoostedTreeConfiguration(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v61 = &v44;
  v15 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v19 = *(*(v70 - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v69 = &v44;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v65 = &v44;
  v24 = alloca(v19);
  v25 = alloca(v19);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v63, &v56, &demangling cache variable for type metadata for Any?);
  if (!v57)
  {
    BUG();
  }

  v26 = &v44 + *(v70 + 48);
  v67 = &v44;
  outlined init with take of Any(&v56, &v44);
  v27 = v67;
  swift_dynamicCast(&v44, &v44, &type metadata for Any + 8, v15, 7);
  v28 = v71;
  MLBoostedTreeClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v27, v26, v68);
  outlined destroy of MLActivityClassifier.ModelParameters(&v44, type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData);
  if (!v28)
  {
    v68 = 0;
    v29 = v65;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, v65, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v30 = v70;
    v71 = v29 + *(v70 + 48);
    v31 = v27;
    v32 = v69;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31, v69, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    v70 = v32 + *(v30 + 48);
    outlined init with copy of MLBoostedTreeClassifier.ModelParameters(v63, &v44);
    v64;
    v33 = v58;
    v58;
    v34 = v61;
    BoostedTreeConfiguration.init()();
    BoostedTreeConfiguration.maximumDepth.setter(v46);
    BoostedTreeConfiguration.maximumIterations.setter(v47);
    BoostedTreeConfiguration.minimumLossReduction.setter(v48);
    BoostedTreeConfiguration.minimumChildWeight.setter(v49);
    BoostedTreeConfiguration.randomSeed.setter(v50);
    BoostedTreeConfiguration.learningRate.setter(v51);
    BoostedTreeConfiguration.earlyStoppingIterationCount.setter(v52, v53);
    BoostedTreeConfiguration.rowSubsample.setter(v54);
    BoostedTreeConfiguration.columnSubsample.setter(v55);
    outlined destroy of MLBoostedTreeClassifier.ModelParameters(&v44);
    v35 = v60;
    outlined init with copy of MLTrainingSessionParameters(v66, v60, type metadata accessor for MLTrainingSessionParameters);
    v27 = type metadata accessor for TreeClassifierTrainingSessionDelegate(0);
    swift_allocObject(v27, *(v27 + 48), *(v27 + 52));
    v36 = v68;
    v37 = TreeClassifierTrainingSessionDelegate.init(trainingData:validationData:targetColumn:featureColumns:configuration:sessionParameters:)(v65, v70, v59, v33, v64, v34, v35);
    if (v36)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
      v38 = type metadata accessor for DataFrame(0);
      (*(*(v38 - 8) + 8))(v69, v38);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71, &demangling cache variable for type metadata for DataFrame?);
    }

    else
    {
      v39 = v37;
      v40 = type metadata accessor for DataFrame(0);
      (*(*(v40 - 8) + 8))(v69, v40);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v71, &demangling cache variable for type metadata for DataFrame?);
      v45 = v27;
      v46 = &protocol witness table for TreeClassifierTrainingSessionDelegate;
      *&v44 = v39;
      v41 = v62;
      outlined init with copy of MLTrainingSessionParameters(v66, v62, type metadata accessor for MLTrainingSessionParameters);
      v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>);
      swift_allocObject(v42, *(v42 + 48), *(v42 + 52));

      v27 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v44, v41, 5);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    }
  }

  return v27;
}

uint64_t static MLBoostedTreeClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
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
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 5);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLBoostedTreeClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
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
    v18 = swift_allocObject(&unk_394990, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:), v18);
  }
}

uint64_t closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

uint64_t closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC23MLBoostedTreeClassifierV_Tt1g503_s8b4ML23fgh80V12handleResult33_CD9A6EBB503908D6C1216C5F49822BDBLL_7session7fulfillys0G0Oyyts5D65_pG_AA17MLTrainingSessionCyACGyAIyACsAJ_pGctFZyyYacfU_ACyYaKXEfU_AC0gh8TrainingZ8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLBoostedTreeClassifier, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t MLBoostedTreeClassifier.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2[43] = a2;
  v2[42] = a1;
  v3 = type metadata accessor for AnyClassificationMetrics(0);
  v2[44] = v3;
  v4 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[45] = swift_task_alloc(v4);
  v2[46] = swift_task_alloc(v4);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyClassificationMetrics?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[47] = swift_task_alloc(v5);
  v2[48] = swift_task_alloc(v5);
  v6 = type metadata accessor for MLClassifierMetrics(0);
  v2[49] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v2[50] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLBoostedTreeClassifier(0);
  v2[51] = v8;
  v2[52] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?);
  v2[53] = swift_task_alloc((*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BoostedTreeConfiguration(0);
  v2[54] = v10;
  v11 = *(v10 - 8);
  v2[55] = v11;
  v2[56] = swift_task_alloc((*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  v2[57] = swift_task_alloc((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v2[58] = v13;
  v2[59] = swift_task_alloc((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLBoostedTreeClassifier.init(delegate:), 0, 0);
}

uint64_t MLBoostedTreeClassifier.init(delegate:)()
{
  v1 = v0[58];
  v2 = v0[57];
  v3 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingParameters + v0[43];
  swift_beginAccess(v3, v0 + 30, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v3, v2, &demangling cache variable for type metadata for PersistentParametersForTreeBasedMethods?);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    BUG();
  }

  v4 = v0[59];
  v5 = v0[58];
  v6 = v0[56];
  v18 = v0[55];
  v15 = v0[54];
  v16 = v0[53];
  v7 = v0[43];
  v14 = v0[50];
  outlined init with take of MLClassifierMetrics(v0[57], v4, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v18 + 16))(v6, v4 + v5[8], v15);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4 + v5[5], v16, &demangling cache variable for type metadata for DataFrame?);
  MLBoostedTreeClassifier.ModelParameters.init(configuration:validation:)(v6, v16);
  v8 = v5[6];
  v17 = *(v4 + v8);
  v19 = *(v4 + v8 + 8);
  v9 = *(v4 + v5[7]);
  v10 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_model + v7;
  swift_beginAccess(v10, v0 + 33, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v14, &demangling cache variable for type metadata for AnyTreeClassifierModel?);
  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v11) == 1)
  {
    BUG();
  }

  outlined init with copy of MLBoostedTreeClassifier.ModelParameters((v0 + 2), (v0 + 16));
  v19;
  v9;
  v12 = swift_task_alloc(128);
  v0[60] = v12;
  *v12 = v0;
  v12[1] = MLBoostedTreeClassifier.init(delegate:);
  return MLBoostedTreeClassifier.init(_:targetColumn:featureColumns:parameters:)(v0[52], v0[50], v17, v19, v9, (v0 + 16));
}

{
  v2 = *(*v1 + 480);
  *(*v1 + 488) = v0;
  v2;
  if (v0)
  {
    v3 = MLBoostedTreeClassifier.init(delegate:);
  }

  else
  {
    v3 = MLBoostedTreeClassifier.init(delegate:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);
  outlined init with take of MLClassifierMetrics(*(v0 + 416), *(v0 + 336), type metadata accessor for MLBoostedTreeClassifier);
  v4 = OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_trainingMetrics + v3;
  swift_beginAccess(v4, v0 + 288, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, v1, &demangling cache variable for type metadata for AnyClassificationMetrics?);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 472);
  v22 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 384);
  v29 = *(v0 + 376);
  v26 = *(v0 + 352);
  v24 = *(v0 + 336);
  v8 = *(v0 + 344);
  outlined destroy of MLBoostedTreeClassifier.ModelParameters(v0 + 16);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for PersistentParametersForTreeBasedMethods);
  outlined init with take of MLClassifierMetrics(v7, v6, type metadata accessor for AnyClassificationMetrics);
  v9 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v6, v9, 0);
  outlined assign with take of MLClassifierMetrics(v6, v24 + *(v22 + 36));
  v10 = v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics;
  swift_beginAccess(v8 + OBJC_IVAR____TtC8CreateML37TreeClassifierTrainingSessionDelegate_validationMetrics, v0 + 312, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, v29, &demangling cache variable for type metadata for AnyClassificationMetrics?);

  if (__swift_getEnumTagSinglePayload(v29, 1, v26) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 376), &demangling cache variable for type metadata for AnyClassificationMetrics?);
  }

  else
  {
    v30 = *(v0 + 408);
    v11 = *(v0 + 368);
    v12 = *(v0 + 336);
    v27 = v9;
    v13 = *(v0 + 360);
    outlined init with take of MLClassifierMetrics(*(v0 + 376), v11, type metadata accessor for AnyClassificationMetrics);
    outlined init with take of MLClassifierMetrics(v11, v13, type metadata accessor for AnyClassificationMetrics);
    v14 = v12 + *(v30 + 40);
    outlined destroy of MLActivityClassifier.ModelParameters(v14, type metadata accessor for MLClassifierMetrics);
    outlined init with take of MLClassifierMetrics(v13, v14, type metadata accessor for AnyClassificationMetrics);
    swift_storeEnumTagMultiPayload(v14, v27, 0);
  }

  v15 = *(v0 + 456);
  v16 = *(v0 + 448);
  v17 = *(v0 + 424);
  v18 = *(v0 + 416);
  v20 = *(v0 + 400);
  v25 = *(v0 + 392);
  v23 = *(v0 + 384);
  v21 = *(v0 + 376);
  v28 = *(v0 + 360);
  v31 = *(v0 + 368);
  *(v0 + 472);
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
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 448);
  v14 = *(v0 + 424);
  v13 = *(v0 + 416);
  v12 = *(v0 + 400);
  v11 = *(v0 + 392);
  v10 = *(v0 + 384);
  v9 = *(v0 + 376);
  v8 = *(v0 + 368);
  v4 = *(v0 + 344);
  v7 = *(v0 + 360);

  outlined destroy of MLBoostedTreeClassifier.ModelParameters(v0 + 16);
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
  v5 = *(v0 + 488);
  return (*(v0 + 8))();
}

uint64_t partial apply for closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLBoostedTreeClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t partial apply for closure #1 in MLBoostedTreeClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for AnyTreeClassifierModel(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLRandomForestClassifier.init(checkpoint:)(a1);
}

id sub_276717()
{
  v1 = v0;
  result = MLBoostedTreeClassifier.model.getter();
  *v1 = result;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
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

    v10 = type metadata accessor for AnyTreeClassifierModel(0);
    v11 = *(v10 + 24);
    v12 = type metadata accessor for BaseTreeClassifierModel(0);
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
    v13 = *(v10 + 28);
    v14 = *(a2 + v13);
    v15 = *(a2 + v13 + 8);
    *(a1 + v13) = v14;
    *(a1 + v13 + 8) = v15;
    v16 = a3[5];
    v17 = *(a2 + v16);
    *(a1 + v16) = v17;
    v18 = a3[6];
    *(a1 + v18) = *(a2 + v18);
    v19 = a1;
    v20 = *(a2 + v18 + 8);
    *(v19 + v18 + 8) = v20;
    v21 = a3[7];
    v70 = *(a2 + v21);
    *(v19 + v21) = v70;
    v22 = a3[8];
    v63 = v19;
    v23 = v19 + v22;
    v24 = a2 + v22;
    v25 = *(a2 + v22 + 24);
    v14;
    v17;
    v20;
    v70;
    if (v25)
    {
      *(v23 + 3) = v25;
      (**(v25 - 8))(v23, v24, v25);
    }

    else
    {
      v26 = *v24;
      *(v23 + 1) = *(v24 + 1);
      *v23 = v26;
    }

    *(v23 + 2) = *(v24 + 2);
    *(v23 + 3) = *(v24 + 3);
    *(v23 + 4) = *(v24 + 4);
    *(v23 + 10) = *(v24 + 10);
    v23[88] = v24[88];
    *(v23 + 6) = *(v24 + 6);
    v27 = a3;
    v28 = a3[9];
    v9 = v63;
    v29 = (v63 + v28);
    v30 = a2 + v28;
    v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v30, v71);
    if (EnumCaseMultiPayload == 2)
    {
      v37 = v29;
      v38 = *v30;
      swift_errorRetain(*v30);
      *v37 = v38;
      v29 = v37;
      EnumCaseMultiPayload = 2;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v29 = *v30;
      v64 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v32 = *(v64 + 20);
      v62 = v29 + v32;
      v33 = type metadata accessor for DataFrame(0);
      v72 = v29;
      v34 = *(*(v33 - 8) + 16);
      v35 = &v30[v32];
      v9 = v63;
      v34(v62, v35, v33);
      v36 = v33;
      v27 = a3;
      v34(&v72[*(v64 + 24)], &v30[*(v64 + 24)], v36);
      v29 = v72;
    }

    else
    {
      v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v39 = swift_getEnumCaseMultiPayload(v30, v73);
      v65 = v39 == 1;
      v40 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v39 == 1)
      {
        v40 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
      (*(*(v41 - 8) + 16))(v29, v30, v41);
      swift_storeEnumTagMultiPayload(v29, v73, v65);
    }

    swift_storeEnumTagMultiPayload(v29, v71, EnumCaseMultiPayload);
    v42 = v27[10];
    v43 = (v9 + v42);
    v44 = (a2 + v42);
    v45 = swift_getEnumCaseMultiPayload(a2 + v42, v71);
    if (v45 == 2)
    {
      v50 = *v44;
      swift_errorRetain(v50);
      *v43 = v50;
      v61 = 2;
    }

    else
    {
      if (v45 != 1)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v55 = swift_getEnumCaseMultiPayload(v44, v54);
        v56 = v44;
        v57 = v55 == 1;
        v58 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v55 == 1)
        {
          v58 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v59 = __swift_instantiateConcreteTypeFromMangledName(v58);
        (*(*(v59 - 8) + 16))(v43, v56, v59);
        swift_storeEnumTagMultiPayload(v43, v54, v57);
        v52 = v43;
        v53 = v71;
        v51 = 0;
        goto LABEL_24;
      }

      *v43 = *v44;
      v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v46 = *(v69 + 20);
      v67 = v43 + v46;
      v47 = type metadata accessor for DataFrame(0);
      v48 = *(*(v47 - 8) + 16);
      v49 = v44 + v46;
      v9 = v63;
      v48(v67, v49, v47);
      v48(v43 + *(v69 + 24), v44 + *(v69 + 24), v47);
      v61 = 1;
    }

    v51 = v61;
    v52 = v43;
    v53 = v71;
LABEL_24:
    swift_storeEnumTagMultiPayload(v52, v53, v51);
    return v9;
  }

  v8 = *a2;
  *a1 = *a2;
  v9 = (v8 + ((v4 + 16) & ~v4));

  return v9;
}

void *initializeWithCopy for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
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

  v7 = type metadata accessor for AnyTreeClassifierModel(0);
  v8 = *(v7 + 24);
  v9 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = *(v7 + 28);
  v11 = *(a2 + v10);
  v12 = *(a2 + v10 + 8);
  *(a1 + v10) = v11;
  *(a1 + v10 + 8) = v12;
  v13 = a3[5];
  v14 = *(a2 + v13);
  *(a1 + v13) = v14;
  v15 = a3[6];
  *(a1 + v15) = *(a2 + v15);
  v16 = a1;
  v17 = *(a2 + v15 + 8);
  *(v16 + v15 + 8) = v17;
  v18 = a3[7];
  v56 = *(a2 + v18);
  *(v16 + v18) = v56;
  v19 = a3[8];
  v53 = v16;
  v20 = v16 + v19;
  v21 = a2 + v19;
  v22 = *(a2 + v19 + 24);
  v11;
  v14;
  v17;
  v56;
  if (v22)
  {
    *(v20 + 3) = v22;
    (**(v22 - 8))(v20, v21, v22);
  }

  else
  {
    v23 = *v21;
    *(v20 + 1) = *(v21 + 1);
    *v20 = v23;
  }

  *(v20 + 2) = *(v21 + 2);
  *(v20 + 3) = *(v21 + 3);
  *(v20 + 4) = *(v21 + 4);
  *(v20 + 10) = *(v21 + 10);
  v20[88] = v21[88];
  *(v20 + 6) = *(v21 + 6);
  v24 = a3[9];
  v25 = v53 + v24;
  v26 = a2 + v24;
  v57 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v26, v57);
  if (EnumCaseMultiPayload == 2)
  {
    v32 = *v26;
    swift_errorRetain(*v26);
    *v25 = v32;
  }

  else if (EnumCaseMultiPayload == 1)
  {
    *v25 = *v26;
    v54 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v28 = *(v54 + 20);
    v52 = &v25[v28];
    v29 = type metadata accessor for DataFrame(0);
    v30 = &v26[v28];
    v31 = *(*(v29 - 8) + 16);
    v31(v52, v30, v29);
    v31(&v25[*(v54 + 24)], &v26[*(v54 + 24)], v29);
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v33 = swift_getEnumCaseMultiPayload(v26, v55);
    v34 = v33 == 1;
    v35 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v33 == 1)
    {
      v35 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v36 = __swift_instantiateConcreteTypeFromMangledName(v35);
    (*(*(v36 - 8) + 16))(v25, v26, v36);
    swift_storeEnumTagMultiPayload(v25, v55, v34);
  }

  swift_storeEnumTagMultiPayload(v25, v57, EnumCaseMultiPayload);
  v37 = a3[10];
  v38 = v53 + v37;
  v39 = a2 + v37;
  v40 = swift_getEnumCaseMultiPayload(a2 + v37, v57);
  if (v40 == 2)
  {
    v45 = *v39;
    swift_errorRetain(v45);
    *v38 = v45;
  }

  else if (v40 == 1)
  {
    *v38 = *v39;
    v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v41 = *(v59 + 20);
    v61 = &v38[v41];
    v42 = type metadata accessor for DataFrame(0);
    v43 = &v39[v41];
    v44 = *(*(v42 - 8) + 16);
    v44(v61, v43, v42);
    v44(&v38[*(v59 + 24)], &v39[*(v59 + 24)], v42);
  }

  else
  {
    v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v47 = swift_getEnumCaseMultiPayload(v39, v46);
    v62 = v39;
    v48 = v47 == 1;
    v49 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v47 == 1)
    {
      v49 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v50 = __swift_instantiateConcreteTypeFromMangledName(v49);
    (*(*(v50 - 8) + 16))(v38, v62, v50);
    swift_storeEnumTagMultiPayload(v38, v46, v48);
  }

  swift_storeEnumTagMultiPayload(v38, v57, v40);
  return v53;
}

void *assignWithCopy for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6;
  v7 = a1 + 2;
  v8 = a2 + 2;
  v9 = a1[2];
  v10 = a2[2];
  if (v9)
  {
    if (v10)
    {
      a1[2] = v10;
      v10;
      v9;
      a1[3] = a2[3];
      v11 = a2[4];
      v12 = a1[4];
      a1[4] = v11;
      v11;
      v12;
    }

    else
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v7 = *v8;
      a1[4] = a2[4];
    }
  }

  else if (v10)
  {
    a1[2] = v10;
    a1[3] = a2[3];
    v13 = a2[4];
    a1[4] = v13;
    v10;
    v13;
  }

  else
  {
    a1[4] = a2[4];
    *v7 = *v8;
  }

  v14 = type metadata accessor for AnyTreeClassifierModel(0);
  v15 = *(v14 + 24);
  v16 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = *(v14 + 28);
  v18 = *(a2 + v17);
  v19 = *(a2 + v17 + 8);
  v20 = *(a1 + v17);
  *(a1 + v17) = v18;
  *(a1 + v17 + 8) = v19;
  v18;
  v20;
  v21 = a3[5];
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v22;

  v24 = a3[6];
  *(a1 + v24) = *(a2 + v24);
  v25 = *(a2 + v24 + 8);
  v26 = *(a1 + v24 + 8);
  *(a1 + v24 + 8) = v25;
  v25;
  v26;
  v27 = a3[7];
  v28 = *(a2 + v27);
  v29 = *(a1 + v27);
  *(a1 + v27) = v28;
  v28;
  v29;
  v30 = a3[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30 + 24);
  if (*(a1 + v30 + 24))
  {
    v34 = (a1 + v30);
    if (v33)
    {
      __swift_assign_boxed_opaque_existential_0(v34, (a2 + v30));
      goto LABEL_15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  else if (v33)
  {
    *(v31 + 3) = v33;
    (**(v33 - 8))(v31, v32);
    goto LABEL_15;
  }

  v35 = *v32;
  *(v31 + 1) = *(v32 + 1);
  *v31 = v35;
LABEL_15:
  *(v31 + 4) = *(v32 + 4);
  *(v31 + 5) = *(v32 + 5);
  *(v31 + 6) = *(v32 + 6);
  *(v31 + 7) = *(v32 + 7);
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 9) = *(v32 + 9);
  *(v31 + 10) = *(v32 + 10);
  v31[88] = v32[88];
  *(v31 + 12) = *(v32 + 12);
  *(v31 + 13) = *(v32 + 13);
  if (a1 != a2)
  {
    v36 = a3[9];
    v37 = (a1 + v36);
    v38 = (a2 + v36);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics.Contents);
    v39 = type metadata accessor for MLClassifierMetrics.Contents(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v38, v39);
    v70 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload == 2)
    {
      v43 = *v38;
      swift_errorRetain(v43);
      *v37 = v43;
    }

    else if (EnumCaseMultiPayload == 1)
    {
      *v37 = *v38;
      v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v65 = v39;
      v41 = *(v63 + 20);
      v61 = v37 + v41;
      v62 = type metadata accessor for DataFrame(0);
      v73 = *(*(v62 - 8) + 16);
      v42 = v38 + v41;
      v39 = v65;
      v73(v61, v42, v62);
      v73(v37 + *(v63 + 24), v38 + *(v63 + 24), v62);
    }

    else
    {
      v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v44 = swift_getEnumCaseMultiPayload(v38, v66);
      v74 = v44 == 1;
      v45 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v44 == 1)
      {
        v45 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v46 = __swift_instantiateConcreteTypeFromMangledName(v45);
      (*(*(v46 - 8) + 16))(v37, v38, v46);
      swift_storeEnumTagMultiPayload(v37, v66, v74);
    }

    swift_storeEnumTagMultiPayload(v37, v39, v70);
    v47 = a3[10];
    v48 = (a1 + v47);
    v49 = (a2 + v47);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
    v50 = swift_getEnumCaseMultiPayload(v49, v39);
    if (v50 == 2)
    {
      v55 = *v49;
      swift_errorRetain(v55);
      *v48 = v55;
    }

    else
    {
      v69 = v50;
      if (v50 == 1)
      {
        *v48 = *v49;
        v75 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v51 = *(v75 + 20);
        v64 = v48 + v51;
        v67 = v39;
        v52 = type metadata accessor for DataFrame(0);
        v71 = *(*(v52 - 8) + 16);
        v53 = v49 + v51;
        v50 = 1;
        v71(v64, v53, v52);
        v54 = v52;
        v39 = v67;
        v71(v48 + *(v75 + 24), v49 + *(v75 + 24), v54);
      }

      else
      {
        v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v56 = swift_getEnumCaseMultiPayload(v49, v72);
        v57 = v56 == 1;
        v58 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v56 == 1)
        {
          v58 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v59 = __swift_instantiateConcreteTypeFromMangledName(v58);
        (*(*(v59 - 8) + 16))(v48, v49, v59);
        swift_storeEnumTagMultiPayload(v48, v72, v57);
        v50 = v69;
      }
    }

    swift_storeEnumTagMultiPayload(v48, v39, v50);
  }

  return a1;
}

uint64_t initializeWithTake for MLBoostedTreeClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
  v6 = *(v5 + 24);
  v7 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = *(v5 + 28);
  *(a1 + v8 + 8) = *(a2 + v8 + 8);
  *(a1 + v8) = *(a2 + v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  qmemcpy((a1 + a3[8]), (a2 + a3[8]), 0x70uLL);
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

void *assignWithTake for MLBoostedTreeClassifier(void *a1, void *a2, int *a3)
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
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>((a1 + 2), &demangling cache variable for type metadata for FeatureVectorizer<Float>.Transformer);
      *v6 = *v7;
      a1[4] = a2[4];
    }
  }

  else
  {
    a1[4] = a2[4];
    *v6 = *v7;
  }

  v11 = type metadata accessor for AnyTreeClassifierModel(0);
  v12 = *(v11 + 24);
  v13 = type metadata accessor for BaseTreeClassifierModel(0);
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  v14 = *(v11 + 28);
  v15 = *(a2 + v14 + 8);
  v16 = *(a1 + v14);
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = v15;
  v16;
  v17 = a3[5];
  v18 = *(a1 + v17);
  *(a1 + v17) = *(a2 + v17);

  v19 = a3[6];
  *(a1 + v19) = *(a2 + v19);
  v20 = *(a1 + v19 + 8);
  *(a1 + v19 + 8) = *(a2 + v19 + 8);
  v20;
  v21 = a3[7];
  v22 = *(a1 + v21);
  *(a1 + v21) = *(a2 + v21);
  v22;
  v23 = a3[8];
  v24 = a1 + v23;
  v25 = a2 + v23;
  if (*(a1 + v23 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v23));
  }

  v26 = *v25;
  *(v24 + 1) = *(v25 + 1);
  *v24 = v26;
  *(v24 + 2) = *(v25 + 2);
  *(v24 + 3) = *(v25 + 3);
  *(v24 + 8) = *(v25 + 8);
  *(v24 + 9) = *(v25 + 9);
  *(v24 + 10) = *(v25 + 10);
  v24[88] = v25[88];
  *(v24 + 6) = *(v25 + 6);
  if (a1 == a2)
  {
    return a1;
  }

  v27 = a3[9];
  v28 = a1 + v27;
  v29 = a2 + v27;
  outlined destroy of MLActivityClassifier.ModelParameters(v28, type metadata accessor for MLClassifierMetrics.Contents);
  v64 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v29, v64);
  if (EnumCaseMultiPayload == 1)
  {
    *v28 = *v29;
    v66 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v39 = *(v66 + 20);
    v60 = &v28[v39];
    v61 = type metadata accessor for DataFrame(0);
    v40 = &v29[v39];
    v41 = *(*(v61 - 8) + 32);
    v41(v60, v40, v61);
    v41(&v28[*(v66 + 24)], &v29[*(v66 + 24)], v61);
    v38 = 1;
    v35 = v28;
    v36 = v64;
    v37 = v64;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v42 = v29;
      v36 = v64;
      memcpy(v28, v42, *(*(v64 - 8) + 64));
      goto LABEL_17;
    }

    v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v31 = swift_getEnumCaseMultiPayload(v29, v65);
    v32 = v31 == 1;
    v33 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v31 == 1)
    {
      v33 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v34 = __swift_instantiateConcreteTypeFromMangledName(v33);
    (*(*(v34 - 8) + 32))(v28, v29, v34);
    swift_storeEnumTagMultiPayload(v28, v65, v32);
    v35 = v28;
    v36 = v64;
    v37 = v64;
    v38 = 0;
  }

  swift_storeEnumTagMultiPayload(v35, v37, v38);
LABEL_17:
  v43 = a3[10];
  v44 = a1 + v43;
  v45 = a2 + v43;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v43, type metadata accessor for MLClassifierMetrics.Contents);
  v46 = swift_getEnumCaseMultiPayload(v45, v36);
  if (v46 == 1)
  {
    *v44 = *v45;
    v63 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v55 = *(v63 + 20);
    v67 = &v44[v55];
    v56 = type metadata accessor for DataFrame(0);
    v57 = &v45[v55];
    v58 = *(*(v56 - 8) + 32);
    v58(v67, v57, v56);
    v58(&v44[*(v63 + 24)], &v45[*(v63 + 24)], v56);
    v54 = 1;
    v52 = v44;
    v53 = v64;
  }

  else
  {
    if (v46)
    {
      memcpy(v44, v45, *(*(v36 - 8) + 64));
      return a1;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v48 = swift_getEnumCaseMultiPayload(v45, v47);
    v49 = v48 == 1;
    v50 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v48 == 1)
    {
      v50 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v51 = __swift_instantiateConcreteTypeFromMangledName(v50);
    (*(*(v51 - 8) + 32))(v44, v45, v51);
    swift_storeEnumTagMultiPayload(v44, v47, v49);
    v52 = v44;
    v53 = v64;
    v54 = 0;
  }

  swift_storeEnumTagMultiPayload(v52, v53, v54);
  return a1;
}

uint64_t sub_277AFE(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for AnyTreeClassifierModel(0);
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

uint64_t sub_277B8B(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for AnyTreeClassifierModel(0);
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

uint64_t type metadata completion function for MLBoostedTreeClassifier(uint64_t a1)
{
  result = type metadata accessor for AnyTreeClassifierModel(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_347E48;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_347E60;
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

uint64_t sub_277CB0()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)(uint64_t a1)
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
  return closure #1 in static MLBoostedTreeClassifier.handleResult(_:session:fulfill:)(a1, v3, v4, v8, v9, v5);
}

void *specialized _ArrayProtocol.filter(_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  v46 = type metadata accessor for URL(0);
  v43 = *(v46 - 8);
  v5 = *(v43 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v36 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v32 = &v30;
  v10 = alloca(v5);
  v11 = alloca(v5);
  v45 = &v30;
  v34 = *(a1 + 16);
  v41 = _swiftEmptyArrayStorage;
  v40 = a1;
  v44 = a2;
LABEL_2:
  while (v4 != v34)
  {
    if (v4 >= *(v3 + 16))
    {
      BUG();
    }

    v12 = *(v43 + 16);
    v13 = *(v43 + 72);
    v33 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v35 = v13;
    v39 = v4 + 1;
    v38 = v12;
    v12(v45, v33 + v3 + v4 * v13, v46);
    if (v2[2])
    {
      v14 = v2[5];
      v15 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &protocol conformance descriptor for URL);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)(v14, v46, v15);
      v2 = v44;
      v31 = ~(-1 << *(v44 + 32));
      for (i = v31 & v16; ; i = v31 & (i + 1))
      {
        v18 = v2[(i >> 6) + 7];
        if (!_bittest64(&v18, i))
        {
          break;
        }

        v19 = v32;
        v20 = v46;
        v38(v32, v2[6] + v35 * i, v46);
        v21 = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, &protocol conformance descriptor for URL);
        LOBYTE(v37) = dispatch thunk of static Equatable.== infix(_:_:)(v19, v45, v20, v21);
        (*(v43 + 8))(v19, v20);
        if (v37)
        {
          v22 = *(v43 + 32);
          v22(v36, v45, v46);
          v23 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v41);
          v25 = v23;
          v42 = v23;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1);
            v25 = v42;
          }

          v3 = v40;
          v2 = v44;
          v4 = v39;
          v26 = v25[2];
          v27 = v25[3];
          v28 = v26 + 1;
          if (v27 >> 1 <= v26)
          {
            v37 = v25[2];
            v38 = v22;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v27 >= 2, v28, 1);
            v26 = v37;
            v22 = v38;
            v2 = v44;
            v25 = v42;
          }

          v25[2] = v28;
          v41 = v25;
          v22((v25 + v33 + v35 * v26), v36, v46);
          goto LABEL_2;
        }
      }
    }

    (*(v43 + 8))(v45, v46);
    v3 = v40;
    v4 = v39;
  }

  v2;
  v3;
  return v41;
}

uint64_t static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __m128 a6)
{
  v260 = v7;
  v259 = a5;
  v253._countAndFlagsBits = a4;
  named = a3;
  v251._countAndFlagsBits = a2;
  v267 = a1;
  v249 = v6;
  v263 = type metadata accessor for DataFrame(0);
  v261 = *(v263 - 8);
  v8 = *(v261 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v256 = &v222;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v258 = &v222;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v266._countAndFlagsBits = &v222;
  v15 = type metadata accessor for MLObjectDetector.DataSource(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v266._object = type metadata accessor for URL(0);
  v19 = *(v266._object - 1);
  v20 = *(v19 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v246 = &v222;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v255 = &v222;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v27 = alloca(v20);
  v28 = alloca(v20);
  *&v264 = &v222;
  v29 = alloca(v20);
  v30 = alloca(v20);
  v265._countAndFlagsBits = &v222;
  v31 = alloca(v20);
  v32 = alloca(v20);
  v265._object = &v222;
  outlined init with copy of MLTrainingSessionParameters(v267, &v222, type metadata accessor for MLObjectDetector.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v222, v15))
  {
    case 0u:
      v257 = &v222;
      (*(v19 + 32))(v264, &v222, v266._object, 0xE000000000000000);
      URL.resolvingSymlinksInPath()();
      countAndFlagsBits = v265._countAndFlagsBits;
      URL.resolvingSymlinksInPath()();
      v34 = v19;
      v35 = *(v19 + 8);
      object = v266._object;
      v37 = countAndFlagsBits;
      v38 = v35;
      v35(v264, v266._object);
      goto LABEL_8;
    case 1u:
      v57 = &v222 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL)) + 48);
      v262 = v19;
      v58 = *(v19 + 32);
      object = v266._object;
      v59 = v58;
      v58(v264, &v222, v266._object);
      v59(&v222, v57, object);
      URL.resolvingSymlinksInPath()();
      v37 = v265._countAndFlagsBits;
      URL.resolvingSymlinksInPath()();
      v34 = v262;
      v60 = *(v262 + 8);
      v257 = &v222;
      v38 = v60;
      v60(&v222, object);
      v38(v264, object);
LABEL_8:
      v61 = v260;
      v62 = static _FileUtilities.getReadableJsonFilesInDirectory(at:)(v37);
      v267 = v61;
      if (v61)
      {
        v38(v37, object);
        return (v38)(v265._object, object);
      }

      v64 = v62;
      v65 = *(v62 + 16);
      if (v65 >= 2)
      {
        *&v229 = 0;
        *(&v229 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v66._object = "with object annotations." + 0x8000000000000000;
        v66._countAndFlagsBits = 0xD000000000000037;
        String.append(_:)(v66);
        v64;
        *&__src[0] = v65;
        v67 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v69 = v68;
        v66._countAndFlagsBits = v67;
        v66._object = v68;
        String.append(_:)(v66);
        v69;
        v66._countAndFlagsBits = 46;
        v66._object = 0xE100000000000000;
        String.append(_:)(v66);
        v264 = v229;
        v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
        *v71 = v264;
        *(v71 + 16) = 0;
        *(v71 + 32) = 0;
        *(v71 + 48) = 0;
LABEL_26:
        swift_willThrow(&type metadata for MLCreateError, v70);
        v107 = v266._object;
        v38(v265._countAndFlagsBits, v266._object);
        return (v38)(v265._object, v107);
      }

      if (!v65)
      {
        v62;
        v70 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v70, 0, 0);
        *v106 = 0xD000000000000058;
        *(v106 + 8) = " specified data source." + 0x8000000000000000;
        *(v106 + 16) = 0;
        *(v106 + 32) = 0;
        *(v106 + 48) = 0;
        goto LABEL_26;
      }

      v94 = v34;
      v95 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v262 = v94;
      v260 = *(v94 + 16);
      v260(v255, v95 + v62, v266._object);
      v64;
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
      LOBYTE(v229) = 1;
      *(&v229 + 1) = 44;
      v230 = 0xE100000000000000;
      v231 = 0;
      v232 = 0xE000000000000000;
      v233 = 92;
      v234 = 0xE100000000000000;
      v235 = 1;
      v236 = 34;
      v237 = 0xE100000000000000;
      v238 = 1;
      v239 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v240 = 10;
      v241 = 0xE100000000000000;
      v242 = 0;
      v243 = 1;
      v244 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v229, 34);
      memcpy(__dst, __src, sizeof(__dst));
      v96 = v267;
      MLDataTable.init(contentsOf:options:)(v255, __dst);
      if (v96)
      {
        v97 = *(v262 + 8);
        v98 = v266._object;
        v97(v265._countAndFlagsBits, v266._object);
        return (v97)(v265._object, v98);
      }

      v261 = v95;
      v108 = named;
      if (named)
      {
        v109._countAndFlagsBits = v251._countAndFlagsBits;
        v110 = 0;
        if (v251._countAndFlagsBits ^ 0x6C69666567616D69 | named ^ 0xED0000656D616E65 && (_stringCompareWithSmolCheck(_:_:expecting:)(v251._countAndFlagsBits, named, 0x6C69666567616D69, 0xED0000656D616E65, 0) & 1) == 0)
        {
          v267 = v96;
          MLDataTable.willMutate()();
          v109._object = v108;
          v111._countAndFlagsBits = 0x6C69666567616D69;
          v111._object = 0xED0000656D616E65;
          MLDataTable.renameImpl(named:to:)(v109, v111);
          if (!v269)
          {
            v112 = v268;
            outlined copy of Result<_DataTable, Error>(v268, 0);
            _DataTable.columnNamesDidChange()();
            outlined consume of Result<_DataTable, Error>(v112, 0);
          }

          v110 = v267;
        }
      }

      else
      {
        v114 = v269;
        __dst[0] = v268;
        LOBYTE(__dst[1]) = v269 & 1;
        LOBYTE(v251._object) = 2;
        v115 = v268;
        outlined copy of Result<_DataTable, Error>(v268, v269);
        v116 = static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(__dst, v265._object, &v251._object, 0x6C69666567616D69, 0xED0000656D616E65, partial apply for implicit closure #1 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:), 0);
        v267 = v117;
        v118 = v115;
        v119 = v116;
        outlined consume of Result<_DataTable, Error>(v118, v114);
        MLDataTable.willMutate()();
        v120._countAndFlagsBits = v119;
        v121 = v267;
        v120._object = v267;
        v122._countAndFlagsBits = 0x6C69666567616D69;
        v122._object = 0xED0000656D616E65;
        MLDataTable.renameImpl(named:to:)(v120, v122);
        if (!v269)
        {
          v123 = v268;
          outlined copy of Result<_DataTable, Error>(v268, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v123, 0);
        }

        v121;
        v110 = 0;
      }

      v124 = v259;
      if (v259)
      {
        v267 = v110;
        if (v253._countAndFlagsBits ^ 0x697461746F6E6E61 | v259 ^ 0xEA00000000006E6FLL)
        {
          if ((_stringCompareWithSmolCheck(_:_:expecting:)(v253._countAndFlagsBits, v259, 0x697461746F6E6E61, 0xEA00000000006E6FLL, 0) & 1) == 0)
          {
            MLDataTable.willMutate()();
            v125._countAndFlagsBits = v253._countAndFlagsBits;
            v125._object = v124;
            v126._countAndFlagsBits = 0x697461746F6E6E61;
            v126._object = 0xEA00000000006E6FLL;
            MLDataTable.renameImpl(named:to:)(v125, v126);
            if (!v269)
            {
              v127 = v268;
              outlined copy of Result<_DataTable, Error>(v268, 0);
              _DataTable.columnNamesDidChange()();
              outlined consume of Result<_DataTable, Error>(v127, 0);
            }
          }
        }
      }

      else
      {
        v133 = v268;
        v134 = v269;
        __dst[0] = v268;
        LOBYTE(__dst[1]) = v269 & 1;
        LOBYTE(v251._object) = 3;
        outlined copy of Result<_DataTable, Error>(v268, v269);
        v135 = static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(__dst, v265._object, &v251._object, 0x697461746F6E6E61, 0xEA00000000006E6FLL, partial apply for implicit closure #2 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:), 0);
        if (v110)
        {
          outlined consume of Result<_DataTable, Error>(v133, v134);
          goto LABEL_52;
        }

        v142 = v136;
        v267 = 0;
        v143 = v133;
        v144 = v135;
        outlined consume of Result<_DataTable, Error>(v143, v134);
        MLDataTable.willMutate()();
        v145._countAndFlagsBits = v144;
        v145._object = v142;
        v146._countAndFlagsBits = 0x697461746F6E6E61;
        v146._object = 0xEA00000000006E6FLL;
        MLDataTable.renameImpl(named:to:)(v145, v146);
        if (!v269)
        {
          v147 = v268;
          outlined copy of Result<_DataTable, Error>(v268, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v147, 0);
        }

        v142;
      }

      v148 = v268;
      v149 = v269;
      v258 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      inited = swift_initStackObject(v258, &v222);
      *(inited + 16) = 1;
      *(inited + 24) = 2;
      strcpy((inited + 32), "imagefilename");
      *(inited + 46) = -4864;
      __dst[0] = v148;
      LOBYTE(v255) = v149 & 1;
      LOBYTE(__dst[1]) = v149 & 1;
      v266._countAndFlagsBits = v148;
      LODWORD(v263) = v149;
      outlined copy of Result<_DataTable, Error>(v148, v149);
      v151 = v267;
      static _ValidationUtilities.validateTableFormat(table:context:columns:)(__dst, 0x6C69466567616D49, 0xED0000656D614E65, inited);
      if (v151)
      {
        v152 = v266._countAndFlagsBits;
        v267 = v151;
        inited;
        outlined consume of Result<_DataTable, Error>(v152, v263);
        v155 = *(v262 + 8);
        v156 = v266._object;
        v155(v265._countAndFlagsBits, v266._object);
        v155(v265._object, v156);
        return outlined consume of Result<_DataTable, Error>(v268, v269);
      }

      v256 = inited;
      __dst[0] = v266._countAndFlagsBits;
      v153 = v255;
      LOBYTE(__dst[1]) = v255;
      v154 = swift_allocObject(v258, 48, 7);
      v154[2] = 1;
      v154[3] = 2;
      v154[4] = 0x697461746F6E6E61;
      v154[5] = 0xEA00000000006E6FLL;
      static _ValidationUtilities.validateTableFormat(table:context:columns:)(__dst, 0x697461746F6E6E41, 0xEA00000000006E6FLL, v154);
      swift_setDeallocating(v154);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      outlined consume of Result<_DataTable, Error>(v266._countAndFlagsBits, v263);
      swift_setDeallocating(v256);
      v157 = (specialized _ContiguousArrayStorage.__deallocating_deinit)();
      v247 = static _ImageUtilities.getImageURLs(at:)(v265._object, v157);
      v267 = 0;
      __dst[0] = v266._countAndFlagsBits;
      LOBYTE(__dst[1]) = v153;
      v158._countAndFlagsBits = 0x6C69666567616D69;
      v158._object = 0xED0000656D616E65;
      MLDataTable.subscript.getter(v158);
      v159 = v251._object;
      if (v252)
      {
        outlined consume of Result<_DataTable, Error>(v251._object, 1);
        v270 = 6;
        v160 = 0;
        v254 = 0;
        v253._object = 0;
      }

      else
      {

        v160 = 0;
        _UntypedColumn.valueAtIndex(index:)(0, v157);
        outlined consume of Result<_DataTable, Error>(v159, 0);
        outlined consume of Result<_DataTable, Error>(v159, 0);
        v161 = __dst[1];
        v253._object = __dst[1];
        v254 = __dst[0];
        if (LOBYTE(__dst[2]) == 2)
        {
          v160 = __dst[0];
          __dst[1];
          v270 = 2;
          v162 = v161;
          goto LABEL_67;
        }

        v270 = __dst[2];
      }

      v162 = 0xE000000000000000;
LABEL_67:
      __dst[0] = v160;
      __dst[1] = v162;
      v251._object = &stru_20 + 15;
      v252 = 0xE100000000000000;
      v163 = v162;
      v259 = lazy protocol witness table accessor for type String and conformance String();
      v164 = StringProtocol.components<A>(separatedBy:)(&v251._object, &type metadata for String, &type metadata for String, v259, v259);
      v163;
      v251._countAndFlagsBits = *(v164 + 16);
      v164;
      v165 = v247;
      Kind = v247[1].Kind;
      if (Kind)
      {
        __dst[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, Kind, 0);
        v167 = __dst[0];
        v168 = (v165 + v261);
        v261 = *(v262 + 72);
        v263 = v168;
        v266._countAndFlagsBits = Kind;
        v169 = Kind;
        v170 = v264;
        do
        {
          v256 = v169;
          v258 = v168;
          v171 = v168;
          v172 = v266._object;
          v260(v170, v171, v266._object);
          URL.resolvingSymlinksInPath()();
          named = URL.path.getter(v170);
          v253._countAndFlagsBits = v173;
          v174 = *(v262 + 8);
          (v174)(v257, v172);
          v255 = v174;
          (v174)(v170, v172);
          __dst[0] = v167;
          v175 = *(v167 + 16);
          if (*(v167 + 24) >> 1 <= v175)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(*(v167 + 24) >= 2uLL, v175 + 1, 1);
            v167 = __dst[0];
          }

          *(v167 + 16) = v175 + 1;
          v176 = 16 * v175;
          *(v167 + v176 + 32) = named;
          *(v167 + v176 + 40) = v253._countAndFlagsBits;
          v168 = (v258 + v261);
          v169 = (v256 - 1);
          v170 = v264;
        }

        while (v256 != (&dword_0 + 1));
        v258 = v167;
        v248 = _swiftEmptyArrayStorage;
        v177 = v266._countAndFlagsBits;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v266._countAndFlagsBits, 0);
        v178 = v248;
        v179 = v260;
        v180 = v263;
        do
        {
          v266._countAndFlagsBits = v177;
          v181 = v246;
          v263 = v180;
          v179(v246, v180, v266._object);
          v182 = URL.path.getter(v181);
          v184 = v183;
          __dst[0] = v182;
          __dst[1] = v183;
          v251._object = &stru_20 + 15;
          v252 = 0xE100000000000000;
          v185 = StringProtocol.components<A>(separatedBy:)(&v251._object, &type metadata for String, &type metadata for String, v259, v259);
          v184;
          v186 = *(v185 + 16);
          v187 = 2 * v186 + 1;
          v188 = v186 < v251._countAndFlagsBits;
          v189 = v186 - v251._countAndFlagsBits;
          v190 = 0;
          if (!v188)
          {
            v190 = v189;
          }

          __dst[0] = v185;
          __dst[1] = v185 + 32;
          __dst[2] = v190;
          __dst[3] = v187;
          v191 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ArraySlice<String>);
          v192 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, &demangling cache variable for type metadata for ArraySlice<String>, &protocol conformance descriptor for ArraySlice<A>);
          v193 = BidirectionalCollection<>.joined(separator:)(47, 0xE100000000000000, v191, v192);
          *&v264 = v194;
          v185;
          (v255)(v246, v266._object);
          v248 = v178;
          v195 = v178[2];
          if (v178[3] >> 1 <= v195)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v178[3] >= 2uLL, v195 + 1, 1);
            v178 = v248;
          }

          v178[2] = v195 + 1;
          v196 = 2 * v195;
          v178[v196 + 4] = v193;
          v178[v196 + 5] = v264;
          v180 = v261 + v263;
          v177 = v266._countAndFlagsBits - 1;
          v179 = v260;
        }

        while (v266._countAndFlagsBits != 1);
        *&v264 = v178;
        v247;
        v197 = v258;
      }

      else
      {
        v247;
        v197 = _swiftEmptyArrayStorage;
        *&v264 = _swiftEmptyArrayStorage;
      }

      v198 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
      v199 = swift_allocObject(v198, 96, 7);
      *(v199 + 16) = 2;
      *(v199 + 24) = 4;
      *(v199 + 32) = 0x7461506567616D69;
      *(v199 + 40) = 0xE900000000000068;
      __dst[0] = v197;
      v200 = alloca(24);
      v201 = alloca(32);
      v224 = __dst;
      *(v199 + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(v199 + 56) = v202 & 1;
      __dst[0];
      strcpy((v199 + 64), "imagefilename");
      *(v199 + 78) = -4864;
      __dst[0] = v264;
      v203 = alloca(24);
      v204 = alloca(32);
      v224 = __dst;
      *(v199 + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      *(v199 + 88) = v205 & 1;
      __dst[0];
      v206 = Dictionary.init(dictionaryLiteral:)(v199, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
      v207 = v267;
      _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v206);
      if (!v207)
      {
        v267 = 0;
        v208 = __dst[0];
        v209 = LOBYTE(__dst[1]);
        v210 = v268;
        v266._countAndFlagsBits = v268;
        v211 = v269;
        __dst[0] = 0x72656E6E69;
        __dst[1] = 0xE500000000000000;
        LODWORD(v263) = v269;
        outlined copy of Result<_DataTable, Error>(v268, v269);
        outlined copy of Result<_DataTable, Error>(v208, v209);
        v212 = specialized binaryDo<A, B, C>(_:_:_:)(v210, v211, v208, v209, &outlined read-only object #0 of static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:), __dst, v157);
        LOBYTE(v210) = v213;
        *&v264 = v208;
        LODWORD(v260) = v209;
        outlined consume of Result<_DataTable, Error>(v208, v209);
        v214 = v266._countAndFlagsBits;
        LOBYTE(v209) = v263;
        outlined consume of Result<_DataTable, Error>(v266._countAndFlagsBits, v263);
        outlined consume of Result<_DataTable, Error>(v214, v209);
        v268 = v212;
        LOBYTE(v214) = v210;
        LOBYTE(v269) = v210 & 1;
        __dst[0] = v212;
        LOBYTE(__dst[1]) = v210 & 1;
        outlined copy of Result<_DataTable, Error>(v212, v210);
        outlined copy of Result<_DataTable, Error>(v212, v210);
        v215 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(__dst[0], __dst[1]);
        outlined consume of Result<_DataTable, Error>(v212, v214);
        if (v215)
        {
          outlined consume of Result<_DataTable, Error>(v264, v260);
          outlined consume of MLDataValue(v254, v253._object, v270);
          v216 = *(v262 + 8);
          v217 = v266._object;
          v216(v265._countAndFlagsBits, v266._object);
          v216(v265._object, v217);
          result = v268;
          v218 = v269;
          v219 = v249;
          *v249 = v268;
          *(v219 + 8) = v218;
          return result;
        }

        v220 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v220, 0, 0);
        *v221 = 0xD000000000000026;
        *(v221 + 8) = "llowing error state: " + 0x8000000000000000;
        *(v221 + 16) = 0;
        *(v221 + 32) = 0;
        *(v221 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v220);
        outlined consume of Result<_DataTable, Error>(v264, v260);
      }

      outlined consume of MLDataValue(v254, v253._object, v270);
LABEL_52:
      v137 = *(v262 + 8);
      v138 = v266._object;
      v137(v265._countAndFlagsBits, v266._object);
      v137(v265._object, v138);
      v46 = v268;
      v47 = v269;
      return outlined consume of Result<_DataTable, Error>(v46, v47);
    case 2u:
      v39 = v222;
      v40 = v225;
      v41 = v227;
      if (v223 == 1)
      {
        v266._object = v222;
        swift_errorRetain(v222);
        v41;
        v40;
        *&v229 = 0;
        *(&v229 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(87);
        v42._object = " required columns." + 0x8000000000000000;
        v42._countAndFlagsBits = 0xD000000000000055;
        String.append(_:)(v42);
        v43 = v266._object;
        *&__src[0] = v266._object;
        v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
        _print_unlocked<A, B>(_:_:)(__src, &v229, v44, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v264 = v229;
        v42._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v42._object, 0, 0);
        *v45 = v264;
        *(v45 + 16) = 0;
        *(v45 + 32) = 0;
        *(v45 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v42._object);
        outlined consume of Result<_DataTable, Error>(v43, 1);
        v46 = v43;
        v47 = 1;
        return outlined consume of Result<_DataTable, Error>(v46, v47);
      }

      *&v264 = v227;
      v72 = v224;
      v266._countAndFlagsBits = v226;
      outlined copy of Result<_DataTable, Error>(v222, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v39, 0);
      v265._countAndFlagsBits = v72;
      *&v229 = v72;
      v265._object = v40;
      *(&v229 + 1) = v40;
      v73 = alloca(24);
      v74 = alloca(32);
      v224 = &v229;
      v75 = v260;
      LOBYTE(v72) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v222, *&__src[0]);
      v267 = v75;

      if ((v72 & 1) == 0)
      {
        goto LABEL_19;
      }

      outlined copy of Result<_DataTable, Error>(v39, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v39, 0);
      *&v229 = v266._countAndFlagsBits;
      *(&v229 + 1) = v264;
      v76 = alloca(24);
      v77 = alloca(32);
      v224 = &v229;
      v78 = v267;
      v79 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v222, *&__src[0]);
      v267 = v78;

      if ((v79 & 1) == 0)
      {
LABEL_19:
        v264;
        v265._object;
        v92 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v92, 0, 0);
        *v93 = 0xD000000000000022;
        *(v93 + 8) = "aining checkpoint." + 0x8000000000000000;
        *(v93 + 16) = 0;
        *(v93 + 32) = 0;
        *(v93 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v92);
        v46 = v39;
        v47 = 0;
        return outlined consume of Result<_DataTable, Error>(v46, v47);
      }

      v80 = v39;
      *&v229 = v39;
      BYTE8(v229) = 0;
      v81 = v265._countAndFlagsBits;
      v82 = v265._object;
      v266._object = v80;
      if (!(v265._countAndFlagsBits ^ 0x6C69666567616D69 | v265._object ^ 0xED0000656D616E65))
      {
        outlined copy of Result<_DataTable, Error>(v80, 0);
LABEL_16:
        v83 = v82;
        v84 = 0;
        v83;
        goto LABEL_45;
      }

      v113 = _stringCompareWithSmolCheck(_:_:expecting:)(v265._countAndFlagsBits, v265._object, 0x6C69666567616D69, 0xED0000656D616E65, 0);
      outlined copy of Result<_DataTable, Error>(v80, 0);
      if (v113)
      {
        v82;
        v84 = 0;
      }

      else
      {
        MLDataTable.willMutate()();
        v128._countAndFlagsBits = 0x7461506567616D69;
        v128._object = 0xE900000000000068;
        v129._countAndFlagsBits = v81;
        v129._object = v82;
        MLDataTable.renameImpl(named:to:)(v129, v128);
        if (!BYTE8(v229))
        {
          v139 = v229;
          outlined copy of Result<_DataTable, Error>(v229, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v139, 0);
          goto LABEL_16;
        }

        v82;
        v84 = 1;
      }

LABEL_45:
      v130 = v264;
      if (v266._countAndFlagsBits ^ 0x697461746F6E6E61 | v264 ^ 0xEA00000000006E6FLL && (_stringCompareWithSmolCheck(_:_:expecting:)(v266._countAndFlagsBits, v264, 0x697461746F6E6E61, 0xEA00000000006E6FLL, 0) & 1) == 0)
      {
        MLDataTable.willMutate()();
        v131._countAndFlagsBits = v266._countAndFlagsBits;
        v131._object = v130;
        v132._countAndFlagsBits = 0x697461746F6E6E61;
        v132._object = 0xEA00000000006E6FLL;
        MLDataTable.renameImpl(named:to:)(v131, v132);
        if (BYTE8(v229))
        {
          outlined consume of Result<_DataTable, Error>(v266._object, 0);
          v130;
          v84 = 1;
        }

        else
        {
          v140 = v229;
          v84 = 0;
          outlined copy of Result<_DataTable, Error>(v229, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v140, 0);
          outlined consume of Result<_DataTable, Error>(v266._object, 0);
          v130;
        }
      }

      else
      {
        outlined consume of Result<_DataTable, Error>(v266._object, 0);
        v130;
      }

      result = v229;
      v141 = v249;
      *v249 = v229;
      *(v141 + 8) = v84;
      return result;
    case 3u:
      v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      v49 = *(v48 + 48);
      v50 = *(&v222 + v49);
      v51 = *(&v222 + v49 + 8);
      v52 = *(v48 + 64);
      v266._object = *(&v222 + v52);
      *&v264 = *(&v222 + v52 + 8);
      (*(v261 + 32))(v266._countAndFlagsBits, &v222, v263);
      v53._countAndFlagsBits = v50;
      v53._object = v51;
      v54 = DataFrame.indexOfColumn(_:)(v53);
      value = v54.value;
      is_nil = v54.is_nil;
      v51;
      if (is_nil)
      {
        v264;
LABEL_18:
        v90 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v90, 0, 0);
        *v91 = 0xD000000000000022;
        *(v91 + 8) = "aining checkpoint." + 0x8000000000000000;
        *(v91 + 16) = 0;
        *(v91 + 32) = 0;
        *(v91 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v90);
        return (*(v261 + 8))(v266._countAndFlagsBits, v263);
      }

      v85._countAndFlagsBits = v266._object;
      v86 = v264;
      v85._object = v264;
      v87 = DataFrame.indexOfColumn(_:)(v85);
      v88 = v87.value;
      v89 = v87.is_nil;
      v86;
      if (v89)
      {
        goto LABEL_18;
      }

      *&v264 = *(v261 + 16);
      v99 = v258;
      (v264)(v258, v266._countAndFlagsBits, v263);
      v100 = DataFrame.subscript.modify(&v229, value);
      AnyColumn.name.setter(0x7461506567616D69, 0xE900000000000068);
      v100(&v229, 0);
      v101 = DataFrame.subscript.modify(&v229, v88);
      AnyColumn.name.setter(0x697461746F6E6E61, 0xEA00000000006E6FLL);
      v102 = v99;
      v103 = v263;
      v101(&v229, 0);
      v104 = v256;
      *a6.i64 = (v264)(v256, v102, v103);
      MLDataTable.init(_:convertArraysToShapedArrays:)(v104, 0, a6);
      v105 = *(v261 + 8);
      v105(v102, v103);
      return (v105)(v266._countAndFlagsBits, v103);
  }
}

uint64_t static _ImageUtilities.validateOneImageURL(from:)()
{
  URL._bridgeToObjectiveC()(v0);
  v2 = v1;
  v3 = 0;
  v4 = CGImageSourceCreateWithURL(v1, 0);

  if (v4)
  {
    v3 = 0;
    v5 = CGImageSourceCopyPropertiesAtIndex(v4, 0, 0);

    if (v5)
    {

      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

void *static _ImageUtilities.validateImageURLs(from:)(uint64_t a1)
{
  v49 = type metadata accessor for URL(0);
  v1 = *(v49 - 8);
  v2 = *(v1 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v44 = &v35;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v7 = &v35;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v40 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = a1 + v40;
  v42 = *(v1 + 16);
  v48 = *(v1 + 72);
  v38 = "es or has incorrect format." + 0x8000000000000000;
  v41 = a1;
  a1;
  v50 = _swiftEmptyArrayStorage;
  v43 = v1;
  v39 = &v35;
  do
  {
    v47 = v8;
    v10 = v42(v7, v9, v49);
    URL._bridgeToObjectiveC()(v10);
    v12 = v11;
    v13 = CGImageSourceCreateWithURL(v11, 0);

    if (v13 && (v14 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0), v13, v14))
    {

      v42(v44, v7, v49);
      if (swift_isUniquelyReferenced_nonNull_native(v50))
      {
        v15 = v47;
        v16 = v50;
      }

      else
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
        v15 = v47;
      }

      v17 = v16[2];
      v18 = v48;
      if (v16[3] >> 1 <= v17)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v16[3] >= 2uLL, v17 + 1, 1, v16);
        v18 = v48;
        v16 = v33;
      }

      v16[2] = v17 + 1;
      v50 = v16;
      v19 = v16 + v40 + v18 * v17;
      v20 = v18;
      v21 = v43;
      (*(v43 + 32))(v19, v44, v49);
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      v36 = v9;
      _StringGuts.grow(_:)(30);
      v22 = v46;
      v46;
      v45 = 0xD00000000000001BLL;
      v46 = v38;
      v23._countAndFlagsBits = URL.path.getter(v22);
      object = v23._object;
      String.append(_:)(v23);
      object;
      v25._countAndFlagsBits = 46;
      v25._object = 0xE100000000000000;
      v9 = v36;
      String.append(_:)(v25);
      v26 = v45;
      v37 = v45;
      v27 = v46;
      v51 = static os_log_type_t.info.getter();
      v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v29 = swift_allocObject(v28, 64, 7);
      v29[2] = 1;
      v29[3] = 2;
      v29[7] = &type metadata for String;
      v29[4] = v26;
      v29[5] = v27;
      v27;
      print(_:separator:terminator:)(v29, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v29;
      type metadata accessor for OS_os_log();
      v30 = static OS_os_log.default.getter(0);
      v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v32 = swift_allocObject(v31, 72, 7);
      v32[2] = 1;
      v32[3] = 2;
      v32[7] = &type metadata for String;
      v32[8] = lazy protocol witness table accessor for type String and conformance String();
      v32[4] = v37;
      v32[5] = v27;
      v27;
      os_log(_:dso:log:type:_:)("%@\n", 3, 2, &dword_0, v30, v51, v32);
      v27;
      v25._countAndFlagsBits = v30;
      v7 = v39;

      v32;
      v21 = v43;
      v15 = v47;
      v20 = v48;
    }

    (*(v21 + 8))(v7, v49);
    v9 += v20;
    v8 = v15 - 1;
  }

  while (v8);
  v41;
  return v50;
}

uint64_t static _ImageUtilities.getImageURLsAndLabels(from:)(uint64_t a1)
{
  v97 = v1;
  v92 = type metadata accessor for UTType(0);
  v95 = *(v92 - 8);
  v2 = *(v95 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v96 = &v88;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v94 = &v88;
  *&v91 = type metadata accessor for URL(0);
  v93 = *(v91 - 8);
  v7 = v93[8];
  v8 = alloca(v7);
  v9 = alloca(v7);
  v89 = &v88;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = &v88;
  v13 = type metadata accessor for MLImageClassifier.DataSource(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  outlined init with copy of MLTrainingSessionParameters(a1, &v88, type metadata accessor for MLImageClassifier.DataSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(&v88, v13);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return v88;
    }

    v12 = v89;
    v18 = v93;
    v19 = (v93[4])(v89, &v88, v91);
    v20 = v96;
    static UTType.image.getter(v19);
    v21 = v97;
    v22 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v12, v20);
    if (v21)
    {
      v97 = v21;
      (*(v95 + 8))(v20, v92);
      v23 = v12;
      v24 = v91;
      return (*(v18 + 8))(v23, v24);
    }

    v31 = v22;
    v32 = v20;
  }

  else
  {
    v25 = v91;
    v18 = v93;
    v26 = (v93[4])(&v88, &v88, v91);
    v27 = v94;
    static UTType.image.getter(v26);
    v28 = v97;
    v29 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(&v88, v27);
    if (v28)
    {
      v97 = v28;
      (*(v95 + 8))(v94, v92);
      v23 = &v88;
      v24 = v25;
      return (*(v18 + 8))(v23, v24);
    }

    v31 = v29;
    v32 = v94;
  }

  (*(v95 + 8))(v32, v92);
  (*(v18 + 8))(v12, v91);
  v31;
  v33 = specialized Sequence.flatMap<A>(_:)(v31);
  v95 = 0;
  v31;
  v34 = static _ImageUtilities.validateImageURLs(from:)(v33);
  v33;
  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation3URLV_SayAFGTt0g5(v34);
  v36 = 1 << *(v31 + 32);
  v37 = ~(-1 << v36);
  if (v36 >= 64)
  {
    v37 = -1;
  }

  v96 = v35;
  v94 = v31;
  v38 = *(v31 + 64) & v37;
  v97 = (v36 + 63) >> 6;
  v39 = _swiftEmptyDictionarySingleton;
  *&v91 = 0;
  while (1)
  {
    if (v38)
    {
      v40 = v94;
      v41 = v91;
      goto LABEL_31;
    }

    v42 = v91 + 1;
    v40 = v94;
    if (__OFADD__(1, v91))
    {
      BUG();
    }

    if (v42 >= v97)
    {
      goto LABEL_36;
    }

    v38 = *&v94[8 * v42 + 64];
    if (v38)
    {
      v41 = v91 + 1;
      goto LABEL_31;
    }

    v43 = v91 + 2;
    if (v91 + 2 >= v97)
    {
      goto LABEL_36;
    }

    v38 = *&v94[8 * v42 + 72];
    if (!v38)
    {
      v43 = v91 + 3;
      if (v91 + 3 >= v97)
      {
        goto LABEL_36;
      }

      v38 = *&v94[8 * v42 + 80];
      if (!v38)
      {
        v43 = v91 + 4;
        if (v91 + 4 >= v97)
        {
          goto LABEL_36;
        }

        v38 = *&v94[8 * v42 + 88];
        if (!v38)
        {
          v43 = v91 + 5;
          if (v91 + 5 >= v97)
          {
            goto LABEL_36;
          }

          v38 = *&v94[8 * v42 + 96];
          if (!v38)
          {
            v43 = v91 + 6;
            if (v91 + 6 >= v97)
            {
              goto LABEL_36;
            }

            v38 = *&v94[8 * v42 + 104];
            if (!v38)
            {
              break;
            }
          }
        }
      }
    }

    v41 = v43;
LABEL_31:
    _BitScanForward64(&v44, v38);
    v92 = (v38 - 1) & v38;
    *&v91 = v41;
    v45 = v44 | (v41 << 6);
    v46 = *(*(v40 + 7) + 8 * v45);
    v45 *= 16;
    v47 = *(v40 + 6);
    v93 = *(v47 + v45);
    v48 = *(v47 + v45 + 8);
    v49 = v96;
    v96;
    v48;
    v46;
    v50 = v95;
    v51 = specialized _ArrayProtocol.filter(_:)(v46, v49);
    v95 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v39);
    *&v90 = v39;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v93, v48, isUniquelyReferenced_nonNull_native);
    v48;
    v38 = v92;
    v39 = v90;
  }

  v53 = v91 + 7;
  while (v53 < v97)
  {
    v38 = *&v94[8 * v53++ + 64];
    if (v38)
    {
      v41 = v53 - 1;
      goto LABEL_31;
    }
  }

LABEL_36:
  v96;

  v39;
  v54 = v95;
  v55 = specialized _NativeDictionary.filter(_:)(v39);
  v97 = v54;
  v89 = v39;
  v39;
  v56 = 1 << *(v55 + 32);
  v57 = ~(-1 << v56);
  if (v56 >= 64)
  {
    v57 = -1;
  }

  v58 = v55[8] & v57;
  v96 = ((v56 + 63) >> 6);
  v94 = "tted text file " + 0x8000000000000000;
  v93 = v55;

  v59 = 0;
  while (2)
  {
    if (v58)
    {
      v60 = v59;
      v61 = v93;
LABEL_59:
      _BitScanForward64(&v64, v58);
      *&v91 = (v58 - 1) & v58;
      v65 = *(v61 + 48);
      v95 = v60;
      v66 = (v60 << 10) | (16 * v64);
      v67 = *(v65 + v66);
      v68 = *(v65 + v66 + 8);
      *&v90 = 0;
      *(&v90 + 1) = 0xE000000000000000;
      v68;
      _StringGuts.grow(_:)(29);
      *(&v90 + 1);
      *&v90 = 0xD000000000000019;
      *(&v90 + 1) = v94;
      v69._countAndFlagsBits = v67;
      v69._object = v68;
      String.append(_:)(v69);
      v68;
      v69._countAndFlagsBits = 11815;
      v69._object = 0xE200000000000000;
      String.append(_:)(v69);
      v70 = *(&v90 + 1);
      v71 = v90;
      LOBYTE(v92) = static os_log_type_t.error.getter();
      v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any>);
      v73 = swift_allocObject(v72, 64, 7);
      *(v73 + 16) = 1;
      *(v73 + 24) = 2;
      *(v73 + 56) = &type metadata for String;
      *(v73 + 32) = __PAIR128__(v70, v71);
      v70;
      print(_:separator:terminator:)(v73, 32, 0xE100000000000000, 10, 0xE100000000000000);
      v73;
      type metadata accessor for OS_os_log();
      v74 = static OS_os_log.default.getter(0);
      v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v76 = swift_allocObject(v75, 72, 7);
      *(v76 + 16) = 1;
      *(v76 + 24) = 2;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v76 + 32) = __PAIR128__(v70, v71);
      v70;
      os_log(_:dso:log:type:_:)("%@\n", 3, 2, &dword_0, v74, v92, v76);
      v69._countAndFlagsBits = v70;
      v58 = v91;
      v69._countAndFlagsBits;

      v76;
      v59 = v95;
      continue;
    }

    break;
  }

  v62 = v59 + 1;
  v61 = v93;
  if (__OFADD__(1, v59))
  {
    BUG();
  }

  if (v62 >= v96)
  {
    goto LABEL_60;
  }

  v58 = v93[v62 + 8];
  if (v58)
  {
    v60 = v59 + 1;
    goto LABEL_59;
  }

  v60 = v59 + 2;
  if (v59 + 2 >= v96)
  {
    goto LABEL_60;
  }

  v58 = v93[v62 + 9];
  if (v58)
  {
    goto LABEL_59;
  }

  v60 = v59 + 3;
  if (v59 + 3 >= v96)
  {
    goto LABEL_60;
  }

  v58 = v93[v62 + 10];
  if (v58)
  {
    goto LABEL_59;
  }

  v60 = v59 + 4;
  if (v59 + 4 >= v96)
  {
    goto LABEL_60;
  }

  v58 = v93[v62 + 11];
  if (v58)
  {
    goto LABEL_59;
  }

  v60 = v59 + 5;
  if (v59 + 5 >= v96)
  {
    goto LABEL_60;
  }

  v58 = v93[v62 + 12];
  if (v58)
  {
    goto LABEL_59;
  }

  v60 = v59 + 6;
  if (v59 + 6 >= v96)
  {
    goto LABEL_60;
  }

  v58 = v93[v62 + 13];
  if (v58)
  {
    goto LABEL_59;
  }

  v63 = v59 + 7;
  while (v63 < v96)
  {
    v58 = v93[v63++ + 8];
    if (v58)
    {
      v60 = v63 - 1;
      goto LABEL_59;
    }
  }

LABEL_60:

  if (*(v61 + 16))
  {
    v89;
    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v77._object = "eature data sources." + 0x8000000000000000;
    v77._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v77);
    v78 = specialized Collection.first.getter(v61);
    if (!v79)
    {
      v78 = 0;
    }

    v80._object = 0xE000000000000000;
    if (v79)
    {
      v80._object = v79;
    }

    v80._countAndFlagsBits = v78;
    String.append(_:)(v80);
    v80._object;
    v81._object = "Missing data for label " + 0x8000000000000000;
    v81._countAndFlagsBits = 0xD000000000000029;
    String.append(_:)(v81);
    v82 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [URL]);
    v83 = Dictionary.Keys.description.getter(v61, &type metadata for String, v82, &protocol witness table for String);
    v85 = v84;
    v81._countAndFlagsBits = v83;
    v81._object = v84;
    String.append(_:)(v81);
    v85;
    v81._countAndFlagsBits = 46;
    v81._object = 0xE100000000000000;
    String.append(_:)(v81);
    v91 = v90;
    v81._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v86 = swift_allocError(&type metadata for MLCreateError, v81._object, 0, 0);
    *v87 = v91;
    *(v87 + 16) = 0;
    *(v87 + 32) = 0;
    *(v87 + 48) = 0;
    v97 = v86;
    swift_willThrow(&type metadata for MLCreateError, v81._object);
  }

  else
  {

    return v89;
  }
}

uint64_t static _ImageUtilities.generateImageTable(_:)(uint64_t a1)
{
  v49 = v1;
  a1;
  v51 = specialized _copyCollectionToContiguousArray<A>(_:)(a1);
  specialized MutableCollection<>.sort(by:)(&v51);
  if (v2)
  {

    BUG();
  }

  a1;
  v46 = *(v51 + 2);
  if (!v46)
  {

    v4 = _swiftEmptyArrayStorage;
    v56 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v55 = a1;
  v54 = 0;
  v50 = v51;
  v47 = v51 + 32;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  do
  {
    v53 = v4;
    v45 = v3;
    v5 = *&v47[16 * v3];
    v6 = *&v47[16 * v3 + 8];
    v7 = *(v55 + 16);
    v6;
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v6;
      v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      v8 = _swiftEmptyArrayStorage;
      if (v10)
      {
        v8 = *(*(v55 + 56) + 8 * v9);
        v8;
      }

      v6;
    }

    v11 = v54;
    ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SSs5NeverOTg5148_s8CreateML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n(v8);
    v54 = v11;
    v8;
    v52 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n;
    v13 = ML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n[2];
    if (!v13)
    {
      v6;
      v14 = _swiftEmptyArrayStorage;
LABEL_14:
      v18 = v56;
      goto LABEL_16;
    }

    v14 = static Array._allocateBufferUninitialized(minimumCapacity:)(v13, &type metadata for String);
    v14[2] = v13;
    v14[4] = v5;
    v14[5] = v6;
    if (v13 == 1)
    {
      goto LABEL_14;
    }

    v48 = v14;
    v15 = v14 + 6;
    v16 = v13 - 2;
    while (1)
    {
      *v15 = v5;
      v15[1] = v6;
      if (v16-- == 0)
      {
        break;
      }

      v15 += 2;
      v6;
    }

    v6;
    v18 = v56;
    v14 = v48;
LABEL_16:
    v19 = v14[2];
    v20 = v18[2];
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      BUG();
    }

    v22 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v18);
    v24 = v56;
    if (!isUniquelyReferenced_nonNull_native || v56[3] >> 1 < v21)
    {
      if (v20 > v21)
      {
        v21 = v20;
      }

      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v21, 1, v56);
    }

    v25 = v22;
    v26 = v22[2] == 0;
    v56 = v24;
    if (v26)
    {
      v4 = v53;
      if (v19)
      {
        BUG();
      }
    }

    else
    {
      v27 = v24[2];
      v4 = v53;
      if ((v24[3] >> 1) - v27 < v19)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v24[2 * v27 + 4], v25 + 4, v19, &type metadata for String);
      if (v19)
      {
        v28 = __OFADD__(v56[2], v19);
        v29 = v56[2] + v19;
        if (v28)
        {
          BUG();
        }

        v56[2] = v29;
      }
    }

    v25;
    v30 = v52[2];
    v31 = v4[2];
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      BUG();
    }

    v33 = swift_isUniquelyReferenced_nonNull_native(v4);
    if (!v33 || v4[3] >> 1 < v32)
    {
      if (v31 > v32)
      {
        v32 = v31;
      }

      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v32, 1, v4);
    }

    v34 = v52;
    if (v52[2])
    {
      v35 = v4[2];
      if ((v4[3] >> 1) - v35 < v30)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v4[2 * v35 + 4], v52 + 4, v30, &type metadata for String);
      if (v30)
      {
        v28 = __OFADD__(v4[2], v30);
        v36 = v4[2] + v30;
        if (v28)
        {
          BUG();
        }

        v4[2] = v36;
      }
    }

    else if (v30)
    {
      BUG();
    }

    v3 = v45 + 1;
    v34;
  }

  while (v45 + 1 != v46);

LABEL_43:
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLDataValueConvertible)>);
  inited = swift_initStackObject(v37, v44);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = 0x6C6562616CLL;
  inited[5] = 0xE500000000000000;
  v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  inited[9] = v39;
  v40 = lazy protocol witness table accessor for type [String] and conformance <A> [A]();
  inited[10] = v40;
  inited[6] = v56;
  inited[11] = 0x7461506567616D69;
  inited[12] = 0xE900000000000068;
  inited[16] = v39;
  inited[17] = v40;
  inited[13] = v4;
  v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataValueConvertible);
  v42 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v41, &protocol witness table for String);
  return MLDataTable.init(dictionary:)(v42);
}

uint64_t static _ImageUtilities.getImageURLsAndAnnotations(from:)(void *a1, __m128 a2)
{
  *&v161 = v3;
  v169 = a1;
  v152 = v2;
  v168 = type metadata accessor for DataFrame(0);
  v162 = *(v168 - 8);
  v4 = *(v162 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v153 = &v132;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v165._countAndFlagsBits = &v132;
  v9 = type metadata accessor for UTType(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v156 = &v132;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v157 = &v132;
  v167 = type metadata accessor for URL(0);
  v166 = *(v167 - 1);
  v16 = v166[8];
  v17 = alloca(v16);
  v18 = alloca(v16);
  v158 = &v132;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v165._object = &v132;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v160 = &v132;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v164 = &v132;
  v25 = alloca(v16);
  v26 = alloca(v16);
  ML14_UntypedColumnC_s5Error_pTt1g5 = &v132;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v159 = &v132;
  v29 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  outlined init with copy of MLTrainingSessionParameters(v169, &v132, type metadata accessor for MLHandPoseClassifier.DataSource);
  switch(swift_getEnumCaseMultiPayload(&v132, v29))
  {
    case 0u:
      v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, imageColumn: String, labelColumn: String));
      v34 = &v132 + v33[12];
      v35 = v33[16];
      v165._countAndFlagsBits = *(&v132 + v35);
      v169 = *(__src + v35);
      v36 = v33[20];
      v162 = *(&v132 + v36);
      v168 = *(__src + v36);
      v37 = v166;
      v38 = v166[4];
      v38(v164, &v132, v167);
      v39 = v160;
      v40 = v34;
      v41 = v167;
      v38(v160, v40, v167);
      (v37[2])(v165._object, v39, v41);
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
      LOBYTE(v134) = 1;
      v135 = 44;
      v136 = 0xE100000000000000;
      v137 = 0;
      v138 = 0xE000000000000000;
      v139 = 92;
      v140 = 0xE100000000000000;
      v141 = 1;
      v142 = 34;
      v143 = 0xE100000000000000;
      v144 = 1;
      v145 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
      v146 = 10;
      v147 = 0xE100000000000000;
      v148 = 0;
      v149 = 1;
      v150 = 0;
      outlined retain of MLDataTable.ParsingOptions(__src);
      outlined release of MLDataTable.ParsingOptions(&v134, 92);
      memcpy(__dst, __src, sizeof(__dst));
      v42 = v161;
      MLDataTable.init(contentsOf:options:)(v165._object, __dst);
      v43 = v167;
      v44 = v37;
      v45 = v164;
      if (v42)
      {
        v46 = v44[1];
        v46(v160, v167);
        v168;
        v169;
        return (v46)(v45, v43);
      }

      *&v161 = 0;
      v170 = v154;
      LOBYTE(v171) = v155;
      v86._countAndFlagsBits = v165._countAndFlagsBits;
      v87 = v169;
      v86._object = v169;
      MLDataTable.subscript.getter(v86);
      object = *&__dst[0];
      v89 = BYTE8(__dst[0]);
      if (BYTE8(__dst[0]) || (outlined copy of Result<_DataTable, Error>(*&__dst[0], 0), v165._object = object, _UntypedColumn.type.getter(), object = v165._object, outlined consume of Result<_DataTable, Error>(v165._object, 0), v154 != 2))
      {
        outlined consume of Result<_DataTable, Error>(object, v89);
        v168;
        *&__dst[0] = 0;
        *(&__dst[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(26);
        *(&__dst[0] + 1);
        *&__dst[0] = 0x206E6D756C6F43;
        *(&__dst[0] + 1) = 0xE700000000000000;
        v107._countAndFlagsBits = v165._countAndFlagsBits;
        v107._object = v87;
        String.append(_:)(v107);
        v87;
        v107._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v107);
        v161 = __dst[0];
        v107._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v107._object, 0, 0);
        *v108 = v161;
        *(v108 + 16) = 0;
        *(v108 + 32) = 0;
        *(v108 + 48) = 0;
        swift_willThrow(&type metadata for MLCreateError, v107._object);
        v109 = v166[1];
        v110 = v160;
        v111 = v167;
LABEL_29:
        v109(v110, v111);
        v109(v164, v111);
        return outlined consume of Result<_DataTable, Error>(v170, v171);
      }

      outlined copy of Result<_DataTable, Error>(object, 0);
      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      v91 = *(&__dst[0] + 1);
      v90 = *&__dst[0];
      if (LOBYTE(__dst[1]) != 2)
      {
        outlined consume of MLDataValue(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
        v90 = 0;
        v91 = 0xE000000000000000;
      }

      outlined consume of Result<_DataTable, Error>(v165._object, 0);
      *&__dst[0] = v90;
      *(&__dst[0] + 1) = v91;
      v92 = String.init<A>(_:)(__dst, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
      v94 = v93;
      URL.init(fileURLWithPath:)(v92, v93);
      v94;
      v95 = objc_opt_self(NSFileManager);
      v96 = [v95 defaultManager];
      v97 = v96;
      URL.path.getter(v96);
      v99 = v98;
      v100 = String._bridgeToObjectiveC()();
      v99;
      LOBYTE(v99) = [v97 fileExistsAtPath:v100];

      if (v99)
      {
        v101 = v169;
        v102 = v168;
        countAndFlagsBits = v165._countAndFlagsBits;
      }

      else
      {
        v117 = v165._object;
        outlined copy of Result<_DataTable, Error>(v165._object, 0);
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v117, 0, 0.0);
        v119 = alloca(24);
        v120 = alloca(32);
        *(&__src[0] + 1) = v164;
        v121 = v161;
        v122 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SSs5NeverOTg5(partial apply for closure #1 in static _VideoUtilities.getVideoURLsAndAnnotations(from:), &v132, MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5);
        *&v161 = v121;
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
        *&__dst[0] = v122;
        v123 = alloca(24);
        v124 = alloca(24);
        *(&__src[0] + 1) = __dst;
        ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
        v126 = v125;
        *&__dst[0];
        v101 = v169;
        v169;
        MLDataTable.willMutate()();
        *&__dst[0] = ML14_UntypedColumnC_s5Error_pTt1g5;
        BYTE8(__dst[0]) = v126 & 1;
        countAndFlagsBits = v165._countAndFlagsBits;
        MLDataTable.setColumnImpl(newColumn:named:)(__dst, v165._countAndFlagsBits, v101);
        v101;
        outlined consume of Result<_DataTable, Error>(*&__dst[0], SBYTE8(__dst[0]));
        if (!v171)
        {
          v127 = v170;
          outlined copy of Result<_DataTable, Error>(v170, 0);
          _DataTable.columnNamesDidChange()();
          outlined consume of Result<_DataTable, Error>(v127, 0);
        }

        v102 = v168;
      }

      v128 = v161;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v170, countAndFlagsBits, v101, v162, v102);
      v129 = v101;
      v111 = v167;
      v130 = v166;
      if (v128)
      {
        v129;
        v102;
        outlined consume of Result<_DataTable, Error>(v165._object, 0);
        v109 = v130[1];
        v109(v158, v111);
        v110 = v160;
        goto LABEL_29;
      }

      v129;
      v102;
      outlined consume of Result<_DataTable, Error>(v165._object, 0);
      v131 = v130[1];
      v131(v158, v111);
      v131(v160, v111);
      v131(v164, v111);
LABEL_15:
      result = v170;
      v75 = v171;
      v76 = v152;
      *v152 = v170;
      *(v76 + 8) = v75;
      return result;
    case 1u:
      v169 = v9;
      v168 = v10;
      v63 = ML14_UntypedColumnC_s5Error_pTt1g5;
      v54 = v167;
      v55 = v166;
      (v166[4])(ML14_UntypedColumnC_s5Error_pTt1g5, &v132, v167);
      v64 = v156;
      static UTType.image.getter();
      v65 = v161;
      v66 = static _FileUtilities.collectFilesLabeledByDirectoryName(at:type:)(v63, v64);
      if (v65)
      {
        (*(v168 + 8))(v156, v169);
        v59 = ML14_UntypedColumnC_s5Error_pTt1g5;
        return (v55[1])(v59, v54);
      }

      v104 = v66;
      (*(v168 + 8))(v156, v169);
      static _ImageUtilities.generateImageTable(_:)(v104);
      v104;
      v114 = v134;
      v115 = v135;
      v170 = v134;
      LOBYTE(v171) = v135 & 1;
      LOBYTE(v135) = v135 & 1;
      outlined copy of Result<_DataTable, Error>(v134, v115);
      static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v134, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v114, v115);
      v116 = ML14_UntypedColumnC_s5Error_pTt1g5;
      goto LABEL_31;
    case 2u:
      v169 = v9;
      v168 = v10;
      v53 = v159;
      v54 = v167;
      v55 = v166;
      (v166[4])(v159, &v132, v167);
      v56 = v157;
      static UTType.image.getter();
      v57 = v161;
      v58 = static _FileUtilities.collectFilesLabeledByFileName(at:type:)(v53, v56);
      if (v57)
      {
        (*(v168 + 8))(v157, v169);
        v59 = v159;
        return (v55[1])(v59, v54);
      }

      v85 = v58;
      (*(v168 + 8))(v157, v169);
      static _ImageUtilities.generateImageTable(_:)(v85);
      v85;
      v112 = v134;
      v113 = v135;
      v170 = v134;
      LOBYTE(v171) = v135 & 1;
      LOBYTE(v135) = v135 & 1;
      outlined copy of Result<_DataTable, Error>(v134, v113);
      static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v134, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CLL, 0xE500000000000000);
      outlined consume of Result<_DataTable, Error>(v112, v113);
      v116 = v159;
LABEL_31:
      (v166[1])(v116, v167);
      goto LABEL_15;
    case 3u:
      v60 = *&__src[1];
      v61 = *&__src[2];
      v62 = *&__src[3];
      outlined consume of Result<_DataTable, Error>(v132, __src[0]);
      v62;
      v61;
      v60;
      goto LABEL_13;
    case 4u:
      v48 = __src[0];
      v169 = *(&__src[0] + 1);
      v166 = *(&__src[1] + 1);
      v49 = *&__src[1];
      v50 = *&__src[2];
      v170 = v132;
      LOBYTE(v171) = __src[0] & 1;
      v167 = v132;
      outlined copy of Result<_DataTable, Error>(v132, __src[0]);
      v51 = v169;
      v169 = v50;
      v52 = v161;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v170, v51, v49, v166, v50);
      if (!v52)
      {
        v49;
        v169;
        outlined consume of Result<_DataTable, Error>(v167, v48);
        goto LABEL_15;
      }

      v49;
      v169;
      outlined consume of Result<_DataTable, Error>(v167, v48);
      return outlined consume of Result<_DataTable, Error>(v170, v171);
    case 5u:
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
      *(__src + v67[12]);
      *(__src + v67[16]);
      *(__src + v67[20]);
      (*(v162 + 8))(&v132, v168);
LABEL_13:
      empty = tc_v1_sframe_create_empty(0);
      if (!empty)
      {
        BUG();
      }

      v69 = empty;
      v70 = type metadata accessor for CMLTable();
      v71 = swift_allocObject(v70, 24, 7);
      *(v71 + 16) = v69;
      v72 = type metadata accessor for _DataTable();
      swift_allocObject(v72, 40, 7);
      v170 = _DataTable.init(impl:)(v71);
      LOBYTE(v171) = 0;
      v73 = static os_log_type_t.info.getter();
      v74._countAndFlagsBits = 0xD0000000000000A7;
      v74._object = "Skipped invalid image file " + 0x8000000000000000;
      log(_:type:)(v74, v73);
      goto LABEL_15;
    case 6u:
      v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, labelColumn: String));
      v78 = *(v77 + 48);
      v166 = *(&v132 + v78);
      v167 = *(__src + v78);
      v79 = *(v77 + 64);
      v164 = *(&v132 + v79);
      v169 = *(__src + v79);
      v80 = v165._countAndFlagsBits;
      v81 = v168;
      v82 = v162;
      (*(v162 + 32))(v165._countAndFlagsBits, &v132, v168);
      v83 = v153;
      *a2.i64 = (*(v82 + 16))(v153, v80, v81);
      v84 = v161;
      MLDataTable.init(_:convertArraysToShapedArrays:)(v83, 0, a2);
      if (v84)
      {
        (*(v82 + 8))(v165._countAndFlagsBits, v168);
        v169;
        return v167;
      }

      v170 = v134;
      LOBYTE(v171) = v135;
      v105 = v167;
      v106 = v169;
      static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(&v170, v166, v167, v164, v169);
      (*(v82 + 8))(v165._countAndFlagsBits, v168);
      v105;
      v106;
      goto LABEL_15;
  }
}

uint64_t static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = v5;
  v22 = a5;
  v23 = a4;
  v21 = a3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v25 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v25, v16);
  inited[2] = 1;
  inited[3] = 2;
  v20 = a2;
  inited[4] = a2;
  v9 = v21;
  inited[5] = v21;
  v24 = v6;
  v26 = v6;
  v27 = v7;
  v9;
  v10 = v19;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v26, 0x7461506567616D69, 0xE900000000000068, inited);
  if (v10)
  {
    return inited;
  }

  v26 = v24;
  v27 = v7;
  v11 = swift_initStackObject(v25, v17);
  v11[2] = 1;
  v11[3] = 2;
  v11[4] = v23;
  v12 = v22;
  v11[5] = v22;
  v12;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v26, 0x6C6562616CLL, 0xE500000000000000, v11);
  swift_setDeallocating(v11);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v26 = v24;
  v27 = v7;
  v13 = swift_initStackObject(v25, v18);
  v13[2] = 1;
  v13[3] = 2;
  v13[4] = v20;
  v14 = v21;
  v13[5] = v21;
  v28 = 2;
  v29[0] = 2;
  v14;
  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v26, v13, &v28, v23, v22, v29);
  swift_setDeallocating(v13);
  return specialized _ContiguousArrayStorage.__deallocating_deinit();
}

uint64_t static _ImageUtilities.renameImageTableColumns(table:imageColumn:labelColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v23._object = a5;
  named._countAndFlagsBits = a4;
  v7 = *a1;
  v24 = a1;
  v8 = *(a1 + 8);
  v20 = v7;
  v21 = v8;
  outlined copy of Result<_DataTable, Error>(v7, v8);
  v23._countAndFlagsBits = a2;
  named._object = a3;
  v9 = a3;
  countAndFlagsBits = named._countAndFlagsBits;
  static _ImageUtilities.validateImageInput(trainingData:imageColumn:labelColumn:)(&v20, a2, v9, named._countAndFlagsBits, v23._object);
  result = outlined consume of Result<_DataTable, Error>(v7, v8);
  if (!v5)
  {
    v12 = countAndFlagsBits;
    v13 = v24;
    MLDataTable.willMutate()();
    v14._countAndFlagsBits = 0x7461506567616D69;
    v14._object = 0xE900000000000068;
    v15._countAndFlagsBits = v23._countAndFlagsBits;
    v15._object = named._object;
    MLDataTable.renameImpl(named:to:)(v15, v14);
    if (!*(v13 + 8))
    {
      v16 = *v13;
      outlined copy of Result<_DataTable, Error>(*v13, 0);
      _DataTable.columnNamesDidChange()();
      outlined consume of Result<_DataTable, Error>(v16, 0);
    }

    MLDataTable.willMutate()();
    v17._countAndFlagsBits = 0x6C6562616CLL;
    v17._object = 0xE500000000000000;
    v18._countAndFlagsBits = v12;
    v18._object = v23._object;
    result = MLDataTable.renameImpl(named:to:)(v18, v17);
    if (!*(v13 + 8))
    {
      v19 = *v24;
      outlined copy of Result<_DataTable, Error>(*v24, 0);
      _DataTable.columnNamesDidChange()();
      return outlined consume of Result<_DataTable, Error>(v19, 0);
    }
  }

  return result;
}

uint64_t specialized StringProtocol.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  v8 = a4;
  a4;
  v7 = String.init<A>(_:)(&v7, &type metadata for String, &protocol witness table for String, &protocol witness table for String);
  v8 = v4;
  String.append<A>(contentsOf:)(v6, &type metadata for String, &protocol witness table for String);
  return v7;
}

char static _ImageUtilities.validateAnnotationContent(from:directoryURL:)(uint64_t a1, double a2)
{
  result = 0;
  if (*(a1 + 16) != 3)
  {
    return result;
  }

  v3 = *a1;
  v4 = *(a1 + 8);

  v5 = CMLSequence.value(at:)(0);
  MLDataValue.init(_:)(v5, a2);
  outlined consume of MLDataValue(v3, v4, 3);
  if (v39 == 4)
  {
    if (v37[2])
    {
      v37;
      *&v6 = 0x6C6562616CLL;
      *(&v6 + 1) = 0xE500000000000000;
      specialized __RawDictionaryStorage.find<A>(_:)(v6, 2, a2);
      v8 = v7;
      outlined consume of MLDataValue(v37, v38, 4);
      if (v8)
      {
        if (v37[2])
        {
          v37;
          *&v9 = 0x616E6964726F6F63;
          *(&v9 + 1) = 0xEB00000000736574;
          specialized __RawDictionaryStorage.find<A>(_:)(v9, 2, a2);
          v11 = v10;
          outlined consume of MLDataValue(v37, v38, 4);
          if (v11)
          {
            if (v37[2])
            {
              v37;
              *&v12 = 0x6C6562616CLL;
              *(&v12 + 1) = 0xE500000000000000;
              specialized __RawDictionaryStorage.find<A>(_:)(v12, 2, a2);
              if (v14)
              {
                v15 = v37[7];
                v16 = 24 * v13;
                v17 = *(v15 + v16);
                v18 = *(v15 + v16 + 8);
                v19 = *(v15 + v16 + 16);
                outlined copy of MLDataValue(v17, v18, *(v15 + v16 + 16));
                outlined consume of MLDataValue(v37, v38, 4);
                v20 = 56;
                if (!_bittest(&v20, v19))
                {
                  v21 = 67;
                  if (!_bittest(&v21, v19))
                  {
                    outlined consume of MLDataValue(v17, v18, 2);
                    if (v37[2])
                    {
                      *&v22 = 0x616E6964726F6F63;
                      *(&v22 + 1) = 0xEB00000000736574;
                      specialized __RawDictionaryStorage.find<A>(_:)(v22, 2, a2);
                      if (v24)
                      {
                        v25 = v37[7];
                        v26 = 24 * v23;
                        v27 = *(v25 + v26);
                        v28 = *(v25 + v26 + 8);
                        v29 = *(v25 + v26 + 16);
                        outlined copy of MLDataValue(v27, v28, *(v25 + v26 + 16));
                        outlined consume of MLDataValue(v37, v38, 4);
                        switch(v29)
                        {
                          case 0:
                          case 1:
                          case 6:
                            return 0;
                          case 2:
                            v36 = 2;
                            goto LABEL_27;
                          case 3:
                            v36 = 3;
                            goto LABEL_27;
                          case 4:
                            outlined consume of MLDataValue(v27, v28, 4);
                            return 1;
                          case 5:
                            v36 = 5;
LABEL_27:
                            v30 = v36;
                            v34 = v27;
                            v35 = v28;
                            break;
                        }

                        goto LABEL_21;
                      }
                    }
                  }

                  goto LABEL_19;
                }

                v32 = v17;
                v33 = v18;
                v31 = v19;
              }

              else
              {
                v31 = 4;
                v32 = v37;
                v33 = v38;
              }

              outlined consume of MLDataValue(v32, v33, v31);
            }
          }
        }
      }
    }

LABEL_19:
    v30 = 4;
    goto LABEL_20;
  }

  v30 = v39;
LABEL_20:
  v34 = v37;
  v35 = v38;
LABEL_21:
  outlined consume of MLDataValue(v34, v35, v30);
  return 0;
}

uint64_t static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(uint64_t a1, __int128 *a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v46[1] = v7;
  v42 = a6;
  v45 = a5;
  v46[0] = a4;
  v43 = a2;
  v8 = *a1;
  v9 = *(a1 + 8);
  v51 = *a3;
  *&v48 = v8;
  v52 = v9 & 1;
  BYTE8(v48) = v9 & 1;
  outlined copy of Result<_DataTable, Error>(v8, v9);
  v10 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v8, v9 & 1);
  if (v10 <= 0)
  {
    v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
    *v16 = 0xD00000000000003BLL;
    *(v16 + 8) = "No readable image files in " + 0x8000000000000000;
    *(v16 + 16) = 0;
    *(v16 + 32) = 0;
    *(v16 + 48) = 1;
    return swift_willThrow(&type metadata for MLCreateError, v15);
  }

  v49 = v9;
  v44 = v8;
  if (v9)
  {
    outlined copy of Result<_DataTable, Error>(v8, 1);
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
    outlined consume of Result<_DataTable, Error>(v8, 1);
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v8, 0);
    v14 = v47;
  }

  v50 = &v41;
  *&v48 = v46[0];
  v17 = v45;
  *(&v48 + 1) = v45;
  v18 = alloca(24);
  v19 = alloca(32);
  v43 = &v48;
  v20 = v46[1];
  v21 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v41, v14);

  if (v21)
  {
    v17;
    return v46[0];
  }

  v46[1] = v20;
  v47 = 0;
  v23 = v44;
  *&v48 = v44;
  BYTE8(v48) = v52;
  v24 = v49;
  LODWORD(v50) = v49;
  outlined copy of Result<_DataTable, Error>(v44, v49);
  v25 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v48, SBYTE8(v48));
  v26 = v25 * 0.2;
  if (COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    BUG();
  }

  if (v26 <= -9.223372036854778e18)
  {
    BUG();
  }

  if (v26 >= 9.223372036854776e18)
  {
    BUG();
  }

  v27 = v26;
  *&v48 = v23;
  BYTE8(v48) = v52;
  outlined copy of Result<_DataTable, Error>(v23, v50);
  v50 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v48, SBYTE8(v48));
  if (v50 >= 10)
  {
    if (v26 < 0xBuLL)
    {
      v27 = 10;
    }
  }

  else
  {
    if (v50 > v27)
    {
      v27 = v50;
    }

    if (v27 <= 0)
    {
LABEL_27:
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(166);
      v39._object = "Annotations file is empty." + 0x8000000000000000;
      v39._countAndFlagsBits = 0xD000000000000098;
      String.append(_:)(v39);
      v39._countAndFlagsBits = v46[0];
      v39._object = v45;
      String.append(_:)(v39);
      v39._countAndFlagsBits = 0x2E316567616D693ALL;
      v39._object = 0xEC0000002E67706ALL;
      String.append(_:)(v39);
      *&v46[1] = v48;
      v15 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v15, 0, 0);
      *v40 = *&v46[1];
      *(v40 + 16) = 0;
      *(v40 + 32) = 0;
      *(v40 + 48) = 1;
      return swift_willThrow(&type metadata for MLCreateError, v15);
    }
  }

  v50 = v27;
  while (1)
  {
    if (v24)
    {
      outlined copy of Result<_DataTable, Error>(v23, 1);
      v28 = tc_v1_flex_list_create(0);
      if (!v28)
      {
        BUG();
      }

      v29 = v28;
      v30 = type metadata accessor for CMLSequence();
      v31 = swift_allocObject(v30, 25, 7);
      *(v31 + 16) = v29;
      *(v31 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v23, 1);
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(v23, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v23, 0);
    }

    v32 = alloca(72);
    v33 = alloca(80);
    v43 = v23;
    LOBYTE(v44) = v52;
    v45 = &v47;
    LOBYTE(v46[0]) = v51;
    v46[1] = v42;
    v46[2] = a7;
    v47 = v23;
    v34 = v42;
    v35 = specialized Sequence.first(where:)(partial apply for closure #1 in static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:));
    v37 = v36;
    v46[1] = v34;

    v38 = v47 + 1;
    if (__OFADD__(1, v47))
    {
      BUG();
    }

    ++v47;
    v24 = v49;
    if (v37)
    {
      return v35;
    }

    v23 = v44;
    if (v38 >= v50)
    {
      goto LABEL_27;
    }
  }
}

uint64_t closure #1 in static _ImageUtilities.findColumnWithNonDefaultName(from:directoryURL:columnType:defaultName:validateContentFunc:)(uint64_t *a1, void *a2, int a3, uint64_t *a4, int a5, uint64_t (*a6)(void **, uint64_t), double a7, uint64_t a8, uint64_t a9)
{
  v37 = v9;
  LODWORD(v36) = a5;
  v33 = *a1;
  v10 = a1[1];
  v11 = *a4;
  v30 = a2;
  LOBYTE(v31) = a3 & 1;
  v35 = a3;
  outlined copy of Result<_DataTable, Error>(a2, a3);
  MLDataTable.Rows.subscript.getter(v11);
  outlined consume of Result<_DataTable, Error>(a2, v31);
  if (*(v26 + 16))
  {
    v34 = v25;
    v10;
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v10);
    if (v13)
    {
      v14 = *(*(v26 + 56) + 8 * v12);
      v10;

      v15 = CMLSequence.value(at:)(v14);
      if (!v37)
      {
        MLDataValue.init(_:)(v15, a7);
        v26;

        v27;
        v16 = v32;
        switch(v32)
        {
          case 0u:
            goto LABEL_19;
          case 1u:
            v24 = 1;
            goto LABEL_18;
          case 2u:
            outlined consume of MLDataValue(v30, v31, 2);
            v24 = 2;
            goto LABEL_18;
          case 3u:
            outlined consume of MLDataValue(v30, v31, 3);
            v24 = 3;
            goto LABEL_18;
          case 4u:
            outlined consume of MLDataValue(v30, v31, 4);
            v24 = 4;
            goto LABEL_18;
          case 5u:
            outlined consume of MLDataValue(v30, v31, 5);
            v24 = 5;
            goto LABEL_18;
          case 6u:
            v24 = 6;
LABEL_18:
            v16 = v24;
LABEL_19:
            if (v16 != v36)
            {
              return 0;
            }

            goto LABEL_9;
        }
      }

LABEL_25:
      swift_unexpectedError(v37, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
      BUG();
    }

    v26;

    v10;
  }

  else
  {

    v26;
  }

  if (v36 != 7)
  {
    return 0;
  }

LABEL_9:
  v17 = *a4;
  v30 = a2;
  LOBYTE(v31) = v35 & 1;
  outlined copy of Result<_DataTable, Error>(a2, v35);
  MLDataTable.Rows.subscript.getter(v17);
  outlined consume of Result<_DataTable, Error>(a2, v35 & 1);
  v36 = v25;
  if (!*(v26 + 16))
  {

    v26;

    goto LABEL_24;
  }

  v10;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v10);
  if ((v19 & 1) == 0)
  {

    v26;

    v10;
LABEL_24:
    BUG();
  }

  v20 = *(*(v26 + 56) + 8 * v18);
  v10;

  v21 = CMLSequence.value(at:)(v20);
  if (v37)
  {
    goto LABEL_25;
  }

  MLDataValue.init(_:)(v21, a7);
  v26;

  v27;
  v22 = a6(&v30, a9);
  outlined consume of MLDataValue(v30, v31, v32);
  return v22;
}

ValueMetadata *static _ImageUtilities.getImageURLs(at:)(ValueMetadata *a1, double a2)
{
  *&v62 = v2;
  v58 = type metadata accessor for URL(0);
  v3 = *(v58 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v57 = &v50;
  v7 = type metadata accessor for UTType(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v56 = &v50;
  v55 = a1;
  v12 = v62;
  v13 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)(a1);
  if (!v12)
  {
    v61 = v7;
    *&v62 = v8;
    v15 = v55;
    v59 = v3;
    v60 = 0;
    v16 = *(v13 + 16);
    if (v16)
    {
      v17 = v13;
      v51 = objc_opt_self(NSFileManager);
      v18 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v54 = v17;
      v53 = v18;
      v19 = (v18 + v17);
      v52 = *(v59 + 16);
      v61 = *(v59 + 72);
      *&v62 = _swiftEmptyArrayStorage;
      v20 = v58;
      v21 = v57;
      while (1)
      {
        v55 = v16;
        v56 = v19;
        v52(v21, v19, v20);
        v22 = [v51 defaultManager];
        v23 = v22;
        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        *&v63 = 0;
        v26 = [(NSURL *)v23 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:0 options:4 error:&v63];
        v27 = v26;

        v28 = v63;
        if (!v27)
        {
          break;
        }

        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v27, v20);
        v28;
        (objc_release)(v27);
        v30 = *(v29 + 16);
        v31 = *(v62 + 16);
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          BUG();
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v62);
        v34 = v62;
        if (!isUniquelyReferenced_nonNull_native || *(v62 + 24) >> 1 < v32)
        {
          if (v31 > v32)
          {
            v32 = v31;
          }

          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 1, v62);
        }

        v20 = v58;
        v35 = *(v29 + 16) == 0;
        *&v62 = v34;
        if (v35)
        {
          if (v30)
          {
            BUG();
          }
        }

        else
        {
          v36 = v34[2];
          if ((v34[3] >> 1) - v36 < v30)
          {
            BUG();
          }

          swift_arrayInitWithCopy(v34 + v61 * v36 + v53, v53 + v29, v30, v58);
          if (v30)
          {
            v37 = __OFADD__(*(v62 + 16), v30);
            v38 = *(v62 + 16) + v30;
            if (v37)
            {
              BUG();
            }

            *(v62 + 16) = v38;
          }
        }

        v29;
        v21 = v57;
        (*(v59 + 8))(v57, v20);
        v19 = (v56 + v61);
        v16 = (v55 - 1);
        if (v55 == (&dword_0 + 1))
        {
          v54;
          return v62;
        }
      }

      v42 = v20;
      v43 = v63;
      _convertNSErrorToError(_:)(v28);

      swift_willThrow(v43, "contentsOfDirectoryAtURL:includingPropertiesForKeys:options:error:");
      (*(v59 + 8))(v57, v42);
      v62;
      a1 = v54;
      v54;
    }

    else
    {
      v13;
      v39 = v56;
      static UTType.image.getter(a2);
      v40 = v60;
      v41 = static _FileUtilities.readableFiles(at:type:)(v15, v39);
      v60 = v40;
      a1 = v39;
      if (v40)
      {
        (*(v62 + 8))(v39, v61);
      }

      else
      {
        v44 = v41;
        (*(v62 + 8))(a1, v61);
        a1 = v44;
        if (!v44[1].Kind)
        {
          v44;
          *&v63 = 0;
          *(&v63 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(29);
          v45 = *(&v63 + 1);
          *(&v63 + 1);
          *&v63 = 0xD00000000000001BLL;
          *(&v63 + 1) = " specified data source" + 0x8000000000000000;
          v46._countAndFlagsBits = URL.path.getter(v45);
          object = v46._object;
          String.append(_:)(v46);
          object;
          v62 = v63;
          a1 = &type metadata for MLCreateError;
          v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
          *v49 = v62;
          *(v49 + 16) = 0;
          *(v49 + 32) = 0;
          *(v49 + 48) = 0;
          swift_willThrow(&type metadata for MLCreateError, v48);
        }
      }
    }
  }

  return a1;
}

uint64_t implicit closure #1 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(uint64_t a1)
{
  v1 = 0;
  v2 = type metadata accessor for URL(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  if (*(a1 + 16) == 2)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    v19 = v2;
    v8;
    URL.appendingPathComponent(_:)(v7, v8);
    outlined consume of MLDataValue(v7, v8, 2);
    v9 = URL.path.getter(v7);
    v11 = v10;
    v18 = *(v3 + 8);
    v12 = v19;
    v18(&v17, v19);
    v13 = specialized StringProtocol.appending<A>(_:)(v9, v11, 0, 0xE000000000000000);
    v15 = v14;
    v11;
    URL.init(fileURLWithPath:)(v13, v15);
    v15;
    v1 = static _ImageUtilities.validateOneImageURL(from:)(&v17);
    v18(&v17, v12);
  }

  return v1;
}

char implicit closure #2 in static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return static _ImageUtilities.validateAnnotationContent(from:directoryURL:)(&v3, *&v3);
}

void *static _ImageUtilities.getDataSourceSynopsisForHandPoseClassifier(from:)(void *a1, __m128 a2)
{
  v104 = type metadata accessor for URL(0);
  v124 = *(v104 - 1);
  v3 = *(v124 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = alloca(v3);
  v7 = alloca(v3);
  v121 = &v95;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DiscontiguousColumnSlice<Int>) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v116 = &v95;
  v99 = type metadata accessor for DataFrame.Slice(0);
  v100 = *(v99 - 8);
  v11 = *(v100 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v101 = &v95;
  v115 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v102 = *(v115 - 8);
  v14 = *(v102 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v103 = &v95;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = &v95;
  v106 = type metadata accessor for DataFrame(0);
  v107 = *(v106 - 1);
  v20 = *(v107 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v122 = &v95;
  v23 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v27 = &v95;
  outlined init with copy of MLTrainingSessionParameters(a1, &v95, type metadata accessor for MLHandPoseClassifier.DataSource);
  if (swift_getEnumCaseMultiPayload(&v95, v23) != 3)
  {
    v57 = v125;
    static _ImageUtilities.getImageURLsAndAnnotations(from:)(a1, a2);
    v108 = v57;
    if (v57)
    {
      return outlined destroy of MLHandPoseClassifier.DataSource(&v95);
    }

    v123 = &v95;
    v58 = v117;
    v59 = v118;
    outlined copy of Result<_DataTable, Error>(v117, v118);
    v60._countAndFlagsBits = 0x6C6562616CLL;
    v60._object = 0xE500000000000000;
    specialized MLDataTable.subscript.getter(v60, v58, v59);
    outlined consume of Result<_DataTable, Error>(v58, v59);
    v61 = v109;
    LODWORD(v125) = v110;
    specialized MLDataColumn.dropDuplicates()(v109, v110);
    outlined consume of Result<_DataTable, Error>(v61, v125);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v117, v118, *a2.i64);
    outlined copy of Result<_DataTable, Error>(v58, v59);
    v60._countAndFlagsBits = 0x7461506567616D69;
    v60._object = 0xE900000000000068;
    specialized MLDataTable.subscript.getter(v60, v58, v59);
    v106 = v58;
    LODWORD(v122) = v59;
    outlined consume of Result<_DataTable, Error>(v58, v59);
    v62 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v117, v118, *a2.i64);
    v63 = v62;
    v64 = v62[2];
    v97 = &v95;
    if (v64)
    {
      v117 = _swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
      v65 = v117;
      v116 = v63;
      v66 = (v63 + 40);
      do
      {
        v115 = v66;
        v125 = v64;
        v67 = *(v66 - 1);
        v68 = *v66;
        *v66;
        URL.init(fileURLWithPath:)(v67, v68);
        v68;
        v117 = v65;
        v69 = v65[2];
        if (v65[3] >> 1 <= v69)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v65[3] >= 2, v69 + 1, 1);
          v65 = v117;
        }

        v65[2] = v69 + 1;
        (*(v124 + 32))(v65 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v69, v121, v104);
        v66 = (v115 + 16);
        v64 = v125 - 1;
      }

      while (v125 != 1);
      v98 = v65;
      v116;
      v27 = v97;
    }

    else
    {
      v62;
      v98 = _swiftEmptyArrayStorage;
    }

    v70 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v71 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
    LODWORD(v107) = v122;
    v95 = v71;
    if (v71)
    {
      v96 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 4;
      v72 = _swiftEmptyDictionarySingleton;
      v73 = 0;
      v74 = _swiftEmptyDictionarySingleton;
      do
      {
        if (v73 >= v70[2])
        {
          BUG();
        }

        v99 = v74;
        v100 = v73;
        v116 = v96[2 * v73];
        v122 = v96[2 * v73 + 1];
        v75 = v122;
        v76 = v106;
        v117 = v106;
        v77 = v107;
        LOBYTE(v118) = v107;
        outlined copy of Result<_DataTable, Error>(v106, v107);
        v75;
        v78._countAndFlagsBits = 0x6C6562616CLL;
        v78._object = 0xE500000000000000;
        v121 = v72;
        MLDataTable.subscript.getter(v78);
        outlined consume of Result<_DataTable, Error>(v117, v118);
        v113 = v111;
        LOBYTE(v114) = v112;
        v119 = &type metadata for String;
        v120 = &protocol witness table for String;
        v117 = v116;
        v118 = v122;
        v122;
        static MLUntypedColumn.== infix(_:_:)(&v113, &v117);
        outlined consume of Result<_DataTable, Error>(v113, v114);
        __swift_destroy_boxed_opaque_existential_1Tm(&v117);
        v111 = v76;
        LOBYTE(v112) = v77;
        v113 = v109;
        LOBYTE(v114) = v110;
        outlined copy of Result<_DataTable, Error>(v76, v77);
        MLDataTable.subscript.getter(&v113);
        outlined consume of Result<_DataTable, Error>(v113, v114);
        outlined consume of Result<_DataTable, Error>(v111, v112);
        v79 = v117;
        v80 = v118;
        v81 = v122;
        v122;
        outlined copy of Result<_DataTable, Error>(v79, v80);
        v125 = MLDataTable.size.getter();
        outlined consume of Result<_DataTable, Error>(v117, v118);
        v82 = v121;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v121);
        v117 = v82;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v125, v116, v81, isUniquelyReferenced_nonNull_native);
        v81;
        v121 = v117;
        outlined copy of Result<_DataTable, Error>(v79, v80);
        v78._countAndFlagsBits = 0x7461506567616D69;
        v78._object = 0xE900000000000068;
        specialized MLDataTable.subscript.getter(v78, v79, v80);
        v101 = v79;
        LODWORD(v102) = v80;
        outlined consume of Result<_DataTable, Error>(v79, v80);
        v84 = v109;
        LOBYTE(v80) = v110;
        specialized MLDataColumn.dropDuplicates()(v109, v110);
        outlined consume of Result<_DataTable, Error>(v84, v80);
        v85 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v117, v118, *a2.i64);
        v86 = v85;
        v87 = v85[2];
        if (v87)
        {
          v117 = _swiftEmptyArrayStorage;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v87, 0);
          v88 = v117;
          v103 = v86;
          v89 = v86 + 5;
          do
          {
            v125 = v87;
            v115 = *(v89 - 1);
            v90 = *v89;
            *v89;
            URL.init(fileURLWithPath:)(v115, v90);
            v90;
            v117 = v88;
            v91 = v88[2];
            if (v88[3] >> 1 <= v91)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v88[3] >= 2, v91 + 1, 1);
              v88 = v117;
            }

            v88[2] = v91 + 1;
            (*(v124 + 32))(v88 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v91, v123, v104);
            v89 += 2;
            v87 = v125 - 1;
          }

          while (v125 != 1);
          v103;
        }

        else
        {
          v85;
          v88 = _swiftEmptyArrayStorage;
        }

        v72 = v121;
        v73 = v100 + 1;
        v92 = v99;
        v93 = swift_isUniquelyReferenced_nonNull_native(v99);
        v117 = v92;
        v94 = v122;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v88, v116, v122, v93);
        v94;
        outlined consume of Result<_DataTable, Error>(v101, v102);
        v74 = v117;
        v27 = v97;
        v70 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
      }

      while (v73 != v95);
    }

    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    outlined consume of Result<_DataTable, Error>(v106, v107);
    outlined destroy of MLHandPoseClassifier.DataSource(v27);
    return v98;
  }

  v28 = v98;
  v29 = v100;
  v30 = v102;
  outlined consume of Result<_DataTable, Error>(v95, v96);
  v30;
  v29;
  v28;
  result = MLHandPoseClassifier.DataSource.extractKeypoints()(a2);
  if (v2)
  {
    return result;
  }

  v108 = 0;
  v32 = v103;
  DataFrame.subscript.getter(0x6C6562616CLL, 0xE500000000000000, &type metadata for String);
  v117 = 0;
  v118 = 0xE000000000000000;
  v33 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v34 = v115;
  OptionalColumnProtocol.filled(with:)(&v117, v115, v33);
  (*(v102 + 8))(v32, v34);
  v35 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v36 = 1 << *(v35 + 32);
  v37 = ~(-1 << v36);
  if (v36 >= 64)
  {
    v37 = -1;
  }

  v124 = v35;
  v38 = *(v35 + 56) & v37;
  v123 = ((v36 + 63) >> 6);
  v39 = _swiftEmptyDictionarySingleton;
  v125 = 0;
  v40 = v101;
  while (1)
  {
    v121 = v39;
    if (v38)
    {
      v41 = v125;
      goto LABEL_23;
    }

    v42 = v125 + 1;
    if (__OFADD__(1, v125))
    {
      BUG();
    }

    if (v42 >= v123)
    {
      goto LABEL_37;
    }

    v38 = *(v124 + 8 * v42 + 56);
    if (v38)
    {
      v41 = v125 + 1;
      goto LABEL_23;
    }

    v43 = v125 + 2;
    if (v125 + 2 >= v123)
    {
      goto LABEL_37;
    }

    v38 = *(v124 + 8 * v42 + 64);
    if (!v38)
    {
      v43 = v125 + 3;
      if (v125 + 3 >= v123)
      {
        goto LABEL_37;
      }

      v38 = *(v124 + 8 * v42 + 72);
      if (!v38)
      {
        v43 = v125 + 4;
        if (v125 + 4 >= v123)
        {
          goto LABEL_37;
        }

        v38 = *(v124 + 8 * v42 + 80);
        if (!v38)
        {
          v43 = v125 + 5;
          if (v125 + 5 >= v123)
          {
            goto LABEL_37;
          }

          v38 = *(v124 + 8 * v42 + 88);
          if (!v38)
          {
            v43 = v125 + 6;
            if (v125 + 6 >= v123)
            {
              goto LABEL_37;
            }

            v38 = *(v124 + 8 * v42 + 96);
            if (!v38)
            {
              break;
            }
          }
        }
      }
    }

    v41 = v43;
LABEL_23:
    _BitScanForward64(&v44, v38);
    v115 = (v38 - 1) & v38;
    v45 = *(v124 + 48);
    v125 = v41;
    v46 = (v41 << 10) | (16 * v44);
    v104 = *(v45 + v46);
    v47 = *(v45 + v46 + 8);
    v48 = alloca(32);
    v49 = alloca(32);
    v97 = v104;
    v98 = v47;
    v47;
    v50 = v108;
    DataFrame.filter<A>(on:_:_:)(0x6C6562616CLL, 0xE500000000000000, &type metadata for String, partial apply for closure #7 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:), &v95, &type metadata for String);
    v108 = v50;
    v51 = v116;
    DataFrame.Slice.subscript.getter(0x5F6E6F6973736573, 0xEA00000000006469, &type metadata for Int);
    v52 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSiSg_11TabularData24DiscontiguousColumnSliceVySiGTt0g5(v51);
    v53 = *(v52 + 16);
    v52;
    v54 = v121;
    v55 = swift_isUniquelyReferenced_nonNull_native(v121);
    v117 = v54;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v104, v47, v55);
    v47;
    v39 = v117;
    (*(v100 + 8))(v40, v99);
    v38 = v115;
  }

  v56 = v125 + 7;
  while (v56 < v123)
  {
    v38 = *(v124 + 8 * v56++ + 56);
    if (v38)
    {
      v41 = v56 - 1;
      goto LABEL_23;
    }
  }

LABEL_37:

  (*(v107 + 8))(v122, v106);
  return _swiftEmptyArrayStorage;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance <A> [A])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for [String]);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v1);
    lazy protocol witness table cache variable for type [String] and conformance <A> [A] = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!*a1)
  {
    v3 = type metadata accessor for URL(255);
    result = swift_getWitnessTable(a2, v3);
    *a1 = result;
  }

  return result;
}

uint64_t outlined destroy of MLHandPoseClassifier.DataSource(uint64_t a1)
{
  v1 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

char *static PearsonSimilarity.buildItemStatistics(ratings:count:)(void *a1, uint64_t a2)
{
  v26 = a2;
  ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5(0, 0, a2, 0.0, 0.0);
  v22 = a1[3];
  v23 = a1[4];
  v24 = a1[5];
  outlined retain of [Int](&v22);
  outlined retain of [Int](&v23);
  outlined retain of ContiguousArray<Double>(&v24);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(a1);
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v5)
    {
      break;
    }

    if (v3 < 0)
    {
      BUG();
    }

    if (v3 >= *(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 + 2))
    {
      BUG();
    }

    v6 = 32 * v3;
    v7 = *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[32 * v3 + 40];
    v8 = __OFADD__(1, v7);
    v9 = v7 + 1;
    if (v8)
    {
      BUG();
    }

    v10 = v4;
    v25 = *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 48];
    if (!swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5))
    {
      ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5);
    }

    v11 = v10 - v25;
    v12 = (v10 - v25) / v9 + *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 48];
    *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 48] = v12;
    *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 56] = (v10 - v12) * v11 + *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 56];
    v13 = *&ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 40];
    v8 = __OFADD__(1, v13);
    v14 = v13 + 1;
    if (v8)
    {
      BUG();
    }

    v15 = &ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5[v6 + 32];
    *(v15 + 1) = v14;
    if (__OFADD__(1, *v15))
    {
      BUG();
    }

    ++*v15;
  }

  v21[3] = v21[7];
  v21[2] = v21[6];
  v21[1] = v21[5];
  v21[0] = v21[4];
  outlined release of SparseMatrix<Double>.MajorCollection(v21, 0);
  v16 = v26;
  if (v26 < 0)
  {
    BUG();
  }

  if (v26)
  {
    if (*(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 + 2) < v26)
    {
      BUG();
    }

    if (!swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5))
    {
      ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5);
    }

    v17 = (ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5 + 56);
    do
    {
      v18 = *(v17 - 2);
      v19 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
        BUG();
      }

      if (v19 < 2)
      {
        LODWORD(v19) = 1;
      }

      *v17 = v18 / v19 * *v17;
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  return ML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5;
}

void static PearsonSimilarityPredictor.updatePrediction(_:itemScore:neighborScore:)(double *a1, __m128d a2, double a3)
{
  a2.f64[0] = a2.f64[0] * a3;
  v3 = _mm_or_pd(_mm_and_pd(xmmword_33DFE0, a2), xmmword_345A50);
  v3.f64[0] = v3.f64[0] + a2.f64[0];
  *a1 = _mm_round_sd(a2, v3, 11).f64[0] + *a1;
}

double static PearsonSimilarityPredictor.finalizePrediction(_:userRatingCount:)(uint64_t a1, double a2)
{
  if (a1 > 0)
  {
    return a2 / a1;
  }

  else
  {
    return 0.0;
  }
}

uint64_t getEnumTagSinglePayload for PearsonSimilarity.ItemScore(uint64_t a1, int a2)
{
  result = 0;
  if (a2)
  {
    if (*(a1 + 24))
    {
      return (*a1 + 1);
    }
  }

  return result;
}

void storeEnumTagSinglePayload for PearsonSimilarity.ItemScore(uint64_t a1, int a2, int a3)
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
    *(a1 + 24) = v3;
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));

    return v6;
  }

  v6 = a1;
  v7 = a3[5];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v4;
  v11 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v10;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
  if (EnumCaseMultiPayload == 2)
  {
    v16 = *v9;
    *v8 = *v9;
    v16;
    v17 = 2;
    v18 = v8;
    v19 = v11;
LABEL_14:
    swift_storeEnumTagMultiPayload(v18, v19, v17);
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v33 = v11;
    v36 = type metadata accessor for MLImageClassifier.DataSource(0);
    v13 = swift_getEnumCaseMultiPayload(v9, v36);
    v14 = v8;
    v35 = v13;
    if (v13 == 2)
    {
      v20 = *v9;
      *v8 = *v9;
      v20;
    }

    else
    {
      if (v13 != 1)
      {
        v21 = v36;
        v22 = type metadata accessor for URL(0);
        (*(*(v22 - 8) + 16))(v14, v9, v22);
        goto LABEL_13;
      }

      v15 = type metadata accessor for URL(0);
      (*(*(v15 - 8) + 16))(v8, v9, v15);
    }

    v21 = v36;
LABEL_13:
    swift_storeEnumTagMultiPayload(v14, v21, v35);
    v17 = 1;
    v18 = v14;
    v19 = v33;
    goto LABEL_14;
  }

  memcpy(v8, v9, *(*(v11 - 8) + 64));
LABEL_15:
  v23 = a3[6];
  v24 = v6 + v23;
  v25 = a2 + v23;
  v26 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v25, v26) == 1)
  {
    v27 = type metadata accessor for URL(0);
    (*(*(v27 - 8) + 16))(v24, v25, v27);
    v28 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&v24[v28] = *&v25[v28];
    v29 = *&v25[v28 + 8];
    *&v24[v28 + 8] = v29;
    v29;
    swift_storeEnumTagMultiPayload(v24, v26, 1);
  }

  else
  {
    memcpy(v24, v25, *(*(v26 - 8) + 64));
  }

  v30 = a3[7];
  v31 = *(a2 + v30);
  if (v31 != 2)
  {
    *(a2 + v30);
  }

  *(v6 + v30) = v31;
  *(v6 + a3[8]) = *(a2 + a3[8]);
  *(v6 + a3[9]) = *(a2 + a3[9]);
  return v6;
}

uint64_t destroy for MLImageClassifier.PersistentParameters(void *a1, int *a2)
{
  *a1;
  v2 = (a1 + a2[5]);
  v3 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v2, v3);
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  v5 = type metadata accessor for MLImageClassifier.DataSource(0);
  v6 = swift_getEnumCaseMultiPayload(v2, v5);
  if (v6 == 2)
  {
LABEL_6:
    *v2;
  }

  else if (v6 <= 1)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 8))(v2, v7);
  }

LABEL_7:
  v8 = a1 + a2[6];
  v9 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
  {
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 8))(v8, v10);
    v11 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&v8[*(v11 + 20) + 8];
  }

  result = a2[7];
  v13 = *(a1 + result);
  if (v13 != 2)
  {
    return v13;
  }

  return result;
}

uint64_t *initializeWithCopy for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = a3[5];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = v5;
  v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v9;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      memcpy(v7, v8, *(*(v10 - 8) + 64));
      goto LABEL_13;
    }

    v32 = v10;
    v35 = type metadata accessor for MLImageClassifier.DataSource(0);
    v12 = swift_getEnumCaseMultiPayload(v8, v35);
    v13 = v7;
    v33 = v12;
    if (v12 == 2)
    {
      v19 = *v8;
      *v7 = *v8;
      v19;
    }

    else
    {
      if (v12 != 1)
      {
        v20 = v35;
        v21 = type metadata accessor for URL(0);
        (*(*(v21 - 8) + 16))(v13, v8, v21);
        goto LABEL_11;
      }

      v14 = type metadata accessor for URL(0);
      (*(*(v14 - 8) + 16))(v7, v8, v14);
    }

    v20 = v35;
LABEL_11:
    swift_storeEnumTagMultiPayload(v13, v20, v33);
    v16 = 1;
    v17 = v13;
    v18 = v32;
    goto LABEL_12;
  }

  v15 = *v8;
  *v7 = *v8;
  v15;
  v16 = 2;
  v17 = v7;
  v18 = v10;
LABEL_12:
  swift_storeEnumTagMultiPayload(v17, v18, v16);
LABEL_13:
  v22 = a3[6];
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v24, v25) == 1)
  {
    v26 = type metadata accessor for URL(0);
    (*(*(v26 - 8) + 16))(v23, v24, v26);
    v27 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&v23[v27] = *&v24[v27];
    v28 = *&v24[v27 + 8];
    *&v23[v27 + 8] = v28;
    v28;
    swift_storeEnumTagMultiPayload(v23, v25, 1);
  }

  else
  {
    memcpy(v23, v24, *(*(v25 - 8) + 64));
  }

  v29 = a3[7];
  v30 = *(a2 + v29);
  if (v30 != 2)
  {
    *(a2 + v29);
  }

  *(a1 + v29) = v30;
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t *assignWithCopy for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;
  v6;
  v29 = a3;
  if (a1 != a2)
  {
    v7 = a3[5];
    v8 = (a1 + v7);
    v9 = (a2 + v7);
    outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v10);
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *v9;
      *v8 = *v9;
      v13;
      swift_storeEnumTagMultiPayload(v8, v10, 2);
    }

    else if (EnumCaseMultiPayload == 1)
    {
      v27 = type metadata accessor for MLImageClassifier.DataSource(0);
      v28 = swift_getEnumCaseMultiPayload(v9, v27);
      if (v28 == 2)
      {
        v14 = *v9;
        *v8 = *v9;
        v14;
      }

      else
      {
        v12 = type metadata accessor for URL(0);
        (*(*(v12 - 8) + 16))(v8, v9, v12);
      }

      swift_storeEnumTagMultiPayload(v8, v27, v28);
      swift_storeEnumTagMultiPayload(v8, v10, 1);
    }

    else
    {
      memcpy(v8, v9, *(*(v10 - 8) + 64));
    }

    v15 = v29[6];
    v16 = a1 + v15;
    v17 = a2 + v15;
    outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    v18 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
    if (swift_getEnumCaseMultiPayload(v17, v18) == 1)
    {
      v19 = type metadata accessor for URL(0);
      (*(*(v19 - 8) + 16))(v16, v17, v19);
      v20 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
      *&v16[v20] = *&v17[v20];
      v21 = *&v17[v20 + 8];
      *&v16[v20 + 8] = v21;
      v21;
      swift_storeEnumTagMultiPayload(v16, v18, 1);
    }

    else
    {
      memcpy(v16, v17, *(*(v18 - 8) + 64));
    }

    a3 = v29;
  }

  v22 = a3[7];
  v23 = (a1 + v22);
  v24 = *(a1 + v22);
  v25 = *(a2 + v22);
  if (v24 == 2)
  {
    if (v25 == 2)
    {
      *v23 = 2;
    }

    else
    {
      *v23 = v25;
      v25;
    }
  }

  else if (v25 == 2)
  {
    outlined destroy of MLImageClassifier.ModelParameters.ClassifierType(a1 + v22);
    *v23 = *(a2 + v22);
  }

  else
  {
    *v23 = v25;
    v25;
    v24;
  }

  *(a1 + v29[8]) = *(a2 + v29[8]);
  *(a1 + v29[9]) = *(a2 + v29[9]);
  return a1;
}

void *initializeWithTake for MLImageClassifier.PersistentParameters(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v5 = a3[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v7, v8) != 1)
  {
    memcpy(v6, v7, *(*(v8 - 8) + 64));
    goto LABEL_10;
  }

  v23 = v8;
  v9 = type metadata accessor for MLImageClassifier.DataSource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v9);
  if (EnumCaseMultiPayload == 1)
  {
    v15 = type metadata accessor for URL(0);
    (*(*(v15 - 8) + 32))(v6, v7, v15);
    v14 = 1;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      memcpy(v6, v7, *(*(v9 - 8) + 64));
      goto LABEL_9;
    }

    v11 = type metadata accessor for URL(0);
    (*(*(v11 - 8) + 32))(v6, v7, v11);
    v12 = v6;
    v13 = v9;
    v14 = 0;
  }

  swift_storeEnumTagMultiPayload(v12, v13, v14);
LABEL_9:
  swift_storeEnumTagMultiPayload(v6, v23, 1);
LABEL_10:
  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v18, v19) == 1)
  {
    v20 = type metadata accessor for URL(0);
    (*(*(v20 - 8) + 32))(v17, v18, v20);
    v21 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&v17[*(v21 + 20)] = *&v18[*(v21 + 20)];
    swift_storeEnumTagMultiPayload(v17, v19, 1);
  }

  else
  {
    memcpy(v17, v18, *(*(v19 - 8) + 64));
  }

  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t *assignWithTake for MLImageClassifier.PersistentParameters(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;
  v6;
  if (a1 == a2)
  {
    goto LABEL_15;
  }

  v29 = a3;
  v7 = a3[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  outlined destroy of MLActivityClassifier.ModelParameters(v8, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v10 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v28 = type metadata accessor for MLImageClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v28);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = type metadata accessor for URL(0);
      (*(*(v16 - 8) + 32))(v8, v9, v16);
      v15 = 1;
      v13 = v8;
      v14 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v8, v9, *(*(v28 - 8) + 64));
        goto LABEL_10;
      }

      v12 = type metadata accessor for URL(0);
      (*(*(v12 - 8) + 32))(v8, v9, v12);
      v13 = v8;
      v14 = v28;
      v15 = 0;
    }

    swift_storeEnumTagMultiPayload(v13, v14, v15);
LABEL_10:
    swift_storeEnumTagMultiPayload(v8, v10, 1);
    goto LABEL_11;
  }

  memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_11:
  v17 = v29[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v20 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  if (swift_getEnumCaseMultiPayload(v19, v20) == 1)
  {
    v21 = type metadata accessor for URL(0);
    (*(*(v21 - 8) + 32))(v18, v19, v21);
    v22 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&v18[*(v22 + 20)] = *&v19[*(v22 + 20)];
    swift_storeEnumTagMultiPayload(v18, v20, 1);
  }

  else
  {
    memcpy(v18, v19, *(*(v20 - 8) + 64));
  }

  a3 = v29;
LABEL_15:
  v23 = a3[7];
  v24 = (a1 + v23);
  v25 = *(a1 + v23);
  v26 = *(a2 + v23);
  if (v25 != 2)
  {
    if (v26 != 2)
    {
      *v24 = v26;
      v25;
      goto LABEL_22;
    }

    outlined destroy of MLImageClassifier.ModelParameters.ClassifierType(a1 + v23);
    v26 = *(a2 + v23);
    goto LABEL_20;
  }

  if (v26 != 2)
  {
LABEL_20:
    *v24 = v26;
    goto LABEL_22;
  }

  *v24 = 2;
LABEL_22:
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_27E726(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = *(a3 + 20);
    }

    else
    {
      v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v6 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_27E7C3(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = *(a4 + 20);
    }

    else
    {
      v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
      v7 = *(a4 + 24);
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata accessor for MLImageClassifier.PersistentParameters(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLImageClassifier.PersistentParameters;
  if (!type metadata singleton initialization cache for MLImageClassifier.PersistentParameters)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLImageClassifier.PersistentParameters);
  }

  return result;
}

uint64_t type metadata completion function for MLImageClassifier.PersistentParameters(uint64_t a1)
{
  v4[0] = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    v4[1] = *(result - 8) + 64;
    result = type metadata accessor for MLImageClassifier.FeatureExtractorType(319);
    if (v3 <= 0x3F)
    {
      v4[2] = *(result - 8) + 64;
      v4[3] = "\b";
      v4[4] = &value witness table for Builtin.Int64 + 64;
      v4[5] = &value witness table for Builtin.Int64 + 64;
      swift_initStructMetadata(a1, 256, 6, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLImageClassifier.PersistentParameters.init(trainingData:modelParameters:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = *(*(type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v17 = v7[7];
  *(v3 + v17) = 2;
  *v3 = a1;
  outlined init with copy of Any?((a2 + 2), &v15);
  if (!v16)
  {
    BUG();
  }

  v8 = v3 + v7[5];
  outlined init with take of Any(&v15, v14);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  swift_dynamicCast(v8, v14, &type metadata for Any + 8, v9, 7);
  MLImageClassifier.ModelParameters.algorithm.getter(v8);
  v10 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType)) + 48));
  outlined init with take of MLClassifierMetrics(v14, v3 + v7[6], type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v11 = v17;
  outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(*(v3 + v17));
  *(v3 + v11) = v10;
  *(v3 + v7[8]) = *a2;
  v12 = a2[1];
  outlined destroy of MLImageClassifier.ModelParameters(a2);
  result = v7[9];
  *(v3 + result) = v12;
  return result;
}

NSURL *MLImageClassifier.PersistentParameters.init(sessionDirectory:)(uint64_t a1)
{
  v110 = v2;
  v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v88 = &v88;
  v94 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v7 = *(*(v94 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v90 = &v88;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.FeatureExtractorType?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v97 = &v88;
  v98 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v13 = *(*(v98 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v103 = &v88;
  v108 = type metadata accessor for URL(0);
  v96 = *(v108 - 8);
  v16 = *(v96 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v89 = &v88;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v102 = &v88;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v24 = *(v23 + 28);
  v101 = v3;
  v93 = v24;
  *(v3 + v24) = (&dword_0 + 2);
  v111 = a1;
  URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
  v25 = v110;
  v26 = Data.init(contentsOf:options:)(&v88, 0);
  if (!v25)
  {
    v30 = v27;
    v99 = v23;
    v100 = 0;
    v31 = v108;
    v32 = v26;
    v110 = *(v96 + 8);
    v110(&v88, v108);
    v33 = objc_opt_self(NSPropertyListSerialization);
    v106 = v32;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v105 = v30;
    v113[0] = 0;
    v35 = [v33 propertyListWithData:isa options:0 format:0 error:v113];
    v36 = v35;

    v37 = v113[0];
    v38 = v31;
    if (!v36)
    {
      v52 = v37;
      _convertNSErrorToError(_:)(v37);

      swift_willThrow(v52, "propertyListWithData:options:format:error:");
      outlined consume of Data._Representation(v106, v105);
      v110(v111, v31);
      goto LABEL_30;
    }

    _bridgeAnyObjectToAny(_:)(v36);
    swift_unknownObjectRelease(v36);
    outlined init with copy of Any(v115, v113);
    v39 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
    v104 = &type metadata for Any + 8;
    if (!swift_dynamicCast(&v112, v113, &type metadata for Any + 8, v39, 6))
    {
      v53 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v53, 0, 0);
      *v54 = 0xD000000000000037;
      *(v54 + 8) = "parameters.plist" + 0x8000000000000000;
      *(v54 + 16) = 0;
      *(v54 + 32) = 0;
      *(v54 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v53);
      outlined consume of Data._Representation(v106, v105);
      v55 = v111;
      v56 = v38;
LABEL_29:
      v110(v55, v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v115);
      goto LABEL_30;
    }

    v95 = v39;
    v40 = v112;
    specialized Dictionary.subscript.getter(0x73656C6966, 0xE500000000000000, v112);
    if (v114)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
      if (!swift_dynamicCast(&v112, v113, v104, v41, 6))
      {
        v58 = v40;
        v51 = v38;
LABEL_26:
        v58;
        goto LABEL_27;
      }

      v42 = v112;
      specialized Dictionary.subscript.getter(0xD000000000000014, ("Empty training input." + 0x8000000000000000), v40);
      if (v114)
      {
        v107 = v42;
        v109 = v40;
        if (!swift_dynamicCast(&v112, v113, v104, &type metadata for Int, 6))
        {
          v51 = v108;
LABEL_25:
          v107;
          v58 = v109;
          goto LABEL_26;
        }

        v91 = v112;
        v43 = v109;
        specialized Dictionary.subscript.getter(0x726574695F78616DLL, 0xEE00736E6F697461, v109);
        v44 = v108;
        if (v114)
        {
          if (swift_dynamicCast(&v112, v113, v104, &type metadata for Int, 6))
          {
            v45 = v112;
            v46 = v109;
            specialized Dictionary.subscript.getter(0xD000000000000011, ("logistic_regressor" + 0x8000000000000000), v109);
            if (!v114)
            {
              v51 = v44;
              v107;
              v46;
              _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
              v49 = v111;
              goto LABEL_28;
            }

            v92 = v45;
            v47 = v95;
            v48 = swift_dynamicCast(&v112, v113, v104, v95, 6);
            v49 = v111;
            if (!v48)
            {
              v51 = v44;
              v107;
              v109;
              goto LABEL_28;
            }

            v50 = v97;
            MLImageClassifier.FeatureExtractorType.init(dictionary:)(v112);
            if (__swift_getEnumTagSinglePayload(v50, 1, v98) == 1)
            {
              v51 = v44;
              v107;
              v109;
              _sypSgWOhTm_0(v50, &demangling cache variable for type metadata for MLImageClassifier.FeatureExtractorType?);
LABEL_28:
              v60 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
              swift_allocError(&type metadata for MLCreateError, v60, 0, 0);
              *v61 = 0xD000000000000034;
              *(v61 + 8) = "ad training parameters." + 0x8000000000000000;
              *(v61 + 16) = 0;
              *(v61 + 32) = 0;
              *(v61 + 48) = 0;
              swift_willThrow(&type metadata for MLCreateError, v60);
              outlined consume of Data._Representation(v106, v105);
              v55 = v49;
              v56 = v51;
              goto LABEL_29;
            }

            outlined init with take of MLClassifierMetrics(v50, v103, type metadata accessor for MLImageClassifier.FeatureExtractorType);
            v63 = v107;
            v64 = v100;
            v65 = specialized _NativeDictionary.mapValues<A>(_:)(v107);
            v100 = v64;
            v63;
            v66 = v101;
            v97 = v65;
            *v101 = v65;
            v67 = v99;
            *(v66 + *(v99 + 32)) = v92;
            v68 = v67;
            v98 = v66 + *(v67 + 24);
            outlined init with copy of MLTrainingSessionParameters(v103, v98, type metadata accessor for MLImageClassifier.FeatureExtractorType);
            *(v66 + *(v68 + 36)) = v91;
            specialized Dictionary.subscript.getter(0x6966697373616C63, 0xEF657079745F7265, v109);
            if (v114)
            {
              if (swift_dynamicCast(&v112, v113, v104, v47, 6))
              {
                MLImageClassifier.ModelParameters.ClassifierType.init(dictionary:)(v112);
                v69 = v113[0];
                v70 = v108;
                if (v113[0] != &dword_0 + 2)
                {
LABEL_42:
                  v71 = v101;
                  v72 = v93;
                  outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(*(v101 + v93));
                  *(v71 + v72) = v69;
                  URL.appendingPathComponent(_:)(0x69746164696C6176, 0xEE00617461446E6FLL);
                  v73 = v109;
                  specialized Dictionary.subscript.getter(0x69746164696C6176, 0xEA00000000006E6FLL, v109);
                  v73;
                  if (v114)
                  {
                    v74 = swift_dynamicCast(&v112, v113, v104, v95, 6);
                    v75 = v103;
                    if (v74)
                    {
                      v76 = v112;
                      v77 = v89;
                      (*(v96 + 16))(v89, v102, v70);
                      v78 = v76;
                      v79 = v88;
                      MLImageClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(v78, v77);
                      if (__swift_getEnumTagSinglePayload(v79, 1, v94) != 1)
                      {
                        outlined consume of Data._Representation(v106, v105);
                        v85 = v79;
                        v86 = v110;
                        v110(v111, v70);
                        v86(v102, v70);
                        outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                        __swift_destroy_boxed_opaque_existential_1Tm(v115);
                        v87 = v90;
                        outlined init with take of MLClassifierMetrics(v85, v90, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
                        outlined init with take of MLClassifierMetrics(v87, v101 + *(v99 + 20), type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
                        return __stack_chk_guard;
                      }

                      _sypSgWOhTm_0(v79, &demangling cache variable for type metadata for MLImageClassifier.ModelParameters.ValidationData?);
                      v80 = v70;
                      v81 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
                      swift_allocError(&type metadata for MLCreateError, v81, 0, 0);
                      *v82 = 0xD000000000000037;
                      *(v82 + 8) = "ion Classification algorithm." + 0x8000000000000000;
                      *(v82 + 16) = 0;
                      *(v82 + 32) = 0;
                      *(v82 + 48) = 0;
                      swift_willThrow(&type metadata for MLCreateError, v81);
                      outlined consume of Data._Representation(v106, v105);
                      v83 = v110;
                      v110(v111, v80);
                      v83(v102, v80);
                      outlined destroy of MLActivityClassifier.ModelParameters(v103, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                      __swift_destroy_boxed_opaque_existential_1Tm(v115);

                      outlined destroy of MLActivityClassifier.ModelParameters(v98, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                      goto LABEL_30;
                    }

                    outlined consume of Data._Representation(v106, v105);
                    v84 = v110;
                    v110(v111, v70);
                  }

                  else
                  {
                    outlined consume of Data._Representation(v106, v105);
                    _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
                    v84 = v110;
                    v75 = v103;
                    v110(v111, v70);
                  }

                  v84(v102, v70);
                  outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLImageClassifier.FeatureExtractorType);
                  __swift_destroy_boxed_opaque_existential_1Tm(v115);
                  swift_storeEnumTagMultiPayload(v101 + *(v99 + 20), v94, 3);
                  return __stack_chk_guard;
                }

LABEL_41:
                v69 = 0;
                goto LABEL_42;
              }
            }

            else
            {
              _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
            }

            v70 = v108;
            goto LABEL_41;
          }

          v51 = v44;
          goto LABEL_25;
        }

        v51 = v108;
        v59 = v107;
      }

      else
      {
        v43 = v40;
        v51 = v108;
        v59 = v42;
      }

      v59;
      v57 = v43;
    }

    else
    {
      v57 = v40;
      v51 = v38;
    }

    v57;
    _sypSgWOhTm_0(v113, &demangling cache variable for type metadata for Any?);
LABEL_27:
    v49 = v111;
    goto LABEL_28;
  }

  v28 = *(v96 + 8);
  v29 = v108;
  v28(v111, v108);
  v28(&v88, v29);
LABEL_30:
  outlined consume of MLImageClassifier.ModelParameters.ClassifierType?(*(v101 + v93));
  return __stack_chk_guard;
}

uint64_t MLImageClassifier.FeatureExtractorType.init(dictionary:)(uint64_t a1)
{
  v3 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v56 = &v45;
  v45 = type metadata accessor for URL(0);
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v51 = &v45;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v46 = &v45;
  v57 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v13 = *(*(v57 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = alloca(v13);
  v17 = alloca(v13);
  v18 = &v45;
  v19 = alloca(v13);
  v20 = alloca(v13);
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v47 = &v45;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v22 & 1) == 0)
  {
    goto LABEL_21;
  }

  v48 = &v45;
  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v49);
  v52 = &type metadata for Any + 8;
  if (!swift_dynamicCast(&v54, v49, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_21;
  }

  v53 = v3;
  v23 = v54;
  v24 = v55;
  if (!(v54 ^ 0x697270656E656373 | v55 ^ 0xEA0000000000746ELL) || (_stringCompareWithSmolCheck(_:_:expecting:)(0x697270656E656373, 0xEA0000000000746ELL, v54, v55, 0) & 1) != 0)
  {
    v24;
    specialized Dictionary.subscript.getter(0x6E6F697369766572, 0xE800000000000000, a1);
    a1;
    v3 = v53;
    v25 = v57;
    if (v50)
    {
      v26 = swift_dynamicCast(&v54, v49, v52, &type metadata for Int, 6);
      if (v26)
      {
        v27 = v54;
      }

      else
      {
        v27 = 0;
      }

      v28 = v26 ^ 1;
    }

    else
    {
      _sypSgWOhTm_0(v49, &demangling cache variable for type metadata for Any?);
      v28 = 1;
      v27 = 0;
    }

    v45 = v27;
    LOBYTE(v46) = v28;
    swift_storeEnumTagMultiPayload(&v45, v25, 0);
    goto LABEL_15;
  }

  if (!(v23 ^ 0x6D6F74737563 | v24 ^ 0xE600000000000000))
  {
    v24;
    v3 = v53;
    v29 = v56;
    goto LABEL_17;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)(0x6D6F74737563, 0xE600000000000000, v23, v24, 0);
  v24;
  v34 = (v33 & 1) == 0;
  v3 = v53;
  v29 = v56;
  if (v34)
  {
LABEL_21:
    a1;
    v32 = 1;
    goto LABEL_22;
  }

LABEL_17:
  specialized Dictionary.subscript.getter(0x61705F6C65646F6DLL, 0xEA00000000006874, a1);
  if (!v50)
  {
    a1;
    _sypSgWOhTm_0(v49, &demangling cache variable for type metadata for Any?);
LABEL_26:
    v25 = v57;
    v32 = 1;
    return __swift_storeEnumTagSinglePayload(v3, v32, 1, v25);
  }

  if (!swift_dynamicCast(&v54, v49, v52, &type metadata for String, 6))
  {
    a1;
    goto LABEL_26;
  }

  v35 = v55;
  URL.init(string:)(v54, v55);
  v35;
  v32 = 1;
  v36 = v29;
  v37 = v45;
  if (__swift_getEnumTagSinglePayload(v36, 1, v45) == 1)
  {
    a1;
    _sypSgWOhTm_0(v56, &demangling cache variable for type metadata for URL?);
LABEL_22:
    v25 = v57;
    return __swift_storeEnumTagSinglePayload(v3, v32, 1, v25);
  }

  v39 = v46;
  v40 = v56;
  v56 = *(v7 + 32);
  (v56)(v46, v40, v37);
  (*(v7 + 16))(v51, v39, v37);
  specialized Dictionary.subscript.getter(0x74757074756FLL, 0xE600000000000000, a1);
  a1;
  (*(v7 + 8))(v39, v37);
  v41 = v37;
  if (!v50)
  {
    _sypSgWOhTm_0(v49, &demangling cache variable for type metadata for Any?);
    goto LABEL_31;
  }

  if (!swift_dynamicCast(&v54, v49, v52, &type metadata for String, 6))
  {
LABEL_31:
    v42 = 0;
    v43 = 0;
    goto LABEL_32;
  }

  v42 = v54;
  v43 = v55;
LABEL_32:
  v44 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v18 = v47;
  (v56)(v47, v51, v41);
  *(v18 + v44) = v42;
  *(v18 + v44 + 8) = v43;
  v25 = v57;
  swift_storeEnumTagMultiPayload(v18, v57, 1);
  v3 = v53;
LABEL_15:
  v30 = v18;
  v31 = v48;
  outlined init with take of MLClassifierMetrics(v30, v48, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined init with take of MLClassifierMetrics(v31, v3, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v32 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v32, 1, v25);
}

uint64_t MLImageClassifier.ModelParameters.ClassifierType.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(1684957547, 0xE400000000000000);
  if ((v4 & 1) == 0)
  {
    goto LABEL_13;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v3, v14);
  if (!swift_dynamicCast(&v17, v14, &type metadata for Any + 8, &type metadata for String, 6))
  {
    goto LABEL_13;
  }

  v5 = v17;
  v6 = v18;
  if (v17 ^ 0xD000000000000011 | v18 ^ (&aLogisticregres_1[-32] | 0x8000000000000000))
  {
    v16 = v18;
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000011, &aLogisticregres_1[-32] | 0x8000000000000000, v17, v18, 0);
    v6 = v16;
    if ((v7 & 1) == 0)
    {
      v9 = &aMultilayerperc[-32] | 0x8000000000000000;
      if (!(v5 ^ 0xD000000000000014 | v9 ^ v16))
      {
        v16;
        goto LABEL_10;
      }

      v10 = v5;
      v11 = v16;
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)(0xD000000000000014, v9, v10, v16, 0);
      v11;
      if (v12)
      {
LABEL_10:
        specialized Dictionary.subscript.getter(0x7A6953726579616CLL, 0xEA00000000007365, a1);
        a1;
        if (v15)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
          if (swift_dynamicCast(&v17, v14, &type metadata for Any + 8, v13, 6))
          {
            result = v17;
            goto LABEL_15;
          }
        }

        else
        {
          _sypSgWOhTm_0(v14, &demangling cache variable for type metadata for Any?);
        }

LABEL_14:
        result = 2;
        goto LABEL_15;
      }

LABEL_13:
      a1;
      goto LABEL_14;
    }
  }

  v6;
  a1;
  result = 0;
LABEL_15:
  *v2 = result;
  return result;
}

uint64_t MLImageClassifier.ModelParameters.ValidationData.init(dictionary:tableFile:)(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = v2;
  v4 = type metadata accessor for URL(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v39 = &v37;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLImageClassifier.DataSource?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v38 = &v37;
  v12 = type metadata accessor for MLImageClassifier.DataSource(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v40 = &v37;
  v52 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
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
  v49 = &type metadata for Any + 8;
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
            MLImageClassifier.DataSource.init(dictionary:tableFile:)(v49, v28);
            (*(v5 + 8))(v50, v4);
            v30 = v29;
            v22 = 1;
            if (__swift_getEnumTagSinglePayload(v30, 1, v12) == 1)
            {
              _sypSgWOhTm_0(v30, &demangling cache variable for type metadata for MLImageClassifier.DataSource?);
              v25 = 1;
              v3 = v51;
              goto LABEL_11;
            }

            v34 = v30;
            v35 = v40;
            outlined init with take of MLClassifierMetrics(v34, v40, type metadata accessor for MLImageClassifier.DataSource);
            v36 = v35;
            v24 = v47;
            outlined init with take of MLClassifierMetrics(v36, v47, type metadata accessor for MLImageClassifier.DataSource);
LABEL_29:
            v23 = v52;
            goto LABEL_7;
          }
        }

        else
        {
          _sypSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
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
          _sypSgWOhTm_0(&v41, &demangling cache variable for type metadata for Any?);
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
  outlined init with take of MLClassifierMetrics(v24, v51, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v3, v25, 1, v23);
}

NSURL *MLImageClassifier.PersistentParameters.save(toSessionDirectory:)(uint64_t a1)
{
  v36 = a1;
  v41 = type metadata accessor for URL(0);
  v40 = *(v41 - 8);
  v3 = *(v40 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v35 = &v34;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  inited = swift_initStackObject(v6, v46);
  *(inited + 16) = 5;
  *(inited + 24) = 10;
  *(inited + 32) = 0x73656C6966;
  *(inited + 40) = 0xE500000000000000;
  v8 = *v2;
  v39 = v2;
  v9 = specialized _NativeDictionary.mapValues<A>(_:)(v8);
  v37 = v1;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : [String]]);
  *(inited + 48) = v9;
  *(inited + 80) = 0x69746164696C6176;
  *(inited + 88) = 0xEA00000000006E6FLL;
  v34 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v10 = v2 + *(v34 + 20);
  v11 = MLImageClassifier.ModelParameters.ValidationData.dictionary.getter();
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
  *(inited + 120) = v12;
  *(inited + 96) = v11;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = "logistic_regressor" + 0x8000000000000000;
  v13 = v34;
  v14 = v39 + *(v34 + 24);
  v15 = MLImageClassifier.FeatureExtractorType.dictionary.getter();
  v38 = v12;
  *(inited + 168) = v12;
  *(inited + 144) = v15;
  strcpy((inited + 176), "max_iterations");
  *(inited + 191) = -18;
  v16 = v39;
  v17 = *(v39 + v13[8]);
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = v17;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = "Empty training input." + 0x8000000000000000;
  v18 = *(v16 + v13[9]);
  *(inited + 264) = &type metadata for Int;
  *(inited + 240) = v18;
  v19 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
  v20 = *(v16 + v13[7]);
  if (v20 != 2)
  {
    *&v44 = *(v16 + v13[7]);
    outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v20);
    v21 = MLImageClassifier.ModelParameters.ClassifierType.dictionary.getter();
    v20;
    v45 = v38;
    *&v44 = v21;
    outlined init with take of Any(&v44, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v19);
    v42 = v19;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x6966697373616C63, 0xEF657079745F7265, isUniquelyReferenced_nonNull_native);
    v19 = v42;
  }

  v23 = objc_opt_self(NSPropertyListSerialization);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v19;
  *&v44 = 0;
  v25 = [v23 dataWithPropertyList:isa format:200 options:0 error:&v44];
  v26 = v25;

  v27 = v44;
  if (v26)
  {
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)(v26);
    v30 = v29;

    v31 = v35;
    URL.appendingPathComponent(_:)(0xD000000000000010, "ObjectDetectorMetrics." + 0x8000000000000000);
    Data.write(to:options:)(v31, 0, v28, v30);
    (*(v40 + 8))(v31, v41);
    outlined consume of Data._Representation(v28, v30);
  }

  else
  {
    v32 = v27;
    _convertNSErrorToError(_:)(v27);

    swift_willThrow(v32, "dataWithPropertyList:format:options:error:");
  }

  return __stack_chk_guard;
}

uint64_t MLImageClassifier.ModelParameters.ValidationData.dictionary.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MLSoundClassifier.DataSource(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  *&v42 = &v33;
  v6 = *(*(type metadata accessor for MLImageClassifier.DataSource(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  outlined init with copy of MLTrainingSessionParameters(v1, &v33, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  switch(swift_getEnumCaseMultiPayload(&v33, v9))
  {
    case 0u:
      v13 = v34;
      v14 = v35;
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v42 = v33;
      inited = swift_initStackObject(v15, &v33);
      inited[2] = 2;
      inited[3] = 4;
      inited[4] = 1684957547;
      inited[5] = 0xE400000000000000;
      inited[9] = &type metadata for String;
      inited[6] = 0x74696C7073;
      inited[7] = 0xE500000000000000;
      inited[10] = 1635017060;
      inited[11] = 0xE400000000000000;
      v39 = v42;
      v40 = v13;
      v41 = v14;
      v17 = MLSplitStrategy.dictionary.getter();
      inited[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      inited[12] = v17;
      v18 = &type metadata for Any + 8;
      v19 = inited;
      goto LABEL_5;
    case 1u:
      outlined init with take of MLClassifierMetrics(&v33, &v33, type metadata accessor for MLImageClassifier.DataSource);
      v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v30 = swift_initStackObject(v29, v37);
      v30[2] = 2;
      v30[3] = 4;
      v30[4] = 1684957547;
      v30[5] = 0xE400000000000000;
      v30[9] = &type metadata for String;
      v30[6] = 0x756F735F61746164;
      v30[7] = 0xEB00000000656372;
      v30[10] = 1635017060;
      v30[11] = 0xE400000000000000;
      v31 = MLImageClassifier.DataSource.dictionary.getter();
      v30[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v30[12] = v31;
      v24 = Dictionary.init(dictionaryLiteral:)(v30, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      v26 = &v33;
      v25 = type metadata accessor for MLImageClassifier.DataSource;
      goto LABEL_7;
    case 2u:
      v20 = v42;
      *v42 = v33;
      swift_storeEnumTagMultiPayload(v20, v2, 2);
      v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v22 = swift_initStackObject(v21, v36);
      v22[2] = 2;
      v22[3] = 4;
      v22[4] = 1684957547;
      v22[5] = 0xE400000000000000;
      v22[9] = &type metadata for String;
      v22[6] = 0x756F735F61746164;
      v22[7] = 0xEB00000000656372;
      v22[10] = 1635017060;
      v22[11] = 0xE400000000000000;
      v23 = MLSoundClassifier.DataSource.dictionary.getter();
      v22[15] = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Any]);
      v22[12] = v23;
      v24 = Dictionary.init(dictionaryLiteral:)(v22, &type metadata for String, &type metadata for Any + 8, &protocol witness table for String);
      v25 = type metadata accessor for MLSoundClassifier.DataSource;
      v26 = v20;
LABEL_7:
      outlined destroy of MLActivityClassifier.ModelParameters(v26, v25);
      break;
    case 3u:
      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
      v28 = swift_initStackObject(v27, v38);
      v28[2] = 1;
      v28[3] = 2;
      v28[4] = 1684957547;
      v28[5] = 0xE400000000000000;
      v28[9] = &type metadata for String;
      v28[6] = 1701736302;
      v28[7] = 0xE400000000000000;
      v18 = &type metadata for Any + 8;
      v19 = v28;
LABEL_5:
      v24 = Dictionary.init(dictionaryLiteral:)(v19, &type metadata for String, v18, &protocol witness table for String);
      break;
  }

  return v24;
}