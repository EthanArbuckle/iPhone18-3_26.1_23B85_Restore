uint64_t MLActionClassifier.evaluation(on:)()
{
  v3 = v0;
  MLActionClassifier.DataSource.keypointsWithAnnotations(targetFrameRate:)(0x403E000000000000uLL);
  if (v1)
  {
    *v3 = v1;
    v4 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v3, v4, 2);
  }

  else
  {
    v6 = v9;
    v7 = v10;
    v11 = v10;
    v8 = *v2;
    LOBYTE(v10) = v10 & 1;
    outlined copy of Result<_DataTable, Error>(v9, v7);
    _Model.classifierEvaluation(_:)(&v9, 30.0);
    outlined consume of Result<_DataTable, Error>(v6, v11);
    return outlined consume of MLDataTable?(v9, v10);
  }
}

uint64_t MLActionClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  qmemcpy(v6, a2, 0x48uLL);
  MLActionClassifier.addActionClassifierSpecificMetadata(_:)(v6);
  v3 = *v2;
  qmemcpy(v6, v5, 0x48uLL);
  _Model.write(to:metadata:)(a1, v6);
  return outlined release of MLModelMetadata?(v5, outlined consume of MLModelMetadata?);
}

void *MLActionClassifier.addActionClassifierSpecificMetadata(_:)(const void *a1)
{
  v3 = v1;
  v4 = type metadata accessor for MLActionClassifier(0);
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
    v33 = v2 + *(v4 + 20);
    v34 = type metadata accessor for MLActionClassifier.ModelParameters(0);
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
      v23 = log + *(v150 + 20);
      v144 = v21;
      v24 = v22;
      v25 = type metadata accessor for MLActionClassifier.ModelParameters(0);
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
      v66 = __swift_project_value_buffer(v148, static MLActionClassifier.logger);
      v67 = v140;
      (*(v147 + 16))(v140, v66, v65);
      v68 = v149;
      outlined init with copy of MLTrainingSessionParameters(log, v149, type metadata accessor for MLActionClassifier);
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
        v76 = *(*(v129 + 28) + *(v150 + 20) + v68);
        outlined destroy of MLActivityClassifier.ModelParameters(v75, type metadata accessor for MLActionClassifier);
        *(v74 + 14) = v76;
        _os_log_impl(&dword_0, v70, type[0], "Prediction window size %s is set incorrectly, change it to %ld frames.", v74, 0x16u);
        v77 = v131;
        __swift_destroy_boxed_opaque_existential_1Tm(v131);
        v77, -1, -1;
        v74, -1, -1;
      }

      else
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v68, type metadata accessor for MLActionClassifier);

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
      v53 = log + *(v150 + 20);
      v120 = *&v53[*(type metadata accessor for MLActionClassifier.ModelParameters(0) + 28)];
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
      v86 = log + *(v150 + 20);
      v87 = v83;
      v88 = type metadata accessor for MLActionClassifier.ModelParameters(0);
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
      v101 = __swift_project_value_buffer(v148, static MLActionClassifier.logger);
      (*(v147 + 16))(v139, v101, v100);
      v102 = v137;
      outlined init with copy of MLTrainingSessionParameters(log, v137, type metadata accessor for MLActionClassifier);
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
        *(v105 + 14) = *(v137 + *(v150 + 20) + *(v141 + 40));
        outlined destroy of MLActivityClassifier.ModelParameters(v107, type metadata accessor for MLActionClassifier);
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
        outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLActionClassifier);
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
      v93 = log + *(v150 + 20);
      v94 = type metadata accessor for MLActionClassifier.ModelParameters(0);
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
  v46 = log + *(v150 + 20);
  log = type metadata accessor for MLActionClassifier.ModelParameters(0);
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

uint64_t MLActionClassifier.write(toFile:metadata:)(uint64_t a1, void *a2, const void *a3)
{
  qmemcpy(v7, a3, sizeof(v7));
  MLActionClassifier.addActionClassifierSpecificMetadata(_:)(v7);
  v4 = *v3;
  qmemcpy(v7, v6, sizeof(v7));
  _Model.write(toFile:metadata:)(a1, a2, v7);
  return outlined release of MLModelMetadata?(v6, outlined consume of MLModelMetadata?);
}

void *MLActionClassifier.debugDescription.getter(double a1)
{
  v39 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v2 = *(*(v39 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v40 = &v30;
  v5 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v34 = &v30;
  v8 = alloca(v5);
  v9 = alloca(v5);
  v10 = alloca(v5);
  v11 = alloca(v5);
  v35 = ModelType.description.getter(*(*v1 + 32));
  v13 = v12;
  v14 = *(type metadata accessor for MLActionClassifier(0) + 20) + v1;
  v33._countAndFlagsBits = MLActionClassifier.ModelParameters.description.getter();
  v33._object = v15;
  _Model.makeClassifierMetrics(onTraining:onValidation:)(1, 2, a1);
  v32._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v32._object = v16;
  outlined destroy of MLActivityClassifier.ModelParameters(&v30, type metadata accessor for MLClassifierMetrics);
  _Model.makeClassifierMetrics(onTraining:onValidation:)(2, 1, a1);
  v17 = v40;
  outlined init with copy of MLTrainingSessionParameters(&v30, v40, type metadata accessor for MLClassifierMetrics.Contents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v17, v39);
  outlined destroy of MLActivityClassifier.ModelParameters(v17, type metadata accessor for MLClassifierMetrics.Contents);
  outlined destroy of MLActivityClassifier.ModelParameters(&v30, type metadata accessor for MLClassifierMetrics);
  v18 = v34;
  _Model.makeClassifierMetrics(onTraining:onValidation:)(2, 1, a1);
  v36._countAndFlagsBits = MLClassifierMetrics.accuracyDescription.getter();
  v40 = v19;
  outlined destroy of MLActivityClassifier.ModelParameters(v18, type metadata accessor for MLClassifierMetrics);
  v36._object = v35;
  v37 = v13;
  v39 = v13;
  v13;
  v20._countAndFlagsBits = 0x656D617261500A0ALL;
  v20._object = 0xED00000A73726574;
  String.append(_:)(v20);
  v21 = v37;
  v37;
  object = v33._object;
  String.append(_:)(v33);
  v21;
  v31._countAndFlagsBits = 0xD00000000000001ELL;
  v31._object = "ActivityClassifier\n\nParameters\n" + 0x8000000000000000;
  v23 = v32._object;
  String.append(_:)(v32);
  v24 = v31._object;
  String.append(_:)(v31);
  v24;
  if (EnumCaseMultiPayload > 1)
  {
    v28 = object;
    v26 = v40;
  }

  else
  {
    v31._countAndFlagsBits = 0xD000000000000020;
    v31._object = "\nPerformance on Training Data\n" + 0x8000000000000000;
    v25._countAndFlagsBits = v36._countAndFlagsBits;
    v26 = v40;
    v25._object = v40;
    String.append(_:)(v25);
    v27 = v31._object;
    String.append(_:)(v31);
    object;
    v28 = v23;
    v23 = v27;
  }

  v28;
  v23;
  v26;
  v39;
  return v36._object;
}

NSAttributedString MLActionClassifier.playgroundDescription.getter(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSAttributedString, NSAttributedString_ptr);
  v4._countAndFlagsBits = MLActionClassifier.debugDescription.getter(a1);
  v4._object = v5;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v4).super.isa;
  v2[3].super.isa = v3;
  v2->super.isa = result.super.isa;
  return result;
}

uint64_t sub_15845C()
{
  v1 = *(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 41);
  v4 = *(v1 + 64);
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  outlined consume of Result<_DataTable, Error>(*(v0 + 32), *(v0 + 40));
  v5 = v3 + v0;
  v6 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v6) == 1)
  {
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
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

uint64_t partial apply for closure #1 in MLActionClassifier.init(trainingData:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  v9 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v10 = *(v1 + 40);
  v6 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 41));
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLActionClassifier.init(trainingData:parameters:)(a1, v4, v9, v5, v10, v6);
}

uint64_t sub_15876A()
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

uint64_t partial apply for closure #1 in MLActionClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLCheckpoint(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(checkpoint:)(a1, v4);
}

uint64_t *initializeBufferWithCopyOfBuffer for MLActionClassifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v9 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);

    if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
    {
      v10 = type metadata accessor for MLActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v42 = type metadata accessor for URL(0);
          v49 = *(*(v42 - 8) + 16);
          v49(v7, v8, v42);
          v45 = v10;
          v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v49(&v7[v16[12]], &v8[v16[12]], v42);
          v17 = v16[16];
          *&v7[v17] = *&v8[v17];
          v18 = *&v8[v17 + 8];
          *&v7[v17 + 8] = v18;
          v19 = v16[20];
          *&v7[v19] = *&v8[v19];
          v50 = *&v8[v19 + 8];
          *&v7[v19 + 8] = v50;
          v20 = v16[24];
          *&v7[v20] = *&v8[v20];
          v43 = *&v8[v20 + 8];
          *&v7[v20 + 8] = v43;
          v21 = v16[28];
          *&v7[v21] = *&v8[v21];
          goto LABEL_12;
        case 1u:
        case 2u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 16))(v7, v8, v11);
          goto LABEL_15;
        case 3u:
          v46 = v10;
          v22 = *v8;
          v51 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v51);
          *v7 = v22;
          v7[8] = v51;
          *(v7 + 2) = *(v8 + 2);
          v23 = *(v8 + 3);
          *(v7 + 3) = v23;
          *(v7 + 4) = *(v8 + 4);
          v24 = *(v8 + 5);
          *(v7 + 5) = v24;
          *(v7 + 6) = *(v8 + 6);
          v52 = *(v8 + 7);
          *(v7 + 7) = v52;
          v23;
          LOBYTE(v23) = v24;
          v10 = v46;
          v23;
          v15 = v52;
          goto LABEL_14;
        case 4u:
          v44 = v10;
          v12 = *v8;
          v47 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v47);
          *v7 = v12;
          v7[8] = v47;
          *(v7 + 2) = *(v8 + 2);
          v13 = *(v8 + 3);
          *(v7 + 3) = v13;
          *(v7 + 4) = *(v8 + 4);
          v14 = *(v8 + 5);
          *(v7 + 5) = v14;
          *(v7 + 6) = *(v8 + 6);
          v48 = *(v8 + 7);
          *(v7 + 7) = v48;
          *(v7 + 8) = *(v8 + 8);
          v41 = *(v8 + 9);
          *(v7 + 9) = v41;
          v13;
          LOBYTE(v13) = v14;
          v10 = v44;
          v13;
          v48;
          v15 = v41;
          goto LABEL_14;
        case 5u:
          v25 = type metadata accessor for DataFrame(0);
          (*(*(v25 - 8) + 16))(v7, v8, v25);
          v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v27 = v26[12];
          *&v7[v27] = *&v8[v27];
          v28 = *&v8[v27 + 8];
          *&v7[v27 + 8] = v28;
          v29 = v26[16];
          *&v7[v29] = *&v8[v29];
          v53 = *&v8[v29 + 8];
          *&v7[v29 + 8] = v53;
          v30 = v26[20];
          *&v7[v30] = *&v8[v30];
          v45 = v10;
          v31 = *&v8[v30 + 8];
          *&v7[v30 + 8] = v31;
          v28;
          v32 = v53;
          goto LABEL_13;
        case 6u:
          v33 = type metadata accessor for DataFrame(0);
          (*(*(v33 - 8) + 16))(v7, v8, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v35 = v34[12];
          *&v7[v35] = *&v8[v35];
          v18 = *&v8[v35 + 8];
          *&v7[v35 + 8] = v18;
          v36 = v34[16];
          *&v7[v36] = *&v8[v36];
          v50 = *&v8[v36 + 8];
          *&v7[v36 + 8] = v50;
          v37 = v34[20];
          *&v7[v37] = *&v8[v37];
          v43 = *&v8[v37 + 8];
          *&v7[v37 + 8] = v43;
          v21 = v34[24];
          *&v7[v21] = *&v8[v21];
          v45 = v10;
LABEL_12:
          v31 = *&v8[v21 + 8];
          *&v7[v21 + 8] = v31;
          v18;
          v50;
          v32 = v43;
LABEL_13:
          v32;
          v15 = v31;
          v10 = v45;
LABEL_14:
          v15;
LABEL_15:
          swift_storeEnumTagMultiPayload(v7, v10, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v7, v9, 1);
          break;
      }
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }

    v38 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    *&v7[v38[5]] = *&v8[v38[5]];
    *&v7[v38[6]] = *&v8[v38[6]];
    *&v7[v38[7]] = *&v8[v38[7]];
    *&v7[v38[8]] = *&v8[v38[8]];
    *&v7[v38[10]] = *&v8[v38[10]];
  }

  return v5;
}

uint64_t destroy for MLActionClassifier(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  v4 = a1 + *(a2 + 20);
  v5 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  result = swift_getEnumCaseMultiPayload(v4, v5);
  if (result == 1)
  {
    v7 = type metadata accessor for MLActionClassifier.DataSource(0);
    result = swift_getEnumCaseMultiPayload(v4, v7);
    switch(result)
    {
      case 0:
        v9 = type metadata accessor for URL(0);
        v10 = *(*(v9 - 8) + 8);
        v10(v4, v9);
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v10(&v4[v11[12]], v9);
        *&v4[v11[16] + 8];
        *&v4[v11[20] + 8];
        *&v4[v11[24] + 8];
        v12 = v11[28];
        goto LABEL_10;
      case 1:
      case 2:
        v8 = type metadata accessor for URL(0);
        return (*(*(v8 - 8) + 8))(v4, v8);
      case 3:
        outlined consume of Result<_DataTable, Error>(*v4, *(v4 + 2));
        *(v4 + 3);
        *(v4 + 5);
        return *(v4 + 7);
      case 4:
        outlined consume of Result<_DataTable, Error>(*v4, *(v4 + 2));
        *(v4 + 3);
        *(v4 + 5);
        *(v4 + 7);
        return *(v4 + 9);
      case 5:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v4, v13);
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v4[v14[12] + 8];
        *&v4[v14[16] + 8];
        v12 = v14[20];
        goto LABEL_10;
      case 6:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 8))(v4, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v4[v16[12] + 8];
        *&v4[v16[16] + 8];
        *&v4[v16[20] + 8];
        v12 = v16[24];
LABEL_10:
        result = *&v4[v12 + 8];
        break;
      default:
        return result;
    }
  }

  return result;
}

void *initializeWithCopy for MLActionClassifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);

  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = type metadata accessor for MLActionClassifier.DataSource(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v8);
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v40 = type metadata accessor for URL(0);
        v47 = *(*(v40 - 8) + 16);
        v47(v5, v6, v40);
        v43 = v8;
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v47(&v5[v14[12]], &v6[v14[12]], v40);
        v15 = v14[16];
        *&v5[v15] = *&v6[v15];
        v16 = *&v6[v15 + 8];
        *&v5[v15 + 8] = v16;
        v17 = v14[20];
        *&v5[v17] = *&v6[v17];
        v48 = *&v6[v17 + 8];
        *&v5[v17 + 8] = v48;
        v18 = v14[24];
        *&v5[v18] = *&v6[v18];
        v41 = *&v6[v18 + 8];
        *&v5[v18 + 8] = v41;
        v19 = v14[28];
        *&v5[v19] = *&v6[v19];
        goto LABEL_10;
      case 1u:
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 16))(v5, v6, v9);
        goto LABEL_13;
      case 3u:
        v44 = v8;
        v20 = *v6;
        v49 = v6[8];
        outlined copy of Result<_DataTable, Error>(*v6, v49);
        *v5 = v20;
        v5[8] = v49;
        *(v5 + 2) = *(v6 + 2);
        v21 = *(v6 + 3);
        *(v5 + 3) = v21;
        *(v5 + 4) = *(v6 + 4);
        v22 = *(v6 + 5);
        *(v5 + 5) = v22;
        *(v5 + 6) = *(v6 + 6);
        v50 = *(v6 + 7);
        *(v5 + 7) = v50;
        v21;
        LOBYTE(v21) = v22;
        v8 = v44;
        v21;
        v13 = v50;
        goto LABEL_12;
      case 4u:
        v42 = v8;
        v10 = *v6;
        v45 = v6[8];
        outlined copy of Result<_DataTable, Error>(*v6, v45);
        *v5 = v10;
        v5[8] = v45;
        *(v5 + 2) = *(v6 + 2);
        v11 = *(v6 + 3);
        *(v5 + 3) = v11;
        *(v5 + 4) = *(v6 + 4);
        v12 = *(v6 + 5);
        *(v5 + 5) = v12;
        *(v5 + 6) = *(v6 + 6);
        v46 = *(v6 + 7);
        *(v5 + 7) = v46;
        *(v5 + 8) = *(v6 + 8);
        v39 = *(v6 + 9);
        *(v5 + 9) = v39;
        v11;
        LOBYTE(v11) = v12;
        v8 = v42;
        v11;
        v46;
        v13 = v39;
        goto LABEL_12;
      case 5u:
        v23 = type metadata accessor for DataFrame(0);
        (*(*(v23 - 8) + 16))(v5, v6, v23);
        v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        v25 = v24[12];
        *&v5[v25] = *&v6[v25];
        v26 = *&v6[v25 + 8];
        *&v5[v25 + 8] = v26;
        v27 = v24[16];
        *&v5[v27] = *&v6[v27];
        v51 = *&v6[v27 + 8];
        *&v5[v27 + 8] = v51;
        v28 = v24[20];
        *&v5[v28] = *&v6[v28];
        v43 = v8;
        v29 = *&v6[v28 + 8];
        *&v5[v28 + 8] = v29;
        v26;
        v30 = v51;
        goto LABEL_11;
      case 6u:
        v31 = type metadata accessor for DataFrame(0);
        (*(*(v31 - 8) + 16))(v5, v6, v31);
        v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v33 = v32[12];
        *&v5[v33] = *&v6[v33];
        v16 = *&v6[v33 + 8];
        *&v5[v33 + 8] = v16;
        v34 = v32[16];
        *&v5[v34] = *&v6[v34];
        v48 = *&v6[v34 + 8];
        *&v5[v34 + 8] = v48;
        v35 = v32[20];
        *&v5[v35] = *&v6[v35];
        v41 = *&v6[v35 + 8];
        *&v5[v35 + 8] = v41;
        v19 = v32[24];
        *&v5[v19] = *&v6[v19];
        v43 = v8;
LABEL_10:
        v29 = *&v6[v19 + 8];
        *&v5[v19 + 8] = v29;
        v16;
        v48;
        v30 = v41;
LABEL_11:
        v30;
        v13 = v29;
        v8 = v43;
LABEL_12:
        v13;
LABEL_13:
        swift_storeEnumTagMultiPayload(v5, v8, EnumCaseMultiPayload);
        swift_storeEnumTagMultiPayload(v5, v7, 1);
        break;
    }
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  v36 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v5[v36[5]] = *&v6[v36[5]];
  *&v5[v36[6]] = *&v6[v36[6]];
  *&v5[v36[7]] = *&v6[v36[7]];
  *&v5[v36[8]] = *&v6[v36[8]];
  *&v5[v36[10]] = *&v6[v36[10]];
  return a1;
}

uint64_t *assignWithCopy for MLActionClassifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v9 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
    {
      v10 = type metadata accessor for MLActionClassifier.DataSource(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v10);
      switch(EnumCaseMultiPayload)
      {
        case 0u:
          v42 = type metadata accessor for URL(0);
          v49 = *(*(v42 - 8) + 16);
          v49(v7, v8, v42);
          v45 = v10;
          v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v49(&v7[v16[12]], &v8[v16[12]], v42);
          v17 = v16[16];
          *&v7[v17] = *&v8[v17];
          v18 = *&v8[v17 + 8];
          *&v7[v17 + 8] = v18;
          v19 = v16[20];
          *&v7[v19] = *&v8[v19];
          v50 = *&v8[v19 + 8];
          *&v7[v19 + 8] = v50;
          v20 = v16[24];
          *&v7[v20] = *&v8[v20];
          v43 = *&v8[v20 + 8];
          *&v7[v20 + 8] = v43;
          v21 = v16[28];
          *&v7[v21] = *&v8[v21];
          goto LABEL_11;
        case 1u:
        case 2u:
          v11 = type metadata accessor for URL(0);
          (*(*(v11 - 8) + 16))(v7, v8, v11);
          goto LABEL_14;
        case 3u:
          v46 = v10;
          v22 = *v8;
          v51 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v51);
          *v7 = v22;
          v7[8] = v51;
          *(v7 + 2) = *(v8 + 2);
          v23 = *(v8 + 3);
          *(v7 + 3) = v23;
          *(v7 + 4) = *(v8 + 4);
          v24 = *(v8 + 5);
          *(v7 + 5) = v24;
          *(v7 + 6) = *(v8 + 6);
          v52 = *(v8 + 7);
          *(v7 + 7) = v52;
          v23;
          LOBYTE(v23) = v24;
          v10 = v46;
          v23;
          v15 = v52;
          goto LABEL_13;
        case 4u:
          v44 = v10;
          v12 = *v8;
          v47 = v8[8];
          outlined copy of Result<_DataTable, Error>(*v8, v47);
          *v7 = v12;
          v7[8] = v47;
          *(v7 + 2) = *(v8 + 2);
          v13 = *(v8 + 3);
          *(v7 + 3) = v13;
          *(v7 + 4) = *(v8 + 4);
          v14 = *(v8 + 5);
          *(v7 + 5) = v14;
          *(v7 + 6) = *(v8 + 6);
          v48 = *(v8 + 7);
          *(v7 + 7) = v48;
          *(v7 + 8) = *(v8 + 8);
          v41 = *(v8 + 9);
          *(v7 + 9) = v41;
          v13;
          LOBYTE(v13) = v14;
          v10 = v44;
          v13;
          v48;
          v15 = v41;
          goto LABEL_13;
        case 5u:
          v25 = type metadata accessor for DataFrame(0);
          (*(*(v25 - 8) + 16))(v7, v8, v25);
          v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          v27 = v26[12];
          *&v7[v27] = *&v8[v27];
          v28 = *&v8[v27 + 8];
          *&v7[v27 + 8] = v28;
          v29 = v26[16];
          *&v7[v29] = *&v8[v29];
          v53 = *&v8[v29 + 8];
          *&v7[v29 + 8] = v53;
          v30 = v26[20];
          *&v7[v30] = *&v8[v30];
          v45 = v10;
          v31 = *&v8[v30 + 8];
          *&v7[v30 + 8] = v31;
          v28;
          v32 = v53;
          goto LABEL_12;
        case 6u:
          v33 = type metadata accessor for DataFrame(0);
          (*(*(v33 - 8) + 16))(v7, v8, v33);
          v34 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v35 = v34[12];
          *&v7[v35] = *&v8[v35];
          v18 = *&v8[v35 + 8];
          *&v7[v35 + 8] = v18;
          v36 = v34[16];
          *&v7[v36] = *&v8[v36];
          v50 = *&v8[v36 + 8];
          *&v7[v36 + 8] = v50;
          v37 = v34[20];
          *&v7[v37] = *&v8[v37];
          v43 = *&v8[v37 + 8];
          *&v7[v37 + 8] = v43;
          v21 = v34[24];
          *&v7[v21] = *&v8[v21];
          v45 = v10;
LABEL_11:
          v31 = *&v8[v21 + 8];
          *&v7[v21 + 8] = v31;
          v18;
          v50;
          v32 = v43;
LABEL_12:
          v32;
          v15 = v31;
          v10 = v45;
LABEL_13:
          v15;
LABEL_14:
          swift_storeEnumTagMultiPayload(v7, v10, EnumCaseMultiPayload);
          swift_storeEnumTagMultiPayload(v7, v9, 1);
          break;
      }
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }
  }

  v38 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v7[v38[5]] = *&v8[v38[5]];
  *&v7[v38[6]] = *&v8[v38[6]];
  *&v7[v38[7]] = *&v8[v38[7]];
  *&v7[v38[8]] = *&v8[v38[8]];
  *&v7[v38[10]] = *&v8[v38[10]];
  return a1;
}

void *initializeWithTake for MLActionClassifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v6, v8))
    {
      case 0u:
        v23 = type metadata accessor for URL(0);
        v24 = *(*(v23 - 8) + 32);
        v24(v5, v6, v23);
        v22 = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v24(&v5[v9[12]], &v6[v9[12]], v23);
        *&v5[v9[16]] = *&v6[v9[16]];
        *&v5[v9[20]] = *&v6[v9[20]];
        *&v5[v9[24]] = *&v6[v9[24]];
        *&v5[v9[28]] = *&v6[v9[28]];
        v10 = v5;
        v11 = v22;
        v12 = 0;
        goto LABEL_11;
      case 1u:
        v14 = type metadata accessor for URL(0);
        (*(*(v14 - 8) + 32))(v5, v6, v14);
        v21 = 1;
        goto LABEL_10;
      case 2u:
        v13 = type metadata accessor for URL(0);
        (*(*(v13 - 8) + 32))(v5, v6, v13);
        v21 = 2;
        goto LABEL_10;
      case 5u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 32))(v5, v6, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *&v5[v16[12]] = *&v6[v16[12]];
        *&v5[v16[16]] = *&v6[v16[16]];
        *&v5[v16[20]] = *&v6[v16[20]];
        v21 = 5;
        goto LABEL_10;
      case 6u:
        v17 = type metadata accessor for DataFrame(0);
        (*(*(v17 - 8) + 32))(v5, v6, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *&v5[v18[12]] = *&v6[v18[12]];
        *&v5[v18[16]] = *&v6[v18[16]];
        *&v5[v18[20]] = *&v6[v18[20]];
        *&v5[v18[24]] = *&v6[v18[24]];
        v21 = 6;
LABEL_10:
        v12 = v21;
        v10 = v5;
        v11 = v8;
LABEL_11:
        swift_storeEnumTagMultiPayload(v10, v11, v12);
        break;
      default:
        memcpy(v5, v6, *(*(v8 - 8) + 64));
        break;
    }

    swift_storeEnumTagMultiPayload(v5, v7, 1);
  }

  else
  {
    memcpy(v5, v6, *(*(v7 - 8) + 64));
  }

  v19 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v5[v19[5]] = *&v6[v19[5]];
  *&v5[v19[6]] = *&v6[v19[6]];
  *&v5[v19[7]] = *&v6[v19[7]];
  *&v5[v19[8]] = *&v6[v19[8]];
  *&v5[v19[10]] = *&v6[v19[10]];
  return a1;
}

uint64_t *assignWithTake for MLActionClassifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = *(a3 + 20);
  v7 = a1 + v6;
  v8 = a2 + v6;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLActionClassifier.ModelParameters.ValidationData);
    v9 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
    if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
    {
      v10 = type metadata accessor for MLActionClassifier.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v8, v10))
      {
        case 0u:
          v25 = type metadata accessor for URL(0);
          v26 = *(*(v25 - 8) + 32);
          v26(v7, v8, v25);
          v24 = v10;
          v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          v26(&v7[v11[12]], &v8[v11[12]], v25);
          *&v7[v11[16]] = *&v8[v11[16]];
          *&v7[v11[20]] = *&v8[v11[20]];
          *&v7[v11[24]] = *&v8[v11[24]];
          *&v7[v11[28]] = *&v8[v11[28]];
          v12 = v7;
          v13 = v24;
          v14 = 0;
          goto LABEL_12;
        case 1u:
          v16 = type metadata accessor for URL(0);
          (*(*(v16 - 8) + 32))(v7, v8, v16);
          v23 = 1;
          goto LABEL_11;
        case 2u:
          v15 = type metadata accessor for URL(0);
          (*(*(v15 - 8) + 32))(v7, v8, v15);
          v23 = 2;
          goto LABEL_11;
        case 5u:
          v17 = type metadata accessor for DataFrame(0);
          (*(*(v17 - 8) + 32))(v7, v8, v17);
          v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
          *&v7[v18[12]] = *&v8[v18[12]];
          *&v7[v18[16]] = *&v8[v18[16]];
          *&v7[v18[20]] = *&v8[v18[20]];
          v23 = 5;
          goto LABEL_11;
        case 6u:
          v19 = type metadata accessor for DataFrame(0);
          (*(*(v19 - 8) + 32))(v7, v8, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
          *&v7[v20[12]] = *&v8[v20[12]];
          *&v7[v20[16]] = *&v8[v20[16]];
          *&v7[v20[20]] = *&v8[v20[20]];
          *&v7[v20[24]] = *&v8[v20[24]];
          v23 = 6;
LABEL_11:
          v14 = v23;
          v12 = v7;
          v13 = v10;
LABEL_12:
          swift_storeEnumTagMultiPayload(v12, v13, v14);
          break;
        default:
          memcpy(v7, v8, *(*(v10 - 8) + 64));
          break;
      }

      swift_storeEnumTagMultiPayload(v7, v9, 1);
    }

    else
    {
      memcpy(v7, v8, *(*(v9 - 8) + 64));
    }
  }

  v21 = type metadata accessor for MLActionClassifier.ModelParameters(0);
  *&v7[v21[5]] = *&v8[v21[5]];
  *&v7[v21[6]] = *&v8[v21[6]];
  *&v7[v21[7]] = *&v8[v21[7]];
  *&v7[v21[8]] = *&v8[v21[8]];
  *&v7[v21[10]] = *&v8[v21[10]];
  return a1;
}

uint64_t sub_159C7D(void *a1, unsigned int a2, uint64_t a3)
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
    v5 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    return __swift_getEnumTagSinglePayload(a1 + *(a3 + 20), a2, v5);
  }

  return result;
}

uint64_t sub_159D04(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v5 = type metadata accessor for MLActionClassifier.ModelParameters(0);
    return __swift_storeEnumTagSinglePayload(a1 + *(a4 + 20), a2, a2, v5);
  }

  return result;
}

uint64_t type metadata completion function for MLActionClassifier(uint64_t a1)
{
  v3[0] = &value witness table for Builtin.NativeObject + 64;
  result = type metadata accessor for MLActionClassifier.ModelParameters(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MLActionClassifier.Prediction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 16) = v3;
  v3;
  return a1;
}

void *assignWithCopy for MLActionClassifier.Prediction(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v3 = a2[2];
  v4 = a1[2];
  a1[2] = v3;
  v3;
  v4, a2;
  return a1;
}

uint64_t assignWithTake for MLActionClassifier.Prediction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  v3, a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLActionClassifier.Prediction(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 16) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLActionClassifier.Prediction(uint64_t a1, int a2, int a3)
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
      *(a1 + 16) = 2 * (a2 - 1);
    }
  }
}

uint64_t sub_159F1F()
{
  v1 = *(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 40);
  v4 = *(v1 + 64);
  swift_unknownObjectRelease(*(v0 + 16));
  v5 = *(v0 + 32);

  v6 = v3 + v0;
  v7 = type metadata accessor for MLActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload(v3 + v0, v7) == 1)
  {
    v8 = type metadata accessor for MLActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload(v3 + v0, v8))
    {
      case 0u:
        v20 = type metadata accessor for URL(0);
        v21 = *(*(v20 - 8) + 8);
        v21(v3 + v0, v20);
        v22 = v4;
        v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        v21(v6 + v11[12], v20);
        *(v6 + v11[16] + 8);
        *(v6 + v11[20] + 8);
        *(v6 + v11[24] + 8);
        v12 = v11[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        v9 = type metadata accessor for URL(0);
        (*(*(v9 - 8) + 8))(v3 + v0, v9);
        break;
      case 3u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        *(v6 + 40);
        v10 = *(v6 + 56);
        goto LABEL_10;
      case 4u:
        outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
        *(v6 + 24);
        *(v6 + 40);
        *(v6 + 56);
        v10 = *(v6 + 72);
        goto LABEL_10;
      case 5u:
        v13 = type metadata accessor for DataFrame(0);
        (*(*(v13 - 8) + 8))(v3 + v0, v13);
        v22 = v4;
        v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, sessionIdColumn: String, labelColumn: String, featureColumn: String));
        *(v6 + v14[12] + 8);
        *(v6 + v14[16] + 8);
        v12 = v14[20];
        goto LABEL_9;
      case 6u:
        v15 = type metadata accessor for DataFrame(0);
        (*(*(v15 - 8) + 8))(v3 + v0, v15);
        v22 = v4;
        v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, videoColumn: String, labelColumn: String, startTimeColumn: String?, endTimeColumn: String?));
        *(v6 + v16[12] + 8);
        *(v6 + v16[16] + 8);
        *(v6 + v16[20] + 8);
        v12 = v16[24];
LABEL_9:
        v4 = v22;
        v10 = *(v6 + v12 + 8);
LABEL_10:
        v10;
        break;
      default:
        break;
    }
  }

  v17 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v0 + v17 + 8);

  return swift_deallocObject(v0, v17 + 16, v2 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLActionClassifier.ModelParameters(0) - 8);
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
  return closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(a1, v6, v12, v13, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(64);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLActionClassifier.resume(_:)(a1, v3, v4);
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLRandomForestClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(uint64_t a1)
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
    v9 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
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
    v20 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
    swift_storeEnumTagMultiPayload(v15, v20, 2);
    (*(v14 + 8))(v13, v2);
    v10 = v15;
    v11 = 0;
    v12 = v20;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
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
  MLRandomForestClassifier.ModelParameters.ValidationData.asTable()(a1);
  return outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLRandomForestClassifier.ModelParameters.validationData : MLRandomForestClassifier.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLRandomForestClassifier.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLRandomForestClassifier.ModelParameters.validationData : MLRandomForestClassifier.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v18 = v1;
  v2 = 0;
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
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
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(&v13, boxed_opaque_existential_0);
  return outlined assign with take of Any?(&v13 + 8, v18);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v1, &v6, &demangling cache variable for type metadata for Any?);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

uint64_t outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t (*MLRandomForestClassifier.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  MLRandomForestClassifier.ModelParameters.validationData.getter(a2);
  return MLRandomForestClassifier.ModelParameters.validationData.modify;
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if ((a2 & 1) == 0)
  {
    return MLRandomForestClassifier.ModelParameters.validationData.setter(&v7);
  }

  v5 = v3;
  outlined copy of MLDataTable?(v2, v3);
  MLRandomForestClassifier.ModelParameters.validationData.setter(&v7);
  return outlined consume of MLDataTable?(v2, v5);
}

uint64_t key path setter for MLRandomForestClassifier.ModelParameters.validation : MLRandomForestClassifier.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(a1, v6);
  return MLRandomForestClassifier.ModelParameters.validation.setter(v6);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v4[3] = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1);
}

void (*MLRandomForestClassifier.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0xA0uLL);
  *a1 = v2;
  *(v2 + 16) = v1;
  v3 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
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
  return MLRandomForestClassifier.ModelParameters.validation.modify;
}

void MLRandomForestClassifier.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 144);
  v8 = *(*a1 + 128);
  v5 = *(*a1 + 136);
  if (a2)
  {
    outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(v3, v4);
    v2[11] = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v4, boxed_opaque_existential_0);
    outlined assign with take of Any?((v2 + 8), v8);
    outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(v3);
  }

  else
  {
    v2[15] = v5;
    v7 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v3, v7);
    outlined assign with take of Any?((v2 + 12), v8);
  }

  free(v3);
  free(v4);
  free(v2);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v18 = a4;
  v19 = a3;
  v9 = v8;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v10 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 32) = a2;
  *(v9 + 40) = v19;
  *(v9 + 48) = v23;
  *(v9 + 56) = v22;
  *(v9 + 64) = v18;
  *(v9 + 72) = v21;
  *(v9 + 80) = v20;
  outlined init with copy of MLRandomForestClassifier.ModelParameters.ValidationData(a1, &v16);
  v17[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(&v16, boxed_opaque_existential_0);
  outlined assign with take of Any?(v17, v9);
  return outlined destroy of MLRandomForestClassifier.ModelParameters.ValidationData(a1);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *(v8 + 16) = 0;
  *v8 = 0;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a4;
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  v12 = v9;
  v13 = v10;
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v12);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(configuration:validation:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v18 = v15;
  *(v3 + 16) = 0;
  *v3 = 0;
  *(v3 + 32) = BoostedTreeConfiguration.maximumDepth.getter();
  *(v3 + 40) = BoostedTreeConfiguration.maximumIterations.getter();
  *(v3 + 48) = BoostedTreeConfiguration.minimumLossReduction.getter();
  *(v3 + 56) = BoostedTreeConfiguration.minimumChildWeight.getter();
  *(v3 + 64) = BoostedTreeConfiguration.randomSeed.getter();
  *(v3 + 72) = BoostedTreeConfiguration.rowSubsample.getter();
  *(v3 + 80) = BoostedTreeConfiguration.columnSubsample.getter();
  v17 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF11TabularData0D5FrameV_s5NeverO8CreateML24MLRandomForestClassifierV15ModelParametersV010ValidationD0OTg503_s8g4ML24ijk3V15lm76V13configuration10validationAE0A12MLComponents24BoostedTreeConfigurationV_11c7Data0O5e12VSgtcfcAE010N21O0OAMcAPmcfu_ApMcfu0_AOXMtTf1ncn_n(a2);
  if (__swift_getEnumTagSinglePayload(v15, 1, v7) == 1)
  {
    v11 = v18;
    swift_storeEnumTagMultiPayload(v18, v7, 3);
    if (__swift_getEnumTagSinglePayload(v15, 1, v7) != 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v15, &demangling cache variable for type metadata for MLRandomForestClassifier.ModelParameters.ValidationData?);
    }
  }

  else
  {
    v11 = v18;
    outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v15, v18);
  }

  v16[3] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  outlined init with take of MLRandomForestClassifier.ModelParameters.ValidationData(v11, boxed_opaque_existential_0);
  outlined assign with take of Any?(v16, v3);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v17, &demangling cache variable for type metadata for DataFrame?);
  v13 = type metadata accessor for BoostedTreeConfiguration(0);
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t MLRandomForestClassifier.ModelParameters.description.getter()
{
  v26._countAndFlagsBits = v0[4];
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v1._object;
  v3 = v1;
  String.append(_:)(v1);
  object, v3._object;
  v3._object = 0xE100000000000000;
  v3._countAndFlagsBits = 10;
  String.append(_:)(v3);
  _StringGuts.grow(_:)(19);
  0xE000000000000000, 0xE100000000000000;
  v26._countAndFlagsBits = 0xD000000000000010;
  v26._object = "ansformer have different types." + 0x8000000000000000;
  v24 = v0[5];
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v5 = v4._object;
  v6 = v4;
  String.append(_:)(v4);
  v5, v6._object;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = "ansformer have different types." + 0x8000000000000000;
  String.append(_:)(v6);
  "ansformer have different types." + 0x8000000000000000, "ansformer have different types." + 0x8000000000000000;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v6._object = "Max Iterations: " + 0x8000000000000000;
  v6._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v6);
  v23 = v0[6];
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7 = v26;
  v8 = v26._object;
  String.append(_:)(v26);
  v8, v7._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v7._object = "Min Loss Reduction: " + 0x8000000000000000;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v7._countAndFlagsBits = 10;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v9 = v26;
  v10 = v26._object;
  String.append(_:)(v26);
  v10, v9._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(16);
  v26._object, v9._object;
  strcpy(&v26, "Random Seed: ");
  HIWORD(v26._object) = -4864;
  v25 = v0[8];
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v12 = v11._object;
  v13 = v11;
  String.append(_:)(v11);
  v12, v13._object;
  v13._countAndFlagsBits = 10;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v14 = v26;
  v15 = v26._object;
  String.append(_:)(v26);
  v15, v14._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v14._countAndFlagsBits = 0x7362755320776F52;
  v14._object = 0xEF203A656C706D61;
  String.append(_:)(v14);
  v16 = v0[9];
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v17 = v26;
  v18 = v26._object;
  String.append(_:)(v26);
  v18, v17._object;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v17._object = "Min Child Weight: " + 0x8000000000000000;
  v17._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v17);
  v19 = v0[10];
  Double.write<A>(to:)(&v26, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v20 = v26;
  v21 = v26._object;
  String.append(_:)(v26);
  v21, v20._object;
  return 0x747065442078614DLL;
}

uint64_t MLRandomForestClassifier.ModelParameters.playgroundDescription.getter(uint64_t a1)
{
  v2 = v1;
  result = MLRandomForestClassifier.ModelParameters.description.getter(a1);
  v2[3] = &type metadata for String;
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t initializeWithCopy for MLRandomForestClassifier.ModelParameters(uint64_t a1, __int128 *a2)
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
  return a1;
}

uint64_t assignWithCopy for MLRandomForestClassifier.ModelParameters(uint64_t a1, __int128 *a2)
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
  return a1;
}

uint64_t assignWithTake for MLRandomForestClassifier.ModelParameters(uint64_t a1, __int128 *a2)
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
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLRandomForestClassifier.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

void storeEnumTagSinglePayload for MLRandomForestClassifier.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 88) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.MLP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
    v8;
  }

  else
  {
    v6 = type metadata accessor for Dense(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v7((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v6);
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Dense(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  return (v3)(a1 + *(a2 + 20), v2);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 24);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.MLP(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Dense(0);
  v5 = *(*(v4 - 8) + 40);
  v5(a1, a2, v4);
  v5(a1 + *(a3 + 20), *(a3 + 20) + a2, v4);
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.MLP(uint64_t a1)
{
  result = type metadata accessor for Dense(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = v3[0];
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.CausalConv1D(_OWORD *a1, char *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
    v8;
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for Conv1D(0);
    (*(*(v7 - 8) + 16))(a1 + v6, &a2[v6], v7);
    *(a1 + *(a3 + 24)) = *&a2[*(a3 + 24)];
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.CausalConv1D(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20) + a1;
  v3 = type metadata accessor for Conv1D(0);
  return (*(*(v3 - 8) + 8))(v2, v3);
}

char *initializeWithCopy for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 16))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithCopy for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 24))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *initializeWithTake for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 32))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

char *assignWithTake for MLFewShotSoundClassifier.CausalConv1D(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = type metadata accessor for Conv1D(0);
  (*(*(v5 - 8) + 40))(&a1[v4], &a2[v4], v5);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

uint64_t sub_15B9EF(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 20) + a1;
  v4 = type metadata accessor for Conv1D(0);
  return __swift_getEnumTagSinglePayload(v3, a2, v4);
}

uint64_t sub_15BA2B(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 20) + a1;
  v5 = type metadata accessor for Conv1D(0);
  return __swift_storeEnumTagSinglePayload(v4, a2, a2, v5);
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.CausalConv1D(uint64_t a1)
{
  v3[0] = &unk_343338;
  result = type metadata accessor for Conv1D(319);
  if (v2 <= 0x3F)
  {
    v3[1] = *(result - 8) + 64;
    v3[2] = &value witness table for Builtin.Int32 + 64;
    swift_initStructMetadata(a1, 256, 3, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
    *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
    v8 = a3[5];
    v24 = a1 + v8;
    v9 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v10 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
    v21 = a3;
    v11 = *(v10 + 20);
    v22 = type metadata accessor for Conv1D(0);
    v20 = *(*(v22 - 8) + 16);
    v20(&v24[v11], &v9[v11], v22);
    *&v24[*(v10 + 24)] = *&v9[*(v10 + 24)];
    v12 = v21[6];
    v25 = a1 + v12;
    v23 = a2 + v12;
    *(a1 + v12) = *(a2 + v12);
    v20(a1 + v12 + *(v10 + 20), a2 + v12 + *(v10 + 20), v22);
    *&v25[*(v10 + 24)] = *&v23[*(v10 + 24)];
    v13 = v21[7];
    v26 = a1 + v13;
    v14 = a2 + v13;
    *(a1 + v13) = *(a2 + v13);
    v20(a1 + v13 + *(v10 + 20), a2 + v13 + *(v10 + 20), v22);
    *&v26[*(v10 + 24)] = *&v14[*(v10 + 24)];
    v15 = v21[8];
    v16 = a1 + v15;
    v17 = a2 + v15;
    *(a1 + v15) = *(a2 + v15);
    v20(a1 + v15 + *(v10 + 20), a2 + v15 + *(v10 + 20), v22);
    *&v16[*(v10 + 24)] = *&v17[*(v10 + 24)];
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, int *a2)
{
  v2 = type metadata accessor for Conv2D(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = a1 + a2[5];
  v4 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v5 = v3 + *(v4 + 20);
  v6 = type metadata accessor for Conv1D(0);
  v7 = *(*(v6 - 8) + 8);
  v7(v5, v6);
  v7(a1 + a2[6] + *(v4 + 20), v6);
  v7(a1 + a2[7] + *(v4 + 20), v6);
  return (v7)(a1 + a2[8] + *(v4 + 20), v6);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 16);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = *(a2 + v16);
  v19 = v16 + a2;
  *v17 = v18;
  (v11)(a1 + v16 + *(v8 + 20), v19 + *(v8 + 20), v21);
  *(v17 + *(v8 + 24)) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  *(a1 + v7 + 8) = *(a2 + v7 + 8);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 24);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = *(a2 + v14 + 8);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  *(a1 + v15 + 8) = *(a2 + v15 + 8);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  v16 = v11;
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v17 = a3[8];
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);
  *(a1 + v17 + 8) = *(a2 + v17 + 8);
  v16(a1 + v17 + *(v8 + 20), a2 + v17 + *(v8 + 20), v21);
  *(*(v8 + 24) + v18) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 32);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = *(a2 + v16);
  v19 = v16 + a2;
  *v17 = v18;
  (v11)(a1 + v16 + *(v8 + 20), v19 + *(v8 + 20), v21);
  *(v17 + *(v8 + 24)) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = type metadata accessor for Conv2D(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v6 + 20)) = *(a2 + *(v6 + 20));
  v7 = a3[5];
  v24 = a1 + v7;
  v27 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v22 = v9 + v24;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 40);
  v12 = v27 + v9;
  v13 = v10;
  v11(v22, v12);
  *(*(v8 + 24) + v24) = *(*(v8 + 24) + v27);
  v14 = a3[6];
  v28 = a1 + v14;
  v25 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  v21 = v13;
  (v11)(a1 + v14 + *(v8 + 20), a2 + v14 + *(v8 + 20), v13);
  *(*(v8 + 24) + v28) = *(*(v8 + 24) + v25);
  v15 = a3[7];
  v29 = a1 + v15;
  v26 = a2 + v15;
  *(a1 + v15) = *(a2 + v15);
  (v11)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v13);
  *(*(v8 + 24) + v29) = *(*(v8 + 24) + v26);
  v16 = a3[8];
  v17 = (a1 + v16);
  v18 = *(a2 + v16);
  v19 = v16 + a2;
  *v17 = v18;
  (v11)(a1 + v16 + *(v8 + 20), v19 + *(v8 + 20), v21);
  *(v17 + *(v8 + 24)) = *(*(v8 + 24) + v19);
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.ConvolutionalNetwork(uint64_t a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(319);
  if (v2 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(319);
    if (v3 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      v6 = v5;
      v7 = v5;
      v8 = v5;
      swift_initStructMetadata(a1, 256, 5, &v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.LeakyConv2D(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v7 = *a2;
    *v3 = *a2;
    v3 = (v7 + ((v4 + 16) & ~v4));
    v7;
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return v3;
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1)
{
  result = type metadata accessor for Conv2D(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &value witness table for Builtin.Int32 + 64;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.TemporalClassifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v32 = *a2;
    *v4 = *a2;
    v4 = (v32 + ((v5 + 16) & ~v5));
  }

  else
  {
    v6 = type metadata accessor for Conv2D(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
    *(a1 + *(v7 + 20)) = *(a2 + *(v7 + 20));
    v37 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
    v8 = v37[5];
    v9 = a1 + v8;
    v38 = a1 + v8;
    v41 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v10 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
    v11 = *(v10 + 20);
    v36 = &v9[v11];
    v12 = type metadata accessor for Conv1D(0);
    v13 = *(*(v12 - 8) + 16);
    v14 = &v41[v11];
    v15 = v12;
    v13(v36, v14);
    v16 = v13;
    *&v38[*(v10 + 24)] = *&v41[*(v10 + 24)];
    v17 = v37[6];
    v42 = a1 + v17;
    v39 = a2 + v17;
    *(a1 + v17) = *(a2 + v17);
    v18 = v15;
    v35 = v15;
    v19 = v15;
    v20 = v16;
    (v16)(a1 + v17 + *(v10 + 20), a2 + v17 + *(v10 + 20), v19);
    *&v42[*(v10 + 24)] = *&v39[*(v10 + 24)];
    v21 = v37[7];
    v43 = a1 + v21;
    v40 = a2 + v21;
    *(a1 + v21) = *(a2 + v21);
    v20(a1 + v21 + *(v10 + 20), a2 + v21 + *(v10 + 20), v18);
    v22 = v20;
    *&v43[*(v10 + 24)] = *&v40[*(v10 + 24)];
    v23 = v37[8];
    v24 = a1 + v23;
    v25 = a2 + v23;
    *(a1 + v23) = *(a2 + v23);
    v22(a1 + v23 + *(v10 + 20), a2 + v23 + *(v10 + 20), v35);
    *&v24[*(v10 + 24)] = *&v25[*(v10 + 24)];
    v26 = *(a3 + 20);
    v27 = a1 + v26;
    v28 = a2 + v26;
    v29 = type metadata accessor for Dense(0);
    v30 = *(*(v29 - 8) + 16);
    v30(v27, v28, v29);
    v31 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
    v30(&v27[*(v31 + 20)], &v28[*(v31 + 20)], v29);
  }

  return v4;
}

uint64_t destroy for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Conv2D(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  v3 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v4 = a1 + v3[5];
  v5 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v6 = v4 + *(v5 + 20);
  v7 = type metadata accessor for Conv1D(0);
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v8(a1 + v3[6] + *(v5 + 20), v7);
  v8(a1 + v3[7] + *(v5 + 20), v7);
  v8(a1 + v3[8] + *(v5 + 20), v7);
  v9 = a1 + *(a2 + 20);
  v10 = type metadata accessor for Dense(0);
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  return (v11)(v9 + *(v12 + 20), v10);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v7 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v37 = v34 + v9;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 16);
  v12 = v7 + v9;
  v13 = v10;
  v11(v37, v12);
  v14 = v11;
  *(*(v8 + 24) + v34) = *(*(v8 + 24) + v7);
  v15 = v33[6];
  v35 = (a1 + v15);
  v38 = a2 + v15;
  *v35 = *(a2 + v15);
  v16 = v13;
  v32 = v13;
  v17 = v13;
  v18 = v14;
  (v14)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v17);
  *(v35 + *(v8 + 24)) = *(*(v8 + 24) + v38);
  v19 = v33[7];
  v36 = a1 + v19;
  v39 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);
  v18(a1 + v19 + *(v8 + 20), a2 + v19 + *(v8 + 20), v16);
  v20 = v18;
  *(*(v8 + 24) + v36) = *(*(v8 + 24) + v39);
  v21 = v33[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);
  v20(a1 + v21 + *(v8 + 20), a2 + v21 + *(v8 + 20), v32);
  *(*(v8 + 24) + v22) = *(*(v8 + 24) + v23);
  v24 = *(a3 + 20);
  v25 = a1 + v24;
  v26 = v24 + a2;
  v27 = type metadata accessor for Dense(0);
  v28 = *(*(v27 - 8) + 16);
  v28(v25, v26, v27);
  v29 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v28(*(v29 + 20) + v25, *(v29 + 20) + v26, v27);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v37 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  v7 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v8 = *(v7 + 20);
  v32 = v34 + v8;
  v9 = type metadata accessor for Conv1D(0);
  v10 = *(*(v9 - 8) + 24);
  v11 = v37 + v8;
  v12 = v9;
  v10(v32, v11);
  v13 = v10;
  *(*(v7 + 24) + v34) = *(*(v7 + 24) + v37);
  v14 = v33[6];
  v38 = a1 + v14;
  v35 = a2 + v14;
  *(a1 + v14) = *(a2 + v14);
  *(a1 + v14 + 8) = *(a2 + v14 + 8);
  v15 = v12;
  v31 = v12;
  v16 = v12;
  v17 = v13;
  (v13)(a1 + v14 + *(v7 + 20), a2 + v14 + *(v7 + 20), v16);
  *(*(v7 + 24) + v38) = *(*(v7 + 24) + v35);
  v18 = v33[7];
  v39 = a1 + v18;
  v36 = a2 + v18;
  *(a1 + v18) = *(a2 + v18);
  *(a1 + v18 + 8) = *(a2 + v18 + 8);
  v17(a1 + v18 + *(v7 + 20), a2 + v18 + *(v7 + 20), v15);
  v19 = v17;
  *(*(v7 + 24) + v39) = *(*(v7 + 24) + v36);
  v20 = v33[8];
  v21 = a1 + v20;
  v22 = a2 + v20;
  *(a1 + v20) = *(a2 + v20);
  *(a1 + v20 + 8) = *(a2 + v20 + 8);
  v19(a1 + v20 + *(v7 + 20), a2 + v20 + *(v7 + 20), v31);
  *(*(v7 + 24) + v21) = *(*(v7 + 24) + v22);
  v23 = *(a3 + 20);
  v24 = a1 + v23;
  v25 = v23 + a2;
  v26 = type metadata accessor for Dense(0);
  v27 = *(*(v26 - 8) + 24);
  v27(v24, v25, v26);
  v28 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v27(*(v28 + 20) + v24, *(v28 + 20) + v25, v26);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v7 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v37 = v34 + v9;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 32);
  v12 = v7 + v9;
  v13 = v10;
  v11(v37, v12);
  v14 = v11;
  *(*(v8 + 24) + v34) = *(*(v8 + 24) + v7);
  v15 = v33[6];
  v35 = (a1 + v15);
  v38 = a2 + v15;
  *v35 = *(a2 + v15);
  v16 = v13;
  v32 = v13;
  v17 = v13;
  v18 = v14;
  (v14)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v17);
  *(v35 + *(v8 + 24)) = *(*(v8 + 24) + v38);
  v19 = v33[7];
  v36 = a1 + v19;
  v39 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);
  v18(a1 + v19 + *(v8 + 20), a2 + v19 + *(v8 + 20), v16);
  v20 = v18;
  *(*(v8 + 24) + v36) = *(*(v8 + 24) + v39);
  v21 = v33[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);
  v20(a1 + v21 + *(v8 + 20), a2 + v21 + *(v8 + 20), v32);
  *(*(v8 + 24) + v22) = *(*(v8 + 24) + v23);
  v24 = *(a3 + 20);
  v25 = a1 + v24;
  v26 = v24 + a2;
  v27 = type metadata accessor for Dense(0);
  v28 = *(*(v27 - 8) + 32);
  v28(v25, v26, v27);
  v29 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v28(*(v29 + 20) + v25, *(v29 + 20) + v26, v27);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Conv2D(0);
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  v5 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  *(a1 + *(v5 + 20)) = *(a2 + *(v5 + 20));
  v33 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v6 = v33[5];
  v34 = a1 + v6;
  v7 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v8 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v9 = *(v8 + 20);
  v37 = v34 + v9;
  v10 = type metadata accessor for Conv1D(0);
  v11 = *(*(v10 - 8) + 40);
  v12 = v7 + v9;
  v13 = v10;
  v11(v37, v12);
  v14 = v11;
  *(*(v8 + 24) + v34) = *(*(v8 + 24) + v7);
  v15 = v33[6];
  v35 = (a1 + v15);
  v38 = a2 + v15;
  *v35 = *(a2 + v15);
  v16 = v13;
  v32 = v13;
  v17 = v13;
  v18 = v14;
  (v14)(a1 + v15 + *(v8 + 20), a2 + v15 + *(v8 + 20), v17);
  *(v35 + *(v8 + 24)) = *(*(v8 + 24) + v38);
  v19 = v33[7];
  v36 = a1 + v19;
  v39 = a2 + v19;
  *(a1 + v19) = *(a2 + v19);
  v18(a1 + v19 + *(v8 + 20), a2 + v19 + *(v8 + 20), v16);
  v20 = v18;
  *(*(v8 + 24) + v36) = *(*(v8 + 24) + v39);
  v21 = v33[8];
  v22 = a1 + v21;
  v23 = a2 + v21;
  *(a1 + v21) = *(a2 + v21);
  v20(a1 + v21 + *(v8 + 20), a2 + v21 + *(v8 + 20), v32);
  *(*(v8 + 24) + v22) = *(*(v8 + 24) + v23);
  v24 = *(a3 + 20);
  v25 = a1 + v24;
  v26 = v24 + a2;
  v27 = type metadata accessor for Dense(0);
  v28 = *(*(v27 - 8) + 40);
  v28(v25, v26, v27);
  v29 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v28(*(v29 + 20) + v25, *(v29 + 20) + v26, v27);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_index_3Tm(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t (*a5)(void))
{
  v7 = a1;
  v8 = a4(0);
  if (*(*(v8 - 8) + 84) != a2)
  {
    v8 = a5(0);
    v7 = *(a3 + 20) + a1;
  }

  return __swift_getEnumTagSinglePayload(v7, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_index_4Tm(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t a1), uint64_t (*a6)(void))
{
  v9 = a1;
  v10 = a5(0);
  if (*(*(v10 - 8) + 84) != a3)
  {
    v10 = a6(0);
    v9 = *(a4 + 20) + a1;
  }

  return __swift_storeEnumTagSinglePayload(v9, a2, a2, v10);
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.TemporalClassifier(uint64_t a1)
{
  result = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    result = type metadata accessor for MLFewShotSoundClassifier.MLP(319);
    if (v3 <= 0x3F)
    {
      v4[1] = *(result - 8) + 64;
      swift_initStructMetadata(a1, 256, 2, v4, a1 + 16);
      return 0;
    }
  }

  return result;
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.init(outputs:inputChannels:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v25 = a1;
  v26 = v2;
  v27 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v3 = *(*(v27 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v29 = &v24;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for ParameterInitializer(0);
  v34 = type metadata accessor for ComputeDevice(0);
  __swift_storeEnumTagSinglePayload(&v24, 1, 1, v34);
  v10 = static ParameterInitializer.randomNormal(mean:standardDeviation:seed:scalarType:on:)(0xFFFFFFFLL, 0, &type metadata for Float, &protocol witness table for Float, &v24, 0.0, 0.1);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v24, &demangling cache variable for type metadata for ComputeDevice?);
  v11 = (static ParameterInitializer.zeros.getter)();
  __swift_storeEnumTagSinglePayload(&v24, 1, 1, v34);
  v31 = v9;
  v34 = static ParameterInitializer.glorotUniform(seed:scalarType:on:)(0xFFFFFFFLL, 0, &type metadata for Float, &protocol witness table for Float, &v24);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v24, &demangling cache variable for type metadata for ComputeDevice?);
  v30 = (static ParameterInitializer.zeros.getter)();
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLFewShotSoundClassifier.CausalConv1D>);
  v13 = *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) - 8);
  v14 = swift_allocObject(v12, ((*(v13 + 80) + 32) & ~*(v13 + 80)) + 4 * *(v13 + 72), *(v13 + 80) | 7);
  v32 = v14;
  *(v14 + 16) = 4;
  *(v14 + 24) = 8;

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(4, 5, 1, 1uLL, v10, v11, 0.1);

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(8, 5, 1, 2uLL, v10, v11, 0.1);

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(8, 5, 1, 4uLL, v10, v11, 0.1);

  v33 = v11;

  MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(8, 5, 1, 8uLL, v10, v11, 0.1);

  v15 = static ParameterInitializer.zeros.getter(v10);
  v16 = v29;
  Conv2D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(10, v28, 1, 1, 1, 0, 0, 1, 1, 1, v10, v15);
  v17 = v16;
  *(v16 + *(v27 + 20)) = LeakyReLU.init(alpha:)(0.1);
  v18 = v26;
  MLFewShotSoundClassifier.ConvolutionalNetwork.init(causal:featureReduction:)(v32, v17);
  v19 = v18 + *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20);
  v20 = v34;

  v21 = v30;

  Dense.init(unitCount:weightInitializer:biasInitializer:)(32, v20, v21);
  v22 = v19 + *(type metadata accessor for MLFewShotSoundClassifier.MLP(0) + 20);

  Dense.init(unitCount:weightInitializer:biasInitializer:)(v25, v20, v21);
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLFewShotSoundClassifier.CausalPadding(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  return MLFewShotSoundClassifier.CausalPadding.forward(_:)(a1);
}

uint64_t MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v31 = a4;
  v33 = a3;
  v26 = a2;
  v32 = a6;
  v8 = v6;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v27 = &v25;
  v12 = type metadata accessor for Tensor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  if (__OFSUB__(a1, 1))
  {
    BUG();
  }

  if (!is_mul_ok(v33, a1 - 1))
  {
    BUG();
  }

  v28 = v12;
  v17 = v13;
  v29 = v13;
  *v8 = ZeroPad1D.init(size:)(v33 * (a1 - 1), 0);
  v8[1] = v18;
  v30 = v8;
  (*(v17 + 16))(&v25, v31, v12);
  v19 = a5;
  v20 = v27;
  outlined init with copy of Tensor?(a5, v27);
  v21 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v22 = v30;
  v23 = v30 + *(v21 + 20);
  Conv1D.init(weight:bias:stride:padding:dilation:groupCount:)(&v25, v20, v26, 0, v33, 1);
  LODWORD(v33) = LeakyReLU.init(alpha:)(v32);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for Tensor?);
  (*(v29 + 8))(v31, v28);
  result = *(v21 + 24);
  *(v22 + result) = v33;
  return result;
}

uint64_t MLFewShotSoundClassifier.CausalConv1D.init(alpha:filterCount:kernelSize:stride:dilation:weightInitializer:biasInitializer:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v8 = v7;
  if (__OFSUB__(a2, 1))
  {
    BUG();
  }

  if (!is_mul_ok(a4, a2 - 1))
  {
    BUG();
  }

  *v7 = ZeroPad1D.init(size:)(a4 * (a2 - 1), 0);
  v8[1] = v11;
  v12 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v13 = v8 + *(v12 + 20);

  Conv1D.init(filterCount:kernelSize:stride:padding:dilation:groupCount:weightInitializer:biasInitializer:)(a1, a2, a3, 0, a4, 1, a5, a6);
  v17 = LeakyReLU.init(alpha:)(a7);

  result = *(v12 + 24);
  *(v8 + result) = v17;
  return result;
}

uint64_t MLFewShotSoundClassifier.CausalConv1D.forward(_:)(uint64_t a1)
{
  v18 = a1;
  v16 = v1;
  v3 = type metadata accessor for Tensor(0);
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v19 = *(v2 + *(v9 + 24));
  v10 = v2 + *(v9 + 20);
  v15 = *v2;
  v11 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding();
  Layer.callAsFunction(_:)(v18, &type metadata for MLFewShotSoundClassifier.CausalPadding, v11);
  v12 = type metadata accessor for Conv1D(0);
  Layer.callAsFunction(_:)(&v15, v12, &protocol witness table for Conv1D);
  v13 = *(v17 + 8);
  v13(&v15, v3);
  Layer.callAsFunction(_:)(&v15, &type metadata for LeakyReLU, &protocol witness table for LeakyReLU);
  return (v13)(&v15, v3);
}

uint64_t MLFewShotSoundClassifier.MLP.forward(_:)()
{
  v16 = v0;
  v17 = type metadata accessor for Tensor(0);
  v18 = *(v17 - 8);
  v2 = *(v18 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  v7 = alloca(v2);
  v8 = alloca(v2);
  v20 = &v16;
  v19 = v1 + *(type metadata accessor for MLFewShotSoundClassifier.MLP(0) + 20);
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TensorRangeExpression?>);
  v10 = swift_allocObject(v9, 152, 7);
  *(v10 + 16) = 3;
  *(v10 + 24) = 6;
  *(v10 + 32) = 0;
  *(v10 + 48) = 0;
  *(v10 + 64) = 0;
  *(v10 + 80) = 0;
  *(v10 + 96) = 0;
  *(v10 + 136) = &type metadata for Int;
  *(v10 + 144) = &protocol witness table for Int;
  *(v10 + 112) = -1;
  Tensor.subscript.getter(v10);
  v10;
  v11 = type metadata accessor for Dense(0);
  Layer.callAsFunction(_:)(&v16, v11, &protocol witness table for Dense);
  v12 = *(v18 + 8);
  v13 = v17;
  v12(&v16, v17);
  v14 = v20;
  relu(_:)(&v16);
  v12(&v16, v13);
  Layer.callAsFunction(_:)(v14, v11, &protocol witness table for Dense);
  return (v12)(v14, v13);
}

uint64_t MLFewShotSoundClassifier.LeakyConv2D.forward(_:)(unint64_t a1, double a2)
{
  v38 = v3;
  v42 = a1;
  v32 = v2;
  v33 = type metadata accessor for Tensor(0);
  v43 = *(v33 - 8);
  v4 = *(v43 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34 = v30;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v41 = v30;
  v9 = alloca(v4);
  v10 = alloca(v4);
  v37 = v30;
  v11 = alloca(v4);
  v12 = alloca(v4);
  v36 = v30;
  v13 = type metadata accessor for TensorShape(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  Tensor.shape.getter();
  v35 = TensorShape.subscript.getter(0);
  v18 = *(v14 + 8);
  v18(v30, v13);
  Tensor.shape.getter();
  v44 = TensorShape.subscript.getter(1);
  v18(v30, v13);
  Tensor.shape.getter();
  v19 = TensorShape.subscript.getter(2);
  v39 = v13;
  v40 = v18;
  v18(v30, v13);
  Tensor.transposed(permutation:)(&outlined read-only object #0 of MLFewShotSoundClassifier.LeakyConv2D.forward(_:));
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v21 = swift_allocObject(v20, 64, 7);
  v21[2] = 4;
  v21[3] = 8;
  v42 = v19;
  if (!is_mul_ok(v19, v35))
  {
    BUG();
  }

  v21[4] = v19 * v35;
  v21[5] = 1;
  v21[6] = v44;
  v21[7] = 1;
  TensorShape.init(_:)(v21, a2);
  v44 = v20;
  v22 = v37;
  Tensor.reshaped(to:)(v30);
  v40(v30, v39);
  v31 = *(v38 + *(type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0) + 20));
  *&v23 = v31;
  v24 = type metadata accessor for Conv2D(0);
  v25 = v34;
  Layer.callAsFunction(_:)(v22, v24, &protocol witness table for Conv2D);
  Layer.callAsFunction(_:)(v25, &type metadata for LeakyReLU, &protocol witness table for LeakyReLU);
  v43 = *(v43 + 8);
  v26 = v33;
  (v43)(v25, v33);
  v27 = swift_allocObject(v44, 56, 7);
  v27[2] = 3;
  v27[3] = 6;
  v27[4] = v35;
  v27[5] = v42;
  v27[6] = Conv2D.filterCount.getter();
  TensorShape.init(_:)(v27, v23);
  Tensor.reshaped(to:)(v30);
  v40(v30, v39);
  Tensor.transposed(permutation:)(&outlined read-only object #1 of MLFewShotSoundClassifier.LeakyConv2D.forward(_:));
  v28 = v43;
  (v43)(v25, v26);
  v28(v41, v26);
  v28(v37, v26);
  return (v28)(v36, v26);
}

uint64_t MLFewShotSoundClassifier.ConvolutionalNetwork.init(causal:featureReduction:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    BUG();
  }

  v6 = v4;
  v12 = v3;
  v7 = v3 + *(v4 + 20);
  v8 = *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) - 8);
  v9 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(v9, v7);
  if (v5 == 1)
  {
    BUG();
  }

  v10 = *(v8 + 72);
  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(v10 + v9, v12 + v6[6]);
  if (v5 < 3)
  {
    BUG();
  }

  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(v9 + 2 * v10, v12 + v6[7]);
  if (v5 == 3)
  {
    BUG();
  }

  outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(3 * v10 + v9, v12 + v6[8]);
  a1;
  return outlined init with take of MLFewShotSoundClassifier.LeakyConv2D(a2, v12);
}

uint64_t MLFewShotSoundClassifier.ConvolutionalNetwork.forward(_:)(uint64_t a1)
{
  v3 = v1;
  v25 = type metadata accessor for Tensor(0);
  v26 = *(v25 - 8);
  v4 = *(v26 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v29 = &v24;
  v7 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v8 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.LeakyConv2D and conformance MLFewShotSoundClassifier.LeakyConv2D, type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D, &protocol conformance descriptor for MLFewShotSoundClassifier.LeakyConv2D);
  v9 = v2;
  Layer.callAsFunction(_:)(a1, v7, v8);
  v10 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v11 = *(v10 + 20);
  v31 = v10;
  v30 = v9;
  v12 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  v27 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalConv1D and conformance MLFewShotSoundClassifier.CausalConv1D, type metadata accessor for MLFewShotSoundClassifier.CausalConv1D, &protocol conformance descriptor for MLFewShotSoundClassifier.CausalConv1D);
  v28 = v12;
  Layer.callAsFunction(_:)(v29, v12, v27);
  v13 = v9 + *(v10 + 24);
  v32 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork.Output(0);
  v14 = v3 + v32[5];
  v15 = v12;
  v16 = v27;
  Layer.callAsFunction(_:)(v3, v15, v27);
  v17 = v30 + *(v31 + 28);
  v18 = v3 + v32[6];
  v19 = v14;
  v20 = v28;
  Layer.callAsFunction(_:)(v19, v28, v16);
  v21 = v30 + *(v31 + 32);
  v22 = v32[7];
  Layer.callAsFunction(_:)(v18, v20, v16);
  return (*(v26 + 8))(v29, v25);
}

uint64_t *MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:)(unint64_t a1, uint64_t *a2, double a3)
{
  v90 = v4;
  v66 = a1;
  v71 = v3;
  v67 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  v5 = *(*(v67 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v68 = &v66;
  v83 = type metadata accessor for ScalarType(0);
  v88 = *(v83 - 8);
  v8 = *(v88 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v93 = &v66;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v87 = &v66;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v85 = &v66;
  v17 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v20 = type metadata accessor for Tensor(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = v90;
  v25 = BlobsFile.floatBlob(at:)(0);
  if (!v24)
  {
    v90 = v25;
    v95 = &v66;
    v84 = v20;
    v91 = &v66;
    v27 = v83;
    v28 = BlobsFile.floatBlob(at:)(1);
    v89 = BlobsFile.floatBlob(at:)(2);
    v86 = BlobsFile.floatBlob(at:)(3);
    v78 = BlobsFile.floatBlob(at:)(4);
    v72 = BlobsFile.floatBlob(at:)(5);
    v69 = BlobsFile.floatBlob(at:)(6);
    v94 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLFewShotSoundClassifier.CausalConv1D>);
    v29 = *(type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0) - 8);
    v79 = *(v29 + 72);
    v30 = *(v29 + 80);
    v82 = (v30 + 32) & ~v30;
    v31 = swift_allocObject(v94, v82 + 4 * v79, v30 | 7);
    *(v31 + 16) = 4;
    *(v31 + 24) = 8;
    v70 = v31;
    v82 += v31;
    TensorShape.init(_:)(&outlined read-only object #0 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), a3);
    v74 = specialized Collection.prefix(_:)(200, v28);
    v75 = v32;
    v76 = v33;
    v77 = v34;
    v94 = type metadata accessor for ComputeDevice(0);
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v94);
    v80 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ArraySlice<Float>);
    v73 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>, &demangling cache variable for type metadata for ArraySlice<Float>, &protocol conformance descriptor for ArraySlice<A>);
    Tensor.init<A>(shape:scalars:on:)(v95, &v74, v85, v80);
    TensorShape.init(_:)(&outlined read-only object #1 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), a3);
    v92 = enum case for ScalarType.float32(_:);
    v88 = *(v88 + 104);
    (v88)(v93, enum case for ScalarType.float32(_:), v27);
    v35 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v94);
    v36 = v87;
    Tensor.init(zeros:scalarType:on:)(v95, v93, v35);
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v84);
    v37 = v82;
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 1uLL, v91, v87, 0.1);
    v81 = v37 + v79;
    TensorShape.init(_:)(&outlined read-only object #2 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    v74 = specialized Collection.prefix(_:)(160, v89);
    v75 = v38;
    v76 = v39;
    v77 = v40;
    v41 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v94);
    Tensor.init<A>(shape:scalars:on:)(v95, &v74, v41, v80);
    TensorShape.init(_:)(&outlined read-only object #3 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    (v88)(v93, v92, v83);
    v42 = v41;
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v94);
    v43 = v87;
    Tensor.init(zeros:scalarType:on:)(v95, v93, v42);
    __swift_storeEnumTagSinglePayload(v43, 0, 1, v84);
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 2uLL, v91, v43, 0.1);
    v81 = v82 + 2 * v79;
    TensorShape.init(_:)(&outlined read-only object #4 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    v74 = v86;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v94);
    v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
    v86 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
    Tensor.init<A>(shape:scalars:on:)(v95, &v74, v42, v89);
    TensorShape.init(_:)(&outlined read-only object #5 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    (v88)(v93, v92, v83);
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v94);
    v44 = v87;
    Tensor.init(zeros:scalarType:on:)(v95, v93, v42);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v84);
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 4uLL, v91, v44, 0.1);
    v82 += 3 * v79;
    v45 = v95;
    TensorShape.init(_:)(&outlined read-only object #6 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    v74 = v78;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v94);
    Tensor.init<A>(shape:scalars:on:)(v45, &v74, v42, v89);
    TensorShape.init(_:)(&outlined read-only object #7 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    (v88)(v93, v92, v83);
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v94);
    v46 = v87;
    Tensor.init(zeros:scalarType:on:)(v95, v93, v42);
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v84);
    MLFewShotSoundClassifier.CausalConv1D.init(alpha:kernelSize:stride:dilation:weight:bias:)(5, 1, 8uLL, v91, v46, 0.1);
    v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
    v48 = swift_allocObject(v47, 64, 7);
    v48[2] = 4;
    v48[3] = 8;
    v48[4] = 10;
    v48[5] = 1;
    v49 = v66;
    v48[6] = v66;
    v48[7] = 1;
    TensorShape.init(_:)(v48, COERCE_DOUBLE(1036831949));
    if (!is_mul_ok(0xAuLL, v49))
    {
      BUG();
    }

    v74 = specialized Collection.prefix(_:)(10 * v49, v90);
    v75 = v50;
    v76 = v51;
    v77 = v52;
    v53 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v94);
    Tensor.init<A>(shape:scalars:on:)(v95, &v74, v53, v80);
    TensorShape.init(_:)(&outlined read-only object #8 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), COERCE_DOUBLE(1036831949));
    v54 = v93;
    (v88)(v93, v92, v83);
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v94);
    Tensor.init(zeros:scalarType:on:)(v95, v54, v53);
    v55 = v87;
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v84);
    v56 = v68;
    Conv2D.init(weight:bias:stride:padding:dilation:groupCount:)(v91, v55, 1, 1, 0, 0, 1, 1, 1);
    HIDWORD(v57) = 0;
    *&v57 = LeakyReLU.init(alpha:)(0.1);
    *(v56 + *(v67 + 20)) = LODWORD(v57);
    MLFewShotSoundClassifier.ConvolutionalNetwork.init(causal:featureReduction:)(v70, v56);
    v58 = v95;
    TensorShape.init(_:)(&outlined read-only object #9 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), v57);
    v74 = v72;
    v59 = v85;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v94);
    Tensor.init<A>(shape:scalars:on:)(v58, &v74, v59, v89);
    TensorShape.init(_:)(&outlined read-only object #10 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), v57);
    (v88)(v93, v92, v83);
    v60 = v59;
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v94);
    v61 = v87;
    Tensor.init(zeros:scalarType:on:)(v95, v93, v60);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v84);
    v90 = (v71 + *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20));
    Dense.init(weight:bias:)(v91, v61);
    v62 = v95;
    TensorShape.init(_:)(&outlined read-only object #11 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), v57);
    v74 = v69;
    __swift_storeEnumTagSinglePayload(v85, 1, 1, v94);
    v63 = v85;
    Tensor.init<A>(shape:scalars:on:)(v62, &v74, v85, v89);
    TensorShape.init(_:)(&outlined read-only object #12 of MLFewShotSoundClassifier.TemporalClassifier.init(inputChannels:blobsFile:), v57);
    (v88)(v93, v92, v83);
    __swift_storeEnumTagSinglePayload(v63, 1, 1, v94);
    v64 = v87;
    Tensor.init(zeros:scalarType:on:)(v95, v93, v63);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v84);
    v65 = *(type metadata accessor for MLFewShotSoundClassifier.MLP(0) + 20);
    Dense.init(weight:bias:)(v91, v64);
  }

  return outlined release of BlobsFile(a2);
}

uint64_t MLFewShotSoundClassifier.TemporalClassifier.forward(_:)(uint64_t a1)
{
  v28 = a1;
  v27 = v1;
  v3 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork.Output(0);
  v4 = *(v3 - 8);
  v5 = v3;
  v25 = v3;
  v6 = *(v4 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v9 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork(0);
  v10 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.ConvolutionalNetwork and conformance MLFewShotSoundClassifier.ConvolutionalNetwork, type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork, &protocol conformance descriptor for MLFewShotSoundClassifier.ConvolutionalNetwork);
  Layer.callAsFunction(_:)(v28, v9, v10);
  v11 = *(type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0) + 20) + v2;
  v12 = &v24[*(v5 + 28)];
  v26 = v24;
  v28 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier.Output(0);
  v13 = v27 + *(v28 + 28);
  v14 = type metadata accessor for MLFewShotSoundClassifier.MLP(0);
  v15 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLFewShotSoundClassifier.MLP and conformance MLFewShotSoundClassifier.MLP, type metadata accessor for MLFewShotSoundClassifier.MLP, &protocol conformance descriptor for MLFewShotSoundClassifier.MLP);
  Layer.callAsFunction(_:)(v12, v14, v15);
  v16 = type metadata accessor for Tensor(0);
  v17 = *(*(v16 - 8) + 16);
  v18 = v27;
  v17(v27, v24, v16);
  v19 = v25;
  v20 = v28;
  v17(v18 + *(v28 + 20), &v24[*(v25 + 20)], v16);
  v21 = *(v19 + 24);
  v22 = v26;
  v17(v18 + *(v20 + 24), &v26[v21], v16);
  return outlined destroy of MLFewShotSoundClassifier.ConvolutionalNetwork.Output(v22);
}

uint64_t outlined destroy of MLFewShotSoundClassifier.ConvolutionalNetwork.Output(uint64_t a1)
{
  v1 = type metadata accessor for MLFewShotSoundClassifier.ConvolutionalNetwork.Output(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding()
{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.CausalPadding, &type metadata for MLFewShotSoundClassifier.CausalPadding);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.CausalPadding and conformance MLFewShotSoundClassifier.CausalPadding = result;
  }

  return result;
}

uint64_t outlined init with copy of MLFewShotSoundClassifier.CausalConv1D(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.CausalConv1D(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLFewShotSoundClassifier.LeakyConv2D(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLFewShotSoundClassifier.LeakyConv2D(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t *a1, uint64_t *a2, int *a3)
{
  return initializeBufferWithCopyOfBuffer for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v4 + 16) & ~v4));
    v8;
  }

  else
  {
    v6 = type metadata accessor for Tensor(0);
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    v7((a1 + a3[5]), (a2 + a3[5]), v6);
    v7((a1 + a3[6]), (a2 + a3[6]), v6);
    v7((a1 + a3[7]), (a2 + a3[7]), v6);
  }

  return v3;
}

uint64_t destroy for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, int *a2)
{
  return destroy for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2);
}

{
  v2 = type metadata accessor for Tensor(0);
  v3 = *(*(v2 - 8) + 8);
  v3(a1, v2);
  v3(a1 + a2[5], v2);
  v3(a1 + a2[6], v2);
  return (v3)(a1 + a2[7], v2);
}

uint64_t initializeWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return initializeWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 16);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t assignWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return assignWithCopy for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 24);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t initializeWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return initializeWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 32);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t assignWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1, uint64_t a2, int *a3)
{
  return assignWithTake for MLFewShotSoundClassifier.TemporalClassifier.Output(a1, a2, a3);
}

{
  v4 = type metadata accessor for Tensor(0);
  v5 = *(*(v4 - 8) + 40);
  v5(a1, a2, v4);
  v5(a1 + a3[5], a2 + a3[5], v4);
  v5(a1 + a3[6], a2 + a3[6], v4);
  v5(a1 + a3[7], a3[7] + a2, v4);
  return a1;
}

uint64_t type metadata completion function for MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1)
{
  result = type metadata accessor for Tensor(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = v3[0];
    v3[2] = v3[0];
    v3[3] = v3[0];
    swift_initStructMetadata(a1, 256, 4, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t AppleDeveloperAssetStore.__deallocating_deinit()
{
  v1 = v0 + OBJC_IVAR____TtC8CreateML24AppleDeveloperAssetStore_localStoreURL;
  v2 = type metadata accessor for URL(0);
  (*(*(v2 - 8) + 8))(v1, v2);
  return swift_deallocClassInstance(v0, *(*v0 + 48), *(*v0 + 52));
}

uint64_t type metadata accessor for AppleDeveloperAssetStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for AppleDeveloperAssetStore;
  if (!type metadata singleton initialization cache for AppleDeveloperAssetStore)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for AppleDeveloperAssetStore);
  }

  return result;
}

uint64_t type metadata completion function for AppleDeveloperAssetStore(uint64_t a1)
{
  v4 = v1;
  result = type metadata accessor for URL(319);
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_updateClassMetadata2(a1, 256, 1, &v4, a1 + 80);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AssetCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return swift_deallocClassInstance(v0, 96, 7);
}

char *initializeBufferWithCopyOfBuffer for MLActivityClassifier.DataSource.Columns(char *a1, uint64_t *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = (v5 + ((v4 + 16) & ~v4));
  }

  else
  {
    v7 = a3[5];
    v5;
    v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    v21 = *(*(v8 - 8) + 16);
    v21(&a1[v7], a2 + v7, v8);
    v9 = a3[6];
    __dst = &a1[v9];
    v10 = a2 + v9;
    if (__swift_getEnumTagSinglePayload(v10, 1, v8))
    {
      v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
      memcpy(__dst, v10, *(*(v11 - 8) + 64));
    }

    else
    {
      v21(__dst, v10, v8);
      __swift_storeEnumTagSinglePayload(__dst, 0, 1, v8);
    }

    v12 = a3[7];
    __dsta = &a1[v12];
    v13 = a2 + v12;
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14))
    {
      v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
      memcpy(__dsta, v13, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 16))(__dsta, v13, v14);
      __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v14);
    }

    v16 = a3[8];
    v17 = &a1[v16];
    v18 = a2 + v16;
    if (__swift_getEnumTagSinglePayload(a2 + v16, 1, v14))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
      memcpy(v17, v18, *(*(v19 - 8) + 64));
    }

    else
    {
      (*(*(v14 - 8) + 16))(v17, v18, v14);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v14);
    }
  }

  return a1;
}

uint64_t destroy for MLActivityClassifier.DataSource.Columns(void *a1, int *a2)
{
  *a1;
  v2 = a1 + a2[5];
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = a1 + a2[6];
  if (!__swift_getEnumTagSinglePayload(v5, 1, v3))
  {
    v4(v5, v3);
  }

  v6 = a1 + a2[7];
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (!__swift_getEnumTagSinglePayload(v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v8 = a1 + a2[8];
  result = __swift_getEnumTagSinglePayload(v8, 1, v7);
  if (!result)
  {
    return (*(*(v7 - 8) + 8))(v8, v7);
  }

  return result;
}

char *initializeWithCopy for MLActivityClassifier.DataSource.Columns(char *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  *a1 = *a2;
  v6 = *(a3 + 20);
  v5;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v22 = *(*(v7 - 8) + 16);
  v22(&a1[v6], a2 + v6, v7);
  v23 = a3;
  v8 = *(a3 + 24);
  v9 = &a1[v8];
  v10 = a2 + v8;
  if (__swift_getEnumTagSinglePayload(v10, 1, v7))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v9, v10, *(*(v11 - 8) + 64));
  }

  else
  {
    v22(v9, v10, v7);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
  }

  v12 = *(v23 + 28);
  v13 = &a1[v12];
  v14 = a2 + v12;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v13, v14, *(*(v16 - 8) + 64));
  }

  else
  {
    (*(*(v15 - 8) + 16))(v13, v14, v15);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
  }

  v17 = *(v23 + 32);
  v18 = &a1[v17];
  v19 = a2 + v17;
  if (__swift_getEnumTagSinglePayload(a2 + v17, 1, v15))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v18, v19, *(*(v20 - 8) + 64));
  }

  else
  {
    (*(*(v15 - 8) + 16))(v18, v19, v15);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v15);
  }

  return a1;
}

uint64_t *assignWithCopy for MLActivityClassifier.DataSource.Columns(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a1;
  *a1 = *a2;
  v5;
  v6;
  v7 = *(a3 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v34 = *(v8 - 8);
  v32 = *(v34 + 24);
  v32(a1 + v7, a2 + v7, v8);
  v33 = a3;
  v9 = *(a3 + 24);
  v10 = a1 + v9;
  v11 = a2 + v9;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v8);
  v13 = __swift_getEnumTagSinglePayload(v11, 1, v8);
  if (EnumTagSinglePayload)
  {
    if (!v13)
    {
      (*(v34 + 16))(v10, v11, v8);
      __swift_storeEnumTagSinglePayload(v10, 0, 1, v8);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v34 + 8))(v10, v8, v14, v32);
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v10, v11, *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  v32(v10, v11, v8);
LABEL_7:
  v16 = *(v33 + 28);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v20 = __swift_getEnumTagSinglePayload(v17, 1, v19);
  v21 = __swift_getEnumTagSinglePayload(v18, 1, v19);
  if (v20)
  {
    if (!v21)
    {
      (*(*(v19 - 8) + 16))(v17, v18, v19);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v19);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v22 = *(v19 - 8);
  if (v21)
  {
    (*(v22 + 8))(v17, v19);
LABEL_12:
    v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v17, v18, *(*(v23 - 8) + 64));
    goto LABEL_13;
  }

  (*(v22 + 24))(v17, v18, v19);
LABEL_13:
  v24 = *(v33 + 32);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = __swift_getEnumTagSinglePayload(a1 + v24, 1, v19);
  v28 = __swift_getEnumTagSinglePayload(v26, 1, v19);
  if (!v27)
  {
    v29 = *(v19 - 8);
    if (!v28)
    {
      (*(v29 + 24))(v25, v26, v19);
      return a1;
    }

    (*(v29 + 8))(v25, v19);
    goto LABEL_18;
  }

  if (v28)
  {
LABEL_18:
    v30 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v25, v26, *(*(v30 - 8) + 64));
    return a1;
  }

  (*(*(v19 - 8) + 16))(v25, v26, v19);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v19);
  return a1;
}

char *initializeWithTake for MLActivityClassifier.DataSource.Columns(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a3 + 20);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v20 = *(*(v5 - 8) + 32);
  v20(&a1[v4], &a2[v4], v5);
  v21 = a3;
  v6 = *(a3 + 24);
  v7 = &a1[v6];
  v8 = &a2[v6];
  if (__swift_getEnumTagSinglePayload(v8, 1, v5))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v7, v8, *(*(v9 - 8) + 64));
  }

  else
  {
    v20(v7, v8, v5);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v5);
  }

  v10 = *(v21 + 28);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v11, v12, *(*(v14 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 32))(v11, v12, v13);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  }

  v15 = *(v21 + 32);
  v16 = &a1[v15];
  v17 = &a2[v15];
  if (__swift_getEnumTagSinglePayload(&a2[v15], 1, v13))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v16, v17, *(*(v18 - 8) + 64));
  }

  else
  {
    (*(*(v13 - 8) + 32))(v16, v17, v13);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v13);
  }

  return a1;
}

uint64_t *assignWithTake for MLActivityClassifier.DataSource.Columns(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  *a1 = *a2;
  v5;
  v6 = *(a3 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v33 = *(v7 - 8);
  v31 = *(v33 + 40);
  v31(a1 + v6, a2 + v6, v7);
  v32 = a3;
  v8 = *(a3 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v7);
  v12 = __swift_getEnumTagSinglePayload(v10, 1, v7);
  if (EnumTagSinglePayload)
  {
    if (!v12)
    {
      (*(v33 + 32))(v9, v10, v7);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v12)
  {
    (*(v33 + 8))(v9, v7, v13, v31);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
    memcpy(v9, v10, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v31(v9, v10, v7);
LABEL_7:
  v15 = *(v32 + 28);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v19 = __swift_getEnumTagSinglePayload(v16, 1, v18);
  v20 = __swift_getEnumTagSinglePayload(v17, 1, v18);
  if (v19)
  {
    if (!v20)
    {
      (*(*(v18 - 8) + 32))(v16, v17, v18);
      __swift_storeEnumTagSinglePayload(v16, 0, 1, v18);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v21 = *(v18 - 8);
  if (v20)
  {
    (*(v21 + 8))(v16, v18);
LABEL_12:
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v16, v17, *(*(v22 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 40))(v16, v17, v18);
LABEL_13:
  v23 = *(v32 + 32);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = __swift_getEnumTagSinglePayload(a1 + v23, 1, v18);
  v27 = __swift_getEnumTagSinglePayload(v25, 1, v18);
  if (!v26)
  {
    v28 = *(v18 - 8);
    if (!v27)
    {
      (*(v28 + 40))(v24, v25, v18);
      return a1;
    }

    (*(v28 + 8))(v24, v18);
    goto LABEL_18;
  }

  if (v27)
  {
LABEL_18:
    v29 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
    memcpy(v24, v25, *(*(v29 - 8) + 64));
    return a1;
  }

  (*(*(v18 - 8) + 32))(v24, v25, v18);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v18);
  return a1;
}

uint64_t sub_160465(void *a1, unsigned int a2, int *a3)
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
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    if (*(*(v5 - 8) + 84) == a2)
    {
      v6 = a3[5];
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
      if (*(*(v5 - 8) + 84) == a2)
      {
        v6 = a3[6];
      }

      else
      {
        v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
        v6 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v6, a2, v5);
  }

  return result;
}

void sub_160518(void *a1, unsigned int a2, int a3, int *a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *a1 = 2 * (a2 - 1);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    if (*(*(v6 - 8) + 84) == a3)
    {
      v7 = a4[5];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?);
      if (*(*(v6 - 8) + 84) == a3)
      {
        v7 = a4[6];
      }

      else
      {
        v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?);
        v7 = a4[7];
      }
    }

    __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v6);
  }
}

uint64_t type metadata accessor for MLActivityClassifier.DataSource.Columns(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLActivityClassifier.DataSource.Columns;
  if (!type metadata singleton initialization cache for MLActivityClassifier.DataSource.Columns)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLActivityClassifier.DataSource.Columns);
  }

  return result;
}

uint64_t type metadata completion function for MLActivityClassifier.DataSource.Columns(uint64_t a1)
{
  v5[0] = &value witness table for Builtin.BridgeObject + 64;
  result = type metadata accessor for Column<String>(319);
  if (v2 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    result = type metadata accessor for Column<String>?(319, &lazy cache variable for type metadata for Column<String>?, &demangling cache variable for type metadata for Column<String>);
    if (v3 <= 0x3F)
    {
      v5[2] = *(result - 8) + 64;
      result = type metadata accessor for Column<String>?(319, &lazy cache variable for type metadata for Column<Double>?, &demangling cache variable for type metadata for Column<Double>);
      if (v4 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        v7 = v6;
        swift_initStructMetadata(a1, 256, 5, v5, a1 + 16);
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Column<String>(uint64_t a1)
{
  result = lazy cache variable for type metadata for Column<String>;
  if (!lazy cache variable for type metadata for Column<String>)
  {
    result = type metadata accessor for Column(a1, &type metadata for String);
    if (!v2)
    {
      lazy cache variable for type metadata for Column<String> = result;
    }
  }

  return result;
}

uint64_t type metadata accessor for Column<String>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a3);
    result = type metadata accessor for Optional(a1, v4);
    if (!v5)
    {
      *a2 = result;
    }
  }

  return result;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e143SourceO06gatherE15FromAnnotations12directoryURL18annotationFileName11labelColumn04fileP009startTimeP003endsP014featureColumns09timeStampP0AE0V0m35Foundation0K0V_S4SSgATSaySSGSStKF07D22E00P0VySaySdGGSSXEfU3_0I2ML0kL0V0eN0O7ColumnsVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = &v25;
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v34 = *(v33 - 8);
  v7 = *(v34 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v39 = &v25;
  v38 = v2;
  v40 = _swiftEmptyArrayStorage;
  v37 = v10;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v40;
  v12 = *(type metadata accessor for MLActivityClassifier.DataSource.Columns(0) + 20) + v41;
  v35 = v3;
  v36 = *(v3 + 16);
  v13 = (a1 + 40);
  v41 = v12;
  do
  {
    v28 = v11;
    v30 = *(v13 - 1);
    v27 = v13;
    v14 = *v13;
    v15 = v32;
    v16 = v31;
    v36(v32, v12, v31);
    v29 = v14;
    swift_bridgeObjectRetain_n(v14, 2);
    v17 = Column.count.getter(v16);
    (*(v35 + 8))(v15, v16);
    if (v17 < 0)
    {
      BUG();
    }

    v26[0] = v17;
    v26[1] = _swiftEmptyArrayStorage;
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Repeated<[Double]>);
    v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Repeated<[Double]> and conformance Repeated<A>, &demangling cache variable for type metadata for Repeated<[Double]>, &protocol conformance descriptor for Repeated<A>);
    v21 = v29;
    Column.init<A>(name:contents:)(v30, v29, v26, v18, v19, v20);
    v21;
    v11 = v28;
    v40 = v28;
    v22 = v28[2];
    if (v28[3] >> 1 <= v22)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v28[3] >= 2uLL, v22 + 1, 1);
      v11 = v40;
    }

    v11[2] = v22 + 1;
    (*(v34 + 32))(v11 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, v39, v33);
    v13 = v27 + 2;
    v23 = v37-- == 1;
    v12 = v41;
  }

  while (!v23);
  return v11;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v18 = *(v17 - 8);
  v3 = *(v18 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v21 = v2;
  v22 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v7 = v22;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v8 = (a1 + 40);
  v20 = &v13;
  do
  {
    v15 = v8;
    v14 = v6;
    v9 = *(v8 - 1);
    v10 = *v8;
    *v8;
    DataFrame.subscript.getter(v9, v10, v19);
    v10;
    v22 = v7;
    v11 = v7[2];
    if (v7[3] >> 1 <= v11)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v7[3] >= 2uLL, v11 + 1, 1);
      v7 = v22;
    }

    v7[2] = v11 + 1;
    (*(v18 + 32))(v7 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v11, v20, v17);
    v8 = v15 + 2;
    v6 = v14 - 1;
  }

  while (v14 != 1);
  return v7;
}

uint64_t MLActivityClassifier.DataSource.gatherData(featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  v124._object = a4;
  v123 = a3;
  v118 = v5;
  v124._countAndFlagsBits = a2;
  v120 = v6;
  v119 = a5;
  v125 = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v115 = v110;
  v117 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v11 = *(*(v117 - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v116 = v110;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>?) - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v121 = v110;
  v130 = type metadata accessor for AnyColumn(0);
  v128._object = *(v130 - 8);
  v17 = *(v128._object + 8);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v112 = v110;
  v20 = alloca(v17);
  v21 = alloca(v17);
  *&v129 = v110;
  v127 = type metadata accessor for DataFrame(0);
  v126 = *(v127 - 1);
  v22 = *(v126 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v133 = v110;
  v131 = type metadata accessor for URL(0);
  ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = *(v131 - 1);
  v25 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[8];
  v26 = alloca(v25);
  v27 = alloca(v25);
  v122 = v110;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v30 = type metadata accessor for MLActivityClassifier.DataSource(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v128._countAndFlagsBits = v7;
  outlined init with copy of MLActivityClassifier.DataSource(v7, v110);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v110, v30);
  if (!EnumCaseMultiPayload)
  {
    v46 = v131;
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[4])(v110, v110, v131);
    object = v124._object;
    if (!v119)
    {
      object = 0x6E6964726F636572;
    }

    v48 = 0xED0000656C694667;
    if (v119)
    {
      v48 = v119;
    }

    v119;
    MLActivityClassifier.DataSource.gatherDataFormLabeledDirectories(at:featureColumns:labelColumn:recordingFileColumn:)(v110, v125, v124._countAndFlagsBits, v123, object, v48);
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[1])(v110, v46);
    v45 = v48;
    return v45;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFileName: String, timeStampColumn: String, labelStartTimeColumn: String, labelEndTimeColumn: String));
    v36 = v35[12];
    v128._object = *&v110[v36];
    v37 = *&v110[v36 + 8];
    v38 = v35[16];
    v127 = *&v110[v38];
    v130 = *&v110[v38 + 8];
    v39 = v35[20];
    v126 = *&v110[v39];
    v133 = *&v110[v39 + 8];
    v40 = v35[24];
    v121 = *&v110[v40];
    *&v129 = *&v110[v40 + 8];
    v41 = v122;
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[4])(v122, v110, v131);
    v42 = v124._object;
    if (!v119)
    {
      v42 = 0x6E6964726F636572;
    }

    v43 = 0xED0000656C694667;
    if (v119)
    {
      v43 = v119;
    }

    v119;
    v44 = v128._object;
    v128._object = v37;
    MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)(v41, v44, v37, v124._countAndFlagsBits, v123, v42, v43, v126, v133, v121, v129, v125, v127, v130);
    (ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n[1])(v41, v131);
    v130;
    v128._object;
    v43;
    v133;
    v45 = v129;
    return v45;
  }

  v50 = v133;
  (*(v126 + 32))(v133, v110, v127);
  countAndFlagsBits = v124._countAndFlagsBits;
  v52._countAndFlagsBits = v124._countAndFlagsBits;
  v53 = v123;
  v52._object = v123;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v52) & 1) == 0)
  {
    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    *(&v111 + 1);
    *&v111 = 0xD000000000000017;
    *(&v111 + 1) = "assetFetcher" + 0x8000000000000000;
    v105._countAndFlagsBits = countAndFlagsBits;
    v105._object = v53;
    String.append(_:)(v105);
    v105._object = 0xE200000000000000;
    v105._countAndFlagsBits = 11815;
    String.append(_:)(v105);
    v129 = v111;
    v105._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v105._object, 0, 0);
    *v106 = v129;
    *(v106 + 16) = 0;
    *(v106 + 32) = 0;
    *(v106 + 48) = 0;
    swift_willThrow();
    v107 = v50;
    return (*(v126 + 8))(v107, v127);
  }

  v54 = v125;
  v55 = v50;
  if (*(v125 + 16))
  {
    v56 = *(v125 + 16);
    v125;
    v57 = (v54 + 40);
    v114 = v56;
    v58 = v56;
    do
    {
      v59 = *(v57 - 1);
      ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = v57;
      v60 = *v57;
      *v57;
      v131 = v59;
      v61._countAndFlagsBits = v59;
      v61._object = v60;
      v62 = DataFrame.indexOfColumn(_:)(v61);
      if (v62.is_nil)
      {
        v60;
      }

      else
      {
        value = v62.value;
        v128._countAndFlagsBits = v60;
        v64 = DataFrame.columns.getter();
        if (value < 0)
        {
          BUG();
        }

        v65 = v64;
        if (value >= *(v64 + 16))
        {
          BUG();
        }

        v122 = v58;
        v66 = v128._object;
        v67 = v130;
        (*(v128._object + 2))(v129, ((*(v128._object + 80) + 32) & ~*(v128._object + 80)) + v64 + *(v128._object + 9) * value, v130);
        v65;
        v68 = AnyColumn.wrappedElementType.getter();
        v69 = v66[1];
        v70 = v129;
        v69(v129, v67);
        if (v68 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]))
        {
          v71 = v131;
          v113 = v69;
          DataFrame.subscript.getter(v131, v128._countAndFlagsBits);
          v72 = v121;
          AnyColumn.convertedToDoubleArrays()();
          v73 = v72;
          v113(v70, v130);
          v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
          if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
          {
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, &demangling cache variable for type metadata for Column<[Double]>?);
            BUG();
          }

          v75 = v112;
          Column.eraseToAnyColumn()(v74);
          (*(*(v74 - 8) + 8))(v73, v74);
          DataFrame.subscript.setter(v75, v71, v128._countAndFlagsBits);
        }

        else
        {
          v128._countAndFlagsBits;
        }

        v58 = v122;
      }

      v57 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n + 2;
      --v58;
    }

    while (v58);
    v76 = v125;
    v125;
    v76;
    v77 = (v76 + 40);
    while (1)
    {
      v78 = *(v77 - 1);
      v79 = *v77;
      *v77;
      v128._countAndFlagsBits = v78;
      v80._countAndFlagsBits = v78;
      v80._object = v79;
      v81 = DataFrame.indexOfColumn(_:)(v80);
      if (v81.is_nil)
      {
        break;
      }

      v82 = v81.value;
      v83 = DataFrame.columns.getter();
      if (v82 < 0)
      {
        BUG();
      }

      v84 = v83;
      if (v82 >= *(v83 + 16))
      {
        BUG();
      }

      v131 = v77;
      v85 = v128._object;
      v86 = ((*(v128._object + 80) + 32) & ~*(v128._object + 80)) + v83 + *(v128._object + 9) * v82;
      ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = v79;
      v87 = v130;
      (*(v128._object + 2))(v129, v86, v130);
      v84;
      v88 = AnyColumn.wrappedElementType.getter();
      v89 = v87;
      v79 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n;
      v85[1](v129, v89);
      v90 = v131;
      if (v88 != __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]))
      {
        break;
      }

      v79;
      v77 = (v90 + 16);
      v91 = v114-- == &dword_0 + 1;
      v55 = v133;
      if (v91)
      {
        v54 = v125;
        v125;
        goto LABEL_34;
      }
    }

    v125;
    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    *(&v111 + 1);
    *&v111 = 0xD000000000000019;
    *(&v111 + 1) = "Missing labels column '" + 0x8000000000000000;
    v108._countAndFlagsBits = v128._countAndFlagsBits;
    v108._object = v79;
    String.append(_:)(v108);
    v79;
    v108._object = 0xE200000000000000;
    v108._countAndFlagsBits = 11815;
    String.append(_:)(v108);
    v129 = v111;
    v108._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v108._object, 0, 0);
    *v109 = v129;
    *(v109 + 16) = 0;
    *(v109 + 32) = 0;
    *(v109 + 48) = 0;
    swift_willThrow();
    v107 = v133;
    return (*(v126 + 8))(v107, v127);
  }

LABEL_34:
  v92 = v120;
  ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n(v54, v55);
  *&v129 = v92;
  v93 = *(v117 + 20);
  v94 = v117;
  v95 = v116;
  DataFrame.subscript.getter(v124._countAndFlagsBits, v123, &type metadata for String);
  v96 = v95 + *(v94 + 24);
  v97 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v130 = v96;
  v131 = v97;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v97);
  v98 = v95 + *(v94 + 28);
  v99 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v100 = v98;
  v101 = v133;
  __swift_storeEnumTagSinglePayload(v100, 1, 1, v99);
  __swift_storeEnumTagSinglePayload(v95 + *(v117 + 32), 1, 1, v99);
  *v95 = ML20MLActivityClassifierV10e87SourceO06gatherE014featureColumns11labelColumn013recordingFileK0AE0I0VSaySSG_S2SSgtKF07d3E00T16VySaySdGGSSXEfU_AG0E5FrameVTf1cn_n;
  v102 = v119;
  if (v119)
  {
    v103._countAndFlagsBits = v124._object;
    v103._object = v119;
    if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(v103))
    {
      v104 = v115;
      DataFrame.subscript.getter(v124._object, v102, &type metadata for String);
      __swift_storeEnumTagSinglePayload(v104, 0, 1, v131);
      outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v104, v130, &demangling cache variable for type metadata for Column<String>?);
    }
  }

  outlined init with take of MLActivityClassifier.DataSource.Columns(v116, v118);
  return (*(v126 + 8))(v101, v127);
}

uint64_t MLActivityClassifier.DataSource.Columns.convertToTuriCore()()
{
  v252._countAndFlagsBits = v1;
  v3 = v0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v245 = *(v7 - 8);
  v8 = *(v245 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v237 = &v222;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v232 = &v222;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v236 = &v222;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v235 = &v222;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v226 = &v222;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v259 = &v222;
  v246 = *v2;
  if (!*(v246 + 16))
  {
    v35 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v35, 0, 0);
    *v36 = 0xD000000000000035;
    *(v36 + 8) = "Prediction Window Size" + 0x8000000000000000;
    *(v36 + 16) = 0;
    *(v36 + 32) = 0;
    *(v36 + 48) = 0;
    return swift_willThrow();
  }

  v229 = &v222;
  v253 = v7;
  v230 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLDataColumn<Double>);
  v254 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v22, &protocol witness table for String);
  *&v257 = _swiftEmptyArrayStorage;
  v23 = alloca(24);
  v24 = alloca(32);
  v224 = &v257;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v234 = v2;
  v26 = v25;
  v257;
  v244 = v26;
  LOBYTE(v261) = v26 & 1;
  *&v257 = _swiftEmptyArrayStorage;
  v27 = alloca(24);
  v28 = alloca(32);
  v224 = &v257;
  v247 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v30 = v29;
  v257;
  LOBYTE(v260) = v30 & 1;
  v249 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v31 = v234;
  v231 = v234 + *(v249 + 24);
  v32 = v259;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v231, v259, &demangling cache variable for type metadata for Column<String>?);
  v33 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v33);
  v256 = v30;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v32, &demangling cache variable for type metadata for Column<String>?);
    v241 = 0;
    v248 = 0;
  }

  else
  {
    v38 = v32;
    v39 = specialized Collection.first.getter();
    v41 = v40;
    (*(*(v33 - 8) + 8))(v38, v33);
    if (v41 == 2)
    {
      v39 = 0;
    }

    v241 = v39;
    if (v41 == 2)
    {
      v41 = 0;
    }

    v248 = v41;
  }

  v42 = (v31 + *(v249 + 20));
  v239 = v33;
  v234 = v42;
  v43 = Column.count.getter(v33);
  v227 = v43;
  v44 = v253;
  if (v43 < 0)
  {
    BUG();
  }

  if (v43)
  {
    v45 = v246;
    v46 = *(v246 + 16);
    v240 = 0;
    v251 = 0;
    v47 = v254;
    v48 = v247;
    v228 = v46;
    while (1)
    {
      v247 = v48;
      v243 = ML14_UntypedColumnC_s5Error_pTt1g5;
      v254 = v47;
      if (v46)
      {
        *&v257 = _swiftEmptyArrayStorage;
        v45;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46, 0);
        v259 = v257;
        v49 = v46;
        v50 = v45 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
        v249 = *(v245 + 16);
        v250 = *(v245 + 72);
        v51 = v49;
        do
        {
          (v249)(v236, v50, v44);
          Column.subscript.getter(v251, v44);
          if (v233)
          {
            v52 = *(v233 + 16);
            v233;
          }

          else
          {
            v52 = 0;
          }

          (*(v245 + 8))(v236, v44);
          v53 = v259;
          *&v257 = v259;
          v54 = v259[2];
          v55 = v259[3];
          v56 = v54 + 1;
          if (v55 >> 1 <= v54)
          {
            v259 = (v54 + 1);
            ML14_UntypedColumnC_s5Error_pTt1g5 = v52;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v55 >= 2, v56, 1);
            v56 = v259;
            v52 = ML14_UntypedColumnC_s5Error_pTt1g5;
            v53 = v257;
          }

          *(v53 + 16) = v56;
          v259 = v53;
          *(v53 + 8 * v54 + 32) = v52;
          v50 += v250;
          --v51;
          v44 = v253;
        }

        while (v51);
        v246;
        v47 = v254;
        v57 = v259;
      }

      else
      {
        v57 = _swiftEmptyArrayStorage;
      }

      v58 = specialized Collection<>.firstIndex(of:)(0, v57);
      if ((v59 & 1) == 0)
      {
        v191 = v58;
        v47;
        v57;
        v248;
        *&v257 = 0;
        *(&v257 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v192._countAndFlagsBits = 0x2065727574616546;
        v192._object = 0xEF206E6D756C6F63;
        String.append(_:)(v192);
        if (v191 < 0)
        {
          BUG();
        }

        if (v191 >= *(v246 + 16))
        {
          BUG();
        }

        v193 = v245;
        v194 = v232;
        (*(v245 + 16))(v232, ((*(v245 + 80) + 32) & ~*(v245 + 80)) + v246 + *(v245 + 72) * v191, v44);
        v195 = Column.name.getter(v44);
        v196 = v44;
        v198 = v197;
        (*(v193 + 8))(v194, v196);
        v199._countAndFlagsBits = v195;
        v199._object = v198;
        String.append(_:)(v199);
        v198;
        v199._object = "Swift/Dictionary.swift" + 0x8000000000000000;
        v199._countAndFlagsBits = 0xD000000000000011;
        String.append(_:)(v199);
        v233 = v251;
        v200 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
        v202 = v201;
        v199._countAndFlagsBits = v200;
        v199._object = v201;
        String.append(_:)(v199);
        v202;
        v203._object = "Label does not exist on row " + 0x8000000000000000;
        v203._countAndFlagsBits = 0xD000000000000015;
        goto LABEL_146;
      }

      v60 = v57[2];
      v61 = v57;
      if (v60)
      {
        v62 = v57[4];
        v63 = v246;
        if (v60 == 1)
        {
          goto LABEL_28;
        }

        if (v61[5] != v62)
        {
          v123 = 1;
LABEL_143:
          v61;
          v248;
          *&v257 = 0;
          *(&v257 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(84);
          v204._object = "Extracting features for File " + 0x8000000000000000;
          v204._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v204);
          if (v123 >= *(v63 + 16))
          {
            BUG();
          }

          v205 = v245;
          v206 = v232;
          v207 = v63 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v123;
          v208 = v253;
          (*(v245 + 16))(v232, v207, v253);
          v252._countAndFlagsBits = Column.name.getter(v208);
          v210 = v209;
          v259 = *(v205 + 8);
          (v259)(v206, v208);
          v211._countAndFlagsBits = v252._countAndFlagsBits;
          v211._object = v210;
          String.append(_:)(v211);
          v210;
          v211._countAndFlagsBits = 0x20646E6120;
          v211._object = 0xE500000000000000;
          String.append(_:)(v211);
          v212 = v229;
          specialized Collection.first.getter(v246);
          if (__swift_getEnumTagSinglePayload(v212, 1, v208) == 1)
          {
            BUG();
          }

          v254;
          v213 = Column.name.getter(v208);
          v215 = v214;
          (v259)(v212, v208);
          v216._countAndFlagsBits = v213;
          v216._object = v215;
          String.append(_:)(v216);
          v215;
          v216._countAndFlagsBits = 0x20776F72206E6F20;
          v216._object = 0xE800000000000000;
          String.append(_:)(v216);
          v233 = v251;
          v217 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
          v219 = v218;
          v216._countAndFlagsBits = v217;
          v216._object = v218;
          String.append(_:)(v216);
          v219;
          v203._object = "Label does not exist on row " + 0x8000000000000000;
          v203._countAndFlagsBits = 0xD000000000000015;
LABEL_146:
          String.append(_:)(v203);
          v252 = v257;
          v220 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v220, 0, 0);
          *v221 = v252;
          *(v221 + 16) = 0;
          *(v221 + 32) = 0;
          *(v221 + 48) = 1;
          swift_willThrow();
          outlined consume of Result<_DataTable, Error>(v247, v260);
          v189 = v261;
          v190 = v243;
          return outlined consume of Result<_DataTable, Error>(v190, v189);
        }

        if (v60 == 2)
        {
LABEL_28:
          v238 = v61[4];
        }

        else
        {
          v122 = 0;
          do
          {
            v123 = v122 + 2;
            if (v122 + 2 >= v60)
            {
              BUG();
            }

            if (v61[v122 + 6] != v62)
            {
              goto LABEL_143;
            }

            ++v122;
          }

          while (v60 - 2 != v122);
          v238 = v61[4];
          v44 = v253;
        }
      }

      else
      {
        v238 = 0;
        v63 = v246;
      }

      v61;
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = v63;
        v66 = v245;
        v67 = v65 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
        v65;
        v224 = *(v66 + 16);
        v225 = *(v66 + 72);
        v68 = v237;
        do
        {
          v222 = v67;
          (v224)(v68, v67, v44);
          Column.subscript.getter(v251, v44);
          v69 = v257;
          if (!v257)
          {
            BUG();
          }

          v242 = type metadata accessor for _UntypedColumn();
          swift_allocObject(v242, 24, 7);
          countAndFlagsBits = v252._countAndFlagsBits;
          v71 = specialized _UntypedColumn.init<A>(_:)(v69);
          v223 = v64;
          v249 = countAndFlagsBits;
          if (countAndFlagsBits)
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = countAndFlagsBits;
          }

          else
          {
            ML14_UntypedColumnC_s5Error_pTt1g5 = v71;
          }

          v252._countAndFlagsBits = 0;
          v72 = Column.name.getter(v44);
          v74 = v73;
          v75 = v254;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v254);
          *&v257 = v75;
          v255 = v72;
          v259 = v74;
          v250 = specialized __RawDictionaryStorage.find<A>(_:)(v72, v74);
          v78 = (v77 & 1) == 0;
          v79 = __OFADD__(*(v75 + 16), v78);
          v80 = *(v75 + 16) + v78;
          if (v79)
          {
            BUG();
          }

          v81 = v77;
          __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLDataColumn<Double>>);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v80))
          {
            v82 = v259;
            v84 = specialized __RawDictionaryStorage.find<A>(_:)(v255, v259);
            LOBYTE(v86) = v86 & 1;
            if ((v81 & 1) != v86)
            {
LABEL_162:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v82, v86, v83, v85);
              BUG();
            }
          }

          else
          {
            v84 = v250;
          }

          v87 = v257;
          if (v81)
          {
            v88 = 16 * v84;
            v89 = v257;
          }

          else
          {
            swift_allocObject(v242, 24, 7);

            v90 = v252._countAndFlagsBits;
            v91 = specialized _UntypedColumn.init<A>(_:)(_swiftEmptyArrayStorage);
            if (v90)
            {
              v91 = v90;
            }

            v252._countAndFlagsBits = 0;
            v89 = v259;
            v87[(v84 >> 6) + 8] |= 1 << v84;
            v88 = 16 * v84;
            v92 = v87[6];
            *(v92 + v88) = v255;
            *(v92 + v88 + 8) = v89;
            v93 = v87[7];
            *(v93 + v88) = v91;
            *(v93 + v88 + 8) = v90 != 0;
            v94 = v87[2];
            v79 = __OFADD__(1, v94);
            v95 = v94 + 1;
            if (v79)
            {
              BUG();
            }

            v87[2] = v95;
          }

          v89;
          v96 = v87[7];
          v254 = v87;

          v97 = *(v96 + v88);
          if (*(v96 + v88 + 8))
          {
            v242 = *(v96 + v88);
            v98 = ML14_UntypedColumnC_s5Error_pTt1g5;
            if (v249)
            {
              v250 = v88;
              outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, 1);
              v99 = v97;
              v88 = v250;
            }

            else
            {
              outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, 0);
              v99 = v97;
            }

            v101 = outlined copy of Result<_DataTable, Error>(v99, 1);
            LOBYTE(v101) = 1;
            LODWORD(v255) = v101;
          }

          else if (v249)
          {
            v98 = ML14_UntypedColumnC_s5Error_pTt1g5;
            swift_errorRetain(ML14_UntypedColumnC_s5Error_pTt1g5);
            v100 = swift_errorRetain(v98);
            LOBYTE(v100) = 1;
            LODWORD(v255) = v100;
            v242 = v98;
          }

          else
          {
            v250 = v88;
            v102 = ML14_UntypedColumnC_s5Error_pTt1g5;
            outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, 0);
            outlined copy of Result<_DataTable, Error>(v97, 0);
            v103 = v252._countAndFlagsBits;
            v104 = _UntypedColumn.appending(contentsOf:)(v102);
            v105 = v97;
            if (v103)
            {
              v106 = outlined consume of Result<_DataTable, Error>(v97, 0);
              LOBYTE(v106) = 1;
              LODWORD(v255) = v106;
              v242 = v103;
              v252._countAndFlagsBits = 0;
            }

            else
            {
              v107 = v104;
              v252._countAndFlagsBits = 0;
              LODWORD(v255) = 0;
              outlined consume of Result<_DataTable, Error>(v105, 0);
              v242 = v107;
            }

            v98 = ML14_UntypedColumnC_s5Error_pTt1g5;
            v88 = v250;
          }

          v108 = v249 != 0;
          outlined consume of Result<_DataTable, Error>(*(v96 + v88), *(v96 + v88 + 8));
          *(v96 + v88) = v242;
          *(v96 + v88 + 8) = v255;
          outlined consume of Result<_DataTable, Error>(v98, v108);
          v259;
          v68 = v237;
          v44 = v253;
          (*(v245 + 8))(v237, v253);
          outlined consume of Result<_DataTable, Error>(v98, v108);
          v67 = v225 + v222;
          v64 = v223 - 1;
        }

        while (v223 != 1);
        v246;
      }

      Column.subscript.getter(v251, v239);
      v109 = v238;
      if (v238 < 0)
      {
        BUG();
      }

      v110 = *(&v257 + 1);
      v111 = *(&v257 + 1);
      if (*(&v257 + 1))
      {
        v110 = v257;
      }

      else
      {
        v111 = 0xE000000000000000;
      }

      v259 = type metadata accessor for _UntypedColumn();
      swift_allocObject(v259, 24, 7);
      v112 = v252._countAndFlagsBits;
      v113 = specialized _UntypedColumn.init<A>(_:)(v109, v110, v111);
      if (v112)
      {
        outlined copy of Result<_DataTable, Error>(v112, 1);
        if (v244)
        {
          v110 = v243;
          outlined copy of Result<_DataTable, Error>(v243, 1);
          v114 = v110;
          LOBYTE(v110) = 1;
          v115 = v112;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v114;
          v252._countAndFlagsBits = 0;
        }

        else
        {
          swift_errorRetain(v112);
          LOBYTE(v110) = 1;
          v115 = v112;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v112;
          v252._countAndFlagsBits = 0;
          v114 = v243;
        }
      }

      else
      {
        v115 = v113;
        if (v244)
        {
          outlined copy of Result<_DataTable, Error>(v113, 0);
          v110 = v243;
          outlined copy of Result<_DataTable, Error>(v243, 1);
          v114 = v110;
          LOBYTE(v110) = 1;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v114;
          v252._countAndFlagsBits = 0;
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v113, 0);
          v110 = v243;
          outlined copy of Result<_DataTable, Error>(v243, 0);
          v116 = _UntypedColumn.appending(contentsOf:)(v115);
          v252._countAndFlagsBits = 0;
          ML14_UntypedColumnC_s5Error_pTt1g5 = v116;
          v140 = v110;
          LODWORD(v110) = 0;
          outlined consume of Result<_DataTable, Error>(v140, 0);
          v114 = v140;
        }
      }

      outlined consume of Result<_DataTable, Error>(v114, v261);
      outlined consume of Result<_DataTable, Error>(v115, v112 != 0);
      outlined consume of Result<_DataTable, Error>(v115, v112 != 0);
      v244 = v110;
      LOBYTE(v261) = v110;
      v117 = v226;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v231, v226, &demangling cache variable for type metadata for Column<String>?);
      v118 = v239;
      if (__swift_getEnumTagSinglePayload(v117, 1, v239) == 1)
      {
        break;
      }

      Column.subscript.getter(v251, v118);
      v120 = v257;
      (*(*(v118 - 8) + 8))(v117);
      v119 = v248;
      if (!*(&v120 + 1))
      {
        goto LABEL_77;
      }

      if (!v248)
      {
        v119 = *(&v120 + 1);
LABEL_86:
        v124 = v235;
        v125 = v239;
LABEL_87:
        v119;
        v121 = v240 + 1;
        if (__OFADD__(1, v240))
        {
          BUG();
        }

        outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v231, v124, &demangling cache variable for type metadata for Column<String>?);
        if (__swift_getEnumTagSinglePayload(v124, 1, v125) == 1)
        {
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v124, &demangling cache variable for type metadata for Column<String>?);
          v241 = 0;
          v248 = 0;
        }

        else
        {
          Column.subscript.getter(v251, v125);
          v248 = *(&v257 + 1);
          v241 = v257;
          (*(*(v125 - 8) + 8))(v124, v125);
        }

        goto LABEL_91;
      }

      if (v120 == __PAIR128__(v248, v241))
      {
        *(&v120 + 1);
        goto LABEL_79;
      }

      v139 = _stringCompareWithSmolCheck(_:_:expecting:)(v120, *(&v120 + 1), v241, v248, 0);
      *(&v120 + 1);
      v124 = v235;
      v125 = v239;
      if ((v139 & 1) == 0)
      {
        goto LABEL_87;
      }

      v121 = v240;
LABEL_91:
      swift_allocObject(v259, 24, 7);
      v240 = v121;
      v126 = v252._countAndFlagsBits;
      v127 = specialized _UntypedColumn.init<A>(_:)(v238, v121);
      v128 = v126;
      if (v126)
      {
        outlined copy of Result<_DataTable, Error>(v126, 1);
        v47 = v254;
        if (v256)
        {
          v129 = v247;
          v130 = outlined copy of Result<_DataTable, Error>(v247, 1);
          v131 = v129;
          LOBYTE(v130) = 1;
          v256 = v130;
          v132 = v126;
          v255 = v129;
          v252._countAndFlagsBits = 0;
        }

        else
        {
          v136 = swift_errorRetain(v126);
          LOBYTE(v136) = 1;
          v256 = v136;
          v132 = v126;
          v255 = v126;
          v252._countAndFlagsBits = 0;
          v131 = v247;
        }
      }

      else
      {
        v133 = v127;
        if (v256)
        {
          outlined copy of Result<_DataTable, Error>(v127, 0);
          v134 = v247;
          v135 = outlined copy of Result<_DataTable, Error>(v247, 1);
          v131 = v134;
          LOBYTE(v135) = 1;
          v256 = v135;
          v255 = v134;
          v132 = 0;
          v252._countAndFlagsBits = 0;
          v47 = v254;
          v128 = v133;
        }

        else
        {
          outlined copy of Result<_DataTable, Error>(v127, 0);
          v137 = v247;
          outlined copy of Result<_DataTable, Error>(v247, 0);
          v259 = 0;
          v138 = _UntypedColumn.appending(contentsOf:)(v133);
          v252._countAndFlagsBits = 0;
          v256 = 0;
          v255 = v138;
          outlined consume of Result<_DataTable, Error>(v137, 0);
          v47 = v254;
          v131 = v137;
          v128 = v133;
          v132 = v259;
        }
      }

      v141 = v251 + 1;
      v142 = v132 != 0;
      outlined consume of Result<_DataTable, Error>(v131, v260);
      outlined consume of Result<_DataTable, Error>(v128, v142);
      outlined consume of Result<_DataTable, Error>(v128, v142);
      LOBYTE(v260) = v256;
      v48 = v255;
      v251 = v141;
      v143 = v141 == v227;
      v44 = v253;
      v45 = v246;
      v46 = v228;
      v144 = v255;
      if (v143)
      {
        goto LABEL_103;
      }
    }

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v117, &demangling cache variable for type metadata for Column<String>?);
    v119 = v248;
LABEL_77:
    0;
    if (v119)
    {
      goto LABEL_86;
    }

    v248 = 0;
LABEL_79:
    v121 = v240;
    goto LABEL_91;
  }

  v144 = v247;
  v47 = v254;
LABEL_103:
  v255 = v144;
  v248;
  v145 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v146 = 1 << *(v47 + 32);
  v147 = ~(-1 << v146);
  if (v146 >= 64)
  {
    v147 = -1;
  }

  v148 = v145;
  v149 = *(v47 + 64) & v147;
  v253 = (v146 + 63) >> 6;
  v150 = 0;
  v254 = v47;
  while (1)
  {
    if (v149)
    {
      goto LABEL_122;
    }

    v151 = v150 + 1;
    if (__OFADD__(1, v150))
    {
      BUG();
    }

    if (v151 >= v253)
    {
      break;
    }

    v149 = *(v47 + 8 * v151 + 64);
    if (v149)
    {
      ++v150;
    }

    else
    {
      v152 = (v150 + 2);
      if (v150 + 2 >= v253)
      {
        break;
      }

      v149 = *(v47 + 8 * v151 + 72);
      if (v149)
      {
        goto LABEL_121;
      }

      v152 = (v150 + 3);
      if (v150 + 3 >= v253)
      {
        break;
      }

      v149 = *(v47 + 8 * v151 + 80);
      if (v149)
      {
        goto LABEL_121;
      }

      v152 = (v150 + 4);
      if (v150 + 4 >= v253)
      {
        break;
      }

      v149 = *(v47 + 8 * v151 + 88);
      if (v149)
      {
        goto LABEL_121;
      }

      v152 = (v150 + 5);
      if (v150 + 5 >= v253)
      {
        break;
      }

      v149 = *(v47 + 8 * v151 + 96);
      if (v149)
      {
        goto LABEL_121;
      }

      v152 = (v150 + 6);
      if (v150 + 6 >= v253)
      {
        break;
      }

      v149 = *(v47 + 8 * v151 + 104);
      if (v149)
      {
LABEL_121:
        v150 = v152;
      }

      else
      {
        v177 = v150 + 7;
        do
        {
          if (v177 >= v253)
          {
            goto LABEL_136;
          }

          v149 = *(v47 + 8 * v177++ + 64);
        }

        while (!v149);
        v150 = v177 - 1;
      }
    }

LABEL_122:
    v245 = v149;
    _BitScanForward64(&v153, v149);
    v154 = *(v47 + 48);
    v155 = *(v47 + 56);
    v236 = v150;
    v156 = (v150 << 10) | (16 * v153);
    v259 = *(v154 + v156);
    v157 = *(v154 + v156 + 8);
    v158 = *(v155 + v156);
    v159 = *(v155 + v156 + 8);
    outlined copy of Result<_DataTable, Error>(v158, *(v155 + v156 + 8));
    v250 = v158;
    LODWORD(v251) = v159;
    outlined copy of Result<_DataTable, Error>(v158, v159);
    v157;
    v160 = swift_isUniquelyReferenced_nonNull_native(v148);
    *&v257 = v148;
    v249 = v157;
    v162 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v157);
    v163 = (v161 & 1) == 0;
    v79 = __OFADD__(v148[2], v163);
    v164 = v148[2] + v163;
    if (v79)
    {
      BUG();
    }

    v165 = v161;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, MLUntypedColumn>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v160, v164))
    {
      v82 = v249;
      v162 = specialized __RawDictionaryStorage.find<A>(_:)(v259, v249);
      LOBYTE(v86) = v86 & 1;
      if ((v165 & 1) != v86)
      {
        goto LABEL_162;
      }

      v166 = v165;
      v47 = v254;
    }

    else
    {
      v47 = v254;
      v166 = v165;
    }

    v148 = v257;
    if (v166)
    {
      v259 = v257;
      v167 = *(v257 + 56);
      v168 = 16 * v162;
      outlined consume of Result<_DataTable, Error>(*(v167 + v168), *(v167 + v168 + 8));
      v169 = v250;
      *(v167 + v168) = v250;
      v170 = v251;
      *(v167 + v168 + 8) = v251 & 1;
      v148 = v259;
      v249;
      v171 = v169;
      v47 = v254;
    }

    else
    {
      *(v257 + 8 * (v162 >> 6) + 64) |= 1 << v162;
      v172 = v148[6];
      v173 = 16 * v162;
      *(v172 + v173) = v259;
      *(v172 + v173 + 8) = v249;
      v174 = v148[7];
      v171 = v250;
      *(v174 + v173) = v250;
      v170 = v251;
      *(v174 + v173 + 8) = v251 & 1;
      v175 = v148[2];
      v79 = __OFADD__(1, v175);
      v176 = v175 + 1;
      if (v79)
      {
        BUG();
      }

      v148[2] = v176;
    }

    v149 = (v245 - 1) & v245;
    outlined consume of Result<_DataTable, Error>(v171, v170);
    v150 = v236;
  }

LABEL_136:
  v178 = v148;

  v179 = v261;
  v180 = ML14_UntypedColumnC_s5Error_pTt1g5;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v261);
  v181 = swift_isUniquelyReferenced_nonNull_native(v178);
  *&v257 = v178;
  ML14_UntypedColumnC_s5Error_pTt1g5 = v180;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v180, v179, 0x6C6562616CLL, 0xE500000000000000, v181);
  v182 = v257;
  v183 = v260;
  v184 = v255;
  outlined copy of Result<_DataTable, Error>(v255, v260);
  v185 = swift_isUniquelyReferenced_nonNull_native(v182);
  *&v257 = v182;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v184, v183, 0x5F6E6F6973736573, 0xEA00000000006469, v185);
  v186 = v252._countAndFlagsBits;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v257);
  if (!v186)
  {
    v187 = BYTE8(v257);
    v188 = v230;
    *v230 = v257;
    *(v188 + 8) = v187;
  }

  outlined consume of Result<_DataTable, Error>(v184, v183);
  v189 = v261;
  v190 = ML14_UntypedColumnC_s5Error_pTt1g5;
  return outlined consume of Result<_DataTable, Error>(v190, v189);
}

uint64_t MLActivityClassifier.DataSource.Columns.buildDataFrame()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = alloca(v1);
  v5 = alloca(v1);
  v47 = &v44;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v57 = *(v56 - 8);
  v6 = *(v57 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v50 = &v44;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v51 = &v44;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v49 = &v44;
  v48 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v52 = *(v48 - 8);
  v14 = *(v52 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v53 = &v44;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v58 = *(v17 - 8);
  v18 = *(v58 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  DataFrame.init()();
  v55 = v0;
  v21 = *v0;
  v22 = *(*v0 + 16);
  v46 = &v44;
  if (v22)
  {
    v23 = v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v44 = *(v58 + 16);
    v45 = *(v58 + 72);
    v54 = v21;
    v21;
    do
    {
      v44(&v44, v23, v17);
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      DataFrame.append<A>(column:)(&v44, v24);
      (*(v58 + 8))(&v44, v17);
      v23 += v45;
      --v22;
    }

    while (v22);
    v54;
  }

  v25 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v26 = v55;
  DataFrame.append<A>(column:)(v55 + *(v25 + 20), &type metadata for String);
  v58 = v25;
  v27 = v49;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26 + *(v25 + 24), v49, &demangling cache variable for type metadata for Column<String>?);
  v28 = v48;
  if (__swift_getEnumTagSinglePayload(v27, 1, v48) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v27, &demangling cache variable for type metadata for Column<String>?);
  }

  else
  {
    v29 = v53;
    v30 = v27;
    v31 = v52;
    (*(v52 + 32))(v53, v30, v28);
    DataFrame.append<A>(column:)(v29, &type metadata for String);
    (*(v31 + 8))(v29, v28);
  }

  v32 = v56;
  v33 = v58;
  v34 = v47;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v26 + *(v58 + 28), v47, &demangling cache variable for type metadata for Column<Double>?);
  if (__swift_getEnumTagSinglePayload(v34, 1, v32) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v34, &demangling cache variable for type metadata for Column<Double>?);
  }

  else
  {
    v35 = v51;
    v36 = v57;
    (*(v57 + 32))(v51, v34, v32);
    DataFrame.append<A>(column:)(v35, &type metadata for Double);
    v37 = v35;
    v33 = v58;
    (*(v36 + 8))(v37, v32);
    v26 = v55;
  }

  v38 = v26 + *(v33 + 32);
  v39 = v46;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v38, v46, &demangling cache variable for type metadata for Column<Double>?);
  if (__swift_getEnumTagSinglePayload(v39, 1, v32) == 1)
  {
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v39, &demangling cache variable for type metadata for Column<Double>?);
  }

  v41 = v50;
  v42 = v39;
  v43 = v57;
  (*(v57 + 32))(v50, v42, v32);
  DataFrame.append<A>(column:)(v41, &type metadata for Double);
  return (*(v43 + 8))(v41, v32);
}

uint64_t MLActivityClassifier.DataSource.gatherDataFormLabeledDirectories(at:featureColumns:labelColumn:recordingFileColumn:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v327 = a4;
  v305 = a3;
  v8 = v6;
  v303 = v7;
  v325 = a6;
  v330 = a5;
  v314 = a1;
  v284 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v262 = *(v284 - 8);
  v9 = *(v262 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v281 = &v262;
  v263 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<Double>>);
  v12 = *(*(v263 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v264 = &v262;
  v312 = type metadata accessor for CSVType(0);
  v313 = *(v312 - 8);
  v15 = *(v313 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v301 = &v262;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v271 = &v262;
  v20 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v272 = &v262;
  v287 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v288 = *(v287 - 8);
  v23 = *(v288 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v285 = &v262;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v291 = &v262;
  v307._object = type metadata accessor for JSONType(0);
  v310 = *(v307._object - 1);
  v28 = *(v310 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v302 = &v262;
  v31 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v273 = &v262;
  v289 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v290 = *(v289 - 8);
  v34 = *(v290 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v286 = &v262;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v304 = &v262;
  v316 = type metadata accessor for DataFrame(0);
  v315 = *(v316 - 8);
  v39 = *(v315 + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v274 = &v262;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v275 = &v262;
  v44 = alloca(v39);
  v45 = alloca(v39);
  v308 = &v262;
  v297 = type metadata accessor for UTType(0);
  v298 = *(v297 - 8);
  v46 = *(v298 + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v296 = &v262;
  v332 = type metadata accessor for URL(0);
  v333 = *(v332 - 8);
  v49 = *(v333 + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v292 = &v262;
  v52 = alloca(v49);
  v53 = alloca(v49);
  v293 = &v262;
  v54 = alloca(v49);
  v55 = alloca(v49);
  v321 = &v262;
  v56 = alloca(v49);
  v57 = alloca(v49);
  v326 = &v262;
  v58 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v309 = &v262;
  v282 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v283 = *(v282 - 8);
  v61 = *(v283 + 64);
  v62 = alloca(v61);
  v63 = alloca(v61);
  v317 = a2;
  v64 = _swiftEmptyArrayStorage;
  v320 = *(a2 + 16);
  v328 = v8;
  if (v320)
  {
    *&v311[0] = _swiftEmptyArrayStorage;
    v65 = v320;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
    v64 = *&v311[0];
    v66 = (v317 + 40);
    v331 = &v262;
    do
    {
      v335._countAndFlagsBits = v65;
      v324 = v64;
      _._countAndFlagsBits = *(v66 - 1);
      v336 = *v66;
      v279 = _swiftEmptyArrayStorage;
      v336;
      v334 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [[Double]]);
      v68 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [[Double]] and conformance [A], &demangling cache variable for type metadata for [[Double]], &protocol conformance descriptor for [A]);
      v64 = v324;
      Column.init<A>(name:contents:)(_._countAndFlagsBits, v336, &v279, v334, v67, v68);
      *&v311[0] = v64;
      v69 = v64[2];
      if (v64[3] >> 1 <= v69)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64[3] >= 2uLL, v69 + 1, 1);
        v64 = *&v311[0];
      }

      v64[2] = v69 + 1;
      (*(v283 + 32))(v64 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v69, v331, v282);
      v66 += 2;
      v65 = v335._countAndFlagsBits - 1;
    }

    while (v335._countAndFlagsBits != 1);
    v8 = v328;
  }

  v324 = v64;
  *&v311[0] = _swiftEmptyArrayStorage;
  v335._countAndFlagsBits = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v70 = v8 + *(v335._countAndFlagsBits + 20);
  v71 = v327;
  v327;
  v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v73 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  v294 = v70;
  Column.init<A>(name:contents:)(v305, v71, v311, &type metadata for String, v72, v73);
  *&v311[0] = _swiftEmptyArrayStorage;
  v74 = v325;
  v325;
  v75 = v309;
  v76 = v72;
  v77 = v328;
  Column.init<A>(name:contents:)(v330, v74, v311, &type metadata for String, v76, v73);
  v266 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v266);
  countAndFlagsBits = v335._countAndFlagsBits;
  v79 = v284;
  __swift_storeEnumTagSinglePayload(v77 + *(v335._countAndFlagsBits + 28), 1, 1, v284);
  v80 = v79;
  v81 = v324;
  __swift_storeEnumTagSinglePayload(v77 + *(countAndFlagsBits + 32), 1, 1, v80);
  *v77 = v81;
  v82 = v77 + *(countAndFlagsBits + 24);
  outlined init with take of DataFrame?(v309, v82, &demangling cache variable for type metadata for Column<String>?);
  v83 = v303;
  v84 = static _FileUtilities.getReadableSubdirectoriesOfDirectory(at:)(v314);
  if (v83)
  {
    return outlined destroy of MLActivityClassifier.DataSource.Columns(v77);
  }

  v85 = v84;
  v270 = v82;
  v86 = *(v84 + 16);
  v330 = 0;
  if (v86)
  {
    v87 = v332;
  }

  else
  {
    v84;
    v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<URL>);
    v89 = v333;
    v90 = *(v333 + 80);
    v91 = (v90 + 32) & ~*(v333 + 80);
    v92 = swift_allocObject(v88, v91 + *(v333 + 72), v90 | 7);
    *(v92 + 16) = 1;
    *(v92 + 24) = 2;
    v93 = v92 + v91;
    v87 = v332;
    (*(v89 + 16))(v93, v314, v332);
    v85 = v92;
    v86 = *(v92 + 16);
    if (!v86)
    {
      return v85;
    }
  }

  v276 = (*(v333 + 80) + 32) & ~*(v333 + 80);
  v94 = v85 + v276;
  v309 = (v317 + 32);
  LODWORD(v314) = enum case for CSVType.double(_:);
  LODWORD(v303) = enum case for JSONType.double(_:);
  v306 = (v317 + 40);
  v95 = 0;
  v96 = v296;
  v322 = v85;
  v277 = v86;
  v278 = v85 + v276;
LABEL_12:
  if (v95 >= *(v85 + 16))
  {
    BUG();
  }

  v97 = v81;
  v98 = *(v333 + 16);
  v267 = *(v333 + 72);
  v299 = v95;
  v99 = v326;
  v295 = v98;
  v98(v326, v94 + v95 * v267, v87);
  v307._countAndFlagsBits = URL.lastPathComponent.getter();
  v329 = v100;
  static UTType.text.getter();
  v101 = v330;
  v102 = static _FileUtilities.readableFiles(at:type:)(v99, v96);
  v330 = v101;
  if (v101)
  {
    (*(v298 + 8))(v96, v297);
    v329;
    (*(v333 + 8))(v326, v87);
    v322;
    v77 = v328;
    return outlined destroy of MLActivityClassifier.DataSource.Columns(v77);
  }

  v103 = v102;
  (*(v298 + 8))(v96, v297);
  v269 = v103[2];
  if (!v269)
  {
    v103;
    v322;
    *&v311[0] = 0;
    *(&v311[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v249._countAndFlagsBits = 0xD000000000000019;
    v249._object = "tted text file " + 0x8000000000000000;
    String.append(_:)(v249);
    v249._countAndFlagsBits = v307._countAndFlagsBits;
    v249._object = v329;
    String.append(_:)(v249);
    v249._countAndFlagsBits = 0xD000000000000021;
    v335._countAndFlagsBits = 0xD000000000000021;
    v249._object = " one feature column." + 0x8000000000000000;
    String.append(_:)(v249);
    v250 = *(&v311[0] + 1);
    _._countAndFlagsBits = *&v311[0];
    v251 = static os_log_type_t.error.getter();
    v249._countAndFlagsBits = _._countAndFlagsBits;
    v249._object = v250;
    log(_:type:)(v249, v251);
    v250;
    *&v311[0] = 0;
    *(&v311[0] + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v249._countAndFlagsBits = 0xD000000000000019;
    v249._object = "tted text file " + 0x8000000000000000;
    String.append(_:)(v249);
    v249._countAndFlagsBits = v307._countAndFlagsBits;
    v252 = v329;
    v249._object = v329;
    String.append(_:)(v249);
    v252;
    v249._countAndFlagsBits = v335._countAndFlagsBits;
    v249._object = " one feature column." + 0x8000000000000000;
    String.append(_:)(v249);
    v335 = v311[0];
    v249._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v249._object, 0, 0);
    *v253 = v335;
    *(v253 + 16) = 0;
    *(v253 + 32) = 0;
    *(v253 + 48) = 0;
    swift_willThrow();
    (*(v333 + 8))(v326, v332);
    goto LABEL_112;
  }

  ++v299;
  v318 = v103;
  v268 = v103 + v276;
  v104 = 0;
  v105 = v321;
  v81 = v97;
  v106 = v295;
  while (1)
  {
    if (v104 >= v318[2])
    {
      BUG();
    }

    v324 = v81;
    v305 = v104;
    v107 = v332;
    v106(v105, &v268[v267 * v104], v332);
    v108._countAndFlagsBits = 0x6E6F736A2ELL;
    v108._object = 0xE500000000000000;
    v265 = URL.absoluteString.getter();
    v327 = v109;
    if (String.hasSuffix(_:)(v108))
    {
      v106(v293, v105, v107);
      if (v320)
      {
        *&v311[0] = _swiftEmptyArrayStorage;
        v110 = v320;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
        v111 = *&v311[0];
        v334 = *(v310 + 104);
        v112 = v306;
        v113 = v286;
        do
        {
          _._countAndFlagsBits = v110;
          v114 = *(v112 - 1);
          v336 = *v112;
          v115 = v336;
          v116 = v113 + *(v289 + 48);
          *v113 = v114;
          v113[1] = v115;
          (v334)(v116, v303, v307._object);
          *&v311[0] = v111;
          v117 = v111[2];
          v331 = v111[3];
          v118 = v331 >> 1;
          v335._countAndFlagsBits = v117 + 1;
          v336;
          if (v118 <= v117)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v331 >= 2, v335._countAndFlagsBits, 1);
            v111 = *&v311[0];
          }

          v111[2] = v335._countAndFlagsBits;
          v113 = v286;
          outlined init with take of DataFrame?(v286, v111 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v117, &demangling cache variable for type metadata for (String, JSONType));
          v112 += 2;
          v110 = _._countAndFlagsBits - 1;
        }

        while (_._countAndFlagsBits != 1);
      }

      else
      {
        v111 = _swiftEmptyArrayStorage;
      }

      v129 = v111[2];
      if (v129)
      {
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, JSONType>);
        v130 = static _DictionaryStorage.allocate(capacity:)(v129);
        v131 = v111[2];
        v323 = v130;
        v334 = v131;
        if (v131)
        {
          v331 = v304 + *(v289 + 48);
          v132 = v290;
          v133 = v111 + ((*(v290 + 80) + 32) & ~*(v290 + 80));
          v319 = v111;
          swift_bridgeObjectRetain_n(v111, 2);
          v325 = *(v132 + 72);
          v134 = v304;
          v135 = 0;
          while (1)
          {
            outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v133, v134, &demangling cache variable for type metadata for (String, JSONType));
            v136 = __OFADD__(1, v135++);
            if (v136)
            {
              BUG();
            }

            v336 = v133;
            v137 = *v134;
            v138 = v134[1];
            *&v311[0] = v137;
            *(&v311[0] + 1) = v138;
            _._countAndFlagsBits = *(v310 + 32);
            (_._countAndFlagsBits)(v302, v331, v307._object);
            v335._countAndFlagsBits = v138;
            v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v138);
            v141 = (v140 & 1) == 0;
            v136 = __OFADD__(v130[2], v141);
            v142 = v130[2] + v141;
            if (v136)
            {
              BUG();
            }

            v143 = v140;
            if (v130[3] < v142)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v142, 1u);
              v130 = v323;
              v144 = v335._countAndFlagsBits;
              v139 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v335._countAndFlagsBits);
              LOBYTE(v146) = v146 & 1;
              v147 = v143;
              LOBYTE(v147) = v143 & 1;
              if ((v143 & 1) != v146)
              {
                goto LABEL_129;
              }
            }

            if (v143)
            {
              break;
            }

            v130[(v139 >> 6) + 8] |= 1 << v139;
            v148 = v130[6];
            v149 = 16 * v139;
            *(v148 + v149) = v137;
            *(v148 + v149 + 8) = v335._countAndFlagsBits;
            (_._countAndFlagsBits)(v130[7] + *(v310 + 72) * v139, v302, v307._object);
            v150 = v130[2];
            v136 = __OFADD__(1, v150);
            v151 = v150 + 1;
            v134 = v304;
            if (v136)
            {
              BUG();
            }

            v130[2] = v151;
            v133 = &v336[v325];
            if (v135 == v334)
            {
              swift_bridgeObjectRelease_n(v319, 3);
              goto LABEL_56;
            }
          }

          v258 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
          swift_willThrow();
          v300 = v258;
          swift_errorRetain(v258);
          v259 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v300, v259, &type metadata for _MergeError, 0))
          {
            goto LABEL_128;
          }

          v261 = v319;
          v319;
          (*(v310 + 8))(v302, v307._object);
          v261;
          v335._countAndFlagsBits;
          v300;
          v257 = v258;
          goto LABEL_131;
        }
      }

      else
      {
        v130 = &_swiftEmptyDictionarySingleton;
        v323 = &_swiftEmptyDictionarySingleton;
      }

      v111;
LABEL_56:
      v173 = v273;
      JSONReadingOptions.init()();
      v174 = v317;
      v317;
      v175 = v275;
      v176 = v330;
      DataFrame.init(contentsOfJSONFile:columns:types:options:)(v293, v174, v130, v173);
    }

    else
    {
      v106(v292, v105, v107);
      if (v320)
      {
        *&v311[0] = _swiftEmptyArrayStorage;
        v119 = v320;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320, 0);
        v120 = *&v311[0];
        v334 = *(v313 + 104);
        v121 = v306;
        v122 = v285;
        do
        {
          _._countAndFlagsBits = v119;
          v123 = *(v121 - 1);
          v336 = *v121;
          v124 = v336;
          v125 = v122 + *(v287 + 48);
          *v122 = v123;
          v122[1] = v124;
          (v334)(v125, v314, v312);
          *&v311[0] = v120;
          v126 = v120[2];
          v331 = v120[3];
          v127 = v331 >> 1;
          v335._countAndFlagsBits = v126 + 1;
          v336;
          if (v127 <= v126)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v331 >= 2, v335._countAndFlagsBits, 1);
            v120 = *&v311[0];
          }

          v120[2] = v335._countAndFlagsBits;
          v122 = v285;
          outlined init with take of DataFrame?(v285, v120 + ((*(v288 + 80) + 32) & ~*(v288 + 80)) + *(v288 + 72) * v126, &demangling cache variable for type metadata for (String, CSVType));
          v121 += 2;
          v119 = _._countAndFlagsBits - 1;
        }

        while (_._countAndFlagsBits != 1);
        v128 = v120;
      }

      else
      {
        v128 = _swiftEmptyArrayStorage;
      }

      v152 = v128[2];
      v153 = v291;
      if (v152)
      {
        v319 = v128;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _DictionaryStorage<String, CSVType>);
        v154 = static _DictionaryStorage.allocate(capacity:)(v152);
        v128 = v319;
        v155 = v154;
        v156 = v319[2];
        v323 = v155;
        v334 = v156;
        if (v156)
        {
          v331 = v153 + *(v287 + 48);
          v157 = v288;
          v158 = v319 + ((*(v288 + 80) + 32) & ~*(v288 + 80));
          swift_bridgeObjectRetain_n(v319, 2);
          v325 = *(v157 + 72);
          v159 = 0;
          while (1)
          {
            outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v158, v153, &demangling cache variable for type metadata for (String, CSVType));
            v136 = __OFADD__(1, v159++);
            if (v136)
            {
              BUG();
            }

            _._countAndFlagsBits = v158;
            v160 = v153;
            v161 = *v153;
            v162 = v160[1];
            *&v311[0] = v161;
            *(&v311[0] + 1) = v162;
            v336 = *(v313 + 32);
            (v336)(v301, v331, v312);
            v335._countAndFlagsBits = v162;
            v163 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v162);
            v165 = (v164 & 1) == 0;
            v136 = __OFADD__(v155[2], v165);
            v166 = v155[2] + v165;
            if (v136)
            {
              BUG();
            }

            v167 = v164;
            if (v155[3] < v166)
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v166, 1u);
              v144 = v335._countAndFlagsBits;
              v163 = specialized __RawDictionaryStorage.find<A>(_:)(v161, v335._countAndFlagsBits);
              LOBYTE(v146) = v146 & 1;
              v147 = v167;
              LOBYTE(v147) = v167 & 1;
              if ((v167 & 1) != v146)
              {
LABEL_129:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v144, v146, v147, v145);
                BUG();
              }
            }

            if (v167)
            {
              break;
            }

            v155 = v323;
            v323[(v163 >> 6) + 8] |= 1 << v163;
            v168 = v155[6];
            v169 = 16 * v163;
            *(v168 + v169) = v161;
            *(v168 + v169 + 8) = v335._countAndFlagsBits;
            (v336)(v155[7] + *(v313 + 72) * v163, v301, v312);
            v170 = v155[2];
            v136 = __OFADD__(1, v170);
            v171 = v170 + 1;
            v172 = _._countAndFlagsBits;
            if (v136)
            {
              BUG();
            }

            v155[2] = v171;
            v158 = v325 + v172;
            v153 = v291;
            if (v159 == v334)
            {
              swift_bridgeObjectRelease_n(v319, 3);
              goto LABEL_59;
            }
          }

          v254 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
          swift_willThrow();
          v300 = v254;
          swift_errorRetain(v254);
          v255 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v300, v255, &type metadata for _MergeError, 0))
          {
LABEL_128:
            v279 = 0;
            v280 = 0xE000000000000000;
            _StringGuts.grow(_:)(30);
            v260._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
            v260._countAndFlagsBits = 0xD00000000000001BLL;
            String.append(_:)(v260);
            _print_unlocked<A, B>(_:_:)(v311, &v279, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
            v260._countAndFlagsBits = 39;
            v260._object = 0xE100000000000000;
            String.append(_:)(v260);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v279, v280, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
            BUG();
          }

          v256 = v319;
          v319;
          (*(v313 + 8))(v301, v312);
          v256;
          v335._countAndFlagsBits;
          v300;
          v257 = v254;
LABEL_131:
          swift_unexpectedError(v257, "Swift/Dictionary.swift", 22, 1, 489);
          BUG();
        }
      }

      else
      {
        v155 = &_swiftEmptyDictionarySingleton;
        v323 = &_swiftEmptyDictionarySingleton;
      }

      v128;
LABEL_59:
      v335._countAndFlagsBits = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      _._countAndFlagsBits = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v177 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v178 = v271;
      (*(v313 + 104))(v271, v314, v312);
      v179 = v272;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v335._countAndFlagsBits, _._countAndFlagsBits, v177, v178, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
      v180 = v317;
      v317;
      v175 = v274;
      v176 = v330;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v292, v180, 0, 0, 1, v155, v179);
    }

    if (v176)
    {
      v327;
      v329;
      v240 = *(v333 + 8);
      v241 = v332;
      v240(v321, v332);
      v318;
      v240(v326, v241);
      v322;
      goto LABEL_112;
    }

    v181 = v308;
    v182 = v316;
    (*(v315 + 32))(v308, v175, v316);
    if (DataFrameProtocol.isEmpty.getter(v182, &protocol witness table for DataFrame))
    {
      v322;
      v318;
      v327;
      v329;
      v242 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v242, 0, 0);
      *v243 = 0xD000000000000034;
      *(v243 + 8) = "n the same feature columns." + 0x8000000000000000;
      *(v243 + 16) = 0;
      *(v243 + 32) = 0;
      *(v243 + 48) = 0;
      swift_willThrow();
      v244 = v181;
      goto LABEL_111;
    }

    v183 = DataFrame.columns.getter();
    MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v183);
    v330 = 0;
    v183;
    v185 = Set.init(minimumCapacity:)(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2], &type metadata for String, &protocol witness table for String);
    v334 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n[2];
    if (v334)
    {
      v325 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
      v331 = (MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n + 4);
      v186 = 0;
      do
      {
        _._countAndFlagsBits = v185;
        while (1)
        {
          v187 = *(v331 + 16 * v186);
          v188 = *(v331 + 16 * v186 + 8);
          v336 = v186 + 1;
          Hasher.init(_seed:)(*(v185 + 40));
          v188;
          v185;
          v335._countAndFlagsBits = v188;
          String.hash(into:)(v311, v187);
          v189 = Hasher._finalize()();
          v190 = ~(-1 << *(v185 + 32));
          v191 = v190 & v189;
          v192 = *(v185 + 8 * ((v190 & v189) >> 6) + 56);
          if (!_bittest64(&v192, v191))
          {
            break;
          }

          v193 = *(v185 + 48);
          while (1)
          {
            v194 = *(v193 + 16 * v191);
            v195 = *(v193 + 16 * v191 + 8);
            if (v194 == v187 && v195 == v335._countAndFlagsBits)
            {
              v197 = v335._countAndFlagsBits;
              goto LABEL_74;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v194, v195, v187, v335._countAndFlagsBits, 0))
            {
              break;
            }

            v191 = v190 & (v191 + 1);
            v196 = *(_._countAndFlagsBits + 8 * (v191 >> 6) + 56);
            if (!_bittest64(&v196, v191))
            {
              goto LABEL_76;
            }
          }

          v197 = v335._countAndFlagsBits;
LABEL_74:
          v197;
          v185 = _._countAndFlagsBits;
          _._countAndFlagsBits;
          v186 = v336;
          if (v336 == v334)
          {
            goto LABEL_77;
          }
        }

LABEL_76:
        v198 = _._countAndFlagsBits;
        _._countAndFlagsBits;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v198);
        *&v311[0] = v198;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v187, v335._countAndFlagsBits, v191, isUniquelyReferenced_nonNull_native);
        v185 = *&v311[0];
        v186 = v336;
      }

      while (v336 != v334);
LABEL_77:
      v200 = v325;
    }

    else
    {
      v200 = MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n;
    }

    v200;
    _._countAndFlagsBits = v185;
    v317;
    v201 = v320;
    v202 = Set.init(minimumCapacity:)(v320, &type metadata for String, &protocol witness table for String);
    if (v201)
    {
      v203 = 0;
      do
      {
        v336 = v202;
        while (1)
        {
          v204 = v309[2 * v203];
          v205 = v309[2 * v203 + 1];
          v334 = v203 + 1;
          Hasher.init(_seed:)(*(v202 + 40));
          v205;
          v202;
          v335._countAndFlagsBits = v205;
          String.hash(into:)(v311, v204);
          v206 = Hasher._finalize()();
          v207 = ~(-1 << *(v202 + 32));
          v208 = v207 & v206;
          v209 = *(v202 + 8 * ((v207 & v206) >> 6) + 56);
          if (!_bittest64(&v209, v208))
          {
            break;
          }

          v210 = *(v202 + 48);
          while (1)
          {
            v211 = *(v210 + 16 * v208);
            v212 = *(v210 + 16 * v208 + 8);
            if (v211 == v204 && v212 == v335._countAndFlagsBits)
            {
              v214 = v335._countAndFlagsBits;
              goto LABEL_91;
            }

            if (_stringCompareWithSmolCheck(_:_:expecting:)(v211, v212, v204, v335._countAndFlagsBits, 0))
            {
              break;
            }

            v208 = v207 & (v208 + 1);
            v213 = *&v336[8 * (v208 >> 6) + 56];
            if (!_bittest64(&v213, v208))
            {
              goto LABEL_93;
            }
          }

          v214 = v335._countAndFlagsBits;
LABEL_91:
          v214;
          v202 = v336;
          v336;
          v201 = v320;
          v203 = v334;
          if (v334 == v320)
          {
            goto LABEL_94;
          }
        }

LABEL_93:
        v215 = v336;
        v336;
        v216 = swift_isUniquelyReferenced_nonNull_native(v215);
        *&v311[0] = v215;
        specialized _NativeSet.insertNew(_:at:isUnique:)(v204, v335._countAndFlagsBits, v208, v216);
        v202 = *&v311[0];
        v201 = v320;
        v203 = v334;
      }

      while (v334 != v320);
    }

LABEL_94:
    v317;
    v217 = _._countAndFlagsBits;
    v218 = v202;
    v219 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(_._countAndFlagsBits, v202);
    v217;
    v218;
    if ((v219 & 1) == 0)
    {
      break;
    }

    if (v201)
    {
      v220 = v306;
      v221 = 0;
      do
      {
        v222 = *(v220 - 1);
        v335._countAndFlagsBits = v220;
        v223 = *v220;
        *v220;
        DataFrame.subscript.getter(v222, v223, &type metadata for Double);
        v223;
        *&v311[0] = 0;
        v224 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
        v225 = v284;
        v226 = v281;
        OptionalColumnProtocol.filled(with:)(v311, v284, v224);
        (*(v262 + 8))(v226, v225);
        v227 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<Double>>, &protocol conformance descriptor for FilledColumn<A>);
        v228 = dispatch thunk of Sequence._copyToContiguousArray()(v263, v227);
        *&v311[0] = v228;
        v229 = v324;
        v230 = swift_isUniquelyReferenced_nonNull_native(v324) == 0;
        v231 = v229;
        if (v230)
        {
          v231 = specialized _ArrayBuffer._consumeAndCreateNew()(v229);
        }

        if (v221 >= v231[2])
        {
          BUG();
        }

        _._countAndFlagsBits = v228;
        v232 = (v221 + 1);
        v233 = v231 + ((*(v283 + 80) + 32) & ~*(v283 + 80)) + *(v283 + 72) * v221;
        v324 = v231;
        Column.append(_:)(v311, v282);
        _._countAndFlagsBits;
        v220 = (v335._countAndFlagsBits + 16);
        v221 = v232;
      }

      while (v320 != v232);
      *v328 = v324;
    }

    *&v311[0] = v307._countAndFlagsBits;
    *(&v311[0] + 1) = v329;
    v234 = v266;
    Column.append(_:)(v311, v266);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v270, 1, v234);
    v236 = v308;
    if (EnumTagSinglePayload)
    {
      v327;
      (*(v315 + 8))(v236, v316);
      v237 = *(v333 + 8);
      v105 = v321;
      v237(v321, v332);
    }

    else
    {
      *&v311[0] = v265;
      *(&v311[0] + 1) = v327;
      Column.append(_:)(v311, v234);
      (*(v315 + 8))(v236, v316);
      v237 = *(v333 + 8);
      v105 = v321;
      v237(v321, v332);
      v327;
    }

    v104 = v305 + 1;
    v81 = v324;
    v106 = v295;
    if ((v305 + 1) == v269)
    {
      v318;
      v329;
      v238 = v332;
      v237(v326, v332);
      v87 = v238;
      v95 = v299;
      v96 = v296;
      v85 = v322;
      v94 = v278;
      if (v299 == v277)
      {
        return v85;
      }

      goto LABEL_12;
    }
  }

  v322;
  v318;
  v327;
  v329;
  v245 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v245, 0, 0);
  *v246 = 0xD00000000000003BLL;
  *(v246 + 8) = "Missing features column '" + 0x8000000000000000;
  *(v246 + 16) = 0;
  *(v246 + 32) = 0;
  *(v246 + 48) = 0;
  swift_willThrow();
  v244 = v308;
LABEL_111:
  (*(v315 + 8))(v244, v316);
  v247 = *(v333 + 8);
  v248 = v332;
  v247(v321, v332);
  v247(v326, v248);
LABEL_112:
  v77 = v328;
  return outlined destroy of MLActivityClassifier.DataSource.Columns(v77);
}

uint64_t MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14)
{
  v324 = a4;
  v311 = a3;
  v300 = v14;
  v314 = v15;
  v283 = v16;
  v319 = a6;
  v325 = a5;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v295 = &v278;
  v289 = type metadata accessor for DataFrame.Rows(0);
  v21 = *(v289 - 8);
  v22 = *(v21 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v290 = &v278;
  v302 = type metadata accessor for DataFrame.Slice(0);
  v303 = *(v302 - 8);
  v25 = *(v303 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v301 = &v278;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v297 = &v278;
  v315 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v296 = *(v315 - 8);
  v30 = *(v296 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v298 = &v278;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v309 = &v278;
  v35 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?) - 8) + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v291 = &v278;
  v38 = alloca(v35);
  v39 = alloca(v35);
  v292 = &v278;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v293 = &v278;
  v312 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
  v306 = *(v312 - 8);
  v43 = *(v306 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v313 = &v278;
  v294 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v46 = *(*(v294 - 8) + 64);
  v47 = alloca(v46);
  v48 = alloca(v46);
  v318 = &v278;
  v49 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v50 = alloca(v49);
  v51 = alloca(v49);
  v287 = &v278;
  v316 = type metadata accessor for CSVType(0);
  v317 = *(v316 - 8);
  v52 = *(v317 + 64);
  v53 = alloca(v52);
  v54 = alloca(v52);
  v307 = &v278;
  v55 = alloca(v52);
  v56 = alloca(v52);
  v321 = &v278;
  v57 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v58 = alloca(v57);
  v59 = alloca(v57);
  v285 = &v278;
  v331 = type metadata accessor for JSONType(0);
  v330 = *(v331 - 1);
  v60 = *(v330 + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v332 = &v278;
  v63 = alloca(v60);
  v64 = alloca(v60);
  v304 = &v278;
  v327 = type metadata accessor for DataFrame(0);
  v326 = *(v327 - 8);
  v65 = *(v326 + 64);
  v66 = alloca(v65);
  v67 = alloca(v65);
  v299 = &v278;
  v68 = alloca(v65);
  v69 = alloca(v65);
  v288 = &v278;
  v70 = alloca(v65);
  v71 = alloca(v65);
  v286 = &v278;
  v72 = alloca(v65);
  v73 = alloca(v65);
  v328 = &v278;
  v322 = type metadata accessor for URL(0);
  v323 = *(v322 - 8);
  v74 = *(v323 + 64);
  v75 = alloca(v74);
  v76 = alloca(v74);
  v284 = &v278;
  v77 = alloca(v74);
  v78 = alloca(v74);
  v305 = &v278;
  v79 = alloca(v74);
  v80 = alloca(v74);
  v329 = &v278;
  v81 = alloca(v74);
  v82 = alloca(v74);
  v84 = v311;
  v311 = a1;
  URL.appendingPathComponent(_:)(a2, v84);
  v320 = &v278;
  v85 = URL.pathExtension.getter();
  v87 = v86;
  v308 = v21;
  if (v85 ^ 0x6E6F736A | v86 ^ 0xE400000000000000)
  {
    v88 = _stringCompareWithSmolCheck(_:_:expecting:)(v85, v86, 1852797802, 0xE400000000000000, 0);
    v87;
    if ((v88 & 1) == 0)
    {
      v144 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>);
      v145 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
      v146 = *(v145 - 8);
      v147 = v145;
      v332 = v145;
      v330 = *(v146 + 72);
      v148 = *(v146 + 80);
      v149 = (v148 + 32) & ~*(v146 + 80);
      v150 = swift_allocObject(v144, v149 + 2 * v330, v148 | 7);
      *(v150 + 16) = 2;
      *(v150 + 24) = 4;
      v151 = v150 + v149;
      v152 = v150 + v149 + *(v147 + 48);
      *(v150 + v149) = v324;
      *(v150 + v149 + 8) = v325;
      LODWORD(v331) = enum case for CSVType.string(_:);
      v153 = *(v317 + 104);
      v154 = v316;
      (v153)(v152, enum case for CSVType.string(_:), v316);
      v155 = v330;
      v156 = v151 + v330 + *(v332 + 12);
      *(v330 + v151) = v319;
      *(v155 + v151 + 8) = a7;
      (v153)(v156, v331, v154);
      v157 = v154;
      v325;
      a7;
      v158 = Dictionary.init(dictionaryLiteral:)(v150, &type metadata for String, v154, &protocol witness table for String);
      v329 = v153;
      if (a9)
      {
        v159 = v321;
        v330 = v158;
        (v153)(v321, enum case for CSVType.double(_:), v157);
        v160 = v307;
        (*(v317 + 32))(v307, v159, v157);
        a9;
        v161 = v330;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v330);
        v310[0] = v161;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v160, a8, a9, isUniquelyReferenced_nonNull_native);
        a9;
        v158 = v310[0];
      }

      v330 = v158;
      if (a11)
      {
        v163 = v321;
        (v329)(v321, enum case for CSVType.double(_:), v157);
        v164 = v307;
        (*(v317 + 32))(v307, v163, v157);
        a11;
        v165 = v330;
        v166 = swift_isUniquelyReferenced_nonNull_native(v330);
        v310[0] = v165;
        v167 = a10;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v164, a10, a11, v166);
        a11;
        v330 = v310[0];
      }

      else
      {
        v167 = a10;
      }

      (*(v323 + 16))(v305, v320, v322);
      v168 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String?>);
      inited = swift_initStackObject(v168, &v279);
      inited[2] = 4;
      inited[3] = 8;
      inited[4] = v324;
      v170 = v325;
      inited[5] = v325;
      v171 = v319;
      inited[6] = v319;
      v172 = a7;
      inited[7] = a7;
      inited[8] = a8;
      inited[9] = a9;
      inited[10] = v167;
      v173 = v170;
      inited[11] = a11;
      a11;
      if (v173)
      {
        swift_bridgeObjectRetain_n(v173, 2);
        a7;
        a9;
        v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
        v175 = v174[2];
        v176 = v174[3];
        if (v176 >> 1 <= v175)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v176 >= 2, v175 + 1, 1, v174);
        }

        v174[2] = v175 + 1;
        v177 = 2 * v175;
        v174[v177 + 4] = v324;
        v174[v177 + 5] = v325;
        v171 = inited[6];
        v172 = inited[7];
      }

      else
      {
        a7;
        a9;
        v174 = _swiftEmptyArrayStorage;
      }

      if (v172)
      {
        v172;
        v178 = swift_isUniquelyReferenced_nonNull_native(v174);
        v332 = v171;
        if (!v178)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v179 = v174[2];
        v180 = v174[3];
        v181 = v179 + 1;
        if (v180 >> 1 <= v179)
        {
          v331 = (v179 + 1);
          v275 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v180 >= 2, v181, 1, v174);
          v181 = v331;
          v174 = v275;
        }

        v174[2] = v181;
        v182 = 2 * v179;
        v174[v182 + 4] = v332;
        v174[v182 + 5] = v172;
      }

      v183 = inited[9];
      if (v183)
      {
        v184 = inited[8];
        inited[9];
        v185 = swift_isUniquelyReferenced_nonNull_native(v174);
        v332 = v184;
        if (!v185)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v186 = v174[2];
        v187 = v174[3];
        v188 = v186 + 1;
        if (v187 >> 1 <= v186)
        {
          v331 = (v186 + 1);
          v276 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 >= 2, v188, 1, v174);
          v188 = v331;
          v174 = v276;
        }

        v174[2] = v188;
        v189 = 2 * v186;
        v174[v189 + 4] = v332;
        v174[v189 + 5] = v183;
      }

      v190 = inited[11];
      if (v190)
      {
        v191 = inited[10];
        inited[11];
        v192 = swift_isUniquelyReferenced_nonNull_native(v174);
        v332 = v191;
        if (!v192)
        {
          v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
        }

        v193 = v174[2];
        v194 = v174[3];
        v195 = v193 + 1;
        if (v194 >> 1 <= v193)
        {
          v331 = (v193 + 1);
          v277 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v194 >= 2, v195, 1, v174);
          v195 = v331;
          v174 = v277;
        }

        v174[2] = v195;
        v196 = 2 * v193;
        v174[v196 + 4] = v332;
        v174[v196 + 5] = v190;
      }

      swift_setDeallocating(inited);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      v332 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v331 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v197 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v198 = v321;
      (v329)(v321, enum case for CSVType.double(_:), v316);
      v199 = v287;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, v332, v331, v197, v198, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
      v142 = v288;
      v143 = v314;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v305, v174, 0, 0, 1, v330, v199);
      goto LABEL_62;
    }
  }

  else
  {
    v86;
  }

  v89 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>);
  v90 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v91 = *(v90 - 8);
  v92 = v90;
  v317 = v90;
  v321 = *(v91 + 72);
  v93 = *(v91 + 80);
  v94 = (v93 + 32) & ~*(v91 + 80);
  v95 = swift_allocObject(v89, v94 + 2 * v321, v93 | 7);
  *(v95 + 16) = 2;
  *(v95 + 24) = 4;
  v96 = v95 + v94;
  v97 = v95 + v94 + *(v92 + 48);
  *(v95 + v94) = v324;
  *(v95 + v94 + 8) = v325;
  LODWORD(v316) = enum case for JSONType.string(_:);
  v98 = *(v330 + 104);
  v99 = v331;
  (v98)(v97, enum case for JSONType.string(_:), v331);
  v100 = v321;
  v101 = v321 + *(v317 + 48) + v96;
  *(v321 + v96) = v319;
  *(v100 + v96 + 8) = a7;
  v102 = v99;
  v321 = v98;
  (v98)(v101, v316, v99);
  v325;
  a7;
  v103 = Dictionary.init(dictionaryLiteral:)(v95, &type metadata for String, v99, &protocol witness table for String);
  if (a9)
  {
    v104 = v304;
    (v321)(v304, enum case for JSONType.double(_:), v99);
    v105 = v332;
    (*(v330 + 32))(v332, v104, v102);
    a9;
    v106 = swift_isUniquelyReferenced_nonNull_native(v103);
    v310[0] = v103;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, a8, a9, v106);
    a9;
    v103 = v310[0];
  }

  v107 = v319;
  if (a11)
  {
    v108 = v304;
    v109 = v331;
    (v321)(v304, enum case for JSONType.double(_:), v331);
    v110 = v108;
    v107 = v319;
    (*(v330 + 32))(v332, v110, v109);
    a11;
    v111 = swift_isUniquelyReferenced_nonNull_native(v103);
    v310[0] = v103;
    v112 = a10;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v332, a10, a11, v111);
    a11;
    v330 = v310[0];
  }

  else
  {
    v330 = v103;
    v112 = a10;
  }

  (*(v323 + 16))(v329, v320, v322);
  v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String?>);
  v114 = swift_initStackObject(v113, &v282);
  v114[2] = 4;
  v114[3] = 8;
  v114[4] = v324;
  v115 = v325;
  v114[5] = v325;
  v114[6] = v107;
  v114[7] = a7;
  v114[8] = a8;
  v114[9] = a9;
  v114[10] = v112;
  v116 = v115;
  v114[11] = a11;
  a11;
  if (v116)
  {
    swift_bridgeObjectRetain_n(v116, 2);
    a7;
    a9;
    v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, _swiftEmptyArrayStorage);
    v118 = v117[2];
    v119 = v117[3];
    if (v119 >> 1 <= v118)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v119 >= 2, v118 + 1, 1, v117);
    }

    v117[2] = v118 + 1;
    v120 = 2 * v118;
    v117[v120 + 4] = v324;
    v117[v120 + 5] = v325;
    v107 = v114[6];
    v121 = v114[7];
  }

  else
  {
    v121 = a7;
    a7;
    a9;
    v117 = _swiftEmptyArrayStorage;
  }

  if (v121)
  {
    v121;
    v122 = swift_isUniquelyReferenced_nonNull_native(v117);
    v332 = v107;
    if (!v122)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
    }

    v123 = v117[2];
    v124 = v117[3];
    v125 = v123 + 1;
    if (v124 >> 1 <= v123)
    {
      v331 = (v123 + 1);
      v272 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124 >= 2, v125, 1, v117);
      v125 = v331;
      v117 = v272;
    }

    v117[2] = v125;
    v126 = 2 * v123;
    v117[v126 + 4] = v332;
    v117[v126 + 5] = v121;
  }

  v127 = v114[9];
  if (v127)
  {
    v128 = v114[8];
    v114[9];
    v129 = swift_isUniquelyReferenced_nonNull_native(v117);
    v332 = v128;
    if (!v129)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
    }

    v130 = v117[2];
    v131 = v117[3];
    v132 = v130 + 1;
    if (v131 >> 1 <= v130)
    {
      v331 = (v130 + 1);
      v273 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v131 >= 2, v132, 1, v117);
      v132 = v331;
      v117 = v273;
    }

    v117[2] = v132;
    v133 = 2 * v130;
    v117[v133 + 4] = v332;
    v117[v133 + 5] = v127;
  }

  v134 = v114[11];
  if (v134)
  {
    v135 = v114[10];
    v114[11];
    v136 = swift_isUniquelyReferenced_nonNull_native(v117);
    v332 = v135;
    if (!v136)
    {
      v117 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v117[2] + 1, 1, v117);
    }

    v137 = v117[2];
    v138 = v117[3];
    v139 = v137 + 1;
    if (v138 >> 1 <= v137)
    {
      v331 = (v137 + 1);
      v274 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v138 >= 2, v139, 1, v117);
      v139 = v331;
      v117 = v274;
    }

    v117[2] = v139;
    v140 = 2 * v137;
    v117[v140 + 4] = v332;
    v117[v140 + 5] = v134;
  }

  swift_setDeallocating(v114);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v141 = v285;
  JSONReadingOptions.init()();
  v142 = v286;
  v143 = v314;
  DataFrame.init(contentsOfJSONFile:columns:types:options:)(v329, v117, v330, v141);
LABEL_62:
  if (v143)
  {
    v200 = v320;
    v201 = v322;
    v202 = v323;
    return (*(v202 + 8))(v200, v201);
  }

  v330 = 0;
  v204 = v328;
  v205 = v142;
  v206 = v327;
  v207 = v326;
  (*(v326 + 32))(v328, v205, v327);
  if (!*(a12 + 16))
  {
    v223 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v223, 0, 0);
    *v224 = 0xD00000000000003DLL;
    *(v224 + 8) = " less than end times." + 0x8000000000000000;
    *(v224 + 16) = 0;
    *(v224 + 32) = 0;
    *(v224 + 48) = 0;
    swift_willThrow();
    (*(v323 + 8))(v320, v322);
    return (*(v207 + 8))(v204, v206);
  }

  v310[0] = _swiftEmptyArrayStorage;
  v208 = v294;
  v209 = v318;
  v314 = v318 + *(v294 + 20);
  v210 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
  v211 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &demangling cache variable for type metadata for [String], &protocol conformance descriptor for [A]);
  Column.init<A>(name:contents:)(0x6C6562616CLL, 0xE500000000000000, v310, &type metadata for String, v210, v211);
  v331 = (v209 + v208[6]);
  __swift_storeEnumTagSinglePayload(v331, 1, 1, v312);
  v332 = (v209 + v208[7]);
  v212 = v315;
  __swift_storeEnumTagSinglePayload(v332, 1, 1, v315);
  v213 = v212;
  v214 = 1;
  v329 = (v209 + v208[8]);
  __swift_storeEnumTagSinglePayload(v329, 1, 1, v213);
  v215 = v313;
  DataFrame.subscript.getter(v324, v325, &type metadata for String);
  v216 = v312;
  (*(v306 + 40))(v314, v215, v312);
  v217 = v293;
  DataFrame.subscript.getter(v319, a7, &type metadata for String);
  __swift_storeEnumTagSinglePayload(v217, 0, 1, v216);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v217, v331, &demangling cache variable for type metadata for Column<String>?);
  v218 = 1;
  v219 = v292;
  if (a9)
  {
    DataFrame.subscript.getter(a8, a9, &type metadata for Double);
    v218 = 0;
  }

  __swift_storeEnumTagSinglePayload(v219, v218, 1, v315);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v219, v332, &demangling cache variable for type metadata for Column<Double>?);
  v220 = v291;
  if (a11)
  {
    DataFrame.subscript.getter(a10, a11, &type metadata for Double);
    v214 = 0;
  }

  __swift_storeEnumTagSinglePayload(v220, v214, 1, v315);
  outlined assign with take of MLTrainingSession<MLImageClassifier>.Metadata(v220, v329, &demangling cache variable for type metadata for Column<Double>?);
  v221 = v318;
  v222 = v330;
  *v221 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_11TabularData6ColumnVySaySdGGs5NeverOTg5036_s8CreateML20MLActivityClassifierV10e143SourceO06gatherE15FromAnnotations12directoryURL18annotationFileName11labelColumn04fileP009startTimeP003endsP014featureColumns09timeStampP0AE0V0m35Foundation0K0V_S4SSgATSaySSGSStKF07D22E00P0VySaySdGGSSXEfU3_0I2ML0kL0V0eN0O7ColumnsVTf1cn_n(a12, v318);
  v330 = v222;
  if (a11 != 0 && a9 != 0)
  {
    v225 = v309;
    v226 = v328;
    DataFrame.subscript.getter(a8, a9, &type metadata for Double);
    v227 = v298;
    DataFrame.subscript.getter(a10, a11, &type metadata for Double);
    v228 = alloca(32);
    v229 = alloca(32);
    v280 = v225;
    v281 = v227;
    v230 = v297;
    v231 = v330;
    DataFrame.filter(_:)(partial apply for closure #6 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:));
    v330 = v231;
    v232 = v299;
    DataFrame.init(_:)(v230);
    (*(v326 + 40))(v226, v232, v327);
    v233 = *(v296 + 8);
    v234 = v315;
    v233(v227, v315);
    v233(v309, v234);
  }

  v235 = v308;
  v236 = v290;
  DataFrame.rows.getter();
  v237 = specialized Collection.isEmpty.getter();
  (*(v235 + 8))(v236, v289);
  if (v237)
  {
    v238 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v238, 0, 0);
    *v239 = 0xD000000000000035;
    *(v239 + 8) = "lder or add data." + 0x8000000000000000;
    *(v239 + 16) = 0;
    *(v239 + 32) = 0;
    *(v239 + 48) = 1;
    swift_willThrow();
    (*(v323 + 8))(v320, v322);
    outlined destroy of MLActivityClassifier.DataSource.Columns(v318);
    v200 = v328;
    v201 = v327;
    v202 = v326;
    return (*(v202 + 8))(v200, v201);
  }

  DataFrame.subscript.getter(v319, a7, &type metadata for String);
  v310[0] = 0;
  v310[1] = 0xE000000000000000;
  v240 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<String> and conformance Column<A>, &demangling cache variable for type metadata for Column<String>, &protocol conformance descriptor for Column<A>);
  v241 = v312;
  v242 = v313;
  OptionalColumnProtocol.filled(with:)(v310, v312, v240);
  (*(v306 + 8))(v242, v241);
  v243 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_11TabularData12FilledColumnVyAD0E0VySSGGTt0g5();
  v244 = 1 << *(v243 + 32);
  v245 = ~(-1 << v244);
  if (v244 >= 64)
  {
    v245 = -1;
  }

  v329 = v243;
  v246 = *(v243 + 56) & v245;
  v332 = ((v244 + 63) >> 6);
  v247 = 0;
  while (1)
  {
    if (v246)
    {
      goto LABEL_95;
    }

    v248 = v247 + 1;
    if (__OFADD__(1, v247))
    {
      BUG();
    }

    if (v248 >= v332)
    {
LABEL_102:
      v265 = v326;
      v266 = v327;
      v267 = v328;
      goto LABEL_103;
    }

    v246 = v329[v248 + 7];
    if (v246)
    {
      ++v247;
      goto LABEL_95;
    }

    v249 = v247 + 2;
    if (v247 + 2 >= v332)
    {
      goto LABEL_102;
    }

    v246 = v329[v248 + 8];
    if (!v246)
    {
      v249 = v247 + 3;
      if (v247 + 3 >= v332)
      {
        goto LABEL_102;
      }

      v246 = v329[v248 + 9];
      if (!v246)
      {
        v249 = v247 + 4;
        if (v247 + 4 >= v332)
        {
          goto LABEL_102;
        }

        v246 = v329[v248 + 10];
        if (!v246)
        {
          v249 = v247 + 5;
          if (v247 + 5 >= v332)
          {
            goto LABEL_102;
          }

          v246 = v329[v248 + 11];
          if (!v246)
          {
            v249 = v247 + 6;
            if (v247 + 6 >= v332)
            {
              goto LABEL_102;
            }

            v246 = v329[v248 + 12];
            if (!v246)
            {
              break;
            }
          }
        }
      }
    }

    v247 = v249;
LABEL_95:
    v325 = &v278;
    _BitScanForward64(&v250, v246);
    v251 = v329[6];
    v324 = v247;
    v252 = (v247 << 10) | (16 * v250);
    v254 = *(v251 + v252 + 8);
    v255 = alloca(32);
    v256 = alloca(32);
    v257 = v246;
    v280 = *(v251 + v252);
    v253 = v280;
    v281 = v254;
    v254;
    v258 = v330;
    DataFrame.filter<A>(on:_:_:)(v319, a7, &type metadata for String, partial apply for closure #7 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:), &v278, &type metadata for String);
    v330 = v258;
    v259 = v253;
    v260 = v284;
    URL.appendingPathComponent(_:)(v259, v254);
    v261 = v254;
    v262 = v301;
    v261;
    v263 = v330;
    MLActivityClassifier.DataSource.gatherData(from:annotations:featureColumns:timeStampColumn:result:)(v260, v262, a12, a13, a14, v318);
    v330 = v263;
    if (v263)
    {
      v268 = v262;
      v269 = *(v323 + 8);
      v270 = v260;
      v271 = v322;
      v269(v270, v322);
      (*(v303 + 8))(v268, v302);
      v329;
      v269(v320, v271);
      outlined destroy of MLActivityClassifier.DataSource.Columns(v318);
      return (*(v326 + 8))(v328, v327);
    }

    (*(v323 + 8))(v260, v322);
    (*(v303 + 8))(v262, v302);
    v247 = v324;
    v246 = (v257 - 1) & v257;
  }

  v264 = v247 + 7;
  v265 = v326;
  v266 = v327;
  v267 = v328;
  while (v264 < v332)
  {
    v246 = v329[v264++ + 7];
    if (v246)
    {
      v247 = v264 - 1;
      goto LABEL_95;
    }
  }

LABEL_103:
  v329;
  (*(v323 + 8))(v320, v322);
  outlined init with take of MLActivityClassifier.DataSource.Columns(v318, v300);
  return (*(v265 + 8))(v267, v266);
}

BOOL closure #6 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)()
{
  v0 = DataFrame.Row.index.getter();
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  Column.subscript.getter(v0, v1);
  if (v9)
  {
    return 0;
  }

  v2 = DataFrame.Row.index.getter();
  Column.subscript.getter(v2, v1);
  v4 = DataFrame.Row.index.getter();
  Column.subscript.getter(v4, v1);
  v5 = DataFrame.Row.index.getter();
  Column.subscript.getter(v5, v1);
  if (v7)
  {
    BUG();
  }

  return v6 > v8;
}

char closure #7 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  if (!v5)
  {
    return 0;
  }

  v6 = *a1;
  result = 1;
  if (__PAIR128__(a3 ^ v5, a2 ^ v6) != 0)
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)(v6, v5, a2, a3, 0);
  }

  return result;
}

uint64_t MLActivityClassifier.DataSource.gatherData(from:annotations:featureColumns:timeStampColumn:result:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v233 = v6;
  v247 = a6;
  v253 = a4;
  v225 = a2;
  v246 = a1;
  v211 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ColumnSlice<Double>);
  v212 = *(v211 - 8);
  v9 = *(v212 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v229 = &v210;
  v213 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<ColumnSlice<Double>>);
  v12 = *(*(v213 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v230 = &v210;
  v231 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v214 = *(v231 - 8);
  v15 = *(v214 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v215 = &v210;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v235 = &v210;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v217 = &v210;
  v243 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v23 = *(*(v243 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v226 = &v210;
  v234 = type metadata accessor for DataFrame.Rows(0);
  v240 = *(v234 - 8);
  v26 = *(v240 + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v228 = &v210;
  v227 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<DefaultIndices<DataFrame.Rows>>);
  v29 = *(*(v227 - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v248 = &v210;
  v224 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<Double>>);
  v32 = *(*(v224 - 8) + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v249 = &v210;
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<Double>);
  v265 = *(v35 - 1);
  v36 = *(v265 + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v238 = &v210;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v237 = &v210;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v232 = &v210;
  v43 = alloca(v36);
  v44 = alloca(v36);
  v267 = &v210;
  v219 = type metadata accessor for Order(0);
  v218 = *(v219 - 8);
  v45 = *(v218 + 64);
  v46 = alloca(v45);
  v47 = alloca(v45);
  v220 = &v210;
  v252 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v256 = *(v252 - 8);
  v48 = *(v256 + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v264._countAndFlagsBits = &v210;
  v251 = type metadata accessor for CSVType(0);
  v239 = *(v251 - 8);
  v51 = *(v239 + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  v222 = &v210;
  v54 = *(*(type metadata accessor for CSVReadingOptions(0) - 8) + 64);
  v55 = alloca(v54);
  v56 = alloca(v54);
  v221 = &v210;
  v263 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v255 = *(v263 - 8);
  v57 = *(v255 + 64);
  v58 = alloca(v57);
  v59 = alloca(v57);
  v262 = &v210;
  v60 = *(*(type metadata accessor for JSONReadingOptions(0) - 8) + 64);
  v61 = alloca(v60);
  v62 = alloca(v60);
  v216 = &v210;
  *&v266 = type metadata accessor for URL(0);
  v63 = *(v266 - 8);
  v64 = *(v63 + 64);
  v65 = alloca(v64);
  v66 = alloca(v64);
  v236 = &v210;
  v67 = alloca(v64);
  v68 = alloca(v64);
  v244 = &v210;
  v245 = type metadata accessor for DataFrame(0);
  v242 = *(v245 - 8);
  v69 = *(v242 + 64);
  v70 = alloca(v69);
  v71 = alloca(v69);
  v223 = &v210;
  v72 = alloca(v69);
  v73 = alloca(v69);
  v254 = &v210;
  v74 = alloca(v69);
  v75 = alloca(v69);
  v257 = &v210;
  v250 = a5;
  swift_bridgeObjectRetain_n(a5, 2);
  a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(a3);
  v77 = a3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a3 + 16) + 1, 1, a3);
  }

  v241 = a3;
  v78 = v77[2];
  v261 = v77;
  v79 = v77[3];
  v264._object = v35;
  if (v79 >> 1 <= v78)
  {
    v261 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v79 >= 2, v78 + 1, 1, v261);
  }

  v80 = v261;
  v261[2] = v78 + 1;
  v81 = 2 * v78;
  v80[v81 + 4] = v253;
  v82 = v250;
  v80[v81 + 5] = v250;
  v82;
  v83 = URL.pathExtension.getter();
  v85 = v84;
  if (v83 ^ 0x6E6F736A | v84 ^ 0xE400000000000000)
  {
    v87 = _stringCompareWithSmolCheck(_:_:expecting:)(v83, v84, 1852797802, 0xE400000000000000, 0);
    v85;
    v86 = v254;
    if ((v87 & 1) == 0)
    {
      (*(v63 + 16))(v236, v246, v266);
      v106 = v250;
      swift_bridgeObjectRetain_n(v250, 2);
      v107 = v241;
      v241;
      if (!swift_isUniquelyReferenced_nonNull_native(v107))
      {
        v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
      }

      v108 = v107[2];
      v109 = v253;
      if (v107[3] >> 1 <= v108)
      {
        v208 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v107[3] >= 2uLL, v108 + 1, 1, v107);
        v109 = v253;
        v107 = v208;
      }

      v107[2] = v108 + 1;
      v110 = 2 * v108;
      v107[v110 + 4] = v109;
      v241 = v107;
      v107[v110 + 5] = v106;
      v106;
      v111 = v261;
      v112 = v261[2];
      if (*&v112 == 0.0)
      {
        v261;
        v121 = enum case for CSVType.double(_:);
        v122 = _swiftEmptyArrayStorage;
      }

      else
      {
        *&v258[0] = _swiftEmptyArrayStorage;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v112, 0);
        v113 = *&v258[0];
        LODWORD(v262) = enum case for CSVType.double(_:);
        v263 = *(v239 + 104);
        v114 = (v111 + 5);
        countAndFlagsBits = v264._countAndFlagsBits;
        do
        {
          v268 = *&v112;
          v116 = *(v114 - 1);
          v260 = *v114;
          v117 = v260;
          v118 = countAndFlagsBits + *(v252 + 48);
          *countAndFlagsBits = v116;
          countAndFlagsBits[1] = v117;
          (v263)(v118, v262, v251);
          *&v258[0] = v113;
          v119 = v113[2];
          v255 = v113[3];
          v120 = v255 >> 1;
          *&v266 = v119 + 1;
          *&v260;
          if (v120 <= v119)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v255 >= 2, v266, 1);
            v113 = *&v258[0];
          }

          v113[2] = v266;
          countAndFlagsBits = v264._countAndFlagsBits;
          outlined init with take of DataFrame?(v264._countAndFlagsBits, v113 + ((*(v256 + 80) + 32) & ~*(v256 + 80)) + *(v256 + 72) * v119, &demangling cache variable for type metadata for (String, CSVType));
          v114 += 2;
          v112 = *&v268 - 1;
        }

        while (*&v268 != 1);
        v261;
        v121 = v262;
        v122 = v113;
      }

      *&v266 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_11TabularData7CSVTypeOSaySS_AGtGTt0g5(v122);
      v268 = COERCE_DOUBLE(_sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 1 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)));
      v123 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 2 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v124 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0gq5(&outlined read-only object #0 of default argument 3 of CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:));
      v125 = v222;
      (*(v239 + 104))(v222, v121, v251);
      v126 = v221;
      CSVReadingOptions.init(hasHeaderRow:nilEncodings:trueEncodings:falseEncodings:floatingPointType:ignoresEmptyLines:usesQuoting:usesEscaping:delimiter:escapeCharacter:)(1, *&v268, v123, v124, v125, 1, 1, 0, 44, 0xE100000000000000, 92, 0xE100000000000000);
      v86 = v223;
      v127 = v233;
      DataFrame.init(contentsOfCSVFile:columns:rows:types:options:)(v236, v241, 0, 0, 1, v266, v126);
      result = v209;
      if (v127)
      {
        return result;
      }

      v254 = 0;
      v105 = v257;
      goto LABEL_30;
    }
  }

  else
  {
    v84;
    v86 = v254;
  }

  (*(v63 + 16))(v244, v246, v266);
  v88 = v261;
  v89 = v261[2];
  if (*&v89 == 0.0)
  {
    v100 = _swiftEmptyArrayStorage;
  }

  else
  {
    *&v258[0] = _swiftEmptyArrayStorage;
    v261;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89, 0);
    v90 = v88;
    v91 = *&v258[0];
    LODWORD(v251) = enum case for JSONType.double(_:);
    v264._countAndFlagsBits = type metadata accessor for JSONType(0);
    v252 = *(*(v264._countAndFlagsBits - 8) + 104);
    v92 = (v90 + 5);
    v93 = v262;
    do
    {
      v268 = *&v89;
      v94 = *(v92 - 1);
      v260 = *v92;
      v95 = v260;
      v96 = v93 + *(v263 + 48);
      *v93 = v94;
      v93[1] = v95;
      (v252)(v96, v251, v264._countAndFlagsBits);
      *&v258[0] = v91;
      v97 = v91[2];
      v256 = v91[3];
      v98 = v256 >> 1;
      *&v266 = v97 + 1;
      *&v260;
      if (v98 <= v97)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v256 >= 2, v266, 1);
        v91 = *&v258[0];
      }

      v91[2] = v266;
      v93 = v262;
      outlined init with take of DataFrame?(v262, v91 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v97, &demangling cache variable for type metadata for (String, JSONType));
      v92 += 2;
      v89 = *&v268 - 1;
    }

    while (*&v268 != 1);
    v99 = v261;
    v261;
    v86 = v254;
    v100 = v91;
    v88 = v99;
  }

  v101 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_11TabularData8JSONTypeOSaySS_AGtGTt0g5(v100);
  v102 = v216;
  JSONReadingOptions.init()();
  v103 = v233;
  result = DataFrame.init(contentsOfJSONFile:columns:types:options:)(v244, v88, v101, v102);
  v105 = v257;
  if (v103)
  {
    return result;
  }

  v254 = 0;
LABEL_30:
  (*(v242 + 32))(v105, v86, v245);
  v128 = v220;
  v129 = v219;
  v130 = v218;
  (*(v218 + 104))(v220, enum case for Order.ascending(_:), v219);
  DataFrame.sort<A>(on:_:order:)(v253, v250, &type metadata for Double, v128, &type metadata for Double, &protocol witness table for Double);
  (*(v130 + 8))(v128, v129);
  v131 = v257;
  if (DataFrameProtocol.isEmpty.getter(v245, &protocol witness table for DataFrame))
  {
    v132 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v132, 0, 0);
    *v133 = 0xD000000000000021;
    *(v133 + 8) = "tent with the sensor data in '" + 0x8000000000000000;
    *(v133 + 16) = 0;
    *(v133 + 32) = 0;
    *(v133 + 48) = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v256 = v248;
  v134 = v267;
  DataFrame.subscript.getter(v253, v250, &type metadata for Double);
  v135 = v134;
  object = v264._object;
  (*(v265 + 16))(v232, v135, v264._object);
  v137 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  v138 = v249;
  dispatch thunk of Sequence.makeIterator()(object, v137);
  *&v266 = v138 + *(v224 + 36);
  v263 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
  v139 = v266;
  v140 = v264._object;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter(v264._object, v263);
    if (*v266 == *&v258[0])
    {
      break;
    }

    v141 = v263;
    v142 = dispatch thunk of Collection.subscript.read(v258, v139, v140, v263);
    LOBYTE(v268) = *(v143 + 8);
    v142(v258, 0);
    dispatch thunk of Collection.formIndex(after:)(v139, v140, v141);
    v138 = v249;
    if (LOBYTE(v268) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v249, &demangling cache variable for type metadata for IndexingIterator<Column<Double>>);
      *&v258[0] = 0;
      *(&v258[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      *(&v258[0] + 1);
      *&v258[0] = 0xD000000000000021;
      *(&v258[0] + 1) = " at least one feature column." + 0x8000000000000000;
      v144._countAndFlagsBits = URL.absoluteString.getter();
      v145 = v144._object;
      String.append(_:)(v144);
      v145;
      v146._object = 0xE200000000000000;
      v146._countAndFlagsBits = 11815;
      String.append(_:)(v146);
      v266 = v258[0];
      v146._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v146._object, 0, 0);
      *v147 = v266;
      *(v147 + 16) = 0;
      *(v147 + 32) = 0;
      *(v147 + 48) = 0;
      swift_willThrow();
      goto LABEL_36;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v138, &demangling cache variable for type metadata for IndexingIterator<Column<Double>>);
  v149 = v228;
  DataFrame.Slice.rows.getter();
  v150 = v226;
  v151 = v234;
  (*(v240 + 16))(v226, v149, v234);
  *&v266 = *(v243 + 36);
  v249 = lazy protocol witness table accessor for type DataFrame.Rows and conformance DataFrame.Rows();
  dispatch thunk of Collection.startIndex.getter(v151, v249);
  v152 = *(v243 + 40);
  dispatch thunk of Collection.endIndex.getter(v151, v249);
  (*(v240 + 8))(v149, v151);
  v153 = v256;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150, v256, &demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v154 = *(v150 + v266);
  *&v268 = *(v227 + 36);
  *(v153 + *&v268) = v154;
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v150, &demangling cache variable for type metadata for DefaultIndices<DataFrame.Rows>);
  v261 = *(v153 + *(v243 + 40));
  if (v154 == v261)
  {
    v155 = v265;
    v156 = v264._object;
    v157 = v267;
LABEL_83:
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v256, &demangling cache variable for type metadata for IndexingIterator<DefaultIndices<DataFrame.Rows>>);
    (*(v155 + 8))(v157, v156);
    v148 = v257;
    return (*(v242 + 8))(v148, v245);
  }

  v158 = v154;
  *&v266 = *v247;
  v159 = swift_isUniquelyReferenced_nonNull_native(v266);
  v156 = v264._object;
  if (!v159)
  {
    *&v266 = specialized _ArrayBuffer._consumeAndCreateNew()(v266);
  }

  v160 = (v248 + *&v268);
  v161 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  v253 = v247 + *(v161 + 20);
  v244 = v161;
  v250 = v247 + *(v161 + 28);
  v248 = v160;
  while (1)
  {
    v162 = v160;
    v163 = v158;
    dispatch thunk of Collection.formIndex(after:)(v162, v234, v249);
    v164 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<String>);
    Column.subscript.getter(v158, v164);
    v165 = *(&v258[0] + 1);
    v166 = v258[0];
    v252 = v166 >> 64;
    v264._countAndFlagsBits = v166;
    if (!*(&v258[0] + 1))
    {
      v165 = 0xE000000000000000;
    }

    v262 = v165;
    v167 = v217;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v250, v217, &demangling cache variable for type metadata for Column<Double>?);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v167, 1, v156);
    v251 = v163;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v167, &demangling cache variable for type metadata for Column<Double>?);
LABEL_51:
      v255 = Column.startIndex.getter(v156);
      v170 = v235;
      goto LABEL_60;
    }

    v169 = v237;
    (*(v265 + 32))(v237, v167, v156);
    Column.subscript.getter(v163, v156);
    if (BYTE8(v258[0]))
    {
      (*(v265 + 8))(v169, v156);
      goto LABEL_51;
    }

    v260 = *v258;
    v171 = v263;
    dispatch thunk of Collection.startIndex.getter(v156, v263);
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter(v156, v171);
      v255 = v259;
      if (v259 == *&v258[0])
      {
        v255 = Column.endIndex.getter(v156);
        goto LABEL_59;
      }

      v172 = dispatch thunk of Collection.subscript.read(v258, &v259, v156, v171);
      v268 = *v173;
      v174 = *(v173 + 8);
      v172(v258, 0);
      if (v174)
      {
        BUG();
      }

      if (v268 >= v260)
      {
        break;
      }

      v156 = v264._object;
      v171 = v263;
      dispatch thunk of Collection.formIndex(after:)(&v259, v264._object, v263);
    }

    v156 = v264._object;
LABEL_59:
    (*(v265 + 8))(v237, v156);
    v170 = v235;
LABEL_60:
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v247 + *(v244 + 8), v170, &demangling cache variable for type metadata for Column<Double>?);
    if (__swift_getEnumTagSinglePayload(v170, 1, v156) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v170, &demangling cache variable for type metadata for Column<Double>?);
      goto LABEL_64;
    }

    v175 = v238;
    (*(v265 + 32))(v238, v170, v156);
    Column.subscript.getter(v251, v156);
    if (BYTE8(v258[0]))
    {
      (*(v265 + 8))(v175, v156);
LABEL_64:
      v176 = Column.endIndex.getter(v156);
      v177 = v176 - 1;
      if (__OFSUB__(v176, 1))
      {
        BUG();
      }

      goto LABEL_73;
    }

    v260 = *v258;
    v178 = v263;
    dispatch thunk of Collection.endIndex.getter(v156, v263);
    while (1)
    {
      dispatch thunk of Collection.startIndex.getter(v156, v178);
      if (v259 == *&v258[0])
      {
        break;
      }

      v179 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<Double> and conformance Column<A>, &demangling cache variable for type metadata for Column<Double>, &protocol conformance descriptor for Column<A>);
      dispatch thunk of BidirectionalCollection.formIndex(before:)(&v259, v156, v179);
      v180 = dispatch thunk of Collection.subscript.read(v258, &v259, v156, v178);
      v268 = *v181;
      v182 = *(v181 + 8);
      v180(v258, 0);
      if (v182)
      {
        BUG();
      }

      v156 = v264._object;
      if (v260 >= v268)
      {
        v177 = v259;
        goto LABEL_72;
      }
    }

    v177 = Column.startIndex.getter(v156);
LABEL_72:
    (*(v265 + 8))(v238, v156);
LABEL_73:
    if (v177 < v255)
    {
      break;
    }

    v262;
    v183 = v266;
    v264._countAndFlagsBits = *(v266 + 16);
    if (v264._countAndFlagsBits)
    {
      v252 = v177;
      v184 = 0.0;
      v185 = v231;
      do
      {
        if (*&v184 >= *(v183 + 16))
        {
          BUG();
        }

        v186 = v214;
        v187 = v215;
        v188 = v183 + ((*(v214 + 80) + 32) & ~*(v214 + 80)) + *&v184 * *(v214 + 72);
        v268 = v184;
        (*(v214 + 16))(v215, v188, v185);
        v260 = COERCE_DOUBLE(Column.name.getter(v185));
        v262 = v189;
        (*(v186 + 8))(v187, v185);
        v190 = v232;
        v191 = v262;
        DataFrame.subscript.getter(*&v260, v262, &type metadata for Double);
        v191;
        *&v258[0] = v252;
        v192 = v264._object;
        dispatch thunk of Collection.index(after:)(v258, v264._object, v263);
        Column.subscript.getter(v255, v259, v192);
        v193 = v190;
        v194 = v266;
        (*(v265 + 8))(v193, v192);
        *&v258[0] = 0;
        v195 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ColumnSlice<Double> and conformance ColumnSlice<A>, &demangling cache variable for type metadata for ColumnSlice<Double>, &protocol conformance descriptor for ColumnSlice<A>);
        v196 = v211;
        v197 = v229;
        OptionalColumnProtocol.filled(with:)(v258, v211, v195);
        (*(v212 + 8))(v197, v196);
        v198 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<ColumnSlice<Double>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<ColumnSlice<Double>>, &protocol conformance descriptor for FilledColumn<A>);
        *&v258[0] = dispatch thunk of Sequence._copyToContiguousArray()(v213, v198);
        if (*&v268 >= *(v194 + 16))
        {
          BUG();
        }

        v199 = *&v268 + 1;
        v185 = v231;
        Column.subscript.setter(v258, v251, v231);
        v184 = *&v199;
        v200 = v264._countAndFlagsBits == v199;
        v157 = v267;
        v183 = v266;
        v160 = v248;
      }

      while (!v200);
    }

    else
    {
      v160 = v248;
      v157 = v267;
    }

    v158 = *v160;
    v156 = v264._object;
    if (*v160 == v261)
    {
      *v247 = v266;
      v155 = v265;
      goto LABEL_83;
    }
  }

  v201 = v264._countAndFlagsBits;
  if (!v252)
  {
    v201 = 0;
  }

  v264._countAndFlagsBits = v201;
  *v247 = v266;
  *&v258[0] = 0;
  *(&v258[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(89);
  v202._object = "e is missing in '" + 0x8000000000000000;
  v202._countAndFlagsBits = 0xD000000000000025;
  String.append(_:)(v202);
  v202._countAndFlagsBits = v264._countAndFlagsBits;
  v203 = v262;
  v202._object = v262;
  String.append(_:)(v202);
  v203;
  v202._object = "d time for activity '" + 0x8000000000000000;
  v202._countAndFlagsBits = 0xD00000000000002ELL;
  String.append(_:)(v202);
  v204 = URL.absoluteString.getter();
  v206 = v205;
  v202._countAndFlagsBits = v204;
  v202._object = v205;
  String.append(_:)(v202);
  v206;
  v202._object = 0xE200000000000000;
  v202._countAndFlagsBits = 11815;
  String.append(_:)(v202);
  v266 = v258[0];
  v202._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v202._object, 0, 0);
  *v207 = v266;
  *(v207 + 16) = 0;
  *(v207 + 32) = 0;
  *(v207 + 48) = 0;
  swift_willThrow();
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v256, &demangling cache variable for type metadata for IndexingIterator<DefaultIndices<DataFrame.Rows>>);
LABEL_36:
  (*(v265 + 8))(v267, v264._object);
  v131 = v257;
LABEL_37:
  v148 = v131;
  return (*(v242 + 8))(v148, v245);
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, int a2, uint64_t *a3)
{
  v61 = a3;
  v62 = a2;
  v4 = type metadata accessor for CSVType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v59 = v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, CSVType));
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!*(a1 + 16))
  {
    return a1;
  }

  v53 = *(a1 + 16);
  v55 = v3;
  v14 = *(v9 + 48);
  v51 = v44;
  v52 = &v44[v14];
  v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v54 = *(v10 + 72);
  v57 = a1;
  a1;
  v56 = v4;
  v60 = v5;
  while (1)
  {
    v50 = v15;
    v16 = v15;
    v17 = v51;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v16, v51, &demangling cache variable for type metadata for (String, CSVType));
    v18 = *v17;
    v19 = v17[1];
    v47[0] = v18;
    v47[1] = v19;
    v49 = *(v5 + 32);
    v49(v59, v52, v4);
    v20 = *v61;
    v58 = v19;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(*(v20 + 16), v23);
    v25 = *(v20 + 16) + v23;
    if (v24)
    {
      BUG();
    }

    v26 = v21;
    if (*(v20 + 24) < v25)
    {
      v27 = v61;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v62);
      v28 = *v27;
      v29 = v58;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v58);
      LOBYTE(v32) = v32 & 1;
      if ((v26 & 1) != v32)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v29, v32, v30, v31);
        BUG();
      }

      goto LABEL_6;
    }

    v5 = v60;
    if ((v62 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, CSVType>);
      _NativeDictionary.copy()();
LABEL_6:
      v5 = v60;
    }

    if (v26)
    {
      break;
    }

    v33 = *v61;
    v33[(v22 >> 6) + 8] |= 1 << v22;
    v34 = v33[6];
    v35 = 16 * v22;
    *(v34 + v35) = v18;
    *(v34 + v35 + 8) = v58;
    v36 = v33[7] + *(v5 + 72) * v22;
    v4 = v56;
    v49(v36, v59, v56);
    v37 = v33[2];
    v24 = __OFADD__(1, v37);
    v38 = v37 + 1;
    if (v24)
    {
      BUG();
    }

    v33[2] = v38;
    v15 = v54 + v50;
    LOBYTE(v38) = 1;
    v62 = v38;
    if (!--v53)
    {
      return swift_bridgeObjectRelease_n(v57, 2);
    }
  }

  v39 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v48 = v39;
  swift_errorRetain(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v48, v40, &type metadata for _MergeError, 0))
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v43._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    _print_unlocked<A, B>(_:_:)(v47, &v45, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v45, v46, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v41 = v57;
  v57;
  (*(v5 + 8))(v59, v56);
  v41;
  v58;
  return v48;
}

{
  v61 = a3;
  v62 = a2;
  v4 = type metadata accessor for JSONType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v59 = v44;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, JSONType));
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  if (!*(a1 + 16))
  {
    return a1;
  }

  v53 = *(a1 + 16);
  v55 = v3;
  v14 = *(v9 + 48);
  v51 = v44;
  v52 = &v44[v14];
  v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v54 = *(v10 + 72);
  v57 = a1;
  a1;
  v56 = v4;
  v60 = v5;
  while (1)
  {
    v50 = v15;
    v16 = v15;
    v17 = v51;
    outlined init with copy of (String, JSONType)(v16, v51);
    v18 = *v17;
    v19 = v17[1];
    v47[0] = v18;
    v47[1] = v19;
    v49 = *(v5 + 32);
    v49(v59, v52, v4);
    v20 = *v61;
    v58 = v19;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(*(v20 + 16), v23);
    v25 = *(v20 + 16) + v23;
    if (v24)
    {
      BUG();
    }

    v26 = v21;
    if (*(v20 + 24) < v25)
    {
      v27 = v61;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, v62);
      v28 = *v27;
      v29 = v58;
      v22 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v58);
      LOBYTE(v32) = v32 & 1;
      if ((v26 & 1) != v32)
      {
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v29, v32, v30, v31);
        BUG();
      }

      goto LABEL_6;
    }

    v5 = v60;
    if ((v62 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, JSONType>);
      _NativeDictionary.copy()();
LABEL_6:
      v5 = v60;
    }

    if (v26)
    {
      break;
    }

    v33 = *v61;
    v33[(v22 >> 6) + 8] |= 1 << v22;
    v34 = v33[6];
    v35 = 16 * v22;
    *(v34 + v35) = v18;
    *(v34 + v35 + 8) = v58;
    v36 = v33[7] + *(v5 + 72) * v22;
    v4 = v56;
    v49(v36, v59, v56);
    v37 = v33[2];
    v24 = __OFADD__(1, v37);
    v38 = v37 + 1;
    if (v24)
    {
      BUG();
    }

    v33[2] = v38;
    v15 = v54 + v50;
    LOBYTE(v38) = 1;
    v62 = v38;
    if (!--v53)
    {
      return swift_bridgeObjectRelease_n(v57, 2);
    }
  }

  v39 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
  swift_willThrow();
  v48 = v39;
  swift_errorRetain(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v48, v40, &type metadata for _MergeError, 0))
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    v43._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v43);
    _print_unlocked<A, B>(_:_:)(v47, &v45, &type metadata for String, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v43._countAndFlagsBits = 39;
    v43._object = 0xE100000000000000;
    String.append(_:)(v43);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v45, v46, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
    BUG();
  }

  v41 = v57;
  v57;
  (*(v5 + 8))(v59, v56);
  v41;
  v58;
  return v48;
}

uint64_t outlined init with copy of MLActivityClassifier.DataSource(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.DataSource(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLActivityClassifier.DataSource.Columns(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t outlined destroy of MLActivityClassifier.DataSource.Columns(uint64_t a1)
{
  v1 = type metadata accessor for MLActivityClassifier.DataSource.Columns(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

BOOL partial apply for closure #6 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #6 in MLActivityClassifier.DataSource.gatherDataFromAnnotations(directoryURL:annotationFileName:labelColumn:fileColumn:startTimeColumn:endTimeColumn:featureColumns:timeStampColumn:)();
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo8NSNumberCG_Sis5NeverOTg50113_s8CreateML15_VideoUtilitiesV21keypointsToMultiArrayySo07MLMultiH0CSaySo29VNRecognizedPointsObservationCGKFZSiSo8D54Ccfu_33_5bdac5b40c7411f20a64c1277f8fd44fAKSiTf3nnnpk_nTf1cn_nTm(uint64_t a1)
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

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation3URLVG_SSs5NeverOTg5148_s8CreateML15_VideoUtilitiesV08generateC5TableyAA06MLDataF0VSDySSSay10Foundation3URLVGGKFZSSAIcfu0_33_43697e1f61f7e10b647d882195ad8775AISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = 0;
    v4 = *(type metadata accessor for URL(0) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v13 = *(v4 + 72);
    do
    {
      v12 = v1;
      v6 = URL.path.getter(v3);
      v8 = _swiftEmptyArrayStorage[2];
      v9 = v8 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v8)
      {
        v3 = _swiftEmptyArrayStorage[3] >= 2uLL;
        v14 = v6;
        v15 = v7;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v3, v9, 1);
        v7 = v15;
        v6 = v14;
      }

      _swiftEmptyArrayStorage[2] = v9;
      v10 = 2 * v8;
      _swiftEmptyArrayStorage[v10 + 4] = v6;
      _swiftEmptyArrayStorage[v10 + 5] = v7;
      v5 += v13;
      v1 = v12 - 1;
    }

    while (v12 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t specialized MLDataColumn.dropMissing()(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v17[0] = a1;
    swift_errorRetain(a1);
    outlined copy of Result<_DataTable, Error>(a1, 1);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v17, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(a1, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = a1;
    }

    result = outlined consume of Result<_DataTable, Error>(a1, 1);
    v11 = 1;
  }

  else
  {
    v7 = *(*(a1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(a1, 0);
    v8 = specialized handling<A, B>(_:_:)(v7);
    v12 = v8;
    if (!v8)
    {
      BUG();
    }

    v11 = 0;
    v13 = type metadata accessor for CMLColumn();
    v14 = swift_allocObject(v13, 24, 7);
    *(v14 + 16) = v12;
    v15 = v14;
    v16 = type metadata accessor for _UntypedColumn();
    v6 = swift_allocObject(v16, 24, 7);
    *(v6 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(a1, 0);
  }

  *v3 = v6;
  *(v3 + 8) = v11;
  return result;
}

uint64_t specialized MLDataTable.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  MLDataTable.willMutate()();
  v8 = a1;
  v9 = a2 & 1;
  MLDataTable.setColumnImpl(newColumn:named:)(&v8, v10, a4);
  a4;
  result = outlined consume of Result<_DataTable, Error>(v8, v9);
  if (!*(v4 + 8))
  {
    v7 = *v4;
    outlined copy of Result<_DataTable, Error>(v7, 0);
    _DataTable.columnNamesDidChange()();
    return outlined consume of Result<_DataTable, Error>(v7, 0);
  }

  return result;
}

void (__cdecl **static _VideoUtilities.getHandKeyPointsFromImageUrl(url:)(uint64_t a1))(id)
{
  v33 = v1;
  v29 = a1;
  v2 = type metadata accessor for URL(0);
  v36 = *(v2 - 8);
  v27 = *(v36 + 8);
  v3 = alloca(v27);
  v4 = alloca(v27);
  v30 = *(v36 + 2);
  v5 = v2;
  v32 = v2;
  v30(&v27, a1);
  v6 = type metadata accessor for VNImageOption(0);
  v7 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type VNImageOption and conformance VNImageOption, type metadata accessor for VNImageOption, &protocol conformance descriptor for VNImageOption);
  v8 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v6, &type metadata for Any + 8, v7);
  objc_allocWithZone(VNImageRequestHandler);
  v31 = &v27;
  v28 = @nonobjc VNImageRequestHandler.init(url:options:)(&v27, v8);
  v34 = swift_allocObject(&unk_392310, 24, 7);
  *(v34 + 16) = _swiftEmptyArrayStorage;
  v37 = swift_allocObject(&unk_392338, 24, 7);
  *(v37 + 16) = 0;
  v35 = swift_allocObject(&unk_392360, 24, 7);
  *(v35 + 16) = 0;
  (v30)(&v27, v29, v5);
  v9 = *(v36 + 80);
  v10 = ~*(v36 + 80) & (v9 + 24);
  v11 = (v27 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject(&unk_392428, v12 + 8, v9 | 7);
  *(v13 + 16) = v37;
  (*(v36 + 4))(v13 + v10, v31, v32);
  *(v13 + v11) = v35;
  *(v13 + v12) = v34;
  objc_allocWithZone(VNDetectHumanHandPoseRequest);

  v14 = @nonobjc VNDetectHumanBodyPoseRequest.init(completionHandler:)(partial apply for closure #1 in static _VideoUtilities.getHandKeyPointsFromImageUrl(url:), v13, &block_descriptor_7);
  v15 = v28;
  v16 = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v18 = swift_allocObject(v17, 40, 7);
  v18[2] = 1;
  v18[3] = 3;
  v18[4] = v16;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for VNRequest, VNRequest_ptr);
  v36 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18;
  v39[0] = 0;
  LOBYTE(v13) = [v15 performRequests:isa error:v39];

  v20 = v39[0];
  if (v13)
  {
    v21 = v34;
    v22 = (v37 + 16);
    v23 = v37 + 16;
    swift_beginAccess(v37 + 16, v39, 0, 0);
    v24 = *v22;
    if (!v24)
    {
      v20;

      swift_beginAccess(v21 + 16, v38, 0, 0);
      v20 = *(v21 + 16);
      v20;

      return v20;
    }

    swift_willThrow(v23, v39);
    v20;
    swift_errorRetain(v24);
  }

  else
  {
    v25 = v39[0];
    _convertNSErrorToError(_:)(v20);
    v20 = &objc_release;

    swift_willThrow(v25, "performRequests:error:");
  }

  return v20;
}

uint64_t static _VideoUtilities.generatePredictionWindows(frameKeypoints:windowSize:numOfKeypoints:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = specialized Array._getCount()(a1);
  if (!a2)
  {
    BUG();
  }

  if (!(v6 ^ 0x8000000000000000 | ~a2))
  {
    BUG();
  }

  if (v6 / a2 < 0)
  {
    BUG();
  }

  v7 = v6 / a2;
  v75 = v6 % a2;
  v76 = a3;
  v80 = v6;
  if (v6 / a2)
  {
    v8 = 0;
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v9 = a1;
    if ((a1 & 1) == 0)
    {
      v9 = a1 & 0xFFFFFFFFFFFFF8;
    }

    v79 = v9;
    v89 = _swiftEmptyArrayStorage;
    v84 = v7;
    while (1)
    {
      v73 = v8;
      v11 = v8;
      v10 = v5 * v8;
      if (!is_mul_ok(v5, v11))
      {
        BUG();
      }

      v12 = v5 + v10;
      if (__OFADD__(v5, v10))
      {
        BUG();
      }

      if (v12 < v10)
      {
        BUG();
      }

      v13 = a1;
      if ((a1 & 0x4000000000000001) != 0)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter(v79);
      }

      else
      {
        v14 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
      }

      if (v14 < v10)
      {
        BUG();
      }

      if (v10 < 0)
      {
        BUG();
      }

      if ((a1 & 0x4000000000000001) != 0)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter(v79);
      }

      else
      {
        v15 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
      }

      if (v15 < v12)
      {
        BUG();
      }

      v86 = v10;
      v81 = v12;
      if ((a1 & 0xC000000000000003) != 0 && v10 != v12)
      {
        v16 = v10;
        if (v10 >= v12)
        {
          BUG();
        }

        v17 = a2;
        v13 = a1;
        do
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(v16++);
          --v17;
        }

        while (v17);
      }

      v18 = v13;
      if ((v13 & 0x4000000000000001) != 0)
      {
        v13;
        v19 = _CocoaArrayWrapper.subscript.getter(v10, v81, v79);
        v77 = v20;
        v78 = v21;
        v23 = v22;
        v18;
      }

      else
      {
        v23 = 2 * v81 + 1;
        v13;
        v19 = a1 & 0xFFFFFFFFFFFFF8;
        v77 = (a1 & 0xFFFFFFFFFFFFF8) + 32;
        v78 = v10;
      }

      v24 = v89;
      if (v23)
      {
        v90 = v23;
        v26 = type metadata accessor for __ContiguousArrayStorageBase(0);
        swift_unknownObjectRetain_n(v19, 2);
        v74 = v26;
        v27 = swift_dynamicCastClass(v19, v26);
        if (!v27)
        {
          swift_unknownObjectRelease(v19);
          v27 = _swiftEmptyArrayStorage;
        }

        v28 = v27[2];

        if (__OFSUB__(v90 >> 1, v78))
        {
          BUG();
        }

        if (v28 == (v90 >> 1) - v78)
        {
          v25 = swift_dynamicCastClass(v19, v74);
          if (!v25)
          {
            swift_unknownObjectRelease(v19);
            v25 = _swiftEmptyArrayStorage;
          }

          goto LABEL_35;
        }

        swift_unknownObjectRelease(v19);
        v23 = v90;
      }

      v25 = specialized _copyCollectionToContiguousArray<A>(_:)(v19, v77, v78, v23);
LABEL_35:
      swift_unknownObjectRelease(v19);
      v29 = @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(v25, 0, 65600);
      v30 = v29;
      if (!swift_isUniquelyReferenced_nonNull_native(v24))
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v5 = a2;
      v31 = *(v24 + 2);
      v32 = v31 + 1;
      if (*(v24 + 3) >> 1 <= v31)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v24 + 3) >= 2uLL, v31 + 1, 1, v24);
        v32 = v31 + 1;
        v24 = v35;
      }

      *(v24 + 2) = v32;
      v33 = 24 * v31;
      v34 = v30;
      *&v24[v33 + 32] = v30;
      *&v24[v33 + 40] = v86;
      v8 = v73 + 1;
      v89 = v24;
      *&v24[v33 + 48] = v81;

      v7 = v84;
      if (v73 + 1 == v84)
      {
        goto LABEL_43;
      }
    }
  }

  v89 = _swiftEmptyArrayStorage;
LABEL_43:
  if (v75 <= 0)
  {
    return v89;
  }

  v37 = v7;
  v36 = v5 * v7;
  if (!is_mul_ok(v5, v37))
  {
    BUG();
  }

  v38 = __OFSUB__(v5, v75);
  v39 = v5 - v75;
  if (v38)
  {
    BUG();
  }

  v85 = v36;
  specialized ContiguousArray.reserveCapacity(_:)(3);
  v40 = objc_allocWithZone(NSNumber);
  v41 = [v40 initWithInteger:v39];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v40);
  v42 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v42);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v42, v41);
  specialized ContiguousArray._endMutation()();
  v43 = objc_allocWithZone(NSNumber);
  v44 = [v43 initWithInteger:3];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v43);
  v45 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v45);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v45, v44);
  specialized ContiguousArray._endMutation()();
  v46 = objc_allocWithZone(NSNumber);
  v47 = [v46 initWithInteger:v76];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v46);
  v48 = _swiftEmptyArrayStorage[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v48);
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v48, v47);
  specialized ContiguousArray._endMutation()();
  objc_allocWithZone(MLMultiArray);
  v49 = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  if (v3)
  {
    return v89;
  }

  v50 = v49;
  static _VideoUtilities.resetMultiArray(_:with:)(v49, 0.0);
  v87 = v50;
  if (v80 < v85)
  {
    BUG();
  }

  v52 = a1;
  specialized Array._checkIndex(_:)(v85, a1);
  specialized Array._checkIndex(_:)(v80, a1);
  if ((a1 & 0xC000000000000003) != 0 && v85 != v80)
  {
    if (v85 >= v80)
    {
      BUG();
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
    v53 = v85;
    v52 = a1;
    do
    {
      _ArrayBuffer._typeCheckSlowPath(_:)(v53++);
    }

    while (v80 != v53);
  }

  if ((v52 & 0x4000000000000001) != 0)
  {
    v69 = a1 & 0xFFFFFFFFFFFFF8;
    if (a1)
    {
      v69 = a1;
    }

    a1;
    v55 = _CocoaArrayWrapper.subscript.getter(v85, v80, v69);
    v82 = v70;
    v54 = v71;
    v56 = v72;
    a1;
  }

  else
  {
    v54 = v85;
    if (v80 < 0)
    {
      BUG();
    }

    v55 = a1 & 0xFFFFFFFFFFFFF8;
    v82 = (a1 & 0xFFFFFFFFFFFFF8) + 32;
    v56 = 2 * v80 + 1;
    a1;
  }

  v57 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo12MLMultiArrayC_s0C5SliceVyAEGTt0g5(v55, v82, v54, v56);
  v88 = v87;
  v57;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v58 = *(&dword_10 + (v57 & 0xFFFFFFFFFFFFF8));
  v59 = *(&dword_18 + (v57 & 0xFFFFFFFFFFFFF8));
  if (v59 >> 1 <= v58)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v59 >= 2, v58 + 1, 1);
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLMultiArray, MLMultiArray_ptr);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v58, v88);
  v57;
  v60 = @nonobjc MLMultiArray.__allocating_init(concatenating:axis:dataType:)(v57, 0, 65600);
  v61 = v60;
  v62 = v89;
  if (!swift_isUniquelyReferenced_nonNull_native(v89))
  {
    v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v89 + 2) + 1, 1, v89);
  }

  v63 = v80;
  v64 = v62;
  v65 = *(v62 + 2);
  v66 = v64;
  if (*(v64 + 24) >> 1 <= v65)
  {
    v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(v64 + 24) >= 2uLL, v65 + 1, 1, v64);
    v63 = v80;
  }

  v67 = v66;
  *(v66 + 2) = v65 + 1;
  v68 = 24 * v65;
  *&v67[v68 + 32] = v61;
  *&v67[v68 + 40] = v85;
  *&v67[v68 + 48] = v63;

  return v67;
}

uint64_t static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = v4;
  v7 = *(a1 + 8);
  v50 = *a1;
  v51 = v7;
  v48._countAndFlagsBits = a2;
  v8._countAndFlagsBits = a2;
  *&v47 = a3;
  v8._object = a3;
  MLDataTable.subscript.getter(v8);
  if (BYTE8(v49) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v49, 1);
LABEL_15:
    v31 = *(a1 + 8);
    *&v49 = *a1;
    v30 = v49;
    BYTE8(v49) = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v32, v42);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v48._countAndFlagsBits;
    v34 = v47;
    inited[5] = v47;
    LOBYTE(v50) = 5;
    v34;
    outlined copy of Result<_DataTable, Error>(v30, v31);
    static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v49, inited, &v50);
    outlined consume of Result<_DataTable, Error>(v49, SBYTE8(v49));
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  _UntypedColumn.type.getter();
  outlined consume of Result<_DataTable, Error>(v49, 0);
  outlined consume of Result<_DataTable, Error>(v49, 0);
  if (v50 != 3)
  {
    goto LABEL_15;
  }

  v9 = *(a1 + 8);
  *&v49 = *a1;
  BYTE8(v49) = v9;
  v10._countAndFlagsBits = v48._countAndFlagsBits;
  v10._object = v47;
  MLDataTable.subscript.getter(v10);
  v11 = v50;
  LOBYTE(v48._object) = v51;
  v12 = swift_allocObject(&unk_3922E8, 24, 7);
  *(v12 + 16) = a4;
  v44 = a4;
  a4;
  specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for closure #1 in static _VideoUtilities.reformatKeypointsDataTable(table:featureColumn:keypointsShape:), v12, v11, v48._object);

  outlined consume of Result<_DataTable, Error>(v11, v48._object);
  v48._object = v49;
  LOBYTE(v52) = BYTE8(v49);
  v13 = *(a1 + 8);
  v50 = *a1;
  v51 = v13;
  v10._countAndFlagsBits = v48._countAndFlagsBits;
  v10._object = v47;
  MLDataTable.subscript.getter(v10);
  v14 = -1;
  v46 = -1;
  if (!BYTE8(v49))
  {
    v15 = *(v49 + 16);

    v14 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v49, 0);
  }

  outlined consume of Result<_DataTable, Error>(v49, SBYTE8(v49));
  v52 = v52;
  specialized MLDataColumn.dropMissing()(v48._object, v52);
  if (!v51)
  {
    v45 = v14;
    v16 = v50[2];
    outlined copy of Result<_DataTable, Error>(v50, 0);
    v14 = v45;
    v46 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v50, 0);
  }

  outlined consume of Result<_DataTable, Error>(v50, v51);
  v17 = __OFSUB__(v14, v46);
  v18 = v14 - v46;
  if (v17)
  {
    BUG();
  }

  if (!v18)
  {
    v47;
    specialized MLDataTable.subscript.setter(v48._object, v52, v48._countAndFlagsBits, v47);
    goto LABEL_15;
  }

  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v19._object = "validation_confusion" + 0x8000000000000000;
  v19._countAndFlagsBits = 0xD00000000000003DLL;
  String.append(_:)(v19);
  v50 = v18;
  v20 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v22 = v21;
  v19._countAndFlagsBits = v20;
  v19._object = v21;
  String.append(_:)(v19);
  v22;
  v19._object = "mn into MLMultiArray format. " + 0x8000000000000000;
  v19._countAndFlagsBits = 0xD00000000000006BLL;
  String.append(_:)(v19);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1, (v44 & 0xC000000000000003) == 0, v44);
  if ((v44 & 0xC000000000000003) != 0)
  {
    v23 = specialized _ArrayBuffer._getElementSlowPath(_:)(1, v44);
  }

  else
  {
    v23 = *(v44 + 40);
  }

  v24 = v23;
  LODWORD(v47) = (v44 & 0xC000000000000003) == 0;
  v25 = [v23 integerValue];

  v50 = v25;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  object = v26._object;
  String.append(_:)(v26);
  object;
  v28._object = 0xE200000000000000;
  v28._countAndFlagsBits = 8236;
  String.append(_:)(v28);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(2, v47, v44);
  if ((v44 & 0xC000000000000003) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)(2, v44);
  }

  else
  {
    v29 = *(v44 + 48);
  }

  v36 = v29;
  v37 = [v29 integerValue];

  v50 = v37;
  v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v39 = v38._object;
  String.append(_:)(v38);
  v39;
  v40._object = "ld have a dimension of [1, " + 0x8000000000000000;
  v40._countAndFlagsBits = 0xD00000000000003CLL;
  String.append(_:)(v40);
  v40._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v40._object, 0, 0);
  *v41 = v49;
  *(v41 + 16) = 0;
  *(v41 + 32) = 0;
  *(v41 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v40._object);
  return outlined consume of Result<_DataTable, Error>(v48._object, v52);
}

uint64_t static _VideoUtilities.getSecondsFromTimeString(_:)(__int128 a1)
{
  v29._countAndFlagsBits = a1;
  v28 = a1;
  *&v30 = *(&a1 + 1);
  v27[0] = 58;
  v27[1] = 0xE100000000000000;
  v1 = lazy protocol witness table accessor for type String and conformance String();
  v2 = StringProtocol.components<A>(separatedBy:)(v27, &type metadata for String, &type metadata for String, v1, v1);
  v3 = v2[2];
  switch(v3)
  {
    case 3:
      v15 = v2[4];
      v16 = v2[5];
      v16;
      v31 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v15, v16);
      if (v17)
      {
        goto LABEL_13;
      }

      if (v2[2] < 2uLL)
      {
        BUG();
      }

      v18 = v2[6];
      v19 = v2[7];
      v19;
      v20 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v18, v19);
      if (v21)
      {
        goto LABEL_13;
      }

      v29._object = v20;
      if (v2[2] < 3uLL)
      {
        BUG();
      }

      v24 = v2[8];
      v25 = v2[9];
      v25;
      v2;
      result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v24, v25);
      if (v26)
      {
        goto LABEL_14;
      }

      break;
    case 2:
      v8 = v2[4];
      v9 = v2[5];
      v9;
      v10 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v8, v9);
      if (v11)
      {
        goto LABEL_13;
      }

      v31 = v10;
      if (v2[2] < 2uLL)
      {
        BUG();
      }

      v12 = v2[6];
      v13 = v2[7];
      v13;
      v2;
      result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v12, v13);
      if (v14)
      {
        goto LABEL_14;
      }

      break;
    case 1:
      v4 = v2[4];
      v5 = v2[5];
      v5;
      v2;
      result = _sSdySdSgxcSyRzlufCSS_Tt0g5(v4, v5);
      if ((v7 & 1) == 0)
      {
        return result;
      }

LABEL_14:
      *&v28 = 0;
      *(&v28 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(153);
      v22._object = " expects strings." + 0x8000000000000000;
      v22._countAndFlagsBits = 0xD00000000000001FLL;
      String.append(_:)(v22);
      v22._countAndFlagsBits = v29._countAndFlagsBits;
      v22._object = v30;
      String.append(_:)(v22);
      v22._object = "Unsupported time string format " + 0x8000000000000000;
      v22._countAndFlagsBits = 0xD000000000000078;
      String.append(_:)(v22);
      v30 = v28;
      v22._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v22._object, 0, 0);
      *v23 = v30;
      *(v23 + 16) = 0;
      *(v23 + 32) = 0;
      *(v23 + 48) = 0;
      return swift_willThrow(&type metadata for MLCreateError, v22._object);
    default:
LABEL_13:
      v2;
      goto LABEL_14;
  }

  return result;
}