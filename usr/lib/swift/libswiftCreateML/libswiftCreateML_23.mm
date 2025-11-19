uint64_t specialized SGD.getParametersDictionary()()
{
  v11 = *(v0 + 12);
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v1, v10);
  *(inited + 16) = 3;
  *(inited + 24) = 6;
  strcpy((inited + 32), "learningRate");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  v4 = swift_allocObject(v3, 40, 7);
  *(v4 + 16) = 1;
  *(v4 + 24) = 2;
  *(v4 + 32) = *v0;
  *(inited + 48) = v4;
  *(inited + 56) = 0x6D75746E656D6F6DLL;
  *(inited + 64) = 0xE800000000000000;
  v5 = swift_allocObject(v3, 40, 7);
  *(v5 + 16) = 1;
  v6 = *(v0 + 4);
  *(v5 + 24) = 2;
  *(v5 + 32) = v6;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = ".isBidirectional" + 0x8000000000000000;
  v7 = swift_allocObject(v3, 40, 7);
  *(v7 + 16) = 1;
  *(v7 + 24) = 2;
  *(v7 + 32) = v11;
  *(inited + 96) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v8, &protocol witness table for String);
}

uint64_t specialized SGD.getStatesDictionary(for:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v74 = a2;
  v76 = a1;
  v68 = type metadata accessor for TensorShape(0);
  v72 = *(v68 - 8);
  v4 = *(v72 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v70 = v61;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v73 = v61;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v12 = type metadata accessor for Tensor(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v77 = _swiftEmptyArrayStorage;
  v75 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v17, &protocol witness table for String);
  v18 = *(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) + 56) + v3;
  v19 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLHandActionClassifier.GraphCNNModel>);
  OptimizerStateDictionary.subscript.getter(v76, v19);
  if (__swift_getEnumTagSinglePayload(v61, 1, v12) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v61, &demangling cache variable for type metadata for Tensor?);
    return v75;
  }

  else
  {
    v71 = v61;
    v66 = v12;
    v67 = v13;
    (*(v13 + 32))(v61, v61, v12);
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    v21 = v64;
    v22 = v78;
    v78;
    v21;
    v63 = v74;
    v64 = v22;
    v23._countAndFlagsBits = 0xD000000000000013;
    String.append(_:)(v23);
    v76 = v63;
    v65 = v64;
    v24 = v73;
    v25 = v71;
    Tensor.shape.getter();
    v26 = TensorShape.contiguousSize.getter();
    v27 = v68;
    v72 = *(v72 + 8);
    (v72)(v24, v68);
    v28 = alloca(24);
    v29 = alloca(32);
    v62 = v25;
    v30 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v26, closure #1 in Tensor.doubleArray()partial apply, v61);
    v31 = v27;
    v32 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v75);
    v63 = v32;
    v34 = v65;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v76, v65, isUniquelyReferenced_nonNull_native);
    v34;
    v75 = v63;
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v35 = v64;
    v36 = v78;
    v78;
    v23._countAndFlagsBits = v35;
    v37 = v70;
    v23._countAndFlagsBits;
    v63 = v74;
    v64 = v36;
    v23._object = ".optimizer.velocity" + 0x8000000000000000;
    v23._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v23);
    v73 = v63;
    v76 = v64;
    v38 = v71;
    Tensor.shape.getter();
    v78 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
    v39 = dispatch thunk of Collection.count.getter(v27, v78);
    if (v39)
    {
      v40 = v39;
      v69 = _swiftEmptyArrayStorage;
      v41 = 0;
      if (v39 > 0)
      {
        v41 = v39;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
      v77 = v69;
      dispatch thunk of Collection.startIndex.getter(v27, v78);
      if (v40 < 0)
      {
        BUG();
      }

      v74 = v40;
      v42 = v77;
      v43 = v78;
      v44 = v27;
      do
      {
        v45 = v44;
        v46 = dispatch thunk of Collection.subscript.read(&v63, &v62, v44, v43);
        v77 = *v47;
        v46(&v63, 0);
        v69 = v42;
        v48 = v45;
        v49 = v42[2];
        v50 = v42[3];
        v51 = v70;
        if (v50 >> 1 <= v49)
        {
          v56 = v70;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50 >= 2, v49 + 1, 1);
          v51 = v56;
          v48 = v68;
          v42 = v69;
        }

        v52 = v77;
        v42[2] = v49 + 1;
        *&v42[v49 + 4] = v52;
        v53 = v48;
        v54 = v78;
        dispatch thunk of Collection.formIndex(after:)(&v62, v48, v78);
        v55 = v74-- == 1;
        v44 = v53;
        v37 = v51;
        v43 = v54;
      }

      while (!v55);
      v77 = v42;
      v38 = v71;
      v31 = v44;
    }

    (v72)(v37, v31);
    v57 = v75;
    v58 = swift_isUniquelyReferenced_nonNull_native(v75);
    v63 = v57;
    v59 = v76;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v73, v76, v58);
    v59;
    v20 = v63;
    (*(v67 + 8))(v38, v66);
  }

  return v20;
}

BOOL specialized closure #1 in Layer.parameterKeyPath(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[2] = a3;
  v10[3] = a2;
  v3 = type metadata accessor for Parameter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  swift_getAtKeyPath(a2, a1);
  v8 = Parameter.id.getter();
  (*(v4 + 8))(v10, v3);
  return v8 == Parameter.id.getter();
}

BOOL specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(uint64_t a1, uint64_t a2, int a3)
{
  v11 = a3;
  v10[2] = a2;
  v3 = type metadata accessor for Parameter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  swift_getAtKeyPath(a2, a1);
  v8 = Parameter.id.getter();
  (*(v4 + 8))(v10, v3);
  return v8 == v11;
}

uint64_t MLHandActionClassifier.GraphCNN.getCheckpointStatesDictionary()()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v4 = v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer;
  swift_beginAccess(v0 + OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_optimizer, v9, 0, 0);
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v4, &v8, &demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v5 = MLHandActionClassifier.GraphCNN.trainableSublayers()();
  v6 = specialized _ModelCheckpoint<>.getCheckpointStatesDictionary<A>(optimizer:trainableSublayers:)(&v8, v5);
  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v8, &demangling cache variable for type metadata for SGD<MLHandActionClassifier.GraphCNNModel>);
  v5;
  return v6;
}

uint64_t specialized _ModelCheckpoint<>.getCheckpointStatesDictionary<A>(optimizer:trainableSublayers:)(uint64_t a1, uint64_t a2)
{
  v151 = v2;
  v4 = v3;
  v137 = a2;
  v146 = a1;
  v123 = 0;
  v136 = type metadata accessor for LSTM(0);
  v5 = *(v136 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v138 = &v107;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v120 = &v107;
  v132 = type metadata accessor for Dense(0);
  v133 = *(v132 - 8);
  v11 = *(v133 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v134 = &v107;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v119 = &v107;
  v128 = type metadata accessor for Conv2D(0);
  v129 = *(v128 - 8);
  v16 = *(v129 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v130 = &v107;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v118 = &v107;
  v21 = *(*(type metadata accessor for MLActivityClassifier.Model(0) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v139 = &v107;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v135 = &v107;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v131 = &v107;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v125 = &v107;
  v124 = type metadata accessor for BatchNorm(0);
  v30 = *(v124 - 8);
  v31 = *(v30 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v127 = &v107;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v116 = &v107;
  v148 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v36 = specialized Adam.getParametersDictionary()();
  v37 = v151;
  v144 = v36;
  v115 = *(v137 + 16);
  v145 = OBJC_IVAR____TtCVV8CreateML20MLActivityClassifier7Trainer14ModelContainer_model + v4;
  v38 = v137;
  v137;
  swift_beginAccess(v145, v108, 0, 0);
  v117 = v38 + 32;
  v122 = v5;
  v126 = v30;
  while (1)
  {
    v39 = v115;
    if (v123 == v115)
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
    }

    else
    {
      if (v123 >= v115)
      {
        BUG();
      }

      v39 = v123 + 1;
      if (__OFADD__(1, v123))
      {
        BUG();
      }

      *&v140 = v123;
      outlined init with copy of TabularRegressionTask(v117 + 40 * v123, &v140 + 8);
    }

    v114[2] = v142;
    v114[1] = v141;
    v114[0] = v140;
    if (!v142)
    {
      v148;
      v137;
      return v144;
    }

    v151 = v37;
    v123 = v39;
    v40 = *&v114[0];
    outlined init with take of TabularRegressionTask((v114 + 8), v109);
    *&v140 = 0x5F726579616CLL;
    *(&v140 + 1) = 0xE600000000000000;
    v147 = v40;
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v41._object;
    String.append(_:)(v41);
    object;
    v152 = *(&v140 + 1);
    v149 = v140;
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v150 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v43, &protocol witness table for String);
    outlined init with copy of TabularRegressionTask(v109, &v140);
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v45 = v116;
    v46 = v124;
    if (swift_dynamicCast(v116, &v140, v44, v124, 0))
    {
      v150;
      (*(v126 + 32))(v127, v45, v46);
      v47 = v125;
      outlined init with copy of MLTrainingSessionParameters(v145, v125, type metadata accessor for MLActivityClassifier.Model);
      v48 = v148;
      v148;
      v49 = v151;
      v50 = specialized BatchNorm.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v47, v149, v152, v146, v48, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, partial apply for specialized closure #1 in Layer.parameterKeyPath(for:));
      v151 = v49;
      v51 = v124;
      if (v49)
      {
        v152;
        swift_bridgeObjectRelease_n(v48, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLActivityClassifier.Model);
        (*(v126 + 8))(v127, v51);
        goto LABEL_44;
      }

      v150 = v50;
      v152;
      v48;
      outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLActivityClassifier.Model);
      (*(v126 + 8))(v127, v51);
      goto LABEL_11;
    }

    v53 = v118;
    v54 = v128;
    if (swift_dynamicCast(v118, &v140, v44, v128, 0))
    {
      v150;
      (*(v129 + 32))(v130, v53, v54);
      v55 = v131;
      outlined init with copy of MLTrainingSessionParameters(v145, v131, type metadata accessor for MLActivityClassifier.Model);
      v56 = v148;
      v148;
      v57 = v55;
      v58 = v152;
      v59 = v151;
      v60 = specialized Conv2D.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v57, v149, v152, v146, v56, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v52 = v59;
      if (!v59)
      {
        v150 = v60;
        v56;
        v58;
        outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLActivityClassifier.Model);
        v61 = v130;
        v62 = v128;
        v63 = v129;
LABEL_18:
        (*(v63 + 8))(v61, v62);
        goto LABEL_19;
      }

      swift_bridgeObjectRelease_n(v56, 2);
      v58;
      outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLActivityClassifier.Model);
      v103 = v130;
      v104 = v128;
      v105 = v129;
      goto LABEL_43;
    }

    v64 = v119;
    v65 = v132;
    if (swift_dynamicCast(v119, &v140, v44, v132, 0))
    {
      v150;
      (*(v133 + 32))(v134, v64, v65);
      v66 = v135;
      outlined init with copy of MLTrainingSessionParameters(v145, v135, type metadata accessor for MLActivityClassifier.Model);
      v67 = v148;
      v148;
      v68 = v151;
      v69 = specialized Dense.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v66, v149, v152, v146, v67, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v52 = v68;
      if (!v68)
      {
        v150 = v69;
        v67;
        v152;
        outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLActivityClassifier.Model);
        v61 = v134;
        v62 = v132;
        v63 = v133;
        goto LABEL_18;
      }

      swift_bridgeObjectRelease_n(v67, 2);
      v152;
      outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLActivityClassifier.Model);
      v103 = v134;
      v104 = v132;
      v105 = v133;
LABEL_43:
      (*(v105 + 8))(v103, v104);
      goto LABEL_44;
    }

    v93 = v120;
    v94 = v44;
    v95 = v136;
    if (swift_dynamicCast(v120, &v140, v94, v136, 0))
    {
      break;
    }

    v152;
LABEL_11:
    v52 = v151;
LABEL_19:
    v151 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(&v140);
    v70 = v144;
    LOBYTE(v152) = swift_isUniquelyReferenced_nonNull_native(v144);
    v147 = v70;
    v71 = v150;
    specialized LazyMapSequence.makeIterator()(v150, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v143 = v113;
    v142 = v112;
    v141 = v111;
    v140 = v110;
    v72 = v71;
    v71;
    while (1)
    {
      v73 = specialized LazyMapSequence.Iterator.next()(v72);
      if (!v74)
      {
        break;
      }

      v76 = v74;
      v149 = v75;
      v121 = v73;
      v77 = v144;
      v79 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
      v80 = (v78 & 1) == 0;
      v81 = __OFADD__(*(v77 + 16), v80);
      v72 = *(v77 + 16) + v80;
      if (v81)
      {
        BUG();
      }

      v82 = v78;
      if (*(v77 + 24) >= v72)
      {
        if ((v152 & 1) == 0)
        {
          v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, v152);
        v72 = v121;
        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v76);
        LOBYTE(v85) = v85 & 1;
        if ((v82 & 1) != v85)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v76, v85, v83, v84);
          BUG();
        }
      }

      v86 = v147;
      v144 = v147;
      if (v82)
      {
        v87 = *(v147[7] + 8 * v79);
        v87;
        v76;
        v149;
        v88 = v86[7];
        v72 = *(v88 + 8 * v79);
        v72;
        *(v88 + 8 * v79) = v87;
      }

      else
      {
        v147[(v79 >> 6) + 8] |= 1 << v79;
        v89 = v86[6];
        v90 = 16 * v79;
        *(v89 + v90) = v121;
        *(v89 + v90 + 8) = v76;
        *(v86[7] + 8 * v79) = v149;
        v91 = v86[2];
        v81 = __OFADD__(1, v91);
        v92 = v91 + 1;
        if (v81)
        {
          BUG();
        }

        v86[2] = v92;
      }

      LOBYTE(v152) = 1;
      v5 = v122;
    }

    v150;
    outlined consume of [String : [Double]].Iterator._Variant(v140);

    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    v37 = v151;
  }

  v150;
  (*(v5 + 32))(v138, v93, v95);
  v96 = v139;
  outlined init with copy of MLTrainingSessionParameters(v145, v139, type metadata accessor for MLActivityClassifier.Model);
  v97 = v148;
  v148;
  v98 = v96;
  v99 = v152;
  v100 = v151;
  v101 = specialized LSTM.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v98, v149, v152, v146, v97, specialized Dictionary.subscript.getter, specialized Adam.getStatesDictionary(for:name:), type metadata accessor for MLActivityClassifier.Model, &lazy protocol witness table cache variable for type MLActivityClassifier.Model and conformance MLActivityClassifier.Model, &protocol conformance descriptor for MLActivityClassifier.Model, partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:), closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
  v52 = v100;
  if (!v100)
  {
    v150 = v101;
    v97;
    v99;
    outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLActivityClassifier.Model);
    (*(v5 + 8))(v138, v136);
    goto LABEL_19;
  }

  swift_bridgeObjectRelease_n(v97, 2);
  v99;
  outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLActivityClassifier.Model);
  (*(v5 + 8))(v138, v136);
LABEL_44:
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  v102 = v144;
  v144;
  v137;
  __swift_destroy_boxed_opaque_existential_1Tm(&v140);
  return v102;
}

{
  v151 = v2;
  v4 = v3;
  v137 = a2;
  v146 = a1;
  v123 = 0;
  v136 = type metadata accessor for LSTM(0);
  v5 = *(v136 - 8);
  v6 = *(v5 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v138 = &v107;
  v9 = alloca(v6);
  v10 = alloca(v6);
  v120 = &v107;
  v132 = type metadata accessor for Dense(0);
  v133 = *(v132 - 8);
  v11 = *(v133 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v134 = &v107;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v119 = &v107;
  v128 = type metadata accessor for Conv2D(0);
  v129 = *(v128 - 8);
  v16 = *(v129 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v130 = &v107;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v118 = &v107;
  v21 = *(*(type metadata accessor for MLHandActionClassifier.GraphCNNModel(0) - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v139 = &v107;
  v24 = alloca(v21);
  v25 = alloca(v21);
  v135 = &v107;
  v26 = alloca(v21);
  v27 = alloca(v21);
  v131 = &v107;
  v28 = alloca(v21);
  v29 = alloca(v21);
  v125 = &v107;
  v124 = type metadata accessor for BatchNorm(0);
  v30 = *(v124 - 8);
  v31 = *(v30 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v127 = &v107;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v116 = &v107;
  v148 = specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter();
  v36 = specialized SGD.getParametersDictionary()();
  v37 = v151;
  v144 = v36;
  v115 = *(v137 + 16);
  v145 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model + v4;
  v38 = v137;
  v137;
  swift_beginAccess(v145, v108, 0, 0);
  v117 = v38 + 32;
  v122 = v5;
  v126 = v30;
  while (1)
  {
    v39 = v115;
    if (v123 == v115)
    {
      v142 = 0;
      v141 = 0;
      v140 = 0;
    }

    else
    {
      if (v123 >= v115)
      {
        BUG();
      }

      v39 = v123 + 1;
      if (__OFADD__(1, v123))
      {
        BUG();
      }

      *&v140 = v123;
      outlined init with copy of TabularRegressionTask(v117 + 40 * v123, &v140 + 8);
    }

    v114[2] = v142;
    v114[1] = v141;
    v114[0] = v140;
    if (!v142)
    {
      v148;
      v137;
      return v144;
    }

    v151 = v37;
    v123 = v39;
    v40 = *&v114[0];
    outlined init with take of TabularRegressionTask((v114 + 8), v109);
    *&v140 = 0x5F726579616CLL;
    *(&v140 + 1) = 0xE600000000000000;
    v147 = v40;
    v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v41._object;
    String.append(_:)(v41);
    object;
    v152 = *(&v140 + 1);
    v149 = v140;
    v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
    v150 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v43, &protocol witness table for String);
    outlined init with copy of TabularRegressionTask(v109, &v140);
    v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Layer);
    v45 = v116;
    v46 = v124;
    if (swift_dynamicCast(v116, &v140, v44, v124, 0))
    {
      v150;
      (*(v126 + 32))(v127, v45, v46);
      v47 = v125;
      outlined init with copy of MLTrainingSessionParameters(v145, v125, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v48 = v148;
      v148;
      v49 = v151;
      v50 = specialized BatchNorm.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v47, v149, v152, v146, v48, partial apply for closure #1 in Tensor.doubleArray(), specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v151 = v49;
      v51 = v124;
      if (v49)
      {
        v152;
        swift_bridgeObjectRelease_n(v48, 2);
        outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        (*(v126 + 8))(v127, v51);
        goto LABEL_44;
      }

      v150 = v50;
      v152;
      v48;
      outlined destroy of MLActivityClassifier.ModelParameters(v125, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      (*(v126 + 8))(v127, v51);
      goto LABEL_11;
    }

    v53 = v118;
    v54 = v128;
    if (swift_dynamicCast(v118, &v140, v44, v128, 0))
    {
      v150;
      (*(v129 + 32))(v130, v53, v54);
      v55 = v131;
      outlined init with copy of MLTrainingSessionParameters(v145, v131, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v56 = v148;
      v148;
      v57 = v55;
      v58 = v152;
      v59 = v151;
      v60 = specialized Conv2D.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v57, v149, v152, v146, v56, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v52 = v59;
      if (!v59)
      {
        v150 = v60;
        v56;
        v58;
        outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        v61 = v130;
        v62 = v128;
        v63 = v129;
LABEL_18:
        (*(v63 + 8))(v61, v62);
        goto LABEL_19;
      }

      swift_bridgeObjectRelease_n(v56, 2);
      v58;
      outlined destroy of MLActivityClassifier.ModelParameters(v131, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v103 = v130;
      v104 = v128;
      v105 = v129;
      goto LABEL_43;
    }

    v64 = v119;
    v65 = v132;
    if (swift_dynamicCast(v119, &v140, v44, v132, 0))
    {
      v150;
      (*(v133 + 32))(v134, v64, v65);
      v66 = v135;
      outlined init with copy of MLTrainingSessionParameters(v145, v135, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v67 = v148;
      v148;
      v68 = v151;
      v69 = specialized Dense.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v66, v149, v152, v146, v67, closure #1 in Tensor.doubleArray()partial apply, specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), closure #1 in Tensor.doubleArray()partial apply, type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply, closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
      v52 = v68;
      if (!v68)
      {
        v150 = v69;
        v67;
        v152;
        outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
        v61 = v134;
        v62 = v132;
        v63 = v133;
        goto LABEL_18;
      }

      swift_bridgeObjectRelease_n(v67, 2);
      v152;
      outlined destroy of MLActivityClassifier.ModelParameters(v135, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      v103 = v134;
      v104 = v132;
      v105 = v133;
LABEL_43:
      (*(v105 + 8))(v103, v104);
      goto LABEL_44;
    }

    v93 = v120;
    v94 = v44;
    v95 = v136;
    if (swift_dynamicCast(v120, &v140, v94, v136, 0))
    {
      break;
    }

    v152;
LABEL_11:
    v52 = v151;
LABEL_19:
    v151 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(&v140);
    v70 = v144;
    LOBYTE(v152) = swift_isUniquelyReferenced_nonNull_native(v144);
    v147 = v70;
    v71 = v150;
    specialized LazyMapSequence.makeIterator()(v150, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v143 = v113;
    v142 = v112;
    v141 = v111;
    v140 = v110;
    v72 = v71;
    v71;
    while (1)
    {
      v73 = specialized LazyMapSequence.Iterator.next()(v72);
      if (!v74)
      {
        break;
      }

      v76 = v74;
      v149 = v75;
      v121 = v73;
      v77 = v144;
      v79 = specialized __RawDictionaryStorage.find<A>(_:)(v73, v74);
      v80 = (v78 & 1) == 0;
      v81 = __OFADD__(*(v77 + 16), v80);
      v72 = *(v77 + 16) + v80;
      if (v81)
      {
        BUG();
      }

      v82 = v78;
      if (*(v77 + 24) >= v72)
      {
        if ((v152 & 1) == 0)
        {
          v72 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v72, v152);
        v72 = v121;
        v79 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v76);
        LOBYTE(v85) = v85 & 1;
        if ((v82 & 1) != v85)
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v76, v85, v83, v84);
          BUG();
        }
      }

      v86 = v147;
      v144 = v147;
      if (v82)
      {
        v87 = *(v147[7] + 8 * v79);
        v87;
        v76;
        v149;
        v88 = v86[7];
        v72 = *(v88 + 8 * v79);
        v72;
        *(v88 + 8 * v79) = v87;
      }

      else
      {
        v147[(v79 >> 6) + 8] |= 1 << v79;
        v89 = v86[6];
        v90 = 16 * v79;
        *(v89 + v90) = v121;
        *(v89 + v90 + 8) = v76;
        *(v86[7] + 8 * v79) = v149;
        v91 = v86[2];
        v81 = __OFADD__(1, v91);
        v92 = v91 + 1;
        if (v81)
        {
          BUG();
        }

        v86[2] = v92;
      }

      LOBYTE(v152) = 1;
      v5 = v122;
    }

    v150;
    outlined consume of [String : [Double]].Iterator._Variant(v140);

    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    v37 = v151;
  }

  v150;
  (*(v5 + 32))(v138, v93, v95);
  v96 = v139;
  outlined init with copy of MLTrainingSessionParameters(v145, v139, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  v97 = v148;
  v148;
  v98 = v96;
  v99 = v152;
  v100 = v151;
  v101 = specialized LSTM.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(v98, v149, v152, v146, v97, specialized Dictionary.subscript.getter, specialized SGD.getStatesDictionary(for:name:), type metadata accessor for MLHandActionClassifier.GraphCNNModel, &lazy protocol witness table cache variable for type MLHandActionClassifier.GraphCNNModel and conformance MLHandActionClassifier.GraphCNNModel, &protocol conformance descriptor for MLHandActionClassifier.GraphCNNModel, partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:), closure #1 in Layer.parameterKeyPath(for:)specialized partial apply);
  v52 = v100;
  if (!v100)
  {
    v150 = v101;
    v97;
    v99;
    outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
    (*(v5 + 8))(v138, v136);
    goto LABEL_19;
  }

  swift_bridgeObjectRelease_n(v97, 2);
  v99;
  outlined destroy of MLActivityClassifier.ModelParameters(v139, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
  (*(v5 + 8))(v138, v136);
LABEL_44:
  __swift_destroy_boxed_opaque_existential_1Tm(v109);
  v102 = v144;
  v144;
  v137;
  __swift_destroy_boxed_opaque_existential_1Tm(&v140);
  return v102;
}

void *specialized _ModelCheckpoint<>.parameterKeyPathLookup.getter()
{
  v38 = type metadata accessor for Parameter(0);
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
  v10 = Layer.parameterKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLActivityClassifier.ModelParameters(&v34, type metadata accessor for MLActivityClassifier.Model);
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

      outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLActivityClassifier.Model);
      LODWORD(v16) = Parameter.id.getter();
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
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLActivityClassifier.Model, Parameter>>);
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
  v38 = type metadata accessor for Parameter(0);
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
  v10 = Layer.parameterKeyPaths(recursively:)(1, v4, v9);
  v41 = &v34;
  outlined destroy of MLActivityClassifier.ModelParameters(&v34, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
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

      outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLHandActionClassifier.GraphCNNModel);
      LODWORD(v16) = Parameter.id.getter(v16);
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
      __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<UInt32, WritableKeyPath<MLHandActionClassifier.GraphCNNModel, Parameter>>);
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

uint64_t specialized BatchNorm.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *), uint64_t (*a7)(void), uint64_t (*a8)(uint64_t, uint64_t, uint64_t), void (*a9)(void *, uint64_t *), uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t *))
{
  v171 = a6;
  v211 = v13;
  v207 = v14;
  v172 = a5;
  v180 = a4;
  v203._countAndFlagsBits = a2;
  v183 = a1;
  v203._object = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (name: String, state: LayerState));
  v184 = *(v203._object - 1);
  v16 = *(v184 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v181 = v162;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v195 = v162;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v192 = v162;
  v182 = v162;
  v185 = 0;
  v186 = type metadata accessor for TensorShape(0);
  v173 = *(v186 - 8);
  v23 = *(v173 + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v188 = v162;
  v26 = alloca(v23);
  v27 = alloca(v23);
  v174 = v162;
  v187 = type metadata accessor for Tensor(0);
  v175 = *(v187 - 8);
  v28 = *(v175 + 64);
  v29 = alloca(v28);
  v30 = alloca(v28);
  v189 = v162;
  v31 = alloca(v28);
  v32 = alloca(v28);
  v176 = v162;
  v210 = type metadata accessor for Parameter(0);
  v196 = *(v210 - 1);
  v33 = *(v196 + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  v208 = v162;
  v204 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (name: String, parameter: Parameter));
  v212._countAndFlagsBits = *(v204 - 8);
  v36 = *(v212._countAndFlagsBits + 64);
  v37 = alloca(v36);
  v38 = alloca(v36);
  v177 = v162;
  v39 = alloca(v36);
  v40 = alloca(v36);
  v205 = v162;
  v41 = alloca(v36);
  v42 = alloca(v36);
  v190 = v162;
  v43 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v43, v162);
  *(inited + 16) = 1;
  *(inited + 24) = 2;
  *&v197 = a2;
  v202 = a3;
  *(&v197 + 1) = a3;
  a3;
  v45._countAndFlagsBits = 0x75746E656D6F6D2ELL;
  v45._object = 0xE90000000000006DLL;
  String.append(_:)(v45);
  *(inited + 32) = v197;
  v213 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  v46 = swift_allocObject(v213, 40, 7);
  *(v46 + 16) = 1;
  *(v46 + 24) = 2;
  *(v46 + 32) = BatchNorm.momentum.getter();
  *(inited + 48) = v46;
  v47 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v48 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v47, &protocol witness table for String);
  *&v197 = v203._countAndFlagsBits;
  *(&v197 + 1) = v202;
  v202;
  v45._countAndFlagsBits = 0x6E6F6C697370652ELL;
  v45._object = 0xE800000000000000;
  String.append(_:)(v45);
  v49 = *(&v197 + 1);
  v214._countAndFlagsBits = v197;
  v50 = swift_allocObject(v213, 40, 7);
  *(v50 + 16) = 1;
  *(v50 + 24) = 2;
  *(v50 + 32) = BatchNorm.epsilon.getter();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v48);
  *&v197 = v48;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v214._countAndFlagsBits, v49, isUniquelyReferenced_nonNull_native);
  v49;
  v213 = v197;
  v52 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(name: String, parameter: Parameter)>);
  v191 = *(v212._countAndFlagsBits + 72);
  v53 = *(v212._countAndFlagsBits + 80);
  v54 = (v53 + 32) & ~*(v212._countAndFlagsBits + 80);
  v55 = swift_allocObject(v52, v54 + 2 * v191, v53 | 7);
  *(v55 + 16) = 2;
  *(v55 + 24) = 4;
  v56 = (v55 + v54);
  v57 = v204;
  v58 = *(v204 + 48);
  *v56 = 0x74657366666FLL;
  v193 = v55;
  *(v55 + v54 + 8) = 0xE600000000000000;
  v59 = v196;
  BatchNorm.$offset.getter();
  v60 = v191;
  v61 = v191 + *(v57 + 48);
  *(v56 + v191) = 0x656C616373;
  v178 = v56;
  *(v56 + v60 + 8) = 0xE500000000000000;
  BatchNorm.$scale.getter();
  v179 = v190 + *(v57 + 48);
  v62 = 0;
  do
  {
    v63 = v190;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v178 + v191 * v62, v190, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
    v214._countAndFlagsBits = *v63;
    v64 = v63[1];
    v65 = v205;
    v66 = v205 + *(v204 + 48);
    *v205 = v214._countAndFlagsBits;
    *(v65 + 8) = v64;
    v206 = *(v59 + 32);
    v206(v66, v179, v210);
    *&v197 = v203._countAndFlagsBits;
    *(&v197 + 1) = v202;
    v202;
    v64;
    v67._countAndFlagsBits = 46;
    v67._object = 0xE100000000000000;
    String.append(_:)(v67);
    v67._countAndFlagsBits = v214._countAndFlagsBits;
    v209 = v64;
    v67._object = v64;
    String.append(_:)(v67);
    v212._countAndFlagsBits = v197;
    v67._countAndFlagsBits = v65;
    v68 = *(&v197 + 1);
    v194 = *(&v197 + 1);
    v69 = v177;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v67._countAndFlagsBits, v177, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
    *(v69 + 8);
    v67._countAndFlagsBits = v208;
    v206(v208, (v69 + *(v204 + 48)), v210);
    LODWORD(v206) = Parameter.id.getter(v67._countAndFlagsBits);
    v68;
    v70 = v176;
    Parameter.value.getter(v68);
    v71 = v174;
    Tensor.shape.getter();
    v72 = TensorShape.contiguousSize.getter();
    v169 = *(v173 + 8);
    v169(v71, v186);
    v73 = alloca(24);
    v74 = alloca(32);
    v163 = v70;
    v75 = v211;
    v76 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v72, v171, v162);
    v211 = v75;
    v67._countAndFlagsBits = v70;
    v77 = v194;
    v170 = *(v175 + 8);
    v170(v67._countAndFlagsBits, v187);
    v78 = v213;
    v79 = swift_isUniquelyReferenced_nonNull_native(v213);
    *&v197 = v78;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, v212._countAndFlagsBits, v77, v79);
    v77;
    v213 = v197;
    if (v172 && (v80 = a7(v206)) != 0)
    {
      v81 = v80;
    }

    else
    {
      v82 = a10(0);
      v83 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
      v84 = v183;
      v85 = Layer.parameterKeyPaths(recursively:)(1, v82, v83);
      v86 = alloca(32);
      v87 = alloca(32);
      v163 = v84;
      v164 = v208;
      v88 = v211;
      v89 = v85;
      v81 = specialized Sequence.first(where:)(a13, v162, v85);
      v89;
      if (!v81)
      {

        v193;
        v77;
        *&v197 = 0;
        *(&v197 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v159._object = "zed in the observation" + 0x8000000000000000;
        v159._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v159);
        v159._countAndFlagsBits = v203._countAndFlagsBits;
        v159._object = v202;
        String.append(_:)(v159);
        v159._countAndFlagsBits = 0x697373696D202C60;
        v159._object = 0xEC0000006020676ELL;
        String.append(_:)(v159);
        v159._countAndFlagsBits = v214._countAndFlagsBits;
        v160 = v209;
        v159._object = v209;
        String.append(_:)(v159);
        v160;
        v159._countAndFlagsBits = 0x61702079656B2060;
        v159._object = 0xEB000000002E6874;
        String.append(_:)(v159);
        v212 = v197;
        v159._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v159._object, 0, 0);
        *v161 = v212;
        *(v161 + 16) = 0;
        *(v161 + 32) = 0;
        *(v161 + 48) = 2;
        swift_willThrow(&type metadata for MLCreateError, v159._object);
        (*(v196 + 8))(v208, v210);
        return outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
      }

      v211 = v88;
    }

    v209;
    v206 = v81;
    v90 = a8(v81, v212._countAndFlagsBits, v77);
    v77;
    v91 = v213;
    v92 = swift_isUniquelyReferenced_nonNull_native(v213);
    v201 = v91;
    specialized LazyMapSequence.makeIterator()(v90, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0);
    v200 = v168;
    v199 = v167;
    v198 = v166;
    v197 = v165;
    v194 = v90;
    v93 = v90;
    v90;
    while (1)
    {
      v94 = specialized LazyMapSequence.Iterator.next()(v93);
      if (!v95)
      {
        break;
      }

      v214._countAndFlagsBits = v96;
      v209 = v94;
      v212._countAndFlagsBits = v95;
      v97 = v213;
      v99 = specialized __RawDictionaryStorage.find<A>(_:)(v94, v95);
      v100 = (v98 & 1) == 0;
      v101 = __OFADD__(*(v97 + 16), v100);
      v93 = *(v97 + 16) + v100;
      if (v101)
      {
        BUG();
      }

      v102 = v98;
      if (*(v97 + 24) >= v93)
      {
        if ((v92 & 1) == 0)
        {
          v93 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
          _NativeDictionary.copy()();
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v93, v92);
        v93 = v209;
        countAndFlagsBits = v212._countAndFlagsBits;
        v99 = specialized __RawDictionaryStorage.find<A>(_:)(v209, v212._countAndFlagsBits);
        LOBYTE(v106) = v106 & 1;
        if ((v102 & 1) != v106)
        {
LABEL_42:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, countAndFlagsBits, v106, v104, v105);
          BUG();
        }
      }

      v107 = v201;
      v213 = v201;
      if (v102)
      {
        v108 = *(v201[7] + 8 * v99);
        v108;
        v212._countAndFlagsBits;
        v214._countAndFlagsBits;
        v109 = v107[7];
        v93 = *(v109 + 8 * v99);
        v93;
        *(v109 + 8 * v99) = v108;
        v92 = 1;
      }

      else
      {
        v201[(v99 >> 6) + 8] |= 1 << v99;
        v110 = v107[6];
        v111 = 16 * v99;
        *(v110 + v111) = v209;
        *(v110 + v111 + 8) = v212._countAndFlagsBits;
        *(v107[7] + 8 * v99) = v214._countAndFlagsBits;
        v112 = v107[2];
        v101 = __OFADD__(1, v112);
        v113 = v112 + 1;
        if (v101)
        {
          BUG();
        }

        v107[2] = v113;
        v92 = 1;
      }
    }

    v194;
    outlined consume of [String : [Double]].Iterator._Variant(v197);

    v59 = v196;
    (*(v196 + 8))(v208, v210);
    v114 = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v205, &demangling cache variable for type metadata for (name: String, parameter: Parameter));
    v62 = 1;
    v115 = (v185 & 1) == 0;
    LOBYTE(v114) = 1;
    v185 = v114;
  }

  while (v115);
  swift_setDeallocating(v193);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v116 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(name: String, state: LayerState)>);
  v117 = *(v184 + 72);
  v118 = *(v184 + 80);
  v119 = (v118 + 32) & ~*(v184 + 80);
  v120 = swift_allocObject(v116, v119 + 2 * v117, v118 | 7);
  *(v120 + 16) = 2;
  *(v120 + 24) = 4;
  v121 = v120 + v119;
  v122 = v120 + v119 + *(v203._object + 12);
  *(v120 + v119) = 0x4D676E696E6E7572;
  v205 = v120;
  *(v120 + v119 + 8) = 0xEB000000006E6165;
  BatchNorm.$runningMean.getter();
  object = v203._object;
  v124 = v117 + *(v203._object + 12);
  *(v117 + v121) = 0x56676E696E6E7572;
  v208 = v117;
  v204 = v121;
  *(v117 + v121 + 8) = 0xEF65636E61697261;
  BatchNorm.$runningVariance.getter();
  v192 += object[12];
  v125 = 0;
  v126 = 0;
  v127 = v195;
  do
  {
    v209 = v125;
    v128 = v182;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v204 + v208 * v126, v182, &demangling cache variable for type metadata for (name: String, state: LayerState));
    v212._countAndFlagsBits = *v128;
    v129 = v128[1];
    v130 = v127 + *(v203._object + 12);
    *v127 = v212._countAndFlagsBits;
    v127[1] = v129;
    v131 = type metadata accessor for LayerState(0);
    v132 = *(v131 - 8);
    (*(v132 + 32))(v130, v192, v131);
    *&v197 = v203._countAndFlagsBits;
    *(&v197 + 1) = v202;
    v202;
    v129;
    v133._countAndFlagsBits = 46;
    v133._object = 0xE100000000000000;
    String.append(_:)(v133);
    v133._countAndFlagsBits = v212._countAndFlagsBits;
    v133._object = v129;
    String.append(_:)(v133);
    v129;
    v212._countAndFlagsBits = *(&v197 + 1);
    v214._countAndFlagsBits = v197;
    v134 = v181;
    outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v195, v181, &demangling cache variable for type metadata for (name: String, state: LayerState));
    v133._countAndFlagsBits = *(v134 + 8);
    v133._countAndFlagsBits;
    v135 = v134 + *(v203._object + 12);
    LayerState.value.getter(v133._countAndFlagsBits);
    (*(v132 + 8))(v135, v131);
    Tensor.shape.getter();
    v136 = TensorShape.dimensions.getter();
    v137 = *(v136 + 16);
    if (v137)
    {
      v138 = 0;
      v139 = 1;
      v140 = v211;
      do
      {
        v141 = v139;
        v139 *= *(v136 + 8 * v138 + 32);
        if (!is_mul_ok(*(v136 + 8 * v138 + 32), v141))
        {
          BUG();
        }

        ++v138;
      }

      while (v137 != v138);
    }

    else
    {
      v139 = 1;
      v140 = v211;
    }

    v136;
    v169(v188, v186);
    v142 = alloca(24);
    v143 = alloca(32);
    v144 = v189;
    v163 = v189;
    v210 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v139, a9, v162);
    v211 = v140;
    v170(v144, v187);
    v145 = v213;
    v146 = swift_isUniquelyReferenced_nonNull_native(v213);
    *&v197 = v145;
    v148 = specialized __RawDictionaryStorage.find<A>(_:)(v214._countAndFlagsBits, v212._countAndFlagsBits);
    v149 = (v147 & 1) == 0;
    v101 = __OFADD__(*(v145 + 16), v149);
    v150 = *(v145 + 16) + v149;
    if (v101)
    {
      BUG();
    }

    v151 = v147;
    __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, [Double]>);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v146, v150))
    {
      countAndFlagsBits = v212._countAndFlagsBits;
      v148 = specialized __RawDictionaryStorage.find<A>(_:)(v214._countAndFlagsBits, v212._countAndFlagsBits);
      LOBYTE(v106) = v106 & 1;
      if ((v151 & 1) != v106)
      {
        goto LABEL_42;
      }
    }

    v152 = v197;
    v213 = v197;
    if (v151)
    {
      v153 = *(v197 + 56);
      *(v153 + 8 * v148);
      *(v153 + 8 * v148) = v210;
      v212._countAndFlagsBits;
    }

    else
    {
      *(v197 + 8 * (v148 >> 6) + 64) |= 1 << v148;
      v154 = v152[6];
      v155 = 16 * v148;
      *(v154 + v155) = v214._countAndFlagsBits;
      *(v154 + v155 + 8) = v212._countAndFlagsBits;
      *(v152[7] + 8 * v148) = v210;
      v156 = v152[2];
      v101 = __OFADD__(1, v156);
      v157 = v156 + 1;
      if (v101)
      {
        BUG();
      }

      v152[2] = v157;
    }

    v127 = v195;
    v125 = outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v195, &demangling cache variable for type metadata for (name: String, state: LayerState));
    v126 = 1;
    LOBYTE(v125) = 1;
  }

  while ((v209 & 1) == 0);
  swift_setDeallocating(v205);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  return v213;
}

unint64_t specialized Dense.getStatesDictionary<A, B>(_:layerName:optimizer:parameterKeyPathLookup:)(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t *), uint64_t (*a7)(void, uint64_t), uint64_t (*a8)(_BYTE *, void, void), void (*a9)(void *, uint64_t *), uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t a12, uint64_t (*a13)(uint64_t *), uint64_t (*a14)(uint64_t *))
{
  v170 = a6;
  v171 = v14;
  v172 = v15;
  v154 = a5;
  v155 = a4;
  v173 = a3;
  v167._countAndFlagsBits = a2;
  v156 = a1;
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Parameter?) - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v151 = v145;
  v160 = type metadata accessor for Parameter(0);
  v167._object = *(v160 - 8);
  v19 = *(v167._object + 8);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v163 = v145;
  v22 = alloca(v19);
  v23 = alloca(v19);
  v168 = v145;
  v166 = type metadata accessor for TensorShape(0);
  v174 = *(v166 - 8);
  v24 = *(v174 + 8);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v158 = v145;
  v27 = alloca(v24);
  v28 = alloca(v24);
  *&v175 = v145;
  v29 = alloca(v24);
  v30 = alloca(v24);
  v161 = type metadata accessor for Tensor(0);
  v164 = *(v161 - 8);
  v31 = *(v164 + 64);
  v32 = alloca(v31);
  v33 = alloca(v31);
  v169 = v145;
  v34 = alloca(v31);
  v35 = alloca(v31);
  v36 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v36, v145);
  *(inited + 16) = 2;
  *(inited + 24) = 4;
  *&v159[0] = a2;
  *(&v159[0] + 1) = v173;
  v173;
  v38._countAndFlagsBits = 0x7468676965772ELL;
  v38._object = 0xE700000000000000;
  String.append(_:)(v38);
  *(inited + 32) = v159[0];
  Dense.weight.getter();
  Tensor.shape.getter();
  v39 = TensorShape.contiguousSize.getter();
  v40 = *(v174 + 1);
  v153 = v145;
  v157 = v40;
  v40(v145, v166);
  v149 = v145;
  v41 = v171;
  v42 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v39, v170, v148);
  v174 = v41;
  v164 = *(v164 + 8);
  v152 = v145;
  (v164)(v145, v161);
  *(inited + 48) = v42;
  *&v159[0] = v167._countAndFlagsBits;
  *(&v159[0] + 1) = v173;
  v173;
  v38._countAndFlagsBits = 0x2E7468676965772ELL;
  v38._object = 0xED00006570616873;
  String.append(_:)(v38);
  v150 = inited;
  *(inited + 56) = v159[0];
  v43 = v169;
  Dense.weight.getter();
  Tensor.shape.getter();
  v38._countAndFlagsBits = v43;
  v44 = v166;
  (v164)(v38._countAndFlagsBits, v161);
  v45 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(&lazy protocol witness table cache variable for type TensorShape and conformance TensorShape, &type metadata accessor for TensorShape, &protocol conformance descriptor for TensorShape);
  v46 = dispatch thunk of Collection.count.getter(v44, v45);
  v171 = v45;
  if (v46)
  {
    v47 = v46;
    v165 = _swiftEmptyArrayStorage;
    v48 = 0;
    if (v46 > 0)
    {
      v48 = v46;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v169 = v165;
    dispatch thunk of Collection.startIndex.getter(v44, v171);
    if (v47 < 0)
    {
      BUG();
    }

    v170 = v47;
    v49 = v171;
    v50 = v169;
    v51 = v166;
    do
    {
      v52 = v49;
      v53 = v51;
      v54 = dispatch thunk of Collection.subscript.read(v159, v162, v51, v52);
      v56 = *v55;
      v54(v159, 0);
      v165 = v50;
      v57 = v53;
      v58 = v50[2];
      v59 = v58 + 1;
      if (v50[3] >> 1 <= v58)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v50[3] >= 2uLL, v59, 1);
        v57 = v166;
        v50 = v165;
      }

      v50[2] = v59;
      *&v50[v58 + 4] = v56;
      v60 = v175;
      v61 = v57;
      v49 = v171;
      dispatch thunk of Collection.formIndex(after:)(v162, v57, v171);
      v62 = v170 == (&dword_0 + 1);
      v170 = (v170 - 1);
      v51 = v61;
    }

    while (!v62);
    v63 = v60;
  }

  else
  {
    v50 = _swiftEmptyArrayStorage;
    v63 = v175;
    v51 = v44;
  }

  v157(v63, v51);
  v64 = v150;
  *(v150 + 72) = v50;
  v65 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  *&v175 = Dictionary.init(dictionaryLiteral:)(v64, &type metadata for String, v65, &protocol witness table for String);
  v66 = v154;
  if (v154 && (v67 = v168, Dense.$weight.getter(), v68 = Parameter.id.getter(v64), v69 = *(v167._object + 1), (v69)(v67, v160), (v70 = a7(v68, v66)) != 0))
  {
    v168 = v70;
    v169 = v69;
  }

  else
  {
    v71 = v168;
    Dense.$weight.getter();
    v72 = a10(0);
    v73 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
    v74 = v156;
    v75 = Layer.parameterKeyPaths(recursively:)(1, v72, v73);
    v76 = alloca(32);
    v77 = alloca(32);
    v146 = v74;
    v147 = v71;
    v78 = v71;
    v79 = v174;
    v80 = specialized Sequence.first(where:)(a14, v145, v75);
    v174 = v79;
    v75;
    v81 = *(v167._object + 1);
    (v81)(v78, v160);
    v168 = v80;
    if (!v80)
    {
      v175;
      *&v159[0] = 0;
      *(&v159[0] + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v120._object = "zed in the observation" + 0x8000000000000000;
      v120._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v120);
      v120._countAndFlagsBits = v167._countAndFlagsBits;
      v120._object = v173;
      String.append(_:)(v120);
      v120._object = ".optimizer.velocity.shape" + 0x8000000000000000;
      v90 = 0xD00000000000001DLL;
      v120._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v120);
      v175 = v159[0];
      v120._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v120._object, 0, 0);
      *v121 = v175;
      *(v121 + 16) = 0;
      *(v121 + 32) = 0;
      *(v121 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v120._object);
      return v90;
    }

    v169 = v81;
  }

  *&v159[0] = v167._countAndFlagsBits;
  *(&v159[0] + 1) = v173;
  v173;
  v82._countAndFlagsBits = 0x7468676965772ELL;
  v82._object = 0xE700000000000000;
  String.append(_:)(v82);
  v83 = *(&v159[0] + 1);
  v84 = a8(v168, *&v159[0], *(&v159[0] + 1));
  v83;
  v85 = v175;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v175);
  *&v159[0] = v85;
  v87 = v174;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v84, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v159);
  v170 = v87;
  *&v175 = *&v159[0];
  v88 = v151;
  Dense.$bias.getter();
  v89 = v160;
  if (__swift_getEnumTagSinglePayload(v88, 1, v160) == 1)
  {

    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v88, &demangling cache variable for type metadata for Parameter?);
    return v175;
  }

  else
  {
    (*(v167._object + 4))(v163, v88, v89);
    *&v159[0] = v167._countAndFlagsBits;
    *(&v159[0] + 1) = v173;
    v173;
    v91._countAndFlagsBits = 0x736169622ELL;
    v91._object = 0xE500000000000000;
    String.append(_:)(v91);
    v167._object = *(&v159[0] + 1);
    v172 = *&v159[0];
    v92 = v152;
    Parameter.value.getter(0x736169622ELL);
    v93 = v153;
    Tensor.shape.getter();
    v94 = TensorShape.contiguousSize.getter();
    v157(v93, v166);
    v95 = alloca(24);
    v96 = alloca(32);
    v146 = v92;
    v97 = v170;
    v98 = _sSa28_unsafeUninitializedCapacity16initializingWithSayxGSi_ySryxGz_SiztKXEtKcfCSd_Tt1g5(v94, a9, v145);
    v174 = v97;
    (v164)(v92, v161);
    v99 = v175;
    v100 = swift_isUniquelyReferenced_nonNull_native(v175);
    *&v159[0] = v99;
    v101 = v163;
    object = v167._object;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, v172, v167._object, v100);
    object;
    v161 = *&v159[0];
    *&v159[0] = v167._countAndFlagsBits;
    *(&v159[0] + 1) = v173;
    v173;
    v91._countAndFlagsBits = 0x68732E736169622ELL;
    v91._object = 0xEB00000000657061;
    String.append(_:)(v91);
    v167._object = *(&v159[0] + 1);
    v164 = *&v159[0];
    Parameter.shape.getter();
    v103 = v166;
    v104 = dispatch thunk of Collection.count.getter(v166, v171);
    if (v104)
    {
      v165 = _swiftEmptyArrayStorage;
      v107 = 0;
      if (v104 > 0)
      {
        v107 = v104;
      }

      v108 = v104;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107, 0);
      *&v175 = v165;
      dispatch thunk of Collection.startIndex.getter(v103, v171);
      if (v108 < 0)
      {
        BUG();
      }

      v109 = v108;
      v110 = v171;
      v111 = v175;
      do
      {
        v170 = v109;
        v112 = dispatch thunk of Collection.subscript.read(v159, v162, v103, v110);
        v172 = *v113;
        v112(v159, 0);
        v165 = v111;
        v114 = v110;
        v115 = v111[2];
        v116 = v115 + 1;
        v117 = v111;
        if (v111[3] >> 1 <= v115)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v111[3] >= 2uLL, v116, 1);
          v114 = v171;
          v117 = v165;
        }

        *&v175 = v117;
        v118 = v172;
        v117[2] = v116;
        *&v117[v115 + 4] = v118;
        v110 = v114;
        dispatch thunk of Collection.formIndex(after:)(v162, v103, v114);
        v109 = (v170 - 1);
        v106 = v162;
        v111 = v175;
      }

      while (v170 != (&dword_0 + 1));
      v119 = v163;
    }

    else
    {
      v119 = v101;
      v111 = _swiftEmptyArrayStorage;
    }

    (v157)(v158, v166, v105, v106);
    v122 = v161;
    v123 = swift_isUniquelyReferenced_nonNull_native(v161);
    *&v159[0] = v122;
    v124 = v167._object;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v111, v164, v167._object, v123);
    v125 = v124;
    v124;
    *&v175 = *&v159[0];
    v126 = v154;
    if (v154 && (v127 = Parameter.id.getter(v125), (v128 = a7(v127, v126)) != 0))
    {
      v129 = v128;
    }

    else
    {
      v130 = a10(0);
      v131 = lazy protocol witness table accessor for type VNImageOption and conformance VNImageOption(a11, a10, a12);
      v132 = v156;
      v133 = Layer.parameterKeyPaths(recursively:)(1, v130, v131);
      v134 = alloca(32);
      v135 = alloca(32);
      v146 = v132;
      v147 = v119;
      v136 = v174;
      v129 = specialized Sequence.first(where:)(a13, v145, v133);
      v133;
      if (!v129)
      {

        *&v159[0] = 0;
        *(&v159[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(56);
        v142._object = "zed in the observation" + 0x8000000000000000;
        v90 = 0xD00000000000001BLL;
        v142._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v142);
        v142._countAndFlagsBits = v167._countAndFlagsBits;
        v142._object = v173;
        String.append(_:)(v142);
        v142._countAndFlagsBits = 0xD00000000000001BLL;
        String.append(_:)(v142);
        v175 = v159[0];
        v142._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
        swift_allocError(&type metadata for MLCreateError, v142._object, 0, 0);
        *v143 = v175;
        *(v143 + 16) = 0;
        *(v143 + 32) = 0;
        *(v143 + 48) = 2;
        swift_willThrow(&type metadata for MLCreateError, v142._object);

        (v169)(v163, v160);
        return v90;
      }

      v174 = v136;
    }

    *&v159[0] = v167._countAndFlagsBits;
    *(&v159[0] + 1) = v173;
    v173;
    v137._countAndFlagsBits = 0x736169622ELL;
    v137._object = 0xE500000000000000;
    String.append(_:)(v137);
    v138 = *(&v159[0] + 1);
    v139 = a8(v129, *&v159[0], *(&v159[0] + 1));
    v138;
    v140 = v175;
    v141 = swift_isUniquelyReferenced_nonNull_native(v175);
    *&v159[0] = v140;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v139, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, v141, v159);

    v90 = *&v159[0];
    (v169)(v163, v160);
  }

  return v90;
}

uint64_t specialized Adam.getParametersDictionary()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, [Double])>);
  inited = swift_initStackObject(v1, v14);
  *(inited + 16) = 6;
  *(inited + 24) = 12;
  strcpy((inited + 32), "learningRate");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
  v4 = swift_allocObject(v3, 40, 7);
  *(v4 + 16) = 1;
  *(v4 + 24) = 2;
  *(v4 + 32) = *v0;
  *(inited + 48) = v4;
  *(inited + 56) = 0x3161746562;
  *(inited + 64) = 0xE500000000000000;
  v5 = swift_allocObject(v3, 40, 7);
  *(v5 + 16) = 1;
  *(v5 + 24) = 2;
  *(v5 + 32) = v0[1];
  *(inited + 72) = v5;
  *(inited + 80) = 0x3261746562;
  *(inited + 88) = 0xE500000000000000;
  v6 = swift_allocObject(v3, 40, 7);
  *(v6 + 16) = 1;
  *(v6 + 24) = 2;
  *(v6 + 32) = v0[2];
  *(inited + 96) = v6;
  *(inited + 104) = 0x47534D4173657375;
  *(inited + 112) = 0xEB00000000646172;
  v7 = swift_allocObject(v3, 40, 7);
  v7[2] = 1;
  v7[3] = 2;
  v8 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  if (Adam.usesAMSGrad.getter(v8))
  {
    v9 = 0x3FF0000000000000;
  }

  else
  {
    v9 = 0;
  }

  v7[4] = v9;
  *(inited + 120) = v7;
  *(inited + 128) = 0x6E6F6C69737065;
  *(inited + 136) = 0xE700000000000000;
  v10 = swift_allocObject(v3, 40, 7);
  *(v10 + 16) = 1;
  *(v10 + 24) = 2;
  *(v10 + 32) = v0[3];
  *(inited + 144) = v10;
  strcpy((inited + 152), "gradientScale");
  *(inited + 166) = -4864;
  v11 = swift_allocObject(v3, 40, 7);
  *(v11 + 16) = 1;
  *(v11 + 24) = 2;
  *(v11 + 32) = *(v0 + *(v8 + 56));
  *(inited + 168) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  return Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v12, &protocol witness table for String);
}

uint64_t specialized Adam.getStatesDictionary(for:name:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v55 = a3;
  v54 = a2;
  v53 = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>?) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v51 = &v42;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Tensor?) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v50 = &v42;
  v11 = alloca(v8);
  v12 = alloca(v8);
  v43 = &v42;
  v13 = alloca(v8);
  v14 = alloca(v8);
  v15 = type metadata accessor for Tensor(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v47 = &v42;
  v20 = alloca(v17);
  v21 = alloca(v17);
  v45 = &v42;
  v22 = alloca(v17);
  v23 = alloca(v17);
  v46 = &v42;
  v24 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Double]);
  v56 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v24, &protocol witness table for String);
  v49 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Adam<MLActivityClassifier.Model>);
  v25 = v49[16];
  v48 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>);
  OptimizerStateDictionary.subscript.getter(v53, v44);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v42, 1, v15);
  v52 = v16;
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v42, &demangling cache variable for type metadata for Tensor?);
  }

  else
  {
    v27 = v46;
    (*(v16 + 32))(v46, &v42, v15);
    Dictionary<>.updateValue(tensor:forKey:prefix:)(v27, v54, v55, 0x6D6F4D7473726966, 0xEC00000073746E65);
    (*(v16 + 8))(v27, v15);
  }

  v28 = v48 + v49[17];
  v29 = v43;
  v30 = v44;
  OptimizerStateDictionary.subscript.getter(v53, v44);
  if (__swift_getEnumTagSinglePayload(v29, 1, v15) == 1)
  {
    v31 = v15;
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v29, &demangling cache variable for type metadata for Tensor?);
  }

  else
  {
    v32 = v45;
    v33 = v29;
    v34 = v52;
    (*(v52 + 32))(v45, v33, v15);
    Dictionary<>.updateValue(tensor:forKey:prefix:)(v32, v54, v55, 0x6F4D646E6F636573, 0xED000073746E656DLL);
    v35 = v32;
    v31 = v15;
    (*(v34 + 8))(v35, v15);
  }

  v36 = v51;
  outlined init with copy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v49[18] + v48, v51, &demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>?);
  if (__swift_getEnumTagSinglePayload(v36, 1, v30) == 1)
  {
    outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for OptimizerStateDictionary<MLActivityClassifier.Model>?);
    v37 = v50;
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v31);
  }

  else
  {
    v37 = v50;
    OptimizerStateDictionary.subscript.getter(v53, v30);
    (*(*(v30 - 8) + 8))(v36, v30);
    if (__swift_getEnumTagSinglePayload(v37, 1, v31) != 1)
    {
      v38 = v47;
      v39 = v37;
      v40 = v52;
      (*(v52 + 32))(v47, v39, v31);
      Dictionary<>.updateValue(tensor:forKey:prefix:)(v38, v54, v55, 0xD000000000000014, "usesNesterovMomentum" + 0x8000000000000000);
      (*(v40 + 8))(v38, v31);
      return v56;
    }
  }

  outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v37, &demangling cache variable for type metadata for Tensor?);
  return v56;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  a3;
  a5;
  return a2;
}

uint64_t specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  a3;
  a4;
  return a2;
}

void *specialized LazyMapSequence.makeIterator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return specialized LazyMapSequence.makeIterator()(a1, a2, a3);
}

{
  v4 = -(-1 << *(a1 + 32));
  v5 = ~(-1 << v4);
  if (v4 >= 64)
  {
    v5 = -1;
  }

  v6 = *(a1 + 64) & v5;
  v7 = ~(-1 << *(a1 + 32));
  *result = a1;
  result[1] = a1 + 64;
  result[2] = v7;
  result[3] = 0;
  result[4] = v6;
  result[5] = a2;
  result[6] = a3;
  return result;
}

{
  return specialized LazyMapSequence.makeIterator()(a1, a2, a3);
}

BOOL specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(uint64_t *a1, uint64_t a2, int a3)
{
  return specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(*a1, a2, a3);
}

{
  return specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(a1, a2, a3);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)(uint64_t *a1)
{
  v2 = v1;
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(v6, *a1, a1[1], a1[2]);
  v4 = v6[0];
  *v2 = result;
  v2[1] = v5;
  v2[2] = v4;
  return result;
}

{
  v2 = v1;
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(&v6, *a1, a1[1], a1[2], a1[3]);
  v4 = v6;
  *v2 = result;
  *(v2 + 8) = v5;
  *(v2 + 16) = v4;
  return result;
}

BOOL partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(uint64_t *a1)
{
  return specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return partial apply for specialized closure #1 in Layer.parameterKeyPath(forParameterWithId:)(a1);
}

uint64_t *closure #1 in Tensor.doubleArray()partial apply(uint64_t a1, uint64_t *a2)
{
  return partial apply for closure #1 in Tensor.doubleArray()(a1, a2);
}

{
  return partial apply for closure #1 in Tensor.doubleArray()(a1, a2);
}

char specialized Sequence<>.contains(_:)(__int128 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    if (a1 == *(a2 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(a2 + 32), *(a2 + 40), a1, *(&a1 + 1), 0) & 1) != 0)
    {
      return 1;
    }

    if (v2 != 1)
    {
      v5 = (a2 + 56);
      v6 = 1;
      while (1)
      {
        if (__OFADD__(1, v6++))
        {
          BUG();
        }

        if (a1 == *(v5 - 1) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v5 - 1), *v5, a1, *(&a1 + 1), 0) & 1) != 0)
        {
          break;
        }

        v5 += 2;
        result = 0;
        if (v6 == v2)
        {
          return result;
        }
      }

      return 1;
    }
  }

  return 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 1;
  if (*(a2 + 32) == a1)
  {
    return result;
  }

  if (v2 == 1)
  {
    return 0;
  }

  v4 = 5;
  do
  {
    v5 = v4 - 4 + 1;
    if (__OFADD__(1, v4 - 4))
    {
      BUG();
    }

    result = *(a2 + 8 * v4) == a1;
    if (*(a2 + 8 * v4) == a1)
    {
      break;
    }

    ++v4;
  }

  while (v5 != v2);
  return result;
}

uint64_t _s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSS_Tt0g5(Swift::String a1)
{
  LODWORD(v1) = 0;
  v15 = type metadata accessor for AnyColumn(0);
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v14;
  v6 = DataFrame.indexOfColumn(_:)(a1);
  if (!v6.is_nil)
  {
    value = v6.value;
    v8 = DataFrame.columns.getter();
    if (value < 0)
    {
      BUG();
    }

    v1 = v8;
    if (value >= *(v8 + 16))
    {
      BUG();
    }

    v9 = v16;
    v10 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v8 + *(v2 + 72) * value;
    v11 = v15;
    (*(v2 + 16))(v16, v10, v15);
    v1, v10;
    v12 = AnyColumn.wrappedElementType.getter();
    (*(v2 + 8))(v9, v11);
    LOBYTE(v1) = v12 == &type metadata for String;
  }

  return v1;
}

uint64_t _s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSi_Tt0g5(Swift::String a1)
{
  LODWORD(v1) = 0;
  v15 = type metadata accessor for AnyColumn(0);
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v14;
  v6 = DataFrame.indexOfColumn(_:)(a1);
  if (!v6.is_nil)
  {
    value = v6.value;
    v8 = DataFrame.columns.getter();
    if (value < 0)
    {
      BUG();
    }

    v1 = v8;
    if (value >= *(v8 + 16))
    {
      BUG();
    }

    v9 = v16;
    v10 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v8 + *(v2 + 72) * value;
    v11 = v15;
    (*(v2 + 16))(v16, v10, v15);
    v1, v10;
    v12 = AnyColumn.wrappedElementType.getter();
    (*(v2 + 8))(v9, v11);
    LOBYTE(v1) = v12 == &type metadata for Int;
  }

  return v1;
}

uint64_t _s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSay8CreateML11MLDataValueOG_Tt0g5(Swift::String a1)
{
  LODWORD(v1) = 0;
  v15 = type metadata accessor for AnyColumn(0);
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v16 = &v14;
  v6 = DataFrame.indexOfColumn(_:)(a1);
  if (!v6.is_nil)
  {
    value = v6.value;
    v8 = DataFrame.columns.getter();
    if (value < 0)
    {
      BUG();
    }

    v1 = v8;
    if (value >= *(v8 + 16))
    {
      BUG();
    }

    v9 = v16;
    v10 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + v8 + *(v2 + 72) * value;
    v11 = v15;
    (*(v2 + 16))(v16, v10, v15);
    v1;
    v12 = AnyColumn.wrappedElementType.getter();
    (*(v2 + 8))(v9, v11);
    LOBYTE(v1) = v12 == __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
  }

  return v1;
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v26 = v3;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v19);
  *(inited + 16) = v5;
  v25 = inited;
  *(inited + 24) = 1;
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    v24 = a1;
    if (a1 > 0)
    {
      v9 = a1;
    }

    v23 = v9;
    do
    {
      if (v23 == v8)
      {
        BUG();
      }

      v21[3] = &type metadata for Int;
      v21[4] = &protocol witness table for Int;
      v21[0] = v22;
      v10 = __swift_project_boxed_opaque_existential_0Tm(v21, &type metadata for Int);
      v11 = specialized handling<A, B>(_:_:)(*v10);
      if (v2)
      {
        swift_unexpectedError(v2, "CreateML/MLDataValueConvertible.swift", 37, 1, 100);
        BUG();
      }

      v12 = v11;
      if (!v11)
      {
        BUG();
      }

      v13 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v13, v20);
      v14 = CMLFeatureValue.init(rawValue:ownsValue:)(v12, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      CMLSequence.append(_:)(v14);
      ++v8;
    }

    while (v24 != v8);
  }

  type metadata accessor for CMLColumn();
  v15 = CMLColumn.__allocating_init(_:type:)(v25, 0);
  v16 = v26;
  if (v2)
  {
    v17 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v16, v17, 24, 7);
  }

  else
  {
    *(v26 + 16) = v15;
  }

  return v16;
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v33 = a3;
  v27 = a2;
  v6 = tc_v1_flex_list_create(0);
  if (!v6)
  {
    BUG();
  }

  v7 = v6;
  v32 = v4;
  v8 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v8, v23);
  *(inited + 16) = v7;
  v31 = inited;
  *(inited + 24) = 1;
  if (a1)
  {
    v10 = 0;
    v29 = type metadata accessor for CMLFeatureValue();
    v11 = 0;
    v30 = a1;
    if (a1 > 0)
    {
      v11 = a1;
    }

    v28 = v11;
    do
    {
      if (v28 == v10)
      {
        BUG();
      }

      v26 = v10;
      v24[3] = &type metadata for String;
      v24[4] = &protocol witness table for String;
      v24[0] = v27;
      v25 = v5;
      v12 = v33;
      v24[1] = v33;
      v13 = __swift_project_boxed_opaque_existential_0Tm(v24, &type metadata for String);
      v14 = *v13;
      v15 = v13[1];
      swift_bridgeObjectRetain_n(v12, 2);
      v15;
      v16 = v25;
      v17 = CMLFeatureValue.__allocating_init(_:)(v14, v15);
      v5 = v16;
      if (v16)
      {
        swift_unexpectedError(v16, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
        BUG();
      }

      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      CMLSequence.append(_:)(v18);
      v10 = v26 + 1;

      v33;
    }

    while (v30 != v10);
  }

  v33;
  type metadata accessor for CMLColumn();
  v19 = CMLColumn.__allocating_init(_:type:)(v31, 2);
  v20 = v32;
  if (v5)
  {
    v21 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v20, v21, 24, 7);
  }

  else
  {
    *(v32 + 16) = v19;
  }

  return v20;
}

uint64_t specialized _UntypedColumn.init<A>(_:)(uint64_t a1)
{
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v24 = v2;
  v5 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v5, v18);
  *(inited + 16) = v4;
  v23 = inited;
  *(inited + 24) = 1;
  v22 = a1;
  v21 = *(a1 + 16);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      v8 = *(v22 + 8 * i + 32);
      v20[3] = &type metadata for Double;
      v20[4] = &protocol witness table for Double;
      v20[0] = v8;
      v9 = *__swift_project_boxed_opaque_existential_0Tm(v20, &type metadata for Double);
      v10 = specialized handling<A, B>(_:_:)();
      if (v1)
      {
        swift_unexpectedError(v1, "CreateML/MLDataValueConvertible.swift", 37, 1, 153);
        BUG();
      }

      v11 = v10;
      if (!v10)
      {
        BUG();
      }

      v12 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v12, v19);
      v13 = CMLFeatureValue.init(rawValue:ownsValue:)(v11, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      CMLSequence.append(_:)(v13);
      v13;
    }
  }

  v22;
  type metadata accessor for CMLColumn();
  v14 = CMLColumn.__allocating_init(_:type:)(v23, 1);
  v15 = v24;
  if (v1)
  {
    v16 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v15, v16, 24, 7);
  }

  else
  {
    *(v24 + 16) = v14;
  }

  return v15;
}

{
  v3 = tc_v1_flex_list_create(0);
  if (!v3)
  {
    BUG();
  }

  v4 = v3;
  v24 = v2;
  v5 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v5, v18);
  *(inited + 16) = v4;
  v23 = inited;
  *(inited + 24) = 1;
  v22 = a1;
  v21 = *(a1 + 16);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      v8 = *(v22 + 8 * i + 32);
      v20[3] = &type metadata for Int;
      v20[4] = &protocol witness table for Int;
      v20[0] = v8;
      v9 = __swift_project_boxed_opaque_existential_0Tm(v20, &type metadata for Int);
      v10 = specialized handling<A, B>(_:_:)(*v9);
      if (v1)
      {
        swift_unexpectedError(v1, "CreateML/MLDataValueConvertible.swift", 37, 1, 100);
        BUG();
      }

      v11 = v10;
      if (!v10)
      {
        BUG();
      }

      v12 = type metadata accessor for CMLFeatureValue();
      swift_initStackObject(v12, v19);
      v13 = CMLFeatureValue.init(rawValue:ownsValue:)(v11, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      CMLSequence.append(_:)(v13);
      v13;
    }
  }

  v22;
  type metadata accessor for CMLColumn();
  v14 = CMLColumn.__allocating_init(_:type:)(v23, 0);
  v15 = v24;
  if (v1)
  {
    v16 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v15, v16, 24, 7);
  }

  else
  {
    *(v24 + 16) = v14;
  }

  return v15;
}

{
  v3 = v1;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v31 = v2;
  v6 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v6, v22);
  *(inited + 16) = v5;
  v30 = inited;
  *(inited + 24) = 1;
  v8 = *(a1 + 16);
  v29 = a1;
  if (v8)
  {
    v27 = type metadata accessor for CMLFeatureValue();
    v9 = (a1 + 40);
    do
    {
      v24 = v3;
      v25 = v8;
      v10 = *(v9 - 1);
      v26 = v9;
      v11 = *v9;
      v23[3] = &type metadata for String;
      v23[4] = &protocol witness table for String;
      v23[0] = v10;
      v23[1] = v11;
      v12 = __swift_project_boxed_opaque_existential_0Tm(v23, &type metadata for String);
      v13 = *v12;
      v14 = v12[1];
      v28 = v11;
      swift_bridgeObjectRetain_n(v11, 2);
      v14;
      v15 = v24;
      v16 = CMLFeatureValue.__allocating_init(_:)(v13, v14);
      v3 = v15;
      if (v15)
      {
        swift_unexpectedError(v15, "CreateML/MLDataValueConvertible.swift", 37, 1, 170);
        BUG();
      }

      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      CMLSequence.append(_:)(v17);
      v17;
      v28;
      v9 = v26 + 2;
      v8 = v25 - 1;
    }

    while (v25 != 1);
  }

  v29;
  type metadata accessor for CMLColumn();
  v18 = CMLColumn.__allocating_init(_:type:)(v30, 2);
  v19 = v31;
  if (v3)
  {
    v20 = type metadata accessor for _UntypedColumn();
    swift_deallocPartialClassInstance(v19, v20, 24, 7);
  }

  else
  {
    *(v31 + 16) = v18;
  }

  return v19;
}

{
  v44 = v2;
  v3 = a1;
  v4 = tc_v1_flex_list_create(0);
  if (!v4)
  {
    BUG();
  }

  v5 = v4;
  v37 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v37, v30);
  *(inited + 16) = v5;
  v45 = inited;
  *(inited + 24) = 1;
  v38 = *(a1 + 16);
  if (v38)
  {
    v7 = 0;
    v42 = type metadata accessor for CMLFeatureValue();
    v39 = a1;
    while (1)
    {
      if (v7 >= *(v3 + 16))
      {
        BUG();
      }

      v36 = v7;
      v8 = *(v3 + 8 * v7 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [Int]);
      v33[3] = v9;
      v33[4] = lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &demangling cache variable for type metadata for [Int], &protocol witness table for Int, &protocol conformance descriptor for <A> [A]);
      v33[0] = v8;
      v10 = *__swift_project_boxed_opaque_existential_0Tm(v33, v9);
      v43 = v8;
      swift_bridgeObjectRetain_n(v8, 2);
      v11 = tc_v1_flex_list_create(0);
      if (!v11)
      {
        BUG();
      }

      v12 = v11;
      v13 = swift_initStackObject(v37, v31);
      *(v13 + 16) = v12;
      v40 = v13;
      *(v13 + 24) = 1;
      v35 = *(v10 + 16);
      if (v35)
      {
        break;
      }

LABEL_12:
      v20 = CMLFeatureValue.__allocating_init(_:)(v40);
      v3 = v39;
      if (v1)
      {
        v27 = "CreateML/SequenceType.swift";
        v28 = 27;
        v29 = 151;
        goto LABEL_22;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      CMLSequence.append(_:)(v21);
      v7 = v36 + 1;

      v43;
      if (v7 == v38)
      {
        goto LABEL_14;
      }
    }

    v41 = v10;
    v10;
    v14 = 0;
    while (1)
    {
      v15 = *(v41 + 8 * v14 + 32);
      v34[3] = &type metadata for Int;
      v34[4] = &protocol witness table for Int;
      v34[0] = v15;
      v16 = __swift_project_boxed_opaque_existential_0Tm(v34, &type metadata for Int);
      v17 = specialized handling<A, B>(_:_:)(*v16);
      if (v1)
      {
        break;
      }

      v18 = v17;
      if (!v17)
      {
        BUG();
      }

      swift_initStackObject(v42, v32);
      v19 = CMLFeatureValue.init(rawValue:ownsValue:)(v18, 1);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      CMLSequence.append(_:)(v19);
      ++v14;

      if (v35 == v14)
      {
        v41;
        goto LABEL_12;
      }
    }

    v27 = "CreateML/MLDataValueConvertible.swift";
    v28 = 37;
    v29 = 100;
LABEL_22:
    swift_unexpectedError(v1, v27, v28, 1, v29);
    BUG();
  }

LABEL_14:
  v3;
  type metadata accessor for CMLColumn();
  v22 = CMLColumn.__allocating_init(_:type:)(v45, 3);
  if (v1)
  {
    v25 = type metadata accessor for _UntypedColumn();
    v26 = v44;
    swift_deallocPartialClassInstance(v44, v25, 24, 7);
    return v26;
  }

  else
  {
    v23 = v44;
    *(v44 + 16) = v22;
    return v23;
  }
}

{
  v3 = v1;
  v51 = v2;
  v4 = a1;
  v5 = tc_v1_flex_list_create(0);
  if (!v5)
  {
    BUG();
  }

  v6 = v5;
  v45 = type metadata accessor for CMLSequence();
  inited = swift_initStackObject(v45, v36);
  *(inited + 16) = v6;
  v52 = inited;
  *(inited + 24) = 1;
  v46 = *(a1 + 16);
  if (v46)
  {
    v8 = 0;
    v48 = type metadata accessor for CMLFeatureValue();
    v50 = a1;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        BUG();
      }

      v53 = v3;
      v9 = *(v4 + 8 * v8 + 32);
      v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [String]);
      v38[3] = v10;
      v38[4] = lazy protocol witness table accessor for type [String : Double] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &demangling cache variable for type metadata for [String], &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
      v38[0] = v9;
      v11 = *__swift_project_boxed_opaque_existential_0Tm(v38, v10);
      v49 = v9;
      swift_bridgeObjectRetain_n(v9, 2);
      v12 = tc_v1_flex_list_create(0);
      if (!v12)
      {
        BUG();
      }

      v13 = v12;
      v43 = v8;
      v14 = swift_initStackObject(v45, v37);
      *(v14 + 16) = v13;
      v47 = v14;
      *(v14 + 24) = 1;
      v15 = *(v11 + 16);
      if (v15)
      {
        break;
      }

LABEL_11:
      v4 = v50;
      v25 = v53;
      v26 = CMLFeatureValue.__allocating_init(_:)(v47);
      v3 = v25;
      if (v25)
      {
        v33 = "CreateML/SequenceType.swift";
        v34 = 27;
        v35 = 151;
        goto LABEL_20;
      }

      v27 = v26;
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      CMLSequence.append(_:)(v27);
      v8 = v43 + 1;

      v49;
      if (v8 == v46)
      {
        goto LABEL_13;
      }
    }

    v11;
    v44 = v11;
    v16 = (v11 + 40);
    while (1)
    {
      v40 = v15;
      v17 = *(v16 - 1);
      v41 = v16;
      v18 = *v16;
      v39[3] = &type metadata for String;
      v39[4] = &protocol witness table for String;
      v39[0] = v17;
      v39[1] = v18;
      v19 = __swift_project_boxed_opaque_existential_0Tm(v39, &type metadata for String);
      v20 = *v19;
      v21 = v19[1];
      v42 = v18;
      swift_bridgeObjectRetain_n(v18, 2);
      v21;
      v22 = v53;
      v23 = CMLFeatureValue.__allocating_init(_:)(v20, v21);
      v3 = v22;
      if (v22)
      {
        break;
      }

      v24 = v23;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      CMLSequence.append(_:)(v24);
      v53 = 0;

      v42;
      v16 = v41 + 2;
      v15 = v40 - 1;
      if (v40 == 1)
      {
        v44;
        goto LABEL_11;
      }
    }

    v33 = "CreateML/MLDataValueConvertible.swift";
    v34 = 37;
    v35 = 170;
LABEL_20:
    swift_unexpectedError(v3, v33, v34, 1, v35);
    BUG();
  }

LABEL_13:
  v4;
  type metadata accessor for CMLColumn();
  v28 = CMLColumn.__allocating_init(_:type:)(v52, 3);
  if (v3)
  {
    v31 = type metadata accessor for _UntypedColumn();
    v32 = v51;
    swift_deallocPartialClassInstance(v51, v31, 24, 7);
    return v32;
  }

  else
  {
    v29 = v51;
    *(v51 + 16) = v28;
    return v29;
  }
}

uint64_t *specialized MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v24 = v8;
  v12 = swift_allocObject(a6, 32, 7);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  if (a5)
  {
    v23 = a4;
    outlined copy of Result<_DataTable, Error>(a4, 1);

    outlined copy of Result<_DataTable, Error>(a4, 1);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v14 = _getErrorEmbeddedNSError<A>(_:)(&v23, v13, &protocol self-conformance witness table for Error);
    if (v14)
    {
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(a4, 1);
    }

    else
    {
      v15 = swift_allocError(v13, &protocol self-conformance witness table for Error, 0, 0);
      *v21 = a4;
    }

    v20 = 1;
    v19 = a4;
  }

  else
  {
    v16 = *(a4 + 16);

    outlined copy of Result<_DataTable, Error>(a4, 0);
    v17 = CMLColumn.apply(transform:type:skipUndefined:)(a7, v12, a8, 0);
    v18 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v18, 24, 7);
    *(v15 + 16) = v17;
    v19 = a4;
    v20 = 0;
  }

  outlined consume of Result<_DataTable, Error>(v19, v20);

  result = v24;
  *v24 = v15;
  *(result + 8) = a5 & 1;
  return result;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v4 = a2;
  if (CMLFeatureValue.isUndefined.getter())
  {
    goto LABEL_6;
  }

  v22 = a3;
  v21 = a2;
  v5 = dynamic_cast_existential_1_unconditional(&type metadata for MLDataValue.DictionaryType, &type metadata for MLDataValue.DictionaryType, &protocol descriptor for FeatureValueConvertible);
  v7 = v6;
  v23 = *(v6 + 16);
  v25 = &v18;
  v24 = type metadata accessor for Optional(0, v5);
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);

  v23(a1, v5, v7);
  if (__swift_getEnumTagSinglePayload(&v18, 1, v5) == 1)
  {
    (*(v8 + 8))(&v18, v24);
    v19 = 0;
    v18 = 0;
    v20 = 0;
  }

  else
  {
    *(&v19 + 1) = v5;
    v20 = v7;
    v12 = __swift_allocate_boxed_opaque_existential_0(&v18);
    (*(*(v5 - 8) + 32))(v12, &v18, v5);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureValueConvertible?);
  v14 = swift_dynamicCast(v26, &v18, v13, &type metadata for MLDataValue.DictionaryType, 6);
  v4 = v21;
  if (!v14)
  {
LABEL_6:
    v26[0] = 0;
  }

  v4(v26);
  v15 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v16 = specialized MLDataValueConvertible.featureValue.getter(v18, *(&v18 + 1));
    v15;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v16 = CMLFeatureValue.__allocating_init()(0);
  }

  v26[0];
  return v16;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void))
{
  v2 = 0;
  if ((CMLFeatureValue.isUndefined.getter() & 1) == 0)
  {
    _s8CreateML22MLDataValueConvertiblePAAE12makeInstance07featureD0xSgAA010CMLFeatureD0C_tFZSS_Tt1g5(a1);
    v2 = v3;
  }

  a2();
  if (v10)
  {
    type metadata accessor for CMLFeatureValue();
    v4 = CMLFeatureValue.__allocating_init()(0);
  }

  else
  {
    v11 = &type metadata for Int;
    v12 = &protocol witness table for Int;
    v5 = __swift_project_boxed_opaque_existential_0Tm(&v9, &type metadata for Int);
    v6 = specialized handling<A, B>(_:_:)(*v5);
    if (!v6)
    {
      BUG();
    }

    v7 = type metadata accessor for CMLFeatureValue();
    swift_allocObject(v7, 25, 7);
    v4 = CMLFeatureValue.init(rawValue:ownsValue:)(v6, 1);
    __swift_destroy_boxed_opaque_existential_1Tm(&v9);
  }

  v2;
  return v4;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, void (*a2)(void *))
{
  v4[0] = a1;
  if (!a1)
  {
    BUG();
  }

  a1;
  a2(v4);
  v4[0], a2;
  return v3;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = a1;
  v7 = a2;
  if (!a2)
  {
    BUG();
  }

  a2;
  a3(&v6);
  v7, a2;
  return v5;
}

uint64_t static MLObjectDetectorMetrics.__evaluation(on:imageColumn:annotationColumn:predictionColumn:classes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v33 = v8;
  v31._countAndFlagsBits = a6;
  v28 = v7;
  v29 = type metadata accessor for DataFrame(0);
  v30 = *(v29 - 8);
  v11 = *(v30 + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = *(a1 + 8);
  v26 = *a1;
  v27 = v14;
  outlined copy of Result<_DataTable, Error>(v26, v14);
  DataFrame.init(_:)(&v26);
  v15._countAndFlagsBits = a4;
  v15._object = a5;
  if (_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSay8CreateML11MLDataValueOG_Tt0g5(v15))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
    v17 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
    v18 = v33;
    DataFrame.transformColumn<A, B>(_:_:)(a4, a5, specialized thunk for @callee_guaranteed (@guaranteed [MLDataValue]) -> (@owned [MLObjectDetector.ObjectAnnotation], @error @owned Error), 0, v16, v17);
    if (v18)
    {
      return (*(v30 + 8))(&v25, v29);
    }

    v33 = 0;
  }

  v32 = a4;
  v31._object = a5;
  countAndFlagsBits = v31._countAndFlagsBits;
  v20._countAndFlagsBits = v31._countAndFlagsBits;
  v20._object = a7;
  if ((_s11TabularData0B5FrameV14containsColumnySbSS_xmtlFSay8CreateML11MLDataValueOG_Tt0g5(v20) & 1) == 0)
  {
LABEL_7:
    static MLObjectDetectorMetrics.evaluation(on:annotationColumn:predictionColumn:)(&v25, v32, v31._object, countAndFlagsBits, a7);
    return (*(v30 + 8))(&v25, v29);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLDataValue]);
  v22 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
  v23 = v33;
  DataFrame.transformColumn<A, B>(_:_:)(countAndFlagsBits, a7, specialized thunk for @callee_guaranteed (@guaranteed [MLDataValue]) -> (@owned [MLObjectDetector.ObjectAnnotation], @error @owned Error), 0, v21, v22);
  if (!v23)
  {
    v33 = 0;
    countAndFlagsBits = v31._countAndFlagsBits;
    goto LABEL_7;
  }

  return (*(v30 + 8))(&v25, v29);
}

uint64_t static MLObjectDetectorMetrics.evaluation(on:annotationColumn:predictionColumn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = v6;
  v51 = a5;
  v52 = a4;
  v55 = v5;
  v8 = type metadata accessor for AnyColumn(0);
  v59 = *(v8 - 8);
  v9 = *(v59 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v58 = v48;
  v12 = alloca(v9);
  v13 = alloca(v9);
  v14 = v48;
  v15 = v8;
  v53 = a1;
  DataFrame.subscript.getter(a2, a3);
  v16 = lazy protocol witness table accessor for type AnyColumn and conformance AnyColumn();
  v17 = dispatch thunk of Collection.count.getter(v15, v16);
  v18 = v59;
  v19 = v17;
  v20 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v61 = v15;
  v57 = v16;
  if (v19)
  {
    v66 = _swiftEmptyArrayStorage;
    v21 = 0;
    if (v19 > 0)
    {
      v21 = v19;
    }

    v62 = v19;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    v67 = v66;
    v68 = v48;
    dispatch thunk of Collection.startIndex.getter(v15, v16);
    if (v62 < 0)
    {
      BUG();
    }

    v22 = 0;
    v63 = &type metadata for Any + 8;
    while (1)
    {
      v23 = __OFADD__(1, v22++);
      if (v23)
      {
        BUG();
      }

      v24 = dispatch thunk of Collection.subscript.read(v49, v64, v15, v16);
      outlined init with copy of Any?(v25, v48);
      v24(v49, 0);
      outlined init with copy of Any?(v48, v49);
      if (!v50)
      {
        break;
      }

      v26 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
      if (!swift_dynamicCast(&v56, v49, v63, v26, 6))
      {
        goto LABEL_14;
      }

      v60 = v56;
      outlined destroy of Any?(v48);
      v27 = v67;
      v66 = v67;
      v28 = v67[2];
      if (v67[3] >> 1 <= v28)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67[3] >= 2uLL, v28 + 1, 1);
        v27 = v66;
      }

      *(v27 + 16) = v28 + 1;
      v67 = v27;
      *(v27 + 8 * v28 + 32) = v60;
      v15 = v61;
      v16 = v57;
      dispatch thunk of Collection.formIndex(after:)(v64, v61, v57);
      if (v22 == v62)
      {
        v20 = v67;
        v18 = v59;
        v14 = v68;
        goto LABEL_15;
      }
    }

    outlined destroy of Any?(v49);
LABEL_14:
    v29 = v68;
    v30 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v30, 0, 0);
    *v31 = 0xD00000000000004CLL;
    *(v31 + 8) = "ce from prediction." + 0x8000000000000000;
    *(v31 + 16) = 0;
    *(v31 + 32) = 0;
    *(v31 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v30);
    outlined destroy of Any?(v48);

    return (*(v59 + 8))(v29, v61);
  }

  else
  {
LABEL_15:
    v67 = v20;
    v63 = *(v18 + 8);
    (v63)(v14, v15);
    v33 = v16;
    v34 = v58;
    DataFrame.subscript.getter(v52, v51);
    v35 = dispatch thunk of Collection.count.getter(v15, v33);
    if (v35)
    {
      v66 = _swiftEmptyArrayStorage;
      v36 = 0;
      if (v35 > 0)
      {
        v36 = v35;
      }

      v60 = v35;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
      v65 = v66;
      dispatch thunk of Collection.startIndex.getter(v15, v33);
      if (v60 < 0)
      {
        BUG();
      }

      v37 = 0;
      v62 = &type metadata for Any + 8;
      while (1)
      {
        v23 = __OFADD__(1, v37++);
        if (v23)
        {
          BUG();
        }

        v38 = dispatch thunk of Collection.subscript.read(v49, v64, v15, v57);
        outlined init with copy of Any?(v39, v48);
        v38(v49, 0);
        outlined init with copy of Any?(v48, v49);
        if (!v50)
        {
          break;
        }

        v40 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
        v41 = swift_dynamicCast(&v56, v49, v62, v40, 6);
        v42 = v65;
        if (!v41)
        {
          goto LABEL_28;
        }

        v68 = v56;
        outlined destroy of Any?(v48);
        v66 = v42;
        v43 = v42[2];
        if (v42[3] >> 1 <= v43)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v42[3] >= 2uLL, v43 + 1, 1);
          v42 = v66;
        }

        v42[2] = v43 + 1;
        v65 = v42;
        v42[v43 + 4] = v68;
        v34 = v58;
        v15 = v61;
        dispatch thunk of Collection.formIndex(after:)(v64, v61, v57);
        if (v37 == v60)
        {
          goto LABEL_26;
        }
      }

      outlined destroy of Any?(v49);
LABEL_28:
      v46 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v46, 0, 0);
      *v47 = 0xD00000000000004CLL;
      *(v47 + 8) = "ctDetector.ObjectAnnotation." + 0x8000000000000000;
      *(v47 + 16) = 0;
      *(v47 + 32) = 0;
      *(v47 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v46);
      outlined destroy of Any?(v48);
      v67;

      return (v63)(v58, v61);
    }

    else
    {
LABEL_26:
      (v63)(v34, v15);
      v44 = v67;
      v45 = v65;
      static MLObjectDetector.evaluation(on:detectedObjects:)(v67, v65);
      v44;
      return v45;
    }
  }
}

void *closure #1 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(uint64_t a1, __m128i a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = v2;
  v24 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  for (i = (a1 + 48); ; i += 24)
  {
    v21 = v3;
    if (*i != 4)
    {
      BUG();
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v20 = v6;
    swift_bridgeObjectRetain_n(v6, 3);
    v8 = v25;
    MLObjectDetector.DecodableAnnotation.init(from:)(&v20, a2);
    v25 = v8;
    if (v8)
    {
      break;
    }

    outlined consume of MLDataValue(v6, v7, 4);
    outlined consume of MLDataValue(v6, v7, 4);
    a2 = _mm_cvtps_pd(v18);
    v9 = _mm_cvtps_pd(v19);
    v10 = v16;
    v11 = v17;
    v24 = v4;
    v12 = v4[2];
    v13 = v4[3];
    if (v13 >> 1 <= v12)
    {
      v23 = v17;
      v22 = v16;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 >= 2, v12 + 1, 1);
      v11 = v23;
      v10 = v22;
      v4 = v24;
    }

    v4[2] = v12 + 1;
    v14 = 7 * v12;
    v4[v14 + 4] = v10;
    v4[v14 + 5] = v11;
    *&v4[v14 + 6] = a2;
    *&v4[v14 + 8] = v9;
    v4[v14 + 10] = 0x3FF0000000000000;
    v3 = v21 - 1;
    if (v21 == 1)
    {
      return v4;
    }
  }

  outlined consume of MLDataValue(v6, v7, 4);
  outlined consume of MLDataValue(v6, v7, 4);

  return v4;
}

void *specialized thunk for @callee_guaranteed (@guaranteed [MLDataValue]) -> (@owned [MLObjectDetector.ObjectAnnotation], @error @owned Error)(uint64_t *a1, __m128i a2)
{
  v4 = v2;
  result = closure #1 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(*a1, a2);
  if (!v3)
  {
    *v4 = result;
  }

  return result;
}

{
  v4 = v2;
  result = closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(*a1, a2);
  if (!v3)
  {
    *v4 = result;
  }

  return result;
}

void *closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(uint64_t a1, __m128i a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = _swiftEmptyArrayStorage;
  v6 = (a1 + 48);
  while (1)
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v30 = *(v6 - 2);
    v31 = v7;
    LOBYTE(v32) = v8;
    outlined copy of MLDataValue(v30, v7, v8);
    closure #1 in closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(&v30, &v23, a2);
    if (v3)
    {
      break;
    }

    v24 = 0;
    outlined consume of MLDataValue(v30, v31, v32);
    v9 = v18;
    v10 = v19;
    a2 = v20;
    v11 = v21;
    v12 = v22;
    v29 = v5;
    v13 = v5[2];
    v14 = v5[3];
    v15 = v13 + 1;
    if (v14 >> 1 <= v13)
    {
      v26 = v19;
      v25 = v18;
      v27 = v22;
      v28 = v13 + 1;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 >= 2, v15, 1);
      v15 = v28;
      v12 = v27;
      v11 = v21;
      a2 = v20;
      v10 = v26;
      v9 = v25;
      v5 = v29;
    }

    v5[2] = v15;
    v16 = 7 * v13;
    v5[v16 + 4] = v9;
    v5[v16 + 5] = v10;
    *&v5[v16 + 6] = a2;
    *&v5[v16 + 8] = v11;
    v5[v16 + 10] = v12;
    v6 += 24;
    --v4;
    v3 = v24;
    if (!v4)
    {
      return v5;
    }
  }

  outlined consume of MLDataValue(v30, v31, v32);

  return v5;
}

void *closure #1 in closure #2 in static MLObjectDetectorMetrics.convertToObjectAnnotationFrame(_:annotationColumn:predictionColumn:)(uint64_t a1, uint64_t *a2, __m128i a3)
{
  if (*(a1 + 16) != 4)
  {
    BUG();
  }

  v6 = *a1;
  if (!*(*a1 + 16))
  {
    goto LABEL_9;
  }

  v7 = v3;
  v29 = v4;
  v8 = *(a1 + 8);
  outlined copy of MLDataValue(v6, v8, 4u);
  v6;
  *&v9 = 0x6E656469666E6F63;
  *(&v9 + 1) = 0xEA00000000006563;
  specialized __RawDictionaryStorage.find<A>(_:)(v9, 2, *a3.i64);
  if ((v11 & 1) == 0)
  {
    outlined consume of MLDataValue(v6, v8, 4);
    outlined consume of MLDataValue(v6, v8, 4);
LABEL_9:
    v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v17 = swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
    *v18 = 0xD000000000000023;
    *(v18 + 8) = " the regressor metrics" + 0x8000000000000000;
    *(v18 + 16) = 0;
    *(v18 + 32) = 0;
    *(v18 + 48) = 0;
    result = swift_willThrow(&type metadata for MLCreateError, v16);
LABEL_19:
    *a2 = v17;
    return result;
  }

  v28 = v7;
  v30 = a2;
  v12 = v6[7];
  v13 = 24 * v10;
  v14 = *(v12 + v13);
  v15 = *(v12 + v13 + 16);
  v31 = *(v12 + v13 + 8);
  outlined copy of MLDataValue(v14, v31, v15);
  outlined consume of MLDataValue(v6, v8, 4);
  if (!v15)
  {
    *a3.i64 = v14;
    goto LABEL_14;
  }

  if (v15 != 2)
  {
    if (v15 == 1)
    {
      v31 = v14;
LABEL_15:
      a2 = v30;
      v22 = v28;
      goto LABEL_18;
    }

    outlined consume of MLDataValue(v14, v31, v15);
    a3 = 0x7FF8000000000000uLL;
LABEL_14:
    v31 = a3.i64[0];
    goto LABEL_15;
  }

  v20 = _sSdySdSgxcSyRzlufCSS_Tt0g5(v14, v31);
  v22 = v28;
  if (v21)
  {
    a3 = 0x7FF8000000000000uLL;
    v31 = 0x7FF8000000000000;
  }

  else
  {
    v31 = v20;
  }

  a2 = v30;
LABEL_18:
  v23 = v29;
  v27 = v6;
  result = MLObjectDetector.DecodableAnnotation.init(from:)(&v27, a3);
  v17 = v23;
  if (v23)
  {
    goto LABEL_19;
  }

  *v22 = v24;
  *(v22 + 16) = _mm_cvtps_pd(v25);
  *(v22 + 32) = _mm_cvtps_pd(v26);
  *(v22 + 48) = v31;
  return result;
}

uint64_t static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v248._object = a3;
  v243 = v8;
  v249._countAndFlagsBits = a2;
  v263 = v9;
  v251 = a6;
  v242._countAndFlagsBits = a5;
  v11 = a1;
  v12 = *(*(type metadata accessor for MLClassifierMetrics(0) - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v237 = &v230;
  v15 = *a1;
  LOBYTE(v11) = *(a1 + 8);
  v262 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
  inited = swift_initStackObject(v262, v231);
  inited[2] = 1;
  inited[3] = 2;
  v241._countAndFlagsBits = a4;
  inited[4] = a4;
  countAndFlagsBits = v242._countAndFlagsBits;
  inited[5] = v242._countAndFlagsBits;
  v258 = v15;
  *&v256 = v15;
  *&v254 = v11;
  BYTE8(v256) = v11;
  countAndFlagsBits;
  v18 = v263;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v256, 0x6974636964657250, 0xEA00000000006E6FLL, inited);
  if (v18)
  {
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  *&v256 = v258;
  BYTE8(v256) = v254;
  v19 = v262;
  v20 = swift_initStackObject(v262, v232);
  v20[2] = 1;
  v20[3] = 2;
  v20[4] = v249._countAndFlagsBits;
  object = v248._object;
  v20[5] = v248._object;
  object;
  static _ValidationUtilities.validateTableFormat(table:context:columns:)(&v256, 0x6C6562614CLL, 0xE500000000000000, v20);
  swift_setDeallocating(v20);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  swift_setDeallocating(inited);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  *&v256 = v258;
  BYTE8(v256) = v254;
  v23 = swift_initStackObject(v19, v233);
  v23[2] = 1;
  v23[3] = 2;
  v23[4] = v249._countAndFlagsBits;
  v24 = v248._object;
  v23[5] = v248._object;
  LOBYTE(v244._countAndFlagsBits) = 2;
  LOBYTE(v239) = 4;
  v24;
  static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(&v256, v23, &v244, v241._countAndFlagsBits, v242._countAndFlagsBits, &v239);
  v25 = v258;
  swift_setDeallocating(v23);
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  if (!*(v251 + 16))
  {
    v67 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v68 = swift_allocError(&type metadata for MLCreateError, v67, 0, 0);
    *v69 = 0xD000000000000019;
    *(v69 + 8) = "lumn is invalid: '" + 0x8000000000000000;
    *(v69 + 16) = 0;
    *(v69 + 32) = 0;
    *(v69 + 48) = 0;
    v70 = v243;
    *v243 = v68;
    v71 = type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload(v70, v71, 2);
  }

  v249._object = *(v251 + 16);
  *&v256 = v25;
  BYTE8(v256) = v254;
  v26 = v254;
  outlined copy of Result<_DataTable, Error>(v25, v254);
  outlined copy of Result<_DataTable, Error>(v25, v26);
  v27._countAndFlagsBits = v249._countAndFlagsBits;
  v27._object = v248._object;
  MLDataTable.subscript.getter(v27);
  outlined consume of Result<_DataTable, Error>(v256, SBYTE8(v256));
  v239 = v244._countAndFlagsBits;
  v240 = v244._object;
  MLUntypedColumn.dropDuplicates()();
  outlined consume of Result<_DataTable, Error>(v239, v240);
  if (BYTE8(v256) || (v28 = v256, v29 = *(v256 + 16), outlined copy of Result<_DataTable, Error>(v256, 0), v30 = CMLColumn.size.getter(), v246 = v28, outlined consume of Result<_DataTable, Error>(v28, 0), v260._object = v30, v30 < 0))
  {
    BUG();
  }

  if (v30)
  {
    v241._object = "el's set of labels." + 0x8000000000000000;
    v250 = v251 + 72;
    v248._countAndFlagsBits = 0xD000000000000052;
    v31 = 0;
    v32 = 0;
    while (1)
    {
      v33 = v246;
      outlined copy of Result<_DataTable, Error>(v246, 0);
      v260._countAndFlagsBits = v32;
      _UntypedColumn.valueAtIndex(index:)(v32, a7);
      outlined consume of Result<_DataTable, Error>(v33, 0);
      v34 = v256;
      if (v257 != 2)
      {
        outlined consume of MLDataValue(v256, *(&v256 + 1), v257);
        BUG();
      }

      if (v256 == *(v251 + 32) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v251 + 32), *(v251 + 40), v256, *(&v256 + 1), 0) & 1) != 0)
      {
        outlined consume of MLDataValue(v34, *(&v34 + 1), 2);
      }

      else
      {
        v263 = v31;
        v35 = v249._object;
        if (v249._object == &dword_0 + 1)
        {
          v258 = v25;
          goto LABEL_17;
        }

        if (v34 != *(v251 + 48) && (_stringCompareWithSmolCheck(_:_:expecting:)(*(v251 + 48), *(v251 + 56), v34, *(&v34 + 1), 0) & 1) == 0)
        {
          v258 = v25;
          if (v35 != &dword_0 + 2)
          {
            v51 = v250;
            v52 = (&dword_0 + 2);
            while (1)
            {
              v53 = __OFADD__(1, v52++);
              if (v53)
              {
                BUG();
              }

              if (v34 == *(v51 - 1) || (_stringCompareWithSmolCheck(_:_:expecting:)(*(v51 - 1), *v51, v34, *(&v34 + 1), 0) & 1) != 0)
              {
                break;
              }

              v51 += 2;
              v36 = v262;
              if (v52 == v249._object)
              {
                goto LABEL_18;
              }
            }

            outlined consume of MLDataValue(v34, *(&v34 + 1), 2);
            v31 = v263;
            v25 = v258;
            goto LABEL_13;
          }

LABEL_17:
          v36 = v262;
LABEL_18:
          v37 = swift_initStackObject(v36, v234);
          *(v37 + 16) = 1;
          *(v37 + 24) = 2;
          *(v37 + 32) = v34;
          v38 = type metadata accessor for _UntypedColumn();
          swift_allocObject(v38, 24, 7);
          v39 = v254;
          v40 = v258;
          LODWORD(v259) = v254;
          outlined copy of Result<_DataTable, Error>(v258, v254);
          v37;
          v255 = v37;
          v41 = v263;
          v42 = specialized _UntypedColumn.init<A>(_:)(v37);
          v252 = v41;
          if (v41)
          {
            if (v39)
            {
              v43 = v40;
              v42 = v41;
              goto LABEL_25;
            }

            *&v256 = 0;
            *(&v256 + 1) = 0xE000000000000000;
            v43 = v40;
            outlined copy of Result<_DataTable, Error>(v40, 0);
            _StringGuts.grow(_:)(85);
            v45._countAndFlagsBits = v248._countAndFlagsBits;
            v45._object = v241._object;
            String.append(_:)(v45);
            v244._countAndFlagsBits = 0;
            v244._object = 0xE000000000000000;
            v239 = v41;
            v46 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
            _print_unlocked<A, B>(_:_:)(&v239, &v244, v46, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
            v47 = v244._object;
            String.append(_:)(v244);
            v47;
            v45._countAndFlagsBits = 39;
            v45._object = 0xE100000000000000;
            String.append(_:)(v45);
            v254 = v256;
            v45._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
            v48 = swift_allocError(&type metadata for MLCreateError, v45._object, 0, 0);
            *v49 = v254;
            a7 = 0.0;
            *(v49 + 16) = 0;
            *(v49 + 32) = 0;
            *(v49 + 48) = 0;
            swift_willThrow(&type metadata for MLCreateError, v45._object);
            outlined consume of Result<_DataTable, Error>(v43, 0);
            outlined consume of Result<_DataTable, Error>(v252, 1);
            v50 = v255;
            LOBYTE(v50) = 1;
            *&v254 = v50;
LABEL_37:
            v31 = 0;
            goto LABEL_38;
          }

          v43 = v40;
          if (v39)
          {
LABEL_25:
            v263 = 0;
            v247 = v42;
            *&v256 = v43;
            swift_errorRetain(v43);
            outlined copy of Result<_DataTable, Error>(v43, 1);
            v44 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
            v258 = _getErrorEmbeddedNSError<A>(_:)(&v256, v44, &protocol self-conformance witness table for Error);
            if (v258)
            {
              outlined consume of Result<_DataTable, Error>(v43, 1);
            }

            else
            {
              v258 = swift_allocError(v44, &protocol self-conformance witness table for Error, 0, 0);
              *v62 = v43;
            }

            v61 = v259;
            v63 = v252 != 0;
            outlined consume of Result<_DataTable, Error>(v43, 1);
            outlined consume of Result<_DataTable, Error>(v247, v63);
            v64 = v255;
            LOBYTE(v64) = 1;
            *&v254 = v64;
            v31 = v263;
            v48 = v258;
          }

          else
          {
            v54 = *(v40 + 16);
            v55 = *(v42 + 16);
            v56 = v42;
            outlined copy of Result<_DataTable, Error>(v43, 0);
            v247 = v56;
            outlined copy of Result<_DataTable, Error>(v56, 0);

            v57 = v252;
            v58 = CMLTable.filtered(_:columnName:isExcluding:)(v55, v249._countAndFlagsBits, v248._object, 1);
            v31 = v57;
            if (v57)
            {

              v59 = v247;
              outlined consume of Result<_DataTable, Error>(v247, 0);
              outlined consume of Result<_DataTable, Error>(v43, 0);
              outlined consume of Result<_DataTable, Error>(v59, 0);
              v60 = v255;
              LOBYTE(v60) = 1;
              *&v254 = v60;
              v48 = v57;
              goto LABEL_37;
            }

            v65 = v58;
            *&v254 = 0;
            outlined consume of Result<_DataTable, Error>(v247, 0);

            v66 = type metadata accessor for _DataTable();
            swift_allocObject(v66, 40, 7);
            v48 = _DataTable.init(impl:)(v65);
            outlined consume of Result<_DataTable, Error>(v43, 0);
            outlined consume of Result<_DataTable, Error>(v247, 0);
            v255;
LABEL_38:
            v61 = v259;
          }

          outlined consume of Result<_DataTable, Error>(v43, v61);
          outlined consume of Result<_DataTable, Error>(v43, v61);
          v25 = v48;
          goto LABEL_13;
        }

        outlined consume of MLDataValue(v34, *(&v34 + 1), 2);
        v31 = v263;
      }

LABEL_13:
      v32 = v260._countAndFlagsBits + 1;
      if ((v260._countAndFlagsBits + 1) == v260._object)
      {
        goto LABEL_46;
      }
    }
  }

  v31 = 0;
LABEL_46:
  v263 = v31;
  *&v256 = v25;
  v72 = v254 & 1;
  BYTE8(v256) = v254 & 1;
  v73 = v254;
  outlined copy of Result<_DataTable, Error>(v25, v254);
  outlined copy of Result<_DataTable, Error>(v25, v73);
  v262 = MLDataTable.size.getter();
  v74 = v73;
  outlined consume of Result<_DataTable, Error>(v256, SBYTE8(v256));
  outlined consume of Result<_DataTable, Error>(v25, v73);
  if (!v262)
  {
    v149 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    v150 = swift_allocError(&type metadata for MLCreateError, v149, 0, 0);
    *v151 = 0xD000000000000053;
    *(v151 + 8) = "CreateML/MLDataTable.swift" + 0x8000000000000000;
    *(v151 + 16) = 0;
    *(v151 + 32) = 0;
    *(v151 + 48) = 0;
    outlined consume of Result<_DataTable, Error>(v246, 0);
    outlined consume of Result<_DataTable, Error>(v25, v73);
    v152 = v243;
    *v243 = v150;
    v153 = type metadata accessor for MLClassifierMetrics.Contents(0);
    v154 = v152;
    goto LABEL_126;
  }

  *&v256 = v25;
  v261 = v72;
  BYTE8(v256) = v72;
  outlined copy of Result<_DataTable, Error>(v25, v73);
  v238 = (v251 + 72);
  v75 = 0;
  v76 = v263;
  v258 = v25;
  v253 = v74;
LABEL_48:
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v262 = v75;
        if (v254)
        {
          v263 = v76;
          v244._countAndFlagsBits = v25;
          swift_errorRetain(v25);
          outlined copy of Result<_DataTable, Error>(v25, 1);
          outlined copy of Result<_DataTable, Error>(v25, 1);
          v77 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          v78 = _getErrorEmbeddedNSError<A>(_:)(&v244, v77, &protocol self-conformance witness table for Error);
          if (v78)
          {
            v79 = v78;
            outlined consume of Result<_DataTable, Error>(v25, 1);
          }

          else
          {
            v79 = swift_allocError(v77, &protocol self-conformance witness table for Error, 0, 0);
            *v86 = v25;
          }

          outlined consume of Result<_DataTable, Error>(v25, 1);
          outlined consume of Result<_RegressorMetrics, Error>(v79, v247, 1);
          outlined consume of Result<_DataTable, Error>(v25, 1);
          v75 = v262;
          if (!v262)
          {
            v75 = 0;
LABEL_128:
            v257 = v75;
            outlined consume of Result<_DataTable, Error>(v256, SBYTE8(v256));
            v156 = type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
            swift_allocObject(v156, *(v156 + 48), *(v156 + 52));
            v157 = v263;
            v158 = _MetricUtilities.ConfusionMatrixMeter.init(classCount:)(v249._object);
            if (v157)
            {
              outlined consume of Result<_DataTable, Error>(v246, 0);
              return outlined consume of Result<_DataTable, Error>(v25, v253);
            }

            else
            {
              v252 = v158;
              v159 = v251;
              v251;
              v160 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (offset: Int, element: String));
              v161 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, v160, &protocol witness table for String);
              v159;
              v162 = (v159 + 40);
              v163 = 0;
              v164 = 0;
              v263 = 0;
              do
              {
                v262 = v163;
                v260._countAndFlagsBits = v164 + 1;
                if (__OFADD__(1, v164))
                {
                  BUG();
                }

                v165 = *(v162 - 1);
                v255 = v162;
                v166 = *v162;
                v167 = v161[2];
                swift_bridgeObjectRetain_n(*v162, 2);
                if (v167)
                {
                  v161;
                  specialized __RawDictionaryStorage.find<A>(_:)(v165, v166);
                  v169 = v168;
                  v161;
                  if (v169)
                  {
                    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000017, "ActivityClassifierPipeline" + 0x8000000000000000, "CreateML/MLActivityClassifier.Model.swift", 41, 2, 556, 0);
                    BUG();
                  }
                }

                v166;
                v170 = v165;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v161);
                *&v256 = v161;
                v260._object = v170;
                *&v254 = v166;
                v172 = v161;
                v173 = specialized __RawDictionaryStorage.find<A>(_:)(v170, v166);
                LOBYTE(v259) = v174;
                v175 = (v174 & 1) == 0;
                v53 = __OFADD__(v172[2], v175);
                v176 = v172[2] + v175;
                if (v53)
                {
                  BUG();
                }

                __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _NativeDictionary<String, (offset: Int, element: String)>);
                if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v176))
                {
                  v177 = v260._object;
                  v178 = v254;
                  v173 = specialized __RawDictionaryStorage.find<A>(_:)(v260._object, v254);
                  LOBYTE(v180) = v180 & 1;
                  LOBYTE(v181) = v259;
                  if ((v259 & 1) != v180)
                  {
                    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for String, v178, v180, v181, v179);
                    BUG();
                  }
                }

                else
                {
                  v177 = v260._object;
                  LOBYTE(v181) = v259;
                }

                v161 = v256;
                if (v181)
                {
                  v182 = *(v256 + 56);
                  v183 = 24 * v173;
                  *(v182 + v183 + 16);
                  *(v182 + v183) = v262;
                  *(v182 + v183 + 8) = v177;
                  v184 = v254;
                  *(v182 + v183 + 16) = v254;
                  v184;
                  v185 = v261;
                }

                else
                {
                  *(v256 + 8 * (v173 >> 6) + 64) |= 1 << v173;
                  v186 = v161[6];
                  v187 = 24 * v173;
                  v188 = 16 * v173;
                  *(v186 + v188) = v177;
                  v189 = v254;
                  *(v186 + v188 + 8) = v254;
                  v190 = v161[7];
                  *(v190 + v187) = v262;
                  *(v190 + v187 + 8) = v177;
                  *(v190 + v187 + 16) = v189;
                  v191 = v161[2];
                  v53 = __OFADD__(1, v191);
                  v192 = v191 + 1;
                  if (v53)
                  {
                    BUG();
                  }

                  v161[2] = v192;
                  v185 = v261;
                  v184 = v254;
                }

                v184;
                v162 = (v255 + 16);
                v164 = v260._countAndFlagsBits;
                v163 = v260._countAndFlagsBits;
              }

              while (v260._countAndFlagsBits != v249._object);
              swift_bridgeObjectRelease_n(v251, 2);
              v260._object = v161;
              v244._countAndFlagsBits = v258;
              LOBYTE(v244._object) = v185;
              v193._countAndFlagsBits = v249._countAndFlagsBits;
              v193._object = v248._object;
              MLDataTable.subscript.getter(v193);
              v194 = v256;
              v195 = BYTE8(v256);
              specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, specialized implicit closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:), 0, v256, SBYTE8(v256), &unk_392648, partial apply for specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:), 2);
              outlined consume of Result<_DataTable, Error>(v194, v195);
              *&v254 = v244._countAndFlagsBits;
              v196 = v244._object;
              v197 = swift_allocObject(&unk_3924E0, 24, 7);
              *(v197 + 16) = v260._object;
              v198 = swift_allocObject(&unk_392508, 32, 7);
              *(v198 + 16) = partial apply for closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:);
              *(v198 + 24) = v197;

              v199 = v196;
              v200 = v196;
              v201 = v254;
              specialized MLDataColumn.map<A>(skipUndefined:_:)(1, partial apply for specialized closure #1 in MLDataColumn.map<A>(_:), v198, v254, v200, &unk_392620, partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:), 0);

              outlined consume of Result<_DataTable, Error>(v201, v199);
              *&v254 = v256;
              LODWORD(v262) = BYTE8(v256);
              v244._countAndFlagsBits = v258;
              LOBYTE(v244._object) = v261;
              v193._countAndFlagsBits = v241._countAndFlagsBits;
              v193._object = v242._countAndFlagsBits;
              MLDataTable.subscript.getter(v193);
              v202 = v256;
              LOBYTE(v197) = BYTE8(v256);
              specialized MLUntypedColumn.map<A>(skipUndefined:_:)(1, specialized implicit closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:), 0, v256, SBYTE8(v256), &unk_3925F8, partial apply for specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:), 4);
              outlined consume of Result<_DataTable, Error>(v202, v197);
              v203 = v244._countAndFlagsBits;
              LOBYTE(v202) = v244._object;
              v204 = swift_allocObject(&unk_392530, 32, 7);
              *(v204 + 16) = closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:);
              *(v204 + 24) = 0;
              specialized MLDataColumn.map<A>(skipUndefined:_:)(1, partial apply for specialized closure #1 in MLDataColumn.map<A>(_:), v204, v203, v202, &unk_3925D0, partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:), 2);

              outlined consume of Result<_DataTable, Error>(v203, v202);
              v205 = v256;
              LODWORD(v201) = BYTE8(v256);
              v206 = swift_allocObject(&unk_392558, 24, 7);
              *(v206 + 16) = v260._object;
              v207 = swift_allocObject(&unk_392580, 32, 7);
              *(v207 + 16) = partial apply for closure #4 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:);
              *(v207 + 24) = v206;

              LODWORD(v248._object) = v201;
              v242._countAndFlagsBits = v205;
              specialized MLDataColumn.map<A>(skipUndefined:_:)(1, closure #1 in MLDataColumn.map<A>(_:)specialized partial apply, v207, v205, v201, &unk_392620, partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:), 0);

              v208 = v256;
              v209 = BYTE8(v256);
              outlined copy of Result<_DataTable, Error>(v256, SBYTE8(v256));
              v249._countAndFlagsBits = v208;
              MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(v208, v209, a7);
              v211 = v254;
              LOBYTE(v201) = v262;
              outlined copy of Result<_DataTable, Error>(v254, v262);
              v212 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5(v211, v201, a7);
              v213 = v252;
              _MetricUtilities.ConfusionMatrixMeter.add(predictedIds:targetIds:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5, v212);
              MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSi_Tt0B5;
              v212;
              v214 = v237;
              v215 = v263;
              static _MetricUtilities.makeClassifierMetrics(confusionMeter:classLabels:supplementMissingClassLabels:)(a7, a8, v213, v251, 1);
              if (v215)
              {
                outlined consume of Result<_DataTable, Error>(v249._countAndFlagsBits, v209);
                outlined consume of Result<_DataTable, Error>(v242._countAndFlagsBits, v248._object);
                outlined consume of Result<_DataTable, Error>(v254, v262);

                outlined consume of Result<_DataTable, Error>(v246, 0);
                return outlined consume of Result<_DataTable, Error>(v258, v253);
              }

              else
              {
                outlined consume of Result<_DataTable, Error>(v258, v253);
                outlined consume of Result<_DataTable, Error>(v246, 0);
                outlined consume of Result<_DataTable, Error>(v249._countAndFlagsBits, v209);
                outlined consume of Result<_DataTable, Error>(v254, v262);
                outlined consume of Result<_DataTable, Error>(v242._countAndFlagsBits, v248._object);

                return outlined init with take of MLClassifierMetrics(v214, v243);
              }
            }
          }
        }

        else
        {
          v80 = *(v25 + 16);
          outlined copy of Result<_DataTable, Error>(v25, 0);
          v81 = CMLTable.rows()();
          if (v82)
          {
            goto LABEL_164;
          }

          v83 = v81;
          v84 = *(v25 + 16);
          v247 = CMLTable.columns()();
          v263 = v85;
          if (v85)
          {
LABEL_165:
            v226 = "CreateML/MLDataTable.swift";
            v227 = 26;
            v228 = 192;
            v229 = v263;
            goto LABEL_167;
          }

          outlined consume of Result<_DataTable, Error>(v25, 0);
          if (v75 == v83)
          {
            goto LABEL_128;
          }
        }

        MLDataTable.Rows.subscript.getter(v75);
        v260 = v244;
        v259 = v245;
        v87 = v256;
        LOBYTE(v255) = BYTE8(v256);
        if (BYTE8(v256))
        {
          v244._countAndFlagsBits = v256;
          swift_errorRetain(v256);
          outlined copy of Result<_DataTable, Error>(v87, 1);
          outlined copy of Result<_DataTable, Error>(v87, 1);
          v88 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
          v89 = _getErrorEmbeddedNSError<A>(_:)(&v244, v88, &protocol self-conformance witness table for Error);
          if (v89)
          {
            v90 = v89;
            outlined consume of Result<_DataTable, Error>(v87, 1);
          }

          else
          {
            v90 = swift_allocError(v88, &protocol self-conformance witness table for Error, 0, 0);
            *v96 = v87;
          }

          outlined consume of Result<_DataTable, Error>(v87, 1);
          outlined consume of Result<_RegressorMetrics, Error>(v90, v241._object, 1);
          v93 = 0;
          v25 = v258;
        }

        else
        {
          v91 = *(v256 + 16);
          outlined copy of Result<_DataTable, Error>(v256, 0);
          v92 = CMLTable.rows()();
          if (v82)
          {
LABEL_164:
            v226 = "CreateML/MLDataTable.swift";
            v227 = 26;
            v228 = 191;
            v229 = v82;
            goto LABEL_167;
          }

          v93 = v92;
          v94 = *(v87 + 16);
          v241._object = CMLTable.columns()();
          v263 = v95;
          if (v95)
          {
            goto LABEL_165;
          }
        }

        v97 = v260._object;
        outlined consume of Result<_DataTable, Error>(v87, v255);
        if (v262 >= v93)
        {
          BUG();
        }

        v75 = v262 + 1;
        if (!v97[2])
        {

          v97;

          v76 = v263;
          continue;
        }

        break;
      }

      ++v262;
      v98 = v242._countAndFlagsBits;
      v242._countAndFlagsBits;

      v97;
      v99 = v259;

      v100 = specialized __RawDictionaryStorage.find<A>(_:)(v241._countAndFlagsBits, v98);
      if ((v101 & 1) == 0)
      {
        v99;
        swift_bridgeObjectRelease_n(v97, 2);
        v260._countAndFlagsBits;
        v98;
        v76 = v263;
        v25 = v258;
        v75 = v262;
        continue;
      }

      break;
    }

    v102 = v98;
    v103 = *(v97[7] + 8 * v100);
    v102;

    v104 = v263;
    v105 = CMLSequence.value(at:)(v103);
    v76 = v104;
    if (v104)
    {
      v226 = "CreateML/MLDataTable.Row.swift";
      v227 = 30;
      v228 = 85;
      v229 = v104;
LABEL_167:
      swift_unexpectedError(v229, v226, v227, 1, v228);
      BUG();
    }

    v106 = v105;
    v107 = v99;
    v108 = CMLFeatureValue.type.getter();
    v25 = v258;
    switch(v108)
    {
      case 0:
        v109 = *(v106 + 16);

        specialized handling<A, B>(_:_:)(v109);
        v76 = 0;
        goto LABEL_118;
      case 1:
        v147 = *(v106 + 16);

        specialized handling<A, B>(_:_:)(v147);
        v76 = 0;
LABEL_118:
        swift_bridgeObjectRelease_n(v260._object, 2);
        v260._countAndFlagsBits;
        v259;
        v106;
        v75 = v262;
        continue;
      case 2:

        v137 = CMLFeatureValue.stringValue()();
        v139 = v138;
        if (v138)
        {
          v138;

          BUG();
        }

        v140 = v137._object;
        swift_bridgeObjectRelease_n(v260._object, 2);
        v260._countAndFlagsBits;
        v259;
        v106;
        v140;
        goto LABEL_122;
      case 3:
        v141 = *(v106 + 16);

        v142 = specialized handling<A, B>(_:_:)(v141);
        v263 = 0;
        v143 = v142;
        if (!v142)
        {
          BUG();
        }

        v144 = v259;

        v106;
        v145 = type metadata accessor for CMLSequence();
        v146 = swift_initStackObject(v145, v235);
        *(v146 + 16) = v143;
        *(v146 + 24) = 1;

        v144;
        swift_bridgeObjectRelease_n(v260._object, 2);
        v260._countAndFlagsBits;
        v76 = v263;
        v75 = v262;
        continue;
      case 4:
        v110 = *(v106 + 16);

        v111 = specialized handling<A, B>(_:_:)(v110);
        v263 = 0;
        v112 = v111;
        if (!v111)
        {
          BUG();
        }

        v113 = type metadata accessor for CMLDictionary();
        v114 = swift_allocObject(v113, 24, 7);
        *(v114 + 16) = v112;
        v236[0] = v114;
        v236[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
        v236[2] = 0;
        v236[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
        v236[4] = 0;
        v236[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
        v236[6] = 0;
        ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v236);
        v260._object;

        v259;
        v106;
        v116 = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
        if (*(ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 + 2) == v249._object)
        {
          v117 = 1 << ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5[32];
          v118 = ~(-1 << v117);
          if (v117 >= 64)
          {
            v118 = -1;
          }

          v119 = *(ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5 + 8) & v118;
          v250 = (v117 + 63) >> 6;
          v120 = 0;
          v76 = v263;
          v248._countAndFlagsBits = ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
          while (1)
          {
            while (1)
            {
LABEL_78:
              if (!v119)
              {
                v121 = v120 + 1;
                v25 = v258;
                if (__OFADD__(1, v120))
                {
                  BUG();
                }

                if (v121 >= v250)
                {
LABEL_123:

                  v260._object;

LABEL_124:

                  v75 = v262;
                  goto LABEL_48;
                }

                v119 = *(v116 + 8 * v121 + 64);
                if (v119)
                {
                  ++v120;
                }

                else
                {
                  v122 = v120 + 2;
                  if (v120 + 2 >= v250)
                  {
                    goto LABEL_123;
                  }

                  v119 = *(v116 + 8 * v121 + 72);
                  if (v119)
                  {
                    goto LABEL_93;
                  }

                  v122 = v120 + 3;
                  if (v120 + 3 >= v250)
                  {
                    goto LABEL_123;
                  }

                  v119 = *(v116 + 8 * v121 + 80);
                  if (v119)
                  {
                    goto LABEL_93;
                  }

                  v122 = v120 + 4;
                  if (v120 + 4 >= v250)
                  {
                    goto LABEL_123;
                  }

                  v119 = *(v116 + 8 * v121 + 88);
                  if (v119)
                  {
                    goto LABEL_93;
                  }

                  v122 = v120 + 5;
                  if (v120 + 5 >= v250)
                  {
                    goto LABEL_123;
                  }

                  v119 = *(v116 + 8 * v121 + 96);
                  if (v119)
                  {
                    goto LABEL_93;
                  }

                  v122 = v120 + 6;
                  if (v120 + 6 >= v250)
                  {
                    goto LABEL_123;
                  }

                  v119 = *(v116 + 8 * v121 + 104);
                  if (v119)
                  {
LABEL_93:
                    v120 = v122;
                  }

                  else
                  {
                    v136 = v120 + 7;
                    do
                    {
                      if (v136 >= v250)
                      {
                        goto LABEL_123;
                      }

                      v119 = *(v116 + 8 * v136++ + 64);
                    }

                    while (!v119);
                    v120 = v136 - 1;
                  }
                }
              }

              _BitScanForward64(&v123, v119);
              v119 &= v119 - 1;
              v124 = v123 | (v120 << 6);
              v125 = *(v116 + 48);
              if (*(v125 + 24 * v124 + 16) == 2)
              {
                v126 = *(v125 + 24 * v124);
                v127 = *(v125 + 24 * v124 + 8);
                v128 = *(v251 + 32);
                v129 = *(v251 + 40);
                if (__PAIR128__(v129 ^ v127, v126 ^ v128) != 0)
                {
                  v252 = v120;
                  v255 = v127;
                  v130 = _stringCompareWithSmolCheck(_:_:expecting:)(v128, v129, v126, v127, 0);
                  v131 = v255;
                  v120 = v252;
                  v116 = v248._countAndFlagsBits;
                  if ((v130 & 1) == 0)
                  {
                    break;
                  }
                }
              }
            }

            if (v249._object == &dword_0 + 1)
            {
              break;
            }

            v132 = *(v251 + 56);
            if (v126 ^ *(v251 + 48) | v132 ^ v255)
            {
              v133 = _stringCompareWithSmolCheck(_:_:expecting:)(*(v251 + 48), v132, v126, v255, 0);
              v131 = v255;
              v120 = v252;
              v116 = v248._countAndFlagsBits;
              if ((v133 & 1) == 0)
              {
                v263 = v76;
                if (v249._object == &dword_0 + 2)
                {
                  goto LABEL_147;
                }

                v134 = v238;
                v135 = (&dword_0 + 2);
                while (1)
                {
                  v53 = __OFADD__(1, v135++);
                  if (v53)
                  {
                    BUG();
                  }

                  if (!(v126 ^ *(v134 - 1) | *v134 ^ v131))
                  {
                    v76 = v263;
                    goto LABEL_78;
                  }

                  if (_stringCompareWithSmolCheck(_:_:expecting:)(*(v134 - 1), *v134, v126, v131, 0))
                  {
                    break;
                  }

                  v134 += 2;
                  v116 = v248._countAndFlagsBits;
                  v120 = v252;
                  v131 = v255;
                  if (v135 == v249._object)
                  {
                    goto LABEL_147;
                  }
                }

                v76 = v263;
                v116 = v248._countAndFlagsBits;
                v120 = v252;
              }
            }
          }

          v263 = v76;
LABEL_147:
          v257 = v262;
          v244._countAndFlagsBits = 0;
          v244._object = 0xE000000000000000;
          outlined copy of MLDataValue(v126, v131, 2u);
          _StringGuts.grow(_:)(93);
          v216._object = "bels in the model." + 0x8000000000000000;
          v216._countAndFlagsBits = 0xD00000000000002ALL;
          String.append(_:)(v216);
          v217 = v255;
          outlined copy of MLDataValue(v126, v255, 2u);
          v216._countAndFlagsBits = v126;
          v216._object = v217;
          String.append(_:)(v216);
          outlined consume of MLDataValue(v126, v217, 2);
          v216._object = "le has row(s) with label '" + 0x8000000000000000;
          v216._countAndFlagsBits = 0xD000000000000031;
          String.append(_:)(v216);
          v242 = v244;
          v218 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v219 = swift_allocError(&type metadata for MLCreateError, v218, 0, 0);
          *v220 = v242;
          *(v220 + 16) = 0;
          *(v220 + 32) = 0;
          *(v220 + 48) = 0;
          outlined consume of MLDataValue(v126, v217, 2);

          v260._object;

          outlined consume of Result<_DataTable, Error>(v246, 0);
          outlined consume of Result<_DataTable, Error>(v258, v253);

          outlined consume of Result<_DataTable, Error>(v256, SBYTE8(v256));
          v221 = v243;
          *v243 = v219;
          v154 = v221;
          v155 = type metadata accessor for MLClassifierMetrics.Contents(0);
        }

        else
        {
          ML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5;
          v257 = v262;
          v222 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
          v223 = swift_allocError(&type metadata for MLCreateError, v222, 0, 0);
          *v224 = 0xD000000000000072;
          *(v224 + 8) = "maximumSecondMoments" + 0x8000000000000000;
          *(v224 + 16) = 0;
          *(v224 + 32) = 0;
          *(v224 + 48) = 0;

          v260._object;

          outlined consume of Result<_DataTable, Error>(v246, 0);
          outlined consume of Result<_DataTable, Error>(v258, v253);
          outlined consume of Result<_DataTable, Error>(v256, SBYTE8(v256));
          v225 = v243;
          *v243 = v223;
          v153 = type metadata accessor for MLClassifierMetrics.Contents(0);
          v154 = v225;
LABEL_126:
          v155 = v153;
        }

        result = swift_storeEnumTagMultiPayload(v154, v155, 2);
        break;
      case 5:
        swift_bridgeObjectRelease_n(v260._object, 2);
        v260._countAndFlagsBits;
        v107;
        goto LABEL_124;
      case 6:
        v139 = 0;

        MLDataValue.MultiArrayType.init(from:)(v106);
        v148 = v244._countAndFlagsBits;
        if (!v244._countAndFlagsBits)
        {
          BUG();
        }

        swift_bridgeObjectRelease_n(v260._object, 2);
        v260._countAndFlagsBits;
        v259;

LABEL_122:
        v76 = v139;
        v75 = v262;
        continue;
    }

    return result;
  }
}

uint64_t specialized implicit closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1)
{
  v2 = result;
  if (*(a1 + 16) == 2)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    result = outlined copy of MLDataValue(*a1, v4, 2u);
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *v2 = v3;
  v2[1] = v4;
  return result;
}

uint64_t specialized implicit closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t a1)
{
  v2 = result;
  if (*(a1 + 16) == 4)
  {
    v3 = *a1;
    result = outlined copy of MLDataValue(*a1, *(a1 + 8), 4u);
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

void closure #3 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t *a1)
{
  v2 = v1;
  specialized Sequence.max(by:)(*a1);
  if (v7 == 255)
  {
    *v2 = 0;
  }

  else
  {
    v3 = v5;
    v4 = v6;
    outlined consume of MLDataValue(v8, v9, v10);
    if (v7 != 2)
    {
      outlined consume of MLDataValue(v5, v6, v7);
      v3 = 0;
      v4 = 0;
    }

    *v2 = v3;
    *(v2 + 8) = v4;
  }
}

uint64_t closure #2 in static MLClassifierMetrics.__evaluation(on:labelColumn:predictionColumn:classes:)(uint64_t *a1, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 16))
  {
    v4 = a1[1];
    v5 = *a1;
    v4;
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 24 * v6);
    }

    else
    {
      v8 = 0;
    }

    v9 = v7 ^ 1;
    result = v4;
  }

  else
  {
    v9 = 1;
    v8 = 0;
  }

  *v3 = v8;
  *(v3 + 8) = v9 & 1;
  return result;
}

uint64_t static MLRegressorMetrics.__evaluation(on:targetColumn:predictionColumn:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, double a6)
{
  v29._countAndFlagsBits = a4;
  v31 = a3;
  v23 = v6;
  v29._object = a5;
  v8 = *(a1 + 8);
  v26 = *a1;
  v9 = v8 & 1;
  v27 = v8 & 1;
  v30 = v26;
  v28 = v8;
  outlined copy of Result<_DataTable, Error>(v26, v8);
  v10._countAndFlagsBits = a2;
  v10._object = v31;
  MLDataTable.subscript.getter(v10);
  outlined consume of Result<_DataTable, Error>(v26, v27);
  v26 = v24;
  v27 = v25;
  MLUntypedColumn.init(doubles:)(&v26);
  v11 = v21;
  if (v22 || (outlined copy of Result<_DataTable, Error>(v21, 0), v31 = v21, _UntypedColumn.type.getter(), v11 = v31, outlined consume of Result<_DataTable, Error>(v31, 0), v24 != 1))
  {
    outlined consume of Result<_DataTable, Error>(v11, v22);
    v18 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v18, 0, 0);
    *v19 = 0xD00000000000002FLL;
    *(v19 + 8) = "Provided classes is empty" + 0x8000000000000000;
    *(v19 + 16) = 0;
    *(v19 + 32) = 0;
    *(v19 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v18);
  }

  else
  {
    v26 = v30;
    v27 = v9;
    outlined copy of Result<_DataTable, Error>(v30, v28);
    MLDataTable.subscript.getter(v29);
    outlined consume of Result<_DataTable, Error>(v26, v27);
    v26 = v24;
    v27 = v25;
    MLUntypedColumn.init(doubles:)(&v26);
    outlined copy of Result<_DataTable, Error>(v21, 0);
    _UntypedColumn.type.getter();
    outlined consume of Result<_DataTable, Error>(v21, 0);
    v12 = v31;
    outlined copy of Result<_DataTable, Error>(v31, 0);
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5(v12, 0, a6);
    outlined copy of Result<_DataTable, Error>(v21, 0);
    v14 = _sSa8CreateMLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5(v21, 0, a6);
    v29._object = COERCE_VOID_(static _MetricUtilities.rmse(target:prediction:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5, v14));
    v30 = static _MetricUtilities.maximumError(target:prediction:)(MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5, v14);
    LOBYTE(v29._countAndFlagsBits) = v15;
    v14;
    MLAA22MLDataValueConvertibleRzlEySayxGAA0C6ColumnVyxGcfCSd_Tt0B5;
    if (v29._countAndFlagsBits)
    {
      v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
      *v17 = 0xD000000000000046;
      *(v17 + 8) = "onverted to doubles" + 0x8000000000000000;
      *(v17 + 16) = 0;
      *(v17 + 32) = 0;
      *(v17 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v16);
      outlined consume of Result<_DataTable, Error>(v21, 0);
      return outlined consume of Result<_DataTable, Error>(v12, 0);
    }

    else
    {
      outlined consume of Result<_DataTable, Error>(v12, 0);
      outlined consume of Result<_DataTable, Error>(v21, 0);
      result = v23;
      *v23 = v30;
      *(v23 + 8) = v29._object;
      *(v23 + 16) = 0;
    }
  }

  return result;
}

uint64_t specialized Dictionary<>.featureValue.getter(uint64_t a1)
{
  v31 = a1;
  v1 = tc_v1_flex_dict_create(0);
  if (!v1)
  {
    BUG();
  }

  v2 = v1;
  v3 = 0;
  v4 = type metadata accessor for CMLDictionary();
  inited = swift_initStackObject(v4, v25);
  *(inited + 16) = v2;
  v5 = 1 << *(v31 + 32);
  v6 = ~(-1 << v5);
  if (v5 >= 64)
  {
    v6 = -1;
  }

  v7 = *(v31 + 64) & v6;
  v30 = (v5 + 63) >> 6;
  v31;
  while (1)
  {
    if (v7)
    {
      goto LABEL_21;
    }

    v8 = v3 + 1;
    if (__OFADD__(1, v3))
    {
      BUG();
    }

    if (v8 >= v30)
    {
      goto LABEL_27;
    }

    v7 = *(v31 + 8 * v8 + 64);
    if (v7)
    {
      ++v3;
      goto LABEL_21;
    }

    v9 = v3 + 2;
    if (v3 + 2 >= v30)
    {
      goto LABEL_27;
    }

    v7 = *(v31 + 8 * v8 + 72);
    if (!v7)
    {
      v9 = v3 + 3;
      if (v3 + 3 >= v30)
      {
        goto LABEL_27;
      }

      v7 = *(v31 + 8 * v8 + 80);
      if (!v7)
      {
        v9 = v3 + 4;
        if (v3 + 4 >= v30)
        {
          goto LABEL_27;
        }

        v7 = *(v31 + 8 * v8 + 88);
        if (!v7)
        {
          v9 = v3 + 5;
          if (v3 + 5 >= v30)
          {
            goto LABEL_27;
          }

          v7 = *(v31 + 8 * v8 + 96);
          if (!v7)
          {
            v9 = v3 + 6;
            if (v3 + 6 >= v30)
            {
              goto LABEL_27;
            }

            v7 = *(v31 + 8 * v8 + 104);
            if (!v7)
            {
              break;
            }
          }
        }
      }
    }

    v3 = v9;
LABEL_21:
    v10 = v7;
    _BitScanForward64(&v11, v7);
    v27 = v3;
    v12 = v11 | (v3 << 6);
    v13 = *(*(v31 + 56) + 8 * v12);
    v12 *= 16;
    v14 = *(v31 + 48);
    v15 = *(v14 + v12);
    v16 = *(v14 + v12 + 8);
    v26[3] = &type metadata for Double;
    v26[4] = &protocol witness table for Double;
    v26[0] = v13;
    v29 = *__swift_project_boxed_opaque_existential_0Tm(v26, &type metadata for Double);
    v16;
    v17 = specialized handling<A, B>(_:_:)();
    if (!v17)
    {
      BUG();
    }

    v29 = (v10 - 1) & v10;
    v18 = type metadata accessor for CMLFeatureValue();
    swift_initStackObject(v18, v24);
    v19 = CMLFeatureValue.init(rawValue:ownsValue:)(v17, 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    CMLDictionary.add(key:value:)(v15, v16, v19);

    v16;
    v7 = v29;
    v3 = v27;
  }

  v20 = v3 + 7;
  while (v20 < v30)
  {
    v7 = *(v31 + 8 * v20++ + 64);
    if (v7)
    {
      v3 = v20 - 1;
      goto LABEL_21;
    }
  }

LABEL_27:

  type metadata accessor for CMLFeatureValue();
  v21 = inited;

  v22 = CMLFeatureValue.__allocating_init(_:)(v21);
  swift_setDeallocating(v21);
  tc_v1_release(*(v21 + 16));
  return v22;
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1)
{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

{
  return specialized closure #1 in MLUntypedColumn.init<A>(_:)(a1, specialized _UntypedColumn.init<A>(_:));
}

uint64_t specialized closure #1 in MLUntypedColumn.init<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for _UntypedColumn();
  swift_allocObject(v2, 24, 7);
  a1;
  return a2(a1);
}

uint64_t *specialized MLUntypedColumn.map<A>(skipUndefined:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v25 = a1;
  v24 = v8;
  v12 = swift_allocObject(a6, 32, 7);
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  if (a5)
  {
    v23 = a4;
    outlined copy of Result<_DataTable, Error>(a4, 1);

    outlined copy of Result<_DataTable, Error>(a4, 1);
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
    v14 = _getErrorEmbeddedNSError<A>(_:)(&v23, v13, &protocol self-conformance witness table for Error);
    if (v14)
    {
      v15 = v14;
      outlined consume of Result<_DataTable, Error>(a4, 1);
    }

    else
    {
      v15 = swift_allocError(v13, &protocol self-conformance witness table for Error, 0, 0);
      *v21 = a4;
    }

    v20 = 1;
    v19 = a4;
  }

  else
  {
    v16 = *(a4 + 16);

    outlined copy of Result<_DataTable, Error>(a4, 0);
    v17 = CMLColumn.apply(transform:type:skipUndefined:)(a7, v12, a8, v25);
    v18 = type metadata accessor for _UntypedColumn();
    v15 = swift_allocObject(v18, 24, 7);
    *(v15 + 16) = v17;
    v19 = a4;
    v20 = 0;
  }

  outlined consume of Result<_DataTable, Error>(v19, v20);

  result = v24;
  *v24 = v15;
  *(result + 8) = a5 & 1;
  return result;
}

uint64_t specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, void (*a2)(void *), double a3)
{

  MLDataValue.init(_:)(a1, a3);
  v3 = v10[0];
  v4 = v11;
  v15 = v10[1];
  a2(v10);
  v5 = v14;
  if (v14)
  {
    v12 = &type metadata for MLDataValue.MultiArrayType;
    v13 = &protocol witness table for MLDataValue.MultiArrayType;
    v10[0] = v14;
    __swift_project_boxed_opaque_existential_0Tm(v10, &type metadata for MLDataValue.MultiArrayType);
    v6 = v5;
    v7 = MLDataValue.MultiArrayType.featureValue.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    outlined consume of MLDataValue(v3, v15, v4);

    return v7;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v9 = CMLFeatureValue.__allocating_init()(0);
    outlined consume of MLDataValue(v3, v15, v4);
    return v9;
  }
}

{

  MLDataValue.init(_:)(a1, a3);
  v3 = v9[0];
  v4 = v10;
  v14 = v9[1];
  a2(v9);
  v5 = v13;
  if (v13)
  {
    v11 = &type metadata for MLDataValue.DictionaryType;
    v12 = &protocol witness table for MLDataValue.DictionaryType;
    v9[0] = v13;
    __swift_project_boxed_opaque_existential_0Tm(v9, &type metadata for MLDataValue.DictionaryType);
    v5;
    v6 = MLDataValue.DictionaryType.featureValue.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    outlined consume of MLDataValue(v3, v14, v4);
    v5;
    return v6;
  }

  else
  {
    0;
    type metadata accessor for CMLFeatureValue();
    v8 = CMLFeatureValue.__allocating_init()(0);
    outlined consume of MLDataValue(v3, v14, v4);
    return v8;
  }
}

{

  MLDataValue.init(_:)(a1, a3);
  v3 = v9[0];
  v4 = v10;
  v13 = v9[1];
  a2(v9);
  v5 = v12;
  if (v12)
  {
    v6 = specialized MLDataValueConvertible.featureValue.getter(v11, v12);
    outlined consume of MLDataValue(v3, v13, v4);
    v5;
    return v6;
  }

  else
  {
    type metadata accessor for CMLFeatureValue();
    v8 = CMLFeatureValue.__allocating_init()(0);
    outlined consume of MLDataValue(v3, v13, v4);
    return v8;
  }
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t *a1, void (*a2)(void *))
{
  v3 = v2;
  result = specialized closure #1 in MLDataColumn.map<A>(_:)(*a1, a2);
  *v3 = result;
  v3[1] = v5;
  return result;
}

uint64_t specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t *a1, void (*a2)(uint64_t *))
{
  v3 = v2;
  result = specialized closure #1 in MLDataColumn.map<A>(_:)(*a1, a1[1], a2);
  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

uint64_t partial apply for specialized closure #1 in MLDataColumn.map<A>(_:)(uint64_t *a1)
{
  v2 = *(v1 + 24);
  return specialized closure #1 in MLDataColumn.map<A>(_:)(a1, *(v1 + 16));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in MLDataColumn.map<A>(_:)(a1, *(v1 + 16));
}

uint64_t outlined init with take of MLClassifierMetrics(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

uint64_t partial apply for specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(uint64_t a1, double a2)
{
  v3 = *(v2 + 24);
  return specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(a1, *(v2 + 16), a2);
}

{
  v3 = *(v2 + 24);
  return specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(a1, *(v2 + 16), a2);
}

{
  v3 = *(v2 + 24);
  return specialized closure #1 in MLUntypedColumn.map<A>(skipUndefined:_:)(a1, *(v2 + 16), a2);
}

uint64_t partial apply for specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(uint64_t a1)
{
  return specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  v2 = *(v1 + 24);
  return specialized closure #1 in MLDataColumn.map<A>(skipUndefined:_:)(a1, *(v1 + 16));
}

uint64_t dynamic_cast_existential_1_unconditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!swift_conformsToProtocol2(a2, a3))
  {
    BUG();
  }

  return a1;
}

void MLLinearRegressor.Model.export(internalMetadata:)()
{
  v110 = v1;
  v102 = v0;
  v90 = type metadata accessor for ModelKind(0);
  v89 = *(v90 - 8);
  v3 = *(v89 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v91 = &v82;
  v93 = type metadata accessor for FeatureType(0);
  v92 = *(v93 - 8);
  v6 = *(v92 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v94 = &v82;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Model?) - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v95 = &v82;
  v98 = type metadata accessor for Model(0);
  v99 = *(v98 - 8);
  v12 = *(v99 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v105 = &v82;
  v101 = type metadata accessor for URL.DirectoryHint(0);
  v84 = *(v101 - 8);
  v15 = *(v84 + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v85 = &v82;
  v18 = type metadata accessor for UUID(0);
  v86 = *(v18 - 8);
  v19 = *(v86 + 64);
  v20 = alloca(v19);
  v21 = alloca(v19);
  v87 = &v82;
  v103 = type metadata accessor for URL(0);
  v104 = *(v103 - 8);
  v22 = *(v104 + 64);
  v23 = alloca(v22);
  v24 = alloca(v22);
  v88 = &v82;
  v25 = alloca(v22);
  v26 = alloca(v22);
  v108 = &v82;
  v27 = alloca(v22);
  v28 = alloca(v22);
  v107 = &v82;
  v29 = alloca(v22);
  v30 = alloca(v22);
  v31 = v2[2];
  if (!v31)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, "ressorModel.swift" + 0x8000000000000000, "CreateML/MLLinearRegressor.Model+CoreML.swift", 45, 2, 10, 0);
    BUG();
  }

  v32 = v110;
  v33 = specialized FeatureVectorizer.Transformer.exportEncoders()(v2[2], v2[3], v2[4]);
  if (!v32)
  {
    v96 = v31;
    v100 = v2;
    v110 = v33;
    v106 = &v82;
    v34 = objc_opt_self(NSFileManager);
    v35 = [v34 defaultManager];
    v36 = v35;
    NSFileManager.createTemporaryModelDirectory()();
    if (v37)
    {
      v110;
    }

    else
    {

      v38 = [v34 defaultManager];
      v39 = v38;
      NSFileManager.temporaryModelDirectory.getter();

      v109 = 0;
      v40 = v87;
      UUID.init()();
      v41 = UUID.uuidString.getter();
      v43 = v42;
      v97 = v42;
      (*(v86 + 8))(v40, v18);
      v83[0] = v41;
      v83[1] = v43;
      v44 = v85;
      v45 = v101;
      v46 = v84;
      (*(v84 + 104))(v85, enum case for URL.DirectoryHint.inferFromPath(_:), v101);
      v47 = lazy protocol witness table accessor for type String and conformance String();
      v48 = v108;
      URL.appending<A>(component:directoryHint:)(v83, v44, &type metadata for String, v47);
      (*(v46 + 8))(v44, v45);
      v97;
      v49 = *(v104 + 8);
      v50 = v103;
      v49(v48, v103);
      v51 = v106;
      v52 = v107;
      URL.appendingPathExtension(_:)(0x6C65646F6D6C6D2ELL, 0xE800000000000000);
      v49(v52, v50);
      v53 = v100 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v54 = v109;
      BaseLinearRegressorModel.export(to:)(v51);
      if (v54)
      {
        v49(v106, v103);
        v110;
      }

      else
      {
        v107 = v49;
        v55 = v88;
        (*(v104 + 16))(v88, v106, v103);
        Model.init(contentsOf:)(v55);
        v109 = 0;
        v56 = v95;
        specialized BidirectionalCollection.last.getter(v110);
        v57 = v98;
        if (__swift_getEnumTagSinglePayload(v56, 1, v98) == 1)
        {
          BUG();
        }

        v58 = Model.outputs.getter();
        v104 = *(v99 + 8);
        (v104)(v56, v57);
        Model.inputs.setter(v58);
        v59 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
        v60 = *(type metadata accessor for FeatureDescription(0) - 8);
        v61 = swift_allocObject(v59, ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72), *(v60 + 80) | 7);
        *(v61 + 16) = 1;
        *(v61 + 24) = 2;
        v62 = *v100;
        v108 = v100[1];
        v108;
        v63 = v94;
        FeatureType.DoubleParameters.init(optional:)(0);
        (*(v92 + 104))(v63, enum case for FeatureType.double(_:), v93);
        v101 = v62;
        FeatureDescription.init(name:type:description:)(v62, v108, v63, 0, 0xE000000000000000);
        v64 = v105;
        Model.outputs.setter(v61);
        v65 = v108;
        v108;
        Model.predictedFeatureName.setter(v62, v65);
        v66 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, &type metadata for String, &type metadata for String, &protocol witness table for String);
        Model.metadata.setter(v66);
        Model.init()();
        Model.specificationVersion.setter(1);
        v67 = v96;
        v96;
        v68 = v109;
        ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay8CreateML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n(v67);
        v109 = v68;
        v67;
        Model.inputs.setter(ML16ColumnDescriptorVG_20MLModelSpecification18FeatureDescriptionVs5NeverOTg503_s8d50ML18TreeRegressorModelV6export16internalMetadata20h33Specification0E0VSDyS2SGz_tKFAF18jk5VAA16fG54Vcfu0_33_3fd57c9cf8bb5b882e179ce0f1f8c55eAmKTf3nnnpk_nTf1cn_n);
        v70 = v64;
        v71 = Model.outputs.getter();
        Model.outputs.setter(v71);
        v72 = v108;
        v108;
        Model.predictedFeatureName.setter(v101, v72);
        v73 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Model>);
        v74 = *(v99 + 80);
        v75 = (v74 + 32) & ~*(v99 + 80);
        v76 = v99;
        v77 = swift_allocObject(v73, v75 + *(v99 + 72), v74 | 7);
        *(v77 + 16) = 1;
        *(v77 + 24) = 2;
        v78 = v70;
        v79 = v98;
        (*(v76 + 16))(v77 + v75, v78, v98);
        v83[0] = v110;
        specialized Array.append<A>(contentsOf:)(v77);
        v80 = v91;
        PipelineRegressorConfiguration.init(models:names:)(v83[0], _swiftEmptyArrayStorage);
        (*(v89 + 104))(v80, enum case for ModelKind.pipelineRegressor(_:), v90);
        Model.kind.setter(v80);
        (v104)(v105, v79);
        v81 = v106;
        $defer #1 () in TreeRegressorModel.export(internalMetadata:)();
        (v107)(v81, v103);
      }
    }
  }
}

void *_sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Float);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(770);
  v6 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v8 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v9 = _mm_shuffle_epi32(v4, 68);
    v10 = _mm_xor_si128(_mm_or_si128(v9, v6), si128);
    v11 = _mm_cmpgt_epi32(v10, v8);
    v12 = _mm_or_si128(_mm_shuffle_epi32(v11, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v10, v8), 245), v11));
    if (~_mm_cvtsi128_si32(v12))
    {
      *&result[v4 / 2 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v12, -1), 8))
    {
      *(&result[v4 / 2 + 4] + 1) = a2;
    }

    v13 = _mm_xor_si128(_mm_or_si128(v9, v5), si128);
    v14 = _mm_cmpgt_epi32(v13, v8);
    v15 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v14, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v13, v8), 245), v14)), -1);
    if (_mm_extract_epi8(v15, 0))
    {
      *&result[v4 / 2 + 5] = a2;
    }

    if (_mm_extract_epi8(v15, 8))
    {
      *(&result[v4 / 2 + 5] + 1) = a2;
    }

    v4 += 4;
  }

  while (((a1 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v4);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (a3)
  {
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(a3, &type metadata for String);
    v5 = v4;
    v4[2] = a3;
    v4[4] = a1;
    v4[5] = a2;
    if (a3 != 1)
    {
      v6 = v4 + 6;
      v7 = a3 - 2;
      while (1)
      {
        *v6 = a1;
        v6[1] = a2;
        if (v7-- == 0)
        {
          break;
        }

        v6 += 2;
        a2;
      }

      a2;
    }
  }

  else
  {
    a2, a2;
    return &_swiftEmptyArrayStorage;
  }

  return v5;
}

void *_sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(uint64_t a1, double a2)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, &type metadata for Double);
  result[2] = a1;
  v4 = 0;
  v5 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v7 = _mm_xor_si128(_mm_shuffle_epi32((a1 - 1), 68), si128);
  do
  {
    v8 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v4, 68), v5), si128);
    v9 = _mm_cmpgt_epi32(v8, v7);
    v10 = _mm_or_si128(_mm_shuffle_epi32(v9, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v8, v7), 245), v9));
    if (~_mm_cvtsi128_si32(v10))
    {
      *&result[v4 + 4] = a2;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v10, -1), 8))
    {
      *&result[v4 + 5] = a2;
    }

    v4 += 2;
  }

  while (((a1 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSo8NSNumberC_Tt1g5(id a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v2 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v2);
    v4 = result & 0xFFFFFFFFFFFFF8;
    *(v4 + 16) = a2;
    *(v4 + 32) = a1;
    if (a2 != 1)
    {
      v6 = result;
      for (i = 0; ; ++i)
      {
        *(v4 + 8 * i + 40) = a1;
        if (a2 - 2 == i)
        {
          break;
        }

        a1;
      }

      a1;
      return v6;
    }
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (!a2)
  {
    return &_swiftEmptyArrayStorage;
  }

  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, &type metadata for Int);
  result[2] = a2;
  v3 = 0;
  v4 = _mm_cvtepi8_epi64(256);
  si128 = _mm_load_si128(&xmmword_33D700);
  v6 = _mm_xor_si128(_mm_shuffle_epi32((a2 - 1), 68), si128);
  do
  {
    v7 = _mm_xor_si128(_mm_or_si128(_mm_shuffle_epi32(v3, 68), v4), si128);
    v8 = _mm_cmpgt_epi32(v7, v6);
    v9 = _mm_or_si128(_mm_shuffle_epi32(v8, 245), _mm_and_si128(_mm_shuffle_epi32(_mm_cmpeq_epi32(v7, v6), 245), v8));
    if (~_mm_cvtsi128_si32(v9))
    {
      result[v3 + 4] = a1;
    }

    if (_mm_extract_epi8(_mm_xor_si128(v9, -1), 8))
    {
      result[v3 + 5] = a1;
    }

    v3 += 2;
  }

  while (((a2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC4HeapADVy8CreateML11InteractionVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Heap<Interaction>);
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v2);
    *(v3 + 16) = a2;
    *(v3 + 32) = a1;
    if (a2 != 1)
    {
      for (i = 2; ; ++i)
      {
        *(v3 + 8 * i + 24) = a1;
        if (a2 == i)
        {
          break;
        }
      }
    }
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *_sSa9repeating5countSayxGx_SitcfCSiSg_Tt1g5(uint64_t a1, char a2, uint64_t a3)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (!a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Int?);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(v3, v4);
  result[2] = v3;
  v6 = result + 4;
  do
  {
    *v6 = a1;
    *(v6 + 8) = a2 & 1;
    v6 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVySdG_Tt1g5(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (!a2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ItemStatistics<Double>);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v4);
  result[2] = a2;
  v6 = (result + 4);
  do
  {
    *v6 = a1;
    v6[1] = a3;
    v6 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfC8CreateML14ItemStatisticsVyAD17PearsonSimilarityV0E5ScoreVG_Tt1g5(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a3 < 0)
  {
    BUG();
  }

  if (!a3)
  {
    return _swiftEmptyArrayStorage;
  }

  v5 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for ItemStatistics<PearsonSimilarity.ItemScore>);
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(v5, v6);
  result[2] = v5;
  v8 = (result + 7);
  do
  {
    *(v8 - 3) = a1;
    *(v8 - 2) = a2;
    *(v8 - 1) = a4;
    *v8 = a5;
    v8 += 4;
    --v5;
  }

  while (v5);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSd_Sdt_Tt1g5(uint64_t a1, double a2, double a3)
{
  if (a1 < 0)
  {
    BUG();
  }

  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (Double, Double));
  result = static Array._allocateBufferUninitialized(minimumCapacity:)(a1, v4);
  result[2] = a1;
  v6 = (result + 4);
  do
  {
    *v6 = a2;
    v6[1] = a3;
    v6 += 2;
    --v3;
  }

  while (v3);
  return result;
}

void *_sSa9repeating5countSayxGx_SitcfCSaySfG_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    BUG();
  }

  if (a2)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledName(a3);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)(a2, v3);
    *(v4 + 16) = a2;
    *(v4 + 32) = a1;
    if (a2 != 1)
    {
      for (i = 2; ; ++i)
      {
        *(v4 + 8 * i + 24) = a1;
        if (a2 == i)
        {
          break;
        }

        a1;
      }

      a1;
    }
  }

  else
  {
    a1;
    return _swiftEmptyArrayStorage;
  }

  return v4;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(_:)(MLMultiArray a1)
{
  isa = a1.super.isa;
  v3 = v1;
  result._contents.super.isa = [(objc_class *)a1.super.isa dataType];
  if (result._contents.super.isa != (&loc_1003C + 4))
  {
    v67 = v3;
    v5 = [(objc_class *)a1.super.isa shape];
    v6 = v5;
    v66 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v6, v66);

    objc_allocWithZone(MLMultiArray);
    v8 = @nonobjc MLMultiArray.init(shape:dataType:)(v7, 65600);
    v9 = v8;
    v10 = [(objc_class *)a1.super.isa strides];
    v11 = v66;
    v12 = v10;
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v12, v66);

    v14 = specialized Array._getCount()(v13);
    v69 = isa;
    v68 = v9;
    if (v14)
    {
      v76 = &_swiftEmptyArrayStorage;
      v15 = 0;
      if (v14 > 0)
      {
        v15 = v14;
      }

      v73 = v14;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
      if (v73 < 0)
      {
        BUG();
      }

      v16 = v76;
      v17 = 0;
      v70 = v13;
      do
      {
        v18 = v16;
        if ((v13 & 0xC000000000000003) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)(v17, v13);
        }

        else
        {
          v19 = *(v13 + 8 * v17 + 32);
        }

        v20 = v19;
        v21 = [v19 integerValue];

        v16 = v18;
        v76 = v18;
        v22 = v18[2];
        if (v16[3] >> 1 <= v22)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16[3] >= 2, v22 + 1, 1);
          v16 = v76;
        }

        ++v17;
        v16[2] = v22 + 1;
        v16[v22 + 4] = v21;
        v13 = v70;
      }

      while (v73 != v17);
      v64 = v16;
      v70;
      v23 = v69;
      v11 = v66;
      v24 = [v68 strides];
    }

    else
    {
      v23 = isa;
      v13;
      v64 = &_swiftEmptyArrayStorage;
      v24 = [v9 strides];
    }

    v25 = v24;
    v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v25, v11);

    v27 = specialized Array._getCount()(v26);
    if (v27)
    {
      v28 = v27;
      v76 = &_swiftEmptyArrayStorage;
      v29 = 0;
      if (v27 > 0)
      {
        v29 = v27;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      if (v28 < 0)
      {
        BUG();
      }

      v30 = v76;
      v31 = 0;
      v74 = v26;
      v71 = v28;
      do
      {
        v32 = v30;
        if ((v26 & 0xC000000000000003) != 0)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)(v31, v26);
        }

        else
        {
          v33 = *(v26 + 8 * v31 + 32);
        }

        v34 = v33;
        v35 = [v33 integerValue];

        v30 = v32;
        v76 = v32;
        v36 = v32[2];
        if (v30[3] >> 1 <= v36)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30[3] >= 2, v36 + 1, 1);
          v30 = v76;
        }

        ++v31;
        v30[2] = v36 + 1;
        v30[v36 + 4] = v35;
        v26 = v74;
      }

      while (v71 != v31);
      v65 = v30;
      v74;
      v23 = v69;
      v11 = v66;
      v37 = [(objc_class *)v69 shape];
    }

    else
    {
      v26;
      v65 = &_swiftEmptyArrayStorage;
      v37 = [(objc_class *)v23 shape];
    }

    v38 = v37;
    v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v38, v11);

    v40 = specialized Array._getCount()(v39);
    if (v40)
    {
      v41 = v40;
      v76 = &_swiftEmptyArrayStorage;
      v42 = 0;
      if (v40 > 0)
      {
        v42 = v40;
      }

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
      if (v41 < 0)
      {
        BUG();
      }

      v43 = v76;
      v44 = 0;
      v75 = v39;
      v72 = v41;
      do
      {
        if ((v39 & 0xC000000000000003) != 0)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)(v44, v39);
        }

        else
        {
          v45 = *(v39 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = [v45 integerValue];

        v76 = v43;
        v48 = v43[2];
        if (v43[3] >> 1 <= v48)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v43[3] >= 2, v48 + 1, 1);
          v43 = v76;
        }

        ++v44;
        v43[2] = v48 + 1;
        v43[v48 + 4] = v47;
        v39 = v75;
      }

      while (v72 != v44);
      v75;
      v23 = v69;
    }

    else
    {
      v39;
      v43 = &_swiftEmptyArrayStorage;
    }

    v49 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v64, v65);
    v65;
    v64;
    if (v49)
    {
      v43;
      v50 = [(objc_class *)v23 count];
      if (v50 < 0)
      {
        BUG();
      }

      if (v50)
      {
        v51 = v50;
        for (i = 0; i != v51; ++i)
        {
          v53 = [(objc_class *)v69 objectAtIndexedSubscript:i];
          v54 = v53;
          [v68 setObject:v54 atIndexedSubscript:i];
        }

        v3 = v67;
        isa = v68;
        goto LABEL_55;
      }

      isa = v68;
    }

    else
    {
      if ([(objc_class *)v23 count]<= 0)
      {
        isa = v68;

        v63 = v43;
      }

      else
      {
        v55 = objc_allocWithZone(NSNumber);
        v56 = [v55 initWithInteger:0];
        v76 = _sSa9repeating5countSayxGx_SitcfCSo8NSNumberC_Tt1g5(v56, v43[2]);
        do
        {
          v57 = Array._bridgeToObjectiveC()().super.isa;
          v58 = [(objc_class *)v69 objectForKeyedSubscript:v57];
          v59 = v58;

          [v59 doubleValue];
          v60 = objc_allocWithZone(NSNumber);
          v61 = [v60 initWithDouble:?];
          v62 = Array._bridgeToObjectiveC()().super.isa;
          [v68 setObject:v61 forKeyedSubscript:v62];
        }

        while ((incrementIndex #1 (shape:index:) in MLDataValue.MultiArrayType.init(_:)(v43, &v76) & 1) != 0);
        isa = v68;

        v43;
        v63 = v76;
      }

      result._contents.super.isa = v63;
    }

    v3 = v67;
  }

LABEL_55:
  *v3 = isa;
  return result;
}

BOOL _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (!v2 || a1 == a2)
  {
    return result;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if (v2 != 1)
  {
    v4 = 0;
    do
    {
      if (v4 + 1 >= v2)
      {
        BUG();
      }

      result = *(a1 + 8 * v4 + 40) == *(a2 + 8 * v4 + 40);
      if (*(a1 + 8 * v4 + 40) != *(a2 + 8 * v4 + 40))
      {
        break;
      }
    }

    while (v2 - 2 != v4++);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(void *a1, void *a2)
{
  v3 = a1[2];
  if (v3 != a2[2])
  {
    return 0;
  }

  if (!v3 || a1 == a2)
  {
    goto LABEL_12;
  }

  v5 = a1[4];
  v6 = a2[4];
  v7 = a2[5];
  v15 = v3;
  if (__PAIR128__(v7 ^ a1[5], v6 ^ a1[4]) != 0)
  {
    v2 = 0;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)(v5, a1[5], v6, v7, 0);
    v3 = v15;
    if ((v8 & 1) == 0)
    {
      return v2;
    }
  }

  if (v3 == 1)
  {
LABEL_12:
    LOBYTE(v2) = 1;
    return v2;
  }

  v9 = 1;
  v10 = 7;
  v2 = 0;
  while (1)
  {
    if (v9 >= v3)
    {
      BUG();
    }

    v11 = a2[v10 - 1];
    v12 = a2[v10];
    if (__PAIR128__(v12 ^ a1[v10], v11 ^ a1[v10 - 1]) != 0)
    {
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)(a1[v10 - 1], a1[v10], v11, v12, 0);
      v3 = v15;
      if ((v13 & 1) == 0)
      {
        return v2;
      }
    }

    ++v9;
    v10 += 2;
    if (v3 == v9)
    {
      goto LABEL_12;
    }
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML16ColumnDescriptorV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 == *(a2 + 16))
  {
    if (!v4 || a1 == a2)
    {
LABEL_55:
      LOBYTE(v3) = 1;
    }

    else
    {
      v45 = *(a1 + 16);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v50 = *(a1 + 48);
      v47 = a1;
      LOBYTE(v2) = *(a1 + 56);
      v8 = *(a2 + 32);
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = *(a2 + 56);
      if (!(v8 ^ v6 | v9 ^ v7))
      {
        goto LABEL_6;
      }

      LODWORD(v3) = 0;
      v12 = v10;
      v13 = *(a1 + 40);
      v14 = v2;
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, v8, v9, 0);
      v2 = v14;
      v7 = v13;
      v10 = v12;
      if (v15)
      {
LABEL_6:
        v16 = 1;
LABEL_7:
        switch(v2)
        {
          case 0:
            if (v11)
            {
              goto LABEL_54;
            }

            LODWORD(v3) = 0;
            v17 = v10;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v10, 0);
            if (v50 == v17)
            {
              goto LABEL_50;
            }

            return v3;
          case 1:
            if (v11 != 1)
            {
              goto LABEL_54;
            }

            v31 = v10;
            v44 = 1;
            goto LABEL_32;
          case 2:
            if (v11 != 2)
            {
              goto LABEL_54;
            }

            v31 = v10;
            v44 = 2;
            goto LABEL_32;
          case 3:
            if (v11 != 3)
            {
              goto LABEL_54;
            }

            v31 = v10;
            v44 = 3;
LABEL_32:
            v32 = v10;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v31, v44);
            if (v50 != v32)
            {
              goto LABEL_54;
            }

            goto LABEL_50;
          case 4:
            if (v11 != 4)
            {
              goto LABEL_54;
            }

            v18 = v50[2];
            if (v18 != v10[2])
            {
              goto LABEL_54;
            }

            if (!v18 || v50 == v10)
            {
              goto LABEL_50;
            }

            v19 = v50[4];
            v20 = v50[5];
            v21 = v10[4];
            v22 = v10[5];
            v48 = v10;
            if (v19 != v21 || v20 != v22)
            {
              LODWORD(v3) = 0;
              v23 = _stringCompareWithSmolCheck(_:_:expecting:)(v19, v20, v21, v22, 0);
              v10 = v48;
              if ((v23 & 1) == 0)
              {
                return v3;
              }
            }

            if (v18 == 1)
            {
              goto LABEL_50;
            }

            v24 = 7;
            v25 = 1;
            break;
          case 5:
            if (v11 != 5)
            {
              goto LABEL_54;
            }

            v33 = v10;
            v49 = v7;
            v7;
            v9;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v33, 5);
            LODWORD(v3) = v50;
            outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v50, 5);
            ML16ColumnDescriptorV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML16ColumnDescriptorV_Tt1g5(v50, v33);
            v9;
            outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v33, 5);
            v49;
            outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 5);
            if ((ML16ColumnDescriptorV_Tt1g5 & 1) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_50;
          case 6:
            switch(v50)
            {
              case 0uLL:
                LODWORD(v3) = 0;
                if (v11 == 6 && !v10)
                {
                  goto LABEL_46;
                }

                break;
              case 1uLL:
                LODWORD(v3) = 0;
                if (v11 == 6 && v10 == (&dword_0 + 1))
                {
                  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(1, 6);
                  goto LABEL_50;
                }

                break;
              case 2uLL:
                LODWORD(v3) = 0;
                if (v11 == 6 && v10 == (&dword_0 + 2))
                {
                  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(2, 6);
                  goto LABEL_50;
                }

                break;
              case 3uLL:
                LODWORD(v3) = 0;
                if (v11 == 6 && v10 == (&dword_0 + 3))
                {
LABEL_46:
                  outlined copy of ColumnDescriptor.ColumnTypeDescriptor(v10, 6);
                  outlined consume of ColumnDescriptor.ColumnTypeDescriptor(v50, 6);
                  goto LABEL_50;
                }

                break;
            }

            return v3;
        }

        while (1)
        {
          if (v25 >= v18)
          {
            BUG();
          }

          v26 = v50[v24 - 1];
          v27 = v50[v24];
          v28 = v10[v24 - 1];
          v29 = v10[v24];
          if (v26 != v28 || v27 != v29)
          {
            LODWORD(v3) = 0;
            v30 = _stringCompareWithSmolCheck(_:_:expecting:)(v26, v27, v28, v29, 0);
            v10 = v48;
            if ((v30 & 1) == 0)
            {
              break;
            }
          }

          ++v25;
          v24 += 2;
          if (v18 == v25)
          {
LABEL_50:
            if (v16 == v45)
            {
              goto LABEL_55;
            }

            if (v16 >= v45)
            {
              BUG();
            }

            v34 = v16 + 1;
            v35 = 32 * v16;
            v36 = *(v47 + v35 + 32);
            v7 = *(v47 + v35 + 40);
            v50 = *(v47 + v35 + 48);
            LOBYTE(v2) = *(v47 + v35 + 56);
            v37 = *(a2 + v35 + 32);
            v9 = *(a2 + v35 + 40);
            v10 = *(a2 + v35 + 48);
            v11 = *(a2 + v35 + 56);
            v16 = v34;
            if (!(v37 ^ v36 | v9 ^ v7))
            {
              goto LABEL_7;
            }

            v38 = v9;
            v39 = v10;
            v3 = v9;
            v40 = v7;
            v41 = v2;
            v42 = _stringCompareWithSmolCheck(_:_:expecting:)(v36, v7, v37, v38, 0);
            v2 = v41;
            v7 = v40;
            v9 = v3;
            v10 = v39;
            v16 = v34;
            if (v42)
            {
              goto LABEL_7;
            }

            goto LABEL_54;
          }
        }
      }
    }
  }

  else
  {
LABEL_54:
    LODWORD(v3) = 0;
  }

  return v3;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ8CreateML11MLDataValueO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    LOBYTE(v2) = 1;
    if (v3 && a1 != a2)
    {
      v4 = 48;
      v5 = *(a1 + 16);
      do
      {
        v6 = *(a1 + v4 - 16);
        v7 = *(a1 + v4 - 8);
        v8 = *(a1 + v4);
        v18 = v6;
        v19 = v7;
        LOBYTE(v20) = v8;
        if (v5-- == 0)
        {
          BUG();
        }

        v15 = v3;
        v11 = *(a2 + v4 - 8);
        v12 = *(a2 + v4);
        v21 = *(a2 + v4 - 16);
        v10 = v21;
        v22 = v11;
        LOBYTE(v23) = v12;
        outlined copy of MLDataValue(v6, v7, v8);
        outlined copy of MLDataValue(v10, v11, v12);
        LOBYTE(v13) = static MLDataValue.== infix(_:_:)(&v18, &v21);
        v2 = v13;
        outlined consume of MLDataValue(v21, v22, v23);
        outlined consume of MLDataValue(v18, v19, v20);
        if ((v2 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 = v5;
      }

      while (v15 != 1);
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

char _sSasSQRzlE2eeoiySbSayxG_ABtFZ18CreateMLComponents16AnnotatedFeatureVy10Foundation3URLVSSG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = &v24;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v9 = &v24;
  v10 = *(a1 + 16);
  v32 = a2;
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (v10 && a1 != v32)
  {
    v12 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v13 = v12 + a1;
    v32 += v12;
    v14 = *(v30 + 16);
    v29 = *(v30 + 72);
    v15 = v10;
    v28 = v14;
    do
    {
      v24 = v10;
      v14(v9, v13, v3);
      v16 = v15 == 0;
      v17 = v15 - 1;
      if (v16)
      {
        BUG();
      }

      v26 = v17;
      v25 = v13;
      v18 = v9;
      v19 = v27;
      v20 = v32;
      v14(v27, v32, v3);
      v21 = lazy protocol witness table accessor for type AnnotatedFeature<URL, String> and conformance <> AnnotatedFeature<A, B>();
      v22 = v18;
      v31 = dispatch thunk of static Equatable.== infix(_:_:)(v18, v19, v3, v21);
      v23 = *(v30 + 8);
      v23(v19, v3);
      v23(v22, v3);
      result = v31;
      if ((v31 & 1) == 0)
      {
        break;
      }

      v32 = v29 + v20;
      v13 = v29 + v25;
      v15 = v26;
      v10 = v26;
      v9 = v22;
      v14 = v28;
    }

    while (v24 != 1);
  }

  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo8NSNumberC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  if ((a1 & 0x4000000000000001) != 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFF8;
    if (v4)
    {
      v25 = v4;
    }

    v4 = a1;
    v5 = _CocoaArrayWrapper.endIndex.getter(v25);
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFF8));
  }

  v29 = v5;
  if ((a2 & 0x4000000000000001) != 0)
  {
    v26 = a2 & 0xFFFFFFFFFFFFF8;
    if (a2)
    {
      v26 = a2;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter(v26);
    v5 = v29;
    v4 = a1;
  }

  else
  {
    v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFF8));
  }

  if (v5 == v6)
  {
    LOBYTE(v2) = 1;
    if (v5)
    {
      v7 = v4 & 0xFFFFFFFFFFFFF8;
      if (v4)
      {
        v7 = v4;
      }

      if ((v4 & 0x4000000000000001) == 0)
      {
        v7 = (v4 & 0xFFFFFFFFFFFFF8) + 32;
      }

      v8 = a2;
      if ((a2 & 1) == 0)
      {
        v8 = a2 & 0xFFFFFFFFFFFFF8;
      }

      if ((a2 & 0x4000000000000001) == 0)
      {
        v8 = (a2 & 0xFFFFFFFFFFFFF8) + 32;
      }

      if (v7 != v8)
      {
        if (v5 < 0)
        {
          BUG();
        }

        if ((v4 & 0xC000000000000003) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, v4);
        }

        else
        {
          v9 = *(v4 + 32);
        }

        v10 = v9;
        v27 = a2 & 0xFFFFFFFFFFFFF8;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (a2 & 0xC000000000000003) == 0, a2);
        v28 = a2;
        if ((a2 & 0xC000000000000003) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)(0, a2);
        }

        else
        {
          v11 = *(a2 + 32);
        }

        v12 = v11;
        v2 = 0;
        type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        v13 = static NSObject.== infix(_:_:)(v10, v12);

        v14 = v29;
        if (v13)
        {
          LOBYTE(v2) = 1;
          if (v29 != 1)
          {
            v15 = 5;
            do
            {
              v16 = v15 - 4;
              if (v15 - 4 >= v14)
              {
                BUG();
              }

              v17 = v16 + 1;
              if (__OFADD__(1, v16))
              {
                BUG();
              }

              if ((a1 & 0xC000000000000003) != 0)
              {
                v18 = specialized _ArrayBuffer._getElementSlowPath(_:)(v15 - 4, a1);
              }

              else
              {
                v18 = *(a1 + 8 * v15);
              }

              v19 = v18;
              if ((v28 & 0xC000000000000003) != 0)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)(v15 - 4, v28);
              }

              else
              {
                if (v16 >= *(v27 + 16))
                {
                  BUG();
                }

                v20 = *(v28 + 8 * v15);
              }

              v21 = v20;
              v22 = v19;
              v23 = static NSObject.== infix(_:_:)(v19, v20);

              v2 = v23;
              if ((v23 & 1) == 0)
              {
                break;
              }

              ++v15;
              v14 = v29;
            }

            while (v17 != v29);
          }
        }
      }
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

id MLDataValue.MultiArrayType.dataValue.getter()
{
  v2 = *v1;
  *v0 = *v1;
  *(v0 + 8) = 0;
  *(v0 + 16) = 5;
  return v2;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init(shape:)(Swift::OpaquePointer shape)
{
  v3 = v1;
  v10 = *(shape._rawValue + 2);
  if (v10)
  {
    v9 = v1;
    specialized ContiguousArray.reserveCapacity(_:)(v10);
    v4 = 0;
    do
    {
      v5 = *(shape._rawValue + v4++ + 4);
      v6 = objc_allocWithZone(NSNumber);
      [v6 initWithInteger:v5];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v7);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7);
      specialized ContiguousArray._endMutation()(v7);
    }

    while (v10 != v4);
    shape._rawValue;
    v3 = v9;
  }

  else
  {
    shape._rawValue;
  }

  objc_allocWithZone(MLMultiArray);
  result._contents.super.isa = @nonobjc MLMultiArray.init(shape:dataType:)(_swiftEmptyArrayStorage, 65600);
  v3->_contents.super.isa = result._contents.super.isa;
  return result;
}

uint64_t incrementIndex #1 (shape:index:) in MLDataValue.MultiArrayType.init(_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if ((*a2 & 0x4000000000000001) != 0)
  {
    v22 = v2 & 0xFFFFFFFFFFFFF8;
    if (v2)
    {
      v22 = *a2;
    }

    v3 = _CocoaArrayWrapper.endIndex.getter(v22);
  }

  else
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8));
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    BUG();
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    LODWORD(v15) = 0;
  }

  else
  {
    v24 = *(a1 + 16);
    v23 = v5;
    do
    {
      if ((v2 & 0xC000000000000003) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v4 = __OFADD__(1, v8);
      v9 = v8 + 1;
      if (v4)
      {
        BUG();
      }

      v10 = objc_allocWithZone(NSNumber);
      v11 = [v10 initWithInteger:v9];
      if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v2) & ((v2 & 0x4000000000000001) == 0)) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      }

      v12 = v2 & 0xFFFFFFFFFFFFF8;
      if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8)))
      {
        BUG();
      }

      v13 = *(&stru_20.cmd + 8 * v5 + (v2 & 0xFFFFFFFFFFFFF8));
      *(&stru_20.cmd + 8 * v5 + (v2 & 0xFFFFFFFFFFFFF8)) = v11;

      if ((v2 & 0xC000000000000003) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)(v5, v2);
      }

      else
      {
        if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFF8)))
        {
          BUG();
        }

        v14 = *(v2 + 8 * v5 + 32);
      }

      v15 = v14;
      v16 = [v14 integerValue];

      if (v23 >= v24)
      {
        BUG();
      }

      LOBYTE(v15) = v16 < *(a1 + 8 * v5 + 32);
      if (v16 < *(a1 + 8 * v5 + 32))
      {
        break;
      }

      v17 = objc_allocWithZone(NSNumber);
      v18 = [v17 initWithInteger:0];
      if ((swift_isUniquelyReferenced_nonNull_bridgeObject(v2) & ((v2 & 0x4000000000000001) == 0)) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v12 = v2 & 0xFFFFFFFFFFFFF8;
      }

      if (v5 >= *(v12 + 16))
      {
        BUG();
      }

      v19 = *(v12 + 8 * v5 + 32);
      *(v12 + 8 * v5 + 32) = v18;
    }

    while (v5-- != 0);
    *a2 = v2;
  }

  return v15;
}

void MLDataValue.MultiArrayType.subscript.getter(uint64_t a1)
{
  v2 = [*v1 objectAtIndexedSubscript:a1];
  v3 = v2;
  [v3 doubleValue];
}

{
  v2 = *v1;
  v12 = *(a1 + 16);
  if (v12)
  {
    v11 = *v1;
    specialized ContiguousArray.reserveCapacity(_:)(v12);
    v4 = 0;
    do
    {
      v5 = *(a1 + 8 * v4++ + 32);
      v6 = objc_allocWithZone(NSNumber);
      [v6 initWithInteger:v5];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()(v6);
      v7 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v7);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v7);
      specialized ContiguousArray._endMutation()(v7);
    }

    while (v12 != v4);
    v2 = v11;
  }

  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  _swiftEmptyArrayStorage;
  v9 = [v2 objectForKeyedSubscript:isa];
  v10 = v9;

  [v10 doubleValue];
}

uint64_t static MLDataValue.MultiArrayType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  return static NSObject.== infix(_:_:)(v2, v3);
}

uint64_t MLDataValue.MultiArrayType.description.getter(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)(v3);

  return v4;
}

void MLDataValue.MultiArrayType.init(from:)(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 != 5)
  {
    outlined consume of MLDataValue(v4, *(a1 + 8), v5);
    v4 = 0;
  }

  *v3 = v4;
}

CreateML::MLDataValue::MultiArrayType __swiftcall MLDataValue.MultiArrayType.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>);
  v3 = swift_allocObject(v2, 40, 7);
  v3[2].super.super.isa = (&dword_0 + 1);
  v3[3].super.super.isa = (&dword_0 + 3);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v3[4].super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  objc_allocWithZone(MLMultiArray);
  v4 = @nonobjc MLMultiArray.init(shape:dataType:)(v3, &loc_10020);
  if (!v4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002ELL, "CreateML/MultiArrayType.swift" + 0x8000000000000000, "CreateML/MultiArrayType.swift", 29, 2, 108, 0);
    BUG();
  }

  MLDataValue.MultiArrayType.init(_:)(v4);
  result._contents.super.isa = v6;
  *v1 = v6;
  return result;
}

void *MLDataValue.MultiArrayType.init(from:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_allocObject(&unk_3926C8, 24, 7);
  v4 = specialized handling<A, B>(_:_:)(*(a1 + 16));
  v27 = v2;
  if (!v4)
  {
    BUG();
  }

  v5 = type metadata accessor for CMLMultiArray();
  v6 = swift_allocObject(v5, 24, 7);
  *(v6 + 16) = v4;
  v29 = v3;
  *(v3 + 16) = v6;
  v6;
  v7 = CMLMultiArray.data()();
  v8 = CMLMultiArray.dimensions()();
  if (v9)
  {
    swift_unexpectedError(v9, "CreateML/MultiArrayType.swift", 29, 1, 122);
    BUG();
  }

  v10 = v8;
  v11 = CMLMultiArray.shape()();
  v12 = CMLMultiArray.strides()();
  if (v10 < 0)
  {
    BUG();
  }

  v30 = v7;
  if (v10)
  {
    v31 = v12;
    specialized ContiguousArray.reserveCapacity(_:)(v10);
    v13 = 0;
    v32 = v10;
    do
    {
      v14 = v11;
      v15 = *(v11 + 8 * v13++);
      v16 = objc_allocWithZone(NSNumber);
      v17 = [v16 initWithUnsignedLongLong:v15];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = *(&_swiftEmptyArrayStorage + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v18);
      v19 = v17;
      v11 = v14;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v18, v19);
      specialized ContiguousArray._endMutation()();
    }

    while (v32 != v13);
    v33 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)(v32);
    v20 = 0;
    do
    {
      v21 = *(v31 + 8 * v20++);
      v22 = objc_allocWithZone(NSNumber);
      v23 = [v22 initWithLongLong:v21];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v24 = *(&_swiftEmptyArrayStorage + 2);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)(v24);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v24, v23);
      specialized ContiguousArray._endMutation()();
    }

    while (v32 != v20);
  }

  objc_allocWithZone(MLMultiArray);
  v29;
  v25 = @nonobjc MLMultiArray.init(dataPointer:shape:dataType:strides:deallocator:)(v30, &_swiftEmptyArrayStorage, 65600, &_swiftEmptyArrayStorage, partial apply for closure #3 in MLDataValue.MultiArrayType.init(from:), v29);
  MLDataValue.MultiArrayType.init(_:)(v25);
  v29;
  a1;
  v6;
  result = v33;
  *v27 = v33;
  return result;
}

uint64_t closure #3 in MLDataValue.MultiArrayType.init(from:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess(a2 + 16, v4, 1, 0);
  v2 = *(a2 + 16);
  *(a2 + 16) = 0;
  return v2;
}

uint64_t MLDataValue.MultiArrayType.featureValue.getter()
{
  v1 = *v0;
  v34 = [v1 dataPointer];
  v2 = [v1 shape];
  v3 = v2;
  v4 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v3, v4);

  v6 = specialized Array._getCount()(v5);
  if (v6)
  {
    v7 = v6;
    v40 = _swiftEmptyArrayStorage;
    v8 = 0;
    if (v6 > 0)
    {
      v8 = v6;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    if (v7 < 0)
    {
      BUG();
    }

    v35 = v4;
    v38 = v1;
    v9 = v40;
    v10 = 0;
    v36 = v5;
    v37 = v7;
    do
    {
      v11 = v9;
      if ((v5 & 0xC000000000000003) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)(v10, v5);
      }

      else
      {
        v12 = *(v5 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 unsignedLongLongValue];

      v9 = v11;
      v40 = v11;
      v15 = v11[2];
      if (v9[3] >> 1 <= v15)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v9[3] >= 2uLL, v15 + 1, 1);
        v9 = v40;
      }

      ++v10;
      v9[2] = v15 + 1;
      v9[v15 + 4] = v14;
      v5 = v36;
    }

    while (v37 != v10);
    v39 = v9;
    v36;
    v4 = v35;
    v16 = [v38 strides];
  }

  else
  {
    v5;
    v39 = _swiftEmptyArrayStorage;
    v16 = [v1 strides];
  }

  v17 = v16;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)(v17, v4);

  v19 = specialized Array._getCount()(v18);
  if (v19)
  {
    v20 = v19;
    v40 = _swiftEmptyArrayStorage;
    v21 = 0;
    if (v19 > 0)
    {
      v21 = v19;
    }

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
    if (v20 < 0)
    {
      BUG();
    }

    v22 = v40;
    v23 = 0;
    v37 = v18;
    v38 = v20;
    do
    {
      if ((v18 & 0xC000000000000003) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)(v23, v18);
      }

      else
      {
        v24 = *(v18 + 8 * v23 + 32);
      }

      v25 = v24;
      v36 = [v24 longLongValue];

      v40 = v22;
      v26 = v22[2];
      if (v22[3] >> 1 <= v26)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22[3] >= 2uLL, v26 + 1, 1);
        v22 = v40;
      }

      v23 = v23 + 1;
      v22[2] = v26 + 1;
      v22[v26 + 4] = v36;
      v18 = v37;
    }

    while (v38 != v23);
    v37;
  }

  else
  {
    v18;
    v22 = _swiftEmptyArrayStorage;
  }

  v27 = v39[2];
  swift_bridgeObjectRetain_n(v39, 2);
  v22;
  v28 = specialized handling<A, B, C, D, E>(_:_:_:_:_:)(v27, (v39 + 4), (v22 + 4), v34);
  if (!v28)
  {
    BUG();
  }

  v29 = type metadata accessor for CMLMultiArray();
  inited = swift_initStackObject(v29, v33);
  *(inited + 16) = v28;
  swift_bridgeObjectRelease_n(v22, 2);
  swift_bridgeObjectRelease_n(v39, 3);
  type metadata accessor for CMLFeatureValue();
  inited;
  v31 = CMLFeatureValue.__allocating_init(_:)(inited);
  inited;
  return v31;
}

id @nonobjc MLMultiArray.init(shape:dataType:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1;
  v8 = 0;
  v4 = [v2 initWithShape:isa dataType:a2 error:&v8];

  v5 = v8;
  if (v4)
  {
    v8;
  }

  else
  {
    v6 = v8;
    _convertNSErrorToError(_:)(v5);

    swift_willThrow();
  }

  return v4;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for Column<[Float]>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for Column<[Double]>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for URL);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for WeightedDataSample);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Tensor);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for MLProgram.Operation);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for FeatureDescription);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for NeuralNetwork.Layer);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, type metadata accessor for MLCheckpoint);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for ClassificationDistribution<String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for ClassificationDistribution<Int>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for MLShapedArray<Double>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Model);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for FeatureVectorizerConfiguration.Input);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &demangling cache variable for type metadata for MLShapedArray<Float>);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for Event);
}

size_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *a3)
{
  result = 24 * a2;
  if (&__src[24 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = 56 * a2;
  if (&__src[56 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = 40 * a2;
  if (&__src[40 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  result = 48 * a2;
  if (&__src[48 * a2] <= a3 || a3 != __src)
  {
    return memmove(a3, __src, result);
  }

  return result;
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

{
  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(__src, a2, a3);
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledName(a4), a1 + a2 * *(*(result - 8) + 72) <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledName(a4);
    return swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {
    return swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

void *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, size_t __len, char *__dst)
{
  result = __len;
  if (&__src[__len] <= __dst || __dst != __src)
  {
    return memmove(__dst, __src, __len);
  }

  return result;
}

uint64_t specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + a2 * *(*(result - 8) + 72) <= a3))
  {
    v7 = a4(0);
    return swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {
    return swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int64>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Double?>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int?>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>, &type metadata for MLDataValue);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Double)>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>, &type metadata for MLRecommender.Identifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[(MLDataValue, MLDataValue)]?>, &demangling cache variable for type metadata for [(MLDataValue, MLDataValue)]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[(key: MLDataValue, value: MLDataValue)]?>, &demangling cache variable for type metadata for [(key: MLDataValue, value: MLDataValue)]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLDataValue]?>, &demangling cache variable for type metadata for [MLDataValue]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Double)>, &demangling cache variable for type metadata for (String, Double));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Float]>, &demangling cache variable for type metadata for [Float]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Float]>>, &demangling cache variable for type metadata for Column<[Float]>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Double]>, &demangling cache variable for type metadata for [Double]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Double]>>, &demangling cache variable for type metadata for Column<[Double]>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(MLDataValue, MLDataValue)>, &demangling cache variable for type metadata for (MLDataValue, MLDataValue));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(String, CSVType)>, &demangling cache variable for type metadata for (String, CSVType));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(String, JSONType)>, &demangling cache variable for type metadata for (String, JSONType));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<DataFrame.Slice?>, &demangling cache variable for type metadata for DataFrame.Slice?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Numeric>, &demangling cache variable for type metadata for Numeric);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(label: Int, keypoints: MLMultiArray)>, &demangling cache variable for type metadata for (label: Int, keypoints: MLMultiArray));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(label: String, confidence: Double)>, &demangling cache variable for type metadata for (label: String, confidence: Double));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[(label: String, confidence: Double)]>, &demangling cache variable for type metadata for [(label: String, confidence: Double)]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<String>>, &demangling cache variable for type metadata for ClassificationDistribution<String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<Int>>, &demangling cache variable for type metadata for ClassificationDistribution<Int>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Double>, Int>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Double>, Int>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Double>, String>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Double>, String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Any?]>>, &demangling cache variable for type metadata for Column<[Any?]>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<String>>, &demangling cache variable for type metadata for Column<String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLObjectDetector.DecodableAnnotation]?>, &demangling cache variable for type metadata for [MLObjectDetector.DecodableAnnotation]?);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLObjectDetector.ObjectAnnotation]>, &demangling cache variable for type metadata for [MLObjectDetector.ObjectAnnotation]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : Any]>, &demangling cache variable for type metadata for [String : Any]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String]>, &demangling cache variable for type metadata for [String]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(label: Int, embedding: MLMultiArray)>, &demangling cache variable for type metadata for (label: Int, embedding: MLMultiArray));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLIdentifier>, &demangling cache variable for type metadata for MLIdentifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(user: MLRecommender.Identifier, item: MLRecommender.Identifier)>, &demangling cache variable for type metadata for (user: MLRecommender.Identifier, item: MLRecommender.Identifier));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(text: String, distance: Double)>, &demangling cache variable for type metadata for (text: String, distance: Double));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Float>, String>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<URL, String>>, &demangling cache variable for type metadata for AnnotatedFeature<URL, String>);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(predicted: String, label: String)>, &demangling cache variable for type metadata for (predicted: String, label: String));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLActionClassifier.Prediction]>, &demangling cache variable for type metadata for [MLActionClassifier.Prediction]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[MLHandActionClassifier.Prediction]>, &demangling cache variable for type metadata for [MLHandActionClassifier.Prediction]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<(text: String, label: String)>, &demangling cache variable for type metadata for (text: String, label: String));
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : Double]>, &demangling cache variable for type metadata for [String : Double]);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<URL>, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<WeightedDataSample>, type metadata accessor for WeightedDataSample);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>, &type metadata accessor for Tensor);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLProgram.Value>, &type metadata accessor for MLProgram.Value);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>, &type metadata accessor for FeatureDescription);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>, &type metadata accessor for NeuralNetwork.Layer);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLLinearRegressor>, type metadata accessor for MLLinearRegressor);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLLogisticRegressionClassifier>, type metadata accessor for MLLogisticRegressionClassifier);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnyColumn>, &type metadata accessor for AnyColumn);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ItemSimilarityRecommenderConfiguration.SimilarItems>, &type metadata accessor for ItemSimilarityRecommenderConfiguration.SimilarItems);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &demangling cache variable for type metadata for _ContiguousArrayStorage<ItemSimilarityRecommenderConfiguration.ItemScore>, &type metadata accessor for ItemSimilarityRecommenderConfiguration.ItemScore);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int>);
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 16 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for String);
  }

  a4;
  return v11;
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int?>);
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Int32>);
    v11 = swift_allocObject(v10, 4 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[4 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }

  a4;
  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Double>);
    v11 = swift_allocObject(v10, 8 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 8);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[8 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v9);
  }

  a4;
  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Bool>);
    v11 = swift_allocObject(v10, v5 + 32, 7);
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Float>);
    v11 = swift_allocObject(v10, 4 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[4 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 4 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v9);
  }

  return v11;
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>);
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<ColumnDescriptor>);
    v11 = swift_allocObject(v10, 32 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 32);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 32 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for ColumnDescriptor);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.NormalizedAnnotation>);
    v11 = swift_allocObject(v10, 32 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 32);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 32 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for MLObjectDetector.NormalizedAnnotation);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CGRect>);
    v11 = swift_allocObject(v10, 32 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 32);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 32 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.ObjectAnnotation>);
    v11 = swift_allocObject(v10, 56 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 56);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[56 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 56 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for MLObjectDetector.ObjectAnnotation);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Metadata>);
    v11 = swift_allocObject(v10, 24 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[24 * v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for Metadata);
  }

  return v11;
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>, &type metadata for MLRecommender.Identifier);
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Int, score: Double)>);
    v11 = swift_allocObject(v10, 24 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 24 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(precision: Double, recall: Double)>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 16 * v9;
  if (a1)
  {
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
    v11 = swift_allocObject(v10, v5 + 32, 7);
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (&v14[v9] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

{
  v5 = a2;
  if (a3)
  {
    v7 = *(a4 + 3);
    if ((v7 >> 1) >= a2)
    {
      v5 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 > a2)
      {
        v5 = v8;
      }
    }
  }

  v9 = *(a4 + 2);
  if (v5 <= v9)
  {
    v5 = *(a4 + 2);
  }

  if (v5)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLUntypedColumn>);
    v11 = swift_allocObject(v10, 16 * v5 + 32, 7);
    v12 = (_swift_stdlib_malloc_size(v11) - 32);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v12 / 16);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    v15 = 16 * v9;
    if (&v14[v15] <= v13 || v11 != a4)
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v13, v14, v9, &type metadata for MLUntypedColumn);
  }

  return v11;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = a2;
  if (a3)
  {
    v8 = *(a4 + 3);
    if ((v8 >> 1) >= a2)
    {
      v6 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v6 = v9;
      }
    }
  }

  v10 = *(a4 + 2);
  if (v6 <= v10)
  {
    v6 = *(a4 + 2);
  }

  if (v6)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v12 = swift_allocObject(v11, 8 * v6 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v13 / 8);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (a1)
  {
    if (&v15[8 * v10] <= v14 || v12 != a4)
    {
      memmove(v14, v15, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v10);
  }

  a4;
  return v12;
}

{
  v6 = a2;
  if (a3)
  {
    v8 = *(a4 + 3);
    if ((v8 >> 1) >= a2)
    {
      v6 = *(a4 + 3) >> 1;
    }

    else
    {
      if (((v8 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if (v9 > a2)
      {
        v6 = v9;
      }
    }
  }

  v10 = *(a4 + 2);
  if (v6 <= v10)
  {
    v6 = *(a4 + 2);
  }

  if (v6)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v12 = swift_allocObject(v11, 16 * v6 + 32, 7);
    v13 = (_swift_stdlib_malloc_size(v12) - 32);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v13 / 16);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 16 * v10;
  if (a1)
  {
    if (&v15[v16] <= v14 || v12 != a4)
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String?>);
    v10 = swift_allocObject(v9, 16 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 2 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for String?);
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<RecommendationMetrics<MLRecommender.Identifier>>);
    v10 = swift_allocObject(v9, 56 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[7 * v8 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for RecommendationMetrics<MLRecommender.Identifier>);
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(MLDataValue, Int)>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 4 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (MLDataValue, Int));
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(tokens: [String], labels: [String])>);
    v10 = swift_allocObject(v9, 16 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 2 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (tokens: [String], labels: [String]));
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<NLLanguage>);
    v10 = swift_allocObject(v9, 8 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    if (&a4[v8 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    v12 = type metadata accessor for NLLanguage(0);
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v12);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>>);
    v10 = swift_allocObject(v9, (v5 << 6) | 0x20, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = v8 << 6;
    if ((a4 + v12 + 32) <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>);
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v13);
  }

  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(item: MLRecommender.Identifier, score: Double)>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 4 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (item: MLRecommender.Identifier, score: Double));
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v13);
  }

  return v10;
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(text: String, label: String)>, &demangling cache variable for type metadata for (text: String, label: String));
}

{
  v5 = a2;
  if (a3)
  {
    v6 = a4[3];
    if ((v6 >> 1) >= a2)
    {
      v5 = a4[3] >> 1;
    }

    else
    {
      if (((v6 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if (v7 > a2)
      {
        v5 = v7;
      }
    }
  }

  v8 = a4[2];
  if (v5 <= v8)
  {
    v5 = a4[2];
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    v10[2] = v8;
    v10[3] = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    v12 = 4 * v8;
    if (&a4[v12 + 4] <= v10 + 4 || v10 != a4)
    {
      memmove(v10 + 4, a4 + 4, v12 * 8);
    }

    a4[2] = 0;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
    swift_arrayInitWithCopy(v10 + 4, a4 + 4, v8, v13);
  }

  return v10;
}