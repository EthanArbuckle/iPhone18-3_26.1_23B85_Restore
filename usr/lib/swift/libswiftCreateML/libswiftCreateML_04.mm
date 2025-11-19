Swift::Int MLRecommender.Identifier.hashValue.getter(Swift::UInt a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)(0);
  if (a3)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v5, a1);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLRecommender.Identifier(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)(a1);
  if (v4)
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v2);
  }

  else
  {
    Hasher._combine(_:)(0);
    String.hash(into:)(v6, v2);
  }

  return Hasher._finalize()();
}

uint64_t MLRecommender.IdentifierType.description.getter(char a1)
{
  v5 = v1;
  if (a1)
  {
    v5 = &type metadata for Int;
    v2 = &demangling cache variable for type metadata for Int.Type;
  }

  else
  {
    v5 = &type metadata for String;
    v2 = &demangling cache variable for type metadata for String.Type;
  }

  v3 = __swift_instantiateConcreteTypeFromMangledName(v2);
  return String.init<A>(describing:)(&v5, v3);
}

uint64_t lazy protocol witness table accessor for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType()
{
  result = lazy protocol witness table cache variable for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType;
  if (!lazy protocol witness table cache variable for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.IdentifierType, &type metadata for MLRecommender.IdentifierType);
    lazy protocol witness table cache variable for type MLRecommender.IdentifierType and conformance MLRecommender.IdentifierType = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier()
{
  result = lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier;
  if (!lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.Identifier, &type metadata for MLRecommender.Identifier);
    lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier;
  if (!lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.Identifier, &type metadata for MLRecommender.Identifier);
    lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier = result;
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier;
  if (!lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for MLRecommender.Identifier, &type metadata for MLRecommender.Identifier);
    lazy protocol witness table cache variable for type MLRecommender.Identifier and conformance MLRecommender.Identifier = result;
  }

  return result;
}

uint64_t base witness table accessor for Equatable in MLRecommender.Identifier()
{
  return lazy protocol witness table accessor for type MLRecommender.Identifier and conformance MLRecommender.Identifier();
}

{
  return base witness table accessor for Equatable in MLRecommender.Identifier();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.modelPath.getter()
{
  v2 = v0;
  v3 = type metadata accessor for URL(0);
  return (*(*(v3 - 8) + 16))(v2, v1, v3);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.getter()
{
  v1 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v2 = *(v0 + v1);
  *(v0 + v1 + 8);
  return v2;
}

uint64_t MLImageClassifier.CustomFeatureExtractor.outputName.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  result = *(v2 + v3 + 8);
  *(v2 + v3) = a1;
  *(v2 + v3 + 8) = a2;
  return result;
}

uint64_t MLImageClassifier.CustomFeatureExtractor.init(modelPath:outputName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v7 = type metadata accessor for URL(0);
  result = (*(*(v7 - 8) + 32))(v5, a1, v7);
  *(v5 + v6) = a2;
  *(v5 + v6 + 8) = a3;
  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.CustomFeatureExtractor.validate()()
{
  v1 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v2 = *(v0 + v1 + 8);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = HIBYTE(v2) & 0xF;
  v4 = *(v0 + v1) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(v0 + v1) & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    v15 = " is not readable." + 0x8000000000000000;
    v14 = 0xD000000000000034;
  }

  else
  {
LABEL_5:
    v5 = objc_opt_self(NSFileManager);
    v6 = [v5 defaultManager];
    v7 = v6;
    v18[3] = v0;
    URL.path.getter(v6);
    v9 = v8;
    v10 = String._bridgeToObjectiveC()();
    v9;
    LOBYTE(v9) = [v7 isReadableFileAtPath:v10];

    if (v9)
    {
      return;
    }

    _StringGuts.grow(_:)(32);
    0xE000000000000000;
    strcpy(v18, "The model at ");
    HIWORD(v18[1]) = -4864;
    v11._countAndFlagsBits = URL.path.getter(0xE000000000000000);
    object = v11._object;
    String.append(_:)(v11);
    object;
    v13._object = " is not supported." + 0x8000000000000000;
    v13._countAndFlagsBits = 0xD000000000000011;
    String.append(_:)(v13);
    v14 = v18[0];
    v15 = v18[1];
  }

  v16 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v16, 0, 0);
  *v17 = v14;
  *(v17 + 8) = v15;
  *(v17 + 16) = 0;
  *(v17 + 32) = 0;
  *(v17 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v16);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.buildTransformer()(uint64_t a1)
{
  v2[5] = v1;
  v2[4] = a1;
  v3 = type metadata accessor for MLModelImageFeatureExtractor(0);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = swift_task_alloc((*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageScaler(0);
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v2[11] = swift_task_alloc((*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FeatureType(0);
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[14] = swift_task_alloc(v9);
  v2[15] = swift_task_alloc(v9);
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2[16] = swift_task_alloc(v10);
  v2[17] = swift_task_alloc(v10);
  v2[18] = swift_task_alloc(v10);
  v2[19] = swift_task_alloc(v10);
  v11 = type metadata accessor for FeatureType.ImageParameters(0);
  v2[20] = v11;
  v12 = *(v11 - 8);
  v2[21] = v12;
  v2[22] = swift_task_alloc((*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Model(0);
  v2[23] = v13;
  v14 = *(v13 - 8);
  v2[24] = v14;
  v2[25] = swift_task_alloc((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  return swift_task_switch(MLImageClassifier.CustomFeatureExtractor.buildTransformer(), 0, 0);
}

{
  v3 = *(*v2 + 208);
  v6 = *v2;
  *(v6 + 216) = a1;
  *(v6 + 224) = v1;
  v3;
  if (v1)
  {
    v4 = MLImageClassifier.CustomFeatureExtractor.buildTransformer();
  }

  else
  {
    v4 = MLImageClassifier.CustomFeatureExtractor.buildTransformer();
  }

  return swift_task_switch(v4, 0, 0);
}

uint64_t MLImageClassifier.CustomFeatureExtractor.buildTransformer()()
{
  v1 = v0[5];
  v2 = v0[25];
  MLImageClassifier.CustomFeatureExtractor.buildModel()();
  type metadata accessor for MLModel();
  v3 = swift_task_alloc(208);
  v0[26] = v3;
  *v3 = v0;
  v3[1] = MLImageClassifier.CustomFeatureExtractor.buildTransformer();
  return static MLModel.compile(_:)(v0[25]);
}

{
  v1 = *(v0 + 152);
  v2 = *(v0 + 200);
  v3 = Model.inputs.getter();
  specialized Collection.first.getter(v3);
  v3;
  v68 = type metadata accessor for FeatureDescription(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v68) == 1)
  {
    BUG();
  }

  v4 = *(v0 + 152);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  FeatureDescription.type.getter();
  v8 = (*(v7 + 88))(v5, v6);
  v89 = *(v0 + 200);
  if (v8 == enum case for FeatureType.image(_:))
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 168);
    v11 = *(v0 + 160);
    v94 = *(v0 + 152);
    v74 = *(v0 + 144);
    v12 = *(v0 + 120);
    v79 = *(v0 + 88);
    (*(*(v0 + 104) + 96))(v12, *(v0 + 96));
    (*(v10 + 32))(v9, v12, v11);
    v13 = v94;
    v95 = *(*(v68 - 8) + 8);
    v95(v13, v68);
    v84 = FeatureType.ImageParameters.width.getter();
    v14 = FeatureType.ImageParameters.height.getter();
    ImageScaler.init(targetSize:)(v84, v14);
    v15 = Model.inputs.getter();
    specialized Collection.first.getter(v15);
    v15;
    if (__swift_getEnumTagSinglePayload(v74, 1, v68) == 1)
    {
      BUG();
    }

    v16 = *(v0 + 200);
    v17 = *(v0 + 136);
    v18 = *(v0 + 144);
    v90 = FeatureDescription.name.getter();
    v75 = v19;
    v95(v18, v68);
    v20 = Model.outputs.getter();
    specialized Collection.first.getter(v20);
    v20;
    if (__swift_getEnumTagSinglePayload(v17, 1, v68) == 1)
    {
      BUG();
    }

    v80 = *(v0 + 224);
    v21 = *(v0 + 216);
    v71 = *(v0 + 64);
    v22 = *(v0 + 136);
    v85 = FeatureDescription.name.getter();
    v24 = v23;
    v95(v22, v68);
    v25 = objc_allocWithZone(CIContext);
    v26 = [v25 init];
    v27 = v21;
    v28 = v24;
    v29 = v80;
    MLModelImageFeatureExtractor.init(model:inputName:outputName:context:)(v27, v90, v75, v85, v28, v26);
    v30 = *(v0 + 216);
    v31 = *(v0 + 200);
    v76 = *(v0 + 192);
    v96 = *(v0 + 184);
    v91 = *(v0 + 176);
    v86 = *(v0 + 160);
    v81 = *(v0 + 168);
    if (!v29)
    {
      v61 = *(v0 + 152);
      v60 = *(v0 + 144);
      v59 = *(v0 + 136);
      v67 = *(v0 + 128);
      v73 = *(v0 + 120);
      v70 = *(v0 + 112);
      v54 = *(v0 + 88);
      v62 = *(v0 + 80);
      v65 = *(v0 + 72);
      v64 = *(v0 + 216);
      v55 = *(v0 + 64);
      v63 = *(v0 + 56);
      v56 = *(v0 + 32);
      v57 = *(v0 + 48);
      Transformer.appending<A>(_:)(v55, v65, v57, &protocol witness table for ImageScaler, &protocol witness table for MLModelImageFeatureExtractor);

      (*(v63 + 8))(v55, v57);
      (*(v62 + 8))(v54, v65);
      (*(v81 + 8))(v91, v86);
      (*(v76 + 8))(v31, v96);
      v31;
      v91;
      v61;
      v60;
      v59;
      v67;
      v73;
      v70;
      v54;
      v55;
      v52 = *(v0 + 8);
      return v52();
    }

    v32 = *(v0 + 88);
    v33 = *(v0 + 72);
    v34 = *(v0 + 200);
    v35 = *(v0 + 80);

    (*(v35 + 8))(v32, v33);
    (*(v81 + 8))(v91, v86);
    v36 = v34;
    v37 = v96;
    v38 = v76;
  }

  else
  {
    v39 = *(v0 + 152);
    v40 = *(v0 + 128);
    v77 = *(*(v0 + 104) + 8);
    v77(*(v0 + 120), *(v0 + 96));
    v82 = *(*(v68 - 8) + 8);
    v82(v39, v68);
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);
    *(v0 + 16) = v58;
    v41._object = "(no outputName found)" + 0x8000000000000000;
    v41._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v41);
    v42 = Model.inputs.getter();
    specialized Collection.first.getter(v42);
    v42;
    if (__swift_getEnumTagSinglePayload(v40, 1, v68) == 1)
    {
      BUG();
    }

    v66 = *(v0 + 216);
    v87 = *(v0 + 200);
    v92 = *(v0 + 192);
    v72 = *(v0 + 184);
    v43 = *(v0 + 128);
    v44 = *(v0 + 96);
    v45 = *(v0 + 112);
    FeatureDescription.type.getter();
    v82(v43, v68);
    _print_unlocked<A, B>(_:_:)(v45, v0 + 16, v44, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
    v77(v45, v44);
    v46._countAndFlagsBits = 0x64616574736E6920;
    v46._object = 0xE90000000000002ELL;
    String.append(_:)(v46);
    v69 = *(v0 + 16);
    v46._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v46._object, 0, 0);
    *v47 = v69;
    *(v47 + 16) = 0;
    *(v47 + 32) = 0;
    *(v47 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v46._object);

    v36 = v87;
    v37 = v72;
    v38 = v92;
  }

  (*(v38 + 8))(v36, v37);
  v48 = *(v0 + 176);
  v49 = *(v0 + 152);
  v50 = *(v0 + 144);
  v51 = *(v0 + 136);
  v88 = *(v0 + 128);
  v83 = *(v0 + 120);
  v78 = *(v0 + 112);
  v93 = *(v0 + 64);
  v97 = *(v0 + 88);
  *(v0 + 200);
  v48;
  v49;
  v50;
  v51;
  v88;
  v83;
  v78;
  v97;
  v93;
  v52 = *(v0 + 8);
  return v52();
}

{
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v6 = *(v0 + 224);
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 144);
  v4 = *(v0 + 136);
  v11 = *(v0 + 128);
  v10 = *(v0 + 120);
  v9 = *(v0 + 112);
  v7 = *(v0 + 64);
  v8 = *(v0 + 88);
  *(v0 + 200);
  v1;
  v2;
  v3;
  v4;
  v11;
  v10;
  v9;
  v8;
  v7;
  return (*(v0 + 8))();
}

uint64_t MLImageClassifier.CustomFeatureExtractor.buildModel()()
{
  v193 = v1;
  *&v187 = v2;
  v176 = v0;
  v162 = type metadata accessor for FeatureType.ShapedArrayParameters.DataType(0);
  v161 = *(v162 - 8);
  v3 = *(v161 + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v163 = &v150;
  v177 = type metadata accessor for FeatureType.ShapedArrayParameters(0);
  v160 = *(v177 - 8);
  v6 = *(v160 + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v184 = &v150;
  v166 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters.ChannelLayout(0);
  v178 = *(v166 - 8);
  v9 = *(v178 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v167 = &v150;
  v175 = type metadata accessor for NeuralNetwork.Layer(0);
  v182 = *(v175 - 8);
  v12 = *(v182 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v183 = &v150;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for NeuralNetwork.Layer?) - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  v169 = &v150;
  v18 = alloca(v15);
  v19 = alloca(v15);
  v168 = &v150;
  v20 = alloca(v15);
  v21 = alloca(v15);
  v170 = &v150;
  v22 = alloca(v15);
  v23 = alloca(v15);
  v159 = &v150;
  v174 = type metadata accessor for FeatureType(0);
  v173 = *(v174 - 8);
  v24 = *(v173 + 64);
  v25 = alloca(v24);
  v26 = alloca(v24);
  v164 = &v150;
  v27 = alloca(v24);
  v28 = alloca(v24);
  v152 = &v150;
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for FeatureDescription?) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v186 = &v150;
  v157 = type metadata accessor for NeuralNetworkRegressor(0);
  v156 = *(v157 - 8);
  v32 = *(v156 + 64);
  v33 = alloca(v32);
  v34 = alloca(v32);
  v158 = &v150;
  v154 = type metadata accessor for NeuralNetworkClassifier(0);
  v153 = *(v154 - 8);
  v35 = *(v153 + 64);
  v36 = alloca(v35);
  v37 = alloca(v35);
  v155 = &v150;
  v151 = type metadata accessor for NeuralNetwork(0);
  v181 = *(v151 - 8);
  v38 = *(v181 + 64);
  v39 = alloca(v38);
  v40 = alloca(v38);
  v180 = &v150;
  v172 = type metadata accessor for ModelKind(0);
  v171 = *(v172 - 8);
  v41 = *(v171 + 64);
  v42 = alloca(v41);
  v43 = alloca(v41);
  v165 = &v150;
  v44 = alloca(v41);
  v45 = alloca(v41);
  v192 = &v150;
  v46 = type metadata accessor for URL(0);
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  v49 = alloca(v48);
  v50 = alloca(v48);
  v189 = type metadata accessor for Model(0);
  v190 = *(v189 - 8);
  v51 = *(v190 + 64);
  v52 = alloca(v51);
  v53 = alloca(v51);
  (*(v47 + 16))(&v150, v187, v46);
  v54 = v193;
  result = Model.init(contentsOf:)(&v150);
  if (v54)
  {
    return result;
  }

  v56 = v180;
  v185 = 0;
  v57 = v192;
  v191 = &v150;
  Model.kind.getter();
  v58 = v172;
  v59 = v171;
  v60 = (*(v171 + 88))(v57, v172);
  if (v60 == enum case for ModelKind.neuralNetwork(_:))
  {
    v188 = enum case for ModelKind.neuralNetwork(_:);
    v61 = v192;
    (*(v59 + 96))(v192, v58);
    v62 = v56;
    v63 = v56;
    v64 = v151;
    v65 = v181;
    (*(v181 + 32))(v63, v61, v151);
    v193 = NeuralNetwork.layers.getter();
    v66 = NeuralNetwork.preprocessors.getter();
  }

  else if (v60 == enum case for ModelKind.neuralNetworkClassifier(_:))
  {
    v188 = enum case for ModelKind.neuralNetwork(_:);
    v67 = v192;
    (*(v59 + 96))(v192, v58);
    v62 = v155;
    v68 = v67;
    v64 = v154;
    v65 = v153;
    (*(v153 + 32))(v155, v68, v154);
    v193 = NeuralNetworkClassifier.layers.getter();
    v66 = NeuralNetworkClassifier.preprocessors.getter();
  }

  else
  {
    if (v60 != enum case for ModelKind.neuralNetworkRegressor(_:))
    {
      v99 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v99, 0, 0);
      *v100 = 0xD00000000000006ALL;
      *(v100 + 8) = " must be an image, got " + 0x8000000000000000;
      *(v100 + 16) = 0;
      *(v100 + 32) = 0;
      *(v100 + 48) = 2;
      swift_willThrow(&type metadata for MLCreateError, v99);
      (*(v190 + 8))(v191, v189);
      v101 = v192;
      return (*(v59 + 8))(v101, v58);
    }

    v188 = enum case for ModelKind.neuralNetwork(_:);
    v69 = v192;
    (*(v59 + 96))(v192, v58);
    v62 = v158;
    v70 = v69;
    v64 = v157;
    v65 = v156;
    (*(v156 + 32))(v158, v70, v157);
    v193 = NeuralNetworkRegressor.layers.getter();
    v66 = NeuralNetworkRegressor.preprocessors.getter();
  }

  v192 = v66;
  (*(v65 + 8))(v62, v64);
  v71 = v191;
  v72 = Model.inputs.getter();
  v73 = *(v72 + 16);
  v72;
  if (v73 != 1)
  {
    v193;
    v192;
    *&v179 = 0;
    *(&v179 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v91._object = " neural network regressor." + 0x8000000000000000;
    v91._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v91);
    v92 = Model.inputs.getter();
    v93 = *(v92 + 16);
    v92;
    v150 = v93;
    v94 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    v96 = v95;
    v91._countAndFlagsBits = v94;
    v91._object = v95;
    String.append(_:)(v91);
    v96;
    v91._countAndFlagsBits = 0x64616574736E6920;
    v91._object = 0xE90000000000002ELL;
    String.append(_:)(v91);
    v187 = v179;
    v91._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v91._object, 0, 0);
    *v97 = v187;
    *(v97 + 16) = 0;
    *(v97 + 32) = 0;
    *(v97 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v91._object);
    v98 = v71;
    return (*(v190 + 8))(v98, v189);
  }

  v74 = Model.inputs.getter();
  v75 = v186;
  specialized Collection.first.getter(v74);
  v74;
  v76 = type metadata accessor for FeatureDescription(0);
  if (__swift_getEnumTagSinglePayload(v75, 1, v76) == 1)
  {
    BUG();
  }

  v77 = v152;
  FeatureDescription.type.getter();
  v78 = v174;
  v79 = v173;
  if ((*(v173 + 88))(v77, v174) != enum case for FeatureType.image(_:))
  {
    v193;
    v192;
    (*(v79 + 8))(v77, v78);
    (*(*(v76 - 8) + 8))(v186, v76);
    v87 = "ith only one input, but got " + 0x8000000000000000;
    v88 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v88, 0, 0);
    v90 = 0xD000000000000022;
    goto LABEL_16;
  }

  (*(v79 + 8))(v77, v78);
  v180 = *(v76 - 8);
  (v180[1])(v186, v76);
  v80 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  v81 = *(v187 + v80 + 8);
  v59 = v190;
  v58 = v189;
  if (v81)
  {
    v82 = *(v187 + v80);
    *(v187 + v80 + 8);
    v83 = v193;
    v193;
    v84 = v185;
    v85 = specialized Collection.firstIndex(where:)(v83, v82, v81);
    LOBYTE(v82) = v86;
    v83;
    if (v82)
    {
      v83;
      v192;
      v87 = "least one layer." + 0x8000000000000000;
      v88 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v88, 0, 0);
      v90 = 0xD000000000000031;
LABEL_16:
      *v89 = v90;
      *(v89 + 8) = v87;
      *(v89 + 16) = 0;
      *(v89 + 32) = 0;
      *(v89 + 48) = 2;
LABEL_17:
      swift_willThrow(&type metadata for MLCreateError, v88);
      v98 = v191;
      return (*(v190 + 8))(v98, v189);
    }

    v103 = __OFADD__(1, v85);
    v104 = v85 + 1;
    if (v103)
    {
      BUG();
    }

    v185 = v84;
    v58 = v189;
    if (v104 < 0)
    {
      BUG();
    }

    v59 = v190;
    if (v193[2] < v104)
    {
      BUG();
    }

    v102 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC20MLModelSpecification13NeuralNetworkV5LayerV_s10ArraySliceVyAHGTt0g5(v193, v193 + ((*(v182 + 80) + 32) & ~*(v182 + 80)), 0, 2 * v104 + 1);
  }

  else
  {
    v102 = v193;
  }

  if (!v102[2])
  {
    v102;
    v192;
    v138 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v138, 0, 0);
    *v139 = 0xD000000000000030;
    *(v139 + 8) = "ve 1 output, got " + 0x8000000000000000;
    *(v139 + 16) = 0;
    *(v139 + 32) = 0;
    *(v139 + 48) = 2;
    swift_willThrow(&type metadata for MLCreateError, v138);
    v101 = v191;
    return (*(v59 + 8))(v101, v58);
  }

  v105 = v159;
  v193 = v102;
  specialized BidirectionalCollection.last.getter(v102);
  v106 = v175;
  if (__swift_getEnumTagSinglePayload(v105, 1, v175) == 1)
  {
    BUG();
  }

  v107 = NeuralNetwork.Layer.outputNames.getter();
  v108 = v105;
  v109 = *(v182 + 8);
  v109(v108, v106);
  v110 = *(v107 + 16);
  v107;
  if (v110 != 1)
  {
    v140 = v109;
    v192;
    *&v179 = 0;
    *(&v179 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(60);
    v141._object = " must be an image." + 0x8000000000000000;
    v141._countAndFlagsBits = 0xD000000000000031;
    String.append(_:)(v141);
    v142 = v169;
    v143 = v193;
    specialized BidirectionalCollection.last.getter(v193);
    if (__swift_getEnumTagSinglePayload(v142, 1, v106) == 1)
    {
      BUG();
    }

    v143;
    v144 = NeuralNetwork.Layer.outputNames.getter();
    v140(v142, v106);
    v145 = *(v144 + 16);
    v144;
    v150 = v145;
    v146._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
    object = v146._object;
    String.append(_:)(v146);
    object;
    v148._countAndFlagsBits = 0x64616574736E6920;
    v148._object = 0xE90000000000002ELL;
    String.append(_:)(v148);
    v187 = v179;
    v88 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v88, 0, 0);
    *v149 = v187;
    *(v149 + 16) = 0;
    *(v149 + 32) = 0;
    *(v149 + 48) = 2;
    goto LABEL_17;
  }

  *&v187 = v109;
  *&v179 = 0;
  *(&v179 + 1) = 0xE000000000000000;
  v111 = v170;
  specialized BidirectionalCollection.last.getter(v193);
  if (__swift_getEnumTagSinglePayload(v111, 1, v106) == 1)
  {
    BUG();
  }

  v112 = v111;
  v113 = NeuralNetwork.Layer.name.getter();
  v115 = v114;
  (v187)(v112, v106);
  v116._countAndFlagsBits = v113;
  v116._object = v115;
  String.append(_:)(v116);
  v115;
  v116._countAndFlagsBits = 0x6E657474616C46;
  v116._object = 0xE700000000000000;
  String.append(_:)(v116);
  v186 = *(&v179 + 1);
  v181 = v179;
  v117 = v168;
  specialized BidirectionalCollection.last.getter(v193);
  if (__swift_getEnumTagSinglePayload(v117, 1, v106) == 1)
  {
    BUG();
  }

  v118 = NeuralNetwork.Layer.outputNames.getter();
  (v187)(v117, v106);
  v119 = v167;
  if (!v118[2])
  {
    v118;
    BUG();
  }

  *&v187 = v118[4];
  v120 = v118[5];
  v120;
  v118;
  v121 = v166;
  (*(v178 + 104))(v119, enum case for NeuralNetwork.Layer.FlattenParameters.ChannelLayout.channelFirst(_:), v166);
  v122 = v186;
  static NeuralNetwork.Layer.flatten(name:inputName:outputName:targetChannelLayout:)(v181, v186, v187, v120, 0x7365727574616566, 0xE800000000000000, v119);
  v122;
  v120;
  (*(v178 + 8))(v119, v121);
  v123 = v193;
  if (!swift_isUniquelyReferenced_nonNull_native(v193))
  {
    v123 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
  }

  v124 = v184;
  v125 = v123[2];
  v126 = v123;
  v127 = v183;
  if (v123[3] >> 1 <= v125)
  {
    v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v123[3] >= 2uLL, v125 + 1, 1, v123);
    v127 = v183;
  }

  v126[2] = v125 + 1;
  v193 = v126;
  (*(v182 + 32))(v126 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v125, v127, v175);
  FeatureType.ShapedArrayParameters.init()();
  v128 = v163;
  (*(v161 + 104))(v163, enum case for FeatureType.ShapedArrayParameters.DataType.float32(_:), v162);
  v129 = v124;
  FeatureType.ShapedArrayParameters.dataType.setter(v128);
  Model.init()();
  v130 = Model.specificationVersion.getter();
  Model.specificationVersion.setter(v130);
  v131 = Model.inputs.getter();
  Model.inputs.setter(v131);
  v132 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>);
  v133 = swift_allocObject(v132, ((*(v180 + 80) + 32) & ~*(v180 + 80)) + v180[9], *(v180 + 80) | 7);
  *(v133 + 16) = 1;
  *(v133 + 24) = 2;
  v134 = v164;
  v135 = v129;
  v136 = v160;
  (*(v160 + 16))(v164, v135, v177);
  (*(v173 + 104))(v134, enum case for FeatureType.shapedArray(_:), v174);
  FeatureDescription.init(name:type:description:)(0x7365727574616566, 0xE800000000000000, v134, 0, 0xE000000000000000);
  Model.outputs.setter(v133);
  v137 = v165;
  NeuralNetwork.init(layers:preprocessors:)(v193, v192);
  (*(v171 + 104))(v137, v188, v172);
  Model.kind.setter(v137);
  (*(v136 + 8))(v184, v177);
  return (*(v190 + 8))(v191, v189);
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *(a1 + 16);
  if (v12)
  {
    v11 = a2;
    v4 = *(type metadata accessor for NeuralNetwork.Layer(0) - 8);
    v5 = ((*(v4 + 80) + 32) & ~*(v4 + 80)) + a1;
    v13 = *(v4 + 72);
    v6 = 0;
    while (1)
    {
      v7 = NeuralNetwork.Layer.name.getter();
      v9 = v8;
      a2 = v11 ^ v7 | a3 ^ v8;
      if (!a2)
      {
        break;
      }

      a2 = v8;
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)(v7, v8, v11, a3, 0);
      v9, v9;
      if (v14)
      {
        goto LABEL_9;
      }

      ++v6;
      v5 += v13;
      if (v12 == v6)
      {
        v6 = 0;
        goto LABEL_9;
      }
    }

    a3, 0;
    a3 = v9;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:
  a3, a2;
  return v6;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> MLImageClassifier.FeatureExtractorType.validate()()
{
  *&v17 = v0;
  v2 = *(*(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(v1, &v14);
  if (swift_getEnumCaseMultiPayload(&v14, v5) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(&v14, &v14);
    MLImageClassifier.CustomFeatureExtractor.validate()();
    outlined destroy of MLActivityClassifier.ModelParameters(&v14, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else if (!v15)
  {
    v9 = v14;
    if (!specialized Sequence<>.contains(_:)(v14, &outlined read-only object #0 of MLImageClassifier.FeatureExtractorType.validate()))
    {
      *&v15 = 0;
      *(&v15 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(29);
      *(&v15 + 1);
      *&v15 = 0x6E6F697369766552;
      *(&v15 + 1) = 0xE900000000000020;
      v16 = v9;
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
      object = v10._object;
      String.append(_:)(v10);
      object;
      v12._object = "und in the model." + 0x8000000000000000;
      v12._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v12);
      v17 = v15;
      v12._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v12._object, 0, 0);
      *v13 = v17;
      *(v13 + 16) = 0;
      *(v13 + 32) = 0;
      *(v13 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v12._object);
    }
  }
}

uint64_t MLImageClassifier.FeatureExtractorType.description.getter()
{
  v1 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(v0, v15);
  if (swift_getEnumCaseMultiPayload(v15, v5) != 1)
  {
    return 0x697250656E656353;
  }

  outlined init with take of MLImageClassifier.CustomFeatureExtractor(v15, v15);
  v9 = *(v1 + 20);
  v10 = *(&v15[1] + v9);
  v16 = v15;
  if (v10)
  {
    v11._countAndFlagsBits = *(v15 + v9);
    v12 = v10;
  }

  else
  {
    v12 = "interactionHeaps" + 0x8000000000000000;
    v11._countAndFlagsBits = 0xD000000000000015;
  }

  strcpy(v15, "Custom model: ");
  HIBYTE(v15[1]) = -18;
  v11._object = v12;
  String.append(_:)(v11);
  v13 = v15[0];
  v10;
  v12;
  outlined destroy of MLActivityClassifier.ModelParameters(v16, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  return v13;
}

uint64_t type metadata accessor for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata(a1, a3);
  }

  return result;
}

uint64_t outlined init with copy of MLImageClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t outlined init with take of MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  (*(*(v2 - 8) + 32))(a2, a1, v2);
  return a2;
}

void *MLImageClassifier.FeatureExtractorType.playgroundDescription.getter()
{
  v20 = v0;
  v2 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v6 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  outlined init with copy of MLImageClassifier.FeatureExtractorType(v1, v18);
  if (swift_getEnumCaseMultiPayload(v18, v6) == 1)
  {
    outlined init with take of MLImageClassifier.CustomFeatureExtractor(v18, v18);
    v10 = *(v2 + 20);
    v11 = *&v18[v10 + 8];
    v21 = v18;
    if (v11)
    {
      v12._countAndFlagsBits = *&v18[v10];
      v13 = v11;
    }

    else
    {
      v13 = "interactionHeaps" + 0x8000000000000000;
      v12._countAndFlagsBits = 0xD000000000000015;
    }

    strcpy(v19, "Custom model: ");
    HIBYTE(v19[1]) = -18;
    v12._object = v13;
    String.append(_:)(v12);
    v15 = v19[0];
    v14 = v19[1];
    v11;
    v13;
    outlined destroy of MLActivityClassifier.ModelParameters(v21, type metadata accessor for MLImageClassifier.CustomFeatureExtractor);
  }

  else
  {
    v14 = 0xEA0000000000746ELL;
    v15 = 0x697250656E656353;
  }

  result = &type metadata for String;
  v17 = v20;
  v20[3] = &type metadata for String;
  *v17 = v15;
  v17[1] = v14;
  return result;
}

void *initializeBufferWithCopyOfBuffer for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  v3 = __dst;
  v4 = *(a3 - 8);
  v5 = *(v4 + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *__src;
    *v3 = *__src;
    v3 = (v10 + ((v5 + 16) & ~v5));

    return v3;
  }

  if (swift_getEnumCaseMultiPayload(__src, a3) == 1)
  {
    v7 = type metadata accessor for URL(0);
    (*(*(v7 - 8) + 16))(__dst, __src, v7);
    v8 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&__dst[v8] = *&__src[v8];
    v9 = *&__src[v8 + 8];
    *(v3 + v8 + 8) = v9;
    v9;
    swift_storeEnumTagMultiPayload(v3, a3, 1);
    return v3;
  }

  return memcpy(__dst, __src, *(v4 + 64));
}

uint64_t destroy for MLImageClassifier.FeatureExtractorType(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  if (result == 1)
  {
    v3 = type metadata accessor for URL(0);
    (*(*(v3 - 8) + 8))(a1, v3);
    v4 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    return *(a1 + *(v4 + 20) + 8);
  }

  return result;
}

char *initializeWithCopy for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 16))(__dst, __src, v5);
  v6 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
  *&__dst[v6] = *&__src[v6];
  v7 = *&__src[v6 + 8];
  *&__dst[v6 + 8] = v7;
  v7;
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithCopy for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 1)
  {
    v5 = type metadata accessor for URL(0);
    (*(*(v5 - 8) + 16))(__dst, __src, v5);
    v6 = *(type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0) + 20);
    *&__dst[v6] = *&__src[v6];
    v7 = *&__src[v6 + 8];
    *&__dst[v6 + 8] = v7;
    v7;
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

char *initializeWithTake for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload(__src, a3) != 1)
  {
    return memcpy(__dst, __src, *(*(a3 - 8) + 64));
  }

  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 32))(__dst, __src, v4);
  v5 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
  *&__dst[*(v5 + 20)] = *&__src[*(v5 + 20)];
  swift_storeEnumTagMultiPayload(__dst, a3, 1);
  return __dst;
}

char *assignWithTake for MLImageClassifier.FeatureExtractorType(char *__dst, char *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  outlined destroy of MLActivityClassifier.ModelParameters(__dst, type metadata accessor for MLImageClassifier.FeatureExtractorType);
  if (swift_getEnumCaseMultiPayload(__src, a3) == 1)
  {
    v4 = type metadata accessor for URL(0);
    (*(*(v4 - 8) + 32))(__dst, __src, v4);
    v5 = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(0);
    *&__dst[*(v5 + 20)] = *&__src[*(v5 + 20)];
    swift_storeEnumTagMultiPayload(__dst, a3, 1);
    return __dst;
  }

  return memcpy(__dst, __src, *(*(a3 - 8) + 64));
}

uint64_t type metadata completion function for MLImageClassifier.FeatureExtractorType(uint64_t a1)
{
  v5[0] = "\t";
  result = type metadata accessor for MLImageClassifier.CustomFeatureExtractor(319);
  if (v4 <= 0x3F)
  {
    v5[1] = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload(a1, 256, 2, v5, v2, v3);
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for MLImageClassifier.CustomFeatureExtractor(uint64_t *a1, uint64_t *a2, uint64_t a3)
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
    v6 = type metadata accessor for URL(0);
    (*(*(v6 - 8) + 16))(a1, a2, v6);
    v7 = *(a3 + 20);
    *(a1 + v7) = *(a2 + v7);
    v8 = *(a2 + v7 + 8);
    *(v3 + v7 + 8) = v8;
    v8;
  }

  return v3;
}

uint64_t destroy for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return *(a1 + *(a2 + 20) + 8), v3;
}

uint64_t initializeWithCopy for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = *(a3 + 20);
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a2 + v6 + 8);
  *(a1 + v6 + 8) = v7;
  v7;
  return a1;
}

uint64_t assignWithCopy for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 24))(a1, a2, v5);
  v6 = *(a3 + 20);
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a2 + v6 + 8);
  v8 = *(a1 + v6 + 8);
  *(a1 + v6 + 8) = v7;
  v7;
  v8, a2;
  return a1;
}

uint64_t initializeWithTake for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for URL(0);
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for MLImageClassifier.CustomFeatureExtractor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for URL(0);
  (*(*(v5 - 8) + 40))(a1, a2, v5);
  v6 = *(a3 + 20);
  *(a1 + v6) = *(a2 + v6);
  v7 = *(a1 + v6 + 8);
  *(a1 + v6 + 8) = *(a2 + v6 + 8);
  v7, a2;
  return a1;
}

uint64_t sub_38D80(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = 0;
  v5 = type metadata accessor for URL(0);
  if (*(*(v5 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v5);
  }

  v7 = -1;
  if (((*(a1 + *(a3 + 20) + 8) >> 1) - 1) >= 0)
  {
    v7 = (*(a1 + *(a3 + 20) + 8) >> 1) - 1;
  }

  v8 = v7 + 1;
  if ((*(a1 + *(a3 + 20) + 8) & 0xFFFFFFFF00000001) == 0)
  {
    return v8;
  }

  return v4;
}

uint64_t sub_38E03(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = type metadata accessor for URL(0);
  if (*(*(v6 - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, v6);
  }

  result = *(a4 + 20);
  *(a1 + result + 8) = 2 * a2;
  return result;
}

uint64_t type metadata completion function for MLImageClassifier.CustomFeatureExtractor(uint64_t a1)
{
  result = type metadata accessor for URL(319);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    v3[1] = &unk_33DF18;
    swift_initStructMetadata(a1, 256, 2, v3, a1 + 16);
    return 0;
  }

  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(*v2 + 16) = a1 + 1;
  v4 = type metadata accessor for NeuralNetwork.Layer(0);
  return (*(*(v4 - 8) + 32))(v3 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)) + *(*(v4 - 8) + 72) * a1, a2, v4);
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = *(type metadata accessor for AnyColumn(0) - 8);
    v3 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + a1;
    v11 = *(v2 + 72);
    do
    {
      v10 = v1;
      v4 = AnyColumn.name.getter();
      v6 = _swiftEmptyArrayStorage[2];
      v7 = v6 + 1;
      if (_swiftEmptyArrayStorage[3] >> 1 <= v6)
      {
        v12 = v4;
        v13 = v5;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(_swiftEmptyArrayStorage[3] >= 2uLL, v7, 1);
        v5 = v13;
        v4 = v12;
      }

      _swiftEmptyArrayStorage[2] = v7;
      v8 = 2 * v6;
      _swiftEmptyArrayStorage[v8 + 4] = v4;
      _swiftEmptyArrayStorage[v8 + 5] = v5;
      v3 += v11;
      v1 = v10 - 1;
    }

    while (v10 != 1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t static _ValidationUtilities.validateTableFormat(table:context:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = v4;
  v35 = a4;
  v6 = *a1;
  v7 = *(a1 + 8) == 0;
  v32[1] = a2;
  if (v7)
  {
    outlined copy of Result<_DataTable, Error>(v6, 0);
    _DataTable.columnNames.getter();
    outlined consume of Result<_DataTable, Error>(v6, 0);
    v36 = v29;
  }

  else
  {
    outlined copy of Result<_DataTable, Error>(v6, 1);
    v8 = tc_v1_flex_list_create(0);
    if (!v8)
    {
      BUG();
    }

    v9 = v8;
    v10 = type metadata accessor for CMLSequence();
    v11 = swift_allocObject(v10, 25, 7);
    *(v11 + 16) = v9;
    v36 = v11;
    *(v11 + 24) = 1;
    outlined consume of Result<_DataTable, Error>(v6, 1);
  }

  v29 = 0;
  v12 = 0xE000000000000000;
  v30 = 0xE000000000000000;
  v13 = *(v35 + 16);
  if (v13)
  {
    v32[2] = a3;
    v35;
    v14 = (v35 + 40);
    while (1)
    {
      v31 = &v28;
      v15 = *v14;
      v32[0] = *(v14 - 1);
      v33._countAndFlagsBits = v32[0];
      v33._object = v15;
      v16 = alloca(24);
      v17 = alloca(32);
      v30 = &v33;
      v15;
      v18 = v34;
      v19 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v28, v36);
      v34 = v18;
      if ((v19 & 1) == 0)
      {
        break;
      }

      v15;
      v14 += 2;
      if (!--v13)
      {
        v35;
        v20 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_12;
      }
    }

    v35;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    String.append(_:)(*&v32[1]);
    v21._countAndFlagsBits = 0x206E6D756C6F6320;
    v21._object = 0xEE002720656D616ELL;
    String.append(_:)(v21);
    v21._countAndFlagsBits = v32[0];
    v21._object = v15;
    String.append(_:)(v21);
    v15;
    v21._object = "in elements with a type among: " + 0x8000000000000000;
    v21._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v21);
    object = v33._object;
    String.append(_:)(v33);
    object;
    v20 = v29;
    v12 = v30;
  }

  else
  {
    v20 = 0;
  }

LABEL_12:
  v23 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = static os_log_type_t.error.getter();
    v25._countAndFlagsBits = v20;
    v25._object = v12;
    log(_:type:)(v25, v24);
    v25._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v25._object, 0, 0);
    *v26 = v20;
    *(v26 + 8) = v12;
    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
    *(v26 + 48) = 1;
    swift_willThrow();
  }

  else
  {
    v12;
  }

  return v36;
}

uint64_t static _ValidationUtilities.validateTableTypes(table:columns:type:)(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v4 = *a1;
  _._countAndFlagsBits = 0;
  v5 = *(a1 + 8);
  v6 = *a3;
  _._object = 0xE000000000000000;
  v145._countAndFlagsBits = v4;
  LOBYTE(v145._object) = v5 & 1;
  v143 = v4;
  v137 = v5;
  outlined copy of Result<_DataTable, Error>(v4, v5);
  v7 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v145._countAndFlagsBits, v5 & 1);
  if (v7 <= 0)
  {
    v102._object = "ng default name '" + 0x8000000000000000;
    v102._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v102);
    goto LABEL_77;
  }

  v130 = a2[2];
  if (!v130)
  {
    goto LABEL_77;
  }

  v131 = a2 + 4;
  v144 = a2;
  a2;
  v8 = 0;
  v147 = v6;
  while (1)
  {
    v136._countAndFlagsBits = v131[2 * v8];
    v9 = v131[2 * v8 + 1];
    v139 = v9;
    v150 = v8;
    if (v137)
    {
      outlined copy of Result<_DataTable, Error>(v143, 1);
      v9;
      v10 = tc_v1_flex_list_create(0);
      if (!v10)
      {
        BUG();
      }

      v11 = v10;
      v12 = type metadata accessor for CMLSequence();
      v13 = swift_allocObject(v12, 25, 7);
      *(v13 + 16) = v11;
      countAndFlagsBits = v13;
      *(v13 + 24) = 1;
      v14 = tc_v1_flex_list_create(0);
      if (!v14)
      {
        BUG();
      }

      v15 = v14;
      outlined consume of Result<_DataTable, Error>(v143, 1);
      v16 = swift_allocObject(v12, 25, 7);
      *(v16 + 16) = v15;
      v153 = v16;
      *(v16 + 24) = 1;
      v17 = _swiftEmptyDictionarySingleton;
    }

    else
    {
      v18 = v143;
      v19 = *(*(v143 + 16) + 16);
      outlined copy of Result<_DataTable, Error>(v143, 0);
      outlined copy of Result<_DataTable, Error>(v18, 0);
      v9;

      v20 = v154;
      v21 = specialized handling<A, B, C>(_:_:_:)(v19, 0);
      v154 = v20;
      if (v20)
      {
        v154;

        v22 = tc_v1_flex_list_create(0);
        v154 = 0;
        if (!v22)
        {
          BUG();
        }
      }

      else
      {
        v22 = v21;
        if (!v21)
        {
          BUG();
        }
      }

      v23 = type metadata accessor for CMLSequence();
      v24 = swift_allocObject(v23, 25, 7);
      *(v24 + 16) = v22;
      v153 = v24;
      *(v24 + 24) = 1;
      v25 = v143;
      outlined copy of Result<_DataTable, Error>(v143, 0);
      _DataTable.columnNames.getter();
      outlined consume of Result<_DataTable, Error>(v25, 0);
      countAndFlagsBits = v145._countAndFlagsBits;
      outlined copy of Result<_DataTable, Error>(v25, 0);
      v17 = _DataTable.columnIndexes.getter();
      outlined consume of Result<_DataTable, Error>(v25, 0);
      outlined consume of Result<_DataTable, Error>(v25, 0);
      outlined consume of Result<_DataTable, Error>(v25, 0);
      v8 = v150;
    }

    v26 = v147;
    if (!v17[2])
    {

      v17;

      goto LABEL_22;
    }

    v27 = v139;
    v139;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v136._countAndFlagsBits, v27);
    if (v29)
    {
      break;
    }

    v17;

    v27;
    v8 = v150;
LABEL_22:
    if (v26 != 7)
    {
      goto LABEL_75;
    }

LABEL_71:
    ++v8;
    v139;
    if (v8 == v130)
    {
      v107 = v144;
      goto LABEL_76;
    }
  }

  v30 = *(v17[7] + 8 * v28);
  v27;

  v31 = v154;
  v32 = CMLSequence.value(at:)(v30);
  v154 = v31;
  if (v31)
  {
    v116 = "CreateML/MLDataTable.Row.swift";
    v117 = 30;
    v118 = 85;
    v119 = v154;
    goto LABEL_103;
  }

  v33 = v32;
  v34 = CMLFeatureValue.type.getter();
  v151 = v17;
  switch(v34)
  {
    case 0:
      v35 = v33[2];

      v36 = v154;
      specialized handling<A, B>(_:_:)(v35);
      v154 = v36;
      if (v36)
      {
        v154;

        BUG();
      }

      v17;

      v153, 2;
      v33, 2;
      v37 = 0;
      goto LABEL_67;
    case 1:
      v99 = v33[2];

      v100 = v154;
      specialized handling<A, B>(_:_:)(v99);
      v154 = v100;
      if (v100)
      {
        v154;

        BUG();
      }

      v17;

      v153, 2;
      v33, 2;
      v123 = 1;
      goto LABEL_66;
    case 2:

      v89 = CMLFeatureValue.stringValue()();
      v154 = v90;
      if (v90)
      {
        v154;

        BUG();
      }

      object = v89._object;
      v17;

      v153, 2;
      v33, 2;
      object;
      v123 = 2;
      goto LABEL_66;
    case 3:
      v92 = v33[2];
      v93 = v33;

      v94 = v154;
      v95 = specialized handling<A, B>(_:_:)(v92);
      v154 = v94;
      if (v94)
      {
        v154;

        BUG();
      }

      v96 = v95;
      v8 = v150;
      if (!v95)
      {
        BUG();
      }

      v93, 2;
      v97 = type metadata accessor for CMLSequence();
      inited = swift_initStackObject(v97, v124);
      *(inited + 16) = v96;
      *(inited + 24) = 1;

      v151;

      v37 = 3;
      goto LABEL_68;
    case 4:
      v38 = v33[2];
      v136._object = v33;

      v39 = v154;
      v40 = specialized handling<A, B>(_:_:)(v38);
      v154 = v39;
      if (v39)
      {
        v154;

        BUG();
      }

      v41 = v40;
      if (!v40)
      {
        BUG();
      }

      v133 = type metadata accessor for CMLDictionary();
      v42 = swift_initStackObject(v133, v125);
      *(v42 + 16) = v41;
      v138 = _swiftEmptyDictionarySingleton;
      swift_retain_n(v42, 2);
      v43 = 0;
      v141 = _swiftEmptyDictionarySingleton;
      v140 = v42;
      break;
    case 5:
      v17;

      v153, 2;

      v123 = 6;
      goto LABEL_66;
    case 6:

      MLDataValue.MultiArrayType.init(from:)(v33);
      v101 = v145._countAndFlagsBits;
      if (!v145._countAndFlagsBits)
      {
        BUG();
      }

      v17;

      v153, 2;

      v123 = 5;
LABEL_66:
      v37 = v123;
LABEL_67:
      v8 = v150;
LABEL_68:
      v26 = v147;
      goto LABEL_69;
  }

  while (v43 != CMLDictionary.size.getter())
  {
    v44 = v154;
    CMLDictionary.keyAndValue(at:)(v43);
    if (v44)
    {
      v116 = "CreateML/DictionaryType.swift";
      v117 = 29;
      v118 = 75;
      v119 = v44;
      goto LABEL_103;
    }

    v46 = v43;
    v47 = v45;
    v135 = specialized RandomAccessCollection<>.index(after:)(v46);
    v48 = CMLFeatureValue.stringValue()();
    v154 = v50;
    if (v50)
    {
      v154;

      v154 = 0;
      v17 = v151;
    }

    else
    {
      v51 = v48._countAndFlagsBits;
      v142 = v48._object;

      v52 = CMLFeatureValue.type.getter();
      v132 = v51;
      switch(v52)
      {
        case 0:
          v53 = *(v47 + 16);

          v54 = v154;
          v148._countAndFlagsBits = specialized handling<A, B>(_:_:)(v53);
          v154 = v54;
          if (!v54)
          {

            JUMPOUT(0x3981ALL);
          }

          v154;

          BUG();
        case 1:
          v68 = *(v47 + 16);

          v69 = v154;
          specialized handling<A, B>(_:_:)(v68);
          v148._countAndFlagsBits = v49;
          v154 = v69;
          JUMPOUT(0x399D6);
        case 2:

          v148 = CMLFeatureValue.stringValue()();
          v154 = v60;
          if (!v60)
          {
            JUMPOUT(0x39919);
          }

          v154;

          BUG();
        case 3:
          v61 = *(v47 + 16);

          v62 = v154;
          v63 = specialized handling<A, B>(_:_:)(v61);
          if (v62)
          {
            v62;

            BUG();
          }

          v64 = v63;
          if (!v63)
          {
            BUG();
          }

          v65 = type metadata accessor for CMLSequence();
          v66 = swift_allocObject(v65, 25, 7);
          *(v66 + 16) = v64;
          v148._countAndFlagsBits = v66;
          *(v66 + 24) = 1;

          v67 = v47, 3;
          LOBYTE(v67) = 3;
          v149 = v67;
          v148._object = 0;
          v154 = 0;
          break;
        case 4:
          v55 = *(v47 + 16);

          v56 = v154;
          v57 = specialized handling<A, B>(_:_:)(v55);
          if (!v56)
          {
            v58 = v57;
            if (v57)
            {
              v59 = swift_allocObject(v133, 24, 7);
              *(v59 + 16) = v58;
              v128[0] = v59;
              v128[1] = closure #1 in MLDataValue.DictionaryType.init(from:);
              v128[2] = 0;
              v128[3] = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
              v128[4] = 0;
              v128[5] = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
              v128[6] = 0;
              _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufC8CreateML11MLDataValueO_AGs15LazyMapSequenceVys0j6FilterL0VyAIyAE13CMLDictionaryCAG_AGtSgGGAG_AGtGTt0g5(v128);
              JUMPOUT(0x398D2);
            }

            BUG();
          }

          v56;

          BUG();
        case 5:
          JUMPOUT(0x399F6);
        case 6:

          MLDataValue.MultiArrayType.init(from:)(v47);
          v148._countAndFlagsBits = v145._countAndFlagsBits;
          if (!v145._countAndFlagsBits)
          {
            BUG();
          }

          v70 = v47, 2;
          LOBYTE(v70) = 5;
          v149 = v70;
          v148._object = 0;
          break;
      }

      v17 = v151;
      *&v71 = v132;
      v145._countAndFlagsBits = v132;
      *(&v71 + 1) = v142;
      v145._object = v142;
      LOBYTE(v146) = 2;
      v72 = v132;
      v73 = v141;
      specialized __RawDictionaryStorage.find<A>(_:)(v71, 2, *&v49);
      *&v71 = (v75 & 1) == 0;
      v76 = __OFADD__(v73[2], v71);
      v77 = v73[2] + v71;
      if (v76)
      {
        BUG();
      }

      v78 = v75;
      if (v73[3] < v77)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v77, 1u);
        *&v79 = v72;
        *(&v79 + 1) = v142;
        specialized __RawDictionaryStorage.find<A>(_:)(v79, 2, *&v49);
        LOBYTE(v81) = v81 & 1;
        v82 = v78;
        if ((v78 & 1) != v81)
        {
          LOBYTE(v82) = v78 & 1;
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(&type metadata for MLDataValue, *(&v79 + 1), v81, v82, v80);
          BUG();
        }
      }

      if (v78)
      {
        v120 = swift_allocError(&type metadata for _MergeError, &protocol witness table for _MergeError, 0, 0);
        swift_willThrow();
        v129 = v120;
        swift_errorRetain(v120);
        v121 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Error);
        if (swift_dynamicCast(&demangling cache variable for type metadata for Error, &v129, v121, &type metadata for _MergeError, 0))
        {
          v126 = 0;
          v127 = 0xE000000000000000;
          _StringGuts.grow(_:)(30);
          v122._object = "Swift/NativeDictionary.swift" + 0x8000000000000000;
          v122._countAndFlagsBits = 0xD00000000000001BLL;
          String.append(_:)(v122);
          _print_unlocked<A, B>(_:_:)(&v145, &v126, &type metadata for MLDataValue, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v122._countAndFlagsBits = 39;
          v122._object = 0xE100000000000000;
          String.append(_:)(v122);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v126, v127, "Swift/NativeDictionary.swift", 28, 2, 783, 0);
          BUG();
        }

        outlined consume of MLDataValue(v148._countAndFlagsBits, v148._object, v149);
        outlined consume of MLDataValue(v145._countAndFlagsBits, v145._object, v146);

        v129;
        v116 = "Swift/Dictionary.swift";
        v117 = 22;
        v118 = 489;
        v119 = v120;
LABEL_103:
        swift_unexpectedError(v119, v116, v117, 1, v118);
        BUG();
      }

      v83 = v138;
      v138[(v74 >> 6) + 8] |= 1 << v74;
      v84 = v83[6];
      v85 = 24 * v74;
      *(v84 + v85) = v72;
      *(v84 + v85 + 8) = v142;
      *(v84 + v85 + 16) = 2;
      v86 = v83[7];
      *(v86 + v85) = v148;
      *(v86 + v85 + 16) = v149;
      v87 = v83[2];
      v76 = __OFADD__(1, v87);
      v88 = v87 + 1;
      if (v76)
      {
        BUG();
      }

      v141 = v83;
      v83[2] = v88;
    }

    v42 = v140;
    v43 = v135;
  }

  v17;

  v153, 2;
  v136._object, 2;
  v42, 3;

  v37 = 4;
  v26 = v147;
  v8 = v150;
LABEL_69:
  if (v26 != 7 && v37 == v26)
  {
    goto LABEL_71;
  }

LABEL_75:
  v103 = v26;
  v144;
  v145._countAndFlagsBits = 0;
  v145._object = 0xE000000000000000;
  _StringGuts.grow(_:)(21);
  v104._countAndFlagsBits = v136._countAndFlagsBits;
  v105 = v139;
  v104._object = v139;
  String.append(_:)(v104);
  v105;
  v104._countAndFlagsBits = 0x7369206570797420;
  v104._object = 0xEF206120746F6E20;
  String.append(_:)(v104);
  specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v103);
  v104._object = 0xE200000000000000;
  v104._countAndFlagsBits = 2606;
  String.append(_:)(v104);
  v106 = v145._object;
  String.append(_:)(v145);
  v107 = v106;
LABEL_76:
  v107;
LABEL_77:
  v108 = _._countAndFlagsBits;
  v109 = _._object;
  v110 = (_._object >> 56) & 0xF;
  if ((_._object & 0x2000000000000000) == 0)
  {
    v110 = _._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v110)
  {
    return _._object;
  }

  v111 = static os_log_type_t.error.getter();
  v112._countAndFlagsBits = v108;
  v112._object = v109;
  log(_:type:)(v112, v111);
  v112._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  v113 = swift_allocError(&type metadata for MLCreateError, v112._object, 0, 0);
  *v114 = v108;
  *(v114 + 8) = v109;
  *(v114 + 16) = 0;
  *(v114 + 32) = 0;
  *(v114 + 48) = 1;
  v154 = v113;
  return swift_willThrow();
}

uint64_t static _ValidationUtilities.validateWriteLocation(atURL:defaultName:fileExtension:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v41 = v6;
  v49 = a5;
  v44._countAndFlagsBits = a4;
  v42 = a3;
  v43 = a2;
  v50 = v5;
  v7 = type metadata accessor for URL.DirectoryHint(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v47 = type metadata accessor for URL(0);
  v48 = *(v47 - 8);
  v12 = *(v48 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v44._object = &v40;
  if (URL.isFileURL.getter())
  {
    if (URL.hasDirectoryPath.getter())
    {
      v45 = v43;
      v46 = v42;
      (*(v8 + 104))(&v40, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
      v15 = lazy protocol witness table accessor for type String and conformance String();
      URL.appending<A>(component:directoryHint:)(&v45, &v40, &type metadata for String, v15);
      (*(v8 + 8))(&v40, v7);
      v16 = v49;
      object = v44._object;
      URL.appendingPathExtension(_:)(v44._countAndFlagsBits, v49);
      (*(v48 + 8))(object, v47);
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(69);
      v18._object = " be an empty string." + 0x8000000000000000;
      v18._countAndFlagsBits = 0xD000000000000041;
      String.append(_:)(v18);
      v19 = URL.lastPathComponent.getter();
      v21 = v20;
      v18._countAndFlagsBits = v19;
      v18._object = v20;
      String.append(_:)(v18);
      v21;
      v18._object = 0xE200000000000000;
      v18._countAndFlagsBits = 11815;
      String.append(_:)(v18);
      v22 = v45;
      v23 = v46;
      v24 = static os_log_type_t.info.getter();
      v18._countAndFlagsBits = v22;
      v25 = v50;
      v18._object = v23;
      log(_:type:)(v18, v24);
      v23;
    }

    else
    {
      v25 = v50;
      (*(v48 + 16))(v50, a1, v47);
      v16 = v49;
    }

    v29 = URL.pathExtension.getter();
    v31 = v30;
    countAndFlagsBits = v44._countAndFlagsBits;
    if (v44._countAndFlagsBits ^ v29 | v16 ^ v30)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)(v29, v30, v44._countAndFlagsBits, v16, 0);
      v31;
      v34 = (v33 & 1) == 0;
      v25 = v50;
      if (v34)
      {
        v45 = 0;
        v46 = 0xE000000000000000;
        _StringGuts.grow(_:)(72);
        v35._object = "L has to be a file URL." + 0x8000000000000000;
        v35._countAndFlagsBits = 0xD000000000000013;
        String.append(_:)(v35);
        v35._countAndFlagsBits = countAndFlagsBits;
        v35._object = v16;
        String.append(_:)(v35);
        v35._object = "Expected filetype ." + 0x8000000000000000;
        v35._countAndFlagsBits = 0xD000000000000033;
        String.append(_:)(v35);
        v36 = v45;
        v37 = v46;
        v38 = static os_log_type_t.info.getter();
        v35._countAndFlagsBits = v36;
        v35._object = v37;
        log(_:type:)(v35, v38);
        v35._countAndFlagsBits = v37;
        v25 = v50;
        v35._countAndFlagsBits;
        v35._countAndFlagsBits = countAndFlagsBits;
        v35._object = v49;
        URL.appendPathExtension(_:)(v35);
      }
    }

    else
    {
      v30;
    }

    v39 = v41;
    result = static _FileUtilities.prepareForWriting(to:isDirectory:)(v25, 0);
    if (v39)
    {
      return (*(v48 + 8))(v25, v47);
    }
  }

  else
  {
    v26 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v26, 0, 0);
    *v27 = 0xD000000000000027;
    *(v27 + 8) = " in the data table. " + 0x8000000000000000;
    *(v27 + 16) = 0;
    *(v27 + 32) = 0;
    *(v27 + 48) = 0;
    return swift_willThrow(&type metadata for MLCreateError, v26);
  }

  return result;
}

uint64_t static _ValidationUtilities.validateWriteLocation(atPath:defaultName:)(Swift::String string, uint64_t a2, void *a3)
{
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  string._object;
  v6 = specialized BidirectionalCollection.last.getter(string._countAndFlagsBits, string._object);
  if (v7)
  {
    v8 = v7;
    if (!(v6 ^ 0x2F | v7 ^ 0xE100000000000000))
    {
      v7;
LABEL_5:
      a3;
      v11._countAndFlagsBits = 0x6C65646F6D6C6D2ELL;
      v11._object = 0xE800000000000000;
      String.append(_:)(v11);
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      a3;
      _StringGuts.grow(_:)(69);
      v11._object = " be an empty string." + 0x8000000000000000;
      v11._countAndFlagsBits = 0xD000000000000041;
      String.append(_:)(v11);
      v11._countAndFlagsBits = a2;
      v11._object = a3;
      String.append(_:)(v11);
      v11._object = 0xE200000000000000;
      v11._countAndFlagsBits = 11815;
      String.append(_:)(v11);
      v12 = static os_log_type_t.info.getter();
      v11._countAndFlagsBits = 0;
      v11._object = 0xE000000000000000;
      log(_:type:)(v11, v12);
      0xE000000000000000;
      countAndFlagsBits = string._countAndFlagsBits;
      object = string._object;
      goto LABEL_6;
    }

    v22 = a3;
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)(v6, v7, 47, 0xE100000000000000, 0);
    v8;
    v10 = (v9 & 1) == 0;
    a3 = v22;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  type metadata accessor for NSString();
  v14 = NSString.__allocating_init(string:)(v13);
  v15 = [v14 stringByExpandingTildeInPath];
  v16 = v15;

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)(v16);
  v19 = v18;

  URL.init(fileURLWithPath:)(v17, v19);
  return v19;
}

uint64_t static _ValidationUtilities.validateTableTypes(table:featureColumns:featureType:labelColumn:labelType:)(uint64_t *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v15 = a4;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *a3;
  v19 = *a6;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  result = static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v16, a2, &v18);
  if (!v6)
  {
    v16 = v8;
    v17 = v9;
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
    inited = swift_initStackObject(v12, v14);
    inited[2] = 1;
    inited[3] = 2;
    inited[4] = v15;
    inited[5] = a5;
    v18 = v19;
    a5;
    static _ValidationUtilities.validateTableTypes(table:columns:type:)(&v16, inited, &v18);
    swift_setDeallocating(inited);
    return specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  return result;
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.validateContainsColumns(_:context:)(Swift::OpaquePointer _, Swift::String context)
{
  object = context._object;
  v32._countAndFlagsBits = context._countAndFlagsBits;
  v3 = DataFrame.columns.getter();
  MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11TabularData9AnyColumnVG_SSs5NeverOTg504_s11d75Data0B5FrameV8CreateMLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n(v3);
  v32._object = v2;
  v3;
  v5 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(MLE23validateContainsColumns_7contextySaySSG_SStKFSSAA9fG54Vcfu_33_06ca46402338970f1b3e0a01942d815dAISSTf3nnnpk_nTf1cn_n);
  v30 = *(_._rawValue + 2);
  if (v30)
  {
    v35 = v5;
    v29 = _._rawValue + 32;
    v34._object = _._rawValue;
    _._rawValue;
    v6 = 0;
    while (1)
    {
      v7 = *&v29[16 * v6];
      v8 = *&v29[16 * v6 + 8];
      v9 = *(v35 + 16) == 0;
      v34._countAndFlagsBits = v7;
      if (v9)
      {
        v20 = v35;
        v8;
        v20;
        v34._object;
        v17 = v8;
        goto LABEL_18;
      }

      v28 = v6;
      Hasher.init(_seed:)(*(v35 + 40));
      v8;
      v33 = v8;
      String.hash(into:)(&v26, v7);
      v10 = Hasher._finalize()();
      v11 = ~(-1 << *(v35 + 32));
      v12 = v11 & v10;
      v13 = *(v35 + 8 * ((v11 & v10) >> 6) + 56);
      if (!_bittest64(&v13, v12))
      {
        break;
      }

      v14 = *(v35 + 48);
      v15 = *(v14 + 16 * v12);
      v16 = *(v14 + 16 * v12 + 8);
      v9 = v15 == v7;
      v17 = v33;
      if (!v9)
      {
        goto LABEL_7;
      }

LABEL_6:
      if (v16 != v17)
      {
LABEL_7:
        while ((_stringCompareWithSmolCheck(_:_:expecting:)(v15, v16, v34._countAndFlagsBits, v17, 0) & 1) == 0)
        {
          v12 = v11 & (v12 + 1);
          v18 = *(v35 + 8 * (v12 >> 6) + 56);
          if (!_bittest64(&v18, v12))
          {
            v35;
            v34._object;
            goto LABEL_18;
          }

          v15 = *(v14 + 16 * v12);
          v16 = *(v14 + 16 * v12 + 8);
          if (v15 == v34._countAndFlagsBits)
          {
            goto LABEL_6;
          }
        }
      }

      v6 = v28 + 1;
      v17;
      if (v6 == v30)
      {
        v35;
        v19 = v34._object;
        goto LABEL_14;
      }
    }

    v35;
    v34._object;
    v17 = v33;
LABEL_18:
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v21._countAndFlagsBits = v32._countAndFlagsBits;
    v21._object = object;
    String.append(_:)(v21);
    v21._countAndFlagsBits = 0x206E6D756C6F6320;
    v21._object = 0xEE002720656D616ELL;
    String.append(_:)(v21);
    v21._countAndFlagsBits = v34._countAndFlagsBits;
    v21._object = v17;
    String.append(_:)(v21);
    v17;
    v21._object = "The DataTable is empty." + 0x8000000000000000;
    v21._countAndFlagsBits = 0xD000000000000023;
    String.append(_:)(v21);
    v22 = v26;
    v23 = v27;
    v24 = static os_log_type_t.error.getter();
    v21._countAndFlagsBits = v22;
    v21._object = v23;
    log(_:type:)(v21, v24);
    v21._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v21._object, 0, 0);
    *v25 = v22;
    *(v25 + 8) = v23;
    *(v25 + 16) = 0;
    *(v25 + 32) = 0;
    *(v25 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v21._object);
  }

  else
  {
    v19 = v5;
LABEL_14:
    v19;
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.validateColumnTypes(_:_:context:)(Swift::String _, Swift::OpaquePointer a2, Swift::String context)
{
  v32 = v3;
  v34._object = context._object;
  v35._countAndFlagsBits = context._countAndFlagsBits;
  rawValue = a2._rawValue;
  v30 = type metadata accessor for AnyColumn(0);
  v31 = *(v30 - 8);
  v4 = *(v31 + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v34._countAndFlagsBits = _._countAndFlagsBits;
  object = _._object;
  v7 = DataFrame.indexOfColumn(_:)(_);
  if (v7.is_nil)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v8._countAndFlagsBits = v35._countAndFlagsBits;
    v8._object = v34._object;
    String.append(_:)(v8);
    v8._countAndFlagsBits = 0x206E6D756C6F6320;
    v8._object = 0xEE002720656D616ELL;
    String.append(_:)(v8);
    v8._countAndFlagsBits = v34._countAndFlagsBits;
    v8._object = object;
    String.append(_:)(v8);
    v9._object = "The DataTable is empty." + 0x8000000000000000;
    v9._countAndFlagsBits = 0xD000000000000023;
LABEL_11:
    String.append(_:)(v9);
    v22 = v27;
    v23 = v28;
    v24 = static os_log_type_t.error.getter();
    v25._countAndFlagsBits = v22;
    v25._object = v23;
    log(_:type:)(v25, v24);
    v25._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v25._object, 0, 0);
    *v26 = v22;
    *(v26 + 8) = v23;
    *(v26 + 16) = 0;
    *(v26 + 32) = 0;
    *(v26 + 48) = 1;
    swift_willThrow(&type metadata for MLCreateError, v25._object);
    return;
  }

  DataFrame.subscript.getter(v7.value);
  v10 = AnyColumn.wrappedElementType.getter();
  (*(v31 + 8))(&v27, v30);
  v11 = rawValue;
  v12 = rawValue[2];
  v13 = object;
  countAndFlagsBits = v34._countAndFlagsBits;
  if (!v12)
  {
    goto LABEL_10;
  }

  if (rawValue[4] == v10)
  {
    return;
  }

  if (v12 == 1)
  {
LABEL_10:
    v27 = 0;
    v28 = 0xE000000000000000;
    _StringGuts.grow(_:)(68);
    v17._countAndFlagsBits = v35._countAndFlagsBits;
    v17._object = v34._object;
    String.append(_:)(v17);
    v17._countAndFlagsBits = 0x206E6D756C6F6320;
    v17._object = 0xEE002720656D616ELL;
    String.append(_:)(v17);
    v17._countAndFlagsBits = countAndFlagsBits;
    v17._object = v13;
    String.append(_:)(v17);
    v17._object = " in the data table." + 0x8000000000000000;
    v17._countAndFlagsBits = 0xD00000000000002FLL;
    String.append(_:)(v17);
    v18 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any.Type);
    v19 = Array.description.getter(v11, v18);
    v21 = v20;
    v17._countAndFlagsBits = v19;
    v17._object = v20;
    String.append(_:)(v17);
    v21;
    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    goto LABEL_11;
  }

  v15 = 5;
  while (1)
  {
    v16 = v15 - 4 + 1;
    if (__OFADD__(1, v15 - 4))
    {
      BUG();
    }

    if (rawValue[v15] == v10)
    {
      break;
    }

    ++v15;
    if (v16 == v12)
    {
      goto LABEL_10;
    }
  }
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> DataFrame.validateColumnIsNumeric(_:context:)(Swift::String _, Swift::String context)
{
  contexta = context._object;
  countAndFlagsBits = context._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Any.Type>);
  v4 = swift_allocObject(v3, 56, 7);
  v4[2] = 3;
  v4[3] = 6;
  v4[4] = &type metadata for Float;
  v4[5] = &type metadata for Double;
  v4[6] = &type metadata for Int;
  DataFrame.validateColumnTypes(_:_:context:)(_, v4, __PAIR128__(contexta, countAndFlagsBits));
  v4;
}

uint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    v1 = objc_opt_self(NSString);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSString = result;
  }

  return result;
}

uint64_t MLRegressor.init<A>(model:)(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v39 = v2;
  v48 = type metadata accessor for MLRandomForestRegressor(0);
  v3 = *(*(v48 - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v47 = &v36;
  v46 = type metadata accessor for MLDecisionTreeRegressor(0);
  v6 = *(*(v46 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v45 = &v36;
  v44 = type metadata accessor for MLBoostedTreeRegressor(0);
  v9 = *(*(v44 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v43 = &v36;
  v12 = type metadata accessor for MLLinearRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v42 = &v36;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v41 = type metadata accessor for MLRegressor(0);
  v20 = *(*(v41 - 8) + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v40 = v16;
  (*(v16 + 16))(&v36, v49, a2);
  v23 = v42;
  v50 = a2;
  if (swift_dynamicCast(v42, &v36, a2, v12, 0))
  {
    outlined init with take of MLClassifierMetrics(v23, &v36, type metadata accessor for MLLinearRegressor);
    v24 = 3;
  }

  else
  {
    v24 = 0;
    v25 = v43;
    if (swift_dynamicCast(v43, &v36, v50, v44, 0))
    {
      outlined init with take of MLClassifierMetrics(v25, &v36, type metadata accessor for MLBoostedTreeRegressor);
    }

    else
    {
      v26 = v45;
      if (swift_dynamicCast(v45, &v36, v50, v46, 0))
      {
        outlined init with take of MLClassifierMetrics(v26, &v36, type metadata accessor for MLDecisionTreeRegressor);
        v35 = 1;
      }

      else
      {
        v27 = v47;
        if (!swift_dynamicCast(v47, &v36, v50, v48, 0))
        {
          v37 = 0;
          v38 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);
          v38;
          v37 = 0xD000000000000013;
          v38 = "CreateML/MLRegressor.swift" + 0x8000000000000000;
          DynamicType = swift_getDynamicType(v49, v50, 0);
          v32._countAndFlagsBits = _typeName(_:qualified:)(DynamicType, 0);
          object = v32._object;
          String.append(_:)(v32);
          object;
          v34._countAndFlagsBits = 46;
          v34._object = 0xE100000000000000;
          String.append(_:)(v34);
          _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v37, v38, "CreateML/MLRegressor.swift", 26, 2, 64, 0);
          BUG();
        }

        outlined init with take of MLClassifierMetrics(v27, &v36, type metadata accessor for MLRandomForestRegressor);
        v35 = 2;
      }

      v24 = v35;
    }
  }

  swift_storeEnumTagMultiPayload(&v36, v41, v24);
  v28 = *(v40 + 8);
  v29 = v50;
  v28(&v36, v50);
  outlined init with take of MLClassifierMetrics(&v36, v39, type metadata accessor for MLRegressor);
  return (v28)(v49, v29);
}

uint64_t MLRegressor.init(trainingData:targetColumn:featureColumns:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v116 = v5;
  v114 = a3;
  v97 = v4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for DataFrame?) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v94 = &v84;
  v109 = type metadata accessor for DataFrame(0);
  v111 = *(v109 - 8);
  v10 = *(v111 + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v104 = &v84;
  v13 = alloca(v10);
  v14 = alloca(v10);
  v105 = &v84;
  v103 = type metadata accessor for DataFrame.Slice(0);
  v15 = *(v103 - 8);
  v16 = *(v15 + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v115 = COERCE_DOUBLE(&v84);
  v19 = alloca(v16);
  v20 = alloca(v16);
  v113 = &v84;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v112 = &v84;
  v110 = a1;
  v23 = v114;
  v24 = v116;
  v25 = static _FeatureUtilities.selectFeaturesFromTrainingData(trainingData:targetColumn:featureColumns:)(a1, a2, v114, a4);
  v108 = v24;
  if (v24)
  {
    (*(v111 + 8))(v110, v109);
    v23;
    return a4;
  }

  v106 = v25;
  v95 = a2;
  v107 = v15;
  a4;
  v27 = v109;
  DataFrameProtocol.randomSplit(by:seed:)(v112, v113, 0, 0, v109, &protocol witness table for DataFrame, 0.1);
  v28 = v103;
  if (DataFrameProtocol.isEmpty.getter(v103, &protocol witness table for DataFrame.Slice))
  {
    v114;
    v106;
    v29 = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
    swift_allocError(&type metadata for MLCreateError, v29, 0, 0);
    *v30 = 0xD000000000000044;
    *(v30 + 8) = " that to file name." + 0x8000000000000000;
    *(v30 + 16) = 0;
    *(v30 + 32) = 0;
    *(v30 + 48) = 0;
    swift_willThrow(&type metadata for MLCreateError, v29);
    (*(v111 + 8))(v110, v27);
    v31 = *(v107 + 8);
    v31(v113, v28);
    return (v31)(v112, v28);
  }

  v32 = *(v107 + 16);
  v33 = v115;
  v32(*&v115, v112, v28);
  v34 = v105;
  DataFrame.init(_:)(*&v33);
  v32(*&v33, v113, v28);
  DataFrame.init(_:)(*&v33);
  v35 = v106;
  v36 = static MLRegressor.selectRegressors(featureCount:)(*(v106 + 2));
  v37 = v36[2];
  if (!v37)
  {
    v35;
    v59 = _swiftEmptyArrayStorage;
LABEL_23:
    v36;
    v114;
    v102 = v59[2];
    if (v102)
    {
      v116 = v59;
      outlined init with copy of TabularRegressionTask((v59 + 4), &v84);
      swift_bridgeObjectRetain_n(v116, 2);
      v60 = v116;
      v61 = (v116 + 9);
      for (i = 1; v102 != i; ++i)
      {
        if (i >= v60[2])
        {
          BUG();
        }

        v114 = v61;
        outlined init with copy of TabularRegressionTask(v61, &v98);
        v63 = *(&v99 + 1);
        v64 = v100;
        __swift_project_boxed_opaque_existential_0Tm(&v98, *(&v99 + 1));
        (*(v64 + 24))(v63, v64);
        v65 = v88;
        if (v89)
        {
          outlined consume of Result<_RegressorMetrics, Error>(v87, v88, 1);
          v115 = -1.0;
        }

        else
        {
          outlined consume of Result<_RegressorMetrics, Error>(v87, v88, 0);
          v115 = *&v65;
        }

        v66 = v85;
        v67 = v86;
        __swift_project_boxed_opaque_existential_0Tm(&v84, v85);
        (*(v67 + 24))(v66, v67);
        v68 = v91;
        if (v92)
        {
          outlined consume of Result<_RegressorMetrics, Error>(v90, v91, 1);
          v69 = -1.0;
        }

        else
        {
          outlined consume of Result<_RegressorMetrics, Error>(v90, v91, 0);
          v69 = *&v68;
        }

        if (v69 <= v115)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v98);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          outlined init with take of TabularRegressionTask(&v98, &v84);
        }

        v61 = v114 + 40;
        v60 = v116;
      }

      v60;
      outlined init with take of TabularRegressionTask(&v84, &v98);
      v60;
      if (*(&v99 + 1))
      {
        v60;
        outlined init with take of TabularRegressionTask(&v98, &v84);
        v70 = v85;
        v71 = __swift_project_boxed_opaque_existential_0Tm(&v84, v85);
        v72 = *(v70 - 8);
        v73 = *(v72 + 64);
        v74 = alloca(v73);
        v75 = alloca(v73);
        (*(v72 + 16))(&v84, v71, v70);
        MLRegressor.init<A>(model:)(&v84, v70);
        v76 = *(v111 + 8);
        v77 = v109;
        v76(v110, v109);
        v76(v104, v77);
        v76(v105, v77);
        v78 = *(v107 + 8);
        v79 = v103;
        v78(v113, v103);
        v78(v112, v79);
        return __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      }
    }

    else
    {
      v98 = 0;
      v99 = 0;
      v100 = 0;
    }

    BUG();
  }

  v96 = *(v111 + 16);
  v101 = v36;
  v38 = v36 + 5;
  v116 = _swiftEmptyArrayStorage;
  while (1)
  {
    v102 = v37;
    v39 = *(v38 - 1);
    v93 = v38;
    v40 = *v38;
    v41 = v94;
    v42 = v34;
    v43 = v109;
    v96(v94, v42, v109);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v43);
    v44 = *(v40 + 8);
    v115 = *(v44 + 24);
    v45 = v106;
    v106;
    v46 = v108;
    v47 = (*&v115)(v104, v41, v95, v114, v45, v39, v44);
    v108 = v46;
    if (v46)
    {
      break;
    }

    v48 = v47;
    outlined destroy of DataFrame?(v41);
    v45;
    v115 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for TabularRegressionTask));
    v49 = _arrayForceCast<A, B>(_:)(v48, v39, *&v115);
    v48;
    v50 = *(v49 + 16);
    v51 = v116[2];
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      BUG();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(v116);
    v54 = v116;
    if (!isUniquelyReferenced_nonNull_native || v116[3] >> 1 < v52)
    {
      if (v51 > v52)
      {
        v52 = v51;
      }

      v54 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v52, 1, v116, &demangling cache variable for type metadata for _ContiguousArrayStorage<TabularRegressionTask>, &demangling cache variable for type metadata for TabularRegressionTask, specialized UnsafeMutablePointer.moveInitialize(from:count:));
    }

    v55 = *(v49 + 16) == 0;
    v116 = v54;
    if (v55)
    {
      if (v50)
      {
        BUG();
      }
    }

    else
    {
      v56 = v54[2];
      if ((v54[3] >> 1) - v56 < v50)
      {
        BUG();
      }

      swift_arrayInitWithCopy(&v54[5 * v56 + 4], v49 + 32, v50, *&v115);
      if (v50)
      {
        v57 = __OFADD__(v116[2], v50);
        v58 = v116[2] + v50;
        if (v57)
        {
          BUG();
        }

        v116[2] = v58;
      }
    }

    v49;
    v38 = v93 + 2;
    v37 = v102 - 1;
    v34 = v105;
    if (v102 == 1)
    {
      v106;
      v59 = v116;
      v36 = v101;
      goto LABEL_23;
    }
  }

  v114;
  swift_bridgeObjectRelease_n(v45, 2);
  v80 = *(v111 + 8);
  v81 = v109;
  v80(v110, v109);
  outlined destroy of DataFrame?(v41);
  v116;
  v101;
  v80(v104, v81);
  v80(v105, v81);
  v82 = *(v107 + 8);
  v83 = v103;
  v82(v113, v103);
  return (v82)(v112, v83);
}

void *static MLRegressor.selectRegressors(featureCount:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<TabularRegressionTask.Type>);
  if (a1 > 199)
  {
    v2 = swift_allocObject(v1, 48, 7);
    v2[2] = 1;
    v2[3] = 2;
    v2[4] = type metadata accessor for MLLinearRegressor(0);
    v2[5] = &protocol witness table for MLLinearRegressor;
  }

  else
  {
    v2 = swift_allocObject(v1, 96, 7);
    v2[2] = 4;
    v2[3] = 8;
    v2[4] = type metadata accessor for MLLinearRegressor(0);
    v2[5] = &protocol witness table for MLLinearRegressor;
    v2[6] = type metadata accessor for MLBoostedTreeRegressor(0);
    v2[7] = &protocol witness table for MLBoostedTreeRegressor;
    v2[8] = type metadata accessor for MLDecisionTreeRegressor(0);
    v2[9] = &protocol witness table for MLDecisionTreeRegressor;
    v2[10] = type metadata accessor for MLRandomForestRegressor(0);
    v2[11] = &protocol witness table for MLRandomForestRegressor;
  }

  return v2;
}

uint64_t MLRegressor.init(trainingData:targetColumn:featureColumns:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v12 = a4;
  v13 = a3;
  v4 = *(*(type metadata accessor for DataFrame(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v7 = *(a1 + 8);
  v10 = *a1;
  v11 = v7;
  DataFrame.init(_:)(&v10);
  return MLRegressor.init(trainingData:targetColumn:featureColumns:)(&v9, a2, v13, v12);
}

uint64_t MLRegressor.predictions(from:)(uint64_t a1)
{
  v59 = v2;
  v47 = v3;
  v58 = a1;
  v60 = v1;
  v48 = type metadata accessor for MLLinearRegressor(0);
  v4 = *(*(v48 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v49 = &v47;
  v51 = type metadata accessor for MLRandomForestRegressor(0);
  v7 = *(*(v51 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v50 = &v47;
  v53 = type metadata accessor for MLDecisionTreeRegressor(0);
  v10 = *(*(v53 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v52 = &v47;
  v62 = type metadata accessor for DataFrame(0);
  v61 = *(v62 - 8);
  v13 = *(v61 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v57 = &v47;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v54 = &v47;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v55 = &v47;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v56 = &v47;
  v22 = type metadata accessor for MLBoostedTreeRegressor(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = alloca(v23);
  v25 = alloca(v23);
  v26 = type metadata accessor for MLRegressor(0);
  v27 = *(*(v26 - 8) + 64);
  v28 = alloca(v27);
  v29 = alloca(v27);
  outlined init with copy of MLRegressor(v47, &v47);
  switch(swift_getEnumCaseMultiPayload(&v47, v26))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v47, &v47, type metadata accessor for MLBoostedTreeRegressor);
      v30 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(&v47 + *(v22 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v31)
      {
        v32 = v56;
        TreeRegressorModel.applied(to:eventHandler:)(v30, 0, 0);
        DataFrame.subscript.getter(v47, v48);
        (*(v61 + 8))(v32, v62);
      }

      v33 = type metadata accessor for MLBoostedTreeRegressor;
      v34 = &v47;
      return outlined destroy of MLActivityClassifier.ModelParameters(v34, v33);
    case 1u:
      v36 = v52;
      outlined init with take of MLClassifierMetrics(&v47, v52, type metadata accessor for MLDecisionTreeRegressor);
      v43 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(v36 + *(v53 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v44)
      {
        v45 = v55;
        TreeRegressorModel.applied(to:eventHandler:)(v43, 0, 0);
        DataFrame.subscript.getter(*v36, v36[1]);
        (*(v61 + 8))(v45, v62);
      }

      v33 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_14;
    case 2u:
      v35 = v54;
      v36 = v50;
      outlined init with take of MLClassifierMetrics(&v47, v50, type metadata accessor for MLRandomForestRegressor);
      v37 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(v36 + *(v51 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v38)
      {
        TreeRegressorModel.applied(to:eventHandler:)(v37, 0, 0);
        DataFrame.subscript.getter(*v36, v36[1]);
        (*(v61 + 8))(v35, v62);
      }

      v33 = type metadata accessor for MLRandomForestRegressor;
      goto LABEL_14;
    case 3u:
      v36 = v49;
      outlined init with take of MLClassifierMetrics(&v47, v49, type metadata accessor for MLLinearRegressor);
      v39 = v48;
      v40 = v58;
      DataFrame.validateContainsColumns(_:context:)(*(v36 + *(v48 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (!v41)
      {
        MLLinearRegressor.Model.applied(to:eventHandler:)(v40, 0, 0);
        v42 = v57;
        DataFrame.subscript.getter(*(v36 + *(v39 + 24)), *(v36 + *(v39 + 24) + 8));
        (*(v61 + 8))(v42, v62);
      }

      v33 = type metadata accessor for MLLinearRegressor;
LABEL_14:
      v34 = v36;
      return outlined destroy of MLActivityClassifier.ModelParameters(v34, v33);
  }
}

{
  v108 = v2;
  v87 = v3;
  v110 = v1;
  v88 = type metadata accessor for MLLinearRegressor(0);
  v4 = *(*(v88 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v89 = &v86;
  v91 = type metadata accessor for MLRandomForestRegressor(0);
  v7 = *(*(v91 - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v90 = &v86;
  v93 = type metadata accessor for MLDecisionTreeRegressor(0);
  v10 = *(*(v93 - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v92 = &v86;
  v112 = type metadata accessor for DataFrame(0);
  v113 = *(v112 - 8);
  v13 = *(v113 + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v99 = &v86;
  v16 = alloca(v13);
  v17 = alloca(v13);
  v111 = &v86;
  v18 = alloca(v13);
  v19 = alloca(v13);
  v100 = &v86;
  v20 = alloca(v13);
  v21 = alloca(v13);
  v97 = &v86;
  v22 = alloca(v13);
  v23 = alloca(v13);
  v101 = &v86;
  v24 = alloca(v13);
  v25 = alloca(v13);
  v98 = &v86;
  v26 = alloca(v13);
  v27 = alloca(v13);
  v96 = &v86;
  v28 = alloca(v13);
  v29 = alloca(v13);
  v94 = &v86;
  v30 = *(*(type metadata accessor for AnyColumn(0) - 8) + 64);
  v31 = alloca(v30);
  v32 = alloca(v30);
  v102 = &v86;
  v33 = alloca(v30);
  v34 = alloca(v30);
  v103 = &v86;
  v35 = alloca(v30);
  v36 = alloca(v30);
  v104 = &v86;
  v37 = alloca(v30);
  v38 = alloca(v30);
  v105 = &v86;
  v95 = type metadata accessor for MLBoostedTreeRegressor(0);
  v39 = *(*(v95 - 8) + 64);
  v40 = alloca(v39);
  v41 = alloca(v39);
  v109 = &v86;
  v42 = type metadata accessor for MLRegressor(0);
  v43 = *(*(v42 - 8) + 64);
  v44 = alloca(v43);
  v45 = alloca(v43);
  v46 = *a1;
  v47 = *(a1 + 8);
  outlined init with copy of MLRegressor(v87, &v86);
  switch(swift_getEnumCaseMultiPayload(&v86, v42))
  {
    case 0u:
      v48 = v109;
      outlined init with take of MLClassifierMetrics(&v86, v109, type metadata accessor for MLBoostedTreeRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      v49 = v94;
      DataFrame.init(_:)(&v106);
      DataFrame.validateContainsColumns(_:context:)(*(v48 + *(v95 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v51)
      {
        (*(v113 + 8))(v49, v112);
      }

      else
      {
        v52 = v96;
        TreeRegressorModel.applied(to:eventHandler:)(v49, 0, 0);
        DataFrame.subscript.getter(*v109, v109[1]);
        v77 = v52;
        v78 = *(v113 + 8);
        v79 = v112;
        v78(v77, v112);
        *v50.i64 = v78(v49, v79);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v105, 1, v50);
        v48 = v109;
      }

      v53 = type metadata accessor for MLBoostedTreeRegressor;
      v54 = v48;
      return outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
    case 1u:
      v55 = v92;
      outlined init with take of MLClassifierMetrics(&v86, v92, type metadata accessor for MLDecisionTreeRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      v62 = v98;
      DataFrame.init(_:)(&v106);
      DataFrame.validateContainsColumns(_:context:)(*(v55 + *(v93 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v64)
      {
        (*(v113 + 8))(v62, v112);
      }

      else
      {
        TreeRegressorModel.applied(to:eventHandler:)(v62, 0, 0);
        v80 = v101;
        DataFrame.subscript.getter(*v55, v55[1]);
        v81 = *(v113 + 8);
        v82 = v80;
        v83 = v55;
        v84 = v112;
        v81(v82, v112);
        v85 = v84;
        v55 = v83;
        *v63.i64 = v81(v98, v85);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v104, 1, v63);
      }

      v53 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_17;
    case 2u:
      v55 = v90;
      outlined init with take of MLClassifierMetrics(&v86, v90, type metadata accessor for MLRandomForestRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      v56 = v97;
      DataFrame.init(_:)(&v106);
      DataFrame.validateContainsColumns(_:context:)(*(v55 + *(v91 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v58)
      {
        (*(v113 + 8))(v56, v112);
      }

      else
      {
        TreeRegressorModel.applied(to:eventHandler:)(v56, 0, 0);
        v66 = v100;
        DataFrame.subscript.getter(*v55, v55[1]);
        v67 = *(v113 + 8);
        v68 = v66;
        v69 = v55;
        v70 = v112;
        v67(v68, v112);
        v71 = v70;
        v55 = v69;
        *v57.i64 = v67(v97, v71);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v103, 1, v57);
      }

      v53 = type metadata accessor for MLRandomForestRegressor;
      goto LABEL_17;
    case 3u:
      v55 = v89;
      outlined init with take of MLClassifierMetrics(&v86, v89, type metadata accessor for MLLinearRegressor);
      v106 = v46;
      v107 = v47 & 1;
      outlined copy of Result<_DataTable, Error>(v46, v47);
      DataFrame.init(_:)(&v106);
      v59 = v88;
      DataFrame.validateContainsColumns(_:context:)(*(v55 + *(v88 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v61)
      {
        (*(v113 + 8))(v111, v112);
        v53 = type metadata accessor for MLLinearRegressor;
LABEL_17:
        v54 = v55;
      }

      else
      {
        MLLinearRegressor.Model.applied(to:eventHandler:)(v111, 0, 0);
        v72 = v99;
        DataFrame.subscript.getter(*(v55 + *(v59 + 24)), *(v55 + *(v59 + 24) + 8));
        v73 = *(v113 + 8);
        v74 = v72;
        v75 = v55;
        v76 = v112;
        v73(v74, v112);
        *v60.i64 = v73(v111, v76);
        MLUntypedColumn.init(_:convertArraysToShapedArrays:)(v102, 1, v60);
        v53 = type metadata accessor for MLLinearRegressor;
        v54 = v75;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v54, v53);
  }
}

uint64_t MLRegressor.evaluation(on:)(uint64_t a1)
{
  v56 = a1;
  v58 = v1;
  v3 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v53 = v48;
  v57 = type metadata accessor for MLRandomForestRegressor(0);
  v6 = *(*(v57 - 1) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v54 = v48;
  v55 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v55 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v52 = v48;
  v12 = type metadata accessor for MLBoostedTreeRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = v48;
  v17 = type metadata accessor for MLRegressor(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLRegressor(v2, v48);
  switch(swift_getEnumCaseMultiPayload(v48, v17))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v48, v48, type metadata accessor for MLBoostedTreeRegressor);
      v21 = v56;
      DataFrame.validateContainsColumns(_:context:)(*&v48[*(v12 + 28)], __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v22)
      {
        v23 = v58;
      }

      else
      {
        v42 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v42, v51);
        inited[2] = 1;
        inited[3] = 2;
        v44 = *(v12 + 24);
        v45 = *&v48[v44];
        v57 = v48;
        v46 = *&v48[v44 + 8];
        inited[4] = v45;
        inited[5] = v46;
        v46;
        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
        swift_setDeallocating(inited);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        if (!v22)
        {
          v16 = v57;
          TreeRegressorModel.computeMetrics(on:)(v21);
LABEL_19:
          v32 = type metadata accessor for MLBoostedTreeRegressor;
          goto LABEL_20;
        }

        v23 = v58;
        v16 = v57;
      }

      *v23 = v22;
      v23[1] = 0;
      *(v23 + 16) = 1;
      goto LABEL_19;
    case 1u:
      v16 = v52;
      outlined init with take of MLClassifierMetrics(v48, v52, type metadata accessor for MLDecisionTreeRegressor);
      v35 = v56;
      DataFrame.validateContainsColumns(_:context:)(*&v16[*(v55 + 28)], __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v36)
      {
        goto LABEL_11;
      }

      v37 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v38 = swift_initStackObject(v37, v50);
      v38[2] = 1;
      v38[3] = 2;
      v39 = *(v55 + 24);
      v40 = *&v16[v39 + 8];
      v38[4] = *&v16[v39];
      v38[5] = v40;
      v40;
      DataFrame.validateContainsColumns(_:context:)(v38, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      swift_setDeallocating(v38);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      if (v36)
      {
LABEL_11:
        v41 = v58;
        *v58 = v36;
        v41[1] = 0;
        *(v41 + 16) = 1;
      }

      else
      {
        TreeRegressorModel.computeMetrics(on:)(v35);
      }

      v32 = type metadata accessor for MLDecisionTreeRegressor;
LABEL_20:
      v33 = v16;
      return outlined destroy of MLActivityClassifier.ModelParameters(v33, v32);
    case 2u:
      v24 = v54;
      outlined init with take of MLClassifierMetrics(v48, v54, type metadata accessor for MLRandomForestRegressor);
      v25 = v56;
      DataFrame.validateContainsColumns(_:context:)(*(v24 + *(v57 + 7)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      if (v26)
      {
        goto LABEL_6;
      }

      v27 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v28 = swift_initStackObject(v27, v49);
      v28[2] = 1;
      v28[3] = 2;
      v29 = *(v57 + 6);
      v30 = *(v24 + v29 + 8);
      v28[4] = *(v24 + v29);
      v28[5] = v30;
      v30;
      DataFrame.validateContainsColumns(_:context:)(v28, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      swift_setDeallocating(v28);
      specialized _ContiguousArrayStorage.__deallocating_deinit();
      if (v26)
      {
LABEL_6:
        v31 = v58;
        *v58 = v26;
        v31[1] = 0;
        *(v31 + 16) = 1;
      }

      else
      {
        TreeRegressorModel.computeMetrics(on:)(v25);
      }

      v32 = type metadata accessor for MLRandomForestRegressor;
      v33 = v24;
      return outlined destroy of MLActivityClassifier.ModelParameters(v33, v32);
    case 3u:
      v34 = v53;
      outlined init with take of MLClassifierMetrics(v48, v53, type metadata accessor for MLLinearRegressor);
      MLLinearRegressor.evaluation(on:)(v56);
      v33 = v34;
      v32 = type metadata accessor for MLLinearRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v33, v32);
  }
}

{
  v79 = v2;
  v80 = v1;
  v3 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v4 = alloca(v3);
  v5 = alloca(v3);
  v65 = v61;
  v73 = type metadata accessor for MLRandomForestRegressor(0);
  v6 = *(*(v73 - 8) + 64);
  v7 = alloca(v6);
  v8 = alloca(v6);
  v66 = v61;
  v74 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v74 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v67 = v61;
  v78 = type metadata accessor for DataFrame(0);
  v77 = *(v78 - 8);
  v12 = *(v77 + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v69 = v61;
  v15 = alloca(v12);
  v16 = alloca(v12);
  v68 = v61;
  v17 = alloca(v12);
  v18 = alloca(v12);
  v70 = v61;
  v19 = alloca(v12);
  v20 = alloca(v12);
  v71 = v61;
  v72 = type metadata accessor for MLBoostedTreeRegressor(0);
  v21 = *(*(v72 - 8) + 64);
  v22 = alloca(v21);
  v23 = alloca(v21);
  v24 = type metadata accessor for MLRegressor(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = alloca(v25);
  v27 = alloca(v25);
  v28 = *a1;
  v29 = *(a1 + 8);
  outlined init with copy of MLRegressor(v79, v61);
  switch(swift_getEnumCaseMultiPayload(v61, v24))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v61, v61, type metadata accessor for MLBoostedTreeRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v30 = v71;
      DataFrame.init(_:)(&v75);
      v31 = v72;
      DataFrame.validateContainsColumns(_:context:)(*&v61[*(v72 + 28)], __PAIR128__(0xE700000000000000, 0x65727574616546));
      v33 = v61;
      if (v32)
      {
        v34 = v80;
      }

      else
      {
        v55 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
        inited = swift_initStackObject(v55, v64);
        inited[2] = 1;
        inited[3] = 2;
        v57 = *(v31 + 24);
        v58 = *&v61[v57];
        v79 = v61;
        v59 = *&v61[v57 + 8];
        inited[4] = v58;
        inited[5] = v59;
        v59;
        DataFrame.validateContainsColumns(_:context:)(inited, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
        if (!v32)
        {
          swift_setDeallocating(inited);
          specialized _ContiguousArrayStorage.__deallocating_deinit();
          v33 = v79;
          TreeRegressorModel.computeMetrics(on:)(v30);
LABEL_21:
          (*(v77 + 8))(v30, v78);
          v43 = type metadata accessor for MLBoostedTreeRegressor;
          goto LABEL_22;
        }

        swift_setDeallocating(inited);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        v34 = v80;
        v33 = v79;
      }

      *v34 = v32;
      v34[1] = 0;
      *(v34 + 16) = 1;
      goto LABEL_21;
    case 1u:
      v47 = v67;
      outlined init with take of MLClassifierMetrics(v61, v67, type metadata accessor for MLDecisionTreeRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v48 = v70;
      DataFrame.init(_:)(&v75);
      DataFrame.validateContainsColumns(_:context:)(*(v47 + *(v74 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      v33 = v47;
      if (v49)
      {
        goto LABEL_13;
      }

      v50 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v51 = swift_initStackObject(v50, v63);
      v51[2] = 1;
      v51[3] = 2;
      v52 = *(v74 + 24);
      v53 = *(v47 + v52 + 8);
      v51[4] = *(v47 + v52);
      v51[5] = v53;
      v53;
      DataFrame.validateContainsColumns(_:context:)(v51, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      if (v49)
      {
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_13:
        v54 = v80;
        *v80 = v49;
        v54[1] = 0;
        *(v54 + 16) = 1;
      }

      else
      {
        swift_setDeallocating(v51);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        TreeRegressorModel.computeMetrics(on:)(v48);
      }

      (*(v77 + 8))(v48, v78);
      v43 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_22;
    case 2u:
      v35 = v66;
      outlined init with take of MLClassifierMetrics(v61, v66, type metadata accessor for MLRandomForestRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v36 = v68;
      DataFrame.init(_:)(&v75);
      DataFrame.validateContainsColumns(_:context:)(*(v35 + *(v73 + 28)), __PAIR128__(0xE700000000000000, 0x65727574616546));
      v33 = v35;
      if (v37)
      {
        goto LABEL_7;
      }

      v38 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<String>);
      v39 = swift_initStackObject(v38, v62);
      v39[2] = 1;
      v39[3] = 2;
      v40 = *(v73 + 24);
      v41 = *(v35 + v40 + 8);
      v39[4] = *(v35 + v40);
      v39[5] = v41;
      v41;
      DataFrame.validateContainsColumns(_:context:)(v39, __PAIR128__(0xE500000000000000, 0x6C6562614CLL));
      if (v37)
      {
        swift_setDeallocating(v39);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
LABEL_7:
        v42 = v80;
        *v80 = v37;
        v42[1] = 0;
        *(v42 + 16) = 1;
      }

      else
      {
        swift_setDeallocating(v39);
        specialized _ContiguousArrayStorage.__deallocating_deinit();
        TreeRegressorModel.computeMetrics(on:)(v36);
      }

      (*(v77 + 8))(v36, v78);
      v43 = type metadata accessor for MLRandomForestRegressor;
LABEL_22:
      v46 = v33;
      return outlined destroy of MLActivityClassifier.ModelParameters(v46, v43);
    case 3u:
      v44 = v65;
      outlined init with take of MLClassifierMetrics(v61, v65, type metadata accessor for MLLinearRegressor);
      v75 = v28;
      v76 = v29 & 1;
      outlined copy of Result<_DataTable, Error>(v28, v29);
      v45 = v69;
      DataFrame.init(_:)(&v75);
      MLLinearRegressor.evaluation(on:)(v45);
      (*(v77 + 8))(v45, v78);
      v46 = v44;
      v43 = type metadata accessor for MLLinearRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v46, v43);
  }
}

uint64_t MLRegressor.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v30 = v2;
  v32 = a2;
  v31 = a1;
  v4 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v27 = &v25;
  v7 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v28 = &v25;
  v10 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v11 = alloca(v10);
  v12 = alloca(v10);
  v29 = &v25;
  v13 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = type metadata accessor for MLRegressor(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  outlined init with copy of MLRegressor(v3, &v25);
  switch(swift_getEnumCaseMultiPayload(&v25, v16))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v25, &v25, type metadata accessor for MLBoostedTreeRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLBoostedTreeRegressor.write(to:metadata:)(v31, v26);
      v20 = &v25;
      v21 = type metadata accessor for MLBoostedTreeRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v20, v21);
    case 1u:
      v22 = type metadata accessor for MLDecisionTreeRegressor;
      v23 = v29;
      outlined init with take of MLClassifierMetrics(&v25, v29, type metadata accessor for MLDecisionTreeRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLDecisionTreeRegressor.write(to:metadata:)(v31, v26);
      goto LABEL_6;
    case 2u:
      v22 = type metadata accessor for MLRandomForestRegressor;
      v23 = v28;
      outlined init with take of MLClassifierMetrics(&v25, v28, type metadata accessor for MLRandomForestRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLRandomForestRegressor.write(to:metadata:)(v31, v26);
      goto LABEL_6;
    case 3u:
      v22 = type metadata accessor for MLLinearRegressor;
      v23 = v27;
      outlined init with take of MLClassifierMetrics(&v25, v27, type metadata accessor for MLLinearRegressor);
      qmemcpy(v26, v32, sizeof(v26));
      MLLinearRegressor.write(to:metadata:)(v31, v26);
LABEL_6:
      v20 = v23;
      v21 = v22;
      return outlined destroy of MLActivityClassifier.ModelParameters(v20, v21);
  }
}

uint64_t MLRegressor.write(toFile:metadata:)(uint64_t a1, uint64_t a2, const void *a3)
{
  v64 = v3;
  v57 = v4;
  v58 = a3;
  v65 = a2;
  v66 = a1;
  v5 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v70 = v55;
  v8 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v71 = v55;
  v11 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v72 = v55;
  v69 = type metadata accessor for URL.DirectoryHint(0);
  v68 = *(v69 - 8);
  v14 = *(v68 + 64);
  v15 = alloca(v14);
  v16 = alloca(v14);
  v67 = v55;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v18 = alloca(v17);
  v19 = alloca(v17);
  v74 = type metadata accessor for URL(0);
  v73 = *(v74 - 8);
  v20 = *(v73 + 64);
  v21 = alloca(v20);
  v22 = alloca(v20);
  v60 = v55;
  v23 = alloca(v20);
  v24 = alloca(v20);
  v61 = v55;
  v25 = alloca(v20);
  v26 = alloca(v20);
  v62 = v55;
  v27 = alloca(v20);
  v28 = alloca(v20);
  v63 = v55;
  v29 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v30 = alloca(v29);
  v31 = alloca(v29);
  v32 = type metadata accessor for MLRegressor(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = alloca(v33);
  v35 = alloca(v33);
  qmemcpy(v56, v58, sizeof(v56));
  outlined init with copy of MLRegressor(v57, v55);
  switch(swift_getEnumCaseMultiPayload(v55, v32))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v55, v55, type metadata accessor for MLBoostedTreeRegressor);
      v59 = v55;
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v74);
      v36 = v67;
      (*(v68 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
      v37 = v65;
      v65;
      v38 = v63;
      v39 = URL.init(filePath:directoryHint:relativeTo:)(v66, v37, v36, v59);
      qmemcpy(v55, v56, sizeof(v55));
      MLBoostedTreeRegressor.write(to:metadata:)(v38, v55);
      (*(v73 + 8))(v63, v74, v39);
      v40 = type metadata accessor for MLBoostedTreeRegressor;
      v41 = v55;
      break;
    case 1u:
      outlined init with take of MLClassifierMetrics(v55, v72, type metadata accessor for MLDecisionTreeRegressor);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v74);
      v50 = v67;
      (*(v68 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
      v51 = v65;
      v65;
      v52 = v62;
      v53 = URL.init(filePath:directoryHint:relativeTo:)(v66, v51, v50, v55);
      qmemcpy(v55, v56, sizeof(v55));
      MLDecisionTreeRegressor.write(to:metadata:)(v52, v55);
      (*(v73 + 8))(v62, v74, v53);
      v40 = type metadata accessor for MLDecisionTreeRegressor;
      v41 = v72;
      break;
    case 2u:
      outlined init with take of MLClassifierMetrics(v55, v71, type metadata accessor for MLRandomForestRegressor);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v74);
      v42 = v67;
      (*(v68 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
      v43 = v65;
      v65;
      v44 = v61;
      v45 = URL.init(filePath:directoryHint:relativeTo:)(v66, v43, v42, v55);
      qmemcpy(v55, v56, sizeof(v55));
      MLRandomForestRegressor.write(to:metadata:)(v44, v55);
      (*(v73 + 8))(v61, v74, v45);
      v40 = type metadata accessor for MLRandomForestRegressor;
      v41 = v71;
      break;
    case 3u:
      outlined init with take of MLClassifierMetrics(v55, v70, type metadata accessor for MLLinearRegressor);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v74);
      v46 = v67;
      (*(v68 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
      v47 = v65;
      v65;
      v48 = v60;
      v49 = URL.init(filePath:directoryHint:relativeTo:)(v66, v47, v46, v55);
      qmemcpy(v55, v56, sizeof(v55));
      MLLinearRegressor.write(to:metadata:)(v48, v55);
      (*(v73 + 8))(v60, v74, v49);
      v40 = type metadata accessor for MLLinearRegressor;
      v41 = v70;
      break;
  }

  return outlined destroy of MLActivityClassifier.ModelParameters(v41, v40);
}

id MLRegressor.model.getter()
{
  v27 = v0;
  v28 = type metadata accessor for MLLinearRegressor(0);
  v1 = *(*(v28 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v29 = v26;
  v30 = type metadata accessor for MLRandomForestRegressor(0);
  v4 = *(*(v30 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v31 = v26;
  v7 = type metadata accessor for MLDecisionTreeRegressor(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v32 = v26;
  v11 = type metadata accessor for MLBoostedTreeRegressor(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for MLRegressor(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of MLRegressor(v27, v26);
  switch(swift_getEnumCaseMultiPayload(v26, v15))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(v26, v26, type metadata accessor for MLBoostedTreeRegressor);
      v19 = *&v26[*(v11 + 20)];
      outlined destroy of MLActivityClassifier.ModelParameters(v26, type metadata accessor for MLBoostedTreeRegressor);
      return v19;
    case 1u:
      v21 = type metadata accessor for MLDecisionTreeRegressor;
      v22 = v32;
      outlined init with take of MLClassifierMetrics(v26, v32, type metadata accessor for MLDecisionTreeRegressor);
      v24 = *(v7 + 20);
      goto LABEL_7;
    case 2u:
      v21 = type metadata accessor for MLRandomForestRegressor;
      v22 = v31;
      outlined init with take of MLClassifierMetrics(v26, v31, type metadata accessor for MLRandomForestRegressor);
      v23 = v30;
      goto LABEL_5;
    case 3u:
      v21 = type metadata accessor for MLLinearRegressor;
      v22 = v29;
      outlined init with take of MLClassifierMetrics(v26, v29, type metadata accessor for MLLinearRegressor);
      v23 = v28;
LABEL_5:
      v24 = *(v23 + 20);
LABEL_7:
      v25 = *(v22 + v24);
      outlined destroy of MLActivityClassifier.ModelParameters(v22, v21);
      return v25;
  }
}

uint64_t *MLRegressor.trainingMetrics.getter()
{
  v29 = v1;
  v28 = v0;
  v31 = type metadata accessor for MLLinearRegressor(0);
  v2 = *(*(v31 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = &v28;
  v33 = type metadata accessor for MLRandomForestRegressor(0);
  v5 = *(*(v33 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = &v28;
  v8 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v28;
  v12 = type metadata accessor for MLBoostedTreeRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = &v28;
  v17 = type metadata accessor for MLRegressor(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLRegressor(v29, &v28);
  switch(swift_getEnumCaseMultiPayload(&v28, v17))
  {
    case 0u:
      v21 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLBoostedTreeRegressor);
      v22 = *(v12 + 36);
      break;
    case 1u:
      v21 = type metadata accessor for MLDecisionTreeRegressor;
      v16 = v34;
      outlined init with take of MLClassifierMetrics(&v28, v34, type metadata accessor for MLDecisionTreeRegressor);
      v22 = *(v8 + 36);
      break;
    case 2u:
      v21 = type metadata accessor for MLRandomForestRegressor;
      v16 = v32;
      outlined init with take of MLClassifierMetrics(&v28, v32, type metadata accessor for MLRandomForestRegressor);
      v23 = v33;
      goto LABEL_5;
    case 3u:
      v21 = type metadata accessor for MLLinearRegressor;
      v16 = v30;
      outlined init with take of MLClassifierMetrics(&v28, v30, type metadata accessor for MLLinearRegressor);
      v23 = v31;
LABEL_5:
      v22 = *(v23 + 36);
      break;
  }

  v24 = *(v16 + v22);
  v25 = *(v16 + v22 + 8);
  v26 = *(v16 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v24, v25, v26);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, v21);
  result = v28;
  *v28 = v24;
  result[1] = v25;
  *(result + 16) = v26 & 1;
  return result;
}

uint64_t *MLRegressor.validationMetrics.getter()
{
  v29 = v1;
  v28 = v0;
  v31 = type metadata accessor for MLLinearRegressor(0);
  v2 = *(*(v31 - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v30 = &v28;
  v33 = type metadata accessor for MLRandomForestRegressor(0);
  v5 = *(*(v33 - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v32 = &v28;
  v8 = type metadata accessor for MLDecisionTreeRegressor(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = alloca(v9);
  v11 = alloca(v9);
  v34 = &v28;
  v12 = type metadata accessor for MLBoostedTreeRegressor(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = alloca(v13);
  v15 = alloca(v13);
  v16 = &v28;
  v17 = type metadata accessor for MLRegressor(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = alloca(v18);
  v20 = alloca(v18);
  outlined init with copy of MLRegressor(v29, &v28);
  switch(swift_getEnumCaseMultiPayload(&v28, v17))
  {
    case 0u:
      v21 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v28, &v28, type metadata accessor for MLBoostedTreeRegressor);
      v22 = *(v12 + 40);
      break;
    case 1u:
      v21 = type metadata accessor for MLDecisionTreeRegressor;
      v16 = v34;
      outlined init with take of MLClassifierMetrics(&v28, v34, type metadata accessor for MLDecisionTreeRegressor);
      v22 = *(v8 + 40);
      break;
    case 2u:
      v21 = type metadata accessor for MLRandomForestRegressor;
      v16 = v32;
      outlined init with take of MLClassifierMetrics(&v28, v32, type metadata accessor for MLRandomForestRegressor);
      v23 = v33;
      goto LABEL_5;
    case 3u:
      v21 = type metadata accessor for MLLinearRegressor;
      v16 = v30;
      outlined init with take of MLClassifierMetrics(&v28, v30, type metadata accessor for MLLinearRegressor);
      v23 = v31;
LABEL_5:
      v22 = *(v23 + 40);
      break;
  }

  v24 = *(v16 + v22);
  v25 = *(v16 + v22 + 8);
  v26 = *(v16 + v22 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v24, v25, v26);
  outlined destroy of MLActivityClassifier.ModelParameters(v16, v21);
  result = v28;
  *v28 = v24;
  result[1] = v25;
  *(result + 16) = v26 & 1;
  return result;
}

uint64_t MLRegressor.targetColumn.getter()
{
  v28 = v0;
  v29 = type metadata accessor for MLLinearRegressor(0);
  v1 = *(*(v29 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v30 = v27;
  v31 = type metadata accessor for MLRandomForestRegressor(0);
  v4 = *(*(v31 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = v27;
  v7 = type metadata accessor for MLDecisionTreeRegressor(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v33 = v27;
  v11 = type metadata accessor for MLBoostedTreeRegressor(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for MLRegressor(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of MLRegressor(v28, v27);
  switch(swift_getEnumCaseMultiPayload(v27, v15))
  {
    case 0u:
      v19 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(v27, v27, type metadata accessor for MLBoostedTreeRegressor);
      v20 = *(v11 + 24);
      v21 = *&v27[v20];
      *&v27[v20 + 8];
      v22 = v27;
      goto LABEL_8;
    case 1u:
      v19 = type metadata accessor for MLDecisionTreeRegressor;
      v23 = v33;
      outlined init with take of MLClassifierMetrics(v27, v33, type metadata accessor for MLDecisionTreeRegressor);
      v25 = *(v7 + 24);
      goto LABEL_7;
    case 2u:
      v19 = type metadata accessor for MLRandomForestRegressor;
      v23 = v32;
      outlined init with take of MLClassifierMetrics(v27, v32, type metadata accessor for MLRandomForestRegressor);
      v24 = v31;
      goto LABEL_5;
    case 3u:
      v19 = type metadata accessor for MLLinearRegressor;
      v23 = v30;
      outlined init with take of MLClassifierMetrics(v27, v30, type metadata accessor for MLLinearRegressor);
      v24 = v29;
LABEL_5:
      v25 = *(v24 + 24);
LABEL_7:
      v21 = *(v23 + v25);
      *(v23 + v25 + 8);
      v22 = v23;
LABEL_8:
      outlined destroy of MLActivityClassifier.ModelParameters(v22, v19);
      return v21;
  }
}

uint64_t MLRegressor.featureColumns.getter()
{
  v28 = v0;
  v29 = type metadata accessor for MLLinearRegressor(0);
  v1 = *(*(v29 - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v30 = v27;
  v31 = type metadata accessor for MLRandomForestRegressor(0);
  v4 = *(*(v31 - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v32 = v27;
  v7 = type metadata accessor for MLDecisionTreeRegressor(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v33 = v27;
  v11 = type metadata accessor for MLBoostedTreeRegressor(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = alloca(v12);
  v14 = alloca(v12);
  v15 = type metadata accessor for MLRegressor(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = alloca(v16);
  v18 = alloca(v16);
  outlined init with copy of MLRegressor(v28, v27);
  switch(swift_getEnumCaseMultiPayload(v27, v15))
  {
    case 0u:
      v19 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(v27, v27, type metadata accessor for MLBoostedTreeRegressor);
      v20 = *&v27[*(v11 + 28)];
      v20;
      v21 = v27;
      goto LABEL_6;
    case 1u:
      v25 = v33;
      outlined init with take of MLClassifierMetrics(v27, v33, type metadata accessor for MLDecisionTreeRegressor);
      v20 = *(v25 + *(v7 + 28));
      v20;
      v21 = v25;
      v24 = type metadata accessor for MLDecisionTreeRegressor;
      goto LABEL_8;
    case 2u:
      v19 = type metadata accessor for MLRandomForestRegressor;
      v22 = v32;
      outlined init with take of MLClassifierMetrics(v27, v32, type metadata accessor for MLRandomForestRegressor);
      v23 = v31;
      goto LABEL_5;
    case 3u:
      v19 = type metadata accessor for MLLinearRegressor;
      v22 = v30;
      outlined init with take of MLClassifierMetrics(v27, v30, type metadata accessor for MLLinearRegressor);
      v23 = v29;
LABEL_5:
      v20 = *(v22 + *(v23 + 28));
      v20;
      v21 = v22;
LABEL_6:
      v24 = v19;
LABEL_8:
      outlined destroy of MLActivityClassifier.ModelParameters(v21, v24);
      return v20;
  }
}

unint64_t MLRegressor.description.getter()
{
  return MLRegressor.description.getter();
}

{
  v1 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v25 = &v24;
  v4 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v5 = alloca(v4);
  v6 = alloca(v4);
  v26 = &v24;
  v7 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v8 = alloca(v7);
  v9 = alloca(v7);
  v10 = &v24;
  v11 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for MLRegressor(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  outlined init with copy of MLRegressor(v0, &v24);
  switch(swift_getEnumCaseMultiPayload(&v24, v14))
  {
    case 0u:
      v18 = type metadata accessor for MLBoostedTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v24, &v24, type metadata accessor for MLBoostedTreeRegressor);
      v19 = MLBoostedTreeRegressor.debugDescription.getter();
      v20 = &v24;
      goto LABEL_7;
    case 1u:
      v18 = type metadata accessor for MLDecisionTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v24, &v24, type metadata accessor for MLDecisionTreeRegressor);
      v21 = MLDecisionTreeRegressor.description.getter();
      goto LABEL_6;
    case 2u:
      v18 = type metadata accessor for MLRandomForestRegressor;
      v10 = v26;
      outlined init with take of MLClassifierMetrics(&v24, v26, type metadata accessor for MLRandomForestRegressor);
      v21 = MLRandomForestRegressor.description.getter();
      goto LABEL_6;
    case 3u:
      v18 = type metadata accessor for MLLinearRegressor;
      v10 = v25;
      v22 = v25;
      outlined init with take of MLClassifierMetrics(&v24, v25, type metadata accessor for MLLinearRegressor);
      v21 = MLLinearRegressor.description.getter(&v24, v22);
LABEL_6:
      v19 = v21;
      v20 = v10;
LABEL_7:
      outlined destroy of MLActivityClassifier.ModelParameters(v20, v18);
      return v19;
  }
}

uint64_t MLRegressor.playgroundDescription.getter()
{
  v40 = v0;
  v2 = *(*(type metadata accessor for MLLinearRegressor(0) - 8) + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v38 = &v38;
  v5 = *(*(type metadata accessor for MLRandomForestRegressor(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v39 = &v38;
  v8 = *(*(type metadata accessor for MLDecisionTreeRegressor(0) - 8) + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  v11 = *(*(type metadata accessor for MLBoostedTreeRegressor(0) - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v14 = type metadata accessor for MLRegressor(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = alloca(v15);
  v17 = alloca(v15);
  outlined init with copy of MLRegressor(v1, &v38);
  switch(swift_getEnumCaseMultiPayload(&v38, v14))
  {
    case 0u:
      outlined init with take of MLClassifierMetrics(&v38, &v38, type metadata accessor for MLBoostedTreeRegressor);
      v18 = type metadata accessor for NSAttributedString();
      v19._countAndFlagsBits = MLBoostedTreeRegressor.debugDescription.getter();
      v19._object = v20;
      v21.super.isa = NSAttributedString.__allocating_init(string:)(v19).super.isa;
      v22 = v40;
      v40[3].super.isa = v18;
      v22->super.isa = v21.super.isa;
      v23 = &v38;
      v24 = type metadata accessor for MLBoostedTreeRegressor;
      return outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
    case 1u:
      v25 = type metadata accessor for MLDecisionTreeRegressor;
      outlined init with take of MLClassifierMetrics(&v38, &v38, type metadata accessor for MLDecisionTreeRegressor);
      v32 = type metadata accessor for NSAttributedString();
      v33._countAndFlagsBits = MLDecisionTreeRegressor.description.getter();
      v33._object = v34;
      v35.super.isa = NSAttributedString.__allocating_init(string:)(v33).super.isa;
      v36 = v40;
      v40[3].super.isa = v32;
      v36->super.isa = v35.super.isa;
      v23 = &v38;
      goto LABEL_7;
    case 2u:
      v25 = type metadata accessor for MLRandomForestRegressor;
      v26 = v39;
      outlined init with take of MLClassifierMetrics(&v38, v39, type metadata accessor for MLRandomForestRegressor);
      v27 = type metadata accessor for NSAttributedString();
      v28._countAndFlagsBits = MLRandomForestRegressor.description.getter();
      goto LABEL_5;
    case 3u:
      v25 = type metadata accessor for MLLinearRegressor;
      v26 = v38;
      v29 = v38;
      outlined init with take of MLClassifierMetrics(&v38, v38, type metadata accessor for MLLinearRegressor);
      v27 = type metadata accessor for NSAttributedString();
      v28._countAndFlagsBits = MLLinearRegressor.description.getter(0, v29);
LABEL_5:
      v30.super.isa = NSAttributedString.__allocating_init(string:)(v28).super.isa;
      v31 = v40;
      v40[3].super.isa = v27;
      v31->super.isa = v30.super.isa;
      v23 = v26;
LABEL_7:
      v24 = v25;
      return outlined destroy of MLActivityClassifier.ModelParameters(v23, v24);
  }
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<UInt64>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Double>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Float>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Interaction>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Int?>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ItemStatistics<Double>>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Double)>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Int, Int)>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(Double, Double)>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, void *a4, uint64_t *a5, void (*a6)(void *, int64_t, void *))
{
  v8 = a2;
  if (a3)
  {
    v9 = a4[3];
    if ((v9 >> 1) >= a2)
    {
      v8 = a4[3] >> 1;
    }

    else
    {
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 > a2)
      {
        v8 = v10;
      }
    }
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v8 = a4[2];
  }

  if (v8)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 8 * v8 + 32, 7);
    v14 = (_swift_stdlib_malloc_size(v13) - 32);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 8);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a6(a4 + 4, v11, v13 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v13 + 4, a4 + 4, 8 * v11);
  }

  a4;
  return v13;
}

{
  v8 = a2;
  if (a3)
  {
    v9 = a4[3];
    if ((v9 >> 1) >= a2)
    {
      v8 = a4[3] >> 1;
    }

    else
    {
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 > a2)
      {
        v8 = v10;
      }
    }
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v8 = a4[2];
  }

  if (v8)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 16 * v8 + 32, 7);
    v14 = (_swift_stdlib_malloc_size(v13) - 32);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 16);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a6(a4 + 4, v11, v13 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v13 + 4, a4 + 4, 16 * v11);
  }

  a4;
  return v13;
}

{
  v8 = a2;
  if (a3)
  {
    v9 = a4[3];
    if ((v9 >> 1) >= a2)
    {
      v8 = a4[3] >> 1;
    }

    else
    {
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 > a2)
      {
        v8 = v10;
      }
    }
  }

  v11 = a4[2];
  if (v8 <= v11)
  {
    v8 = a4[2];
  }

  if (v8)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v13 = swift_allocObject(v12, 4 * v8 + 32, 7);
    v14 = (_swift_stdlib_malloc_size(v13) - 32);
    v13[2] = v11;
    v13[3] = 2 * (v14 / 4);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a6(a4 + 4, v11, v13 + 4);
    a4[2] = 0;
  }

  else
  {
    memcpy(v13 + 4, a4 + 4, 4 * v11);
  }

  a4;
  return v13;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<String>, &type metadata for String, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Float]>>, &demangling cache variable for type metadata for Column<[Float]>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Float]>, &demangling cache variable for type metadata for [Float], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Column<[Double]>>, &demangling cache variable for type metadata for Column<[Double]>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Double]>, &demangling cache variable for type metadata for [Double], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue>, &type metadata for MLDataValue, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Int]>, &demangling cache variable for type metadata for [Int], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[Tensor]>, &demangling cache variable for type metadata for [Tensor], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Character>, &type metadata for Character, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Layer>, &demangling cache variable for type metadata for Layer, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<URL, String>>, &demangling cache variable for type metadata for AnnotatedFeature<URL, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String]>, &demangling cache variable for type metadata for [String], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLShapedArray<Double>>, &demangling cache variable for type metadata for MLShapedArray<Double>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>>, &demangling cache variable for type metadata for AnnotatedFeature<String, [MLObjectDetector.NormalizedAnnotation]>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.AnnotatedPredictionForLabel>, &type metadata for MLObjectDetector.AnnotatedPredictionForLabel, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<TabularClassificationTask>, &demangling cache variable for type metadata for TabularClassificationTask, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<MLShapedArray<Float>, String>>, &demangling cache variable for type metadata for AnnotatedFeature<MLShapedArray<Float>, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(user: MLRecommender.Identifier, item: MLRecommender.Identifier, rating: Double)>, &demangling cache variable for type metadata for (user: MLRecommender.Identifier, item: MLRecommender.Identifier, rating: Double), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(MLRecommender.Identifier, MLRecommender.Identifier, score: Double)>, &demangling cache variable for type metadata for (MLRecommender.Identifier, MLRecommender.Identifier, score: Double), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<RecommendationMetrics<MLRecommender.Identifier>>, &demangling cache variable for type metadata for RecommendationMetrics<MLRecommender.Identifier>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLRecommender.Identifier>, &type metadata for MLRecommender.Identifier, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(MLRecommender.Identifier, score: Double)>, &demangling cache variable for type metadata for (MLRecommender.Identifier, score: Double), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<Int>>, &demangling cache variable for type metadata for ClassificationDistribution<Int>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ClassificationDistribution<String>>, &demangling cache variable for type metadata for ClassificationDistribution<String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedPrediction<ClassificationDistribution<String>, String>>, &demangling cache variable for type metadata for AnnotatedPrediction<ClassificationDistribution<String>, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<AnnotatedFeature<CIImage, String>>, &demangling cache variable for type metadata for AnnotatedFeature<CIImage, String>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLShapedArray<Float>>, &demangling cache variable for type metadata for MLShapedArray<Float>, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<(predicted: String, label: String)>, &demangling cache variable for type metadata for (predicted: String, label: String), specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLActionClassifier.Prediction>, &type metadata for MLActionClassifier.Prediction, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLHandActionClassifier.Prediction>, &type metadata for MLHandActionClassifier.Prediction, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : [URL]]>, &demangling cache variable for type metadata for [String : [URL]], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<ColumnDescriptor>, &type metadata for ColumnDescriptor, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Any>, &type metadata for Any + 8, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Any?>, &demangling cache variable for type metadata for Any?, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<[String : Double]>, &demangling cache variable for type metadata for [String : Double], specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Tensor>, &type metadata accessor for Tensor, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<WeightedDataSample>, type metadata accessor for WeightedDataSample, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLProgram.Operation>, &type metadata accessor for MLProgram.Operation, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureDescription>, &type metadata accessor for FeatureDescription, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<URL>, &type metadata accessor for URL, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<MLCheckpoint>, type metadata accessor for MLCheckpoint, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<NeuralNetwork.Layer>, &type metadata accessor for NeuralNetwork.Layer, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Model>, &type metadata accessor for Model, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<FeatureVectorizerConfiguration.Input>, &type metadata accessor for FeatureVectorizerConfiguration.Input, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &demangling cache variable for type metadata for _ContiguousArrayStorage<Event>, &type metadata accessor for Event, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t a6, void (*a7)(uint64_t, int64_t, void *))
{
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 16 * v9 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    v14[2] = v12;
    v14[3] = 2 * (v15 / 16);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(a4 + 32, v12, v14 + 4);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v14 + 4, a4 + 32, v12, a6);
  }

  a4;
  return v14;
}

{
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 24 * v9 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    v14[2] = v12;
    v14[3] = 2 * (v15 / 24);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(a4 + 32, v12, v14 + 4);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v14 + 4, a4 + 32, v12, a6);
  }

  a4;
  return v14;
}

{
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    if ((v10 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(a4 + 16);
  if (v9 <= v12)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v14 = swift_allocObject(v13, 32 * v9 + 32, 7);
    v15 = (_swift_stdlib_malloc_size(v14) - 32);
    v14[2] = v12;
    v14[3] = 2 * (v15 / 32);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(a4 + 32, v12, v14 + 4);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v14 + 4, a4 + 32, v12, a6);
  }

  a4;
  return v14;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLDataValue.MultiArrayType>);
    v10 = swift_allocObject(v9, 8 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 8);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v10 + 32, a4 + 32, v8, &type metadata for MLDataValue.MultiArrayType);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(windowKeypoints: MLMultiArray, range: Range<Int>)>);
    v10 = swift_allocObject(v9, 24 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (windowKeypoints: MLMultiArray, range: Range<Int>));
    swift_arrayInitWithCopy(v10 + 32, a4 + 32, v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<BlobMetadata>);
    v10 = swift_allocObject(v9, (v5 << 6) | 0x20, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v10 + 32, (a4 + 32), v8 << 6);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<MLObjectDetector.ObjectAnnotation>);
    v10 = swift_allocObject(v9, 56 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v10 + 32, a4 + 32, v8, &type metadata for MLObjectDetector.ObjectAnnotation);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<ItemStatistics<PearsonSimilarity.ItemScore>>);
    v10 = swift_allocObject(v9, 32 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v10 + 32, (a4 + 32), 32 * v8);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>>);
    v10 = swift_allocObject(v9, (v5 << 6) | 0x20, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Recommendation<MLRecommender.Identifier, MLRecommender.Identifier>);
    swift_arrayInitWithCopy(v10 + 32, a4 + 32, v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(user: MLRecommender.Identifier, item: MLRecommender.Identifier)>);
    v10 = swift_allocObject(v9, 48 * v5 + 32, 7);
    v11 = (_swift_stdlib_malloc_size(v10) - 32);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v11 / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for (user: MLRecommender.Identifier, item: MLRecommender.Identifier));
    swift_arrayInitWithCopy(v10 + 32, a4 + 32, v8, v12);
  }

  a4;
  return v10;
}

{
  v5 = a2;
  if (a3)
  {
    v6 = *(a4 + 24);
    if ((v6 >> 1) >= a2)
    {
      v5 = *(a4 + 24) >> 1;
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

  v8 = *(a4 + 16);
  if (v5 <= v8)
  {
    v5 = *(a4 + 16);
  }

  if (v5)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<UInt8>);
    v10 = swift_allocObject(v9, v5 + 32, 7);
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, v10 + 32);
    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v10 + 32, (a4 + 32), v8);
  }

  a4;
  return v10;
}

uint64_t outlined init with copy of TabularRegressionTask(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of TabularRegressionTask(__int128 *a1, uint64_t a2)
{
  result = a2;
  *(a2 + 32) = *(a1 + 4);
  v3 = *a1;
  *(a2 + 16) = a1[1];
  *a2 = v3;
  return result;
}

uint64_t type metadata accessor for MLRegressor(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLRegressor;
  if (!type metadata singleton initialization cache for MLRegressor)
  {
    return swift_getSingletonMetadata(a1, &nominal type descriptor for MLRegressor);
  }

  return result;
}

uint64_t outlined init with copy of MLRegressor(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MLRegressor(0);
  (*(*(v2 - 8) + 16))(a2, a1, v2);
  return a2;
}

uint64_t type metadata accessor for NSAttributedString()
{
  result = lazy cache variable for type metadata for NSAttributedString;
  if (!lazy cache variable for type metadata for NSAttributedString)
  {
    v1 = objc_opt_self(NSAttributedString);
    result = swift_getObjCClassMetadata(v1);
    lazy cache variable for type metadata for NSAttributedString = result;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for MLRegressor(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + ((v4 + 16) & ~v4));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    v6 = a2[1];
    v3[1] = v6;
    v107 = v3 + 2;
    v7 = a2 + 2;
    v8 = a2[2];
    v6;
    switch(EnumCaseMultiPayload)
    {
      case 0:
        if (v8)
        {
          v3[2] = v8;
          v3[3] = a2[3];
          v9 = a2[4];
          v3[4] = v9;
          v8;
          v9;
        }

        else
        {
          v3[4] = a2[4];
          *v107 = *v7;
        }

        v52 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v53 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v53 - 8) + 16))(v3 + v52, a2 + v52, v53);
        v54 = type metadata accessor for MLBoostedTreeRegressor(0);
        v55 = v54[5];
        v56 = *(a2 + v55);
        *(v3 + v55) = v56;
        v57 = v54[6];
        *(v3 + v57) = *(a2 + v57);
        v98 = *(a2 + v57 + 8);
        *(v3 + v57 + 8) = v98;
        v58 = v54[7];
        v104 = *(a2 + v58);
        *(v3 + v58) = v104;
        v110 = v54;
        v59 = v54[8];
        v60 = v3 + v59;
        v61 = a2 + v59;
        v62 = *(a2 + v59 + 24);
        v56;
        v98;
        v104;
        if (v62)
        {
          *(v60 + 3) = v62;
          (**(v62 - 8))(v60, v61, v62);
        }

        else
        {
          v73 = *v61;
          *(v60 + 1) = *(v61 + 1);
          *v60 = v73;
        }

        *(v60 + 2) = *(v61 + 2);
        *(v60 + 3) = *(v61 + 3);
        *(v60 + 4) = *(v61 + 4);
        *(v60 + 10) = *(v61 + 10);
        v60[88] = v61[88];
        *(v60 + 6) = *(v61 + 6);
        v74 = v110[9];
        v75 = *(a2 + v74);
        v76 = *(a2 + v74 + 8);
        v106 = *(a2 + v74 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v75, v76, v106);
        *(v3 + v74) = v75;
        *(v3 + v74 + 8) = v76;
        *(v3 + v74 + 16) = v106;
        v77 = v110[10];
        v78 = *(a2 + v77);
        v79 = *(a2 + v77 + 8);
        v80 = *(a2 + v77 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v78, v79, v80);
        *(v3 + v77) = v78;
        *(v3 + v77 + 8) = v79;
        *(v3 + v77 + 16) = v80;
        v81 = v3;
        v82 = a3;
        v83 = 0;
        goto LABEL_33;
      case 1:
        if (v8)
        {
          v3[2] = v8;
          v3[3] = a2[3];
          v13 = a2[4];
          v3[4] = v13;
          v8;
          v13;
        }

        else
        {
          v3[4] = a2[4];
          *v107 = *v7;
        }

        v63 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v64 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v64 - 8) + 16))(v3 + v63, a2 + v63, v64);
        v65 = type metadata accessor for MLDecisionTreeRegressor(0);
        v66 = v65[5];
        v67 = *(a2 + v66);
        *(v3 + v66) = v67;
        v68 = v65[6];
        *(v3 + v68) = *(a2 + v68);
        v94 = *(a2 + v68 + 8);
        *(v3 + v68 + 8) = v94;
        v69 = v65[7];
        v105 = *(a2 + v69);
        *(v3 + v69) = v105;
        v70 = v65[8];
        v71 = v3 + v70;
        v111 = (a2 + v70);
        v72 = *(a2 + v70 + 24);
        v67;
        v94;
        v105;
        if (v72)
        {
          *(v71 + 3) = v72;
          (**(v72 - 8))(v71, v111, v72);
        }

        else
        {
          v84 = *v111;
          *(v71 + 1) = v111[1];
          *v71 = v84;
        }

        *(v71 + 2) = v111[2];
        *(v71 + 3) = v111[3];
        v99 = v65;
        v85 = v65[9];
        v86 = *(a2 + v85);
        v87 = *(a2 + v85 + 8);
        v112 = *(a2 + v85 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v86, v87, v112);
        *(v3 + v85) = v86;
        *(v3 + v85 + 8) = v87;
        *(v3 + v85 + 16) = v112;
        v88 = v99[10];
        v89 = *(a2 + v88);
        v90 = *(a2 + v88 + 8);
        v91 = *(a2 + v88 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v89, v90, v91);
        *(v3 + v88) = v89;
        *(v3 + v88 + 8) = v90;
        *(v3 + v88 + 16) = v91;
        v93 = 1;
        goto LABEL_32;
      case 2:
        if (v8)
        {
          v3[2] = v8;
          v3[3] = a2[3];
          v11 = a2[4];
          v3[4] = v11;
          v8;
          v11;
        }

        else
        {
          v3[4] = a2[4];
          *v107 = *v7;
        }

        v14 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v15 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v15 - 8) + 16))(v3 + v14, a2 + v14, v15);
        v16 = type metadata accessor for MLRandomForestRegressor(0);
        v17 = v16[5];
        v18 = *(a2 + v17);
        *(v3 + v17) = v18;
        v19 = v16[6];
        *(v3 + v19) = *(a2 + v19);
        v96 = *(a2 + v19 + 8);
        *(v3 + v19 + 8) = v96;
        v20 = v16[7];
        v100 = *(a2 + v20);
        *(v3 + v20) = v100;
        v108 = v16;
        v21 = v16[8];
        v22 = v3 + v21;
        v23 = (a2 + v21);
        v24 = *(a2 + v21 + 24);
        v18;
        v96;
        v100;
        if (v24)
        {
          *(v22 + 3) = v24;
          (**(v24 - 8))(v22, v23, v24);
        }

        else
        {
          v25 = *v23;
          *(v22 + 1) = v23[1];
          *v22 = v25;
        }

        *(v22 + 2) = v23[2];
        *(v22 + 3) = v23[3];
        *(v22 + 4) = v23[4];
        *(v22 + 5) = v23[5];
        *(v22 + 6) = v23[6];
        v26 = v108[9];
        v27 = *(a2 + v26);
        v28 = *(a2 + v26 + 8);
        v101 = *(a2 + v26 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v27, v28, v101);
        *(v3 + v26) = v27;
        *(v3 + v26 + 8) = v28;
        *(v3 + v26 + 16) = v101;
        v29 = v108[10];
        v30 = *(a2 + v29);
        v31 = *(a2 + v29 + 8);
        v32 = *(a2 + v29 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v30, v31, v32);
        *(v3 + v29) = v30;
        *(v3 + v29 + 8) = v31;
        *(v3 + v29 + 16) = v32;
        v93 = 2;
        goto LABEL_32;
      case 3:
        if (v8)
        {
          v3[2] = v8;
          v3[3] = a2[3];
          v12 = a2[4];
          v3[4] = v12;
          v8;
          v12;
        }

        else
        {
          v3[4] = a2[4];
          *v107 = *v7;
        }

        v33 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
        v34 = type metadata accessor for BaseLinearRegressorModel(0);
        (*(*(v34 - 8) + 16))(v3 + v33, a2 + v33, v34);
        v35 = type metadata accessor for MLLinearRegressor(0);
        v36 = v35[5];
        v37 = *(a2 + v36);
        *(v3 + v36) = v37;
        v38 = v35[6];
        *(v3 + v38) = *(a2 + v38);
        v97 = *(a2 + v38 + 8);
        *(v3 + v38 + 8) = v97;
        v39 = v35[7];
        v102 = *(a2 + v39);
        *(v3 + v39) = v102;
        v109 = v35;
        v40 = v35[8];
        v41 = v3 + v40;
        v42 = a2 + v40;
        v43 = *(a2 + v40 + 24);
        v37;
        v97;
        v102;
        if (v43)
        {
          *(v41 + 3) = v43;
          (**(v43 - 8))(v41, v42, v43);
        }

        else
        {
          v44 = *v42;
          *(v41 + 1) = *(v42 + 1);
          *v41 = v44;
        }

        *(v41 + 2) = *(v42 + 2);
        *(v41 + 3) = *(v42 + 3);
        *(v41 + 8) = *(v42 + 8);
        v41[72] = v42[72];
        v45 = v109[9];
        v46 = *(a2 + v45);
        v47 = *(a2 + v45 + 8);
        v103 = *(a2 + v45 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v46, v47, v103);
        *(v3 + v45) = v46;
        *(v3 + v45 + 8) = v47;
        *(v3 + v45 + 16) = v103;
        v48 = v109[10];
        v49 = *(a2 + v48);
        v50 = *(a2 + v48 + 8);
        v51 = *(a2 + v48 + 16);
        outlined copy of Result<_RegressorMetrics, Error>(v49, v50, v51);
        *(v3 + v48) = v49;
        *(v3 + v48 + 8) = v50;
        *(v3 + v48 + 16) = v51;
        v93 = 3;
LABEL_32:
        v83 = v93;
        v81 = v3;
        v82 = a3;
LABEL_33:
        swift_storeEnumTagMultiPayload(v81, v82, v83);
        break;
    }
  }

  return v3;
}

uint64_t destroy for MLRegressor(void *a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload(a1, a2);
  switch(result)
  {
    case 0:
      a1[1];
      v4 = a1[2];
      if (v4)
      {
        v4;
        a1[4];
      }

      v5 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v6 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v6 - 8) + 8))(v5, v6);
      v7 = type metadata accessor for MLBoostedTreeRegressor(0);
      goto LABEL_14;
    case 1:
      a1[1];
      v14 = a1[2];
      if (v14)
      {
        v14;
        a1[4];
      }

      v15 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v16 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v16 - 8) + 8))(v15, v16);
      v7 = type metadata accessor for MLDecisionTreeRegressor(0);
      goto LABEL_14;
    case 2:
      a1[1];
      v8 = a1[2];
      if (v8)
      {
        v8;
        a1[4];
      }

      v9 = a1 + *(type metadata accessor for TreeRegressorModel(0) + 24);
      v10 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v10 - 8) + 8))(v9, v10);
      v7 = type metadata accessor for MLRandomForestRegressor(0);
      goto LABEL_14;
    case 3:
      a1[1];
      v11 = a1[2];
      if (v11)
      {
        v11;
        a1[4];
      }

      v12 = a1 + *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v13 = type metadata accessor for BaseLinearRegressorModel(0);
      (*(*(v13 - 8) + 8))(v12, v13);
      v7 = type metadata accessor for MLLinearRegressor(0);
LABEL_14:
      v17 = v7;

      *(a1 + v17[6] + 8);
      *(a1 + v17[7]);
      v18 = v17[8];
      if (*(a1 + v18 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm((a1 + v18));
      }

      outlined consume of Result<_RegressorMetrics, Error>(*(a1 + v17[9]), *(a1 + v17[9] + 8), *(a1 + v17[9] + 16));
      result = outlined consume of Result<_RegressorMetrics, Error>(*(a1 + v17[10]), *(a1 + v17[10] + 8), *(a1 + v17[10] + 16));
      break;
    default:
      return result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return *a1;
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *initializeWithCopy for MLRegressor(void *a1, void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  v5 = a2[1];
  a1[1] = v5;
  v6 = a1 + 2;
  v7 = a2 + 2;
  v8 = a2[2];
  v5;
  v74 = EnumCaseMultiPayload;
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      if (v8)
      {
        a1[2] = v8;
        v9 = a2;
        a1[3] = a2[3];
        v10 = a2[4];
        a1[4] = v10;
        v8;
        v10;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v9 = a2;
      }

      v43 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v44 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v44 - 8) + 16))(a1 + v43, &v9[v43], v44);
      v19 = type metadata accessor for MLBoostedTreeRegressor(0);
      v45 = v19[5];
      v46 = *&v9[v45];
      *(a1 + v45) = v46;
      v47 = v19[6];
      *(a1 + v47) = *&v9[v47];
      v77 = *&v9[v47 + 8];
      *(a1 + v47 + 8) = v77;
      v48 = v19[7];
      v82 = *&v9[v48];
      *(a1 + v48) = v82;
      v49 = v19[8];
      v25 = a1 + v49;
      v26 = &v9[v49];
      v50 = *&v9[v49 + 24];
      v46;
      v77;
      v82;
      if (v50)
      {
        v51 = v50;
        v29 = a1;
        *(v25 + 3) = v51;
        (**(v51 - 8))(v25, v26);
      }

      else
      {
        v29 = a1;
        v62 = *v26;
        *(v25 + 1) = *(v26 + 1);
        *v25 = v62;
      }

      *(v25 + 2) = *(v26 + 2);
      *(v25 + 3) = *(v26 + 3);
      *(v25 + 4) = *(v26 + 4);
      *(v25 + 10) = *(v26 + 10);
      v25[88] = v26[88];
      goto LABEL_28;
    case 1u:
      if (v8)
      {
        a1[2] = v8;
        v15 = a2;
        a1[3] = a2[3];
        v16 = a2[4];
        a1[4] = v16;
        v8;
        v16;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v15 = a2;
      }

      v52 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v53 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v53 - 8) + 16))(a1 + v52, &v15[v52], v53);
      v19 = type metadata accessor for MLDecisionTreeRegressor(0);
      v54 = v19[5];
      v55 = *&v15[v54];
      *(a1 + v54) = v55;
      v56 = v19[6];
      *(a1 + v56) = *&v15[v56];
      v73 = *&v15[v56 + 8];
      *(a1 + v56 + 8) = v73;
      v57 = v19[7];
      v78 = *&v15[v57];
      *(a1 + v57) = v78;
      v58 = v19[8];
      v59 = a1 + v58;
      v83 = &v15[v58];
      v60 = *&v15[v58 + 24];
      v55;
      v73;
      v78;
      v29 = a1;
      if (v60)
      {
        *(v59 + 3) = v60;
        v61 = v83;
        (**(v60 - 8))(v59, v83, v60);
      }

      else
      {
        v61 = v83;
        v63 = *v83;
        *(v59 + 1) = *(v83 + 1);
        *v59 = v63;
      }

      *(v59 + 2) = *(v61 + 2);
      *(v59 + 3) = *(v61 + 3);
      break;
    case 2u:
      if (v8)
      {
        a1[2] = v8;
        v11 = a2;
        a1[3] = a2[3];
        v12 = a2[4];
        a1[4] = v12;
        v8;
        v12;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v11 = a2;
      }

      v17 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v18 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v18 - 8) + 16))(a1 + v17, &v11[v17], v18);
      v19 = type metadata accessor for MLRandomForestRegressor(0);
      v20 = v19[5];
      v21 = *&v11[v20];
      *(a1 + v20) = v21;
      v22 = v19[6];
      *(a1 + v22) = *&v11[v22];
      v75 = *&v11[v22 + 8];
      *(a1 + v22 + 8) = v75;
      v23 = v19[7];
      v80 = *&v11[v23];
      *(a1 + v23) = v80;
      v24 = v19[8];
      v25 = a1 + v24;
      v26 = &v11[v24];
      v27 = *&v11[v24 + 24];
      v21;
      v75;
      v80;
      if (v27)
      {
        v28 = v27;
        v29 = a1;
        *(v25 + 3) = v28;
        (**(v28 - 8))(v25, v26);
      }

      else
      {
        v29 = a1;
        v30 = *v26;
        *(v25 + 1) = *(v26 + 1);
        *v25 = v30;
      }

      *(v25 + 2) = *(v26 + 2);
      *(v25 + 3) = *(v26 + 3);
      *(v25 + 4) = *(v26 + 4);
      *(v25 + 5) = *(v26 + 5);
LABEL_28:
      *(v25 + 6) = *(v26 + 6);
      break;
    case 3u:
      if (v8)
      {
        a1[2] = v8;
        v13 = a2;
        a1[3] = a2[3];
        v14 = a2[4];
        a1[4] = v14;
        v8;
        v14;
      }

      else
      {
        a1[4] = a2[4];
        *v6 = *v7;
        v13 = a2;
      }

      v31 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v32 = type metadata accessor for BaseLinearRegressorModel(0);
      (*(*(v32 - 8) + 16))(a1 + v31, &v13[v31], v32);
      v19 = type metadata accessor for MLLinearRegressor(0);
      v33 = v19[5];
      v34 = *&v13[v33];
      *(a1 + v33) = v34;
      v35 = v19[6];
      *(a1 + v35) = *&v13[v35];
      v76 = *&v13[v35 + 8];
      *(a1 + v35 + 8) = v76;
      v36 = v19[7];
      v81 = *&v13[v36];
      *(a1 + v36) = v81;
      v37 = v19[8];
      v38 = a1 + v37;
      v39 = &v13[v37];
      v40 = *&v13[v37 + 24];
      v34;
      v76;
      v81;
      if (v40)
      {
        v41 = v40;
        v29 = a1;
        *(v38 + 3) = v41;
        (**(v41 - 8))(v38, v39);
      }

      else
      {
        v29 = a1;
        v42 = *v39;
        *(v38 + 1) = *(v39 + 1);
        *v38 = v42;
      }

      *(v38 + 2) = *(v39 + 2);
      *(v38 + 3) = *(v39 + 3);
      *(v38 + 8) = *(v39 + 8);
      v38[72] = v39[72];
      break;
  }

  v64 = v19[9];
  v65 = *(a2 + v64);
  v66 = *(a2 + v64 + 8);
  v79 = *(a2 + v64 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v65, v66, v79);
  *(v29 + v64) = v65;
  *(v29 + v64 + 8) = v66;
  *(v29 + v64 + 16) = v79;
  v67 = v19[10];
  v68 = *(a2 + v67);
  v69 = *(a2 + v67 + 8);
  v70 = *(a2 + v67 + 16);
  outlined copy of Result<_RegressorMetrics, Error>(v68, v69, v70);
  *(v29 + v67) = v68;
  *(v29 + v67 + 8) = v69;
  *(v29 + v67 + 16) = v70;
  swift_storeEnumTagMultiPayload(v29, a3, v74);
  return v29;
}

void *assignWithCopy for MLRegressor(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLRegressor);
    v67 = a3;
    LODWORD(a3) = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    v5 = a2[1];
    v3[1] = v5;
    v78 = v3 + 2;
    v6 = a2 + 2;
    v7 = a2[2];
    v5;
    v69 = a3;
    v68 = v3;
    switch(a3)
    {
      case 0:
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
          *v78 = *v6;
        }

        v37 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v38 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v38 - 8) + 16))(v3 + v37, a2 + v37, v38);
        v39 = type metadata accessor for MLBoostedTreeRegressor(0);
        v40 = v39[5];
        v41 = *(a2 + v40);
        *(v3 + v40) = v41;
        v42 = v39[6];
        *(v3 + v42) = *(a2 + v42);
        v76 = *(a2 + v42 + 8);
        *(v3 + v42 + 8) = v76;
        v43 = v39[7];
        v72 = *(a2 + v43);
        *(v3 + v43) = v72;
        v79 = v39;
        v44 = v39[8];
        v20 = v3 + v44;
        v21 = a2 + v44;
        v45 = *(a2 + v44 + 24);
        v41;
        v76;
        v72;
        v23 = a2;
        if (v45)
        {
          *(v20 + 3) = v45;
          (**(v45 - 8))(v20, v21, v45);
        }

        else
        {
          v57 = *v21;
          *(v20 + 1) = *(v21 + 1);
          *v20 = v57;
        }

        *(v20 + 4) = *(v21 + 4);
        *(v20 + 5) = *(v21 + 5);
        *(v20 + 6) = *(v21 + 6);
        *(v20 + 7) = *(v21 + 7);
        *(v20 + 8) = *(v21 + 8);
        *(v20 + 9) = *(v21 + 9);
        *(v20 + 10) = *(v21 + 10);
        v20[88] = v21[88];
        goto LABEL_29;
      case 1:
        if (v7)
        {
          v3[2] = v7;
          v3[3] = a2[3];
          v11 = a2[4];
          v3[4] = v11;
          v7;
          v11;
        }

        else
        {
          v3[4] = a2[4];
          *v78 = *v6;
        }

        v46 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v47 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v47 - 8) + 16))(v3 + v46, a2 + v46, v47);
        v48 = type metadata accessor for MLDecisionTreeRegressor(0);
        v49 = v48[5];
        v50 = *(a2 + v49);
        *(v3 + v49) = v50;
        v51 = v48[6];
        *(v3 + v51) = *(a2 + v51);
        v77 = *(a2 + v51 + 8);
        *(v3 + v51 + 8) = v77;
        v52 = v48[7];
        v73 = *(a2 + v52);
        *(v3 + v52) = v73;
        v79 = v48;
        v53 = v48[8];
        v54 = v3 + v53;
        v55 = a2 + v53;
        v56 = *(a2 + v53 + 24);
        v50;
        v77;
        v73;
        v23 = a2;
        if (v56)
        {
          *(v54 + 3) = v56;
          (**(v56 - 8))(v54, v55, v56);
        }

        else
        {
          v58 = *v55;
          *(v54 + 1) = *(v55 + 1);
          *v54 = v58;
        }

        *(v54 + 4) = *(v55 + 4);
        *(v54 + 5) = *(v55 + 5);
        *(v54 + 6) = *(v55 + 6);
        *(v54 + 7) = *(v55 + 7);
        break;
      case 2:
        if (v7)
        {
          v3[2] = v7;
          v3[3] = a2[3];
          v9 = a2[4];
          v3[4] = v9;
          v7;
          v9;
        }

        else
        {
          v3[4] = a2[4];
          *v78 = *v6;
        }

        v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v13 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v13 - 8) + 16))(v3 + v12, a2 + v12, v13);
        v14 = type metadata accessor for MLRandomForestRegressor(0);
        v15 = v14[5];
        v16 = *(a2 + v15);
        *(v3 + v15) = v16;
        v17 = v14[6];
        *(v3 + v17) = *(a2 + v17);
        v74 = *(a2 + v17 + 8);
        *(v3 + v17 + 8) = v74;
        v18 = v14[7];
        v70 = *(a2 + v18);
        *(v3 + v18) = v70;
        v79 = v14;
        v19 = v14[8];
        v20 = v3 + v19;
        v21 = a2 + v19;
        v22 = *(a2 + v19 + 24);
        v16;
        v74;
        v70;
        v23 = a2;
        if (v22)
        {
          *(v20 + 3) = v22;
          (**(v22 - 8))(v20, v21, v22);
        }

        else
        {
          v24 = *v21;
          *(v20 + 1) = *(v21 + 1);
          *v20 = v24;
        }

        *(v20 + 4) = *(v21 + 4);
        *(v20 + 5) = *(v21 + 5);
        *(v20 + 6) = *(v21 + 6);
        *(v20 + 7) = *(v21 + 7);
        *(v20 + 8) = *(v21 + 8);
        *(v20 + 9) = *(v21 + 9);
        *(v20 + 10) = *(v21 + 10);
        *(v20 + 11) = *(v21 + 11);
LABEL_29:
        *(v20 + 12) = *(v21 + 12);
        *(v20 + 13) = *(v21 + 13);
        break;
      case 3:
        if (v7)
        {
          v3[2] = v7;
          v3[3] = a2[3];
          v10 = a2[4];
          v3[4] = v10;
          v7;
          v10;
        }

        else
        {
          v3[4] = a2[4];
          *v78 = *v6;
        }

        v25 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
        v26 = type metadata accessor for BaseLinearRegressorModel(0);
        (*(*(v26 - 8) + 16))(v3 + v25, a2 + v25, v26);
        v27 = type metadata accessor for MLLinearRegressor(0);
        v28 = v27[5];
        v29 = *(a2 + v28);
        *(v3 + v28) = v29;
        v30 = v27[6];
        *(v3 + v30) = *(a2 + v30);
        v75 = *(a2 + v30 + 8);
        *(v3 + v30 + 8) = v75;
        v31 = v27[7];
        v71 = *(a2 + v31);
        *(v3 + v31) = v71;
        v79 = v27;
        v32 = v27[8];
        v33 = v3 + v32;
        v34 = a2 + v32;
        v35 = *(a2 + v32 + 24);
        v29;
        v75;
        v71;
        v23 = a2;
        if (v35)
        {
          *(v33 + 3) = v35;
          (**(v35 - 8))(v33, v34, v35);
        }

        else
        {
          v36 = *v34;
          *(v33 + 1) = *(v34 + 1);
          *v33 = v36;
        }

        *(v33 + 4) = *(v34 + 4);
        *(v33 + 5) = *(v34 + 5);
        *(v33 + 6) = *(v34 + 6);
        *(v33 + 7) = *(v34 + 7);
        *(v33 + 8) = *(v34 + 8);
        v33[72] = v34[72];
        break;
      case 4:
        JUMPOUT(0x403E4);
    }

    v59 = v79[9];
    v60 = *(v23 + v59);
    v61 = *(v23 + v59 + 8);
    v62 = *(v23 + v59 + 16);
    outlined copy of Result<_RegressorMetrics, Error>(v60, v61, v62);
    *(v68 + v59) = v60;
    *(v68 + v59 + 8) = v61;
    *(v68 + v59 + 16) = v62;
    v63 = v79[10];
    v64 = *(v23 + v63);
    v65 = *(v23 + v63 + 8);
    LOBYTE(v59) = *(v23 + v63 + 16);
    v3 = v68;
    outlined copy of Result<_RegressorMetrics, Error>(v64, v65, v59);
    *(v68 + v63) = v64;
    *(v68 + v63 + 8) = v65;
    *(v68 + v63 + 16) = v59;
    swift_storeEnumTagMultiPayload(v68, v67, v69);
  }

  return v3;
}

uint64_t initializeWithTake for MLRegressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  switch(EnumCaseMultiPayload)
  {
    case 0u:
      v4 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v5 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v5 - 8) + 32))(a1 + v4, a2 + v4, v5);
      v6 = type metadata accessor for MLBoostedTreeRegressor(0);
      goto LABEL_4;
    case 1u:
      v11 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v12 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
      v6 = type metadata accessor for MLDecisionTreeRegressor(0);
      *(a1 + v6[5]) = *(a2 + v6[5]);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      v13 = v6[8];
      v14 = *(a2 + v13);
      v15 = *(a2 + v13 + 16);
      v16 = *(a2 + v13 + 32);
      *(a1 + v13 + 48) = *(a2 + v13 + 48);
      *(a1 + v13 + 32) = v16;
      *(a1 + v13 + 16) = v15;
      *(a1 + v13) = v14;
      break;
    case 2u:
      v7 = *(type metadata accessor for TreeRegressorModel(0) + 24);
      v8 = type metadata accessor for BaseTreeRegressorModel(0);
      (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
      v6 = type metadata accessor for MLRandomForestRegressor(0);
LABEL_4:
      *(a1 + v6[5]) = *(a2 + v6[5]);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      qmemcpy((a1 + v6[8]), (a2 + v6[8]), 0x70uLL);
      break;
    case 3u:
      v9 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
      v10 = type metadata accessor for BaseLinearRegressorModel(0);
      (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
      v6 = type metadata accessor for MLLinearRegressor(0);
      *(a1 + v6[5]) = *(a2 + v6[5]);
      *(a1 + v6[6]) = *(a2 + v6[6]);
      *(a1 + v6[7]) = *(a2 + v6[7]);
      qmemcpy((a1 + v6[8]), (a2 + v6[8]), 0x49uLL);
      break;
  }

  v17 = v6[9];
  *(a1 + v17 + 16) = *(a2 + v17 + 16);
  *(a1 + v17) = *(a2 + v17);
  v18 = v6[10];
  *(a1 + v18) = *(a2 + v18);
  *(a1 + v18 + 16) = *(a2 + v18 + 16);
  swift_storeEnumTagMultiPayload(a1, a3, EnumCaseMultiPayload);
  return a1;
}

uint64_t assignWithTake for MLRegressor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLRegressor);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload(a2, a3);
    *a1 = *a2;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    v21 = EnumCaseMultiPayload;
    switch(EnumCaseMultiPayload)
    {
      case 0u:
        v5 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v6 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
        v7 = type metadata accessor for MLBoostedTreeRegressor(0);
        goto LABEL_5;
      case 1u:
        v12 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v13 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v13 - 8) + 32))(a1 + v12, a2 + v12, v13);
        v7 = type metadata accessor for MLDecisionTreeRegressor(0);
        *(a1 + v7[5]) = *(a2 + v7[5]);
        *(a1 + v7[6]) = *(a2 + v7[6]);
        *(a1 + v7[7]) = *(a2 + v7[7]);
        v14 = v7[8];
        v15 = *(a2 + v14);
        v16 = *(a2 + v14 + 16);
        v17 = *(a2 + v14 + 32);
        *(a1 + v14 + 48) = *(a2 + v14 + 48);
        *(a1 + v14 + 32) = v17;
        *(a1 + v14 + 16) = v16;
        *(a1 + v14) = v15;
        break;
      case 2u:
        v8 = *(type metadata accessor for TreeRegressorModel(0) + 24);
        v9 = type metadata accessor for BaseTreeRegressorModel(0);
        (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
        v7 = type metadata accessor for MLRandomForestRegressor(0);
LABEL_5:
        *(a1 + v7[5]) = *(a2 + v7[5]);
        *(a1 + v7[6]) = *(a2 + v7[6]);
        *(a1 + v7[7]) = *(a2 + v7[7]);
        qmemcpy((a1 + v7[8]), (a2 + v7[8]), 0x70uLL);
        break;
      case 3u:
        v10 = *(type metadata accessor for MLLinearRegressor.Model(0) + 24);
        v11 = type metadata accessor for BaseLinearRegressorModel(0);
        (*(*(v11 - 8) + 32))(a1 + v10, a2 + v10, v11);
        v7 = type metadata accessor for MLLinearRegressor(0);
        *(a1 + v7[5]) = *(a2 + v7[5]);
        *(a1 + v7[6]) = *(a2 + v7[6]);
        *(a1 + v7[7]) = *(a2 + v7[7]);
        qmemcpy((a1 + v7[8]), (a2 + v7[8]), 0x49uLL);
        break;
    }

    v18 = v7[9];
    *(a1 + v18 + 16) = *(a2 + v18 + 16);
    *(a1 + v18) = *(a2 + v18);
    v19 = v7[10];
    *(a1 + v19) = *(a2 + v19);
    *(a1 + v19 + 16) = *(a2 + v19 + 16);
    swift_storeEnumTagMultiPayload(a1, a3, v21);
  }

  return a1;
}

uint64_t type metadata completion function for MLRegressor(uint64_t a1)
{
  result = type metadata accessor for MLBoostedTreeRegressor(319);
  if (v2 <= 0x3F)
  {
    v8[0] = *(result - 8) + 64;
    result = type metadata accessor for MLDecisionTreeRegressor(319);
    if (v3 <= 0x3F)
    {
      v8[1] = *(result - 8) + 64;
      result = type metadata accessor for MLRandomForestRegressor(319);
      if (v4 <= 0x3F)
      {
        v8[2] = *(result - 8) + 64;
        result = type metadata accessor for MLLinearRegressor(319);
        if (v7 <= 0x3F)
        {
          v8[3] = *(result - 8) + 64;
          swift_initEnumMetadataMultiPayload(a1, 256, 4, v8, v5, v6);
          return 0;
        }
      }
    }
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, void *, uint64_t, uint64_t *, uint64_t *, uint64_t))
{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 40 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 40;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v15 + 4, v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 56 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 56;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 56);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v15 + 4, v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 32 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 32;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 32);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v15 + 4, v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

{
  v19 = v7;
  v8 = a4;
  v9 = a2;
  if (a3)
  {
    v10 = *(a4 + 24);
    a4 = v10 >> 1;
    if ((v10 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 > a2)
      {
        v9 = v11;
      }
    }
  }

  v12 = *(v8 + 16);
  if (v9 <= v12)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v13 = a6;
    v14 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v15 = swift_allocObject(v14, 8 * v9 + 32, 7);
    v16 = _swift_stdlib_malloc_size(v15);
    a6 = v13;
    a4 = 8;
    v15[2] = v12;
    v15[3] = 2 * ((v16 - 32) / 8);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  if (a1)
  {
    a7(v8 + 32, v12, v15 + 4, a4, a5, a6, v19);
    *(v8 + 16) = 0;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledName(a6);
    swift_arrayInitWithCopy(v15 + 4, v8 + 32, v12, v17);
  }

  v8;
  return v15;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, int64_t, char *))
{
  v9 = a2;
  v10 = a1;
  if (a3)
  {
    v11 = *(a4 + 24);
    if ((v11 >> 1) >= a2)
    {
      v9 = *(a4 + 24) >> 1;
    }

    else
    {
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        BUG();
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 > a2)
      {
        v9 = v12;
      }
    }
  }

  v13 = *(a4 + 16);
  if (v9 <= v13)
  {
    v9 = *(a4 + 16);
  }

  if (v9)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v28 = a6;
    v14 = *(__swift_instantiateConcreteTypeFromMangledName(a6) - 8);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    v17 = (v16 + 32) & ~v16;
    v18 = swift_allocObject(v27, v17 + v15 * v9, v16 | 7);
    v19 = _swift_stdlib_malloc_size(v18);
    if (!v15)
    {
      BUG();
    }

    v20 = v19 - v17;
    if (__OFSUB__(-v20, 1) && v15 == -1)
    {
      BUG();
    }

    v18[2] = v13;
    v18[3] = 2 * (v20 / v15);
    v10 = a1;
    a6 = v28;
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledName(a6);
  v22 = *(*(v21 - 8) + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = v18 + v23;
  v25 = a4 + v23;
  if (v10)
  {
    a7(v25, v13, v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v24, v25, v13, v21);
  }

  a4;
  return v18;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), void (*a7)(uint64_t, int64_t, char *))
{
  v8 = a4;
  v9 = a2;
  v10 = a1;
  if (a3)
  {
    v11 = *(a4 + 24);
    a4 = v11 >> 1;
    if ((v11 >> 1) >= a2)
    {
      v9 = *(v8 + 24) >> 1;
    }

    else
    {
      a3 = 0x4000000000000000;
      a4 += 0x4000000000000000;
      if (a4 < 0)
      {
        BUG();
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 > a2)
      {
        v9 = v12;
      }
    }
  }

  v13 = *(v8 + 16);
  if (v9 <= v13)
  {
    v9 = *(v8 + 16);
  }

  if (v9)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledName(a5);
    v29 = a6;
    v14 = *(a6(0) - 8);
    v15 = *(v14 + 72);
    v16 = *(v14 + 80);
    v17 = (v16 + 32) & ~v16;
    v18 = v17 + v15 * v9;
    v19 = swift_allocObject(v28, v18, v16 | 7);
    v20 = _swift_stdlib_malloc_size(v19);
    if (!v15)
    {
      BUG();
    }

    v21 = v20 - v17;
    if (__OFSUB__(-v21, 1) && v15 == -1)
    {
      BUG();
    }

    v19[2] = v13;
    v19[3] = 2 * (v21 / v15);
    v10 = a1;
    v22 = v29(0, v18, v21 % v15, -v21);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v22 = (a6)(0, a2, a3, a4);
  }

  v23 = *(*(v22 - 8) + 80);
  v24 = (v23 + 32) & ~v23;
  v25 = v19 + v24;
  v26 = v8 + v24;
  if (v10)
  {
    a7(v26, v13, v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy(v25, v26, v13, v22);
  }

  v8;
  return v19;
}

uint64_t NSFileManager.temporaryModelDirectory.getter()
{
  v11[1] = v0;
  v1 = type metadata accessor for URL(0);
  v12 = *(v1 - 8);
  v2 = *(v12 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  v5 = NSTemporaryDirectory();
  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(v6);
  v9 = v8;

  URL.init(fileURLWithPath:)(v7, v9);
  v9, v9;
  URL.appendingPathComponent(_:)(0x4C4D657461657243, 0xEE00736C65646F4DLL);
  return (*(v12 + 8))(v11, v1);
}

Swift::Void __swiftcall __spoils<cf,zf,sf,of,pf,rax,rdx,rcx,rdi,rsi,r8,r9,r10,r11,r12,xmm0,xmm1,xmm2,xmm3,xmm4,xmm5,xmm6,xmm7> NSFileManager.createTemporaryModelDirectory()()
{
  v18 = v0;
  v20 = type metadata accessor for URL(0);
  v21 = *(v20 - 8);
  v2 = *(v21 + 64);
  v3 = alloca(v2);
  v4 = alloca(v2);
  NSFileManager.temporaryModelDirectory.getter();
  URL.path.getter(0);
  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v6;
  v19 = v1;
  LOBYTE(v6) = [v1 fileExistsAtPath:v7];

  if (v6)
  {
    (*(v21 + 8))(&v18, v20);
  }

  else
  {
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    v11 = type metadata accessor for NSFileAttributeKey(0);
    v12 = lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
    v13 = Dictionary.init(dictionaryLiteral:)(_swiftEmptyArrayStorage, v11, &type metadata for Any + 8, v12);
    v22 = 0;
    v14 = outlined bridged method (mnnbnnn) of @objc NSFileManager.createDirectory(at:withIntermediateDirectories:attributes:)(v10, 1, v13, &v22, v19);

    v15 = v22;
    if (v14)
    {
      v16 = *(v21 + 8);
      v22;
      v16(&v18, v20);
    }

    else
    {
      v17 = v22;
      _convertNSErrorToError(_:)(v15);

      swift_willThrow(v17, 1);
      (*(v21 + 8))(&v18, v20);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey()
{
  result = lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (!lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey)
  {
    v1 = type metadata accessor for NSFileAttributeKey(255);
    result = swift_getWitnessTable(&protocol conformance descriptor for NSFileAttributeKey, v1);
    lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey = result;
  }

  return result;
}

uint64_t outlined bridged method (mnnbnnn) of @objc NSFileManager.createDirectory(at:withIntermediateDirectories:attributes:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for NSFileAttributeKey(0);
  lazy protocol witness table accessor for type NSFileAttributeKey and conformance NSFileAttributeKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  a3;
  LODWORD(a5) = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 attributes:isa error:a4];

  return a5;
}

uint64_t static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(uint64_t a1, uint64_t a2, __m128 a3)
{
  v10 = a2;
  v11 = *a3.i64;
  v12 = v3;
  v5 = *(*(type metadata accessor for MLHandActionClassifier.DataSource(0) - 8) + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  outlined init with copy of MLTrainingSessionParameters(a1, &v9, type metadata accessor for MLHandActionClassifier.DataSource);
  result = MLHandActionClassifier.FeatureExtractor.__allocating_init(source:)(&v9, a3);
  if (!v4)
  {
    MLHandActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:startingSessionId:)(v10, v11);
  }

  return result;
}

uint64_t MLHandActionClassifier.FeatureExtractor.__allocating_init(source:)(uint64_t a1, __m128 a2)
{
  MLHandActionClassifier.DataSource.videosWithAnnotations()(a2);
  result = outlined destroy of MLActivityClassifier.ModelParameters(a1, type metadata accessor for MLHandActionClassifier.DataSource);
  if (!v2)
  {
    result = swift_allocObject(v3, 64, 7);
    *(result + 32) = _swiftEmptyArrayStorage;
    *(result + 40) = _swiftEmptyArrayStorage;
    *(result + 48) = _swiftEmptyArrayStorage;
    *(result + 56) = _swiftEmptyArrayStorage;
    *(result + 16) = v5;
    *(result + 24) = v6;
  }

  return result;
}

uint64_t MLHandActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:startingSessionId:)(uint64_t a1, double a2)
{
  seconds[0] = v3;
  v275 = a1;
  v274 = a2;
  v278 = v2;
  v299 = type metadata accessor for URL(0);
  v298 = *(v299 - 8);
  v5 = *(v298 + 64);
  v6 = alloca(v5);
  v7 = alloca(v5);
  v303 = v272;
  v323 = type metadata accessor for Date(0);
  v327 = *(v323 - 1);
  v8 = *(v327 + 64);
  v9 = alloca(v8);
  v10 = alloca(v8);
  *v326 = v272;
  currentFileIndex = type metadata accessor for _TablePrinter(0);
  v11 = *(*(currentFileIndex - 8) + 64);
  v12 = alloca(v11);
  v13 = alloca(v11);
  v289 = v272;
  v14 = alloca(v11);
  v15 = alloca(v11);
  v310 = v272;
  v330 = type metadata accessor for Logger(0);
  v328 = *(v330 - 8);
  v16 = *(v328 + 8);
  v17 = alloca(v16);
  v18 = alloca(v16);
  v279 = v272;
  v19 = alloca(v16);
  v20 = alloca(v16);
  v300 = v272;
  v21 = alloca(v16);
  v22 = alloca(v16);
  v290 = v272;
  v23 = alloca(v16);
  v24 = alloca(v16);
  v284 = v272;
  v25 = alloca(v16);
  v26 = alloca(v16);
  v311 = v272;
  v27 = alloca(v16);
  v28 = alloca(v16);
  v286 = v272;
  v29 = alloca(v16);
  v30 = alloca(v16);
  v285 = v272;
  v31 = alloca(v16);
  v32 = alloca(v16);
  v312 = v272;
  v33 = *(v4 + 16);
  v287 = v4;
  v34 = *(v4 + 24);
  v293 = v33;
  LOBYTE(v294) = v34;
  outlined copy of Result<_DataTable, Error>(v33, v34);
  outlined copy of Result<_DataTable, Error>(v33, v34);
  v35 = MLDataTable.size.getter();
  outlined consume of Result<_DataTable, Error>(v293, v294);
  v322 = specialized RandomAccessCollection<>.distance(from:to:)(0, v35, v33, v34);
  outlined consume of Result<_DataTable, Error>(v33, v34);
  if (one-time initialization token for logger != -1)
  {
    swift_once(&one-time initialization token for logger, one-time initialization function for logger);
  }

  v36 = v330;
  v37 = __swift_project_value_buffer(v330, static MLHandActionClassifier.logger);
  v38 = v328;
  v39 = *(v328 + 2);
  v40 = v312;
  v304 = v37;
  v305 = v39;
  v39(v312, v37, v36);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v40;
    v44 = swift_slowAlloc(12, -1);
    *v44 = 134217984;
    *(v44 + 4) = v322;
    _os_log_impl(&dword_0, v41, v42, "Processing %ld annotated video clips", v44, 0xCu);
    v45 = v44;
    v40 = v43;
    v38 = v328;
    v45, -1, -1;
  }

  v46 = v40;
  v313 = *(v38 + 1);
  v313(v40, v330);
  v328 = "ml.handActionClassifier" + 0x8000000000000000;
  v47 = v310;
  v48 = &v310[*(currentFileIndex + 20)];
  Date.init()(v46);
  *v47 = v322;
  type metadata accessor for OS_os_log();
  v49 = OS_os_log.init(subsystem:category:)(0xD000000000000027, "le" + 0x8000000000000000, 0x72705F656C626174, 0xED00007265746E69);
  v50 = currentFileIndex;
  v51 = *(currentFileIndex + 24);
  v277 = v49;
  *(v47 + v51) = v49;
  v52 = *(v50 + 28);
  *(v47 + v52) = 0xD000000000000015;
  *(v47 + v52 + 8) = v328;
  v53 = *v326;
  Date.init()(0xD000000000000027);
  v276 = v48;
  (*(v327 + 40))(v48, v53, v323);
  _TablePrinter.beginTable()();
  _TablePrinter.printRow(currentFileIndex:)(0);
  v54 = *(v287 + 24);
  v293 = *(v287 + 16);
  LOBYTE(v294) = v54;
  v281 = (v287 + 32);
  v282 = (v287 + 48);
  v283 = (v287 + 40);
  v280 = (v287 + 56);
  value_low = 0.0;
  v295 = 0;
  outlined copy of Result<_DataTable, Error>(v293, v54);
  value = kCMTimeZero.value;
  timescale = kCMTimeZero.timescale;
  flags = kCMTimeZero.flags;
  epoch = kCMTimeZero.epoch;
  v308 = kCMTimeIndefinite.value;
  v316 = kCMTimeIndefinite.timescale;
  v317 = kCMTimeIndefinite.flags;
  v309 = kCMTimeIndefinite.epoch;
  while (1)
  {
    specialized EnumeratedSequence.Iterator.next()();
    if (!*&v320.timescale)
    {
      outlined consume of Result<_DataTable, Error>(v293, v294);
      static os_log_type_t.info.getter();
      v237 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
      v238 = swift_allocObject(v237, 72, 7);
      v238[2] = 1;
      v238[3] = 2;
      v238[7] = &type metadata for Int;
      v238[8] = &protocol witness table for Int;
      v238[4] = 3;
      os_log(_:dso:log:type:_:)("event: %lu", 10);
      v238;
      v239 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, MLUntypedColumn)>);
      inited = swift_initStackObject(v239, v272);
      *(inited + 16) = 4;
      *(inited + 24) = 8;
      *(inited + 32) = 0x6C6562616CLL;
      *(inited + 40) = 0xE500000000000000;
      v293 = *v283;
      v241 = alloca(24);
      v242 = alloca(32);
      v273 = &v293;
      v293;
      *(inited + 48) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 56) = v243 & 1;
      v293;
      *(inited + 64) = 0x5F6E6F6973736573;
      *(inited + 72) = 0xEA00000000006469;
      v293 = *v282;
      v244 = alloca(24);
      v245 = alloca(32);
      v273 = &v293;
      v293;
      *(inited + 80) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 88) = v246 & 1;
      v293;
      *(inited + 96) = 0x746E696F7079656BLL;
      *(inited + 104) = 0xE900000000000073;
      v293 = *v281;
      v247 = alloca(24);
      v248 = alloca(32);
      v273 = &v293;
      v293;
      *(inited + 112) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(partial apply for specialized closure #1 in MLUntypedColumn.init<A>(_:));
      *(inited + 120) = v249 & 1;
      v293;
      *(inited + 128) = 0x7461506F65646976;
      *(inited + 136) = 0xE900000000000068;
      v293 = *v280;
      v250 = alloca(24);
      v251 = alloca(24);
      v273 = &v293;
      v293;
      *(inited + 144) = _ss6ResultOsRi_zrlE8catchingAByxq_Gxyq_YKXE_tcfC8CreateML14_UntypedColumnC_s5Error_pTt1g5(closure #1 in MLUntypedColumn.init<A>(_:)specialized partial apply);
      *(inited + 152) = v252 & 1;
      v293;
      v253 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, &type metadata for MLUntypedColumn, &protocol witness table for String);
      v254 = seconds[0];
      _s8CreateML11MLDataTableV20uniqueKeysWithValuesACx_tKcSTRzSS3key_AA15MLUntypedColumnV5valuet7ElementRtzlufCSDySSAGG_Tt1g5(v253);
      if (v254 == 0.0)
      {
        v255 = v294;
        v256 = v278;
        *v278 = v293;
        *(v256 + 8) = v255;
      }

      return outlined destroy of MLActivityClassifier.ModelParameters(v310, type metadata accessor for _TablePrinter);
    }

    currentFileIndex = v320.value;
    v56 = v320.epoch;
    v57 = v321;
    v58 = *(v320.epoch + 16) == 0;
    v322 = v320.epoch;
    v328 = *&v320.timescale;
    if (v58)
    {
      goto LABEL_117;
    }

    v56;

    v59 = specialized __RawDictionaryStorage.find<A>(_:)(0x7461506F65646976, 0xE900000000000068);
    if ((v60 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v56, v57);
      goto LABEL_117;
    }

    v61 = *(*(v56 + 56) + 8 * v59);

    v62 = seconds[0];
    v63 = CMLSequence.value(at:)(v61);
    if (v62 != 0.0)
    {
      v271 = v62;
      goto LABEL_131;
    }

    MLDataValue.init(_:)(v63, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v56, v57);
    v64 = v320.value;
    v65 = *&v320.timescale;
    if (LOBYTE(v320.epoch) != 2)
    {
      v257 = v320.epoch;
      goto LABEL_115;
    }

    if (!*(v56 + 16))
    {
      v257 = 2;
      goto LABEL_115;
    }

    *v326 = v320.value;
    v323 = *&v320.timescale;

    v56;

    v66 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C6562616CLL, 0xE500000000000000);
    if ((v67 & 1) == 0)
    {
      break;
    }

    v68 = *(*(v56 + 56) + 8 * v66);

    v69 = CMLSequence.value(at:)(v68);
    MLDataValue.init(_:)(v69, value_low);

    v327 = v57;
    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v56, v57);
    if (LOBYTE(v320.epoch) != 2)
    {
      outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
      outlined consume of MLDataValue(*v326, v323, 2);
      v57 = v327;
      goto LABEL_117;
    }

    seconds[0] = 0.0;
    v297 = v320.value;
    v296 = *&v320.timescale;
    v70 = objc_opt_self(NSFileManager);
    v71 = [v70 defaultManager];
    v72 = v71;
    v73 = *v326;
    v74 = String._bridgeToObjectiveC()();
    v75 = [v72 fileExistsAtPath:v74];

    if (!v75)
    {
      outlined consume of MLDataValue(v297, v296, 2);
      v320.value = 0;
      *&v320.timescale = 0xE000000000000000;
      _StringGuts.grow(_:)(26);
      *&v320.timescale;
      v320.value = 0xD000000000000018;
      *&v320.timescale = "h or label string at row " + 0x8000000000000000;
      v268._countAndFlagsBits = v73;
      v269 = v323;
      v268._object = v323;
      String.append(_:)(v268);
      outlined consume of MLDataValue(v73, v269, 2);
      *seconds = *&v320.value;
      v268._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
      swift_allocError(&type metadata for MLCreateError, v268._object, 0, 0);
      *v270 = *seconds;
      *(v270 + 16) = 0;
      *(v270 + 32) = 0;
      *(v270 + 48) = 0;
      swift_willThrow(&type metadata for MLCreateError, v268._object);
      v263 = currentFileIndex;
      v264 = v328;
      v265 = v322;
      v266 = v327;
      goto LABEL_118;
    }

    URL.init(fileURLWithPath:)(v73, v323);
    v288 = URL.lastPathComponent.getter();
    v312 = v76;
    v77 = *(v287 + 16);
    if (*(v287 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v287 + 16), 1);
      v78 = tc_v1_flex_list_create(0);
      v79 = seconds[0];
      if (!v78)
      {
        BUG();
      }

      v80 = v78;
      v81 = type metadata accessor for CMLSequence();
      v82 = swift_allocObject(v81, 25, 7);
      *(v82 + 16) = v80;
      *(v82 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v77, 1);
    }

    else
    {
      v83 = *(v287 + 16);
      outlined copy of Result<_DataTable, Error>(v83, 0);
      _DataTable.columnNames.getter(v83);
      outlined consume of Result<_DataTable, Error>(v77, 0);
      v82 = v292;
      v79 = seconds[0];
    }

    v320.value = 0x7472617473;
    *&v320.timescale = 0xE500000000000000;
    v84 = alloca(24);
    v85 = alloca(32);
    v273 = &v320;
    v86 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v272, v82);
    seconds[0] = v79;

    if ((v86 & 1) == 0)
    {
      goto LABEL_51;
    }

    v87 = v322;
    v88 = v327;
    v89 = v328;
    if (!*(v322 + 16))
    {
      goto LABEL_45;
    }

    v87;

    v90 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if (v91)
    {
      v92 = *(*(v87 + 56) + 8 * v90);

      v93 = seconds[0];
      v94 = CMLSequence.value(at:)(v92);
      v95 = v87;
      v96 = v93;
      if (v93 != 0.0)
      {
        goto LABEL_128;
      }

      MLDataValue.init(_:)(v94, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v95, v88);
      v97 = v320.value;
      v98 = v330;
      seconds[0] = 0.0;
      if (LOBYTE(v320.epoch) == 1)
      {
        value_low = *&v320.value;
        if (*&v320.value >= 0.0)
        {
          goto LABEL_43;
        }

        v99 = v285;
        v305(v285, v304, v330);
        v100 = v323;
        outlined copy of MLDataValue(*v326, v323, 2u);
        v100;
        *&v101 = COERCE_DOUBLE(Logger.logObject.getter());
        v102 = static os_log_type_t.info.getter();
        log = v101;
        *type = v102;
        if (!os_log_type_enabled(v101, v102))
        {
          goto LABEL_102;
        }

        v103 = swift_slowAlloc(22, -1);
        v325 = swift_slowAlloc(32, -1);
        v320.value = v325;
        *v103 = 134218242;
        *(v103 + 4) = v97;
        *(v103 + 12) = 2080;
        v100;
        v104 = *v326;
        *(v103 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v326, v100, &v320.value);
        outlined consume of MLDataValue(v104, v100, 2);
        outlined consume of MLDataValue(v104, v100, 2);
        v100;
        v105 = log;
        _os_log_impl(&dword_0, log, type[0], "Start time %f specified in video file %s is negative, using 0.0 automatically.", v103, 0x16u);
        v106 = v325;
        __swift_destroy_boxed_opaque_existential_1Tm(v325);
        v106, -1, -1;
        v103, -1, -1;

        v107 = v285;
        goto LABEL_50;
      }

      outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
      v108 = v311;
      v87 = v322;
    }

    else
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v89, v87, v88);
      v98 = v330;
      v108 = v311;
    }

    if (!*(v87 + 16))
    {
      goto LABEL_46;
    }

    v109 = v328;

    v87;
    v110 = v327;

    v111 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
    if ((v112 & 1) == 0)
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v109, v87, v110);
      v98 = v330;
      v108 = v311;
LABEL_35:
      if (*(v87 + 16))
      {
        v118 = v328;

        v87;
        v119 = v87;
        v120 = v327;

        v121 = specialized __RawDictionaryStorage.find<A>(_:)(0x7472617473, 0xE500000000000000);
        if (v122)
        {
          v123 = *(*(v119 + 56) + 8 * v121);

          v124 = seconds[0];
          v125 = CMLSequence.value(at:)(v123);
          v126 = v124;
          if (v124 != 0.0)
          {
            goto LABEL_130;
          }

          MLDataValue.init(_:)(v125, value_low);

          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v119, v120);
          v127 = v320.value;
          v128 = *&v320.timescale;
          if (LOBYTE(v320.epoch) == 2)
          {
            static _VideoUtilities.getSecondsFromTimeString(_:)(*&v320.value);
            seconds[0] = 0.0;
            *&log = value_low;
            outlined consume of MLDataValue(v127, v128, 2);
            value_low = *&log;
LABEL_43:
            CMTimeMakeWithSeconds(&v320, value_low, 1000);
            log = v320.value;
            LODWORD(v325) = v320.timescale;
            *type = v320.flags;
            v129 = v320.epoch;
            goto LABEL_52;
          }

          seconds[0] = 0.0;
          outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
        }

        else
        {
          outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v118, v119, v120);
        }

LABEL_45:
        v98 = v330;
        v108 = v311;
      }

LABEL_46:
      v305(v108, v304, v98);
      v130 = v312;
      swift_bridgeObjectRetain_n(v312, 2);
      v131 = Logger.logObject.getter();
      v132 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v131, v132))
      {
        v133 = swift_slowAlloc(12, -1);
        *&log = COERCE_DOUBLE(swift_slowAlloc(32, -1));
        v320.value = log;
        *v133 = 136315138;
        v130;
        *(v133 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v288, v130, &v320.value);
        swift_bridgeObjectRelease_n(v130, 3);
        _os_log_impl(&dword_0, v131, v132, "Unsupported start time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping start time for file %s", v133, 0xCu);
        v134 = log;
        __swift_destroy_boxed_opaque_existential_1Tm(log);
        v134, -1, -1;
        v133, -1, -1;
      }

      else
      {

        swift_bridgeObjectRelease_n(v130, 2);
      }

      v107 = v311;
      goto LABEL_50;
    }

    v113 = *(*(v87 + 56) + 8 * v111);

    v114 = seconds[0];
    v115 = CMLSequence.value(at:)(v113);
    v116 = v87;
    v96 = v114;
    if (v114 != 0.0)
    {
LABEL_128:
      v271 = v96;
      goto LABEL_131;
    }

    MLDataValue.init(_:)(v115, value_low);

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v116, v110);
    v117 = v320.value;
    v98 = v330;
    v108 = v311;
    seconds[0] = 0.0;
    if (LOBYTE(v320.epoch))
    {
      outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
      v87 = v322;
      goto LABEL_35;
    }

    if (v320.value >= 0)
    {
      value_low = SLODWORD(v320.value);
      goto LABEL_43;
    }

    v99 = v286;
    v305(v286, v304, v330);
    v100 = v323;
    outlined copy of MLDataValue(*v326, v323, 2u);
    v100;
    *&v220 = COERCE_DOUBLE(Logger.logObject.getter());
    v221 = static os_log_type_t.info.getter();
    log = v220;
    *type = v221;
    if (!os_log_type_enabled(v220, v221))
    {
LABEL_102:
      v226 = *v326;
      outlined consume of MLDataValue(*v326, v100, 2);
      outlined consume of MLDataValue(v226, v100, 2);

      v107 = v99;
      goto LABEL_50;
    }

    v222 = swift_slowAlloc(22, -1);
    v325 = swift_slowAlloc(32, -1);
    v320.value = v325;
    *v222 = 134218242;
    *(v222 + 4) = v117;
    *(v222 + 12) = 2080;
    v100;
    v223 = *v326;
    *(v222 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v326, v100, &v320.value);
    outlined consume of MLDataValue(v223, v100, 2);
    outlined consume of MLDataValue(v223, v100, 2);
    v100;
    v224 = log;
    _os_log_impl(&dword_0, log, type[0], "Start time %ld specified in video file %s is negative, using 0.0 automatically.", v222, 0x16u);
    v225 = v325;
    __swift_destroy_boxed_opaque_existential_1Tm(v325);
    v225, -1, -1;
    v222, -1, -1;

    v107 = v286;
LABEL_50:
    v313(v107, v330);
LABEL_51:
    log = value;
    LODWORD(v325) = timescale;
    *type = flags;
    v129 = epoch;
LABEL_52:
    v318 = v129;
    v135 = *(v287 + 16);
    if (*(v287 + 24))
    {
      outlined copy of Result<_DataTable, Error>(*(v287 + 16), 1);
      v136 = tc_v1_flex_list_create(0);
      if (!v136)
      {
        BUG();
      }

      v137 = v136;
      v138 = type metadata accessor for CMLSequence();
      v139 = swift_allocObject(v138, 25, 7);
      *(v139 + 16) = v137;
      *(v139 + 24) = 1;
      outlined consume of Result<_DataTable, Error>(v135, 1);
    }

    else
    {
      v140 = *(v287 + 16);
      outlined copy of Result<_DataTable, Error>(v140, 0);
      _DataTable.columnNames.getter(v140);
      outlined consume of Result<_DataTable, Error>(v135, 0);
      v139 = v292;
    }

    v320.value = 6581861;
    *&v320.timescale = 0xE300000000000000;
    v141 = alloca(24);
    v142 = alloca(32);
    v273 = &v320;
    v143 = seconds[0];
    v144 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v272, v139);
    v145 = v143;

    if ((v144 & 1) == 0)
    {
      outlined consume of MLDataValue(*v326, v323, 2);
      v164 = v308;
      v165 = v316;
      v166 = v317;
      v167 = v309;
LABEL_65:
      v168 = v327;
LABEL_86:
      v146 = v322;
LABEL_87:
      v196 = log;
      v197 = *type;
      v198 = v325;
      v199 = v318;
      goto LABEL_88;
    }

    v146 = v322;
    if (!*(v322 + 16))
    {
      goto LABEL_73;
    }

    seconds[0] = v143;
    v147 = v328;

    v146;
    v148 = v327;

    v149 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
    if (v150)
    {
      v151 = *(*(v146 + 56) + 8 * v149);

      v152 = seconds[0];
      v153 = CMLSequence.value(at:)(v151);
      v145 = v152;
      if (v152 != 0.0)
      {
        goto LABEL_129;
      }

      MLDataValue.init(_:)(v153, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v146, v148);
      v154 = v320.value;
      v155 = v284;
      if (LOBYTE(v320.epoch) == 1)
      {
        if (*&v320.value >= 0.0)
        {
          v186 = *v326;
          v187 = v323;
          seconds[0] = *&v320.value;
LABEL_95:
          outlined consume of MLDataValue(v186, v187, 2);
          CMTimeMakeWithSeconds(&v320, seconds[0], 1000);
          v164 = v320.value;
          v165 = v320.timescale;
          v166 = v320.flags;
          v167 = v320.epoch;
        }

        else
        {
          seconds[0] = 0.0;
          v305(v284, v304, v330);
          v156 = v323;
          v323;
          v157 = Logger.logObject.getter();
          v158 = static os_log_type_t.info.getter();
          v301 = v157;
          *v302 = v158;
          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc(22, -1);
            v291 = swift_slowAlloc(32, -1);
            v320.value = v291;
            *v159 = 134218242;
            *(v159 + 4) = v154;
            *(v159 + 12) = 2080;
            v156;
            v160 = *v326;
            *(v159 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v326, v156, &v320.value);
            outlined consume of MLDataValue(v160, v156, 2);
            outlined consume of MLDataValue(v160, v156, 2);
            v156;
            v161 = v301;
            _os_log_impl(&dword_0, v301, v302[0], "End time %f specified in video file %s is negative, using end of file automatically.", v159, 0x16u);
            v162 = v291;
            __swift_destroy_boxed_opaque_existential_1Tm(v291);
            v162, -1, -1;
            v159, -1, -1;

            v163 = v284;
          }

          else
          {
            v219 = *v326;
            outlined consume of MLDataValue(*v326, v156, 2);
            outlined consume of MLDataValue(v219, v156, 2);

            v163 = v155;
          }

          v313(v163, v330);
          v164 = v308;
          v165 = v316;
          v166 = v317;
          v167 = v309;
          v145 = seconds[0];
        }

        goto LABEL_65;
      }

      outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
      v146 = v322;
    }

    else
    {
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v147, v146, v148);
      v145 = seconds[0];
    }

    if (!*(v146 + 16))
    {
      goto LABEL_73;
    }

    seconds[0] = v145;
    v169 = v328;

    v146;
    v170 = v327;

    v171 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
    if (v172)
    {
      v173 = *(*(v146 + 56) + 8 * v171);

      v174 = seconds[0];
      v175 = CMLSequence.value(at:)(v173);
      v145 = v174;
      if (v174 != 0.0)
      {
LABEL_129:
        v271 = v145;
        goto LABEL_131;
      }

      MLDataValue.init(_:)(v175, value_low);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v146, v170);
      v176 = v320.value;
      if (!LOBYTE(v320.epoch))
      {
        if (v320.value < 0)
        {
          seconds[0] = 0.0;
          v305(v290, v304, v330);
          v227 = v323;
          v323;
          v228 = Logger.logObject.getter();
          v229 = static os_log_type_t.info.getter();
          v301 = v228;
          *v302 = v229;
          if (os_log_type_enabled(v228, v229))
          {
            v230 = swift_slowAlloc(22, -1);
            v291 = swift_slowAlloc(32, -1);
            v320.value = v291;
            *v230 = 134218242;
            *(v230 + 4) = v176;
            *(v230 + 12) = 2080;
            v227;
            v231 = *v326;
            *(v230 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v326, v227, &v320.value);
            outlined consume of MLDataValue(v231, v227, 2);
            outlined consume of MLDataValue(v231, v227, 2);
            v227;
            v232 = v301;
            _os_log_impl(&dword_0, v301, v302[0], "End time %ld specified in video file %s is negative, using end of file automatically.", v230, 0x16u);
            v233 = v291;
            __swift_destroy_boxed_opaque_existential_1Tm(v291);
            v233, -1, -1;
            v234 = v230;
            v146 = v322;
            v234, -1, -1;
            v235 = v232;
          }

          else
          {
            v236 = *v326;
            outlined consume of MLDataValue(*v326, v227, 2);
            outlined consume of MLDataValue(v236, v227, 2);
            v235 = v301;
          }

          v313(v290, v330);
          v164 = v308;
          v165 = v316;
          v166 = v317;
          v167 = v309;
          v145 = seconds[0];
        }

        else
        {
          outlined consume of MLDataValue(*v326, v323, 2);
          CMTimeMakeWithSeconds(&v320, v176, 1000);
          v164 = v320.value;
          v165 = v320.timescale;
          v166 = v320.flags;
          v167 = v320.epoch;
        }

        v168 = v327;
        goto LABEL_87;
      }

      outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
LABEL_73:
      v170 = v327;
      goto LABEL_74;
    }

    outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v169, v146, v170);
    v145 = seconds[0];
LABEL_74:
    seconds[0] = v145;
    outlined consume of MLDataValue(*v326, v323, 2);
    if (*(v146 + 16))
    {
      v177 = v328;

      v146;

      v178 = specialized __RawDictionaryStorage.find<A>(_:)(6581861, 0xE300000000000000);
      if (v179)
      {
        v180 = *(*(v146 + 56) + 8 * v178);

        v181 = seconds[0];
        v182 = CMLSequence.value(at:)(v180);
        v183 = v170;
        v126 = v181;
        if (v181 != 0.0)
        {
LABEL_130:
          v271 = v126;
LABEL_131:
          swift_unexpectedError(*&v271, "CreateML/MLDataTable.Row.swift", 30, 1, 85);
          BUG();
        }

        MLDataValue.init(_:)(v182, value_low);

        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v146, v183);
        v184 = v320.value;
        v185 = *&v320.timescale;
        if (LOBYTE(v320.epoch) == 2)
        {
          static _VideoUtilities.getSecondsFromTimeString(_:)(*&v320.value);
          v145 = 0.0;
          v186 = v184;
          v187 = v185;
          seconds[0] = value_low;
          goto LABEL_95;
        }

        seconds[0] = 0.0;
        outlined consume of MLDataValue(v320.value, *&v320.timescale, v320.epoch);
      }

      else
      {
        outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v177, v146, v170);
      }

      v188 = v330;
      v189 = v300;
    }

    else
    {
      v188 = v330;
      v189 = v300;
    }

    v305(v189, v304, v188);
    v190 = v312;
    swift_bridgeObjectRetain_n(v312, 2);
    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v191, v192))
    {
      v193 = swift_slowAlloc(12, -1);
      v323 = swift_slowAlloc(32, -1);
      v320.value = v323;
      *v193 = 136315138;
      v190;
      *(v193 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v288, v190, &v320.value);
      swift_bridgeObjectRelease_n(v190, 3);
      _os_log_impl(&dword_0, v191, v192, "Unsupported end time format in annotation file. Please provide either a Double or Int value in seconds, or a String value in hours:minutes:seconds.fraction, minutes:seconds.fraction, or seconds.fraction format. Skipping end time for file %s", v193, 0xCu);
      v194 = v323;
      __swift_destroy_boxed_opaque_existential_1Tm(v323);
      v195 = v194;
      v168 = v327;
      v195, -1, -1;
      v193, -1, -1;

      v313(v300, v330);
      v164 = v308;
      v165 = v316;
      v166 = v317;
      v167 = v309;
      v145 = seconds[0];
      goto LABEL_86;
    }

    swift_bridgeObjectRelease_n(v190, 2);
    v313(v300, v330);
    v164 = v308;
    v165 = v316;
    v166 = v317;
    v167 = v309;
    v145 = seconds[0];
    v146 = v322;
    v196 = log;
    v197 = *type;
    v198 = v325;
    v199 = v318;
    v168 = v327;
LABEL_88:
    v200 = static _VideoUtilities.getHandKeyPointsFromVideoUrl(url:startTime:endTime:targetFrameRate:)(v303, v196, v198 | (v197 << 32), v199, v164, v165 | (v166 << 32), v274, v167);
    if (v145 != 0.0)
    {
      outlined consume of MLDataValue(v297, v296, 2);
      v312;
      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v146, v168);
      (*(v298 + 8))(v303, v299);
      goto LABEL_119;
    }

    v201 = currentFileIndex;
    if (__OFADD__(v275, currentFileIndex))
    {
      BUG();
    }

    v202 = v200;
    seconds[0] = 0.0;
    v203 = v200[2];
    v323 = _sSa9repeating5countSayxGx_SitcfCSi_Tt1g5(v275 + currentFileIndex, v203);
    *v326 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v297, v296, v203);
    v204 = _sSa9repeating5countSayxGx_SitcfCSS_Tt1g5(v288, v312, v203);
    specialized Array.append<A>(contentsOf:)(v202);
    specialized Array.append<A>(contentsOf:)(v323);
    specialized Array.append<A>(contentsOf:)(*v326);
    specialized Array.append<A>(contentsOf:)(v204);
    v205 = v201;
    v206 = v310;
    _TablePrinter.printRow(currentFileIndex:)(v205);
    v207 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<CVarArg>);
    v208 = swift_allocObject(v207, 72, 7);
    *(v208 + 16) = 1;
    *(v208 + 24) = 2;
    value_low = -Date.timeIntervalSinceNow.getter();
    *(v208 + 56) = &type metadata for Double;
    *(v208 + 64) = &protocol witness table for Double;
    *(v208 + 32) = value_low;
    v323 = String.init(format:_:)(1714826789, 0xE400000000000000, v208);
    v210 = v209;
    v211 = v279;
    v305(v279, v304, v330);
    v212 = v289;
    outlined init with copy of MLTrainingSessionParameters(v206, v289, type metadata accessor for _TablePrinter);
    v210;
    v213 = Logger.logObject.getter();
    v214 = static os_log_type_t.debug.getter();
    *v326 = v214;
    if (os_log_type_enabled(v213, v214))
    {
      v312 = v213;
      v215 = swift_slowAlloc(32, -1);
      v216 = swift_slowAlloc(32, -1);
      v320.value = v216;
      *v215 = 134218498;
      if (__OFADD__(1, currentFileIndex))
      {
        BUG();
      }

      *(v215 + 4) = currentFileIndex + 1;
      *(v215 + 12) = 2048;
      v217 = *v289;
      outlined destroy of MLActivityClassifier.ModelParameters(v289, type metadata accessor for _TablePrinter);
      *(v215 + 14) = v217;
      *(v215 + 22) = 2080;
      v210;
      *(v215 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v323, v210, &v320.value);
      swift_bridgeObjectRelease_n(v210, 3);
      v218 = v312;
      _os_log_impl(&dword_0, v312, v326[0], "Extracted features from %ld out of %ld annotated video clips, elapsed time: %s", v215, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v216);
      v216, -1, -1;
      v215, -1, -1;

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v322, v327);
      v313(v279, v330);
      (*(v298 + 8))(v303, v299);
    }

    else
    {
      outlined destroy of MLActivityClassifier.ModelParameters(v212, type metadata accessor for _TablePrinter);
      swift_bridgeObjectRelease_n(v210, 2);

      outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v322, v327);
      v313(v211, v330);
      (*(v298 + 8))(v303, v299);
    }
  }

  outlined consume of (offset: Int, element: MLDataTable.Row)?(currentFileIndex, v328, v56, v57);
  v257 = 2;
  v64 = *v326;
  v65 = v323;
LABEL_115:
  outlined consume of MLDataValue(v64, v65, v257);
LABEL_117:
  v320.value = 0;
  *&v320.timescale = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v258._object = "Annotated Video Clips" + 0x8000000000000000;
  v258._countAndFlagsBits = 0xD000000000000029;
  String.append(_:)(v258);
  v292 = currentFileIndex;
  v259 = dispatch thunk of CustomStringConvertible.description.getter(&type metadata for Int, &protocol witness table for Int);
  v261 = v260;
  v258._countAndFlagsBits = v259;
  v258._object = v260;
  String.append(_:)(v258);
  v261;
  v258._object = 0xE900000000000065;
  v258._countAndFlagsBits = 0x6C626174206E6920;
  String.append(_:)(v258);
  *seconds = *&v320.value;
  v258._object = lazy protocol witness table accessor for type MLCreateError and conformance MLCreateError();
  swift_allocError(&type metadata for MLCreateError, v258._object, 0, 0);
  *v262 = *seconds;
  *(v262 + 16) = 0;
  *(v262 + 32) = 0;
  *(v262 + 48) = 0;
  swift_willThrow(&type metadata for MLCreateError, v258._object);
  v263 = currentFileIndex;
  v264 = v328;
  v265 = v322;
  v266 = v57;
LABEL_118:
  outlined consume of (offset: Int, element: MLDataTable.Row)?(v263, v264, v265, v266);
LABEL_119:
  outlined consume of Result<_DataTable, Error>(v293, v294);
  return outlined destroy of MLActivityClassifier.ModelParameters(v310, type metadata accessor for _TablePrinter);
}

uint64_t static MLHandActionClassifier.FeatureExtractor.extractFeatures(from:targetFrameRate:startingSessionId:)(uint64_t a1, uint64_t a2, double a3)
{
  v11 = a2;
  v12 = a3;
  v13 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  inited = swift_initStackObject(v5, v10);
  *(inited + 32) = _swiftEmptyArrayStorage;
  *(inited + 40) = _swiftEmptyArrayStorage;
  *(inited + 48) = _swiftEmptyArrayStorage;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 16) = v6;
  *(inited + 24) = v7;
  if (v4)
  {
    return outlined copy of Result<_DataTable, Error>(v6, v7);
  }

  outlined copy of Result<_DataTable, Error>(v6, v7);
  MLHandActionClassifier.FeatureExtractor.extractFeaturesFromFileTable(_:startingSessionId:)(v11, v12);
}

uint64_t MLHandActionClassifier.FeatureExtractor.deinit()
{
  outlined consume of Result<_DataTable, Error>(*(v0 + 16), *(v0 + 24));
  *(v0 + 32);
  *(v0 + 40);
  *(v0 + 48);
  *(v0 + 56);
  return v0;
}

char closure #1 in Sequence<>.contains(_:)specialized partial apply(unint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1);
}

uint64_t storeEnumTagSinglePayload for _MLDevice(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  LODWORD(result) = 0;
  if (a3 >= 0xFF)
  {
    v4 = a3 + 1;
    LODWORD(result) = 1;
    if (v4 >= 0xFF00)
    {
      LODWORD(result) = 2 * (v4 >= 0xFFFF00) + 2;
    }
  }

  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
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
          *a1 = a2 + 1;
        }

        break;
    }
  }

  return result;
}

CreateML::_MLDevice_optional __swiftcall _MLDevice.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of _MLDevice.init(rawValue:), rawValue);
  rawValue._object, rawValue._countAndFlagsBits;
  result.value = 2 - (v1 == 1);
  if (!v1)
  {
    return 0;
  }

  return result;
}

uint64_t _MLDevice.rawValue.getter(char a1)
{
  result = 1869903201;
  if (a1)
  {
    return 7696483;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1 & 1);
}

{
  Hasher.init(_seed:)(0);
  v1 = ColumnDescriptor.FeatureType.rawValue.getter(a1);
  v3 = v2;
  String.hash(into:)(v5, v1);
  v3;
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned int a1)
{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>.hashValue.getter(a1, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned int a1, void (*a2)(_BYTE *, void))
{
  Hasher.init(_seed:)(0);
  a2(v3, a1);
  return Hasher._finalize()();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  v2 = 1869903201;
  if (a2)
  {
    v2 = 7696483;
  }

  v3 = (((a2 & 1) == 0) << 56) - 0x1D00000000000000;
  v4 = v2;
  String.hash(into:)(a1, v2);
  return v3, v4;
}

{
  v2 = 0xEB0000000064657ALL;
  switch(a2)
  {
    case 0:
      v3 = 0x696C616974696E69;
      break;
    case 1:
      v3 = 0x6974636172747865;
      goto LABEL_7;
    case 2:
      v2 = 0xE800000000000000;
      v3 = 0x676E696E69617274;
      break;
    case 3:
      v3 = 0x697461756C617665;
LABEL_7:
      v2 = 0xEA0000000000676ELL;
      break;
    case 4:
      v2 = 0xEB00000000676E69;
      v3 = 0x636E657265666E69;
      break;
  }

  String.hash(into:)(a1, v3);
  return v2, v3;
}

{
  v2 = ColumnDescriptor.FeatureType.rawValue.getter(a2);
  v4 = v3;
  String.hash(into:)(a1, v2);
  return v4;
}

{
  v2 = 0xEB00000000657079;
  switch(a2)
  {
    case 0:
      v3 = 0x54746E656D656C65;
      break;
    case 1:
      v2 = 0xE400000000000000;
      v3 = 1702521203;
      break;
    case 2:
      v2 = 0xEA00000000007365;
      v3 = 0x69726F6765746163;
      break;
    case 3:
      v2 = 0xEB0000000073726FLL;
      v3 = 0x7470697263736564;
      break;
  }

  String.hash(into:)(a1, v3);
  return v2, v3;
}

{
  v2 = 7237219;
  if (a2)
  {
    v2 = 0x6574694C6E6E63;
  }

  v3 = ((a2 & 1) << 58) | 0xE300000000000000;
  v4 = v2;
  String.hash(into:)(a1, v2);
  return v3, v4;
}

{
  switch(a2)
  {
    case 0:
      v2 = 0xE400000000000000;
      v3 = 1936945004;
      break;
    case 1:
      v2 = 0xEB0000000073736FLL;
      v3 = 0x4C746E65746E6F63;
      break;
    case 2:
      v2 = 0xE900000000000073;
      v3 = 0x736F4C656C797473;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7963617275636361;
      break;
    case 4:
      v2 = 0xEE0073736F4C6E6FLL;
      v3 = 0x69746164696C6176;
      break;
    case 5:
      v2 = "accuracy" + 0x8000000000000000;
      v3 = 0xD000000000000012;
      break;
    case 6:
      v3 = 0xD000000000000010;
      v2 = "validationAccuracy" + 0x8000000000000000;
      break;
    case 7:
      v2 = "stylizedImageURL" + 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    case 8:
      v2 = 0xEC000000726F7272;
      v3 = 0x456D756D6978616DLL;
      break;
    case 9:
      v2 = "rror" + 0x8000000000000000;
      v3 = 0xD00000000000001ELL;
      break;
    case 10:
      v2 = "validationRootMeanSquaredError" + 0x8000000000000000;
      v3 = 0xD000000000000016;
      break;
  }

  String.hash(into:)(a1, v3);
  return v2, v3;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned int a2)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(a1, a2, specialized RawRepresentable<>.hash(into:));
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)(a1);
  v3 = 7237219;
  if (a2)
  {
    v3 = 0x6574694C6E6E63;
  }

  String.hash(into:)(v5, v3);
  ((a2 & 1) << 58) | 0xE300000000000000, v3;
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)(a1);
  v2 = ColumnDescriptor.FeatureType.rawValue.getter(a2);
  v4 = v3;
  String.hash(into:)(v6, v2);
  v4;
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)(a1);
  v3 = 1869903201;
  if (a2)
  {
    v3 = 7696483;
  }

  String.hash(into:)(v5, v3);
  (((a2 & 1) == 0) << 56) - 0x1D00000000000000, v3;
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned int a2, void (*a3)(_BYTE *, void))
{
  Hasher.init(_seed:)(a1);
  a3(v5, a2);
  return Hasher._finalize()();
}

CreateML::_MLDevice_optional protocol witness for RawRepresentable.init(rawValue:) in conformance _MLDevice(Swift::String *a1)
{
  v2 = v1;
  result.value = _MLDevice.init(rawValue:)(*a1).value;
  v2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance _MLDevice()
{
  v2 = v0;
  result = _MLDevice.rawValue.getter(*v1);
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t lazy protocol witness table accessor for type _MLDevice and conformance _MLDevice()
{
  result = lazy protocol witness table cache variable for type _MLDevice and conformance _MLDevice;
  if (!lazy protocol witness table cache variable for type _MLDevice and conformance _MLDevice)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for _MLDevice, &type metadata for _MLDevice);
    lazy protocol witness table cache variable for type _MLDevice and conformance _MLDevice = result;
  }

  return result;
}

unint64_t MLCreateError.failureReason.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  if (v7 >= 3)
  {
    if (v7 == 3)
    {
      return 0xD000000000000024;
    }

    else
    {
      v8 = 0xD000000000000018;
      if (v6 | v5 | v2 | v3 | v4 | v1)
      {
        return 0xD00000000000001BLL;
      }

      return v8;
    }
  }

  else
  {
    outlined copy of MLCreateError(v1, v2, v3, v4, v5, v6, v7);
  }

  return v1;
}

uint64_t outlined copy of MLCreateError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  result = a7;
  if (a7 < 3u)
  {
    return a2;
  }

  if (a7 == 3)
  {
    a2;
    a4;
    return a6;
  }

  return result;
}

unint64_t MLCreateError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  switch(*(v0 + 48))
  {
    case 0:
      v6 = *(v0 + 48);
      _StringGuts.grow(_:)(26);
      0xE000000000000000, v5;
      v7 = 0xD000000000000018;
      goto LABEL_8;
    case 1:
      _StringGuts.grow(_:)(23);
      0xE000000000000000, v5;
      v7 = 0xD000000000000015;
      goto LABEL_8;
    case 2:
      _StringGuts.grow(_:)(21);
      0xE000000000000000, v5;
      v7 = 0xD000000000000013;
LABEL_8:
      v12 = v7;
      v10._countAndFlagsBits = v1;
      v10._object = v2;
      goto LABEL_9;
    case 3:
      v12 = 0;
      v11 = *(v0 + 32);
      _StringGuts.grow(_:)(111);
      v9._object = "eate the session." + 0x8000000000000000;
      v9._countAndFlagsBits = 0xD000000000000039;
      String.append(_:)(v9);
      v9._countAndFlagsBits = v1;
      v9._object = v2;
      String.append(_:)(v9);
      v9._object = "n incompatible value for " + 0x8000000000000000;
      v9._countAndFlagsBits = 0xD00000000000001BLL;
      String.append(_:)(v9);
      v9._countAndFlagsBits = v3;
      v9._object = v4;
      String.append(_:)(v9);
      v9._object = ". Session was created with " + 0x8000000000000000;
      v9._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v9);
      String.append(_:)(v11);
      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
LABEL_9:
      String.append(_:)(v10);
      result = v12;
      break;
    case 4:
      if (*(v0 + 40) | v5 | v2 | v3 | v4 | v1)
      {
        result = 0xD000000000000051;
      }

      else
      {
        result = 0xD00000000000001CLL;
      }

      break;
  }

  return result;
}

uint64_t MLCreateError.errorCode.getter()
{
  result = v0[3].u8[0];
  switch(v0[3].i8[0])
  {
    case 0:
      return result;
    case 1:
      result = 1;
      break;
    case 2:
      result = 2;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      v2 = _mm_or_si128(_mm_loadu_si128(v0 + 2), _mm_loadu_si128(v0 + 1));
      result = 2 * ((v0->i64[0] | v0->i64[1] | _mm_or_si128(_mm_shuffle_epi32(v2, 238), v2).u64[0]) != 0) + 3;
      break;
  }

  return result;
}

void *MLCreateError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v32 = *(v0 + 16);
  v33 = *(v0 + 24);
  v31 = *(v0 + 32);
  v30 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for _ContiguousArrayStorage<(String, Any?)>);
  inited = swift_initStackObject(v4, v19);
  inited[2] = 2;
  inited[3] = 4;
  inited[4] = static String._unconditionallyBridgeFromObjectiveC(_:)(NSLocalizedDescriptionKey);
  inited[5] = v6;
  v29 = v1;
  v20 = v1;
  v21 = v2;
  v22 = v32;
  v23 = v33;
  v24 = v31;
  v25 = v30;
  v26 = v3;
  outlined copy of MLCreateError(v1, v2, v32, v33, v31, v30, v3);
  v7 = MLCreateError.errorDescription.getter();
  v9 = v8;
  v28 = v3;
  v27 = v2;
  outlined consume of MLCreateError(v29, v2, v32, v33, v31, v30, v3);
  if (v9)
  {
    v10 = &type metadata for String;
  }

  else
  {
    inited[8] = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
  }

  inited[6] = v7;
  inited[7] = v9;
  inited[9] = v10;
  inited[10] = static String._unconditionallyBridgeFromObjectiveC(_:)(NSLocalizedFailureReasonErrorKey);
  inited[11] = v11;
  if (v28 >= 3)
  {
    if (v28 == 3)
    {
      v13 = "Training data was modified." + 0x8000000000000000;
      v14 = 0xD000000000000024;
    }

    else
    {
      v14 = 0xD000000000000018;
      if (v30 | v31 | v27 | v32 | v33 | v29)
      {
        v13 = "com.apple.CreateML" + 0x8000000000000000;
        v14 = 0xD00000000000001BLL;
      }

      else
      {
        v13 = "rs are incompatible." + 0x8000000000000000;
      }
    }
  }

  else
  {
    v12 = v29;
    v13 = v27;
    outlined copy of MLCreateError(v29, v27, v32, v33, v31, v30, v28);
    v14 = v12;
  }

  inited[15] = &type metadata for String;
  inited[12] = v14;
  inited[13] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for Any?);
  v16 = Dictionary.init(dictionaryLiteral:)(inited, &type metadata for String, v15, &protocol witness table for String);
  v17 = specialized Dictionary.compactMapValues<A>(_:)(v16);
  v16;
  return v17;
}

void *specialized Dictionary.compactMapValues<A>(_:)(uint64_t a1)
{
  v1 = _swiftEmptyDictionarySingleton;
  v42 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.makeIterator()(a1);
  v44 = v24;
  v46 = v25;
  v2 = v27;
  v43 = v28;
  v41 = v26;
  v45 = (v26 + 64) >> 6;
  a1;
  while (1)
  {
    v3 = v43;
    if (v43)
    {
      v4 = v2;
      goto LABEL_24;
    }

    v5 = v2 + 1;
    if (__OFADD__(1, v2))
    {
      BUG();
    }

    if (v5 >= v45)
    {
      goto LABEL_41;
    }

    v3 = *(v46 + 8 * v5);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_24;
    }

    v4 = v2 + 2;
    if (v2 + 2 >= v45)
    {
      goto LABEL_41;
    }

    v3 = *(v46 + 8 * v5 + 8);
    if (!v3)
    {
      v4 = v2 + 3;
      if (v2 + 3 >= v45)
      {
        goto LABEL_41;
      }

      v3 = *(v46 + 8 * v5 + 16);
      if (!v3)
      {
        v4 = v2 + 4;
        if (v2 + 4 >= v45)
        {
          goto LABEL_41;
        }

        v3 = *(v46 + 8 * v5 + 24);
        if (!v3)
        {
          v4 = v2 + 5;
          if (v2 + 5 >= v45)
          {
            goto LABEL_41;
          }

          v3 = *(v46 + 8 * v5 + 32);
          if (!v3)
          {
            v4 = v2 + 6;
            if (v2 + 6 >= v45)
            {
              goto LABEL_41;
            }

            v3 = *(v46 + 8 * v5 + 40);
            if (!v3)
            {
              v4 = v2 + 7;
              if (v2 + 7 >= v45)
              {
                goto LABEL_41;
              }

              v3 = *(v46 + 8 * v5 + 48);
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
    v7 = v3;
    _BitScanForward64(&v3, v3);
    v43 = v7 & (v7 - 1);
    v2 = v4;
    v8 = v3 | (v4 << 6);
    v9 = *(v44 + 48);
    v10 = *(v9 + 16 * v8 + 8);
    *&v33 = *(v9 + 16 * v8);
    *(&v33 + 1) = v10;
    outlined init with copy of Any?(*(v44 + 56) + 32 * v8, v34);
    v39 = v34[1];
    v38 = v34[0];
    v37 = v33;
    outlined init with copy of Any?(&v38, &v30);
    if (v31)
    {
      v40 = v4;
      outlined init with take of Any(&v30, v29);
      v36[1] = v39;
      v36[0] = v38;
      v35 = v37;
      outlined init with take of Any(v29, v32);
      v11 = v1[2];
      if (v1[3] <= v11)
      {
        v10;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v11 + 1, 1u);
        v1 = v42;
      }

      else
      {
        v10;
      }

      v12 = v35;
      Hasher.init(_seed:)(v1[5]);
      String.hash(into:)(&v30, v12);
      v13 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
      v14 = v13 >> 6;
      v15 = ~v1[(v13 >> 6) + 8] >> v13 << v13;
      if (v15)
      {
        _BitScanForward64(&v15, v15);
        v16 = v15 | v13 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = (63 - (-1 << *(v1 + 32))) >> 6;
        v18 = 0;
        do
        {
          if (++v14 == v17 && (v18 & 1) != 0)
          {
            BUG();
          }

          v19 = v14 == v17;
          if (v14 == v17)
          {
            v14 = 0;
          }

          v18 |= v19;
          v20 = v1[v14 + 8];
        }

        while (v20 == -1);
        v21 = ~v20;
        v22 = 64;
        if (v21)
        {
          _BitScanForward64(&v22, v21);
        }

        v16 = v22 + (v14 << 6);
      }

      v1[(v16 >> 6) + 8] |= 1 << v16;
      *(v1[6] + 16 * v16) = v12;
      outlined init with take of Any(v32, (v1[7] + 32 * v16));
      ++v1[2];
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v36, &demangling cache variable for type metadata for Any?);
      v2 = v40;
    }

    else
    {
      v10;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v37, &demangling cache variable for type metadata for (key: String, value: Any?));
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v30, &demangling cache variable for type metadata for Any?);
    }
  }

  v6 = v2 + 8;
  while (v6 < v45)
  {
    v3 = *(v46 + 8 * v6++);
    if (v3)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

LABEL_41:
  outlined consume of [String : [Double]].Iterator._Variant(v44);
  return v1;
}

{
  v1 = _swiftEmptyDictionarySingleton;
  v46 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.makeIterator()(a1);
  v47 = v25;
  v51 = v26;
  v2 = v28;
  v3 = v29;
  v45 = v27;
  v50 = (v27 + 64) >> 6;
  v40 = "validationRootMeanSquaredError" + 0x8000000000000000;
  v41 = "rror" + 0x8000000000000000;
  v42 = "stylizedImageURL" + 0x8000000000000000;
  v43 = "validationAccuracy" + 0x8000000000000000;
  v44 = "accuracy" + 0x8000000000000000;
  a1;
  v48 = 0x7FFFFFFFFFFFFFC0;
  v49 = &type metadata for Any + 8;
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

    if (v5 >= v50)
    {
      goto LABEL_52;
    }

    v3 = *(v51 + 8 * v5);
    if (v3)
    {
      v4 = v2 + 1;
      goto LABEL_24;
    }

    v4 = v2 + 2;
    if (v2 + 2 >= v50)
    {
      goto LABEL_52;
    }

    v3 = *(v51 + 8 * v5 + 8);
    if (!v3)
    {
      v4 = v2 + 3;
      if (v2 + 3 >= v50)
      {
        goto LABEL_52;
      }

      v3 = *(v51 + 8 * v5 + 16);
      if (!v3)
      {
        v4 = v2 + 4;
        if (v2 + 4 >= v50)
        {
          goto LABEL_52;
        }

        v3 = *(v51 + 8 * v5 + 24);
        if (!v3)
        {
          v4 = v2 + 5;
          if (v2 + 5 >= v50)
          {
            goto LABEL_52;
          }

          v3 = *(v51 + 8 * v5 + 32);
          if (!v3)
          {
            v4 = v2 + 6;
            if (v2 + 6 >= v50)
            {
              goto LABEL_52;
            }

            v3 = *(v51 + 8 * v5 + 40);
            if (!v3)
            {
              v4 = v2 + 7;
              if (v2 + 7 >= v50)
              {
                goto LABEL_52;
              }

              v3 = *(v51 + 8 * v5 + 48);
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
    _BitScanForward64(&v7, v3);
    v3 &= v3 - 1;
    v8 = v7 | (v4 << 6);
    LOBYTE(v31[0]) = *(*(v47 + 48) + v8);
    outlined init with copy of Any(*(v47 + 56) + 32 * v8, v31 + 8);
    v35 = v32;
    v34 = v31[1];
    v33 = v31[0];
    outlined init with copy of Any(&v33 + 8, v30);
    if (swift_dynamicCast(v36, v30, v49, &type metadata for Double, 6))
    {
      v38 = v4;
      v39 = *&v36[0];
      v37 = v35;
      v36[1] = v34;
      v36[0] = v33;
      v9 = v1[2];
      if (v1[3] <= v9)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v9 + 1, 1u);
        v1 = v46;
      }

      v10 = v36[0];
      Hasher.init(_seed:)(v1[5]);
      v52 = v10;
      switch(v10)
      {
        case 0:
          v11 = 1936945004;
          v12 = 0xE400000000000000;
          break;
        case 1:
          v11 = 0x4C746E65746E6F63;
          v12 = 0xEB0000000073736FLL;
          break;
        case 2:
          v11 = 0x736F4C656C797473;
          v12 = 0xE900000000000073;
          break;
        case 3:
          v11 = 0x7963617275636361;
          v12 = 0xE800000000000000;
          break;
        case 4:
          v11 = 0x69746164696C6176;
          v12 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v11 = 0xD000000000000012;
          v12 = v44;
          break;
        case 6:
          v11 = 0xD000000000000010;
          v12 = v43;
          break;
        case 7:
          v11 = 0xD000000000000014;
          v12 = v42;
          break;
        case 8:
          v11 = 0x456D756D6978616DLL;
          v12 = 0xEC000000726F7272;
          break;
        case 9:
          v11 = 0xD00000000000001ELL;
          v12 = v41;
          break;
        case 10:
          v11 = 0xD000000000000016;
          v12 = v40;
          break;
      }

      String.hash(into:)(v30, v11);
      v12;
      v13 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
      v14 = v13 >> 6;
      v15 = ~v1[(v13 >> 6) + 8] >> v13 << v13;
      if (v15)
      {
        _BitScanForward64(&v16, v15);
        v17 = v16 | v48 & v13;
      }

      else
      {
        v18 = (63 - (-1 << *(v1 + 32))) >> 6;
        v19 = 0;
        do
        {
          if (++v14 == v18 && (v19 & 1) != 0)
          {
            BUG();
          }

          v20 = v14 == v18;
          if (v14 == v18)
          {
            v14 = 0;
          }

          v19 |= v20;
          v21 = v1[v14 + 8];
        }

        while (v21 == -1);
        v22 = ~v21;
        v23 = 64;
        if (v22)
        {
          _BitScanForward64(&v23, v22);
        }

        v17 = v23 + (v14 << 6);
      }

      v1[(v17 >> 6) + 8] |= 1 << v17;
      *(v1[6] + v17) = v52;
      *(v1[7] + 8 * v17) = v39;
      ++v1[2];
      __swift_destroy_boxed_opaque_existential_1Tm(v36 + 1);
      v2 = v38;
    }

    else
    {
      *&v36[0] = 0;
      BYTE8(v36[0]) = 1;
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v33, &demangling cache variable for type metadata for (key: MLProgress.Metric, value: Any));
      v2 = v4;
    }
  }

  v6 = v2 + 8;
  while (v6 < v50)
  {
    v3 = *(v51 + 8 * v6++);
    if (v3)
    {
      v4 = v6 - 1;
      goto LABEL_24;
    }
  }

LABEL_52:
  outlined consume of [String : [Double]].Iterator._Variant(v47);
  return v1;
}

{
  v68 = 0x8000000000000000;
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledName(&demangling cache variable for type metadata for URL?) - 8) + 64);
  v2 = alloca(v1);
  v3 = alloca(v1);
  v52 = v40;
  v69 = type metadata accessor for URL(0);
  v66 = *(v69 - 8);
  v4 = v66[8];
  v5 = alloca(v4);
  v6 = alloca(v4);
  v67 = v40;
  v7 = alloca(v4);
  v8 = alloca(v4);
  v56 = v40;
  v9 = _swiftEmptyDictionarySingleton;
  v63 = _swiftEmptyDictionarySingleton;
  specialized _NativeDictionary.makeIterator()(a1);
  v65 = v40[1];
  v72 = v40[2];
  v10 = v42;
  v11 = v43;
  v62 = v41;
  v71 = (v41 + 64) >> 6;
  v57 = "validationRootMeanSquaredError" + 0x8000000000000000;
  v58 = "rror" + 0x8000000000000000;
  v59 = "stylizedImageURL" + 0x8000000000000000;
  v60 = "validationAccuracy" + 0x8000000000000000;
  v61 = "accuracy" + 0x8000000000000000;
  a1;
  v53 = &type metadata for Any + 8;
  v68 -= 64;
  while (1)
  {
    if (v11)
    {
      v12 = v10;
      v13 = v65;
      goto LABEL_24;
    }

    v14 = v10 + 1;
    v13 = v65;
    if (__OFADD__(1, v10))
    {
      BUG();
    }

    if (v14 >= v71)
    {
      goto LABEL_52;
    }

    v11 = *(v72 + 8 * v14);
    if (v11)
    {
      v12 = v10 + 1;
      goto LABEL_24;
    }

    v12 = v10 + 2;
    if (v10 + 2 >= v71)
    {
      goto LABEL_52;
    }

    v11 = *(v72 + 8 * v14 + 8);
    if (!v11)
    {
      v12 = v10 + 3;
      if (v10 + 3 >= v71)
      {
        goto LABEL_52;
      }

      v11 = *(v72 + 8 * v14 + 16);
      if (!v11)
      {
        v12 = v10 + 4;
        if (v10 + 4 >= v71)
        {
          goto LABEL_52;
        }

        v11 = *(v72 + 8 * v14 + 24);
        if (!v11)
        {
          v12 = v10 + 5;
          if (v10 + 5 >= v71)
          {
            goto LABEL_52;
          }

          v11 = *(v72 + 8 * v14 + 32);
          if (!v11)
          {
            v12 = v10 + 6;
            if (v10 + 6 >= v71)
            {
              goto LABEL_52;
            }

            v11 = *(v72 + 8 * v14 + 40);
            if (!v11)
            {
              v12 = v10 + 7;
              if (v10 + 7 >= v71)
              {
                goto LABEL_52;
              }

              v11 = *(v72 + 8 * v14 + 48);
              if (!v11)
              {
                break;
              }
            }
          }
        }
      }
    }

LABEL_24:
    v70 = v9;
    _BitScanForward64(&v16, v11);
    v64 = v11 & (v11 - 1);
    v17 = v12;
    v18 = v16 | (v12 << 6);
    LOBYTE(v45[0]) = *(*(v13 + 48) + v18);
    outlined init with copy of Any(*(v13 + 56) + 32 * v18, v45 + 8);
    v51 = v46;
    v50 = v45[1];
    v49 = v45[0];
    outlined init with copy of Any(&v49 + 8, v44);
    v19 = v52;
    v20 = v69;
    v21 = swift_dynamicCast(v52, v44, v53, v69, 6);
    __swift_storeEnumTagSinglePayload(v19, v21 ^ 1u, 1, v20);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(&v49, &demangling cache variable for type metadata for (key: MLProgress.Metric, value: Any));
      outlined destroy of Either<LogisticRegressionClassifier<Float, String>, FullyConnectedNetworkClassifier<Float, String>>(v19, &demangling cache variable for type metadata for URL?);
      v10 = v17;
      v11 = v64;
      v9 = v70;
    }

    else
    {
      v54 = v17;
      v22 = v66[4];
      v23 = v56;
      v22(v56, v19, v20);
      v48 = v51;
      v47[1] = v50;
      v47[0] = v49;
      v55 = v22;
      v22(v67, v23, v20);
      v24 = v70[2];
      if (v70[3] <= v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24 + 1, 1u);
      }

      v9 = v63;
      v25 = v47[0];
      Hasher.init(_seed:)(v63[5]);
      LOBYTE(v70) = v25;
      v11 = v64;
      switch(v25)
      {
        case 0:
          v26 = 1936945004;
          v27 = 0xE400000000000000;
          break;
        case 1:
          v26 = 0x4C746E65746E6F63;
          v27 = 0xEB0000000073736FLL;
          break;
        case 2:
          v26 = 0x736F4C656C797473;
          v27 = 0xE900000000000073;
          break;
        case 3:
          v26 = 0x7963617275636361;
          v27 = 0xE800000000000000;
          break;
        case 4:
          v26 = 0x69746164696C6176;
          v27 = 0xEE0073736F4C6E6FLL;
          break;
        case 5:
          v26 = 0xD000000000000012;
          v27 = v61;
          break;
        case 6:
          v26 = 0xD000000000000010;
          v27 = v60;
          break;
        case 7:
          v26 = 0xD000000000000014;
          v27 = v59;
          break;
        case 8:
          v26 = 0x456D756D6978616DLL;
          v27 = 0xEC000000726F7272;
          break;
        case 9:
          v26 = 0xD00000000000001ELL;
          v27 = v58;
          break;
        case 10:
          v26 = 0xD000000000000016;
          v27 = v57;
          break;
      }

      String.hash(into:)(v44, v26);
      v27;
      v28 = Hasher._finalize()() & ~(-1 << *(v9 + 32));
      v29 = v28 >> 6;
      v30 = ~v9[(v28 >> 6) + 8] >> v28 << v28;
      if (v30)
      {
        _BitScanForward64(&v30, v30);
        v31 = v30 | v68 & v28;
        v32 = v69;
      }

      else
      {
        v33 = (63 - (-1 << *(v9 + 32))) >> 6;
        v34 = 0;
        v32 = v69;
        do
        {
          v35 = v29 + 1;
          if (v29 + 1 == v33 && (v34 & 1) != 0)
          {
            BUG();
          }

          v29 = 0;
          if (v35 != v33)
          {
            v29 = v35;
          }

          v34 |= v35 == v33;
          v36 = v9[v29 + 8];
        }

        while (v36 == -1);
        v37 = ~v36;
        v38 = 64;
        if (v37)
        {
          _BitScanForward64(&v38, v37);
        }

        v31 = v38 + (v29 << 6);
      }

      v9[(v31 >> 6) + 8] |= 1 << v31;
      *(v9[6] + v31) = v70;
      v55(v9[7] + v66[9] * v31, v67, v32);
      ++v9[2];
      __swift_destroy_boxed_opaque_existential_1Tm(v47 + 1);
      v10 = v54;
    }
  }

  v15 = v10 + 8;
  while (v15 < v71)
  {
    v11 = *(v72 + 8 * v15++);
    if (v11)
    {
      v12 = v15 - 1;
      goto LABEL_24;
    }
  }

LABEL_52:
  outlined consume of [String : [Double]].Iterator._Variant(v65);
  return v9;
}