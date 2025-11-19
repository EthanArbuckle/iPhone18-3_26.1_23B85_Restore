uint64_t outlined destroy of MLStyleTransfer.ModelParameters.ValidationData(uint64_t a1)
{
  v1 = type metadata accessor for MLStyleTransfer.ModelParameters.ValidationData(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

double MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.getter()
{
  if (*(v0 + 16))
  {
    return 0.975;
  }

  else
  {
    return *(v0 + 8);
  }
}

void key path getter for MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize : MLSoundClassifier.FeatureExtractionParameters(unint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = a1[3];
  v6 = *(a1 + 32);
  *v1 = MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.getter();
}

uint64_t (*MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 16))
  {
    v2 = 0x3FEF333333333333;
  }

  else
  {
    v2 = *(v1 + 8);
  }

  *a1 = v2;
  return MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractionTimeWindowSize.modify(uint64_t *a1)
{
  result = *a1;
  v2 = a1[1];
  *(v2 + 8) = *a1;
  *(v2 + 16) = 0;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractor.getter()
{
  v2 = *(v1 + 32);
  *result = *(v1 + 24);
  *(result + 8) = v2;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.featureExtractor.setter(uint64_t *a1)
{
  result = *a1;
  v3 = *(a1 + 8);
  *(v1 + 24) = *a1;
  *(v1 + 32) = v3;
  return result;
}

uint64_t MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:)(uint64_t *a1, double a2)
{
  v3 = *a1;
  *result = a2;
  *(result + 8) = 0;
  v4 = *(a1 + 8);
  *(result + 16) = 1;
  *(result + 24) = v3;
  *(result + 32) = v4;
  return result;
}

char MLSoundClassifier.FeatureExtractionParameters.init(overlapFactor:featureExtractor:featureExtractionTimeWindowSize:)(uint64_t *a1, uint64_t a2, char a3, double a4)
{
  v6 = a2;
  v7 = v4;
  v8 = *a1;
  v9 = *(a1 + 8);
  if ((a3 & 1) == 0)
  {
    if (*&a2 < 0.5)
    {
      v21 = a4;
      v20 = v8;
      v22 = v9;
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(108);
      v10._object = ". Clamping it to " + 0x8000000000000000;
      v10._countAndFlagsBits = 0xD000000000000056;
      String.append(_:)(v10);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v10._object = "ximum supported value " + 0x8000000000000000;
      v10._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v10);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
      String.append(_:)(v10);
      v11 = v18;
      v12 = v19;
      v13 = static os_log_type_t.default.getter(46);
      v10._countAndFlagsBits = v11;
      v10._object = v12;
      log(_:type:)(v10, v13);
      v6 = 0x3FE0000000000000;
LABEL_6:
      v12;
      v9 = v22;
      v8 = v20;
      a4 = v21;
      goto LABEL_7;
    }

    if (*&a2 > 15.0)
    {
      v21 = a4;
      v20 = v8;
      v22 = v9;
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(108);
      v14._object = "r MLShapedArray<Double> values." + 0x8000000000000000;
      v14._countAndFlagsBits = 0xD000000000000056;
      String.append(_:)(v14);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v14._object = "ximum supported value " + 0x8000000000000000;
      v14._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v14);
      Double.write<A>(to:)(&v18, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v14._countAndFlagsBits = 46;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15 = v18;
      v12 = v19;
      v16 = static os_log_type_t.default.getter(46);
      v14._countAndFlagsBits = v15;
      v14._object = v12;
      log(_:type:)(v14, v16);
      v6 = 0x402E000000000000;
      goto LABEL_6;
    }
  }

LABEL_7:
  *v7 = a4;
  *(v7 + 8) = v6;
  *(v7 + 16) = a3 & 1;
  *(v7 + 24) = v8;
  result = v9 & 1;
  *(v7 + 32) = result;
  return result;
}

id key path getter for MLWordEmbedding.model : MLWordEmbedding(__int128 *a1)
{
  v2 = v1;
  v5 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v3 = *(a1 + 40);
  result = MLWordEmbedding.model.getter();
  *v2 = result;
  return result;
}

void (*MLWordEmbedding.model.modify(void *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = v3;
  v3;
  return MLWordTagger.model.modify;
}

id MLWordEmbedding.modelParameters.getter()
{
  v2 = *(v1 + 24);
  *v0 = *(v1 + 24);
  return v2;
}

NSURL *MLWordEmbedding.init(dictionary:parameters:)(uint64_t a1, uint64_t a2)
{
  v94 = v3;
  v95 = a1;
  v78 = v2;
  v96 = type metadata accessor for UUID(0);
  v91 = *(v96 - 1);
  v4 = *(v91 + 8);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v92 = &v77;
  v86 = type metadata accessor for URL(0);
  v88 = *(v86 - 8);
  v7 = v88[8];
  v8 = alloca(v7);
  v9 = alloca(v7);
  v77 = &v77;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v81 = &v77;
  v12 = alloca(v7);
  v13 = alloca(v7);
  v93 = &v77;
  v14 = alloca(v7);
  v15 = alloca(v7);
  v87 = &v77;
  v16 = alloca(v7);
  v17 = alloca(v7);
  v90 = &v77;
  v18 = alloca(v7);
  v19 = alloca(v7);
  v20 = alloca(v7);
  v21 = alloca(v7);
  v22 = *(a2 + 8);
  v85 = *a2;
  v97[0] = v85;
  v97[1] = v22;
  MLWordEmbedding.ModelParameters.validateRevision()();
  if (v23)
  {
    v95;
    v24 = v85;
  }

  else
  {
    v82 = v22;
    v89 = &v77;
    v94 = &v77;
    v25 = objc_opt_self(NSFileManager);
    v26 = v85;
    v95;
    v27 = [v25 defaultManager];
    v28 = v27;
    NSFileManager.createTemporaryModelDirectory()();
    if (v29)
    {

      swift_bridgeObjectRelease_n(v95, 2);
    }

    else
    {
      v84 = 0;
      NSFileManager.temporaryModelDirectory.getter();
      v30 = v92;
      UUID.init()();
      v31 = UUID.uuidString.getter();
      v83 = v32;
      (*(v91 + 1))(v30, v96);
      v97[0] = v31;
      v97[1] = v83;
      v33._countAndFlagsBits = 45;
      v33._object = 0xE100000000000000;
      String.append(_:)(v33);
      v33._countAndFlagsBits = 0x65626D4564726F57;
      v33._object = 0xED0000676E696464;
      String.append(_:)(v33);
      v34 = v97[1];
      v91 = v28;
      URL.appendingPathComponent(_:)(v97[0], v97[1]);
      v34;
      v35 = v90;
      URL.appendingPathExtension(_:)(7627108, 0xE300000000000000);
      URL.appendingPathExtension(_:)(0x6C65646F6D6C6DLL, 0xE700000000000000);
      type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NLEmbedding, NLEmbedding_ptr);
      v92 = v26;
      v96 = v26;
      v36 = v95;
      v37 = v84;
      static NLEmbedding.write(_:language:revision:to:)(v95, v85, v82, v35);
      if (v37)
      {
        v38 = v36;
        v36;

        v39 = v96;
        v40 = v88[1];
        v41 = v86;
        v40(v87, v86);
        v40(v90, v41);
        v40(v89, v41);
        v40(v94, v41);
        v38;
      }

      else
      {

        v42 = v88[2];
        v43 = v93;
        v42(v93, v90, v86);
        v44 = @nonobjc NLEmbedding.__allocating_init(contentsOf:)(v43);
        v83 = v42;
        v45 = v44;
        v46 = [v45 dimension];
        v93 = v45;
        v79 = [v45 vocabularySize];
        v98[0] = v85;
        v98[1] = v82;
        memset(v97, 0, sizeof(v97));
        v96 = v96;
        static MLWordEmbedding.write(dictionary:parameters:to:metadata:)(v95, v98, v87, v97);
        v84 = 0;
        v80 = v46;

        v47 = objc_opt_self(MLModel);
        URL._bridgeToObjectiveC()(v47);
        v49 = v48;
        v97[0] = 0;
        v50 = [(NSURL *)v47 compileModelAtURL:v48 error:v97];
        v51 = v50;

        v52 = v97[0];
        if (v51)
        {
          v53 = v81;
          static URL._unconditionallyBridgeFromObjectiveC(_:)(v51);
          v52;

          type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for MLModel, MLModel_ptr);
          v54 = v77;
          v55 = v53;
          v56 = v86;
          v83(v77, v55, v86);
          v57 = v84;
          v58 = @nonobjc MLModel.__allocating_init(contentsOf:)(v54);
          if (!v57)
          {
            v70 = v58;
            v96 = v96;
            v71 = v56;
            v92 = v70;
            static MLWordEmbedding.reportAnalytics(vocabularySize:dimension:language:)(v79, v80, v85);

            v72 = v88[1];
            v72(v81, v56);
            v73 = v87;
            $defer #1 () in MLWordEmbedding.init(dictionary:parameters:)();

            v72(v73, v71);
            v72(v90, v71);
            v72(v89, v71);
            v72(v94, v71);
            v74 = v78;
            *v78 = v93;
            v75 = v95;
            v74[1] = v95;
            v76 = v92;
            v74[2] = v92;
            v74[3] = v85;
            v74[4] = v82;
            v74[5] = v80;
            v74[6] = v79;

            v75;
            return __stack_chk_guard;
          }

          v59 = v88[1];
          v59(v81, v56);

          v60 = v56;
          v95;

          v61 = v87;
          $defer #1 () in MLWordEmbedding.init(dictionary:parameters:)();

          v59(v61, v60);
          v59(v90, v60);
          v59(v89, v60);
          v59(v94, v60);
          v62 = v95;
        }

        else
        {
          v63 = v97[0];

          v64 = v95;
          v95;

          _convertNSErrorToError(_:)(v52);
          swift_willThrow(v63, "compileModelAtURL:error:");
          v65 = v87;
          $defer #1 () in MLWordEmbedding.init(dictionary:parameters:)();
          (objc_release)(v91);
          v66 = v88[1];
          v67 = v65;
          v68 = v86;
          v66(v67, v86);
          v66(v90, v68);
          v66(v89, v68);
          v66(v94, v68);
          v62 = v64;
        }

        v62;
      }

      v26 = v92;
    }

    v24 = v26;
  }

  return __stack_chk_guard;
}

id @nonobjc NLEmbedding.__allocating_init(contentsOf:)(uint64_t a1)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v2 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = 0;
  v4 = [ObjCClassFromMetadata embeddingWithContentsOfURL:v2 error:&v12];
  v5 = v4;

  v6 = v12;
  if (v5)
  {
    v7 = type metadata accessor for URL(0);
    v8 = *(*(v7 - 8) + 8);
    v6;
    v8(a1, v7);
  }

  else
  {
    v9 = v12;
    _convertNSErrorToError(_:)(v6);

    swift_willThrow();
    v10 = type metadata accessor for URL(0);
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v5;
}

NSURL *$defer #1 () in MLWordEmbedding.init(dictionary:parameters:)()
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

char static MLWordEmbedding.reportAnalytics(vocabularySize:dimension:language:)(int a1, int a2, uint64_t a3)
{
  result = AnalyticsReporter.init()();
  if ((result & 1) == 0)
  {
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordEmbedding, __PAIR128__(0xEF657A6953207972, 0x616C756261636F56), a1);
    AnalyticsReporter.reportDataMetrics(model:metricName:quantity:)(CreateML_ModelType_wordEmbedding, __PAIR128__(0xE90000000000006ELL, 0x6F69736E656D6944), a2);
    if (a3)
    {
      v6._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
      v6._object = v5;
    }

    else
    {
      v6._object = "formers Text Embedding" + 0x8000000000000000;
      v6._countAndFlagsBits = 0xD000000000000014;
    }

    AnalyticsReporter.reportParameterSettings(model:parameterName:parameterValue:)(CreateML_ModelType_wordEmbedding, __PAIR128__(0xE800000000000000, 0x65676175676E614CLL), v6);
    return v6._object;
  }

  return result;
}

Swift::Bool __swiftcall MLWordEmbedding.contains(_:)(Swift::String a1)
{
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 containsString:v3];

  return v2 != 0;
}

unint64_t MLWordEmbedding.description.getter()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v10._object = v2;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(v10);
  v10._object;
  v3._countAndFlagsBits = 0x6F69736E656D6944;
  v3._object = 0xEB00000000203A6ELL;
  String.append(_:)(v3);
  0xEB00000000203A6ELL;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v10._object = v4;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(v10);
  v10._object;
  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = "WordEmbedding\n\nParameters\n" + 0x8000000000000000;
  String.append(_:)(v3);
  "WordEmbedding\n\nParameters\n" + 0x8000000000000000;
  v11 = *(v0 + 24);
  v11._countAndFlagsBits;
  v5 = MLWordEmbedding.ModelParameters.description.getter();
  v7 = v6;

  v3._countAndFlagsBits = v5;
  v3._object = v7;
  String.append(_:)(v3);
  v7;
  return 0xD00000000000001ALL;
}

unint64_t MLWordEmbedding.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 40);
  v9 = *(v0 + 24);
  v8 = v1;
  v2;
  v5 = v3;
  v6 = MLWordEmbedding.description.getter();

  v2;
  return v6;
}

void *MLWordEmbedding.playgroundDescription.getter()
{
  v11 = v0;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v13 = *(v1 + 24);
  v12 = v2;
  v3;
  v6 = v4;
  v7 = MLWordEmbedding.description.getter();
  v9 = v8;

  v3;
  result = &type metadata for String;
  v11[3] = &type metadata for String;
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t initializeWithCopy for MLWordEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v3;
  v4;
  v5;
  v6;
  return a1;
}

uint64_t assignWithCopy for MLWordEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;

  v5 = *(a2 + 8);
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  v5;
  v6, a2;
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v7;

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  *(a1 + 24) = v10;
  v10;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for MLWordEmbedding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3, a2;

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLWordEmbedding(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLWordEmbedding(uint64_t a1, int a2, int a3)
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
      *a1 = 2 * (a2 - 1);
    }
  }
}

Swift::String __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLTextClassifier.prediction(from:)(Swift::String from)
{
  v2 = *v1;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 predictedLabelForString:v3];
  v5 = v4;

  if (v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)(v5);
    v8 = v7;
  }

  else
  {
    v8 = 0xE000000000000000;
    v6 = 0;
  }

  result._countAndFlagsBits = v6;
  result._object = v8;
  return result;
}

void *MLTextClassifier.predictions(from:)(uint64_t a1)
{
  v3 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = &v19;
  outlined init with copy of MLTextClassifier(v2, &v19);
  v7 = *(a1 + 16);
  if (v7)
  {
    v21 = v1;
    v26 = _swiftEmptyArrayStorage;
    v19 = v7;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v26;
    v22 = &v19;
    v20 = v19;
    v9 = (a1 + 40);
    do
    {
      v23 = v8;
      v10 = *(v9 - 1);
      v11 = *v9;
      *v9;
      v12 = String._bridgeToObjectiveC()();
      v13 = [v20 predictedLabelForString:v12];
      v14 = v13;

      if (v14)
      {
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)(v14);
        v25 = v15;
        v11;
      }

      else
      {
        v11;
        v24 = 0;
        v25 = 0xE000000000000000;
      }

      v8 = v23;
      v26 = v23;
      v16 = v23[2];
      if (v23[3] >> 1 <= v16)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v23[3] >= 2uLL, v16 + 1, 1);
        v8 = v26;
      }

      v8[2] = v16 + 1;
      v17 = 2 * v16;
      v8[v17 + 4] = v24;
      v8[v17 + 5] = v25;
      v9 += 2;
      --v19;
    }

    while (v19);
    v6 = v22;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  outlined destroy of MLTextClassifier(v6);
  return v8;
}

uint64_t outlined init with copy of MLTextClassifier(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLTextClassifier(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

void *MLTextClassifier.predictionWithAllLabelsAndConfidences(text:)(uint64_t a1, uint64_t a2)
{
  v57 = v2[1];
  v3 = *(v57 + 16);
  v4 = *v2;
  v5 = NLModel.predictedLabelHypotheses(for:maximumCount:)(a1, a2, v3);
  v6 = v5[2];
  if (v3 < v6)
  {
    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v8 = 0xD000000000000037;
    *(v8 + 8) = "Vocabulary Size: " + 0x8000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 32) = 0;
    *(v8 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v7);
    v5;
    return v5;
  }

  if (v3 == v6)
  {
    return v5;
  }

  specialized _NativeDictionary.makeIterator()(v5);
  v9 = v51;
  v10 = v52;
  v11 = (v50 + 64) >> 6;
  v12 = 0.0;
  while (1)
  {
    if (v10)
    {
      v13 = v9;
      goto LABEL_29;
    }

    v14 = v9 + 1;
    if (__OFADD__(1, v9))
    {
      BUG();
    }

    if (v14 >= v11)
    {
      goto LABEL_30;
    }

    v10 = *(v49 + 8 * v14);
    if (v10)
    {
      v13 = v9 + 1;
      goto LABEL_29;
    }

    v13 = v9 + 2;
    if (v9 + 2 >= v11)
    {
      goto LABEL_30;
    }

    v10 = *(v49 + 8 * v14 + 8);
    if (!v10)
    {
      v13 = v9 + 3;
      if (v9 + 3 >= v11)
      {
        goto LABEL_30;
      }

      v10 = *(v49 + 8 * v14 + 16);
      if (!v10)
      {
        v13 = v9 + 4;
        if (v9 + 4 >= v11)
        {
          goto LABEL_30;
        }

        v10 = *(v49 + 8 * v14 + 24);
        if (!v10)
        {
          v13 = v9 + 5;
          if (v9 + 5 >= v11)
          {
            goto LABEL_30;
          }

          v10 = *(v49 + 8 * v14 + 32);
          if (!v10)
          {
            v13 = v9 + 6;
            if (v9 + 6 >= v11)
            {
              goto LABEL_30;
            }

            v10 = *(v49 + 8 * v14 + 40);
            if (!v10)
            {
              v13 = v9 + 7;
              if (v9 + 7 >= v11)
              {
                goto LABEL_30;
              }

              v10 = *(v49 + 8 * v14 + 48);
              if (!v10)
              {
                v13 = v9 + 8;
                if (v9 + 8 >= v11)
                {
                  goto LABEL_30;
                }

                v10 = *(v49 + 8 * v14 + 56);
                if (!v10)
                {
                  break;
                }
              }
            }
          }
        }
      }
    }

LABEL_29:
    _BitScanForward64(&v16, v10);
    v10 &= v10 - 1;
    v12 = v12 + *(*(v48 + 56) + ((v13 << 9) | (8 * v16)));
    v9 = v13;
  }

  v15 = v9 + 9;
  while (v15 < v11)
  {
    v10 = *(v49 + 8 * v15++);
    if (v10)
    {
      v13 = v15 - 1;
      goto LABEL_29;
    }
  }

LABEL_30:
  swift_bridgeObjectRetain_n(v5, 2);
  v17 = 0;
  outlined consume of [String : [Double]].Iterator._Variant(v48);
  v18 = v3 - v5[2];
  v5;
  v19 = 1 << *(v57 + 32);
  v53 = (1.0 - v12) / v18;
  v20 = ~(-1 << v19);
  if (v19 >= 64)
  {
    v20 = -1;
  }

  v21 = *(v57 + 56) & v20;
  v56 = (v19 + 63) >> 6;
  v57;
  while (2)
  {
    v22 = v17;
LABEL_34:
    if (v21)
    {
LABEL_35:
      v23 = v22;
      goto LABEL_50;
    }

    v24 = v22 + 1;
    if (__OFADD__(1, v22))
    {
      BUG();
    }

    if (v24 >= v56)
    {
      goto LABEL_67;
    }

    v21 = *(v57 + 8 * v24 + 56);
    if (v21)
    {
      v23 = v22 + 1;
LABEL_50:
      _BitScanForward64(&v25, v21);
      v54 = v21 & (v21 - 1);
      v26 = *(v57 + 48);
      v27 = (v23 << 10) | (16 * v25);
      v28 = *(v26 + v27);
      v29 = *(v26 + v27 + 8);
      v30 = v5[2];
      v29;
      if (!v30 || (v5, specialized __RawDictionaryStorage.find<A>(_:)(v28, v29), v32 = v31, v5, (v32 & 1) == 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v5);
        v55 = v28;
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v28, v29);
        v36 = (v34 & 1) == 0;
        v37 = __OFADD__(v5[2], v36);
        v38 = v5[2] + v36;
        if (v37)
        {
          BUG();
        }

        v59 = v34;
        __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Double>);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v38))
        {
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v29);
          LOBYTE(v40) = v40 & 1;
          LOBYTE(v41) = v59;
          v17 = v23;
          if ((v59 & 1) != v40)
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v29, v40, v41, v39);
            BUG();
          }

          v42 = v55;
        }

        else
        {
          v17 = v23;
          v42 = v55;
          LOBYTE(v41) = v59;
        }

        if (v41)
        {
          *(v5[7] + 8 * v35) = v53;
          v29;
        }

        else
        {
          v5[(v35 >> 6) + 8] |= 1 << v35;
          v43 = v5[6];
          v44 = 16 * v35;
          *(v43 + v44) = v42;
          *(v43 + v44 + 8) = v29;
          *(v5[7] + 8 * v35) = v53;
          v45 = v5[2];
          v37 = __OFADD__(1, v45);
          v46 = v45 + 1;
          if (v37)
          {
            BUG();
          }

          v5[2] = v46;
        }

        v21 = v54;
        continue;
      }

      v29;
      v22 = v23;
      v21 = v54;
      goto LABEL_34;
    }

    break;
  }

  v23 = v22 + 2;
  if (v22 + 2 >= v56)
  {
    goto LABEL_67;
  }

  v21 = *(v57 + 8 * v24 + 64);
  if (v21)
  {
    goto LABEL_50;
  }

  v23 = v22 + 3;
  if (v22 + 3 >= v56)
  {
    goto LABEL_67;
  }

  v21 = *(v57 + 8 * v24 + 72);
  if (v21)
  {
    goto LABEL_50;
  }

  v23 = v22 + 4;
  if (v22 + 4 >= v56)
  {
    goto LABEL_67;
  }

  v21 = *(v57 + 8 * v24 + 80);
  if (v21)
  {
    goto LABEL_50;
  }

  v23 = v22 + 5;
  if (v22 + 5 >= v56)
  {
    goto LABEL_67;
  }

  v21 = *(v57 + 8 * v24 + 88);
  if (v21)
  {
    goto LABEL_50;
  }

  v23 = v22 + 6;
  if (v22 + 6 >= v56)
  {
    goto LABEL_67;
  }

  v21 = *(v57 + 8 * v24 + 96);
  if (v21)
  {
    goto LABEL_50;
  }

  v33 = v22 + 7;
  while (v33 < v56)
  {
    v21 = *(v57 + 8 * v33++ + 56);
    if (v21)
    {
      v22 = v33 - 1;
      goto LABEL_35;
    }
  }

LABEL_67:

  return v5;
}

uint64_t *MLTextClassifier.predictionsWithConfidence(from:)(uint64_t a1)
{
  v3 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v21 = &v17;
  outlined init with copy of MLTextClassifier(v2, &v17);
  v6 = *(a1 + 16);
  if (v6)
  {
    v22 = v1;
    v20 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v20;
    v8 = (a1 + 40);
    while (1)
    {
      v9 = v7;
      v18 = v6;
      v10 = *(v8 - 1);
      v19 = v8;
      v11 = *v8;
      *v8;
      v7 = v21;
      v12 = v22;
      v13 = MLTextClassifier.predictionWithAllLabelsAndConfidences(text:)(v10, v11);
      v22 = v12;
      if (v12)
      {
        break;
      }

      v14 = v13;
      v11;
      v7 = v9;
      v20 = v9;
      v15 = v9[2];
      if (v9[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2, v15 + 1, 1);
        v7 = v20;
      }

      v7[2] = v15 + 1;
      v7[v15 + 4] = v14;
      v8 = v19 + 2;
      v6 = v18 - 1;
      if (v18 == 1)
      {
        goto LABEL_10;
      }
    }

    v11;
    outlined destroy of MLTextClassifier(v21);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_10:
    outlined destroy of MLTextClassifier(v21);
  }

  return v7;
}

uint64_t *MLTextClassifier.predictions(from:)(uint64_t a1, double a2)
{
  v33 = v2;
  v4 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *a1;
  v8 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v8);
  v9 = v8;
  v10 = &v30;
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v7, v9, a2);
  outlined init with copy of MLTextClassifier(v3, &v30);
  v12 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
  if (v12)
  {
    v38 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v38;
    v34 = &v30;
    v32 = v30;
    v35 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v14 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 5;
    do
    {
      v30 = v12;
      v15 = *(v14 - 1);
      v31 = v14;
      v16 = *v14;
      *v14;
      v17 = String._bridgeToObjectiveC()();
      v18 = [v32 predictedLabelForString:v17];
      v19 = v18;

      if (v19)
      {
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)(v19);
        v37 = v20;
        v16;
      }

      else
      {
        v16;
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      v38 = v13;
      v21 = v13[2];
      v22 = v30;
      if (v13[3] >> 1 <= v21)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13[3] >= 2uLL, v21 + 1, 1);
        v13 = v38;
      }

      v13[2] = v21 + 1;
      v23 = 2 * v21;
      v13[v23 + 4] = v36;
      v13[v23 + 5] = v37;
      v14 = v31 + 2;
      v12 = v22 - 1;
    }

    while (v12);
    v10 = v34;
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v35;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  outlined destroy of MLTextClassifier(v10);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
  v38 = v13;
  v24 = alloca(24);
  v25 = alloca(32);
  v32 = &v38;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v28 = v27;
  v38;
  result = v33;
  *v33 = ML14_UntypedColumnC_s5Error_pTt1g5;
  *(result + 8) = v28 & 1;
  return result;
}

uint64_t MLTextClassifier.predictionsWithConfidence(from:)(uint64_t a1, double a2)
{
  v33 = v3;
  v31 = v2;
  v5 = *(*(type metadata accessor for MLTextClassifier(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *a1;
  v9 = *(a1 + 8);
  outlined copy of Result<_DataTable, Error>(*a1, v9);
  MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5(v8, v9, a2);
  v34 = &v29;
  outlined init with copy of MLTextClassifier(v4, &v29);
  v11 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5[2];
  if (v11)
  {
    v35 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v36 = v35;
    v32 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v12 = MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 + 5;
    while (1)
    {
      v30 = v11;
      v13 = *(v12 - 1);
      v14 = *v12;
      *v12;
      v15 = v33;
      v16 = MLTextClassifier.predictionWithAllLabelsAndConfidences(text:)(v13, v14);
      if (v15)
      {
        break;
      }

      v17 = v16;
      v33 = 0;
      v14;
      v18 = v36;
      v35 = v36;
      v19 = v36[2];
      v20 = v36[3];
      v21 = v19 + 1;
      if (v20 >> 1 <= v19)
      {
        v36 = (v19 + 1);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20 >= 2, v21, 1);
        v21 = v36;
        v18 = v35;
      }

      v18[2] = v21;
      v36 = v18;
      v18[v19 + 4] = v17;
      v12 += 2;
      v11 = v30 - 1;
      if (v30 == 1)
      {
        MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5 = v32;
        v23 = v36;
        goto LABEL_10;
      }
    }

    v14;
    outlined destroy of MLTextClassifier(v34);
    return v32;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
LABEL_10:
    outlined destroy of MLTextClassifier(v34);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSS_Tt0B5;
    v35 = v23;
    v24 = alloca(24);
    v25 = alloca(32);
    v31 = &v35;
    ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
    v28 = v27;
    v35;
    result = v31;
    *v31 = ML14_UntypedColumnC_s5Error_pTt1g5;
    *(result + 8) = v28 & 1;
  }

  return result;
}

uint64_t outlined destroy of MLTextClassifier(uint64_t a1)
{
  v1 = type metadata accessor for MLTextClassifier(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t MLWordTagger.ModelParameters.init(validation:algorithm:language:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = v3;
  v5 = v3;
  v6 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  LOBYTE(v6) = *(a2 + 16);
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 24) = a3;
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(a1, v10);
  MLWordTagger.ModelParameters.validation.setter(v10);
  return outlined destroy of MLWordTagger.ModelParameters.ValidationData(a1);
}

uint64_t MLWordTagger.ModelParameters.validation.getter()
{
  v2 = v0;
  outlined init with copy of Any?(v1 + 32, &v6);
  if (!v7)
  {
    BUG();
  }

  outlined init with take of Any(&v6, v5);
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  return swift_dynamicCast(v2, v5, &type metadata for Any + 8, v3, 7);
}

void MLWordTagger.ModelParameters.init(validationData:algorithm:language:tokenColumnValidationData:labelColumnValidationData:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  v19 = a4;
  v9 = v7;
  v20 = a6;
  v21 = a5;
  v10 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a2 + 16);
  *(v9 + 80) = 0;
  *(v9 + 64) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 1;
  *v9 = *a2;
  *(v9 + 16) = v15;
  *(v9 + 24) = a3;
  v17 = v13;
  v18 = v14;
  v16 = a3;
  MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v17, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  MLWordTagger.ModelParameters.validation.setter(&v17);
  MLWordTagger.ModelParameters.tokenColumnValidationData.setter(v19, v21);
  MLWordTagger.ModelParameters.labelColumnValidationData.setter(v20, a7);
}

id MLWordTagger.ModelParameters.description.getter()
{
  v14 = 0;
  v15 = 0xE000000000000000;
  if (*(v0 + 16) == 1)
  {
    if (*v0)
    {
      if (*v0 == 1)
      {
        v1 = 0xD000000000000027;
        v2 = "Unspecified Language";
      }

      else
      {
        v1 = 0xD000000000000046;
        v2 = "Average Tokens per Sequence";
      }
    }

    else
    {
      v1 = 0xD000000000000016;
      v2 = "ge Model Text Embedding";
    }

    v13 = v1;
    v2;
    v5 = 0x6C65646F4D20;
    v4._object = 0xE600000000000000;
    String.append(_:)(v4);
    v2 | 0x8000000000000000;
    v4._countAndFlagsBits = v13;
    v3 = (v2 | 0x8000000000000000);
  }

  else
  {
    v3 = "Dynamic Text Embedding" + 0x8000000000000000;
    v4._countAndFlagsBits = 0xD00000000000001ELL;
  }

  v4._object = v3;
  String.append(_:)(v4);
  v3;
  v6._countAndFlagsBits = v14;
  v7 = v15;
  v14 = 0xD000000000000010;
  v15 = "than the trained model." + 0x8000000000000000;
  v6._object = v7;
  String.append(_:)(v6);
  v7;
  ("than the trained model." + 0x8000000000000000);
  v6._countAndFlagsBits = 0x676175676E614C0ALL;
  v6._object = 0xEB00000000203A65;
  String.append(_:)(v6);
  "than the trained model." + 0x8000000000000000;
  v14 = *(v0 + 24);
  v14;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NLLanguage?);
  v14 = String.init<A>(describing:)(&v14, v8);
  v15 = v9;
  v6._countAndFlagsBits = 10;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v10 = v14;
  v11 = v15;
  v14 = 0xD000000000000010;
  v15 = "than the trained model." + 0x8000000000000000;
  ("than the trained model." + 0x8000000000000000);
  v6._countAndFlagsBits = v10;
  v6._object = v11;
  String.append(_:)(v6);
  "than the trained model." + 0x8000000000000000;
  v11;
  return v14;
}

uint64_t MLWordTagger.ModelParameters.maxIterations.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t MLWordTagger.ModelParameters.algorithm.getter()
{
  v2 = *(v1 + 16);
  *result = *v1;
  *(result + 16) = v2;
  return result;
}

char MLWordTagger.ModelParameters.algorithm.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

void *MLWordTagger.ModelParameters.language.getter()
{
  v1 = *(v0 + 24);
  v1;
  return v1;
}

uint64_t MLWordTagger.ModelParameters.validationData.getter(__m128 a1)
{
  v2 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  outlined init with copy of Any?(v1 + 32, &v9);
  if (!v10)
  {
    BUG();
  }

  outlined init with take of Any(&v9, v8);
  swift_dynamicCast(&v7, v8, &type metadata for Any + 8, v2, 7);
  MLWordTagger.ModelParameters.ValidationData.table.getter(a1);
  return outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v7);
}

uint64_t key path getter for MLWordTagger.ModelParameters.validationData : MLWordTagger.ModelParameters(__m128 a1)
{
  v2 = v1;
  MLWordTagger.ModelParameters.validationData.getter(a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = v5;
  return result;
}

uint64_t key path setter for MLWordTagger.ModelParameters.validationData : MLWordTagger.ModelParameters(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  outlined copy of MLDataTable?(v3, v1);
  return MLWordTagger.ModelParameters.validationData.setter(&v3);
}

uint64_t MLWordTagger.ModelParameters.validationData.setter(uint64_t *a1)
{
  v1 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v6, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  return MLWordTagger.ModelParameters.validation.setter(&v6);
}

uint64_t MLWordTagger.ModelParameters.validation.setter(uint64_t a1)
{
  *(v1 + 72);
  *(v1 + 64) = 0;
  v4[3] = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  outlined init with take of MLWordTagger.ModelParameters.ValidationData(a1, boxed_opaque_existential_0);
  return outlined assign with take of Any?(v4, v1 + 32);
}

void (*MLWordTagger.ModelParameters.validationData.modify(uint64_t a1, __m128 a2))(uint64_t a1, char a2)
{
  *(a1 + 16) = v2;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  *(a1 + 24) = malloc(*(*(v3 - 8) + 64));
  MLWordTagger.ModelParameters.validationData.getter(a2);
  return MLWordTagger.ModelParameters.validationData.modify;
}

void MLWordTagger.ModelParameters.validationData.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);
  v5 = *(a1 + 16);
  v7 = *a1;
  v8 = v3;
  if (a2)
  {
    v6 = v3;
    outlined copy of MLDataTable?(v2, v3);
    MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v7, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
    MLWordTagger.ModelParameters.validation.setter(v4);
    outlined consume of MLDataTable?(v2, v6);
  }

  else
  {
    MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(&v7, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
    MLWordTagger.ModelParameters.validation.setter(v4);
  }

  free(v4);
}

uint64_t MLWordTagger.ModelParameters.tokenColumnValidationData.getter()
{
  v1 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of Any?(v0 + 32, &v11);
  if (!v12)
  {
    BUG();
  }

  outlined init with take of Any(&v11, &v9);
  swift_dynamicCast(&v9, &v9, &type metadata for Any + 8, v1, 7);
  if (swift_getEnumCaseMultiPayload(&v9, v1) == 1)
  {
    v5 = v9;
    v6 = v10;
    v7 = BYTE8(v9);
    *(&v11 + 1);
    outlined consume of Result<_DataTable, Error>(v5, v7);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v9);
    v6 = *(v0 + 64);
    *(v0 + 72);
  }

  return v6;
}

uint64_t MLWordTagger.ModelParameters.tokenColumnValidationData.setter(uint64_t a1, unint64_t a2)
{
  v20 = a2;
  v19 = a1;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  outlined init with copy of Any?(v2 + 32, &v16);
  if (!v17)
  {
    BUG();
  }

  outlined init with take of Any(&v16, &v13);
  swift_dynamicCast(&v13, &v13, &type metadata for Any + 8, v3, 7);
  if (swift_getEnumCaseMultiPayload(&v13, v3) == 1)
  {
    v9 = v13;
    v21 = BYTE8(v13);
    v18 = v16;
    v15;
    *(v2 + 72);
    v10 = v19;
    if (!v20)
    {
      v10 = 1954047348;
    }

    v11 = 0xE400000000000000;
    if (v20)
    {
      v11 = v20;
    }

    *(v2 + 64) = 0;
    *&v13 = v9;
    BYTE8(v13) = v21;
    v14 = v10;
    v15 = v11;
    v16 = v18;
    swift_storeEnumTagMultiPayload(&v13, v3, 1);
    return MLWordTagger.ModelParameters.validation.setter(&v13);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v13);
    *(v2 + 72);
    *(v2 + 64) = v19;
    result = v20;
    *(v2 + 72) = v20;
  }

  return result;
}

uint64_t (*MLWordTagger.ModelParameters.tokenColumnValidationData.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MLWordTagger.ModelParameters.tokenColumnValidationData.getter(a1);
  a1[1] = v2;
  return MLWordTagger.ModelParameters.tokenColumnValidationData.modify;
}

uint64_t MLWordTagger.ModelParameters.labelColumnValidationData.getter()
{
  v1 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of Any?(v0 + 32, &v11);
  if (!v12)
  {
    BUG();
  }

  outlined init with take of Any(&v11, &v9);
  swift_dynamicCast(&v9, &v9, &type metadata for Any + 8, v1, 7);
  if (swift_getEnumCaseMultiPayload(&v9, v1) == 1)
  {
    v5 = v9;
    v6 = v11;
    v7 = BYTE8(v9);
    v10;
    outlined consume of Result<_DataTable, Error>(v5, v7);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v9);
    v6 = *(v0 + 80);
    *(v0 + 88);
  }

  return v6;
}

uint64_t key path setter for MLWordTagger.ModelParameters.tokenColumnValidationData : MLWordTagger.ModelParameters(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = a1[1];
  v7;
  return a5(v6, v7);
}

uint64_t MLWordTagger.ModelParameters.labelColumnValidationData.setter(uint64_t a1, unint64_t a2)
{
  v19 = a2;
  v18 = a1;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  outlined init with copy of Any?(v2 + 32, &v15);
  if (!v16)
  {
    BUG();
  }

  outlined init with take of Any(&v15, &v13);
  swift_dynamicCast(&v13, &v13, &type metadata for Any + 8, v3, 7);
  if (swift_getEnumCaseMultiPayload(&v13, v3) == 1)
  {
    v9 = v13;
    v20 = BYTE8(v13);
    v17 = v14;
    *(&v15 + 1);
    *(v2 + 88);
    v10 = v18;
    if (!v19)
    {
      v10 = 0x6C6562616CLL;
    }

    v11 = 0xE500000000000000;
    if (v19)
    {
      v11 = v19;
    }

    *(v2 + 80) = 0;
    *&v13 = v9;
    BYTE8(v13) = v20;
    v14 = v17;
    *&v15 = v10;
    *(&v15 + 1) = v11;
    swift_storeEnumTagMultiPayload(&v13, v3, 1);
    return MLWordTagger.ModelParameters.validation.setter(&v13);
  }

  else
  {
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(&v13);
    *(v2 + 88);
    *(v2 + 80) = v18;
    result = v19;
    *(v2 + 88) = v19;
  }

  return result;
}

uint64_t (*MLWordTagger.ModelParameters.labelColumnValidationData.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = MLWordTagger.ModelParameters.labelColumnValidationData.getter(a1);
  a1[1] = v2;
  return MLWordTagger.ModelParameters.labelColumnValidationData.modify;
}

uint64_t MLWordTagger.ModelParameters.tokenColumnValidationData.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return a3(*a1, v5);
  }

  a1[1];
  a3(v4, v5);
  return v5, v5;
}

uint64_t (*MLWordTagger.ModelParameters.maxIterations.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 104);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  return MLWordTagger.ModelParameters.maxIterations.modify;
}

uint64_t MLWordTagger.ModelParameters.maxIterations.modify(uint64_t a1)
{
  result = *(a1 + 16);
  v2 = *(a1 + 8);
  *(result + 96) = *a1;
  *(result + 104) = v2;
  return result;
}

uint64_t key path setter for MLWordTagger.ModelParameters.validation : MLWordTagger.ModelParameters(uint64_t a1)
{
  v6[0] = v1;
  v2 = *(*(type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  outlined init with copy of MLWordTagger.ModelParameters.ValidationData(a1, v6);
  return MLWordTagger.ModelParameters.validation.setter(v6);
}

void (*MLWordTagger.ModelParameters.validation.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = malloc(0x58uLL);
  *a1 = v2;
  *(v2 + 8) = v1;
  v3 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v4 = *(*(v3 - 8) + 64);
  *(v2 + 9) = malloc(v4);
  v5 = malloc(v4);
  *(v2 + 10) = v5;
  outlined init with copy of Any?(v1 + 32, (v2 + 2));
  if (!*(v2 + 7))
  {
    BUG();
  }

  outlined init with take of Any(v2 + 2, v2);
  swift_dynamicCast(v5, v2, &type metadata for Any + 8, v3, 7);
  return MLWordTagger.ModelParameters.validation.modify;
}

void MLWordTagger.ModelParameters.validation.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  if (a2)
  {
    outlined init with copy of MLWordTagger.ModelParameters.ValidationData(v3, v5);
    MLWordTagger.ModelParameters.validation.setter(v5);
    outlined destroy of MLWordTagger.ModelParameters.ValidationData(v3);
  }

  else
  {
    MLWordTagger.ModelParameters.validation.setter(v3);
  }

  free(v3);
  free(v5);
  free(v2);
}

void MLWordTagger.ModelParameters.init(validationData:algorithm:language:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v12 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  v6 = *(*(v12 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  LOBYTE(v6) = *(a2 + 16);
  v13 = v5 + 32;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 32) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 1;
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 24) = a3;
  v14 = a3;
  static MLWordTagger.generateTextTable(_:tokenColumn:labelColumn:)(a1, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  a1;
  MLWordTagger.ModelParameters.ValidationData.init(_:tokenColumn:labelColumn:)(v11, 1954047348, 0xE400000000000000, 0x736C6562616CLL, 0xE600000000000000);
  *(v5 + 64) = 0;
  v11[3] = v12;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v11);
  outlined init with take of MLWordTagger.ModelParameters.ValidationData(&v10, boxed_opaque_existential_0);
  outlined assign with take of Any?(v11, v13);
  MLWordTagger.ModelParameters.tokenColumnValidationData.setter(1954047348, 0xE400000000000000);
  MLWordTagger.ModelParameters.labelColumnValidationData.setter(0x736C6562616CLL, 0xE600000000000000);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLWordTagger.ModelParameters.validateRevision()()
{
  v1 = v0[1];
  if (!*(v0 + 16))
  {
    if (v1)
    {
      return;
    }

    v1 = *v0;
  }

  if (!NLPSequenceModelIsRevisionSupported(v1))
  {
    _StringGuts.grow(_:)(29);
    0xE000000000000000;
    v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v2._object;
    String.append(_:)(v2);
    object;
    v4._object = "und in the model." + 0x8000000000000000;
    v4._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v4);
    v4._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v4._object, 0, 0);
    *v5 = 0x6E6F697369766552;
    *(v5 + 8) = 0xE900000000000020;
    *(v5 + 16) = 0;
    *(v5 + 32) = 0;
    *(v5 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v4._object);
  }
}

id MLWordTagger.ModelParameters.playgroundDescription.getter()
{
  v1 = v0;
  result = MLWordTagger.ModelParameters.description.getter();
  v1[3] = &type metadata for String;
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t outlined init with take of MLWordTagger.ModelParameters.ValidationData(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLWordTagger.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t sub_215856(uint64_t a1)
{
  v2 = v1;
  result = MLWordTagger.ModelParameters.tokenColumnValidationData.getter(a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_215886(uint64_t a1)
{
  v2 = v1;
  result = MLWordTagger.ModelParameters.labelColumnValidationData.getter(a1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_2158B6()
{
  v1 = v0;
  result = MLWordTagger.ModelParameters.maxIterations.getter();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t destroy for MLWordTagger.ModelParameters(uint64_t a1)
{
  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  *(a1 + 72);
  return *(a1 + 88);
}

uint64_t initializeWithCopy for MLWordTagger.ModelParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  v4 = *(a2 + 56);
  v3;
  if (v4)
  {
    *(a1 + 56) = v4;
    (**(v4 - 8))(a1 + 32, a2 + 32, v4);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6;
  v7;
  return a1;
}

uint64_t assignWithCopy for MLWordTagger.ModelParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  v4;

  v5 = *(a2 + 56);
  if (!*(a1 + 56))
  {
    if (v5)
    {
      *(a1 + 56) = v5;
      (**(v5 - 8))(a1 + 32, a2 + 32);
      goto LABEL_8;
    }

LABEL_7:
    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v6;
    goto LABEL_8;
  }

  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_0((a1 + 32), (a2 + 32));
LABEL_8:
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 72);
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  v7;
  v8;
  *(a1 + 80) = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a1 + 88);
  *(a1 + 88) = v9;
  v9;
  v10;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *__swift_memcpy105_8(void *a1, const void *a2)
{
  result = a1;
  qmemcpy(a1, a2, 0x69uLL);
  return result;
}

uint64_t assignWithTake for MLWordTagger.ModelParameters(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = *(a2 + 16);
  *a1 = *a2;
  v3 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 32));
  }

  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v4;
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v5;
  *(a1 + 80) = *(a2 + 80);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for MLWordTagger.ModelParameters(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 105))
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

void storeEnumTagSinglePayload for MLWordTagger.ModelParameters(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 88) = 0;
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 - 0x7FFFFFFF;
    *(a1 + 104) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(a1 + 105) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * a2;
    }
  }
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  v2[3] = v3;
  v4 = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = v4;
  v5 = (a2 + *a2);
  v6 = swift_task_alloc(a2[1]);
  v2[5] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TQ0_;
  return v5(v4);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TQ0_()
{
  v2 = *(*v1 + 40);
  *(*v1 + 48) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY1_()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload(v1, *(v0 + 24), 0);
  outlined init with take of DataFrame?(v1, v2, &demangling cache variable for type metadata for Result<MLStyleTransfer, Error>);
  *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC15MLStyleTransferV_Tt1g5TY2_()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 48);
  swift_storeEnumTagMultiPayload(v1, v2, 1);
  *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  v2[3] = v3;
  v4 = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = v4;
  v5 = (a2 + *a2);
  v6 = swift_task_alloc(a2[1]);
  v2[5] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TQ0_;
  return v5(v4);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TQ0_()
{
  v2 = *(*v1 + 40);
  *(*v1 + 48) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC18MLActionClassifierV_Tt1g5TY1_()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload(v1, *(v0 + 24), 0);
  outlined init with take of DataFrame?(v1, v2, &demangling cache variable for type metadata for Result<MLActionClassifier, Error>);
  *(v0 + 32);
  return (*(v0 + 8))();
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  v2[3] = v3;
  v4 = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[4] = v4;
  v5 = (a2 + *a2);
  v6 = swift_task_alloc(a2[1]);
  v2[5] = v6;
  *v6 = v2;
  v6[1] = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TQ0_;
  return v5(v4);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TQ0_()
{
  v2 = *(*v1 + 40);
  *(*v1 + 48) = v0;
  v2;
  if (v0)
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TY2_;
  }

  else
  {
    v3 = _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TY1_;
  }

  return swift_task_switch(v3, 0, 0);
}

uint64_t _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5TY1_()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  swift_storeEnumTagMultiPayload(v1, *(v0 + 24), 0);
  outlined init with take of DataFrame?(v1, v2, &demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  *(v0 + 32);
  return (*(v0 + 8))();
}

char MLObjectDetector.init(checkpoint:)(uint64_t a1)
{
  v34 = v2;
  v32 = v1;
  v33 = type metadata accessor for URL(0);
  v35 = *(v33 - 8);
  v3 = *(v35 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v31 = &v26;
  v6 = alloca(v3);
  v7 = alloca(v3);
  v36 = &v26;
  v8 = *(type metadata accessor for MLCheckpoint(0) - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v37 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, &v26, type metadata accessor for MLCheckpoint);
  v12 = *(v8 + 80);
  v13 = ~*(v8 + 80) & (v12 + 16);
  v14 = swift_allocObject(&unk_393C68, v13 + v9, v12 | 7);
  outlined init with take of MLClassifierMetrics(&v26, v14 + v13, type metadata accessor for MLCheckpoint);
  v15 = v34;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLObjectDetector.init(checkpoint:), v14);
  if (v15)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLCheckpoint);
  }

  else
  {
    v17 = v16;

    *v32 = v17;
    v18 = v36;
    URL.deletingLastPathComponent()(v14);
    v19 = v31;
    (*(v35 + 16))(v31, v18, v33);
    MLObjectDetector.PersistentParameters.init(sessionDirectory:)(v19);
    memcpy(__dst, __src, 0x81uLL);
    memcpy(v28, __src, sizeof(v28));
    v34 = type metadata accessor for MLObjectDetector(0);
    v21 = v32;
    v22 = v32 + *(v34 + 20);
    outlined retain of MLObjectDetector.PersistentParameters(__dst);
    MLObjectDetector.PersistentParameters.modelParameters.getter();
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLCheckpoint);
    memcpy(v27, v28, 0x81uLL);
    outlined release of MLObjectDetector.PersistentParameters(v27);
    (*(v35 + 8))(v36, v33);
    outlined release of MLObjectDetector.PersistentParameters(__dst);
    result = __dst[64];
    v23 = __dst[65];
    v24 = __dst[66];
    v25 = *(v34 + 24);
    *(v21 + v25) = __dst[64];
    *(v21 + v25 + 1) = v23;
    *(v21 + v25 + 2) = v24;
  }

  return result;
}

uint64_t sub_2162F9()
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

uint64_t partial apply for closure #1 in MLObjectDetector.init(checkpoint:)(uint64_t a1)
{
  v3 = type metadata accessor for MLCheckpoint(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(96);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLStyleTransfer.init(checkpoint:)(a1, v4);
}

uint64_t outlined retain of MLObjectDetector.PersistentParameters(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 24);
  outlined copy of Result<_DataTable, Error>(*a1, *(a1 + 8));
  outlined copy of MLDataTable?(v1, v4);
  v2;
  v3;
  return a1;
}

void *static MLObjectDetector.train(trainingData:annotationType:parameters:sessionParameters:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, __m128 a5)
{
  v6 = a2[1];
  v7 = a2[2];
  v12[0] = *a2;
  v12[1] = v6;
  v12[2] = v7;
  result = static MLObjectDetector.makeTrainingSession(trainingData:annotationType:parameters:sessionParameters:)(a1, v12, a3, a4, a5);
  if (!v5)
  {
    v9 = result;
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLObjectDetector>);
    v11 = swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLJob.init(_:)(v11, v9);
  }

  return result;
}

uint64_t static MLObjectDetector.makeTrainingSession(trainingData:annotationType:parameters:sessionParameters:)(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, __m128 a5)
{
  v56 = v5;
  v48 = a4;
  v52 = a3;
  v18 = a2;
  v6 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v37;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v43 = &v37;
  v11 = *(*(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v47 = &v37;
  v14 = type metadata accessor for MLObjectDetector.DataSource(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  LOBYTE(v54) = *a2;
  v57 = a2[1];
  LOBYTE(v18) = a2[2];
  v53 = a1;
  outlined init with copy of MLTrainingSessionParameters(a1, &v37, type metadata accessor for MLObjectDetector.DataSource);
  if (swift_getEnumCaseMultiPayload(&v37, v14) == 2)
  {
    LOBYTE(v55) = v18;
    v18 = v37;
    v19 = v39;
    v20 = v40;
    v21 = v42;
    v22 = v38;
    v38 = v37;
    LOBYTE(v39) = v22;
    v23 = v56;
    static MLObjectDetector.validateInput(trainingData:imageColumn:annotationColumn:)(&v38, v19, v40, v41, v42);
    v21;
    v20;
    outlined consume of Result<_DataTable, Error>(v18, v22);
    v56 = v23;
    if (v23)
    {
      return v18;
    }

    LOBYTE(v18) = v55;
  }

  else
  {
    outlined destroy of MLActivityClassifier.ModelParameters(&v37, type metadata accessor for MLObjectDetector.DataSource);
  }

  v24 = v56;
  static _ImageUtilities.getImageURLsAndObjectAnnotations(from:imageColumnName:labelColumnName:)(v53, 0, 0, 0, 0, a5);
  v56 = v24;
  v25 = v52;
  if (!v24)
  {
    v26 = v18;
    v27 = v38;
    v28 = v39;
    v50 = v38;
    v51 = v39;
    MLObjectDetector.ModelParameters.ValidationData.generateTables(trainingData:)(&v38, &v45, &v50, a5);
    v56 = 0;
    v59 = v28;
    v49 = v27;
    v29 = v38;
    v55 = v39;
    v53 = v45;
    v58 = v46;
    LOBYTE(v39) = v39 & 1;
    LOBYTE(v50) = v54;
    BYTE1(v50) = v57;
    BYTE2(v50) = v26;
    outlined init with copy of MLTrainingSessionParameters(v25, v47, type metadata accessor for MLObjectDetector.ModelParameters);
    v30 = v43;
    outlined init with copy of MLTrainingSessionParameters(v48, v43, type metadata accessor for MLTrainingSessionParameters);
    v18 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
    swift_allocObject(v18, *(v18 + 48), *(v18 + 52));
    v52 = v29;
    outlined copy of Result<_DataTable, Error>(v29, v55);
    v54 = v58;
    outlined copy of MLDataTable?(v53, v58);
    v31 = v56;
    v32 = ObjectDetectorTrainingSessionDelegate.init(trainingData:validationData:imageColumnName:annotationColumnName:annotationType:modelParameters:sessionParameters:)(&v38, &v45, 0x7461506567616D69, 0xE900000000000068, 0x697461746F6E6E61, 0xEA00000000006E6FLL, &v50, v47, v30);
    v56 = v31;
    if (v31)
    {
      outlined consume of Result<_DataTable, Error>(v52, v55);
      outlined consume of MLDataTable?(v53, v54);
      outlined consume of Result<_DataTable, Error>(v49, v59);
    }

    else
    {
      v41 = v18;
      v42 = &protocol witness table for ObjectDetectorTrainingSessionDelegate;
      v38 = v32;
      v34 = v44;
      outlined init with copy of MLTrainingSessionParameters(v48, v44, type metadata accessor for MLTrainingSessionParameters);
      v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>);
      swift_allocObject(v35, *(v35 + 48), *(v35 + 52));

      v36 = v56;
      v18 = specialized MLTrainingSession.init(delegate:parameters:modelType:)(&v38, v34, 17);
      outlined consume of Result<_DataTable, Error>(v52, v55);
      outlined consume of MLDataTable?(v53, v54);

      outlined consume of Result<_DataTable, Error>(v49, v59);
      v56 = v36;
    }
  }

  return v18;
}

void *static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLObjectDetector>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLObjectDetector.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ObjectDetectorTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ObjectDetectorTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 17);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v40 = a5;
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v42 = v30;
  v14 = *(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8);
  v15 = *(v14 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v18 = alloca(v15);
  v19 = alloca(v15);
  if (a2)
  {
    v30[0] = a1;
    swift_storeEnumTagMultiPayload(v30, v7, 1);
    swift_errorRetain(a1);
    v41(v30);
    return outlined destroy of Result<MLObjectDetector, Error>(v30);
  }

  else
  {
    v37 = v14;
    v36 = v15;
    v35 = v30;
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, __src);
    v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v22 = type metadata accessor for ObjectDetectorTrainingSessionDelegate(0);
    swift_dynamicCast(__dst, __src, v21, v22, 7);
    v38 = __dst[0];
    v23 = (__dst[0] + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters);
    memcpy(__dst, (__dst[0] + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters), 0x81uLL);
    memmove(__src, v23, 0x81uLL);
    if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(__src) == 1)
    {
      BUG();
    }

    memcpy(v32, __src, sizeof(v32));
    memcpy(v31, __dst, 0x81uLL);
    outlined retain of MLObjectDetector.PersistentParameters(v31);
    v39 = v30;
    MLObjectDetector.PersistentParameters.modelParameters.getter();
    memcpy(v30, v32, 0x81uLL);
    outlined release of MLObjectDetector.PersistentParameters(v30);
    v24 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v24);
    v25 = v35;
    outlined init with copy of MLTrainingSessionParameters(v30, v35, type metadata accessor for MLObjectDetector.ModelParameters);
    v26 = *(v37 + 80);
    v27 = ~*(v37 + 80) & (v26 + 40);
    v28 = (v36 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject(&unk_393C90, v28 + 16, v26 | 7);
    *(v29 + 16) = 0;
    *(v29 + 32) = v38;
    outlined init with take of MLClassifierMetrics(v25, v29 + v27, type metadata accessor for MLObjectDetector.ModelParameters);
    *(v29 + v28) = v41;
    *(v29 + v28 + 8) = v40;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(v42, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), v29);

    return outlined destroy of MLActivityClassifier.ModelParameters(v39, type metadata accessor for MLObjectDetector.ModelParameters);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a7;
  v7[4] = a6;
  v7[3] = a5;
  v7[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  v7[6] = swift_task_alloc((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)()
{
  v1 = swift_task_alloc(32);
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc(64);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5Tu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC16MLObjectDetectorV_Tt1g5Tu))(*(v0 + 48), &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), v1);
}

{
  v1 = *(*v0 + 56);
  v3 = *v0;
  *(*v0 + 64);
  v1;
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 32))(v2);
  outlined destroy of Result<MLObjectDetector, Error>(v2);
  v2;
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a3;
  v3[20] = a2;
  v3[19] = a1;
  v4 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v3[22] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v2 + OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_model);
  *(v0 + 184) = v4;
  outlined init with copy of MLTrainingSessionParameters(v3, v1, type metadata accessor for MLObjectDetector.ModelParameters);
  memcpy((v0 + 16), (OBJC_IVAR____TtC8CreateML37ObjectDetectorTrainingSessionDelegate_trainingParameters + v2), 0x81uLL);
  if (_s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(v0 + 16) == 1)
  {
    BUG();
  }

  v5 = *(v0 + 81);
  *(v0 + 145) = *(v0 + 80);
  *(v0 + 146) = v5;
  *(v0 + 147) = *(v0 + 82);
  v6 = type metadata accessor for _Model();
  swift_allocObject(v6, 48, 7);
  swift_retain_n(v4, 2);
  v7 = swift_task_alloc(80);
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  return _Model.init(impl:)(v4);
}

{
  v1 = *(v0 + 208);
  v9 = *(v0 + 147);
  v2 = *(v0 + 145);
  v10 = *(v0 + 146);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);

  *v5 = v1;
  v6 = type metadata accessor for MLObjectDetector(0);
  outlined init with take of MLClassifierMetrics(v4, v5 + *(v6 + 20), type metadata accessor for MLObjectDetector.ModelParameters);
  v7 = *(v6 + 24);
  *(v5 + v7) = v2;
  *(v5 + v7 + 1) = v10;
  *(v5 + v7 + 2) = v9;
  v4;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLObjectDetector.ModelParameters);
  v1;
  v3 = *(v0 + 200);
  return (*(v0 + 8))();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v5 = *(*v2 + 192);
  v4 = *v2;
  *(*v2 + 200) = v1;
  v5;
  if (v1)
  {
    v6 = closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  }

  else
  {
    *(v4 + 208) = a1;
    v6 = closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t outlined destroy of Result<MLObjectDetector, Error>(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLObjectDetector, Error>);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t _s8CreateML16MLObjectDetectorV20PersistentParametersVSgWOg(uint64_t a1)
{
  result = 0;
  if ((*(a1 + 40) & 0xFFFFFFFF00000001) == 0)
  {
    return (*(a1 + 40) >> 1) + 1;
  }

  return result;
}

uint64_t sub_2171D2()
{
  v1 = type metadata accessor for MLObjectDetector.ModelParameters(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 40);
  v22 = *(v2 + 64);
  swift_unknownObjectRelease(*(v0 + 16));
  v5 = *(v0 + 32);

  v6 = v4 + v0;
  v7 = type metadata accessor for MLObjectDetector.ModelParameters.ValidationData(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v4 + v0, v7);
  switch(EnumCaseMultiPayload)
  {
    case 3:
LABEL_7:
      v12 = type metadata accessor for DataFrame(0);
      (*(*(v12 - 8) + 8))(v4 + v0, v12);
      v24 = v1;
      v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (DataFrame, imageColumn: String, annotationColumn: String));
      *(v6 + *(v13 + 48) + 8);
      v14 = *(v13 + 64);
      v1 = v24;
      v11 = *(v6 + v14 + 8);
      goto LABEL_8;
    case 2:
LABEL_6:
      outlined consume of Result<_DataTable, Error>(*v6, *(v6 + 8));
      *(v6 + 24);
      v11 = *(v6 + 40);
LABEL_8:
      v11;
      break;
    case 1:
      v9 = type metadata accessor for MLObjectDetector.DataSource(0);
      switch(swift_getEnumCaseMultiPayload(v4 + v0, v9))
      {
        case 0u:
          v10 = type metadata accessor for URL(0);
          (*(*(v10 - 8) + 8))(v4 + v0, v10);
          break;
        case 1u:
          v25 = v1;
          v19 = type metadata accessor for URL(0);
          v23 = *(*(v19 - 8) + 8);
          v23(v4 + v0, v19);
          v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (at: URL, annotationFile: URL));
          v21 = v19;
          v1 = v25;
          v23(v6 + *(v20 + 48), v21);
          break;
        case 2u:
          goto LABEL_6;
        case 3u:
          goto LABEL_7;
        default:
          goto LABEL_9;
      }

      break;
  }

LABEL_9:
  v15 = *(v1 + 40);
  if (*(v6 + v15 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v15 + v6));
  }

  v16 = (v22 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + v16 + 8);

  return swift_deallocObject(v0, v16 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLObjectDetector.ModelParameters(0) - 8);
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
  return closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(a1, v6, v12, v13, v7, v8, v9);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(224);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in closure #1 in closure #1 in closure #1 in static MLObjectDetector.resume(_:)(a1, v3, v4);
}

uint64_t MLFewShotSoundClassifier.performValidationStep(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v38 = a2;
  v39 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v35 = v31;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = type metadata accessor for Tensor(0);
  v10 = *(v9 - 8);
  v37 = v9;
  v36 = v10;
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = alloca(v11);
  v15 = alloca(v11);
  v40 = v31;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v43 = v31;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v9);
  LODWORD(v45) = *(v3 + 24);
  v18 = v3 + *(type metadata accessor for MLFewShotSoundClassifier(0) + 40);
  v32 = v44;
  v33 = v45;
  _mm_storel_ps(v34, _mm_shuffle_ps(*(v3 + 28), *(v3 + 28), 225));
  *&v34[3] = v31;
  v19 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  v20 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
  v42 = valueWithGradient<A>(at:of:)(v31, v18, partial apply for closure #1 in MLFewShotSoundClassifier.performStep(on:), v31, v19, v20);
  v21 = v36;
  v22 = *(v36 + 16);
  v45 = v31;
  v23 = v37;
  v41 = v22;
  v22(v43, v31, v37);
  v24 = v23;
  v44 = v31;
  v25 = v35;
  outlined init with copy of Tensor?(v31, v35);
  v26 = v25;
  if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
  {
    BUG();
  }

  v27 = *(v21 + 8);
  v27(v45, v24);
  v28 = v40;
  (*(v21 + 32))(v40, v26, v24);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v44, &demangling cache variable for type metadata for Tensor?);
  v42;
  v29 = v43;
  v41(v39, v43, v24);
  softmax(_:alongAxis:)(v28, -1);
  v27(v28, v24);
  return (v27)(v29, v24);
}

uint64_t closure #1 in MLFewShotSoundClassifier.performStep(on:)(void (*a1)(_BYTE *, uint64_t), uint64_t a2, uint64_t a3, float a4, float a5, float a6)
{
  v218 = a3;
  v244 = a6;
  *&v240 = a5;
  *&v253 = a4;
  v242 = a1;
  v220 = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v219 = v217;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v236 = v217;
  v232 = type metadata accessor for TensorShape(0);
  v239 = *(v232 - 8);
  v13 = v239[8];
  v14 = alloca(v13);
  v15 = alloca(v13);
  v233 = v217;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LossReduction?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v251 = v217;
  v260 = type metadata accessor for Tensor(0);
  v250 = *(v260 - 8);
  v19 = *(v250 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v222 = v217;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v231 = v217;
  v24 = alloca(v19);
  v25 = alloca(v19);
  v234 = v217;
  v26 = alloca(v19);
  v27 = alloca(v19);
  v237 = v217;
  v28 = alloca(v19);
  v29 = alloca(v19);
  v247 = v217;
  v30 = alloca(v19);
  v31 = alloca(v19);
  v252 = v217;
  v32 = alloca(v19);
  v33 = alloca(v19);
  v258 = v217;
  v34 = alloca(v19);
  v35 = alloca(v19);
  v256 = v217;
  v36 = alloca(v19);
  v37 = alloca(v19);
  v259 = v217;
  v38 = alloca(v19);
  v39 = alloca(v19);
  v257 = v217;
  v40 = alloca(v19);
  v41 = alloca(v19);
  v255 = v217;
  v42 = alloca(v19);
  v43 = alloca(v19);
  v249 = v217;
  v44 = alloca(v19);
  v45 = alloca(v19);
  v245 = v217;
  v46 = alloca(v19);
  v47 = alloca(v19);
  v235 = v217;
  v48 = alloca(v19);
  v49 = alloca(v19);
  v246 = v217;
  v50 = alloca(v19);
  v51 = alloca(v19);
  v254 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier.Output(0);
  v52 = *(*(v254 - 8) + 64);
  v53 = alloca(v52);
  v54 = alloca(v52);
  v248 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataSample<Tensor, Tensor>);
  v228 = v217;
  v243 = a2;
  DataSample.features.getter(v248);
  v55 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(0);
  v56 = lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier();
  v229 = v217;
  Layer.callAsFunction(_:)(v217, v55, v56);
  v242 = *(v250 + 8);
  v242(v217, v260);
  v57 = &v217[*(v254 + 28)];
  v58 = v246;
  DataSample.labels.getter(v248);
  LODWORD(v55) = enum case for LossReduction.mean(_:);
  v59 = type metadata accessor for LossReduction(0);
  v60 = v251;
  (*(*(v59 - 8) + 104))(v251, v55, v59);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v59);
  softmaxCrossEntropy(logits:labels:labelSmoothing:axis:reduction:)(v57, v58, -1, v60, 0.0);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for LossReduction?);
  v61 = v58;
  v62 = v242;
  v242(v61, v260);
  v63 = v235;
  DataSample.labels.getter(v248);
  v64 = v245;
  v221 = v57;
  softmax(_:alongAxis:)(v57, -1);
  v65 = v255;
  v66 = v64;
  v67 = v63;
  static Tensor.* infix(_:_:)(v66, v63);
  Tensor.sum(alongAxes:)(&outlined read-only object #0 of closure #1 in MLFewShotSoundClassifier.performStep(on:));
  v68 = v260;
  v62(v65, v260);
  v69 = v256;
  Tensor.init(floatLiteral:)(1.0);
  v70 = v259;
  static Tensor.- infix(_:_:)(v69, v67);
  v62(v69, v68);
  v71 = v257;
  static Tensor.* infix(_:_:)(v245, v70);
  v62(v70, v68);
  v72 = v255;
  Tensor.max(alongAxes:)(&outlined read-only object #1 of closure #1 in MLFewShotSoundClassifier.performStep(on:));
  v62(v71, v68);
  v73 = v249;
  static Tensor.- infix(_:_:)(v249, v72);
  v62(v72, v68);
  v62(v73, v68);
  v62(v245, v68);
  v62(v235, v68);
  v74 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>);
  v75 = v250;
  v77 = *(v250 + 80);
  v78 = (v77 + 32) & ~*(v250 + 80);
  v251 = *(v250 + 72);
  v76 = v251;
  v79 = swift_allocObject(v74, v78 + 4 * v251, v77 | 7);
  v238 = v79;
  *(v79 + 16) = 4;
  *(v79 + 24) = 8;
  v80 = v79 + v78;
  DataSample.features.getter(v248);
  v81 = v80 + v76;
  v82 = *(v75 + 16);
  v83 = v229;
  v84 = v260;
  v82(v81, v229, v260);
  v82(v80 + 2 * v251, (v83 + *(v254 + 20)), v84);
  v223 = 3 * v251;
  v85 = v83 + *(v254 + 24);
  v248 = v82;
  v82(3 * v251 + v80, v85, v84);
  v86 = v238;
  v87 = gradient(at:of:)(v238, v246);
  v86;
  v254 = v87;
  if (!*(v87 + 16))
  {
    BUG();
  }

  v238 = v254 + v78;
  v248(v245, v254 + v78, v260);
  v230 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v88 = swift_allocObject(v230, 48, 7);
  v88[2] = 2;
  v88[3] = 4;
  v89 = v233;
  Tensor.shape.getter();
  v90 = TensorShape.subscript.getter(0);
  v91 = v239[1];
  v92 = v232;
  v93 = (v91)(v89, v232);
  v88[4] = v90;
  v88[5] = -1;
  TensorShape.init(_:)(v88, v93);
  v94 = v249;
  Tensor.reshaped(to:)(v89);
  v239 = v91;
  (v91)(v89, v92);
  v95 = alloca(24);
  v96 = alloca(32);
  v218 = v94;
  v97 = v255;
  v98 = v260;
  withoutGradient<A>(_:)(partial apply for closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:), v217, v260);
  v241 = 0;
  v99 = v259;
  static Tensor.+ infix<A>(_:_:)(v97, v225, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v246, v99);
  v100 = v242;
  v242(v99, v98);
  v250 = (Tensor.scalarType.getter)();
  v243 = v101;
  v102 = type metadata accessor for ComputeDevice(0);
  v103 = v236;
  __swift_storeEnumTagSinglePayload(v236, 1, 1, v102);
  Tensor.init(coercing:scalarType:on:)(v225, v250, v243, v103);
  v226 = &type metadata for Float;
  v227 = &protocol witness table for Float;
  *&v243 = (1.0 - *&v240) * *&v253;
  v225[0] = *&v243;
  v104 = (Tensor.scalarType.getter)();
  v106 = v105;
  v250 = v102;
  __swift_storeEnumTagSinglePayload(v103, 1, 1, v102);
  v107 = v256;
  Tensor.init(coercing:scalarType:on:)(v225, v104, v106, v103);
  v108 = v247;
  v109 = v257;
  static Tensor.- infix(_:_:)(v107, v257);
  v110 = v252;
  relu(_:)(v108);
  v111 = v260;
  v100(v108, v260);
  static Tensor.+ infix(_:_:)(v109, v110);
  v100(v110, v111);
  v112 = v237;
  static Tensor.- infix(_:_:)(v259, v258);
  relu(_:)(v112);
  v100(v112, v111);
  v113 = v259;
  static Tensor.- infix(_:_:)(v108, v259);
  v100(v108, v111);
  Tensor.mean()();
  v100(v110, v111);
  v100(v258, v111);
  v100(v256, v111);
  v100(v113, v111);
  v100(v257, v111);
  v100(v255, v111);
  v100(v249, v111);
  v100(v245, v111);
  if (*(v254 + 16) < 2uLL)
  {
    BUG();
  }

  v248(v249, v238 + v251, v260);
  v114 = swift_allocObject(v230, 48, 7);
  v114[2] = 2;
  v114[3] = 4;
  v115 = v233;
  Tensor.shape.getter();
  v116 = TensorShape.subscript.getter(0);
  v117 = v232;
  v118 = v239;
  v119 = (v239)(v115, v232);
  v114[4] = v116;
  v114[5] = -1;
  TensorShape.init(_:)(v114, v119);
  v120 = v255;
  Tensor.reshaped(to:)(v115);
  v118(v115, v117);
  v121 = alloca(24);
  v122 = alloca(32);
  v262 = v120;
  v123 = v257;
  v124 = v260;
  v125 = v241;
  withoutGradient<A>(_:)(closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply, v261, v260);
  v224 = v125;
  v126 = v256;
  static Tensor.+ infix<A>(_:_:)(v123, v225, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v246, v126);
  v127 = v126;
  v128 = v242;
  v242(v127, v124);
  v240 = (Tensor.scalarType.getter)();
  v241 = v129;
  v130 = v236;
  v131 = v250;
  __swift_storeEnumTagSinglePayload(v236, 1, 1, v250);
  Tensor.init(coercing:scalarType:on:)(v225, v240, v241, v130);
  v226 = &type metadata for Float;
  v227 = &protocol witness table for Float;
  LODWORD(v225[0]) = v243;
  v132 = (Tensor.scalarType.getter)();
  v134 = v133;
  __swift_storeEnumTagSinglePayload(v130, 1, 1, v131);
  v135 = v258;
  Tensor.init(coercing:scalarType:on:)(v225, v132, v134, v130);
  v136 = v237;
  v137 = v135;
  v138 = v259;
  static Tensor.- infix(_:_:)(v137, v259);
  v139 = v247;
  relu(_:)(v136);
  v140 = v260;
  v128(v136, v260);
  static Tensor.+ infix(_:_:)(v138, v139);
  v128(v139, v140);
  v141 = v234;
  v142 = v256;
  static Tensor.- infix(_:_:)(v256, v252);
  relu(_:)(v141);
  v143 = v141;
  v144 = v260;
  v128(v143, v260);
  static Tensor.- infix(_:_:)(v136, v142);
  v128(v136, v144);
  Tensor.mean()();
  v128(v139, v144);
  v128(v252, v144);
  v128(v258, v144);
  v128(v142, v144);
  v128(v259, v144);
  v128(v257, v144);
  v128(v255, v144);
  v128(v249, v144);
  if (*(v254 + 16) < 3uLL)
  {
    BUG();
  }

  v248(v255, v238 + 2 * v251, v260);
  v145 = swift_allocObject(v230, 48, 7);
  v145[2] = 2;
  v145[3] = 4;
  v146 = v233;
  Tensor.shape.getter();
  v147 = TensorShape.subscript.getter(0);
  v148 = v232;
  v149 = v239;
  v150 = (v239)(v146, v232);
  v145[4] = v147;
  v145[5] = -1;
  TensorShape.init(_:)(v145, v150);
  v151 = v257;
  Tensor.reshaped(to:)(v146);
  v149(v146, v148);
  v152 = alloca(24);
  v153 = alloca(32);
  v262 = v151;
  v154 = v259;
  v155 = v260;
  v156 = v224;
  withoutGradient<A>(_:)(closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply, v261, v260);
  v241 = v156;
  v157 = v258;
  static Tensor.+ infix<A>(_:_:)(v154, v225, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v246, v157);
  v158 = v157;
  v159 = v242;
  v242(v158, v155);
  v251 = (Tensor.scalarType.getter)();
  v240 = v160;
  v161 = v236;
  v162 = v250;
  __swift_storeEnumTagSinglePayload(v236, 1, 1, v250);
  Tensor.init(coercing:scalarType:on:)(v225, v251, v240, v161);
  v226 = &type metadata for Float;
  v227 = &protocol witness table for Float;
  LODWORD(v225[0]) = v243;
  v163 = (Tensor.scalarType.getter)();
  v251 = v164;
  __swift_storeEnumTagSinglePayload(v161, 1, 1, v162);
  v165 = v252;
  v166 = v234;
  Tensor.init(coercing:scalarType:on:)(v225, v163, v251, v161);
  v167 = v256;
  static Tensor.- infix(_:_:)(v165, v256);
  v168 = v237;
  relu(_:)(v166);
  v169 = v260;
  v159(v166, v260);
  static Tensor.+ infix(_:_:)(v167, v168);
  v159(v168, v169);
  v170 = v231;
  v171 = v258;
  static Tensor.- infix(_:_:)(v258, v247);
  relu(_:)(v170);
  v172 = v170;
  v173 = v260;
  v159(v172, v260);
  static Tensor.- infix(_:_:)(v166, v171);
  v159(v166, v173);
  Tensor.mean()();
  v159(v168, v173);
  v159(v247, v173);
  v159(v252, v173);
  v159(v171, v173);
  v159(v256, v173);
  v159(v259, v173);
  v159(v257, v173);
  v159(v255, v173);
  if (*(v254 + 16) < 4uLL)
  {
    BUG();
  }

  v248(v257, v223 + v238, v260);
  v254;
  v174 = swift_allocObject(v230, 48, 7);
  v174[2] = 2;
  v174[3] = 4;
  v175 = v233;
  Tensor.shape.getter();
  v176 = TensorShape.subscript.getter(0);
  v177 = v232;
  v178 = v239;
  v179 = (v239)(v175, v232);
  v174[4] = v176;
  v174[5] = -1;
  TensorShape.init(_:)(v174, v179);
  v180 = v259;
  Tensor.reshaped(to:)(v175);
  v178(v175, v177);
  v181 = alloca(24);
  v182 = alloca(32);
  v262 = v180;
  v183 = v256;
  v184 = v260;
  withoutGradient<A>(_:)(closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply, v261, v260);
  v185 = v252;
  static Tensor.+ infix<A>(_:_:)(v183, v225, &type metadata for Float, &protocol witness table for Float);
  static Tensor./ infix(_:_:)(v246, v185);
  v186 = v185;
  v187 = v242;
  v242(v186, v184);
  v253 = (Tensor.scalarType.getter)();
  v254 = v188;
  v189 = v236;
  __swift_storeEnumTagSinglePayload(v236, 1, 1, v250);
  Tensor.init(coercing:scalarType:on:)(v225, v253, v254, v189);
  v190 = (Tensor.scalarType.getter)();
  v253 = v191;
  __swift_storeEnumTagSinglePayload(v189, 1, 1, v250);
  v192 = v247;
  Tensor.init(coercing:scalarType:on:)(v225, v190, v253, v189);
  v193 = v231;
  v194 = v258;
  static Tensor.- infix(_:_:)(v192, v258);
  v195 = v234;
  relu(_:)(v193);
  v187(v193, v184);
  v196 = v237;
  static Tensor.+ infix(_:_:)(v194, v195);
  v197 = v195;
  v198 = v187;
  v187(v197, v184);
  v199 = v222;
  v200 = v252;
  static Tensor.- infix(_:_:)(v252, v196);
  v201 = v231;
  relu(_:)(v199);
  v198(v199, v184);
  v202 = v234;
  static Tensor.- infix(_:_:)(v201, v200);
  v203 = v198;
  v198(v201, v184);
  Tensor.mean()();
  v198(v202, v184);
  v198(v237, v184);
  v198(v247, v184);
  v198(v252, v184);
  v198(v258, v184);
  v198(v256, v184);
  v198(v259, v184);
  v204 = v257;
  v205 = v257;
  v198(v257, v184);
  v226 = &type metadata for Double;
  v227 = &protocol witness table for Double;
  *v225 = 0x3FD0000000000000;
  v247 = Tensor.scalarType.getter(v205, v184, v206, v225);
  v253 = v207;
  v208 = v236;
  __swift_storeEnumTagSinglePayload(v236, 1, 1, v250);
  v209 = v204;
  Tensor.init(coercing:scalarType:on:)(v225, v247, v253, v208);
  v210 = v252;
  static Tensor.+ infix(_:_:)(v235, v245);
  v211 = v258;
  static Tensor.+ infix(_:_:)(v210, v249);
  v203(v210, v184);
  v212 = v256;
  static Tensor.+ infix(_:_:)(v211, v255);
  v203(v211, v184);
  v213 = v259;
  static Tensor.* infix(_:_:)(v212, v209);
  v203(v212, v184);
  v214 = v228;
  static Tensor.+ infix(_:_:)(v228, v213);
  v203(v213, v184);
  v203(v257, v184);
  v203(v255, v184);
  v203(v249, v184);
  v203(v245, v184);
  v203(v235, v184);
  v203(v246, v184);
  v203(v214, v184);
  v215 = v219;
  v248(v219, v221, v184);
  outlined destroy of MLFewShotSoundClassifier.TemporalClassifier.Output(v229);
  __swift_storeEnumTagSinglePayload(v215, 0, 1, v184);
  return outlined assign with take of Tensor?(v215, v218);
}

uint64_t lazy protocol witness table accessor for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier()
{
  result = lazy protocol witness table cache variable for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier;
  if (!lazy protocol witness table cache variable for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier)
  {
    v1 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLFewShotSoundClassifier.TemporalClassifier, v1);
    lazy protocol witness table cache variable for type MLFewShotSoundClassifier.TemporalClassifier and conformance MLFewShotSoundClassifier.TemporalClassifier = result;
  }

  return result;
}

uint64_t closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)()
{
  v9[2] = v0;
  v1 = type metadata accessor for Tensor(0);
  v10 = *(v1 - 8);
  v2 = *(v10 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = alloca(v2);
  v6 = alloca(v2);
  Tensor.squared()();
  Tensor.sum(alongAxes:)(&outlined read-only object #0 of closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:));
  v7 = *(v10 + 8);
  v7(v9, v1);
  sqrt(_:)(v9);
  return (v7)(v9, v1);
}

uint64_t outlined destroy of MLFewShotSoundClassifier.TemporalClassifier.Output(uint64_t a1)
{
  v1 = type metadata accessor for MLFewShotSoundClassifier.TemporalClassifier.Output(0);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)partial apply()
{
  return partial apply for closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)();
}

{
  return partial apply for closure #1 in static MLFewShotSoundClassifier.localLoss(probabilities:gradients:gamma:alpha:epsilon:)();
}

void one-time initialization function for tmpPath()
{
  v0 = NSTemporaryDirectory();
  v1 = v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)(v1);
  v4 = v3;

  tmpPath._countAndFlagsBits = v2;
  tmpPath._object = v4;
}

uint64_t static BoostedTreeConfiguration.firstIncompatibility(_:_:)()
{
  v23 = v0;
  v1 = BoostedTreeConfiguration.maximumIterations.getter();
  if (v1 != BoostedTreeConfiguration.maximumIterations.getter())
  {
    BoostedTreeConfiguration.maximumIterations.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v7 = v10;
    BoostedTreeConfiguration.maximumIterations.getter();
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = 0xEF736E6F69746172;
    v4 = 0x657469202E78614DLL;
    goto LABEL_16;
  }

  v2 = BoostedTreeConfiguration.maximumDepth.getter();
  if (v2 != BoostedTreeConfiguration.maximumDepth.getter())
  {
    BoostedTreeConfiguration.maximumDepth.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v7 = v11;
    BoostedTreeConfiguration.maximumDepth.getter();
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = 0xEA00000000006874;
    v4 = 0x706564202E78614DLL;
    goto LABEL_16;
  }

  v24 = BoostedTreeConfiguration.minimumLossReduction.getter();
  if (v24 != BoostedTreeConfiguration.minimumLossReduction.getter())
  {
    v5 = "Algorithm Type: " + 0x8000000000000000;
    v12 = BoostedTreeConfiguration.minimumLossReduction.getter();
    v6 = Double.description.getter(v12);
    v7 = v13;
    v14 = BoostedTreeConfiguration.minimumLossReduction.getter();
    result = Double.description.getter(v14);
    v4 = 0xD000000000000013;
    goto LABEL_16;
  }

  v25 = BoostedTreeConfiguration.minimumChildWeight.getter();
  if (v25 != BoostedTreeConfiguration.minimumChildWeight.getter())
  {
    v4 = 0xD000000000000011;
    v5 = "Min. loss reduction" + 0x8000000000000000;
    v15 = BoostedTreeConfiguration.minimumChildWeight.getter();
    v6 = Double.description.getter(v15);
    v7 = v16;
    v17 = BoostedTreeConfiguration.minimumChildWeight.getter();
LABEL_13:
    result = Double.description.getter(v17);
    goto LABEL_16;
  }

  v3 = BoostedTreeConfiguration.randomSeed.getter();
  if (v3 != BoostedTreeConfiguration.randomSeed.getter())
  {
    BoostedTreeConfiguration.randomSeed.getter();
    v6 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v7 = v18;
    BoostedTreeConfiguration.randomSeed.getter();
    result = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v5 = 0xEB00000000646565;
    v4 = 0x73206D6F646E6152;
    goto LABEL_16;
  }

  v26 = BoostedTreeConfiguration.rowSubsample.getter();
  if (v26 != BoostedTreeConfiguration.rowSubsample.getter())
  {
    v19 = BoostedTreeConfiguration.rowSubsample.getter();
    v6 = Double.description.getter(v19);
    v7 = v20;
    v21 = BoostedTreeConfiguration.rowSubsample.getter();
    result = Double.description.getter(v21);
    v5 = 0xEE00656C706D6173;
    v4 = 0x2062757320776F52;
    goto LABEL_16;
  }

  v27 = (BoostedTreeConfiguration.columnSubsample.getter)();
  if (v27 != (BoostedTreeConfiguration.columnSubsample.getter)())
  {
    v4 = 0xD000000000000011;
    v5 = "Min. child weight" + 0x8000000000000000;
    v17 = (BoostedTreeConfiguration.columnSubsample.getter)();
    v6 = Double.description.getter(v17);
    v7 = v22;
    BoostedTreeConfiguration.columnSubsample.getter();
    goto LABEL_13;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  result = 0;
  v9 = 0;
LABEL_16:
  *v23 = v4;
  v23[1] = v5;
  v23[2] = v6;
  v23[3] = v7;
  v23[4] = result;
  v23[5] = v9;
  return result;
}

uint64_t MLSupportVectorClassifier.predictions(from:)(uint64_t a1)
{
  v22 = v2;
  v23 = a1;
  v17[1] = v1;
  v21 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v3 = *(v21 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = v17;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v20 = v6;
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v17;
  (*(v7 + 16))(v17, v23, v6);
  outlined init with copy of MLTrainingSessionParameters(v22, v17, type metadata accessor for MLSupportVectorClassifier);
  v11 = *(v7 + 80);
  v12 = ~*(v7 + 80) & (v11 + 16);
  v13 = *(v21 + 80);
  v14 = ~v13 & (v12 + v13 + v8);
  v15 = swift_allocObject(&unk_393CB8, v14 + v3, v13 | v11 | 7);
  (*(v7 + 32))(v15 + v12, v19, v20);
  outlined init with take of MLClassifierMetrics(v18, v15 + v14, type metadata accessor for MLSupportVectorClassifier);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.predictions(from:), v15);
}

uint64_t type metadata accessor for MLSupportVectorClassifier(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLSupportVectorClassifier;
  if (!type metadata singleton initialization cache for MLSupportVectorClassifier)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLSupportVectorClassifier);
  }

  return result;
}

uint64_t MLSupportVectorClassifier.predictions(from:)(uint64_t a1, __m128 a2)
{
  v29 = v3;
  v32 = v4;
  v36 = v2;
  v31 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v30 = *(v31 + 64);
  v5 = alloca(v30);
  v6 = alloca(v30);
  v37 = &v26;
  v39 = type metadata accessor for DataFrame(0);
  v35 = *(v39 - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v34 = &v26;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v12 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v33 = &v26;
  v15 = *(a1 + 8);
  v27 = *a1;
  v28 = v15;
  outlined copy of Result<_DataTable, Error>(v27, v15);
  DataFrame.init(_:)(&v27);
  v38 = &v26;
  v16 = v35;
  (*(v35 + 16))(&v26, &v26, v39);
  outlined init with copy of MLTrainingSessionParameters(v32, v37, type metadata accessor for MLSupportVectorClassifier);
  v17 = *(v16 + 80);
  v18 = ~*(v16 + 80) & (v17 + 16);
  v19 = *(v31 + 80);
  v20 = ~v19 & (v18 + v19 + v7);
  v21 = swift_allocObject(&unk_393CE0, v20 + v30, v19 | v17 | 7);
  (*(v16 + 32))(v21 + v18, v34, v39);
  v22 = v21 + v20;
  v23 = v33;
  outlined init with take of MLClassifierMetrics(v37, v22, type metadata accessor for MLSupportVectorClassifier);
  v24 = v29;
  specialized blockAwait<A>(_:)(&closure #1 in MLSupportVectorClassifier.predictions(from:)partial apply, v21);

  if (v24)
  {
    return (*(v16 + 8))(v38, v39);
  }

  *a2.i64 = (*(v16 + 8))(v38, v39);
  return MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v23, 1, a2);
}

uint64_t MLSupportVectorClassifier.evaluation(on:)(uint64_t a1)
{
  v21 = v2;
  v22 = a1;
  v17[1] = v1;
  v20 = *(type metadata accessor for MLSupportVectorClassifier(0) - 8);
  v3 = *(v20 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v18 = v17;
  v6 = type metadata accessor for DataFrame(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v19 = v17;
  (*(v7 + 16))(v17, v22, v6);
  outlined init with copy of MLTrainingSessionParameters(v21, v17, type metadata accessor for MLSupportVectorClassifier);
  v11 = *(v7 + 80);
  v12 = ~*(v7 + 80) & (v11 + 16);
  v13 = *(v20 + 80);
  v14 = ~v13 & (v12 + v13 + v8);
  v15 = swift_allocObject(&unk_393D08, v14 + v3, v13 | v11 | 7);
  (*(v7 + 32))(v15 + v12, v19, v6);
  outlined init with take of MLClassifierMetrics(v18, v15 + v14, type metadata accessor for MLSupportVectorClassifier);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.evaluation(on:), v15);
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
  MLSupportVectorClassifier.evaluation(on:)(&v9);
  return (*(v3 + 8))(&v9, v2);
}

uint64_t MLSupportVectorClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v47 = v2;
  v40 = v3;
  v46 = a2;
  v45 = a1;
  v4 = *(*(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v41 = v36;
  v42 = type metadata accessor for Model(0);
  v7 = *(v42 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v39 = v36;
  v11 = type metadata accessor for URL(0);
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  qmemcpy(v38, v46, sizeof(v38));
  v16 = v47;
  result = static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(v45, 0x56537261656E694CLL, 0xE90000000000004DLL, 0x6C65646F6D6C6DLL, 0xE700000000000000);
  if (!v16)
  {
    v47 = 0;
    v44 = v7;
    v43 = v36;
    v46 = v11;
    v45 = v12;
    v18 = v41;
    outlined init with copy of MLTrainingSessionParameters(v40, v41, type metadata accessor for MLSupportVectorClassifier.Model);
    v19 = *&v38[8];
    if (*&v38[8])
    {
      v20 = *v38;
      v21 = *&v38[16];
      v22 = *&v38[24];
      v23 = *&v38[32];
      v24 = *&v38[48];
      v25 = *&v38[56];
      v26 = *&v38[64];
    }

    else
    {
      v27 = NSFullUserName();
      v28 = v27;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)(v28);
      v19 = v29;

      v22 = "RandomForestRegressor" + 0x8000000000000000;
      *v36 = v20;
      *&v36[8] = v19;
      *&v36[16] = 0xD000000000000033;
      *&v36[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v36[32] = 0;
      *&v36[48] = 49;
      *&v36[56] = 0xE100000000000000;
      *&v36[64] = 0;
      *v37 = v20;
      *&v37[8] = v19;
      *&v37[16] = 0xD000000000000033;
      *&v37[24] = "RandomForestRegressor" + 0x8000000000000000;
      *&v37[32] = 0;
      *&v37[48] = 49;
      *&v37[56] = 0xE100000000000000;
      *&v37[64] = 0;
      outlined retain of MLModelMetadata(v36);
      outlined release of MLModelMetadata(v37, v18);
      v25 = 0xE100000000000000;
      v24 = 49;
      v23 = 0;
      v21 = 0xD000000000000033;
      v26 = 0;
    }

    *v37 = v20;
    *&v37[8] = v19;
    *&v37[16] = v21;
    *&v37[24] = v22;
    *&v37[32] = v23;
    *&v37[48] = v24;
    *&v37[56] = v25;
    *&v37[64] = v26;
    outlined retain of MLModelMetadata?(v38);
    v30 = v39;
    v31 = v41;
    v32 = v47;
    MLSupportVectorClassifier.Model.export(metadata:)(v37);
    qmemcpy(v36, v37, sizeof(v36));
    outlined release of MLModelMetadata(v36, v38);
    outlined destroy of MLActivityClassifier.ModelParameters(v31, type metadata accessor for MLSupportVectorClassifier.Model);
    if (v32)
    {
      return (*(v45 + 8))(v43, v46);
    }

    else
    {
      v33 = v43;
      Model.write(to:)(v43);
      v47 = 0;
      v34 = v45;
      v35 = v46;
      (*(v44 + 8))(v30, v42);
      return (*(v34 + 8))(v33, v35);
    }
  }

  return result;
}

uint64_t MLSupportVectorClassifier.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
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
  MLSupportVectorClassifier.write(to:metadata:)(v17, v17);
  return (*(v25 + 8))(v17, v10, v15);
}

unint64_t MLSupportVectorClassifier.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29._object = type metadata accessor for MLClassifierMetrics.Contents(0);
  v4 = *(*(v29._object - 1) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = type metadata accessor for MLSupportVectorClassifier(0);
  v8 = v2 + v7[8];
  v29._countAndFlagsBits = MLSupportVectorClassifier.ModelParameters.description.getter(0, a2);
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
  v27 = 0xD000000000000024;
  v28 = "rtVectorClassifier.swift" + 0x8000000000000000;
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

NSAttributedString MLSupportVectorClassifier.playgroundDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for NSAttributedString();
  v5._countAndFlagsBits = MLSupportVectorClassifier.debugDescription.getter(0, a2);
  v5._object = v6;
  result.super.isa = NSAttributedString.__allocating_init(string:)(v5).super.isa;
  v3[3].super.isa = v4;
  v3->super.isa = result.super.isa;
  return result;
}

void MLSupportVectorClassifier.model.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSupportVectorClassifier(0) + 20);

  *(v1 + v2) = a1;
}

uint64_t MLSupportVectorClassifier.targetColumn.getter()
{
  v1 = *(type metadata accessor for MLSupportVectorClassifier(0) + 24);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLSupportVectorClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLSupportVectorClassifier(0) + 24);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLSupportVectorClassifier.featureColumns.setter(uint64_t a1)
{
  v2 = *(type metadata accessor for MLSupportVectorClassifier(0) + 28);
  result = *(v1 + v2);
  *(v1 + v2) = a1;
  return result;
}

uint64_t MLSupportVectorClassifier.modelParameters.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  return outlined init with copy of MLSupportVectorClassifier.ModelParameters(v1 + *(v3 + 32), v2);
}

uint64_t MLSupportVectorClassifier.trainingMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 36), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSupportVectorClassifier.validationMetrics.getter()
{
  v2 = v0;
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  return outlined init with copy of MLTrainingSessionParameters(v1 + *(v3 + 40), v2, type metadata accessor for MLClassifierMetrics);
}

uint64_t MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(void (*a1)(uint64_t *, uint64_t, uint64_t), void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v110 = v6;
  v125 = a5;
  v115 = a4;
  v114 = a3;
  v118 = a2;
  v122 = a1;
  v7 = v5;
  v106 = v5;
  v119 = type metadata accessor for DataFrame(0);
  v123 = *(v119 - 8);
  v8 = *(v123 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v104 = v92;
  v101 = v8;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v113 = v92;
  v13 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v100 = v92;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v96 = v92;
  v95 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8);
  v18 = *(v95 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v112 = v92;
  v111 = v18;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v124 = v92;
  v23 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v102 = v92;
  v26 = *(*(type metadata accessor for MLSupportVectorClassifier.Classifier(0) - 8) + 64);
  v27 = alloca(v26);
  v28 = alloca(v26);
  v116 = v92;
  v117 = type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData(0);
  v29 = *(*(v117 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v121 = v92;
  v107 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v99 = *(v107 - 8);
  v32 = *(v99 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v105 = v92;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v97 = v92;
  v98 = v32;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v126 = v92;
  v108 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v120 = *(v108 - 8);
  v39 = v120[8];
  v40 = alloca(v39);
  v41 = alloca(v39);
  v42 = type metadata accessor for MLSupportVectorClassifier(0);
  v109 = *(v42 + 36);
  v43 = v7 + v109;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v44 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v45 = *(v44 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v92);
  v46 = *(v44 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v92);
  (v120[1])(v92, v108);
  v47 = v106;
  *(v106 + v109) = 0;
  v120 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v108 = v43;
  swift_storeEnumTagMultiPayload(v43, v120, 1);
  v103 = v42;
  v48 = *(v42 + 40);
  v49 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v50 = swift_allocError(&type metadata for MLCreateError, v49, 0, 0);
  *v51 = 0xD0000000000000C0;
  *(v51 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v51 + 16) = 0;
  *(v51 + 32) = 0;
  *(v51 + 48) = 0;
  *(v47 + v48) = v50;
  v109 = v47 + v48;
  swift_storeEnumTagMultiPayload(v47 + v48, v120, 2);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v125 + 8, &v93, &demangling cache variable for type metadata for Any?);
  if (!v94)
  {
    BUG();
  }

  v52 = v126;
  v53 = (v126 + *(v107 + 48));
  outlined init with take of Any(&v93, v92);
  swift_dynamicCast(v121, v92, &type metadata for Any + 8, v117, 7);
  v54 = v52;
  v55 = v122;
  v56 = v110;
  MLSupportVectorClassifier.ModelParameters.ValidationData.generateDataFrames(trainingData:)(v54, v53, v122);
  if (v56)
  {
    v114;
    v115;
    outlined destroy of MLSupportVectorClassifier.ModelParameters(v125);
    (*(v123 + 8))(v55, v119);
    outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
LABEL_5:
    outlined destroy of MLActivityClassifier.ModelParameters(v108, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v109, type metadata accessor for MLClassifierMetrics);
  }

  v120 = v53;
  outlined destroy of MLActivityClassifier.ModelParameters(v121, type metadata accessor for MLSupportVectorClassifier.ModelParameters.ValidationData);
  v57 = v114;
  v58 = v115;
  v59 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(v126, v118, v114, v115);
  v58;
  DataFrame.subscript.getter(v118, v57);
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(v125, v92);
  v57;
  v59;
  MLSupportVectorClassifier.Classifier.init(labelsColumn:targetColumnName:featureColumnNames:parameters:)(v102, v118, v57, v59, v92);
  v121 = v59;
  MLSupportVectorClassifier.Classifier.fitted(to:validateOn:eventHandler:)(v126, v120, 0, 0);
  v61 = v103;
  v62 = *(v103 + 24);
  v63 = v106;
  *(v106 + v62) = v118;
  *(v63 + v62 + 8) = v57;
  v120 = (v63 + *(v61 + 32));
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(v125, v120);
  *(v63 + *(v61 + 28)) = v121;
  v64 = v112;
  outlined init with copy of MLTrainingSessionParameters(v124, v112, type metadata accessor for MLSupportVectorClassifier.Model);
  v65 = *(v95 + 80);
  v66 = ~*(v95 + 80) & (v65 + 16);
  v111 += v66;
  v110 = v65 | 7;
  v67 = swift_allocObject(&unk_393D30, v111, v65 | 7);
  v115 = v66;
  outlined init with take of MLClassifierMetrics(v64, v67 + v66, type metadata accessor for MLSupportVectorClassifier.Model);
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v67);
  v69 = v68;
  v117 = 0;

  v70 = *(v103 + 20);
  v118 = v69;
  v71 = v106;
  *(v106 + v70) = v69;
  v72 = v124;
  outlined init with copy of MLTrainingSessionParameters(v124, v71, type metadata accessor for MLSupportVectorClassifier.Model);
  v73 = v112;
  outlined init with copy of MLTrainingSessionParameters(v72, v112, type metadata accessor for MLSupportVectorClassifier.Model);
  v74 = v97;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, v97, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v75 = *(v99 + 80);
  v76 = ~v75 & (v111 + v75);
  v77 = swift_allocObject(&unk_393D58, v76 + v98, v110 | v75);
  outlined init with take of MLClassifierMetrics(v73, v77 + v115, type metadata accessor for MLSupportVectorClassifier.Model);
  outlined init with take of (training: DataFrame, validation: DataFrame?)(v74, v77 + v76);
  v78 = v96;
  v79 = v117;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v77);
  if (v79)
  {

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v125);
    (*(v123 + 8))(v122, v119);
    v80 = v114;
    v81 = v126;
    outlined destroy of MLActivityClassifier.ModelParameters(v124, type metadata accessor for MLSupportVectorClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLSupportVectorClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v81, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of MLActivityClassifier.ModelParameters(v106, type metadata accessor for MLSupportVectorClassifier.Model);
    v121;
    v80;

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v120);
    goto LABEL_5;
  }

  outlined assign with take of MLClassifierMetrics(v78, v108);
  v82 = v105;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, v105, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v83 = v82 + *(v107 + 48);
  v84 = v119;
  if (__swift_getEnumTagSinglePayload(v83, 1, v119) == 1)
  {
    outlined destroy of MLSupportVectorClassifier.ModelParameters(v125);
    v85 = *(v123 + 8);
    v85(v122, v84);
    outlined destroy of MLActivityClassifier.ModelParameters(v124, type metadata accessor for MLSupportVectorClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLSupportVectorClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v83, &demangling cache variable for type metadata for DataFrame?);
    return (v85)(v105, v84);
  }

  else
  {
    v86 = v123;
    v107 = *(v123 + 32);
    (v107)(v113, v83, v84);
    v117 = *(v86 + 8);
    (v117)(v105, v84);
    outlined init with copy of MLTrainingSessionParameters(v124, v112, type metadata accessor for MLSupportVectorClassifier.Model);
    (*(v86 + 16))(v104, v113, v84);
    v87 = *(v86 + 80);
    v88 = ~v87 & (v87 + v111);
    v89 = swift_allocObject(&unk_393D80, v88 + v101, v87 | v110);
    outlined init with take of MLClassifierMetrics(v112, v89 + v115, type metadata accessor for MLSupportVectorClassifier.Model);
    (v107)(v89 + v88, v104, v84);
    v90 = v100;
    specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:), v89);

    outlined destroy of MLSupportVectorClassifier.ModelParameters(v125);
    v91 = v117;
    (v117)(v122, v84);
    v91(v113, v84);
    outlined destroy of MLActivityClassifier.ModelParameters(v124, type metadata accessor for MLSupportVectorClassifier.Model);
    outlined destroy of MLActivityClassifier.ModelParameters(v116, type metadata accessor for MLSupportVectorClassifier.Classifier);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v126, &demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
    return outlined assign with take of MLClassifierMetrics(v90, v109);
  }
}

uint64_t closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc(432);
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return MLSupportVectorClassifier.Model.exportAsCoreMLModel()();
}

uint64_t closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = type metadata accessor for AnyClassificationMetrics(0);
  v6 = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3] = v6;
  v7 = swift_task_alloc(96);
  v3[4] = v7;
  *v7 = v3;
  v7[1] = closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  return MLSupportVectorClassifier.Model.computeMetrics(on:)(v6, a3);
}

uint64_t closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  else
  {
    v3 = closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  outlined init with take of MLClassifierMetrics(v2, v1, type metadata accessor for AnyClassificationMetrics);
  v3 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v1, v3, 0);
  v2;
  return (*(v0 + 8))();
}

{
  *(v0 + 24);
  v1 = *(v0 + 40);
  return (*(v0 + 8))();
}

uint64_t closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v5 = type metadata accessor for AnyClassificationMetrics(0);
  v6 = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[3] = v6;
  v7 = swift_task_alloc(96);
  v3[4] = v7;
  *v7 = v3;
  v7[1] = closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  return MLSupportVectorClassifier.Model.computeMetrics(on:)(v6, a3);
}

uint64_t closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  else
  {
    v3 = closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  return closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)();
}

{
  return closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)();
}

uint64_t MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
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
  outlined init with copy of MLSupportVectorClassifier.ModelParameters(a5, &v11);
  MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(&v11, v15, v14, v13, &v11);
  return outlined destroy of MLSupportVectorClassifier.ModelParameters(a5);
}

uint64_t closure #1 in MLSupportVectorClassifier.predictions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  return swift_task_switch(closure #1 in MLSupportVectorClassifier.predictions(from:), 0, 0);
}

uint64_t closure #1 in MLSupportVectorClassifier.predictions(from:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  DataFrame.validateContainsColumns(_:context:)(*(v2 + *(v3 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v4)
  {
    return (*(v0 + 8))();
  }

  v6 = swift_task_alloc(80);
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = closure #1 in MLSupportVectorClassifier.predictions(from:);
  v7 = *(v0 + 32);
  return MLSupportVectorClassifier.Model.predictions(from:)(*(v0 + 16), *(v0 + 24));
}

{
  v1 = *(*v0 + 40);
  v2 = *v0;
  v1;
  return (*(v2 + 8))();
}

uint64_t closure #1 in MLSupportVectorClassifier.predictions(from:)partial apply(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.predictions(from:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t closure #1 in MLSupportVectorClassifier.evaluation(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v4 = type metadata accessor for AnyClassificationMetrics(0);
  v3[11] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in MLSupportVectorClassifier.evaluation(on:), 0, 0);
}

uint64_t closure #1 in MLSupportVectorClassifier.evaluation(on:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = type metadata accessor for MLSupportVectorClassifier(0);
  DataFrame.validateContainsColumns(_:context:)(*(v2 + *(v3 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
  if (v4)
  {
    goto LABEL_3;
  }

  v15 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v6, v0 + 16);
  inited[2] = 1;
  inited[3] = 2;
  v8 = *(v3 + 24);
  v9 = *(v5 + v8 + 8);
  inited[4] = *(v5 + v8);
  inited[5] = v9;
  v9;
  DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (v4)
  {
LABEL_3:
    v10 = *(v0 + 64);
    *v10 = v4;
    v11 = type metadata accessor for MLClassifierMetrics.Contents(0);
    swift_storeEnumTagMultiPayload(v10, v11, 2);
    *(v0 + 88);
    return (*(v0 + 8))();
  }

  else
  {
    v13 = swift_task_alloc(96);
    *(v0 + 96) = v13;
    *v13 = v0;
    v13[1] = closure #1 in MLSupportVectorClassifier.evaluation(on:);
    v14 = *(v0 + 80);
    return MLSupportVectorClassifier.Model.computeMetrics(on:)(*(v0 + 88), *(v0 + 72));
  }
}

{
  v2 = *(*v1 + 96);
  *(*v1 + 104) = v0;
  v2;
  if (v0)
  {
    v3 = closure #1 in MLSupportVectorClassifier.evaluation(on:);
  }

  else
  {
    v3 = closure #1 in MLSupportVectorClassifier.evaluation(on:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 64);
  outlined init with take of MLClassifierMetrics(*(v0 + 88), v1, type metadata accessor for AnyClassificationMetrics);
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v1, v2, 0);
  *(v0 + 88);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 64);
  *v1 = *(v0 + 104);
  v2 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v1, v2, 2);
  *(v0 + 88);
  return (*(v0 + 8))();
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for DataFrame(0);
  v2 = *(v1 - 8);
  v30 = *(v2 + 80);
  v3 = ~*(v2 + 80) & (v30 + 16);
  v4 = v3 + *(v2 + 64);
  v5 = type metadata accessor for MLSupportVectorClassifier(0);
  v6 = *(v5 - 8);
  v31 = *(v6 + 80);
  v7 = ~v31 & (v31 + v4);
  v32 = *(v6 + 64);
  v35 = v1;
  v8 = v1;
  v9 = v5;
  v34 = *(v2 + 8);
  v34(v0 + v3, v8);
  v10 = v7 + v0;
  *(v0 + v7 + 8);
  *(v0 + v7 + 16);
  v29 = v0;
  *(v0 + v7 + 32);
  v11 = v7 + v0 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v11, v12) == 1)
  {
    v13 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledName(v13);
  (*(*(v14 - 8) + 8))(v11, v14);

  *(v9[6] + v10 + 8);
  *(v9[7] + v10);
  v15 = v9[8];
  if (*(v15 + v10 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + v15 + 8));
  }

  v16 = (v10 + v9[9]);
  v17 = type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v16, v17);
  switch(EnumCaseMultiPayload)
  {
    case 2:
      *v16;
      break;
    case 1:
      v33 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v16 + *(v33 + 20), v35);
      v34(v16 + *(v33 + 24), v35);
      break;
    case 0:
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v16, v19) == 1)
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v20 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v21 = __swift_instantiateConcreteTypeFromMangledName(v20);
      (*(*(v21 - 8) + 8))(v16, v21);
      break;
  }

  v22 = (v9[10] + v10);
  v23 = swift_getEnumCaseMultiPayload(v22, v17);
  switch(v23)
  {
    case 2:
      *v22;
      break;
    case 1:
      v26 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v34(v22 + *(v26 + 20), v35);
      v34(v22 + *(v26 + 24), v35);
      break;
    case 0:
      v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      if (swift_getEnumCaseMultiPayload(v22, v24) == 1)
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      else
      {
        v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledName(v25);
      (*(*(v27 - 8) + 8))(v22, v27);
      break;
  }

  return swift_deallocObject(v29, v32 + v7, v31 | v30 | 7);
}

uint64_t partial apply for closure #1 in MLSupportVectorClassifier.evaluation(on:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataFrame(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLSupportVectorClassifier(0) - 8) + 80);
  v7 = swift_task_alloc(112);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.evaluation(on:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t *outlined retain of MLModelMetadata?(uint64_t *a1)
{
  v1 = *(a1 + 3);
  outlined copy of MLModelMetadata?(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  return a1;
}

uint64_t sub_21B429()
{
  v1 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = ~*(v2 + 80) & (v3 + 16);
  v5 = v4 + *(v2 + 64);
  *(v0 + v4 + 8);
  *(v0 + v4 + 16);
  *(v0 + v4 + 32);
  v6 = v4 + v0 + *(v1 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v8 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v6, v7) == 1)
  {
    v8 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledName(v8);
  (*(*(v9 - 8) + 8))(v6, v9);
  return swift_deallocObject(v0, v5, v3 | 7);
}

uint64_t partial apply for closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v4 = v1 + (~*(*(v3 - 8) + 80) & (*(*(v3 - 8) + 80) + 16));
  v5 = swift_task_alloc(48);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1);
}

uint64_t sub_21B55B()
{
  v1 = v0;
  v2 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = ~*(v3 + 80) & (v4 + 16);
  v6 = v5 + *(v3 + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  v7 = *(v19 - 8);
  v17 = *(v7 + 80);
  v8 = ~v17 & (v17 + v6);
  v18 = *(v7 + 64);
  *(v1 + v5 + 8);
  *(v1 + v5 + 16);
  *(v1 + v5 + 32);
  v9 = v5 + v1 + *(v2 + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v9, v10) == 1)
  {
    v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
  (*(*(v12 - 8) + 8))(v9, v12);
  v16 = v1;
  v13 = type metadata accessor for DataFrame(0);
  v20 = *(*(v13 - 8) + 8);
  v20(v1 + v8, v13);
  v14 = v1 + v8 + *(v19 + 48);
  if (!__swift_getEnumTagSinglePayload(v14, 1, v13))
  {
    v20(v14, v13);
  }

  return swift_deallocObject(v16, v18 + v8, v17 | v4 | 7);
}

uint64_t outlined init with take of (training: DataFrame, validation: DataFrame?)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?));
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (training: DataFrame, validation: DataFrame?)) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #2 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

uint64_t sub_21B78E()
{
  v16 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  v1 = *(v16 - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = v3 + *(v1 + 64);
  v12 = type metadata accessor for DataFrame(0);
  v5 = *(v12 - 8);
  v15 = *(v5 + 80);
  v14 = v5;
  v6 = (v15 + v4) & ~v15;
  v13 = v6 + *(v5 + 64);
  *(v0 + v3 + 8);
  *(v0 + v3 + 16);
  *(v0 + v3 + 32);
  v7 = v3 + v0 + *(v16 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v7, v8) == 1)
  {
    v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
  (*(*(v10 - 8) + 8))(v7, v10);
  (*(v14 + 8))(v0 + v6, v12);
  return swift_deallocObject(v0, v13, v15 | v2 | 7);
}

uint64_t partial apply for closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for DataFrame(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #3 in MLSupportVectorClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

void *initializeBufferWithCopyOfBuffer for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) == 0)
  {
    *a1 = *a2;
    v5 = a2[1];
    a1[1] = v5;
    v72 = a2[2];
    a1[2] = v72;
    a1[3] = a2[3];
    v6 = a2[4];
    a1[4] = v6;
    v7 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
    v66 = a1 + v7;
    v8 = a2 + v7;
    v5;
    v72;
    v6;
    v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v8, v73);
    v10 = EnumCaseMultiPayload == 1;
    v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v11 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledName(v11);
    (*(*(v12 - 8) + 16))(v66, v8, v12);
    swift_storeEnumTagMultiPayload(v66, v73, v10);
    v13 = a3[5];
    v14 = *(a2 + v13);
    *(a1 + v13) = v14;
    v15 = a3[6];
    *(a1 + v15) = *(a2 + v15);
    v16 = *(a2 + v15 + 8);
    *(a1 + v15 + 8) = v16;
    v17 = a3[7];
    v18 = *(a2 + v17);
    *(a1 + v17) = v18;
    v19 = a3[8];
    v69 = a1 + v19;
    v74 = a2 + v19;
    v20 = (a2 + v19 + 8);
    v63 = a1;
    v21 = (a1 + v19 + 8);
    *(v21 - 1) = *(a2 + v19);
    v22 = *(a2 + v19 + 32);
    v14;
    v16;
    v18;
    if (v22)
    {
      *(v69 + 4) = v22;
      (**(v22 - 8))(v21, v20, v22);
    }

    else
    {
      v25 = *v20;
      v21[1] = v20[1];
      *v21 = v25;
    }

    *(v69 + 40) = *(v74 + 40);
    v69[56] = v74[56];
    v26 = a3;
    v27 = a3[9];
    v24 = v63;
    v28 = (v63 + v27);
    v29 = a2 + v27;
    v75 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v30 = swift_getEnumCaseMultiPayload(v29, v75);
    if (v30 == 2)
    {
      v36 = v28;
      v37 = *v29;
      swift_errorRetain(*v29);
      *v36 = v37;
      v28 = v36;
      v30 = 2;
    }

    else if (v30 == 1)
    {
      *v28 = *v29;
      v61 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v31 = *(v61 + 20);
      v62 = v28 + v31;
      v32 = type metadata accessor for DataFrame(0);
      v70 = v28;
      v33 = *(*(v32 - 8) + 16);
      v34 = &v29[v31];
      v24 = v63;
      v33(v62, v34, v32);
      v35 = v32;
      v26 = a3;
      v33(&v70[*(v61 + 24)], &v29[*(v61 + 24)], v35);
      v28 = v70;
    }

    else
    {
      v71 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v38 = swift_getEnumCaseMultiPayload(v29, v71);
      v39 = v38 == 1;
      v40 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v38 == 1)
      {
        v40 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v41 = __swift_instantiateConcreteTypeFromMangledName(v40);
      (*(*(v41 - 8) + 16))(v28, v29, v41);
      swift_storeEnumTagMultiPayload(v28, v71, v39);
      v26 = a3;
    }

    swift_storeEnumTagMultiPayload(v28, v75, v30);
    v42 = v26[10];
    v43 = (v24 + v42);
    v44 = a2 + v42;
    v45 = swift_getEnumCaseMultiPayload(a2 + v42, v75);
    if (v45 == 2)
    {
      v50 = *v44;
      swift_errorRetain(*v44);
      *v43 = v50;
      v60 = 2;
    }

    else
    {
      if (v45 != 1)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v55 = swift_getEnumCaseMultiPayload(v44, v54);
        v56 = v55 == 1;
        v57 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v55 == 1)
        {
          v57 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v58 = __swift_instantiateConcreteTypeFromMangledName(v57);
        (*(*(v58 - 8) + 16))(v43, v44, v58);
        swift_storeEnumTagMultiPayload(v43, v54, v56);
        v52 = v43;
        v53 = v75;
        v51 = 0;
        goto LABEL_23;
      }

      *v43 = *v44;
      v65 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v46 = *(v65 + 20);
      v68 = v43 + v46;
      v47 = type metadata accessor for DataFrame(0);
      v48 = *(*(v47 - 8) + 16);
      v49 = &v44[v46];
      v24 = v63;
      v48(v68, v49, v47);
      v48(v43 + *(v65 + 24), &v44[*(v65 + 24)], v47);
      v60 = 1;
    }

    v51 = v60;
    v52 = v43;
    v53 = v75;
LABEL_23:
    swift_storeEnumTagMultiPayload(v52, v53, v51);
    return v24;
  }

  v23 = *a2;
  *a1 = *a2;
  v24 = (v23 + ((v4 + 16) & ~v4));

  return v24;
}

uint64_t destroy for MLSupportVectorClassifier(void *a1, int *a2)
{
  a1[1];
  a1[2];
  a1[4];
  v4 = a1 + *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  v6 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (swift_getEnumCaseMultiPayload(v4, v5) == 1)
  {
    v6 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledName(v6);
  (*(*(v7 - 8) + 8))(v4, v7);

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

void *initializeWithCopy for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  v61 = a2[2];
  a1[2] = v61;
  a1[3] = a2[3];
  v5 = a2[4];
  a1[4] = v5;
  v6 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v54 = a1 + v6;
  v7 = a2 + v6;
  v4;
  v61;
  v5;
  v62 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v7, v62);
  v9 = EnumCaseMultiPayload == 1;
  v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v10 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
  (*(*(v11 - 8) + 16))(v54, v7, v11);
  swift_storeEnumTagMultiPayload(v54, v62, v9);
  v12 = a3[5];
  v13 = *(a2 + v12);
  *(a1 + v12) = v13;
  v14 = a3[6];
  *(a1 + v14) = *(a2 + v14);
  v15 = *(a2 + v14 + 8);
  *(a1 + v14 + 8) = v15;
  v16 = a3[7];
  v17 = *(a2 + v16);
  *(a1 + v16) = v17;
  v18 = a3[8];
  v58 = a1 + v18;
  v52 = a2 + v18;
  v19 = (a2 + v18 + 8);
  v55 = a1;
  v20 = (a1 + v18 + 8);
  *(a1 + v18) = *(a2 + v18);
  v21 = *(a2 + v18 + 32);
  v13;
  v15;
  v17;
  if (v21)
  {
    *(v58 + 4) = v21;
    (**(v21 - 8))(v20, v19, v21);
  }

  else
  {
    v22 = *v19;
    v20[1] = v19[1];
    *v20 = v22;
  }

  *(v58 + 40) = *(v52 + 40);
  v58[56] = v52[56];
  v23 = a3[9];
  v24 = v55 + v23;
  v25 = a2 + v23;
  v53 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v26 = swift_getEnumCaseMultiPayload(v25, v53);
  if (v26 == 2)
  {
    v31 = *v25;
    swift_errorRetain(*v25);
    *v24 = v31;
  }

  else if (v26 == 1)
  {
    *v24 = *v25;
    v59 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v27 = *(v59 + 20);
    v51 = &v24[v27];
    v28 = type metadata accessor for DataFrame(0);
    v29 = &v25[v27];
    v30 = *(*(v28 - 8) + 16);
    v30(v51, v29, v28);
    v30(&v24[*(v59 + 24)], &v25[*(v59 + 24)], v28);
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v32 = swift_getEnumCaseMultiPayload(v25, v60);
    v33 = v32 == 1;
    v34 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v32 == 1)
    {
      v34 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledName(v34);
    (*(*(v35 - 8) + 16))(v24, v25, v35);
    swift_storeEnumTagMultiPayload(v24, v60, v33);
  }

  swift_storeEnumTagMultiPayload(v24, v53, v26);
  v36 = a3[10];
  v37 = v55 + v36;
  v38 = a2 + v36;
  v39 = swift_getEnumCaseMultiPayload(a2 + v36, v53);
  if (v39 == 2)
  {
    v44 = *v38;
    swift_errorRetain(v44);
    *v37 = v44;
  }

  else if (v39 == 1)
  {
    *v37 = *v38;
    v57 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v40 = *(v57 + 20);
    v64 = &v37[v40];
    v41 = type metadata accessor for DataFrame(0);
    v42 = &v38[v40];
    v43 = *(*(v41 - 8) + 16);
    v43(v64, v42, v41);
    v43(&v37[*(v57 + 24)], &v38[*(v57 + 24)], v41);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v46 = swift_getEnumCaseMultiPayload(v38, v45);
    v65 = v38;
    v47 = v46 == 1;
    v48 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v46 == 1)
    {
      v48 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledName(v48);
    (*(*(v49 - 8) + 16))(v37, v65, v49);
    swift_storeEnumTagMultiPayload(v37, v45, v47);
  }

  swift_storeEnumTagMultiPayload(v37, v53, v39);
  return v55;
}

void *assignWithCopy for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a2[1];
  v5 = a1[1];
  a1[1] = v4;
  v4;
  v5;
  v6 = a2[2];
  v7 = a1[2];
  a1[2] = v6;
  v6;
  v7;
  a1[3] = a2[3];
  v8 = a2[4];
  v9 = a1[4];
  a1[4] = v8;
  v8;
  v9;
  v10 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  if (a1 != a2)
  {
    v11 = *(v10 + 24);
    v12 = a2 + v11;
    v74 = a2 + v11;
    v13 = a1 + v11;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v13, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v12, v14);
    v16 = EnumCaseMultiPayload == 1;
    v17 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v17 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledName(v17);
    (*(*(v18 - 8) + 16))(v13, v74, v18);
    swift_storeEnumTagMultiPayload(v13, v14, v16);
  }

  v19 = a3[5];
  v20 = *(a2 + v19);
  v21 = *(a1 + v19);
  *(a1 + v19) = v20;
  v20;

  v22 = a3[6];
  *(a1 + v22) = *(a2 + v22);
  v23 = *(a2 + v22 + 8);
  v24 = *(a1 + v22 + 8);
  *(a1 + v22 + 8) = v23;
  v23;
  v24;
  v25 = a3[7];
  v26 = *(a2 + v25);
  v27 = *(a1 + v25);
  *(a1 + v25) = v26;
  v26;
  v27;
  v28 = a3[8];
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = a2 + v28 + 8;
  v32 = (a1 + v28 + 8);
  *(a1 + v28) = *(a2 + v28);
  v33 = *(a2 + v28 + 32);
  if (*(a1 + v28 + 32))
  {
    if (v33)
    {
      __swift_assign_boxed_opaque_existential_0((a1 + v28 + 8), v31);
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((a1 + v28 + 8));
  }

  else if (v33)
  {
    *(v29 + 4) = v33;
    (**(v33 - 8))(v32, v31);
    goto LABEL_12;
  }

  v34 = *v31;
  v32[1] = *(v31 + 16);
  *v32 = v34;
LABEL_12:
  *(v29 + 5) = *(v30 + 5);
  *(v29 + 6) = *(v30 + 6);
  v29[56] = v30[56];
  v35 = a2;
  if (a1 != a2)
  {
    v36 = a3[9];
    v37 = (a1 + v36);
    v38 = (a2 + v36);
    outlined destroy of MLActivityClassifier.ModelParameters(v37, type metadata accessor for MLClassifierMetrics.Contents);
    v39 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v40 = swift_getEnumCaseMultiPayload(v38, v39);
    v64 = v40;
    if (v40 == 2)
    {
      v44 = *v38;
      swift_errorRetain(v44);
      *v37 = v44;
    }

    else if (v40 == 1)
    {
      *v37 = *v38;
      v69 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v66 = v39;
      v41 = *(v69 + 20);
      v62 = v37 + v41;
      v63 = type metadata accessor for DataFrame(0);
      v42 = *(*(v63 - 8) + 16);
      v43 = v38 + v41;
      v39 = v66;
      v42(v62, v43, v63);
      v42(v37 + *(v69 + 24), v38 + *(v69 + 24), v63);
      v35 = a2;
    }

    else
    {
      v67 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
      v45 = swift_getEnumCaseMultiPayload(v38, v67);
      v70 = v45 == 1;
      v46 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
      if (v45 == 1)
      {
        v46 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledName(v46);
      (*(*(v47 - 8) + 16))(v37, v38, v47);
      swift_storeEnumTagMultiPayload(v37, v67, v70);
    }

    swift_storeEnumTagMultiPayload(v37, v39, v64);
    v48 = a3[10];
    v49 = (a1 + v48);
    v50 = (v35 + v48);
    outlined destroy of MLActivityClassifier.ModelParameters(a1 + v48, type metadata accessor for MLClassifierMetrics.Contents);
    v51 = swift_getEnumCaseMultiPayload(v50, v39);
    if (v51 == 2)
    {
      v56 = *v50;
      swift_errorRetain(v56);
      *v49 = v56;
    }

    else
    {
      v73 = v51;
      if (v51 == 1)
      {
        *v49 = *v50;
        v65 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
        v52 = *(v65 + 20);
        v71 = v49 + v52;
        v68 = v39;
        v53 = type metadata accessor for DataFrame(0);
        v76 = *(*(v53 - 8) + 16);
        v54 = v50 + v52;
        v51 = 1;
        v76(v71, v54, v53);
        v55 = v53;
        v39 = v68;
        v76(v49 + *(v65 + 24), v50 + *(v65 + 24), v55);
      }

      else
      {
        v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
        v57 = swift_getEnumCaseMultiPayload(v50, v77);
        v58 = v57 == 1;
        v59 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
        if (v57 == 1)
        {
          v59 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
        }

        v60 = __swift_instantiateConcreteTypeFromMangledName(v59);
        (*(*(v60 - 8) + 16))(v49, v50, v60);
        swift_storeEnumTagMultiPayload(v49, v77, v58);
        v51 = v73;
      }
    }

    swift_storeEnumTagMultiPayload(v49, v39, v51);
  }

  return a1;
}

uint64_t initializeWithTake for MLSupportVectorClassifier(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(type metadata accessor for MLSupportVectorClassifier.Model(0) + 24);
  v5 = a1 + v4;
  v6 = a2 + v4;
  v56 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v6, v56);
  v8 = EnumCaseMultiPayload == 1;
  v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
  if (EnumCaseMultiPayload == 1)
  {
    v9 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledName(v9);
  (*(*(v10 - 8) + 32))(v5, v6, v10);
  v11 = v5;
  swift_storeEnumTagMultiPayload(v11, v56, v8);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v13 = a3[8];
  v14 = *(a2 + v13);
  v15 = *(a2 + v13 + 16);
  v16 = *(a2 + v13 + 32);
  *(a1 + v13 + 41) = *(a2 + v13 + 41);
  *(a1 + v13 + 32) = v16;
  *(a1 + v13 + 16) = v15;
  *(a1 + v13) = v14;
  v17 = a3[9];
  v57 = a1;
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v21 = swift_getEnumCaseMultiPayload(v19, v20);
  v58 = v20;
  if (v21 == 1)
  {
    *v18 = *v19;
    v55 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v31 = *(v55 + 20);
    v54 = &v18[v31];
    v32 = type metadata accessor for DataFrame(0);
    v33 = &v19[v31];
    v34 = *(*(v32 - 8) + 32);
    v34(v54, v33, v32);
    v35 = v32;
    v20 = v58;
    v34(&v18[*(v55 + 24)], &v19[*(v55 + 24)], v35);
    v30 = 1;
    v28 = v18;
    v29 = v58;
LABEL_9:
    swift_storeEnumTagMultiPayload(v28, v29, v30);
    goto LABEL_11;
  }

  if (!v21)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v23 = swift_getEnumCaseMultiPayload(v19, v22);
    v24 = v23 == 1;
    v25 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v23 == 1)
    {
      v25 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledName(v25);
    (*(*(v26 - 8) + 32))(v18, v19, v26);
    v27 = v24;
    v20 = v58;
    swift_storeEnumTagMultiPayload(v18, v22, v27);
    v28 = v18;
    v29 = v58;
    v30 = 0;
    goto LABEL_9;
  }

  memcpy(v18, v19, *(*(v20 - 8) + 64));
LABEL_11:
  v36 = a3[10];
  v37 = v57;
  v38 = (v36 + v57);
  v39 = (v36 + a2);
  v40 = swift_getEnumCaseMultiPayload(v39, v20);
  if (v40 == 1)
  {
    *v38 = *v39;
    v60 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v49 = *(v60 + 20);
    v50 = type metadata accessor for DataFrame(0);
    v51 = *(*(v50 - 8) + 32);
    v51(&v38[v49], &v39[v49], v50);
    v52 = v50;
    v37 = v57;
    v51(&v38[*(v60 + 24)], &v39[*(v60 + 24)], v52);
    v48 = 1;
    v46 = v38;
    v47 = v58;
  }

  else
  {
    if (v40)
    {
      memcpy(v38, v39, *(*(v20 - 8) + 64));
      return v37;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<ClassificationMetrics<String>, ClassificationMetrics<Int>>);
    v42 = swift_getEnumCaseMultiPayload(v39, v41);
    v43 = v42 == 1;
    v44 = &demangling cache variable for type metadata for ClassificationMetrics<String>;
    if (v42 == 1)
    {
      v44 = &demangling cache variable for type metadata for ClassificationMetrics<Int>;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledName(v44);
    (*(*(v45 - 8) + 32))(v38, v39, v45);
    swift_storeEnumTagMultiPayload(v38, v41, v43);
    v46 = v38;
    v47 = v58;
    v48 = 0;
  }

  swift_storeEnumTagMultiPayload(v46, v47, v48);
  return v37;
}

void *assignWithTake for MLSupportVectorClassifier(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  v4;
  v5 = a1[2];
  a1[2] = a2[2];
  v5;
  a1[3] = a2[3];
  v6 = a1[4];
  a1[4] = a2[4];
  v6;
  v7 = type metadata accessor for MLSupportVectorClassifier.Model(0);
  if (a1 != a2)
  {
    v8 = *(v7 + 24);
    v9 = a2 + v8;
    v70 = a2 + v8;
    v10 = a1 + v8;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v10, &demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LinearSupportVectorClassifierModel<Double, String>, LinearSupportVectorClassifierModel<Double, Int>>);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(v9, v11);
    v13 = EnumCaseMultiPayload == 1;
    v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, String>;
    if (EnumCaseMultiPayload == 1)
    {
      v14 = &demangling cache variable for type metadata for LinearSupportVectorClassifierModel<Double, Int>;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledName(v14);
    (*(*(v15 - 8) + 32))(v10, v70, v15);
    swift_storeEnumTagMultiPayload(v10, v11, v13);
  }

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
  v23[56] = v24[56];
  v28 = a2;
  if (a1 == a2)
  {
    return a1;
  }

  v29 = a3[9];
  v30 = (a1 + v29);
  v31 = (a2 + v29);
  outlined destroy of MLActivityClassifier.ModelParameters(v30, type metadata accessor for MLClassifierMetrics.Contents);
  v69 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v32 = swift_getEnumCaseMultiPayload(v31, v69);
  if (v32 == 1)
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
    v38 = v69;
    v39 = v69;
  }

  else
  {
    if (v32)
    {
      v46 = v31;
      v38 = v69;
      memcpy(v30, v46, *(*(v69 - 8) + 64));
      goto LABEL_16;
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
    v38 = v69;
    v39 = v69;
    v40 = 0;
  }

  swift_storeEnumTagMultiPayload(v37, v39, v40);
LABEL_16:
  v47 = a3[10];
  v48 = a1 + v47;
  v49 = v28 + v47;
  outlined destroy of MLActivityClassifier.ModelParameters(a1 + v47, type metadata accessor for MLClassifierMetrics.Contents);
  v50 = swift_getEnumCaseMultiPayload(v49, v38);
  if (v50 == 1)
  {
    *v48 = *v49;
    v68 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
    v59 = *(v68 + 20);
    v72 = &v48[v59];
    v60 = type metadata accessor for DataFrame(0);
    v61 = &v49[v59];
    v62 = *(*(v60 - 8) + 32);
    v62(v72, v61, v60);
    v62(&v48[*(v68 + 24)], &v49[*(v68 + 24)], v60);
    v58 = 1;
    v56 = v48;
    v57 = v69;
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
    v57 = v69;
    v58 = 0;
  }

  swift_storeEnumTagMultiPayload(v56, v57, v58);
  return a1;
}

uint64_t sub_21CF39(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a1;
  v5 = type metadata accessor for MLSupportVectorClassifier.Model(0);
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

uint64_t sub_21CFC6(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = type metadata accessor for MLSupportVectorClassifier.Model(0);
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

uint64_t type metadata completion function for MLSupportVectorClassifier(uint64_t a1)
{
  result = type metadata accessor for MLSupportVectorClassifier.Model(319);
  if (v2 <= 0x3F)
  {
    v4[0] = *(result - 8) + 64;
    v4[1] = &value witness table for Builtin.UnknownObject + 64;
    v4[2] = &unk_3465B0;
    v4[3] = &value witness table for Builtin.BridgeObject + 64;
    v4[4] = &unk_3465C8;
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

unint64_t MLImageClassifier.ModelParameters.ClassifierType.description.getter()
{
  result = 0xD000000000000015;
  if (!*v0)
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

BOOL static MLImageClassifier.ModelParameters.ClassifierType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v2, v3);
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    swift_bridgeObjectRelease_n(0, 2);
    return 1;
  }
}

void MLImageClassifier.ModelParameters.ClassifierType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(a1, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MLImageClassifier.ModelParameters.ClassifierType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)(0);
  if (v1)
  {
    Hasher._combine(_:)(1uLL);
    specialized Array<A>.hash(into:)(v3, v1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.ModelParameters.ClassifierType.validate()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = 0xD000000000000033;
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = "ssifier\n\nParameters\n";
      if (*(v1 + 32) > 0)
      {
        if (v3 == 1)
        {
          return;
        }

        for (i = 5; ; ++i)
        {
          v6 = i - 4 + 1;
          if (__OFADD__(1, i - 4))
          {
            BUG();
          }

          if (*(v1 + 8 * i) <= 0)
          {
            break;
          }

          if (v6 == v3)
          {
            return;
          }
        }
      }
    }

    else
    {
      v2 = 0xD000000000000029;
      v4 = " positive integers.";
    }

    v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
    *v8 = v2;
    *(v8 + 8) = v4 | 0x8000000000000000;
    *(v8 + 16) = 0;
    *(v8 + 32) = 0;
    *(v8 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v7);
  }
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.ModelParameters.ClassifierType, &type metadata for MLImageClassifier.ModelParameters.ClassifierType);
    lazy protocol witness table cache variable for type MLImageClassifier.ModelParameters.ClassifierType and conformance MLImageClassifier.ModelParameters.ClassifierType = result;
  }

  return result;
}

uint64_t MLDataTable.stratifiedSplit(proportions:on:seed:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  if (a4 < 0)
  {
    BUG();
  }

  v10 = *v5;
  v13 = *(v5 + 8);
  v11 = a3;
  v12 = a2;
  v7 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v7, 136, 7);
  v9 = MersenneTwisterGenerator.init(seed:)(a4);
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, &v9, v10, v13, a2, v11, a5);
}

uint64_t MLDataTable.randomSplitBySequence(strategy:by:on:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v29 = a6;
  v34 = a2;
  v35 = a1;
  v38 = *a3;
  v37 = *(a3 + 8);
  v41 = *(a3 + 16);
  v40 = *(a3 + 17);
  v10 = *(v7 + 8);
  v32 = *v7;
  v11 = v10 & 1;
  v33 = v10 & 1;
  v36 = v32;
  v39 = v10;
  outlined copy of Result<_DataTable, Error>(v32, v10);
  v31 = a4;
  v12._countAndFlagsBits = a4;
  v30 = a5;
  v12._object = a5;
  MLDataTable.subscript.getter(v12);
  outlined consume of Result<_DataTable, Error>(v32, v33);
  v32 = v27;
  v33 = v28;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v27, v28);
  if (v26)
  {
    outlined consume of Result<_DataTable, Error>(v25, 1);
    v13 = v37;
    if (v41)
    {
      v13 = 1;
    }

    v14 = v38;
    if (!((v38 == 0.0) | v40 & 1))
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = v35;
    *v35 = 0;
    *(v17 + 8) = -1;
    v18 = v34;
    v19 = v36;
    *v34 = v36;
    *(v18 + 8) = v11;
    return outlined copy of Result<_DataTable, Error>(v19, v39);
  }

  v13 = v37;
  v15 = v25[2];

  v16 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v25, 0);
  outlined consume of Result<_DataTable, Error>(v25, 0);
  if ((v40 & 1) == 0)
  {
    if (v41)
    {
      v13 = 1;
    }

    v14 = v38;
    if (v38 != 0.0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v16 < 50)
  {
    goto LABEL_12;
  }

  v14 = dbl_33FA70[v16 < 0xC8];
  v13 = 1;
LABEL_13:
  v32 = v36;
  v33 = v11;
  MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(&v25, &v27, v31, v30, v29, a7, v14, v13);
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v24 = v35;
  *v35 = v25;
  *(v24 + 8) = v21;
  result = v34;
  *v34 = v22;
  *(result + 8) = v23;
  return result;
}

uint64_t MLDataTable.randomSplit(strategy:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v27 = a2;
  v28 = a1;
  v25 = *a3;
  v26 = *(a3 + 8);
  v29 = *(a3 + 16);
  v4 = *(a3 + 17);
  v5 = *v3;
  v6 = *(v3 + 8);
  v23 = v5;
  v24 = v6;
  outlined copy of Result<_DataTable, Error>(v5, v6);
  outlined copy of Result<_DataTable, Error>(v5, v6);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v5, v6);
  v8 = specialized RandomAccessCollection<>.distance(from:to:)(0, v7, v5, v6);
  outlined consume of Result<_DataTable, Error>(v5, v6);
  if (v4 != 1)
  {
    v10 = v26;
    if (v29)
    {
      v10 = 1;
    }

    if (v25 != 0.0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v11 = v28;
    *v28 = 0;
    *(v11 + 8) = -1;
    v12 = v27;
    *v27 = v5;
    *(v12 + 8) = v6;
    return outlined copy of Result<_DataTable, Error>(v5, v6);
  }

  if (v8 < 50)
  {
    goto LABEL_7;
  }

  v9 = *&dbl_33FA70[v8 < 0xC8];
  v10 = 1;
LABEL_8:
  v21 = v5;
  v22 = v6;
  MLDataTable.randomSplit(by:seed:)(&v23, &v19, v10);
  v14 = v23;
  v15 = v19;
  v16 = v20;
  v17 = v24;
  outlined copy of Result<_DataTable, Error>(v23, v24);
  outlined copy of Result<_DataTable, Error>(v15, v16);
  outlined consume of Result<_DataTable, Error>(v15, v16);
  outlined consume of Result<_DataTable, Error>(v14, v17);
  v18 = v28;
  *v28 = v14;
  *(v18 + 8) = v17;
  result = v27;
  *v27 = v15;
  *(result + 8) = v16;
  return result;
}

uint64_t *specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, void *a6, double a7, Swift::String a8)
{
  v133 = a2;
  countAndFlagsBits = v9;
  v148 = a6;
  v134 = a1;
  LODWORD(v138) = a4;
  v139 = a3;
  v127 = v8;
  if (a4)
  {
    v147._countAndFlagsBits = v9;
    outlined copy of Result<_DataTable, Error>(a3, 1);
    v13 = tc_v1_flex_list_create(0);
    if (!v13)
    {
      BUG();
    }

    v14 = v13;
    v15 = type metadata accessor for CMLSequence();
    v16 = swift_allocObject(v15, 25, 7);
    *(v16 + 16) = v14;
    *(v16 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(a3, 1);
    countAndFlagsBits = v147._countAndFlagsBits;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(a3, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(a3, 0);
    v16 = v142;
  }

  v150._countAndFlagsBits = a5;
  v149._countAndFlagsBits = a5;
  object = v148;
  v150._object = v148;
  v18 = alloca(24);
  v19 = alloca(32);
  v124 = &v150;
  v20 = countAndFlagsBits;
  v21 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v123, v16);
  v147._countAndFlagsBits = v20;

  if ((v21 & 1) == 0)
  {
    v150._countAndFlagsBits = 0x2064696C61766E49;
    v150._object = 0xE800000000000000;
    v27._countAndFlagsBits = v149._countAndFlagsBits;
LABEL_27:
    v27._object = object;
    String.append(_:)(v27);
    v63._countAndFlagsBits = 46;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v147 = v150;
    v63._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v63._object, 0, 0);
    *v64 = v147;
    *(v64 + 16) = 0;
    *(v64 + 32) = 0;
    *(v64 + 48) = 0;
    return swift_willThrow();
  }

  if (v138)
  {
    v22 = v139;
    outlined copy of Result<_DataTable, Error>(v139, 1);
    v23 = tc_v1_flex_list_create(0);
    if (!v23)
    {
      BUG();
    }

    v24 = v23;
    v25 = type metadata accessor for CMLSequence();
    v26 = swift_allocObject(v25, 25, 7);
    *(v26 + 16) = v24;
    *(v26 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v22, 1);
  }

  else
  {
    v28 = v139;
    outlined copy of Result<_DataTable, Error>(v139, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v28, 0);
    v26 = v142;
  }

  object = a8._object;
  v150 = a8;
  v29 = alloca(24);
  v30 = alloca(32);
  v153 = &v150;
  v31 = v147._countAndFlagsBits;
  v32 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v152, v26);
  v147._countAndFlagsBits = v31;

  if ((v32 & 1) == 0)
  {
    v150._countAndFlagsBits = 0x2064696C61766E49;
    v150._object = 0xE800000000000000;
    v27._countAndFlagsBits = a8._countAndFlagsBits;
    goto LABEL_27;
  }

  v33 = v139;
  v142 = v139;
  v34 = v138;
  v35 = v138;
  v140 = v138;
  LOBYTE(v34) = v138 & 1;
  LOBYTE(v143) = v138 & 1;
  v150._countAndFlagsBits = v139;
  LOBYTE(v150._object) = v138 & 1;
  outlined copy of Result<_DataTable, Error>(v139, v138);
  outlined copy of Result<_DataTable, Error>(v33, v35);
  v36._countAndFlagsBits = v149._countAndFlagsBits;
  v36._object = v148;
  MLDataTable.subscript.getter(v36);
  outlined consume of Result<_DataTable, Error>(v150._countAndFlagsBits, v150._object);
  v125 = v144;
  v126 = v145;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v125, v126);
  v144 = v150._countAndFlagsBits;
  v145 = v150._object;
  v37 = Array<A>.init(_:)(&v144, a7);
  outlined copy of Result<_DataTable, Error>(v33, v140);
  v38 = v148;
  v148;
  a8._object;
  LODWORD(v138) = v34;
  LODWORD(v149._object) = v34;
  v39 = v147._countAndFlagsBits;
  ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n(v37, v33, v34, v149._countAndFlagsBits, v38, a8._countAndFlagsBits, a8._object);
  v135 = v39;
  v40 = v37[2];
  v37;
  v128 = v37;
  ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5(v37, 0, v40);
  v42 = _sSa9repeating5countSayxGx_SitcfCSaySiG_Tt1g5(_swiftEmptyArrayStorage, v40);
  v144 = v33;
  v145 = v149._object;
  outlined copy of Result<_DataTable, Error>(v33, v140);
  v36._countAndFlagsBits = v149._countAndFlagsBits;
  v36._object = v148;
  MLDataTable.subscript.getter(v36);
  outlined consume of Result<_DataTable, Error>(v144, v145);
  v144 = v150._countAndFlagsBits;
  v145 = v150._object;
  v43 = Array<A>.init(_:)(&v144, a7);
  v132 = v43[2];
  v141 = v42;
  if (v132)
  {
    v146 = ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
    v130 = v43;
    v44 = v43 + 6;
    v45 = 0;
    do
    {
      v149._object = v45;
      v46 = v146;
      if (!v146[2])
      {
        BUG();
      }

      v47 = *(v44 - 2);
      v48 = *(v44 - 1);
      v131 = v44;
      v49 = *v44;
      outlined copy of MLDataValue(v47, v48, *v44);
      outlined copy of MLDataValue(v47, v48, v49);
      *&v50 = v47;
      *(&v50 + 1) = v48;
      specialized __RawDictionaryStorage.find<A>(_:)(v50, v49, a7);
      if ((v52 & 1) == 0)
      {
        outlined consume of MLDataValue(v47, v48, v49);
        BUG();
      }

      v147._countAndFlagsBits = *(*(v46 + 56) + 8 * v51);
      outlined consume of MLDataValue(v47, v48, v49);
      v53 = v141;
      if (!swift_isUniquelyReferenced_nonNull_native(v141))
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew()(v53);
      }

      if (v147._countAndFlagsBits < 0)
      {
        BUG();
      }

      if (v147._countAndFlagsBits >= v53[2])
      {
        BUG();
      }

      v136 = v47;
      LODWORD(v137) = v49;
      v54 = v53;
      v55 = v53[v147._countAndFlagsBits + 4];
      v56 = v147._countAndFlagsBits;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v55);
      v54[v56 + 4] = v55;
      v141 = v54;
      if (!isUniquelyReferenced_nonNull_native)
      {
        v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
        v54[v147._countAndFlagsBits + 4] = v55;
      }

      v58 = v136;
      v136 = v48;
      v59 = v55[2];
      v60 = v59 + 1;
      if (v55[3] >> 1 <= v59)
      {
        v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v55[3] >= 2uLL, v59 + 1, 1, v55);
        v60 = v59 + 1;
        v55 = v62;
        v141[v147._countAndFlagsBits + 4] = v62;
      }

      v61 = v149._object;
      v55[2] = v60;
      v55[v59 + 4] = v61;
      v45 = v61 + 1;
      outlined consume of MLDataValue(v58, v136, v137);
      v44 = v131 + 24;
    }

    while (v132 != v45);
    v146;
    v43 = v130;
  }

  else
  {
    ML11MLDataValueO_Sis12Zip2SequenceVySayAGGSnySiGGTt0g5;
  }

  v43;
  v66 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v66, v123);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  *(inited + 32) = 0x73656369646E69;
  *(inited + 40) = 0xE700000000000000;
  v150._countAndFlagsBits = v141;
  v68 = alloca(24);
  v69 = alloca(24);
  v153 = &v150;
  v141;
  *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA22MLDataValueConvertible7ElementRpzlufcAA08_UntypedD0CyKXEfU_SaySaySiGG_TG5TA_0);
  *(inited + 56) = v70 & 1;
  v150._countAndFlagsBits;
  *(inited + 64) = a8;
  v150._countAndFlagsBits = ML11MLDataValueOG_AHs5NeverOTg503_s8d81ML34stratifiedSplitBySequenceGenerator11proportions9generator9dataTable2by2onAA06f30K0VSaySdG_xzAIS2StKSGRzlFAA0N5G8OALXEfU_AF0F5TableVS2STf1cn_n;
  v71 = alloca(24);
  v72 = alloca(24);
  v153 = &v150;
  a8._object;
  *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(_s8CreateML15MLUntypedColumnVyACxcSTRzAA11MLDataValueO7ElementRtzlufcAA08_UntypedD0CyKXEfU_SayAEG_TG5TA_0);
  *(inited + 88) = v73 & 1;
  v150._countAndFlagsBits;
  *(inited + 96) = v149._countAndFlagsBits;
  v74 = v148;
  *(inited + 104) = v148;
  v150._countAndFlagsBits = v128;
  v75 = alloca(24);
  v76 = alloca(24);
  v153 = &v150;
  v74;
  *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
  *(inited + 120) = v77 & 1;
  v150._countAndFlagsBits;
  v78 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  v79 = v135;
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v78);
  if (v79)
  {
    v141;
    return outlined consume of Result<_DataTable, Error>(v142, v143);
  }

  v80 = v150._countAndFlagsBits;
  object_low = LOBYTE(v150._object);
  specialized stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(v134, v133, v150._countAndFlagsBits, LOBYTE(v150._object), a8._countAndFlagsBits, a8._object, a7);
  LODWORD(v135) = object_low;
  v134 = v80;
  v147._countAndFlagsBits = 0;
  v146 = v150._countAndFlagsBits;
  LOBYTE(v133) = v150._object;
  v144 = v139;
  v145 = v138;
  outlined copy of Result<_DataTable, Error>(v139, v140);
  v82._countAndFlagsBits = v149._countAndFlagsBits;
  v82._object = v148;
  MLDataTable.subscript.getter(v82);
  outlined consume of Result<_DataTable, Error>(v144, v145);
  v83 = v150._countAndFlagsBits;
  v84 = v150._object;
  if (LOBYTE(v150._object))
  {
    v85 = -1;
  }

  else
  {
    v86 = *(v150._countAndFlagsBits + 16);

    v85 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v83, 0);
  }

  outlined consume of Result<_DataTable, Error>(v83, v84);
  v149._object = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(0, v85);
  v144 = v146;
  v145 = v133;
  LODWORD(v148) = v133;
  outlined copy of Result<_DataTable, Error>(v146, v133);
  v87._countAndFlagsBits = 0x73656369646E69;
  v87._object = 0xE700000000000000;
  MLDataTable.subscript.getter(v87);
  outlined consume of Result<_DataTable, Error>(v144, v145);
  v88 = v150._countAndFlagsBits;
  if (LOBYTE(v150._object) == 1)
  {
    outlined consume of Result<_DataTable, Error>(v150._countAndFlagsBits, 1);
LABEL_78:
    BUG();
  }

  v89 = *(v150._countAndFlagsBits + 16);

  v90 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v88, 0);
  outlined consume of Result<_DataTable, Error>(v88, 0);
  v139 = v90;
  v91 = v147._countAndFlagsBits;
  if (v90 < 0)
  {
    goto LABEL_78;
  }

  v92 = v146;
  if (v90)
  {
    v149._countAndFlagsBits = 0;
    while (!v133)
    {
      v93 = *(v92 + 16);
      outlined copy of Result<_DataTable, Error>(v92, 0);

      v94 = specialized String.withCString<A>(_:)(partial apply for closure #1 in CMLTable.column(name:), v93, 0x73656369646E69, 0xE700000000000000);
      if (v91)
      {
        v91;

LABEL_74:
        v120 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        v121 = swift_allocError(&type metadata for MLCreateError, v120, 0, 0);
        *v122 = 0xD000000000000027;
        *(v122 + 8) = "aTable by sequence." + 0x8000000000000000;
        *(v122 + 16) = 0;
        *(v122 + 32) = 0;
        *(v122 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v146, v148);
        outlined consume of Result<_DataTable, Error>(v121, 1);
LABEL_75:
        BUG();
      }

      v95 = v94;

      outlined consume of Result<_DataTable, Error>(v92, 0);
      v96 = type metadata accessor for _UntypedColumn();
      v97 = swift_allocObject(v96, 24, 7);
      *(v97 + 16) = v95;

      _UntypedColumn.valueAtIndex(index:)(v149._countAndFlagsBits, a7);
      outlined consume of Result<_DataTable, Error>(v97, 0);
      outlined consume of Result<_DataTable, Error>(v97, 0);
      if (v151 != 3)
      {
        goto LABEL_75;
      }

      v138 = v150._object;
      v98 = v150._countAndFlagsBits;

      if (CMLSequence.size.getter())
      {
        v99 = 0;
        v132 = v98;
        while (1)
        {
          v100 = CMLSequence.value(at:)(v99);
          v147._countAndFlagsBits = v91;
          if (v91)
          {
            swift_unexpectedError(v147._countAndFlagsBits, "CreateML/SequenceType.swift", 27, 1, 36);
            BUG();
          }

          MLDataValue.init(_:)(v100, a7);
          v131 = v150._object;
          v101 = v150._countAndFlagsBits;
          v102 = v151;
          LODWORD(v136) = v151;
          outlined copy of MLDataValue(v150._countAndFlagsBits, v150._object, v151);
          v137 = v101;
          outlined consume of MLDataValue(v101, v131, v136);
          if (v99 >= CMLSequence.size.getter())
          {
            BUG();
          }

          if (v102)
          {
            BUG();
          }

          v103 = v146;
          outlined copy of Result<_DataTable, Error>(v146, 0);
          v104._countAndFlagsBits = 0x6F69746974726170;
          v104._object = 0xE90000000000006ELL;
          specialized MLDataTable.subscript.getter(v104, v103, v148);
          outlined consume of Result<_DataTable, Error>(v103, 0);
          v105 = v144;
          if (v145)
          {
            break;
          }

          v106 = v99;
          outlined copy of Result<_DataTable, Error>(v144, 0);
          _UntypedColumn.valueAtIndex(index:)(v149._countAndFlagsBits, a7);
          outlined consume of Result<_DataTable, Error>(v105, 0);
          v109 = v150._countAndFlagsBits;
          if (v151)
          {
            outlined consume of MLDataValue(v150._countAndFlagsBits, v150._object, v151);
            v107 = v105;
            v108 = 0;
            goto LABEL_50;
          }

          outlined consume of Result<_DataTable, Error>(v105, 0);
          v110 = v149._object;
          if (!swift_isUniquelyReferenced_nonNull_native(v149._object))
          {
LABEL_57:
            v110 = specialized _ArrayBuffer._consumeAndCreateNew()(v110);
          }

LABEL_52:
          if (v137 < 0)
          {
            BUG();
          }

          if (v137 >= v110[2])
          {
            BUG();
          }

          v149._object = v110;
          v110[v137 + 4] = v109;
          v99 = v106 + 1;
          v98 = v132;
          v111 = v106 + 1 == CMLSequence.size.getter();
          v91 = v147._countAndFlagsBits;
          if (v111)
          {
            goto LABEL_58;
          }
        }

        v106 = v99;
        v107 = v144;
        v108 = 1;
LABEL_50:
        outlined consume of Result<_DataTable, Error>(v107, v108);
        v110 = v149._object;
        v109 = 0;
        if (!swift_isUniquelyReferenced_nonNull_native(v149._object))
        {
          goto LABEL_57;
        }

        v109 = 0;
        goto LABEL_52;
      }

LABEL_58:
      v112 = v149._countAndFlagsBits + 1;

      outlined consume of MLDataValue(v98, v138, 3);
      v149._countAndFlagsBits = v112;
      v92 = v146;
      if (v112 == v139)
      {
        goto LABEL_59;
      }
    }

    swift_willThrow();
    outlined copy of Result<_DataTable, Error>(v92, 1);
    goto LABEL_74;
  }

LABEL_59:
  v147._countAndFlagsBits = v91;
  v141;
  v150._countAndFlagsBits = v149._object;
  v113 = alloca(24);
  v114 = alloca(32);
  v153 = &v150;
  ML14_UntypedColumnC_s5Error_pTt1g5 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
  v117 = v116;
  v150._countAndFlagsBits;
  MLDataTable.willMutate()();
  v150._countAndFlagsBits = ML14_UntypedColumnC_s5Error_pTt1g5;
  LOBYTE(v150._object) = v117 & 1;
  LODWORD(v149._object) = v117;
  outlined copy of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v117);
  MLDataTable.addImpl(newColumn:named:)(&v150, 0x6F69746974726170, 0xE90000000000006ELL);
  outlined consume of Result<_DataTable, Error>(v150._countAndFlagsBits, v150._object);
  v118 = v143;
  if (v143)
  {
    outlined consume of Result<_DataTable, Error>(v134, v135);
    outlined consume of Result<_DataTable, Error>(v146, v148);
    v119 = v142;
  }

  else
  {
    v119 = v142;
    outlined copy of Result<_DataTable, Error>(v142, 0);
    _DataTable.columnNamesDidChange()();
    outlined consume of Result<_DataTable, Error>(v119, 0);
    outlined consume of Result<_DataTable, Error>(v134, v135);
    outlined consume of Result<_DataTable, Error>(v146, v148);
  }

  outlined consume of Result<_DataTable, Error>(ML14_UntypedColumnC_s5Error_pTt1g5, v149._object);
  result = v127;
  *v127 = v119;
  *(result + 8) = v118;
  return result;
}

uint64_t MLDataTable.stratifiedSplit<A>(proportions:on:generator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = *(v7 + 8);
  v11 = *v7;
  v12 = v9;
  return stratifiedSplitGenerator<A>(proportions:generator:dataTable:on:)(a1, a4, &v11, a2, a3, a5, a7, a6);
}

uint64_t MLDataTable.randomSplit(by:seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    swift_errorRetain(*v3);
    *a1 = v4;
    *(a1 + 8) = 1;
    *a2 = v4;
    *(a2 + 8) = 1;
    return swift_errorRetain(v4);
  }

  else
  {
    v6 = *(v4 + 16);

    v8 = CMLTable.split(fraction:seed:)(a3);
    v13 = v9;
    v10 = type metadata accessor for _DataTable();
    swift_allocObject(v10, 40, 7);
    v12 = _DataTable.init(impl:)(v8);
    swift_allocObject(v10, 40, 7);
    v11 = _DataTable.init(impl:)(v13);
    outlined consume of Result<_DataTable, Error>(v4, 0);
    *a1 = v12;
    result = 0;
    *(a1 + 8) = 0;
    *a2 = v11;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, uint64_t a8)
{
  v42._object = a6;
  v42._countAndFlagsBits = a5;
  *v37 = a4;
  *v38 = a3;
  v41 = a7;
  v34 = a1;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  inited = swift_initStackObject(v11, v27);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  v13 = v41;
  *(inited + 32) = v41;
  *(inited + 40) = 1.0 - v13;
  if (a8 < 0)
  {
    BUG();
  }

  v14 = inited;
  v41 = *&a2;
  v15 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v15, 136, 7);
  v32 = MersenneTwisterGenerator.init(seed:)(a8);
  specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(v14, &v32, v9, v10, *v38, *v37, 1.0 - v13, v42);

  swift_setDeallocating(v14);
  v16 = v28;
  v17 = v29;
  v38[0] = v29;
  LOBYTE(v29) = v29 & 1;
  v18 = v29;
  outlined copy of Result<_DataTable, Error>(v28, v17);
  v19._countAndFlagsBits = 0x6F69746974726170;
  v19._object = 0xE90000000000006ELL;
  MLDataTable.subscript.getter(v19);
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v39 = v35;
  v40 = v36;
  v30 = &type metadata for Int;
  v31 = &protocol witness table for Int;
  v28 = 0;
  static MLUntypedColumn.== infix(_:_:)(&v39, &v28);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  v35 = v16;
  LOBYTE(v43) = v18;
  v36 = v18;
  v39 = v32;
  v40 = v33;
  LOBYTE(v14) = v38[0];
  outlined copy of Result<_DataTable, Error>(v16, v38[0]);
  MLDataTable.subscript.getter(&v39);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  outlined consume of Result<_DataTable, Error>(v35, v36);
  v42._object = v28;
  LODWORD(v42._countAndFlagsBits) = v29;
  *v37 = v16;
  v28 = v16;
  LOBYTE(v29) = v18;
  outlined copy of Result<_DataTable, Error>(v16, v14);
  v19._countAndFlagsBits = 0x6F69746974726170;
  v19._object = 0xE90000000000006ELL;
  MLDataTable.subscript.getter(v19);
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v39 = v35;
  v40 = v36;
  v30 = &type metadata for Int;
  v31 = &protocol witness table for Int;
  v28 = (&dword_0 + 1);
  static MLUntypedColumn.== infix(_:_:)(&v39, &v28);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  v35 = *v37;
  v36 = v43;
  v39 = v32;
  v40 = v33;
  outlined copy of Result<_DataTable, Error>(*v37, v14);
  MLDataTable.subscript.getter(&v39);
  outlined consume of Result<_DataTable, Error>(v39, v40);
  outlined consume of Result<_DataTable, Error>(v35, v36);
  v20 = v28;
  v21 = v29;
  object = v42._object;
  v28 = v42._object;
  LOBYTE(v16) = v42._countAndFlagsBits;
  LOBYTE(v29) = v42._countAndFlagsBits;
  outlined copy of Result<_DataTable, Error>(v42._object, v42._countAndFlagsBits);
  outlined copy of Result<_DataTable, Error>(object, v16);
  v43 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v43 = specialized RandomAccessCollection<>.distance(from:to:)(0, v43, object, v16);
  outlined consume of Result<_DataTable, Error>(object, v16);
  v28 = v20;
  LOBYTE(v29) = v21;
  outlined copy of Result<_DataTable, Error>(v20, v21);
  outlined copy of Result<_DataTable, Error>(v20, v21);
  v23 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v28, v29);
  v24 = specialized RandomAccessCollection<>.distance(from:to:)(0, v23, v20, v21);
  outlined consume of Result<_DataTable, Error>(*v37, v38[0]);
  outlined consume of Result<_DataTable, Error>(v20, v21);
  v25 = v34;
  if (v43 >= v24)
  {
    *v34 = v20;
    *(v25 + 8) = v21;
    result = *&v41;
    **&v41 = v42._object;
    *(result + 8) = v42._countAndFlagsBits;
  }

  else
  {
    *v34 = v42._object;
    *(v25 + 8) = v42._countAndFlagsBits;
    result = *&v41;
    **&v41 = v20;
    *(result + 8) = v21;
  }

  return result;
}

uint64_t MLDataTable.stratifiedSplitBySequence(proportions:by:on:seed:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  if (a6 < 0)
  {
    BUG();
  }

  v14 = *v7;
  v18 = *(v7 + 8);
  v13 = a4;
  v16 = a3;
  v17 = a2;
  v15 = a5;
  v9 = type metadata accessor for MersenneTwisterGenerator();
  swift_allocObject(v9, 136, 7);
  v12 = MersenneTwisterGenerator.init(seed:)(a6);
  v11._object = v15;
  v11._countAndFlagsBits = v13;
  specialized stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(a1, &v12, v14, v18, a2, v16, a7, v11);
}

uint64_t MLDataTable.stratifiedSplitBySequence<A>(proportions:by:on:generator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, __int128 a7)
{
  v8 = *(v7 + 8);
  v10 = *v7;
  v11 = v8;
  return stratifiedSplitBySequenceGenerator<A>(proportions:generator:dataTable:by:on:)(a1, a6, &v10, a2, a3, a4, *&a7, a5, a7, *(&a7 + 1));
}

uint64_t MLHandActionClassifier.GraphCNN.writeMLPackage(to:metadata:)(uint64_t a1, const void *a2, double a3, double a4)
{
  v63 = v4;
  v83 = v5;
  v74 = a1;
  v82 = type metadata accessor for Model(0);
  v81 = *(v82 - 8);
  v6 = *(v81 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v80 = v60;
  v77 = type metadata accessor for URL(0);
  v78 = *(v77 - 8);
  v9 = *(v78 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v72 = v60;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v71 = v60;
  v14 = alloca(v9);
  v15 = alloca(v9);
  v70 = v60;
  v85 = type metadata accessor for Package(0);
  v84 = *(v85 - 8);
  v16 = *(v84 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v79 = v60;
  v75 = type metadata accessor for MLPackageWritingOptions(0);
  v76 = *(v75 - 8);
  v19 = *(v76 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v64 = v60;
  v65 = type metadata accessor for ScalarType(0);
  v66 = *(v65 - 8);
  v22 = *(v66 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v67 = v60;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v68 = v60;
  v28 = *(*(type metadata accessor for TensorShape(0) - 8) + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v73 = v60;
  qmemcpy(v60, a2, sizeof(v60));
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v32 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v33 = *(v32 - 8);
  v34 = *(v33 + 80);
  v35 = (v34 + 32) & ~*(v33 + 80);
  v36 = swift_allocObject(v31, v35 + *(v33 + 72), v34 | 7);
  v69 = v36;
  *(v36 + 16) = 1;
  *(v36 + 24) = 2;
  v37 = v36 + v35 + *(v32 + 48);
  *(v36 + v35) = 0x7365736F70;
  *(v36 + v35 + 8) = 0xE500000000000000;
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v39 = swift_allocObject(v38, 56, 7);
  *(v39 + 16) = 3;
  *(v39 + 24) = 6;
  v40 = v83;
  v41 = v83 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v83 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v62, 0, 0);
  *(v39 + 32) = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) + 40) + v41);
  v42 = _mm_shuffle_epi32(_mm_loadu_si128((v40 + 24)), 78);
  *(v39 + 40) = v42;
  TensorShape.init(_:)(v39, *v42.i64, a4);
  v43 = type metadata accessor for ComputeDevice(0);
  v44 = v68;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v43);
  v45 = v67;
  (*(v66 + 104))(v67, enum case for ScalarType.float32(_:), v65);
  Tensor.init(zeros:scalarType:on:)(v73, v45, v44);
  v46 = type metadata accessor for Tensor(0);
  v47 = Dictionary.init(dictionaryLiteral:)(v69, &type metadata for String, v46, &protocol witness table for String);
  v61[0] = v40;
  v48 = v40;

  v49 = v64;
  static MLPackageWritingOptions.default.getter(v48);
  v50 = lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation();
  v51 = v63;
  Layer<>.writeMLPackage(withInput:output:to:options:)(v47, 0, v74, v49, &unk_393E38, v50);
  v47;
  (*(v76 + 8))(v49, v75);
  if (v51)
  {
  }

  v53 = v70;
  (*(v78 + 16))(v70, v74, v77);
  Package.init(url:)(v53);
  v54 = v71;
  Package.rootModelURL.getter();
  v55 = v80;
  Model.init(contentsOf:)(v54);
  v56 = v55;
  MLHandActionClassifier.GraphCNN.convertIntoClassifier(_:)(v55);
  v57 = v72;
  v58 = v56;
  v59 = v79;
  Package.setRootModel(_:)(v58);
  (*(v78 + 8))(v57, v77);
  qmemcpy(v61, v60, sizeof(v61));
  MLHandActionClassifier.GraphCNN.addMetadata(_:_:)(v59, v61);
  (*(v81 + 8))(v80, v82);
  return (*(v84 + 8))(v59, v85);
}

uint64_t MLHandActionClassifier.GraphCNN.MLPackageRepresentation.forward(_:)(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v57 = type metadata accessor for TensorShape(0);
  v58 = *(v57 - 8);
  v2 = *(v58 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v59 = v52;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v64 = v52;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor)?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v63 = type metadata accessor for Tensor(0);
  v10 = *(v63 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v60 = v52;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v56 = v52;
  v16 = alloca(v11);
  v17 = alloca(v11);
  v18 = alloca(v11);
  v19 = alloca(v11);
  if (*(a1 + 16) != 1)
  {
    goto LABEL_6;
  }

  a1;
  specialized Collection.first.getter(a1);
  a1;
  v20 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor));
  if (__swift_getEnumTagSinglePayload(v52, 1, v20) == 1)
  {
    outlined destroy of (key: String, value: Tensor)?(v52);
LABEL_6:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001FLL, "PackageExport.swift" + 0x8000000000000000, "CreateML/MLHandActionClassifier+PackageExport.swift", 51, 2, 28, 0);
    goto LABEL_8;
  }

  v53;
  v21 = *(v20 + 48);
  v65 = v10;
  v22 = *(v10 + 32);
  v23 = v63;
  v22(v52, &v52[v21], v63);
  v22(v52, v52, v23);
  v66 = v52;
  Tensor.shape.getter(v52, v52, v24);
  v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v25 = swift_allocObject(v61, 56, 7);
  *(v25 + 16) = 3;
  *(v25 + 24) = 6;
  v26 = v67;
  v27 = v67 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v67 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v52, 0, 0);
  v62 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  *(v25 + 32) = *(*(v62 + 40) + v27);
  v28 = _mm_shuffle_epi32(_mm_loadu_si128((v26 + 24)), 78);
  *(v25 + 40) = v28;
  v29 = v59;
  TensorShape.init(_:)(v25, *v28.i64);
  v30 = TensorShape.dimensions.getter();
  v31 = TensorShape.dimensions.getter();
  LOBYTE(v22) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1gq5(v30, v31);
  v30;
  v31;
  v32 = *(v58 + 8);
  v33 = v57;
  v32(v29, v57);
  v32(v64, v33);
  if ((v22 & 1) == 0)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    v55;
    v54 = 0xD00000000000001ALL;
    v55 = "There should be a single input." + 0x8000000000000000;
    v48 = swift_allocObject(v61, 56, 7);
    *(v48 + 16) = 3;
    *(v48 + 24) = 6;
    *(v48 + 32) = *(v27 + *(v62 + 40));
    *(v48 + 40) = _mm_shuffle_epi32(_mm_loadu_si128((v67 + 24)), 78);
    v49._countAndFlagsBits = Array.description.getter(v48, &type metadata for Int);
    object = v49._object;
    String.append(_:)(v49);
    v48;
    object;
    v51._countAndFlagsBits = 46;
    v51._object = 0xE100000000000000;
    String.append(_:)(v51);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v54, v55, "CreateML/MLHandActionClassifier+PackageExport.swift", 51, 2, 31, 0);
LABEL_8:
    BUG();
  }

  v34 = v60;
  Tensor.expandingShape(at:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNN.MLPackageRepresentation.forward(_:));
  v35 = v56;
  MLHandActionClassifier.GraphCNN.callAsFunction(_:)(v34);
  v67 = *(v65 + 8);
  v36 = v63;
  (v67)(v34, v63);
  v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Tensor)>);
  v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (String, Tensor));
  v39 = *(v38 - 8);
  v40 = *(v39 + 80);
  v41 = (v40 + 32) & ~*(v39 + 80);
  v42 = swift_allocObject(v37, v41 + *(v39 + 72), v40 | 7);
  *(v42 + 16) = 1;
  *(v42 + 24) = 2;
  v43 = v42 + v41 + *(v38 + 48);
  *(v42 + v41) = 0xD000000000000010;
  *(v42 + v41 + 8) = "labelProbabilityRaw" + 0x8000000000000000;
  (*(v65 + 16))(v43, v35, v36);
  v44 = Dictionary.init(dictionaryLiteral:)(v42, &type metadata for String, v36, &protocol witness table for String);
  v45 = v35;
  v46 = v67;
  (v67)(v45, v36);
  v46(v66, v36);
  return v44;
}

uint64_t protocol witness for Layer.forward(_:) in conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation(uint64_t *a1)
{
  v3 = v1;
  result = MLHandActionClassifier.GraphCNN.MLPackageRepresentation.forward(_:)(*a1, *v2);
  *v3 = result;
  return result;
}

uint64_t MLHandActionClassifier.GraphCNN.convertIntoClassifier(_:)(uint64_t a1)
{
  v29 = v1;
  v38 = type metadata accessor for ModelKind(0);
  v37 = *(v38 - 8);
  v2 = *(v37 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v28 = &v27;
  v5 = alloca(v2);
  v6 = alloca(v2);
  v30 = &v27;
  v34 = type metadata accessor for MLProgram(0);
  v35 = *(v34 - 8);
  v7 = *(v35 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v36 = &v27;
  v40 = type metadata accessor for FeatureType(0);
  v31 = *(v40 - 8);
  v10 = *(v31 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v33 = a1;
  Model.predictedFeatureName.setter(0x6C6562616CLL, 0xE500000000000000);
  outputProbabilityName = "shape does not match." + 0x8000000000000000;
  Model.predictedProbabilitiesName.setter(0xD000000000000012, "shape does not match." + 0x8000000000000000);
  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v14 = *(type metadata accessor for FeatureDescription(0) - 8);
  v32 = *(v14 + 72);
  v15 = swift_allocObject(v13, ((*(v14 + 80) + 32) & ~*(v14 + 80)) + 2 * v32, *(v14 + 80) | 7);
  *(v15 + 16) = 2;
  *(v15 + 24) = 4;
  FeatureType.StringParameters.init(optional:)(0);
  (*(v31 + 104))(&v27, enum case for FeatureType.string(_:), v40);
  FeatureDescription.init(name:type:description:)(0x6C6562616CLL, 0xE500000000000000, &v27, 0, 0xE000000000000000);
  static FeatureType.dictionaryWithStringKeys(optional:)(0);
  v16 = v30;
  FeatureDescription.init(name:type:description:)(0xD000000000000012, outputProbabilityName, &v27, 0, 0xE000000000000000);
  v17 = v15;
  v18 = v38;
  Model.outputs.setter(v17);
  Model.kind.getter();
  v19 = v37;
  LODWORD(v40) = (*(v37 + 88))(v16, v18);
  if (v40 != enum case for ModelKind.mlProgram(_:))
  {
    (*(v19 + 8))(v16, v18);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, "ityClassifier.Model.swift" + 0x8000000000000000, "CreateML/MLHandActionClassifier+PackageExport.swift", 51, 2, 69, 0);
    BUG();
  }

  (*(v19 + 96))(v16, v18);
  v20 = v36;
  (*(v35 + 32))(v36, v16, v34);
  v21._rawValue = *(v29 + 16);
  v21._rawValue;
  v41._countAndFlagsBits = 0x6C6562616CLL;
  v41._object = 0xE500000000000000;
  MLProgram.addClassifierSpecification(classLabels:probabilityTensorName:outputProbabilityName:outputLabelName:)(v21, __PAIR128__(("labelProbabilityRaw" + 0x8000000000000000), 0xD000000000000010), __PAIR128__(outputProbabilityName, 0xD000000000000012), v41);
  v21._rawValue;
  v22 = v28;
  v23 = v20;
  v24 = v34;
  v25 = v35;
  (*(v35 + 16))(v28, v23, v34);
  (*(v37 + 104))(v22, v40, v38);
  Model.kind.setter(v22);
  return (*(v25 + 8))(v36, v24);
}

uint64_t MLHandActionClassifier.GraphCNN.addMetadata(_:_:)(uint64_t a1, uint64_t *a2)
{
  v20 = a1;
  v25 = type metadata accessor for Package.ModelMetadata(0);
  v24 = *(v25 - 8);
  v2 = *(v24 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v22 = *a2;
  v5 = a2[1];
  v21 = a2[2];
  v6 = a2[3];
  v23 = a2[4];
  v26 = a2[5];
  v27 = *(a2 + 3);
  v7 = a2[8];
  Package.ModelMetadata.init()();
  if (v5)
  {
    v5;
    Package.ModelMetadata.author.setter(v22, v5);
    v6;
    Package.ModelMetadata.description.setter(v21, v6);
    v27._object;
    Package.ModelMetadata.version.setter(v27._countAndFlagsBits, v27._object);
    if (v26)
    {
      v26;
      Package.ModelMetadata.license.setter(v23, v26);
    }

    if (v7)
    {
      v7;
      Package.ModelMetadata.creatorDefined.setter(v7);
    }
  }

  else
  {
    v8 = NSFullUserName();
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)(v9);
    v12 = v11;

    Package.ModelMetadata.author.setter(v10, v12);
  }

  v27 = getOSVersion()();
  v26 = Package.ModelMetadata.creatorDefined.modify(v18);
  v14 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*v13);
  v19 = *v14;
  *v14 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27._countAndFlagsBits, v27._object, 0xD00000000000001ALL, ("Recommender Model" + 0x8000000000000000), isUniquelyReferenced_nonNull_native);
  *v14 = v19;
  v26(v18, 0);
  Package.writeMetadata(_:)(&v17);
  return (*(v24 + 8))(&v17, v25);
}

uint64_t lazy protocol witness table accessor for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation()
{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation;
  if (!lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandActionClassifier.GraphCNN.MLPackageRepresentation, &unk_393E38);
    lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNN.MLPackageRepresentation and conformance MLHandActionClassifier.GraphCNN.MLPackageRepresentation = result;
  }

  return result;
}

uint64_t outlined destroy of (key: String, value: Tensor)?(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (key: String, value: Tensor)?);
  (*(*(v1 - 8) + 8))(a1, v1);
  return a1;
}

uint64_t destroy for RecommenderTrainingData(void *a1, uint64_t a2)
{
  *a1, a2;
  a1[1], a2;
  a1[2], a2;
  a1[3], a2;
  a1[7], a2;
  a1[8], a2;
  return a1[9];
}

uint64_t initializeWithCopy for RecommenderTrainingData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = a2[1];
  *(a1 + 8) = v4;
  v5 = a2[2];
  *(a1 + 16) = v5;
  v6 = a2[3];
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = *(a2 + 48);
  v7 = a2[7];
  *(a1 + 56) = v7;
  v10 = a2[8];
  *(a1 + 64) = v10;
  v9 = a2[9];
  *(a1 + 72) = v9;
  v3;
  v4;
  v5;
  v6;
  v7;
  v10;
  v9;
  return a1;
}

uint64_t *assignWithCopy for RecommenderTrainingData(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v3;
  v4, a2;
  v5 = a2[1];
  v6 = a1[1];
  a1[1] = v5;
  v5;
  v6, a2;
  v7 = a2[2];
  v8 = a1[2];
  a1[2] = v7;
  v7;
  v8, a2;
  v9 = a2[3];
  v10 = a1[3];
  a1[3] = v9;
  v9;
  v10, a2;
  a1[4] = a2[4];
  a1[5] = a2[5];
  *(a1 + 48) = *(a2 + 48);
  v11 = a2[7];
  v12 = a1[7];
  a1[7] = v11;
  v11;
  v12, a2;
  v13 = a2[8];
  v14 = a1[8];
  a1[8] = v13;
  v13;
  v14, a2;
  v15 = a2[9];
  v16 = a1[9];
  a1[9] = v15;
  v15;
  v16;
  return a1;
}

uint64_t assignWithTake for RecommenderTrainingData(uint64_t a1, uint64_t a2)
{
  *a1, a2;
  v3 = *(a1 + 8);
  *a1 = *a2;
  v3, a2;
  *(a1 + 16), a2;
  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  v4, a2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56), a2;
  v5 = *(a1 + 64);
  *(a1 + 56) = *(a2 + 56);
  v5, a2;
  v6 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for RecommenderTrainingData(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 & 0xFFFFFFFF00000001) != 0 ? -1 : *a1 >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for RecommenderTrainingData(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 80) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 80) = 0;
    }

    if (a2)
    {
      *a1 = 2 * (a2 - 1);
    }
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySaySdGG_14NeuralNetworks6TensorVsAE_pTg5036_s8CreateML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v75 = v5;
  v74 = a3;
  v65._countAndFlagsBits = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v55 = v52;
  v56 = type metadata accessor for ScalarType(0);
  v57 = *(v56 - 8);
  v9 = *(v57 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v58 = v52;
  v59 = type metadata accessor for TensorShape(0);
  v64 = *(v59 - 8);
  v12 = *(v64 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v73 = v52;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v60 = v52;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v66 = v52;
  v61 = type metadata accessor for Tensor(0);
  v62 = *(v61 - 8);
  v20 = *(v62 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v67 = v52;
  v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v24 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Double]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Double]>, &protocol conformance descriptor for Column<A>);
  v72 = v23;
  v25 = dispatch thunk of Collection.count.getter(v23, v24);
  if (v25)
  {
    v71 = _swiftEmptyArrayStorage;
    v26 = 0;
    if (v25 > 0)
    {
      v26 = v25;
    }

    v69 = v25;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v76 = v71;
    dispatch thunk of Collection.startIndex.getter(v72, v24);
    if (v69 < 0)
    {
      BUG();
    }

    v68 = v24;
    v70 = enum case for ScalarType.float32(_:);
    v27 = 0;
    v63 = a1;
    while (1)
    {
      v28 = __OFADD__(1, v27);
      v29 = v27 + 1;
      if (v28)
      {
        BUG();
      }

      v54 = v29;
      v30 = dispatch thunk of Collection.subscript.read(v52, &v65._object, v72, v68);
      v32 = *v31;
      *v31;
      v30(v52, 0);
      if (!v32)
      {
        break;
      }

      v33 = v66;
      v34 = v59;
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v59);
      v35 = v33;
      v36 = v60;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v35, v60, &demangling cache variable for type metadata for TensorShape?);
      if (__swift_getEnumTagSinglePayload(v36, 1, v34) == 1)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
        v38 = swift_allocObject(v37, 40, 7);
        v38[2] = 1;
        v38[3] = 2;
        v38[4] = *(v32 + 16);
        TensorShape.init(_:)(v38, a4, a5);
        if (__swift_getEnumTagSinglePayload(v36, 1, v34) != 1)
        {
          outlined destroy of Tensor?(v36, &demangling cache variable for type metadata for TensorShape?);
        }
      }

      else
      {
        (*(v64 + 32))(v73, v36, v34);
      }

      v39 = v58;
      (*(v57 + 104))(v58, v70, v56);
      v40 = type metadata accessor for ComputeDevice(0);
      v41 = v55;
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v40);
      v42 = alloca(24);
      v43 = alloca(32);
      v53 = v32;
      v44 = v75;
      Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(v73, v39, v41, partial apply for closure #1 in Array<A>.floatTensor(shape:));
      v75 = v44;
      outlined destroy of Tensor?(v66, &demangling cache variable for type metadata for TensorShape?);
      v32;
      v45 = v76;
      v71 = v76;
      v46 = v76[2];
      if (v76[3] >> 1 <= v46)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v76[3] >= 2uLL, v46 + 1, 1);
        v45 = v71;
      }

      v45[2] = v46 + 1;
      v47 = *(v62 + 80);
      v76 = v45;
      (*(v62 + 32))(v45 + ((v47 + 32) & ~v47) + *(v62 + 72) * v46, v67, v61);
      dispatch thunk of Collection.formIndex(after:)(&v65._object, v72, v68);
      v27 = v54;
      if (v54 == v69)
      {
        v74;
        return v76;
      }
    }

    v48 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v48, 0, 0);
    v49._countAndFlagsBits = v65._countAndFlagsBits;
    v50 = v74;
    v49._object = v74;
    static MLCreateError.featureNotFound(feature:)(v49);
    swift_willThrow(v49._countAndFlagsBits, v49._object);
    v50;
  }

  else
  {
    v74;
    return _swiftEmptyArrayStorage;
  }
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v21 = a3;
  v23 = type metadata accessor for Tensor(0);
  v24 = *(v23 - 8);
  v5 = *(v24 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v27 = &v19;
  v22 = a2;
  v29 = a1;
  v8 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    BUG();
  }

  if (!v8)
  {
    return _swiftEmptyArrayStorage;
  }

  v9 = a2 - a1;
  v30 = _swiftEmptyArrayStorage;
  v10 = 0;
  if (v8 > 0)
  {
    v10 = v8;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  if (v8 < 0)
  {
    BUG();
  }

  v11 = v30;
  v25 = v29 - 1;
  v12 = 0;
  v26 = v9;
  do
  {
    if (v12 >= v9)
    {
      BUG();
    }

    v13 = v12 + 1;
    if (__OFADD__(1, v12))
    {
      BUG();
    }

    v19 = v12 + v29;
    closure #2 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(&v19, v21);
    v20 = v4;
    if (v4)
    {

      BUG();
    }

    v30 = v11;
    v14 = v11[2];
    v15 = v11[3];
    v16 = v14 + 1;
    if (v15 >> 1 <= v14)
    {
      v28 = v14 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v15 >= 2, v14 + 1, 1);
      v16 = v28;
      v11 = v30;
    }

    v11[2] = v16;
    (*(v24 + 32))(v11 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v14, v27, v23);
    if (v22 < v29)
    {
      BUG();
    }

    if ((v12 + v25 + 1) >= v22)
    {
      BUG();
    }

    ++v12;
    v17 = v13 == v26;
    v9 = v26;
    v4 = v20;
  }

  while (!v17);
  return v11;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySiGG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F13VSaySiGXEfU2_SaySSGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v27 = &v16;
  v21 = type metadata accessor for Tensor(0);
  v22 = *(v21 - 8);
  v6 = *(v22 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v20 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v28 = a2;
    v26 = v2;
    v29 = _swiftEmptyArrayStorage;
    v10 = 0;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v29;
    v24 = type metadata accessor for ComputeDevice(0);
    v23 = v9;
    v25 = &v16;
    do
    {
      v17 = *(v20 + 8 * v10 + 32);
      v12 = v17;
      v18 = *(v28 + 16);
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v24);
      v12;
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
      v13 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &demangling cache variable for type metadata for [Int], &protocol conformance descriptor for [A]);
      Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:on:)(&v17, v18, v27, v19, v13, 1.0, 0.0);
      v29 = v11;
      v14 = v11[2];
      if (v11[3] >> 1 <= v14)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v11[3] >= 2uLL, v14 + 1, 1);
        v11 = v29;
      }

      ++v10;
      v11[2] = v14 + 1;
      (*(v22 + 32))(v11 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v14, v25, v21);
    }

    while (v23 != v10);
    v28;
  }

  else
  {
    a2;
    return _swiftEmptyArrayStorage;
  }

  return v11;
}

uint64_t MLActivityClassifier.Trainer.train(on:validationData:eventHandler:)(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v228 = v5;
  v216 = v6;
  v205 = a4;
  v204 = a3;
  v189 = v4;
  v186 = type metadata accessor for Event(0, a2, a3);
  v187 = *(v186 - 8);
  v7 = *(v187 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v188 = &v179;
  v198 = type metadata accessor for MetricsKey(0);
  v190 = *(v198 - 8);
  v10 = *(v190 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v191 = &v179;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v192 = &v179;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v185 = &v179;
  v180 = type metadata accessor for WeightedDataSample(0);
  v18 = *(*(v180 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v181 = &v179;
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v195 = &v179;
  v183 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v24 = *(*(v183 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v208 = &v179;
  v212 = type metadata accessor for Tensor(0);
  v203 = *(v212 - 8);
  v27 = *(v203 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v193 = &v179;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v184 = &v179;
  v32 = alloca(v27);
  v33 = alloca(v27);
  v182 = &v179;
  v34 = alloca(v27);
  v35 = alloca(v27);
  v219 = &v179;
  v225 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v214 = *(v225 - 8);
  v36 = *(v214 + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v196 = &v179;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v220 = &v179;
  v226 = COERCE_DOUBLE(type metadata accessor for LearningPhase(0));
  v213 = *(*&v226 - 8);
  v41 = *(v213 + 8);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v217 = COERCE_DOUBLE(&v179);
  v44 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v45 = alloca(v44);
  v46 = alloca(v44);
  v210 = &v179;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v48 = alloca(v47);
  v49 = alloca(v47);
  v209 = &v179;
  v50 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v51 = alloca(v50);
  v52 = alloca(v50);
  v221 = &v179;
  v197 = type metadata accessor for MLActivityClassifier.Model(0);
  v53 = *(*(v197 - 8) + 64);
  v54 = alloca(v53);
  v55 = alloca(v53);
  v199 = &v179;
  v56 = alloca(v53);
  v57 = alloca(v53);
  v227 = &v179;
  v222 = type metadata accessor for DataFrame(0);
  v223 = *(v222 - 8);
  v58 = *(v223 + 64);
  v59 = alloca(v58);
  v60 = alloca(v58);
  v61 = alloca(v58);
  v62 = alloca(v58);
  v218 = &v179;
  v63 = v228;
  result = MLActivityClassifier.Trainer.validateData(_:_:)(a1, a2);
  if (!v63)
  {
    v207 = &v179;
    v194 = a2;
    v65 = v218;
    (*(v223 + 16))(v218, a1, v222);
    v66 = *(type metadata accessor for MLActivityClassifier.Trainer(0) + 20);
    v67 = v216;
    v215 = *(v216 + v66 + 48);
    v68._countAndFlagsBits = v215;
    v228 = 0;
    v201 = *(v216 + v66 + 56);
    v68._object = v201;
    DataFrame.convertNumericColumnsToFloat(except:)(v68);
    v68._countAndFlagsBits = v65;
    v69 = v201;
    v224 = MLActivityClassifier.Trainer.getClassLabels(_:_:)(v68._countAndFlagsBits);
    v200 = *(v67 + v66 + 8);
    v206 = *(v67 + v66 + 32);
    v70 = *(v67 + v66 + 40);
    v202 = v66;
    LOBYTE(v67) = *(v67 + v66 + 16);
    v70;
    v71 = v69;
    v69;
    v72 = v224;
    v224;
    MLActivityClassifier.Model.init(windowSize:features:target:classLabels:randomSeed:)(v206, v70, v215, v71, v72, v200, v67);
    v73 = type metadata accessor for GradientClippingMode(0);
    v74 = v209;
    __swift_storeEnumTagSinglePayload(v209, 1, 1, v73);
    v75 = type metadata accessor for RegularizationKind(0);
    v76 = v210;
    __swift_storeEnumTagSinglePayload(v210, 1, 1, v75);
    v215 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
    v77 = v197;
    Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(v227, 0, v74, v76, v197, v215, 0.001, 0.89999998, 0.99900001, 0.0000000099999999, 1.0);
    v78 = *&v217;
    v79 = v226;
    v80 = v213;
    (*(v213 + 13))(COERCE_DOUBLE(*&v217), enum case for LearningPhase.training(_:), COERCE_DOUBLE(*&v226));
    Layer.prepare(for:)(v78, v77, v215);
    v68._countAndFlagsBits = v78;
    v81 = v224;
    v82 = (*(v80 + 1))(v68._countAndFlagsBits, COERCE_DOUBLE(*&v79));
    v83 = v218;
    v84 = v228;
    MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(v81, v218, v227, 0, v82, COERCE_DOUBLE(1063675494));
    if (v84)
    {
      v81;
      outlined destroy of Tensor?(v221, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
      v85 = v83;
LABEL_4:
      (*(v223 + 8))(v85, v222);
      v86 = v227;
      return outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLActivityClassifier.Model);
    }

    v81;
    v87 = ClassificationMetricsContainer.init(classLabels:)(v81);
    v228 = 0;
    v88 = v87;
    v90 = v89;
    v91 = *(v197 + 72);
    v92 = v227;
    v210 = &v227[v91];
    v93 = *&v227[v91];
    v94 = *&v227[v91 + 8];
    v95 = *&v227[v91 + 16];
    v226 = *&v96;
    outlined consume of ClassificationMetricsContainer?(v93, v94, v95);
    *&v92[v91] = v88;
    *&v92[v91 + 8] = v90;
    *&v92[v91 + 16] = v226;
    v97 = *(v216 + v202);
    if (v97 < 0)
    {
      BUG();
    }

    v98 = v228;
    if (!v97)
    {
      goto LABEL_34;
    }

    v215 = &v92[v91 + 8];
    v209 = 0;
    v206 = v97;
    while (2)
    {
      if (*v210)
      {
        v99 = v98;
        v228 = *(v210 + 2);
        v100 = *(v228 + 16);
        v101 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
        swift_allocObject(v101, *(v101 + 48), *(v101 + 52));
        v102 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v100);
        if (v99)
        {
          v174 = v227;
          v175 = v225;
          v176 = v221;
          v224;
          (*(v214 + 8))(v220, v175);
          outlined destroy of Tensor?(v176, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          (*(v223 + 8))(v218, v222);
          v86 = v174;
          return outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLActivityClassifier.Model);
        }

        v103 = v102;
        v104 = v210;
        v105 = *v210;

        *v104 = v103;
        v106 = *(v228 + 16);
        swift_allocObject(v101, *(v101 + 48), *(v101 + 52));
        v107 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v106);
        v98 = 0;
        v108 = v107;
        v109 = v215;
        v93 = *v215;

        *v109 = v108;
        v110 = v225;
      }

      else
      {
        v110 = v225;
      }

      v228 = v98;
      v200 = (v209 + 1);
      static Tensor.zero.getter(v93);
      v111 = v208;
      Dataset.makeIterator()(v110);
      v112 = *(v183 + 44);
      v213 = *(v111 + v112);
      v217 = *(v111 + v112 + 8);
      v226 = COERCE_DOUBLE(lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator));
      while (1)
      {
        v113 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
        dispatch thunk of IteratorProtocol.next()(v113, *&v226);
        v114 = v211;
        v115 = v180;
        if (v211)
        {
          v179 = v211;
          v116 = v195;
          (v213)(&v179);
          v114;
          v117 = v116;
          v118 = 0;
        }

        else
        {
          v116 = v195;
          v117 = v195;
          v118 = 1;
        }

        __swift_storeEnumTagSinglePayload(v117, v118, 1, v115);
        v98 = v228;
        if (__swift_getEnumTagSinglePayload(v116, 1, v115) == 1)
        {
          break;
        }

        v119 = v181;
        outlined init with take of WeightedDataSample(v116, v181);
        static Task<>.checkCancellation()();
        if (v98)
        {
          v224;
          outlined destroy of MLActivityClassifier.ModelParameters(v119, type metadata accessor for WeightedDataSample);
          outlined destroy of Tensor?(v208, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
          (*(v203 + 8))(v219, v212);
          (*(v214 + 8))(v220, v225);
          outlined destroy of Tensor?(v221, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          v85 = v218;
          goto LABEL_4;
        }

        v120 = v182;
        MLActivityClassifier.Trainer.update(_:using:on:)(v227, v221, v119, v82, COERCE_DOUBLE(1063675494));
        v228 = 0;
        static Tensor.+= infix(_:_:)(v219, v120);
        (*(v203 + 8))(v120, v212);
        outlined destroy of MLActivityClassifier.ModelParameters(v119, type metadata accessor for WeightedDataSample);
      }

      outlined destroy of Tensor?(v208, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
      if (!*v210)
      {
        BUG();
      }

      v121 = v184;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, v82, COERCE_DOUBLE(1063675494));
      v122 = *(v224 + 2);
      v82 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v121, v122);
      v226 = v82;
      v123 = *(v203 + 8);
      v124 = v121;
      v125 = v212;
      v123(v124, v212);
      if (!v204)
      {
        v142 = v219;
        goto LABEL_33;
      }

      v202 = v122;
      v213 = v123;
      v126 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MetricsKey, Double)>);
      v127 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MetricsKey, Double));
      v128 = *(v127 - 8);
      v129 = v127;
      v201 = v127;
      v217 = *(v128 + 72);
      v130 = *(v128 + 80);
      v131 = (v130 + 32) & ~*(v128 + 80);
      v132 = swift_allocObject(v126, v131 + 2 * *&v217, v130 | 7);
      *(v132 + 16) = 2;
      *(v132 + 24) = 4;
      v133 = v132 + v131;
      v134 = v133 + *(v129 + 48);
      v135 = v205;

      static MetricsKey.trainingLoss.getter(v135);
      Tensor.scalar<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
      v136 = *&v217 + v133;
      v137 = v201[12];
      static MetricsKey.trainingAccuracy.getter();
      v82 = v226;
      *(v137 + v136) = v226;
      v138 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MetricsKey and conformance MetricsKey, &type metadata accessor for MetricsKey, &protocol conformance descriptor for MetricsKey);
      v226 = COERCE_DOUBLE(Dictionary.init(dictionaryLiteral:)(v132, v198, &type metadata for Double, v138));
      v139 = v185;
      outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v194, v185, &demangling cache variable for type metadata for DataFrame?);
      v140 = v222;
      if (__swift_getEnumTagSinglePayload(v139, 1, v222) == 1)
      {
        outlined destroy of Tensor?(v139, &demangling cache variable for type metadata for DataFrame?);
        v141 = v216;
LABEL_27:
        v147 = *&v226;
LABEL_32:
        v164 = *v141;
        v165 = v141[1];
        v165;
        v166 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v147);
        v147;
        v167 = v188;
        Event.init(origin:itemCount:totalItemCount:metrics:)(v164, v165, v209, v206, 0, v166);
        v168 = v205;
        v169 = v204;
        v204(v167);
        _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v169, v168);
        (*(v187 + 8))(v167, v186);
        v98 = v228;
        v125 = v212;
        v142 = v219;
        v123 = v213;
LABEL_33:
        v93 = v142;
        v123(v142, v125);
        v209 = v200;
        v92 = v227;
        if (v200 != v206)
        {
          continue;
        }

LABEL_34:
        v224;
        v170.super.isa = MLActivityClassifier.Model.makeMLModel()().super.isa;
        if (v171)
        {
          (*(v214 + 8))(v220, v225);
          outlined destroy of Tensor?(v221, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          (*(v223 + 8))(v218, v222);
        }

        else
        {
          isa = v170.super.isa;
          (*(v214 + 8))(v220, v225);
          outlined destroy of Tensor?(v221, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
          (*(v223 + 8))(v218, v222);
          v173 = *(v197 + 68);

          *&v92[v173] = isa;
          outlined init with copy of MLTrainingSessionParameters(v92, v189, type metadata accessor for MLActivityClassifier.Model);
        }

        v86 = v92;
        return outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLActivityClassifier.Model);
      }

      break;
    }

    v143 = v207;
    v144 = v139;
    v145 = v223;
    (*(v223 + 32))(v207, v144, v140);
    v146 = DataFrameProtocol.isEmpty.getter(v140, &protocol witness table for DataFrame);
    v141 = v216;
    if (v146)
    {
      (*(v145 + 8))(v143, v140);
      goto LABEL_27;
    }

    v148 = v227;
    v149 = v143;
    v150 = v199;
    outlined init with copy of MLTrainingSessionParameters(v227, v199, type metadata accessor for MLActivityClassifier.Model);
    v151 = v228;
    MLActivityClassifier.Trainer.makeDataset(_:_:using:for:)(v224, v149, v148, 1, v82, COERCE_DOUBLE(1063675494));
    if (!v151)
    {
      if (!*v210)
      {
        BUG();
      }

      v152 = v150;
      v153 = v196;
      MLActivityClassifier.Trainer.evaluate(model:using:classLabels:confussionMatrix:)(v152, v82, COERCE_DOUBLE(1063675494), v196, v224, v215);
      v217 = v82;
      v228 = 0;
      (*(v214 + 8))(v153, v225);
      outlined destroy of MLActivityClassifier.ModelParameters(v199, type metadata accessor for MLActivityClassifier.Model);
      v154 = v192;
      static MetricsKey.validationLoss.getter();
      v155 = v226;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(*&v226);
      v211 = *&v155;
      v157 = v217;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v154, isUniquelyReferenced_nonNull_native, v217);
      v158 = v211;
      v226 = *(v190 + 8);
      (*&v226)(v154, v198);
      v159 = v191;
      static MetricsKey.validationAccuracy.getter();
      if (!*v210)
      {
        BUG();
      }

      v160 = *v215;
      v161 = v193;
      _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, v157, COERCE_DOUBLE(1063675494));
      v217 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v161, v202);
      v213(v161, v212);
      v162 = swift_isUniquelyReferenced_nonNull_native(v158);
      v211 = v158;
      v82 = v217;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v159, v162, v217);
      v163 = v159;
      v147 = v211;
      (*&v226)(v163, v198);
      (*(v223 + 8))(v207, v222);
      v141 = v216;
      goto LABEL_32;
    }

    _sxRi_zRi0_zlySaySdGIsegr_SgWOe(v204, v205);
    v224;
    outlined destroy of MLActivityClassifier.ModelParameters(v150, type metadata accessor for MLActivityClassifier.Model);
    v177 = *(v223 + 8);
    v178 = v222;
    v177(v207, v222);
    *&v226;
    v213(v219, v212);
    (*(v214 + 8))(v220, v225);
    outlined destroy of Tensor?(v221, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
    v177(v218, v178);
    v86 = v227;
    return outlined destroy of MLActivityClassifier.ModelParameters(v86, type metadata accessor for MLActivityClassifier.Model);
  }

  return result;
}

uint64_t MLActivityClassifier.Trainer.init(checkpoint:configuration:)(uint64_t a1, uint64_t a2)
{
  ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5 = v3;
  v55 = a1;
  v5 = v2;
  v6 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v44 = &v29;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v43 = &v29;
  v53 = type metadata accessor for URL(0);
  v12 = *(v53 - 8);
  v13 = *(v12 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v50 = &v29;
  *v5 = 0xD00000000000001BLL;
  v5[1] = "missed_predicting_this" + 0x8000000000000000;
  v16 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v17 = *(v16 + 24);
  *(v5 + v17) = 0;
  outlined init with copy of MLTrainingSessionParameters(a2, v5 + *(v16 + 20), type metadata accessor for MLActivityClassifier.Configuration);
  MLActivityClassifier.Trainer.initializeModel()();
  ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5 = v18;
  if (v18)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a2, type metadata accessor for MLActivityClassifier.Configuration);
    (*(v12 + 8))(v55, v53);
    return outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLActivityClassifier.Trainer);
  }

  else
  {
    v51 = a2;
    v52 = v12;
    v47 = *(v5 + v17);
    v48 = v5;
    if (!v47)
    {
      BUG();
    }

    v20 = v50;
    URL.appendingPathComponent(_:)(0x7461446C65646F6DLL, 0xE900000000000061);
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
    LOBYTE(v30[0]) = 1;
    v30[1] = 44;
    v30[2] = 0xE100000000000000;
    v30[3] = 0;
    v30[4] = 0xE000000000000000;
    v30[5] = 92;
    v30[6] = 0xE100000000000000;
    v31 = 1;
    v32 = 34;
    v33 = 0xE100000000000000;
    v34 = 1;
    v35 = &outlined read-only object #0 of default argument 1 of MLDataTable.init(contentsOf:options:);
    v36 = 10;
    v37 = 0xE100000000000000;
    v38 = 0;
    v39 = 1;
    v40 = 0;
    outlined retain of MLDataTable.ParsingOptions(__src);
    outlined release of MLDataTable.ParsingOptions(v30, 0xE000000000000000);
    memcpy(__dst, __src, sizeof(__dst));
    v21 = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5;
    MLDataTable.init(contentsOf:options:)(v20, __dst);
    if (v21)
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Configuration);
      (*(v52 + 8))(v55, v53);
      return outlined destroy of MLActivityClassifier.ModelParameters(v48, type metadata accessor for MLActivityClassifier.Trainer);
    }

    else
    {
      v22 = v45;
      v23 = v46;
      ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5 = _s8CreateML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5(v45, v46, 0.0);
      v49 = v23;
      v50 = v22;
      v24 = v47 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
      swift_beginAccess(v47 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, __dst, 0, 0);
      v25 = v24;
      v26 = v44;
      outlined init with copy of MLTrainingSessionParameters(v25, v44, type metadata accessor for MLActivityClassifier.Model);
      v27 = v43;
      v28 = ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5;
      _s14NeuralNetworks4AdamV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD20MLActivityClassifierV5ModelV_Tt2g5(v26, ML16_ModelCheckpointPAA14NeuralNetworks5Layer0C0RpzrlE03getD10Dictionary4fromSDySSSaySdGGAA11MLDataTableV_tKFZAA20MLActivityClassifierV7TrainerV0C9ContainerC_Tt0B5);
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLActivityClassifier.Model);
      specialized _ModelCheckpoint<>.updateGraph<A>(from:optimizer:checkpointDictionary:)(v55, v27, v28);
      outlined consume of Result<_DataTable, Error>(v50, v49);
      v28;
      outlined destroy of MLActivityClassifier.ModelParameters(v51, type metadata accessor for MLActivityClassifier.Configuration);
      (*(v52 + 8))(v55, v53);
      return outlined destroy of Tensor?(v27, &demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
    }
  }
}

uint64_t *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18EnumeratedSequenceVySay14NeuralNetworks6TensorVGG_8CreateML18WeightedDataSampleVs5NeverOTg506_sSi14f9Networks6h2V8i4ML18klm32VIgynr_Si6offset_AC7elementtAFs5N11OIegnrzr_TRSiAjOIgynr_Tf1cn_n(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v28 = a3;
  v29 = a2;
  v3 = 0;
  v30 = *(type metadata accessor for WeightedDataSample(0) - 8);
  v4 = *(v30 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = &v26;
  v31 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: Tensor));
  v8 = *(*(v31 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = &v26;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v33 = &v26;
  v35 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
  v13 = v35;
  v27 = *(a1 + 16);
  v34 = a1;
  a1;
  while (v27 != v3)
  {
    v14 = type metadata accessor for Tensor(0);
    v15 = *(v14 - 8);
    v16 = v34 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v3 * *(v15 + 72);
    v36 = v13;
    v17 = v31;
    v18 = v32;
    v19 = v32 + *(v31 + 48);
    *v32 = v3;
    (*(v15 + 16))(v19, v16, v14);
    v26 = v3;
    v20 = v33;
    outlined init with take of DataFrame?(v18, v33, &demangling cache variable for type metadata for (offset: Int, element: Tensor));
    v29(*v20, v20 + *(v17 + 48));
    v13 = v36;
    outlined destroy of Tensor?(v20, &demangling cache variable for type metadata for (offset: Int, element: Tensor));
    v35 = v13;
    v21 = v13[2];
    v22 = v13[3];
    v23 = v26;
    v24 = v7;
    if (v22 >> 1 <= v21)
    {
      v36 = v7;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22 >= 2, v21 + 1, 1);
      v24 = v36;
      v13 = v35;
    }

    v13[2] = v21 + 1;
    v7 = v24;
    outlined init with take of WeightedDataSample(v24, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21);
    v3 = v23 + 1;
  }

  v34;
  return v13;
}

char *specialized Sequence.sorted(by:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  a1;

  v5 = specialized _copySequenceToContiguousArray<A>(_:)(a1, a2, a3);

  a1;
  v8 = v5;
  specialized MutableCollection<>.sort(by:)(&v8);
  v6 = v8;
  if (v3)
  {
  }

  return v6;
}

uint64_t specialized Sequence.first(where:)(uint64_t a1, void *a2)
{
  v27 = a2;
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FilledColumn<Column<String>>);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v28 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  v7 = *(*(v28 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  (*(v3 + 16))(v20, v29, v2);
  v10 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  dispatch thunk of Sequence.makeIterator()(v2, v10);
  v25 = &v20[*(v28 + 36)];
  v11 = v2;
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type FilledColumn<Column<String>> and conformance FilledColumn<A>, &demangling cache variable for type metadata for FilledColumn<Column<String>>, &protocol conformance descriptor for FilledColumn<A>);
  v23 = v27 + 7;
  v22 = v2;
  v26 = v20;
  for (i = v12; ; v12 = i)
  {
    v13 = v12;
    dispatch thunk of Collection.endIndex.getter(v11, v12);
    if (*v25 == v21[0])
    {
      break;
    }

    v28 = dispatch thunk of Collection.subscript.read(v21, v25, v11, v13);
    v29 = *v14;
    v15 = v14[1];
    v15;
    (v28)(v21, 0);
    dispatch thunk of Collection.formIndex(after:)(v25, v11, i);
    v28 = v27[2];
    if (!v28)
    {
      goto LABEL_15;
    }

    if (v29 ^ v27[4] | v15 ^ v27[5] && (_stringCompareWithSmolCheck(_:_:expecting:)(v27[4], v27[5], v29, v15, 0) & 1) == 0)
    {
      if (v28 == 1)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v17 = 1;
      while (1)
      {
        if (__OFADD__(1, v17++))
        {
          BUG();
        }

        if (!(v29 ^ *(v16 - 1) | v15 ^ *v16) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v16 - 1), *v16, v29, v15, 0) & 1) != 0)
        {
          break;
        }

        v16 += 2;
        if (v17 == v28)
        {
          goto LABEL_15;
        }
      }
    }

    v15;
    v11 = v22;
  }

  v29 = 0;
LABEL_15:
  outlined destroy of Tensor?(v26, &demangling cache variable for type metadata for IndexingIterator<FilledColumn<Column<String>>>);
  v27;
  return v29;
}

uint64_t static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), void (*a6)(unint64_t *, uint64_t))
{
  v59 = a6;
  v60 = a5;
  v63 = a3;
  v51 = a2;
  v52 = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v53 = &v49;
  v57 = type metadata accessor for TensorShape(0);
  v62 = *(v57 - 8);
  v9 = *(v62 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v55 = &v49;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = type metadata accessor for Tensor(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v54 = &v49;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v58 = &v49;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v23 = &v49;
  v24 = alloca(v16);
  v25 = alloca(v16);
  v61 = &v49;
  Tensor.transposed(permutation:)(&outlined read-only object #0 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
  v26 = v60;
  v60 = *(v15 + 16);
  v60(&v49, v26, v14);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v59, v63, &demangling cache variable for type metadata for Tensor?);
  Tensor.shape.getter();
  v27 = TensorShape.dimensions.getter();
  v28 = *(v27 + 16);
  v27;
  v59 = *(v62 + 8);
  v59(&v49, v57);
  if (v28 == 3)
  {
    v29 = v58;
    Tensor.expandingShape(at:)(&outlined read-only object #1 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
    v62 = *(v15 + 8);
    (v62)(&v49, v14);
    v30 = *(v15 + 32);
    v30(&v49, v29, v14);
    if (!__swift_getEnumTagSinglePayload(v63, 1, v14))
    {
      v31 = v29;
      v32 = 1;
      v56 = &v49;
      v60(v31, v63, v14);
      v33 = v55;
      Tensor.shape.getter();
      (v62)(v31, v14);
      v34 = TensorShape.dimensions.getter();
      v35 = *(v34 + 16);
      v34;
      v59(v33, v57);
      if (v35 == 2)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v63, 1, v14);
        v37 = v53;
        v38 = v61;
        if (!EnumTagSinglePayload)
        {
          v39 = v58;
          v60(v58, v63, v14);
          v40 = v54;
          Tensor.expandingShape(at:)(&outlined read-only object #2 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
          (v62)(v39, v14);
          Tensor.expandingShape(at:)(&outlined read-only object #3 of static MLActivityClassifier.Trainer.reshapeLabels(prediction:target:weights:));
          v38 = v61;
          (v62)(v40, v14);
          v32 = 0;
        }

        __swift_storeEnumTagSinglePayload(v37, v32, 1, v14);
        outlined assign with take of Tensor?(v37, v63);
        v23 = v56;
        goto LABEL_11;
      }

      v23 = v56;
    }

    v38 = v61;
LABEL_11:
    v30(v52, v38, v14);
    return (v30)(v51, v23, v14);
  }

  v41 = v58;
  if (v28 != 2)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v50;
    v49 = 0xD00000000000001ALL;
    v50 = "n the input data" + 0x8000000000000000;
    v44 = v55;
    Tensor.shape.getter();
    v45 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v46 = v57;
    v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(v57, v45);
    object = v47._object;
    String.append(_:)(v47);
    object;
    v59(v44, v46);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v49, v50, "CreateML/MLActivityClassifier+Training.swift", 44, 2, 360, 0);
    BUG();
  }

  v42 = v61;
  Tensor.reshaped(like:)(&v49);
  (*(v15 + 40))(v42, v41, v14);
  v30 = *(v15 + 32);
  v30(v52, v42, v14);
  return (v30)(v51, v23, v14);
}

void static MLCreateError.featureNotFound(feature:)(Swift::String a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(49);
  0xE000000000000000, a1._object;
  *&v4 = 0x2065727574616546;
  *(&v4 + 1) = 0xEF206E6D756C6F63;
  String.append(_:)(a1);
  v3._object = " has an unsupported format: " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v3);
  *v2 = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
}

void *specialized Sequence.compactMap<A>(_:)(void (*a1)(void *), uint64_t a2)
{
  v31 = v2;
  i = v3;
  v28 = a2;
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v9 = *(*(v35 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  (*(v5 + 16))(v25, i, v4);
  v12 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Sequence.makeIterator()(v4, v12);
  v13 = v25;
  v14 = (v25 + *(v35 + 36));
  v15 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[String]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[String]>, &protocol conformance descriptor for Column<A>);
  v33 = _swiftEmptyArrayStorage;
  v30 = v4;
  v32 = v25;
  v35 = v14;
  for (i = v15; ; v15 = i)
  {
    dispatch thunk of Collection.endIndex.getter(v4, v15);
    if (*v14 == v25[0])
    {
      outlined destroy of Tensor?(v13, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
      return v33;
    }

    v27 = dispatch thunk of Collection.subscript.read(v25, v14, v4, i);
    v17 = *v16;
    *v16;
    v27(v25, 0);
    dispatch thunk of Collection.formIndex(after:)(v35, v4, i);
    v25[0] = v17;
    v18 = v31;
    v29(v25);
    if (v18)
    {
      break;
    }

    v31 = 0;
    v17;
    v19 = v26;
    if (v26)
    {
      v20 = v33;
      if (!swift_isUniquelyReferenced_nonNull_native(v33))
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v21 = v20[2];
      v22 = v20;
      if (v20[3] >> 1 <= v21)
      {
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v21 + 1, 1, v20);
      }

      v22[2] = v21 + 1;
      v33 = v22;
      v22[v21 + 4] = v19;
      v4 = v30;
      v13 = v32;
      v14 = v35;
    }

    else
    {
      v13 = v32;
      v14 = v35;
      v4 = v30;
    }
  }

  v17;
  outlined destroy of Tensor?(v32, &demangling cache variable for type metadata for IndexingIterator<Column<[String]>>);
  v23 = v33;
  v33;
  return v23;
}

{
  v50 = v2;
  v51 = v3;
  v41 = a2;
  v42 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v43 = v39;
  v45 = type metadata accessor for Tensor(0);
  v47 = *(v45 - 8);
  v7 = *(v47 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v48 = v39;
  v10 = alloca(v7);
  v11 = alloca(v7);
  v44 = v39;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  i = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for IndexingIterator<Column<[Float]>>);
  v17 = *(*(i - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  (*(v13 + 16))(v39, v51, v12);
  v20 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
  dispatch thunk of Sequence.makeIterator()(v12, v20);
  v21 = v39;
  v51 = (v39 + *(i + 36));
  v22 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Column<[Float]> and conformance Column<A>, &demangling cache variable for type metadata for Column<[Float]>, &protocol conformance descriptor for Column<A>);
  v23 = v12;
  v24 = v22;
  v53 = _swiftEmptyArrayStorage;
  v49 = v12;
  v46 = v39;
  for (i = v22; ; v24 = i)
  {
    v25 = v23;
    dispatch thunk of Collection.endIndex.getter(v23, v24);
    if (*v51 == v39[0])
    {
      outlined destroy of Tensor?(v21, &demangling cache variable for type metadata for IndexingIterator<Column<[Float]>>);
      return v53;
    }

    v40 = dispatch thunk of Collection.subscript.read(v39, v51, v25, v24);
    v27 = *v26;
    *v26;
    v40(v39, 0);
    dispatch thunk of Collection.formIndex(after:)(v51, v25, i);
    v39[0] = v27;
    v28 = v43;
    v29 = v50;
    v42(v39);
    v50 = v29;
    if (v29)
    {
      break;
    }

    v27;
    v30 = v45;
    v31 = v28;
    if (__swift_getEnumTagSinglePayload(v28, 1, v45) == 1)
    {
      outlined destroy of Tensor?(v28, &demangling cache variable for type metadata for Tensor?);
      v23 = v49;
    }

    else
    {
      v32 = *(v47 + 32);
      v33 = v44;
      v32(v44, v31, v30);
      v32(v48, v33, v30);
      v34 = v53;
      if (!swift_isUniquelyReferenced_nonNull_native(v53))
      {
        v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34[2] + 1, 1, v34);
      }

      v35 = v34[2];
      v53 = v34;
      if (v34[3] >> 1 <= v35)
      {
        v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34[3] >= 2uLL, v35 + 1, 1, v53);
      }

      v36 = v53;
      v53[2] = v35 + 1;
      v32((v36 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v35), v48, v45);
      v23 = v49;
    }

    v21 = v46;
  }

  v27;
  outlined destroy of Tensor?(v46, &demangling cache variable for type metadata for IndexingIterator<Column<[Float]>>);
  v37 = v53;
  v53;
  return v37;
}

void static MLCreateError.metricNotFound(metric:)(Swift::String a1)
{
  v2 = v1;
  _StringGuts.grow(_:)(36);
  0xE000000000000000, a1._object;
  *&v4 = 0x2063697274654DLL;
  *(&v4 + 1) = 0xE700000000000000;
  String.append(_:)(a1);
  v3._object = "Validation class " + 0x8000000000000000;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v3);
  *v2 = v4;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
}

void (*MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:)(uint64_t a1, void (*a2)(uint64_t *, uint64_t), double a3, double a4))(uint64_t *, uint64_t)
{
  v116 = v4;
  v96 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[String]>);
  v107 = *(v109 - 8);
  v6 = *(v107 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v106 = &v87;
  v110 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Float]>);
  v108 = *(v110 - 8);
  v9 = *(v108 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v105 = &v87;
  v100 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Column<[Double]>);
  v101 = *(v100 - 8);
  v12 = *(v101 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v94 = &v87;
  v92 = type metadata accessor for AnyColumn(0);
  ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n = *(v92 - 8);
  v15 = *(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n + 8);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v93 = &v87;
  v102 = type metadata accessor for DataFrame.Rows(0);
  v117._object = *(v102 - 8);
  v18 = *(v117._object + 8);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v95 = &v87;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v113 = type metadata accessor for DataFrame(0);
  v112 = *(v113 - 8);
  v23 = *(v112 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = &v87;
  v97 = a1;
  v111 = *(a1 + 40);
  v27 = v5;
  (DataFrame.rows.getter)();
  v28 = DataFrame.Rows.count.getter();
  countAndFlagsBits = *(v117._object + 1);
  countAndFlagsBits(&v87, v102);
  v30 = timestampSeed()();
  v31 = 0;
  v32 = v28;
  v104 = v27;
  v33 = v116;
  MLActivityClassifier.DataBatcher.generateBatch(startingAt:rowCount:seed:)(0, v28, v30);
  if (!v33)
  {
    v98 = countAndFlagsBits;
    v117._object = 0;
    countAndFlagsBits = _swiftEmptyArrayStorage;
    v99 = _swiftEmptyArrayStorage;
    v35 = v111;
    v36 = *(v111 + 16);
    v116 = &v87;
    if (v36)
    {
      v111;
      v37 = (v35 + 40);
      countAndFlagsBits = _swiftEmptyArrayStorage;
      while (1)
      {
        v90 = v36;
        v115 = countAndFlagsBits;
        v38 = *(v37 - 1);
        v91 = v37;
        v39 = *v37;
        *v37;
        v117._countAndFlagsBits = v38;
        v40._countAndFlagsBits = v38;
        v40._object = v39;
        v41 = v26;
        v42 = DataFrame.indexOfColumn(_:)(v40);
        countAndFlagsBits = ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n;
        if (v42.is_nil)
        {
          goto LABEL_16;
        }

        value = v42.value;
        v44 = DataFrame.columns.getter();
        if (value < 0)
        {
          BUG();
        }

        v45 = v44;
        if (value >= *(v44 + 16))
        {
          BUG();
        }

        v46 = ((*(countAndFlagsBits + 80) + 32) & ~*(countAndFlagsBits + 80)) + v44 + *(countAndFlagsBits + 9) * value;
        v103 = v39;
        v47 = v93;
        countAndFlagsBits = v92;
        (*(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n + 2))(v93, v46, v92);
        v45;
        v48 = AnyColumn.wrappedElementType.getter();
        v49 = v47;
        v39 = v103;
        (*(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n + 1))(v49, countAndFlagsBits);
        v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        v41 = v116;
        if (v48 != v50)
        {
LABEL_16:
          v111;
          v55 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          swift_allocError(&type metadata for MLCreateError, v55, 0, 0);
          v56._countAndFlagsBits = v117._countAndFlagsBits;
          v56._object = v39;
          static MLCreateError.featureNotFound(feature:)(v56);
          v39;
          swift_willThrow(v39, v39);
          (*(v112 + 8))(v41, v113);
          v57 = v115;
          goto LABEL_23;
        }

        v51 = v94;
        countAndFlagsBits = v117._countAndFlagsBits;
        DataFrame.subscript.getter(v117._countAndFlagsBits, v39, v50);
        v39;
        object = v117._object;
        ML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF11TabularData6ColumnVySaySdGG_14NeuralNetworks6TensorVsAE_pTg5036_s8CreateML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n(v51, countAndFlagsBits, v39, a3, a4);
        v117._object = object;
        if (object)
        {
          break;
        }

        v117._countAndFlagsBits = ML20MLActivityClassifierV11e88BatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_u12SSGAOSgtKF14g9Networks6I15VSaySdGSgKXEfU_SSTf1cn_n;
        v32 = v100;
        (*(v101 + 8))(v51, v100);
        v39;
        countAndFlagsBits = v115;
        if (!swift_isUniquelyReferenced_nonNull_native(v115))
        {
          v32 = *(countAndFlagsBits + 2) + 1;
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 1, countAndFlagsBits);
        }

        v54 = *(countAndFlagsBits + 2);
        if (*(countAndFlagsBits + 3) >> 1 <= v54)
        {
          v32 = v54 + 1;
          countAndFlagsBits = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(*(countAndFlagsBits + 3) >= 2uLL, v54 + 1, 1, countAndFlagsBits);
        }

        *(countAndFlagsBits + 2) = v54 + 1;
        *(countAndFlagsBits + v54 + 4) = v117._countAndFlagsBits;
        v99 = countAndFlagsBits;
        v37 = v91 + 2;
        v36 = (v90 - 1);
        v26 = v116;
        if (v90 == (&dword_0 + 1))
        {
          v58 = v111;
          v31 = v111;
          v111;
          v59 = *(v58 + 16);
          goto LABEL_18;
        }
      }

      (*(v101 + 8))(v51, v100);
      v111;
      (*(v112 + 8))(v41, v113);
      v115;
      v39;
    }

    else
    {
      v59 = 0;
LABEL_18:
      v60 = *(countAndFlagsBits + 2);
      if (v59 == v60)
      {
        v115 = countAndFlagsBits;
        v61 = v95;
        DataFrame.rows.getter(v31, v32, v34, v112);
        v62 = DataFrame.Rows.count.getter();
        v98(v61, v102);
        if (v62 < 0)
        {
          BUG();
        }

        v63 = v117._object;
        ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n(0, v62, &v99);
        v117._countAndFlagsBits = v63;
        v117._object = *(v97 + 48);
        v64 = *(v97 + 56);
        v88 = v117._object;
        v89 = v64;
        v64;
        v65._countAndFlagsBits = 0x7468676965775FLL;
        v65._object = 0xE700000000000000;
        String.append(_:)(v65);
        v66 = v88;
        v67 = v89;
        v68 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
        v65._countAndFlagsBits = v66;
        v69 = v116;
        DataFrame.subscript.getter(v65._countAndFlagsBits, v67, v68);
        v67;
        v70 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
        v71 = v106;
        DataFrame.subscript.getter(v117._object, v64, v70);
        v117._object = &v87;
        v72 = alloca(32);
        v73 = alloca(32);
        countAndFlagsBits = v96;
        v89 = v96;
        v90 = v104;
        v74 = v117._countAndFlagsBits;
        v75 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:), &v87);
        if (v74)
        {
          ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n;
          (*(v107 + 8))(v71, v109);
          (*(v108 + 8))(v105, v110);
          (*(v112 + 8))(v69, v113);
          v115;
        }

        else
        {
          v79 = v75;
          countAndFlagsBits;
          v117._countAndFlagsBits = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySaySiGG_14NeuralNetworks6TensorVs5NeverOTg50128_s8CreateML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F13VSaySiGXEfU2_SaySSGTf1cn_n(v79, countAndFlagsBits);
          v79;
          v80 = alloca(24);
          v81 = alloca(32);
          v89 = v104;
          v82 = v105;
          v83 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #5 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:), &v87);
          v103 = &v87;
          v84 = alloca(32);
          v85 = alloca(32);
          v89 = v117._countAndFlagsBits;
          v90 = v83;
          v86 = ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n;
          countAndFlagsBits = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs18EnumeratedSequenceVySay14NeuralNetworks6TensorVGG_8CreateML18WeightedDataSampleVs5NeverOTg506_sSi14f9Networks6h2V8i4ML18klm32VIgynr_Si6offset_AC7elementtAFs5N11OIegnrzr_TRSiAjOIgynr_Tf1cn_n(ML20MLActivityClassifierV11DataBatcherV17asWeightedSamples4with11classLabels6labelsSayAA0hE6SampleVGAC13ConfigurationV_t12SSGAOSgtKF14d9Networks6F9VSiXEfU0_SaySayAIGGTf1cn_n, partial apply for closure #6 in MLActivityClassifier.DataBatcher.asWeightedSamples(with:classLabels:labels:), &v87);
          v117._object = 0;
          v86;
          (*(v107 + 8))(v106, v109);
          (*(v108 + 8))(v82, v110);
          (*(v112 + 8))(v116, v113);
          v115;
          v83;
          v117._countAndFlagsBits;
        }
      }

      else
      {
        v76 = v112;
        v77 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v77, 0, 0);
        static MLCreateError.featureCountMismatch(expected:actual:)(v59, v60);
        swift_willThrow(v59, v60);
        (*(v76 + 8))(v116, v113);
        v57 = countAndFlagsBits;
LABEL_23:
        v57;
      }
    }
  }

  return countAndFlagsBits;
}

uint64_t MLActivityClassifier.Trainer.iterateTraining(using:validationSamples:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v139 = a2;
  v142 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>.PrefetchMode);
  v133 = *(v134 - 8);
  v6 = *(v133 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v132 = &v122;
  v152 = type metadata accessor for MLActivityClassifier.Model(0);
  v9 = *(*(v152 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v143 = &v122;
  v12 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v145 = &v122;
  v141 = type metadata accessor for WeightedDataSample(0);
  v16 = *(*(v141 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v147 = &v122;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for WeightedDataSample?) - 8) + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v144 = &v122;
  v148 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
  v22 = *(*(v148 - 8) + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v158 = COERCE_DOUBLE(&v122);
  v151 = type metadata accessor for Tensor(0);
  v154 = *(v151 - 8);
  v25 = *(v154 + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v140 = &v122;
  v28 = alloca(v25);
  v29 = alloca(v25);
  v131 = &v122;
  v30 = alloca(v25);
  v31 = alloca(v25);
  v137 = &v122;
  v32 = alloca(v25);
  v33 = alloca(v25);
  v150 = &v122;
  v149 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dataset<[WeightedDataSample], WeightedDataSample>);
  v146 = *(v149 - 8);
  v34 = *(v146 + 64);
  v35 = alloca(v34);
  v36 = alloca(v34);
  v135 = &v122;
  v37 = alloca(v34);
  v38 = alloca(v34);
  v153 = &v122;
  v39 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLActivityClassifier.Model?) - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v155 = &v122;
  v42 = alloca(v39);
  v43 = alloca(v39);
  v138 = v12;
  v44 = *(v12 + 24);
  v157 = v5;
  v45 = *(v5 + v44);
  if (v45)
  {
    v46 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v45;
    swift_beginAccess(v46, v125, 0, 0);
    outlined init with copy of MLTrainingSessionParameters(v46, &v122, type metadata accessor for MLActivityClassifier.Model);
    __swift_storeEnumTagSinglePayload(&v122, 0, 1, v152);
    outlined destroy of Tensor?(&v122, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
    v47 = v157;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v122, 1, 1, v152);
    outlined destroy of Tensor?(&v122, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
    v54 = v157;
    MLActivityClassifier.Trainer.initializeModel()();
    if (v4)
    {
      return v44;
    }

    v47 = v54;
  }

  v156 = v4;
  v48 = *(v47 + v44);
  if (!v48)
  {
    v121 = v155;
    __swift_storeEnumTagSinglePayload(v155, 1, 1, v152);
    outlined destroy of Tensor?(v121, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ifier7Trainer14ModelContainer" + 0x8000000000000000, "CreateML/MLActivityClassifier+Training.swift", 44, 2, 226, 0);
    BUG();
  }

  v49 = v48 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
  swift_beginAccess(v48 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model, v124, 0, 0);
  v50 = v155;
  outlined init with copy of MLTrainingSessionParameters(v49, v155, type metadata accessor for MLActivityClassifier.Model);
  v51 = v152;
  __swift_storeEnumTagSinglePayload(v50, 0, 1, v152);
  outlined destroy of Tensor?(v50, &demangling cache variable for type metadata for MLActivityClassifier.Model?);
  v155 = v48;
  v44 = MLActivityClassifier.Trainer.ModelContainer.model.modify(v136);
  if (*(v52 + *(v51 + 72)))
  {
    ClassificationMetricsContainer.resetIteration()();
    if (v53)
    {
      (v44)(v136, 1);
      return v44;
    }

    (v44)(v136, 0);
  }

  else
  {
    (v44)(v136, 0);
    v53 = v156;
  }

  v55 = v157 + *(v138 + 20);
  specialized Sequence<>.makeDataset(configuration:)(v55, v142);
  if (!v53)
  {
    v156 = 0;
    static Tensor.zero.getter(v55);
    v56 = v158;
    Dataset.makeIterator()(v149);
    v57 = *(v148 + 44);
    v129 = *(*&v56 + v57);
    v130 = *(*&v56 + v57 + 8);
    v148 = v155 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model;
    v155 = (v155 + OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_optimizer);
    v142 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator and conformance Batches<A>.Iterator, &demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator, &protocol conformance descriptor for Batches<A>.Iterator);
    v58 = v137;
    while (1)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>.Iterator);
      dispatch thunk of IteratorProtocol.next()(v59, v142);
      v60 = v136[0];
      if (v136[0])
      {
        v127[0] = v136[0];
        v61 = v144;
        v129(v127);
        v62 = v61;
        v58 = v137;
        v60;
        v63 = v61;
        v64 = 0;
      }

      else
      {
        v62 = v144;
        v63 = v144;
        v64 = 1;
      }

      v65 = v141;
      __swift_storeEnumTagSinglePayload(v63, v64, 1, v141);
      if (__swift_getEnumTagSinglePayload(v62, 1, v65) == 1)
      {
        break;
      }

      v44 = v147;
      outlined init with take of WeightedDataSample(v62, v147);
      v66 = v156;
      static Task<>.checkCancellation()();
      if (v66)
      {
        outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for WeightedDataSample);
        outlined destroy of Tensor?(*&v158, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
        (*(v154 + 8))(v150, v151);
        (*(v146 + 8))(v153, v149);
        return v44;
      }

      v67 = v148;
      v156 = 0;
      swift_beginAccess(v148, v136, 33, 0);
      v68 = v155;
      swift_beginAccess(v155, v127, 33, 0);
      v69 = v67;
      v44 = v147;
      v70 = v156;
      MLActivityClassifier.Trainer.update(_:using:on:)(v69, v68, v147, a3, a4);
      if (v70)
      {
        swift_endAccess(v127);
        swift_endAccess(v136);
        outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for WeightedDataSample);
        outlined destroy of Tensor?(*&v158, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
        (*(v154 + 8))(v150, v151);
        (*(v146 + 8))(v153, v149);
        return v44;
      }

      v156 = 0;
      swift_endAccess(v127);
      swift_endAccess(v136);
      static Tensor.+= infix(_:_:)(v150, v58);
      (*(v154 + 8))(v58, v151);
      outlined destroy of MLActivityClassifier.ModelParameters(v44, type metadata accessor for WeightedDataSample);
    }

    outlined destroy of Tensor?(*&v158, &demangling cache variable for type metadata for LazyMapSequence<Batches<LazyPrefetchingMapSequence<LazySequence<Sampling<[WeightedDataSample]>>, WeightedDataSample>>, WeightedDataSample>.Iterator);
    v71 = v148;
    swift_beginAccess(v148, v127, 0, 0);
    v72 = v152;
    v73 = *(v152 + 72);
    v74 = v131;
    if (!*(v71 + v73))
    {
      BUG();
    }

    v75 = *(v71 + v73);

    _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, a3, a4);

    v76 = *(v72 + 72);
    v77 = v74;
    v78 = *(v71 + v76);
    if (!v78)
    {
      BUG();
    }

    v79 = v71;
    v80 = *(v71 + v76 + 8);
    v81 = *(v79 + v76 + 16);
    v81;
    outlined copy of ClassificationMetricsContainer?(v78, v80, v81);
    v81;

    v82 = *(v81 + 16);
    v81;
    v158 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v77, v82);
    v147 = *(v154 + 8);
    v147(v77, v151);
    v83 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLProgress.Metric, Double)>);
    inited = swift_initStackObject(v83, v123);
    *(inited + 16) = 2;
    *(inited + 24) = 4;
    *(inited + 32) = 0;
    Tensor.scalar<A>(as:)(&type metadata for Double, &type metadata for Double, &protocol witness table for Double);
    *(inited + 48) = 3;
    v85 = *&v158;
    *(inited + 56) = v158;
    v86 = lazy protocol witness table accessor for type MLProgress.Metric and conformance MLProgress.Metric();
    v44 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for MLProgress.Metric, &type metadata for Double, v86);
    if (v139)
    {
      v87 = v153;
      if (*(v139 + 16))
      {
        v88 = v145;
        outlined init with copy of MLTrainingSessionParameters(v157, v145, type metadata accessor for MLActivityClassifier.Trainer);
        v89 = v148;
        outlined init with copy of MLTrainingSessionParameters(v148, v143, type metadata accessor for MLActivityClassifier.Model);
        v90 = v152;
        v157 = *(v89 + *(v152 + 60));
        swift_beginAccess(v89, v126, 33, 0);
        v91 = *(v90 + 72);
        if (!*(v89 + v91))
        {
          BUG();
        }

        *&v158 = v89 + v91 + 8;
        v92 = *(v138 + 20);
        v93 = v139;
        v128 = v139;
        v144 = *(v88 + v92 + 24);
        v94 = type metadata accessor for ShuffleSampler(0);
        v95 = v88;
        v96 = v94;
        v154 = *(v95 + v92 + 8);
        LODWORD(v92) = *(v95 + v92 + 16);
        v157;
        v93;
        v97 = ShuffleSampler.__allocating_init(seed:)(v154, v92);
        v136[3] = v96;
        v136[4] = &protocol witness table for ShuffleSampler;
        v136[0] = v97;
        v98 = v132;
        (*(v133 + 104))(v132, enum case for Dataset.PrefetchMode.serial<A, B>(_:), v134);
        v154 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [WeightedDataSample]);
        v155 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [WeightedDataSample] and conformance [A], &demangling cache variable for type metadata for [WeightedDataSample], &protocol conformance descriptor for [A]);
        v99 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
        v100 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type WeightedDataSample and conformance WeightedDataSample, type metadata accessor for WeightedDataSample, &protocol conformance descriptor for WeightedDataSample);
        v101 = v135;
        Dataset.init<>(samples:batchSize:batchSampler:dropsLastPartialBatch:prefetchMode:transform:)(&v128, v144, v136, 0, v98, 0, 0, v154, v141, v155, v99, v100);
        v102 = v143;
        v103 = v156;
        MLActivityClassifier.Trainer.evaluate(model:using:classLabels:confussionMatrix:)(v143, *&v85, a4, v101, v157, *&v158);
        if (v103)
        {
          v104 = *(v146 + 8);
          v105 = v149;
          v104(v101, v149);
          outlined destroy of MLActivityClassifier.ModelParameters(v145, type metadata accessor for MLActivityClassifier.Trainer);
          swift_endAccess(v126);
          v157;
          v44;
          v147(v150, v151);
          v104(v153, v105);
          outlined destroy of MLActivityClassifier.ModelParameters(v143, type metadata accessor for MLActivityClassifier.Model);
          return v44;
        }

        v156 = 0;
        v158 = *&v85;
        (*(v146 + 8))(v101, v149);
        outlined destroy of MLActivityClassifier.ModelParameters(v145, type metadata accessor for MLActivityClassifier.Trainer);
        swift_endAccess(v126);
        v157;
        outlined destroy of MLActivityClassifier.ModelParameters(v102, type metadata accessor for MLActivityClassifier.Model);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v44);
        v136[0] = v44;
        v108 = v158;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(4, isUniquelyReferenced_nonNull_native, v158);
        v109 = v152;
        v110 = *(v152 + 72);
        v111 = v148;
        if (!*(v148 + v110))
        {
          BUG();
        }

        v157 = v136[0];
        v112 = *(v148 + v110 + 8);

        _MetricUtilities.ConfusionMatrixMeter.value(normalized:)(0, v108, a4);

        v113 = *(v109 + 72);
        v114 = *(v111 + v113);
        if (!v114)
        {
          BUG();
        }

        v115 = *(v111 + v113 + 8);
        v116 = *(v111 + v113 + 16);
        outlined copy of ClassificationMetricsContainer?(v114, v115, v116);

        v117 = *(v116 + 16);
        v116;
        v118 = v140;
        v158 = static _MetricUtilities.top1Accuracy(confusionMatrix:classCount:)(v140, v117);
        v147(v118, v151);
        v119 = v157;
        v120 = swift_isUniquelyReferenced_nonNull_native(v157);
        v136[0] = v119;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(5, v120, v158);
        v44 = v136[0];
        v87 = v153;
      }
    }

    else
    {
      v87 = v153;
    }

    v147(v150, v151);
    (*(v146 + 8))(v87, v149);
  }

  return v44;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLActivityClassifier.Trainer.initializeModel()()
{
  v71 = v0;
  v73 = v1;
  v74 = type metadata accessor for MLActivityClassifier.Configuration(0);
  v2 = *(*(v74 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v63 = &v57;
  v64 = type metadata accessor for MLActivityClassifier.Model(0);
  v5 = *(*(v64 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v61 = &v57;
  v8 = type metadata accessor for MLActivityClassifier.Trainer(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v70 = &v57;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v59 = &v57;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v69 = &v57;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v19 = type metadata accessor for DataFrame(0);
  v67 = *(v19 - 8);
  v20 = *(v67 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v62 = v8;
  v23 = v73 + *(v8 + 20);
  v60 = v23 + *(v74 + 44);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &v57, &demangling cache variable for type metadata for DataFrame?);
  v72 = v19;
  if (__swift_getEnumTagSinglePayload(&v57, 1, v19) == 1)
  {
    outlined destroy of Tensor?(&v57, &demangling cache variable for type metadata for DataFrame?);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000019, "Failed to initalize training" + 0x8000000000000000, "CreateML/MLActivityClassifier+Training.swift", 44, 2, 195, 0);
    BUG();
  }

  v24 = v67;
  (*(v67 + 32))(&v57, &v57, v72);
  v25 = *(v74 + 48);
  v68 = v23;
  v26 = v69;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v23 + v25, v69, &demangling cache variable for type metadata for DataFrame?);
  v27 = v71;
  MLActivityClassifier.Trainer.validateData(_:_:)(&v57, v26);
  v74 = v27;
  v28 = v26;
  v29 = v72;
  v30 = &v57;
  if (v27)
  {
    goto LABEL_6;
  }

  v31._object = *(v68 + 56);
  v65 = *(v68 + 48);
  v31._countAndFlagsBits = v65;
  object = v31._object;
  DataFrame.convertNumericColumnsToFloat(except:)(v31);
  v32 = v29;
  v33 = v24;
  v34 = v60;
  outlined destroy of Tensor?(v60, &demangling cache variable for type metadata for DataFrame?);
  v71 = &v57;
  (*(v33 + 16))(v34, &v57, v32);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v32);
  v35 = v70;
  outlined init with copy of MLTrainingSessionParameters(v73, v70, type metadata accessor for MLActivityClassifier.Trainer);
  v31._countAndFlagsBits = v34;
  v36 = v32;
  v37 = v59;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v31._countAndFlagsBits, v59, &demangling cache variable for type metadata for DataFrame?);
  if (__swift_getEnumTagSinglePayload(v37, 1, v36) == 1)
  {
    BUG();
  }

  v38 = MLActivityClassifier.Trainer.getClassLabels(_:_:)(v37);
  outlined destroy of MLActivityClassifier.ModelParameters(v35, type metadata accessor for MLActivityClassifier.Trainer);
  v70 = *(v33 + 8);
  (v70)(v37, v72);
  v39 = v63;
  outlined init with copy of MLTrainingSessionParameters(v68, v63, type metadata accessor for MLActivityClassifier.Configuration);
  v38;
  v40 = v61;
  MLActivityClassifier.Model.init(classLabels:randomSeed:trainingConfiguration:)(v38, 0, 1u, v39);
  v41 = type metadata accessor for MLActivityClassifier.Trainer.ModelContainer(0);
  v42 = swift_allocObject(v41, *(v41 + 48), *(v41 + 52));
  MLActivityClassifier.Trainer.ModelContainer.init(model:)(v40);
  v43 = *(v62 + 24);
  v44 = v73;
  v45 = *(v73 + v43);

  *(v44 + v43) = v42;
  v46 = v74;
  v47 = ClassificationMetricsContainer.init(classLabels:)(v38);
  if (v46)
  {
    v74 = v46;
    v28 = v69;
    v29 = v72;
    v30 = v71;
    v24 = v67;
LABEL_6:
    outlined destroy of Tensor?(v28, &demangling cache variable for type metadata for DataFrame?);
    (*(v24 + 8))(v30, v29);
    return;
  }

  v50 = v48;
  v51 = v49;
  v73 = v47;
  outlined destroy of Tensor?(v69, &demangling cache variable for type metadata for DataFrame?);
  (v70)(v71, v72);
  v52 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v42;
  swift_beginAccess(v52, v58, 1, 0);
  v53 = *(v64 + 72);
  v54 = *(v53 + v52);
  v55 = *(v53 + v52 + 8);
  v56 = *(v53 + v52 + 16);
  *(v53 + v52) = v73;
  *(v53 + v52 + 8) = v50;
  *(v53 + v52 + 16) = v51;
  outlined consume of ClassificationMetricsContainer?(v54, v55, v56);
}

uint64_t _s14NeuralNetworks4AdamV8CreateMLE15createOptimizer3for20checkpointDictionaryACyxGx_SDySSSaySdGGtKFZAD20MLActivityClassifierV5ModelV_Tt2g5(uint64_t a1, uint64_t a2)
{
  v31[0] = a1;
  v31[1] = v2;
  v3 = 0xEC00000065746152;
  v4 = 0x676E696E7261656CLL;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RegularizationKind?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = v31;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for GradientClippingMode?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v34 = v31;
  v11 = specialized Dictionary.subscript.getter(0x676E696E7261656CLL, 0xEC00000065746152, a2);
  if (!v11)
  {
    goto LABEL_15;
  }

  if (*(v11 + 16) != 1)
  {
    goto LABEL_14;
  }

  v3 = 0xE500000000000000;
  v4 = 0x3161746562;
  v36 = *(v11 + 32);
  v11;
  v11 = specialized Dictionary.subscript.getter(0x3161746562, 0xE500000000000000, a2);
  if (v11)
  {
    if (*(v11 + 16) != 1)
    {
LABEL_14:
      v11;
      goto LABEL_15;
    }

    v4 = 0x3261746562;
    v37 = *(v11 + 32);
    v11;
    v11 = specialized Dictionary.subscript.getter(0x3261746562, 0xE500000000000000, a2);
    if (v11)
    {
      if (*(v11 + 16) == 1)
      {
        v12 = 0xEB00000000646172;
        v13 = 0x47534D4173657375;
        v38 = *(v11 + 32);
        v11;
        v14 = specialized Dictionary.subscript.getter(0x47534D4173657375, 0xEB00000000646172, a2);
        if (v14)
        {
          if (*(v14 + 16) != 1)
          {
            goto LABEL_17;
          }

          v12 = 0xE700000000000000;
          v13 = 0x6E6F6C69737065;
          *v39 = *(v14 + 32);
          v14;
          v14 = specialized Dictionary.subscript.getter(0x6E6F6C69737065, 0xE700000000000000, a2);
          if (!v14)
          {
            goto LABEL_18;
          }

          if (*(v14 + 16) != 1)
          {
LABEL_17:
            v14;
            goto LABEL_18;
          }

          v12 = 0xED0000656C616353;
          v13 = 0x746E656964617267;
          v33 = *(v14 + 32);
          v14;
          v14 = specialized Dictionary.subscript.getter(0x746E656964617267, 0xED0000656C616353, a2);
          if (v14)
          {
            if (*(v14 + 16) == 1)
            {
              v15.f64[0] = 1.0;
              v16 = *&_mm_cmpeq_sd(*v39, v15) & 1;
              v17 = *(v14 + 32);
              v39[0] = v17;
              v14;
              v18 = v36;
              v35 = v18;
              v19 = v37;
              *&v37 = v19;
              v20 = v38;
              *&v38 = v20;
              v21 = v33;
              *&v36 = v21;
              v22 = type metadata accessor for GradientClippingMode(0);
              __swift_storeEnumTagSinglePayload(v34, 1, 1, v22);
              v23 = type metadata accessor for RegularizationKind(0);
              v24 = v32;
              __swift_storeEnumTagSinglePayload(v32, 1, 1, v23);
              v25 = type metadata accessor for MLActivityClassifier.Model(0);
              v26 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
              return Adam.init(for:learningRate:beta1:beta2:usesAMSGrad:epsilon:gradientClippingMode:regularizationKind:gradientScale:)(v31[0], v16, v34, v24, v25, v26, v35, *&v37, *&v38, *&v36, v39[0]);
            }

            goto LABEL_17;
          }
        }

LABEL_18:
        v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
        v29._countAndFlagsBits = v13;
        v29._object = v12;
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  v28 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v28, 0, 0);
  v29._countAndFlagsBits = v4;
  v29._object = v3;
LABEL_16:
  static MLCreateError.checkoutDictionaryMissingOrInvalidValue(key:)(v29);
  return swift_willThrow(v29._countAndFlagsBits, v29._object);
}