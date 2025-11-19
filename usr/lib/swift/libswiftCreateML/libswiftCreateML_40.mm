void *specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter()
{
  v38 = type metadata accessor for LayerState(0);
  v39 = *(v38 - 8);
  v1 = *(v39 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = &v34;
  v4 = type metadata accessor for MLActivityClassifier.Model(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v0;
  swift_beginAccess(v8, v35, 0, 0);
  v37 = v8;
  outlined init with copy of MLTrainingSessionParameters(v8, &v34, type metadata accessor for MLActivityClassifier.Model);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, type metadata accessor for MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model);
  v10 = Layer.layerStateKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLHandActionClassifier.GraphCNNModel(&v34, type metadata accessor for MLActivityClassifier.Model);
  v42 = specialized Array._getCount()(v10);
  v11 = _swiftEmptyDictionarySingleton;
  if (v42)
  {
    v12 = 0;
    v44 = v10;
    do
    {
      if ((v10 & 0xC000000000000003) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)(v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = __OFADD__(1, v12);
      v15 = v12 + 1;
      if (v14)
      {
        BUG();
      }

      v36 = v15;
      v16 = v41;
      outlined init with copy of MLTrainingSessionParameters(v37, v41, type metadata accessor for MLActivityClassifier.Model);

      v17 = v13;
      v18 = v40;
      swift_getAtKeyPath(v16, v17);
      v43 = v17;

      outlined destroy of MLHandActionClassifier.GraphCNNModel(v16, type metadata accessor for MLActivityClassifier.Model);
      LODWORD(v16) = LayerState.id.getter();
      (*(v39 + 8))(v18, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v11);
      v45 = v11;
      v46 = v16;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v22 = (v20 & 1) == 0;
      v14 = __OFADD__(v11[2], v22);
      v23 = v11[2] + v22;
      if (v14)
      {
        BUG();
      }

      v24 = v20;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLActivityClassifier.Model, LayerState>>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
      {
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        LOBYTE(v27) = v27 & 1;
        if ((v24 & 1) != v27)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for UInt32, v23, v27, v25, v26);
          BUG();
        }
      }

      v10 = v44;
      v28 = v43;
      v11 = v45;
      if (v24)
      {
        v29 = v45[7];
        v30 = *(v29 + 8 * v21);

        *(v29 + 8 * v21) = v28;
      }

      else
      {
        v45[(v21 >> 6) + 8] |= 1 << v21;
        *(v11[6] + 4 * v21) = v46;
        *(v11[7] + 8 * v21) = v28;
        v31 = v11[2];
        v14 = __OFADD__(1, v31);
        v32 = v31 + 1;
        if (v14)
        {
          BUG();
        }

        v11[2] = v32;
      }

      v12 = v36;
    }

    while (v36 != v42);
  }

  v10;
  return v11;
}

{
  v38 = type metadata accessor for LayerState(0);
  v39 = *(v38 - 8);
  v1 = *(v39 + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v40 = &v34;
  v4 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v0;
  swift_beginAccess(v8, v35, 0, 0);
  v37 = v8;
  outlined init with copy of MLTrainingSessionParameters(v8, &v34, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v9 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v10 = Layer.layerStateKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLHandActionClassifier.GraphCNNModel(&v34, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v42 = specialized Array._getCount()(v10);
  v11 = _swiftEmptyDictionarySingleton;
  if (v42)
  {
    v12 = 0;
    v44 = v10;
    do
    {
      if ((v10 & 0xC000000000000003) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)(v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = __OFADD__(1, v12);
      v15 = v12 + 1;
      if (v14)
      {
        BUG();
      }

      v36 = v15;
      v16 = v41;
      outlined init with copy of MLTrainingSessionParameters(v37, v41, type metadata accessor for MLHandActionClassifier.GraphCNNModel);

      v17 = v13;
      v18 = v40;
      swift_getAtKeyPath(v16, v17);
      v43 = v17;

      outlined destroy of MLHandActionClassifier.GraphCNNModel(v16, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      LODWORD(v16) = LayerState.id.getter();
      (*(v39 + 8))(v18, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v11);
      v45 = v11;
      v46 = v16;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v22 = (v20 & 1) == 0;
      v14 = __OFADD__(v11[2], v22);
      v23 = v11[2] + v22;
      if (v14)
      {
        BUG();
      }

      v24 = v20;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLHandActionClassifier.GraphCNNModel, LayerState>>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
      {
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        LOBYTE(v27) = v27 & 1;
        if ((v24 & 1) != v27)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for UInt32, v23, v27, v25, v26);
          BUG();
        }
      }

      v10 = v44;
      v28 = v43;
      v11 = v45;
      if (v24)
      {
        v29 = v45[7];
        v30 = *(v29 + 8 * v21);

        *(v29 + 8 * v21) = v28;
      }

      else
      {
        v45[(v21 >> 6) + 8] |= 1 << v21;
        *(v11[6] + 4 * v21) = v46;
        *(v11[7] + 8 * v21) = v28;
        v31 = v11[2];
        v14 = __OFADD__(1, v31);
        v32 = v31 + 1;
        if (v14)
        {
          BUG();
        }

        v11[2] = v32;
      }

      v12 = v36;
    }

    while (v36 != v42);
  }

  v10;
  return v11;
}

uint64_t NeuralNetwork.Layer.loadConv2DFromNeuralNetworks(_:useBias:into:)(uint64_t a1, int a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = &v35;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = &v35;
  v38 = type metadata accessor for Tensor(0);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v41 = &v35;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v42 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v16 = *(*(v42 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v45 = a3;
  v19 = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter();
  if (v19 != Conv2D.filterCount.getter())
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(99);
    v28._object = "Cannot load convolution layer " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v28);
    v37 = Conv2D.filterCount.getter();
    v29 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v31 = v30;
    v28._countAndFlagsBits = v29;
    v28._object = v30;
    String.append(_:)(v28);
    v31;
    v28._object = "ral networks framework has " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v28);
    v37 = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter();
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v28._countAndFlagsBits = v32;
    v28._object = v33;
    String.append(_:)(v28);
    v34;
    v28._countAndFlagsBits = 0x6C656E6E61686320;
    v28._object = 0xEA00000000002E73;
    String.append(_:)(v28);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v35, v36, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 877, 0);
    BUG();
  }

  Conv2D.weight.getter();
  v20 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v43 = v10;
  v21 = *(v10 + 8);
  v22 = v38;
  v44 = v21;
  v21(&v35, v38);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v20, 0);
  result = NeuralNetwork.Layer.ConvolutionParameters.weights.setter(&v35);
  if (v46)
  {
    v24 = v39;
    Conv2D.bias.getter();
    if (__swift_getEnumTagSinglePayload(v24, 1, v22) == 1)
    {
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Tensor?);
    }

    else
    {
      v25 = v41;
      (*(v43 + 32))(v41, v24, v22);
      v26 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      v27 = v40;
      NeuralNetwork.WeightParameters.init(_:updatable:)(v26, 0);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v42);
      NeuralNetwork.Layer.ConvolutionParameters.bias.setter(v27);
      return v44(v25, v22);
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel()()
{
  v415 = v0;
  v458 = v1;
  v6 = *v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v404 = &v378;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dense?) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v383 = &v378;
  v436 = type metadata accessor for Dense(0);
  v437 = *(v436 - 8);
  v13 = *(v437 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v451 = &v378;
  v443 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(0);
  v442 = *(v443 - 8);
  v16 = *(v442 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v454 = &v378;
  v397 = type metadata accessor for LayerState(0);
  v398 = *(v397 - 8);
  v19 = *(v398 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v399 = &v378;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v400 = &v378;
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BatchNorm?) - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v396 = &v378;
  v446 = type metadata accessor for BatchNorm(0);
  v448 = *(v446 - 8);
  v27 = *(v448 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v465 = &v378;
  v447 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v445 = *(v447 - 8);
  v30 = *(v445 + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v452 = &v378;
  v33 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v406 = &v378;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v393 = &v378;
  v38 = alloca(v33);
  v39 = alloca(v33);
  v435 = &v378;
  v40 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComputeDevice?) - 8) + 64);
  v41 = alloca(v40);
  v42 = alloca(v40);
  v449 = &v378;
  v385 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>);
  v386 = *(v385 - 8);
  v43 = *(v386 + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v387 = &v378;
  v46 = alloca(v43);
  v47 = alloca(v43);
  v388 = &v378;
  v469 = type metadata accessor for TensorShape(0);
  v459 = *(v469 - 8);
  v48 = *(v459 + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v405 = &v378;
  v51 = alloca(v48);
  v52 = alloca(v48);
  v384 = &v378;
  v53 = alloca(v48);
  v54 = alloca(v48);
  v410 = &v378;
  v55 = alloca(v48);
  v56 = alloca(v48);
  v444 = &v378;
  v57 = alloca(v48);
  v58 = alloca(v48);
  v389 = &v378;
  v450 = type metadata accessor for Tensor(0);
  v418 = *(v450 - 8);
  v59 = *(v418 + 64);
  v60 = alloca(v59);
  v61 = alloca(v59);
  v407 = &v378;
  v62 = alloca(v59);
  v63 = alloca(v59);
  v394 = &v378;
  v64 = alloca(v59);
  v65 = alloca(v59);
  v401 = &v378;
  v66 = alloca(v59);
  v67 = alloca(v59);
  v395 = &v378;
  v432 = type metadata accessor for Parameter(0);
  v417 = *(v432 - 8);
  v68 = *(v417 + 64);
  v69 = alloca(v68);
  v70 = alloca(v68);
  v390 = &v378;
  v71 = alloca(v68);
  v72 = alloca(v68);
  v402 = &v378;
  v73 = alloca(v68);
  v74 = alloca(v68);
  v403 = &v378;
  v75 = alloca(v68);
  v76 = alloca(v68);
  v391 = &v378;
  v77 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Conv2D?) - 8) + 64);
  v78 = alloca(v77);
  v79 = alloca(v77);
  v392 = &v378;
  v421 = type metadata accessor for Conv2D(0);
  v422 = *(v421 - 8);
  v80 = *(v422 + 64);
  v81 = alloca(v80);
  v82 = alloca(v80);
  v431 = &v378;
  v419 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v420 = *(v419 - 8);
  v83 = *(v420 + 64);
  v84 = alloca(v83);
  v85 = alloca(v83);
  v430 = &v378;
  v380 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v429 = *(v380 - 8);
  v86 = *(v429 + 64);
  v87 = alloca(v86);
  v88 = alloca(v86);
  v455 = &v378;
  v477 = type metadata accessor for NeuralNetwork.Layer(0);
  v478 = *(v477 - 8);
  v89 = *(v478 + 64);
  v90 = alloca(v89);
  v91 = alloca(v89);
  v482 = &v378;
  v434 = type metadata accessor for Logger(0);
  v428 = *(v434 - 8);
  v92 = *(v428 + 64);
  v93 = alloca(v92);
  v94 = alloca(v92);
  v409 = &v378;
  v95 = alloca(v92);
  v96 = alloca(v92);
  v480 = &v378;
  v476 = type metadata accessor for URL(0);
  v97 = *(v476 - 8);
  v98 = *(v97 + 64);
  v99 = alloca(v98);
  v100 = alloca(v98);
  v466 = &v378;
  v101 = alloca(v98);
  v102 = alloca(v98);
  v463 = &v378;
  v103 = alloca(v98);
  v104 = alloca(v98);
  v464 = &v378;
  v105 = alloca(v98);
  v106 = alloca(v98);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v108 = objc_opt_self(NSBundle);
  v109 = [v108 bundleForClass:ObjCClassFromMetadata];
  v110 = v109;
  v408._countAndFlagsBits = 0xD00000000000001ELL;
  v111 = outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(0xD00000000000001ELL, (" is not a valid CoreML model." + 0x8000000000000000), 0x73746867696577, 0xE700000000000000, v110);

  if (!v111)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002ALL, "+ModelExport.swift" + 0x8000000000000000, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 554, 0);
    goto LABEL_117;
  }

  v112 = v464;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v111);

  (*(v97 + 32))(&v378, v112, v476);
  v113 = v97;
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v114 = v434;
  v115 = __swift_project_value_buffer(v434, static MLHandActionClassifier.logger);
  v116 = *(v428 + 16);
  v381 = v115;
  v382 = v116;
  v116(v480, v115, v114);
  v117 = *(v113 + 16);
  v464 = &v378;
  v416 = v117;
  v117(v463, &v378, v476);
  v118 = Logger.logObject.getter();
  v119 = v113;
  v120 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v118, v120))
  {
    v121 = swift_slowAlloc(12, -1);
    v424 = v119;
    v122 = v121;
    v423 = swift_slowAlloc(32, -1);
    object = v423;
    *v122 = 136315138;
    v123 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type URL and conformance URL, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    log = v118;
    v124 = v463;
    v125 = dispatch thunk of CustomStringConvertible.description.getter(v476, v123);
    v127 = v126;
    *(v122 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v126, &object);
    v127;
    v128 = *(v424 + 8);
    v128(v124, v476);
    v118 = log;
    _os_log_impl(&dword_0, log, v120, "Loading pre-trained model at %s", v122, 0xCu);
    v129 = v423;
    __swift_destroy_boxed_opaque_existential_1Tm(v423);
    v129, -1, -1;
    v130 = v122;
    v131 = v476;
    v130, -1, -1;
  }

  else
  {
    v128 = *(v119 + 8);
    v131 = v476;
    v128(v463, v476);
  }

  (*(v428 + 8))(v480, v434);
  v132 = v466;
  v133 = v464;
  v416(v466, v464, v131);
  v134 = v415;
  v135 = Data.init(contentsOf:options:)(v132, 0);
  if (v134)
  {
    v480 = v134;
    v128(v132, v131);
    v128(v133, v131);
    return;
  }

  BlobsFile.init(data:)(v135, v136, v2, v3, v4, v5);
  v480 = 0;
  v456 = v128;
  v128(v132, v131);
  v137 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [String : Int])>);
  v138 = swift_allocObject(v137, 920, 7);
  v138[2] = 37;
  v138[3] = 74;
  v138[4] = 3485304;
  v138[5] = 0xE300000000000000;
  v138[6] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #0 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[7] = &unk_372E78;
  v138[8] = 0xE300000000000000;
  v138[9] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #1 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[10] = 120;
  v138[11] = 0xE100000000000000;
  v138[12] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #2 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[13] = 0x332E7475706E69;
  v138[14] = 0xE700000000000000;
  v138[15] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #3 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[16] = 0x352E7475706E69;
  v138[17] = 0xE700000000000000;
  v138[18] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #4 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[19] = 0x372E7475706E69;
  v138[20] = 0xE700000000000000;
  v138[21] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #5 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[22] = 0x382E7475706E69;
  v138[23] = 0xE700000000000000;
  v138[24] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #6 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[25] = 0x392E7475706E69;
  v138[26] = 0xE700000000000000;
  v138[27] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #7 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[28] = 0x32312E7475706E69;
  v138[29] = 0xE800000000000000;
  v138[30] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #8 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[31] = 0x34312E7475706E69;
  v138[32] = 0xE800000000000000;
  v138[33] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #9 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[34] = 0x35312E7475706E69;
  v138[35] = 0xE800000000000000;
  v138[36] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #10 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[37] = 0x36312E7475706E69;
  v138[38] = 0xE800000000000000;
  v138[39] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #11 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[40] = 0x39312E7475706E69;
  v138[41] = 0xE800000000000000;
  v138[42] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #12 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[43] = 0x31322E7475706E69;
  v138[44] = 0xE800000000000000;
  v138[45] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #13 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[46] = 0x32322E7475706E69;
  v138[47] = 0xE800000000000000;
  v138[48] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #14 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[49] = 0x33322E7475706E69;
  v138[50] = 0xE800000000000000;
  v138[51] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #15 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[52] = 0x36322E7475706E69;
  v138[53] = 0xE800000000000000;
  v138[54] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #16 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[55] = 0x38322E7475706E69;
  v138[56] = 0xE800000000000000;
  v138[57] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #17 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[58] = 0x39322E7475706E69;
  v138[59] = 0xE800000000000000;
  v138[60] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #18 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[61] = 0x30332E7475706E69;
  v138[62] = 0xE800000000000000;
  v138[63] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #19 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[64] = 0x33332E7475706E69;
  v138[65] = 0xE800000000000000;
  v138[66] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #20 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[67] = 0x35332E7475706E69;
  v138[68] = 0xE800000000000000;
  v138[69] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #21 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[70] = 0x36332E7475706E69;
  v138[71] = 0xE800000000000000;
  v138[72] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #22 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[73] = 0x39332E7475706E69;
  v138[74] = 0xE800000000000000;
  v138[75] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #23 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[76] = 0x31342E7475706E69;
  v138[77] = 0xE800000000000000;
  v138[78] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #24 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[79] = 0x32342E7475706E69;
  v138[80] = 0xE800000000000000;
  v138[81] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #25 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[82] = 0x33342E7475706E69;
  v138[83] = 0xE800000000000000;
  v138[84] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #26 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[85] = 0x36342E7475706E69;
  v138[86] = 0xE800000000000000;
  v138[87] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #27 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[88] = 0x38342E7475706E69;
  v138[89] = 0xE800000000000000;
  v138[90] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #28 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[91] = 0x39342E7475706E69;
  v138[92] = 0xE800000000000000;
  v138[93] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #29 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[94] = 0x30352E7475706E69;
  v138[95] = 0xE800000000000000;
  v138[96] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #30 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[97] = 0x6C61756469736572;
  v138[98] = 0xEA0000000000312ELL;
  v138[99] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #31 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[100] = 0x6C61756469736572;
  v138[101] = 0xEA0000000000322ELL;
  v138[102] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #32 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[103] = 0x6C61756469736572;
  v138[104] = 0xEA0000000000332ELL;
  v138[105] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #33 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[106] = 0x6C61756469736572;
  v138[107] = 0xEA0000000000342ELL;
  v138[108] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #34 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[109] = 0x6C61756469736572;
  v138[110] = 0xEA0000000000352ELL;
  v138[111] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #35 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v138[112] = 0x6C61756469736572;
  v138[113] = 0xE800000000000000;
  v138[114] = Dictionary.init(dictionaryLiteral:)(&outlined read-only object #36 of MLHandActionClassifier.GraphCNN.loadPretrainedCoreMLModel(), &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v139 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String : Int]);
  v468 = Dictionary.init(dictionaryLiteral:)(v138, &type metadata for String, v139, &protocol witness table for String);
  v140 = v458;
  v141 = MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:)(3uLL, 0x15uLL);
  v460 = MLHandActionClassifier.GraphCNN.coreMLTrainableLayerNames(from:)(v141);
  v466 = MLHandActionClassifier.GraphCNN.getCoreMLAndNeuralNetworksTrainableLayerMap(_:)(v460);
  v142 = MLHandActionClassifier.GraphCNN.trainableSublayers()();
  log = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v462 = specialized _ModelCheckpoint<>.layerStateKeyPathLookup.getter();
  v143 = v141[2];
  v467 = v142;
  v457 = v141;
  if (!v143)
  {
LABEL_75:
    outlined release of BlobsFile(v379);
    v468;
    v457;
    v462;
    log;
    v467;
    v466;
    v319 = v460;
    goto LABEL_82;
  }

  v458 = (v140 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model);
  v144 = v141 + ((*(v478 + 80) + 32) & ~*(v478 + 80));
  LODWORD(v416) = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
  v413 = enum case for NeuralNetwork.Layer.Kind.convolution(_:);
  v414 = enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:);
  v425 = v142 + 4;
  v423 = *(v478 + 16);
  v424 = *(v478 + 72);
  v145 = v482;
  v146 = v455;
  while (1)
  {
    v415 = v143;
    v463 = v144;
    (v423)(v145, v144, v477);
    NeuralNetwork.Layer.kind.getter();
    v147 = v146;
    v148 = v380;
    v149 = v146;
    v150 = v429;
    v151 = (*(v429 + 88))(v147, v380);
    if (v151 == v416)
    {
      break;
    }

    if (v151 == v413)
    {
      v166 = v455;
      (*(v429 + 96))(v455, v148);
      (*(v420 + 32))(v430, v166, v419);
      v167 = NeuralNetwork.Layer.name.getter();
      v169 = v168;
      v170 = v466;
      if (!v466[2] || (v171 = specialized __RawDictionaryStorage.find<A>(_:)(v167, v168), (v172 & 1) == 0))
      {
        v169;
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v337._object = "etrained hand action model" + 0x8000000000000000;
        v337._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v337);
        v338 = NeuralNetwork.Layer.name.getter();
        v340 = v339;
        v337._countAndFlagsBits = v338;
        v337._object = v339;
        String.append(_:)(v337);
        v340;
        v337._countAndFlagsBits = 0x65726F63206E6920;
        v337._object = 0xEF63657073206C6DLL;
        String.append(_:)(v337);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 619, 0);
        goto LABEL_117;
      }

      v173 = *(*(v170 + 56) + 8 * v171);
      v169;
      v174 = v468;
      if (v173 < 0)
      {
        BUG();
      }

      if (v173 >= v467[2])
      {
        BUG();
      }

      outlined init with copy of TabularRegressionTask(&v425[5 * v173], &object);
      v175 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
      v176 = v392;
      v177 = v421;
      if (!swift_dynamicCast(v392, &object, v175, v421, 6))
      {
        __swift_storeEnumTagSinglePayload(v176, 1, 1, v177);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v176, &demangling cache variable for type metadata for Conv2D?);
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(80);
        v358._object = "layer state keypaths for " + 0x8000000000000000;
        v358._countAndFlagsBits = 0xD00000000000003FLL;
        String.append(_:)(v358);
        v359 = NeuralNetwork.Layer.name.getter();
        v361 = v360;
        v358._countAndFlagsBits = v359;
        v358._object = v360;
        String.append(_:)(v358);
        v361;
        v358._countAndFlagsBits = 0x65726F63206E6920;
        v358._object = 0xEF63657073206C6DLL;
        String.append(_:)(v358);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 622, 0);
        goto LABEL_117;
      }

      __swift_storeEnumTagSinglePayload(v176, 0, 1, v177);
      (*(v422 + 32))(v431, v176, v177);
      v178 = NeuralNetwork.Layer.name.getter();
      v180 = v179;
      if (!*(v174 + 16) || (v181 = specialized __RawDictionaryStorage.find<A>(_:)(v178, v179), v183 = v432, (v182 & 1) == 0))
      {
        v328 = v180;
LABEL_98:
        v328;
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(57);
        v329._object = "ework layer to convolution for " + 0x8000000000000000;
        v329._countAndFlagsBits = v408._countAndFlagsBits;
        String.append(_:)(v329);
        v330 = NeuralNetwork.Layer.name.getter();
        v332 = v331;
        v329._countAndFlagsBits = v330;
        v329._object = v331;
        String.append(_:)(v329);
        v332;
        v329._object = "Cannot load innerProduct layer " + 0x8000000000000000;
        v329._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v329);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 628, 0);
        goto LABEL_117;
      }

      v184 = *(*(v174 + 56) + 8 * v181);
      v184;
      v180;
      if (!*(v184 + 16) || (v185 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696577, 0xE600000000000000), (v186 & 1) == 0))
      {
        v328 = v184;
        goto LABEL_98;
      }

      v470 = *(*(v184 + 56) + 8 * v185);
      v184;
      v187 = v391;
      Conv2D.$weight.getter();
      v188 = Parameter.id.getter(v184);
      (*(v417 + 8))(v187, v183);
      v189 = log;
      if (!*(log + 2) || (v190 = specialized __RawDictionaryStorage.find<A>(_:)(v188), (v191 & 1) == 0))
      {
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v333._object = " in from MIL Blob Storage" + 0x8000000000000000;
        v333._countAndFlagsBits = 0xD00000000000003DLL;
        String.append(_:)(v333);
        v334 = NeuralNetwork.Layer.name.getter();
        v336 = v335;
        v333._countAndFlagsBits = v334;
        v333._object = v335;
        String.append(_:)(v333);
        v336;
        v333._countAndFlagsBits = 46;
        v333._object = 0xE100000000000000;
        String.append(_:)(v333);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 631, 0);
        goto LABEL_117;
      }

      v192 = *(*(v189 + 7) + 8 * v190);
      v193 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v194 = swift_allocObject(v193, 64, 7);
      v194[2] = 4;
      v194[3] = 8;
      v481 = v192;

      v194[4] = NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter(v192);
      v195 = NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.getter();
      v479 = v194;
      v194[5] = v195;
      v196 = v388;
      NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
      v197 = v385;
      NeuralNetwork.Extent.height.getter(v385);
      v461 = *(v386 + 8);
      v461(v196, v197);
      v453 = v479 + 56;
      v198 = v387;
      NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
      NeuralNetwork.Extent.width.getter(v197);
      v2 = v461(v198, v197);
      v199 = v389;
      TensorShape.init(_:)(v479, v2);
      v200 = v480;
      v201 = BlobsFile.floatBlob(at:)(v470);
      v480 = v200;
      if (v200)
      {

        outlined release of BlobsFile(v379);
        v462;
        log;
        v467;
        v466;
        v460;
        v468;
        (*(v459 + 8))(v199, v469);
        (*(v422 + 8))(v431, v421);
        v321 = v430;
        v322 = v419;
        v323 = v420;
        goto LABEL_81;
      }

      object = v201;
      v202 = type metadata accessor for ComputeDevice(0);
      v203 = v199;
      v204 = v449;
      __swift_storeEnumTagSinglePayload(v449, 1, 1, v202);
      v205 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
      lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
      v206 = v395;
      Tensor.init<A>(shape:scalars:on:)(v203, &object, v204, v205);
      swift_beginAccess(v458, &object, 33, 0);
      v207 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
      v208 = v435;
      Layer.updateValue<A>(_:for:)(v206, v481, v207, &protocol witness table for Parameter);
      swift_endAccess(&object);

      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v208, &demangling cache variable for type metadata for Tensor?);
      (*(v418 + 8))(v206, v450);
      (*(v422 + 8))(v431, v421);
      v209 = v430;
      v210 = v419;
      v211 = v420;
    }

    else
    {
      v146 = v455;
      v145 = v482;
      if (v151 != v414)
      {
        (*(v478 + 8))(v482, v477);
        v163 = v146;
        v164 = v148;
        v165 = v429;
LABEL_73:
        (*(v165 + 8))(v163, v164);
        goto LABEL_74;
      }

      (*(v429 + 96))(v455, v148);
      (*(v445 + 32))(v452, v146, v447);
      v212 = NeuralNetwork.Layer.name.getter();
      v214 = v213;
      v215 = specialized Dictionary.subscript.getter(v212, v213, v466);
      v217 = v216;
      v214;
      if (v217)
      {
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(67);
        v366._object = "etrained hand action model" + 0x8000000000000000;
        v366._countAndFlagsBits = 0xD000000000000032;
        String.append(_:)(v366);
        v367 = NeuralNetwork.Layer.name.getter();
        v369 = v368;
        v366._countAndFlagsBits = v367;
        v366._object = v368;
        String.append(_:)(v366);
        v369;
        v366._countAndFlagsBits = 0x65726F63206E6920;
        v366._object = 0xEF63657073206C6DLL;
        String.append(_:)(v366);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 641, 0);
        goto LABEL_117;
      }

      v218 = v446;
      if (v215 < 0)
      {
        BUG();
      }

      v219 = v465;
      if (v215 >= v467[2])
      {
        BUG();
      }

      outlined init with copy of TabularRegressionTask(&v425[5 * v215], &object);
      v220 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
      v221 = v396;
      if (!swift_dynamicCast(v396, &object, v220, v218, 6))
      {
        __swift_storeEnumTagSinglePayload(v221, 1, 1, v218);
        outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v221, &demangling cache variable for type metadata for BatchNorm?);
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(88);
        v370._countAndFlagsBits = 0xD000000000000047;
        String.append(_:)(v370);
        v371 = NeuralNetwork.Layer.name.getter();
        v373 = v372;
        v370._countAndFlagsBits = v371;
        v370._object = v372;
        String.append(_:)(v370);
        v373;
        v370._countAndFlagsBits = 0x65726F63206E6920;
        v370._object = 0xEF63657073206C6DLL;
        String.append(_:)(v370);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 644, 0);
        goto LABEL_117;
      }

      __swift_storeEnumTagSinglePayload(v221, 0, 1, v218);
      (*(v448 + 32))(v219, v221, v218);
      v222 = NeuralNetwork.Layer.name.getter();
      v224 = v223;
      v225 = specialized Dictionary.subscript.getter(v222, v223, v468);
      v224;
      if (!v225)
      {
        goto LABEL_106;
      }

      v226 = specialized Dictionary.subscript.getter(1851876717, 0xE400000000000000, v225);
      if (v227 & 1) != 0 || (v228 = v226, v229 = specialized Dictionary.subscript.getter(0x65636E6169726176, 0xE800000000000000, v225), (v230) || (v231 = v229, v481 = specialized Dictionary.subscript.getter(1635018082, 0xE400000000000000, v225), (v232))
      {
        v225;
LABEL_106:
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(55);
        v350._object = "layer to batchnorm for " + 0x8000000000000000;
        v350._countAndFlagsBits = 0xD00000000000001CLL;
        String.append(_:)(v350);
        v351 = NeuralNetwork.Layer.name.getter();
        v353 = v352;
        v350._countAndFlagsBits = v351;
        v350._object = v352;
        String.append(_:)(v350);
        v353;
        v350._object = "Cannot load innerProduct layer " + 0x8000000000000000;
        v350._countAndFlagsBits = 0xD000000000000019;
        String.append(_:)(v350);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 653, 0);
        goto LABEL_117;
      }

      v461 = specialized Dictionary.subscript.getter(0x616D6D6167, 0xE500000000000000, v225);
      v234 = v233;
      v225;
      if (v234)
      {
        goto LABEL_106;
      }

      v235 = NeuralNetwork.Layer.BatchNormalizeParameters.inputChannelCount.getter();
      v236 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
      v237 = swift_allocObject(v236, 40, 7);
      v237[2] = 1;
      v237[3] = 2;
      v479 = v235;
      v237[4] = v235;
      v238 = v444;
      TensorShape.init(_:)(v237, v2);
      v239 = v480;
      v240 = BlobsFile.floatBlob(at:)(v228);
      if (v239)
      {
        v480 = v239;
        outlined release of BlobsFile(v379);
        v462;
        log;
        v467;
        v466;
        v460;
        v468;
        (*(v459 + 8))(v238, v469);
        (*(v448 + 8))(v465, v446);
        v321 = v452;
        v322 = v447;
        v323 = v445;
        goto LABEL_81;
      }

      v470 = v240;
      v427 = BlobsFile.floatBlob(at:)(v231);
      v411 = BlobsFile.floatBlob(at:)(v481);
      v241 = v461;
      v242 = BlobsFile.floatBlob(at:)(v461);
      v480 = 0;
      v408._object = v242;
      v243 = v403;
      BatchNorm.$offset.getter();
      v244 = Parameter.id.getter(v241);
      v245 = v243;
      v246 = v432;
      v481 = *(v417 + 8);
      (v481)(v245, v432);
      v247 = v244;
      v248 = log;
      v426 = specialized Dictionary.subscript.getter(v244, log);
      if (!v426)
      {
        goto LABEL_112;
      }

      v249 = v402;
      BatchNorm.$scale.getter();
      v250 = Parameter.id.getter(v247);
      (v481)(v249, v246);
      v251 = specialized Dictionary.subscript.getter(v250, v248);
      if (!v251)
      {
        goto LABEL_111;
      }

      v412 = v251;
      v252 = v400;
      BatchNorm.$runningMean.getter();
      v253 = LayerState.id.getter();
      v254 = v252;
      v255 = v397;
      v481 = *(v398 + 8);
      (v481)(v254, v397);
      v256 = v462;
      v441 = specialized Dictionary.subscript.getter(v253, v462);
      if (!v441)
      {
        goto LABEL_110;
      }

      v257 = v399;
      BatchNorm.$runningVariance.getter();
      v258 = LayerState.id.getter();
      (v481)(v257, v255);
      v433 = specialized Dictionary.subscript.getter(v258, v256);
      if (!v433)
      {

LABEL_110:

LABEL_111:

LABEL_112:
        object = 0;
        v472 = 0xE000000000000000;
        _StringGuts.grow(_:)(74);
        v362._object = "Cannot load batchnorm layer " + 0x8000000000000000;
        v362._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v362);
        v363 = NeuralNetwork.Layer.name.getter();
        v365 = v364;
        v362._countAndFlagsBits = v363;
        v362._object = v364;
        String.append(_:)(v362);
        v365;
        v362._countAndFlagsBits = 0x65726F63206E6920;
        v362._object = 0xEF63657073206C6DLL;
        String.append(_:)(v362);
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 670, 0);
LABEL_117:
        BUG();
      }

      v259 = v410;
      v481 = *(v459 + 16);
      (v481)(v410, v444, v469);
      v260 = v449;
      v261 = v401;
      if ((v479 & 0x8000000000000000) != 0)
      {
        BUG();
      }

      if (v470[2] < v479)
      {
        BUG();
      }

      object = v470;
      v472 = (v470 + 4);
      v473 = 0;
      v470 = (2 * v479 + 1);
      v474 = v470;
      v461 = type metadata accessor for ComputeDevice(0);
      __swift_storeEnumTagSinglePayload(v260, 1, 1, v461);
      v262 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ArraySlice<Float>);
      v263 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type ArraySlice<Float> and conformance ArraySlice<A>, &demangling cache variable for type metadata for ArraySlice<Float>, &protocol conformance descriptor for ArraySlice<A>);
      v453 = v262;
      v439 = v263;
      Tensor.init<A>(shape:scalars:on:)(v259, &object, v260, v262);
      swift_beginAccess(v458, &object, 33, 0);
      v264 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
      v265 = v435;
      v440 = v264;
      Layer.updateValue<A>(_:for:)(v261, v441, v264, &protocol witness table for LayerState);
      swift_endAccess(&object);
      v438 = *(v418 + 8);
      v438(v261, v450);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v265, &demangling cache variable for type metadata for Tensor?);
      v266 = v410;
      (v481)(v410, v444, v469);
      if (v427[2] < v479)
      {
        BUG();
      }

      object = v427;
      v472 = (v427 + 4);
      v473 = 0;
      v474 = v470;
      v267 = v449;
      __swift_storeEnumTagSinglePayload(v449, 1, 1, v461);
      Tensor.init<A>(shape:scalars:on:)(v266, &object, v267, v453);
      swift_beginAccess(v458, &object, 33, 0);
      v268 = v435;
      Layer.updateValue<A>(_:for:)(v261, v433, v440, &protocol witness table for LayerState);
      swift_endAccess(&object);
      v438(v261, v450);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v268, &demangling cache variable for type metadata for Tensor?);
      (v481)(v266, v444, v469);
      if (v411[2] < v479)
      {
        BUG();
      }

      object = v411;
      v472 = (v411 + 4);
      v473 = 0;
      v474 = v470;
      v269 = v449;
      __swift_storeEnumTagSinglePayload(v449, 1, 1, v461);
      Tensor.init<A>(shape:scalars:on:)(v266, &object, v269, v453);
      swift_beginAccess(v458, &object, 33, 0);
      v270 = v435;
      Layer.updateValue<A>(_:for:)(v261, v426, v440, &protocol witness table for Parameter);
      swift_endAccess(&object);
      v438(v261, v450);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v270, &demangling cache variable for type metadata for Tensor?);
      (v481)(v266, v444, v469);
      if (*(v408._object + 2) < v479)
      {
        BUG();
      }

      object = v408._object;
      v472 = v408._object + 32;
      v473 = 0;
      v474 = v470;
      v271 = v449;
      __swift_storeEnumTagSinglePayload(v449, 1, 1, v461);
      Tensor.init<A>(shape:scalars:on:)(v266, &object, v271, v453);
      swift_beginAccess(v458, &object, 33, 0);
      v272 = v435;
      Layer.updateValue<A>(_:for:)(v261, v412, v440, &protocol witness table for Parameter);
      swift_endAccess(&object);

      v438(v261, v450);
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v272, &demangling cache variable for type metadata for Tensor?);
      (*(v459 + 8))(v444, v469);
      (*(v448 + 8))(v465, v446);
      v209 = v452;
      v210 = v447;
      v211 = v445;
    }

LABEL_71:
    (*(v211 + 8))(v209, v210);
    v145 = v482;
    (*(v478 + 8))(v482, v477);
    v146 = v455;
LABEL_74:
    v144 = v463 + v424;
    v143 = (v415 - 1);
    if (v415 == (&dword_0 + 1))
    {
      goto LABEL_75;
    }
  }

  (*(v150 + 96))(v149, v148);
  (*(v442 + 32))(v454, v149, v443);
  v152 = NeuralNetwork.Layer.name.getter();
  v154 = v153;
  v155 = v466;
  if (!v466[2] || (v146 = v149, v156 = specialized __RawDictionaryStorage.find<A>(_:)(v152, v153), (v157 & 1) == 0))
  {
    v154;
    object = 0;
    v472 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v324._object = "etrained hand action model" + 0x8000000000000000;
    v324._countAndFlagsBits = 0xD000000000000032;
    String.append(_:)(v324);
    v325 = NeuralNetwork.Layer.name.getter();
    v327 = v326;
    v324._countAndFlagsBits = v325;
    v324._object = v326;
    String.append(_:)(v324);
    v327;
    v324._countAndFlagsBits = 0x65726F63206E6920;
    v324._object = 0xEF63657073206C6DLL;
    String.append(_:)(v324);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 690, 0);
    goto LABEL_117;
  }

  v158 = *(*(v155 + 56) + 8 * v156);
  v154;
  if (v158 == v460[2] - 1)
  {
    v382(v409, v381, v434);
    v159 = Logger.logObject.getter();
    v160 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc(2, -1);
      *v161 = 0;
      _os_log_impl(&dword_0, v159, v160, "Skipping last innerProduct layer when loading the pretrained-model.", v161, 2u);
      v162 = v161;
      v146 = v455;
      v162, -1, -1;
    }

    (*(v428 + 8))(v409, v434);
    (*(v442 + 8))(v454, v443);
    v145 = v482;
    v163 = v482;
    v164 = v477;
    v165 = v478;
    goto LABEL_73;
  }

  v273 = v436;
  if (v158 < 0)
  {
    BUG();
  }

  if (v158 >= v467[2])
  {
    BUG();
  }

  outlined init with copy of TabularRegressionTask(&v425[5 * v158], &object);
  v274 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
  v275 = v383;
  if (!swift_dynamicCast(v383, &object, v274, v273, 6))
  {
    __swift_storeEnumTagSinglePayload(v275, 1, 1, v273);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v275, &demangling cache variable for type metadata for Dense?);
    object = 0;
    v472 = 0xE000000000000000;
    _StringGuts.grow(_:)(81);
    v354._object = "amework layer for " + 0x8000000000000000;
    v354._countAndFlagsBits = 0xD000000000000040;
    String.append(_:)(v354);
    v355 = NeuralNetwork.Layer.name.getter();
    v357 = v356;
    v354._countAndFlagsBits = v355;
    v354._object = v356;
    String.append(_:)(v354);
    v357;
    v354._countAndFlagsBits = 0x65726F63206E6920;
    v354._object = 0xEF63657073206C6DLL;
    String.append(_:)(v354);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 698, 0);
    goto LABEL_117;
  }

  __swift_storeEnumTagSinglePayload(v275, 0, 1, v273);
  (*(v437 + 32))(v451, v275, v273);
  v276 = NeuralNetwork.Layer.name.getter();
  v278 = v277;
  v279 = v468;
  if (!*(v468 + 16) || (v280 = specialized __RawDictionaryStorage.find<A>(_:)(v276, v277), v282 = v432, (v281 & 1) == 0))
  {
    v341 = v278;
LABEL_103:
    v341;
    object = 0;
    v472 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v342._object = "nnerProduct for " + 0x8000000000000000;
    v342._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v342);
    v343 = NeuralNetwork.Layer.name.getter();
    v345 = v344;
    v342._countAndFlagsBits = v343;
    v342._object = v344;
    String.append(_:)(v342);
    v345;
    v342._object = "Cannot load innerProduct layer " + 0x8000000000000000;
    v342._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v342);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 704, 0);
    goto LABEL_117;
  }

  v283 = *(*(v279 + 56) + 8 * v280);
  v283;
  v278;
  if (!*(v283 + 16) || (v284 = specialized __RawDictionaryStorage.find<A>(_:)(0x746867696577, 0xE600000000000000), (v285 & 1) == 0))
  {
    v341 = v283;
    goto LABEL_103;
  }

  v481 = v283;
  v479 = *(*(v283 + 56) + 8 * v284);
  v286 = v390;
  Dense.$weight.getter();
  v287 = Parameter.id.getter(0x746867696577);
  v470 = *(v417 + 8);
  (v470)(v286, v282);
  v288 = log;
  if (!*(log + 2) || (v289 = specialized __RawDictionaryStorage.find<A>(_:)(v287), (v290 & 1) == 0))
  {
    object = 0;
    v472 = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    v346._object = " in from MIL Blob Storage" + 0x8000000000000000;
    v346._countAndFlagsBits = 0xD00000000000003DLL;
    String.append(_:)(v346);
    v347 = NeuralNetwork.Layer.name.getter();
    v349 = v348;
    v346._countAndFlagsBits = v347;
    v346._object = v348;
    String.append(_:)(v346);
    v349;
    v346._countAndFlagsBits = 46;
    v346._object = 0xE100000000000000;
    String.append(_:)(v346);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 707, 0);
    goto LABEL_117;
  }

  v291 = *(*(v288 + 7) + 8 * v289);
  v461 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v292 = swift_allocObject(v461, 48, 7);
  v292[2] = 2;
  v292[3] = 4;

  v292[4] = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter(v291);
  v292[5] = NeuralNetwork.Layer.InnerProductParameters.inputChannelCount.getter();
  v293 = v384;
  TensorShape.init(_:)(v292, v2);
  v294 = v480;
  v295 = BlobsFile.floatBlob(at:)(v479);
  v480 = v294;
  if (v294)
  {

    v481;
    outlined release of BlobsFile(v379);
    v462;
    log;
    v467;
    v466;
    v460;
    v468;
    v320 = v293;
    goto LABEL_80;
  }

  object = v295;
  v296 = type metadata accessor for ComputeDevice(0);
  v479 = v291;
  v297 = v449;
  v453 = v296;
  __swift_storeEnumTagSinglePayload(v449, 1, 1, v296);
  v298 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Float]);
  v299 = lazy protocol witness table accessor for type FullyConnectedNetworkClassifier<Float, String> and conformance FullyConnectedNetworkClassifier<A, B>(&lazy protocol witness table cache variable for type [Float] and conformance [A], &demangling cache variable for type metadata for [Float], &protocol conformance descriptor for [A]);
  v300 = v394;
  v438 = v298;
  v439 = v299;
  Tensor.init<A>(shape:scalars:on:)(v293, &object, v297, v298);
  swift_beginAccess(v458, &object, 33, 0);
  v301 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel);
  v302 = v393;
  v440 = v301;
  Layer.updateValue<A>(_:for:)(v300, v479, v301, &protocol witness table for Parameter);
  swift_endAccess(&object);
  v303 = *(v418 + 8);
  v303(v300, v450);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v302, &demangling cache variable for type metadata for Tensor?);
  v304 = v481;
  if (!*(v481 + 16) || (v305 = specialized __RawDictionaryStorage.find<A>(_:)(1935763810, 0xE400000000000000), (v306 & 1) == 0))
  {

    v304;
    goto LABEL_70;
  }

  v433 = v303;
  v441 = *(*(v304 + 56) + 8 * v305);
  v304;
  v307 = v404;
  Dense.$bias.getter();
  v308 = v432;
  if (__swift_getEnumTagSinglePayload(v307, 1, v432) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v307, &demangling cache variable for type metadata for Parameter?);
LABEL_116:
    object = 0;
    v472 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v374._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v374);
    v375 = NeuralNetwork.Layer.name.getter();
    v377 = v376;
    v374._countAndFlagsBits = v375;
    v374._object = v376;
    String.append(_:)(v374);
    v377;
    v374._countAndFlagsBits = 46;
    v374._object = 0xE100000000000000;
    String.append(_:)(v374);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, object, v472, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 721, 0);
    goto LABEL_117;
  }

  v309 = Parameter.id.getter(v307);
  (v470)(v307, v308);
  v310 = log;
  v481 = specialized Dictionary.subscript.getter(v309, log);
  if (!v481)
  {
    goto LABEL_116;
  }

  v311 = v461;
  v312 = swift_allocObject(v461, 40, 7);
  v312[2] = 1;
  v312[3] = 2;
  v312[4] = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter(v311);
  v313 = v405;
  TensorShape.init(_:)(v312, v2);
  v314 = v480;
  v315 = BlobsFile.floatBlob(at:)(v441);
  v480 = v314;
  if (!v314)
  {
    object = v315;
    v316 = v449;
    __swift_storeEnumTagSinglePayload(v449, 1, 1, v453);
    v317 = v407;
    Tensor.init<A>(shape:scalars:on:)(v313, &object, v316, v438);
    swift_beginAccess(v458, &object, 33, 0);
    v318 = v406;
    Layer.updateValue<A>(_:for:)(v317, v481, v440, &protocol witness table for Parameter);
    swift_endAccess(&object);

    v433(v317, v450);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v318, &demangling cache variable for type metadata for Tensor?);
LABEL_70:
    (*(v437 + 8))(v451, v436);
    v209 = v454;
    v210 = v443;
    v211 = v442;
    goto LABEL_71;
  }

  outlined release of BlobsFile(v379);
  v462;
  v310;
  v467;
  v466;
  v460;
  v468;
  v320 = v313;
LABEL_80:
  (*(v459 + 8))(v320, v469);
  (*(v437 + 8))(v451, v436);
  v321 = v454;
  v322 = v443;
  v323 = v442;
LABEL_81:
  (*(v323 + 8))(v321, v322);
  (*(v478 + 8))(v482, v477);
  v319 = v457;
LABEL_82:
  v319;
  v456(v464, v476);
}

void *MLHandActionClassifier.GraphCNN.coreMLTrainableLayerNames(from:)(uint64_t a1)
{
  v1 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = &v25;
  v7 = type metadata accessor for NeuralNetwork.Layer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = &v25;
  if (*(a1 + 16))
  {
    v27 = *(a1 + 16);
    v37 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v28 = *(v8 + 16);
    v26 = v8;
    v29 = *(v8 + 72);
    v34 = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
    v35 = enum case for NeuralNetwork.Layer.Kind.convolution(_:);
    v36 = enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:);
    v31 = a1;
    v13 = v1;
    v14 = v7;
    a1;
    v15 = v37;
    v40 = _swiftEmptyArrayStorage;
    v30 = v13;
    v32 = v2;
    v25 = &v25;
    v33 = v14;
    while (1)
    {
      v37 = v15;
      v28(v12, v15, v14);
      NeuralNetwork.Layer.kind.getter();
      v16 = v32;
      v17 = (*(v32 + 88))(v6, v13);
      v18 = v12;
      if (v17 == v34)
      {
        break;
      }

      v20 = v40;
      if (v17 == v35 || v17 == v36)
      {
        v38 = NeuralNetwork.Layer.name.getter();
        v39 = v21;
        goto LABEL_8;
      }

LABEL_13:
      v14 = v33;
      v12 = v18;
      (*(v26 + 8))(v18, v33);
      v6 = v25;
      (*(v16 + 8))(v25, v13);
      v15 = v29 + v37;
      if (!--v27)
      {
        v31;
        return v40;
      }
    }

    v38 = NeuralNetwork.Layer.name.getter();
    v39 = v19;
    v20 = v40;
LABEL_8:
    if (!swift_isUniquelyReferenced_nonNull_native(v20))
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    if (v20[3] >> 1 <= v22)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20[3] >= 2uLL, v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    v23 = 2 * v22;
    v20[v23 + 4] = v38;
    v40 = v20;
    v20[v23 + 5] = v39;
    v13 = v30;
    v16 = v32;
    goto LABEL_13;
  }

  return _swiftEmptyArrayStorage;
}

void *MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:)(unint64_t a1, unint64_t a2)
{
  v543 = v2;
  v517 = a2;
  v603 = a1;
  v521 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v522 = *(v521 - 8);
  v3 = *(v522 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v520 = v516;
  v544 = type metadata accessor for NeuralNetwork.Layer.PoolParameters(0);
  v545 = *(v544 - 8);
  v6 = *(v545 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v546 = v516;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v589 = v516;
  v595 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Kind(0);
  v591 = *(v595 - 8);
  v12 = *(v591 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v590 = v516;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v598 = v516;
  v600 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Extent<Int>);
  v537 = *(v600 - 8);
  v18 = *(v537 + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v601 = v516;
  v21 = alloca(v18);
  v22 = alloca(v18);
  v602 = v516;
  v608 = type metadata accessor for NeuralNetwork.Layer(0);
  v607 = *(v608 - 8);
  v23 = v607[8];
  v24 = alloca(v23);
  v25 = alloca(v23);
  v519 = v516;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v523 = v516;
  v28 = alloca(v23);
  v29 = alloca(v23);
  v547 = v516;
  v30 = alloca(v23);
  v31 = alloca(v23);
  v548 = v516;
  v32 = alloca(v23);
  v33 = alloca(v23);
  v524 = v516;
  v34 = alloca(v23);
  v35 = alloca(v23);
  v36 = alloca(v23);
  v37 = alloca(v23);
  v525 = v516;
  v38 = alloca(v23);
  v39 = alloca(v23);
  v550 = v516;
  v40 = alloca(v23);
  v41 = alloca(v23);
  v526 = v516;
  v42 = alloca(v23);
  v43 = alloca(v23);
  v527 = v516;
  v44 = alloca(v23);
  v45 = alloca(v23);
  v551 = v516;
  v46 = alloca(v23);
  v47 = alloca(v23);
  v552 = v516;
  v48 = alloca(v23);
  v49 = alloca(v23);
  v528 = v516;
  v50 = alloca(v23);
  v51 = alloca(v23);
  v582 = v516;
  v52 = alloca(v23);
  v53 = alloca(v23);
  v529 = v516;
  v54 = alloca(v23);
  v55 = alloca(v23);
  v553 = v516;
  v56 = alloca(v23);
  v57 = alloca(v23);
  v530 = v516;
  v58 = alloca(v23);
  v59 = alloca(v23);
  v531 = v516;
  v60 = alloca(v23);
  v61 = alloca(v23);
  v554 = v516;
  v62 = alloca(v23);
  v63 = alloca(v23);
  v555 = v516;
  v64 = alloca(v23);
  v65 = alloca(v23);
  v556 = v516;
  v66 = alloca(v23);
  v67 = alloca(v23);
  v557 = v516;
  v68 = alloca(v23);
  v69 = alloca(v23);
  v532 = v516;
  v70 = alloca(v23);
  v71 = alloca(v23);
  v533 = v516;
  v72 = alloca(v23);
  v73 = alloca(v23);
  v558 = v516;
  v74 = alloca(v23);
  v75 = alloca(v23);
  v559 = v516;
  v76 = alloca(v23);
  v77 = alloca(v23);
  v560 = v516;
  v78 = alloca(v23);
  v79 = alloca(v23);
  v583 = v516;
  v80 = alloca(v23);
  v81 = alloca(v23);
  v561 = v516;
  v82 = alloca(v23);
  v83 = alloca(v23);
  v562 = v516;
  v84 = alloca(v23);
  v85 = alloca(v23);
  v534 = v516;
  v86 = alloca(v23);
  v87 = alloca(v23);
  v563 = v516;
  v88 = alloca(v23);
  v89 = alloca(v23);
  v564 = v516;
  v90 = alloca(v23);
  v91 = alloca(v23);
  v565 = v516;
  v92 = alloca(v23);
  v93 = alloca(v23);
  v566 = v516;
  v94 = alloca(v23);
  v95 = alloca(v23);
  v584 = v516;
  v96 = alloca(v23);
  v97 = alloca(v23);
  v567 = v516;
  v98 = alloca(v23);
  v99 = alloca(v23);
  v568 = v516;
  v100 = alloca(v23);
  v101 = alloca(v23);
  v535 = v516;
  v102 = alloca(v23);
  v103 = alloca(v23);
  v569 = v516;
  v104 = alloca(v23);
  v105 = alloca(v23);
  v570 = v516;
  v106 = alloca(v23);
  v107 = alloca(v23);
  v571 = v516;
  v108 = alloca(v23);
  v109 = alloca(v23);
  v572 = v516;
  v110 = alloca(v23);
  v111 = alloca(v23);
  v585 = v516;
  v112 = alloca(v23);
  v113 = alloca(v23);
  v573 = v516;
  v114 = alloca(v23);
  v115 = alloca(v23);
  v574 = v516;
  v116 = alloca(v23);
  v117 = alloca(v23);
  v536 = v516;
  v118 = alloca(v23);
  v119 = alloca(v23);
  v575 = v516;
  v120 = alloca(v23);
  v121 = alloca(v23);
  v576 = v516;
  v122 = alloca(v23);
  v123 = alloca(v23);
  v577 = v516;
  v124 = alloca(v23);
  v125 = alloca(v23);
  v578 = v516;
  v126 = alloca(v23);
  v127 = alloca(v23);
  v586 = v516;
  v128 = alloca(v23);
  v129 = alloca(v23);
  v538 = v516;
  v130 = alloca(v23);
  v131 = alloca(v23);
  v579 = v516;
  v132 = alloca(v23);
  v133 = alloca(v23);
  v539 = v516;
  v134 = alloca(v23);
  v135 = alloca(v23);
  v587 = v516;
  v136 = alloca(v23);
  v137 = alloca(v23);
  v597 = v516;
  v138 = alloca(v23);
  v139 = alloca(v23);
  v592 = v516;
  v140 = alloca(v23);
  v141 = alloca(v23);
  v540 = v516;
  v142 = alloca(v23);
  v143 = alloca(v23);
  v593 = v516;
  v144 = alloca(v23);
  v145 = alloca(v23);
  v594 = v516;
  v146 = alloca(v23);
  v147 = alloca(v23);
  v541 = v516;
  v148 = alloca(v23);
  v149 = alloca(v23);
  v580 = v516;
  v150 = alloca(v23);
  v151 = alloca(v23);
  v599 = v516;
  v152 = alloca(v23);
  v153 = alloca(v23);
  v596 = v516;
  v154 = alloca(v23);
  v155 = alloca(v23);
  v518 = v516;
  v156 = alloca(v23);
  v157 = alloca(v23);
  v158 = alloca(v23);
  v159 = alloca(v23);
  v610 = _swiftEmptyArrayStorage;
  static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(3288696, 0xE300000000000000, 0x7365736F70, 0xE500000000000000, 3288696, 0xE300000000000000, &outlined read-only object #0 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v160 = v610;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v610);
  v581 = v516;
  if (!isUniquelyReferenced_nonNull_native)
  {
    v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v160[2] + 1, 1, v160);
  }

  v162 = v160[2];
  if (v160[3] >> 1 <= v162)
  {
    v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v160[3] >= 2uLL, v162 + 1, 1, v160);
  }

  v160[2] = v162 + 1;
  v605 = (*(v607 + 80) + 32) & ~*(v607 + 80);
  v163 = v607[4];
  v606 = v607[9];
  v607 = v163;
  (v163)(v160 + v605 + v606 * v162, v516, v608);
  v610 = v160;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(&loc_332E78, 0xE300000000000000, 3288696, 0xE300000000000000, &loc_332E78, 0xE300000000000000, &outlined read-only object #1 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v164 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v164[2] + 1, 1, v164);
  }

  v165 = v164[2];
  if (v164[3] >> 1 <= v165)
  {
    v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v164[3] >= 2uLL, v165 + 1, 1, v164);
  }

  v164[2] = v165 + 1;
  (v607)(v164 + v605 + v606 * v165, v516, v608);
  v610 = v164;
  v549 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  v166 = swift_allocObject(v549, 56, 7);
  v166[2] = 3;
  v166[3] = 6;
  v166[4] = 1;
  v167 = v543 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess(v543 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model, v516, 0, 0);
  v542 = type metadata accessor for MLHandActionClassifier.GraphCNNModel(0);
  v166[5] = *(*(v542 + 40) + v167);
  v166[6] = -1;
  v168 = v518;
  static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)(&unk_343031, 0xE300000000000000, &loc_332E78, 0xE300000000000000, &unk_343031, 0xE300000000000000, v166);
  v166;
  v169 = v610;
  v170 = swift_isUniquelyReferenced_nonNull_native(v610);
  v588 = v167;
  if (!v170)
  {
    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169[2] + 1, 1, v169);
  }

  v171 = v169[2];
  if (v169[3] >> 1 <= v171)
  {
    v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v169[3] >= 2uLL, v171 + 1, 1, v169);
  }

  v169[2] = v171 + 1;
  (v607)(v169 + v605 + v606 * v171, v168, v608);
  v610 = v169;
  static NeuralNetwork.Layer.expandDimensions(name:inputName:outputName:axes:)(&unk_342E78, 0xE300000000000000, &unk_343031, 0xE300000000000000, &unk_342E78, 0xE300000000000000, &outlined read-only object #2 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v172 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v172[2] + 1, 1, v172);
  }

  v173 = v172[2];
  if (v172[3] >> 1 <= v173)
  {
    v172 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v172[3] >= 2uLL, v173 + 1, 1, v172);
  }

  v172[2] = v173 + 1;
  (v607)(v172 + v605 + v606 * v173, v596, v608);
  v610 = v172;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x312E7475706E69, 0xE700000000000000, &unk_342E78, 0xE300000000000000, 0x312E7475706E69, 0xE700000000000000, &outlined read-only object #3 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v174 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v174[2] + 1, 1, v174);
  }

  v175 = v174[2];
  if (v174[3] >> 1 <= v175)
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174[3] >= 2uLL, v175 + 1, 1, v174);
  }

  v174[2] = v175 + 1;
  (v607)(v174 + v605 + v606 * v175, v599, v608);
  v176 = v517 * v603;
  if (!is_mul_ok(v517, v603))
  {
    BUG();
  }

  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(3485304, 0xE300000000000000, 0x312E7475706E69, 0xE700000000000000, 3485304, 0xE300000000000000, v517 * v603);
  v177 = v174[2];
  if (v174[3] >> 1 <= v177)
  {
    v174 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v174[3] >= 2uLL, v177 + 1, 1, v174);
  }

  v174[2] = v177 + 1;
  (v607)(v174 + v605 + v606 * v177, v580, v608);
  v610 = v174;
  v178 = v541;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(&unk_353231, 0xE300000000000000, 3485304, 0xE300000000000000, &unk_353231, 0xE300000000000000, &outlined read-only object #4 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v179 = v610;
  v180 = swift_isUniquelyReferenced_nonNull_native(v610);
  v603 = v176;
  if (!v180)
  {
    v179 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v179[2] + 1, 1, v179);
  }

  v181 = v179[2];
  if (v179[3] >> 1 <= v181)
  {
    v179 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v179[3] >= 2uLL, v181 + 1, 1, v179);
  }

  v179[2] = v181 + 1;
  (v607)(v179 + v605 + v606 * v181, v178, v608);
  v610 = v179;
  static NeuralNetwork.Layer.squeeze(name:inputName:outputName:axes:)(&unk_362E78, 0xE300000000000000, &unk_353231, 0xE300000000000000, &unk_362E78, 0xE300000000000000, &outlined read-only object #5 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v182 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v182[2] + 1, 1, v182);
  }

  v183 = v603;
  v184 = v182[2];
  if (v182[3] >> 1 <= v184)
  {
    v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182[3] >= 2uLL, v184 + 1, 1, v182);
  }

  v182[2] = v184 + 1;
  (v607)(v182 + v605 + v606 * v184, v594, v608);
  static NeuralNetwork.Layer.innerProduct(name:inputName:outputName:inputChannelCount:outputChannelCount:)(&unk_372E78, 0xE300000000000000, &unk_362E78, 0xE300000000000000, &unk_372E78, 0xE300000000000000, v183, 704);
  v185 = v182[2];
  if (v182[3] >> 1 <= v185)
  {
    v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182[3] >= 2uLL, v185 + 1, 1, v182);
  }

  v186 = v588;
  v182[2] = v185 + 1;
  (v607)(v182 + v605 + v606 * v185, v593, v608);
  v610 = v182;
  v187 = swift_allocObject(v549, 64, 7);
  v187[2] = 4;
  v187[3] = 8;
  v187[4] = 1;
  v187[5] = *(v186 + *(v542 + 40));
  v187[6] = 44;
  v187[7] = 16;
  v188 = v540;
  static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)(3486769, 0xE300000000000000, &unk_372E78, 0xE300000000000000, 3486769, 0xE300000000000000, v187);
  v187;
  v189 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v189[2] + 1, 1, v189);
  }

  v190 = v189[2];
  if (v189[3] >> 1 <= v190)
  {
    v189 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v189[3] >= 2uLL, v190 + 1, 1, v189);
  }

  v189[2] = v190 + 1;
  (v607)(v189 + v605 + v606 * v190, v188, v608);
  v610 = v189;
  static NeuralNetwork.Layer.transpose(name:inputName:outputName:axes:)(0x322E7475706E69, 0xE700000000000000, 3486769, 0xE300000000000000, 0x322E7475706E69, 0xE700000000000000, &outlined read-only object #6 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:));
  v191 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v191[2] + 1, 1, v191);
  }

  v192 = v191[2];
  if (v191[3] >> 1 <= v192)
  {
    v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v191[3] >= 2uLL, v192 + 1, 1, v191);
  }

  v191[2] = v192 + 1;
  (v607)(v191 + v605 + v606 * v192, v592, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x332E7475706E69, 0xE700000000000000, 0x322E7475706E69, 0xE700000000000000, 0x332E7475706E69, 0xE700000000000000, 16);
  v193 = v191[2];
  if (v191[3] >> 1 <= v193)
  {
    v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v191[3] >= 2uLL, v193 + 1, 1, v191);
  }

  v194 = v587;
  v191[2] = v193 + 1;
  (v607)(v191 + v605 + v606 * v193, v597, v608);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x342E7475706E69, 0xE700000000000000, 0x332E7475706E69, 0xE700000000000000, 0x342E7475706E69, 0xE700000000000000);
  v195 = v191[2];
  if (v191[3] >> 1 <= v195)
  {
    v191 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v191[3] >= 2uLL, v195 + 1, 1, v191);
  }

  v191[2] = v195 + 1;
  (v607)(v191 + v605 + v606 * v195, v194, v608);
  v610 = v191;
  v609 = 1;
  v604 = 1;
  v196 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v197 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v198 = enum case for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(_:);
  v199 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  v200 = *(*(v199 - 8) + 104);
  LODWORD(v596) = v198;
  v597 = v200;
  (v200)(v197, v198, v199);
  v599 = v199;
  __swift_storeEnumTagSinglePayload(v197, 0, 1, v199);
  v609 = 1;
  v604 = 1;
  v201 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v202 = v539;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x352E7475706E69, 0xE700000000000000, 0x342E7475706E69, 0xE700000000000000, 0x352E7475706E69, 0xE700000000000000, 32, 16, 1, v196, v201, v197);
  v203 = *(v537 + 8);
  v204 = v201;
  v205 = v600;
  v203(v204, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v197, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v603 = v203;
  v203(v196, v205);
  v206 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v206[2] + 1, 1, v206);
  }

  v207 = v206[2];
  if (v206[3] >> 1 <= v207)
  {
    v206 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v206[3] >= 2uLL, v207 + 1, 1, v206);
  }

  v206[2] = v207 + 1;
  (v607)(v206 + v605 + v606 * v207, v202, v608);
  v610 = v206;
  v208 = *(v591 + 104);
  v209 = v590;
  LODWORD(v594) = enum case for NeuralNetwork.Layer.PoolParameters.Kind.average(_:);
  v593 = v208;
  (v208)(v590, enum case for NeuralNetwork.Layer.PoolParameters.Kind.average(_:), v595);
  v609 = 1;
  v604 = 3;
  v210 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v211 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  v592 = type metadata accessor for NeuralNetwork.Layer.PoolParameters.Padding(0);
  __swift_storeEnumTagSinglePayload(v211, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v212 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x362E7475706E69, 0xE700000000000000, 0x352E7475706E69, 0xE700000000000000, 0x362E7475706E69, 0xE700000000000000, v209, v210, v212, v211);
  v213 = v212;
  v214 = v600;
  v215 = v603;
  (v603)(v213, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v211, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v215(v210, v214);
  v591 = *(v591 + 8);
  (v591)(v209, v595);
  v216 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v216 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v216[2] + 1, 1, v216);
  }

  v217 = v216[2];
  if (v216[3] >> 1 <= v217)
  {
    v216 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v216[3] >= 2uLL, v217 + 1, 1, v216);
  }

  v216[2] = v217 + 1;
  (v607)(v216 + v605 + v606 * v217, v579, v608);
  v610 = v216;
  v609 = 9;
  v604 = 1;
  v218 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v219 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v219, 0, 1, v599);
  v609 = 1;
  v604 = 1;
  v220 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v221 = v538;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x372E7475706E69, 0xE700000000000000, 0x362E7475706E69, 0xE700000000000000, 0x372E7475706E69, 0xE700000000000000, 8, 32, 1, v218, v220, v219);
  v222 = v220;
  v223 = v600;
  v224 = v603;
  (v603)(v222, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v219, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v224(v218, v223);
  v225 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v225[2] + 1, 1, v225);
  }

  v226 = v586;
  v227 = v225[2];
  if (v225[3] >> 1 <= v227)
  {
    v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v225[3] >= 2uLL, v227 + 1, 1, v225);
  }

  v225[2] = v227 + 1;
  (v607)(v225 + v605 + v606 * v227, v221, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x382E7475706E69, 0xE700000000000000, 0x372E7475706E69, 0xE700000000000000, 0x382E7475706E69, 0xE700000000000000, 8);
  v228 = v225[2];
  if (v225[3] >> 1 <= v228)
  {
    v225 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v225[3] >= 2uLL, v228 + 1, 1, v225);
  }

  v225[2] = v228 + 1;
  (v607)(v225 + v605 + v606 * v228, v226, v608);
  v610 = v225;
  v609 = 1;
  v604 = 1;
  v229 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v230 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v231 = v599;
  (v597)(v230, v596, v599);
  __swift_storeEnumTagSinglePayload(v230, 0, 1, v231);
  v609 = 1;
  v604 = 1;
  v232 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x392E7475706E69, 0xE700000000000000, 0x342E7475706E69, 0xE700000000000000, 0x392E7475706E69, 0xE700000000000000, 8, 16, 1, v229, v232, v230);
  v233 = v232;
  v234 = v600;
  v235 = v603;
  (v603)(v233, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v230, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v235(v229, v234);
  v236 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v236[2] + 1, 1, v236);
  }

  v237 = v236[2];
  if (v236[3] >> 1 <= v237)
  {
    v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v236[3] >= 2uLL, v237 + 1, 1, v236);
  }

  v236[2] = v237 + 1;
  (v607)(v236 + v605 + v606 * v237, v578, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000312ELL, 0x392E7475706E69, 0xE700000000000000, 0x6C61756469736572, 0xEA0000000000312ELL, 8);
  v238 = v236[2];
  if (v236[3] >> 1 <= v238)
  {
    v236 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v236[3] >= 2uLL, v238 + 1, 1, v236);
  }

  v236[2] = v238 + 1;
  (v607)(v236 + v605 + v606 * v238, v577, v608);
  v610 = v236;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x30312E7475706E69, 0xE800000000000000, &outlined read-only object #7 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x30312E7475706E69, 0xE800000000000000);
  v239 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v239[2] + 1, 1, v239);
  }

  v240 = v239[2];
  if (v239[3] >> 1 <= v240)
  {
    v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v239[3] >= 2uLL, v240 + 1, 1, v239);
  }

  v239[2] = v240 + 1;
  (v607)(v239 + v605 + v606 * v240, v576, v608);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x31312E7475706E69, 0xE800000000000000, 0x30312E7475706E69, 0xE800000000000000, 0x31312E7475706E69, 0xE800000000000000);
  v241 = v239[2];
  if (v239[3] >> 1 <= v241)
  {
    v239 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v239[3] >= 2uLL, v241 + 1, 1, v239);
  }

  v239[2] = v241 + 1;
  (v607)(v239 + v605 + v606 * v241, v575, v608);
  v610 = v239;
  v609 = 1;
  v604 = 1;
  v242 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v243 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v244 = v599;
  (v597)(v243, v596, v599);
  __swift_storeEnumTagSinglePayload(v243, 0, 1, v244);
  v609 = 1;
  v604 = 1;
  v245 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v246 = v536;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x32312E7475706E69, 0xE800000000000000, 0x31312E7475706E69, 0xE800000000000000, 0x32312E7475706E69, 0xE800000000000000, 16, 8, 1, v242, v245, v243);
  v247 = v245;
  v248 = v600;
  v249 = v603;
  (v603)(v247, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v243, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v249(v242, v248);
  v250 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v250[2] + 1, 1, v250);
  }

  v251 = v250[2];
  if (v250[3] >> 1 <= v251)
  {
    v250 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v250[3] >= 2uLL, v251 + 1, 1, v250);
  }

  v250[2] = v251 + 1;
  (v607)(v250 + v605 + v606 * v251, v246, v608);
  v610 = v250;
  v252 = v590;
  (v593)(v590, v594, v595);
  v609 = 1;
  v604 = 3;
  v253 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v254 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v254, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v255 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x33312E7475706E69, 0xE800000000000000, 0x32312E7475706E69, 0xE800000000000000, 0x33312E7475706E69, 0xE800000000000000, v252, v253, v255, v254);
  v256 = v255;
  v257 = v600;
  v258 = v603;
  (v603)(v256, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v254, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v258(v253, v257);
  (v591)(v252, v595);
  v259 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v259 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v259[2] + 1, 1, v259);
  }

  v260 = v259[2];
  if (v259[3] >> 1 <= v260)
  {
    v259 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v259[3] >= 2uLL, v260 + 1, 1, v259);
  }

  v259[2] = v260 + 1;
  (v607)(v259 + v605 + v606 * v260, v574, v608);
  v610 = v259;
  v609 = 9;
  v604 = 1;
  v261 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v262 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v262, 0, 1, v599);
  v609 = 1;
  v604 = 1;
  v263 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x34312E7475706E69, 0xE800000000000000, 0x33312E7475706E69, 0xE800000000000000, 0x34312E7475706E69, 0xE800000000000000, 16, 16, 1, v261, v263, v262);
  v264 = v263;
  v265 = v600;
  v266 = v603;
  (v603)(v264, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v262, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v266(v261, v265);
  v267 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v267 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v267[2] + 1, 1, v267);
  }

  v268 = v585;
  v269 = v267[2];
  if (v267[3] >> 1 <= v269)
  {
    v267 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v267[3] >= 2uLL, v269 + 1, 1, v267);
  }

  v267[2] = v269 + 1;
  (v607)(v267 + v605 + v606 * v269, v573, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x35312E7475706E69, 0xE800000000000000, 0x34312E7475706E69, 0xE800000000000000, 0x35312E7475706E69, 0xE800000000000000, 16);
  v270 = v267[2];
  if (v267[3] >> 1 <= v270)
  {
    v267 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v267[3] >= 2uLL, v270 + 1, 1, v267);
  }

  v267[2] = v270 + 1;
  (v607)(v267 + v605 + v606 * v270, v268, v608);
  v610 = v267;
  v609 = 1;
  v604 = 1;
  v271 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v272 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v273 = v599;
  (v597)(v272, v596, v599);
  __swift_storeEnumTagSinglePayload(v272, 0, 1, v273);
  v609 = 1;
  v604 = 1;
  v274 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x36312E7475706E69, 0xE800000000000000, 0x31312E7475706E69, 0xE800000000000000, 0x36312E7475706E69, 0xE800000000000000, 16, 8, 1, v271, v274, v272);
  v275 = v274;
  v276 = v600;
  v277 = v603;
  (v603)(v275, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v272, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v277(v271, v276);
  v278 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v278 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v278[2] + 1, 1, v278);
  }

  v279 = v278[2];
  if (v278[3] >> 1 <= v279)
  {
    v278 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v278[3] >= 2uLL, v279 + 1, 1, v278);
  }

  v278[2] = v279 + 1;
  (v607)(v278 + v605 + v606 * v279, v572, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000322ELL, 0x36312E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000322ELL, 16);
  v280 = v278[2];
  if (v278[3] >> 1 <= v280)
  {
    v278 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v278[3] >= 2uLL, v280 + 1, 1, v278);
  }

  v278[2] = v280 + 1;
  (v607)(v278 + v605 + v606 * v280, v571, v608);
  v610 = v278;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x37312E7475706E69, 0xE800000000000000, &outlined read-only object #8 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x37312E7475706E69, 0xE800000000000000);
  v281 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v281[2] + 1, 1, v281);
  }

  v282 = v281[2];
  if (v281[3] >> 1 <= v282)
  {
    v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v281[3] >= 2uLL, v282 + 1, 1, v281);
  }

  v281[2] = v282 + 1;
  (v607)(v281 + v605 + v606 * v282, v570, v608);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x38312E7475706E69, 0xE800000000000000, 0x37312E7475706E69, 0xE800000000000000, 0x38312E7475706E69, 0xE800000000000000);
  v283 = v281[2];
  if (v281[3] >> 1 <= v283)
  {
    v281 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v281[3] >= 2uLL, v283 + 1, 1, v281);
  }

  v281[2] = v283 + 1;
  (v607)(v281 + v605 + v606 * v283, v569, v608);
  v610 = v281;
  v609 = 1;
  v604 = 1;
  v284 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v285 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v286 = v599;
  (v597)(v285, v596, v599);
  __swift_storeEnumTagSinglePayload(v285, 0, 1, v286);
  v609 = 1;
  v604 = 1;
  v287 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v288 = v535;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x39312E7475706E69, 0xE800000000000000, 0x38312E7475706E69, 0xE800000000000000, 0x39312E7475706E69, 0xE800000000000000, 32, 16, 1, v284, v287, v285);
  v289 = v287;
  v290 = v600;
  v291 = v603;
  (v603)(v289, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v285, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v291(v284, v290);
  v292 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v292 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v292[2] + 1, 1, v292);
  }

  v293 = v292[2];
  if (v292[3] >> 1 <= v293)
  {
    v292 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v292[3] >= 2uLL, v293 + 1, 1, v292);
  }

  v292[2] = v293 + 1;
  (v607)(v292 + v605 + v606 * v293, v288, v608);
  v610 = v292;
  v294 = v590;
  (v593)(v590, v594, v595);
  v609 = 1;
  v604 = 3;
  v295 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v296 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v296, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v297 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x30322E7475706E69, 0xE800000000000000, 0x39312E7475706E69, 0xE800000000000000, 0x30322E7475706E69, 0xE800000000000000, v294, v295, v297, v296);
  v298 = v297;
  v299 = v600;
  v300 = v603;
  (v603)(v298, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v296, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v300(v295, v299);
  (v591)(v294, v595);
  v301 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v301[2] + 1, 1, v301);
  }

  v302 = v301[2];
  if (v301[3] >> 1 <= v302)
  {
    v301 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v301[3] >= 2uLL, v302 + 1, 1, v301);
  }

  v301[2] = v302 + 1;
  (v607)(v301 + v605 + v606 * v302, v568, v608);
  v610 = v301;
  v609 = 9;
  v604 = 1;
  v303 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v304 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v304, 0, 1, v599);
  v609 = 1;
  v604 = 1;
  v305 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x31322E7475706E69, 0xE800000000000000, 0x30322E7475706E69, 0xE800000000000000, 0x31322E7475706E69, 0xE800000000000000, 32, 32, 1, v303, v305, v304);
  v306 = v305;
  v307 = v600;
  v308 = v603;
  (v603)(v306, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v304, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v308(v303, v307);
  v309 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v309 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v309[2] + 1, 1, v309);
  }

  v310 = v584;
  v311 = v309[2];
  if (v309[3] >> 1 <= v311)
  {
    v309 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v309[3] >= 2uLL, v311 + 1, 1, v309);
  }

  v309[2] = v311 + 1;
  (v607)(v309 + v605 + v606 * v311, v567, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x32322E7475706E69, 0xE800000000000000, 0x31322E7475706E69, 0xE800000000000000, 0x32322E7475706E69, 0xE800000000000000, 32);
  v312 = v309[2];
  if (v309[3] >> 1 <= v312)
  {
    v309 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v309[3] >= 2uLL, v312 + 1, 1, v309);
  }

  v309[2] = v312 + 1;
  (v607)(v309 + v605 + v606 * v312, v310, v608);
  v610 = v309;
  v609 = 1;
  v604 = 1;
  v313 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v314 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v315 = v599;
  (v597)(v314, v596, v599);
  __swift_storeEnumTagSinglePayload(v314, 0, 1, v315);
  v609 = 1;
  v604 = 1;
  v316 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x33322E7475706E69, 0xE800000000000000, 0x38312E7475706E69, 0xE800000000000000, 0x33322E7475706E69, 0xE800000000000000, 32, 16, 1, v313, v316, v314);
  v317 = v316;
  v318 = v600;
  v319 = v603;
  (v603)(v317, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v314, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v319(v313, v318);
  v320 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v320 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v320[2] + 1, 1, v320);
  }

  v321 = v320[2];
  if (v320[3] >> 1 <= v321)
  {
    v320 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v320[3] >= 2uLL, v321 + 1, 1, v320);
  }

  v320[2] = v321 + 1;
  (v607)(v320 + v605 + v606 * v321, v566, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000332ELL, 0x33322E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000332ELL, 32);
  v322 = v320[2];
  if (v320[3] >> 1 <= v322)
  {
    v320 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v320[3] >= 2uLL, v322 + 1, 1, v320);
  }

  v320[2] = v322 + 1;
  (v607)(v320 + v605 + v606 * v322, v565, v608);
  v610 = v320;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x34322E7475706E69, 0xE800000000000000, &outlined read-only object #9 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x34322E7475706E69, 0xE800000000000000);
  v323 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v323 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v323[2] + 1, 1, v323);
  }

  v324 = v323[2];
  if (v323[3] >> 1 <= v324)
  {
    v323 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v323[3] >= 2uLL, v324 + 1, 1, v323);
  }

  v323[2] = v324 + 1;
  (v607)(v323 + v605 + v606 * v324, v564, v608);
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x35322E7475706E69, 0xE800000000000000, 0x34322E7475706E69, 0xE800000000000000, 0x35322E7475706E69, 0xE800000000000000);
  v325 = v323[2];
  if (v323[3] >> 1 <= v325)
  {
    v323 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v323[3] >= 2uLL, v325 + 1, 1, v323);
  }

  v323[2] = v325 + 1;
  (v607)(v323 + v605 + v606 * v325, v563, v608);
  v610 = v323;
  v609 = 1;
  v604 = 1;
  v326 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v327 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v328 = v599;
  (v597)(v327, v596, v599);
  __swift_storeEnumTagSinglePayload(v327, 0, 1, v328);
  v609 = 1;
  v604 = 1;
  v329 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v330 = v534;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x36322E7475706E69, 0xE800000000000000, 0x35322E7475706E69, 0xE800000000000000, 0x36322E7475706E69, 0xE800000000000000, 64, 32, 1, v326, v329, v327);
  v331 = v329;
  v332 = v600;
  v333 = v603;
  (v603)(v331, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v327, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v333(v326, v332);
  v334 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v334 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v334[2] + 1, 1, v334);
  }

  v335 = v334[2];
  if (v334[3] >> 1 <= v335)
  {
    v334 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v334[3] >= 2uLL, v335 + 1, 1, v334);
  }

  v334[2] = v335 + 1;
  (v607)(v334 + v605 + v606 * v335, v330, v608);
  v610 = v334;
  v336 = v590;
  (v593)(v590, v594, v595);
  v609 = 1;
  v604 = 3;
  v337 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v338 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v338, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v339 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x37322E7475706E69, 0xE800000000000000, 0x36322E7475706E69, 0xE800000000000000, 0x37322E7475706E69, 0xE800000000000000, v336, v337, v339, v338);
  v340 = v339;
  v341 = v600;
  v342 = v603;
  (v603)(v340, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v338, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v342(v337, v341);
  (v591)(v336, v595);
  v343 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v343 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v343[2] + 1, 1, v343);
  }

  v344 = v343[2];
  if (v343[3] >> 1 <= v344)
  {
    v343 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v343[3] >= 2uLL, v344 + 1, 1, v343);
  }

  v343[2] = v344 + 1;
  (v607)(v343 + v605 + v606 * v344, v562, v608);
  v610 = v343;
  v609 = 9;
  v604 = 1;
  v345 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v609 = 2;
  v604 = 2;
  v346 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v347 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v347, 0, 1, v599);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x38322E7475706E69, 0xE800000000000000, 0x37322E7475706E69, 0xE800000000000000, 0x38322E7475706E69, 0xE800000000000000, 64, 64, 1, v345, v346, v347);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v347, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v348 = v346;
  v349 = v600;
  v350 = v603;
  (v603)(v348, v600);
  v350(v345, v349);
  v351 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v351 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v351[2] + 1, 1, v351);
  }

  v352 = v583;
  v353 = v351[2];
  if (v351[3] >> 1 <= v353)
  {
    v351 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v351[3] >= 2uLL, v353 + 1, 1, v351);
  }

  v351[2] = v353 + 1;
  (v607)(v351 + v605 + v606 * v353, v561, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x39322E7475706E69, 0xE800000000000000, 0x38322E7475706E69, 0xE800000000000000, 0x39322E7475706E69, 0xE800000000000000, 64);
  v354 = v351[2];
  if (v351[3] >> 1 <= v354)
  {
    v351 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v351[3] >= 2uLL, v354 + 1, 1, v351);
  }

  v351[2] = v354 + 1;
  (v607)(v351 + v605 + v606 * v354, v352, v608);
  v610 = v351;
  v609 = 1;
  v604 = 1;
  v355 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v609 = 2;
  v604 = 2;
  v356 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v357 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v358 = v599;
  (v597)(v357, v596, v599);
  __swift_storeEnumTagSinglePayload(v357, 0, 1, v358);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x30332E7475706E69, 0xE800000000000000, 0x35322E7475706E69, 0xE800000000000000, 0x30332E7475706E69, 0xE800000000000000, 64, 32, 1, v355, v356, v357);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v357, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v359 = v356;
  v360 = v600;
  v361 = v603;
  (v603)(v359, v600);
  v361(v355, v360);
  v362 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v362 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v362[2] + 1, 1, v362);
  }

  v363 = v362[2];
  if (v362[3] >> 1 <= v363)
  {
    v362 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v362[3] >= 2uLL, v363 + 1, 1, v362);
  }

  v362[2] = v363 + 1;
  (v607)(v362 + v605 + v606 * v363, v560, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000342ELL, 0x30332E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000342ELL, 64);
  v364 = v362[2];
  if (v362[3] >> 1 <= v364)
  {
    v362 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v362[3] >= 2uLL, v364 + 1, 1, v362);
  }

  v362[2] = v364 + 1;
  (v607)(v362 + v605 + v606 * v364, v559, v608);
  v610 = v362;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x31332E7475706E69, 0xE800000000000000, &outlined read-only object #10 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x31332E7475706E69, 0xE800000000000000);
  v365 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v365 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v365[2] + 1, 1, v365);
  }

  v366 = v365[2];
  if (v365[3] >> 1 <= v366)
  {
    v365 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v365[3] >= 2uLL, v366 + 1, 1, v365);
  }

  v365[2] = v366 + 1;
  (v607)(v365 + v605 + v606 * v366, v558, v608);
  v367 = v533;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x32332E7475706E69, 0xE800000000000000, 0x31332E7475706E69, 0xE800000000000000, 0x32332E7475706E69, 0xE800000000000000);
  v368 = v365[2];
  if (v365[3] >> 1 <= v368)
  {
    v365 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v365[3] >= 2uLL, v368 + 1, 1, v365);
  }

  v365[2] = v368 + 1;
  (v607)(v365 + v605 + v606 * v368, v367, v608);
  v610 = v365;
  v609 = 1;
  v604 = 1;
  v369 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v370 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v371 = v599;
  (v597)(v370, v596, v599);
  __swift_storeEnumTagSinglePayload(v370, 0, 1, v371);
  v609 = 1;
  v604 = 1;
  v372 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v373 = v532;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x33332E7475706E69, 0xE800000000000000, 0x32332E7475706E69, 0xE800000000000000, 0x33332E7475706E69, 0xE800000000000000, 128, 64, 1, v369, v372, v370);
  v374 = v372;
  v375 = v600;
  v376 = v603;
  (v603)(v374, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v370, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v376(v369, v375);
  v377 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v377 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v377[2] + 1, 1, v377);
  }

  v378 = v377[2];
  if (v377[3] >> 1 <= v378)
  {
    v377 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v377[3] >= 2uLL, v378 + 1, 1, v377);
  }

  v377[2] = v378 + 1;
  (v607)(v377 + v605 + v606 * v378, v373, v608);
  v610 = v377;
  v379 = v590;
  (v593)(v590, v594, v595);
  v609 = 1;
  v604 = 3;
  v380 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v381 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v381, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v382 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x34332E7475706E69, 0xE800000000000000, 0x33332E7475706E69, 0xE800000000000000, 0x34332E7475706E69, 0xE800000000000000, v379, v380, v382, v381);
  v383 = v382;
  v384 = v600;
  v385 = v603;
  (v603)(v383, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v381, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v385(v380, v384);
  (v591)(v379, v595);
  v386 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v386 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v386[2] + 1, 1, v386);
  }

  v387 = v386[2];
  if (v386[3] >> 1 <= v387)
  {
    v386 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v386[3] >= 2uLL, v387 + 1, 1, v386);
  }

  v386[2] = v387 + 1;
  (v607)(v386 + v605 + v606 * v387, v557, v608);
  v610 = v386;
  v609 = 9;
  v604 = 1;
  v388 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v389 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v389, 0, 1, v599);
  v609 = 1;
  v604 = 1;
  v390 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x35332E7475706E69, 0xE800000000000000, 0x34332E7475706E69, 0xE800000000000000, 0x35332E7475706E69, 0xE800000000000000, 64, 128, 1, v388, v390, v389);
  v391 = v390;
  v392 = v600;
  v393 = v603;
  (v603)(v391, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v389, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v393(v388, v392);
  v394 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v394 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v394[2] + 1, 1, v394);
  }

  v395 = v394[2];
  if (v394[3] >> 1 <= v395)
  {
    v394 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v394[3] >= 2uLL, v395 + 1, 1, v394);
  }

  v394[2] = v395 + 1;
  (v607)(v394 + v605 + v606 * v395, v556, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x36332E7475706E69, 0xE800000000000000, 0x35332E7475706E69, 0xE800000000000000, 0x36332E7475706E69, 0xE800000000000000, 64);
  v396 = v394[2];
  if (v394[3] >> 1 <= v396)
  {
    v394 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v394[3] >= 2uLL, v396 + 1, 1, v394);
  }

  v394[2] = v396 + 1;
  (v607)(v394 + v605 + v606 * v396, v555, v608);
  v610 = v394;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x37332E7475706E69, 0xE800000000000000, &outlined read-only object #11 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x37332E7475706E69, 0xE800000000000000);
  v397 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v397 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v397[2] + 1, 1, v397);
  }

  v398 = v397[2];
  if (v397[3] >> 1 <= v398)
  {
    v397 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v397[3] >= 2uLL, v398 + 1, 1, v397);
  }

  v397[2] = v398 + 1;
  (v607)(v397 + v605 + v606 * v398, v554, v608);
  v399 = v531;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x38332E7475706E69, 0xE800000000000000, 0x37332E7475706E69, 0xE800000000000000, 0x38332E7475706E69, 0xE800000000000000);
  v400 = v397[2];
  if (v397[3] >> 1 <= v400)
  {
    v397 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v397[3] >= 2uLL, v400 + 1, 1, v397);
  }

  v397[2] = v400 + 1;
  (v607)(v397 + v605 + v606 * v400, v399, v608);
  v610 = v397;
  v609 = 1;
  v604 = 1;
  v401 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v402 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v403 = v599;
  (v597)(v402, v596, v599);
  __swift_storeEnumTagSinglePayload(v402, 0, 1, v403);
  v609 = 1;
  v604 = 1;
  v404 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v405 = v530;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x39332E7475706E69, 0xE800000000000000, 0x38332E7475706E69, 0xE800000000000000, 0x39332E7475706E69, 0xE800000000000000, 128, 64, 1, v401, v404, v402);
  v406 = v404;
  v407 = v600;
  v408 = v603;
  (v603)(v406, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v402, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v408(v401, v407);
  v409 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v409 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v409[2] + 1, 1, v409);
  }

  v410 = v409[2];
  if (v409[3] >> 1 <= v410)
  {
    v409 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v409[3] >= 2uLL, v410 + 1, 1, v409);
  }

  v409[2] = v410 + 1;
  (v607)(v409 + v605 + v606 * v410, v405, v608);
  v610 = v409;
  v411 = v590;
  (v593)(v590, v594, v595);
  v609 = 1;
  v604 = 3;
  v412 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v413 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v413, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v414 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x30342E7475706E69, 0xE800000000000000, 0x39332E7475706E69, 0xE800000000000000, 0x30342E7475706E69, 0xE800000000000000, v411, v412, v414, v413);
  v415 = v414;
  v416 = v600;
  v417 = v603;
  (v603)(v415, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v413, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v417(v412, v416);
  (v591)(v411, v595);
  v418 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v418 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v418[2] + 1, 1, v418);
  }

  v419 = v418[2];
  if (v418[3] >> 1 <= v419)
  {
    v418 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v418[3] >= 2uLL, v419 + 1, 1, v418);
  }

  v418[2] = v419 + 1;
  (v607)(v418 + v605 + v606 * v419, v553, v608);
  v610 = v418;
  v609 = 9;
  v604 = 1;
  v420 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v609 = 2;
  v604 = 2;
  v421 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v422 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v422, 0, 1, v599);
  v423 = v529;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x31342E7475706E69, 0xE800000000000000, 0x30342E7475706E69, 0xE800000000000000, 0x31342E7475706E69, 0xE800000000000000, 128, 128, 1, v420, v421, v422);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v422, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v424 = v421;
  v425 = v600;
  v426 = v603;
  (v603)(v424, v600);
  v426(v420, v425);
  v427 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v427 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v427[2] + 1, 1, v427);
  }

  v428 = v582;
  v429 = v427[2];
  if (v427[3] >> 1 <= v429)
  {
    v427 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v427[3] >= 2uLL, v429 + 1, 1, v427);
  }

  v427[2] = v429 + 1;
  (v607)(v427 + v605 + v606 * v429, v423, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x32342E7475706E69, 0xE800000000000000, 0x31342E7475706E69, 0xE800000000000000, 0x32342E7475706E69, 0xE800000000000000, 128);
  v430 = v427[2];
  if (v427[3] >> 1 <= v430)
  {
    v427 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v427[3] >= 2uLL, v430 + 1, 1, v427);
  }

  v427[2] = v430 + 1;
  (v607)(v427 + v605 + v606 * v430, v428, v608);
  v610 = v427;
  v609 = 1;
  v604 = 1;
  v431 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v609 = 2;
  v604 = 2;
  v432 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v433 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v434 = v599;
  (v597)(v433, v596, v599);
  __swift_storeEnumTagSinglePayload(v433, 0, 1, v434);
  v435 = v528;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x33342E7475706E69, 0xE800000000000000, 0x38332E7475706E69, 0xE800000000000000, 0x33342E7475706E69, 0xE800000000000000, 128, 64, 1, v431, v432, v433);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v433, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v436 = v432;
  v437 = v600;
  v438 = v603;
  (v603)(v436, v600);
  v438(v431, v437);
  v439 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v439 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v439[2] + 1, 1, v439);
  }

  v440 = v439[2];
  if (v439[3] >> 1 <= v440)
  {
    v439 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v439[3] >= 2uLL, v440 + 1, 1, v439);
  }

  v439[2] = v440 + 1;
  (v607)(v439 + v605 + v606 * v440, v435, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xEA0000000000352ELL, 0x33342E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xEA0000000000352ELL, 128);
  v441 = v439[2];
  if (v439[3] >> 1 <= v441)
  {
    v439 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v439[3] >= 2uLL, v441 + 1, 1, v439);
  }

  v439[2] = v441 + 1;
  (v607)(v439 + v605 + v606 * v441, v552, v608);
  v610 = v439;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x34342E7475706E69, 0xE800000000000000, &outlined read-only object #12 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x34342E7475706E69, 0xE800000000000000);
  v442 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v442 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v442[2] + 1, 1, v442);
  }

  v443 = v442[2];
  if (v442[3] >> 1 <= v443)
  {
    v442 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v442[3] >= 2uLL, v443 + 1, 1, v442);
  }

  v442[2] = v443 + 1;
  (v607)(v442 + v605 + v606 * v443, v551, v608);
  v444 = v527;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x35342E7475706E69, 0xE800000000000000, 0x34342E7475706E69, 0xE800000000000000, 0x35342E7475706E69, 0xE800000000000000);
  v445 = v442[2];
  if (v442[3] >> 1 <= v445)
  {
    v442 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v442[3] >= 2uLL, v445 + 1, 1, v442);
  }

  v442[2] = v445 + 1;
  (v607)(v442 + v605 + v606 * v445, v444, v608);
  v610 = v442;
  v609 = 1;
  v604 = 1;
  v446 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v447 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v448 = v599;
  (v597)(v447, v596, v599);
  __swift_storeEnumTagSinglePayload(v447, 0, 1, v448);
  v609 = 1;
  v604 = 1;
  v449 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v450 = v526;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x36342E7475706E69, 0xE800000000000000, 0x35342E7475706E69, 0xE800000000000000, 0x36342E7475706E69, 0xE800000000000000, 256, 128, 1, v446, v449, v447);
  v451 = v449;
  v452 = v600;
  v453 = v603;
  (v603)(v451, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v447, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v453(v446, v452);
  v454 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v454 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v454[2] + 1, 1, v454);
  }

  v455 = v454[2];
  if (v454[3] >> 1 <= v455)
  {
    v454 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v454[3] >= 2uLL, v455 + 1, 1, v454);
  }

  v454[2] = v455 + 1;
  (v607)(v454 + v605 + v606 * v455, v450, v608);
  v610 = v454;
  v456 = v590;
  (v593)(v590, v594, v595);
  v609 = 1;
  v604 = 3;
  v457 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v458 = v589;
  static NeuralNetwork.Layer.PoolParameters.Padding.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(0, 0, 1, 1);
  __swift_storeEnumTagSinglePayload(v458, 0, 1, v592);
  v609 = 1;
  v604 = 1;
  v459 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)(0x37342E7475706E69, 0xE800000000000000, 0x36342E7475706E69, 0xE800000000000000, 0x37342E7475706E69, 0xE800000000000000, v456, v457, v459, v458);
  v460 = v459;
  v461 = v600;
  v462 = v603;
  (v603)(v460, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v458, &demangling cache variable for type metadata for NeuralNetwork.Layer.PoolParameters.Padding?);
  v462(v457, v461);
  (v591)(v456, v595);
  v463 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v463 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v463[2] + 1, 1, v463);
  }

  v464 = v463[2];
  if (v463[3] >> 1 <= v464)
  {
    v463 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v463[3] >= 2uLL, v464 + 1, 1, v463);
  }

  v463[2] = v464 + 1;
  (v607)(v463 + v605 + v606 * v464, v550, v608);
  v610 = v463;
  v609 = 9;
  v604 = 1;
  v465 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v466 = v598;
  static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)(4, 4, 0, 0);
  __swift_storeEnumTagSinglePayload(v466, 0, 1, v599);
  v609 = 1;
  v604 = 1;
  v467 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v468 = v525;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x38342E7475706E69, 0xE800000000000000, 0x37342E7475706E69, 0xE800000000000000, 0x38342E7475706E69, 0xE800000000000000, 256, 256, 1, v465, v467, v466);
  v469 = v467;
  v470 = v600;
  v471 = v603;
  (v603)(v469, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v466, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v471(v465, v470);
  v472 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v472[2] + 1, 1, v472);
  }

  v473 = v581;
  v474 = v472[2];
  if (v472[3] >> 1 <= v474)
  {
    v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v472[3] >= 2uLL, v474 + 1, 1, v472);
  }

  v472[2] = v474 + 1;
  (v607)(v472 + v605 + v606 * v474, v468, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x39342E7475706E69, 0xE800000000000000, 0x38342E7475706E69, 0xE800000000000000, 0x39342E7475706E69, 0xE800000000000000, 256);
  v475 = v472[2];
  if (v472[3] >> 1 <= v475)
  {
    v472 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v472[3] >= 2uLL, v475 + 1, 1, v472);
  }

  v472[2] = v475 + 1;
  (v607)(v472 + v605 + v606 * v475, v473, v608);
  v610 = v472;
  v609 = 1;
  v604 = 1;
  v476 = v602;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v477 = v598;
  NeuralNetwork.ValidPaddingParameters.init()();
  v478 = v599;
  (v597)(v477, v596, v599);
  __swift_storeEnumTagSinglePayload(v477, 0, 1, v478);
  v609 = 1;
  v604 = 1;
  v479 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v480 = v524;
  static NeuralNetwork.Layer.convolution(name:inputName:outputName:outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)(0x30352E7475706E69, 0xE800000000000000, 0x35342E7475706E69, 0xE800000000000000, 0x30352E7475706E69, 0xE800000000000000, 256, 128, 1, v476, v479, v477);
  v481 = v479;
  v482 = v600;
  v483 = v603;
  (v603)(v481, v600);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v477, &demangling cache variable for type metadata for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind?);
  v483(v476, v482);
  v484 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v484 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v484[2] + 1, 1, v484);
  }

  v485 = v484[2];
  if (v484[3] >> 1 <= v485)
  {
    v484 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v484[3] >= 2uLL, v485 + 1, 1, v484);
  }

  v484[2] = v485 + 1;
  (v607)(v484 + v605 + v606 * v485, v480, v608);
  static NeuralNetwork.Layer.batchNormalize(name:inputName:outputName:inputChannelCount:)(0x6C61756469736572, 0xE800000000000000, 0x30352E7475706E69, 0xE800000000000000, 0x6C61756469736572, 0xE800000000000000, 256);
  v486 = v484[2];
  if (v484[3] >> 1 <= v486)
  {
    v484 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v484[3] >= 2uLL, v486 + 1, 1, v484);
  }

  v484[2] = v486 + 1;
  (v607)(v484 + v605 + v606 * v486, v548, v608);
  v610 = v484;
  static NeuralNetwork.Layer.add(name:inputNames:outputName:)(0x31352E7475706E69, 0xE800000000000000, &outlined read-only object #13 of MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:), 0x31352E7475706E69, 0xE800000000000000);
  v487 = v610;
  if (!swift_isUniquelyReferenced_nonNull_native(v610))
  {
    v487 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v487[2] + 1, 1, v487);
  }

  v488 = v487[2];
  if (v487[3] >> 1 <= v488)
  {
    v487 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v487[3] >= 2uLL, v488 + 1, 1, v487);
  }

  v487[2] = v488 + 1;
  (v607)(v487 + v605 + v606 * v488, v547, v608);
  v489 = v523;
  static NeuralNetwork.Layer.relu(name:inputName:outputName:)(0x32352E7475706E69, 0xE800000000000000, 0x31352E7475706E69, 0xE800000000000000, 0x32352E7475706E69, 0xE800000000000000);
  v610 = v487;
  v490 = v487[2];
  if (v487[3] >> 1 <= v490)
  {
    v610 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v487[3] >= 2uLL, v490 + 1, 1, v487);
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v490, v489);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  (v593)(v590, v594, v595);
  v609 = 0;
  v604 = 0;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v609 = 0;
  v604 = 0;
  v491 = v601;
  NeuralNetwork.Extent.init(height:width:)(&v609, &v604, &type metadata for Int, &protocol witness table for Int);
  v492 = v589;
  NeuralNetwork.ValidPaddingParameters.init()();
  v493 = v592;
  (*(*(v592 - 1) + 104))(v492, enum case for NeuralNetwork.Layer.PoolParameters.Padding.valid(_:), v592);
  __swift_storeEnumTagSinglePayload(v492, 0, 1, v493);
  v494 = v546;
  NeuralNetwork.Layer.PoolParameters.init(kind:kernelSize:strides:padding:)(v590, v602, v491, v492);
  NeuralNetwork.Layer.PoolParameters.averageExcludesPadding.setter(1);
  v495 = v494;
  NeuralNetwork.Layer.PoolParameters.doesGlobalPooling.setter(1);
  v496 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  v497 = swift_allocObject(v496, 48, 7);
  v498 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1g5(v497, 1);
  *v499 = 0x32352E7475706E69;
  v499[1] = 0xE800000000000000;
  v608 = specialized _finalizeUninitializedArray<A>(_:)(v498);
  v500 = swift_allocObject(v496, 48, 7);
  v501 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSS_Tt1g5(v500, 1);
  *v502 = &unk_382E78;
  v502[1] = 0xE300000000000000;
  v503 = specialized _finalizeUninitializedArray<A>(_:)(v501);
  v504 = v520;
  (*(v545 + 16))(v520, v495, v544);
  (*(v522 + 104))(v504, enum case for NeuralNetwork.Layer.Kind.pool(_:), v521);
  v505 = v519;
  NeuralNetwork.Layer.init(name:inputNames:outputNames:kind:)(&unk_382E78, 0xE300000000000000, v608, v503, v504);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v506 = v610[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v506);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v506, v505);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  v507 = swift_allocObject(v549, 48, 7);
  v508 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZSi_Tt1g5(v507, 2);
  *v509 = 1;
  v509[1] = 256;
  v510 = specialized _finalizeUninitializedArray<A>(_:)(v508);
  static NeuralNetwork.Layer.reshapeStatic(name:inputName:outputName:targetShape:)(0x33352E7475706E69, 0xE800000000000000, &unk_382E78, 0xE300000000000000, 0x33352E7475706E69, 0xE800000000000000, v510);
  v510;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v511 = v610[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v511);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v511, v505);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  v512 = specialized Collection.underestimatedCount.getter(*(v543 + 16));
  static NeuralNetwork.Layer.innerProduct(name:inputName:outputName:inputChannelCount:outputChannelCount:)(120, 0xE100000000000000, 0x33352E7475706E69, 0xE800000000000000, 120, 0xE100000000000000, 256, v512);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v513 = v610[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v513);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v513, v505);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  static NeuralNetwork.Layer.softmaxND(name:inputName:outputName:axis:)(&unk_383433, 0xE300000000000000, 120, 0xE100000000000000, 0xD000000000000012, "shape does not match." + 0x8000000000000000, 1);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v514 = v610[2];
  specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v514);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v514, v505);
  MLBoostedTreeRegressor.ModelParameters.maxDepth.modify();
  (*(v545 + 8))(v546, v544);
  return v610;
}

void *MLHandActionClassifier.GraphCNN.getCoreMLAndNeuralNetworksTrainableLayerMap(_:)(uint64_t a1)
{
  v1 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for Int, &protocol witness table for String);
  v24 = *(a1 + 16);
  if (v24)
  {
    a1;
    v2 = (a1 + 40);
    v3 = 0;
    do
    {
      v25 = v3;
      v4 = *(v2 - 1);
      v23 = v2;
      v5 = *v2;
      *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v1);
      v27 = v4;
      v26 = v5;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
      v9 = (v7 & 1) == 0;
      v10 = __OFADD__(v1[2], v9);
      v11 = v1[2] + v9;
      if (v10)
      {
        BUG();
      }

      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, Int>);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v11))
      {
        v13 = v26;
        v8 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v26);
        LOBYTE(v16) = v16 & 1;
        if ((v12 & 1) != v16)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v26, v16, v14, v15);
          BUG();
        }
      }

      else
      {
        v13 = v26;
      }

      if (v12)
      {
        v17 = v25;
        *(v1[7] + 8 * v8) = v25;
        v13;
      }

      else
      {
        v1[(v8 >> 6) + 8] |= 1 << v8;
        v18 = v1[6];
        v19 = 16 * v8;
        *(v18 + v19) = v27;
        *(v18 + v19 + 8) = v13;
        v17 = v25;
        *(v1[7] + 8 * v8) = v25;
        v20 = v1[2];
        v10 = __OFADD__(1, v20);
        v21 = v20 + 1;
        if (v10)
        {
          BUG();
        }

        v1[2] = v21;
      }

      v3 = v17 + 1;
      v2 = v23 + 2;
    }

    while (v24 != v3);
    a1;
  }

  return v1;
}

void *MLHandActionClassifier.GraphCNN.updatedCoreMLLayers()()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Dense?) - 8) + 64);
  v1 = alloca(v0);
  v2 = alloca(v0);
  v116 = &v111;
  v143 = type metadata accessor for Dense(0);
  v123 = *(v143 - 8);
  v3 = *(v123 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v134 = type metadata accessor for NeuralNetwork.Layer.InnerProductParameters(0);
  v121 = *(v134 - 8);
  v6 = *(v121 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v122 = &v111;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for BatchNorm?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v118 = &v111;
  v130 = type metadata accessor for BatchNorm(0);
  v131 = *(v130 - 8);
  v12 = *(v131 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v141 = &v111;
  v140 = type metadata accessor for NeuralNetwork.Layer.BatchNormalizeParameters(0);
  v125 = *(v140 - 8);
  v15 = *(v125 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v142 = &v111;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Conv2D?) - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  v117 = &v111;
  v128 = type metadata accessor for Conv2D(0);
  v129 = *(v128 - 8);
  v21 = *(v129 + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v138 = &v111;
  v137 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  v126 = *(v137 - 8);
  v24 = *(v126 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v127 = &v111;
  v152 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  v148 = *(v152 - 8);
  v27 = *(v148 + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  v135 = &v111;
  v30 = alloca(v27);
  v31 = alloca(v27);
  v32 = type metadata accessor for NeuralNetwork.Layer(0);
  v111 = *(v32 - 8);
  v33 = *(v111 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v113 = &v111;
  v36 = alloca(v33);
  v37 = alloca(v33);
  v112 = &v111;
  v38 = MLHandActionClassifier.GraphCNN.defineCoreMLLayers(numberOfKeypointsChannels:numberOfKeypoints:)(3uLL, 0x15uLL);
  v139 = MLHandActionClassifier.GraphCNN.coreMLTrainableLayerNames(from:)(v38);
  v149 = MLHandActionClassifier.GraphCNN.getCoreMLAndNeuralNetworksTrainableLayerMap(_:)(v139);
  v39 = v38;
  v40 = MLHandActionClassifier.GraphCNN.trainableSublayers()();
  v114 = v38[2];
  if (v114)
  {
    v145 = enum case for NeuralNetwork.Layer.Kind.innerProduct(_:);
    v146 = enum case for NeuralNetwork.Layer.Kind.convolution(_:);
    v147 = enum case for NeuralNetwork.Layer.Kind.batchNormalize(_:);
    v136 = v40 + 4;
    v41 = 0;
    v124 = &v111;
    v115 = &v111;
    v144 = v32;
    v153 = v40;
    do
    {
      if (v41 >= v39[2])
      {
        BUG();
      }

      v154._object = v39;
      v42 = v111;
      v132 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v133 = v41 * *(v111 + 72);
      v43 = v39 + v132 + v133;
      v151 = v41;
      v44 = *(v111 + 16);
      v45 = v112;
      v44(v112, v43, v32);
      v154._countAndFlagsBits = NeuralNetwork.Layer.name.getter();
      v150 = v46;
      v47 = *(v42 + 8);
      v47(v45, v32);
      if (v151 >= *(v154._object + 2))
      {
        BUG();
      }

      v48 = v113;
      v44(v113, v43, v32);
      v49 = v115;
      NeuralNetwork.Layer.kind.getter();
      v47(v48, v32);
      v50 = v152;
      v51 = v148;
      v52 = (*(v148 + 88))(v49, v152);
      if (v52 == v145)
      {
        (*(v51 + 96))(v49, v50);
        (*(v121 + 32))(v122, v49, v134);
        v53 = v149;
        v54 = v150;
        if (!v149[2])
        {
          goto LABEL_63;
        }

        v150;
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v154._countAndFlagsBits, v54);
        v57 = v124;
        v58 = v153;
        if ((v56 & 1) == 0)
        {
          v54;
LABEL_63:
          v119 = 0;
          v120 = 0xE000000000000000;
          _StringGuts.grow(_:)(80);
          v105._object = "sequence of hand poses" + 0x8000000000000000;
          v105._countAndFlagsBits = 0xD00000000000003FLL;
          String.append(_:)(v105);
          v105._countAndFlagsBits = v154._countAndFlagsBits;
          v105._object = v54;
          String.append(_:)(v105);
          v105._countAndFlagsBits = 0x65726F63206E6920;
          v105._object = 0xEF63657073206C6DLL;
          String.append(_:)(v105);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 770, 0);
          goto LABEL_71;
        }

        v59 = *(v53[7] + 8 * v55);
        v54;
        v60 = v116;
        if (v59 < 0)
        {
          BUG();
        }

        if (v59 >= v58[2])
        {
          BUG();
        }

        outlined init with copy of TabularRegressionTask(&v136[5 * v59], &v119);
        v61 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
        if (!swift_dynamicCast(v60, &v119, v61, v143, 6))
        {
          __swift_storeEnumTagSinglePayload(v60, 1, 1, v143);
          outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v60, &demangling cache variable for type metadata for Dense?);
          v119 = 0;
          v120 = 0xE000000000000000;
          _StringGuts.grow(_:)(81);
          v106._object = "amework layer for " + 0x8000000000000000;
          v106._countAndFlagsBits = 0xD000000000000040;
          String.append(_:)(v106);
          v106._countAndFlagsBits = v154._countAndFlagsBits;
          v106._object = v150;
          String.append(_:)(v106);
          v106._countAndFlagsBits = 0x65726F63206E6920;
          v106._object = 0xEF63657073206C6DLL;
          String.append(_:)(v106);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 773, 0);
          goto LABEL_71;
        }

        v150;
        v62 = v143;
        __swift_storeEnumTagSinglePayload(v60, 0, 1, v143);
        (*(v123 + 32))(v57, v60, v62);
        v63 = v139[2] - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v154._object);
        if (v59 == v63)
        {
          v65 = v134;
          if (!isUniquelyReferenced_nonNull_native)
          {
            v154._object = specialized _ArrayBuffer._consumeAndCreateNew()(v154._object);
          }

          object = v154._object;
          v67 = v152;
          if (v151 >= *(v154._object + 2))
          {
            BUG();
          }
        }

        else
        {
          v65 = v134;
          if (!isUniquelyReferenced_nonNull_native)
          {
            v154._object = specialized _ArrayBuffer._consumeAndCreateNew()(v154._object);
          }

          object = v154._object;
          v67 = v152;
          if (v151 >= *(v154._object + 2))
          {
            BUG();
          }
        }

        v154._object = object;
        v99 = v59 == v63;
        v100 = v122;
        NeuralNetwork.Layer.loadInnerProductFromNeuralNetworks(_:useBias:into:)(v57, v99, v122);
        v101 = v135;
        v102 = v121;
        (*(v121 + 16))(v135, v100, v65);
        (*(v148 + 104))(v101, v145, v67);
        if (v151 >= *(v154._object + 2))
        {
          BUG();
        }

        NeuralNetwork.Layer.kind.setter(v101);
        (*(v123 + 8))(v124, v143);
        (*(v102 + 8))(v100, v65);
        v39 = v154._object;
        v32 = v144;
      }

      else
      {
        v68 = v150;
        if (v52 == v146)
        {
          (*(v51 + 96))(v49, v50, v125);
          (*(v126 + 32))(v127, v49, v137);
          v69 = v149;
          if (!v149[2])
          {
            goto LABEL_66;
          }

          v68;
          v70 = specialized __RawDictionaryStorage.find<A>(_:)(v154._countAndFlagsBits, v68);
          if ((v71 & 1) == 0)
          {
            v68;
LABEL_66:
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(79);
            v107._object = "ework layer to batchnorm for " + 0x8000000000000000;
            v107._countAndFlagsBits = 0xD00000000000003ELL;
            String.append(_:)(v107);
            v107._countAndFlagsBits = v154._countAndFlagsBits;
            v107._object = v68;
            String.append(_:)(v107);
            v107._countAndFlagsBits = 0x65726F63206E6920;
            v107._object = 0xEF63657073206C6DLL;
            String.append(_:)(v107);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 749, 0);
            goto LABEL_71;
          }

          v72 = *(v69[7] + 8 * v70);
          v68;
          v73 = v117;
          v74 = v135;
          if (v72 < 0)
          {
            BUG();
          }

          if (v72 >= v153[2])
          {
            BUG();
          }

          outlined init with copy of TabularRegressionTask(&v136[5 * v72], &v119);
          v75 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
          v76 = v128;
          if (!swift_dynamicCast(v73, &v119, v75, v128, 6))
          {
            __swift_storeEnumTagSinglePayload(v73, 1, 1, v76);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v73, &demangling cache variable for type metadata for Conv2D?);
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(80);
            v108._object = "layer state keypaths for " + 0x8000000000000000;
            v108._countAndFlagsBits = 0xD00000000000003FLL;
            String.append(_:)(v108);
            v108._countAndFlagsBits = v154._countAndFlagsBits;
            v108._object = v68;
            String.append(_:)(v108);
            v108._countAndFlagsBits = 0x65726F63206E6920;
            v108._object = 0xEF63657073206C6DLL;
            String.append(_:)(v108);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 752, 0);
            goto LABEL_71;
          }

          v68;
          __swift_storeEnumTagSinglePayload(v73, 0, 1, v76);
          (*(v129 + 32))(v138, v73, v76);
          v77 = v154._object;
          if (!swift_isUniquelyReferenced_nonNull_native(v154._object))
          {
            v77 = specialized _ArrayBuffer._consumeAndCreateNew()(v77);
          }

          v78 = v151;
          if (v151 >= v77[2])
          {
            BUG();
          }

          v79 = v127;
          v154._object = v77;
          NeuralNetwork.Layer.loadConv2DFromNeuralNetworks(_:useBias:into:)(v138, 0, v127);
          v80 = v74;
          v81 = v74;
          v82 = v51;
          v83 = v126;
          (*(v126 + 16))(v80, v79, v137);
          (*(v82 + 104))(v81, v146, v152);
          if (v78 >= *(v154._object + 2))
          {
            BUG();
          }

          NeuralNetwork.Layer.kind.setter(v81);
          (*(v129 + 8))(v138, v128);
          (*(v83 + 8))(v79, v137);
          v32 = v144;
          v39 = v154._object;
        }

        else
        {
          if (v52 != v147)
          {
            v150;
            (*(v148 + 8))(v49, v152);
            v32 = v144;
            v40 = v153;
            v39 = v154._object;
            goto LABEL_44;
          }

          v84 = v125;
          (*(v148 + 96))(v49, v152);
          (*(v84 + 32))(v142, v49, v140);
          v85 = v149;
          v86 = v153;
          if (!v149[2])
          {
            goto LABEL_69;
          }

          v68;
          v87 = specialized __RawDictionaryStorage.find<A>(_:)(v154._countAndFlagsBits, v68);
          if ((v88 & 1) == 0)
          {
            v68;
LABEL_69:
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(77);
            v109._object = "amework innerProduct layer for " + 0x8000000000000000;
            v109._countAndFlagsBits = 0xD00000000000003CLL;
            String.append(_:)(v109);
            v109._countAndFlagsBits = v154._countAndFlagsBits;
            v109._object = v68;
            String.append(_:)(v109);
            v109._countAndFlagsBits = 0x65726F63206E6920;
            v109._object = 0xEF63657073206C6DLL;
            String.append(_:)(v109);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 760, 0);
LABEL_71:
            BUG();
          }

          v89 = *(v85[7] + 8 * v87);
          v68;
          v90 = v118;
          if (v89 < 0)
          {
            BUG();
          }

          if (v89 >= v86[2])
          {
            BUG();
          }

          outlined init with copy of TabularRegressionTask(&v136[5 * v89], &v119);
          v91 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
          v92 = v130;
          if (!swift_dynamicCast(v90, &v119, v91, v130, 6))
          {
            __swift_storeEnumTagSinglePayload(v90, 1, 1, v92);
            outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v90, &demangling cache variable for type metadata for BatchNorm?);
            v119 = 0;
            v120 = 0xE000000000000000;
            _StringGuts.grow(_:)(78);
            v110._object = "amework batchnorm layer for " + 0x8000000000000000;
            v110._countAndFlagsBits = 0xD00000000000003DLL;
            String.append(_:)(v110);
            v110._countAndFlagsBits = v154._countAndFlagsBits;
            v110._object = v150;
            String.append(_:)(v110);
            v110._countAndFlagsBits = 0x65726F63206E6920;
            v110._object = 0xEF63657073206C6DLL;
            String.append(_:)(v110);
            _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v119, v120, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 763, 0);
            goto LABEL_71;
          }

          v150;
          __swift_storeEnumTagSinglePayload(v90, 0, 1, v92);
          (*(v131 + 32))(v141, v90, v92);
          v93 = v154._object;
          if (!swift_isUniquelyReferenced_nonNull_native(v154._object))
          {
            v154._object = specialized _ArrayBuffer._consumeAndCreateNew()(v93);
          }

          v94 = v142;
          v95 = v154._object;
          v96 = v151;
          if (v151 >= *(v154._object + 2))
          {
            BUG();
          }

          NeuralNetwork.Layer.loadBatchNormFromNeuralNetworks(_:into:)(v141, v142);
          v97 = v135;
          v98 = v125;
          (*(v125 + 16))(v135, v94, v140);
          (*(v148 + 104))(v97, v147, v152);
          if (v96 >= v95[2])
          {
            BUG();
          }

          NeuralNetwork.Layer.kind.setter(v97);
          (*(v131 + 8))(v141, v130);
          (*(v98 + 8))(v94, v140);
          v32 = v144;
          v39 = v95;
        }
      }

      v40 = v153;
LABEL_44:
      v41 = v151 + 1;
    }

    while (v114 != v151 + 1);
  }

  v103 = v40;
  v149;
  v139;
  v103;
  return v39;
}

uint64_t NeuralNetwork.Layer.loadBatchNormFromNeuralNetworks(_:into:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v16[1] = a1;
  v18 = type metadata accessor for Tensor(0);
  v2 = *(v18 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  BatchNorm.scale.getter();
  v9 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v16[0] = *(v2 + 8);
  (v16[0])(v16, v18);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v9, 0);
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  NeuralNetwork.Layer.BatchNormalizeParameters.scale.setter(v16);
  BatchNorm.offset.getter();
  v10 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  (v16[0])(v16, v18);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v10, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  NeuralNetwork.Layer.BatchNormalizeParameters.offset.setter(v16);
  BatchNorm.runningMean.getter();
  v11 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v12 = v18;
  v13 = v16[0];
  (v16[0])(v16, v18);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v11, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  NeuralNetwork.Layer.BatchNormalizeParameters.mean.setter(v16);
  BatchNorm.runningVariance.getter();
  v14 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v13(v16, v12);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v14, 0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  return NeuralNetwork.Layer.BatchNormalizeParameters.variance.setter(v16);
}

uint64_t NeuralNetwork.Layer.loadInnerProductFromNeuralNetworks(_:useBias:into:)(uint64_t a1, int a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.WeightParameters?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v40 = &v35;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v39 = &v35;
  v38 = type metadata accessor for Tensor(0);
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v41 = &v35;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v42 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v16 = *(*(v42 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v45 = a3;
  v19 = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter();
  if (v19 != Dense.unitCount.getter())
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    _StringGuts.grow(_:)(86);
    v28._object = "amework convolution layer for " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD000000000000041;
    String.append(_:)(v28);
    v37 = Dense.unitCount.getter();
    v29 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v31 = v30;
    v28._countAndFlagsBits = v29;
    v28._object = v30;
    String.append(_:)(v28);
    v31;
    v28._object = "ks framework has " + 0x8000000000000000;
    v28._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v28);
    v37 = NeuralNetwork.Layer.InnerProductParameters.outputChannelCount.getter();
    v32 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v34 = v33;
    v28._countAndFlagsBits = v32;
    v28._object = v33;
    String.append(_:)(v28);
    v34;
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v35, v36, "CreateML/_MLHandActionClassifier+ModelExport.swift", 50, 2, 891, 0);
    BUG();
  }

  Dense.weight.getter();
  v20 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
  v43 = v10;
  v21 = *(v10 + 8);
  v22 = v38;
  v44 = v21;
  v21(&v35, v38);
  NeuralNetwork.WeightParameters.init(_:updatable:)(v20, 0);
  result = NeuralNetwork.Layer.InnerProductParameters.weights.setter(&v35);
  if (v46)
  {
    v24 = v39;
    Dense.bias.getter();
    if (__swift_getEnumTagSinglePayload(v24, 1, v22) == 1)
    {
      return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v24, &demangling cache variable for type metadata for Tensor?);
    }

    else
    {
      v25 = v41;
      (*(v43 + 32))(v41, v24, v22);
      v26 = Tensor.scalars<A>(as:)(&type metadata for Float, &type metadata for Float, &protocol witness table for Float);
      v27 = v40;
      NeuralNetwork.WeightParameters.init(_:updatable:)(v26, 0);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v42);
      NeuralNetwork.Layer.InnerProductParameters.bias.setter(v27);
      return v44(v25, v22);
    }
  }

  return result;
}

id outlined bridged method (mbbnn) of @objc NSBundle.url(forResource:withExtension:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = String._bridgeToObjectiveC()();
  a2;
  v8 = String._bridgeToObjectiveC()();
  a4;
  v9 = [a5 URLForResource:v7 withExtension:v8];
  v10 = v9;

  return v10;
}

uint64_t *outlined release of BlobsFile(uint64_t *a1)
{
  v1 = a1[10];
  outlined consume of Data._Representation(*a1, a1[1]);
  v1;
  return a1;
}

uint64_t type metadata accessor for MLModel()
{
  result = lazy cache variable for type metadata for MLModel;
  if (!lazy cache variable for type metadata for MLModel)
  {
    v1 = objc_opt_self(MLModel);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for MLModel = result;
  }

  return result;
}

uint64_t outlined destroy of MLHandActionClassifier.GraphCNNModel(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static BatchNorm.loadLayer(from:layerName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v66[1] = v4;
  v66[2] = v3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TensorShape?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v66[0] = v66;
  v10 = *(*(type metadata accessor for Tensor(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v67 = v66;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v70 = v66;
  v15 = alloca(v10);
  v16 = alloca(v10);
  v68 = v66;
  v17 = alloca(v10);
  v18 = alloca(v10);
  v69 = v66;
  v79 = a2;
  v77 = a2;
  v78 = a3;
  a3;
  v19._countAndFlagsBits = 0x74657366666F2ELL;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20 = v78;
  v75 = *&a1;
  v21 = specialized Dictionary.subscript.getter(v77, v78, a1);
  v20;
  if (!v21)
  {
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v54 = v78;
    a3;
    v54;
    v77 = v79;
    v78 = a3;
    v55._object = ", but coreml has " + 0x8000000000000000;
    v55._countAndFlagsBits = 0xD000000000000025;
LABEL_21:
    String.append(_:)(v55);
    v62 = v77;
    v63 = v78;
    v64 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v64, 0, 0);
    *v65 = v62;
    *(v65 + 8) = v63;
    *(v65 + 16) = 0;
    *(v65 + 32) = 0;
    *(v65 + 48) = 2;
    return swift_willThrow();
  }

  v76 = v21;
  v77 = v79;
  v78 = a3;
  a3;
  v22._countAndFlagsBits = 0x656C6163732ELL;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23 = v78;
  v24 = specialized Dictionary.subscript.getter(v77, v78, *&v75);
  v23;
  v74 = v24;
  if (!v24)
  {
    v76;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v56 = v78;
    a3;
    v56;
    v77 = v79;
    v78 = a3;
    v55._object = "d in state dictionary" + 0x8000000000000000;
    v57 = 0xD000000000000024;
LABEL_20:
    v55._countAndFlagsBits = v57;
    goto LABEL_21;
  }

  v77 = v79;
  v78 = a3;
  a3;
  v25._countAndFlagsBits = 0x676E696E6E75722ELL;
  v25._object = 0xEC0000006E61654DLL;
  String.append(_:)(v25);
  v26 = v78;
  v27 = specialized Dictionary.subscript.getter(v77, v78, *&v75);
  v26;
  if (!v27)
  {
    v74;
    v76;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v58 = v78;
    a3;
    v58;
    v77 = v79;
    v78 = a3;
    v55._object = " in state dictionary" + 0x8000000000000000;
    v57 = 0xD00000000000002ALL;
    goto LABEL_20;
  }

  v73 = v27;
  v77 = 0;
  v78 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v28 = v78;
  a3;
  v28;
  v77 = v79;
  v78 = a3;
  v29._object = " found in state dictionary" + 0x8000000000000000;
  v29._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v29);
  v30 = v78;
  v31 = specialized Dictionary.subscript.getter(v77, v78, *&v75);
  v30;
  if (!v31)
  {
    v73;
    v74;
    v76;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v59 = v78;
    a3;
    v59;
    v77 = v79;
    v78 = a3;
    v55._object = ".runningVariance" + 0x8000000000000000;
    v55._countAndFlagsBits = 0xD00000000000002ELL;
    goto LABEL_21;
  }

  v72 = v31;
  v77 = v79;
  v78 = a3;
  a3;
  v32._countAndFlagsBits = 0x75746E656D6F6D2ELL;
  v32._object = 0xE90000000000006DLL;
  String.append(_:)(v32);
  v33 = v78;
  v34 = *&v75;
  v35 = specialized Dictionary.subscript.getter(v77, v78, *&v75);
  v33;
  v36 = v35;
  v37 = v35 == 0;
  v38 = v73;
  if (v37)
  {
LABEL_17:
    v72;
    v38;
    v74;
    v76;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v60 = v78;
    a3;
    v60;
    v77 = v79;
    v78 = a3;
    v55._object = " not found in state dictionary" + 0x8000000000000000;
    v57 = 0xD000000000000027;
    goto LABEL_20;
  }

  if (*(v36 + 16) != 1)
  {
    v36;
    goto LABEL_17;
  }

  v71 = v36;
  v77 = v79;
  v78 = a3;
  a3;
  v39._countAndFlagsBits = 0x6E6F6C697370652ELL;
  v39._object = 0xE800000000000000;
  String.append(_:)(v39);
  v40 = v78;
  v41 = specialized Dictionary.subscript.getter(v77, v78, v34);
  v40;
  v42 = v72;
  if (!v41)
  {
LABEL_19:
    v71;
    v42;
    v73;
    v74;
    v76;
    v77 = 0;
    v78 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v61 = v78;
    a3;
    v61;
    v77 = v79;
    v78 = a3;
    v55._object = "und in state dictionary" + 0x8000000000000000;
    v57 = 0xD000000000000026;
    goto LABEL_20;
  }

  if (*(v41 + 16) != 1)
  {
    v41;
    goto LABEL_19;
  }

  if (!*(v71 + 16))
  {
    BUG();
  }

  v75 = *(v71 + 32);
  v71;
  v43 = type metadata accessor for TensorShape(0);
  v44 = v66[0];
  __swift_storeEnumTagSinglePayload(v66[0], 1, 1, v43);
  v45 = v76;
  Array<A>.floatTensor(shape:)(v44, v76);
  v45;
  outlined destroy of TensorShape?(v44);
  v79 = v43;
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v43);
  v46 = v74;
  Array<A>.floatTensor(shape:)(v44, v74);
  v46;
  outlined destroy of TensorShape?(v44);
  if (!*(v41 + 16))
  {
    BUG();
  }

  v47 = v75;
  *&v76 = v47;
  v48 = *(v41 + 32);
  *&v75 = v48;
  v41;
  v49 = v79;
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v79);
  v50 = v73;
  Array<A>.floatTensor(shape:)(v44, v73);
  v50;
  outlined destroy of TensorShape?(v44);
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v49);
  v51 = v67;
  v52 = v72;
  Array<A>.floatTensor(shape:)(v44, v72);
  v52;
  outlined destroy of TensorShape?(v44);
  return BatchNorm.init(momentum:offset:scale:epsilon:runningMean:runningVariance:)(v69, v68, v70, v51, *&v76, *&v75);
}

uint64_t MLImageClassifier.FeatureExtractor.init(type:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a2;
  v2[7] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor>);
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v2[11] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2[12] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v2[13] = v6;
  v2[14] = swift_task_alloc((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.FeatureExtractor.init(type:), 0, 0);
}

uint64_t MLImageClassifier.FeatureExtractor.init(type:)()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 104);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(*(v0 + 64), v1);
  if (swift_getEnumCaseMultiPayload(v1, v2) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(*(v0 + 112), *(v0 + 96));
    v3 = swift_task_alloc(240);
    *(v0 + 120) = v3;
    *v3 = v0;
    v3[1] = MLImageClassifier.FeatureExtractor.init(type:);
    v4 = *(v0 + 96);
    return MLImageClassifier.CustomFeatureExtractor.buildTransformer()(*(v0 + 88));
  }

  else
  {
    v6 = *(v0 + 112);
    v13 = *(v0 + 56);
    v7 = *(v0 + 64);
    if (*(v6 + 8))
    {
      v8 = 2;
    }

    else
    {
      v8 = *v6;
    }

    v9 = objc_allocWithZone(CIContext);
    v10 = [v9 init];
    *(v0 + 40) = type metadata accessor for ImageFeaturePrint(0);
    *(v0 + 48) = &protocol witness table for ImageFeaturePrint;
    __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    ImageFeaturePrint.init(revision:cropAndScale:context:)(v8, 0, v10);
    outlined destroy of MLActivityClassifier.ModelParameters(v7, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    outlined init with take of TabularRegressionTask((v0 + 16), v13);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    *(v0 + 112);
    v12;
    v11;
    return (*(v0 + 8))();
  }
}

{
  v2 = *(*v1 + 120);
  *(*v1 + 128) = v0;
  v2;
  if (v0)
  {
    v3 = MLImageClassifier.FeatureExtractor.init(type:);
  }

  else
  {
    v3 = MLImageClassifier.FeatureExtractor.init(type:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v9 = *(v0 + 96);
  v1 = *(v0 + 88);
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v10 = *(v0 + 64);
  v4[3] = v3;
  v4[4] = lazy protocol witness table accessor for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(v2 + 32))(boxed_opaque_existential_0, v1, v3);
  outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v9, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  *(v0 + 112);
  v7;
  v6;
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  outlined destroy of MLActivityClassifier.ModelParameters(*(v0 + 64), type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  v1;
  v2;
  v3;
  v4 = *(v0 + 128);
  return (*(v0 + 8))();
}

uint64_t lazy protocol witness table accessor for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>()
{
  result = lazy protocol witness table cache variable for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>;
  if (!lazy protocol witness table cache variable for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstract(&demangling cache variable for type metadata for ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor>);
    result = swift_getWitnessTable(&protocol conformance descriptor for ComposedTransformer<A, B>, v1);
    lazy protocol witness table cache variable for type ComposedTransformer<ImageScaler, MLModelImageFeatureExtractor> and conformance ComposedTransformer<A, B> = result;
  }

  return result;
}

uint64_t initializeWithCopy for MLImageClassifier.FeatureExtractor(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  *(a1 + 24) = *(a2 + 24);
  (**(v2 - 8))(a1);
  return a1;
}

void __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v8 = *(v3 - 8);
      if ((*(v8 + 82) & 2) != 0)
      {
        v10 = *a1;
        v11 = *a2;
        *a2;
        v10;
        *a1 = v11;
      }

      else
      {
        (*(v8 + 24))(a1, a2, a1[3]);
      }
    }

    else
    {
      a1[3] = v4;
      a1[4] = a2[4];
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        v9 = *a1;
        if ((v7 & 0x20000) != 0)
        {
          v13 = *a2;
          *a1 = *a2;
          v13;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v4);
        }

        v9;
      }

      else
      {
        v16 = *(v4 - 8);
        v15 = v5;
        (*(v5 + 32))(v14, a1, v3);
        if ((v7 & 0x20000) != 0)
        {
          v12 = *a2;
          *a1 = *a2;
          v12;
        }

        else
        {
          (*(v16 + 16))(a1, a2, v4);
        }

        (*(v15 + 8))(v14, v3);
      }
    }
  }
}

uint64_t __swift_memcpy40_8(uint64_t a1, __int128 *a2)
{
  result = a1;
  *(a1 + 32) = *(a2 + 4);
  v3 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v3;
  return result;
}

uint64_t assignWithTake for MLImageClassifier.FeatureExtractor(uint64_t a1, __int128 *a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *(a1 + 32) = *(a2 + 4);
  v2 = *a2;
  *(a1 + 16) = a2[1];
  *a1 = v2;
  return a1;
}

uint64_t getEnumTagSinglePayload for MLImageClassifier.FeatureExtractor(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      v2 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 24) & 0xFFFFFFFF00000001) != 0 ? -1 : *(a1 + 24) >> 1;
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void storeEnumTagSinglePayload for MLImageClassifier.FeatureExtractor(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 40) = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      *(a1 + 40) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = 2 * (a2 - 1);
    }
  }
}

void *static CosineSimilarity.buildItemStatistics(ratings:count:)(void *a1, uint64_t a2)
{
  ML14ItemStatisticsVySdG_Tt1g5 = _sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVySdG_Tt1g5(0, a2, 0.0);
  v14 = a1[3];
  v15 = a1[4];
  v16[0] = a1[5];
  outlined retain of [Int](&v14);
  outlined retain of [Int](&v15);
  outlined retain of ContiguousArray<Double>(v16);
  _s13LinearAlgebra12SparseMatrixV15IndexedSequenceV8IteratorV4baseAGyx__GACyxG_tcfCSd_Tt0g5(a1);
  while (1)
  {
    specialized SparseMatrix.IndexedSequence.Iterator.next()();
    if (v5)
    {
      break;
    }

    v6 = v3;
    v7 = v4;
    if (!swift_isUniquelyReferenced_nonNull_native(ML14ItemStatisticsVySdG_Tt1g5))
    {
      ML14ItemStatisticsVySdG_Tt1g5 = specialized _ArrayBuffer._consumeAndCreateNew()(ML14ItemStatisticsVySdG_Tt1g5);
    }

    if (v6 < 0)
    {
      BUG();
    }

    if (v6 >= ML14ItemStatisticsVySdG_Tt1g5[2])
    {
      BUG();
    }

    v8 = 2 * v6;
    *&ML14ItemStatisticsVySdG_Tt1g5[v8 + 5] = v7 * v7 + *&ML14ItemStatisticsVySdG_Tt1g5[v8 + 5];
    v9 = ML14ItemStatisticsVySdG_Tt1g5[v8 + 4];
    v10 = __OFADD__(1, v9);
    v11 = v9 + 1;
    if (v10)
    {
      BUG();
    }

    ML14ItemStatisticsVySdG_Tt1g5[v8 + 4] = v11;
  }

  v13[3] = v13[7];
  v13[2] = v13[6];
  v13[1] = v13[5];
  v13[0] = v13[4];
  outlined release of SparseMatrix<Double>.MajorCollection(v13, a2);
  return ML14ItemStatisticsVySdG_Tt1g5;
}

__m128 static CosineSimilarityPredictor.finalizePrediction(_:userRatingCount:)(uint64_t a1, __m128 a2)
{
  v2 = 0;
  if (a1)
  {
    *a2.i64 = *a2.i64 / a1;
    return a2;
  }

  return v2;
}

uint64_t _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v4 = type metadata accessor for TaskPriority(0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v4) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &demangling cache variable for type metadata for TaskPriority?);
    v5 = 7168;
  }

  else
  {
    v6 = TaskPriority.rawValue.getter();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = v6 | 0x1C00;
  }

  v7 = *(a3 + 16);
  if (v7)
  {
    v8 = *(a3 + 24);
    ObjectType = swift_getObjectType(*(a3 + 16));
    swift_unknownObjectRetain(v7);
    v10 = dispatch thunk of Actor.unownedExecutor.getter(ObjectType, v8);
    v12 = v11;
    swift_unknownObjectRelease(v7);
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject(&unk_395740, 32, 7);
  *(v13 + 16) = v20;
  *(v13 + 24) = a3;
  if (v10 | v12)
  {
    v15 = &v17;
    v17 = 0;
    v18 = v10;
    v19 = v12;
  }

  else
  {
    v15 = 0;
  }

  return swift_task_create(v5, v15, &type metadata for () + 8, &_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATu, v13, v14, v17, *(&v17 + 1), v18, v19);
}

uint64_t MLImageClassifier.init(_:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a2;
  v3[2] = a1;
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v3[5] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v3[6] = swift_task_alloc((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v3[9] = swift_task_alloc((*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.init(_:parameters:), 0, 0);
}

uint64_t MLImageClassifier.init(_:parameters:)()
{
  v1 = *(v0 + 72);
  v21 = *(v0 + 64);
  v23 = *(v0 + 56);
  v16 = *(v0 + 48);
  v15 = *(v0 + 40);
  v17 = *(v0 + 32);
  v2 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = type metadata accessor for MLImageClassifier(0);
  v20 = v19[6];
  *(v0 + 104) = v20;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v3 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v4 = *(v3 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v1);
  v5 = *(v3 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v1);
  (*(v21 + 8))(v1, v23);
  *(v2 + v20) = 0;
  v22 = type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload(v2 + v20, v22, 1);
  v6 = v19[7];
  *(v0 + 108) = v6;
  v7 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v8 = swift_allocError(&type metadata for MLCreateError, v7, 0, 0);
  *v9 = 0xD0000000000000C0;
  *(v9 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v9 + 16) = 0;
  *(v9 + 32) = 0;
  *(v9 + 48) = 0;
  *(v2 + v6) = v8;
  swift_storeEnumTagMultiPayload(v6 + v2, v22, 2);
  v10 = v19[8];
  *(v0 + 112) = v10;
  outlined init with copy of MLTrainingSessionParameters(v18, v2 + v10, type metadata accessor for MLImageClassifier.Model);
  outlined init with copy of MLImageClassifier.ModelParameters(v17, v2 + 8);
  MLImageClassifier.ModelParameters.algorithm.getter(v17);
  v11 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  *(v16 + *(v11 + 48));
  outlined init with take of MLClassifierMetrics(v16, v15, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v12 = swift_task_alloc(448);
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = MLImageClassifier.init(_:parameters:);
  v13 = *(v0 + 24);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(*(v0 + 40));
}

{
  v1 = *(v0 + 96);
  v7 = *(v0 + 72);
  v6 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 32));
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLImageClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v2, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  *v3 = v1;
  v7;
  v6;
  v2;
  return (*(v0 + 8))();
}

{
  v9 = *(v0 + 72);
  v8 = *(v0 + 48);
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v11 = *(v0 + 24);
  v10 = v2 + 8;
  v3 = v2 + *(v0 + 112);
  v4 = v2 + *(v0 + 108);
  v5 = v2 + *(v0 + 104);
  outlined destroy of MLImageClassifier.ModelParameters(*(v0 + 32));
  outlined destroy of MLActivityClassifier.ModelParameters(v11, type metadata accessor for MLImageClassifier.Model);
  outlined destroy of MLActivityClassifier.ModelParameters(v1, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLImageClassifier.ModelParameters(v10);
  outlined destroy of MLActivityClassifier.ModelParameters(v5, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v4, type metadata accessor for MLClassifierMetrics);
  outlined destroy of MLActivityClassifier.ModelParameters(v3, type metadata accessor for MLImageClassifier.Model);
  v9;
  v8;
  v1;
  v6 = *(v0 + 88);
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.init(_:parameters:)(uint64_t a1)
{
  v5 = *(*v2 + 80);
  v4 = *v2;
  *(*v2 + 88) = v1;
  v5;
  if (v1)
  {
    v6 = MLImageClassifier.init(_:parameters:);
  }

  else
  {
    *(v4 + 96) = a1;
    v6 = MLImageClassifier.init(_:parameters:);
  }

  return swift_task_switch(v6, 0, 0);
}

uint64_t MLImageClassifier.init(checkpoint:)(uint64_t a1)
{
  v133 = v2;
  v138 = a1;
  v3 = v1;
  v132 = v1;
  v115 = *(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8);
  v4 = *(v115 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v121 = v104;
  v112 = v4;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v131 = v104;
  v116 = *(type metadata accessor for MLImageClassifier.Model(0) - 8);
  v9 = *(v116 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v114 = v104;
  v113 = v9;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v134 = v104;
  v106 = type metadata accessor for MLImageClassifier.Classifier(0);
  v14 = *(*(v106 - 8) + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v129 = v104;
  v107 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  v17 = *(*(v107 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v117 = v104;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v109 = v104;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v108 = v104;
  v110 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v24 = *(*(v110 - 8) + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v111 = v104;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v126 = v104;
  v130 = type metadata accessor for MLImageClassifier.PersistentParameters(0);
  v29 = *(*(v130 - 1) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v125 = v104;
  v124 = type metadata accessor for URL(0);
  v137 = *(v124 - 8);
  v32 = *(v137 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v127 = v104;
  v35 = alloca(v32);
  v36 = alloca(v32);
  v128 = v104;
  v37 = alloca(v32);
  v38 = alloca(v32);
  v135 = v104;
  v39 = alloca(v32);
  v40 = alloca(v32);
  v136 = v104;
  v139 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ClassificationMetrics<String>);
  v122 = *(v139 - 1);
  v41 = *(v122 + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v44 = type metadata accessor for MLImageClassifier(0);
  v123 = *(v44 + 24);
  v45 = v123 + v3;
  ClassificationMetrics.init()(&type metadata for String, &protocol witness table for String);
  v46 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v47 = *(v46 + 20);
  _s8CreateML19MLClassifierMetricsV22makeConfusionDataFramey07TabularG00gH0V0A12MLComponents014ClassificationD0VyxGSLRzSeRzSERzSHRzlFZSS_Tt1g5(v104);
  v48 = *(v46 + 24);
  _s8CreateML19MLClassifierMetricsV28makePrecisionRecallDataFramey07TabularH00hI0V0A12MLComponents014ClassificationD0VyxGSLRzSHRzlFZSS_Tt1g5(v104);
  (*(v122 + 8))(v104, v139);
  v49 = v132;
  *(v132 + v123) = 0;
  v139 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v122 = v45;
  swift_storeEnumTagMultiPayload(v45, v139, 1);
  v118 = v44;
  v50 = *(v44 + 28);
  v51 = v50 + v49;
  v52 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v53 = swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
  *v54 = 0xD0000000000000C0;
  *(v54 + 8) = "essor\n\nParameters\n" + 0x8000000000000000;
  *(v54 + 16) = 0;
  *(v54 + 32) = 0;
  *(v54 + 48) = 0;
  *(v132 + v50) = v53;
  v123 = v51;
  swift_storeEnumTagMultiPayload(v51, v139, 2);
  switch(*(v138 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 0:
      v55 = 0x696C616974696E69;
      v56 = 0xEB0000000064657ALL;
      break;
    case 1:
      v55 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v57 = 0xE800000000000000;
      0xE800000000000000;
      goto LABEL_9;
    case 3:
      v55 = 0x697461756C617665;
LABEL_7:
      v56 = 0xEA0000000000676ELL;
      break;
    case 4:
      v56 = 0xEB00000000676E69;
      v55 = 0x636E657265666E69;
      break;
    case 5:
      JUMPOUT(0x2C525CLL);
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)(v55, v56, 0x676E696E69617274, 0xE800000000000000, 0);
  v57 = v56;
  v56;
  if ((v58 & 1) == 0)
  {
    swift_allocError(&type metadata for MLCreateError, v52, 0, 0);
    *v67 = 0xD00000000000003CLL;
    *(v67 + 8) = "nd in state dictionary" + 0x8000000000000000;
    *(v67 + 16) = 0;
    *(v67 + 32) = 0;
    *(v67 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v52);
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLCheckpoint);
    goto LABEL_19;
  }

LABEL_9:
  v59 = v136;
  URL.deletingLastPathComponent()(v57);
  v60 = v128;
  URL.appendingPathComponent(_:)(0x6C65646F6DLL, 0xE500000000000000);
  URL.appendingPathExtension(_:)(6777712, 0xE300000000000000);
  v61 = v137;
  v62 = v124;
  v139 = *(v137 + 8);
  (v139)(v60, v124);
  v63 = v127;
  (*(v61 + 16))(v127, v59, v62);
  v64 = v125;
  v65 = v133;
  MLImageClassifier.PersistentParameters.init(sessionDirectory:)(v63);
  if (v65)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLCheckpoint);
    v66 = v139;
    (v139)(v135, v62);
    v66(v136, v62);
LABEL_19:
    outlined destroy of MLActivityClassifier.ModelParameters(v122, type metadata accessor for MLClassifierMetrics);
    return outlined destroy of MLActivityClassifier.ModelParameters(v123, type metadata accessor for MLClassifierMetrics);
  }

  v68 = v130;
  outlined init with copy of MLTrainingSessionParameters(v64 + v130[5], v126, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v128 = *(v64 + v68[8]);
  v119 = *(v64 + v68[9]);
  v69 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (featureExtractor: MLImageClassifier.FeatureExtractorType, classifier: MLImageClassifier.ModelParameters.ClassifierType));
  v137 = 0;
  v120 = v69;
  v70 = *(v69 + 48);
  v71 = v108;
  outlined init with copy of MLTrainingSessionParameters(v64 + v68[6], v108, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v72 = *(v64 + v68[7]);
  v73 = 0;
  if (v72 != 2)
  {
    v73 = v72;
  }

  *(v71 + v70) = v73;
  v74 = v132;
  v133 = v132 + 8;
  v130 = (v132 + 24);
  v127 = (v132 + 56);
  *(v132 + 72) = 0;
  *(v74 + 56) = 0;
  *(v74 + 40) = 0;
  *(v74 + 24) = 0;
  *(v74 + 8) = v128;
  *(v74 + 16) = v119;
  v75 = v111;
  outlined init with copy of MLTrainingSessionParameters(v126, v111, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  v105 = v110;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v104);
  outlined init with take of MLClassifierMetrics(v75, boxed_opaque_existential_0, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined copy of MLImageClassifier.ModelParameters.ClassifierType?(v72);
  outlined assign with take of Any?(v104, v130);
  v77 = v109;
  outlined init with copy of MLTrainingSessionParameters(v71, v109, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  v105 = v107;
  v78 = __swift_allocate_boxed_opaque_existential_0(v104);
  outlined init with take of MLClassifierMetrics(v77, v78, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined assign with take of Any?(v104, v127);
  v79 = v133;
  outlined destroy of MLActivityClassifier.ModelParameters(v71, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
  outlined destroy of MLActivityClassifier.ModelParameters(v126, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
  outlined init with copy of MLImageClassifier.ModelParameters(v79, v104);
  MLImageClassifier.Classifier.init(labels:parameters:)(&_swiftEmptySetSingleton, v104);
  v80 = lazy protocol witness table accessor for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier();
  v81 = v135;
  v82 = v135;
  v83 = v137;
  UpdatableSupervisedEstimator.readWithOptimizer(from:)(v135, v106, v80);
  if (v83)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLCheckpoint);
    v84 = v136;
LABEL_18:
    outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLImageClassifier.Classifier);
    outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLImageClassifier.PersistentParameters);
    v96 = v81;
    v97 = v124;
    v98 = v139;
    (v139)(v96, v124);
    v98(v84, v97);
    outlined destroy of MLImageClassifier.ModelParameters(v133);
    goto LABEL_19;
  }

  v85 = v117;
  MLImageClassifier.ModelParameters.algorithm.getter(v82);
  *(v85 + *(v120 + 48));
  v86 = v85;
  v87 = v131;
  outlined init with take of MLClassifierMetrics(v86, v131, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v137 = 0;
  v88 = v114;
  outlined init with copy of MLTrainingSessionParameters(v134, v114, type metadata accessor for MLImageClassifier.Model);
  outlined init with copy of MLTrainingSessionParameters(v87, v121, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v89 = *(v116 + 80);
  v90 = ~*(v116 + 80) & (v89 + 16);
  v91 = *(v115 + 80);
  v92 = ~v91 & (v90 + v91 + v113);
  v93 = swift_allocObject(&unk_3956F0, v92 + v112, v91 | v89 | 7);
  outlined init with take of MLClassifierMetrics(v88, v93 + v90, type metadata accessor for MLImageClassifier.Model);
  outlined init with take of MLClassifierMetrics(v121, v93 + v92, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  v94 = v137;
  specialized blockAwait<A>(_:)(&async function pointer to partial apply for closure #1 in MLImageClassifier.init(checkpoint:), v93);
  if (v94)
  {

    outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLCheckpoint);
    outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLImageClassifier.FeatureExtractorType);
    outlined destroy of MLActivityClassifier.ModelParameters(v134, type metadata accessor for MLImageClassifier.Model);
    v84 = v136;
    v81 = v135;
    goto LABEL_18;
  }

  v100 = v95;

  outlined destroy of MLActivityClassifier.ModelParameters(v138, type metadata accessor for MLCheckpoint);
  outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  outlined destroy of MLActivityClassifier.ModelParameters(v129, type metadata accessor for MLImageClassifier.Classifier);
  outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLImageClassifier.PersistentParameters);
  v101 = v124;
  v102 = v139;
  (v139)(v135, v124);
  v102(v136, v101);
  v103 = v132;
  *v132 = v100;
  return outlined init with take of MLClassifierMetrics(v134, v103 + *(v118 + 32), type metadata accessor for MLImageClassifier.Model);
}

uint64_t lazy protocol witness table accessor for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier()
{
  result = lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier;
  if (!lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier)
  {
    v1 = type metadata accessor for MLImageClassifier.Classifier(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for MLImageClassifier.Classifier, v1);
    lazy protocol witness table cache variable for type MLImageClassifier.Classifier and conformance MLImageClassifier.Classifier = result;
  }

  return result;
}

uint64_t closure #1 in MLImageClassifier.init(checkpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc(448);
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = closure #1 in MLRandomForestRegressor.init(checkpoint:);
  return MLImageClassifier.Model.exportAsCompiledMLModel(featureExtractorType:)(a3);
}

uint64_t sub_2C530E()
{
  v1 = *(type metadata accessor for MLImageClassifier.Model(0) - 8);
  v2 = *(v1 + 80);
  v3 = ~*(v1 + 80) & (v2 + 16);
  v4 = v3 + *(v1 + 64);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v6 = *(v5 - 8);
  v15 = *(v6 + 80);
  v7 = ~v15 & (v15 + v4);
  v16 = *(v6 + 64);
  v8 = v0 + v3;
  v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Either<LogisticRegressionClassifierModel<Float, String>, FullyConnectedNetworkClassifierModel<Float, String>>);
  v10 = &demangling cache variable for type metadata for LogisticRegressionClassifierModel<Float, String>;
  if (swift_getEnumCaseMultiPayload(v8, v9) == 1)
  {
    v10 = &demangling cache variable for type metadata for FullyConnectedNetworkClassifierModel<Float, String>;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledName(v10);
  (*(*(v11 - 8) + 8))(v8, v11);
  if (swift_getEnumCaseMultiPayload(v7 + v0, v5) == 1)
  {
    v12 = type metadata accessor for URL(0);
    (*(*(v12 - 8) + 8))(v7 + v0, v12);
    v13 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *(v7 + v0 + *(v13 + 20) + 8);
  }

  return swift_deallocObject(v0, v16 + v7, v15 | v2 | 7);
}

uint64_t partial apply for closure #1 in MLImageClassifier.init(checkpoint:)(uint64_t a1)
{
  v3 = *(type metadata accessor for MLImageClassifier.Model(0) - 8);
  v4 = ~*(v3 + 80) & (*(v3 + 80) + 16);
  v5 = v4 + *(v3 + 64);
  v6 = *(*(type metadata accessor for MLImageClassifier.FeatureExtractorType(0) - 8) + 80);
  v7 = swift_task_alloc(48);
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MLActivityClassifier.init(trainingData:featureColumns:labelColumn:recordingFileColumn:parameters:);
  return closure #1 in MLImageClassifier.init(checkpoint:)(a1, v1 + v4, v1 + ((v6 + v5) & ~v6));
}

void *static MLImageClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static MLImageClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLImageClassifier>);
    v7 = swift_allocObject(v6, *(v6 + 48), *(v6 + 52));
    return specialized MLJob.init(_:)(v7, v5);
  }

  return result;
}

uint64_t static MLImageClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v17 = a2;
  v4 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = alloca(v4);
  v8 = alloca(v4);
  result = static _ImageUtilities.getImageURLsAndLabels(from:)(a1);
  if (!v3)
  {
    v10 = result;
    v18 = &v15;
    outlined init with copy of MLImageClassifier.ModelParameters(v17, v16);
    outlined init with copy of MLTrainingSessionParameters(v19, &v15, type metadata accessor for MLTrainingSessionParameters);
    v11 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
    swift_allocObject(v11, *(v11 + 48), *(v11 + 52));
    v12 = ImageClassifierTrainingSessionDelegate.init(filesByLabel:modelParameters:sessionParameters:)(v10, v16, &v15);
    v16[3] = v11;
    v16[4] = &protocol witness table for ImageClassifierTrainingSessionDelegate;
    v16[0] = v12;
    v13 = v18;
    outlined init with copy of MLTrainingSessionParameters(v19, v18, type metadata accessor for MLTrainingSessionParameters);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>);
    swift_allocObject(v14, *(v14 + 48), *(v14 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v16, v13, 12);
  }

  return result;
}

void *static MLImageClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLJob<MLImageClassifier>);
  v2 = swift_allocObject(v1, *(v1 + 48), *(v1 + 52));

  return specialized MLJob.init(_:)(v2, a1);
}

uint64_t static MLImageClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for MLTrainingSessionParameters(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v12 = v11;
  v5 = alloca(v2);
  v6 = alloca(v2);
  outlined init with copy of MLTrainingSessionParameters(a1, v11, type metadata accessor for MLTrainingSessionParameters);
  v7 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
  swift_allocObject(v7, *(v7 + 48), *(v7 + 52));
  result = ImageClassifierTrainingSessionDelegate.init(sessionParameters:)(v11);
  if (!v1)
  {
    v11[3] = v7;
    v11[4] = &protocol witness table for ImageClassifierTrainingSessionDelegate;
    v11[0] = result;
    v9 = v12;
    outlined init with copy of MLTrainingSessionParameters(a1, v12, type metadata accessor for MLTrainingSessionParameters);
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>);
    swift_allocObject(v10, *(v10 + 48), *(v10 + 52));
    return specialized MLTrainingSession.init(delegate:parameters:modelType:)(v11, v9, 12);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static MLImageClassifier.resume(_:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v22 = a5;
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
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
    return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  }

  else
  {
    outlined init with copy of TabularRegressionTask(direct field offset for MLTrainingSession.delegate + a3, v20);
    v14 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TrainingSessionDelegate);
    v15 = type metadata accessor for ImageClassifierTrainingSessionDelegate(0);
    swift_dynamicCast(&v21, v20, v14, v15, 7);
    v16 = v21;
    v17 = type metadata accessor for TaskPriority(0);
    __swift_storeEnumTagSinglePayload(&v19, 1, 1, v17);
    v18 = swift_allocObject(&unk_395718, 56, 7);
    *(v18 + 16) = 0;
    *(v18 + 32) = v16;
    *(v18 + 40) = v23;
    *(v18 + 48) = v22;

    _sScTss5NeverORs_rlE8priority9operationScTyxABGScPSg_xyYaYAcntcfCyt_Tt1g5(&v19, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:), v18);
  }
}

uint64_t closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a6;
  v6[3] = a5;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  v6[5] = swift_task_alloc((*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)()
{
  v1 = v0[2];

  v2 = swift_task_alloc(80);
  v0[6] = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:);
  return ((&_ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTu + _ss6ResultO8CreateMLs5Error_pRs_rlE8catchingAByxsAD_pGxyYaKXE_tYacfCAC17MLImageClassifierV_Tt1g503_s8b4ML17fg43V6resumeyAA5MLJobCyACGAA17MLTrainingSessionm13ACGKFZyAG_ys6a6OyACs5D45_pGctXEfU_yALyytsAM_pGcfU_yyYacfU_ACyYaKXEfU_AC05Imageg8TrainingP8DelegateCTf1nc_nTu))(v0[5], v0[2]);
}

{
  v2 = *v0;
  *(*v0 + 48);
  return swift_task_switch(closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 24))(v2);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v2, &demangling cache variable for type metadata for Result<MLImageClassifier, Error>);
  v2;
  return (*(v0 + 8))();
}

uint64_t sub_2C5A94()
{
  swift_unknownObjectRelease(v0[2]);
  v0[4];
  v0[6];
  return swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)(uint64_t a1)
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
  return closure #1 in closure #1 in closure #1 in static MLImageClassifier.resume(_:)(a1, v3, v4, v8, v9, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v3 = (a2 + *a2);
  v4 = swift_task_alloc(a2[1]);
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;
  return v3(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v2 = *v0;
  *(*v0 + 16);
  return (*(v2 + 8))();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = swift_task_alloc(32);
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;
  return ((&_sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5Tu + _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5Tu))(a1, v3, v4);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  return specialized SetAlgebra<>.init(arrayLiteral:)(a1);
}

{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(a1 + 8 * v4 + 32) & ~v6;
      if (v7)
      {
        v7 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5 | v7;
      ++v4;
      v5 = v6;
    }

    while (v3 != v4);
  }

  else
  {
    v6 = 0;
  }

  result = a1;
  *v2 = v6;
  return result;
}

{
  return specialized SetAlgebra<>.init(arrayLiteral:)(a1);
}

uint64_t *specialized OptionSet.union(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 | a1;
  return result;
}

{
  return specialized OptionSet.union(_:)(a1, a2);
}

uint64_t *specialized OptionSet.symmetricDifference(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 ^ a1;
  return result;
}

{
  return specialized OptionSet.symmetricDifference(_:)(a1, a2);
}

uint64_t specialized OptionSet<>.remove(_:)(uint64_t a1)
{
  v3 = a1 & *v2;
  if (v3)
  {
    *v2 &= ~a1;
  }

  *result = v3;
  *(result + 8) = v3 == 0;
  return result;
}

{
  return specialized OptionSet<>.remove(_:)(a1);
}

uint64_t specialized OptionSet<>.update(with:)(uint64_t a1)
{
  v3 = *v2;
  *v2 |= a1;
  v4 = a1 & v3;
  *result = v4;
  *(result + 8) = v4 == 0;
  return result;
}

{
  return specialized OptionSet<>.update(with:)(a1);
}

void specialized OptionSet<>.formSymmetricDifference(_:)(uint64_t a1)
{
  *v1 ^= a1;
}

{
  specialized OptionSet<>.formSymmetricDifference(_:)(a1);
}

uint64_t *specialized SetAlgebra.subtracting(_:)(uint64_t a1, uint64_t a2)
{
  *result = a2 & ~a1;
  return result;
}

{
  return specialized SetAlgebra.subtracting(_:)(a1, a2);
}

BOOL specialized SetAlgebra.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  return (a1 & a2) == 0;
}

{
  return specialized SetAlgebra.isDisjoint(with:)(a1, a2);
}

BOOL specialized SetAlgebra.isEmpty.getter(uint64_t a1)
{
  return a1 == 0;
}

{
  return specialized SetAlgebra.isEmpty.getter(a1);
}

void specialized SetAlgebra.subtract(_:)(uint64_t a1)
{
  *v1 &= ~a1;
}

{
  specialized SetAlgebra.subtract(_:)(a1);
}

uint64_t lazy protocol witness table accessor for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions()
{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions;
  if (!lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLHandPoseClassifier.ImageAugmentationOptions, &type metadata for MLHandPoseClassifier.ImageAugmentationOptions);
    lazy protocol witness table cache variable for type MLHandPoseClassifier.ImageAugmentationOptions and conformance MLHandPoseClassifier.ImageAugmentationOptions = result;
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLHandPoseClassifier.ImageAugmentationOptions(uint64_t *a1)
{
  v2 = v1;
  MLHandPoseClassifier.ImageAugmentationOptions.init(rawValue:)(*a1);
  result = v4;
  *v2 = v4;
  *(v2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MLHandPoseClassifier.ImageAugmentationOptions(uint64_t a1)
{
  v2 = v1;
  result = MLHandPoseClassifier.ImageAugmentationOptions.rawValue.getter(a1);
  *v2 = result;
  return result;
}

char MLUntypedColumn.subscript.getter(uint64_t a1, double a2)
{
  v4 = v2;
  if (*(v3 + 8))
  {
    v5 = 0;
    result = 6;
  }

  else
  {
    v7 = *v3;

    _UntypedColumn.valueAtIndex(index:)(a1, a2);
    outlined consume of Result<_DataTable, Error>(v7, 0);
    v5 = v8;
    result = v9;
  }

  *v4 = v5;
  *(v4 + 16) = result;
  return result;
}

uint64_t MLUntypedColumn.count.getter()
{
  if (v0[8])
  {
    return -1;
  }

  v2 = *v0;
  v3 = *(*v0 + 16);

  v4 = CMLColumn.size.getter();
  outlined consume of Result<_DataTable, Error>(v2, 0);
  return v4;
}

uint64_t MLUntypedColumn.dropDuplicates()()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v18[0] = *v1;
    outlined copy of Result<_DataTable, Error>(v3, 1);
    swift_errorRetain(v3);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v5 = _getErrorEmbeddedNSError<A>(_:)(v18, v4, &protocol self-conformance witness table for Error);
    if (v5)
    {
      v6 = v5;
      outlined consume of Result<_DataTable, Error>(v3, 1);
    }

    else
    {
      v6 = swift_allocError(v4, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v3;
    }

    result = outlined consume of Result<_DataTable, Error>(v3, 1);
    v12 = 1;
  }

  else
  {
    v7 = *(*(v3 + 16) + 16);
    v8 = *v1;

    v9 = specialized handling<A, B>(_:_:)(v7);
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLColumn();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _UntypedColumn();
    v6 = swift_allocObject(v17, 24, 7);
    *(v6 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  *v2 = v6;
  *(v2 + 8) = v12;
  return result;
}

uint64_t MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *v2 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for closure #1 in MLUntypedColumn.init<A>(_:));
  *(v3 + 8) = v4 & 1;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

{
  v3 = v2;
  *v2 = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for closure #1 in MLUntypedColumn.init<A>(_:));
  *(v3 + 8) = v4 & 1;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML20MLHandPoseClassifierV_s5Error_pTt1g5Tm(void (*a1)(uint64_t *), uint64_t a2, uint64_t *a3)
{
  v12 = v3;
  v11 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(a3);
  v5 = *(*(v4 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  a1(&v10);
  swift_storeEnumTagMultiPayload(v9, v4, 0);
  return outlined init with take of DataFrame?(v9, v12, v11);
}

char MLUntypedColumn.type.getter()
{
  v5 = HIBYTE(v0);
  v2 = v0;
  result = 6;
  if (!*(v1 + 8))
  {
    v4 = *v1;

    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v4, 0);
    result = v5;
  }

  *v2 = result;
  return result;
}

uint64_t MLUntypedColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return MLUntypedColumn.map<A>(_:)(a1, a2, a3, a4, 1);
}

{
  v9 = *v4;
  v10 = *(v4 + 8);
  v7 = swift_allocObject(&unk_395790, 48, 7);
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a1;
  v7[5] = a2;

  MLUntypedColumn.map<A>(skipUndefined:_:)(1, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MLDataValue) -> (@out A), v7, a3, a4);
}

uint64_t MLUntypedColumn.ints.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.strings.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 2))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t static MLUntypedColumn.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v5 = *a1;
  if (*(a1 + 8))
  {
    result = swift_errorRetain(*a1);
    v7 = 1;
  }

  else
  {
    v8 = *a2;
    if (*(a2 + 8))
    {
      result = swift_errorRetain(*a2);
      v7 = 1;
      v5 = v8;
    }

    else
    {
      v10 = *(*(v5 + 16) + 16);
      v16 = *(*(v8 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(v8, 0);
      outlined copy of Result<_DataTable, Error>(v5, 0);
      v17 = specialized handling<A, B, C, D>(_:_:_:_:)(v10, a3, v16);
      if (!v17)
      {
        BUG();
      }

      v7 = 0;
      v11 = type metadata accessor for CMLColumn();
      v12 = swift_allocObject(v11, 24, 7);
      *(v12 + 16) = v17;
      v13 = type metadata accessor for _UntypedColumn();
      v14 = swift_allocObject(v13, 24, 7);
      *(v14 + 16) = v12;
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(v8, 0);
      result = outlined consume of Result<_DataTable, Error>(v5, 0);
      v5 = v15;
    }
  }

  *v4 = v5;
  *(v4 + 8) = v7;
  return result;
}

uint64_t *static MLUntypedColumn.== infix(_:_:)(uint64_t a1, void *a2, int a3)
{
  v17 = v3;
  v4 = *a1;
  if (*(a1 + 8))
  {
    *&v15 = *a1;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v15, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v4;
    }

    outlined consume of Result<_DataTable, Error>(v4, 1);
    v11 = 1;
  }

  else
  {
    v20 = a3;
    v18 = type metadata accessor for _UntypedColumn();
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v8);
    v19 = *(v9 + 32);

    v19(v8, v9);
    v13 = v15;
    v14 = v16;
    v7 = static _UntypedColumn.performRightScalar(op:a:b:)(v20, v4, &v13, *&v15);
    outlined consume of MLDataValue(v13, *(&v13 + 1), v14);
    v11 = 0;
    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  result = v17;
  *v17 = v7;
  *(result + 8) = v11;
  return result;
}

uint64_t *static MLUntypedColumn.== infix(_:_:)(void *a1, uint64_t a2, int a3)
{
  v17 = v3;
  v4 = *a2;
  if (*(a2 + 8))
  {
    *&v15 = *a2;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v15, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v4;
    }

    outlined consume of Result<_DataTable, Error>(v4, 1);
    v11 = 1;
  }

  else
  {
    v20 = a3;
    v18 = type metadata accessor for _UntypedColumn();
    v8 = a1[3];
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_0Tm(a1, v8);
    v19 = *(v9 + 32);

    v19(v8, v9);
    v13 = v15;
    v14 = v16;
    v7 = static _UntypedColumn.performLeftScalar(op:a:b:)(v20, &v13, v4, *&v15);
    outlined consume of MLDataValue(v13, *(&v13 + 1), v14);
    v11 = 0;
    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  result = v17;
  *v17 = v7;
  *(result + 8) = v11;
  return result;
}

uint64_t MLUntypedColumn.map<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a3;
  v71[1] = v3;
  v78 = a2;
  v6 = type metadata accessor for Optional(0, a2);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v72 = v71;
  v81 = *v4;
  LOBYTE(v80) = *(v4 + 8);
  *&v79[0] = 0;
  *(&v79[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(25);
  *(&v79[0] + 1);
  *&v79[0] = 0xD000000000000016;
  *(&v79[0] + 1) = "==" + 0x8000000000000000;
  v11._countAndFlagsBits = _typeName(_:qualified:)(a1, 0);
  object = v11._object;
  String.append(_:)(v11);
  object;
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v76 = v79[0];
  v14 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v15 = swift_allocError(&type metadata for MLCreateError, v14, 0, 0);
  *v16 = v76;
  *(v16 + 16) = 0;
  *(v16 + 32) = 0;
  *(v16 + 48) = 1;
  if (swift_dynamicCastMetatype(a1, &type metadata for Int))
  {
    v17 = v15;
    if (v80)
    {
LABEL_3:
      v18 = v81;
      *&v79[0] = v81;
      outlined copy of Result<_DataTable, Error>(v81, 1);
      swift_errorRetain(v18);
      v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      v20 = _getErrorEmbeddedNSError<A>(_:)(v79, v19, &protocol self-conformance witness table for Error);
      if (v20)
      {
        v15 = v20;
        outlined consume of Result<_DataTable, Error>(v18, 1);
      }

      else
      {
        v15 = swift_allocError(v19, &protocol self-conformance witness table for Error, 0, 0);
        *v31 = v18;
      }

      v82 = 1;
      v32 = v17;
LABEL_28:
      v32;
      outlined consume of Result<_DataTable, Error>(v18, 1);
      v43 = v82;
      goto LABEL_32;
    }

    v25 = v81;
    v26 = *(*(v81 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v81, 0);
    v27 = specialized handling<A, B, C, D>(_:_:_:_:)(v26, 0, 0);
    v30 = v27;
    *&v80 = v15;
    if (!v27)
    {
      BUG();
    }

    goto LABEL_30;
  }

  v74 = v14;
  v21 = v80;
  v73 = v6;
  *&v76 = v7;
  if (swift_dynamicCastMetatype(a1, &type metadata for Double))
  {
    v22 = v15;
    if (v21)
    {
      v18 = v81;
      *&v79[0] = v81;
      outlined copy of Result<_DataTable, Error>(v81, 1);
      swift_errorRetain(v18);
      v23 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
      v24 = _getErrorEmbeddedNSError<A>(_:)(v79, v23, &protocol self-conformance witness table for Error);
      if (v24)
      {
        v15 = v24;
        outlined consume of Result<_DataTable, Error>(v18, 1);
      }

      else
      {
        v15 = swift_allocError(v23, &protocol self-conformance witness table for Error, 0, 0);
        *v42 = v18;
      }

      v82 = 1;
      v32 = v22;
      goto LABEL_28;
    }

    v25 = v81;
    v33 = *(*(v81 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v81, 0);
    v34 = specialized handling<A, B, C, D>(_:_:_:_:)(v33, 1, 0);
    v30 = v34;
    *&v80 = v15;
    if (!v34)
    {
      BUG();
    }

LABEL_30:
    v43 = 0;
    v44 = type metadata accessor for CMLColumn();
    v45 = swift_allocObject(v44, 24, 7);
    *(v45 + 16) = v30;
    v46 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v46, 24, 7);
    *(v15 + 16) = v45;
    v80;
    v47 = v25;
LABEL_31:
    outlined consume of Result<_DataTable, Error>(v47, 0);
    goto LABEL_32;
  }

  v28 = v21;
  if (swift_dynamicCastMetatype(a1, &type metadata for String))
  {
    v17 = v15;
    if (v28)
    {
      goto LABEL_3;
    }

    v25 = v81;
    v29 = *(*(v81 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v81, 0);
    v30 = specialized handling<A, B, C, D>(_:_:_:_:)(v29, 2, 0);
    *&v80 = v15;
    if (!v30)
    {
      BUG();
    }

    goto LABEL_30;
  }

  if (!swift_dynamicCastMetatype(a1, &type metadata for MLDataValue.SequenceType))
  {
    v35 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
    if (!swift_dynamicCastMetatype(a1, v35))
    {
      v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      if (!swift_dynamicCastMetatype(a1, v36))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
        if (!swift_dynamicCastMetatype(a1, v37))
        {
          v69 = swift_dynamicCastMetatype(a1, &type metadata for MLDataValue.DictionaryType);
          v43 = 1;
          if (!v69)
          {
            goto LABEL_32;
          }

          v17 = v15;
          if (v28)
          {
            goto LABEL_3;
          }

          v25 = v81;
          v70 = *(*(v81 + 16) + 16);
          outlined copy of Result<_DataTable, Error>(v81, 0);
          v30 = specialized handling<A, B, C, D>(_:_:_:_:)(v70, 5, 0);
          *&v80 = v15;
          if (!v30)
          {
            BUG();
          }

          goto LABEL_30;
        }
      }
    }
  }

  v38 = v15;
  v75 = a1;
  if ((v21 & 1) == 0)
  {
    v49 = v81;
    v50 = *(*(v81 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(v81, 0);
    v51 = specialized handling<A, B, C, D>(_:_:_:_:)(v50, 4, 0);
    if (!v51)
    {
      BUG();
    }

    v53 = v38;
    v54 = v51;
    v55 = type metadata accessor for CMLColumn();
    v56 = swift_allocObject(v55, 24, 7);
    *(v56 + 16) = v54;
    v57 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v57, 24, 7);
    *(v15 + 16) = v56;
    v53;
    outlined consume of Result<_DataTable, Error>(v49, 0);
    goto LABEL_39;
  }

  v39 = v81;
  *&v79[0] = v81;
  outlined copy of Result<_DataTable, Error>(v81, 1);
  swift_errorRetain(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
  v41 = _getErrorEmbeddedNSError<A>(_:)(v79, v40, &protocol self-conformance witness table for Error);
  if (v41)
  {
    v15 = v41;
    outlined consume of Result<_DataTable, Error>(v39, 1);
  }

  else
  {
    v15 = swift_allocError(v40, &protocol self-conformance witness table for Error, 0, 0);
    *v52 = v39;
  }

  v82 = 1;
  v38;
  outlined consume of Result<_DataTable, Error>(v39, 1);
  v43 = 1;
  if (!v82)
  {
LABEL_39:
    v58 = *(v15 + 16);
    swift_retain_n(v15, 2);
    v59 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v15, 0);
    if (v59 > 0)
    {

      _UntypedColumn.valueAtIndex(index:)(0, 0.0);
      outlined consume of Result<_DataTable, Error>(v15, 0);
      v60 = v72;
      v61 = v78;
      (*(v77 + 16))(v79, v78);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v61);
      (*(v76 + 8))(v60, v73);
      if (EnumTagSinglePayload == 1)
      {
        *&v79[0] = 0;
        *(&v79[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(60);
        v63._object = "Unable to map to type " + 0x8000000000000000;
        v63._countAndFlagsBits = 0xD000000000000039;
        String.append(_:)(v63);
        v64 = _typeName(_:qualified:)(v75, 0);
        v66 = v65;
        v63._countAndFlagsBits = v64;
        v63._object = v65;
        String.append(_:)(v63);
        v66;
        v63._countAndFlagsBits = 46;
        v63._object = 0xE100000000000000;
        String.append(_:)(v63);
        v80 = v79[0];
        v67 = swift_allocError(&type metadata for MLCreateError, v74, 0, 0);
        *v68 = v80;
        *(v68 + 16) = 0;
        *(v68 + 32) = 0;
        *(v68 + 48) = 1;
        outlined consume of Result<_DataTable, Error>(v15, 0);
        outlined consume of Result<_DataTable, Error>(v15, 0);
        v43 = 1;
        v15 = v67;
        goto LABEL_32;
      }
    }

    v43 = 0;
    v47 = v15;
    goto LABEL_31;
  }

LABEL_32:
  *&v79[0] = v15;
  BYTE8(v79[0]) = v43 & 1;
  return MLDataColumn.init(from:)(v79);
}

void *Array<A>.init(_:)(uint64_t a1, double a2)
{
  v2 = *a1;
  v3 = _swiftEmptyArrayStorage;
  v14 = *(a1 + 8);
  if (!v14)
  {
    v4 = *(v2 + 16);
    outlined copy of Result<_DataTable, Error>(v2, 0);
    v5 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v2, 0);
    v12 = v5;
    if (v5 < 0)
    {
      BUG();
    }

    if (v5)
    {
      v3 = _swiftEmptyArrayStorage;
      v6 = 0;
      v13 = v2;
      do
      {
        outlined copy of Result<_DataTable, Error>(v2, 0);
        _UntypedColumn.valueAtIndex(index:)(v6, a2);
        outlined consume of Result<_DataTable, Error>(v2, 0);
        if (!swift_isUniquelyReferenced_nonNull_native(v3))
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
        }

        v7 = v3[2];
        if (v3[3] >> 1 <= v7)
        {
          v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v3[3] >= 2uLL, v7 + 1, 1, v3);
        }

        ++v6;
        v3[2] = v7 + 1;
        v8 = 3 * v7;
        a2 = *&v10;
        *&v3[v8 + 4] = v10;
        LOBYTE(v3[v8 + 6]) = v11;
        v2 = v13;
      }

      while (v12 != v6);
    }
  }

  outlined consume of Result<_DataTable, Error>(v2, v14);
  return v3;
}

uint64_t MLUntypedColumn.sequences.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 3))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.doubles.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 1))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.dictionaries.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 4))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.multiArrays.getter()
{
  v4 = HIBYTE(result);
  v2 = result;
  if (*(v1 + 8) || (v3 = *v1, outlined copy of Result<_DataTable, Error>(v3, 0), _UntypedColumn.type.getter(), result = outlined consume of Result<_DataTable, Error>(v3, 0), v4 != 5))
  {
    *v2 = 0;
    *(v2 + 8) = -1;
  }

  else
  {
    *v2 = v3;
    *(v2 + 8) = 0;
    return outlined copy of Result<_DataTable, Error>(v3, 0);
  }

  return result;
}

uint64_t MLUntypedColumn.error.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  v1 = *v0;
  swift_errorRetain(*v0);
  return v1;
}

uint64_t MLUntypedColumn.init(repeating:count:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v7 = *a1;
  v8 = v4;
  v5 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v5, 24, 7);
  result = _UntypedColumn.init(repeating:count:)(&v7, a2);
  *v3 = result;
  *(v3 + 8) = 0;
  return result;
}

uint64_t *MLUntypedColumn.init<A>(repeating:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v14 = a2;
  v12 = v4;
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  type metadata accessor for _UntypedColumn();
  (*(v6 + 16))(&v12, a1, a3);
  v10 = _UntypedColumn.__allocating_init<A>(repeating:count:)(&v12, v14, a3, v13);
  (*(v6 + 8))(a1, a3);
  result = v12;
  *v12 = v10;
  *(result + 8) = 0;
  return result;
}

uint64_t MLUntypedColumn.init()()
{
  v1 = v0;
  v2 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  result = swift_allocError(&type metadata for MLCreateError, v2, 0, 0);
  *v4 = 0xD00000000000001DLL;
  *(v4 + 8) = "id column named '" + 0x8000000000000000;
  *(v4 + 16) = 0;
  *(v4 + 32) = 0;
  *(v4 + 48) = 1;
  *v1 = result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t MLUntypedColumn.append(contentsOf:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(v2 + 8))
  {
    swift_errorRetain(v3);
    v4 = 1;
  }

  else
  {
    v5 = *a1;
    if (*(a1 + 8))
    {
      swift_errorRetain(*a1);
      v4 = 1;
      v3 = v5;
    }

    else
    {
      outlined copy of Result<_DataTable, Error>(*a1, 0);
      outlined copy of Result<_DataTable, Error>(v3, 0);
      v6 = _UntypedColumn.appending(contentsOf:)(v5);
      outlined consume of Result<_DataTable, Error>(v5, 0);
      outlined consume of Result<_DataTable, Error>(v3, 0);
      v3 = v6;
      v4 = 0;
    }
  }

  result = outlined consume of Result<_DataTable, Error>(*v2, *(v2 + 2));
  *v2 = v3;
  *(v2 + 8) = v4;
  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t *a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    result = swift_errorRetain(*v2);
    v6 = 1;
  }

  else
  {
    v7 = *a1;
    if (*(a1 + 8))
    {
      result = swift_errorRetain(*a1);
      v6 = 1;
      v4 = v7;
    }

    else
    {
      v8 = *(*(v4 + 16) + 16);
      v9 = *(*(v7 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(*a1, 0);
      outlined copy of Result<_DataTable, Error>(v4, 0);
      v15 = specialized handling<A, B, C>(_:_:_:)(v8, v9);
      if (!v15)
      {
        BUG();
      }

      v6 = 0;
      v10 = type metadata accessor for CMLColumn();
      v11 = swift_allocObject(v10, 24, 7);
      *(v11 + 16) = v15;
      v12 = type metadata accessor for _UntypedColumn();
      v13 = swift_allocObject(v12, 24, 7);
      *(v13 + 16) = v11;
      v14 = v13;
      outlined consume of Result<_DataTable, Error>(v7, 0);
      result = outlined consume of Result<_DataTable, Error>(v4, 0);
      v4 = v14;
    }
  }

  *v3 = v4;
  *(v3 + 8) = v6;
  return result;
}

uint64_t MLUntypedColumn.materialize()(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  if (*(v3 + 8))
  {
    v5 = *v3;
    swift_willThrow(a1, a2);
    return outlined copy of Result<_DataTable, Error>(v4, 1);
  }

  else
  {
    v7 = v2;
    v8 = *(v4 + 16);
    outlined copy of Result<_DataTable, Error>(v4, 0);
    CMLColumn.materialize()();
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
    if (!v9)
    {
      *v7 = v4;
      *(v7 + 8) = 0;
      return outlined copy of Result<_DataTable, Error>(v4, 0);
    }
  }

  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v16 = v2;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
  inited = swift_initStackObject(v6, v11);
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  *(inited + 32) = 7106403;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  outlined copy of Result<_DataTable, Error>(v4, v5);
  v8 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
  _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v8);
  v14 = v12;
  v15 = v13;
  MLDataTable.subscript.getter(a1, v17);
  outlined consume of Result<_DataTable, Error>(v14, v15);
  v14 = v12;
  v15 = v13;
  v9._countAndFlagsBits = 7106403;
  v9._object = 0xE300000000000000;
  MLDataTable.subscript.getter(v9);
  return outlined consume of Result<_DataTable, Error>(v14, v15);
}

uint64_t static MLUntypedColumn.== infix(_:_:)(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v4 = *a1;
  if (*(a1 + 8))
  {
    *&v12 = *a1;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(&v12, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v10 = 1;
  }

  else
  {
    v8 = *(a2 + 16);
    type metadata accessor for _UntypedColumn();
    v12 = *a2;
    v13 = v8;

    v7 = static _UntypedColumn.performRightScalar(op:a:b:)(4, v4, &v12, *&v12);
    v10 = 0;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v10;
  return result;
}

void *MLUntypedColumn.column<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = v3;
  v6 = *v4;
  v19 = *(v4 + 8);
  v16 = v6;
  if (v19)
  {
    v7 = 6;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v7 = v17;
  }

  (*(a3 + 8))(a2, a3);
  if (v7 == v17)
  {
    v8 = v16;
    v13 = v16;
    v9 = v19;
    v14 = v19;
    MLDataColumn.init(from:)(&v13);
    v10 = v17;
    v11 = v18;
    outlined copy of Result<_DataTable, Error>(v8, v9);
  }

  else
  {
    v10 = 0;
    v11 = -1;
  }

  result = v15;
  *v15 = v10;
  *(result + 8) = v11;
  return result;
}

BOOL MLUntypedColumn.isEmpty.getter()
{
  result = 1;
  if (!v0[8])
  {
    v2 = *v0;
    v3 = *(*v0 + 16);
    outlined copy of Result<_DataTable, Error>(v2, 0);
    v4 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v2, 0);
    return v4 <= 0;
  }

  return result;
}

uint64_t closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = a4;
  v14 = a3;
  v18 = v4;
  v15 = v5;
  v16 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  type metadata accessor for _UntypedColumn();
  v10 = (*(v6 + 16))(&v13, v16, a2);
  v11 = v15;
  result = _UntypedColumn.__allocating_init<A>(_:)(&v13, a2, v14, v10);
  if (v11)
  {
    result = v17;
    *v17 = v11;
  }

  else
  {
    *v18 = result;
  }

  return result;
}

uint64_t closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = a4;
  v14 = a3;
  v18 = v5;
  v17 = a5;
  v15 = v6;
  v16 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  type metadata accessor for _UntypedColumn();
  (*(v7 + 16))(&v13, v16, a2);
  v11 = v15;
  result = _UntypedColumn.__allocating_init<A>(_:)(&v13, a2, v14, v13);
  if (v11)
  {
    result = v17;
    *v17 = v11;
  }

  else
  {
    *v18 = result;
  }

  return result;
}

uint64_t partial apply for closure #1 in MLUntypedColumn.init<A>(_:)(void *a1)
{
  return closure #1 in MLUntypedColumn.init<A>(_:)(v1[5], v1[2], v1[3], v1[4], a1);
}

{
  return closure #1 in MLUntypedColumn.init<A>(_:)(*(v1 + 32), *(v1 + 16), *(v1 + 24), a1);
}

uint64_t MLUntypedColumn.init(_:)(uint64_t a1, uint64_t a2)
{
  return MLUntypedColumn.init(_:)(a1, a2, _UntypedColumn.init(_:));
}

{
  return MLUntypedColumn.init(_:)(a1, a2, _UntypedColumn.init(_:));
}

uint64_t MLUntypedColumn.init(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v6 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v6, 24, 7);
  result = a3(a1, a2);
  *v5 = result;
  *(v5 + 8) = 0;
  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    result = swift_errorRetain(*v2);
    v6 = 1;
  }

  else
  {
    v7 = *a1;
    if (*(a1 + 8))
    {
      result = outlined copy of Result<_DataTable, Error>(*a1, 1);
      v6 = 1;
      v4 = v7;
    }

    else
    {
      v8 = *(*(v4 + 16) + 16);
      v9 = *(*(v7 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(*a1, 0);
      outlined copy of Result<_DataTable, Error>(v4, 0);
      v15 = specialized handling<A, B, C>(_:_:_:)(v8, v9);
      if (!v15)
      {
        BUG();
      }

      v6 = 0;
      v10 = type metadata accessor for CMLColumn();
      v11 = swift_allocObject(v10, 24, 7);
      *(v11 + 16) = v15;
      v12 = type metadata accessor for _UntypedColumn();
      v13 = swift_allocObject(v12, 24, 7);
      *(v13 + 16) = v11;
      v14 = v13;
      outlined consume of Result<_DataTable, Error>(v7, 0);
      result = outlined consume of Result<_DataTable, Error>(v4, 0);
      v4 = v14;
    }
  }

  *v3 = v4;
  *(v3 + 8) = v6;
  return result;
}

uint64_t MLUntypedColumn.map<A>(skipUndefined:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v20[1] = v5;
  LODWORD(v25) = a1;
  v26 = *v6;
  v9 = *(v6 + 8);
  v10 = swift_allocObject(&unk_395838, 48, 7);
  v24 = a4;
  v10[2] = a4;
  v11 = a5;
  v12 = v21;
  v10[3] = v11;
  v10[4] = a2;
  v10[5] = v12;
  if (v9)
  {
    v25 = v11;
    v22 = v26;
    outlined copy of Result<_DataTable, Error>(v26, 1);

    outlined copy of Result<_DataTable, Error>(v26, 1);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v14 = _getErrorEmbeddedNSError<A>(_:)(&v22, v13, &protocol self-conformance witness table for Error);
    if (v14)
    {
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(v26, 1);
    }

    else
    {
      v15 = swift_allocError(v13, &protocol self-conformance witness table for Error, 0, 0);
      *v18 = v26;
    }

    outlined consume of Result<_DataTable, Error>(v26, 1);

    v17 = 1;
  }

  else
  {
    v16 = v26;
    v20[0] = v26;

    outlined copy of Result<_DataTable, Error>(v26, 0);
    closure #2 in MLUntypedColumn.map<A>(skipUndefined:_:)(v20, partial apply for closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:), v10, v25, v24, v11);
    outlined consume of Result<_DataTable, Error>(v16, 0);

    v15 = v22;
    v17 = 0;
  }

  v22 = v15;
  v23 = v17;
  return MLDataColumn.init(from:)(&v22);
}

uint64_t closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v22 = a5;
  v21 = a3;
  v20 = a2;
  v23 = type metadata accessor for Optional(0, a4);
  v24 = *(v23 - 8);
  v7 = *(v24 + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v26 = *(a4 - 8);
  v10 = *(v26 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v25 = v18;

  MLDataValue.init(_:)(a1, a6);
  v13 = v18[0];
  v14 = v19;
  v27 = v18[1];
  v20(v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, a4) == 1)
  {
    (*(v24 + 8))(v18, v23);
    type metadata accessor for CMLFeatureValue();
    v15 = CMLFeatureValue.__allocating_init()(0);
    outlined consume of MLDataValue(v13, v27, v14);
  }

  else
  {
    v16 = v25;
    (*(v26 + 32))(v25, v18, a4);
    v15 = MLDataValueConvertible.featureValue.getter(a4, v22);
    outlined consume of MLDataValue(v13, v27, v14);
    (*(v26 + 8))(v16, a4);
  }

  return v15;
}

uint64_t closure #2 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  v8 = *a1;
  (*(a6 + 8))(a5);
  result = _UntypedColumn.map(_:skipUndefined:outputType:)(a2, a3, a4, v12);
  *v10 = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed MLDataValue) -> (@out A)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4;
  a2(a1);
  return __swift_storeEnumTagSinglePayload(v6, 0, 1, a4);
}

uint64_t MLUntypedColumn.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  return MLUntypedColumn.map<A>(skipUndefined:_:)(a5, a1, a2, a3, a4);
}

uint64_t MLUntypedColumn.copy()(uint64_t (*a1)(uint64_t))
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    v18[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v18, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v12 = 1;
  }

  else
  {
    v8 = *(*(v4 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    v9 = a1(v8);
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLColumn();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v17, 24, 7);
    *(v7 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v12;
  return result;
}

uint64_t *MLUntypedColumn.fillMissing(with:)(uint64_t a1, double a2)
{
  v22 = v2;
  v4 = *v3;
  if (*(v3 + 8))
  {
    v20[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v20, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v12 = v4;
    }

    outlined consume of Result<_DataTable, Error>(v4, 1);
    v13 = 1;
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 8);
    v20[0] = *a1;
    v20[1] = v9;
    v21 = v8;
    outlined copy of Result<_DataTable, Error>(v4, 0);
    outlined copy of MLDataValue(v20[0], v9, v8);
    v10 = MLDataValue.featureValue.getter(a2);
    outlined consume of MLDataValue(v20[0], v9, v21);
    v11 = specialized handling<A, B, C>(_:_:_:)(*(v4[2] + 16), *(v10 + 16));
    v15 = v11;
    if (!v11)
    {
      BUG();
    }

    v13 = 0;
    v16 = type metadata accessor for CMLColumn();
    v17 = swift_allocObject(v16, 24, 7);
    *(v17 + 16) = v15;
    v18 = v17;
    v19 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v19, 24, 7);
    *(v7 + 16) = v18;

    outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  result = v22;
  *v22 = v7;
  *(result + 8) = v13;
  return result;
}

uint64_t MLUntypedColumn.prefix(_:)(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = v2;
  if (a1 <= 0)
  {
    v9 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v8 = swift_allocError(&type metadata for MLCreateError, v9, 0, 0);
    result = 0xD00000000000002BLL;
    *v11 = 0xD00000000000002BLL;
    *(v11 + 8) = "Column initialized as invalid" + 0x8000000000000000;
    *(v11 + 16) = 0;
    *(v11 + 32) = 0;
    *(v11 + 48) = 0;
LABEL_9:
    v15 = 1;
    goto LABEL_10;
  }

  v5 = *v3;
  if (*(v3 + 8))
  {
    v21[0] = *v3;
    outlined copy of Result<_DataTable, Error>(v5, 1);
    swift_errorRetain(v5);
    v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v7 = _getErrorEmbeddedNSError<A>(_:)(v21, v6, &protocol self-conformance witness table for Error);
    if (v7)
    {
      v8 = v7;
      outlined consume of Result<_DataTable, Error>(v5, 1);
    }

    else
    {
      v8 = swift_allocError(v6, &protocol self-conformance witness table for Error, 0, 0);
      *v14 = v5;
    }

    result = outlined consume of Result<_DataTable, Error>(v5, 1);
    goto LABEL_9;
  }

  v12 = *(*(v5 + 16) + 16);
  outlined copy of Result<_DataTable, Error>(v5, 0);
  v13 = a2(v12, a1);
  v16 = v13;
  if (!v13)
  {
    BUG();
  }

  v15 = 0;
  v17 = type metadata accessor for CMLColumn();
  v18 = swift_allocObject(v17, 24, 7);
  *(v18 + 16) = v16;
  v19 = v18;
  v20 = type metadata accessor for _UntypedColumn();
  v8 = swift_allocObject(v20, 24, 7);
  *(v8 + 16) = v19;
  result = outlined consume of Result<_DataTable, Error>(v5, 0);
LABEL_10:
  *v4 = v8;
  *(v4 + 8) = v15;
  return result;
}

uint64_t MLUntypedColumn.sort(byIncreasingOrder:)(char a1)
{
  v3 = v1;
  v4 = *v2;
  if (*(v2 + 8))
  {
    v18[0] = *v2;
    outlined copy of Result<_DataTable, Error>(v4, 1);
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v18, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v10 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v12 = 1;
  }

  else
  {
    v8 = *(*(v4 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v2, 0);
    v9 = specialized handling<A, B, C>(_:_:_:)(v8, a1);
    v13 = v9;
    if (!v9)
    {
      BUG();
    }

    v12 = 0;
    v14 = type metadata accessor for CMLColumn();
    v15 = swift_allocObject(v14, 24, 7);
    *(v15 + 16) = v13;
    v16 = v15;
    v17 = type metadata accessor for _UntypedColumn();
    v7 = swift_allocObject(v17, 24, 7);
    *(v7 + 16) = v16;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v12;
  return result;
}

uint64_t MLUntypedColumn.init(doubles:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *a1;
  if (*(a1 + 8))
  {
    v17[0] = *a1;
    swift_errorRetain(v4);
    v5 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v6 = _getErrorEmbeddedNSError<A>(_:)(v17, v5, &protocol self-conformance witness table for Error);
    if (v6)
    {
      v7 = v6;
      outlined consume of Result<_DataTable, Error>(v4, 1);
    }

    else
    {
      v7 = swift_allocError(v5, &protocol self-conformance witness table for Error, 0, 0);
      *v9 = v4;
    }

    result = outlined consume of Result<_DataTable, Error>(v4, 1);
    v11 = 1;
  }

  else
  {
    v8 = specialized handling<A, B, C, D>(_:_:_:_:)(*(*(v4 + 16) + 16), a2, 0);
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
    v7 = swift_allocObject(v16, 24, 7);
    *(v7 + 16) = v15;
    result = outlined consume of Result<_DataTable, Error>(v4, 0);
  }

  *v3 = v7;
  *(v3 + 8) = v11;
  return result;
}

uint64_t MLUntypedColumn.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v17 = a2;
  v16 = v3;
  if (v4[8] || (v5 = *v4, v6 = *(*v4 + 16), outlined copy of Result<_DataTable, Error>(v5, 0), v7 = CMLColumn.size.getter(), outlined consume of Result<_DataTable, Error>(v5, 0), v7 < 0))
  {
    BUG();
  }

  v13[0] = 0;
  v13[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Range<Int>);
  v9 = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  dispatch thunk of RangeExpression.relative<A>(to:)(v13, v8, v9, v17, v18);
  v10 = v14;
  v11 = v15;
  v14 = v5;
  LOBYTE(v15) = 0;
  outlined copy of Result<_DataTable, Error>(v5, 0);
  MLUntypedColumn.subscript.getter(v10, v11);
  return outlined consume of Result<_DataTable, Error>(v5, 0);
}

uint64_t MLUntypedColumn.show()()
{
  v2 = v0;
  v3 = 0;
  if (!*(v1 + 8))
  {
    v4 = *v1;
    v5 = *(*(*v1 + 16) + 16);
    outlined copy of Result<_DataTable, Error>(*v1, 0);
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

uint64_t MLUntypedColumn.customMirror.getter()
{
  v20[1] = v0;
  v22 = type metadata accessor for Mirror.AncestorRepresentation(0);
  v23 = *(v22 - 8);
  v2 = *(v23 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v21 = &v19;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Mirror.DisplayStyle?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any)>);
  v11 = swift_allocObject(v10, 128, 7);
  *(v11 + 16) = 2;
  *(v11 + 24) = 4;
  *(v11 + 32) = 0x746E756F63;
  *(v11 + 40) = 0xE500000000000000;
  if (v9)
  {
    v12 = -1;
  }

  else
  {
    v13 = *(v8 + 16);
    outlined copy of Result<_DataTable, Error>(v8, 0);
    v12 = CMLColumn.size.getter();
    outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  *(v11 + 72) = &type metadata for Int;
  *(v11 + 48) = v12;
  *(v11 + 80) = 1701869940;
  *(v11 + 88) = 0xE400000000000000;
  *(v11 + 120) = &type metadata for MLDataValue.ValueType;
  if (v9)
  {
    *(v11 + 96) = 6;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v8, 0);
    _UntypedColumn.type.getter();
    *(v11 + 96) = v24;
    outlined consume of Result<_DataTable, Error>(v8, 0);
  }

  v20[0] = &type metadata for MLUntypedColumn;
  v14 = enum case for Mirror.DisplayStyle.dictionary(_:);
  v15 = type metadata accessor for Mirror.DisplayStyle(0);
  (*(*(v15 - 8) + 104))(&v19, v14, v15);
  __swift_storeEnumTagSinglePayload(&v19, 0, 1, v15);
  v16 = v21;
  (*(v23 + 104))(v21, enum case for Mirror.AncestorRepresentation.suppressed(_:), v22);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLUntypedColumn.Type);
  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)(v20, v11, &v19, v16, v17);
}

uint64_t MLUntypedColumn.description.getter()
{
  return MLUntypedColumn.description.getter();
}

{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    v7[0] = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v7, v6, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    return v6[0];
  }

  else
  {
    v4 = *v0;

    v3 = _UntypedColumn.description.getter(v4);
    outlined consume of Result<_DataTable, Error>(v1, 0);
  }

  return v3;
}

uint64_t MLUntypedColumn.playgroundDescription.getter()
{
  v2 = v0;
  v3 = *v1;
  if (*(v1 + 8))
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    v12[0] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    _print_unlocked<A, B>(_:_:)(v12, &v10, v4, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v5 = v10;
    v6 = v11;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(*v1, 0);
    v5 = _UntypedColumn.description.getter();
    v6 = v7;
    outlined consume of Result<_DataTable, Error>(v3, 0);
  }

  objc_allocWithZone(NSAttributedString);
  v8 = @nonobjc NSAttributedString.init(string:attributes:)(v5, v6, 0);
  result = type metadata accessor for NSAttributedString();
  v2[3] = result;
  *v2 = v8;
  return result;
}

uint64_t specialized MLTrainingSession.resume(job:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = type metadata accessor for TaskPriority(0);
  __swift_storeEnumTagSinglePayload(&v15, 1, 1, v11);
  v12 = swift_allocObject(a4, 64, 7);
  *(v12 + 16) = 0;
  *(v12 + 32) = v5;
  *(v12 + 40) = a1;
  *(v12 + 48) = v17;
  *(v12 + 56) = a3;

  v13 = _sScTss5Error_pRs_rlE8detached8priority9operationScTyxsAA_pGScPSg_xyYaKYAcntFZyt_Tt1g5(&v15, v16, v12);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v15, &demangling cache variable for type metadata for TaskPriority?);
  return v13;
}

uint64_t specialized closure #1 in MLTrainingSession.resume(job:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

{
  v7[3] = a7;
  v7[2] = a6;
  v9 = swift_task_alloc(96);
  v7[4] = v9;
  *v9 = v7;
  v9[1] = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  return ((&async function pointer to specialized MLTrainingSession.resumeAsync(job:) + async function pointer to specialized MLTrainingSession.resumeAsync(job:)))(a5);
}

uint64_t specialized closure #1 in MLTrainingSession.resume(job:completion:)()
{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  else
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  else
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0, 0);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  swift_errorRetain(v1);
  v2(v1, 1);
  v1;
  v1;
  return (*(v0 + 8))();
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 40) = v0;
  v2;
  if (v0)
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  else
  {
    v3 = specialized closure #1 in MLTrainingSession.resume(job:completion:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  return specialized closure #1 in MLTrainingSession.resume(job:completion:)();
}

{
  return specialized closure #1 in MLTrainingSession.resume(job:completion:)();
}

{
  return specialized closure #1 in MLTrainingSession.resume(job:completion:)();
}

uint64_t specialized MLTrainingSession.resumeAsync(job:)(uint64_t a1)
{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

{
  v2[6] = v1;
  v2[5] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLCheckpoint?);
  v2[7] = swift_task_alloc((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MLCheckpoint(0);
  v2[8] = v4;
  v2[9] = swift_task_alloc((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.resumeAsync(job:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v3;
  if (!v0)
  {
    return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
  }

  v5 = *(v2 + 56);
  *(v2 + 72);
  v5;
  return (*(v4 + 8))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  v3;
  if (!v0)
  {
    return swift_task_switch(specialized MLTrainingSession.resumeAsync(job:), 0, 0);
  }

  v5 = *(v2 + 56);
  *(v2 + 72);
  v5;
  return (*(v4 + 8))();
}

{
  if ([*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
  {
    v1 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v1, 0, 0);
    *v2 = 0;
    *(v2 + 16) = 0;
    *(v2 + 32) = 0;
    *(v2 + 48) = 4;
    swift_willThrow(&type metadata for MLCreateError, v1);
    v3 = *(v0 + 56);
    *(v0 + 72);
    v3;
  }

  else
  {
    v4 = *(v0 + 56);
    *(v0 + 72);
    v4;
  }

  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(**(v0 + 48) + 112) + *(v0 + 48);
  swift_beginAccess(v3, v0 + 16, 1, 0);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
  specialized BidirectionalCollection.last.getter(*(*(v4 + 44) + v3));
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    v5 = *(v0 + 48);
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(*(v0 + 56), &demangling cache variable for type metadata for MLCheckpoint?);
    v6 = *(direct field offset for MLTrainingSession.delegate + v5 + 24);
    v7 = *(direct field offset for MLTrainingSession.delegate + v5 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v5), v6);
    (*(v7 + 16))(v6, v7);
  }

  else
  {
    v8 = *(v0 + 48);
    outlined init with take of MLClassifierMetrics(*(v0 + 56), *(v0 + 72), type metadata accessor for MLCheckpoint);
    v16 = *(direct field offset for MLTrainingSession.delegate + v8 + 24);
    v18 = *(direct field offset for MLTrainingSession.delegate + v8 + 32);
    __swift_project_boxed_opaque_existential_0Tm((direct field offset for MLTrainingSession.delegate + v8), v16);
    v19 = v4;
    v9 = *(v3 + *(v4 + 44));
    v17 = *(v18 + 24);
    v9;
    v17(v9, v16, v18);
    v10 = *(v0 + 72);
    v11 = *(v0 + 64);
    v9;
    *(v3 + *(v19 + 28)) = *(v10 + *(v11 + 20));
    v12 = *(v10 + *(v11 + 24));
    outlined destroy of MLActivityClassifier.ModelParameters(v10, type metadata accessor for MLCheckpoint);
    *(v3 + *(v19 + 32)) = v12;
  }

  v13 = swift_task_alloc(128);
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = specialized MLTrainingSession.resumeAsync(job:);
  v14 = *(v0 + 48);
  return specialized MLTrainingSession.execute(job:)(*(v0 + 40));
}

{
  return specialized MLTrainingSession.resumeAsync(job:)();
}

uint64_t _sScTss5Error_pRs_rlE8detached8priority9operationScTyxsAA_pGScPSg_xyYaKYAcntFZyt_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TaskPriority?) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(a1, &v19, &demangling cache variable for type metadata for TaskPriority?);
  v7 = type metadata accessor for TaskPriority(0);
  if (__swift_getEnumTagSinglePayload(&v19, 1, v7) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v19, &demangling cache variable for type metadata for TaskPriority?);
    v9 = 4096;
  }

  else
  {
    v10 = TaskPriority.rawValue.getter();
    (*(*(v7 - 8) + 8))(&v19, v7);
    v9 = v10 | 0x1000;
  }

  v11 = *(a3 + 16);
  if (v11)
  {
    v12 = *(a3 + 24);
    ObjectType = swift_getObjectType(*(a3 + 16));
    swift_unknownObjectRetain(v11);
    v14 = dispatch thunk of Actor.unownedExecutor.getter(ObjectType, v12);
    v16 = v15;
    swift_unknownObjectRelease(v11);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  if (v14 | v16)
  {
    v17 = &v19;
    v19 = 0;
    v20 = v14;
    v21 = v16;
  }

  else
  {
    v17 = 0;
  }

  return swift_task_create(v9, v17, &type metadata for () + 8, v22, a3, v8, v19, *(&v19 + 1), v20, v21);
}

uint64_t specialized MLTrainingSession.execute(job:)(uint64_t a1)
{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

{
  *(v2 + 48) = v1;
  *(v2 + 40) = a1;
  return swift_task_switch(specialized MLTrainingSession.execute(job:), 0, 0);
}

uint64_t specialized MLTrainingSession.execute(job:)()
{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActivityClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandPoseClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
  v1 = *(v0 + 80);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
  v1 = *(v0 + 96);
  return (*(v0 + 8))();
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLStyleTransfer>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
  v1 = *(v0 + 112);
  return (*(v0 + 8))();
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLogisticRegressionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  v2 = *(*v1 + 112);
  *(v0 + 56) = v2;
  *(v0 + 64) = direct field offset for MLTrainingSession.delegate;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 56) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 56)))
        {
          case 0:
            v10 = *(v0 + 64);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 56) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 56)))
    {
      case 0:
        v19 = (*(v0 + 64) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLActionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLHandActionClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLRandomForestClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLObjectDetector>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLDecisionTreeClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier.DataSource>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLSoundClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLBoostedTreeClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLLinearRegressor>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  *(v0 + 120) = static _PowerUtilities.createPowerAssertion()();
  v1 = *(v0 + 48);
  *(v0 + 56) = direct field offset for MLTrainingSession.delegate;
  v2 = *(*v1 + 112);
  *(v0 + 64) = v2;
  swift_beginAccess(v2 + v1, v0 + 16, 0, 0);
  while (2)
  {
    v3 = *(v0 + 64) + *(v0 + 48);
    v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v5 = *(*(v4 + 28) + v3);
    v6 = 0x696C616974696E69;
    v7 = 0xEB0000000064657ALL;
    switch(v5)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v6 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v6 = 0x676E696E69617274;
        v7 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v6 = 0x697461756C617665;
LABEL_6:
        v7 = 0xEA0000000000676ELL;
LABEL_7:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v7;
        if ((v8 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_15;
        }

        v9 = *(v0 + 48);
        switch(*(*(v4 + 28) + v9 + *(v0 + 64)))
        {
          case 0:
            v10 = *(v0 + 56);
            specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
            v11 = *(v9 + v10 + 24);
            v19 = *(v9 + v10 + 32);
            __swift_project_boxed_opaque_existential_0Tm((v10 + v9), v11);
            *(v0 + 124) = 1;
            (*(v19 + 40))(v0 + 124, v11);
            continue;
          case 1:
            v17 = swift_task_alloc(272);
            *(v0 + 72) = v17;
            *v17 = v0;
            v17[1] = specialized MLTrainingSession.execute(job:);
            v18 = *(v0 + 48);
            result = specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
            break;
          case 2:
            v15 = swift_task_alloc(272);
            *(v0 + 88) = v15;
            *v15 = v0;
            v15[1] = specialized MLTrainingSession.execute(job:);
            v16 = *(v0 + 48);
            result = specialized MLTrainingSession.train(job:)(*(v0 + 40));
            break;
          case 3:
            v12 = swift_task_alloc(128);
            *(v0 + 104) = v12;
            *v12 = v0;
            v12[1] = specialized MLTrainingSession.execute(job:);
            v13 = *(v0 + 48);
            result = specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
            break;
          case 4:
            continue;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_15:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        result = (*(v0 + 8))();
        break;
    }

    return result;
  }
}

{
  v2 = *(*v1 + 72);
  *(*v1 + 80) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 88);
  *(*v1 + 96) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v2 = *(*v1 + 104);
  *(*v1 + 112) = v0;
  v2;
  if (v0)
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  else
  {
    v3 = specialized MLTrainingSession.execute(job:);
  }

  return swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 80);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 96);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  v1 = *(v0 + 112);
  while (2)
  {
    v2 = *(v0 + 64) + *(v0 + 48);
    v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
    v4 = *(*(v3 + 28) + v2);
    v5 = 0x696C616974696E69;
    v6 = 0xEB0000000064657ALL;
    switch(v4)
    {
      case 0:
        goto LABEL_7;
      case 1:
        v5 = 0x6974636172747865;
        goto LABEL_6;
      case 2:
        v5 = 0x676E696E69617274;
        v6 = 0xE800000000000000;
        goto LABEL_7;
      case 3:
        v5 = 0x697461756C617665;
LABEL_6:
        v6 = 0xEA0000000000676ELL;
LABEL_7:
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, v6, 0x636E657265666E69, 0xEB00000000676E69, 0);
        v6;
        if ((v7 & 1) != 0 || [*(*(v0 + 40) + direct field offset for MLJob.progress) isCancelled])
        {
          goto LABEL_16;
        }

        break;
      case 4:
        0xEB00000000676E69;
LABEL_16:
        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        if (v1)
        {
          v1;
        }

        v18 = *(v0 + 8);
        return v18();
    }

    v8 = *(v0 + 48);
    switch(*(*(v3 + 28) + v8 + *(v0 + 64)))
    {
      case 0:
        v19 = (*(v0 + 56) + v8);
        specialized MLTrainingSession.transition(to:)(1, &demangling cache variable for type metadata for MLTrainingSession<MLImageClassifier>.Metadata);
        v9 = v19[3];
        v10 = v19[4];
        __swift_project_boxed_opaque_existential_0Tm(v19, v9);
        *(v0 + 124) = 1;
        (*(v10 + 40))(v0 + 124, v9, v10);
        if (!v1)
        {
          v1 = 0;
          continue;
        }

        static _PowerUtilities.endPowerAssertion(from:)(*(v0 + 120));
        v18 = *(v0 + 8);
        return v18();
      case 1:
        v11 = swift_task_alloc(272);
        *(v0 + 72) = v11;
        *v11 = v0;
        v11[1] = specialized MLTrainingSession.execute(job:);
        v12 = *(v0 + 48);
        return specialized MLTrainingSession.extractFeatures(job:)(*(v0 + 40));
      case 2:
        v14 = swift_task_alloc(272);
        *(v0 + 88) = v14;
        *v14 = v0;
        v14[1] = specialized MLTrainingSession.execute(job:);
        v15 = *(v0 + 48);
        return specialized MLTrainingSession.train(job:)(*(v0 + 40));
      case 3:
        v16 = swift_task_alloc(128);
        *(v0 + 104) = v16;
        *v16 = v0;
        v16[1] = specialized MLTrainingSession.execute(job:);
        v17 = *(v0 + 48);
        return specialized MLTrainingSession.evaluate(job:)(*(v0 + 40));
      case 4:
        continue;
    }
  }
}

{
  return specialized MLTrainingSession.execute(job:)();
}

{
  return specialized MLTrainingSession.execute(job:)();
}

{
  return specialized MLTrainingSession.execute(job:)();
}